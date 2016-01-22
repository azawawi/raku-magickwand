# MagickWand
[![Build Status](https://travis-ci.org/azawawi/perl6-magickwand.svg?branch=master)](https://travis-ci.org/azawawi/perl6-magickwand)
[![Build status](https://ci.appveyor.com/api/projects/status/github/azawawi/perl6-magickwand?svg=true)](https://ci.appveyor.com/project/azawawi/perl6-magickwand/branch/master)

This provides a simple Perl 6 object-oriented NativeCall wrapper for the
[ImageMagick's ImageWand](http://www.imagemagick.org/script/magick-wand.php) library.

## Example

```Perl6
use v6;
use MagickWand;

# A new magic wand
my $wand = MagickWand.new;

# Read an image
$wand.read-image("examples/images/aero1.jpg");

# Lighten dark areas
$wand.auto-gamma;

# And then write a new image
$wand.write-image("output.png");

# And cleanup...
$wand.cleanup;
```

For more examples, please see the [examples](examples) folder.

## Prerequisites

Please follow the instructions below based on your platform:

### Linux (Debian)

- To install ImageMagick libraries, please run:
```
    $ sudo apt-get install libmagickwand-dev
```

### MacOSX (Darwin)

- To install ImageMagick libraries, please run:
```
$ brew update
$ brew install imagemagick
```

### Windows

-- TODO finish this
A precompiled static windows DLL is already provided so it should work
on 32/64-bit windows operating systems.

## Installation

To install it using Panda (a module management tool bundled with Rakudo Star):

    $ panda update
    $ panda install MagickWand

## Testing

To run tests:

    $ prove -ve "perl6 -Ilib"

## Author

Ahmad M. Zawawi, azawawi on #perl6, https://github.com/azawawi/

## License

MIT License
