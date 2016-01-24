use v6;

use Test;
use lib 'lib';

plan 4;

use MagickWand;

my $o = MagickWand.new;
ok $o.defined, "MagicWand.new worked";
ok !$o.handle.defined, ".handle is not defined by default";

ok $o.read("t/images/aero1.jpg"), "read works";
ok !$o.read("not-found.jpg"), "read fails gracefully for non-existant files";
