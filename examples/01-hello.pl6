#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand::NativeCall;

# A new magic wand
my $wand = NewMagickWand();

# Read an image
MagickReadImage($wand, "examples/images/aero1.jpg");

# And do some magic on it
MagickAutoGammaImage($wand);
MagickAutoLevelImage($wand);

# And then write a new image
MagickWriteImage($wand, "output.png");

# Cleanup
DestroyMagickWand($wand) if $wand.defined;
