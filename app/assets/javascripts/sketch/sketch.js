var sketch = function (p) {
  var cnv;
  p.setup = function () {
    cnv = p.createCanvas(600, 400);
    p.background(220);
  };

  p.draw = function () {
  };

  p.mouseDragged = function () {
    p.stroke(0);
    p.line(p.mouseX, p.mouseY, p.pmouseX, p.pmouseY);
  };

  p.keyTyped = function() {
    if (p.key === 's') {
      p.save(cnv, "sketch.jpg")
    } else if (p.key === 'r'){
      p.background(220);
    }
  }

  p.resetSketch = function () {
    p.background(220);
  };
};

new p5(sketch);
