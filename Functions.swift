//
//  File.swift
//  Perimetre Area Volume Helper
//
//  Created by Brad Kang on 2021-02-12.
//

import Foundation

//MARK: Functions

// Volume of a Cylinder function
/// Finds the volume of a cylinder.
/// - Parameters:
///   - r: Radius: The straight line length from the centre of the circle to the edge.
///   - d: The straight line length from one edge of the circle to the opposite.  Twice the radius
///   - h: The height of the cylinder.  Perpendicular line from the bottom-most to the top-most part of the cylinder.
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
/// Finds the volume of a sphere.
/// - Parameter r: The radius.  The straight line distance between the middle of the circle and the edge of it.
/// - Returns: The volume of a sphere.
func volumeOfSphere(radius r: Double) -> Double {
    
    // Create a variable for the volume.
    var volume = 0.0
    
    // Calculating the volume.
    volume = (4 * Double.pi * r * r * r) / 3.0
    
    // Returning the volume.
    return volume
}

// Volume of a cone function
/// Finds the volume of a cone.
/// - Parameters:
///   - r: The radius.  The straight line distance from the middle of the circle to the edge.
///   - h: The height of the cone.  Perpendicular line from the bottom-most par to the top most part of the cone.
/// - Returns: The volume of a cone.
func volumeOfCone(radius r: Double, height h: Double) -> Double {
    
    // Create a variable to hold the volume.
    var volume = 0.0
    
    // Calculate the volume.
    volume = (r * r * Double.pi * h) / 3.0
    
    // Return the volume.
    return volume
}

// Volume of a square-based pyramid function
/// Finds the volume of a square-based pyramid.
/// - Parameters:
///   - b: The length along the bottom of the pyramid.
///   - h: The height of the pyramid.  Perpendicular line from the bottom-most part to the top-most part of the pyramid.
/// - Returns: The volume of a square-based pyramid.
func volumeOfSquarePyramid(base b: Double, height h: Double) -> Double {
    
    // Create a variable to hold the volume.
    var volume = 0.0
    
    // Calculate the volume
    volume = (b * b * h) / 3.0
    
    // Return the volume.
    return volume
}

// Volume of a rectangular prism function
/// Finds the volume of a rectangular prism.
/// - Parameters:
///   - l: The length of the rectanglular prism.   Distance of one side of the prism.
///   - w: The width of the rectangular prism.  Distance of the other side of the prism.
///   - h: The height of the rectangular prism.  Perpendicular line from the bottom-most part to the top-most part of the prism.
/// - Returns: The volume of the rectangular prism.
func volumeOfRectanglePrism(length l: Double, width w: Double, height h: Double) -> Double {
    
    // Variable for volume
    var volume = 0.0
    
    // Calculate volume
    volume = l * w * h
    
    // Return the volume
    return volume
}

// Volume of a triangular prism function
/// Finds the volume of a triangular prism.
/// - Parameters:
///   - b: The distance of the base of the prism.  Distance of one side length of the prism.
///   - l: The length of the prism.  Distance of the other side length of the prism.
///   - h: The height of the prism.  Perpendicular line from the bottom-most part to the top-most part of the prism.
/// - Returns: The volume of a triangular prism.
func volumeOfTrianglePrism(base b: Double, length l: Double, height h: Double) -> Double {
    
    // Variable for volume
    var volume = 0.0
    
    // Calculate the volume
    volume = (b * l * h) / 2.0
    
    // return the volume
    return volume
}
