// math_export.scad
// David Gould c 2026

// Math stuff.


use <math_constants.scad>


// modulo function that behaves correctly
function mod(x, y) = (x < 0) ? mod(x + y * ceil(abs(x / y)), y) : (x % y);

