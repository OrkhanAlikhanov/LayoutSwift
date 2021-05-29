//
//  LayoutConstraint.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

/// A typealias for NSLayoutConstraint.Relation
public typealias LayoutRelation = NSLayoutConstraint.Relation

internal struct LayoutConstraint {
  /// `From` anchor for the constraint.
  private let fromAnchor: LayoutAnchor
  
  /// `To` anchor for the constraint.
  private let toAnchor: LayoutAnchor
  
  /// An array of constants for the constraint.
  private let constants: [CGFloat]
  
  /// A LayoutRelation between anchors.
  private let relation: LayoutRelation
  
  
  /**
   An initializer taking `from` and `to` anchors, their `relation` and constants for the constraint.
   - Parameter fromAnchor: A LayoutAnchor.
   - Parameter toAnchor: A LayoutAnchor.
   - Parameter relation: A LayoutRelation between anchors.
   - Parameter constants: An array of CGFloat.
   */
  init(fromAnchor: LayoutAnchor, toAnchor: LayoutAnchor, relation: LayoutRelation, constants: [CGFloat]) {
    self.fromAnchor = fromAnchor
    self.toAnchor = toAnchor
    self.relation = relation
    self.constants = constants
  }
}

internal extension LayoutConstraint {
  /// Creates an array of NSLayoutConstraint from a LayoutConstraint.
  var constraints: [NSLayoutConstraint] {
    guard fromAnchor.attributes.count == toAnchor.attributes.count else {
      fatalError("[Layout Error: The number of attributes of anchors does not match.]")
    }
    
    guard fromAnchor.attributes.count == constants.count else {
      fatalError("[Layout Error: The number of constants does not match the number of constraints.]")
    }
    
    var v: [NSLayoutConstraint] = []
    
    zip(zip(fromAnchor.attributes, toAnchor.attributes), constants).forEach {
      v.append(NSLayoutConstraint(item: fromAnchor.constraintable as Any,
                                  attribute: $0.0,
                                  relatedBy: relation,
                                  toItem: toAnchor.constraintable,
                                  attribute: $0.1,
                                  multiplier: 1,
                                  constant: $1))
    }
    
    
    return v
  }
}
