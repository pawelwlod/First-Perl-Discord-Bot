#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;

use FindBin 1.51 qw( $RealBin );
use lib "$RealBin/lib";

use Chat::Bot;

my $bot = Chat::Bot->new(
    token       => 'XXX', # TODO Create config file
    logdir      => "$RealBin/logs",
);

$bot->start();
