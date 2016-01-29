
use v6;

unit module MagickWand::NativeCall::DrawingWand;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 ClearDrawingWand
=head2 C

    void ClearDrawingWand(DrawingWand *wand)

ClearDrawingWand() clears resources associated with the drawing wand.- wand: the drawing wand to clear. 
=end pod
sub ClearDrawingWand(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 CloneDrawingWand
=head2 C

    DrawingWand *CloneDrawingWand(const DrawingWand *wand)

CloneDrawingWand() makes an exact copy of the specified wand.- wand: the magick wand. 
=end pod
sub CloneDrawingWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DestroyDrawingWand
=head2 C

    DrawingWand *DestroyDrawingWand(DrawingWand *wand)

DestroyDrawingWand() frees all resources associated with the drawing wand. Once the drawing wand has been freed, it should not be used and further unless it re-allocated.- wand: the drawing wand to destroy. 
=end pod
sub DestroyDrawingWand(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DrawAffine
=head2 C

    void DrawAffine(DrawingWand *wand,const AffineMatrix *affine)

DrawAffine() adjusts the current affine transformation matrix with the specified affine transformation matrix. Note that the current affine transform is adjusted rather than replaced.- wand: Drawing wand - affine: Affine matrix parameters 
=end pod
sub DrawAffine(
   Pointer $wand,
   Pointer $affine
)
is native(&library)
is export { * };


=begin pod
=head1 DrawAnnotation
=head2 C

    void DrawAnnotation(DrawingWand *wand,const double x,
      const double y,const unsigned char *text)

DrawAnnotation() draws text on the image.- wand: the drawing wand. - x: x ordinate to left of text - y: y ordinate to text baseline - text: text to draw 
=end pod
sub DrawAnnotation(
   Pointer $wand,
   num64 $x,
   num64 $y,
   Str $text
)
is native(&library)
is export { * };


=begin pod
=head1 DrawArc
=head2 C

    void DrawArc(DrawingWand *wand,const double sx,const double sy,
      const double ex,const double ey,const double sd,const double ed)

DrawArc() draws an arc falling within a specified bounding rectangle on the image.- wand: the drawing wand. - sx: starting x ordinate of bounding rectangle - sy: starting y ordinate of bounding rectangle - ex: ending x ordinate of bounding rectangle - ey: ending y ordinate of bounding rectangle - sd: starting degrees of rotation - ed: ending degrees of rotation 
=end pod
sub DrawArc(
   Pointer $wand,
   num64 $sx,
   num64 $sy,
   num64 $ex,
   num64 $ey,
   num64 $sd,
   num64 $ed
)
is native(&library)
is export { * };


=begin pod
=head1 DrawBezier
=head2 C

    void DrawBezier(DrawingWand *wand,
      const size_t number_coordinates,const PointInfo *coordinates)

DrawBezier() draws a bezier curve through a set of points on the image.- wand: the drawing wand. - number_coordinates: number of coordinates - coordinates: coordinates 
=end pod
sub DrawBezier(
   Pointer $wand,
   int32 $number_coordinates,
   Pointer $coordinates
)
is native(&library)
is export { * };


=begin pod
=head1 DrawCircle
=head2 C

    void DrawCircle(DrawingWand *wand,const double ox,
      const double oy,const double px, const double py)

DrawCircle() draws a circle on the image.- wand: the drawing wand. - ox: origin x ordinate - oy: origin y ordinate - px: perimeter x ordinate - py: perimeter y ordinate 
=end pod
sub DrawCircle(
   Pointer $wand,
   num64 $ox,
   num64 $oy,
   num64 $px,
   num64 $py
)
is native(&library)
is export { * };


=begin pod
=head1 DrawClearException
=head2 C

    MagickBooleanType DrawClearException(DrawWand *wand)

DrawClearException() clear any exceptions associated with the wand.- wand: the drawing wand. 
=end pod
sub DrawClearException(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawComposite
=head2 C

    MagickBooleanType DrawComposite(DrawingWand *wand,
      const CompositeOperator compose,const double x,
      const double y,const double width,const double height,
      MagickWand *magick_wand)

DrawComposite() composites an image onto the current image, using the specified composition operator, specified position, and at the specified size.- wand: the drawing wand. - compose: composition operator - x: x ordinate of top left corner - y: y ordinate of top left corner - width: Width to resize image to prior to compositing.  Specify zero to use existing width. - height: Height to resize image to prior to compositing.  Specify zero to use existing height. - magick_wand: Image to composite is obtained from this wand. 
=end pod
sub DrawComposite(
   Pointer $wand,
   uint32 $compose,
   num64 $x,
   num64 $y,
   num64 $width,
   num64 $height,
   Pointer $magick_wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawColor
=head2 C

    void DrawColor(DrawingWand *wand,const double x,const double y,
      const PaintMethod paint_method)

DrawColor() draws color on image using the current fill color, starting at specified position, and using specified paint method. The available paint methods are:<pre class="text">    PointMethod: Recolors the target pixel    ReplaceMethod: Recolor any pixel that matches the target pixel.    FloodfillMethod: Recolors target pixels and matching neighbors.    ResetMethod: Recolor all pixels.</pre>- wand: the drawing wand. - x: x ordinate. - y: y ordinate. - paint_method: paint method. 
=end pod
sub DrawColor(
   Pointer $wand,
   num64 $x,
   num64 $y,
   uint32 $paint_method
)
is native(&library)
is export { * };


=begin pod
=head1 DrawComment
=head2 C

    void DrawComment(DrawingWand *wand,const char *comment)

DrawComment() adds a comment to a vector output stream.- wand: the drawing wand. - comment: comment text 
=end pod
sub DrawComment(
   Pointer $wand,
   Str $comment
)
is native(&library)
is export { * };


=begin pod
=head1 DrawEllipse
=head2 C

    void DrawEllipse(DrawingWand *wand,const double ox,const double oy,
       const double rx,const double ry,const double start,const double end)

DrawEllipse() draws an ellipse on the image.- wand: the drawing wand. - ox: origin x ordinate - oy: origin y ordinate - rx: radius in x - ry: radius in y - start: starting rotation in degrees - end: ending rotation in degrees 
=end pod
sub DrawEllipse(
   Pointer $wand,
   num64 $ox,
   num64 $oy,
   num64 $rx,
   num64 $ry,
   num64 $start,
   num64 $end
)
is native(&library)
is export { * };


=begin pod
=head1 DrawGetBorderColor
=head2 C

    void DrawGetBorderColor(const DrawingWand *wand,
      PixelWand *border_color)

DrawGetBorderColor() returns the border color used for drawing bordered objects.- wand: the drawing wand. - border_color: Return the border color. 
=end pod
sub DrawGetBorderColor(
   Pointer $wand,
   Pointer $border_color
)
is native(&library)
is export { * };


=begin pod
=head1 DrawGetClipPath
=head2 C

    char *DrawGetClipPath(const DrawingWand *wand)

DrawGetClipPath() obtains the current clipping path ID. The value returned must be deallocated by the user when it is no longer needed.- wand: the drawing wand. 
=end pod
sub DrawGetClipPath(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetClipRule
=head2 C

    FillRule DrawGetClipRule(const DrawingWand *wand)

DrawGetClipRule() returns the current polygon fill rule to be used by the clipping path.- wand: the drawing wand. 
=end pod
sub DrawGetClipRule(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetClipUnits
=head2 C

    ClipPathUnits DrawGetClipUnits(const DrawingWand *wand)

DrawGetClipUnits() returns the interpretation of clip path units.- wand: the drawing wand. 
=end pod
sub DrawGetClipUnits(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetDensity
=head2 C

    char *DrawGetDensity(const DrawingWand *wand)

DrawGetDensity() obtains the vertical and horizontal resolution. The value returned must be deallocated by the user when it is no longer needed.- wand: the drawing wand. 
=end pod
sub DrawGetDensity(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetException
=head2 C

    char *DrawGetException(const DrawWand *wand,
      ExceptionType *severity)

DrawGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- wand: the drawing wand. - severity: the severity of the error is returned here. 
=end pod
sub DrawGetException(
   Pointer $wand,
   Pointer $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetExceptionType
=head2 C

    ExceptionType DrawGetExceptionType(const DrawWand *wand)

DrawGetExceptionType() the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.- wand: the magick wand. 
=end pod
sub DrawGetExceptionType(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFillColor
=head2 C

    void DrawGetFillColor(const DrawingWand *wand,
      PixelWand *fill_color)

DrawGetFillColor() returns the fill color used for drawing filled objects.- wand: the drawing wand. - fill_color: Return the fill color. 
=end pod
sub DrawGetFillColor(
   Pointer $wand,
   Pointer $fill_color
)
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFillOpacity
=head2 C

    double DrawGetFillOpacity(const DrawingWand *wand)

DrawGetFillOpacity() returns the opacity used when drawing using the fill color or fill texture.  Fully opaque is 1.0.- wand: the drawing wand. 
=end pod
sub DrawGetFillOpacity(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFillRule
=head2 C

    FillRule DrawGetFillRule(const DrawingWand *wand)

DrawGetFillRule() returns the fill rule used while drawing polygons.- wand: the drawing wand. 
=end pod
sub DrawGetFillRule(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFont
=head2 C

    char *DrawGetFont(const DrawingWand *wand)

DrawGetFont() returns a null-terminaged string specifying the font used when annotating with text. The value returned must be freed by the user when no longer needed.- wand: the drawing wand. 
=end pod
sub DrawGetFont(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFontFamily
=head2 C

    char *DrawGetFontFamily(const DrawingWand *wand)

DrawGetFontFamily() returns the font family to use when annotating with text. The value returned must be freed by the user when it is no longer needed.- wand: the drawing wand. 
=end pod
sub DrawGetFontFamily(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFontResolution
=head2 C

    DrawBooleanType DrawGetFontResolution(const DrawingWand *wand,
      double *x,double *y)

DrawGetFontResolution() gets the image X and Y resolution.- wand: the magick wand. - x: the x-resolution. - y: the y-resolution. 
=end pod
sub DrawGetFontResolution(
   Pointer $wand,
   CArray[num64] $x,
   CArray[num64] $y
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFontSize
=head2 C

    double DrawGetFontSize(const DrawingWand *wand)

DrawGetFontSize() returns the font pointsize used when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetFontSize(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFontStretch
=head2 C

    StretchType DrawGetFontStretch(const DrawingWand *wand)

DrawGetFontStretch() returns the font stretch used when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetFontStretch(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFontStyle
=head2 C

    StyleType DrawGetFontStyle(const DrawingWand *wand)

DrawGetFontStyle() returns the font style used when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetFontStyle(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 DrawGetFontWeight
=head2 C

    size_t DrawGetFontWeight(const DrawingWand *wand)

DrawGetFontWeight() returns the font weight used when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetFontWeight(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetGravity
=head2 C

    GravityType DrawGetGravity(const DrawingWand *wand)

DrawGetGravity() returns the text placement gravity used when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetGravity(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetOpacity
=head2 C

    double DrawGetOpacity(const DrawingWand *wand)

DrawGetOpacity() returns the opacity used when drawing with the fill or stroke color or texture.  Fully opaque is 1.0.- wand: the drawing wand. 
=end pod
sub DrawGetOpacity(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeAntialias
=head2 C

    MagickBooleanType DrawGetStrokeAntialias(const DrawingWand *wand)

DrawGetStrokeAntialias() returns the current stroke antialias setting. Stroked outlines are antialiased by default.  When antialiasing is disabled stroked pixels are thresholded to determine if the stroke color or underlying canvas color should be used.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeAntialias(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeColor
=head2 C

    void DrawGetStrokeColor(const DrawingWand *wand,
      PixelWand *stroke_color)

DrawGetStrokeColor() returns the color used for stroking object outlines.- wand: the drawing wand. - stroke_color: Return the stroke color. 
=end pod
sub DrawGetStrokeColor(
   Pointer $wand,
   Pointer $stroke_color
)
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeDashArray
=head2 C

    double *DrawGetStrokeDashArray(const DrawingWand *wand,
      size_t *number_elements)

DrawGetStrokeDashArray() returns an array representing the pattern of dashes and gaps used to stroke paths (see DrawSetStrokeDashArray). The array must be freed once it is no longer required by the user.- wand: the drawing wand. - number_elements: address to place number of elements in dash array 
=end pod
sub DrawGetStrokeDashArray(
   Pointer $wand,
   Pointer[int32] $number_elements
)
returns CArray[num64]
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeDashOffset
=head2 C

    double DrawGetStrokeDashOffset(const DrawingWand *wand)

DrawGetStrokeDashOffset() returns the offset into the dash pattern to start the dash.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeDashOffset(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeLineCap
=head2 C

    LineCap DrawGetStrokeLineCap(const DrawingWand *wand)

DrawGetStrokeLineCap() returns the shape to be used at the end of open subpaths when they are stroked. Values of LineCap are UndefinedCap, ButtCap, RoundCap, and SquareCap.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeLineCap(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeLineJoin
=head2 C

    LineJoin DrawGetStrokeLineJoin(const DrawingWand *wand)

DrawGetStrokeLineJoin() returns the shape to be used at the corners of paths (or other vector shapes) when they are stroked. Values of LineJoin are UndefinedJoin, MiterJoin, RoundJoin, and BevelJoin.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeLineJoin(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeMiterLimit
=head2 C

    size_t DrawGetStrokeMiterLimit(const DrawingWand *wand)

DrawGetStrokeMiterLimit() returns the miter limit. When two line segments meet at a sharp angle and miter joins have been specified for 'lineJoin', it is possible for the miter to extend far beyond the thickness of the line stroking the path. The miterLimit' imposes a limit on the ratio of the miter length to the 'lineWidth'.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeMiterLimit(
   Pointer $wand
)
returns int32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeOpacity
=head2 C

    double DrawGetStrokeOpacity(const DrawingWand *wand)

DrawGetStrokeOpacity() returns the opacity of stroked object outlines.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeOpacity(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetStrokeWidth
=head2 C

    double DrawGetStrokeWidth(const DrawingWand *wand)

DrawGetStrokeWidth() returns the width of the stroke used to draw object outlines.- wand: the drawing wand. 
=end pod
sub DrawGetStrokeWidth(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextAlignment
=head2 C

    AlignType DrawGetTextAlignment(const DrawingWand *wand)

DrawGetTextAlignment() returns the alignment applied when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetTextAlignment(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextAntialias
=head2 C

    MagickBooleanType DrawGetTextAntialias(const DrawingWand *wand)

DrawGetTextAntialias() returns the current text antialias setting, which determines whether text is antialiased.  Text is antialiased by default.- wand: the drawing wand. 
=end pod
sub DrawGetTextAntialias(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextDecoration
=head2 C

    DecorationType DrawGetTextDecoration(const DrawingWand *wand)

DrawGetTextDecoration() returns the decoration applied when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetTextDecoration(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextDirection
=head2 C

    DirectionType DrawGetTextDirection(const DrawingWand *wand)

DrawGetTextDirection() returns the direction that will be used when annotating with text.- wand: the drawing wand. 
=end pod
sub DrawGetTextDirection(
   Pointer $wand
)
returns uint32
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextEncoding
=head2 C

    char *DrawGetTextEncoding(const DrawingWand *wand)

DrawGetTextEncoding() returns a null-terminated string which specifies the code set used for text annotations. The string must be freed by the user once it is no longer required.- wand: the drawing wand. 
=end pod
sub DrawGetTextEncoding(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextKerning
=head2 C

    double DrawGetTextKerning(DrawingWand *wand)

DrawGetTextKerning() gets the spacing between characters in text.- wand: the drawing wand. 
=end pod
sub DrawGetTextKerning(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextInterlineSpacing
=head2 C

    double DrawGetTextInterwordSpacing(DrawingWand *wand)

DrawGetTextInterlineSpacing() gets the spacing between lines in text.- wand: the drawing wand. 
=end pod
multi sub DrawGetTextInterwordSpacing(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextInterwordSpacing
=head2 C

    double DrawGetTextInterwordSpacing(DrawingWand *wand)

DrawGetTextInterwordSpacing() gets the spacing between words in text.- wand: the drawing wand. 
=end pod
multi sub DrawGetTextInterwordSpacing(
   Pointer $wand
)
returns num64
is native(&library)
is export { * };


=begin pod
=head1 DrawGetVectorGraphics
=head2 C

    char *DrawGetVectorGraphics(DrawingWand *wand)

DrawGetVectorGraphics() returns a null-terminated string which specifies the vector graphics generated by any graphics calls made since the wand was instantiated.  The string must be freed by the user once it is no longer required.- wand: the drawing wand. 
=end pod
sub DrawGetVectorGraphics(
   Pointer $wand
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 DrawGetTextUnderColor
=head2 C

    void DrawGetTextUnderColor(const DrawingWand *wand,
      PixelWand *under_color)

DrawGetTextUnderColor() returns the color of a background rectangle to place under text annotations.- wand: the drawing wand. - under_color: Return the under color. 
=end pod
sub DrawGetTextUnderColor(
   Pointer $wand,
   Pointer $under_color
)
is native(&library)
is export { * };


=begin pod
=head1 DrawLine
=head2 C

    void DrawLine(DrawingWand *wand,const double sx,const double sy,
      const double ex,const double ey)

DrawLine() draws a line on the image using the current stroke color, stroke opacity, and stroke width.- wand: the drawing wand. - sx: starting x ordinate - sy: starting y ordinate - ex: ending x ordinate - ey: ending y ordinate 
=end pod
sub DrawLine(
   Pointer $wand,
   num64 $sx,
   num64 $sy,
   num64 $ex,
   num64 $ey
)
is native(&library)
is export { * };


=begin pod
=head1 DrawMatte
=head2 C

    void DrawMatte(DrawingWand *wand,const double x,const double y,
      const PaintMethod paint_method)

DrawMatte() paints on the image's opacity channel in order to set effected pixels to transparent. to influence the opacity of pixels. The available paint methods are:<pre class="text">    PointMethod: Select the target pixel    ReplaceMethod: Select any pixel that matches the target pixel.    FloodfillMethod: Select the target pixel and matching neighbors.    FillToBorderMethod: Select the target pixel and neighbors not matchingborder color.    ResetMethod: Select all pixels.</pre>- wand: the drawing wand. - x: x ordinate - y: y ordinate - paint_method: paint method. 
=end pod
sub DrawMatte(
   Pointer $wand,
   num64 $x,
   num64 $y,
   uint32 $paint_method
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathClose
=head2 C

    void DrawPathClose(DrawingWand *wand)

DrawPathClose() adds a path element to the current path which closes the current subpath by drawing a straight line from the current point to the current subpath's most recent starting point (usually, the most recent moveto point).- wand: the drawing wand. 
=end pod
sub DrawPathClose(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToAbsolute
=head2 C

    void DrawPathCurveToAbsolute(DrawingWand *wand,const double x1,
      const double y1,const double x2,const double y2,const double x,
      const double y)

DrawPathCurveToAbsolute() draws a cubic Bezier curve from the current point to (x,y) using (x1,y1) as the control point at the beginning of the curve and (x2,y2) as the control point at the end of the curve using absolute coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of control point for curve beginning - y1: y ordinate of control point for curve beginning - x2: x ordinate of control point for curve ending - y2: y ordinate of control point for curve ending - x: x ordinate of the end of the curve - y: y ordinate of the end of the curve 
=end pod
sub DrawPathCurveToAbsolute(
   Pointer $wand,
   num64 $x1,
   num64 $y1,
   num64 $x2,
   num64 $y2,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToRelative
=head2 C

    void DrawPathCurveToRelative(DrawingWand *wand,const double x1,
      const double y1,const double x2,const double y2,const double x,
      const double y)

DrawPathCurveToRelative() draws a cubic Bezier curve from the current point to (x,y) using (x1,y1) as the control point at the beginning of the curve and (x2,y2) as the control point at the end of the curve using relative coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of control point for curve beginning - y1: y ordinate of control point for curve beginning - x2: x ordinate of control point for curve ending - y2: y ordinate of control point for curve ending - x: x ordinate of the end of the curve - y: y ordinate of the end of the curve 
=end pod
sub DrawPathCurveToRelative(
   Pointer $wand,
   num64 $x1,
   num64 $y1,
   num64 $x2,
   num64 $y2,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToQuadraticBezierAbsolute
=head2 C

    void DrawPathCurveToQuadraticBezierAbsolute(DrawingWand *wand,
      const double x1,const double y1,const double x,const double y)

DrawPathCurveToQuadraticBezierAbsolute() draws a quadratic Bezier curve from the current point to (x,y) using (x1,y1) as the control point using absolute coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of the control point - y1: y ordinate of the control point - x: x ordinate of final point - y: y ordinate of final point 
=end pod
sub DrawPathCurveToQuadraticBezierAbsolute(
   Pointer $wand,
   num64 $x1,
   num64 $y1,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToQuadraticBezierRelative
=head2 C

    void DrawPathCurveToQuadraticBezierRelative(DrawingWand *wand,
      const double x1,const double y1,const double x,const double y)

DrawPathCurveToQuadraticBezierRelative() draws a quadratic Bezier curve from the current point to (x,y) using (x1,y1) as the control point using relative coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of the control point - y1: y ordinate of the control point - x: x ordinate of final point - y: y ordinate of final point 
=end pod
sub DrawPathCurveToQuadraticBezierRelative(
   Pointer $wand,
   num64 $x1,
   num64 $y1,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToQuadraticBezierSmoothAbsolute
=head2 C

    void DrawPathCurveToQuadraticBezierSmoothAbsolute(
      DrawingWand *wand,const double x,const double y)

DrawPathCurveToQuadraticBezierSmoothAbsolute() draws a quadratic Bezier curve (using absolute coordinates) from the current point to (x,y). The control point is assumed to be the reflection of the control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not a DrawPathCurveToQuadraticBezierAbsolute, DrawPathCurveToQuadraticBezierRelative, DrawPathCurveToQuadraticBezierSmoothAbsolute or DrawPathCurveToQuadraticBezierSmoothRelative, assume the control point is coincident with the current point.). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x: x ordinate of final point - y: y ordinate of final point 
=end pod
sub DrawPathCurveToQuadraticBezierSmoothAbsolute(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToQuadraticBezierSmoothRelative
=head2 C

    void DrawPathCurveToQuadraticBezierSmoothRelative(DrawingWand *wand,
      const double x,const double y)

DrawPathCurveToQuadraticBezierSmoothRelative() draws a quadratic Bezier curve (using relative coordinates) from the current point to (x,y). The control point is assumed to be the reflection of the control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not a DrawPathCurveToQuadraticBezierAbsolute, DrawPathCurveToQuadraticBezierRelative, DrawPathCurveToQuadraticBezierSmoothAbsolute or DrawPathCurveToQuadraticBezierSmoothRelative, assume the control point is coincident with the current point.). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x: x ordinate of final point - y: y ordinate of final point 
=end pod
sub DrawPathCurveToQuadraticBezierSmoothRelative(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToSmoothAbsolute
=head2 C

    void DrawPathCurveToSmoothAbsolute(DrawingWand *wand,
      const double x2,const double y2,const double x,const double y)

DrawPathCurveToSmoothAbsolute() draws a cubic Bezier curve from the current point to (x,y) using absolute coordinates. The first control point is assumed to be the reflection of the second control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not an DrawPathCurveToAbsolute, DrawPathCurveToRelative, DrawPathCurveToSmoothAbsolute or DrawPathCurveToSmoothRelative, assume the first control point is coincident with the current point.) (x2,y2) is the second control point (i.e., the control point at the end of the curve). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x2: x ordinate of second control point - y2: y ordinate of second control point - x: x ordinate of termination point - y: y ordinate of termination point 
=end pod
sub DrawPathCurveToSmoothAbsolute(
   Pointer $wand,
   num64 $x2,
   num64 $y2,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathCurveToSmoothRelative
=head2 C

    void DrawPathCurveToSmoothRelative(DrawingWand *wand,
      const double x2,const double y2,const double x,const double y)

DrawPathCurveToSmoothRelative() draws a cubic Bezier curve from the current point to (x,y) using relative coordinates. The first control point is assumed to be the reflection of the second control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not an DrawPathCurveToAbsolute, DrawPathCurveToRelative, DrawPathCurveToSmoothAbsolute or DrawPathCurveToSmoothRelative, assume the first control point is coincident with the current point.) (x2,y2) is the second control point (i.e., the control point at the end of the curve). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x2: x ordinate of second control point - y2: y ordinate of second control point - x: x ordinate of termination point - y: y ordinate of termination point 
=end pod
sub DrawPathCurveToSmoothRelative(
   Pointer $wand,
   num64 $x2,
   num64 $y2,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathEllipticArcAbsolute
=head2 C

    void DrawPathEllipticArcAbsolute(DrawingWand *wand,
      const double rx,const double ry,const double x_axis_rotation,
      const MagickBooleanType large_arc_flag,
      const MagickBooleanType sweep_flag,const double x,const double y)

DrawPathEllipticArcAbsolute() draws an elliptical arc from the current point to (x, y) using absolute coordinates. The size and orientation of the ellipse are defined by two radii (rx, ry) and an xAxisRotation, which indicates how the ellipse as a whole is rotated relative to the current coordinate system. The center (cx, cy) of the ellipse is calculated automagically to satisfy the constraints imposed by the other parameters. largeArcFlag and sweepFlag contribute to the automatic calculations and help determine how the arc is drawn. If largeArcFlag is true then draw the larger of the available arcs. If sweepFlag is true, then draw the arc matching a clock-wise rotation.- wand: the drawing wand. - rx: x radius - ry: y radius - x_axis_rotation: indicates how the ellipse as a whole is rotated relative to the current coordinate system - large_arc_flag: If non-zero (true) then draw the larger of the available arcs - sweep_flag: If non-zero (true) then draw the arc matching a clock-wise rotation 
=end pod
sub DrawPathEllipticArcAbsolute(
   Pointer $wand,
   num64 $rx,
   num64 $ry,
   num64 $x_axis_rotation,
   uint32 $large_arc_flag,
   uint32 $sweep_flag,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathEllipticArcRelative
=head2 C

    void DrawPathEllipticArcRelative(DrawingWand *wand,
      const double rx,const double ry,const double x_axis_rotation,
      const MagickBooleanType large_arc_flag,
      const MagickBooleanType sweep_flag,const double x,const double y)

DrawPathEllipticArcRelative() draws an elliptical arc from the current point to (x, y) using relative coordinates. The size and orientation of the ellipse are defined by two radii (rx, ry) and an xAxisRotation, which indicates how the ellipse as a whole is rotated relative to the current coordinate system. The center (cx, cy) of the ellipse is calculated automagically to satisfy the constraints imposed by the other parameters. largeArcFlag and sweepFlag contribute to the automatic calculations and help determine how the arc is drawn. If largeArcFlag is true then draw the larger of the available arcs. If sweepFlag is true, then draw the arc matching a clock-wise rotation.- wand: the drawing wand. - rx: x radius - ry: y radius - x_axis_rotation: indicates how the ellipse as a whole is rotated relative to the current coordinate system - large_arc_flag: If non-zero (true) then draw the larger of the available arcs - sweep_flag: If non-zero (true) then draw the arc matching a clock-wise rotation 
=end pod
sub DrawPathEllipticArcRelative(
   Pointer $wand,
   num64 $rx,
   num64 $ry,
   num64 $x_axis_rotation,
   uint32 $large_arc_flag,
   uint32 $sweep_flag,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathFinish
=head2 C

    void DrawPathFinish(DrawingWand *wand)

DrawPathFinish() terminates the current path.- wand: the drawing wand. 
=end pod
sub DrawPathFinish(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathLineToAbsolute
=head2 C

    void DrawPathLineToAbsolute(DrawingWand *wand,const double x,
      const double y)

DrawPathLineToAbsolute() draws a line path from the current point to the given coordinate using absolute coordinates. The coordinate then becomes the new current point.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 
=end pod
sub DrawPathLineToAbsolute(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathLineToRelative
=head2 C

    void DrawPathLineToRelative(DrawingWand *wand,const double x,
      const double y)

DrawPathLineToRelative() draws a line path from the current point to the given coordinate using relative coordinates. The coordinate then becomes the new current point.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 
=end pod
sub DrawPathLineToRelative(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathLineToHorizontalAbsolute
=head2 C

    void DrawPathLineToHorizontalAbsolute(DrawingWand *wand,
      const double x)

DrawPathLineToHorizontalAbsolute() draws a horizontal line path from the current point to the target point using absolute coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - x: target x ordinate 
=end pod
sub DrawPathLineToHorizontalAbsolute(
   Pointer $wand,
   num64 $x
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathLineToHorizontalRelative
=head2 C

    void DrawPathLineToHorizontalRelative(DrawingWand *wand,
      const double x)

DrawPathLineToHorizontalRelative() draws a horizontal line path from the current point to the target point using relative coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - x: target x ordinate 
=end pod
sub DrawPathLineToHorizontalRelative(
   Pointer $wand,
   num64 $x
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathLineToVerticalAbsolute
=head2 C

    void DrawPathLineToVerticalAbsolute(DrawingWand *wand,
      const double y)

DrawPathLineToVerticalAbsolute() draws a vertical line path from the current point to the target point using absolute coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - y: target y ordinate 
=end pod
sub DrawPathLineToVerticalAbsolute(
   Pointer $wand,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathLineToVerticalRelative
=head2 C

    void DrawPathLineToVerticalRelative(DrawingWand *wand,
      const double y)

DrawPathLineToVerticalRelative() draws a vertical line path from the current point to the target point using relative coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - y: target y ordinate 
=end pod
sub DrawPathLineToVerticalRelative(
   Pointer $wand,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathMoveToAbsolute
=head2 C

    void DrawPathMoveToAbsolute(DrawingWand *wand,const double x,
      const double y)

DrawPathMoveToAbsolute() starts a new sub-path at the given coordinate using absolute coordinates. The current point then becomes the specified coordinate.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 
=end pod
sub DrawPathMoveToAbsolute(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathMoveToRelative
=head2 C

    void DrawPathMoveToRelative(DrawingWand *wand,const double x,
      const double y)

DrawPathMoveToRelative() starts a new sub-path at the given coordinate using relative coordinates. The current point then becomes the specified coordinate.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 
=end pod
sub DrawPathMoveToRelative(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPathStart
=head2 C

    void DrawPathStart(DrawingWand *wand)

DrawPathStart() declares the start of a path drawing list which is terminated by a matching DrawPathFinish() command. All other DrawPath commands must be enclosed between a DrawPathStart() and a DrawPathFinish() command. This is because path drawing commands are subordinate commands and they do not function by themselves.- wand: the drawing wand. 
=end pod
sub DrawPathStart(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPoint
=head2 C

    void DrawPoint(DrawingWand *wand,const double x,const double y)

DrawPoint() draws a point using the current fill color.- wand: the drawing wand. - x: target x coordinate - y: target y coordinate 
=end pod
sub DrawPoint(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPolygon
=head2 C

    void DrawPolygon(DrawingWand *wand,
      const size_t number_coordinates,const PointInfo *coordinates)

DrawPolygon() draws a polygon using the current stroke, stroke width, and fill color or texture, using the specified array of coordinates.- wand: the drawing wand. - number_coordinates: number of coordinates - coordinates: coordinate array 
=end pod
sub DrawPolygon(
   Pointer $wand,
   int32 $number_coordinates,
   Pointer $coordinates
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPolyline
=head2 C

    void DrawPolyline(DrawingWand *wand,
      const size_t number_coordinates,const PointInfo *coordinates)

DrawPolyline() draws a polyline using the current stroke, stroke width, and fill color or texture, using the specified array of coordinates.- wand: the drawing wand. - number_coordinates: number of coordinates - coordinates: coordinate array 
=end pod
sub DrawPolyline(
   Pointer $wand,
   int32 $number_coordinates,
   Pointer $coordinates
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPopClipPath
=head2 C

    void DrawPopClipPath(DrawingWand *wand)

DrawPopClipPath() terminates a clip path definition.- wand: the drawing wand. 
=end pod
sub DrawPopClipPath(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPopDefs
=head2 C

    void DrawPopDefs(DrawingWand *wand)

DrawPopDefs() terminates a definition list.- wand: the drawing wand. 
=end pod
sub DrawPopDefs(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPopPattern
=head2 C

    MagickBooleanType DrawPopPattern(DrawingWand *wand)

DrawPopPattern() terminates a pattern definition.- wand: the drawing wand. 
=end pod
sub DrawPopPattern(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawPushClipPath
=head2 C

    void DrawPushClipPath(DrawingWand *wand,const char *clip_mask_id)

DrawPushClipPath() starts a clip path definition which is comprized of any number of drawing commands and terminated by a DrawPopClipPath() command.- wand: the drawing wand. - clip_mask_id: string identifier to associate with the clip path for later use. 
=end pod
sub DrawPushClipPath(
   Pointer $wand,
   Str $clip_mask_id
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPushDefs
=head2 C

    void DrawPushDefs(DrawingWand *wand)

DrawPushDefs() indicates that commands up to a terminating DrawPopDefs() command create named elements (e.g. clip-paths, textures, etc.) which may safely be processed earlier for the sake of efficiency.- wand: the drawing wand. 
=end pod
sub DrawPushDefs(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawPushPattern
=head2 C

    MagickBooleanType DrawPushPattern(DrawingWand *wand,
      const char *pattern_id,const double x,const double y,
      const double width,const double height)

DrawPushPattern() indicates that subsequent commands up to a DrawPopPattern() command comprise the definition of a named pattern. The pattern space is assigned top left corner coordinates, a width and height, and becomes its own drawing space.  Anything which can be drawn may be used in a pattern definition. Named patterns may be used as stroke or brush definitions.- wand: the drawing wand. - pattern_id: pattern identification for later reference - x: x ordinate of top left corner - y: y ordinate of top left corner - width: width of pattern space - height: height of pattern space 
=end pod
sub DrawPushPattern(
   Pointer $wand,
   Str $pattern_id,
   num64 $x,
   num64 $y,
   num64 $width,
   num64 $height
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawRectangle
=head2 C

    void DrawRectangle(DrawingWand *wand,const double x1,
      const double y1,const double x2,const double y2)

DrawRectangle() draws a rectangle given two coordinates and using the current stroke, stroke width, and fill settings.- x1: x ordinate of first coordinate - y1: y ordinate of first coordinate - x2: x ordinate of second coordinate - y2: y ordinate of second coordinate 
=end pod
sub DrawRectangle(
   Pointer $wand,
   num64 $x1,
   num64 $y1,
   num64 $x2,
   num64 $y2
)
is native(&library)
is export { * };


=begin pod
=head1 DrawResetVectorGraphics
=head2 C

    void DrawResetVectorGraphics(DrawingWand *wand)

DrawResetVectorGraphics() resets the vector graphics associated with the specified wand.- wand: the drawing wand. 
=end pod
sub DrawResetVectorGraphics(
   Pointer $wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawRotate
=head2 C

    void DrawRotate(DrawingWand *wand,const double degrees)

DrawRotate() applies the specified rotation to the current coordinate space.- wand: the drawing wand. - degrees: degrees of rotation 
=end pod
sub DrawRotate(
   Pointer $wand,
   num64 $degrees
)
is native(&library)
is export { * };


=begin pod
=head1 DrawRoundRectangle
=head2 C

    void DrawRoundRectangle(DrawingWand *wand,double x1,double y1,
      double x2,double y2,double rx,double ry)

DrawRoundRectangle() draws a rounted rectangle given two coordinates, x &amp; y corner radiuses and using the current stroke, stroke width, and fill settings.- wand: the drawing wand. - x1: x ordinate of first coordinate - y1: y ordinate of first coordinate - x2: x ordinate of second coordinate - y2: y ordinate of second coordinate - rx: radius of corner in horizontal direction - ry: radius of corner in vertical direction 
=end pod
sub DrawRoundRectangle(
   Pointer $wand,
   num64 $x1,
   num64 $y1,
   num64 $x2,
   num64 $y2,
   num64 $rx,
   num64 $ry
)
is native(&library)
is export { * };


=begin pod
=head1 DrawScale
=head2 C

    void DrawScale(DrawingWand *wand,const double x,const double y)

DrawScale() adjusts the scaling factor to apply in the horizontal and vertical directions to the current coordinate space.- wand: the drawing wand. - x: horizontal scale factor - y: vertical scale factor 
=end pod
sub DrawScale(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetBorderColor
=head2 C

    void DrawSetBorderColor(DrawingWand *wand,const PixelWand *border_wand)

DrawSetBorderColor() sets the border color to be used for drawing bordered objects.- wand: the drawing wand. - border_wand: border wand. 
=end pod
sub DrawSetBorderColor(
   Pointer $wand,
   Pointer $border_wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetClipPath
=head2 C

    MagickBooleanType DrawSetClipPath(DrawingWand *wand,
      const char *clip_mask)

DrawSetClipPath() associates a named clipping path with the image.  Only the areas drawn on by the clipping path will be modified as ssize_t as it remains in effect.- wand: the drawing wand. - clip_mask: name of clipping path to associate with image 
=end pod
sub DrawSetClipPath(
   Pointer $wand,
   Str $clip_mask
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetClipRule
=head2 C

    void DrawSetClipRule(DrawingWand *wand,const FillRule fill_rule)

DrawSetClipRule() set the polygon fill rule to be used by the clipping path.- wand: the drawing wand. - fill_rule: fill rule (EvenOddRule or NonZeroRule) 
=end pod
sub DrawSetClipRule(
   Pointer $wand,
   uint32 $fill_rule
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetClipUnits
=head2 C

    void DrawSetClipUnits(DrawingWand *wand,
      const ClipPathUnits clip_units)

DrawSetClipUnits() sets the interpretation of clip path units.- wand: the drawing wand. - clip_units: units to use (UserSpace, UserSpaceOnUse, or ObjectBoundingBox) 
=end pod
sub DrawSetClipUnits(
   Pointer $wand,
   uint32 $clip_units
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetDensity
=head2 C

    MagickBooleanType DrawSetDensity(DrawingWand *wand,
      const char *density)

DrawSetDensity() sets the vertical and horizontal resolution.- wand: the drawing wand. - density: the vertical and horizontal resolution. 
=end pod
sub DrawSetDensity(
   Pointer $wand,
   Str $density
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFillColor
=head2 C

    void DrawSetFillColor(DrawingWand *wand,const PixelWand *fill_wand)

DrawSetFillColor() sets the fill color to be used for drawing filled objects.- wand: the drawing wand. - fill_wand: fill wand. 
=end pod
sub DrawSetFillColor(
   Pointer $wand,
   Pointer $fill_wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFillOpacity
=head2 C

    void DrawSetFillOpacity(DrawingWand *wand,const double fill_opacity)

DrawSetFillOpacity() sets the opacity to use when drawing using the fill color or fill texture.  Fully opaque is 1.0.- wand: the drawing wand. - fill_opacity: fill opacity 
=end pod
sub DrawSetFillOpacity(
   Pointer $wand,
   num64 $fill_opacity
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFontResolution
=head2 C

    MagickBooleanType DrawSetFontResolution(DrawingWand *wand,
      const double x_resolution,const double y_resolution)

DrawSetFontResolution() sets the image resolution.- wand: the magick wand. - x_resolution: the image x resolution. - y_resolution: the image y resolution. 
=end pod
sub DrawSetFontResolution(
   Pointer $wand,
   num64 $x_resolution,
   num64 $y_resolution
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetOpacity
=head2 C

    void DrawSetOpacity(DrawingWand *wand,const double opacity)

DrawSetOpacity() sets the opacity to use when drawing using the fill or stroke color or texture.  Fully opaque is 1.0.- wand: the drawing wand. - opacity: fill opacity 
=end pod
sub DrawSetOpacity(
   Pointer $wand,
   num64 $opacity
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFillPatternURL
=head2 C

    MagickBooleanType DrawSetFillPatternURL(DrawingWand *wand,
      const char *fill_url)

DrawSetFillPatternURL() sets the URL to use as a fill pattern for filling objects. Only local URLs ("#identifier") are supported at this time. These local URLs are normally created by defining a named fill pattern with DrawPushPattern/DrawPopPattern.- wand: the drawing wand. - fill_url: URL to use to obtain fill pattern. 
=end pod
sub DrawSetFillPatternURL(
   Pointer $wand,
   Str $fill_url
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFillRule
=head2 C

    void DrawSetFillRule(DrawingWand *wand,const FillRule fill_rule)

DrawSetFillRule() sets the fill rule to use while drawing polygons.- wand: the drawing wand. - fill_rule: fill rule (EvenOddRule or NonZeroRule) 
=end pod
sub DrawSetFillRule(
   Pointer $wand,
   uint32 $fill_rule
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFont
=head2 C

    MagickBooleanType DrawSetFont(DrawingWand *wand,const char *font_name)

DrawSetFont() sets the fully-sepecified font to use when annotating with text.- wand: the drawing wand. - font_name: font name 
=end pod
sub DrawSetFont(
   Pointer $wand,
   Str $font_name
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFontFamily
=head2 C

    MagickBooleanType DrawSetFontFamily(DrawingWand *wand,
      const char *font_family)

DrawSetFontFamily() sets the font family to use when annotating with text.- wand: the drawing wand. - font_family: font family 
=end pod
sub DrawSetFontFamily(
   Pointer $wand,
   Str $font_family
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFontSize
=head2 C

    void DrawSetFontSize(DrawingWand *wand,const double pointsize)

DrawSetFontSize() sets the font pointsize to use when annotating with text.- wand: the drawing wand. - pointsize: text pointsize 
=end pod
sub DrawSetFontSize(
   Pointer $wand,
   num64 $pointsize
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFontStretch
=head2 C

    void DrawSetFontStretch(DrawingWand *wand,
      const StretchType font_stretch)

DrawSetFontStretch() sets the font stretch to use when annotating with text. The AnyStretch enumeration acts as a wild-card "don't care" option.- wand: the drawing wand. - font_stretch: font stretch (NormalStretch, UltraCondensedStretch, CondensedStretch, SemiCondensedStretch, SemiExpandedStretch, ExpandedStretch, ExtraExpandedStretch, UltraExpandedStretch, AnyStretch) 
=end pod
sub DrawSetFontStretch(
   Pointer $wand,
   uint32 $font_stretch
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFontStyle
=head2 C

    void DrawSetFontStyle(DrawingWand *wand,const StyleType style)

DrawSetFontStyle() sets the font style to use when annotating with text. The AnyStyle enumeration acts as a wild-card "don't care" option.- wand: the drawing wand. - style: font style (NormalStyle, ItalicStyle, ObliqueStyle, AnyStyle) 
=end pod
sub DrawSetFontStyle(
   Pointer $wand,
   uint32 $style
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetFontWeight
=head2 C

    void DrawSetFontWeight(DrawingWand *wand,
      const size_t font_weight)

DrawSetFontWeight() sets the font weight to use when annotating with text.- wand: the drawing wand. - font_weight: font weight (valid range 100-900) 
=end pod
sub DrawSetFontWeight(
   Pointer $wand,
   int32 $font_weight
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetGravity
=head2 C

    void DrawSetGravity(DrawingWand *wand,const GravityType gravity)

DrawSetGravity() sets the text placement gravity to use when annotating with text.- wand: the drawing wand. - gravity: positioning gravity (NorthWestGravity, NorthGravity, NorthEastGravity, WestGravity, CenterGravity, EastGravity, SouthWestGravity, SouthGravity, SouthEastGravity) 
=end pod
sub DrawSetGravity(
   Pointer $wand,
   uint32 $gravity
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeColor
=head2 C

    void DrawSetStrokeColor(DrawingWand *wand,
      const PixelWand *stroke_wand)

DrawSetStrokeColor() sets the color used for stroking object outlines.- wand: the drawing wand. - stroke_wand: stroke wand. 
=end pod
sub DrawSetStrokeColor(
   Pointer $wand,
   Pointer $stroke_wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokePatternURL
=head2 C

    MagickBooleanType DrawSetStrokePatternURL(DrawingWand *wand,
      const char *stroke_url)

DrawSetStrokePatternURL() sets the pattern used for stroking object outlines.- wand: the drawing wand. - stroke_url: URL specifying pattern ID (e.g. "#pattern_id") 
=end pod
sub DrawSetStrokePatternURL(
   Pointer $wand,
   Str $stroke_url
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeAntialias
=head2 C

    void DrawSetStrokeAntialias(DrawingWand *wand,
      const MagickBooleanType stroke_antialias)

DrawSetStrokeAntialias() controls whether stroked outlines are antialiased. Stroked outlines are antialiased by default.  When antialiasing is disabled stroked pixels are thresholded to determine if the stroke color or underlying canvas color should be used.- wand: the drawing wand. - stroke_antialias: set to false (zero) to disable antialiasing 
=end pod
sub DrawSetStrokeAntialias(
   Pointer $wand,
   uint32 $stroke_antialias
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeDashArray
=head2 C

    MagickBooleanType DrawSetStrokeDashArray(DrawingWand *wand,
      const size_t number_elements,const double *dasharray)

DrawSetStrokeDashArray() specifies the pattern of dashes and gaps used to stroke paths. The stroke dash array represents an array of numbers that specify the lengths of alternating dashes and gaps in pixels. If an odd number of values is provided, then the list of values is repeated to yield an even number of values. To remove an existing dash array, pass a zero number_elements argument and null dasharray.  A typical stroke dash array might contain the members 5 3 2.- wand: the drawing wand. - number_elements: number of elements in dash array - dasharray: dash array values 
=end pod
sub DrawSetStrokeDashArray(
   Pointer $wand,
   int32 $number_elements,
   CArray[num64] $dasharray
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeDashOffset
=head2 C

    void DrawSetStrokeDashOffset(DrawingWand *wand,
      const double dash_offset)

DrawSetStrokeDashOffset() specifies the offset into the dash pattern to start the dash.- wand: the drawing wand. - dash_offset: dash offset 
=end pod
sub DrawSetStrokeDashOffset(
   Pointer $wand,
   num64 $dash_offset
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeLineCap
=head2 C

    void DrawSetStrokeLineCap(DrawingWand *wand,
      const LineCap linecap)

DrawSetStrokeLineCap() specifies the shape to be used at the end of open subpaths when they are stroked. Values of LineCap are UndefinedCap, ButtCap, RoundCap, and SquareCap.- wand: the drawing wand. - linecap: linecap style 
=end pod
sub DrawSetStrokeLineCap(
   Pointer $wand,
   uint32 $linecap
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeLineJoin
=head2 C

    void DrawSetStrokeLineJoin(DrawingWand *wand,
      const LineJoin linejoin)

DrawSetStrokeLineJoin() specifies the shape to be used at the corners of paths (or other vector shapes) when they are stroked. Values of LineJoin are UndefinedJoin, MiterJoin, RoundJoin, and BevelJoin.- wand: the drawing wand. - linejoin: line join style 
=end pod
sub DrawSetStrokeLineJoin(
   Pointer $wand,
   uint32 $linejoin
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeMiterLimit
=head2 C

    void DrawSetStrokeMiterLimit(DrawingWand *wand,
      const size_t miterlimit)

DrawSetStrokeMiterLimit() specifies the miter limit. When two line segments meet at a sharp angle and miter joins have been specified for 'lineJoin', it is possible for the miter to extend far beyond the thickness of the line stroking the path. The miterLimit' imposes a limit on the ratio of the miter length to the 'lineWidth'.- wand: the drawing wand. - miterlimit: miter limit 
=end pod
sub DrawSetStrokeMiterLimit(
   Pointer $wand,
   int32 $miterlimit
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeOpacity
=head2 C

    void DrawSetStrokeOpacity(DrawingWand *wand,
      const double stroke_opacity)

DrawSetStrokeOpacity() specifies the opacity of stroked object outlines.- wand: the drawing wand. - stroke_opacity: stroke opacity.  The value 1.0 is opaque. 
=end pod
sub DrawSetStrokeOpacity(
   Pointer $wand,
   num64 $stroke_opacity
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetStrokeWidth
=head2 C

    void DrawSetStrokeWidth(DrawingWand *wand,
      const double stroke_width)

DrawSetStrokeWidth() sets the width of the stroke used to draw object outlines.- wand: the drawing wand. - stroke_width: stroke width 
=end pod
sub DrawSetStrokeWidth(
   Pointer $wand,
   num64 $stroke_width
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextAlignment
=head2 C

    void DrawSetTextAlignment(DrawingWand *wand,const AlignType alignment)

DrawSetTextAlignment() specifies a text alignment to be applied when annotating with text.- wand: the drawing wand. - alignment: text alignment.  One of UndefinedAlign, LeftAlign, CenterAlign, or RightAlign. 
=end pod
sub DrawSetTextAlignment(
   Pointer $wand,
   uint32 $alignment
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextAntialias
=head2 C

    void DrawSetTextAntialias(DrawingWand *wand,
      const MagickBooleanType text_antialias)

DrawSetTextAntialias() controls whether text is antialiased.  Text is antialiased by default.- wand: the drawing wand. - text_antialias: antialias boolean. Set to false (0) to disable antialiasing. 
=end pod
sub DrawSetTextAntialias(
   Pointer $wand,
   uint32 $text_antialias
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextDecoration
=head2 C

    void DrawSetTextDecoration(DrawingWand *wand,
      const DecorationType decoration)

DrawSetTextDecoration() specifies a decoration to be applied when annotating with text.- wand: the drawing wand. - decoration: text decoration.  One of NoDecoration, UnderlineDecoration, OverlineDecoration, or LineThroughDecoration 
=end pod
sub DrawSetTextDecoration(
   Pointer $wand,
   uint32 $decoration
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextDirection
=head2 C

    void DrawSetTextDirection(DrawingWand *wand,
      const DirectionType direction)

DrawSetTextDirection() specifies the direction to be used when annotating with text.- wand: the drawing wand. - direction: text direction. One of RightToLeftDirection, LeftToRightDirection 
=end pod
sub DrawSetTextDirection(
   Pointer $wand,
   uint32 $direction
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextEncoding
=head2 C

    void DrawSetTextEncoding(DrawingWand *wand,const char *encoding)

DrawSetTextEncoding() specifies the code set to use for text annotations. The only character encoding which may be specified at this time is "UTF-8" for representing Unicode as a sequence of bytes. Specify an empty string to set text encoding to the system's default. Successful text annotation using Unicode may require fonts designed to support Unicode.- wand: the drawing wand. - encoding: character string specifying text encoding 
=end pod
sub DrawSetTextEncoding(
   Pointer $wand,
   Str $encoding
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextKerning
=head2 C

    void DrawSetTextKerning(DrawingWand *wand,const double kerning)

DrawSetTextKerning() sets the spacing between characters in text.- wand: the drawing wand. - kerning: text kerning 
=end pod
sub DrawSetTextKerning(
   Pointer $wand,
   num64 $kerning
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextInterlineSpacing
=head2 C

    void DrawSetTextInterlineSpacing(DrawingWand *wand,
      const double interline_spacing)

DrawSetTextInterlineSpacing() sets the spacing between line in text.- wand: the drawing wand. - interline_spacing: text line spacing 
=end pod
sub DrawSetTextInterlineSpacing(
   Pointer $wand,
   num64 $interline_spacing
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextInterwordSpacing
=head2 C

    void DrawSetTextInterwordSpacing(DrawingWand *wand,
      const double interword_spacing)

DrawSetTextInterwordSpacing() sets the spacing between words in text.- wand: the drawing wand. - interword_spacing: text word spacing 
=end pod
sub DrawSetTextInterwordSpacing(
   Pointer $wand,
   num64 $interword_spacing
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetTextUnderColor
=head2 C

    void DrawSetTextUnderColor(DrawingWand *wand,
      const PixelWand *under_wand)

DrawSetTextUnderColor() specifies the color of a background rectangle to place under text annotations.- wand: the drawing wand. - under_wand: text under wand. 
=end pod
sub DrawSetTextUnderColor(
   Pointer $wand,
   Pointer $under_wand
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetVectorGraphics
=head2 C

    MagickBooleanType DrawSetVectorGraphics(DrawingWand *wand,
      const char *xml)

DrawSetVectorGraphics() sets the vector graphics associated with the specified wand.  Use this method with DrawGetVectorGraphics() as a method to persist the vector graphics state.- wand: the drawing wand. - xml: the drawing wand XML. 
=end pod
sub DrawSetVectorGraphics(
   Pointer $wand,
   Str $xml
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 DrawSkewX
=head2 C

    void DrawSkewX(DrawingWand *wand,const double degrees)

DrawSkewX() skews the current coordinate system in the horizontal direction.- wand: the drawing wand. - degrees: number of degrees to skew the coordinates 
=end pod
sub DrawSkewX(
   Pointer $wand,
   num64 $degrees
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSkewY
=head2 C

    void DrawSkewY(DrawingWand *wand,const double degrees)

DrawSkewY() skews the current coordinate system in the vertical direction.- wand: the drawing wand. - degrees: number of degrees to skew the coordinates 
=end pod
sub DrawSkewY(
   Pointer $wand,
   num64 $degrees
)
is native(&library)
is export { * };


=begin pod
=head1 DrawTranslate
=head2 C

    void DrawTranslate(DrawingWand *wand,const double x,
      const double y)

DrawTranslate() applies a translation to the current coordinate system which moves the coordinate system origin to the specified coordinate.- wand: the drawing wand. - x: new x ordinate for coordinate system origin - y: new y ordinate for coordinate system origin 
=end pod
sub DrawTranslate(
   Pointer $wand,
   num64 $x,
   num64 $y
)
is native(&library)
is export { * };


=begin pod
=head1 DrawSetViewbox
=head2 C

    void DrawSetViewbox(DrawingWand *wand,ssize_t x1,
      ssize_t y1,ssize_t x2,ssize_t y2)

DrawSetViewbox() sets the overall canvas size to be recorded with the drawing vector data.  Usually this will be specified using the same size as the canvas image.  When the vector data is saved to SVG or MVG formats, the viewbox is use to specify the size of the canvas image that a viewer will render the vector data on.- wand: the drawing wand. - x1: left x ordinate - y1: top y ordinate - x2: right x ordinate - y2: bottom y ordinate 
=end pod
sub DrawSetViewbox(
   Pointer $wand,
   uint32 $x1,
   uint32 $y1,
   uint32 $x2,
   uint32 $y2
)
is native(&library)
is export { * };


=begin pod
=head1 IsDrawingWand
=head2 C

    MagickBooleanType IsDrawingWand(const DrawingWand *wand)

IsDrawingWand() returns MagickTrue if the wand is verified as a drawing wand.- wand: the drawing wand. 
=end pod
sub IsDrawingWand(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 NewDrawingWand
=head2 C

    DrawingWand *NewDrawingWand(void)

NewDrawingWand() returns a drawing wand required for all other methods in the API.<h2><a href="http://www.imagemagick.org/api/MagickWand/drawing-wand_8c.html" id="PeekDrawingWand">PeekDrawingWand</a></h2>PeekDrawingWand() returns the current drawing wand.The format of the PeekDrawingWand method is:<pre class="text">DrawInfo \*PeekDrawingWand(const DrawingWand \*wand)</pre>- wand: the drawing wand. 
=end pod
sub NewDrawingWand
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 PopDrawingWand
=head2 C

    MagickBooleanType PopDrawingWand(DrawingWand *wand)

PopDrawingWand() destroys the current drawing wand and returns to the previously pushed drawing wand. Multiple drawing wands may exist. It is an error to attempt to pop more drawing wands than have been pushed, and it is proper form to pop all drawing wands which have been pushed.- wand: the drawing wand. 
=end pod
sub PopDrawingWand(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PushDrawingWand
=head2 C

    MagickBooleanType PushDrawingWand(DrawingWand *wand)

PushDrawingWand() clones the current drawing wand to create a new drawing wand.  The original drawing wand(s) may be returned to by invoking PopDrawingWand().  The drawing wands are stored on a drawing wand stack. For every Pop there must have already been an equivalent Push.- wand: the drawing wand. 
=end pod
sub PushDrawingWand(
   Pointer $wand
)
returns uint32 
is native(&library)
is export { * };


