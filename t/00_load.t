#!/usr/bin/perl

use warnings;
use strict;

use Test::More tests => 5;

# This script is redundant to perl Makefile.PL, which also gives a finer
# granularity and separation of what is required for run, config, build,
# test, etc. -- including specific version thresholds if necessary.
#
# Here we test only what is required to run, equivalent of PREREQ_PM.

BEGIN {
    my @classes = qw(
        Carp
        English
        Getopt::Long
        IPC::Open2
        Term::ANSIColor
    );

    foreach my $class (@classes) {
        use_ok $class or BAIL_OUT("Could not load $class");
    }
}
