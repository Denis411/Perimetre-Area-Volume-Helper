//
//  main.swift
//  Perimetre Area Volume Helper
//
//  Created by Brad Kang on 2021-01-29.
//

import Foundation

//MARK: Functions

// Summary for the function.
/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double {
    
    return length * width
    
}

/// Finds the area of a circle.
/// - Parameter radius: The distance from the middle of the circle to the edge in a straight line.
/// - Returns: Area of the circle.
func areaOfCircle(radius: Double) -> Double {
    return Double.pi * pow(radius, 2.0)
}

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
    // Create a variable to hold the value of the radius.
    var radius = 0.0
    // Check if the user inputted a diamatre or radius.
    if r != 0.0 {
        radius = r
    } else {
        radius = d / 2
    }
    volume = (radius * radius) * Double.pi * h
    return volume
}

//func volumeOfSphere(<#parameters#>) -> <#return type#> {
//    <#function body#>
//}


// MARK: Input

// Labelling the uses of the tool.
print("This is a volume helper for 3D shapes.")
print("======================================")



// MARK: Process

let outputOfCylinder = volumeOfCylinder(radius: 0, diametre: 5, height: 2)

// MARK: Output

print(outputOfCylinder)
