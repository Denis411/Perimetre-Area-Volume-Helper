//
//  main.swift
//  Perimetre Area Volume Helper
//
//  Created by Brad Kang on 2021-01-29.
//

import Foundation

//MARK: Functions

// REMEMBER TO ADD SUMMARIES TO FUNCTIONS.

// Volume of a Cylinder function

/// Finds the area of a cylinder
/// - Parameters:
///   - r: Radius: The straight line length from the centre of the circle to the edge.
///   - d: The straight line length from one edge of the circle to the opposite.  Twice the radius
///   - h: The height of the cylinder.
/// - Returns: Volume of a cylinder
func volumeOfCylinder(radius r: Double, diametre d: Double, height h: Double) -> Double {

    // Create variable that holds the volume of the cylinder.
    var volume = 0.0
    var r = r
    // Check if the user inputted a diamatre or radius.
    if r != 0.0 {
    } else {
        r = d / 2
    }
    volume = (r * r) * Double.pi * h
    return volume
}

// Volume of a sphere function

func volumeOfSphere(radius r: Double) -> Double {
    
    // Create a variable for the volume.
    var volume = 0.0
    
    // Calculating the volume.
    volume = (4 * Double.pi * r * r * r) / 3.0
    
    // Returning the volume.
    return volume
}

// Volume of a cone function
func volumeOfCone(radius r: Double, height h: Double) -> Double {
    
    // Create a variable to hold the volume.
    var volume = 0.0
    
    // Calculate the volume.
    volume = (r * r * Double.pi * h) / 3.0
    
    // Return the volume.
    return volume
}

// Volume of a square-based pyramid function
func volumeOfSquarePyramid(base b: Double, height h: Double) -> Double {
    
    // Create a variable to hold the volume.
    var volume = 0.0
    
    // Calculate the volume
    volume = (b * b * h) / 3.0
    
    // Return the volume.
    return volume
}

// Volume of a rectangular prism function
func volumeOfRectanglePrism(length l: Double, width w: Double, height h: Double) -> Double {
    
    // Variable for volume
    var volume = 0.0
    
    // Calculate volume
    volume = l * w * h
    
    // Return the volume
    return volume
}

// Volume of a triangular prism function
func volumeOfTrianglePrism(base b: Double, length l: Double, height h: Double) -> Double {
    
    // Variable for volume
    var volume = 0.0
    
    // Calculate the volume
    volume = (b * l * h) / 2.0
    
    // return the volume
    return volume
}

// MARK: Input

// Labelling the uses of the tool.
print("This is a volume helper for 3D shapes.")
print("======================================")
// Ask and list the shapes they can find the volume of
print("What shape would you like to find the volume of?")
print("1: Cylinder")
print("2: Sphere")
print("3: Cone")
print("4: Square-based Pyramid")
print("5: Rectangular Prism")
print("6: Triangular Prism")
// Ask for their input and save it.
print("What shape would you like? (1 / 2 / 3 / 4 / 5 / 6):")
let shapeChosen = Int(readLine()!)!
// Create a variable to return the shape name.
var shapeName = ""
// Switch statement to return the shape.
switch shapeChosen {
case 1:
    shapeName = "cylinder"
case 2:
    shapeName = "sphere"
case 3:
    shapeName = "cone"
case 4:
    shapeName = "rectangular prism"
case 5:
    shapeName = "triangular prism"
default:
    shapeName = "invalid shape"
    
}
// Tell them what shape they chose.
print("You chose a(n) \(shapeName)")
// MARK: Process

let outputOfCylinder = volumeOfCylinder(radius: r, diametre: d, height: h)

// MARK: Output

print(outputOfCylinder)
