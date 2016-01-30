#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

my @images;

# A new magic wand
my $original = MagickWand.new;

# Read an image
$original.read("examples/images/aero1.jpg");
@images.push($original);

{
  # And do some magic on it
  my $o = $original.clone;
  $o.adaptive-blur(0.0, 1.0);
  $o.label("Adaptive Blur");
  @images.push($o);
}

{
  my $o = $original.clone;
  $o.adaptive-resize(320, 240);
  $o.label("Adaptive Resize");
  @images.push($o);
}

{
  my $o = $original.clone;
  $o.adaptive-sharpen(0.0, 1.0);
  $o.label("Adaptive Sharpen");
  @images.push($o);
}

{
  my $o = $original.clone;
  $o.adaptive-threshold(5, 5, 5);
  $o.label("Adaptive Threshold");
  @images.push($o);
}

{
  my $o = $original.clone;
  $o.add-noise(LaplacianNoise);
  $o.label("Add Noise");
  @images.push($o);
}

my $comparison = MagickWand.append-wands( @images );

# And then write a new image
$comparison.write("output.png");

# And cleanup on exit
LEAVE {
  $original.cleanup   if $original.defined;
  for @images -> $image {
    $image.cleanup   if $image.defined;  
  }
}
