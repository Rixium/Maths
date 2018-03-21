

int[][] posVector = {{20, 10}, {-20, 0}, {0, 20}};
int[][] transformed;
int[][] transformVector = {{ 2, -1 }, { 1, 2 }};

int pSize = 5;

int[][] transformPosition(int[][] pos, int[][] matrix) {
  int[][] v = new int[3][2];
  
  // For every position row.
  for(int r = 0; r < pos.length; r++) {
    // For every column at that row.
    for(int c = 0; c < pos[r].length; c++) {
      // Create the sum of the multiplication of the row, and column.
      int sum = 0;
      // For every row in the transform matrix.
      for(int tr = 0; tr < matrix.length; tr++) {
        // Add the product of the corrosponding row, and matrix column to the sum.
        sum += pos[r][tr] * matrix[tr][c];
      }
      // Set the value at r, c in our new matrix, to the sum.
      v[r][c] = sum;
    }
  }
  
  return v;
}

void setup() {
  size(400, 400);
  background(0);
  transformed = transformPosition(posVector, transformVector);
}

void drawTriangle(int[][] posVector) {
  // Draw out and connect all the points of our triangle point vector.
  ellipse(posVector[0][0], -posVector[0][1], pSize, pSize);
  line(posVector[0][0], -posVector[0][1], posVector[1][0], -posVector[1][1]);
  ellipse(posVector[1][0], -posVector[1][1], pSize, pSize);
  line(posVector[0][0], -posVector[0][1], posVector[2][0], -posVector[2][1]);
  ellipse(posVector[2][0], -posVector[2][1], pSize, pSize);
  line(posVector[2][0], -posVector[2][1], posVector[1][0], -posVector[1][1]);
}

void draw() {
  clear();
  translate(200, 200);
  fill(200);
  
  stroke(255);
  line(-200, 0, 200, 0);
  line(0, -200, 0, 200);
  
  
  stroke(150, 30, 30);
  fill(200, 30, 30);
  drawTriangle(posVector);
  
  stroke(30, 150, 30);
  fill(30, 200, 30);
  drawTriangle(transformed);
}
