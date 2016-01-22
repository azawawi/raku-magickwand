use v6;

unit module MagickWand::NativeCall;

use NativeCall;
use LibraryCheck;

constant LIB = 'MagickWand';

sub library {
  if library-exists(LIB, v4) {
    return sprintf("lib%s.so.4", LIB);
  } elsif library-exists(LIB, v5) {
    return sprintf("lib%s.so.5", LIB);
  } else {
    die sprintf("Cannot find %s v4..v5", LIB);
  }
}

constant MagickTrue   is export = 1;
constant MagickFalse  is export = 0;

# MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)
sub MagickReadImage(Pointer $wand, Str $file-name)
  returns int32
  is native(&library) is export { * }

# MagickWand *NewMagickWand(void)
sub NewMagickWand
  returns Pointer
  is native(&library) is export { * }

# MagickWand *CloneMagickWand(const MagickWand *wand)
sub CloneMagickWand(Pointer $wand)
  returns Pointer
  is native(&library) is export { * }

# MagickWand *DestroyMagickWand(MagickWand *wand)
sub DestroyMagickWand(Pointer $wand)
  returns Pointer
  is native(&library) is export { * }

# MagickBooleanType MagickWriteImage(MagickWand *wand, const char *filename)
sub MagickWriteImage(Pointer $wand, Str $file-name)
  returns int32
  is native(&library) is export { * }

# MagickBooleanType MagickAutoGammaImage(MagickWand *wand)
sub MagickAutoGammaImage(Pointer $wand)
  returns int32
  is native(&library) is export { * }

# MagickBooleanType MagickAutoLevelImage(MagickWand *wand)
sub MagickAutoLevelImage(Pointer $wand)
  returns int32
  is native(&library) is export { * }

# MagickBooleanType MagickNegateImage(MagickWand *wand)
sub MagickNegateImage(Pointer $wand)
  returns int32
  is native(&library) is export { * }

# double MagickGetImageGamma(MagickWand *wand)
sub MagickGetImageGamma(Pointer $wand)
  returns num64
  is native(&library) is export { * }

# MagickBooleanType MagickSepiaToneImage(MagickWand *wand, const double threshold)
sub MagickSepiaToneImage(Pointer $wand, num64 $threshold)
  returns int32
  is native(&library) is export { * }

# MagickBooleanType MagickCropImage(MagickWand *wand, const size_t width,const size_t height,const ssize_t x,const ssize_t y)
sub MagickCropImage(Pointer $wand, uint32 $width, uint32 $height, uint32 $x, uint32 $y)
  returns int32
  is native(&library) is export { * }

# MagickBooleanType MagickChopImage(MagickWand *wand,const size_t width, const size_t height,const ssize_t x,const ssize_t y)
sub MagickChopImage(Pointer $wand, uint32 $width, uint32 $height, uint32 $x, uint32 $y)
  returns int32
  is native(&library) is export { * }

# MagickBooleanType MagickAddImage(MagickWand *wand, const MagickWand *add_wand)
sub MagickAddImage(Pointer $wand, Pointer $add_wand)
  returns int32
  is native(&library) is export { * }

# void MagickSetLastIterator(MagickWand *wand)
sub MagickSetLastIterator(Pointer $wand)
  is native(&library) is export { * }

sub MagickAppendImages(Pointer $wand, uint32 $stack)
  returns Pointer
  is native(&library) is export { * }

# void MagickSetFirstIterator(MagickWand *wand)
sub MagickSetFirstIterator(Pointer $wand)
  is native(&library) is export { * }

# MagickBooleanType MagickCharcoalImage(MagickWand *wand, const double radius,const double sigma)
sub MagickCharcoalImage(Pointer $wand, num64 $radius, num64 $sigma)
  returns uint32
  is native(&library) is export { * }

#  DrawingWand *NewDrawingWand(void)
sub NewDrawingWand
  returns Pointer
  is native(&library) is export { * }

# void DrawLine(DrawingWand *wand,const double sx,const double sy, const double ex,const double ey)
sub DrawLine(Pointer $wand, num64 $sx, num64 $sy, num64 $ex, num64 $ey)
  is native(&library) is export { * }

# MagickBooleanType MagickDrawImage(MagickWand *wand, const DrawingWand *drawing_wand)
sub MagickDrawImage(Pointer $wand, Pointer $drawing_wand)
  is native(&library) is export { * }
