use strict;
use strict;
use warnings;

use File::Spec;
use lib File::Spec->catdir(File::Spec->curdir(), "inc");

use Test::Run::Builder;

my $builder = Test::Run::Builder->new(
    module_name         => 'XML::SemanticDiff',
    license             => 'perl',
    dist_author         => 'Kip Hampton <khampton@cpan.org>',
    dist_version_from   => 'lib/XML/SemanticDiff.pm',
    configure_requires =>
    {
        'Module::Build' => '0.39',
    },
    requires =>
    {
        'Encode' => '0',
        'Digest::MD5' => '0',
        'perl' => '5.006',
        'XML::Parser' => '0',
    },
    add_to_cleanup      => [ 'XML-SemanticDiff-*' ],
    meta_add => {
        resources => {
            repository => "https://bitbucket.org/shlomif/perl-xml-semanticdiff",
        },
    },
);

$builder->create_build_script();
