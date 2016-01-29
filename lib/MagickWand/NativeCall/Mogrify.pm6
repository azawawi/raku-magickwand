
use v6;

unit module MagickWand::NativeCall::Mogrify;

use NativeCall;
use MagickWand::NativeCall::Common;

=begin pod
=head1 MagickCommandGenesis
=head2 C

    MagickBooleanType MagickCommandGenesis(ImageInfo *image_info,
      MagickCommand command,int argc,char **argv,char **metadata,
      ExceptionInfo *exception)

MagickCommandGenesis() applies image processing options to an image as prescribed by command line options.- image_info: the image info. - command: Choose from ConvertImageCommand, IdentifyImageCommand, MogrifyImageCommand, CompositeImageCommand, CompareImageCommand, ConjureImageCommand, StreamImageCommand, ImportImageCommand, DisplayImageCommand, or AnimateImageCommand. - argc: Specifies a pointer to an integer describing the number of elements in the argument vector. - argv: Specifies a pointer to a text array containing the command line arguments. - metadata: any metadata is returned here. - exception: return any errors or warnings in this structure. 
=end pod
sub MagickCommandGenesis(
   Pointer $image_info,
   uint32  $command,
   int $argc,
   CArray[Str] $argv,
   CArray[Str] $metadata,
   Pointer $exception
)
returns uint32 
is native(&library)
is export { * };


