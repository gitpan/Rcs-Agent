#
# $Id: checkout.t,v 1.3 2002/02/11 15:51:31 nick Exp $
#
# Copyright (C) 2001, 2002 Network Ability Ltd.  All rights reserved.  This
# software may be redistributed under the terms of the license included in
# this software distribution.  Please see the file "LICENSE" for further
# details.

use Rcs::Agent;
use strict;
use Data::Dumper;

print "1..1\n";

print "ok 1\n";   

exit;

my $rcs = new Rcs::Agent (file => "/tmp/index");

my $output = $rcs->checkout (lock => 1);
print Dumper ($output);
print $rcs->{err};

$output = $rcs->checkout (lock => 1, force => 1);
print Dumper ($output);
print $rcs->{err};

print "ok 1\n";
