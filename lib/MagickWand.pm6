use v6;

unit class MagickWand;

use NativeCall;
use MagickWand::NativeCall;
use MagickWand::NativeCall::Image;

# Wand native handle
has Pointer $.handle   is rw;
has Pointer $.d_handle is rw;

method read(Str $file-name) returns Bool {
  $.handle = NewMagickWand unless $.handle.defined;
  return MagickReadImage( $.handle, $file-name ) == MagickTrue;
}

=begin stash
method read-buffer(Buf :$buffer) returns Bool {
  $.handle = NewMagickWand unless $.handle.defined;
  return MagickReadImageBlob( $.handle, $blob ) == MagickTrue;
}
=end stash

method get-image-gamma returns Num {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickGetImageGamma( $.handle );
}

method auto-gamma returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAutoGammaImage( $.handle ) == MagickTrue;
}

method auto-level returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAutoLevelImage( $.handle ) == MagickTrue;
}

method negate returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickNegateImage( $.handle ) == MagickTrue;
}

method charcoal(Rat $radius, Rat $sigma) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickCharcoalImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method write(Str $file-name) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickWriteImage( $.handle, $file-name ) == MagickTrue;
}

method crop(Int $x, Int $y, Int $width, Int $height) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickCropImage($.handle, $width, $height, $x, $y) == MagickTrue;
}

method chop(Int $x, Int $y, Int $width, Int $height) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickChopImage($.handle, $width, $height, $x, $y) == MagickTrue;
}

method clone returns MagickWand {
  die "No wand handle defined!" unless $.handle.defined;
  my $cloned-wand = CloneMagickWand($.handle);
  return MagickWand.new( handle => $cloned-wand );
}

method draw-line(Rat $x1, Rat $y1, Rat $x2, Rat $y2) {
  die "No wand handle defined!" unless $.handle.defined;
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  DrawLine( $.d_handle, $x1.Num, $y1.Num, $x2.Num, $y2.Num);
  MagickDrawImage( $.handle, $.d_handle )
}

submethod append-wands(+@wands) returns MagickWand {
  die "List must be defined with at least two elements" unless @wands.defined && @wands.elems >= 2;

  my $temp-wand = NewMagickWand;
  MagickSetLastIterator($temp-wand);

  # Add wands
  for @wands -> $wand {
    MagickAddImage($temp-wand, $wand.handle);
    MagickSetLastIterator($temp-wand);
  }

  # Append them side-by-side horizontallly
  MagickSetFirstIterator($temp-wand);
  my $cloned-wand = MagickAppendImages($temp-wand, MagickFalse);

  # Cleanup
  DestroyMagickWand( $temp-wand );

  return MagickWand.new( handle => $cloned-wand );
}

method cleanup {
  if $.handle.defined {
    DestroyMagickWand($.handle);
    $.handle = Nil;
  }
}
