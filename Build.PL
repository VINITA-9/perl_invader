use strict;
use warnings;
use Module::Build;
use 5.010;

my $builder = Module::Build->new(
    module_name       => 'Game-PerlInvaders',
    license           => 'perl',
    dist_author       => 'Bruno Ramalhete',
    dist_version_from => 'lib/Game/PerlInvaders.pm',
    requires => {
        'perl'             => '5.010',
        'Moose'         => '0.79',
        'SDL'           => '1.20',
    },
    build_requires    => {
        'Test::More'       => 0,
    },
    add_to_cleanup     => ['Game-PerlInvaders-*'],
    create_makefile_pl => 'passthrough',
    recursive_test_files => 1,
    meta_merge     => {
        resources => {
            bugtracker =>
                'http://github.com/Spectrum256/Game-PerlInvaders',
            repository => 'http://github.com/Spectrum256/Game-PerlInvaders',
        }
    },
);

$builder->create_build_script();
