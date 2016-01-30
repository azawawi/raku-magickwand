
use v6;

unit module MagickWand::NativeCall::PixelWand;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 ClearPixelWand

    void ClearPixelWand(PixelWand *wand)

ClearPixelWand() clears resources associated with the wand.
=end pod
sub ClearPixelWand(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 ClonePixelWand

    PixelWand *ClonePixelWand(const PixelWand *wand)

ClonePixelWand() makes an exact copy of the specified wand.
=end pod
sub ClonePixelWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 ClonePixelWands

    PixelWand **ClonePixelWands(const PixelWand **wands,
      const size_t number_wands)

ClonePixelWands() makes an exact copy of the specified wands.
=end pod
sub ClonePixelWands(
   CArray[Pointer] $wands,
   int32 $number_wands
)
returns CArray[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 DestroyPixelWand

    PixelWand *DestroyPixelWand(PixelWand *wand)

DestroyPixelWand() deallocates resources associated with a PixelWand.
=end pod
sub DestroyPixelWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DestroyPixelWands

    PixelWand **DestroyPixelWands(PixelWand **wand,
      const size_t number_wands)

DestroyPixelWands() deallocates resources associated with an array of pixel wands.
=end pod
sub DestroyPixelWands(
   CArray[Pointer] $wand,
   int32 $number_wands
)
returns CArray[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 IsPixelWandSimilar

    MagickBooleanType IsPixelWandSimilar(PixelWand *p,PixelWand *q,
      const double fuzz)

IsPixelWandSimilar() returns MagickTrue if the distance between two colors is less than the specified distance.
=end pod
sub IsPixelWandSimilar(
   Pointer $p,
   Pointer $q,
   num64 $fuzz
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 IsPixelWand

    MagickBooleanType IsPixelWand(const PixelWand *wand)

IsPixelWand() returns MagickTrue if the wand is verified as a pixel wand.
=end pod
sub IsPixelWand(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 NewPixelWand

    PixelWand *NewPixelWand(void)

NewPixelWand() returns a new pixel wand.
=end pod
sub NewPixelWand()
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 NewPixelWands

    PixelWand **NewPixelWands(const size_t number_wands)

NewPixelWands() returns an array of pixel wands.
=end pod
sub NewPixelWands(
   int32 $number_wands
)
returns CArray[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 PixelClearException

    MagickBooleanType PixelClearException(PixelWand *wand)

PixelClearException() clear any exceptions associated with the iterator.
=end pod
sub PixelClearException(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetAlpha

    double PixelGetAlpha(const PixelWand *wand)

PixelGetAlpha() returns the normalized alpha value of the pixel wand.
=end pod
sub PixelGetAlpha(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetAlphaQuantum

    Quantum PixelGetAlphaQuantum(const PixelWand *wand)

PixelGetAlphaQuantum() returns the alpha value of the pixel wand.
=end pod
sub PixelGetAlphaQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlack

    double PixelGetBlack(const PixelWand *wand)

PixelGetBlack() returns the normalized black color of the pixel wand.
=end pod
sub PixelGetBlack(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlackQuantum

    Quantum PixelGetBlackQuantum(const PixelWand *wand)

PixelGetBlackQuantum() returns the black color of the pixel wand.
=end pod
sub PixelGetBlackQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlue

    double PixelGetBlue(const PixelWand *wand)

PixelGetBlue() returns the normalized blue color of the pixel wand.
=end pod
sub PixelGetBlue(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetBlueQuantum

    Quantum PixelGetBlueQuantum(const PixelWand *wand)

PixelGetBlueQuantum() returns the blue color of the pixel wand.
=end pod
sub PixelGetBlueQuantum(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 PixelGetColorAsString

    char *PixelGetColorAsString(PixelWand *wand)

PixelGetColorAsString() returnsd the color of the pixel wand as a string.
=end pod
sub PixelGetColorAsString(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetColorAsNormalizedString

    char *PixelGetColorAsNormalizedString(PixelWand *wand)

PixelGetColorAsNormalizedString() returns the normalized color of the pixel wand as a string.
=end pod
sub PixelGetColorAsNormalizedString(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetColorCount

    size_t PixelGetColorCount(const PixelWand *wand)

PixelGetColorCount() returns the color count associated with this color.
=end pod
sub PixelGetColorCount(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetCyan

    double PixelGetCyan(const PixelWand *wand)

PixelGetCyan() returns the normalized cyan color of the pixel wand.
=end pod
sub PixelGetCyan(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetCyanQuantum

    Quantum PixelGetCyanQuantum(const PixelWand *wand)

PixelGetCyanQuantum() returns the cyan color of the pixel wand.
=end pod
sub PixelGetCyanQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetException

    char *PixelGetException(const PixelWand *wand,ExceptionType *severity)

PixelGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.
=end pod
sub PixelGetException(
   Pointer $wand,
   Pointer $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetExceptionType

    ExceptionType PixelGetExceptionType(const PixelWand *wand)

PixelGetExceptionType() the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.
=end pod
sub PixelGetExceptionType(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 PixelGetFuzz

    double PixelGetFuzz(const PixelWand *wand)

PixelGetFuzz() returns the normalized fuzz value of the pixel wand.
=end pod
sub PixelGetFuzz(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetGreen

    double PixelGetGreen(const PixelWand *wand)

PixelGetGreen() returns the normalized green color of the pixel wand.
=end pod
sub PixelGetGreen(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetGreenQuantum

    Quantum PixelGetGreenQuantum(const PixelWand *wand)

PixelGetGreenQuantum() returns the green color of the pixel wand.
=end pod
sub PixelGetGreenQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetHSL

    void PixelGetHSL(const PixelWand *wand,double *hue,double *saturation,
      double *lightness)

PixelGetHSL() returns the normalized HSL color of the pixel wand.
=end pod
sub PixelGetHSL(
   Pointer $wand,
   CArray[num64] $hue,
   CArray[num64] $saturation,
   CArray[num64] $lightness
)
is native(&library)
is export { * };


=begin pod
=head1 PixelGetIndex

    IndexPacket PixelGetIndex(const PixelWand *wand)

PixelGetIndex() returns the colormap index from the pixel wand.
=end pod
sub PixelGetIndex(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetMagenta

    double PixelGetMagenta(const PixelWand *wand)

PixelGetMagenta() returns the normalized magenta color of the pixel wand.
=end pod
sub PixelGetMagenta(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetMagentaQuantum

    Quantum PixelGetMagentaQuantum(const PixelWand *wand)

PixelGetMagentaQuantum() returns the magenta color of the pixel wand.
=end pod
sub PixelGetMagentaQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetMagickColor

    void PixelGetMagickColor(PixelWand *wand,MagickPixelPacket *color)

PixelGetMagickColor() gets the magick color of the pixel wand.
=end pod
sub PixelGetMagickColor(
   Pointer $wand,
   Pointer $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelGetOpacity

    double PixelGetOpacity(const PixelWand *wand)

PixelGetOpacity() returns the normalized opacity value of the pixel wand.
=end pod
sub PixelGetOpacity(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetOpacityQuantum

    Quantum PixelGetOpacityQuantum(const PixelWand *wand)

PixelGetOpacityQuantum() returns the opacity value of the pixel wand.
=end pod
sub PixelGetOpacityQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetQuantumColor

    void PixelGetQuantumColor(PixelWand *wand,PixelPacket *color)

PixelGetQuantumColor() gets the color of the pixel wand as a PixelPacket.
=end pod
sub PixelGetQuantumColor(
   Pointer $wand,
   Pointer $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelGetRed

    double PixelGetRed(const PixelWand *wand)

PixelGetRed() returns the normalized red color of the pixel wand.
=end pod
sub PixelGetRed(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetRedQuantum

    Quantum PixelGetRedQuantum(const PixelWand *wand)

PixelGetRedQuantum() returns the red color of the pixel wand.
=end pod
sub PixelGetRedQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetYellow

    double PixelGetYellow(const PixelWand *wand)

PixelGetYellow() returns the normalized yellow color of the pixel wand.
=end pod
sub PixelGetYellow(
   Pointer $wand
)
returns num64 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetYellowQuantum

    Quantum PixelGetYellowQuantum(const PixelWand *wand)

PixelGetYellowQuantum() returns the yellow color of the pixel wand.
=end pod
sub PixelGetYellowQuantum(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelSetAlpha

    void PixelSetAlpha(PixelWand *wand,const double alpha)

PixelSetAlpha() sets the normalized alpha value of the pixel wand.
=end pod
sub PixelSetAlpha(
   Pointer $wand,
   num64 $alpha
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetAlphaQuantum

    void PixelSetAlphaQuantum(PixelWand *wand,
      const Quantum opacity)

PixelSetAlphaQuantum() sets the alpha value of the pixel wand.
=end pod
sub PixelSetAlphaQuantum(
   Pointer $wand,
   uint32 $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlack

    void PixelSetBlack(PixelWand *wand,const double black)

PixelSetBlack() sets the normalized black color of the pixel wand.
=end pod
sub PixelSetBlack(
   Pointer $wand,
   num64 $black
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlackQuantum

    void PixelSetBlackQuantum(PixelWand *wand,const Quantum black)

PixelSetBlackQuantum() sets the black color of the pixel wand.
=end pod
sub PixelSetBlackQuantum(
   Pointer $wand,
   uint32 $black
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlue

    void PixelSetBlue(PixelWand *wand,const double blue)

PixelSetBlue() sets the normalized blue color of the pixel wand.
=end pod
sub PixelSetBlue(
   Pointer $wand,
   num64 $blue
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetBlueQuantum

    void PixelSetBlueQuantum(PixelWand *wand,const Quantum blue)

PixelSetBlueQuantum() sets the blue color of the pixel wand.
=end pod
sub PixelSetBlueQuantum(
   Pointer $wand,
   uint32 $blue
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetColor

    MagickBooleanType PixelSetColor(PixelWand *wand,const char *color)

PixelSetColor() sets the color of the pixel wand with a string (e.g. "blue", "#0000ff", "rgb(0,0,255)", "cmyk(100,100,100,10)", etc.).
=end pod
sub PixelSetColor(
   Pointer $wand,
   Str $color
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 PixelSetColorCount

    void PixelSetColorCount(PixelWand *wand,const size_t count)

PixelSetColorCount() sets the color count of the pixel wand.
=end pod
sub PixelSetColorCount(
   Pointer $wand,
   int32 $count
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetColorFromWand

    void PixelSetColorFromWand(PixelWand *wand,const PixelWand *color)

PixelSetColorFromWand() sets the color of the pixel wand.
=end pod
sub PixelSetColorFromWand(
   Pointer $wand,
   Pointer $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetCyan

    void PixelSetCyan(PixelWand *wand,const double cyan)

PixelSetCyan() sets the normalized cyan color of the pixel wand.
=end pod
sub PixelSetCyan(
   Pointer $wand,
   num64 $cyan
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetCyanQuantum

    void PixelSetCyanQuantum(PixelWand *wand,const Quantum cyan)

PixelSetCyanQuantum() sets the cyan color of the pixel wand.
=end pod
sub PixelSetCyanQuantum(
   Pointer $wand,
   uint32 $cyan
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetFuzz

    void PixelSetFuzz(PixelWand *wand,const double fuzz)

PixelSetFuzz() sets the fuzz value of the pixel wand.
=end pod
sub PixelSetFuzz(
   Pointer $wand,
   num64 $fuzz
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetGreen

    void PixelSetGreen(PixelWand *wand,const double green)

PixelSetGreen() sets the normalized green color of the pixel wand.
=end pod
sub PixelSetGreen(
   Pointer $wand,
   num64 $green
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetGreenQuantum

    void PixelSetGreenQuantum(PixelWand *wand,const Quantum green)

PixelSetGreenQuantum() sets the green color of the pixel wand.
=end pod
sub PixelSetGreenQuantum(
   Pointer $wand,
   uint32 $green
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetHSL

    void PixelSetHSL(PixelWand *wand,const double hue,
      const double saturation,const double lightness)

PixelSetHSL() sets the normalized HSL color of the pixel wand.
=end pod
sub PixelSetHSL(
   Pointer $wand,
   num64 $hue,
   num64 $saturation,
   num64 $lightness
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetIndex

    void PixelSetIndex(PixelWand *wand,const IndexPacket index)

PixelSetIndex() sets the colormap index of the pixel wand.
=end pod
sub PixelSetIndex(
   Pointer $wand,
   uint32 $index
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetMagenta

    void PixelSetMagenta(PixelWand *wand,const double magenta)

PixelSetMagenta() sets the normalized magenta color of the pixel wand.
=end pod
sub PixelSetMagenta(
   Pointer $wand,
   num64 $magenta
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetMagentaQuantum

    void PixelSetMagentaQuantum(PixelWand *wand,
      const Quantum magenta)

PixelSetMagentaQuantum() sets the magenta color of the pixel wand.
=end pod
sub PixelSetMagentaQuantum(
   Pointer $wand,
   uint32 $magenta
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetMagickColor

    void PixelSetMagickColor(PixelWand *wand,const MagickPixelPacket *color)

PixelSetMagickColor() sets the color of the pixel wand.
=end pod
sub PixelSetMagickColor(
   Pointer $wand,
   Pointer $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetOpacity

    void PixelSetOpacity(PixelWand *wand,const double opacity)

PixelSetOpacity() sets the normalized opacity value of the pixel wand.
=end pod
sub PixelSetOpacity(
   Pointer $wand,
   num64 $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetOpacityQuantum

    void PixelSetOpacityQuantum(PixelWand *wand,
      const Quantum opacity)

PixelSetOpacityQuantum() sets the opacity value of the pixel wand.
=end pod
sub PixelSetOpacityQuantum(
   Pointer $wand,
   uint32 $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetQuantumColor

    void PixelSetQuantumColor(PixelWand *wand,const PixelPacket *color)

PixelSetQuantumColor() sets the color of the pixel wand.
=end pod
sub PixelSetQuantumColor(
   Pointer $wand,
   Pointer $color
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetRed

    void PixelSetRed(PixelWand *wand,const double red)

PixelSetRed() sets the normalized red color of the pixel wand.
=end pod
sub PixelSetRed(
   Pointer $wand,
   num64 $red
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetRedQuantum

    void PixelSetRedQuantum(PixelWand *wand,const Quantum red)

PixelSetRedQuantum() sets the red color of the pixel wand.
=end pod
sub PixelSetRedQuantum(
   Pointer $wand,
   uint32 $red
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetYellow

    void PixelSetYellow(PixelWand *wand,const double yellow)

PixelSetYellow() sets the normalized yellow color of the pixel wand.
=end pod
sub PixelSetYellow(
   Pointer $wand,
   num64 $yellow
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetYellowQuantum

    void PixelSetYellowQuantum(PixelWand *wand,const Quantum yellow)

PixelSetYellowQuantum() sets the yellow color of the pixel wand.
=end pod
sub PixelSetYellowQuantum(
   Pointer $wand,
   uint32 $yellow
)
is native(&library)
is export { * };
