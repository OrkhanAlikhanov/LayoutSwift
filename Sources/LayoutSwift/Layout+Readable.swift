//
//  Layout+Readable.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints top of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    top(ensuredParent.readableAnchor, offset, relationer)
  }
  
  /**
   Constraints left of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    left(ensuredParent.readableAnchor, offset, relationer)
  }
  
  /**
   Constraints right of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func rightReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    right(ensuredParent.readableAnchor, offset, relationer)
  }
  
  /**
   Constraints leading of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    leading(ensuredParent.readableAnchor, offset, relationer)
  }
  
  /**
   Constraints trailing of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func trailingReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    trailing(ensuredParent.readableAnchor, offset, relationer)
  }
  
  /**
   Constraints bottom of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    bottom(ensuredParent.readableAnchor, offset, relationer)
  }

  /**
   Constraints horizontal center of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerXReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    centerX(ensuredParent.readableAnchor, offset, relationer)
  }
  
  /**
   Constraints vertical center of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerYReadable(_ offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    centerY(ensuredParent.readableAnchor, offset, relationer)
  }
}

// MARK: Composite

public extension Layout {
  /**
   Constraints top-leading of the view to the parent's readableAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeadingReadable(top: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    topLeading(ensuredParent.readableAnchor, top: top, leading: leading)
  }
  
  /**
   Constraints top-trailing of the view to the parent's readableAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topTrailingReadable(top: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    topTrailing(ensuredParent.readableAnchor, top: top, trailing: trailing)
  }
  
  /**
   Constraints bottom-leading of the view to the parent's readableAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeadingReadable(bottom: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    bottomLeading(ensuredParent.readableAnchor, bottom: bottom, leading: leading)
  }
  
  /**
   Constraints bottom-trailing of the view to the parent's readableAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomTrailingReadable(bottom: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    bottomTrailing(ensuredParent.readableAnchor, bottom: bottom, trailing: trailing)
  }
  
  /**
   Constraints leading and trailing of the view to the parent's readableAnchor.
   - Parameter leading: A CGFloat offset for leading.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingTrailingReadable(leading: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    leadingTrailing(ensuredParent.readableAnchor, leading: leading, trailing: trailing)
  }
  
  /**
   Constraints top-left of the view to the parent's readableAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeftReadable(top: CGFloat = 0, left: CGFloat = 0) -> Layout {
    topLeft(ensuredParent.readableAnchor, top: top, left: left)
  }
  
  /**
   Constraints top-right of the view to the parent's readableAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topRightReadable(top: CGFloat = 0, right: CGFloat = 0) -> Layout {
    topRight(ensuredParent.readableAnchor, top: top, right: right)
  }
  
  /**
   Constraints bottom-left of the view to the parent's readableAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeftReadable(bottom: CGFloat = 0, left: CGFloat = 0) -> Layout {
    bottomLeft(ensuredParent.readableAnchor, bottom: bottom, left: left)
  }
  
  /**
   Constraints bottom-right of the view to the parent's readableAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomRightReadable(bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    bottomRight(ensuredParent.readableAnchor, bottom: bottom, right: right)
  }
  
  /**
   Constraints left and right of the view to the parent's readableAnchor.
   - Parameter left: A CGFloat offset for left.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftRightReadable(left: CGFloat = 0, right: CGFloat = 0) -> Layout {
    leftRight(ensuredParent.readableAnchor, left: left, right: right)
  }
  
  /**
   Constraints top and bottom of the view to the parent's readableAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter bottom: A CGFloat offset for bottom.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topBottomReadable(top: CGFloat = 0, bottom: CGFloat = 0) -> Layout {
    topBottom(ensuredParent.readableAnchor, top: top, bottom: bottom)
  }
  
  /**
   Constraints center of the view to the parent's readableAnchor.
   - Parameter offsetX: A CGFloat offset for horizontal center.
   - Parameter offsetY: A CGFloat offset for vertical center.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerReadable(offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> Layout {
    center(ensuredParent.readableAnchor, offsetX: offsetX, offsetY: offsetY)
  }
  
  /**
   Constraints edges of the view to the parent's readableAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func edgesReadable(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    edges(ensuredParent.readableAnchor, top: top, left: left, bottom: bottom, right: right)
  }
}

// MARK: Size

public extension Layout {
  /**
   Constraints width of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func widthReadable(offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    width(ensuredParent.readableAnchor, offset: offset, relationer)
  }
  
  /**
   Constraints height of the view to the parent's readableAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relationer: A LayoutRelationer.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func heightReadable(offset: CGFloat = 0, _ relationer: LayoutRelationer = LayoutRelationers.equal) -> Layout {
    height(ensuredParent.readableAnchor, offset: offset, relationer)
  }
}
