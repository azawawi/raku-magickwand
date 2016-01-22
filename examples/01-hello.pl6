#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# A new magic wand
my $original-wand = MagickWand.new;

# Read an image
$original-wand.read-image("examples/images/aero1.jpg");

# And do some magic on it
my $filtered-wand = $original-wand.clone;
$filtered-wand.auto-gamma;
$filtered-wand.auto-level;

my $negated-wand = $original-wand.clone;
$negated-wand.charcoal(20.0,1.0);

my $comparison-wand = MagickWand.append-wands( $original-wand, $filtered-wand, $negated-wand );

# And then write a new image
$comparison-wand.write-image("output.png");

# And cleanup...
$original-wand.cleanup;
$filtered-wand.cleanup;
$negated-wand.cleanup;
$comparison-wand.cleanup;
