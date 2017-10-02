use v6;

use Test;
use NativeCall;

plan 3;

use lib $*PROGRAM-NAME.IO.dirname.IO.add('..').add('lib').Str;
use MagickWand;

my $test-folder = $*PROGRAM-NAME.IO.dirname;
my $image       = $test-folder.IO.add('images').add('aero1.jpg');
my $image-size  = $image.s;

$image .= Str;

{
    my sub library {
        $*DISTRO.is-win ?? 'msvcrt.dll' !! '';
    }

    # void *malloc(size_t size);
    my sub malloc(size_t) returns Pointer is native(&library) { * }
    # void free(void *ptr);
    my sub free(Pointer) is native(&library) { * }
    # FILE *fopen(const char *path, const char *mode);
    my sub fopen(Str, Str) returns Pointer is native(&library) { * }
    # size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
    my sub fread(Pointer, size_t, size_t, Pointer) returns size_t is native(&library) { * }

    my $buf = malloc($image-size);
    my $o = MagickWand.new;

    my $fh = fopen($image, 'r');
    fread($buf, $image-size, 1, $fh);

    ok $o.read-buffer($buf, $image-size), "read-buffer() works";

    is $o.width, 320, 'width proper';
    is $o.height, 240, 'height proper';

    LEAVE {
        $o.cleanup if $o.defined;
        free($buf);
    }
}

# vim: ft=perl6
