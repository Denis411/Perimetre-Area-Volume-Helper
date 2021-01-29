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

func areaOfCylinder(<#parameters#>) -> <#return type#> {
    <#function body#>
}
// MARK: Input

// Labelling the uses of the tool.
print("This is a volume helper for 3D shapes.")
print("======================================")

let givenLength = 10.0     // Set to a double using "type inference:" (Swift guesses)
let givenWidth: Double = 2  // Set to double using "type annotation" (Telling Swift what to do)


// MARK: Process

let area = areaOfRectangle(length: givenLength, width: givenWidth)

// MARK: Output

print("The area is \(area) square units")    // Example of "string interpolation" (Print the contents of a variable)
