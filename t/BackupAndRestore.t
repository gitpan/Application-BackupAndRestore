#!/usr/bin/perl -w
#package AAA_01
#the line above does not have to interest you
use Test::More no_plan;
use strict;

BEGIN {
	$| = 1;
	chdir 't' if -d 't';
	unshift @INC, '../bin';
	unshift @INC, '../lib';
	use_ok 'Applications::BackupAndRestore';
}

warn "
# WARNING ######################################################################

This Bundle is for test purposes only! DON'T USE IT! It's in development!

################################################################################
";

run Applications::BackupAndRestore;

__END__
