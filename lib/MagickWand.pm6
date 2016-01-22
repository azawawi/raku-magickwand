use v6;

unit class MagickWand;

use NativeCall;
use MagickWand::NativeCall;

# MagickWand's native pointer
has Pointer $.wand is rw;

method read-image(Str $file-name) returns Bool {
  $.wand = NewMagickWand unless $.wand.defined;
  return MagickReadImage( $.wand, $file-name ) == MagickTrue;
}

method get-image-gamma returns Num {
  die "No wand!" unless $.wand.defined;
  return MagickGetImageGamma( $.wand );
}

method auto-gamma returns Bool {
  die "No wand!" unless $.wand.defined;
  return MagickAutoGammaImage( $.wand ) == MagickTrue;
}

method auto-level returns Bool {
  die "No wand!" unless $.wand.defined;
  return MagickAutoLevelImage( $.wand ) == MagickTrue;
}

method write-image(Str $file-name) returns Bool {
  die "No wand!" unless $.wand.defined;
  return MagickWriteImage( $.wand, $file-name ) == MagickTrue;
}

method crop(Int $x, Int $y, Int $width, Int $height) returns Bool {
  die "No wand!" unless $.wand.defined;
  return MagickCropImage($.wand, $width, $height, $x, $y) == MagickTrue;
}

method cleanup {
  DestroyMagickWand($.wand) if $.wand.defined;
}
