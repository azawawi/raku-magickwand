use v6;

unit module MagickWand::NativeCall;

use NativeCall;

constant LIB = 'MagickWand';

# MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)
sub MagickReadImage(Pointer $wand, Str $file-name)
  returns bool
  is native(LIB, v5) is export { * }

# MagickWand *NewMagickWand(void)
sub NewMagickWand()
  returns Pointer
  is native(LIB, v5) is export { * }

# MagickWand *DestroyMagickWand(MagickWand *wand)
sub DestroyMagickWand(Pointer $wand)
  returns Pointer
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickWriteImage(MagickWand *wand, const char *filename)
sub MagickWriteImage(Pointer $wand, Str $file-name)
  returns bool
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickAutoGammaImage(MagickWand *wand)
sub MagickAutoGammaImage(Pointer $wand)
  returns bool
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickAutoLevelImage(MagickWand *wand)
sub MagickAutoLevelImage(Pointer $wand)
  returns bool
  is native(LIB, v5) is export { * }

# double MagickGetImageGamma(MagickWand *wand)
sub MagickGetImageGamma(Pointer $wand)
  returns num64
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickSepiaToneImage(MagickWand *wand, const double threshold)
sub MagickSepiaToneImage(Pointer $wand, num64 $threshold)
  returns bool
  is native(LIB, v5) is export { * }
