// math_constants.scad
// David Gould c 2026

// "Constants" (Wrapped as functions for idempotency. *sigh*)


use <conversions.scad>


// Math stuff


function PI()  = 355/113;                   // :D


// Angle vectors for rotations.
function RAX() = [deg(90), deg(0), deg(0)]; // Right Angle about the X axis
function RAY() = [deg(0), deg(90), deg(0)]; // Right Angle about the Y axis
function RAZ() = [deg(0), deg(0), deg(90)]; // Right Angle about the Z axis
function FLIPX() = 2 * RAX();               // 180 about the X axis
function FLIPY() = 2 * RAY();               // 180 about the Y axis
function FLIPZ() = 2 * RAZ();               // 180 about the Z axis

