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

my $comparison-wand = MagickWand.new( wand => NewMagickWand );
MagickSetLastIterator($comparison-wand.wand);
MagickAddImage($comparison-wand.wand, $original-wand.wand);
MagickSetLastIterator($comparison-wand.wand);
MagickAddImage($comparison-wand.wand, $filtered-wand.wand);

# And then write a new image
$original-wand.write-image("output0.png");
$filtered-wand.write-image("output1.png");

MagickSetFirstIterator($comparison-wand.wand);
my $clone = MagickAppendImages($comparison-wand.wand, MagickFalse);
MagickWriteImage($clone, "output2.png");

# And cleanup...
$original-wand.cleanup;
$filtered-wand.cleanup;
