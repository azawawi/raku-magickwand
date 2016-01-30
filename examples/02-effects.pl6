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
  say "Adaptive Blur";
  my $o = $original.clone;
  $o.adaptive-blur(0.0, 1.0);
  $o.label("Adaptive Blur");
  @images.push($o);
}

{
  say "Adaptive Resize";
  my $o = $original.clone;
  $o.adaptive-resize( 160, 120 );
  $o.label("Adaptive Resize");
  @images.push($o);
}

{
  say "Adaptive Sharpen";
  my $o = $original.clone;
  $o.adaptive-sharpen(0.0, 1.0);
  $o.label("Adaptive Sharpen");
  @images.push($o);
}

{
  say "Adaptive Threshold";
  my $o = $original.clone;
  $o.adaptive-threshold(5, 5, 5);
  $o.label("Adaptive Threshold");
  @images.push($o);
}

{
  say "Add Noise";
  my $o = $original.clone;
  $o.add-noise(LaplacianNoise);
  $o.label("Add Noise");
  @images.push($o);
}

{
  say "Annotate";
  my $o = $original.clone;
  $o.annotate(100.0, 100.0, 90.0, "Annotate");
  $o.label("Annotate");
  @images.push($o);
}

{
  say "Auto Gamma";
  my $o = $original.clone;
  $o.auto-gamma;
  $o.label("Auto Gamma");
  @images.push($o);
}

{
  say "Auto Level";
  my $o = $original.clone;
  $o.auto-level;
  $o.label("Auto Level");
  @images.push($o);
}

{
  say "Blur";
  my $o = $original.clone;
  $o.blur(0.0, 1.0);
  $o.label("Blur");
  @images.push($o);
}

{
  say "Border";
  my $o = $original.clone;
  $o.border("gold", 6, 6);
  $o.label("Border");
  @images.push($o);
}

{
  say "Channel";
  my $o = $original.clone;
  $o.channel(RedChannel);
  $o.label("Channel");
  @images.push($o);
}

{
  say "Charcoal";
  my $o = $original.clone;
  $o.charcoal(20.0,1.0);
  $o.label("Charcoal");
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
