//
//  Layout+Directional.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints the object and sets it's anchor to `bottom`.
   - Parameter _ view: A UIView.
   - Parameter offset: A CGFloat offset for top.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func below(_ view: UIView, _ offset: CGFloat = 0) -> Layout {
    top(view.anchor.bottom, offset)
  }

  /**
   Constraints the object and sets it's anchor to `top`.
   - Parameter _ view: A UIView.
   - Parameter offset: A CGFloat offset for bottom.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func above(_ view: UIView, _ offset: CGFloat = 0) -> Layout {
    bottom(view.anchor.top, offset)
  }

  /**
   Constraints the object and sets it's anchor to `before/left`.
   - Parameter _ view: A UIView.
   - Parameter offset: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func before(_ view: UIView, _ offset: CGFloat = 0) -> Layout {
    right(view.anchor.left, offset)
  }

  /**
   Constraints the object and sets it's anchor to `after/right`.
   - Parameter _ view: A UIView.
   - Parameter offset: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func after(_ view: UIView, _ offset: CGFloat = 0) -> Layout {
    left(view.anchor.right, offset)
  }
}

public extension Layout {
  /**
   Constraints the object and sets it's aspect.
   - Parameter ratio: A CGFloat ratio multiplier.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func aspect(_ ratio: CGFloat = 1) -> Layout {
    height(view!.anchor.width).multiply(ratio)
  }
}
