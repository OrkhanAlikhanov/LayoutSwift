//
//  Layout+Margin.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints top of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    top(ensuredParent.marginAnchor, offset, relationer)
  }
  
  /**
   Constraints left of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    left(ensuredParent.marginAnchor, offset, relationer)
  }
  
  /**
   Constraints right of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func rightMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    right(ensuredParent.marginAnchor, offset, relationer)
  }
  
  /**
   Constraints leading of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    leading(ensuredParent.marginAnchor, offset, relationer)
  }
  
  /**
   Constraints trailing of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func trailingMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    trailing(ensuredParent.marginAnchor, offset, relationer)
  }
  
  /**
   Constraints bottom of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    bottom(ensuredParent.marginAnchor, offset, relationer)
  }

  /**
   Constraints horizontal center of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerXMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    centerX(ensuredParent.marginAnchor, offset, relationer)
  }
  
  /**
   Constraints vertical center of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerYMargin(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    centerY(ensuredParent.marginAnchor, offset, relationer)
  }
}

// MARK: Composite

public extension Layout {
  /**
   Constraints top-leading of the view to the parent's marginAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeadingMargin(top: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    topLeading(ensuredParent.marginAnchor, top: top, leading: leading)
  }
  
  /**
   Constraints top-trailing of the view to the parent's marginAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topTrailingMargin(top: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    topTrailing(ensuredParent.marginAnchor, top: top, trailing: trailing)
  }
  
  /**
   Constraints bottom-leading of the view to the parent's marginAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeadingMargin(bottom: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    bottomLeading(ensuredParent.marginAnchor, bottom: bottom, leading: leading)
  }
  
  /**
   Constraints bottom-trailing of the view to the parent's marginAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomTrailingMargin(bottom: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    bottomTrailing(ensuredParent.marginAnchor, bottom: bottom, trailing: trailing)
  }
  
  /**
   Constraints leading and trailing of the view to the parent's marginAnchor.
   - Parameter leading: A CGFloat offset for leading.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingTrailingMargin(leading: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    leadingTrailing(ensuredParent.marginAnchor, leading: leading, trailing: trailing)
  }
  
  /**
   Constraints top-left of the view to the parent's marginAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeftMargin(top: CGFloat = 0, left: CGFloat = 0) -> Layout {
    topLeft(ensuredParent.marginAnchor, top: top, left: left)
  }
  
  /**
   Constraints top-right of the view to the parent's marginAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topRightMargin(top: CGFloat = 0, right: CGFloat = 0) -> Layout {
    topRight(ensuredParent.marginAnchor, top: top, right: right)
  }
  
  /**
   Constraints bottom-left of the view to the parent's marginAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeftMargin(bottom: CGFloat = 0, left: CGFloat = 0) -> Layout {
    bottomLeft(ensuredParent.marginAnchor, bottom: bottom, left: left)
  }
  
  /**
   Constraints bottom-right of the view to the parent's marginAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomRightMargin(bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    bottomRight(ensuredParent.marginAnchor, bottom: bottom, right: right)
  }
  
  /**
   Constraints left and right of the view to the parent's marginAnchor.
   - Parameter left: A CGFloat offset for left.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftRightMargin(left: CGFloat = 0, right: CGFloat = 0) -> Layout {
    leftRight(ensuredParent.marginAnchor, left: left, right: right)
  }
  
  /**
   Constraints top and bottom of the view to the parent's marginAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter bottom: A CGFloat offset for bottom.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topBottomMargin(top: CGFloat = 0, bottom: CGFloat = 0) -> Layout {
    topBottom(ensuredParent.marginAnchor, top: top, bottom: bottom)
  }
  
  /**
   Constraints center of the view to the parent's marginAnchor.
   - Parameter offsetX: A CGFloat offset for horizontal center.
   - Parameter offsetY: A CGFloat offset for vertical center.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerMargin(offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> Layout {
    center(ensuredParent.marginAnchor, offsetX: offsetX, offsetY: offsetY)
  }
  
  /**
   Constraints edges of the view to the parent's marginAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func edgesMargin(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    edges(ensuredParent.marginAnchor, top: top, left: left, bottom: bottom, right: right)
  }
}

// MARK: Size

public extension Layout {
  /**
   Constraints width of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func widthMargin(offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    width(ensuredParent.marginAnchor, offset: offset, relationer)
  }
  
  /**
   Constraints height of the view to the parent's marginAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func heightMargin(offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    height(ensuredParent.marginAnchor, offset: offset, relationer)
  }
}
