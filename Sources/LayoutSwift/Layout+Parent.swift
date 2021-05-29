//
//  Layout+Parent.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints top of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func top(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    top(ensuredParent, offset, relationer)
  }
  
  /**
   Constraints left of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func left(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    left(ensuredParent, offset, relationer)
  }
  
  /**
   Constraints right of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func right(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    right(ensuredParent, offset, relationer)
  }
  
  /**
   Constraints leading of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leading(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    leading(ensuredParent, offset, relationer)
  }
  
  /**
   Constraints trailing of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func trailing(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    trailing(ensuredParent, offset, relationer)
  }
  
  /**
   Constraints bottom of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottom(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    bottom(ensuredParent, offset, relationer)
  }

  /**
   Constraints horizontal center of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerX(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    centerX(ensuredParent, offset, relationer)
  }
  
  /**
   Constraints vertical center of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerY(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    centerY(ensuredParent, offset, relationer)
  }
}

// MARK: Composite

public extension Layout {
  /**
   Constraints top-leading of the view to the parent's anchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeading(top: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    topLeading(ensuredParent, top: top, leading: leading)
  }
  
  /**
   Constraints top-trailing of the view to the parent's anchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topTrailing(top: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    topTrailing(ensuredParent, top: top, trailing: trailing)
  }
  
  /**
   Constraints bottom-leading of the view to the parent's anchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeading(bottom: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    bottomLeading(ensuredParent, bottom: bottom, leading: leading)
  }
  
  /**
   Constraints bottom-trailing of the view to the parent's anchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomTrailing(bottom: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    bottomTrailing(ensuredParent, bottom: bottom, trailing: trailing)
  }
  
  /**
   Constraints leading and trailing of the view to the parent's anchor.
   - Parameter leading: A CGFloat offset for leading.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingTrailing(leading: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    leadingTrailing(ensuredParent, leading: leading, trailing: trailing)
  }
  
  /**
   Constraints top-left of the view to the parent's anchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeft(top: CGFloat = 0, left: CGFloat = 0) -> Layout {
    topLeft(ensuredParent, top: top, left: left)
  }
  
  /**
   Constraints top-right of the view to the parent's anchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topRight(top: CGFloat = 0, right: CGFloat = 0) -> Layout {
    topRight(ensuredParent, top: top, right: right)
  }
  
  /**
   Constraints bottom-left of the view to the parent's anchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeft(bottom: CGFloat = 0, left: CGFloat = 0) -> Layout {
    bottomLeft(ensuredParent, bottom: bottom, left: left)
  }
  
  /**
   Constraints bottom-right of the view to the parent's anchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomRight(bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    bottomRight(ensuredParent, bottom: bottom, right: right)
  }
  
  /**
   Constraints left and right of the view to the parent's anchor.
   - Parameter left: A CGFloat offset for left.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftRight(left: CGFloat = 0, right: CGFloat = 0) -> Layout {
    leftRight(ensuredParent, left: left, right: right)
  }
  
  /**
   Constraints top and bottom of the view to the parent's anchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter bottom: A CGFloat offset for bottom.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topBottom(top: CGFloat = 0, bottom: CGFloat = 0) -> Layout {
    topBottom(ensuredParent, top: top, bottom: bottom)
  }
  
  /**
   Constraints center of the view to the parent's anchor.
   - Parameter offsetX: A CGFloat offset for horizontal center.
   - Parameter offsetY: A CGFloat offset for vertical center.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func center(offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> Layout {
    center(ensuredParent, offsetX: offsetX, offsetY: offsetY)
  }
  
  /**
   Constraints edges of the view to the parent's anchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func edges(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    edges(ensuredParent, top: top, left: left, bottom: bottom, right: right)
  }
}

// MARK: Size

public extension Layout {
  /**
   Constraints width of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func width(offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    width(ensuredParent, offset: offset, relationer)
  }
  
  /**
   Constraints height of the view to the parent's anchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func height(offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    height(ensuredParent, offset: offset, relationer)
  }
}
