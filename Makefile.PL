# -*- perl -*-

use strict;
require ExtUtils::MakeMaker;
my %opts =
    ('NAME'         => 'SQL::Statement',
     'VERSION_FROM' => './lib/SQL/Statement.pm',
     'dist'         => { 'SUFFIX'       => ".gz",
			 'DIST_DEFAULT' => 'all tardist',
			 'COMPRESS'     => "gzip -9vf" }
     );
if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{'AUTHOR'} = 'Jeff Zucker (jeff@vpservices.com)';
}
ExtUtils::MakeMaker::WriteMakefile(%opts);
