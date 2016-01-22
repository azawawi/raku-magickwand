#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand::NativeCall;

# Wave the magic wand :)
my $wand = NewMagickWand();
MagickReadImage($wand, "examples/images/aero1.jpg");
MagickAutoGammaImage($wand);
MagickWriteImage($wand, "output.png");
DestroyMagickWand($wand) if $wand.defined;
