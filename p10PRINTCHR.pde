// 10 PRINT CHR$(205.5+RND(1)); GOTO 10
// Emulates the legendary C64 1-line BASIC program.
// by alec vance http://juggleware.com
// all sharing permissions granted.

int _cellSize = 8*4;      // size of each cell (C64 = 8 pixels)
int _numX = 40;         // number of columns (C64 = 40)
int _numY = 25;        // number of rows (C64 = 25)


void setup() {

  size(_numX*_cellSize, _numY*_cellSize); // c64 40x25 chars of 8x8 each
  strokeWeight(2);
   stroke(0);

  for (int x = 0; x<_numX; x++) {
    for (int y = 0; y<_numY; y++) { 
      if (random(0, 1)<0.5) {
        line(x*_cellSize, y*_cellSize, (x+1)*_cellSize, (y+1)*_cellSize);
      }
      else {
        line((x+1)*_cellSize, y*_cellSize, x*_cellSize, (y+1)*_cellSize);
      }
    }
  }
}

