//
//  Layout+UIView.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

/// Layout extension for UIView.
public extension UIView {
  /**
   Used to chain layout constraints on a child context.
   - Parameter child: A child UIView to layout.
   - Returns: A Layout instance.
   */
  func layout(_ child: UIView) -> Layout {
    if self != child.superview {
      addSubview(child)
    }
    
    child.translatesAutoresizingMaskIntoConstraints = false
    return child.layout
  }
  
  /// Layout instance for the view.
  var layout: Layout {
    Layout(constraintable: self)
  }
  
  /// Anchor instance for the view.
  var anchor: LayoutAnchor {
    LayoutAnchor(constraintable: self)
  }
  
  /**
   Anchor instance for safeAreaLayoutGuide.
   Below iOS 11, it will be same as view.anchor.
   */
  var safeAnchor: LayoutAnchor {
    if #available(iOS 11.0, *) {
      return LayoutAnchor(constraintable: safeAreaLayoutGuide)
    } else {
      return anchor
    }
  }
  
  /// Anchor instance for layoutMarginsGuide.
  var marginAnchor: LayoutAnchor {
    LayoutAnchor(constraintable: layoutMarginsGuide)
  }

  /// Anchor instance for readableContentGuide.
  var readableAnchor: LayoutAnchor {
    LayoutAnchor(constraintable: readableContentGuide)
  }
}
