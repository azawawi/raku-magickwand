use v6;

use Test;
use lib 'lib';

plan 2;

use MagickWand;
ok 1, "'use MagickWand' worked!";

use MagickWand::NativeCall;
ok 1, "'use MagickWand::NativeCall' worked!";