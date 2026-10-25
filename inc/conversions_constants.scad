// conversions_constants.scad
// David Gould c 2026

// "Constants" (Wrapped as functions for idempotency. *sigh*)


// Need PI.
use <math_constants.scad>


// Unit abstraction: hide knowledge of OpenSCAD's native units.
// (These values assume the native units are millimeters and degrees.)

function UPI() = 25.4;                      // units per inch
function UPM() = 1;                         // units per millimeter
function UPC() = UPM() * 10;                // units per centimeter

function UPD() = 1;                         // units per degree
function UPR() = 180 * UPD() / PI();        // units per radian
function UPG() =  90 * UPD() / 100;         // units per grad

