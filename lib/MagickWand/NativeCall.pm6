use v6;

unit module MagickWand::NativeCall;

use NativeCall;
use MagickWand::NativeCall::Common;

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

# void MagickSetLastIterator(MagickWand *wand)
sub MagickSetLastIterator(Pointer $wand)
  is native(&library) is export { * }

# void MagickSetFirstIterator(MagickWand *wand)
sub MagickSetFirstIterator(Pointer $wand)
  is native(&library) is export { * }

#  DrawingWand *NewDrawingWand(void)
sub NewDrawingWand
  returns Pointer
  is native(&library) is export { * }

# void DrawLine(DrawingWand *wand,const double sx,const double sy, const double ex,const double ey)
sub DrawLine(Pointer $wand, num64 $sx, num64 $sy, num64 $ex, num64 $ey)
  is native(&library) is export { * }
