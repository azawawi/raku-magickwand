# MagickWand
[![Build Status](https://travis-ci.org/azawawi/perl6-magickwand.svg?branch=master)](https://travis-ci.org/azawawi/perl6-magickwand)
[![Build status](https://ci.appveyor.com/api/projects/status/github/azawawi/perl6-magickwand?svg=true)](https://ci.appveyor.com/project/azawawi/perl6-magickwand/branch/master)

This provides a simple Perl 6 object-oriented NativeCall wrapper for the
[ImageMagick's ImageWand](http://www.imagemagick.org/script/magick-wand.php) library.

## Example

```Perl6
use v6;
use MagickWand::NativeCall;

my $wand = NewMagickWand();
MagickReadImage($wand, "input.jpg");
MagickAutoGammaImage($wand);
MagickWriteImage($wand, "output.png");
DestroyMagickWand($wand) if $wand.defined;
```

For more examples, please see the [examples](examples) folder.

## MagickWand Library Installation

Please follow the instructions below based on your platform:

### Linux (Debian)

- To install MagickWand development libraries, please run:
```
    $ sudo apt-get install libmagickwand-dev
```

## Windows

-- TODO finish this
A precompiled static windows DLL is already provided so it should work
on 32/64-bit windows operating systems.

## Installation

To install it using Panda (a module management tool bundled with Rakudo Star):

    panda update
    panda install MagickWand

## Testing

To run tests:

    prove -ve "perl6 -Ilib"

## Author

Ahmad M. Zawawi, azawawi on #perl6, https://github.com/azawawi/

## License

MIT License
