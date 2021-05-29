//
//  Layout.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

/// A protocol that's conformed by UIView and UILayoutGuide.
public protocol Constraintable: class { }

@available(iOS 9.0, *)
extension UILayoutGuide: Constraintable { }
extension UIView: Constraintable { }

public struct Layout {
  /// A weak reference to the constraintable.
  public weak var constraintable: Constraintable?
  
  /// Parent view of the view.
  var parent: UIView? {
    (constraintable as? UIView)?.superview
  }
  
  var ensuredParent: UIView {
    guard let parent = parent  else {
      fatalError("[Layout Error: Constraint requires view to have parent.")
    }
    
    return parent
  }
  
  /// Returns the view that is being laied out.
  public var view: UIView? {
    var  v = constraintable as? UIView
    if #available(iOS 9.0, *), v == nil {
      v = (constraintable as? UILayoutGuide)?.owningView
    }
    
    return v
  }
  
  /**
   An initializer taking Constraintable.
   - Parameter view: A Constraintable.
   */
  init(constraintable: Constraintable) {
    self.constraintable = constraintable
  }
}

private extension NSLayoutConstraint {
  /**
   Checks if the constraint is equal to given constraint.
   - Parameter _ other: An NSLayoutConstraint.
   - Returns: A Bool indicating whether constraints are equal.
   */
  func equalTo(_ other: NSLayoutConstraint) -> Bool {
    firstItem === other.firstItem
      && secondItem === other.secondItem
      && firstAttribute == other.firstAttribute
      && secondAttribute == other.secondAttribute
      && relation == other.relation
  }
}

/// A memory reference to the lastConstraint of UIView.
private var LastConstraintKey: UInt8 = 0

private extension UIView {
  /**
   The last consntraint that's created by Layout system.
   Used to set multiplier/priority on the last constraint.
   */
  var lastConstraint: NSLayoutConstraint? {
    get {
      AssociatedObject.get(base: self, key: &LastConstraintKey) {
        nil
      }
    }
    set(value) {
      AssociatedObject.set(base: self, key: &LastConstraintKey, value: value)
    }
  }
}


public extension Layout {
  /**
   Sets multiplier of the last created constraint.
   Not meant for updating the multiplier as it will re-create the constraint.
   - Parameter _ multiplier: A CGFloat multiplier.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func multiply(_ multiplier: CGFloat) -> Layout {
    resetLastConstraint(multiplier: multiplier)
  }
  
  /**
   Sets priority of the last created constraint.
   Not meant for updating the multiplier as it will re-create the constraint.
   - Parameter _ value: A Float priority.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func priority(_ value: Float) -> Layout {
    priority(.init(rawValue: value))
  }
  
  /**
   Sets priority of the last created constraint.
   Not meant for updating the priority as it will re-create the constraint.
   - Parameter _ priority: A UILayoutPriority.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func priority(_ priority: UILayoutPriority) -> Layout {
    resetLastConstraint(priority: priority)
  }
  
  /**
   Removes the last created constraint and creates new one with the new multiplier and/or priority (if provided).
   - Parameter multiplier: An optional CGFloat.
   - Parameter priority: An optional UILayoutPriority.
   - Returns: A Layout instance to allow chaining.
   */
  private func resetLastConstraint(multiplier: CGFloat? = nil, priority: UILayoutPriority? = nil) -> Layout {
    guard let v = view?.lastConstraint, v.isActive else {
      return self
    }
    v.isActive = false
    let newV = NSLayoutConstraint(item: v.firstItem as Any,
                                  attribute: v.firstAttribute,
                                  relatedBy: v.relation,
                                  toItem: v.secondItem,
                                  attribute: v.secondAttribute,
                                  multiplier: multiplier ?? v.multiplier,
                                  constant: v.constant)
    newV.priority = priority ?? v.priority
    newV.isActive = true
    view?.lastConstraint = newV
    return self
  }
}

internal extension Layout {
  /**
   Constraints the view to the given anchor according to the provided attribute.
   If the constraint already exists, will update its constant.
   - Parameter _ attribute: A LayoutAttribute.
   - Parameter to anchor: A LayoutAnchorable.
   - Parameter relation: A LayoutRelation between anchors.
   - Parameter constant: A CGFloat.
   - Returns: A Layout instance to allow chaining.
   */
  func constraint(_ attribute: LayoutAttribute, to anchor: LayoutAnchorable, relationer: LayoutRelationer = LayoutRelationers.equal, constant: CGFloat) -> Layout {
    constraint([attribute], to: anchor, relationer: relationer, constants: [constant])
  }
  
  /**
   Constraints the view to the given anchor according to the provided attributes.
   If any of the constraints already exists, will update its constant.
   - Parameter _ attributes: An array of LayoutAttribute.
   - Parameter to anchor: A LayoutAnchorable.
   - Parameter relation: A LayoutRelation between anchors.
   - Parameter constants: An array of CGFloat.
   - Returns: A Layout instance to allow chaining.
   */
  func constraint(_ attributes: [LayoutAttribute], to anchor: LayoutAnchorable, relationer: LayoutRelationer = LayoutRelationers.equal, constants: [CGFloat]) -> Layout {
    let from = LayoutAnchor(constraintable: constraintable, attributes: attributes)
    var to = anchor as? LayoutAnchor
    if to?.attributes.isEmpty ?? true {
      let v = (anchor as? UIView) ?? (anchor as? LayoutAnchor)?.constraintable
      to = LayoutAnchor(constraintable: v, attributes: attributes)
    }
    
    let constraint = LayoutConstraint(fromAnchor: from, toAnchor: to!, relation: relationer(.nil, .nil), constants: constants)
    
    let constraints = (view?.constraints ?? []) + (view?.superview?.constraints ?? [])
    let newConstraints = constraint.constraints
    for newConstraint in newConstraints {
      guard let activeConstraint = constraints.first(where: { $0.equalTo(newConstraint) }) else {
        newConstraint.isActive = true
        view?.lastConstraint = newConstraint
        continue
      }
      
      activeConstraint.constant = newConstraint.constant
    }
    
    return self
  }
}
