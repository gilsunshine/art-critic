function Particle() {
  this.pos = createVector(random(width), random(height));
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  this.maxspeed = 4;

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
    // stroke(26,114,251);
    // line(this.pos.x, 0, this.pos.x, height);
    // stroke(255,50,80);
    // line(0, this.pos.y, width, this.pos.y);

    stroke(255,25);
    line(this.pos.x, 0, mouseX, mouseY);
    stroke(255,25);
    line(0, this.pos.y, mouseX, mouseY);
    stroke(255,25);
    line(this.pos.x, height, mouseX, mouseY);
    stroke(255,25);
    line(width, this.pos.y, mouseX, mouseY);
    // stroke(255,5);
    // line(0, 0, mouseX, mouseY);
    // stroke(255,5);
    // line(width, 0, mouseX, mouseY);
    // stroke(255,5);
    // line(width, height, mouseX, mouseY);
    // stroke(255,5);
    // line(0, height, mouseX, mouseY);
    fill(255);
    ellipse(mouseX, mouseY,2,2);
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
