//
//  main.swift
//  Perimetre Area Volume Helper
//
//  Created by Brad Kang on 2021-01-29.
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

// MARK: Input
// Labelling the uses of the tool.
print("This is a volume helper for 3D shapes.")
print("======================================")

// Create a variable to tell us if they want to repeat the program (Below).
var repeating = "N"
var repeatingUp = repeating.uppercased()

repeat {
// Ask and list the shapes they can find the volume of
print("What shape would you like to find the volume of?")
print("1: Cylinder")
print("2: Sphere")
print("3: Cone")
print("4: Square-based Pyramid")
print("5: Rectangular Prism")
print("6: Triangular Prism")
// Ask for their input and save it.
print("What shape would you like to find the volume of? (1 / 2 / 3 / 4 / 5 / 6):")
let shapeChosen = Int(readLine()!)!
// Ask for what their units are
print("What units are the dimensions in?  (Make sure they are the same units.)")
print("You can type any units:", terminator: " ")
let units = readLine()!
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
    shapeName = "square-based pyramid"
case 5:
    shapeName = "rectangular prism"
case 6:
    shapeName = "triangular prism"
default:
    shapeName = "invalid shape"
    
}
// Tell them what shape they chose.
print("The shape you chose is a(n) \(shapeName).")

// Creating variables for the different dimensions.
var r = 0.0
var d = 0.0
var h = 0.0
var b = 0.0
var l = 0.0
var w = 0.0
// Change the parameters that are asked depending on the shape.
switch shapeChosen {
case 1: // Cylinder
    // Asking for the dimensions of the shape.
    print("Enter the radius: (If you have the diameter, type 0.)", terminator: "")
    // If statement to see if they inputted the diameter or radius.
    r = Double(readLine()!)!
    if r == 0 {
        print("Enter the diameter:", terminator: " ")
        d = Double(readLine()!)!
    } else {
    }
    print("Enter the height:", terminator: " ")
    h = Double(readLine()!)!
case 2: // Sphere
    // Asking for the dimensions of the shape.
    print("Enter the radius:", terminator: " ")
    // Get the user input
    r = Double(readLine()!)!
case 3: // Cone
    // Ask for dimensions
    print("Enter the radius:", terminator: " ")
    // User input
    r = Double(readLine()!)!
    print("Enter the height:", terminator: " ")
    h = Double(readLine()!)!
case 4: // Square-Based Pyramid
    // Ask for dimensions and get user input
    print("Enter the base:", terminator: " ")
    b = Double(readLine()!)!
    print("Enter the height:", terminator: " ")
    h  = Double(readLine()!)!
case 5: // Rectangular Prism
    // Ask for dimensions and get user input
    print("Enter the length:", terminator: " ")
    l = Double(readLine()!)!
    print("Enter the width:", terminator: " ")
    w = Double(readLine()!)!
    print("Enter the height:", terminator: " ")
    h = Double(readLine()!)!
case 6: // Triangular Prism
    // Ask for dimensions and get user input
    print("Enter the base:", terminator: " ")
    b = Double(readLine()!)!
    print("Enter the length:", terminator: " ")
    l = Double(readLine()!)!
    print("Enter the height:", terminator: " ")
    h = Double(readLine()!)!
default:
    print("You have entered an invalid shape.")
}

// MARK: Process

// Create a variable to hold the output
var output = 0.0
// Switch statement to change the function that is called depending on the shape.
switch shapeChosen {
case 1: // Cylinder
    output = volumeOfCylinder(radius: r, diametre: d, height: h)
case 2: // Sphere
    output = volumeOfSphere(radius: r)
case 3: // Cone
    output = volumeOfCone(radius: r, height: h)
case 4: // Square-Based Pyramid
    output = volumeOfSquarePyramid(base: b, height: h)
case 5: // Rectangular Prism
 output = volumeOfRectanglePrism(length: l, width: w, height: h)
case 6: // Triangular Prism
    output = volumeOfTrianglePrism(base: b, length: l, height: h)
default:
    break
}

// MARK: Output

print("The volume of your chosen shape (\(shapeName)) is: \(output) \(units)")

// Ask if they want to continue finding the volume of other shapes.
    print("Do you want to continue finding the volume of other shapes? (Y / N)")
    repeating = readLine()!
    for _ in 1...2 {
        print("\n")
    }
} while repeatingUp != "N"
print("Thank you, have a nice day.")
