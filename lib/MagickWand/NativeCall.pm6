use v6;

unit module MagickWand::NativeCall;

use NativeCall;
use LibraryCheck;

constant LIB = 'MagickWand';

sub library {
  # On windows
  return "CORE_RL_wand_.dll" if $*DISTRO.is-win;

  # On MacOS X using howbrew
  return "libMagickWand-6.Q16.2.dylib" if $*KERNEL.name eq 'darwin';

  # Linux/UNIX
  if library-exists(LIB, v4) {
    return sprintf("lib%s.so.4", LIB);
  } elsif library-exists(LIB, v5) {
    return sprintf("lib%s.so.5", LIB);
  }

  # Fallback
  return sprintf("lib%s.so", LIB);
}

constant MagickTrue   is export = 1;
constant MagickFalse  is export = 0;

=begin stash
enum ChannelType  is export (
  UndefinedChannel  => 0,
  RedChannel        => 0x0001;
  GrayChannel       => 0x0001,
  CyanChannel       => 0x0001,
  GreenChannel      => 0x0002,
  MagentaChannel    => 0x0002,
  BlueChannel       => 0x0004,
  YellowChannel     => 0x0004,
  AlphaChannel      => 0x0008,
  OpacityChannel    => 0x0008,
  BlackChannel      => 0x0020,
  IndexChannel      => 0x0020,
  CompositeChannels => 0x002F,
  AllChannels       => 0x7ffffff,
  TrueAlphaChannel  => 0x0040,
  RGBChannels       => 0x0080,
  GrayChannels      => 0x0080,
  SyncChannels      => 0x0100,
  DefaultChannels   => ((AllChannels | SyncChannels) &~ OpacityChannel),
);
=end stash

# MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)
sub MagickReadImage(Pointer $wand, Str $file-name)
  returns int32
  is native(&library) is export { * }

=begin stash

=head1 MagickReadImageBlob

    MagickBooleanType MagickReadImageBlob(
      MagickWand *wand,
      const void *blob,
      const size_t length
    )

  MagickReadImageBlob() reads an image or image sequence from a blob.
  - wand: the magick wand.
  - blob: the blob.
  - length: the blob length.

sub MagickReadImageBlob(
   MagickWandPointer $wand,
   Pointer[z] $blob,
   int32  $length
)
returns uint32
is native(&library)
is export { * };
=end stash

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
