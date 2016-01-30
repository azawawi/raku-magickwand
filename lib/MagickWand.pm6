use v6;

enum NoiseType is export <UndefinedNoise UniformNoise GaussianNoise
  MultiplicativeGaussianNoise ImpulseNoise LaplacianNoise PoissonNoise>;

enum ChannelType is export (
  UndefinedChannel  => 0,
  RedChannel        => 0x1,
  GrayChannel       => 0x1,
  CyanChannel       => 0x1,
  GreenChannel      => 0x2,
  MagentaChannel    => 0x2,
  BlueChannel       => 0x4,
  YellowChannel     => 0x4,
  AlphaChannel      => 0x8,
  OpacityChannel    => 0x8,
  BlackChannel      => 0x20,
  IndexChannel      => 0x20,
  CompositeChannels => 0x2F,
  AllChannels       => 0x7ffffff,
  TrueAlphaChannel  => 0x40,
  RGBChannels       => 0x80,
  GrayChannels      => 0x80,
  SyncChannels      => 0x100,
  DefaultChannels   => 0x7fffff7
);

enum CompositeOperator is export <
  UndefinedCompositeOp
  NoCompositeOp
  ModulusAddCompositeOp
  AtopCompositeOp
  BlendCompositeOp
  BumpmapCompositeOp
  ChangeMaskCompositeOp
  ClearCompositeOp
  ColorBurnCompositeOp
  ColorDodgeCompositeOp
  ColorizeCompositeOp
  CopyBlackCompositeOp
  CopyBlueCompositeOp
  CopyCompositeOp
  CopyCyanCompositeOp
  CopyGreenCompositeOp
  CopyMagentaCompositeOp
  CopyOpacityCompositeOp
  CopyRedCompositeOp
  CopyYellowCompositeOp
  DarkenCompositeOp
  DstAtopCompositeOp
  DstCompositeOp
  DstInCompositeOp
  DstOutCompositeOp
  DstOverCompositeOp
  DifferenceCompositeOp
  DisplaceCompositeOp
  DissolveCompositeOp
  ExclusionCompositeOp
  HardLightCompositeOp
  HueCompositeOp
  InCompositeOp
  LightenCompositeOp
  LinearLightCompositeOp
  LuminizeCompositeOp
  MinusDstCompositeOp
  ModulateCompositeOp
  MultiplyCompositeOp
  OutCompositeOp
  OverCompositeOp
  OverlayCompositeOp
  PlusCompositeOp
  ReplaceCompositeOp
  SaturateCompositeOp
  ScreenCompositeOp
  SoftLightCompositeOp
  SrcAtopCompositeOp
  SrcCompositeOp
  SrcInCompositeOp
  SrcOutCompositeOp
  SrcOverCompositeOp
  ModulusSubtractCompositeOp
  ThresholdCompositeOp
  XorCompositeOp
  DivideDstCompositeOp
  DistortCompositeOp
  BlurCompositeOp
  PegtopLightCompositeOp
  VividLightCompositeOp
  PinLightCompositeOp
  LinearDodgeCompositeOp
  LinearBurnCompositeOp
  MathematicsCompositeOp
  DivideSrcCompositeOp
  MinusSrcCompositeOp
  DarkenIntensityCompositeOp
  LightenIntensityCompositeOp
>;

unit class MagickWand;

use NativeCall;
use MagickWand::NativeCall;
use MagickWand::NativeCall::DrawingWand;
use MagickWand::NativeCall::Image;
use MagickWand::NativeCall::Mogrify;
use MagickWand::NativeCall::PixelIterator;
use MagickWand::NativeCall::PixelWand;
use MagickWand::NativeCall::Property;
use MagickWand::NativeCall::Wand;
use MagickWand::NativeCall::WandView;

# Wand native handles
has Pointer $.handle   is rw;
has Pointer $.d_handle is rw;
has Pointer $.p_handle is rw;

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

method label(Str $label) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickLabelImage( $.handle, $label ) == MagickTrue;
}

method adaptive-blur(Rat $radius, Rat $sigma) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveBlurImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method adaptive-resize(Int $width, Int $height) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveResizeImage( $.handle, $width, $height ) == MagickTrue;
}

method adaptive-sharpen(Rat $radius, Rat $sigma) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveSharpenImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method adaptive-threshold(Int $width, Int $height, Int $offset) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveThresholdImage( $.handle, $width, $height, $offset ) == MagickTrue;
}

method add-noise(NoiseType $noise_type) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAddNoiseImage( $.handle, $noise_type.Int ) == MagickTrue;
}

method annotate(Rat $x, Rat $y, Rat $angle, Str $text) {
  die "No wand handle defined!" unless $.handle.defined;
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  MagickAnnotateImage( $.handle, $.d_handle, $x.Num, $y.Num, $angle.Num, $text ) == MagickTrue;
}

method blur(Rat $radius, Rat $sigma) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickBlurImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method border(Str $border_color, Int $width, Int $height) {
  die "No wand handle defined!" unless $.handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  return (PixelSetColor( $.p_handle, $border_color) == MagickTrue) &&
    (MagickBorderImage( $.handle, $.p_handle, $width, $height ) == MagickTrue);
}

method channel(ChannelType $channel_type) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSeparateImageChannel( $.handle, $channel_type.Int ) == MagickTrue;
}

method composite(MagickWand $camelia, CompositeOperator $compose, Int $x, Int $y) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickCompositeImage( $.handle, $camelia.handle, $compose.Int, $x, $y ) == MagickTrue;
}

method contrast(Int $sharpen = 0) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickContrastImage( $.handle, $sharpen );
}

method contrast-stretch(Real $black_point, Real $white_point) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickContrastStretchImage( $.handle, $black_point.Num, $white_point.Num );
}

method convolve(@kernel) {
  die "No wand handle defined!" unless $.handle.defined;
  my $order = @kernel.elems.sqrt.Int;
  my $kernel_carray = CArray[num32].new;
  $kernel_carray[$_] = @kernel[$_].Num for ^@kernel.elems;
  return MagickConvolveImage( $.handle, $order, $kernel_carray );
}

method despeckle {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickDespeckleImage( $.handle );
}

method cleanup {
  if $.handle.defined {
    DestroyMagickWand($.handle);
    $.handle = Nil;
  }
  if $.d_handle.defined {
    DestroyDrawingWand($.d_handle);
    $.d_handle = Nil;
  }
  if $.p_handle.defined {
    DestroyPixelWand($.p_handle);
    $.p_handle = Nil;
  }
}
