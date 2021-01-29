//
//  main.swift
//  Perimetre Area Volume Helper
//
//  Created by Brad Kang on 2021-01-29.
//

import Foundation

//MARK: Functions

// REMEMBER TO ADD SUMMARIES TO FUNCTIONS.

// Area of a Cylinder function

/// Finds the area of a cylinder
/// - Parameters:
///   - r: Radius: The straight line length from the centre of the circle to the edge.
///   - d: The straight line length from one edge of the circle to the opposite.  Twice the radius
///   - h: The height of the cylinder.
/// - Returns: Volume of a cylinder
func volumeOfCylinder(radius r: Double, diametre d: Double, height h: Double) -> Double {

    // Create variable that holds the volume of the cylinder.
    var volume = 0.0
    // Check if the user inputted a diamatre or radius.
    if r != 0.0 {
        r = r
    } else {
        r = d / 2
    }
    volume = (r * r) * Double.pi * h
    return volume
}

func volumeOfSphere(radius r: Double) -> Double {
    
    // Create a variable for the volume.
    var volume = 0.0
    
    // Calculating the volume.
    volume = (4 * Double.pi * r * r * r) / 3.0
    
    // Returning the volume.
    return volume
}

func volumeOfCone(radius r: Double, height h: Double) -> Double {
    
    // Create a variable to hold the volume.
    var volume = 0.0
    
    // Calculate the volume.
    volume = (r * r * Double.pi * h) / 3.0
    
    // Return the volume.
    return volume
}

// MARK: Input

// Labelling the uses of the tool.
print("This is a volume helper for 3D shapes.")
print("======================================")



// MARK: Process

let outputOfCylinder = volumeOfCylinder(radius: r, diametre: d, height: h)

// MARK: Output

print(outputOfCylinder)
