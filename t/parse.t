#
# $Id: parse.t,v 1.4 2002/01/07 13:03:30 nick Exp $
#
# Copyright (C) 2001, 2002 Network Ability Ltd.  All rights reserved.  This
# software may be redistributed under the terms of the license included in
# this software distribution.  Please see the file "LICENSE" for further
# details.

use Rcs::Agent;
use strict;
use Data::Dumper;

print "1..1\n";
my $rcs = new Rcs::Agent (file => "/tmp/index");

$rcs->parse;

print Dumper($rcs);

print "ok 1\n";
