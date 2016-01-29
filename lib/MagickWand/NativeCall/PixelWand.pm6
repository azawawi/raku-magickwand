
use v6;

unit module MagickWand::NativeCall::PixelWand;

=begin pod
=head1 ClearPixelWand
=head2 C

    void ClearPixelWand(PixelWand *wand)

ClearPixelWand() clears resources associated with the wand.- wand: the pixel wand. 
=end pod
sub ClearPixelWand(
   PixelWandPointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 ClonePixelWand
=head2 C

    PixelWand *ClonePixelWand(const PixelWand *wand)

ClonePixelWand() makes an exact copy of the specified wand.- wand: the magick wand. 
=end pod
sub ClonePixelWand(
   PixelWandPointer $wand
)
returns PixelWandPointer
is native(&library)
is export { * };


=begin pod
=head1 ClonePixelWands
=head2 C

    PixelWand **ClonePixelWands(const PixelWand **wands,
      const size_t number_wands)

ClonePixelWands() makes an exact copy of the specified wands.- wands: the magick wands. - number_wands: the number of wands. 
=end pod
sub ClonePixelWands(
   PixelWandPointer* $wands,
   int32 $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };


=begin pod
=head1 DestroyPixelWand
=head2 C

    PixelWand *DestroyPixelWand(PixelWand *wand)

DestroyPixelWand() deallocates resources associated with a PixelWand.- wand: the pixel wand. 
=end pod
sub DestroyPixelWand(
   PixelWandPointer $wand
)
returns PixelWandPointer
is native(&library)
is export { * };


=begin pod
=head1 DestroyPixelWands
=head2 C

    PixelWand **DestroyPixelWands(PixelWand **wand,
      const size_t number_wands)

DestroyPixelWands() deallocates resources associated with an array of pixel wands.- wand: the pixel wand. - number_wands: the number of wands. 
=end pod
sub DestroyPixelWands(
   PixelWandPointer* $wand,
   int32 $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };


=begin pod
=head1 IsPixelWandSimilar
=head2 C

    MagickBooleanType IsPixelWandSimilar(PixelWand *p,PixelWand *q,
      const double fuzz)

IsPixelWandSimilar() returns MagickTrue if the distance between two colors is less than the specified distance.- p: the pixel wand. - q: the pixel wand. - fuzz: any two colors that are less than or equal to this distance squared are consider similar. 
=end pod
sub IsPixelWandSimilar(
   PixelWandPointer $p,
   PixelWandPointer $q,
   double $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 IsPixelWand
=head2 C

    MagickBooleanType IsPixelWand(const PixelWand *wand)

IsPixelWand() returns MagickTrue if the wand is verified as a pixel wand.- wand: the magick wand. 
=end pod
sub IsPixelWand(
   PixelWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 NewPixelWand
=head2 C

    PixelWand *NewPixelWand(void)

NewPixelWand() returns a new pixel wand.<h2><a href="http://www.imagemagick.org/api/MagickWand/pixel-wand_8c.html" id="NewPixelWands">NewPixelWands</a></h2>NewPixelWands() returns an array of pixel wands.The format of the NewPixelWands method is:<pre class="text">PixelWand \*\*NewPixelWands(const size_t number_wands)</pre>- number_wands: the number of wands. 
=end pod
sub NewPixelWand(
   v $oid
)
returns PixelWandPointer
is native(&library)
is export { * };


=begin pod
=head1 PixelClearException
=head2 C

    MagickBooleanType PixelClearException(PixelWand *wand)

PixelClearException() clear any exceptions associated with the iterator.- wand: the pixel wand. 
=end pod
sub PixelClearException(
   PixelWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetAlpha
=head2 C

    double PixelGetAlpha(const PixelWand *wand)

PixelGetAlpha() returns the normalized alpha value of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetAlpha(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetAlphaQuantum
=head2 C

    Quantum PixelGetAlphaQuantum(const PixelWand *wand)

PixelGetAlphaQuantum() returns the alpha value of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetAlphaQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlack
=head2 C

    double PixelGetBlack(const PixelWand *wand)

PixelGetBlack() returns the normalized black color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetBlack(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlackQuantum
=head2 C

    Quantum PixelGetBlackQuantum(const PixelWand *wand)

PixelGetBlackQuantum() returns the black color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetBlackQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlue
=head2 C

    double PixelGetBlue(const PixelWand *wand)

PixelGetBlue() returns the normalized blue color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetBlue(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlueQuantum
=head2 C

    Quantum PixelGetBlueQuantum(const PixelWand *wand)

PixelGetBlueQuantum() returns the blue color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetBlueQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetColorAsString
=head2 C

    char *PixelGetColorAsString(PixelWand *wand)

PixelGetColorAsString() returnsd the color of the pixel wand as a string.- wand: the pixel wand. 
=end pod
sub PixelGetColorAsString(
   PixelWandPointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetColorAsNormalizedString
=head2 C

    char *PixelGetColorAsNormalizedString(PixelWand *wand)

PixelGetColorAsNormalizedString() returns the normalized color of the pixel wand as a string.- wand: the pixel wand. 
=end pod
sub PixelGetColorAsNormalizedString(
   PixelWandPointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetColorCount
=head2 C

    size_t PixelGetColorCount(const PixelWand *wand)

PixelGetColorCount() returns the color count associated with this color.- wand: the pixel wand. 
=end pod
sub PixelGetColorCount(
   PixelWandPointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetCyan
=head2 C

    double PixelGetCyan(const PixelWand *wand)

PixelGetCyan() returns the normalized cyan color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetCyan(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetCyanQuantum
=head2 C

    Quantum PixelGetCyanQuantum(const PixelWand *wand)

PixelGetCyanQuantum() returns the cyan color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetCyanQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetException
=head2 C

    char *PixelGetException(const PixelWand *wand,ExceptionType *severity)

PixelGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- wand: the pixel wand. - severity: the severity of the error is returned here. 
=end pod
sub PixelGetException(
   PixelWandPointer $wand,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetExceptionType
=head2 C

    ExceptionType PixelGetExceptionType(const PixelWand *wand)

PixelGetExceptionType() the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.- wand: the magick wand. 
=end pod
sub PixelGetExceptionType(
   PixelWandPointer $wand
)
returns ExceptionType 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetFuzz
=head2 C

    double PixelGetFuzz(const PixelWand *wand)

PixelGetFuzz() returns the normalized fuzz value of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetFuzz(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetGreen
=head2 C

    double PixelGetGreen(const PixelWand *wand)

PixelGetGreen() returns the normalized green color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetGreen(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetGreenQuantum
=head2 C

    Quantum PixelGetGreenQuantum(const PixelWand *wand)

PixelGetGreenQuantum() returns the green color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetGreenQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetHSL
=head2 C

    void PixelGetHSL(const PixelWand *wand,double *hue,double *saturation,
      double *lightness)

PixelGetHSL() returns the normalized HSL color of the pixel wand.- wand: the pixel wand. - hue,saturation,lightness: Return the pixel hue, saturation, and brightness. 
=end pod
sub PixelGetHSL(
   PixelWandPointer $wand,
   num64* $hue,
   num64* $saturation,
   num64* $lightness
)
is native(&library)
is export { * };


=begin pod
=head1 PixelGetIndex
=head2 C

    IndexPacket PixelGetIndex(const PixelWand *wand)

PixelGetIndex() returns the colormap index from the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetIndex(
   PixelWandPointer $wand
)
returns IndexPacket 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetMagenta
=head2 C

    double PixelGetMagenta(const PixelWand *wand)

PixelGetMagenta() returns the normalized magenta color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetMagenta(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetMagentaQuantum
=head2 C

    Quantum PixelGetMagentaQuantum(const PixelWand *wand)

PixelGetMagentaQuantum() returns the magenta color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetMagentaQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetMagickColor
=head2 C

    void PixelGetMagickColor(PixelWand *wand,MagickPixelPacket *color)

PixelGetMagickColor() gets the magick color of the pixel wand.- wand: the pixel wand. - color:  The pixel wand color is returned here. 
=end pod
sub PixelGetMagickColor(
   PixelWandPointer $wand,
   MagickPixelPacket * $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelGetOpacity
=head2 C

    double PixelGetOpacity(const PixelWand *wand)

PixelGetOpacity() returns the normalized opacity value of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetOpacity(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetOpacityQuantum
=head2 C

    Quantum PixelGetOpacityQuantum(const PixelWand *wand)

PixelGetOpacityQuantum() returns the opacity value of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetOpacityQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetQuantumColor
=head2 C

    void PixelGetQuantumColor(PixelWand *wand,PixelPacket *color)

PixelGetQuantumColor() gets the color of the pixel wand as a PixelPacket.- wand: the pixel wand. - color:  The pixel wand color is returned here. 
=end pod
sub PixelGetQuantumColor(
   PixelWandPointer $wand,
   PixelPacket * $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelGetRed
=head2 C

    double PixelGetRed(const PixelWand *wand)

PixelGetRed() returns the normalized red color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetRed(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetRedQuantum
=head2 C

    Quantum PixelGetRedQuantum(const PixelWand *wand)

PixelGetRedQuantum() returns the red color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetRedQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetYellow
=head2 C

    double PixelGetYellow(const PixelWand *wand)

PixelGetYellow() returns the normalized yellow color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetYellow(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 PixelGetYellowQuantum
=head2 C

    Quantum PixelGetYellowQuantum(const PixelWand *wand)

PixelGetYellowQuantum() returns the yellow color of the pixel wand.- wand: the pixel wand. 
=end pod
sub PixelGetYellowQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };


=begin pod
=head1 PixelSetAlpha
=head2 C

    void PixelSetAlpha(PixelWand *wand,const double alpha)

PixelSetAlpha() sets the normalized alpha value of the pixel wand.- wand: the pixel wand. - alpha: the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent. 
=end pod
sub PixelSetAlpha(
   PixelWandPointer $wand,
   double $alpha
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetAlphaQuantum
=head2 C

    void PixelSetAlphaQuantum(PixelWand *wand,
      const Quantum opacity)

PixelSetAlphaQuantum() sets the alpha value of the pixel wand.- wand: the pixel wand. - opacity: the opacity value. 
=end pod
sub PixelSetAlphaQuantum(
   PixelWandPointer $wand,
   Quantum $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlack
=head2 C

    void PixelSetBlack(PixelWand *wand,const double black)

PixelSetBlack() sets the normalized black color of the pixel wand.- wand: the pixel wand. - black: the black color. 
=end pod
sub PixelSetBlack(
   PixelWandPointer $wand,
   double $black
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlackQuantum
=head2 C

    void PixelSetBlackQuantum(PixelWand *wand,const Quantum black)

PixelSetBlackQuantum() sets the black color of the pixel wand.- wand: the pixel wand. - black: the black color. 
=end pod
sub PixelSetBlackQuantum(
   PixelWandPointer $wand,
   Quantum $black
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlue
=head2 C

    void PixelSetBlue(PixelWand *wand,const double blue)

PixelSetBlue() sets the normalized blue color of the pixel wand.- wand: the pixel wand. - blue: the blue color. 
=end pod
sub PixelSetBlue(
   PixelWandPointer $wand,
   double $blue
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlueQuantum
=head2 C

    void PixelSetBlueQuantum(PixelWand *wand,const Quantum blue)

PixelSetBlueQuantum() sets the blue color of the pixel wand.- wand: the pixel wand. - blue: the blue color. 
=end pod
sub PixelSetBlueQuantum(
   PixelWandPointer $wand,
   Quantum $blue
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetColor
=head2 C

    MagickBooleanType PixelSetColor(PixelWand *wand,const char *color)

PixelSetColor() sets the color of the pixel wand with a string (e.g. "blue", "#0000ff", "rgb(0,0,255)", "cmyk(100,100,100,10)", etc.).- wand: the pixel wand. - color: the pixel wand color. 
=end pod
sub PixelSetColor(
   PixelWandPointer $wand,
   Str $color
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelSetColorCount
=head2 C

    void PixelSetColorCount(PixelWand *wand,const size_t count)

PixelSetColorCount() sets the color count of the pixel wand.- wand: the pixel wand. - count: the number of this particular color. 
=end pod
sub PixelSetColorCount(
   PixelWandPointer $wand,
   int32 $count
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetColorFromWand
=head2 C

    void PixelSetColorFromWand(PixelWand *wand,const PixelWand *color)

PixelSetColorFromWand() sets the color of the pixel wand.- wand: the pixel wand. - color: set the pixel wand color here. 
=end pod
sub PixelSetColorFromWand(
   PixelWandPointer $wand,
   PixelWandPointer $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetCyan
=head2 C

    void PixelSetCyan(PixelWand *wand,const double cyan)

PixelSetCyan() sets the normalized cyan color of the pixel wand.- wand: the pixel wand. - cyan: the cyan color. 
=end pod
sub PixelSetCyan(
   PixelWandPointer $wand,
   double $cyan
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetCyanQuantum
=head2 C

    void PixelSetCyanQuantum(PixelWand *wand,const Quantum cyan)

PixelSetCyanQuantum() sets the cyan color of the pixel wand.- wand: the pixel wand. - cyan: the cyan color. 
=end pod
sub PixelSetCyanQuantum(
   PixelWandPointer $wand,
   Quantum $cyan
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetFuzz
=head2 C

    void PixelSetFuzz(PixelWand *wand,const double fuzz)

PixelSetFuzz() sets the fuzz value of the pixel wand.- wand: the pixel wand. - fuzz: the fuzz value. 
=end pod
sub PixelSetFuzz(
   PixelWandPointer $wand,
   double $fuzz
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetGreen
=head2 C

    void PixelSetGreen(PixelWand *wand,const double green)

PixelSetGreen() sets the normalized green color of the pixel wand.- wand: the pixel wand. - green: the green color. 
=end pod
sub PixelSetGreen(
   PixelWandPointer $wand,
   double $green
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetGreenQuantum
=head2 C

    void PixelSetGreenQuantum(PixelWand *wand,const Quantum green)

PixelSetGreenQuantum() sets the green color of the pixel wand.- wand: the pixel wand. - green: the green color. 
=end pod
sub PixelSetGreenQuantum(
   PixelWandPointer $wand,
   Quantum $green
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetHSL
=head2 C

    void PixelSetHSL(PixelWand *wand,const double hue,
      const double saturation,const double lightness)

PixelSetHSL() sets the normalized HSL color of the pixel wand.- wand: the pixel wand. - hue,saturation,lightness: Return the pixel hue, saturation, and brightness. 
=end pod
sub PixelSetHSL(
   PixelWandPointer $wand,
   double $hue,
   double $saturation,
   double $lightness
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetIndex
=head2 C

    void PixelSetIndex(PixelWand *wand,const IndexPacket index)

PixelSetIndex() sets the colormap index of the pixel wand.- wand: the pixel wand. - index: the colormap index. 
=end pod
sub PixelSetIndex(
   PixelWandPointer $wand,
   IndexPacket $index
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetMagenta
=head2 C

    void PixelSetMagenta(PixelWand *wand,const double magenta)

PixelSetMagenta() sets the normalized magenta color of the pixel wand.- wand: the pixel wand. - magenta: the magenta color. 
=end pod
sub PixelSetMagenta(
   PixelWandPointer $wand,
   double $magenta
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetMagentaQuantum
=head2 C

    void PixelSetMagentaQuantum(PixelWand *wand,
      const Quantum magenta)

PixelSetMagentaQuantum() sets the magenta color of the pixel wand.- wand: the pixel wand. - magenta: the green magenta. 
=end pod
sub PixelSetMagentaQuantum(
   PixelWandPointer $wand,
   Quantum $magenta
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetMagickColor
=head2 C

    void PixelSetMagickColor(PixelWand *wand,const MagickPixelPacket *color)

PixelSetMagickColor() sets the color of the pixel wand.- wand: the pixel wand. - color: the pixel wand color. 
=end pod
sub PixelSetMagickColor(
   PixelWandPointer $wand,
   MagickPixelPacket * $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetOpacity
=head2 C

    void PixelSetOpacity(PixelWand *wand,const double opacity)

PixelSetOpacity() sets the normalized opacity value of the pixel wand.- wand: the pixel wand. - opacity: the opacity value. 
=end pod
sub PixelSetOpacity(
   PixelWandPointer $wand,
   double $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetOpacityQuantum
=head2 C

    void PixelSetOpacityQuantum(PixelWand *wand,
      const Quantum opacity)

PixelSetOpacityQuantum() sets the opacity value of the pixel wand.- wand: the pixel wand. - opacity: the opacity value. 
=end pod
sub PixelSetOpacityQuantum(
   PixelWandPointer $wand,
   Quantum $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetQuantumColor
=head2 C

    void PixelSetQuantumColor(PixelWand *wand,const PixelPacket *color)

PixelSetQuantumColor() sets the color of the pixel wand.- wand: the pixel wand. - color: the pixel wand color. 
=end pod
sub PixelSetQuantumColor(
   PixelWandPointer $wand,
   PixelPacket * $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetRed
=head2 C

    void PixelSetRed(PixelWand *wand,const double red)

PixelSetRed() sets the normalized red color of the pixel wand.- wand: the pixel wand. - red: the red color. 
=end pod
sub PixelSetRed(
   PixelWandPointer $wand,
   double $red
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetRedQuantum
=head2 C

    void PixelSetRedQuantum(PixelWand *wand,const Quantum red)

PixelSetRedQuantum() sets the red color of the pixel wand.- wand: the pixel wand. - red: the red color. 
=end pod
sub PixelSetRedQuantum(
   PixelWandPointer $wand,
   Quantum $red
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetYellow
=head2 C

    void PixelSetYellow(PixelWand *wand,const double yellow)

PixelSetYellow() sets the normalized yellow color of the pixel wand.- wand: the pixel wand. - yellow: the yellow color. 
=end pod
sub PixelSetYellow(
   PixelWandPointer $wand,
   double $yellow
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetYellowQuantum
=head2 C

    void PixelSetYellowQuantum(PixelWand *wand,const Quantum yellow)

PixelSetYellowQuantum() sets the yellow color of the pixel wand.- wand: the pixel wand. - yellow: the yellow color. 
=end pod
sub PixelSetYellowQuantum(
   PixelWandPointer $wand,
   Quantum $yellow
)
is native(&library)
is export { * };


