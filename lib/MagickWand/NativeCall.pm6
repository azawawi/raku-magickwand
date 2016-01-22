use v6;

unit module MagickWand::NativeCall;

use NativeCall;
use lib 'lib';

constant LIB = 'MagickWand';

# MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)
sub MagickReadImage(Pointer $wand, Str $file-name)
  returns Bool
  is native(LIB, v5)
  is export 
  { * }

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
  returns Bool
  is native(LIB, v5) is export { * }

# MagickBooleanType MagickAutoGammaImage(MagickWand *wand)
sub MagickAutoGammaImage(Pointer $wand)
  returns Bool
  is native(LIB, v5) is export { * }
