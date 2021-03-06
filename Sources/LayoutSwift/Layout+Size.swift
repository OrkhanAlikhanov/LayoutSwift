//
//  Layout+Size.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints width of the view to a constant value.
   - Parameter _ width: A CGFloat value.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func width(_ width: CGFloat, _ relation: LayoutRelation = .equal) -> Layout {
    constraint([.width], to: LayoutAnchor(constraintable: nil, attributes: [.notAnAttribute]), relation: relation, constants: [width])
  }
  
  /**
   Constraints height of the view to a constant value.
   - Parameter _ height: A CGFloat value.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func height(_ height: CGFloat, _ relation: LayoutRelation = .equal) -> Layout {
    constraint([.height], to: LayoutAnchor(constraintable: nil, attributes: [.notAnAttribute]), relation: relation, constants: [height])
  }
  
  /**
   The width and height of the view to its parent's.
   - Parameter _ size: A CGSize offset.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func size(_ size: CGSize) -> Layout {
    width(size.width).height(size.height)
  }
}

