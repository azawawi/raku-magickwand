use v6;

unit module MagickWand::NativeCall;

use NativeCall;
use MagickWand::NativeCall::Common;

constant MagickTrue   is export = 1;
constant MagickFalse  is export = 0;

=begin stash
enum ChannelType  is export (
  UndefinedChannel  => 0,
  RedChannel        => 0x0001;
  GrayChannel       => 0x0001,
  CyanChannel       => 0x0001,
  GreenChannel      => 0x0002,
  MagentaChannel    => 0x0002,
  BlueChannel       => 0x0004,
  YellowChannel     => 0x0004,
  AlphaChannel      => 0x0008,
  OpacityChannel    => 0x0008,
  BlackChannel      => 0x0020,
  IndexChannel      => 0x0020,
  CompositeChannels => 0x002F,
  AllChannels       => 0x7ffffff,
  TrueAlphaChannel  => 0x0040,
  RGBChannels       => 0x0080,
  GrayChannels      => 0x0080,
  SyncChannels      => 0x0100,
  DefaultChannels   => ((AllChannels | SyncChannels) &~ OpacityChannel),
);
=end stash
