
use v6;

unit module MagickWand::NativeCall::Wand;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 ClearMagickWand
=head2 C

    void ClearMagickWand(MagickWand *wand)

ClearMagickWand() clears resources associated with the wand, leaving the wand blank, and ready to be used for a new set of images.
=end pod
sub ClearMagickWand(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 CloneMagickWand
=head2 C

    MagickWand *CloneMagickWand(const MagickWand *wand)

CloneMagickWand() makes an exact copy of the specified wand.
=end pod
sub CloneMagickWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DestroyMagickWand
=head2 C

    MagickWand *DestroyMagickWand(MagickWand *wand)

DestroyMagickWand() deallocates memory associated with an MagickWand.
=end pod
sub DestroyMagickWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 IsMagickWand
=head2 C

    MagickBooleanType IsMagickWand(const MagickWand *wand)

IsMagickWand() returns MagickTrue if the wand is verified as a magick wand.
=end pod
sub IsMagickWand(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickClearException
=head2 C

    MagickBooleanType MagickClearException(MagickWand *wand)

MagickClearException() clears any exceptions associated with the wand.
=end pod
sub MagickClearException(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetException
=head2 C

    char *MagickGetException(const MagickWand *wand,ExceptionType *severity)

MagickGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.
=end pod
sub MagickGetException(
   Pointer $wand,
   Pointer $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetExceptionType
=head2 C

    ExceptionType MagickGetExceptionType(const MagickWand *wand)

MagickGetExceptionType() returns the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.
=end pod
sub MagickGetExceptionType(
   Pointer $wand
)
returns Pointer 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetIteratorIndex
=head2 C

    ssize_t MagickGetIteratorIndex(MagickWand *wand)

MagickGetIteratorIndex() returns the position of the iterator in the image list.
=end pod
sub MagickGetIteratorIndex(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickQueryConfigureOption
=head2 C

    char *MagickQueryConfigureOption(const char *option)

MagickQueryConfigureOption() returns the value associated with the specified configure option.
=end pod
sub MagickQueryConfigureOption(
   Str $option
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickQueryConfigureOptions
=head2 C

    char **MagickQueryConfigureOptions(const char *pattern,
      size_t *number_options)

MagickQueryConfigureOptions() returns any configure options that match the specified pattern (e.g.  "\*" for all).  Options include NAME, VERSION, LIB_VERSION, etc.
=end pod
sub MagickQueryConfigureOptions(
   Str $pattern,
   Pointer[int32] $number_options
)
returns CArray[Str]
is native(&library)
is export { * };


=begin pod
=head1 MagickQueryFontMetrics
=head2 C

    double *MagickQueryFontMetrics(MagickWand *wand,
      const DrawingWand *drawing_wand,const char *text)

MagickQueryFontMetrics() returns a 13 element array representing the following font metrics:<pre class="text">    Element Description    -------------------------------------------------    0 character width    1 character height    2 ascender    3 descender    4 text width    5 text height    6 maximum horizontal advance    7 bounding box: x1    8 bounding box: y1    9 bounding box: x2   10 bounding box: y2   11 origin: x   12 origin: y</pre>
=end pod
sub MagickQueryFontMetrics(
   Pointer $wand,
   Pointer $drawing_wand,
   Str $text
)
returns CArray[num64]
is native(&library)
is export { * };


=begin pod
=head1 MagickQueryMultilineFontMetrics
=head2 C

    double *MagickQueryMultilineFontMetrics(MagickWand *wand,
      const DrawingWand *drawing_wand,const char *text)

MagickQueryMultilineFontMetrics() returns a 13 element array representing the following font metrics:<pre class="text">    Element Description    -------------------------------------------------    0 character width    1 character height    2 ascender    3 descender    4 text width    5 text height    6 maximum horizontal advance    7 bounding box: x1    8 bounding box: y1    9 bounding box: x2   10 bounding box: y2   11 origin: x   12 origin: y</pre>This method is like MagickQueryFontMetrics() but it returns the maximum text width and height for multiple lines of text.
=end pod
sub MagickQueryMultilineFontMetrics(
   Pointer $wand,
   Pointer $drawing_wand,
   Str $text
)
returns CArray[num64]
is native(&library)
is export { * };


=begin pod
=head1 MagickQueryFonts
=head2 C

    char **MagickQueryFonts(const char *pattern,size_t *number_fonts)

MagickQueryFonts() returns any font that match the specified pattern (e.g. "\*" for all).
=end pod
sub MagickQueryFonts(
   Str $pattern,
   Pointer[int32] $number_fonts
)
returns CArray[Str]
is native(&library)
is export { * };


=begin pod
=head1 MagickQueryFormats
=head2 C

    char **MagickQueryFormats(const char *pattern,size_t *number_formats)

MagickQueryFormats() returns any image formats that match the specified pattern (e.g.  "\*" for all).
=end pod
sub MagickQueryFormats(
   Str $pattern,
   Pointer[int32] $number_formats
)
returns CArray[Str]
is native(&library)
is export { * };


=begin pod
=head1 MagickRelinquishMemory
=head2 C

    void *MagickRelinquishMemory(void *resource)

MagickRelinquishMemory() relinquishes memory resources returned by such methods as MagickIdentifyImage(), MagickGetException(), etc.
=end pod
sub MagickRelinquishMemory(
   Pointer[void] $resource
)
returns Pointer[void]
is native(&library)
is export { * };


=begin pod
=head1 MagickResetIterator
=head2 C

    void MagickResetIterator(MagickWand *wand)

MagickResetIterator() resets the wand iterator.It is typically used either before iterating though images, or before calling specific functions such as  MagickAppendImages() to append all images together.Afterward you can use MagickNextImage() to iterate over all the images in a wand container, starting with the first image.Using this before MagickAddImages() or MagickReadImages() will cause new images to be inserted between the first and second image.
=end pod
sub MagickResetIterator(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFirstIterator
=head2 C

    void MagickSetFirstIterator(MagickWand *wand)

MagickSetFirstIterator() sets the wand iterator to the first image.After using any images added to the wand using MagickAddImage() or MagickReadImage() will be prepended before any image in the wand.Also the current image has been set to the first image (if any) in the Magick Wand.  Using MagickNextImage() will then set teh current image to the second image in the list (if present).This operation is similar to MagickResetIterator() but differs in how MagickAddImage(), MagickReadImage(), and MagickNextImage() behaves afterward.
=end pod
sub MagickSetFirstIterator(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 MagickSetIteratorIndex
=head2 C

    MagickBooleanType MagickSetIteratorIndex(MagickWand *wand,
      const ssize_t index)

MagickSetIteratorIndex() set the iterator to the given position in the image list specified with the index parameter.  A zero index will set the first image as current, and so on.  Negative indexes can be used to specify an image relative to the end of the images in the wand, with -1 being the last image in the wand.If the index is invalid (range too large for number of images in wand) the function will return MagickFalse, but no 'exception' will be raised, as it is not actually an error.  In that case the current image will not change.After using any images added to the wand using MagickAddImage() or MagickReadImage() will be added after the image indexed, regardless of if a zero (first image in list) or negative index (from end) is used.Jumping to index 0 is similar to MagickResetIterator() but differs in how MagickNextImage() behaves afterward.
=end pod
sub MagickSetIteratorIndex(
   Pointer $wand,
   uint32 $index
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetLastIterator
=head2 C

    void MagickSetLastIterator(MagickWand *wand)

MagickSetLastIterator() sets the wand iterator to the last image.The last image is actually the current image, and the next use of MagickPreviousImage() will not change this allowing this function to be used to iterate over the images in the reverse direction. In this sense it is more like  MagickResetIterator() than MagickSetFirstIterator().Typically this function is used before MagickAddImage(), MagickReadImage() functions to ensure new images are appended to the very end of wand's image list.
=end pod
sub MagickSetLastIterator(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 MagickWandGenesis
=head2 C

    void MagickWandGenesis(void)

MagickWandGenesis() initializes the MagickWand environment.
=end pod
sub MagickWandGenesis()
is native(&library)
is export { * };


=begin pod
=head1 MagickWandTerminus
=head2 C

    void MagickWandTerminus(void)

MagickWandTerminus() terminates the MagickWand environment.
=end pod
sub MagickWandTerminus()
is native(&library)
is export { * };


=begin pod
=head1 NewMagickWand
=head2 C

    MagickWand *NewMagickWand(void)

NewMagickWand() returns a wand required for all other methods in the API. A fatal exception is thrown if there is not enough memory to allocate the wand.   Use DestroyMagickWand() to dispose of the wand when it is no longer needed.
=end pod
sub NewMagickWand()
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 NewMagickWandFromImage
=head2 C

    MagickWand *NewMagickWandFromImage(const Image *image)

NewMagickWandFromImage() returns a wand with an image.
=end pod
sub NewMagickWandFromImage(
   Pointer $image
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 IsMagickWandInstantiated
=head2 C

    MagickBooleanType IsMagickWandInstantiated(void)

IsMagickWandInstantiated() returns MagickTrue if the ImageMagick environment is currently instantiated--  that is, MagickWandGenesis() has been called but MagickWandTerminus() has not.
=end pod
sub IsMagickWandInstantiated()
returns uint32 
is native(&library)
is export { * };


