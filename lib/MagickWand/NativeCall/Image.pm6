
use v6;

unit module MagickWand::NativeCall::Image;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 GetImageFromMagickWand

    Image *GetImageFromMagickWand(const MagickWand *wand)

GetImageFromMagickWand() returns the current image from the magick wand.

- wand: the magick wand.

=end pod
sub GetImageFromMagickWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickAdaptiveBlurImage

    MagickBooleanType MagickAdaptiveBlurImage(MagickWand *wand,
      const double radius,const double sigma)
    MagickBooleanType MagickAdaptiveBlurImageChannel(MagickWand *wand,
      const ChannelType channel,const double radius,const double sigma)

MagickAdaptiveBlurImage() adaptively blurs the image by blurring less intensely
near image edges and more intensely far from edges. We blur the image with a
Gaussian operator of the given radius and standard deviation (sigma).
For reasonable results, radius should be larger than sigma.
Use a radius of 0 and MagickAdaptiveBlurImage() selects a suitable radius for
you.

- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 
=end pod
sub MagickAdaptiveBlurImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickAdaptiveBlurImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickAdaptiveResizeImage

    MagickBooleanType MagickAdaptiveResizeImage(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickAdaptiveResizeImage() adaptively resize image with data dependent
triangulation.

- wand: the magick wand.
- columns: the number of columns in the scaled image.
- rows: the number of rows in the scaled image.

=end pod
sub MagickAdaptiveResizeImage(
   Pointer $wand,
   uint32 $columns,
   uint32 $rows
)
returns uint32
is native(&library)
is export { * };

=begin pod
=head1 MagickAdaptiveSharpenImage

MagickBooleanType MagickAdaptiveSharpenImage(MagickWand *wand,
  const double radius,const double sigma)
MagickBooleanType MagickAdaptiveSharpenImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma)

MagickAdaptiveSharpenImage() adaptively sharpens the image by sharpening more
intensely near image edges and less intensely far from edges. We sharpen the
image with a Gaussian operator of the given radius and standard deviation (sigma).
For reasonable results, radius should be larger than sigma.
Use a radius of 0 and MagickAdaptiveSharpenImage() selects a suitable radius
for you.

- wand: the magick wand.
- channel: the image channel(s).
- radius: the radius of the Gaussian, in pixels, not counting the center pixel.
- sigma: the standard deviation of the Gaussian, in pixels.

=end pod
sub MagickAdaptiveSharpenImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32
is native(&library)
is export { * };

sub MagickAdaptiveSharpenImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickAdaptiveThresholdImage

    MagickBooleanType MagickAdaptiveThresholdImage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t offset)

MagickAdaptiveThresholdImage() selects an individual threshold for each pixel
based on the range of intensity values in its local neighborhood.  This allows
for thresholding of an image whose global intensity histogram doesn't contain
distinctive peaks.

- wand: the magick wand.
- width: the width of the local neighborhood.
- height: the height of the local neighborhood.
- offset: the mean offset.

=end pod
sub MagickAdaptiveThresholdImage(
   Pointer $wand,
   uint32 $width,
   uint32 $height,
   uint32 $offset
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickAddImage

    MagickBooleanType MagickAddImage(MagickWand *wand,
      const MagickWand *add_wand)

MagickAddImage() adds a clone of the images from the second wand and inserts them into the first wand.Use MagickSetLastIterator(), to append new images into an existing wand, current image will be set to last image so later adds with also be appened to end of wand.Use MagickSetFirstIterator() to prepend new images into wand, any more images added will also be prepended before other images in the wand. However the order of a list of new images will not change.Otherwise the new images will be inserted just after the current image, and any later image will also be added after this current image but before the previously added images.  Caution is advised when multiple image adds are inserted into the middle of the wand image list.- wand: the magick wand. - add_wand: A wand that contains the image list to be added 
=end pod
sub MagickAddImage(
   Pointer $wand,
   Pointer $add_wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickAddNoiseImage

    MagickBooleanType MagickAddNoiseImage(MagickWand *wand,
      const uint32 noise_type)
    MagickBooleanType MagickAddNoiseImageChannel(MagickWand *wand,
      const ChannelType channel,const uint32 noise_type)

MagickAddNoiseImage() adds random noise to the image.

- wand: the magick wand.
- channel: the image channel(s).
- noise_type: The type of noise: Uniform, Gaussian, Multiplicative, Impulse,
  Laplacian, or Poisson.

=end pod
sub MagickAddNoiseImage(
   Pointer $wand,
   uint32 $noise_type
)
returns uint32 
is native(&library)
is export { * };

sub MagickAddNoiseImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $noise_type
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickAffineTransformImage

    MagickBooleanType MagickAffineTransformImage(MagickWand *wand,
      const DrawingWand *drawing_wand)

MagickAffineTransformImage() transforms an image as dictated by the affine matrix of the drawing wand.- wand: the magick wand. - drawing_wand: the draw wand. 
=end pod
sub MagickAffineTransformImage(
   Pointer $wand,
   Pointer $drawing_wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickAnnotateImage

    MagickBooleanType MagickAnnotateImage(MagickWand *wand,
      const DrawingWand *drawing_wand,const double x,const double y,
      const double angle,const char *text)

MagickAnnotateImage() annotates an image with text.

- wand: the magick wand.
- drawing_wand: the draw wand.
- x: x ordinate to left of text
- y: y ordinate to text baseline
- angle: rotate text relative to this angle.
- text: text to draw

=end pod
sub MagickAnnotateImage(
   Pointer $wand,
   Pointer $drawing_wand,
   num64 $x,
   num64 $y,
   num64 $angle,
   Str $text
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickAnimateImages

    MagickBooleanType MagickAnimateImages(MagickWand *wand,
      const char *server_name)

MagickAnimateImages() animates an image or image sequence.- wand: the magick wand. - server_name: the X server name. 
=end pod
sub MagickAnimateImages(
   Pointer $wand,
   Str $server_name
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickAppendImages

    MagickWand *MagickAppendImages(MagickWand *wand,
      const MagickBooleanType stack)

MagickAppendImages() append the images in a wand from the current image onwards, creating a new wand with the single image result.  This is affected by the gravity and background settings of the first image.Typically you would call either MagickResetIterator() or MagickSetFirstImage() before calling this function to ensure that all the images in the wand's image list will be appended together.- wand: the magick wand. - stack: By default, images are stacked left-to-right. Set stack to MagickTrue to stack them top-to-bottom. 
=end pod
sub MagickAppendImages(
   Pointer $wand,
   uint32 $stack
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickAutoGammaImage

    MagickBooleanType MagickAutoGammaImage(MagickWand *wand)
    MagickBooleanType MagickAutoGammaImageChannel(MagickWand *wand,
      const ChannelType channel)

MagickAutoGammaImage() extracts the 'mean' from the image and adjust the image to try make set its gamma appropriatally.- wand: the magick wand. - channel: the image channel(s). 
=end pod
sub MagickAutoGammaImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickAutoGammaImageChannel(
   Pointer $wand,
   uint32 $channel
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickAutoLevelImage

    MagickBooleanType MagickAutoLevelImage(MagickWand *wand)
    MagickBooleanType MagickAutoLevelImageChannel(MagickWand *wand,
      const ChannelType channel)

MagickAutoLevelImage() adjusts the levels of a particular image channel by
scaling the minimum and maximum values to the full quantum range.

- wand: the magick wand.
- channel: the image channel(s).

=end pod
sub MagickAutoLevelImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickAutoLevelImageChannel(
   Pointer $wand,
   uint32 $channel
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickAutoOrientImage

    MagickBooleanType MagickAutoOrientImage(MagickWand *image)

MagickAutoOrientImage() adjusts an image so that its orientation is suitable $  for viewing (i.e. top-left orientation).- wand: the magick wand. 
=end pod
sub MagickAutoOrientImage(
   Pointer $image
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickBlackThresholdImage

    MagickBooleanType MagickBlackThresholdImage(MagickWand *wand,
      const PixelWand *threshold)

MagickBlackThresholdImage() is like MagickThresholdImage() but  forces all pixels below the threshold into black while leaving all pixels above the threshold unchanged.- wand: the magick wand. - threshold: the pixel wand. 
=end pod
sub MagickBlackThresholdImage(
   Pointer $wand,
   Pointer $threshold
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickBlueShiftImage

    MagickBooleanType MagickBlueShiftImage(MagickWand *wand,
      const double factor)

MagickBlueShiftImage() mutes the colors of the image to simulate a scene at nighttime in the moonlight.- wand: the magick wand. - factor: the blue shift factor (default 1.5) 
=end pod
sub MagickBlueShiftImage(
   Pointer $wand,
   num64 $factor
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickBlurImage

    MagickBooleanType MagickBlurImage(MagickWand *wand,const double radius,
      const double sigma)
    MagickBooleanType MagickBlurImageChannel(MagickWand *wand,
      const ChannelType channel,const double radius,const double sigma)

MagickBlurImage() blurs an image.  We convolve the image with a gaussian operator of the given radius and standard deviation (sigma).  For reasonable results, the radius should be larger than sigma.  Use a radius of 0 and BlurImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the , in pixels, not counting the center pixel. - sigma: the standard deviation of the , in pixels. 
=end pod
sub MagickBlurImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickBlurImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickBorderImage

    MagickBooleanType MagickBorderImage(MagickWand *wand,
      const PixelWand *bordercolor,const size_t width,
      const size_t height)

MagickBorderImage() surrounds the image with a border of the color defined by
the bordercolor pixel wand.

- wand: the magick wand.
- bordercolor: the border color pixel wand.
- width: the border width.
- height: the border height.

=end pod
sub MagickBorderImage(
   Pointer $wand,
   Pointer $bordercolor,
   int32 $width,
   int32 $height
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 Use_MagickBrightnessContrastImage

    MagickBooleanType MagickBrightnessContrastImage(MagickWand *wand,
      const double brightness,const double contrast)
    MagickBooleanType MagickBrightnessContrastImageChannel(MagickWand *wand,
      const ChannelType channel,const double brightness,
      const double contrast)

Use MagickBrightnessContrastImage() to change the brightness and/or contrast of an image.  It converts the brightness and contrast parameters into slope and intercept and calls a polynomical function to apply to the image.- wand: the magick wand. - channel: the image channel(s). - brightness: the brightness percent (-100 .. 100). - contrast: the contrast percent (-100 .. 100). 
=end pod
sub MagickBrightnessContrastImage(
   Pointer $wand,
   num64 $brightness,
   num64 $contrast
)
returns uint32 
is native(&library)
is export { * };

sub MagickBrightnessContrastImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $brightness,
   num64 $contrast
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickCharcoalImage

    MagickBooleanType MagickCharcoalImage(MagickWand *wand,
      const double radius,const double sigma)

MagickCharcoalImage() simulates a charcoal drawing.- wand: the magick wand. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 
=end pod
sub MagickCharcoalImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickChopImage

    MagickBooleanType MagickChopImage(MagickWand *wand,const size_t width,
      const size_t height,const ssize_t x,const ssize_t y)

MagickChopImage() removes a region of an image and collapses the image to occupy the removed portion- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 
=end pod
sub MagickChopImage(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickClampImage

    MagickBooleanType MagickClampImage(MagickWand *wand)
    MagickBooleanType MagickClampImageChannel(MagickWand *wand,
      const ChannelType channel)

MagickClampImage() restricts the color range from 0 to the quantum depth.- wand: the magick wand. - channel: the channel. 
=end pod
sub MagickClampImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickClampImageChannel(
   Pointer $wand,
   uint32 $channel
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickClipImage

    MagickBooleanType MagickClipImage(MagickWand *wand)

MagickClipImage() clips along the first path from the 8BIM profile, if present.- wand: the magick wand. 
=end pod
sub MagickClipImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickClipImagePath

    MagickBooleanType MagickClipImagePath(MagickWand *wand,
      const char *pathname,const MagickBooleanType inside)

MagickClipImagePath() clips along the named paths from the 8BIM profile, if present. Later operations take effect inside the path.  Id may be a number if preceded with #, to work on a numbered path, e.g., "#1" to use the first path.- wand: the magick wand. - pathname: name of clipping path resource. If name is preceded by #, use clipping path numbered by name. - inside: if non-zero, later operations take effect inside clipping path. Otherwise later operations take effect outside clipping path. 
=end pod
sub MagickClipImagePath(
   Pointer $wand,
   Str $pathname,
   uint32 $inside
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickClutImage

    MagickBooleanType MagickClutImage(MagickWand *wand,
      const MagickWand *clut_wand)
    MagickBooleanType MagickClutImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickWand *clut_wand)

MagickClutImage() replaces colors in the image from a color lookup table.- wand: the magick wand. - clut_image: the clut image. 
=end pod
sub MagickClutImage(
   Pointer $wand,
   Pointer $clut_wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickClutImageChannel(
   Pointer $wand,
   uint32 $channel,
   Pointer $clut_wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickCoalesceImages

    MagickWand *MagickCoalesceImages(MagickWand *wand)

MagickCoalesceImages() composites a set of images while respecting any page offsets and disposal methods.  GIF, MIFF, and MNG animation sequences typically start with an image background and each subsequent image varies in size and offset.  MagickCoalesceImages() returns a new sequence where each image in the sequence is the same size as the first and composited with the next image in the sequence.- wand: the magick wand. 
=end pod
sub MagickCoalesceImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickColorDecisionListImage

    MagickBooleanType MagickColorDecisionListImage(MagickWand *wand,
      const char *color_correction_collection)

MagickColorDecisionListImage() accepts a lightweight Color Correction Collection (CCC) file which solely contains one or more color corrections and applies the color correction to the image.  Here is a sample CCC file:<pre class="text">    &lt;ColorCorrectionCollection xmlns="urn:ASC:CDL:v1.2"&gt;    &lt;ColorCorrection id="cc03345"&gt;          &lt;SOPNode&gt;               &lt;Slope&gt; 0.9 1.2 0.5 &lt;/Slope&gt;               &lt;Offset&gt; 0.4 -0.5 0.6 &lt;/Offset&gt;               &lt;Power&gt; 1.0 0.8 1.5 &lt;/Power&gt;          &lt;/SOPNode&gt;          &lt;SATNode&gt;               &lt;Saturation&gt; 0.85 &lt;/Saturation&gt;          &lt;/SATNode&gt;    &lt;/ColorCorrection&gt;    &lt;/ColorCorrectionCollection&gt;</pre>which includes the offset, slope, and power for each of the RGB channels as well as the saturation.- wand: the magick wand. - color_correction_collection: the color correction collection in XML. 

=end pod
sub MagickColorDecisionListImage(
   Pointer $wand,
   Str $color_correction_collection
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickColorizeImage

    MagickBooleanType MagickColorizeImage(MagickWand *wand,
      const PixelWand *colorize,const PixelWand *opacity)

MagickColorizeImage() blends the fill color with each pixel in the image.- wand: the magick wand. - colorize: the colorize pixel wand. - opacity: the opacity pixel wand. 
=end pod
sub MagickColorizeImage(
   Pointer $wand,
   Pointer $colorize,
   Pointer $opacity
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickColorMatrixImage

    MagickBooleanType MagickColorMatrixImage(MagickWand *wand,
      const KernelInfo *color_matrix)

MagickColorMatrixImage() apply color transformation to an image. The method
permits saturation changes, hue rotation, luminance to alpha, and various other
effects.  Although variable-sized transformation matrices can be used, typically
one uses a 5x5 matrix for an RGBA image and a 6x6 for CMYKA (or RGBA with
offsets).  The matrix is similar to those used by Adobe Flash except offsets are
in column 6 rather than 5 (in support of CMYKA images) and offsets are
normalized (divide Flash offset by 255).- wand: the magick wand. - color_matrix:
the color matrix. 

sub MagickColorMatrixImage(
   Pointer $wand,
   Pointer[KernelInfo] $color_matrix
)
returns uint32 
is native(&library)
is export { * };
=end pod


=begin pod
=head1 MagickCombineImages

    MagickWand *MagickCombineImages(MagickWand *wand,
      const ChannelType channel)

MagickCombineImages() combines one or more images into a single image.  The grayscale value of the pixels of each image in the sequence is assigned in order to the specified  hannels of the combined image.   The typical ordering would be image 1 =&gt; Red, 2 =&gt; Green, 3 =&gt; Blue, etc.- wand: the magick wand. - channel: the channel. 
=end pod
sub MagickCombineImages(
   Pointer $wand,
   uint32 $channel
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickCommentImage

    MagickBooleanType MagickCommentImage(MagickWand *wand,
      const char *comment)

MagickCommentImage() adds a comment to your image.- wand: the magick wand. - comment: the image comment. 
=end pod
sub MagickCommentImage(
   Pointer $wand,
   Str $comment
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickCompareImageChannels

    MagickWand *MagickCompareImageChannels(MagickWand *wand,
      const MagickWand *reference,const ChannelType channel,
      const MetricType metric,double *distortion)

MagickCompareImageChannels() compares one or more image channels of an image to a reconstructed image and returns the difference image.- wand: the magick wand. - reference: the reference wand. - channel: the channel. - metric: the metric. - distortion: the computed distortion between the images. 
=end pod
sub MagickCompareImageChannels(
   Pointer $wand,
   Pointer $reference,
   uint32 $channel,
   uint32 $metric,
   CArray[num64] $distortion
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickCompareImageLayers

    MagickWand *MagickCompareImageLayers(MagickWand *wand,
      const ImageLayerMethod method)

MagickCompareImageLayers() compares each image with the next in a sequence and returns the maximum bounding region of any pixel differences it discovers.- wand: the magick wand. - method: the compare method. 
=end pod
sub MagickCompareImageLayers(
   Pointer $wand,
   uint32 $method
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickCompareImages

    MagickWand *MagickCompareImages(MagickWand *wand,
      const MagickWand *reference,const MetricType metric,double *distortion)

MagickCompareImages() compares an image to a reconstructed image and returns the specified difference image.- wand: the magick wand. - reference: the reference wand. - metric: the metric. - distortion: the computed distortion between the images. 
=end pod
sub MagickCompareImages(
   Pointer $wand,
   Pointer $reference,
   uint32 $metric,
   CArray[num64] $distortion
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickCompositeImage

    MagickBooleanType MagickCompositeImage(MagickWand *wand,
      const MagickWand *source_wand,const CompositeOperator compose,
      const ssize_t x,const ssize_t y)
    MagickBooleanType MagickCompositeImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickWand *composite_wand,
      const CompositeOperator compose,const ssize_t x,const ssize_t y)

MagickCompositeImage() composite one image onto another at the specified offset.- wand: the magick wand holding the destination images - source_image: the magick wand holding source image. - compose: This operator affects how the composite is applied to the image.  The default is Over.  These are some of the compose methods availble. <dd> OverCompositeOp       InCompositeOp         OutCompositeOp AtopCompositeOp       XorCompositeOp        PlusCompositeOp MinusCompositeOp      AddCompositeOp        SubtractCompositeOp DifferenceCompositeOp BumpmapCompositeOp    CopyCompositeOp DisplaceCompositeOp </dd>- x: the column offset of the composited image. - y: the row offset of the composited image. 
=end pod
sub MagickCompositeImage(
   Pointer $wand,
   Pointer $source_wand,
   uint32 $compose,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };

sub MagickCompositeImageChannel(
   Pointer $wand,
   uint32 $channel,
   Pointer $composite_wand,
  uint32 $compose,
   uint32 $x,
   uint32 $y
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickCompositeImageGravity

    MagickBooleanType MagickCompositeImageGravity(MagickWand *wand,
      const MagickWand *source_wand,const CompositeOperator compose,
      const GravityType gravity)

MagickCompositeImageGravity() composite one image onto another using the specified gravity.- wand: the magick wand holding the destination images - source_image: the magick wand holding source image. - compose: This operator affects how the composite is applied to the image.  The default is Over.  These are some of the compose methods availble. <dd> OverCompositeOp       InCompositeOp         OutCompositeOp AtopCompositeOp       XorCompositeOp        PlusCompositeOp MinusCompositeOp      AddCompositeOp        SubtractCompositeOp DifferenceCompositeOp BumpmapCompositeOp    CopyCompositeOp DisplaceCompositeOp </dd>- gravity: positioning gravity (NorthWestGravity, NorthGravity, NorthEastGravity, WestGravity, CenterGravity, EastGravity, SouthWestGravity, SouthGravity, SouthEastGravity) 
=end pod
sub MagickCompositeImageGravity(
   Pointer $wand,
   Pointer $source_wand,
  uint32 $compose,
   uint32 $gravity
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickCompositeLayers

    MagickBooleanType MagickCompositeLayers(MagickWand *wand,
      const MagickWand *source_wand, const CompositeOperator compose,
      const ssize_t x,const ssize_t y)

MagickCompositeLayers() composite the images in the source wand over the images in the destination wand in sequence, starting with the current image in both lists.Each layer from the two image lists are composted together until the end of one of the image lists is reached.  The offset of each composition is also adjusted to match the virtual canvas offsets of each layer. As such the given offset is relative to the virtual canvas, and not the actual image.Composition uses given x and y offsets, as the 'origin' location of the source images virtual canvas (not the real image) allowing you to compose a list of 'layer images' into the destiantioni images.  This makes it well sutiable for directly composing 'Clears Frame Animations' or 'Coaleased Animations' onto a static or other 'Coaleased Animation' destination image list.  GIF disposal handling is not looked at.Special case:- If one of the image sequences is the last image (just a single image remaining), that image is repeatally composed with all the images in the other image list.  Either the source or destination lists may be the single image, for this situation.In the case of a single destination image (or last image given), that image will ve cloned to match the number of images remaining in the source image list.This is equivelent to the "-layer Composite" Shell API operator.- wand: the magick wand holding destaintion images - source_wand: the wand holding the source images - compose, x, y:  composition arguments 
=end pod
sub MagickCompositeLayers(
   Pointer $wand,
   Pointer $source_wand,
  uint32 $compose,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickContrastImage

    MagickBooleanType MagickContrastImage(MagickWand *wand,
      const MagickBooleanType sharpen)

MagickContrastImage() enhances the intensity differences between the lighter and
darker elements of the image.  Set sharpen to a value other than 0 to increase
the image contrast otherwise the contrast is reduced.

- wand: the magick wand.
- sharpen: Increase or decrease image contrast.

=end pod
sub MagickContrastImage(
   Pointer $wand,
   uint32 $sharpen
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickContrastStretchImage

    MagickBooleanType MagickContrastStretchImage(MagickWand *wand,
      const double black_point,const double white_point)
    MagickBooleanType MagickContrastStretchImageChannel(MagickWand *wand,
      const ChannelType channel,const double black_point,
      const double white_point)

MagickContrastStretchImage() enhances the contrast of a color image by adjusting
the pixels color to span the entire range of colors available. You can also
reduce the influence of a particular channel with a gamma value of 0.

- wand: the magick wand.
- channel: the image channel(s).
- black_point: the black point.
- white_point: the white point.

=end pod
sub MagickContrastStretchImage(
   Pointer $wand,
   num64 $black_point,
   num64 $white_point
)
returns uint32 
is native(&library)
is export { * };

sub MagickContrastStretchImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $black_point,
   num64 $white_point
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickConvolveImage

    MagickBooleanType MagickConvolveImage(MagickWand *wand,
      const size_t order,const double *kernel)
    MagickBooleanType MagickConvolveImageChannel(MagickWand *wand,
      const ChannelType channel,const size_t order,
      const double *kernel)

MagickConvolveImage() applies a custom convolution kernel to the image.

- wand: the magick wand.
- channel: the image channel(s).
- order: the number of columns and rows in the filter kernel.
- kernel: An array of doubles representing the convolution kernel.

=end pod
sub MagickConvolveImage(
   Pointer $wand,
   uint32 $order,
   CArray[num64] $kernel
)
returns uint32
is native(&library)
is export { * };

sub MagickConvolveImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $order,
   CArray[num64] $kernel
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickCropImage

    MagickBooleanType MagickCropImage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,const ssize_t y)

MagickCropImage() extracts a region of the image.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x-offset. - y: the region y-offset. 
=end pod
sub MagickCropImage(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickCycleColormapImage

    MagickBooleanType MagickCycleColormapImage(MagickWand *wand,
      const ssize_t displace)

MagickCycleColormapImage() displaces an image's colormap by a given number of positions.  If you cycle the colormap a number of times you can produce a psychodelic effect.- wand: the magick wand. - pixel_wand: the pixel wand. 
=end pod
sub MagickCycleColormapImage(
   Pointer $wand,
   uint32 $displace
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickConstituteImage

    MagickBooleanType MagickConstituteImage(MagickWand *wand,
      const size_t columns,const size_t rows,const char *map,
      const StorageType storage,void *pixels)

MagickConstituteImage() adds an image to the wand comprised of the pixel data you supply.  The pixel data must be in scanline order top-to-bottom. The data can be char, short int, int, float, or double.  Float and double require the pixels to be normalized [0..1], otherwise [0..Max],  where Max is the maximum value the type can accomodate (e.g. 255 for char).  For example, to create a 640x480 image from unsigned red-green-blue character data, useMagickConstituteImage(wand,640,480,"RGB",CharPixel,pixels);- wand: the magick wand. - columns: width in pixels of the image. - rows: height in pixels of the image. - map:  This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad. - storage: Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, DoublePixel, FloatPixel, IntegerPixel, LongPixel, QuantumPixel, or ShortPixel. - pixels: This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type. 
=end pod
sub MagickConstituteImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows,
   Str $map,
   uint32 $storage,
   Pointer[void] $pixels
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDecipherImage

    MagickBooleanType MagickDecipherImage(MagickWand *wand,
      const char *passphrase)

MagickDecipherImage() converts cipher pixels to plain pixels.- wand: the magick wand. - passphrase: the passphrase. 
=end pod
sub MagickDecipherImage(
   Pointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDeconstructImages

    MagickWand *MagickDeconstructImages(MagickWand *wand)

MagickDeconstructImages() compares each image with the next in a sequence and returns the maximum bounding region of any pixel differences it discovers.- wand: the magick wand. 
=end pod
sub MagickDeconstructImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickDeskewImage

    MagickBooleanType MagickDeskewImage(MagickWand *wand,
      const double threshold)

MagickDeskewImage() removes skew from the image.  Skew is an artifact that occurs in scanned images because of the camera being misaligned, imperfections in the scanning or surface, or simply because the paper was not placed completely flat when scanned.- wand: the magick wand. - threshold: separate background from foreground. 
=end pod
sub MagickDeskewImage(
   Pointer $wand,
   num64 $threshold
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDespeckleImage

    MagickBooleanType MagickDespeckleImage(MagickWand *wand)

MagickDespeckleImage() reduces the speckle noise in an image while perserving the edges of the original image.- wand: the magick wand. 
=end pod
sub MagickDespeckleImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDestroyImage

    Image *MagickDestroyImage(Image *image)

MagickDestroyImage() dereferences an image, deallocating memory associated with the image if the reference count becomes zero.- image: the image. 
=end pod
sub MagickDestroyImage(
   Pointer $image
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickDisplayImage

    MagickBooleanType MagickDisplayImage(MagickWand *wand,
      const char *server_name)

MagickDisplayImage() displays an image.- wand: the magick wand. - server_name: the X server name. 
=end pod
sub MagickDisplayImage(
   Pointer $wand,
   Str $server_name
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDisplayImages

    MagickBooleanType MagickDisplayImages(MagickWand *wand,
      const char *server_name)

MagickDisplayImages() displays an image or image sequence.- wand: the magick wand. - server_name: the X server name. 
=end pod
sub MagickDisplayImages(
   Pointer $wand,
   Str $server_name
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDistortImage

    MagickBooleanType MagickDistortImage(MagickWand *wand,
      const DistortImageMethod method,const size_t number_arguments,
      const double *arguments,const MagickBooleanType bestfit)

MagickDistortImage() distorts an image using various distortion methods, by mapping color lookups of the source image to a new destination image usally of the same size as the source image, unless 'bestfit' is set to true.If 'bestfit' is enabled, and distortion allows it, the destination image is adjusted to ensure the whole source 'image' will just fit within the final destination image, which will be sized and offset accordingly.  Also in many cases the virtual offset of the source image will be taken into account in the mapping.- image: the image to be distorted. - method: the method of image distortion. <dd> ArcDistortion always ignores the source image offset, and always 'bestfit' the destination image with the top left corner offset relative to the polar mapping center. </dd><dd> Bilinear has no simple inverse mapping so it does not allow 'bestfit' style of image distortion. </dd><dd> Affine, Perspective, and Bilinear, do least squares fitting of the distortion when more than the minimum number of control point pairs are provided. </dd><dd> Perspective, and Bilinear, falls back to a Affine distortion when less that 4 control point pairs are provided. While Affine distortions let you use any number of control point pairs, that is Zero pairs is a no-Op (viewport only) distrotion, one pair is a translation and two pairs of control points do a scale-rotate-translate, without any shearing. </dd>- number_arguments: the number of arguments given for this distortion method. - arguments: the arguments for this distortion method. - bestfit: Attempt to resize destination to fit distorted source. 
=end pod
sub MagickDistortImage(
   Pointer $wand,
   uint32 $method,
   int32 $number_arguments,
   CArray[num64] $arguments,
   uint32 $bestfit
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDrawImage

    MagickBooleanType MagickDrawImage(MagickWand *wand,
      const DrawingWand *drawing_wand)

MagickDrawImage() renders the drawing wand on the current image.- wand: the magick wand. - drawing_wand: the draw wand. 
=end pod
sub MagickDrawImage(
   Pointer $wand,
   Pointer $drawing_wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickEdgeImage

    MagickBooleanType MagickEdgeImage(MagickWand *wand,const double radius)

MagickEdgeImage() enhance edges within the image with a convolution filter of
the given radius.  Use a radius of 0 and Edge() selects a suitable radius for
you.

- wand: the magick wand.
- radius: the radius of the pixel neighborhood.

=end pod
sub MagickEdgeImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickEmbossImage

    MagickBooleanType MagickEmbossImage(MagickWand *wand,const double radius,
      const double sigma)

MagickEmbossImage() returns a grayscale image with a three-dimensional effect.
We convolve the image with a Gaussian operator of the given radius and standard
deviation (sigma).  For reasonable results, radius should be larger than sigma.
Use a radius of 0 and Emboss() selects a suitable radius for you.

- wand: the magick wand.
- radius: the radius of the Gaussian, in pixels, not counting the
center pixel.
- sigma: the standard deviation of the Gaussian, in pixels.

=end pod
sub MagickEmbossImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickEncipherImage

    MagickBooleanType MagickEncipherImage(MagickWand *wand,
      const char *passphrase)

MagickEncipherImage() converts plaint pixels to cipher pixels.

- wand: the magick wand.
- passphrase: the passphrase.

=end pod
sub MagickEncipherImage(
   Pointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickEnhanceImage

    MagickBooleanType MagickEnhanceImage(MagickWand *wand)

MagickEnhanceImage() applies a digital filter that improves the quality of a noisy image.- wand: the magick wand. 
=end pod
sub MagickEnhanceImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickEqualizeImage

    MagickBooleanType MagickEqualizeImage(MagickWand *wand)
    MagickBooleanType MagickEqualizeImageChannel(MagickWand *wand,
      const ChannelType channel)

MagickEqualizeImage() equalizes the image histogram.- wand: the magick wand. - channel: the image channel(s). 
=end pod
sub MagickEqualizeImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickEqualizeImageChannel(
   Pointer $wand,
   uint32 $channel
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickEvaluateImage

    MagickBooleanType MagickEvaluateImage(MagickWand *wand,
      const MagickEvaluateOperator operator,const double value)
    MagickBooleanType MagickEvaluateImages(MagickWand *wand,
      const MagickEvaluateOperator operator)
    MagickBooleanType MagickEvaluateImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickEvaluateOperator op,
      const double value)

MagickEvaluateImage() applys an arithmetic, relational, or logical expression to an image.  Use these operators to lighten or darken an image, to increase or decrease contrast in an image, or to produce the "negative" of an image.- wand: the magick wand. - channel: the channel(s). - op: A channel operator. - value: A value value. 
=end pod
sub MagickEvaluateImage(
   Pointer $wand,
   uint32 $operator,
   num64 $value
)
returns uint32 
is native(&library)
is export { * };

sub MagickEvaluateImages(
   Pointer $wand,
   uint32 $operator
)
returns uint32
is native(&library)
is export { * };

sub MagickEvaluateImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $op,
   num64 $value
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickExportImagePixels

    MagickBooleanType MagickExportImagePixels(MagickWand *wand,
      const ssize_t x,const ssize_t y,const size_t columns,
      const size_t rows,const char *map,const StorageType storage,
      void *pixels)

MagickExportImagePixels() extracts pixel data from an image and returns it to you.  The method returns MagickTrue on success otherwise MagickFalse if an error is encountered.  The data is returned as char, short int, int, ssize_t, float, or double in the order specified by map.Suppose you want to extract the first scanline of a 640x480 image as character data in red-green-blue order:<pre class="text">MagickExportImagePixels(wand,0,0,640,1,"RGB",CharPixel,pixels);</pre>- wand: the magick wand. - x, y, columns, rows:  These values define the perimeter of a region of pixels you want to extract. - map:  This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad. - storage: Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, DoublePixel, FloatPixel, IntegerPixel, LongPixel, QuantumPixel, or ShortPixel. - pixels: This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type. 
=end pod
sub MagickExportImagePixels(
   Pointer $wand,
   uint32 $x,
   uint32 $y,
   int32 $columns,
   int32 $rows,
   Str $map,
   uint32 $storage,
   Pointer[void] $pixels
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickExtentImage

    MagickBooleanType MagickExtentImage(MagickWand *wand,const size_t width,
      const size_t height,const ssize_t x,const ssize_t y)

MagickExtentImage() extends the image as defined by the geometry, gravity, and wand background color.  Set the (x,y) offset of the geometry to move the original wand relative to the extended wand.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 
=end pod
sub MagickExtentImage(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickFilterImage

    MagickBooleanType MagickFilterImage(MagickWand *wand,
      const KernelInfo *kernel)
    MagickBooleanType MagickFilterImageChannel(MagickWand *wand,
      const ChannelType channel,const KernelInfo *kernel)

MagickFilterImage() applies a custom convolution kernel to the image.- wand: the magick wand. - channel: the image channel(s). - kernel: An array of doubles representing the convolution kernel. 

sub MagickFilterImage(
   Pointer $wand,
   Pointer[KernelInfo] $kernel
)
returns uint32 
is native(&library)
is export { * };

sub MagickFilterImageChannel(
   Pointer $wand,
   uint32 $channel,
   Pointer[KernelInfo] $kernel
)
returns uint32
is native(&library)
is export { * };
=end pod

=begin pod
=head1 MagickFlipImage

    MagickBooleanType MagickFlipImage(MagickWand *wand)

MagickFlipImage() creates a vertical mirror image by reflecting the pixels around the central x-axis.- wand: the magick wand. 
=end pod
sub MagickFlipImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickFloodfillPaintImage

    MagickBooleanType MagickFloodfillPaintImage(MagickWand *wand,
      const ChannelType channel,const PixelWand *fill,const double fuzz,
      const PixelWand *bordercolor,const ssize_t x,const ssize_t y,
      const MagickBooleanType invert)

MagickFloodfillPaintImage() changes the color value of any pixel that matches target and is an immediate neighbor.  If the method FillToBorderMethod is specified, the color value is changed for any neighbor pixel that does not match the bordercolor member of image.- wand: the magick wand. - channel: the channel(s). - fill: the floodfill color pixel wand. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. - bordercolor: the border color pixel wand. - x,y: the starting location of the operation. - invert: paint any pixel that does not match the target color. 
=end pod
sub MagickFloodfillPaintImage(
   Pointer $wand,
   uint32 $channel,
   Pointer $fill,
   num64 $fuzz,
   Pointer $bordercolor,
   uint32 $x,
   uint32 $y,
   uint32 $invert
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickFlopImage

    MagickBooleanType MagickFlopImage(MagickWand *wand)

MagickFlopImage() creates a horizontal mirror image by reflecting the pixels around the central y-axis.- wand: the magick wand. 
=end pod
sub MagickFlopImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickForwardFourierTransformImage

    MagickBooleanType MagickForwardFourierTransformImage(MagickWand *wand,
      const MagickBooleanType magnitude)

MagickForwardFourierTransformImage() implements the discrete Fourier transform (DFT) of the image either as a magnitude / phase or real / imaginary image pair.- wand: the magick wand. - magnitude: if true, return as magnitude / phase pair otherwise a real / imaginary image pair. 
=end pod
sub MagickForwardFourierTransformImage(
   Pointer $wand,
   uint32 $magnitude
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickFrameImage

    MagickBooleanType MagickFrameImage(MagickWand *wand,
      const PixelWand *matte_color,const size_t width,
      const size_t height,const ssize_t inner_bevel,
      const ssize_t outer_bevel)

MagickFrameImage() adds a simulated three-dimensional border around the image.
The width and height specify the border width of the vertical and horizontal
sides of the frame.  The inner and outer bevels indicate the width of the inner
and outer shadows of the frame.

- wand: the magick wand.
- matte_color: the frame color pixel wand.
- width: the border width.
- height: the border height.
- inner_bevel: the inner bevel width.
- outer_bevel: the outer bevel width.

=end pod
sub MagickFrameImage(
   Pointer $wand,
   Pointer $matte_color,
   int32 $width,
   int32 $height,
   uint32 $inner_bevel,
   uint32 $outer_bevel
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickFunctionImage

    MagickBooleanType MagickFunctionImage(MagickWand *wand,
      const MagickFunction function,const size_t number_arguments,
      const double *arguments)
    MagickBooleanType MagickFunctionImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickFunction function,
      const size_t number_arguments,const double *arguments)

MagickFunctionImage() applys an arithmetic, relational, or logical expression to an image.  Use these operators to lighten or darken an image, to increase or decrease contrast in an image, or to produce the "negative" of an image.- wand: the magick wand. - channel: the channel(s). - function: the image function. - number_arguments: the number of function arguments. - arguments: the function arguments. 
=end pod
sub MagickFunctionImage(
   Pointer $wand,
   uint32 $function,
   int32 $number_arguments,
   CArray[num64] $arguments
)
returns uint32 
is native(&library)
is export { * };

sub MagickFunctionImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $function,
   int32 $number_arguments,
   CArray[num64] $arguments
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickFxImage

    MagickWand *MagickFxImage(MagickWand *wand,const char *expression)
    MagickWand *MagickFxImageChannel(MagickWand *wand,
      const ChannelType channel,const char *expression)

MagickFxImage() evaluate expression for each pixel in the image.

- wand: the magick wand.
- channel: the image channel(s).
- expression: the expression.

=end pod
sub MagickFxImage(
   Pointer $wand,
   Str $expression
)
returns Pointer
is native(&library)
is export { * };

sub MagickFxImageChannel(
   Pointer $wand,
   uint32 $channel,
   Str $expression
)
returns 
Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGammaImage

    MagickBooleanType MagickGammaImage(MagickWand *wand,const double gamma)
    MagickBooleanType MagickGammaImageChannel(MagickWand *wand,
      const ChannelType channel,const double gamma)

MagickGammaImage() gamma-corrects an image.  The same image viewed on different
devices will have perceptual differences in the way the image's intensities are
represented on the screen.  Specify individual gamma levels for the red, green,
and blue channels, or adjust all three with the gamma parameter.  Values
typically range from 0.8 to 2.3.You can also reduce the influence of a
particular channel with a gamma value of 0.

- wand: the magick wand.
- channel: the channel.
- level: Define the level of gamma correction.

=end pod
sub MagickGammaImage(
   Pointer $wand,
   num64 $gamma
)
returns uint32 
is native(&library)
is export { * };

sub MagickGammaImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $gamma
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGaussianBlurImage

    MagickBooleanType MagickGaussianBlurImage(MagickWand *wand,
      const double radius,const double sigma)
    MagickBooleanType MagickGaussianBlurImageChannel(MagickWand *wand,
      const ChannelType channel,const double radius,const double sigma)

MagickGaussianBlurImage() blurs an image.  We convolve the image with a Gaussian
operator of the given radius and standard deviation (sigma). For reasonable
results, the radius should be larger than sigma.  Use a radius of 0 and
MagickGaussianBlurImage() selects a suitable radius for you.

- wand: the magick wand.
- channel: the image channel(s).
- radius: the radius of the Gaussian, in pixels, not counting the center pixel.
- sigma: the standard deviation of the Gaussian, in pixels.

=end pod
sub MagickGaussianBlurImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickGaussianBlurImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImage

    MagickWand *MagickGetImage(MagickWand *wand)

MagickGetImage() gets the image at the current image index.- wand: the magick wand. 
=end pod
sub MagickGetImage(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageAlphaChannel

    MagickBooleanType MagickGetImageAlphaChannel(MagickWand *wand)

MagickGetImageAlphaChannel() returns MagickFalse if the image alpha channel is not activated.  That is, the image is RGB rather than RGBA or CMYK rather than CMYKA.- wand: the magick wand. 
=end pod
sub MagickGetImageAlphaChannel(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageClipMask

    MagickWand *MagickGetImageClipMask(MagickWand *wand)

MagickGetImageClipMask() gets the image clip mask at the current image index.- wand: the magick wand. 
=end pod
sub MagickGetImageClipMask(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageBackgroundColor

    MagickBooleanType MagickGetImageBackgroundColor(MagickWand *wand,
      PixelWand *background_color)

MagickGetImageBackgroundColor() returns the image background color.- wand: the magick wand. - background_color: Return the background color. 
=end pod
sub MagickGetImageBackgroundColor(
   Pointer $wand,
   Pointer $background_color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageBlob

    unsigned char *MagickGetImageBlob(MagickWand *wand,size_t *length)

MagickGetImageBlob() implements direct to memory image formats.  It returns the image as a blob (a formatted "file" in memory) and its length, starting from the current position in the image sequence.  Use MagickSetImageFormat() to set the format to write to the blob (GIF, JPEG,  PNG, etc.).Utilize MagickResetIterator() to ensure the write is from the beginning of the image sequence.Use MagickRelinquishMemory() to free the blob when you are done with it.- wand: the magick wand. - length: the length of the blob. 
=end pod
sub MagickGetImageBlob(
   Pointer $wand,
   Pointer[int32] $length
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageBlob

    unsigned char *MagickGetImagesBlob(MagickWand *wand,size_t *length)

MagickGetImageBlob() implements direct to memory image formats.  It returns the image sequence as a blob and its length.  The format of the image determines the format of the returned blob (GIF, JPEG,  PNG, etc.).  To return a different image format, use MagickSetImageFormat().Note, some image formats do not permit multiple images to the same image stream (e.g. JPEG).  in this instance, just the first image of the sequence is returned as a blob.- wand: the magick wand. - length: the length of the blob. 
=end pod
sub MagickGetImagesBlob(
   Pointer $wand,
   Pointer[int32] $length
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageBluePrimary

    MagickBooleanType MagickGetImageBluePrimary(MagickWand *wand,double *x,
      double *y)

MagickGetImageBluePrimary() returns the chromaticy blue primary point for the image.- wand: the magick wand. - x: the chromaticity blue primary x-point. - y: the chromaticity blue primary y-point. 
=end pod
sub MagickGetImageBluePrimary(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageBorderColor

    MagickBooleanType MagickGetImageBorderColor(MagickWand *wand,
      PixelWand *border_color)

MagickGetImageBorderColor() returns the image border color.- wand: the magick wand. - border_color: Return the border color. 
=end pod
sub MagickGetImageBorderColor(
   Pointer $wand,
   Pointer $border_color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelDepth

    size_t MagickGetImageChannelDepth(MagickWand *wand,
      const ChannelType channel)

MagickGetImageChannelDepth() gets the depth for one or more image channels.- wand: the magick wand. - channel: the image channel(s). 
=end pod
sub MagickGetImageChannelDepth(
   Pointer $wand,
   uint32 $channel
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelDistortion

    MagickBooleanType MagickGetImageChannelDistortion(MagickWand *wand,
      const MagickWand *reference,const ChannelType channel,
      const MetricType metric,double *distortion)

MagickGetImageChannelDistortion() compares one or more image channels of an image to a reconstructed image and returns the specified distortion metric.- wand: the magick wand. - reference: the reference wand. - channel: the channel. - metric: the metric. - distortion: the computed distortion between the images. 
=end pod
multi sub MagickGetImageChannelDistortion(
   Pointer $wand,
   Pointer $reference,
   uint32 $channel,
   uint32 $metric,
   CArray[num64] $distortion
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelDistortions

    double *MagickGetImageChannelDistortion(MagickWand *wand,
      const MagickWand *reference,const MetricType metric)

MagickGetImageChannelDistortions() compares one or more image channels of an image to a reconstructed image and returns the specified distortion metrics.Use MagickRelinquishMemory() to free the metrics when you are done with them.- wand: the magick wand. - reference: the reference wand. - metric: the metric. 
=end pod
multi sub MagickGetImageChannelDistortion(
   Pointer $wand,
   Pointer $reference,
   uint32 $metric
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelFeatures

    ChannelFeatures *MagickGetImageChannelFeatures(MagickWand *wand,
      const size_t distance)

MagickGetImageChannelFeatures() returns features for each channel in the image in each of four directions (horizontal, vertical, left and right diagonals) for the specified distance.  The features include the angular second moment, contrast, correlation, sum of squares: variance, inverse difference moment, sum average, sum varience, sum entropy, entropy, difference variance, difference entropy, information measures of correlation 1, information measures of correlation 2, and maximum correlation coefficient.  You can access the red channel contrast, for example, like this:<pre class="text">channel_features=MagickGetImageChannelFeatures(wand,1);contrast=channel_features[RedChannel].contrast[0];</pre>Use MagickRelinquishMemory() to free the statistics buffer.- wand: the magick wand. - distance: the distance. 
=end pod
sub MagickGetImageChannelFeatures(
   Pointer $wand,
   int32 $distance
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelKurtosis

    MagickBooleanType MagickGetImageChannelKurtosis(MagickWand *wand,
      const ChannelType channel,double *kurtosis,double *skewness)

MagickGetImageChannelKurtosis() gets the kurtosis and skewness of one or more image channels.- wand: the magick wand. - channel: the image channel(s). - kurtosis:  The kurtosis for the specified channel(s). - skewness:  The skewness for the specified channel(s). 
=end pod
sub MagickGetImageChannelKurtosis(
   Pointer $wand,
   uint32 $channel,
   CArray[num64] $kurtosis,
   CArray[num64] $skewness
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelMean

    MagickBooleanType MagickGetImageChannelMean(MagickWand *wand,
      const ChannelType channel,double *mean,double *standard_deviation)

MagickGetImageChannelMean() gets the mean and standard deviation of one or more image channels.- wand: the magick wand. - channel: the image channel(s). - mean:  The mean pixel value for the specified channel(s). - standard_deviation:  The standard deviation for the specified channel(s). 
=end pod
sub MagickGetImageChannelMean(
   Pointer $wand,
   uint32 $channel,
   CArray[num64] $mean,
   CArray[num64] $standard_deviation
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelRange

    MagickBooleanType MagickGetImageChannelRange(MagickWand *wand,
      const ChannelType channel,double *minima,double *maxima)

MagickGetImageChannelRange() gets the range for one or more image channels.- wand: the magick wand. - channel: the image channel(s). - minima:  The minimum pixel value for the specified channel(s). - maxima:  The maximum pixel value for the specified channel(s). 
=end pod
sub MagickGetImageChannelRange(
   Pointer $wand,
   uint32 $channel,
   CArray[num64] $minima,
   CArray[num64] $maxima
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageChannelStatistics

    ChannelStatistics *MagickGetImageChannelStatistics(MagickWand *wand)

MagickGetImageChannelStatistics() returns statistics for each channel in the image.  The statistics include the channel depth, its minima and maxima, the mean, the standard deviation, the kurtosis and the skewness. You can access the red channel mean, for example, like this:<pre class="text">channel_statistics=MagickGetImageChannelStatistics(wand);red_mean=channel_statistics[RedChannel].mean;</pre>Use MagickRelinquishMemory() to free the statistics buffer.- wand: the magick wand. 
=end pod
sub MagickGetImageChannelStatistics(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageColormapColor

    MagickBooleanType MagickGetImageColormapColor(MagickWand *wand,
      const size_t index,PixelWand *color)

MagickGetImageColormapColor() returns the color of the specified colormap index.- wand: the magick wand. - index: the offset into the image colormap. - color: Return the colormap color in this wand. 
=end pod
sub MagickGetImageColormapColor(
   Pointer $wand,
   int32 $index,
   Pointer $color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageColors

    size_t MagickGetImageColors(MagickWand *wand)

MagickGetImageColors() gets the number of unique colors in the image.- wand: the magick wand. 
=end pod
sub MagickGetImageColors(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageColorspace

    ColorspaceType MagickGetImageColorspace(MagickWand *wand)

MagickGetImageColorspace() gets the image colorspace.

- wand: the magick wand.

=end pod
sub MagickGetImageColorspace(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageCompose

    CompositeOperator MagickGetImageCompose(MagickWand *wand)

MagickGetImageCompose() returns the composite operator associated with the image.- wand: the magick wand. 
=end pod
sub MagickGetImageCompose(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageCompression

    CompressionType MagickGetImageCompression(MagickWand *wand)

MagickGetImageCompression() gets the image compression.- wand: the magick wand. 
=end pod
sub MagickGetImageCompression(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageCompressionQuality

    size_t MagickGetImageCompressionQuality(MagickWand *wand)

MagickGetImageCompressionQuality() gets the image compression quality.- wand: the magick wand. 
=end pod
sub MagickGetImageCompressionQuality(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageDelay

    size_t MagickGetImageDelay(MagickWand *wand)

MagickGetImageDelay() gets the image delay.- wand: the magick wand. 
=end pod
sub MagickGetImageDelay(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageDepth

    size_t MagickGetImageDepth(MagickWand *wand)

MagickGetImageDepth() gets the image depth.- wand: the magick wand. 
=end pod
sub MagickGetImageDepth(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageDistortion

    MagickBooleanType MagickGetImageDistortion(MagickWand *wand,
      const MagickWand *reference,const MetricType metric,
      double *distortion)

MagickGetImageDistortion() compares an image to a reconstructed image and returns the specified distortion metric.- wand: the magick wand. - reference: the reference wand. - metric: the metric. - distortion: the computed distortion between the images. 
=end pod
sub MagickGetImageDistortion(
   Pointer $wand,
   Pointer $reference,
   uint32 $metric,
   CArray[num64] $distortion
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageDispose

    DisposeType MagickGetImageDispose(MagickWand *wand)

MagickGetImageDispose() gets the image disposal method.- wand: the magick wand. 
=end pod
sub MagickGetImageDispose(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageEndian

    EndianType MagickGetImageEndian(MagickWand *wand)

MagickGetImageEndian() gets the image endian.- wand: the magick wand. 
=end pod
sub MagickGetImageEndian(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageFilename

    char *MagickGetImageFilename(MagickWand *wand)

MagickGetImageFilename() returns the filename of a particular image in a sequence.- wand: the magick wand. 
=end pod
sub MagickGetImageFilename(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageFormat

    char *MagickGetImageFormat(MagickWand *wand)

MagickGetImageFormat() returns the format of a particular image in a sequence.- wand: the magick wand. 
=end pod
sub MagickGetImageFormat(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageFuzz

    double MagickGetImageFuzz(MagickWand *wand)

MagickGetImageFuzz() gets the image fuzz.- wand: the magick wand. 
=end pod
sub MagickGetImageFuzz(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageGamma

    double MagickGetImageGamma(MagickWand *wand)

MagickGetImageGamma() gets the image gamma.- wand: the magick wand. 
=end pod
sub MagickGetImageGamma(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageGravity

    GravityType MagickGetImageGravity(MagickWand *wand)

MagickGetImageGravity() gets the image gravity.- wand: the magick wand. 
=end pod
sub MagickGetImageGravity(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageGreenPrimary

    MagickBooleanType MagickGetImageGreenPrimary(MagickWand *wand,double *x,
      double *y)

MagickGetImageGreenPrimary() returns the chromaticy green primary point.- wand: the magick wand. - x: the chromaticity green primary x-point. - y: the chromaticity green primary y-point. 
=end pod
sub MagickGetImageGreenPrimary(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageHeight

    size_t MagickGetImageHeight(MagickWand *wand)

MagickGetImageHeight() returns the image height.

- wand: the magick wand.

=end pod
sub MagickGetImageHeight(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageHistogram

    PixelWand **MagickGetImageHistogram(MagickWand *wand,
      size_t *number_colors)

MagickGetImageHistogram() returns the image histogram as an array of PixelWand wands.- wand: the magick wand. - number_colors: the number of unique colors in the image and the number of pixel wands returned. 
=end pod
sub MagickGetImageHistogram(
   Pointer $wand,
   Pointer[int32] $number_colors
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageInterlaceScheme

    InterlaceType MagickGetImageInterlaceScheme(MagickWand *wand)

MagickGetImageInterlaceScheme() gets the image interlace scheme.- wand: the magick wand. 
=end pod
sub MagickGetImageInterlaceScheme(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageInterpolateMethod

    InterpolatePixelMethod MagickGetImageInterpolateMethod(MagickWand *wand)

MagickGetImageInterpolateMethod() returns the interpolation method for the sepcified image.- wand: the magick wand. 
=end pod
sub MagickGetImageInterpolateMethod(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageIterations

    size_t MagickGetImageIterations(MagickWand *wand)

MagickGetImageIterations() gets the image iterations.- wand: the magick wand. 
=end pod
sub MagickGetImageIterations(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageLength

    MagickBooleanType MagickGetImageLength(MagickWand *wand,
      MagickSizeType *length)

MagickGetImageLength() returns the image length in bytes.- wand: the magick wand. - length: the image length in bytes. 
=end pod
sub MagickGetImageLength(
   Pointer $wand,
   CArray[uint32] $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageMatteColor

    MagickBooleanType MagickGetImagematteColor(MagickWand *wand,
      PixelWand *matte_color)

MagickGetImageMatteColor() returns the image matte color.- wand: the magick wand. - matte_color: Return the matte color. 
=end pod
sub MagickGetImagematteColor(
   Pointer $wand,
   Pointer $matte_color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageOrientation

    OrientationType MagickGetImageOrientation(MagickWand *wand)

MagickGetImageOrientation() returns the image orientation.- wand: the magick wand. 
=end pod
sub MagickGetImageOrientation(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImagePage

    MagickBooleanType MagickGetImagePage(MagickWand *wand,
      size_t *width,size_t *height,ssize_t *x,ssize_t *y)

MagickGetImagePage() returns the page geometry associated with the image.- wand: the magick wand. - width: the page width. - height: the page height. - x: the page x-offset. - y: the page y-offset. 
=end pod
sub MagickGetImagePage(
   Pointer $wand,
   Pointer[int32] $width,
   Pointer[int32] $height,
   Pointer[int32] $x,
   Pointer[int32] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImagePixelColor

    MagickBooleanType MagickGetImagePixelColor(MagickWand *wand,
      const ssize_t x,const ssize_t y,PixelWand *color)

MagickGetImagePixelColor() returns the color of the specified pixel.- wand: the magick wand. - x,y: the pixel offset into the image. - color: Return the colormap color in this wand. 
=end pod
sub MagickGetImagePixelColor(
   Pointer $wand,
   uint32 $x,
   uint32 $y,
   Pointer $color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageRedPrimary

    MagickBooleanType MagickGetImageRedPrimary(MagickWand *wand,double *x,
      double *y)

MagickGetImageRedPrimary() returns the chromaticy red primary point.- wand: the magick wand. - x: the chromaticity red primary x-point. - y: the chromaticity red primary y-point. 
=end pod
sub MagickGetImageRedPrimary(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageRegion

    MagickWand *MagickGetImageRegion(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y)

MagickGetImageRegion() extracts a region of the image and returns it as a a new wand.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 
=end pod
sub MagickGetImageRegion(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageRenderingIntent

    RenderingIntent MagickGetImageRenderingIntent(MagickWand *wand)

MagickGetImageRenderingIntent() gets the image rendering intent.- wand: the magick wand. 
=end pod
sub MagickGetImageRenderingIntent(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageResolution

    MagickBooleanType MagickGetImageResolution(MagickWand *wand,double *x,
      double *y)

MagickGetImageResolution() gets the image X and Y resolution.- wand: the magick wand. - x: the image x-resolution. - y: the image y-resolution. 
=end pod
sub MagickGetImageResolution(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageScene

    size_t MagickGetImageScene(MagickWand *wand)

MagickGetImageScene() gets the image scene.- wand: the magick wand. 
=end pod
sub MagickGetImageScene(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageSignature

    char *MagickGetImageSignature(MagickWand *wand)

MagickGetImageSignature() generates an SHA-256 message digest for the image pixel stream.- wand: the magick wand. 
=end pod
sub MagickGetImageSignature(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageTicksPerSecond

    size_t MagickGetImageTicksPerSecond(MagickWand *wand)

MagickGetImageTicksPerSecond() gets the image ticks-per-second.- wand: the magick wand. 
=end pod
sub MagickGetImageTicksPerSecond(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageType

    ImageType MagickGetImageType(MagickWand *wand)

MagickGetImageType() gets the potential image type: Bilevel, Grayscale
GrayscaleMatte, Palette, PaletteMatte, TrueColor, TrueColorMatte
ColorSeparation and ColorSeparationMatte

To ensure the image type matches its potential, use MagickSetImageType()

- wand: the magick wand.  
=end pod
sub MagickGetImageType(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageUnits

    ResolutionType MagickGetImageUnits(MagickWand *wand)

MagickGetImageUnits() gets the image units of resolution.- wand: the magick wand. 
=end pod
sub MagickGetImageUnits(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageVirtualPixelMethod

    VirtualPixelMethod MagickGetImageVirtualPixelMethod(MagickWand *wand)

MagickGetImageVirtualPixelMethod() returns the virtual pixel method for the sepcified image.- wand: the magick wand. 
=end pod
sub MagickGetImageVirtualPixelMethod(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageWhitePoint

    MagickBooleanType MagickGetImageWhitePoint(MagickWand *wand,double *x,
      double *y)

MagickGetImageWhitePoint() returns the chromaticy white point.- wand: the magick wand. - x: the chromaticity white x-point. - y: the chromaticity white y-point. 
=end pod
sub MagickGetImageWhitePoint(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageWidth

    size_t MagickGetImageWidth(MagickWand *wand)

MagickGetImageWidth() returns the image width.- wand: the magick wand. 
=end pod
sub MagickGetImageWidth(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetNumberImages

    size_t MagickGetNumberImages(MagickWand *wand)

MagickGetNumberImages() returns the number of images associated with a magick wand.- wand: the magick wand. 
=end pod
sub MagickGetNumberImages(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageTotalInkDensity

    double MagickGetImageTotalInkDensity(MagickWand *wand)

MagickGetImageTotalInkDensity() gets the image total ink density.- wand: the magick wand. 
=end pod
sub MagickGetImageTotalInkDensity(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 MagickHaldClutImage

    MagickBooleanType MagickHaldClutImage(MagickWand *wand,
      const MagickWand *hald_wand)
    MagickBooleanType MagickHaldClutImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickWand *hald_wand)

MagickHaldClutImage() replaces colors in the image from a Hald color lookup table.   A Hald color lookup table is a 3-dimensional color cube mapped to 2 dimensions.  Create it with the HALD coder.  You can apply any color transformation to the Hald image and then use this method to apply the transform to the image.- wand: the magick wand. - hald_image: the hald CLUT image. 
=end pod
sub MagickHaldClutImage(
   Pointer $wand,
   Pointer $hald_wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickHaldClutImageChannel(
   Pointer $wand,
   uint32 $channel,
   Pointer $hald_wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickHasNextImage

    MagickBooleanType MagickHasNextImage(MagickWand *wand)

MagickHasNextImage() returns MagickTrue if the wand has more images when traversing the list in the forward direction- wand: the magick wand. 
=end pod
sub MagickHasNextImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickHasPreviousImage

    MagickBooleanType MagickHasPreviousImage(MagickWand *wand)

MagickHasPreviousImage() returns MagickTrue if the wand has more images when traversing the list in the reverse direction- wand: the magick wand. 
=end pod
sub MagickHasPreviousImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickIdentifyImage

    const char *MagickIdentifyImage(MagickWand *wand)

MagickIdentifyImage() identifies an image by printing its attributes to the file.  Attributes include the image width, height, size, and others.- wand: the magick wand. 
=end pod
sub MagickIdentifyImage(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickImplodeImage

    MagickBooleanType MagickImplodeImage(MagickWand *wand,
      const double radius)

MagickImplodeImage() creates a new image that is a copy of an existing one with the image pixels "implode" by the specified percentage.  It allocates the memory necessary for the new Image structure and returns a pointer to the new image.- wand: the magick wand. - amount: Define the extent of the implosion. 
=end pod
sub MagickImplodeImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickImportImagePixels

    MagickBooleanType MagickImportImagePixels(MagickWand *wand,
      const ssize_t x,const ssize_t y,const size_t columns,
      const size_t rows,const char *map,const StorageType storage,
      const void *pixels)

MagickImportImagePixels() accepts pixel datand stores it in the image at the location you specify.  The method returns MagickFalse on success otherwise MagickTrue if an error is encountered.  The pixel data can be either char, short int, int, ssize_t, float, or double in the order specified by map.Suppose your want to upload the first scanline of a 640x480 image from character data in red-green-blue order:<pre class="text">MagickImportImagePixels(wand,0,0,640,1,"RGB",CharPixel,pixels);</pre>- wand: the magick wand. - x, y, columns, rows:  These values define the perimeter of a region of pixels you want to define. - map:  This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad. - storage: Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, ShortPixel, IntegerPixel, LongPixel, FloatPixel, or DoublePixel. - pixels: This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type. 
=end pod
sub MagickImportImagePixels(
   Pointer $wand,
   uint32 $x,
   uint32 $y,
   int32 $columns,
   int32 $rows,
   Str $map,
   uint32 $storage,
   Pointer[void] $pixels
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickInverseFourierTransformImage

    MagickBooleanType MagickInverseFourierTransformImage(
      MagickWand *magnitude_wand,MagickWand *phase_wand,
      const MagickBooleanType magnitude)

MagickInverseFourierTransformImage() implements the inverse discrete Fourier transform (DFT) of the image either as a magnitude / phase or real / imaginary image pair.- magnitude_wand: the magnitude or real wand. - phase_wand: the phase or imaginary wand. - magnitude: if true, return as magnitude / phase pair otherwise a real / imaginary image pair. 
=end pod
sub MagickInverseFourierTransformImage(
   Pointer $magnitude_wand,
   Pointer $phase_wand,
   uint32 $magnitude
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickLabelImage

    MagickBooleanType MagickLabelImage(MagickWand *wand,const char *label)

MagickLabelImage() adds a label to your image.- wand: the magick wand. - label: the image label. 
=end pod
sub MagickLabelImage(
   Pointer $wand,
   Str $label
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickLevelImage

    MagickBooleanType MagickLevelImage(MagickWand *wand,
      const double black_point,const double gamma,const double white_point)
    MagickBooleanType MagickLevelImageChannel(MagickWand *wand,
      const ChannelType channel,const double black_point,const double gamma,
      const double white_point)

MagickLevelImage() adjusts the levels of an image by scaling the colors falling
between specified white and black points to the full available quantum range.
The parameters provided represent the black, mid, and white points. The black
point specifies the darkest color in the image. Colors darker than the black
point are set to zero. Mid point specifies a gamma correction to apply to the
image.  White point specifies the lightest color in the image. Colors brighter
than the white point are set to the maximum quantum value.

- wand: the magick wand.
- channel: Identify which channel to level: RedChannel, GreenChannel,
- black_point: the black point.
- gamma: the gamma.
- white_point: the white point.

=end pod
sub MagickLevelImage(
   Pointer $wand,
   num64 $black_point,
   num64 $gamma,
   num64 $white_point
)
returns uint32 
is native(&library)
is export { * };

sub MagickLevelImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $black_point,
   num64 $gamma,
   num64 $white_point
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickLinearStretchImage

    MagickBooleanType MagickLinearStretchImage(MagickWand *wand,
      const double black_point,const double white_point)

MagickLinearStretchImage() stretches with saturation the image intensity.You can also reduce the influence of a particular channel with a gamma value of 0.- wand: the magick wand. - black_point: the black point. - white_point: the white point. 
=end pod
sub MagickLinearStretchImage(
   Pointer $wand,
   num64 $black_point,
   num64 $white_point
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickLiquidRescaleImage

    MagickBooleanType MagickMagnifyImage(MagickWand *wand)

MagickLiquidRescaleImage() rescales image with seam carving.MagickBooleanType MagickLiquidRescaleImage(MagickWand \*wand, const size_t columns,const size_t rows,const double delta_x, const double rigidity)- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. - delta_x: maximum seam transversal step (0 means straight seams). - rigidity: introduce a bias for non-straight seams (typically 0). <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickLocalContrastImage">MagickLocalContrastImage</a></h2>MagickLocalContrastImage() attempts to increase the appearance of large-scale light-dark transitions. Local contrast enhancement works similarly to sharpening with an unsharp mask, however the mask is instead created using an image with a greater blur distance.MagickBooleanType MagickLocalContrastImage(MagickWand \*wand, const double radius,const double strength)- image: the image. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - strength: the strength of the blur mask in percentage. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickMagnifyImage">MagickMagnifyImage</a></h2>MagickMagnifyImage() is a convenience method that scales an image proportionally to twice its original size.- wand: the magick wand. 
=end pod
sub MagickMagnifyImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMergeImageLayers

    MagickWand *MagickMergeImageLayers(MagickWand *wand,
      const ImageLayerMethod method)

MagickMergeImageLayers() composes all the image layers from the current given image onward to produce a single image of the merged layers.The inital canvas's size depends on the given ImageLayerMethod, and is initialized using the first images background color.  The images are then compositied onto that image in sequence using the given composition that has been assigned to each individual image.- wand: the magick wand. - method: the method of selecting the size of the initial canvas. <dd> MergeLayer: Merge all layers onto a canvas just large enough to hold all the actual images. The virtual canvas of the first image is preserved but otherwise ignored. </dd><dd> FlattenLayer: Use the virtual canvas size of first image. Images which fall outside this canvas is clipped. This can be used to 'fill out' a given virtual canvas. </dd><dd> MosaicLayer: Start with the virtual canvas of the first image, enlarging left and right edges to contain all images. Images with negative offsets will be clipped. </dd>
=end pod
sub MagickMergeImageLayers(
   Pointer $wand,
   uint32 $method
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickMinifyImage

    MagickBooleanType MagickMinifyImage(MagickWand *wand)

MagickMinifyImage() is a convenience method that scales an image proportionally to one-half its original size- wand: the magick wand. 
=end pod
sub MagickMinifyImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickModulateImage

    MagickBooleanType MagickModulateImage(MagickWand *wand,
      const double brightness,const double saturation,const double hue)

MagickModulateImage() lets you control the brightness, saturation, and hue of an
image.  Hue is the percentage of absolute rotation from the current position.
For example 50 results in a counter-clockwise rotation of 90 degrees, 150
results in a clockwise rotation of 90 degrees, with 0 and 200 both resulting in
a rotation of 180 degrees.To increase the color brightness by 20 and decrease
the color saturation by 10 and leave the hue unchanged, use: 120,90,100.- wand:
the magick wand.

- brightness: the percent change in brighness.
- saturation: the percent change in saturation.
- hue: the percent change in hue.

=end pod
sub MagickModulateImage(
   Pointer $wand,
   num64 $brightness,
   num64 $saturation,
   num64 $hue
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMontageImage

    MagickWand *MagickMontageImage(MagickWand *wand,
      const DrawingWand drawing_wand,const char *tile_geometry,
      const char *thumbnail_geometry,const MontageMode mode,
      const char *frame)

MagickMontageImage() creates a composite image by combining several separate
images. The images are tiled on the composite image with the name of the image
optionally appearing just below the individual tile.

- wand: the magick wand.
- drawing_wand: the drawing wand.  The font name, size, and color are obtained
from this wand.
- tile_geometry: the number of tiles per row and page (e.g.6x4+0+0).
- thumbnail_geometry: Preferred image size and border size of each
thumbnail (e.g. 120x120+4+3>).
- mode: Thumbnail framing mode: Frame, Unframe, or Concatenate.
- frame: Surround the image with an ornamental border (e.g. 15x15+3+3). The
frame color is that of the thumbnail's matte color.

=end pod
sub MagickMontageImage(
   Pointer $wand,
   uint32 $drawing_wand,
   Str $tile_geometry,
   Str $thumbnail_geometry,
   uint32 $mode,
   Str $frame
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickMorphImages

    MagickWand *MagickMorphImages(MagickWand *wand,
      const size_t number_frames)

MagickMorphImages() method morphs a set of images.  Both the image pixels and size are linearly interpolated to give the appearance of a meta-morphosis from one image to the next.- wand: the magick wand. - number_frames: the number of in-between images to generate. 
=end pod
sub MagickMorphImages(
   Pointer $wand,
   int32 $number_frames
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickMorphologyImage

    MagickBooleanType MagickMorphologyImage(MagickWand *wand,
      MorphologyMethod method,const ssize_t iterations,KernelInfo *kernel)
    MagickBooleanType MagickMorphologyImageChannel(MagickWand *wand,
      ChannelType channel,MorphologyMethod method,const ssize_t iterations,
      Pointer[KernelInfo]kernel)

MagickMorphologyImage() applies a user supplied kernel to the image according to the given mophology method.- wand: the magick wand. - channel: the image channel(s). - method: the morphology method to be applied. - iterations: apply the operation this many times (or no change). A value of -1 means loop until no change found.  How this is applied may depend on the morphology method.  Typically this is a value of 1. - kernel: An array of doubles representing the morphology kernel. 

sub MagickMorphologyImage(
   Pointer $wand,
   MorphologyMethod $method,
   uint32 $iterations,
   Pointer[KernelInfo] $kernel
)
returns uint32 
is native(&library)
is export { * };

sub MagickMorphologyImageChannel(
   Pointer $wand,
   uint32 $channel,
   MorphologyMethod $method,
   uint32 $iterations,
   Pointer[KernelInfo] $kernel
)
returns uint32
is native(&library)
is export { * };
=end pod

=begin pod
=head1 MagickMotionBlurImage

    MagickBooleanType MagickMotionBlurImage(MagickWand *wand,
      const double radius,const double sigma,const double angle)
    MagickBooleanType MagickMotionBlurImageChannel(MagickWand *wand,
      const ChannelType channel,const double radius,const double sigma,
      const double angle)

MagickMotionBlurImage() simulates motion blur.  We convolve the image with a
Gaussian operator of the given radius and standard deviation (sigma). For
reasonable results, radius should be larger than sigma.  Use a radius of 0 and
MotionBlurImage() selects a suitable radius for you. Angle gives the angle of
the blurring motion.

- wand: the magick wand.
- channel: the image channel(s). 
- radius: the radius of the Gaussian, in pixels, not counting the center pixel.
 - sigma: the standard deviation of the Gaussian, in pixels.
- angle: Apply the effect along this angle.

=end pod
sub MagickMotionBlurImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma,
   num64 $angle
)
returns uint32 
is native(&library)
is export { * };

sub MagickMotionBlurImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma,
   num64 $angle
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickNegateImage

    MagickBooleanType MagickNegateImage(MagickWand *wand,
      const MagickBooleanType gray)
    MagickBooleanType MagickNegateImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickBooleanType gray)

MagickNegateImage() negates the colors in the reference image. The Grayscale
option means that only grayscale values within the image are negated.You can
also reduce the influence of a particular channel with a gamma value of 0.

- wand: the magick wand.
- channel: the image channel(s).
- gray: If MagickTrue, only negate grayscale pixels within the image.

=end pod
sub MagickNegateImage(
   Pointer $wand,
   uint32 $gray
)
returns uint32 
is native(&library)
is export { * };

sub MagickNegateImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $gray
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickNewImage

    MagickBooleanType MagickNewImage(MagickWand *wand,
      const size_t columns,const size_t rows,
      const PixelWand *background)

MagickNewImage() adds a blank image canvas of the specified size and background color to the wand.- wand: the magick wand. - width: the image width. - height: the image height. - background: the image color. 
=end pod
sub MagickNewImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows,
   Pointer $background
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickNextImage

    MagickBooleanType MagickNextImage(MagickWand *wand)

MagickNextImage() sets the next image in the wand as the current image.It is typically used after MagickResetIterator(), after which its first use will set the first image as the current image (unless the wand is empty).It will return MagickFalse when no more images are left to be returned which happens when the wand is empty, or the current image is the last image.When the above condition (end of image list) is reached, the iterator is automaticall set so that you can start using MagickPreviousImage() to again iterate over the images in the reverse direction, starting with the last image (again).  You can jump to this condition immeditally using MagickSetLastIterator().- wand: the magick wand. 
=end pod
sub MagickNextImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickNormalizeImage

    MagickBooleanType MagickNormalizeImage(MagickWand *wand)
    MagickBooleanType MagickNormalizeImageChannel(MagickWand *wand,
      const ChannelType channel)

MagickNormalizeImage() enhances the contrast of a color image by adjusting the
pixels color to span the entire range of colors availableYou can also reduce the
influence of a particular channel with a gamma value of 0.

- wand: the magick wand.
- channel: the image channel(s).

=end pod
sub MagickNormalizeImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickNormalizeImageChannel(
   Pointer $wand,
   uint32 $channel
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickOilPaintImage

    MagickBooleanType MagickOilPaintImage(MagickWand *wand,
      const double radius)

MagickOilPaintImage() applies a special effect filter that simulates an oil
painting.  Each pixel is replaced by the most frequent color occurring in a
circular region defined by radius.

- wand: the magick wand.
- radius: the radius of the circular neighborhood.

=end pod
sub MagickOilPaintImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickOpaquePaintImage

    MagickBooleanType MagickOpaquePaintImage(MagickWand *wand,
      const PixelWand *target,const PixelWand *fill,const double fuzz,
      const MagickBooleanType invert)
    MagickBooleanType MagickOpaquePaintImageChannel(MagickWand *wand,
      const ChannelType channel,const PixelWand *target,
      const PixelWand *fill,const double fuzz,const MagickBooleanType invert)

MagickOpaquePaintImage() changes any pixel that matches color with the color defined by fill.- wand: the magick wand. - channel: the channel(s). - target: Change this target color to the fill color within the image. - fill: the fill pixel wand. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. - invert: paint any pixel that does not match the target color. 
=end pod
sub MagickOpaquePaintImage(
   Pointer $wand,
   Pointer $target,
   Pointer $fill,
   num64 $fuzz,
   uint32 $invert
)
returns uint32 
is native(&library)
is export { * };

sub MagickOpaquePaintImageChannel(
   Pointer $wand,
   uint32 $channel,
   Pointer $target,
   Pointer $fill,
   num64 $fuzz,
   uint32 $invert
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickOptimizeImageLayers

    MagickWand *MagickOptimizeImageLayers(MagickWand *wand)

MagickOptimizeImageLayers() compares each image the GIF disposed forms of the previous image in the sequence.  From this it attempts to select the smallest cropped image to replace each frame, while preserving the results of the animation.- wand: the magick wand. 
=end pod
sub MagickOptimizeImageLayers(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickOptimizeImageTransparency

    MagickBooleanType MagickOrderedPosterizeImage(MagickWand *wand,
      const char *threshold_map)
    MagickBooleanType MagickOrderedPosterizeImageChannel(MagickWand *wand,
      const ChannelType channel,const char *threshold_map)

MagickOptimizeImageTransparency() takes a frame optimized GIF animation, and compares the overlayed pixels against the disposal image resulting from all the previous frames in the animation.  Any pixel that does not change the disposal image (and thus does not effect the outcome of an overlay) is made transparent.WARNING: This modifies the current images directly, rather than generate a new image sequence. The format of the MagickOptimizeImageTransparency method is:<pre class="text">MagickBooleanType MagickOptimizeImageTransparency(MagickWand \*wand)</pre>- wand: the magick wand. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickOrderedPosterizeImage">MagickOrderedPosterizeImage</a></h2>MagickOrderedPosterizeImage() performs an ordered dither based on a number of pre-defined dithering threshold maps, but over multiple intensity levels, which can be different for different channels, according to the input arguments.- image: the image. - channel: the channel or channels to be thresholded. - threshold_map: A string containing the name of the threshold dither map to use, followed by zero or more numbers representing the number of color levels tho dither between. <dd> Any level number less than 2 is equivalent to 2, and means only binary dithering will be applied to each color channel. </dd><dd> No numbers also means a 2 level (bitmap) dither will be applied to all channels, while a single number is the number of levels applied to each channel in sequence.  More numbers will be applied in turn to each of the color channels. </dd><dd> For example: "o3x3,6" generates a 6 level posterization of the image with a ordered 3x3 diffused pixel dither being applied between each level. While checker,8,8,4 will produce a 332 colormaped image with only a single checkerboard hash pattern (50 grey) between each color level, to basically double the number of color levels with a bare minimim of dithering. </dd>
=end pod
sub MagickOrderedPosterizeImage(
   Pointer $wand,
   Str $threshold_map
)
returns uint32 
is native(&library)
is export { * };

sub MagickOrderedPosterizeImageChannel(
   Pointer $wand,
   uint32 $channel,
   Str $threshold_map
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickPingImage

    MagickBooleanType MagickPingImage(MagickWand *wand,const char *filename)

MagickPingImage() is like MagickReadImage() except the only valid information returned is the image width, height, size, and format.  It is designed to efficiently obtain this information from a file without reading the entire image sequence into memory.- wand: the magick wand. - filename: the image filename. 
=end pod
sub MagickPingImage(
   Pointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPingImageBlob

    MagickBooleanType MagickPingImageBlob(MagickWand *wand,
      const void *blob,const size_t length)

MagickPingImageBlob() pings an image or image sequence from a blob.- wand: the magick wand. - blob: the blob. - length: the blob length. 
=end pod
sub MagickPingImageBlob(
   Pointer $wand,
   Pointer[void] $blob,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPolaroidImage

    MagickBooleanType MagickPolaroidImage(MagickWand *wand,
      const DrawingWand *drawing_wand,const double angle)

MagickPolaroidImage() simulates a Polaroid picture.- wand: the magick wand. - drawing_wand: the draw wand. - angle: Apply the effect along this angle. 
=end pod
sub MagickPolaroidImage(
   Pointer $wand,
   Pointer $drawing_wand,
   num64 $angle
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPosterizeImage

    MagickBooleanType MagickPosterizeImage(MagickWand *wand,
      const size_t levels,const MagickBooleanType dither)

MagickPosterizeImage() reduces the image to a limited number of color level.- wand: the magick wand. - levels: Number of color levels allowed in each channel.  Very low values (2, 3, or 4) have the most visible effect. - dither: Set this integer value to something other than zero to dither the mapped image. 
=end pod
sub MagickPosterizeImage(
   Pointer $wand,
   int32 $levels,
   uint32 $dither
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPreviewImages

    MagickWand *MagickPreviewImages(MagickWand *wand,
      const PreviewType preview)

MagickPreviewImages() tiles 9 thumbnails of the specified image with an image processing operation applied at varying strengths.  This helpful to quickly pin-point an appropriate parameter for an image processing operation.- wand: the magick wand. - preview: the preview type. 
=end pod
sub MagickPreviewImages(
   Pointer $wand,
   uint32 $preview
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickPreviousImage

    MagickBooleanType MagickPreviousImage(MagickWand *wand)

MagickPreviousImage() sets the previous image in the wand as the current image.It is typically used after MagickSetLastIterator(), after which its first use will set the last image as the current image (unless the wand is empty).It will return MagickFalse when no more images are left to be returned which happens when the wand is empty, or the current image is the first image.  At that point the iterator is than reset to again process images in the forward direction, again starting with the first image in list. Images added at this point are prepended.Also at that point any images added to the wand using MagickAddImages() or MagickReadImages() will be prepended before the first image. In this sense the condition is not quite exactly the same as MagickResetIterator().- wand: the magick wand. 
=end pod
sub MagickPreviousImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickQuantizeImage

    MagickBooleanType MagickQuantizeImage(MagickWand *wand,
      const size_t number_colors,const ColorspaceType colorspace,
      const size_t treedepth,const MagickBooleanType dither,
      const MagickBooleanType measure_error)

MagickQuantizeImage() analyzes the colors within a reference image and chooses a
fixed number of colors to represent the image.  The goal of the algorithm is to
minimize the color difference between the input and output image while
minimizing the processing time.

- wand: the magick wand.
- number_colors: the number of colors.
- colorspace: Perform color reduction in this colorspace, typically
RGBColorspace.
- treedepth: Normally, this integer value is zero or one.  A zero or one tells
Quantize to choose a optimal tree depth of Log4(number_colors). A tree of this
depth generally allows the best representation of the reference image with the
least amount of memory and the fastest computational speed.  In some cases, such
as an image with low color dispersion (a few number of colors), a value other
than Log4(number_colors) is required.  To expand the color tree completely, use
a value of 8.
- dither: A value other than zero distributes the difference between an original
image and the corresponding color reduced image to neighboring pixels along a
Hilbert curve.
- measure_error: A value other than zero measures the difference between
the original and quantized images.  This difference is the total quantization
error.  The error is computed by summing over all pixels in an image the
distance squared in RGB space between each reference pixel value and its
quantized value.

=end pod
sub MagickQuantizeImage(
   Pointer $wand,
   int32 $number_colors,
   uint32 $colorspace,
   int32 $treedepth,
   uint32 $dither,
   uint32 $measure_error
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickQuantizeImages

    MagickBooleanType MagickQuantizeImages(MagickWand *wand,
      const size_t number_colors,const ColorspaceType colorspace,
      const size_t treedepth,const MagickBooleanType dither,
      const MagickBooleanType measure_error)

MagickQuantizeImages() analyzes the colors within a sequence of images and chooses a fixed number of colors to represent the image.  The goal of the algorithm is to minimize the color difference between the input and output image while minimizing the processing time.- wand: the magick wand. - number_colors: the number of colors. - colorspace: Perform color reduction in this colorspace, typically RGBColorspace. - treedepth: Normally, this integer value is zero or one.  A zero or one tells Quantize to choose a optimal tree depth of Log4(number_colors).      A tree of this depth generally allows the best representation of the reference image with the least amount of memory and the fastest computational speed.  In some cases, such as an image with low color dispersion (a few number of colors), a value other than Log4(number_colors) is required.  To expand the color tree completely, use a value of 8. - dither: A value other than zero distributes the difference between an original image and the corresponding color reduced algorithm to neighboring pixels along a Hilbert curve. - measure_error: A value other than zero measures the difference between the original and quantized images.  This difference is the total quantization error.  The error is computed by summing over all pixels in an image the distance squared in RGB space between each reference pixel value and its quantized value. 
=end pod
sub MagickQuantizeImages(
   Pointer $wand,
   int32 $number_colors,
   uint32 $colorspace,
   int32 $treedepth,
   uint32 $dither,
   uint32 $measure_error
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRaiseImage

    MagickBooleanType MagickRaiseImage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y,const MagickBooleanType raise)

MagickRaiseImage() creates a simulated three-dimensional button-like effect by
lightening and darkening the edges of the image.  Members width and height of
raise_info define the width of the vertical and horizontal edge of the effect.

- wand: the magick wand.
- width,height,x,y:  Define the dimensions of the area to raise.
- raise: A value other than zero creates a 3-D raise effect, otherwise it has a
lowered effect.

=end pod
sub MagickRaiseImage(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y,
   uint32 $raise
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRandomThresholdImage

    MagickBooleanType MagickRandomThresholdImage(MagickWand *wand,
      const double low,const double high)
    MagickBooleanType MagickRandomThresholdImageChannel(MagickWand *wand,
      const ChannelType channel,const double low,const double high)

MagickRandomThresholdImage() changes the value of individual pixels based on the intensity of each pixel compared to threshold.  The result is a high-contrast, two color image.- wand: the magick wand. - channel: the image channel(s). - low,high: Specify the high and low thresholds.  These values range from 0 to QuantumRange. 
=end pod
sub MagickRandomThresholdImage(
   Pointer $wand,
   num64 $low,
   num64 $high
)
returns uint32 
is native(&library)
is export { * };

sub MagickRandomThresholdImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $low,
   num64 $high
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickReadImage

    MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)

MagickReadImage() reads an image or image sequence.

The images are inserted at the current image pointer position.

Use MagickSetFirstIterator(), MagickSetLastIterator, or MagickSetIteratorIndex()
to specify the current image pointer position at the beginning of the image
list, the end, or anywhere in-between respectively.

- wand: the magick wand.
- filename: the image filename.

=end pod
sub MagickReadImage(
   Pointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickReadImageBlob

    MagickBooleanType MagickReadImageBlob(MagickWand *wand,
      const void *blob,const size_t length)

MagickReadImageBlob() reads an image or image sequence from a blob.- wand: the magick wand. - blob: the blob. - length: the blob length. 
=end pod
sub MagickReadImageBlob(
   Pointer $wand,
   Pointer[void] $blob,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRemapImage

    MagickBooleanType MagickRemapImage(MagickWand *wand,
      const MagickWand *remap_wand,const DitherMethod method)

MagickRemapImage() replaces the colors of an image with the closest color from a reference image.- wand: the magick wand. - affinity: the affinity wand. - method: choose from these dither methods: NoDitherMethod, RiemersmaDitherMethod, or FloydSteinbergDitherMethod. 
=end pod
sub MagickRemapImage(
   Pointer $wand,
   Pointer $remap_wand,
   uint32 $method
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRemoveImage

    MagickBooleanType MagickRemoveImage(MagickWand *wand)

MagickRemoveImage() removes an image from the image list.- wand: the magick wand. - insert: the splice wand. 
=end pod
sub MagickRemoveImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickResampleImage

    MagickBooleanType MagickResampleImage(MagickWand *wand,
      const double x_resolution,const double y_resolution,
      const FilterTypes filter,const double blur)

MagickResampleImage() resample image to desired resolution.Bessel   Blackman   Box Catrom   Cubic      Gaussian Hanning  Hermite    Lanczos Mitchell Point      Quandratic Sinc     TriangleMost of the filters are FIR (finite impulse response), however, Bessel, Gaussian, and Sinc are IIR (infinite impulse response).  Bessel and Sinc are windowed (brought down to zero) with the Blackman filter.- wand: the magick wand. - x_resolution: the new image x resolution. - y_resolution: the new image y resolution. - filter: Image filter to use. - blur: the blur factor where &gt; 1 is blurry, &lt; 1 is sharp. 
=end pod
sub MagickResampleImage(
   Pointer $wand,
   num64 $x_resolution,
   num64 $y_resolution,
   uint32 $filter,
   num64 $blur
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickResetImagePage

    MagickBooleanType MagickResetImagePage(MagickWand *wand,
      const char *page)

MagickResetImagePage() resets the Wand page canvas and position.- wand: the magick wand. - page: the relative page specification. 
=end pod
sub MagickResetImagePage(
   Pointer $wand,
   Str $page
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickResizeImage

    MagickBooleanType MagickResizeImage(MagickWand *wand,
      const size_t columns,const size_t rows,
      const FilterTypes filter,const double blur)

MagickResizeImage() scales an image to the desired dimensions with one of these
filters: Bessel, Blackman, Box, Catrom, CubicGaussian, Hanning, Hermite,Lanczos,
Mitchell, PointQuandratic, Sinc, Triangle

Most of the filters are FIR (finite impulse response), however, Bessel,
Gaussian, and Sinc are IIR (infinite impulse response).  Bessel and Sinc are
windowed (brought down to zero) with the Blackman filter.

- wand: the magick wand.
- columns: the number of columns in the scaled image.
- rows: the number of rows in the scaled image.
- filter: Image filter to use.
- blur: the blur factor where > 1 is blurry, < 1 is sharp.

=end pod
sub MagickResizeImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows,
   uint32 $filter,
   num64 $blur
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRollImage

    MagickBooleanType MagickRollImage(MagickWand *wand,const ssize_t x,
      const size_t y)

MagickRollImage() offsets an image as defined by x and y.

- wand: the magick wand.
- x: the x offset.
- y: the y offset.

=end pod
sub MagickRollImage(
   Pointer $wand,
   uint32 $x,
   int32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRotateImage

    MagickBooleanType MagickRotateImage(MagickWand *wand,
      const PixelWand *background,const double degrees)

MagickRotateImage() rotates an image the specified number of degrees. Empty
triangles left over from rotating the image are filled with the background
color.

- wand: the magick wand.
- background: the background pixel wand.
- degrees: the number of degrees to rotate the image.

=end pod
sub MagickRotateImage(
   Pointer $wand,
   Pointer $background,
   num64 $degrees
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRotationalBlurImage

    MagickBooleanType MagickRotationalBlurImage(MagickWand *wand,
      const double angle)
    MagickBooleanType MagickRotationalBlurImageChannel(MagickWand *wand,
      const ChannelType channel,const double angle)

MagickRotationalBlurImage() rotational blurs an image.

- wand: the magick wand.
- channel: the image channel(s).
- angle: the angle of the blur in degrees.

=end pod
sub MagickRotationalBlurImage(
   Pointer $wand,
   num64 $angle
)
returns uint32 
is native(&library)
is export { * };

sub MagickRotationalBlurImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $angle
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickSampleImage

    MagickBooleanType MagickSampleImage(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickSampleImage() scales an image to the desired dimensions with pixel
sampling.  Unlike other scaling methods, this method does not introduce any
additional color into the scaled image.

- wand: the magick wand.
- columns: the number of columns in the scaled image.
- rows: the number of rows in the scaled image.

=end pod
sub MagickSampleImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickScaleImage

    MagickBooleanType MagickScaleImage(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickScaleImage() scales the size of an image to the given dimensions.

- wand: the magick wand.
- columns: the number of columns in the scaled image.
- rows: the number of rows in the scaled image.

=end pod
sub MagickScaleImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSegmentImage

    MagickBooleanType MagickSegmentImage(MagickWand *wand,
      const ColorspaceType colorspace,const MagickBooleanType verbose,
      const double cluster_threshold,const double smooth_threshold)

MagickSegmentImage() segments an image by analyzing the histograms of the color components and identifying units that are homogeneous with the fuzzy C-means technique.A description of each parameter follows.- wand</dt>the wand.<dt>colorspace</dt>the image colorspace.<dt>verbose</dt>Set to MagickTrue to print detailed information about the identified classes.<dt>cluster_threshold</dt>This represents the minimum number of pixels contained in a hexahedra before it can be considered valid (expressed as a percentage).<dt>smooth_threshold</dt>the smoothing threshold eliminates noise in the second derivative of the histogram.  As the value is increased, you can expect a smoother second derivative.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickSelectiveBlurImage">MagickSelectiveBlurImage</a></h2>MagickSelectiveBlurImage() selectively blur an image within a contrast threshold. It is similar to the unsharpen mask that sharpens everything with contrast above a certain threshold.The format of the MagickSelectiveBlurImage method is:<pre class="text">MagickBooleanType MagickSelectiveBlurImage(MagickWand \*wand,  const double radius,const double sigma,const double threshold)MagickBooleanType MagickSelectiveBlurImageChannel(MagickWand \*wand,  const ChannelType channel,const double radius,const double sigma,  const double threshold)</pre><dt>wand: the magick wand. - channel: the image channel(s). - radius: the radius of the gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the gaussian, in pixels. - threshold: only pixels within this contrast threshold are included in the blur operation. 
=end pod
sub MagickSegmentImage(
   Pointer $wand,
   uint32 $colorspace,
   uint32 $verbose,
   num64 $cluster_threshold,
   num64 $smooth_threshold
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSeparateImageChannel

    MagickBooleanType MagickSeparateImageChannel(MagickWand *wand,
      const ChannelType channel)

MagickSeparateImageChannel() separates a channel from the image and returns a
grayscale image.  A channel is a particular color component of each pixel in the
image.

- wand: the magick wand.
- channel: the image channel(s).

=end pod
sub MagickSeparateImageChannel(
   Pointer $wand,
   uint32 $channel
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSepiaToneImage

    MagickBooleanType MagickSepiaToneImage(MagickWand *wand,
      const double threshold)

MagickSepiaToneImage() applies a special effect to the image, similar to the effect achieved in a photo darkroom by sepia toning.  Threshold ranges from 0 to QuantumRange and is a measure of the extent of the sepia toning.  A threshold of 80 is a good starting point for a reasonable tone.- wand: the magick wand. - threshold:  Define the extent of the sepia toning. 
=end pod
sub MagickSepiaToneImage(
   Pointer $wand,
   num64 $threshold
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImage

    MagickBooleanType MagickSetImage(MagickWand *wand,
      const MagickWand *set_wand)

MagickSetImage() replaces the last image returned by MagickSetIteratorIndex(), MagickNextImage(), MagickPreviousImage() with the images from the specified wand.- wand: the magick wand. - set_wand: the set_wand wand. 
=end pod
sub MagickSetImage(
   Pointer $wand,
   Pointer $set_wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageAlphaChannel

    MagickBooleanType MagickSetImageAlphaChannel(MagickWand *wand,
      const AlphaChannelType alpha_type)

MagickSetImageAlphaChannel() activates, deactivates, resets, or sets the alpha channel.- wand: the magick wand. - alpha_type: the alpha channel type: ActivateAlphaChannel, DeactivateAlphaChannel, OpaqueAlphaChannel, or SetAlphaChannel. 
=end pod
sub MagickSetImageAlphaChannel(
   Pointer $wand,
   uint32 $alpha_type
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageBackgroundColor

    MagickBooleanType MagickSetImageBackgroundColor(MagickWand *wand,
      const PixelWand *background)

MagickSetImageBackgroundColor() sets the image background color.- wand: the magick wand. - background: the background pixel wand. 
=end pod
sub MagickSetImageBackgroundColor(
   Pointer $wand,
   Pointer $background
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageBias

    MagickBooleanType MagickSetImageBias(MagickWand *wand,
      const double bias)

MagickSetImageBias() sets the image bias for any method that convolves an image (e.g. MagickConvolveImage()).- wand: the magick wand. - bias: the image bias. 
=end pod
sub MagickSetImageBias(
   Pointer $wand,
   num64 $bias
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageBluePrimary

    MagickBooleanType MagickSetImageBluePrimary(MagickWand *wand,
      const double x,const double y)

MagickSetImageBluePrimary() sets the image chromaticity blue primary point.- wand: the magick wand. - x: the blue primary x-point. - y: the blue primary y-point. 
=end pod
sub MagickSetImageBluePrimary(
   Pointer $wand,
   num64 $x,
   num64 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageBorderColor

    MagickBooleanType MagickSetImageBorderColor(MagickWand *wand,
      const PixelWand *border)

MagickSetImageBorderColor() sets the image border color.- wand: the magick wand. - border: the border pixel wand. 
=end pod
sub MagickSetImageBorderColor(
   Pointer $wand,
   Pointer $border
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageChannelDepth

    MagickBooleanType MagickSetImageChannelDepth(MagickWand *wand,
      const ChannelType channel,const size_t depth)

MagickSetImageChannelDepth() sets the depth of a particular image channel.- wand: the magick wand. - channel: the image channel(s). - depth: the image depth in bits. 
=end pod
sub MagickSetImageChannelDepth(
   Pointer $wand,
   uint32 $channel,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageClipMask

    MagickBooleanType MagickSetImageClipMask(MagickWand *wand,
      const MagickWand *clip_mask)

MagickSetImageClipMask() sets image clip mask.- wand: the magick wand. - clip_mask: the clip_mask wand. 
=end pod
sub MagickSetImageClipMask(
   Pointer $wand,
   Pointer $clip_mask
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageColor

    MagickBooleanType MagickSetImageColor(MagickWand *wand,
      const PixelWand *color)

MagickSetImageColor() set the entire wand canvas to the specified color.- wand: the magick wand. - background: the image color. 
=end pod
sub MagickSetImageColor(
   Pointer $wand,
   Pointer $color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageColormapColor

    MagickBooleanType MagickSetImageColormapColor(MagickWand *wand,
      const size_t index,const PixelWand *color)

MagickSetImageColormapColor() sets the color of the specified colormap index.- wand: the magick wand. - index: the offset into the image colormap. - color: Return the colormap color in this wand. 
=end pod
sub MagickSetImageColormapColor(
   Pointer $wand,
   int32 $index,
   Pointer $color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageColorspace

    MagickBooleanType MagickSetImageColorspace(MagickWand *wand,
      const ColorspaceType colorspace)

MagickSetImageColorspace() sets the image colorspace.

- wand: the magick wand.
- colorspace: the image colorspace:   UndefinedColorspace, RGBColorspace,
  GRAYColorspace, TransparentColorspace, OHTAColorspace, XYZColorspace,
  YCbCrColorspace, YCCColorspace, YIQColorspace, YPbPrColorspace,
  YPbPrColorspace, YUVColorspace, CMYKColorspace, sRGBColorspace, HSLColorspace,
  or HWBColorspace.

=end pod
sub MagickSetImageColorspace(
   Pointer $wand,
   uint32 $colorspace
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageCompose

    MagickBooleanType MagickSetImageCompose(MagickWand *wand,
      const CompositeOperator compose)

MagickSetImageCompose() sets the image composite operator, useful for specifying
how to composite the image thumbnail when using the MagickMontageImage() method.

- wand: the magick wand.
- compose: the image composite operator.

=end pod
sub MagickSetImageCompose(
   Pointer $wand,
  uint32 $compose
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageCompression

    MagickBooleanType MagickSetImageCompression(MagickWand *wand,
      const CompressionType compression)

MagickSetImageCompression() sets the image compression.- wand: the magick wand. - compression: the image compression type. 
=end pod
sub MagickSetImageCompression(
   Pointer $wand,
   uint32 $compression
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageCompressionQuality

    MagickBooleanType MagickSetImageCompressionQuality(MagickWand *wand,
      const size_t quality)

MagickSetImageCompressionQuality() sets the image compression quality.- wand: the magick wand. - quality: the image compression tlityype. 
=end pod
sub MagickSetImageCompressionQuality(
   Pointer $wand,
   int32 $quality
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageDelay

    MagickBooleanType MagickSetImageDelay(MagickWand *wand,
      const size_t delay)

MagickSetImageDelay() sets the image delay.- wand: the magick wand. - delay: the image delay in ticks-per-second units. 
=end pod
sub MagickSetImageDelay(
   Pointer $wand,
   int32 $delay
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageDepth

    MagickBooleanType MagickSetImageDepth(MagickWand *wand,
      const size_t depth)

MagickSetImageDepth() sets the image depth.- wand: the magick wand. - depth: the image depth in bits: 8, 16, or 32. 
=end pod
sub MagickSetImageDepth(
   Pointer $wand,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageDispose

    MagickBooleanType MagickSetImageDispose(MagickWand *wand,
      const DisposeType dispose)

MagickSetImageDispose() sets the image disposal method.- wand: the magick wand. - dispose: the image disposeal type. 
=end pod
sub MagickSetImageDispose(
   Pointer $wand,
   uint32 $dispose
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageEndian

    MagickBooleanType MagickSetImageEndian(MagickWand *wand,
      const EndianType endian)

MagickSetImageEndian() sets the image endian method.- wand: the magick wand. - endian: the image endian type. 
=end pod
sub MagickSetImageEndian(
   Pointer $wand,
   uint32 $endian
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageExtent

    MagickBooleanType MagickSetImageExtent(MagickWand *wand,
      const size_t columns,const unsigned rows)

MagickSetImageExtent() sets the image size (i.e. columns &amp; rows).- wand: the magick wand. - columns:  The image width in pixels. - rows:  The image height in pixels. 
=end pod
sub MagickSetImageExtent(
   Pointer $wand,
   int32 $columns,
   uint32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageFilename

    MagickBooleanType MagickSetImageFilename(MagickWand *wand,
      const char *filename)

MagickSetImageFilename() sets the filename of a particular image in a sequence.- wand: the magick wand. - filename: the image filename. 
=end pod
sub MagickSetImageFilename(
   Pointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageFormat

    MagickBooleanType MagickSetImageFormat(MagickWand *wand,
      const char *format)

MagickSetImageFormat() sets the format of a particular image in a sequence.- wand: the magick wand. - format: the image format. 
=end pod
sub MagickSetImageFormat(
   Pointer $wand,
   Str $format
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageFuzz

    MagickBooleanType MagickSetImageFuzz(MagickWand *wand,
      const double fuzz)

MagickSetImageFuzz() sets the image fuzz.- wand: the magick wand. - fuzz: the image fuzz. 
=end pod
sub MagickSetImageFuzz(
   Pointer $wand,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageGamma

    MagickBooleanType MagickSetImageGamma(MagickWand *wand,
      const double gamma)

MagickSetImageGamma() sets the image gamma.- wand: the magick wand. - gamma: the image gamma. 
=end pod
sub MagickSetImageGamma(
   Pointer $wand,
   num64 $gamma
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageGravity

    MagickBooleanType MagickSetImageGravity(MagickWand *wand,
      const GravityType gravity)

MagickSetImageGravity() sets the image gravity type.- wand: the magick wand. - gravity: the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace. 
=end pod
sub MagickSetImageGravity(
   Pointer $wand,
   uint32 $gravity
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageGreenPrimary

    MagickBooleanType MagickSetImageGreenPrimary(MagickWand *wand,
      const double x,const double y)

MagickSetImageGreenPrimary() sets the image chromaticity green primary point.- wand: the magick wand. - x: the green primary x-point. - y: the green primary y-point. 
=end pod
sub MagickSetImageGreenPrimary(
   Pointer $wand,
   num64 $x,
   num64 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageInterlaceScheme

    MagickBooleanType MagickSetImageInterlaceScheme(MagickWand *wand,
      const InterlaceType interlace)

MagickSetImageInterlaceScheme() sets the image interlace scheme.- wand: the magick wand. - interlace: the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace. 
=end pod
sub MagickSetImageInterlaceScheme(
   Pointer $wand,
   uint32 $interlace
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageInterpolateMethod

    MagickBooleanType MagickSetImageInterpolateMethod(MagickWand *wand,
      const InterpolatePixelMethod method)

MagickSetImageInterpolateMethod() sets the image interpolate pixel method.- wand: the magick wand. - method: the image interpole pixel methods: choose from Undefined, Average, Bicubic, Bilinear, Filter, Integer, Mesh, NearestNeighbor. 
=end pod
sub MagickSetImageInterpolateMethod(
   Pointer $wand,
   uint32 $method
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageIterations

    MagickBooleanType MagickSetImageIterations(MagickWand *wand,
      const size_t iterations)

MagickSetImageIterations() sets the image iterations.- wand: the magick wand. - delay: the image delay in 1/100th of a second. 
=end pod
sub MagickSetImageIterations(
   Pointer $wand,
   int32 $iterations
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageMatte

    MagickBooleanType MagickSetImageMatteColor(MagickWand *wand,
      const MagickBooleanType *matte)

MagickSetImageMatte() sets the image matte channel.- wand: the magick wand. - matte: Set to MagickTrue to enable the image matte channel otherwise MagickFalse. 
=end pod
multi sub MagickSetImageMatteColor(
   Pointer $wand,
   CArray[uint32] $matte
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageMatteColor

    MagickBooleanType MagickSetImageMatteColor(MagickWand *wand,
      const PixelWand *matte)

MagickSetImageMatteColor() sets the image matte color.- wand: the magick wand. - matte: the matte pixel wand. 
=end pod
multi sub MagickSetImageMatteColor(
   Pointer $wand,
   Pointer $matte
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageOpacity

    MagickBooleanType MagickSetImageOpacity(MagickWand *wand,
      const double alpha)

MagickSetImageOpacity() sets the image to the specified opacity level.- wand: the magick wand. - alpha: the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent. 
=end pod
sub MagickSetImageOpacity(
   Pointer $wand,
   num64 $alpha
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageOrientation

    MagickBooleanType MagickSetImageOrientation(MagickWand *wand,
      const OrientationType orientation)

MagickSetImageOrientation() sets the image orientation.- wand: the magick wand. - orientation: the image orientation type. 
=end pod
sub MagickSetImageOrientation(
   Pointer $wand,
   uint32 $orientation
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImagePage

    MagickBooleanType MagickSetImagePage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y)

MagickSetImagePage() sets the page geometry of the image.- wand: the magick wand. - width: the page width. - height: the page height. - x: the page x-offset. - y: the page y-offset. 
=end pod
sub MagickSetImagePage(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageProgressMonitor

    MagickProgressMonitor MagickSetImageProgressMonitor(MagickWand *wand
      const MagickProgressMonitor progress_monitor,void *client_data)

MagickSetImageProgressMonitor() sets the wand image progress monitor to the specified method and returns the previous progress monitor if any.  The progress monitor method looks like this:<pre class="text">    MagickBooleanType MagickProgressMonitor(const char \*text,const MagickOffsetType offset,const MagickSizeType span,void \*client_data)</pre>If the progress monitor returns MagickFalse, the current operation is interrupted.- wand: the magick wand. - progress_monitor: Specifies a pointer to a method to monitor progress of an image operation. - client_data: Specifies a pointer to any client data. 
=end pod
sub MagickSetImageProgressMonitor(
  Pointer $wand,
  Pointer $progress_monitor,
  Pointer[void] $client_data
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageRedPrimary

    MagickBooleanType MagickSetImageRedPrimary(MagickWand *wand,
      const double x,const double y)

MagickSetImageRedPrimary() sets the image chromaticity red primary point.- wand: the magick wand. - x: the red primary x-point. - y: the red primary y-point. 
=end pod
sub MagickSetImageRedPrimary(
   Pointer $wand,
   num64 $x,
   num64 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageRenderingIntent

    MagickBooleanType MagickSetImageRenderingIntent(MagickWand *wand,
      const RenderingIntent rendering_intent)

MagickSetImageRenderingIntent() sets the image rendering intent.- wand: the magick wand. - rendering_intent: the image rendering intent: UndefinedIntent, SaturationIntent, PerceptualIntent, AbsoluteIntent, or RelativeIntent. 
=end pod
sub MagickSetImageRenderingIntent(
   Pointer $wand,
   uint32 $rendering_intent
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageResolution

    MagickBooleanType MagickSetImageResolution(MagickWand *wand,
      const double x_resolution,const double y_resolution)

MagickSetImageResolution() sets the image resolution.- wand: the magick wand. - x_resolution: the image x resolution. - y_resolution: the image y resolution. 
=end pod
sub MagickSetImageResolution(
   Pointer $wand,
   num64 $x_resolution,
   num64 $y_resolution
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageScene

    MagickBooleanType MagickSetImageScene(MagickWand *wand,
      const size_t scene)

MagickSetImageScene() sets the image scene.- wand: the magick wand. - delay: the image scene number. 
=end pod
sub MagickSetImageScene(
   Pointer $wand,
   int32 $scene
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageTicksPerSecond

    MagickBooleanType MagickSetImageTicksPerSecond(MagickWand *wand,
      const ssize_t ticks_per-second)

MagickSetImageTicksPerSecond() sets the image ticks-per-second.- wand: the magick wand. - ticks_per_second: the units to use for the image delay. 
=end pod
sub MagickSetImageTicksPerSecond(
   Pointer $wand,
   uint32 $ticks_per-second
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageType

    MagickBooleanType MagickSetImageType(MagickWand *wand,
      const ImageType image_type)

MagickSetImageType() sets the image type.

- wand: the magick wand.
- image_type: the image type:   UndefinedType,
- BilevelType, GrayscaleType, GrayscaleMatteType, PaletteType, PaletteMatteType,
- TrueColorType, TrueColorMatteType, ColorSeparationType,
- ColorSeparationMatteType, or OptimizeType.

=end pod
sub MagickSetImageType(
   Pointer $wand,
   uint32 $image_type
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageUnits

    MagickBooleanType MagickSetImageUnits(MagickWand *wand,
      const ResolutionType units)

MagickSetImageUnits() sets the image units of resolution.- wand: the magick wand. - units: the image units of resolution : UndefinedResolution, PixelsPerInchResolution, or PixelsPerCentimeterResolution. 
=end pod
sub MagickSetImageUnits(
   Pointer $wand,
   uint32 $units
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageVirtualPixelMethod

    VirtualPixelMethod MagickSetImageVirtualPixelMethod(MagickWand *wand,
      const VirtualPixelMethod method)

MagickSetImageVirtualPixelMethod() sets the image virtual pixel method.- wand: the magick wand. - method: the image virtual pixel method : UndefinedVirtualPixelMethod, ConstantVirtualPixelMethod,  EdgeVirtualPixelMethod, MirrorVirtualPixelMethod, or TileVirtualPixelMethod. 
=end pod
sub MagickSetImageVirtualPixelMethod(
   Pointer $wand,
   uint32 $method
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageWhitePoint

    MagickBooleanType MagickSetImageWhitePoint(MagickWand *wand,
      const double x,const double y)

MagickSetImageWhitePoint() sets the image chromaticity white point.- wand: the magick wand. - x: the white x-point. - y: the white y-point. 
=end pod
sub MagickSetImageWhitePoint(
   Pointer $wand,
   num64 $x,
   num64 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickShadeImage

    MagickBooleanType MagickShadeImage(MagickWand *wand,
      const MagickBooleanType gray,const double azimuth,
      const double elevation)

MagickShadeImage() shines a distant light on an image to create a
three-dimensional effect. You control the positioning of the light with azimuth
and elevation; azimuth is measured in degrees off the x axis and elevation is
measured in pixels above the Z axis.

- wand: the magick wand.
- gray: A value other than zero shades the intensity of each pixel.
- azimuth, elevation: Define the light source direction. 

=end pod
sub MagickShadeImage(
   Pointer $wand,
   uint32 $gray,
   num64 $azimuth,
   num64 $elevation
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickShadowImage

    MagickBooleanType MagickShadowImage(MagickWand *wand,
      const double opacity,const double sigma,const ssize_t x,const ssize_t y)

MagickShadowImage() simulates an image shadow.- wand: the magick wand. - opacity: percentage transparency. - sigma: the standard deviation of the Gaussian, in pixels. - x: the shadow x-offset. - y: the shadow y-offset. 
=end pod
sub MagickShadowImage(
   Pointer $wand,
   num64 $opacity,
   num64 $sigma,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSharpenImage

    MagickBooleanType MagickSharpenImage(MagickWand *wand,
      const double radius,const double sigma)
    MagickBooleanType MagickSharpenImageChannel(MagickWand *wand,
      const ChannelType channel,const double radius,const double sigma)

MagickSharpenImage() sharpens an image.  We convolve the image with a Gaussian
operator of the given radius and standard deviation (sigma). For reasonable
results, the radius should be larger than sigma.  Use a radius of 0 and
MagickSharpenImage() selects a suitable radius for you.

- wand: the magick wand.
- channel: the image channel(s).
- radius: the radius of the Gaussian, in pixels, not counting the center pixel.
- sigma: the standard deviation of the Gaussian in pixels.

=end pod
sub MagickSharpenImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickSharpenImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickShaveImage

    MagickBooleanType MagickShaveImage(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickShaveImage() shaves pixels from the image edges.  It allocates the memory
necessary for the new Image structure and returns a pointer to the new image.

- wand: the magick wand.
- columns: the number of columns in the scaled image.
- rows: the number of rows in the scaled image.

=end pod
sub MagickShaveImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickShearImage

    MagickBooleanType MagickShearImage(MagickWand *wand,
      const PixelWand *background,const double x_shear,const double y_shear)

MagickShearImage() slides one edge of an image along the X or Y axis, creating a parallelogram.  An X direction shear slides an edge along the X axis, while a Y direction shear slides an edge along the Y axis.  The amount of the shear is controlled by a shear angle.  For X direction shears, x_shear is measured relative to the Y axis, and similarly, for Y direction shears y_shear is measured relative to the X axis.  Empty triangles left over from shearing the image are filled with the background color.- wand: the magick wand. - background: the background pixel wand. - x_shear: the number of degrees to shear the image. - y_shear: the number of degrees to shear the image. 
=end pod
sub MagickShearImage(
   Pointer $wand,
   Pointer $background,
   num64 $x_shear,
   num64 $y_shear
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSigmoidalContrastImage

    MagickBooleanType MagickSigmoidalContrastImage(MagickWand *wand,
      const MagickBooleanType sharpen,const double alpha,const double beta)
    MagickBooleanType MagickSigmoidalContrastImageChannel(MagickWand *wand,
      const ChannelType channel,const MagickBooleanType sharpen,
      const double alpha,const double beta)

MagickSigmoidalContrastImage() adjusts the contrast of an image with a
non-linear sigmoidal contrast algorithm.  Increase the contrast of the image
using a sigmoidal transfer function without saturating highlights or shadows.
Contrast indicates how much to increase the contrast (0 is none; 3 is typical;
20 is pushing it); mid-point indicates where midtones fall in the resultant
image (0 is white; 50 is middle-gray; 100 is black).  Set sharpen to MagickTrue
to increase the image contrast otherwise the contrast is reduced.

- wand: the magick wand.
- channel: Identify which channel to level: RedChannel, GreenChannel,
- sharpen: Increase or decrease image contrast. 
- alpha: strength of the contrast, the larger the number the more
  'threshold-like' it becomes.
- beta: midpoint of the function as a color value 0 to QuantumRange.

=end pod
sub MagickSigmoidalContrastImage(
   Pointer $wand,
   uint32 $sharpen,
   num64 $alpha,
   num64 $beta
)
returns uint32 
is native(&library)
is export { * };

sub MagickSigmoidalContrastImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $sharpen,
   num64 $alpha,
   num64 $beta
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickSimilarityImage

    MagickWand *MagickSimilarityImage(MagickWand *wand,
      const MagickWand *reference,RectangeInfo *offset,double *similarity)

MagickSimilarityImage() compares the reference image of the image and returns the best match offset.  In addition, it returns a similarity image such that an exact match location is completely white and if none of the pixels match, black, otherwise some gray level in-between.- wand: the magick wand. - reference: the reference wand. - offset: the best match offset of the reference image within the image. - similarity: the computed similarity between the images. 
=end pod
sub MagickSimilarityImage(
   Pointer $wand,
   Pointer $reference,
   Pointer $offset,
   CArray[num64] $similarity
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickSketchImage

    MagickBooleanType MagickSketchImage(MagickWand *wand,
      const double radius,const double sigma,const double angle)

MagickSketchImage() simulates a pencil sketch.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, radius should be larger than sigma.  Use a radius of 0 and SketchImage() selects a suitable radius for you. Angle gives the angle of the blurring motion.- wand: the magick wand. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. - angle: Apply the effect along this angle. 
=end pod
sub MagickSketchImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma,
   num64 $angle
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSmushImages

    MagickWand *MagickSmushImages(MagickWand *wand,
      const MagickBooleanType stack,const ssize_t offset)

MagickSmushImages() takes all images from the current image pointer to the end of the image list and smushs them to each other top-to-bottom if the stack parameter is true, otherwise left-to-right.- wand: the magick wand. - stack: By default, images are stacked left-to-right. Set stack to MagickTrue to stack them top-to-bottom. - offset: minimum distance in pixels between images. 
=end pod
sub MagickSmushImages(
   Pointer $wand,
   uint32 $stack,
   uint32 $offset
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickSolarizeImage

    MagickBooleanType MagickSolarizeImage(MagickWand *wand,
      const double threshold)
    MagickBooleanType MagickSolarizeImageChannel(MagickWand *wand,
      const ChannelType channel,const double threshold)

MagickSolarizeImage() applies a special effect to the image, similar to the
effect achieved in a photo darkroom by selectively exposing areas of photo
sensitive paper to light.  Threshold ranges from 0 to QuantumRange and is a
measure of the extent of the solarization.

- wand: the magick wand.
- channel: the image channel(s).
- threshold:  Define the extent of the solarization.  

=end pod
sub MagickSolarizeImage(
   Pointer $wand,
   num64 $threshold
)
returns uint32 
is native(&library)
is export { * };

sub MagickSolarizeImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $threshold
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickSparseColorImage

    MagickBooleanType MagickSparseColorImage(MagickWand *wand,
      const ChannelType channel,const SparseColorMethod method,
      const size_t number_arguments,const double *arguments)

MagickSparseColorImage(), given a set of coordinates, interpolates the colors found at those coordinates, across the whole image, using various methods.- image: the image to be sparseed. - method: the method of image sparseion. <dd> ArcSparseColorion will always ignore source image offset, and always 'bestfit' the destination image with the top left corner offset relative to the polar mapping center. </dd><dd> Bilinear has no simple inverse mapping so will not allow 'bestfit' style of image sparseion. </dd><dd> Affine, Perspective, and Bilinear, will do least squares fitting of the distrotion when more than the minimum number of control point pairs are provided. </dd><dd> Perspective, and Bilinear, will fall back to a Affine sparseion when less than 4 control point pairs are provided. While Affine sparseions will let you use any number of control point pairs, that is Zero pairs is a No-Op (viewport only) distrotion, one pair is a translation and two pairs of control points will do a scale-rotate-translate, without any shearing. </dd>- number_arguments: the number of arguments given for this sparseion method. - arguments: the arguments for this sparseion method. 
=end pod
sub MagickSparseColorImage(
   Pointer $wand,
   uint32 $channel,
   uint32 $method,
   int32 $number_arguments,
   CArray[num64] $arguments
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSpliceImage

    MagickBooleanType MagickSpliceImage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y)

MagickSpliceImage() splices a solid color into the image.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 
=end pod
sub MagickSpliceImage(
   Pointer $wand,
   int32 $width,
   int32 $height,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSpreadImage

    MagickBooleanType MagickSpreadImage(MagickWand *wand,const double radius)

MagickSpreadImage() is a special effects method that randomly displaces each
pixel in a block defined by the radius parameter.

- wand: the magick wand.
- radius:  Choose a random pixel in a neighborhood of this extent.

=end pod
sub MagickSpreadImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickStatisticImage

    MagickBooleanType MagickStatisticImage(MagickWand *wand,
      const StatisticType type,const double width,const size_t height)
    MagickBooleanType MagickStatisticImageChannel(MagickWand *wand,
      const ChannelType channel,const StatisticType type,const double width,
      const size_t height)

MagickStatisticImage() replace each pixel with corresponding statistic from
the neighborhood of the specified width and height.

- wand: the magick wand.
- channel: the image channel(s).
- type: the statistic type (e.g. median, mode, etc.).
- width: the width of the pixel neighborhood.
- height: the height of the pixel neighborhood.

=end pod
sub MagickStatisticImage(
   Pointer $wand,
   uint32 $type,
   num64 $width,
   uint32 $height
)
returns uint32 
is native(&library)
is export { * };

sub MagickStatisticImageChannel(
   Pointer $wand,
   uint32 $channel,
   uint32 $type,
   num64 $width,
   int32 $height
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickSteganoImage

    MagickWand *MagickSteganoImage(MagickWand *wand,
      const MagickWand *watermark_wand,const ssize_t offset)

MagickSteganoImage() hides a digital watermark within the image. Recover the hidden watermark later to prove that the authenticity of an image.  Offset defines the start position within the image to hide the watermark.- wand: the magick wand. - watermark_wand: the watermark wand. - offset: Start hiding at this offset into the image. 
=end pod
sub MagickSteganoImage(
   Pointer $wand,
   Pointer $watermark_wand,
   uint32 $offset
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickStereoImage

    MagickWand *MagickStereoImage(MagickWand *wand,
      const MagickWand *offset_wand)

MagickStereoImage() composites two images and produces a single image that is the composite of a left and right image of a stereo pair- wand: the magick wand. - offset_wand: Another image wand. 
=end pod
sub MagickStereoImage(
   Pointer $wand,
   Pointer $offset_wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickStripImage

    MagickBooleanType MagickStripImage(MagickWand *wand)

MagickStripImage() strips an image of all profiles and comments.- wand: the magick wand. 
=end pod
sub MagickStripImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSwirlImage

    MagickBooleanType MagickSwirlImage(MagickWand *wand,const double degrees)

MagickSwirlImage() swirls the pixels about the center of the image, where
degrees indicates the sweep of the arc through which each pixel is moved. You
get a more dramatic effect as the degrees move from 1 to 360.

- wand: the magick wand.
- degrees: Define the tightness of the swirling effect.

=end pod
sub MagickSwirlImage(
   Pointer $wand,
   num64 $degrees
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTextureImage

    MagickWand *MagickTextureImage(MagickWand *wand,
      const MagickWand *texture_wand)

MagickTextureImage() repeatedly tiles the texture image across and down the image canvas.- wand: the magick wand. - texture_wand: the texture wand 
=end pod
sub MagickTextureImage(
   Pointer $wand,
   Pointer $texture_wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickThresholdImage

    MagickBooleanType MagickThresholdImage(MagickWand *wand,
      const double threshold)
    MagickBooleanType MagickThresholdImageChannel(MagickWand *wand,
      const ChannelType channel,const double threshold)

MagickThresholdImage() changes the value of individual pixels based on the intensity of each pixel compared to threshold.  The result is a high-contrast, two color image.- wand: the magick wand. - channel: the image channel(s). - threshold: Define the threshold value. 
=end pod
sub MagickThresholdImage(
   Pointer $wand,
   num64 $threshold
)
returns uint32 
is native(&library)
is export { * };

sub MagickThresholdImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $threshold
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickThumbnailImage

    MagickBooleanType MagickThumbnailImage(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickThumbnailImage()  changes the size of an image to the given dimensions and removes any associated profiles.  The goal is to produce small low cost thumbnail images suited for display on the Web.- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. 
=end pod
sub MagickThumbnailImage(
   Pointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTintImage

    MagickBooleanType MagickTintImage(MagickWand *wand,
      const PixelWand *tint,const PixelWand *opacity)

MagickTintImage() applies a color vector to each pixel in the image.  The length of the vector is 0 for black and white and at its maximum for the midtones.  The vector weighting function is f(x)=(1-(4.0\*((x-0.5)\*(x-0.5)))).- wand: the magick wand. - tint: the tint pixel wand. - opacity: the opacity pixel wand. 
=end pod
sub MagickTintImage(
   Pointer $wand,
   Pointer $tint,
   Pointer $opacity
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTransformImage

    MagickWand *MagickTransformImage(MagickWand *wand,const char *crop,
      const char *geometry)

MagickTransformImage() is a convenience method that behaves like MagickResizeImage() or MagickCropImage() but accepts scaling and/or cropping information as a region geometry specification.  If the operation fails, a NULL image handle is returned.- wand: the magick wand. - crop: A crop geometry string.  This geometry defines a subregion of the image to crop. - geometry: An image geometry string.  This geometry defines the final size of the image. 
=end pod
sub MagickTransformImage(
   Pointer $wand,
   Str $crop,
   Str $geometry
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickTransformImageColorspace

    MagickBooleanType MagickTransformImageColorspace(MagickWand *wand,
      const ColorspaceType colorspace)

MagickTransformImageColorspace() transform the image colorspace,  setting
theimages colorspace while transforming the images data to that colorspace.

- wand: the magick wand.
- colorspace: the image colorspace:
  UndefinedColorspace, sRGBColorspace, RGBColorspace, GRAYColorspace,
  OHTAColorspace, XYZColorspace, YCbCrColorspace, YCCColorspace, YIQColorspace,
  YPbPrColorspace, YPbPrColorspace, YUVColorspace, CMYKColorspace, HSLColorspace,
  HWBColorspace.

=end pod
sub MagickTransformImageColorspace(
   Pointer $wand,
   uint32 $colorspace
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTransparentPaintImage

    MagickBooleanType MagickTransparentPaintImage(MagickWand *wand,
      const PixelWand *target,const double alpha,const double fuzz,
      const MagickBooleanType invert)

MagickTransparentPaintImage() changes any pixel that matches color with the color defined by fill.- wand: the magick wand. - target: Change this target color to specified opacity value within the image. - alpha: the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. - invert: paint any pixel that does not match the target color. 
=end pod
sub MagickTransparentPaintImage(
   Pointer $wand,
   Pointer $target,
   num64 $alpha,
   num64 $fuzz,
   uint32 $invert
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTransposeImage

    MagickBooleanType MagickTransposeImage(MagickWand *wand)

MagickTransposeImage() creates a vertical mirror image by reflecting the pixels around the central x-axis while rotating them 90-degrees.- wand: the magick wand. 
=end pod
sub MagickTransposeImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTransverseImage

    MagickBooleanType MagickTransverseImage(MagickWand *wand)

MagickTransverseImage() creates a horizontal mirror image by reflecting the pixels around the central y-axis while rotating them 270-degrees.- wand: the magick wand. 
=end pod
sub MagickTransverseImage(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTrimImage

    MagickBooleanType MagickTrimImage(MagickWand *wand,const double fuzz)

MagickTrimImage() remove edges that are the background color from the image.- wand: the magick wand. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. 
=end pod
sub MagickTrimImage(
   Pointer $wand,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickUniqueImageColors

    MagickBooleanType MagickUniqueImageColors(MagickWand *wand)

MagickUniqueImageColors() discards all but one of any pixel color.- wand: the magick wand. 
=end pod
sub MagickUniqueImageColors(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickUnsharpMaskImage

    MagickBooleanType MagickUnsharpMaskImage(MagickWand *wand,
      const double radius,const double sigma,const double amount,
      const double threshold)
    MagickBooleanType MagickUnsharpMaskImageChannel(MagickWand *wand,
      const ChannelType channel,const double radius,const double sigma,
      const double amount,const double threshold)

MagickUnsharpMaskImage() sharpens an image.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, radius should be larger than sigma.  Use a radius of 0 and UnsharpMaskImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. - amount: the percentage of the difference between the original and the blur image that is added back into the original. - threshold: the threshold in pixels needed to apply the diffence amount. 
=end pod
sub MagickUnsharpMaskImage(
   Pointer $wand,
   num64 $radius,
   num64 $sigma,
   num64 $amount,
   num64 $threshold
)
returns uint32 
is native(&library)
is export { * };

sub MagickUnsharpMaskImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $radius,
   num64 $sigma,
   num64 $amount,
   num64 $threshold
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 MagickVignetteImage

    MagickBooleanType MagickVignetteImage(MagickWand *wand,
      const double black_point,const double white_point,const ssize_t x,
      const ssize_t y)

MagickVignetteImage() softens the edges of the image in vignette style.- wand: the magick wand. - black_point: the black point. - white_point: the white point. - x, y:  Define the x and y ellipse offset. 
=end pod
sub MagickVignetteImage(
   Pointer $wand,
   num64 $black_point,
   num64 $white_point,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickWaveImage

    MagickBooleanType MagickWaveImage(MagickWand *wand,const double amplitude,
      const double wave_length)

MagickWaveImage()  creates a "ripple" effect in the image by shifting the pixels vertically along a sine wave whose amplitude and wavelength is specified by the given parameters.- wand: the magick wand. - amplitude, wave_length:  Define the amplitude and wave length of the sine wave. 
=end pod
sub MagickWaveImage(
   Pointer $wand,
   num64 $amplitude,
   num64 $wave_length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickWhiteThresholdImage

    MagickBooleanType MagickWhiteThresholdImage(MagickWand *wand,
      const PixelWand *threshold)

MagickWhiteThresholdImage() is like ThresholdImage() but  force all pixels above the threshold into white while leaving all pixels below the threshold unchanged.- wand: the magick wand. - threshold: the pixel wand. 
=end pod
sub MagickWhiteThresholdImage(
   Pointer $wand,
   Pointer $threshold
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickWriteImage

    MagickBooleanType MagickWriteImage(MagickWand *wand,
      const char *filename)

MagickWriteImage() writes an image to the specified filename.  If the filename parameter is NULL, the image is written to the filename set by MagickReadImage() or MagickSetImageFilename().- wand: the magick wand. - filename: the image filename. 
=end pod
sub MagickWriteImage(
   Pointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickWriteImages

    MagickBooleanType MagickWriteImages(MagickWand *wand,
      const char *filename,const MagickBooleanType adjoin)

MagickWriteImages() writes an image or image sequence.- wand: the magick wand. - filename: the image filename. - adjoin: join images into a single multi-image file. 
=end pod
sub MagickWriteImages(
   Pointer $wand,
   Str $filename,
   uint32 $adjoin
)
returns uint32 
is native(&library)
is export { * };
