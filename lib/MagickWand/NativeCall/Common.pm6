
use v6;

unit module MagickWand::NativeCall::Common;

constant LIB = 'MagickWand';

use LibraryCheck;

sub library is export {
  # On windows
  return "CORE_RL_wand_.dll" if $*DISTRO.is-win;

  # On MacOS X using howbrew
  return "libMagickWand-6.Q16.2.dylib" if $*KERNEL.name eq 'darwin';

  # Linux/UNIX
  if library-exists(LIB, v4) {
    return sprintf("lib%s.so.4", LIB);
  } elsif library-exists(LIB, v5) {
    return sprintf("lib%s.so.5", LIB);
  }

  # Fallback
  return sprintf("lib%s.so", LIB);
}

class KernelInfo is repr('CStruct') {
  #TODO implement KernelInfo http://www.imagemagick.org/api/MagickCore/structKernelInfo.html
}

class RectangeInfo is repr('CStruct') {
  #TODO implement RectangeInfo
}

class PointInfo is repr('CStruct') {
  #TODO implement PointInfo
}

#TODO ChannelFeatures
#TODO ChannelStatistics
#TODO enum ChannelType
#TODO enum MetricType 
#TODO enum ImageLayerMethod
#TODO enum CompositeOperator
#TODO enum GravityType
#TODO enum StorageType
#TODO enum DistortImageMethod
#TODO enum MagickEvaluateOperator
#TODO enum MagickFunction
#TODO enum SparseColorMethod
#TODO enum ColorspaceType
#TODO enum CompressionType
#TODO enum DisposeType
#TODO enum EndianType
#TODO enum InterlaceType
#TODO enum InterpolatePixelMethod
#TODO MagickSizeType
#TODO OrientationType
#TODO RenderingIntent 
#TODO ImageType
#TODO ResolutionType
#TODO VirtualPixelMethod
#TODO MontageMode
#TODO PreviewType
#TODO DitherMethod
#TODO FilterTypes
#TODO AlphaChannelType
#TODO OrientationType
#TODO MagickProgressMonitor
#TODO VirtualPixelMethod 
#TODO StatisticType
#TODO ExceptionType
#TODO AffineMatrix
#TODO PaintMethod
#TODO FillRule
#TODO ClipPathUnits
#TODO DrawBooleanType
#TODO StretchType
#TODO StyleType
#TODO LineCap
#TODO LineJoin
#TODO AlignType
#TODO DecorationType
#TODO DirectionType
#TODO Quantum
#TODO IndexPacket
#TODO MagickPixelPacket
#TODO PixelPacket
