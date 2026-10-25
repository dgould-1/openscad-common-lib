// conversions_export.scad
// David Gould c 2026

// Abstractions to express lengths and angles in common units.
//
// Every time a length or angle is given as a number, it should be wrapped in
// one of these conversion functions.
//
// So, for a project where you're "thinking in inches", code a length of
// one inch as `in(1)`. For "motivation", you get to "think in fractions",
// expressing "one and a half inches" as `in(1+1/2)`. (Of course, `in(1.5)`
// is fine too, but what fun is that?)
//
// When thinking in metric, you'd express, e.g., 5 millimeters as `mm(5)`
// or `cm(0.5)`. Of course, it's unfortunately tempting to skip this and
// just think in millimeters, but I try to resist this.
//
// Similarly, use `deg()/rad()/grad()` to express an angle. (Admittedly,
// this is harder to follow, temptation-wise.)


use <conversions_constants.scad>


function in(x)         = (x * UPI());       // express a length in inches
function mm(x)         = (x * UPM());       // express a length in millimeters
function cm(x)         = (x * UPC());       // express a length in centimeters
function deg(theta)    = (theta * UPD());   // express an angle in degrees
function rad(theta)    = (theta * UPR());   // express an angle in radians
function grad(theta)   = (theta * UPG());   // express an angle in gradians


// Reverse conversions, basically just for debugging, i.e., to convert a length
// back to inches for passing to echo().

function _2in(x)       = (x / UPI());       // convert a length to inches
function _2mm(x)       = (x / UPM());       // convert a length to millimeters
function _2cm(x)       = (x / UPC());       // convert a length to centimeters
function _2deg(theta)  = (theta / UPD());   // convert an angle to degrees
function _2rad(theta)  = (theta / UPR());   // convert an angle to radians
function _2grad(theta) = (theta / UPG());   // convert an angle to gradians


