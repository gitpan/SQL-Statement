#!/usr/local/bin/perl -w
use strict;
use SQL::Statement;
my $parser = SQL::Parser->new('ANSI',{RaiseError=>1});
my $count;
for my $sql(<DATA>) {
    next if $sql =~ /^#/;
    last if $sql =~ /^[\s]*$/;
    $count++;
    print "$count...";
    my $stmt = SQL::Statement->new($sql,$parser);
    my $sth = $stmt->prepare($sql);
    print "ok\n";
}
__DATA__
CREATE TABLE foo ( id INTEGER UNIQUE, phrase VARCHAR(40) UNIQUE )
CREATE TABLE foo ( id INTEGER PRIMARY KEY, phrase VARCHAR(40) PRIMARY KEY )
CREATE TABLE foo ( id INTEGER NOT NULL, phrase VARCHAR(40) NOT NULL )
SELECT * FROM foo WHERE TRIM( UPPER(phrase) ) = 'bar'
SELECT * FROM foo WHERE a = b AND ( c = d OR e = f)
SELECT * FROM foo WHERE a = b AND  c = d OR e = f
SELECT * FROM foo LEFT JOIN bar USING (baz)
INSERT INTO foo VALUES ('baz','bop')
UPDATE foo SET bar = 7
DELETE FROM foo WHERE id < 7
