# -*- perl -*-

use strict;
require SQL::Statement;


$| = 1;

my($testNum) = 0;

sub Test($) {
    my($ok) = shift;
    ++$testNum; print(($ok ? "" : "not "), "ok $testNum\n");
    $ok;
}

sub Parse($$) {
    my($statement, $parser) = @_;
    $@ = '';
    my($stmt) = eval { SQL::Statement->new($statement, $parser); };
    if ($@) {
	return undef;
    }
    return $stmt;
}


print "1..38\n";

my($ansiParser, $sqlEvalParser, $freeParser, $query);
Test($ansiParser = SQL::Parser->new("Ansi"));
Test($sqlEvalParser = SQL::Parser->new("SQL::Eval"));
$@ = '';
$freeParser = eval { SQL::Parser->new("DoesNotExist"); };
Test($@);


# Check the create types
$query = "CREATE TABLE a (b TEXT)";
Test($freeParser = SQL::Parser->new("Ansi"));
Test(!$freeParser->feature("create", "type_text"));
Test($freeParser->feature("create", "type_text", 1));
Test(Parse($query, $freeParser));
Test(!$freeParser->feature("create", "type_text", 0));
Test(!Parse($query, $freeParser));

$query = "CREATE TABLE a (b REAL)";
Test(!$freeParser->feature("create", "type_real"));
Test($freeParser->feature("create", "type_real", 1));
Test(Parse($query, $freeParser));
Test(!$freeParser->feature("create", "type_real", 0));
Test(!Parse($query, $freeParser));

$query = "CREATE TABLE a (b BLOB)";
Test(!$freeParser->feature("create", "type_blob"));
Test($freeParser->feature("create", "type_blob", 1));
Test(Parse($query, $freeParser));
Test(!$freeParser->feature("create", "type_blob", 0));
Test(!Parse($query, $freeParser));


# Check the join feature
Test($freeParser->feature("select", "join"));
Test(!$freeParser->feature("select", "join", 0));
Test(!Parse("SELECT * FROM a, b", $freeParser));
Test($freeParser->feature("select", "join", 1));
Test(Parse("SELECT * FROM a, b", $freeParser));


# Check the files_as_tables feature
Test(!$freeParser->feature("misc", "files_as_tables"));
Test($freeParser->feature("misc", "files_as_tables", 1));
my $stmt;
Test($stmt = Parse("SELECT * FROM /a/b", $freeParser));
Test($stmt->tables(0)->name() eq '/a/b');
Test($stmt = Parse("SELECT * FROM ./a/b", $freeParser));
Test($stmt->tables(0)->name() eq './a/b');
Test($stmt = Parse("SELECT * FROM ../a/b", $freeParser));
Test($stmt->tables(0)->name() eq '../a/b');
Test(!$freeParser->feature("misc", "files_as_tables", 0));
Test(!Parse("SELECT * FROM /a/b", $freeParser));
Test(!Parse("SELECT * FROM ./a/b", $freeParser));
Test(!Parse("SELECT * FROM ./a/b", $freeParser));
Test(Parse("SELECT * FROM a", $freeParser));


# Check a not existing feature
$@ = '';
eval { $freeParser->feature("doesnot", "exist"); };
Test($@);
