#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# A new magic wand
my $wand = MagickWand.new;

# Read an image
$wand.read-image("examples/images/aero1.jpg");

# And do some magic on it
$wand.auto-gamma;
$wand.auto-level;

# Do some cropping
$wand.crop(50, 50, 250, 250);

# And then write a new image
$wand.write-image("output.png");

# And cleanup...
$wand.cleanup;
