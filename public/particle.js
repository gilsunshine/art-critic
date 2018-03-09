// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/BjoM9oKOAKY

function Particle() {
  this.pos = createVector(random(width), random(height));
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  this.maxspeed = 2;

  this.prevPos = this.pos.copy();

  this.update = function() {
    this.vel.add(this.acc);
    this.vel.limit(this.maxspeed);
    this.pos.add(this.vel);
    this.acc.mult(0);
  }

  this.follow = function(vectors) {
    var x = floor(this.pos.x / scl);
    var y = floor(this.pos.y / scl);
    var index = x + y * cols;
    var force = vectors[index];
    this.applyForce(force);
  }

  this.applyForce = function(force) {
    this.acc.add(force);
  }

  this.show = function() {
    stroke(26,114,251);
    line(this.pos.x, 0, this.pos.x, height);
    stroke(255,50,80);
    line(0, this.pos.y, width, this.pos.y);

    // stroke(255,50);
    // line(this.pos.x, 0, this.pos.x, height);
    // stroke(255,50);
    // line(0, this.pos.y, width, this.pos.y);
    // stroke(255,50);
    // line(0, 0, this.pos.x, this.pos.y);
    // stroke(255,50);
    // line(width, height, this.pos.x, this.pos.y);
    //
    // stroke(255,50);
    // line(width, 0, this.pos.x, this.pos.y);
    // stroke(255,50);
    // line(0, height, this.pos.x, this.pos.y);
    //
    // fill(255,50);
    // ellipse(this.pos.x, this.pos.y, 2,2);
  }

  this.rotate = function() {

  }

  this.updatePrev = function() {
    this.prevPos.x = this.pos.x;
    this.prevPos.y = this.pos.y;
  }

  this.edges = function() {
    if (this.pos.x > width) {
      this.pos.x = 0;
      this.updatePrev();
    }
    if (this.pos.x < 0) {
      this.pos.x = width;
      this.updatePrev();
    }
    if (this.pos.y > height) {
      this.pos.y = 0;
      this.updatePrev();
    }
    if (this.pos.y < 0) {
      this.pos.y = height;
      this.updatePrev();
    }

  }

}
