use Module::Build;

my $build = Module::Build->new(
    module_name          => 'Webservice::InterMine',
    dist_abstract        => 'Modules for interacting with InterMine Webservice APIs',
    license              => 'perl',
    dist_author          => 'Alex Kalderimis <dev@intermine.org>',
    create_readme        => 1,
    recursive_test_files => 1,
    create_makefile_pl   => 'traditional',
    configure_requires   => { 'Module::Build' => '0.36' },
    requires             => {
        'Class::InsideOut'              => 1.04,
        'DateTime'                      => 0,
        'DateTime::Format::ISO8601'     => 0,
        'perl'                          => '5.8.3',
        'InterMine::Model'              => '0.9901',
        'IO::Handle'                    => 0,
        'IO::File'                      => 0,
        'JSON'                          => 0,
        'JSON::XS'                      => 0,
        'List::MoreUtils'               => 0.22,
        'LWP'                           => 5.8,
        'HTTP::Request::Common'         => 0,
        'HTTP::Response'                => 0,
        'MIME::Base64'                  => 0,
        'Module::Find'                  => 0.05,
        'Moose'                         => 0.95,
        'MooseX::Role::WithOverloading' => 0.03,
        'MooseX::Types'                 => 0.34,
        'Perl6::Junction'               => 0,
        'Set::Object'                   => 0,
        'Scalar::Util'                  => 0,
        'URI'                           => 1.37,
        'XML::Parser::PerlSAX'          => 0.08,
        'XML::DOM'                      => 0,
        'AppConfig'                     => 0,
        'Pod::Usage'                    => 0,
        'Time::HiRes'                   => 0,
    },
    recommends => {
        'YAML::Syck'              => 1.07,
        'Spreadsheet::WriteExcel' => 0,
        'Perl::Tidy'                => 20070801,
        'Test::Warn'              => 0,
    },
    build_requires => {
        'Module::Build'             => '0.36',
        'Test::Class'               => 0,
        'Test::Exception'           => 0,
        'Test::More'                => 0.9,
        'Test::XML'                 => 0,
        'Test::MockObject'          => 0,
        'Test::MockObject::Extends' => 0,
        'XML::Rules'                => 0,
        'Set::CrossProduct'         => 0,
    },
);
$build->create_build_script;
