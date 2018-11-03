use v6;
use lib 'lib';
use MagickWand;

say sprintf("ImageMagick API version   is 0x%x, %s", MagickWand.version<number>,
  MagickWand.version<string>);
say sprintf("ImageMagick API copyright is %s", MagickWand.copyright);
