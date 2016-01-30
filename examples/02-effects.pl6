#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# Store images so we can montage them later
my @images;

my $original = MagickWand.new;
# Read the original image
$original.read("examples/images/aero1.jpg");
@images.push($original);

# Read camelia image
my $camelia  = MagickWand.new;
$camelia.read("examples/images/camelia-logo.png");

{
  # And do some magic on it
  say "Adaptive Blur";
  my $o = $original.clone;
  $o.adaptive-blur(0.0, 1.0);
  $o.label("Adaptive Blur");
  @images.push($o);
}

{
  say "Adaptive Resize";
  my $o = $original.clone;
  $o.adaptive-resize( 160, 120 );
  $o.label("Adaptive Resize");
  @images.push($o);
}

{
  say "Adaptive Sharpen";
  my $o = $original.clone;
  $o.adaptive-sharpen(0.0, 1.0);
  $o.label("Adaptive Sharpen");
  @images.push($o);
}

{
  say "Adaptive Threshold";
  my $o = $original.clone;
  $o.adaptive-threshold(5, 5, 5);
  $o.label("Adaptive Threshold");
  @images.push($o);
}

{
  say "Add Noise";
  my $o = $original.clone;
  $o.add-noise(LaplacianNoise);
  $o.label("Add Noise");
  @images.push($o);
}

{
  say "Annotate";
  my $o = $original.clone;
  $o.annotate(100.0, 100.0, 90.0, "Annotate");
  $o.label("Annotate");
  @images.push($o);
}

{
  say "Auto Gamma";
  my $o = $original.clone;
  $o.auto-gamma;
  $o.label("Auto Gamma");
  @images.push($o);
}

{
  say "Auto Level";
  my $o = $original.clone;
  $o.auto-level;
  $o.label("Auto Level");
  @images.push($o);
}

{
  say "Blur";
  my $o = $original.clone;
  $o.blur(0.0, 1.0);
  $o.label("Blur");
  @images.push($o);
}

{
  say "Border";
  my $o = $original.clone;
  $o.border("gold", 6, 6);
  $o.label("Border");
  @images.push($o);
}

{
  say "Channel";
  my $o = $original.clone;
  $o.channel(RedChannel);
  $o.label("Channel");
  @images.push($o);
}

{
  say "Charcoal";
  my $o = $original.clone;
  $o.charcoal(20.0,1.0);
  $o.label("Charcoal");
  @images.push($o);
}

{
  #TODO ColorMatrix
  say "TODO ColorMatrix";
}

for CompositeOperator.enums -> $op
{
  say "Composite $op.key";
  my $o = $original.clone;
  $o.composite($camelia, ::{$op.key}, 0, 15);
  $o.annotate(0.0, 15.0, 0.0, $op.key);
  $o.label("Composite");
  @images.push($o);
}

{
  say "Contrast";
  my $o = $original.clone;
  $o.contrast;
  $o.label("Contrast");
  @images.push($o);
}

{
  say "Contrast Stretch";
  my $o = $original.clone;
  $o.contrast-stretch(1.1, 1.1);
  $o.label("Contrast Stretch");
  @images.push($o);
}

{
  say "Convolve";
  my $o = $original.clone;
  $o.convolve( [1, 1, 1, 1, 4, 1, 1, 1, 1] );
  $o.label("Convolve");
  @images.push($o);
}

{
  say "Crop";
  my $o = $original.clone;
  $o.crop( 50, 50, 100, 100 );
  $o.label("Crop");
  @images.push($o);
}

{
  say "Despeckle";
  my $o = $original.clone;
  $o.despeckle;
  $o.label("Despeckle");
  @images.push($o);
}

=begin TODO

print "Distort...\n";
$example=$model->Clone();
$example->Label('Distort');
$example->Distort(method=>'arc',points=>[60],'virtual-pixel'=>'white');


print "Draw...\n";
$example=$model->Clone();
$example->Label('Draw');
$example->Draw(fill=>'none',stroke=>'gold',primitive=>'circle',
  points=>'60,90 60,120',strokewidth=>2);


print "Detect Edges...\n";
$example=$model->Clone();
$example->Label('Detect Edges');
$example->Edge();


print "Emboss...\n";
$example=$model->Clone();
$example->Label('Emboss');
$example->Emboss('0x1');


print "Equalize...\n";
$example=$model->Clone();
$example->Label('Equalize');
$example->Equalize();


print "Implode...\n";
$example=$model->Clone();
$example->Label('Explode');
$example->Implode(-1);


print "Flip...\n";
$example=$model->Clone();
$example->Label('Flip');
$example->Flip();


print "Flop...\n";
$example=$model->Clone();
$example->Label('Flop');
$example->Flop();


print "Frame...\n";
$example=$model->Clone();
$example->Label('Frame');
$example->Frame('15x15+3+3');


print "Fx...\n";
$example=$model->Clone();
$example->Label('Fx');
push(@$images,$example->Fx(expression=>'0.5*u'));

print "Gamma...\n";
$example=$model->Clone();
$example->Label('Gamma');
$example->Gamma(1.6);


print "Gaussian Blur...\n";
$example=$model->Clone();
$example->Label('Gaussian Blur');
$example->GaussianBlur('0.0x1.5');


print "Gradient...\n";
$gradient=Image::Magick->new;
$gradient->Set(size=>'130x194');
$x=$gradient->ReadImage('gradient:#20a0ff-#ffff00');
warn "$x" if "$x";
$gradient->Label('Gradient');
push(@$images,$gradient);

print "Grayscale...\n";
$example=$model->Clone();
$example->Label('Grayscale');
$example->Set(type=>'grayscale');


print "Implode...\n";
$example=$model->Clone();
$example->Label('Implode');
$example->Implode(0.5);


print "Level...\n";
$example=$model->Clone();
$example->Label('Level');
$example->Level('20%');


print "Median Filter...\n";
$example=$model->Clone();
$example->Label('Median Filter');
$example->MedianFilter();


print "Modulate...\n";
$example=$model->Clone();
$example->Label('Modulate');
$example->Modulate(brightness=>110,saturation=>110,hue=>110);

$example=$model->Clone();

print "Monochrome...\n";
$example=$model->Clone();
$example->Label('Monochrome');
$example->Quantize(colorspace=>'gray',colors=>2,dither=>'false');


print "Morphology...\n";
$example=$model->Clone();
$example->Label('Morphology');
$example->Morphology(method=>'Dilate',kernel=>'Diamond',iterations=>3);


print "Motion Blur...\n";
$example=$model->Clone();
$example->Label('Motion Blur');
$example->MotionBlur('0x13+10-10');


print "Negate...\n";
$example=$model->Clone();
$example->Label('Negate');
$example->Negate();


print "Normalize...\n";
$example=$model->Clone();
$example->Label('Normalize');
$example->Normalize();


print "Oil Paint...\n";
$example=$model->Clone();
$example->Label('Oil Paint');
$example->OilPaint();


print "Plasma...\n";
$plasma=Image::Magick->new;
$plasma->Set(size=>'130x194');
$x=$plasma->ReadImage('plasma:fractal');
warn "$x" if "$x";
$plasma->Label('Plasma');
push(@$images,$plasma);

print "Polaroid...\n";
$example=$model->Clone();
$example->Label('Polaroid');
$example->Polaroid(caption=>'Magick',rotate=>-5.0,gravity=>'center');


print "Quantize...\n";
$example=$model->Clone();
$example->Label('Quantize');
$example->Quantize();


print "Radial Blur...\n";
$example=$model->Clone();
$example->Label('Radial Blur');
$example->RadialBlur(10);


print "Raise...\n";
$example=$model->Clone();
$example->Label('Raise');
$example->Raise('10x10');


print "Reduce Noise...\n";
$example=$model->Clone();
$example->Label('Reduce Noise');
$example->ReduceNoise();


print "Resize...\n";
$example=$model->Clone();
$example->Label('Resize');
$example->Resize('60%');


print "Roll...\n";
$example=$model->Clone();
$example->Label('Roll');
$example->Roll(geometry=>'+20+10');


print "Rotate...\n";
$example=$model->Clone();
$example->Label('Rotate');
$example->Rotate(45);


print "Sample...\n";
$example=$model->Clone();
$example->Label('Sample');
$example->Sample('60%');


print "Scale...\n";
$example=$model->Clone();
$example->Label('Scale');
$example->Scale('60%');


print "Segment...\n";
$example=$model->Clone();
$example->Label('Segment');
$example->Segment();


print "Shade...\n";
$example=$model->Clone();
$example->Label('Shade');
$example->Shade(geometry=>'30x30',gray=>'true');


print "Sharpen...\n";
$example=$model->Clone();
$example->Label('Sharpen');
$example->Sharpen('0.0x1.0');


print "Shave...\n";
$example=$model->Clone();
$example->Label('Shave');
$example->Shave('10x10');


print "Shear...\n";
$example=$model->Clone();
$example->Label('Shear');
$example->Shear('-20x20');


print "Sketch...\n";
$example=$model->Clone();
$example->Label('Sketch');
$example->Set(colorspace=>'Gray');
$example->Sketch('0x20+120');


print "Sigmoidal Contrast...\n";
$example=$model->Clone();
$example->Label('Sigmoidal Contrast');
$example->SigmoidalContrast("3x50%");


print "Spread...\n";
$example=$model->Clone();
$example->Label('Spread');
$example->Spread();


print "Solarize...\n";
$example=$model->Clone();
$example->Label('Solarize');
$example->Solarize();


print "Swirl...\n";
$example=$model->Clone();
$example->Label('Swirl');
$example->Swirl(90);


print "Unsharp Mask...\n";
$example=$model->Clone();
$example->Label('Unsharp Mask');
$example->UnsharpMask('0.0x1.0');


print "Vignette...\n";
$example=$model->Clone();
$example->Label('Vignette');
$example->Vignette('0x20');


print "Wave...\n";
$example=$model->Clone();
$example->Label('Wave');
$example->Wave('25x150');


=end TODO

# Side-by-side comparison of all images
my $comparison = MagickWand.append-wands( @images );
$comparison.write("output.png");

# And cleanup on exit
LEAVE {
  $original.cleanup   if $original.defined;
  for @images -> $image {
    $image.cleanup   if $image.defined;  
  }
}
