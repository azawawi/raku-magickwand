#!/usr/bin/env perl6

use v6;

use lib 'lib';
use MagickWand;

# Store images so we can montage them later
my @images;

# Read the original image
my $original = MagickWand.new;
$original.read("examples/images/model.gif");
say $original.width, "x", $original.height;
$original.label("Da Original");
@images.push($original);

# Read camelia image
my $camelia  = MagickWand.new;
$camelia.read("examples/images/camelia-logo.png");
say $camelia.width, "x", $camelia.height;
$camelia.label("I am Camelia");
@images.push($camelia);

{
  # And do some magic on it
  say "Adaptive Blur";
  my $o = $original.clone;
  $o.adaptive-blur(0, 1);
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
  $o.adaptive-sharpen(0, 1);
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
  $o.annotate(100, 100, 90, "Annotate");
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
  $o.blur(0, 1);
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
  $o.charcoal(20,1);
  $o.label("Charcoal");
  @images.push($o);
}

{
  #TODO ColorMatrix
  say "TODO ColorMatrix";
  #$example->ColorMatrix([1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1]);
}

for CompositeOperator.enums -> $op
{
  say "Composite {$op.key}";
  my $o = $original.clone;
  $o.composite($camelia, ::{$op.key}, 0, 15);
  $o.label($op.key);
  #@images.push($o);
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
  #TODO $example->ContrastStretch('5%');
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
  #TODO $example->Crop(geometry=>'80x80+25+50');
  #TODO $example->Set(page=>'0x0+0+0');
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
{
  say "Distort";
  my $o = $original.clone;
  $example->Label('Distort');
  $example->Distort(method=>'arc',points=>[60],'virtual-pixel'=>'white');
}
=end TODO

{
  say "Circle";
  my $o = $original.clone;
  $o.fill( 'none' );
  $o.stroke( 'gold' );
  $o.stroke-width( 2 );
  $o.circle( 60, 90, 60, 120 );
  $o.label("Circle");
  @images.push($o);
}

{
  say "Detect Edges...";
  my $o = $original.clone;
  $o.edge;
  #TODO $example->Clamp();
  $o.label("Detect Edges");
  @images.push($o);
}

{
  say "Emboss...";
  my $o = $original.clone;
  $o.emboss(0, 1);
  $o.label("Emboss");
  @images.push($o);
}

{
  say "Encipher...";
  my $o = $original.clone;
  $o.label("Encipher");
  $o.encipher("Magick");
  @images.push($o);
}

{
  say "Equalize...";
  my $o = $original.clone;
  $o.equalize;
  $o.label("Equalize");
  @images.push($o);
}

{
  say "Explode (i.e. reverse implode)...";
  my $o = $original.clone;
  $o.implode(-1);
  $o.label("Explode");
  @images.push($o);
}

{
  say "Flip...";
  my $o = $original.clone;
  $o.flip;
  $o.label("Flip");
  @images.push($o);
}

{
  say "Flop...";
  my $o = $original.clone;
  $o.flop;
  $o.label("Flop");
  @images.push($o);
}

{
  say "Frame...";
  my $o = $original.clone;
  $o.frame("gold", 15, 15, 3, 3);
  $o.label("Frame");
  @images.push($o);
}

{
  say "Fx...";
  my $o = $original.fx("0.5*u");
  $o.label("Fx");
  @images.push($o);
}

{
  say "Gamma...";
  my $o = $original.clone;
  $o.gamma(1.6);
  $o.label("Gamma");
  @images.push($o);
}

{
  say "Gaussian Blur...";
  my $o = $original.clone;
  $o.gaussian-blur(0, 1.5);
  $o.label("Gaussian Blur");
  @images.push($o);
}

{
  #TODO fix gradient
  say "Gradient...";
  my $o = MagickWand.new;
  say $o.create( 130, 194, "white" );
  say $o.read( 'GRADIENT:#20a0ff-#ffff00' );
  $o.label( "Gradient" );
  @images.push($o);
}

{
  say sprintf("Grayscale from '%s'...", $original.type);
  my $o = $original.clone;
  $o.type(GrayscaleType);
  $o.label("Grayscale");
  @images.push($o);
}

{
  say "Implode...";
  my $o = $original.clone;
  $o.implode(0.5);
  $o.label("Implode");
  @images.push($o);
}

{
  #TODO fix
  say "Level...";
  my $o = $original.clone;
  $o.level(1.0, 1.0, 1.0);
  $o.label("Level");
  @images.push($o);
}

=begin TODO
{
  say "Median Filter...";
  my $o = $original.clone;
  $o.median-filter;
  $o.label("Median Filter");
  @images.push($o);
}
=end TODO

{
  say "Modulate...";
  my $o = $original.clone;
  $o.modulate( 110, 110, 110 );
  $o.label("Modulate");
  @images.push($o);
}

{
  say "Monochrome (Quantize)...";
  my $o = $original.clone;
  $o.quantize(2, GRAYColorspace, 0, True, False);
  $o.label("Monochrome (Quantize)");
  @images.push($o);
}

=begin TODO
#TODO Implement Morphology
print "Morphology...\n";
$example=$model->Clone();
$example->Label('Morphology');
$example->Morphology(method=>'Dilate',kernel=>'Diamond',iterations=>3);
=end TODO

{
  say "Motion Blur...";
  my $o = $original.clone;
  $o.motion-blur( 0, 13, 10);
  #TODO $example->MotionBlur('0x13+10-10');
  $o.label("Motion Blur");
  @images.push($o);
}

{
  say "Negate...";
  my $o = $original.clone;
  $o.negate( False );
  $o.label("Negate");
  @images.push($o);
}

{
  say "Normalize...";
  my $o = $original.clone;
  $o.normalize;
  $o.label("Normalize");
  @images.push($o);
}

{
  say "Oil Paint...";
  my $o = $original.clone;
  $o.oil-paint(0);
  $o.label("Oil Paint");
  @images.push($o);
}

=begin TODO
#TODO plasma
print "Plasma...\n";
$plasma=Image::Magick->new;
$plasma->Set(size=>'130x194');
$x=$plasma->ReadImage('plasma:fractal');
warn "$x" if "$x";
$plasma->Label('Plasma');
push(@$images,$plasma);
=end TODO

{
  say "Polaroid...";
  my $o = $original.clone;
  $o.polaroid(-5.0);
  #TODO $example->Polaroid(caption=>'Magick',rotate=>-5.0,gravity=>'center');
  $o.label("Polaroid");
  @images.push($o);
}

=begin TODO

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

print "Montage...\n";
$montage=$images->Montage(geometry=>'128x160+8+4>',gravity=>'Center',
  tile=>'5x+10+200',compose=>'over',background=>'#ffffff',
  font=>'Generic.ttf',pointsize=>18,fill=>'#600',stroke=>'none',
	shadow=>'true');

=end TODO

say "Generating tiled image(s) comparison...";
my $montage = MagickWand.montage(@images, '5x+10+200', '128x160+8+4>', FrameMode, '15x15+3+3');
$montage.write("tiled-output.png");

# Side-by-side comparison of all images
say "Generating side-by-side image(s) comparison...";
my $comparison = MagickWand.append-wands( @images );
$comparison.write("side-by-side-output.png");

# And cleanup on exit
LEAVE {
  $original.cleanup   if $original.defined;
  for @images -> $image {
    $image.cleanup   if $image.defined;  
  }
}
