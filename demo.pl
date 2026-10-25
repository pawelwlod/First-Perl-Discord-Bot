#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;

use YAML::XS 'LoadFile';
my $config = LoadFile('config.yml');

use FindBin 1.51 qw( $RealBin );
use lib "$RealBin/lib";

use Chat::Bot;

my $bot = Chat::Bot->new(
    token       => $config->{discord_token},
    logdir      => "$RealBin/logs",
);

$bot->start();
