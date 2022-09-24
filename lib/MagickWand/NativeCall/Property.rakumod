
use v6;

unit module MagickWand::NativeCall::Property;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 MagickDeleteImageArtifact

    MagickBooleanType MagickDeleteImageArtifact(MagickWand *wand,
      const char *artifact)

MagickDeleteImageArtifact() deletes a wand artifact.
=end pod
sub MagickDeleteImageArtifact(
   Pointer $wand,
   Str $artifact
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDeleteImageProperty

    MagickBooleanType MagickDeleteImageProperty(MagickWand *wand,
      const char *property)

MagickDeleteImageProperty() deletes a wand property.
=end pod
sub MagickDeleteImageProperty(
   Pointer $wand,
   Str $property
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDeleteOption

    MagickBooleanType MagickDeleteOption(MagickWand *wand,
      const char *option)

MagickDeleteOption() deletes a wand option.
=end pod
sub MagickDeleteOption(
   Pointer $wand,
   Str $option
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetAntialias

    MagickBooleanType MagickGetAntialias(const MagickWand *wand)

MagickGetAntialias() returns the antialias property associated with the wand.
=end pod
sub MagickGetAntialias(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetBackgroundColor

    PixelWand *MagickGetBackgroundColor(MagickWand *wand)

MagickGetBackgroundColor() returns the wand background color.
=end pod
sub MagickGetBackgroundColor(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetColorspace

    ColorspaceType MagickGetColorspace(MagickWand *wand)

MagickGetColorspace() gets the wand colorspace type.
=end pod
sub MagickGetColorspace(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetCompression

    CompressionType MagickGetCompression(MagickWand *wand)

MagickGetCompression() gets the wand compression type.
=end pod
sub MagickGetCompression(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetCompressionQuality

    size_t MagickGetCompressionQuality(MagickWand *wand)

MagickGetCompressionQuality() gets the wand compression quality.
=end pod
sub MagickGetCompressionQuality(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetCopyright

    const char *MagickGetCopyright(void)

MagickGetCopyright() returns the ImageMagick API copyright as a string constant.

=end pod
sub MagickGetCopyright()
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetFilename

    const char *MagickGetFilename(const MagickWand *wand)

MagickGetFilename() returns the filename associated with an image sequence.
=end pod
sub MagickGetFilename(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetFont

    char *MagickGetFont(MagickWand *wand)

MagickGetFont() returns the font associated with the MagickWand.
=end pod
sub MagickGetFont(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetFormat

    const char MagickGetFormat(MagickWand *wand)

MagickGetFormat() returns the format of the magick wand.
=end pod
sub MagickGetFormat(
   Pointer $wand
)
returns int8 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetGravity

    GravityType MagickGetGravity(MagickWand *wand)

MagickGetGravity() gets the wand gravity.
=end pod
sub MagickGetGravity(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetHomeURL

    char *MagickGetHomeURL(void)

MagickGetHomeURL() returns the ImageMagick home URL.
=end pod
sub MagickGetHomeURL()
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageArtifact

    char *MagickGetImageArtifact(MagickWand *wand,const char *artifact)

MagickGetImageArtifact() returns a value associated with the specified artifact.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetImageArtifact(
   Pointer $wand,
   Str $artifact
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageArtifacts

    char *MagickGetImageArtifacts(MagickWand *wand,
      const char *pattern,size_t *number_artifacts)

MagickGetImageArtifacts() returns all the artifact names that match the specified pattern associated with a wand.  Use MagickGetImageProperty() to return the value of a particular artifact.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetImageArtifacts(
   Pointer $wand,
   Str $pattern,
   Pointer[int32] $number_artifacts
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProfile

    unsigned char *MagickGetImageProfile(MagickWand *wand,const char *name,
      size_t *length)

MagickGetImageProfile() returns the named image profile.
=end pod
sub MagickGetImageProfile(
   Pointer $wand,
   Str $name,
   Pointer[int32] $length
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProfiles

    char *MagickGetImageProfiles(MagickWand *wand,const char *pattern,
      size_t *number_profiles)

MagickGetImageProfiles() returns all the profile names that match the specified pattern associated with a wand.  Use MagickGetImageProfile() to return the value of a particular property.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetImageProfiles(
   Pointer $wand,
   Str $pattern,
   Pointer[int32] $number_profiles
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProperty

    char *MagickGetImageProperty(MagickWand *wand,const char *property)

MagickGetImageProperty() returns a value associated with the specified property.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetImageProperty(
   Pointer $wand,
   Str $property
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProperties

    char *MagickGetImageProperties(MagickWand *wand,
      const char *pattern,size_t *number_properties)

MagickGetImageProperties() returns all the property names that match the specified pattern associated with a wand.  Use MagickGetImageProperty() to return the value of a particular property.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetImageProperties(
   Pointer $wand,
   Str $pattern,
   Pointer[int32] $number_properties
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetInterlaceScheme

    InterlaceType MagickGetInterlaceScheme(MagickWand *wand)

MagickGetInterlaceScheme() gets the wand interlace scheme.
=end pod
sub MagickGetInterlaceScheme(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetInterpolateMethod

    InterpolatePixelMethod MagickGetInterpolateMethod(MagickWand *wand)

MagickGetInterpolateMethod() gets the wand compression.
=end pod
sub MagickGetInterpolateMethod(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetOption

    char *MagickGetOption(MagickWand *wand,const char *key)

MagickGetOption() returns a value associated with a wand and the specified key.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetOption(
   Pointer $wand,
   Str $key
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetOptions

    char *MagickGetOptions(MagickWand *wand,const char *pattern,
      size_t *number_options)

MagickGetOptions() returns all the option names that match the specified pattern associated with a wand.  Use MagickGetOption() to return the value of a particular option.  Use MagickRelinquishMemory() to free the value when you are finished with it.
=end pod
sub MagickGetOptions(
   Pointer $wand,
   Str $pattern,
   Pointer[int32] $number_options
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetOrientation

    OrientationType MagickGetOrientation(MagickWand *wand)

MagickGetOrientation() gets the wand orientation type.
=end pod
sub MagickGetOrientation(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetPackageName

    const char *MagickGetPackageName(void)

MagickGetPackageName() returns the ImageMagick package name as a string constant.
=end pod
sub MagickGetPackageName()
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetPage

    MagickBooleanType MagickGetPage(const MagickWand *wand,
      size_t *width,size_t *height,ssize_t *x,ssize_t *y)

MagickGetPage() returns the page geometry associated with the magick wand.
=end pod
sub MagickGetPage(
   Pointer $wand,
   Pointer[int32] $width,
   Pointer[int32] $height,
   CArray[uint32] $x,
   CArray[uint32] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetPointsize

    double MagickGetPointsize(MagickWand *wand)

MagickGetPointsize() returns the font pointsize associated with the MagickWand.
=end pod
sub MagickGetPointsize(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetQuantumDepth

    const char *MagickGetQuantumDepth(size_t *depth)

MagickGetQuantumDepth() returns the ImageMagick quantum depth as a string constant.
=end pod
sub MagickGetQuantumDepth(
   Pointer[int32] $depth
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetQuantumRange

    const char *MagickGetQuantumRange(size_t *range)

MagickGetQuantumRange() returns the ImageMagick quantum range as a string constant.
=end pod
sub MagickGetQuantumRange(
   Pointer[int32] $range
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetReleaseDate

    const char *MagickGetReleaseDate(void)

MagickGetReleaseDate() returns the ImageMagick release date as a string constant.
=end pod
sub MagickGetReleaseDate()
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetResolution

    MagickBooleanType MagickGetResolution(const MagickWand *wand,double *x,
      double *y)

MagickGetResolution() gets the image X and Y resolution.
=end pod
sub MagickGetResolution(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetResource

    MagickSizeType MagickGetResource(const ResourceType type)

MagickGetResource() returns the specified resource in megabytes.
=end pod
sub MagickGetResource(
   uint32 $type
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetResourceLimit

    MagickSizeType MagickGetResourceLimit(const ResourceType type)

MagickGetResourceLimit() returns the specified resource limit in megabytes.
=end pod
sub MagickGetResourceLimit(
   uint32 $type
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetSamplingFactors

    double *MagickGetSamplingFactor(MagickWand *wand,
      size_t *number_factors)

MagickGetSamplingFactors() gets the horizontal and vertical sampling factor.
=end pod
sub MagickGetSamplingFactor(
   Pointer $wand,
   Pointer[int32] $number_factors
)
returns CArray[num64]
is native(&library)
is export { * };


=begin pod
=head1 MagickGetSize

    MagickBooleanType MagickGetSize(const MagickWand *wand,
      size_t *columns,size_t *rows)

MagickGetSize() returns the size associated with the magick wand.
=end pod
sub MagickGetSize(
   Pointer $wand,
   Pointer[int32] $columns,
   Pointer[int32] $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetSizeOffset

    MagickBooleanType MagickGetSizeOffset(const MagickWand *wand,
      ssize_t *offset)

MagickGetSizeOffset() returns the size offset associated with the magick wand.
=end pod
sub MagickGetSizeOffset(
   Pointer $wand,
   CArray[uint32] $offset
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetType

    ImageType MagickGetType(MagickWand *wand)

MagickGetType() returns the wand type.
=end pod
sub MagickGetType(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetVersion

    const char *MagickGetVersion(size_t *version)

MagickGetVersion() returns the ImageMagick API version as a string constant and
as a number.

=end pod
sub MagickGetVersion(
   CArray[int32] $version
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickProfileImage

    MagickBooleanType MagickProfileImage(MagickWand *wand,const char *name,
      const void *profile,const size_t length)

MagickProfileImage() adds or removes a ICC, IPTC, or generic profile from an image.  If the profile is NULL, it is removed from the image otherwise added.  Use a name of '\*' and a profile of NULL to remove all profiles from the image.
=end pod
sub MagickProfileImage(
   Pointer $wand,
   Str $name,
   Pointer[void] $profile,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRemoveImageProfile

    unsigned char *MagickRemoveImageProfile(MagickWand *wand,
      const char *name,size_t *length)

MagickRemoveImageProfile() removes the named image profile and returns it.
=end pod
sub MagickRemoveImageProfile(
   Pointer $wand,
   Str $name,
   Pointer[int32] $length
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickSetAntialias

    MagickBooleanType MagickSetAntialias(MagickWand *wand,
      const MagickBooleanType antialias)

MagickSetAntialias() sets the antialias propery of the wand.
=end pod
sub MagickSetAntialias(
   Pointer $wand,
   uint32 $antialias
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetBackgroundColor

    MagickBooleanType MagickSetBackgroundColor(MagickWand *wand,
      const PixelWand *background)

MagickSetBackgroundColor() sets the wand background color.
=end pod
sub MagickSetBackgroundColor(
   Pointer $wand,
   Pointer $background
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetColorspace

    MagickBooleanType MagickSetColorspace(MagickWand *wand,
      const ColorspaceType colorspace)

MagickSetColorspace() sets the wand colorspace type.
=end pod
sub MagickSetColorspace(
   Pointer $wand,
   uint32 $colorspace
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetCompression

    MagickBooleanType MagickSetCompression(MagickWand *wand,
      const CompressionType compression)

MagickSetCompression() sets the wand compression type.
=end pod
sub MagickSetCompression(
   Pointer $wand,
   uint32 $compression
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetCompressionQuality

    MagickBooleanType MagickSetCompressionQuality(MagickWand *wand,
      const size_t quality)

MagickSetCompressionQuality() sets the wand compression quality.
=end pod
sub MagickSetCompressionQuality(
   Pointer $wand,
   int32 $quality
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetDepth

    MagickBooleanType MagickSetDepth(MagickWand *wand,
      const size_t depth)

MagickSetDepth() sets the wand pixel depth.
=end pod
sub MagickSetDepth(
   Pointer $wand,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetExtract

    MagickBooleanType MagickSetExtract(MagickWand *wand,
      const char *geometry)

MagickSetExtract() sets the extract geometry before you read or write an image file.  Use it for inline cropping (e.g. 200x200+0+0) or resizing (e.g.200x200).
=end pod
sub MagickSetExtract(
   Pointer $wand,
   Str $geometry
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFilename

    MagickBooleanType MagickSetFilename(MagickWand *wand,
      const char *filename)

MagickSetFilename() sets the filename before you read or write an image file.
=end pod
sub MagickSetFilename(
   Pointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFont

    MagickBooleanType MagickSetFont(MagickWand *wand, const char *font)

MagickSetFont() sets the font associated with the MagickWand.
=end pod
sub MagickSetFont(
   Pointer $wand,
   Str $font
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFormat

    MagickBooleanType MagickSetFormat(MagickWand *wand,const char *format)

MagickSetFormat() sets the format of the magick wand.
=end pod
sub MagickSetFormat(
   Pointer $wand,
   Str $format
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetGravity

    MagickBooleanType MagickSetImageArtifact(MagickWand *wand,
      const char *artifact,const char *value)

MagickSetGravity() sets the gravity type.The format of the MagickSetGravity type is:<pre class="text">MagickBooleanType MagickSetGravity(MagickWand \*wand,  const GravityType type)</pre>- wand: the magick wand. - type: the gravity type. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickSetImageArtifact">MagickSetImageArtifact</a></h2>MagickSetImageArtifact() associates a artifact with an image.
=end pod
sub MagickSetImageArtifact(
   Pointer $wand,
   Str $artifact,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageProfile

    MagickBooleanType MagickSetImageProfile(MagickWand *wand,
      const char *name,const void *profile,const size_t length)

MagickSetImageProfile() adds a named profile to the magick wand.  If a profile with the same name already exists, it is replaced.  This method differs from the MagickProfileImage() method in that it does not apply any CMS color profiles.
=end pod
sub MagickSetImageProfile(
   Pointer $wand,
   Str $name,
   Pointer[void] $profile,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageProperty

    MagickBooleanType MagickSetImageProperty(MagickWand *wand,
      const char *property,const char *value)

MagickSetImageProperty() associates a property with an image.
=end pod
sub MagickSetImageProperty(
   Pointer $wand,
   Str $property,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetInterlaceScheme

    MagickBooleanType MagickSetInterlaceScheme(MagickWand *wand,
      const InterlaceType interlace_scheme)

MagickSetInterlaceScheme() sets the image compression.
=end pod
sub MagickSetInterlaceScheme(
   Pointer $wand,
   uint32 $interlace_scheme
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetInterpolateMethod

    MagickBooleanType MagickSetInterpolateMethod(MagickWand *wand,
      const InterpolateMethodPixel method)

MagickSetInterpolateMethod() sets the interpolate pixel method.
=end pod
sub MagickSetInterpolateMethod(
   Pointer $wand,
   uint32 $method
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetOption

    MagickBooleanType MagickSetOption(MagickWand *wand,const char *key,
      const char *value)

MagickSetOption() associates one or options with the wand (.e.g MagickSetOption(wand,"jpeg:perserve","yes")).
=end pod
sub MagickSetOption(
   Pointer $wand,
   Str $key,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetOrientation

    MagickBooleanType MagickSetOrientation(MagickWand *wand,
      const OrientationType orientation)

MagickSetOrientation() sets the wand orientation type.
=end pod
sub MagickSetOrientation(
   Pointer $wand,
   uint32 $orientation
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetPage

    MagickBooleanType MagickSetPage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y)

MagickSetPage() sets the page geometry of the magick wand.
=end pod
sub MagickSetPage(
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
=head1 MagickSetPassphrase

    MagickBooleanType MagickSetPassphrase(MagickWand *wand,
      const char *passphrase)

MagickSetPassphrase() sets the passphrase.
=end pod
sub MagickSetPassphrase(
   Pointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetPointsize

    MagickBooleanType MagickSetPointsize(MagickWand *wand,
      const double pointsize)

MagickSetPointsize() sets the font pointsize associated with the MagickWand.
=end pod
sub MagickSetPointsize(
   Pointer $wand,
   num64 $pointsize
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetProgressMonitor

    MagickProgressMonitor MagickSetProgressMonitor(MagickWand *wand
      const MagickProgressMonitor progress_monitor,void *client_data)

MagickSetProgressMonitor() sets the wand progress monitor to the specified method and returns the previous progress monitor if any.  The progress monitor method looks like this:<pre class="text">    MagickBooleanType MagickProgressMonitor(const char \*text,const MagickOffsetType offset,const MagickSizeType span,void \*client_data)</pre>If the progress monitor returns MagickFalse, the current operation is interrupted.
=end pod
sub MagickSetProgressMonitor(
   Pointer $wand,
  Pointer $progress_monitor,
   Pointer[void] $client_data
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 MagickSetResourceLimit

    MagickBooleanType MagickSetResourceLimit(const ResourceType type,
      const MagickSizeType limit)

MagickSetResourceLimit() sets the limit for a particular resource in megabytes.
=end pod
sub MagickSetResourceLimit(
   uint32 $type,
   uint32 $limit
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetResolution

    MagickBooleanType MagickSetResolution(MagickWand *wand,
      const double x_resolution,const double y_resolution)

MagickSetResolution() sets the image resolution.
=end pod
sub MagickSetResolution(
   Pointer $wand,
   num64 $x_resolution,
   num64 $y_resolution
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetSamplingFactors

    MagickBooleanType MagickSetSamplingFactors(MagickWand *wand,
      const size_t number_factors,const double *sampling_factors)

MagickSetSamplingFactors() sets the image sampling factors.
=end pod
sub MagickSetSamplingFactors(
   Pointer $wand,
   int32 $number_factors,
   CArray[num64] $sampling_factors
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetSize

    MagickBooleanType MagickSetSize(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickSetSize() sets the size of the magick wand.  Set it before you read a raw image format such as RGB, GRAY, or CMYK.
=end pod
sub MagickSetSize(
   Pointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetSizeOffset

    MagickBooleanType MagickSetSizeOffset(MagickWand *wand,
      const size_t columns,const size_t rows,
      const ssize_t offset)

MagickSetSizeOffset() sets the size and offset of the magick wand.  Set it before you read a raw image format such as RGB, GRAY, or CMYK.
=end pod
sub MagickSetSizeOffset(
   Pointer $wand,
   int32 $columns,
   int32 $rows,
   uint32 $offset
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetType

    MagickBooleanType MagickSetType(MagickWand *wand,
      const ImageType image_type)

MagickSetType() sets the image type attribute.
=end pod
sub MagickSetType(
   Pointer $wand,
   uint32 $image_type
)
returns uint32 
is native(&library)
is export { * };


