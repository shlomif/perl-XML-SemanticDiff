use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'XML::SemanticDiff',
    license             => 'perl',
    dist_author         => 'Kip Hampton <khampton@cpan.org>',
    dist_version_from   => 'lib/XML/SemanticDiff.pm',
    requires => 
    {
        'Encode' => '0',
        'Digest::MD5' => '0',
        'perl' => '5.006',
        'XML::Parser' => '0',
    },
    add_to_cleanup      => [ 'XML-SemanticDiff-*' ],
    create_makefile_pl => 'traditional',
    meta_add => {
        resources => {
            Repository => "http://svn.berlios.de/svnroot/repos/web-cpan/XML-SemanticDiff/",
        },
    },
);

$builder->create_build_script();
