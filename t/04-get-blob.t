use v6;

use Test;
use lib 'lib';

use NativeCall;
use MagickWand;
use MagickWand::NativeCall;
use MagickWand::NativeCall::Image;
use MagickWand::NativeCall::Wand;

constant IMAGE-TYPE     = 'jpeg';
constant IMAGE-FILENAME = './t/images/aero1.jpg';

plan 1;

my sub library {
    $*DISTRO.is-win ?? 'msvcrt.dll' !! '';
}

my sub calloc(size_t, size_t) returns Pointer is native(&library) { * }

subtest {
    plan 2;

    my @list;
    my $len = calloc(1, 1);
    my $o = MagickWand.new;

    $o.read(IMAGE-FILENAME);

    MagickResetIterator($o.handle);
    MagickSetImageFormat($o.handle, IMAGE-TYPE);

    my $ptr = MagickGetImageBlob($o.handle, $len);

    my $data_length = nativecast(Int, $len);
    my $data = nativecast(CArray[byte], $ptr);

    for ^($data_length) {
        my UInt $code;
        if $data[$_] >= 0 {
            $code = $data[$_];
        }
        else {
            $code = 256 + $data[$_];
        }
        @list.push($code);
    };

    my $imgbuf = Buf[uint8].new(@list);
    my $tmpfnane = IMAGE-FILENAME ~ q{_} ~ time ~ q{.} ~ IMAGE-TYPE;

    $o.write($tmpfnane);

    if $tmpfnane.IO.e {
        my $fh = $tmpfnane.IO.open;
        my $etalonbuf = $fh.read;
        $fh.close;

        is-deeply($etalonbuf, $imgbuf, 'buffers are equal');
        ok unlink($tmpfnane), 'delete etalon file';
    }
    else {
        skip 2, 'could not save etalon';
    }

    MagickRelinquishMemory(nativecast(Pointer[void], $ptr));
}, 'check MagickGetImageBlob method';

done-testing;
