
use v6;

unit module MagickWand::NativeCall::WandView;

=begin pod
=head1 CloneWandView
=head2 C

    WandView *CloneWandView(const WandView *wand_view)

CloneWandView() makes a copy of the specified wand view.- wand_view: the wand view. 
=end pod
sub CloneWandView(
   WandView * $wand_view
)
returns WandView *
is native(&library)
is export { * };


=begin pod
=head1 DestroyWandView
=head2 C

    WandView *DestroyWandView(WandView *wand_view)

DestroyWandView() deallocates memory associated with a wand view.- wand_view: the wand view. 
=end pod
sub DestroyWandView(
   WandView * $wand_view
)
returns WandView *
is native(&library)
is export { * };


=begin pod
=head1 DuplexTransferWandViewIterator
=head2 C

    MagickBooleanType DuplexTransferWandViewIterator(WandView *source,
      WandView *duplex,WandView *destination,
      DuplexTransferWandViewMethod transfer,void *context)

DuplexTransferWandViewIterator() iterates over three wand views in parallel and calls your transfer method for each scanline of the view.  The source and duplex pixel extent is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension.  However, the destination wand view is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.The callback signature is:<pre class="text">MagickBooleanType DuplexTransferImageViewMethod(const WandView \*source,  const WandView \*duplex,WandView \*destination,const ssize_t y,  const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback transfer method that must be executed by a single thread at a time.- source: the source wand view. - duplex: the duplex wand view. - destination: the destination wand view. - transfer: the transfer callback method. - context: the user defined context. 
=end pod
sub DuplexTransferWandViewIterator(
   WandView * $source,
   WandView * $duplex,
   WandView * $destination,
   DuplexTransferWandViewMethod $transfer,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 GetWandViewException
=head2 C

    char *GetWandViewException(const WandView *wand_view,
      ExceptionType *severity)

GetWandViewException() returns the severity, reason, and description of any error that occurs when utilizing a wand view.- wand_view: the pixel wand_view. - severity: the severity of the error is returned here. 
=end pod
sub GetWandViewException(
   WandView * $wand_view,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 GetWandViewExtent
=head2 C

    RectangleInfo GetWandViewExtent(const WandView *wand_view)

GetWandViewExtent() returns the wand view extent.- wand_view: the wand view. 
=end pod
sub GetWandViewExtent(
   WandView * $wand_view
)
returns RectangleInfo 
is native(&library)
is export { * };


=begin pod
=head1 GetWandViewIterator
=head2 C

    MagickBooleanType GetWandViewIterator(WandView *source,
      GetWandViewMethod get,void *context)

GetWandViewIterator() iterates over the wand view in parallel and calls your get method for each scanline of the view.  The pixel extent is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension.  Any updates to the pixels in your callback are ignored.The callback signature is:<pre class="text">MagickBooleanType GetImageViewMethod(const WandView \*source,  const ssize_t y,const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback get method that must be executed by a single thread at a time.- source: the source wand view. - get: the get callback method. - context: the user defined context. 
=end pod
sub GetWandViewIterator(
   WandView * $source,
   GetWandViewMethod $get,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 GetWandViewPixels
=head2 C

    PixelWand *GetWandViewPixels(const WandView *wand_view)

GetWandViewPixels() returns the wand view pixel_wands.- wand_view: the wand view. 
=end pod
sub GetWandViewPixels(
   WandView * $wand_view
)
returns PixelWandPointer
is native(&library)
is export { * };


=begin pod
=head1 GetWandViewWand
=head2 C

    MagickWand *GetWandViewWand(const WandView *wand_view)

GetWandViewWand() returns the magick wand associated with the wand view.- wand_view: the wand view. 
=end pod
sub GetWandViewWand(
   WandView * $wand_view
)
returns MagickWandPointer
is native(&library)
is export { * };


=begin pod
=head1 IsWandView
=head2 C

    MagickBooleanType IsWandView(const WandView *wand_view)

IsWandView() returns MagickTrue if the the parameter is verified as a wand view object.- wand_view: the wand view. 
=end pod
sub IsWandView(
   WandView * $wand_view
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 NewWandView
=head2 C

    WandView *NewWandView(MagickWand *wand)

NewWandView() returns a wand view required for all other methods in the Wand View API.- wand: the wand. 
=end pod
sub NewWandView(
   MagickWandPointer $wand
)
returns WandView *
is native(&library)
is export { * };


=begin pod
=head1 NewWandViewExtent
=head2 C

    WandView *NewWandViewExtent(MagickWand *wand,const ssize_t x,
      const ssize_t y,const size_t width,const size_t height)

NewWandViewExtent() returns a wand view required for all other methods in the Wand View API.- wand: the magick wand. - x,y,columns,rows:  These values define the perimeter of a extent of pixel_wands view. 
=end pod
sub NewWandViewExtent(
   MagickWandPointer $wand,
   sint32 $x,
   sint32 $y,
   int32 $width,
   int32 $height
)
returns WandView *
is native(&library)
is export { * };


=begin pod
=head1 SetWandViewDescription
=head2 C

    void SetWandViewDescription(WandView *image_view,const char *description)

SetWandViewDescription() associates a description with an image view.- wand_view: the wand view. - description: the wand view description. 
=end pod
sub SetWandViewDescription(
   WandView * $image_view,
   Str $description
)
is native(&library)
is export { * };


=begin pod
=head1 SetWandViewIterator
=head2 C

    MagickBooleanType SetWandViewIterator(WandView *destination,
      SetWandViewMethod set,void *context)

SetWandViewIterator() iterates over the wand view in parallel and calls your set method for each scanline of the view.  The pixel extent is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension.  The pixels are initiallly undefined and any settings you make in the callback method are automagically synced back to your image.The callback signature is:<pre class="text">MagickBooleanType SetImageViewMethod(ImageView \*destination,  const ssize_t y,const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback set method that must be executed by a single thread at a time.- destination: the wand view. - set: the set callback method. - context: the user defined context. 
=end pod
sub SetWandViewIterator(
   WandView * $destination,
   SetWandViewMethod $set,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 SetWandViewThreads
=head2 C

    void SetWandViewThreads(WandView *image_view,
      const size_t number_threads)

SetWandViewThreads() sets the number of threads in a thread team.- image_view: the image view. - number_threads: the number of threads in a thread team. 
=end pod
sub SetWandViewThreads(
   WandView * $image_view,
   int32 $number_threads
)
is native(&library)
is export { * };


=begin pod
=head1 TransferWandViewIterator
=head2 C

    MagickBooleanType TransferWandViewIterator(WandView *source,
      WandView *destination,TransferWandViewMethod transfer,void *context)

TransferWandViewIterator() iterates over two wand views in parallel and calls your transfer method for each scanline of the view.  The source pixel extent is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension. However, the destination wand view is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.The callback signature is:<pre class="text">MagickBooleanType TransferImageViewMethod(const WandView \*source,  WandView \*destination,const ssize_t y,const int thread_id,  void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback transfer method that must be executed by a single thread at a time.- source: the source wand view. - destination: the destination wand view. - transfer: the transfer callback method. - context: the user defined context. 
=end pod
sub TransferWandViewIterator(
   WandView * $source,
   WandView * $destination,
   TransferWandViewMethod $transfer,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 UpdateWandViewIterator
=head2 C

    MagickBooleanType UpdateWandViewIterator(WandView *source,
      UpdateWandViewMethod update,void *context)

UpdateWandViewIterator() iterates over the wand view in parallel and calls your update method for each scanline of the view.  The pixel extent is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.  Updates to pixels in your callback are automagically synced back to the image.The callback signature is:<pre class="text">MagickBooleanType UpdateImageViewMethod(WandView \*source,const ssize_t y,  const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback update method that must be executed by a single thread at a time.- source: the source wand view. - update: the update callback method. - context: the user defined context. 
=end pod
sub UpdateWandViewIterator(
   WandView * $source,
   UpdateWandViewMethod $update,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };


