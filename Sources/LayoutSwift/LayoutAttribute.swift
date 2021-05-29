//
//  LayoutAttribute.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

/// A typealias for NSLayoutConstraint.Attribute
public typealias LayoutAttribute = NSLayoutConstraint.Attribute

internal extension Array where Element == LayoutAttribute {
  /// A LayoutAttribute array containing top and left.
  static var topLeft: [LayoutAttribute] {
    [.top, .left]
  }
  
  /// A LayoutAttribute array containing top and right.
  static var topRight: [LayoutAttribute] {
    [.top, .right]
  }
  
  /// A LayoutAttribute array containing bottom and left.
  static var bottomLeft: [LayoutAttribute] {
    [.bottom, .left]
  }
  
  /// A LayoutAttribute array containing bottom and right.
  static var bottomRight: [LayoutAttribute] {
    [.bottom, .right]
  }
  
  /// A LayoutAttribute array containing left and right.
  static var leftRight: [LayoutAttribute] {
    [.left, .right]
  }
  
  /// A LayoutAttribute array containing top and leading.
  static var topLeading: [LayoutAttribute] {
    [.top, .leading]
  }
  
  /// A LayoutAttribute array containing top and trailing.
  static var topTrailing: [LayoutAttribute] {
    [.top, .trailing]
  }
  
  /// A LayoutAttribute array containing bottom and leading.
  static var bottomLeading: [LayoutAttribute] {
    [.bottom, .leading]
  }
  
  /// A LayoutAttribute array containing bottom and trailing.
  static var bottomTrailing: [LayoutAttribute] {
    [.bottom, .trailing]
  }
  
  /// A LayoutAttribute array containing left and trailing.
  static var leadingTrailing: [LayoutAttribute] {
    [.leading, .trailing]
  }
  
  /// A LayoutAttribute array containing top and bottom.
  static var topBottom: [LayoutAttribute] {
    [.top, .bottom]
  }
  
  /// A LayoutAttribute array containing centerX and centerY.
  static var center: [LayoutAttribute] {
    [.centerX, .centerY]
  }
  
  /// A LayoutAttribute array containing top, left, bottom and right.
  static var edges: [LayoutAttribute] {
    [.top, .left, .bottom, .right]
  }
}
