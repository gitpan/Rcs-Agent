# $Id: Makefile.PL,v 1.6 2002/01/07 13:03:29 nick Exp $
#
# Copyright (C) 2001, 2002 Network Ability Ltd.  All rights reserved.  This
# software may be redistributed under the terms of the license included in
# this software distribution.  Please see the file "LICENSE" for further
# details.

require 5.002;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> 'Rcs::Agent',
	VERSION_FROM	=> 'Agent.pm',

	PREREQ_PM	=> {
		String::ShellQuote => '1.00',
		File::MkTemp => '',
	},

	'dist'		=> {
		'COMPRESS' => 'gzip -9f',
		'SUFFIX' => 'gz'
	},
);
