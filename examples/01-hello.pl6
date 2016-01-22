#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# A new magic wand
my $original = MagickWand.new;

# Read an image
$original.read-image("examples/images/aero1.jpg");

# And do some magic on it
my $filtered = $original.clone;
$filtered.auto-gamma;
$filtered.auto-level;

my $charcoaled = $original.clone;
$charcoaled.charcoal(20.0,1.0);

my $comparison = MagickWand.append-wands( $original, $filtered, $charcoaled );

# And then write a new image
$comparison.write-image("output.png");

# And cleanup...
$original.cleanup;
$filtered.cleanup;
$charcoaled.cleanup;
$comparison.cleanup;
