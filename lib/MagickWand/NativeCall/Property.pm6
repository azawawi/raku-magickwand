
use v6;

unit module MagickWand::NativeCall::Property;

=begin pod
=head1 MagickDeleteImageArtifact
=head2 C

    MagickBooleanType MagickDeleteImageArtifact(MagickWand *wand,
      const char *artifact)

MagickDeleteImageArtifact() deletes a wand artifact.- image: the image. - artifact: the image artifact. 
=end pod
sub MagickDeleteImageArtifact(
   MagickWandPointer $wand,
   Str $artifact
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDeleteImageProperty
=head2 C

    MagickBooleanType MagickDeleteImageProperty(MagickWand *wand,
      const char *property)

MagickDeleteImageProperty() deletes a wand property.- image: the image. - property: the image property. 
=end pod
sub MagickDeleteImageProperty(
   MagickWandPointer $wand,
   Str $property
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickDeleteOption
=head2 C

    MagickBooleanType MagickDeleteOption(MagickWand *wand,
      const char *option)

MagickDeleteOption() deletes a wand option.- image: the image. - option: the image option. 
=end pod
sub MagickDeleteOption(
   MagickWandPointer $wand,
   Str $option
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetAntialias
=head2 C

    MagickBooleanType MagickGetAntialias(const MagickWand *wand)

MagickGetAntialias() returns the antialias property associated with the wand.- wand: the magick wand. 
=end pod
sub MagickGetAntialias(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetBackgroundColor
=head2 C

    PixelWand *MagickGetBackgroundColor(MagickWand *wand)

MagickGetBackgroundColor() returns the wand background color.- wand: the magick wand. 
=end pod
sub MagickGetBackgroundColor(
   MagickWandPointer $wand
)
returns PixelWandPointer
is native(&library)
is export { * };


=begin pod
=head1 MagickGetColorspace
=head2 C

    ColorspaceType MagickGetColorspace(MagickWand *wand)

MagickGetColorspace() gets the wand colorspace type.- wand: the magick wand. 
=end pod
sub MagickGetColorspace(
   MagickWandPointer $wand
)
returns ColorspaceType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetCompression
=head2 C

    CompressionType MagickGetCompression(MagickWand *wand)

MagickGetCompression() gets the wand compression type.- wand: the magick wand. 
=end pod
sub MagickGetCompression(
   MagickWandPointer $wand
)
returns CompressionType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetCompressionQuality
=head2 C

    size_t MagickGetCompressionQuality(MagickWand *wand)

MagickGetCompressionQuality() gets the wand compression quality.- wand: the magick wand. 
=end pod
sub MagickGetCompressionQuality(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetCopyright
=head2 C

    const char *MagickGetCopyright(void)

MagickGetCopyright() returns the ImageMagick API copyright as a string constant.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetFilename">MagickGetFilename</a></h2>MagickGetFilename() returns the filename associated with an image sequence.The format of the MagickGetFilename method is:<pre class="text">const char \*MagickGetFilename(const MagickWand \*wand)</pre>- wand: the magick wand. 
=end pod
sub MagickGetCopyright(
   v $oid
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetFont
=head2 C

    char *MagickGetFont(MagickWand *wand)

MagickGetFont() returns the font associated with the MagickWand.- wand: the magick wand. 
=end pod
sub MagickGetFont(
   MagickWandPointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetFormat
=head2 C

    const char MagickGetFormat(MagickWand *wand)

MagickGetFormat() returns the format of the magick wand.- wand: the magick wand. 
=end pod
sub MagickGetFormat(
   MagickWandPointer $wand
)
returns char 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetGravity
=head2 C

    GravityType MagickGetGravity(MagickWand *wand)

MagickGetGravity() gets the wand gravity.- wand: the magick wand. 
=end pod
sub MagickGetGravity(
   MagickWandPointer $wand
)
returns GravityType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetHomeURL
=head2 C

    char *MagickGetHomeURL(void)

MagickGetHomeURL() returns the ImageMagick home URL.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetImageArtifact">MagickGetImageArtifact</a></h2>MagickGetImageArtifact() returns a value associated with the specified artifact.  Use MagickRelinquishMemory() to free the value when you are finished with it.The format of the MagickGetImageArtifact method is:<pre class="text">char \*MagickGetImageArtifact(MagickWand \*wand,const char \*artifact)</pre>- wand: the magick wand. - artifact: the artifact. 
=end pod
sub MagickGetHomeURL(
   v $oid
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageArtifacts
=head2 C

    char *MagickGetImageArtifacts(MagickWand *wand,
      const char *pattern,size_t *number_artifacts)

MagickGetImageArtifacts() returns all the artifact names that match the specified pattern associated with a wand.  Use MagickGetImageProperty() to return the value of a particular artifact.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_artifacts: the number artifacts associated with this wand. 
=end pod
sub MagickGetImageArtifacts(
   MagickWandPointer $wand,
   Str $pattern,
   Pointer[int32] $number_artifacts
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProfile
=head2 C

    unsigned char *MagickGetImageProfile(MagickWand *wand,const char *name,
      size_t *length)

MagickGetImageProfile() returns the named image profile.- wand: the magick wand. - name: Name of profile to return: ICC, IPTC, or generic profile. - length: the length of the profile. 
=end pod
sub MagickGetImageProfile(
   MagickWandPointer $wand,
   Str $name,
   Pointer[int32] $length
)
returns unsigned Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProfiles
=head2 C

    char *MagickGetImageProfiles(MagickWand *wand,const char *pattern,
      size_t *number_profiles)

MagickGetImageProfiles() returns all the profile names that match the specified pattern associated with a wand.  Use MagickGetImageProfile() to return the value of a particular property.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_profiles: the number profiles associated with this wand. 
=end pod
sub MagickGetImageProfiles(
   MagickWandPointer $wand,
   Str $pattern,
   Pointer[int32] $number_profiles
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProperty
=head2 C

    char *MagickGetImageProperty(MagickWand *wand,const char *property)

MagickGetImageProperty() returns a value associated with the specified property.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - property: the property. 
=end pod
sub MagickGetImageProperty(
   MagickWandPointer $wand,
   Str $property
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetImageProperties
=head2 C

    char *MagickGetImageProperties(MagickWand *wand,
      const char *pattern,size_t *number_properties)

MagickGetImageProperties() returns all the property names that match the specified pattern associated with a wand.  Use MagickGetImageProperty() to return the value of a particular property.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_properties: the number properties associated with this wand. 
=end pod
sub MagickGetImageProperties(
   MagickWandPointer $wand,
   Str $pattern,
   Pointer[int32] $number_properties
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetInterlaceScheme
=head2 C

    InterlaceType MagickGetInterlaceScheme(MagickWand *wand)

MagickGetInterlaceScheme() gets the wand interlace scheme.- wand: the magick wand. 
=end pod
sub MagickGetInterlaceScheme(
   MagickWandPointer $wand
)
returns InterlaceType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetInterpolateMethod
=head2 C

    InterpolatePixelMethod MagickGetInterpolateMethod(MagickWand *wand)

MagickGetInterpolateMethod() gets the wand compression.- wand: the magick wand. 
=end pod
sub MagickGetInterpolateMethod(
   MagickWandPointer $wand
)
returns InterpolatePixelMethod 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetOption
=head2 C

    char *MagickGetOption(MagickWand *wand,const char *key)

MagickGetOption() returns a value associated with a wand and the specified key.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - key: the key. 
=end pod
sub MagickGetOption(
   MagickWandPointer $wand,
   Str $key
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetOptions
=head2 C

    char *MagickGetOptions(MagickWand *wand,const char *pattern,,
      size_t *number_options)

MagickGetOptions() returns all the option names that match the specified pattern associated with a wand.  Use MagickGetOption() to return the value of a particular option.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_options: the number options associated with this wand. 
=end pod
sub MagickGetOptions(
   MagickWandPointer $wand,
   Str $pattern,
   ,
   Pointer[int32] $number_options
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetOrientation
=head2 C

    OrientationType MagickGetOrientation(MagickWand *wand)

MagickGetOrientation() gets the wand orientation type.- wand: the magick wand. 
=end pod
sub MagickGetOrientation(
   MagickWandPointer $wand
)
returns OrientationType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetPackageName
=head2 C

    const char *MagickGetPackageName(void)

MagickGetPackageName() returns the ImageMagick package name as a string constant.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetPage">MagickGetPage</a></h2>MagickGetPage() returns the page geometry associated with the magick wand.The format of the MagickGetPage method is:<pre class="text">MagickBooleanType MagickGetPage(const MagickWand \*wand,  size_t \*width,size_t \*height,ssize_t \*x,ssize_t \*y)</pre>- wand: the magick wand. - width: the page width. - height: page height. - x: the page x-offset. - y: the page y-offset. 
=end pod
sub MagickGetPackageName(
   v $oid
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetPointsize
=head2 C

    double MagickGetPointsize(MagickWand *wand)

MagickGetPointsize() returns the font pointsize associated with the MagickWand.- wand: the magick wand. 
=end pod
sub MagickGetPointsize(
   MagickWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 MagickGetQuantumDepth
=head2 C

    const char *MagickGetQuantumDepth(size_t *depth)

MagickGetQuantumDepth() returns the ImageMagick quantum depth as a string constant.- depth: the quantum depth is returned as a number. 
=end pod
sub MagickGetQuantumDepth(
   Pointer[int32] $depth
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetQuantumRange
=head2 C

    const char *MagickGetQuantumRange(size_t *range)

MagickGetQuantumRange() returns the ImageMagick quantum range as a string constant.- range: the quantum range is returned as a number. 
=end pod
sub MagickGetQuantumRange(
   Pointer[int32] $range
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetReleaseDate
=head2 C

    const char *MagickGetReleaseDate(void)

MagickGetReleaseDate() returns the ImageMagick release date as a string constant.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetResolution">MagickGetResolution</a></h2>MagickGetResolution() gets the image X and Y resolution.The format of the MagickGetResolution method is:<pre class="text">MagickBooleanType MagickGetResolution(const MagickWand \*wand,double \*x,  double \*y)</pre>- wand: the magick wand. - x: the x-resolution. - y: the y-resolution. 
=end pod
sub MagickGetReleaseDate(
   v $oid
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickGetResource
=head2 C

    MagickSizeType MagickGetResource(const ResourceType type)

MagickGetResource() returns the specified resource in megabytes.- wand: the magick wand. 
=end pod
sub MagickGetResource(
   ResourceType $type
)
returns MagickSizeType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetResourceLimit
=head2 C

    MagickSizeType MagickGetResourceLimit(const ResourceType type)

MagickGetResourceLimit() returns the specified resource limit in megabytes.- wand: the magick wand. 
=end pod
sub MagickGetResourceLimit(
   ResourceType $type
)
returns MagickSizeType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetSamplingFactors
=head2 C

    double *MagickGetSamplingFactor(MagickWand *wand,
      size_t *number_factors)

MagickGetSamplingFactors() gets the horizontal and vertical sampling factor.- wand: the magick wand. - number_factors: the number of factors in the returned array. 
=end pod
sub MagickGetSamplingFactor(
   MagickWandPointer $wand,
   Pointer[int32] $number_factors
)
returns num64*
is native(&library)
is export { * };


=begin pod
=head1 MagickGetSize
=head2 C

    MagickBooleanType MagickGetSize(const MagickWand *wand,
      size_t *columns,size_t *rows)

MagickGetSize() returns the size associated with the magick wand.- wand: the magick wand. - columns: the width in pixels. - height: the height in pixels. 
=end pod
sub MagickGetSize(
   MagickWandPointer $wand,
   Pointer[int32] $columns,
   Pointer[int32] $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetSizeOffset
=head2 C

    MagickBooleanType MagickGetSizeOffset(const MagickWand *wand,
      ssize_t *offset)

MagickGetSizeOffset() returns the size offset associated with the magick wand.- wand: the magick wand. - offset: the image offset. 
=end pod
sub MagickGetSizeOffset(
   MagickWandPointer $wand,
   sPointer[int32] $offset
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetType
=head2 C

    ImageType MagickGetType(MagickWand *wand)

MagickGetType() returns the wand type.- wand: the magick wand. 
=end pod
sub MagickGetType(
   MagickWandPointer $wand
)
returns ImageType 
is native(&library)
is export { * };


=begin pod
=head1 MagickGetVersion
=head2 C

    const char *MagickGetVersion(size_t *version)

MagickGetVersion() returns the ImageMagick API version as a string constant and as a number.- version: the ImageMagick version is returned as a number. 
=end pod
sub MagickGetVersion(
   Pointer[int32] $version
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 MagickProfileImage
=head2 C

    MagickBooleanType MagickProfileImage(MagickWand *wand,const char *name,
      const void *profile,const size_t length)

MagickProfileImage() adds or removes a ICC, IPTC, or generic profile from an image.  If the profile is NULL, it is removed from the image otherwise added.  Use a name of '\*' and a profile of NULL to remove all profiles from the image.- wand: the magick wand. - name: Name of profile to add or remove: ICC, IPTC, or generic profile. - profile: the profile. - length: the length of the profile. 
=end pod
sub MagickProfileImage(
   MagickWandPointer $wand,
   Str $name,
   Pointer[void] $profile,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickRemoveImageProfile
=head2 C

    unsigned char *MagickRemoveImageProfile(MagickWand *wand,
      const char *name,size_t *length)

MagickRemoveImageProfile() removes the named image profile and returns it.- wand: the magick wand. - name: Name of profile to return: ICC, IPTC, or generic profile. - length: the length of the profile. 
=end pod
sub MagickRemoveImageProfile(
   MagickWandPointer $wand,
   Str $name,
   Pointer[int32] $length
)
returns unsigned Str
is native(&library)
is export { * };


=begin pod
=head1 MagickSetAntialias
=head2 C

    MagickBooleanType MagickSetAntialias(MagickWand *wand,
      const MagickBooleanType antialias)

MagickSetAntialias() sets the antialias propery of the wand.- wand: the magick wand. - antialias: the antialias property. 
=end pod
sub MagickSetAntialias(
   MagickWandPointer $wand,
   uint32 $antialias
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetBackgroundColor
=head2 C

    MagickBooleanType MagickSetBackgroundColor(MagickWand *wand,
      const PixelWand *background)

MagickSetBackgroundColor() sets the wand background color.- wand: the magick wand. - background: the background pixel wand. 
=end pod
sub MagickSetBackgroundColor(
   MagickWandPointer $wand,
   PixelWandPointer $background
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetColorspace
=head2 C

    MagickBooleanType MagickSetColorspace(MagickWand *wand,
      const ColorspaceType colorspace)

MagickSetColorspace() sets the wand colorspace type.- wand: the magick wand. - colorspace: the wand colorspace. 
=end pod
sub MagickSetColorspace(
   MagickWandPointer $wand,
   ColorspaceType $colorspace
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetCompression
=head2 C

    MagickBooleanType MagickSetCompression(MagickWand *wand,
      const CompressionType compression)

MagickSetCompression() sets the wand compression type.- wand: the magick wand. - compression: the wand compression. 
=end pod
sub MagickSetCompression(
   MagickWandPointer $wand,
   CompressionType $compression
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetCompressionQuality
=head2 C

    MagickBooleanType MagickSetCompressionQuality(MagickWand *wand,
      const size_t quality)

MagickSetCompressionQuality() sets the wand compression quality.- wand: the magick wand. - quality: the wand compression quality. 
=end pod
sub MagickSetCompressionQuality(
   MagickWandPointer $wand,
   int32 $quality
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetDepth
=head2 C

    MagickBooleanType MagickSetDepth(MagickWand *wand,
      const size_t depth)

MagickSetDepth() sets the wand pixel depth.- wand: the magick wand. - depth: the wand pixel depth. 
=end pod
sub MagickSetDepth(
   MagickWandPointer $wand,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetExtract
=head2 C

    MagickBooleanType MagickSetExtract(MagickWand *wand,
      const char *geometry)

MagickSetExtract() sets the extract geometry before you read or write an image file.  Use it for inline cropping (e.g. 200x200+0+0) or resizing (e.g.200x200).- wand: the magick wand. - geometry: the extract geometry. 
=end pod
sub MagickSetExtract(
   MagickWandPointer $wand,
   Str $geometry
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFilename
=head2 C

    MagickBooleanType MagickSetFilename(MagickWand *wand,
      const char *filename)

MagickSetFilename() sets the filename before you read or write an image file.- wand: the magick wand. - filename: the image filename. 
=end pod
sub MagickSetFilename(
   MagickWandPointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFont
=head2 C

    MagickBooleanType MagickSetFont(MagickWand *wand, const char *font)

MagickSetFont() sets the font associated with the MagickWand.- wand: the magick wand. - font: the font 
=end pod
sub MagickSetFont(
   MagickWandPointer $wand,
   Str $font
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetFormat
=head2 C

    MagickBooleanType MagickSetFormat(MagickWand *wand,const char *format)

MagickSetFormat() sets the format of the magick wand.- wand: the magick wand. - format: the image format. 
=end pod
sub MagickSetFormat(
   MagickWandPointer $wand,
   Str $format
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetGravity
=head2 C

    MagickBooleanType MagickSetImageArtifact(MagickWand *wand,
      const char *artifact,const char *value)

MagickSetGravity() sets the gravity type.The format of the MagickSetGravity type is:<pre class="text">MagickBooleanType MagickSetGravity(MagickWand \*wand,  const GravityType type)</pre>- wand: the magick wand. - type: the gravity type. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickSetImageArtifact">MagickSetImageArtifact</a></h2>MagickSetImageArtifact() associates a artifact with an image.- wand: the magick wand. - artifact: the artifact. - value: the value. 
=end pod
sub MagickSetImageArtifact(
   MagickWandPointer $wand,
   Str $artifact,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageProfile
=head2 C

    MagickBooleanType MagickSetImageProfile(MagickWand *wand,
      const char *name,const void *profile,const size_t length)

MagickSetImageProfile() adds a named profile to the magick wand.  If a profile with the same name already exists, it is replaced.  This method differs from the MagickProfileImage() method in that it does not apply any CMS color profiles.- wand: the magick wand. - name: Name of profile to add or remove: ICC, IPTC, or generic profile. - profile: the profile. - length: the length of the profile. 
=end pod
sub MagickSetImageProfile(
   MagickWandPointer $wand,
   Str $name,
   Pointer[void] $profile,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetImageProperty
=head2 C

    MagickBooleanType MagickSetImageProperty(MagickWand *wand,
      const char *property,const char *value)

MagickSetImageProperty() associates a property with an image.- wand: the magick wand. - property: the property. - value: the value. 
=end pod
sub MagickSetImageProperty(
   MagickWandPointer $wand,
   Str $property,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetInterlaceScheme
=head2 C

    MagickBooleanType MagickSetInterlaceScheme(MagickWand *wand,
      const InterlaceType interlace_scheme)

MagickSetInterlaceScheme() sets the image compression.- wand: the magick wand. - interlace_scheme: the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace. 
=end pod
sub MagickSetInterlaceScheme(
   MagickWandPointer $wand,
   InterlaceType $interlace_scheme
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetInterpolateMethod
=head2 C

    MagickBooleanType MagickSetInterpolateMethod(MagickWand *wand,
      const InterpolateMethodPixel method)

MagickSetInterpolateMethod() sets the interpolate pixel method.- wand: the magick wand. - method: the interpolate pixel method. 
=end pod
sub MagickSetInterpolateMethod(
   MagickWandPointer $wand,
   InterpolateMethodPixel $method
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetOption
=head2 C

    MagickBooleanType MagickSetOption(MagickWand *wand,const char *key,
      const char *value)

MagickSetOption() associates one or options with the wand (.e.g MagickSetOption(wand,"jpeg:perserve","yes")).- wand: the magick wand. - key:  The key. - value:  The value. 
=end pod
sub MagickSetOption(
   MagickWandPointer $wand,
   Str $key,
   Str $value
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetOrientation
=head2 C

    MagickBooleanType MagickSetOrientation(MagickWand *wand,
      const OrientationType orientation)

MagickSetOrientation() sets the wand orientation type.- wand: the magick wand. - orientation: the wand orientation. 
=end pod
sub MagickSetOrientation(
   MagickWandPointer $wand,
   OrientationType $orientation
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetPage
=head2 C

    MagickBooleanType MagickSetPage(MagickWand *wand,
      const size_t width,const size_t height,const ssize_t x,
      const ssize_t y)

MagickSetPage() sets the page geometry of the magick wand.- wand: the magick wand. - width: the page width. - height: the page height. - x: the page x-offset. - y: the page y-offset. 
=end pod
sub MagickSetPage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetPassphrase
=head2 C

    MagickBooleanType MagickSetPassphrase(MagickWand *wand,
      const char *passphrase)

MagickSetPassphrase() sets the passphrase.- wand: the magick wand. - passphrase: the passphrase. 
=end pod
sub MagickSetPassphrase(
   MagickWandPointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetPointsize
=head2 C

    MagickBooleanType MagickSetPointsize(MagickWand *wand,
      const double pointsize)

MagickSetPointsize() sets the font pointsize associated with the MagickWand.- wand: the magick wand. - pointsize: the size of the font 
=end pod
sub MagickSetPointsize(
   MagickWandPointer $wand,
   double $pointsize
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetProgressMonitor
=head2 C

    MagickProgressMonitor MagickSetProgressMonitor(MagickWand *wand
      const MagickProgressMonitor progress_monitor,void *client_data)

MagickSetProgressMonitor() sets the wand progress monitor to the specified method and returns the previous progress monitor if any.  The progress monitor method looks like this:<pre class="text">    MagickBooleanType MagickProgressMonitor(const char \*text,const MagickOffsetType offset,const MagickSizeType span,void \*client_data)</pre>If the progress monitor returns MagickFalse, the current operation is interrupted.- wand: the magick wand. - progress_monitor: Specifies a pointer to a method to monitor progress of an image operation. - client_data: Specifies a pointer to any client data. 
=end pod
sub MagickSetProgressMonitor(
   MagickWandPointerwand
  MagickProgressMonitor $progress_monitor,
   Pointer[void] $client_data
)
returns MagickProgressMonitor 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetResourceLimit
=head2 C

    MagickBooleanType MagickSetResourceLimit(const ResourceType type,
      const MagickSizeType limit)

MagickSetResourceLimit() sets the limit for a particular resource in megabytes.- type: the type of resource: AreaResource, MemoryResource, MapResource, DiskResource, FileResource. <dd> o The maximum limit for the resource. </dd>
=end pod
sub MagickSetResourceLimit(
   ResourceType $type,
   MagickSizeType $limit
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetResolution
=head2 C

    MagickBooleanType MagickSetResolution(MagickWand *wand,
      const double x_resolution,const double y_resolution)

MagickSetResolution() sets the image resolution.- wand: the magick wand. - x_resolution: the image x resolution. - y_resolution: the image y resolution. 
=end pod
sub MagickSetResolution(
   MagickWandPointer $wand,
   double $x_resolution,
   double $y_resolution
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetSamplingFactors
=head2 C

    MagickBooleanType MagickSetSamplingFactors(MagickWand *wand,
      const size_t number_factors,const double *sampling_factors)

MagickSetSamplingFactors() sets the image sampling factors.- wand: the magick wand. - number_factoes: the number of factors. - sampling_factors: An array of doubles representing the sampling factor for each color component (in RGB order). 
=end pod
sub MagickSetSamplingFactors(
   MagickWandPointer $wand,
   int32 $number_factors,
   num64* $sampling_factors
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetSize
=head2 C

    MagickBooleanType MagickSetSize(MagickWand *wand,
      const size_t columns,const size_t rows)

MagickSetSize() sets the size of the magick wand.  Set it before you read a raw image format such as RGB, GRAY, or CMYK.- wand: the magick wand. - columns: the width in pixels. - rows: the rows in pixels. 
=end pod
sub MagickSetSize(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetSizeOffset
=head2 C

    MagickBooleanType MagickSetSizeOffset(MagickWand *wand,
      const size_t columns,const size_t rows,
      const ssize_t offset)

MagickSetSizeOffset() sets the size and offset of the magick wand.  Set it before you read a raw image format such as RGB, GRAY, or CMYK.- wand: the magick wand. - columns: the image width in pixels. - rows: the image rows in pixels. - offset: the image offset. 
=end pod
sub MagickSetSizeOffset(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows,
   sint32 $offset
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 MagickSetType
=head2 C

    MagickBooleanType MagickSetType(MagickWand *wand,
      const ImageType image_type)

MagickSetType() sets the image type attribute.- wand: the magick wand. - image_type: the image type:   UndefinedType, BilevelType, GrayscaleType, GrayscaleMatteType, PaletteType, PaletteMatteType, TrueColorType, TrueColorMatteType, ColorSeparationType, ColorSeparationMatteType, or OptimizeType. 
=end pod
sub MagickSetType(
   MagickWandPointer $wand,
   ImageType $image_type
)
returns uint32 
is native(&library)
is export { * };


