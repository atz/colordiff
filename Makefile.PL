use ExtUtils::MakeMaker;

my $script_name = 'colordiff';

WriteMakefile(
    'NAME'         => $script_name,
    'VERSION_FROM' => 'colordiff.pl',
    'ABSTRACT_FROM'=> 'colordiff.pl',
    'EXE_FILES'    =>['colordiff.pl'],
    'LICENSE'      => 'GPL_2',
    'PREREQ_PM'    => {
        "Carp"                => 0,
        "English"             => 0,
        "Getopt::Long"        => 0,
        "IPC::Open2"          => 0,
        "Term::ANSIColor"     => 0,
    },
    'BUILD_REQUIRES' => {
        "IO::All"             => 0,
        "Test::More"          => 0,
        "Test::Most"          => 0,
        "Test::Output"        => 0,
#       "Test::Pod"           => 0,   # these should be for DIST BUILD ONLY
#       "Test::Pod::Coverage" => 0,
#       "Test::Spelling"      => 0,
    },
    'MIN_PERL_VERSION' => 5.008_000,
    'META_MERGE' => {
        resources => {
            repository => 'https://github.com/kimmel/colordiff',
        },
    }
);
