use v6;

unit class MagickWand;

use NativeCall;
use MagickWand::NativeCall;

# MagickWand's native pointer
has Pointer $.wand is rw;

method read-image(Str $file-name) returns Bool {
  $.wand = NewMagickWand unless $.wand.defined;
  return MagickReadImage( $.wand, $file-name );
}

method get-image-gamma returns Num {
  die "No wand!" unless $.wand.defined;
  return MagickGetImageGamma( $.wand );
}

method auto-gamma returns Bool {
  die "No wand!" unless $.wand.defined;
    return MagickAutoGammaImage( $.wand );
}

method auto-level returns Bool {
  die "No wand!" unless $.wand.defined;
    return MagickAutoLevelImage( $.wand );
}

method write-image(Str $file-name) returns Bool {
  $.wand = NewMagickWand unless $.wand.defined;
  return MagickWriteImage( $.wand, $file-name );
}

method cleanup {
  DestroyMagickWand($.wand) if $.wand.defined;
}
