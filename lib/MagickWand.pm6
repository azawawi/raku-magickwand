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

enum MontageMode is export <
  UndefinedMode,
  FrameMode
  UnframeMode
  ConcatenateMode
>;

enum ImageType is export <
  UndefinedType
  BilevelType
  GrayscaleType
  GrayscaleMatteType
  PaletteType
  PaletteMatteType
  TrueColorType
  TrueColorMatteType
  ColorSeparationType
  ColorSeparationMatteType
  OptimizeType
  PaletteBilevelMatteType
>;

enum StatisticType is export <
  UndefinedStatistic
  GradientStatistic
  MaximumStatistic
  MeanStatistic
  MedianStatistic
  MinimumStatistic
  ModeStatistic
  NonpeakStatistic
  StandardDeviationStatistic
>;

enum ColorspaceType is export <
  UndefinedColorspace
  RGBColorspace
  GRAYColorspace
  TransparentColorspace
  OHTAColorspace
  LabColorspace
  XYZColorspace
  YCbCrColorspace
  YCCColorspace
  YIQColorspace
  YPbPrColorspace
  YUVColorspace
  CMYKColorspace
  sRGBColorspace
  HSBColorspace
  HSLColorspace
  HWBColorspace
  Rec601LumaColorspace
  Rec601YCbCrColorspace
  Rec709LumaColorspace
  Rec709YCbCrColorspace
  LogColorspace
  CMYColorspace
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
use MagickWand::NativeCall::Deprecated;

# Wand native handles
has Pointer $.handle   is rw;
has Pointer $.d_handle is rw;
has Pointer $.p_handle is rw;

method create(Int $width, Int $height, Str $background_color) {
  $.handle = NewMagickWand unless $.handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  return (PixelSetColor( $.p_handle, $background_color) == MagickTrue) &&
    (MagickNewImage( $.handle, $width, $height, $.p_handle ) == MagickTrue)
}

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

method negate(Bool $gray) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickNegateImage( $.handle, $gray.Int ) == MagickTrue;
}

method charcoal(Real $radius, Real $sigma) returns Bool {
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

method draw-line(Real $x1, Real $y1, Real $x2, Real $y2) {
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

method adaptive-blur(Real $radius, Real $sigma) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveBlurImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method adaptive-resize(Int $width, Int $height) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveResizeImage( $.handle, $width, $height ) == MagickTrue;
}

method adaptive-sharpen(Real $radius, Real $sigma) {
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

method annotate(Real $x, Real $y, Real $angle, Str $text) {
  die "No wand handle defined!" unless $.handle.defined;
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  MagickAnnotateImage( $.handle, $.d_handle, $x.Num, $y.Num, $angle.Num, $text ) == MagickTrue;
}

method blur(Real $radius, Real $sigma) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickBlurImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method border(Str $border_color, Int $width, Int $height) {
  die "No wand handle defined!" unless $.handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  return (PixelSetColor( $.p_handle, $border_color) == MagickTrue) &&
    (MagickBorderImage( $.handle, $.p_handle, $width, $height ) == MagickTrue);
}

method channel(ChannelType $channel_type) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSeparateImageChannel( $.handle, $channel_type.Int ) == MagickTrue;
}

method composite(MagickWand $camelia, CompositeOperator $compose, Int $x, Int $y) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickCompositeImage( $.handle, $camelia.handle, $compose.Int, $x, $y ) == MagickTrue;
}

method contrast(Int $sharpen = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickContrastImage( $.handle, $sharpen ) == MagickTrue;
}

method contrast-stretch(Real $black_point, Real $white_point) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickContrastStretchImage( $.handle, $black_point.Num, $white_point.Num ) == MagickTrue;
}

method convolve(@kernel) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  my $order = @kernel.elems.sqrt.Int;
  my $kernel_carray = CArray[num32].new;
  $kernel_carray[$_] = @kernel[$_].Num for ^@kernel.elems;
  return MagickConvolveImage( $.handle, $order, $kernel_carray ) == MagickTrue;
}

method despeckle returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickDespeckleImage( $.handle ) == MagickTrue;
}

multi method width returns Int {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickGetImageWidth($.handle);
}

method height returns Int {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickGetImageHeight($.handle);
}

method circle(Real $ox, Real $oy, Real $px, Real $py) {
  die "No wand handle defined!" unless $.handle.defined;
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  DrawCircle( $.d_handle, $ox.Num, $oy.Num, $px.Num, $py.Num);
  MagickDrawImage( $.handle, $.d_handle )
}

method fill(Str $color) {
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  die "Failed to set fill color " unless PixelSetColor( $.p_handle, $color);
  DrawSetFillColor( $.d_handle, $.p_handle );
}

method stroke(Str $color) {
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  die "Failed to set stroke color " unless PixelSetColor( $.p_handle, $color);
  DrawSetStrokeColor( $.d_handle, $.p_handle );
}

method stroke-width(Real $width) {
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  DrawSetStrokeWidth( $.d_handle, $width.Num );
}

method edge(Real $radius = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickEdgeImage( $.handle, $radius.Num ) == MagickTrue;
}

method emboss(Real $radius, Real $sigma) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickEmbossImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method equalize() returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickEqualizeImage( $.handle ) == MagickTrue;
}

method implode(Real $radius) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickImplodeImage( $.handle, $radius.Num ) == MagickTrue;
}

method flip() returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickFlipImage( $.handle ) == MagickTrue;
}

method flop() returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickFlopImage( $.handle ) == MagickTrue;
}

submethod montage(
   @wands,
   Str $tile_geometry,
   Str $thumbnail_geometry,
   MontageMode $mode,
   Str $frame
) returns MagickWand
{
  my $temp-wand = NewMagickWand;
  my $d_handle = NewDrawingWand;
  MagickSetLastIterator($temp-wand);

  # Add wands
  for @wands -> $wand {
    MagickAddImage($temp-wand, $wand.handle);
    MagickSetLastIterator($temp-wand);
  }

  # Append them side-by-side horizontallly
  MagickSetFirstIterator($temp-wand);
  my $montaged-wand = MagickMontageImage(
     $temp-wand,
     $d_handle,
     $tile_geometry,
     $thumbnail_geometry,
     $mode.Int,
     $frame
  );

  # Cleanup
  DestroyMagickWand( $temp-wand );
  DestroyDrawingWand( $d_handle );

  return MagickWand.new( handle => $montaged-wand );
}

method frame(
  Str $matte_color, Int $width, Int $height, Int $inner_bevel, Int $outer_bevel) returns Bool
{
  die "No wand handle defined!" unless $.handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  return (PixelSetColor( $.p_handle, $matte_color) == MagickTrue) &&
    (MagickFrameImage( $.handle, $.p_handle, $width, $height, $inner_bevel,
      $outer_bevel ) == MagickTrue);
}

method fx(Str $expression) returns MagickWand {
  die "No wand handle defined!" unless $.handle.defined;
  my $handle = MagickFxImage( $.handle, $expression );
  return MagickWand.new( handle => $handle );
}

method gamma(Real $gamma) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickGammaImage( $.handle, $gamma.Num ) == MagickTrue;
}

method gaussian-blur(Real $radius, Real $sigma) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickGaussianBlurImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

multi method type(ImageType $image_type) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSetImageType( $.handle, $image_type.Int );
}

multi method type returns ImageType {
  die "No wand handle defined!" unless $.handle.defined;
  return ImageType( MagickGetImageType( $.handle ) );
}

method level(Real $black_point, Real $gamma, Real $white_point) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickLevelImage( $.handle, $black_point.Num, $gamma.Num,
    $white_point.Num ) == MagickTrue;
}

=begin TODO

#TODO fix median-filter failures
method median-filter() returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickStatisticImage( $.handle, MedianStatistic.Int, 1.Num, 1 ) == MagickTrue;
}

=end TODO

method modulate(Real $brightness, Real $saturation, Real $hue) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickModulateImage( $.handle, $brightness.Num, $saturation.Num, $hue.Num) == MagickTrue;
}

method quantize(
  Int $number_colors,
  ColorspaceType $colorspace,
  Int $treedepth,
  Bool $dither,
  Bool $measure_error) returns Bool
{
  die "No wand handle defined!" unless $.handle.defined;
  return MagickQuantizeImage( $.handle, $number_colors, $colorspace.Int,
    $treedepth.Int, $dither.Int, $measure_error.Int) == MagickTrue;
}

method motion-blur(Real $radius, Real $angle, Real $sigma) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickMotionBlurImage( $.handle, $radius.Num, $angle.Num, $sigma.Num) == MagickTrue;
}

method normalize() returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickNormalizeImage( $.handle ) == MagickTrue;
}

method oil-paint(Real $radius) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickOilPaintImage( $.handle, $radius.Num) == MagickTrue;
}

method polaroid(Real $angle) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  $.d_handle = NewDrawingWand unless $.d_handle.defined;
  return MagickPolaroidImage( $.handle, $.d_handle, $angle.Num) == MagickTrue;
}

method encipher(Str $passphrase) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickEncipherImage( $.handle, $passphrase) == MagickTrue;
}

method radial-blur(Real $angle) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  try {
    return MagickRotationalBlurImage( $.handle, $angle.Num) == MagickTrue;
    CATCH {
      default {
        # Deprecated alternative
        warn "Using deprecated alternative: MagickRadialBlurImage, Error: $_";
        return MagickRadialBlurImage( $.handle, $angle.Num) == MagickTrue;
      }
    }
  }
}

submethod version returns Hash {
  my $number     = CArray[int32].new(1);
  my Str $string = MagickGetVersion($number);
  return %(
    "number" => $number[0],
    "string" => $string,
  );
}

submethod copyright {
  return MagickGetCopyright;
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
