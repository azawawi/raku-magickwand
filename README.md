# MagickWand

[![Actions
Status](https://github.com/azawawi/raku-file-homedir/workflows/test/badge.svg)](https://github.com/azawawi/raku-file-homedir/actions)

This provides a Raku object-oriented [NativeCall](http://docs.raku.org/language/nativecall)-based API for ImageMagick's
[MagickWand C API](http://www.imagemagick.org/script/magick-wand.php).

## Example

```Raku
use v6;
use MagickWand;

# A new magic wand
my $wand = MagickWand.new;

# Read an image
$wand.read("examples/images/aero1.jpg");

# Lighten dark areas
$wand.auto-gamma;

# And then write a new image
$wand.write("output.png");

# And cleanup on exit
LEAVE {
  $wand.cleanup if $wand.defined;
}
```

For more examples, please see the [examples](examples) folder.
For examples of available image effects, please click
[here](http://www.imagemagick.org/script/examples.php).

## Prerequisites

Please follow the instructions below based on your platform:

### Linux (Debian)

- To install ImageMagick libraries, please run:
```
$ sudo apt install libmagickwand-dev
```

### MacOSX (Darwin)

- To install ImageMagick libraries via [Homebrew](http://brew.sh/), please run:
```
$ brew update
$ brew install imagemagick
```

- To install ImageMagick libraries via [MacPorts](https://www.macports.org/),
please run:
```
$ sudo port install ImageMagick
```

### Windows

For Windows, most people will want the standard 64-bit [`DLL installer`](https://www.imagemagick.org/script/download.php#windows).
 If you need 32-bit or other special options, select the appropriate alternate
installer.

Also please remember to enable **"Add to PATH"** option.

## Installation

- Install this module using [zef](https://github.com/ugexe/zef):

```
$ zef install MagickWand
```

## Handling PDF files

To process PDF files, please remember to install [Ghostscript](https://www.ghostscript.com) from [here](https://www.ghostscript.com/download/gsdnld.html).

## Testing

- To run tests:
```
$ prove --ext .rakutest -ve "raku -I."
```

- To run all tests including author tests (Please make sure
[Test::Meta](https://github.com/jonathanstowe/Test-META) is installed):
```
$ zef install Test::META
$ TEST_AUTHOR=1 prove --ext .rakutest -ve "raku -I."
```

## Author

Ahmad M. Zawawi, azawawi on #raku, https://github.com/azawawi/

## License

MIT License
