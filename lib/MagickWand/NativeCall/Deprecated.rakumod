
use v6;

unit module MagickWand::NativeCall::Deprecated;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 MagickAverageImages

    MagickWand *MagickAverageImages(MagickWand *wand)

MagickAverageImages() average a set of images.
=end pod
sub MagickAverageImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 ClonePixelView

    PixelView *ClonePixelView(const PixelView *pixel_view)

ClonePixelView() makes a copy of the specified pixel view.
=end pod
sub ClonePixelView(
   Pointer $pixel_view
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DestroyPixelView

    PixelView *DestroyPixelView(PixelView *pixel_view,
      const size_t number_wands,const size_t number_threads)

DestroyPixelView() deallocates memory associated with a pixel view.
=end pod
sub DestroyPixelView(
   Pointer $pixel_view,
   int32 $number_wands,
   int32 $number_threads
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DuplexTransferPixelViewIterator

    MagickBooleanType DuplexTransferPixelViewIterator(PixelView *source,
      PixelView *duplex,PixelView *destination,
      DuplexTransferPixelViewMethod transfer,void *context)

DuplexTransferPixelViewIterator() iterates over three pixel views in parallel and calls your transfer method for each scanline of the view.  The source and duplex pixel region is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension.  However, the destination pixel view is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.Use this pragma:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback transfer method that must be executed by a single thread at a time.
=end pod
sub DuplexTransferPixelViewIterator(
   Pointer $source,
   Pointer $duplex,
   Pointer $destination,
   uint32 $transfer,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewException

    char *GetPixelViewException(const PixelWand *pixel_view,
      ExceptionType *severity)

GetPixelViewException() returns the severity, reason, and description of any error that occurs when utilizing a pixel view.
=end pod
sub GetPixelViewException(
   Pointer $pixel_view,
   Pointer $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewHeight

    size_t GetPixelViewHeight(const PixelView *pixel_view)

GetPixelViewHeight() returns the pixel view height.
=end pod
sub GetPixelViewHeight(
   Pointer $pixel_view
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewIterator

    MagickBooleanType GetPixelViewIterator(PixelView *source,
      GetPixelViewMethod get,void *context)

GetPixelViewIterator() iterates over the pixel view in parallel and calls your get method for each scanline of the view.  The pixel region is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension.  Any updates to the pixels in your callback are ignored.Use this pragma:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback get method that must be executed by a single thread at a time.
=end pod
sub GetPixelViewIterator(
   Pointer $source,
   uint32 $get,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewPixels

    PixelWand *GetPixelViewPixels(const PixelView *pixel_view)

GetPixelViewPixels() returns the pixel view pixel_wands.
=end pod
sub GetPixelViewPixels(
   Pointer $pixel_view
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewWand

    MagickWand *GetPixelViewWand(const PixelView *pixel_view)

GetPixelViewWand() returns the magick wand associated with the pixel view.
=end pod
sub GetPixelViewWand(
   Pointer $pixel_view
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewWidth

    size_t GetPixelViewWidth(const PixelView *pixel_view)

GetPixelViewWidth() returns the pixel view width.
=end pod
sub GetPixelViewWidth(
   Pointer $pixel_view
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewX

    ssize_t GetPixelViewX(const PixelView *pixel_view)

GetPixelViewX() returns the pixel view x offset.
=end pod
sub GetPixelViewX(
   Pointer $pixel_view
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 GetPixelViewY

    ssize_t GetPixelViewY(const PixelView *pixel_view)

GetPixelViewY() returns the pixel view y offset.
=end pod
sub GetPixelViewY(
   Pointer $pixel_view
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 IsPixelView

    MagickBooleanType IsPixelView(const PixelView *pixel_view)

IsPixelView() returns MagickTrue if the the parameter is verified as a pixel view container.
=end pod
sub IsPixelView(
   Pointer $pixel_view
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickClipPathImage

    MagickBooleanType MagickClipPathImage(MagickWand *wand,
      const char *pathname,const MagickBooleanType inside)

MagickClipPathImage() clips along the named paths from the 8BIM profile, if present. Later operations take effect inside the path.  Id may be a number if preceded with #, to work on a numbered path, e.g., "#1" to use the first path.
=end pod
sub MagickClipPathImage(
   Pointer $wand,
   Str $pathname,
   uint32 $inside
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFillAlpha

    double DrawGetFillAlpha(const DrawingWand *wand)

DrawGetFillAlpha() returns the alpha used when drawing using the fill color or fill texture.  Fully opaque is 1.0.
=end pod
sub DrawGetFillAlpha(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeAlpha

    double DrawGetStrokeAlpha(const DrawingWand *wand)

DrawGetStrokeAlpha() returns the alpha of stroked object outlines.
=end pod
sub DrawGetStrokeAlpha(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 DrawPeekGraphicWand

    DrawInfo *DrawPeekGraphicWand(const DrawingWand *wand)

DrawPeekGraphicWand() returns the current drawing wand.
=end pod
sub DrawPeekGraphicWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DrawPopGraphicContext

    MagickBooleanType DrawPopGraphicContext(DrawingWand *wand)

DrawPopGraphicContext() destroys the current drawing wand and returns to the previously pushed drawing wand. Multiple drawing wands may exist. It is an error to attempt to pop more drawing wands than have been pushed, and it is proper form to pop all drawing wands which have been pushed.
=end pod
sub DrawPopGraphicContext(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawPushGraphicContext

    MagickBooleanType DrawPushGraphicContext(DrawingWand *wand)

DrawPushGraphicContext() clones the current drawing wand to create a new drawing wand.  The original drawing wand(s) may be returned to by invoking PopDrawingWand().  The drawing wands are stored on a drawing wand stack.  For every Pop there must have already been an equivalent Push.
=end pod
sub DrawPushGraphicContext(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFillAlpha

    void DrawSetFillAlpha(DrawingWand *wand,const double fill_alpha)

DrawSetFillAlpha() sets the alpha to use when drawing using the fill color or fill texture.  Fully opaque is 1.0.
=end pod
sub DrawSetFillAlpha(
   Pointer $wand,
   num64 $fill_alpha
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeAlpha

    void DrawSetStrokeAlpha(DrawingWand *wand,const double stroke_alpha)

DrawSetStrokeAlpha() specifies the alpha of stroked object outlines.
=end pod
sub DrawSetStrokeAlpha(
   Pointer $wand,
   num64 $stroke_alpha
)
is native(&library)
is export { * };


=begin pod
=head1 MagickColorFloodfillImage

    MagickBooleanType MagickColorFloodfillImage(MagickWand *wand,
      const PixelWand *fill,const double fuzz,const PixelWand *bordercolor,
      const ssize_t x,const ssize_t y)

MagickColorFloodfillImage() changes the color value of any pixel that matches target and is an immediate neighbor.  If the method FillToBorderMethod is specified, the color value is changed for any neighbor pixel that does not match the bordercolor member of image.
=end pod
sub MagickColorFloodfillImage(
   Pointer $wand,
   Pointer $fill,
   num64 $fuzz,
   Pointer $bordercolor,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDescribeImage

    const char *MagickDescribeImage(MagickWand *wand)

MagickDescribeImage() identifies an image by printing its attributes to the file.  Attributes include the image width, height, size, and others.
=end pod
sub MagickDescribeImage(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickFlattenImages

    MagickWand *MagickFlattenImages(MagickWand *wand)

MagickFlattenImages() merges a sequence of images.  This useful for combining Photoshop layers into a single image.
=end pod
sub MagickFlattenImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageAttribute

    char *MagickGetImageAttribute(MagickWand *wand,const char *property)

MagickGetImageAttribute() returns a value associated with the specified property.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetImageAttribute(
   Pointer $wand,
   Str $property
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageMatte

    size_t MagickGetImageMatte(MagickWand *wand)

MagickGetImageMatte() returns MagickTrue if the image has a matte channel otherwise MagickFalse.
=end pod
sub MagickGetImageMatte(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImagePixels

    MagickBooleanType MagickGetImagePixels(MagickWand *wand,
      const ssize_t x,const ssize_t y,const size_t columns,
      const size_t rows,const char *map,const StorageType storage,
      void *pixels)

MagickGetImagePixels() extracts pixel data from an image and returns it to you.  The method returns MagickTrue on success otherwise MagickFalse if an error is encountered.  The data is returned as char, short int, int, ssize_t, float, or double in the order specified by map.Suppose you want to extract the first scanline of a 640x480 image as character data in red-green-blue order:<pre class="text">MagickGetImagePixels(wand,0,0,640,1,"RGB",CharPixel,pixels);</pre>
=end pod
sub MagickGetImagePixels(
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
=head1 MagickGetImageSize

    MagickBooleanType MagickGetImageSize(MagickWand *wand,
      MagickSizeType *length)

MagickGetImageSize() returns the image length in bytes.
=end pod
sub MagickGetImageSize(
   Pointer $wand,
   Pointer $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMapImage

    MagickBooleanType MagickMapImage(MagickWand *wand,
      const MagickWand *map_wand,const MagickBooleanType dither)

MagickMapImage() replaces the colors of an image with the closest color from a reference image.
=end pod
sub MagickMapImage(
   Pointer $wand,
   Pointer $map_wand,
   uint32 $dither
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMatteFloodfillImage

    MagickBooleanType MagickMatteFloodfillImage(MagickWand *wand,
      const double alpha,const double fuzz,const PixelWand *bordercolor,
      const ssize_t x,const ssize_t y)

MagickMatteFloodfillImage() changes the transparency value of any pixel that matches target and is an immediate neighbor.  If the method FillToBorderMethod is specified, the transparency value is changed for any neighbor pixel that does not match the bordercolor member of image.
=end pod
sub MagickMatteFloodfillImage(
   Pointer $wand,
   num64 $alpha,
   num64 $fuzz,
   Pointer $bordercolor,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMedianFilterImage

    MagickBooleanType MagickMedianFilterImage(MagickWand *wand,
      const double radius)

MagickMedianFilterImage() applies a digital filter that improves the quality of a noisy image.  Each pixel is replaced by the median in a set of neighboring pixels as defined by radius.
=end pod
sub MagickMedianFilterImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMinimumImages

    MagickWand *MagickMinimumImages(MagickWand *wand)

MagickMinimumImages() returns the minimum intensity of an image sequence.
=end pod
sub MagickMinimumImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickModeImage

    MagickBooleanType MagickModeImage(MagickWand *wand,
      const double radius)

MagickModeImage() makes each pixel the 'predominant color' of the neighborhood of the specified radius.
=end pod
sub MagickModeImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMosaicImages

    MagickWand *MagickMosaicImages(MagickWand *wand)

MagickMosaicImages() inlays an image sequence to form a single coherent picture.  It returns a wand with each image in the sequence composited at the location defined by the page offset of the image.
=end pod
sub MagickMosaicImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickOpaqueImage

    MagickBooleanType MagickOpaqueImage(MagickWand *wand,
      const PixelWand *target,const PixelWand *fill,const double fuzz)

MagickOpaqueImage() changes any pixel that matches color with the color defined by fill.
=end pod
sub MagickOpaqueImage(
   Pointer $wand,
   Pointer $target,
   Pointer $fill,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPaintFloodfillImage

    MagickBooleanType MagickPaintFloodfillImage(MagickWand *wand,
      const ChannelType channel,const PixelWand *fill,const double fuzz,
      const PixelWand *bordercolor,const ssize_t x,const ssize_t y)

MagickPaintFloodfillImage() changes the color value of any pixel that matches target and is an immediate neighbor.  If the method FillToBorderMethod is specified, the color value is changed for any neighbor pixel that does not match the bordercolor member of image.
=end pod
sub MagickPaintFloodfillImage(
   Pointer $wand,
   uint32 $channel,
   Pointer $fill,
   num64 $fuzz,
   Pointer $bordercolor,
   uint32 $x,
   uint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPaintOpaqueImage

    MagickBooleanType MagickPaintOpaqueImage(MagickWand *wand,
      const PixelWand *target,const PixelWand *fill,const double fuzz)
    MagickBooleanType MagickPaintOpaqueImageChannel(MagickWand *wand,
      const ChannelType channel,const PixelWand *target,
      const PixelWand *fill,const double fuzz)

MagickPaintOpaqueImage() changes any pixel that matches color with the color defined by fill.
=end pod
sub MagickPaintOpaqueImage(
   Pointer $wand,
   Pointer $target,
   Pointer $fill,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };

sub MagickPaintOpaqueImageChannel(
   Pointer $wand,
   uint32 $channel,
   Pointer $target,
   Pointer $fill,
   num64 $fuzz
)
returns 
uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickPaintTransparentImage

    MagickBooleanType MagickPaintTransparentImage(MagickWand *wand,
      const PixelWand *target,const double alpha,const double fuzz)

MagickPaintTransparentImage() changes any pixel that matches color with the color defined by fill.
=end pod
sub MagickPaintTransparentImage(
   Pointer $wand,
   Pointer $target,
   num64 $alpha,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRadialBlurImage

    MagickBooleanType MagickRadialBlurImage(MagickWand *wand,
      const double angle)
    MagickBooleanType MagickRadialBlurImageChannel(MagickWand *wand,
      const ChannelType channel,const double angle)

MagickRadialBlurImage() radial blurs an image.
=end pod
sub MagickRadialBlurImage(
   Pointer $wand,
   num64 $angle
)
returns uint32 
is native(&library)
is export { * };

sub MagickRadialBlurImageChannel(
   Pointer $wand,
   uint32 $channel,
   num64 $angle
)
returns 
uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRecolorImage

    MagickBooleanType MagickRecolorImage(MagickWand *wand,
      const size_t order,const double *color_matrix)

MagickRecolorImage() apply color transformation to an image. The method permits saturation changes, hue rotation, luminance to alpha, and various other effects.  Although variable-sized transformation matrices can be used, typically one uses a 5x5 matrix for an RGBA image and a 6x6 for CMYKA (or RGBA with offsets).  The matrix is similar to those used by Adobe Flash except offsets are in column 6 rather than 5 (in support of CMYKA images) and offsets are normalized (divide Flash offset by 255).
=end pod
sub MagickRecolorImage(
   Pointer $wand,
   int32 $order,
   CArray[num64] $color_matrix
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickReduceNoiseImage

    MagickBooleanType MagickReduceNoiseImage(MagickWand *wand,
      const double radius)

MagickReduceNoiseImage() smooths the contours of an image while still preserving
edge information.  The algorithm works by replacing each pixel with its neighbor
closest in value.  A neighbor is defined by radius.  Use a radius of 0 and
ReduceNoise() selects a suitable radius for you.

=end pod
sub MagickReduceNoiseImage(
   Pointer $wand,
   num64 $radius
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickMaximumImages

    MagickWand *MagickMaximumImages(MagickWand *wand)

MagickMaximumImages() returns the maximum intensity of an image sequence.
=end pod
sub MagickMaximumImages(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageAttribute

    MagickBooleanType MagickSetImageAttribute(MagickWand *wand,
      const char *property,const char *value)

MagickSetImageAttribute() associates a property with an image.
=end pod
sub MagickSetImageAttribute(
   Pointer $wand,
   Str $property,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageIndex

    MagickBooleanType MagickSetImageIndex(MagickWand *wand,
      const ssize_t index)

MagickSetImageIndex() set the current image to the position of the list specified with the index parameter.
=end pod
sub MagickSetImageIndex(
   Pointer $wand,
   uint32 $index
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickTransparentImage

    MagickBooleanType MagickTransparentImage(MagickWand *wand,
      const PixelWand *target,const double alpha,const double fuzz)

MagickTransparentImage() changes any pixel that matches color with the color defined by fill.
=end pod
sub MagickTransparentImage(
   Pointer $wand,
   Pointer $target,
   num64 $alpha,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRegionOfInterestImage

    MagickWand *MagickRegionOfInterestImage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y)

MagickRegionOfInterestImage() extracts a region of the image and returns it as a new wand.
=end pod
sub MagickRegionOfInterestImage(
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
=head1 MagickSetImagePixels

    MagickBooleanType MagickSetImagePixels(MagickWand *wand,
      const ssize_t x,const ssize_t y,const size_t columns,
      const size_t rows,const char *map,const StorageType storage,
      const void *pixels)

MagickSetImagePixels() accepts pixel datand stores it in the image at the location you specify.  The method returns MagickFalse on success otherwise MagickTrue if an error is encountered.  The pixel data can be either char, short int, int, ssize_t, float, or double in the order specified by map.Suppose your want to upload the first scanline of a 640x480 image from character data in red-green-blue order:<pre class="text">MagickSetImagePixels(wand,0,0,640,1,"RGB",CharPixel,pixels);</pre>
=end pod
sub MagickSetImagePixels(
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
=head1 MagickWriteImageBlob

    unsigned char *MagickWriteImageBlob(MagickWand *wand,size_t *length)

MagickWriteImageBlob() implements direct to memory image formats.  It returns the image as a blob and its length.   Use MagickSetFormat() to set the format of the returned blob (GIF, JPEG,  PNG, etc.).Use MagickRelinquishMemory() to free the blob when you are done with it.
=end pod
sub MagickWriteImageBlob(
   Pointer $wand,
   Pointer[int32] $length
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 NewPixelView

    PixelView *NewPixelView(MagickWand *wand)

NewPixelView() returns a pixel view required for all other methods in the Pixel View API.
=end pod
sub NewPixelView(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 NewPixelViewRegion

    PixelView *NewPixelViewRegion(MagickWand *wand,const ssize_t x,
      const ssize_t y,const size_t width,const size_t height)

NewPixelViewRegion() returns a pixel view required for all other methods in the Pixel View API.
=end pod
sub NewPixelViewRegion(
   Pointer $wand,
   uint32 $x,
   uint32 $y,
   int32 $width,
   int32 $height
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 PixelGetNextRow

    PixelWand **PixelGetNextRow(Pointeriterator,
      size_t *number_wands)

PixelGetNextRow() returns the next row as an array of pixel wands from the pixel iterator.
=end pod
sub PixelGetNextRow(
   Pointer $iterator,
   Pointer[int32] $number_wands
)
returns Pointer[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 PixelIteratorGetException

    char *PixelIteratorGetException(const Pointeriterator,
      ExceptionType *severity)

PixelIteratorGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.
=end pod
sub PixelIteratorGetException(
   Pointer $iterator,
   Pointer $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 SetPixelViewIterator

    MagickBooleanType SetPixelViewIterator(PixelView *destination,
      SetPixelViewMethod set,void *context)

SetPixelViewIterator() iterates over the pixel view in parallel and calls your set method for each scanline of the view.  The pixel region is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension.  The pixels are initiallly undefined and any settings you make in the callback method are automagically synced back to your image.Use this pragma:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback set method that must be executed by a single thread at a time.
=end pod
sub SetPixelViewIterator(
   Pointer $destination,
   uint32 $set,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 TransferPixelViewIterator

    MagickBooleanType TransferPixelViewIterator(PixelView *source,
      PixelView *destination,TransferPixelViewMethod transfer,void *context)

TransferPixelViewIterator() iterates over two pixel views in parallel and calls your transfer method for each scanline of the view.  The source pixel region is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension. However, the destination pixel view is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.Use this pragma:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback transfer method that must be executed by a single thread at a time.
=end pod
sub TransferPixelViewIterator(
   Pointer $source,
   Pointer $destination,
   uint32 $transfer,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 UpdatePixelViewIterator

    MagickBooleanType UpdatePixelViewIterator(PixelView *source,
      UpdatePixelViewMethod update,void *context)

UpdatePixelViewIterator() iterates over the pixel view in parallel and calls your update method for each scanline of the view.  The pixel region is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.  Updates to pixels in your callback are automagically synced back to the image.Use this pragma:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback update method that must be executed by a single thread at a time.
=end pod
sub UpdatePixelViewIterator(
   Pointer $source,
   uint32 $update,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


