#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;
use MagickWand::NativeCall;

# A new magic wand
my $original-wand = MagickWand.new;

# Read an image
$original-wand.read-image("examples/images/aero1.jpg");

# And do some magic on it
my $filtered-wand = $original-wand.clone;
$filtered-wand.auto-gamma;
$filtered-wand.auto-level;

my $comparison-wand = MagickWand.append-wands( $original-wand, $filtered-wand );

# And then write a new image
$original-wand.write-image("output0.png");
$filtered-wand.write-image("output1.png");
$comparison-wand.write-image("output2.png");

# And cleanup...
$original-wand.cleanup;
$filtered-wand.cleanup;
$comparison-wand.cleanup;
