use v6;

unit module MagickWand::Enums;

=begin pod

=head1 Name

MagicWand::Enums - MagicWand Enumerations

=head1 Description

This document describes the the different enumerations used within this library.

=head1 Enumerations

=head2 NoiseType

=item UniformNoise
=item GaussianNoise
=item MultiplicativeGaussianNoise
=item ImpulseNoise
=item LaplacianNoise
=item PoissonNoise

=end pod
enum NoiseType is export <UndefinedNoise UniformNoise GaussianNoise
  MultiplicativeGaussianNoise ImpulseNoise LaplacianNoise PoissonNoise>;

=begin pod

=head2 ChannelType

=item RedChannel
=item GaussianNoise
=item GrayChannel
=item CyanChannel
=item GreenChannel
=item MagentaChannel
=item AlphaChannel
=item OpacityChannel
=item BlackChannel
=item IndexChannel
=item CompositeChannels
=item AllChannels
=item TrueAlphaChannel
=item RGBChannels
=item GrayChannels
=item SyncChannels
=item DefaultChannels

=end pod

enum ChannelType is export (
  UndefinedChannel  => 0,
  RedChannel        => 0x1,
  GrayChannel       => 0x1,
  CyanChannel       => 0x1,
  GreenChannel      => 0x2,
  MagentaChannel    => 0x2,
  BlueChannel       => 0x4,
  YellowChannel     => 0x4,
  AlphaChannel      => 0x8,
  OpacityChannel    => 0x8,
  BlackChannel      => 0x20,
  IndexChannel      => 0x20,
  CompositeChannels => 0x2F,
  AllChannels       => 0x7ffffff,
  TrueAlphaChannel  => 0x40,
  RGBChannels       => 0x80,
  GrayChannels      => 0x80,
  SyncChannels      => 0x100,
  DefaultChannels   => 0x7fffff7
);

=begin pod

=head2 CompositeOperator

=item NoCompositeOp
=item ModulusAddCompositeOp
=item AtopCompositeOp
=item BlendCompositeOp
=item BumpmapCompositeOp
=item ChangeMaskCompositeOp
=item ClearCompositeOp
=item ColorBurnCompositeOp
=item ColorDodgeCompositeOp
=item ColorizeCompositeOp
=item CopyBlackCompositeOp
=item CopyBlueCompositeOp
=item CopyCompositeOp
=item CopyCyanCompositeOp
=item CopyGreenCompositeOp
=item CopyMagentaCompositeOp
=item CopyOpacityCompositeOp
=item CopyRedCompositeOp
=item CopyYellowCompositeOp
=item DarkenCompositeOp
=item DstAtopCompositeOp
=item DstCompositeOp
=item DstInCompositeOp
=item DstOutCompositeOp
=item DstOverCompositeOp
=item DifferenceCompositeOp
=item DisplaceCompositeOp
=item DissolveCompositeOp
=item ExclusionCompositeOp
=item HardLightCompositeOp
=item HueCompositeOp
=item InCompositeOp
=item LightenCompositeOp
=item LinearLightCompositeOp
=item LuminizeCompositeOp
=item MinusDstCompositeOp
=item ModulateCompositeOp
=item MultiplyCompositeOp
=item OutCompositeOp
=item OverCompositeOp
=item OverlayCompositeOp
=item PlusCompositeOp
=item ReplaceCompositeOp
=item SaturateCompositeOp
=item ScreenCompositeOp
=item SoftLightCompositeOp
=item SrcAtopCompositeOp
=item SrcCompositeOp
=item SrcInCompositeOp
=item SrcOutCompositeOp
=item SrcOverCompositeOp
=item ModulusSubtractCompositeOp
=item ThresholdCompositeOp
=item XorCompositeOp
=item DivideDstCompositeOp
=item DistortCompositeOp
=item BlurCompositeOp
=item PegtopLightCompositeOp
=item VividLightCompositeOp
=item PinLightCompositeOp
=item LinearDodgeCompositeOp
=item LinearBurnCompositeOp
=item MathematicsCompositeOp
=item DivideSrcCompositeOp
=item MinusSrcCompositeOp
=item DarkenIntensityCompositeOp
=item LightenIntensityCompositeOp

=end pod
enum CompositeOperator is export <
  UndefinedCompositeOp
  NoCompositeOp
  ModulusAddCompositeOp
  AtopCompositeOp
  BlendCompositeOp
  BumpmapCompositeOp
  ChangeMaskCompositeOp
  ClearCompositeOp
  ColorBurnCompositeOp
  ColorDodgeCompositeOp
  ColorizeCompositeOp
  CopyBlackCompositeOp
  CopyBlueCompositeOp
  CopyCompositeOp
  CopyCyanCompositeOp
  CopyGreenCompositeOp
  CopyMagentaCompositeOp
  CopyOpacityCompositeOp
  CopyRedCompositeOp
  CopyYellowCompositeOp
  DarkenCompositeOp
  DstAtopCompositeOp
  DstCompositeOp
  DstInCompositeOp
  DstOutCompositeOp
  DstOverCompositeOp
  DifferenceCompositeOp
  DisplaceCompositeOp
  DissolveCompositeOp
  ExclusionCompositeOp
  HardLightCompositeOp
  HueCompositeOp
  InCompositeOp
  LightenCompositeOp
  LinearLightCompositeOp
  LuminizeCompositeOp
  MinusDstCompositeOp
  ModulateCompositeOp
  MultiplyCompositeOp
  OutCompositeOp
  OverCompositeOp
  OverlayCompositeOp
  PlusCompositeOp
  ReplaceCompositeOp
  SaturateCompositeOp
  ScreenCompositeOp
  SoftLightCompositeOp
  SrcAtopCompositeOp
  SrcCompositeOp
  SrcInCompositeOp
  SrcOutCompositeOp
  SrcOverCompositeOp
  ModulusSubtractCompositeOp
  ThresholdCompositeOp
  XorCompositeOp
  DivideDstCompositeOp
  DistortCompositeOp
  BlurCompositeOp
  PegtopLightCompositeOp
  VividLightCompositeOp
  PinLightCompositeOp
  LinearDodgeCompositeOp
  LinearBurnCompositeOp
  MathematicsCompositeOp
  DivideSrcCompositeOp
  MinusSrcCompositeOp
  DarkenIntensityCompositeOp
  LightenIntensityCompositeOp
>;

=begin pod

=head2 MontageMode

=item FrameMode
=item UnframeMode
=item ConcatenateMode

=end pod
enum MontageMode is export <
  UndefinedMode,
  FrameMode
  UnframeMode
  ConcatenateMode
>;

=begin pod

=head2 ImageType

=item BilevelType
=item GrayscaleType
=item GrayscaleMatteType
=item PaletteType
=item PaletteMatteType
=item TrueColorType
=item TrueColorMatteType
=item ColorSeparationType
=item ColorSeparationMatteType
=item OptimizeType
=item PaletteBilevelMatteType

=end pod
enum ImageType is export <
  UndefinedType
  BilevelType
  GrayscaleType
  GrayscaleMatteType
  PaletteType
  PaletteMatteType
  TrueColorType
  TrueColorMatteType
  ColorSeparationType
  ColorSeparationMatteType
  OptimizeType
  PaletteBilevelMatteType
>;

=begin pod

=head2 StatisticType

=item GradientStatistic
=item MaximumStatistic
=item MeanStatistic
=item MedianStatistic
=item MinimumStatistic
=item ModeStatistic
=item NonpeakStatistic
=item StandardDeviationStatistic

=end pod
enum StatisticType is export <
  UndefinedStatistic
  GradientStatistic
  MaximumStatistic
  MeanStatistic
  MedianStatistic
  MinimumStatistic
  ModeStatistic
  NonpeakStatistic
  StandardDeviationStatistic
>;

=begin pod

=head2 StatisticType

=item RGBColorspace
=item GRAYColorspace
=item TransparentColorspace
=item OHTAColorspace
=item LabColorspace
=item XYZColorspace
=item YCbCrColorspace
=item YCCColorspace
=item YIQColorspace
=item YPbPrColorspace
=item YUVColorspace
=item CMYKColorspace
=item sRGBColorspace
=item HSBColorspace
=item HSLColorspace
=item HWBColorspace
=item Rec601LumaColorspace
=item Rec601YCbCrColorspace
=item Rec709LumaColorspace
=item Rec709YCbCrColorspace
=item LogColorspace
=item CMYColorspace

=end pod
enum ColorspaceType is export <
  UndefinedColorspace
  RGBColorspace
  GRAYColorspace
  TransparentColorspace
  OHTAColorspace
  LabColorspace
  XYZColorspace
  YCbCrColorspace
  YCCColorspace
  YIQColorspace
  YPbPrColorspace
  YUVColorspace
  CMYKColorspace
  sRGBColorspace
  HSBColorspace
  HSLColorspace
  HWBColorspace
  Rec601LumaColorspace
  Rec601YCbCrColorspace
  Rec709LumaColorspace
  Rec709YCbCrColorspace
  LogColorspace
  CMYColorspace
>;

=begin pod

=head1 FilterTypes

=item PointFilter
=item BoxFilter
=item TriangleFilter
=item HermiteFilter
=item HanningFilter
=item HammingFilter
=item BlackmanFilter
=item GaussianFilter
=item QuadraticFilter
=item CubicFilter
=item CatromFilter
=item MitchellFilter
=item JincFilter
=item SincFilter
=item SincFastFilter
=item KaiserFilter
=item WelshFilter
=item ParzenFilter
=item BohmanFilter
=item BartlettFilter
=item LagrangeFilter
=item LanczosFilter
=item LanczosSharpFilter
=item Lanczos2Filter
=item Lanczos2SharpFilter
=item RobidouxFilter
=item RobidouxSharpFilter
=item CosineFilter
=item SplineFilter
=item SentinelFilter

=end pod
enum FilterTypes is export <
  UndefinedFilter
  PointFilter
  BoxFilter
  TriangleFilter
  HermiteFilter
  HanningFilter
  HammingFilter
  BlackmanFilter
  GaussianFilter
  QuadraticFilter
  CubicFilter
  CatromFilter
  MitchellFilter
  JincFilter
  SincFilter
  SincFastFilter
  KaiserFilter
  WelshFilter
  ParzenFilter
  BohmanFilter
  BartlettFilter
  LagrangeFilter
  LanczosFilter
  LanczosSharpFilter
  Lanczos2Filter
  Lanczos2SharpFilter
  RobidouxFilter
  RobidouxSharpFilter
  CosineFilter
  SplineFilter
  SentinelFilter
>;
