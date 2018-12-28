use v6;

=begin pod

=head1 NAME

MagicWand - ImageMagick's MagickWand API Bindings for Perl6

=head1 SYNOPSIS

=begin code

use v6;
use MagickWand;

# A new magic wand
my $wand = MagickWand.new;

# Read an image
$wand.read("examples/images/aero1.jpg");

# Lighten dark areas
$wand.auto-gamma;

# And then write a new image
$wand.write("output.png");

# And cleanup on exit
LEAVE {
  $wand.cleanup if $wand.defined;
}

=end code

=head1 DESCRIPTION

This provides a Perl 6 object-oriented [NativeCall](
http://doc.perl6.org/language/nativecall)-based API for ImageMagick's
[MagickWand C API](http://www.imagemagick.org/script/magick-wand.php).

=end pod

unit class MagickWand;

# Packages
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
use MagickWand::Enums;

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

#TODO  multi method read-buffer(Buf :$buffer) returns Bool # uses MagickReadImageBlob
multi method read-buffer($buffer, $length) returns Bool {
    $.handle = NewMagickWand unless $.handle.defined;
    return MagickReadImageBlob( $.handle, $buffer, $length) == MagickTrue;
}

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

multi method adaptive-resize(Int $width, Int $height) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickAdaptiveResizeImage( $.handle, $width, $height ) == MagickTrue;
}

=begin pod

=head2 adaptive-resize

This is a helper method for C<adaptive-resize>. For example

  adaptive-resize(0.5);    # Resize to 50% of original size

=end pod
multi method adaptive-resize(Real $percent) {
  return self.adaptive-resize( Int(self.width * $percent), Int(self.height * $percent) );
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
  if self.version<number> >= 0x700 {
    return MagickSeparateImage( $.handle, $channel_type.Int ) == MagickTrue;
  } else {
    return MagickSeparateImageChannel( $.handle, $channel_type.Int ) == MagickTrue;
  }
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

method median-filter($width = 1e0, $height = 1) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickStatisticImage( $.handle, (MedianStatistic.Int)<>, $width.Num, $height.Int ) == MagickTrue;
}

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

method raise(Int $width, Int $height, Int $x, Int $y, Int $raise) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickRaiseImage( $.handle, $width, $height, $x, $y, $raise) == MagickTrue;
}

method reduce-noise(Real $radius = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickReduceNoiseImage( $.handle, $radius.Num) == MagickTrue;
}

=begin pod

=head2 resize

    $wand.resize(320, 240);     # Scale to 320x240

Scales an image to the desired percentage of the current dimensions with one of
these filters: Bessel, Blackman, Box, Catrom, CubicGaussian, Hanning, Hermite,
Lanczos, Mitchell, PointQuandratic, Sinc, Triangle

=end pod
multi method resize(Int $width, Int $height, FilterTypes $filter = UndefinedFilter, Real $blur = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickResizeImage( $.handle, $width, $height, $filter, $blur.Num) == MagickTrue;
}

=begin pod

=head1 resize

    $wand.resize(0.6);     # 60% of original dimensions

Scales an image to the desired percentage of the current dimensions with one of
these filters: Bessel, Blackman, Box, Catrom, CubicGaussian, Hanning, Hermite,
Lanczos, Mitchell, PointQuandratic, Sinc, Triangle

=end pod
multi method resize(Real $percent, FilterTypes $filter = BoxFilter, Real $blur = 0) returns Bool {
  return self.resize( Int(self.width * $percent), Int(self.height * $percent), $filter, $blur.Num) == MagickTrue;
}

method roll(Int $x, Int $y) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickRollImage( $.handle, $x, $y) == MagickTrue;
}

method rotate(Real $degrees, Str $background = "white") returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  return (PixelSetColor( $.p_handle, $background) == MagickTrue) &&
    (MagickRotateImage( $.handle, $.p_handle, $degrees.Num) == MagickTrue);
}

multi method sample(Int $width, Int $height) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSampleImage( $.handle, $width, $height) == MagickTrue;
}

multi method sample(Real $percent) returns Bool {
  return self.sample( Int(self.width * $percent), Int(self.height * $percent)) == MagickTrue;
}

multi method scale(Int $width, Int $height) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickScaleImage( $.handle, $width, $height) == MagickTrue;
}

multi method scale(Real $percent) returns Bool {
  return self.scale( Int(self.width * $percent), Int(self.height * $percent)) == MagickTrue;
}

multi method shade(Bool $gray, Real $azimuth, Real $elevation) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickShadeImage( $.handle, $gray, $azimuth.Num, $elevation.Num) == MagickTrue;
}

method sharpen(Real $radius, Real $sigma) {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSharpenImage( $.handle, $radius.Num, $sigma.Num ) == MagickTrue;
}

method shave(Int $width, Int $height) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickShaveImage( $.handle, $width, $height) == MagickTrue;
}

method shear(Real $x_shear, Real $y_shear, Str $background = "white") returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  $.p_handle = NewPixelWand unless $.p_handle.defined;
  return (PixelSetColor( $.p_handle, $background) == MagickTrue) &&
    (MagickShearImage( $.handle, $.p_handle, $x_shear.Num, $y_shear.Num) == MagickTrue);
}

multi method colorspace(ColorspaceType $colorspace) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickTransformImageColorspace( $.handle, $colorspace.Int) == MagickTrue;
}

multi method colorspace returns ColorspaceType {
  return ColorspaceType( MagickGetImageColorspace( $.handle ) );
}

method sketch(Real $radius, Real $sigma, Real $angle) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSketchImage( $.handle, $radius.Num, $sigma.Num, $angle.Num) == MagickTrue;
}

multi method sigmoidal-contrast(Bool $sharpen, Real $alpha, Real $beta) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSigmoidalContrastImage( $.handle, $sharpen.Int, $alpha.Num, $beta.Num) == MagickTrue;
}

method spread(Real $radius = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSpreadImage( $.handle, $radius.Num) == MagickTrue;
}

method solarize(Real $threshold = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSolarizeImage( $.handle, $threshold.Num) == MagickTrue;
}

method swirl(Real $degrees) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickSwirlImage( $.handle, $degrees.Num) == MagickTrue;
}

method unsharpen-mask(Real $radius, Real $sigma, Real $amount = 0 , Real $threshold = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickUnsharpMaskImage( $.handle, $radius.Num, $sigma.Num, $amount.Num, $threshold.Num) == MagickTrue;
}

method vignette(Real $black_point, Real $white_point, Int $x = 0, Int $y = 0) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickVignetteImage( $.handle, $black_point.Num, $white_point.Num, $x, $y) == MagickTrue;
}

method wave(Real $amplitude, Real $wave_length) returns Bool {
  die "No wand handle defined!" unless $.handle.defined;
  return MagickWaveImage( $.handle, $amplitude.Num, $wave_length.Num) == MagickTrue;
}

=begin pod

=head3 cleanup

TODO cleanup description

=end pod
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
