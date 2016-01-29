use v6;

use Test;
use lib 'lib';

plan 4;

use MagickWand;

constant IMAGE-FILENAME = "t/images/aero1.jpg";

{
  my $o = MagickWand.new;
  ok $o.defined, "MagicWand.new worked";
  ok !$o.handle.defined, ".handle is not defined by default";

  LEAVE {
    $o.cleanup if $o.defined;
  }
}

{
  my $o = MagickWand.new;
  ok $o.read(IMAGE-FILENAME), "read() works";
  ok !$o.read("not-found.jpg"), "read() fails gracefully for non-existant files";

  LEAVE {
    $o.cleanup if $o.defined;
  }
}

=begin stash
{
  my $o = MagickWand.new;
  my Buf $buffer = IMAGE-FILENAME.IO.slurp(:bin);
  ok $o.read-buffer($buffer), "read-buffer works";
  ok !$o.read-buffer(Nil), "read-buffer fails gracefully for undefined blob";

  LEAVE {
    $o.cleanup if $o.defined;
  }
}
=end stash
