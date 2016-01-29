#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# A new magic wand
my $original = MagickWand.new;

# Read an image
$original.read("examples/images/aero1.jpg");

# And do some magic on it
my $filtered = $original.clone;
$filtered.auto-gamma;
$filtered.auto-level;

$filtered.draw-line(0.0, 0.0, 100.0, 100.0);

my $charcoaled = $original.clone;
$charcoaled.charcoal(20.0,1.0);

my $comparison = MagickWand.append-wands( $original, $filtered, $charcoaled );

# And then write a new image
$comparison.write-image("output.png");

# And cleanup on exit
LEAVE {
  $original.cleanup   if $original.defined;
  $original.cleanup   if $filtered.defined;
  $charcoaled.cleanup if $charcoaled.defined;
  $comparison.cleanup if $comparison.defined;
}
