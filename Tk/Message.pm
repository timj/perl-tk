# Copyright (c) 1995-2000 Nick Ing-Simmons. All rights reserved.
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.
package Tk::Message;
use strict;

use vars qw($VERSION);
$VERSION = '4.003'; # $Id: //depot/Tkutf8/Tk/Message.pm#3 $

require Tk::Widget;

use base  qw(Tk::Widget);

Construct Tk::Widget 'Message';

sub Tk_cmd { \&Tk::message }

1;
__END__

