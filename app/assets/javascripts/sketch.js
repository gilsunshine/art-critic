// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/BjoM9oKOAKY

var inc = 0.1;
var scl = 10;
var cols, rows;

var zoff = 0;

var fr;

var particles = [];
var waves = []

var flowfield;
var attackLevel = .8;
var releaseLevel = 0;
var attackTime = 0.2;
var decayTime = 0.2;
var susPercent = 0.2;
var releaseTime = 0.05;

var env;

function setup() {
  createCanvas(windowWidth, windowHeight);
  // background(0);
  cols = floor(width / scl) + 1;
  rows = floor(height / scl) + 1;
  fr = createP('');
  env = new p5.Env();
  env.setADSR(attackTime, decayTime, susPercent, releaseTime);
  env.setRange(attackLevel, releaseLevel);

  wave = new p5.Oscillator();
  wave.setType('triangle');
  wave.freq(0);
  wave.amp(env);
  wave.start();
  delay = new p5.Delay();
  delay.process(wave, .25, .25, 800);

  wave1 = new p5.Oscillator();
  wave1.setType('triangle');
  wave1.freq(0);
  wave1.amp(env);
  wave1.start();
  delay = new p5.Delay();
  delay.process(wave1, .25, .25, 800);

  wave2 = new p5.Oscillator();
  wave2.setType('triangle');
  wave2.freq(0);
  wave2.amp(env);
  wave2.start();
  delay = new p5.Delay();
  delay.process(wave2, .25, .25, 800);

  flowfield = new Array(cols * rows);

  for (var i = 0; i < 5; i++) {
    particles[i] = new Particle();
  }

}

function draw() {
background(0);
  var yoff = 0;
  for (var y = 0; y < rows; y++) {
    var xoff = 0;
    for (var x = 0; x < cols; x++) {
      var index = x + y * cols;
      var angle = noise(xoff, yoff, zoff) * TWO_PI * 2;
      var v = p5.Vector.fromAngle(angle);
      v.setMag(1);
      flowfield[index] = v;
      xoff += inc;
      noStroke();
      fill(255);
      push();
      translate(x * scl, y * scl);
      // ellipse(0, 0, angle-2, angle-2);
      pop();
    }
    yoff += inc;

    zoff += 0.0000008;
  }

  for (var i = 0; i < particles.length; i++) {

    particles[i].follow(flowfield);
    particles[i].update();
    particles[i].edges();
    particles[i].show();
    particles[i].rotate()
    note = Math.floor((particles[i].pos.y + 200)/100);
    // var freqs = [196.00, 220.00, 261.63, 329.63, 392.00, 440.00, 493.88, 440.00, 349.23, 329.63, 293.66, 261.63, 246.94, 220.00, 174.61, 164.81, 130.81];
    var freqs = [100, 200, 300, 400, 300, 200, 100];

    // if (frameCount % 4 == 0){
    //   if (i == 0){
    //   wave.freq(freqs[note]);
    //   env.play();
    //   }
    //   if (i == 1){
    //   wave1.freq(freqs[note]);
    //   env.play();
    //   }
    //   if (i == 2){
    //   wave2.freq(freqs[note]);
    //   env.play();
    //   }
    // }
  }
}
