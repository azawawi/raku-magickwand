
use v6;

unit module MagickWand::NativeCall::PixelIterator;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 ClearPixelIterator
=head2 C

    void ClearPixelIterator(PixelIterator *iterator)

ClearPixelIterator() clear resources associated with a PixelIterator.- iterator: the pixel iterator. 
=end pod
sub ClearPixelIterator(
   Pointer $iterator
)
is native(&library)
is export { * };


=begin pod
=head1 ClonePixelIterator
=head2 C

    PixelIterator *ClonePixelIterator(const PixelIterator *iterator)

ClonePixelIterator() makes an exact copy of the specified iterator.- iterator: the magick iterator. 
=end pod
sub ClonePixelIterator(
   Pointer $iterator
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 DestroyPixelIterator
=head2 C

    PixelIterator *DestroyPixelIterator(PixelIterator *iterator)

DestroyPixelIterator() deallocates resources associated with a PixelIterator.- iterator: the pixel iterator. 
=end pod
sub DestroyPixelIterator(
   Pointer $iterator
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 IsPixelIterator
=head2 C

    MagickBooleanType IsPixelIterator(const PixelIterator *iterator)

IsPixelIterator() returns MagickTrue if the iterator is verified as a pixel iterator.- iterator: the magick iterator. 
=end pod
sub IsPixelIterator(
   Pointer $iterator
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 NewPixelIterator
=head2 C

    PixelIterator *NewPixelIterator(MagickWand *wand)

NewPixelIterator() returns a new pixel iterator.- wand: the magick wand. 
=end pod
sub NewPixelIterator(
   Pointer $wand
)
returns Pointer
is native(&library)
is export { * };


=begin pod
=head1 PixelClearIteratorException
=head2 C

    MagickBooleanType PixelClearIteratorException(PixelIterator *iterator)

PixelClearIteratorException() clear any exceptions associated with the iterator.- iterator: the pixel iterator. 
=end pod
sub PixelClearIteratorException(
   Pointer $iterator
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 NewPixelRegionIterator
=head2 C

    PixelIterator *NewPixelRegionIterator(MagickWand *wand,const ssize_t x,
      const ssize_t y,const size_t width,const size_t height)

NewPixelRegionIterator() returns a new pixel iterator.- wand: the magick wand. - x,y,columns,rows:  These values define the perimeter of a region of pixels. 
=end pod
sub NewPixelRegionIterator(
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
=head1 PixelGetCurrentIteratorRow
=head2 C

    PixelWand **PixelGetCurrentIteratorRow(PixelIterator *iterator,
      size_t *number_wands)

PixelGetCurrentIteratorRow() returns the current row as an array of pixel wands from the pixel iterator.- iterator: the pixel iterator. - number_wands: the number of pixel wands. 
=end pod
sub PixelGetCurrentIteratorRow(
   Pointer $iterator,
   Pointer[int32] $number_wands
)
returns CArray[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 PixelGetIteratorException
=head2 C

    char *PixelGetIteratorException(const PixelIterator *iterator,
      ExceptionType *severity)

PixelGetIteratorException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- iterator: the pixel iterator. - severity: the severity of the error is returned here. 
=end pod
sub PixelGetIteratorException(
   Pointer $iterator,
   Pointer $severity
)
returns Str
is native(&library)
is export { * };


=begin pod
=head1 PixelGetIteratorExceptionType
=head2 C

    ExceptionType PixelGetIteratorExceptionType(
      const PixelIterator *iterator)

PixelGetIteratorExceptionType() the exception type associated with the iterator.  If no exception has occurred, UndefinedExceptionType is returned.- iterator: the magick iterator. 
=end pod
sub PixelGetIteratorExceptionType(
   Pointer $iterator
)
returns Pointer 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetIteratorRow
=head2 C

    MagickBooleanType PixelGetIteratorRow(PixelIterator *iterator)

PixelGetIteratorRow() returns the current pixel iterator row.- iterator: the pixel iterator. 
=end pod
sub PixelGetIteratorRow(
   Pointer $iterator
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelGetNextIteratorRow
=head2 C

    PixelWand **PixelGetNextIteratorRow(PixelIterator *iterator,
      size_t *number_wands)

PixelGetNextIteratorRow() returns the next row as an array of pixel wands from the pixel iterator.- iterator: the pixel iterator. - number_wands: the number of pixel wands. 
=end pod
sub PixelGetNextIteratorRow(
   Pointer $iterator,
   Pointer[int32] $number_wands
)
returns CArray[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 PixelGetPreviousIteratorRow
=head2 C

    PixelWand **PixelGetPreviousIteratorRow(PixelIterator *iterator,
      size_t *number_wands)

PixelGetPreviousIteratorRow() returns the previous row as an array of pixel wands from the pixel iterator.- iterator: the pixel iterator. - number_wands: the number of pixel wands. 
=end pod
sub PixelGetPreviousIteratorRow(
   Pointer $iterator,
   Pointer[int32] $number_wands
)
returns CArray[Pointer]
is native(&library)
is export { * };


=begin pod
=head1 PixelResetIterator
=head2 C

    void PixelResetIterator(PixelIterator *iterator)

PixelResetIterator() resets the pixel iterator.  Use it in conjunction with PixelGetNextIteratorRow() to iterate over all the pixels in a pixel container.- iterator: the pixel iterator. 
=end pod
sub PixelResetIterator(
   Pointer $iterator
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetFirstIteratorRow
=head2 C

    void PixelSetFirstIteratorRow(PixelIterator *iterator)

PixelSetFirstIteratorRow() sets the pixel iterator to the first pixel row.- iterator: the magick iterator. 
=end pod
sub PixelSetFirstIteratorRow(
   Pointer $iterator
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSetIteratorRow
=head2 C

    MagickBooleanType PixelSetIteratorRow(PixelIterator *iterator,
      const ssize_t row)

PixelSetIteratorRow() set the pixel iterator row.- iterator: the pixel iterator. 
=end pod
sub PixelSetIteratorRow(
   Pointer $iterator,
   uint32 $row
)
returns uint32 
is native(&library)
is export { * };


=begin pod
=head1 PixelSetLastIteratorRow
=head2 C

    void PixelSetLastIteratorRow(PixelIterator *iterator)

PixelSetLastIteratorRow() sets the pixel iterator to the last pixel row.- iterator: the magick iterator. 
=end pod
sub PixelSetLastIteratorRow(
   Pointer $iterator
)
is native(&library)
is export { * };


=begin pod
=head1 PixelSyncIterator
=head2 C

    MagickBooleanType PixelSyncIterator(PixelIterator *iterator)

PixelSyncIterator() syncs the pixel iterator.- iterator: the pixel iterator. 
=end pod
sub PixelSyncIterator(
   Pointer $iterator
)
returns uint32 
is native(&library)
is export { * };


