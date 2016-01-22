#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# A new magic wand
my $wand = MagickWand.new;

# Read an image
$wand.read-image("examples/images/aero1.jpg");

# Print out gamma value (before)
say sprintf("Gamma (before) = %3.2f", $wand.get-image-gamma());

# And do some magic on it
$wand.auto-gamma;
$wand.auto-level;
#MagickSepiaToneImage($wand, 80);

# Print out gamma value (after)
say sprintf("Gamma (before) = %3.2f", $wand.get-image-gamma());

# And then write a new image
$wand.write-image("output.png");

# And cleanup...
$wand.cleanup;
