use v6;

unit module MagickWand::NativeCall;

use NativeCall;

constant LIB = 'MagickWand';


constant MagickTrue   is export = 1;
constant MagickFalse  is export = 0;

# MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)
sub MagickReadImage(Pointer $wand, Str $file-name)
  returns int32
  is native(LIB, v5) is export { * }

# MagickWand *NewMagickWand(void)
sub NewMagickWand
  returns Pointer
  is native(LIB, v5) is export { * }

# MagickWand *DestroyMagickWand(MagickWand *wand)
sub DestroyMagickWand(Pointer $wand)
  returns Pointer
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickWriteImage(MagickWand *wand, const char *filename)
sub MagickWriteImage(Pointer $wand, Str $file-name)
  returns int32
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickAutoGammaImage(MagickWand *wand)
sub MagickAutoGammaImage(Pointer $wand)
  returns int32
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickAutoLevelImage(MagickWand *wand)
sub MagickAutoLevelImage(Pointer $wand)
  returns int32
  is native(LIB, v5) is export { * }

# double MagickGetImageGamma(MagickWand *wand)
sub MagickGetImageGamma(Pointer $wand)
  returns num64
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickSepiaToneImage(MagickWand *wand, const double threshold)
sub MagickSepiaToneImage(Pointer $wand, num64 $threshold)
  returns int32
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickCropImage(MagickWand *wand, const size_t width,const size_t height,const ssize_t x,const ssize_t y)
sub MagickCropImage(Pointer $wand, uint32 $width, uint32 $height, uint $x, uint $y)
  returns int32
  is native(LIB, v5) is export { * }
