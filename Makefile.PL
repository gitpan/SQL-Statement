# -*- perl -*-

require 5.004;
use strict;

require ExtUtils::MakeMaker;


my($defines) = '';
if ($ENV{'USER'} eq 'joe'  &&  $ENV{'HOSTNAME'} eq 'laptop.ispsoft.de') {
    $defines = '-Wall -Wstrict-prototypes';
}
if ($^O =~ /win/i) {
    $defines .= " -Dalloca=_alloca";
}
ExtUtils::MakeMaker::WriteMakefile(
    'NAME' => 'SQL::Statement',
    'VERSION_FROM' => 'lib/SQL/Statement.pm',
     'dist'         => { 'SUFFIX'       => ".gz",
			 'DIST_DEFAULT' => 'all tardist',
			 'COMPRESS'     => "gzip -9f" },
    'C' => ['sql_yacc.c sql_data.c sql_op.c'],
    'OBJECT' => 'sql_yacc.o sql_data.o sql_op.o Statement.o',
    ($defines ? ('DEFINE' => $defines) : ()),
);


package MY;

sub postamble {
    my($self) = shift;
    return <<'EOF';

sql_yacc.c sql_yacc.h: sql_yacc.y
	bison --defines --output=sql_yacc.c sql_yacc.y
	sed 's/int yyparse (void);/int yyparse(void* stmt);/' \
	    <sql_yacc.c >sql_yacc.c.ok
	mv sql_yacc.c.ok sql_yacc.c

sql_yacc.o sql_data.o sql_op.o: sql_yacc.h

Statement.o sql_yacc.o sql_data.o sql_op.o: sql_data.h

pm_to_blib: README

README: lib/SQL/Statement.pm
	perldoc -t lib/SQL/Statement.pm >README

EOF
}

sub libscan {
    my($self, $path) = @_;
    if ($path =~ /\~$/) {
	undef;
    } else {
	$path;
    }
}
