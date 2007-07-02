use strict;

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'XML::SemanticDiff',
    'VERSION_FROM' => 'lib/XML/SemanticDiff.pm', # finds $VERSION
    'PREREQ_PM' => 
    {
        'Digest::MD5' => '0',
        'Encode' => '0',
        'XML::Parser' => '0',
    },
    'EXE_FILES' => [ 'eg/xmlsemdiff' ],
);
