//
//  Layout+Safe.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints top of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    top(ensuredParent.safeAnchor, offset, relation)
  }
  
  /**
   Constraints left of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    left(ensuredParent.safeAnchor, offset, relation)
  }
  
  /**
   Constraints right of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func rightSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    right(ensuredParent.safeAnchor, offset, relation)
  }
  
  /**
   Constraints leading of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    leading(ensuredParent.safeAnchor, offset, relation)
  }
  
  /**
   Constraints trailing of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func trailingSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    trailing(ensuredParent.safeAnchor, offset, relation)
  }
  
  /**
   Constraints bottom of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    bottom(ensuredParent.safeAnchor, offset, relation)
  }

  /**
   Constraints horizontal center of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerXSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    centerX(ensuredParent.safeAnchor, offset, relation)
  }
  
  /**
   Constraints vertical center of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerYSafe(_ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    centerY(ensuredParent.safeAnchor, offset, relation)
  }
}

// MARK: Composite

public extension Layout {
  /**
   Constraints top-leading of the view to the parent's safeAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeadingSafe(top: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    topLeading(ensuredParent.safeAnchor, top: top, leading: leading)
  }
  
  /**
   Constraints top-trailing of the view to the parent's safeAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topTrailingSafe(top: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    topTrailing(ensuredParent.safeAnchor, top: top, trailing: trailing)
  }
  
  /**
   Constraints bottom-leading of the view to the parent's safeAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeadingSafe(bottom: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    bottomLeading(ensuredParent.safeAnchor, bottom: bottom, leading: leading)
  }
  
  /**
   Constraints bottom-trailing of the view to the parent's safeAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomTrailingSafe(bottom: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    bottomTrailing(ensuredParent.safeAnchor, bottom: bottom, trailing: trailing)
  }
  
  /**
   Constraints leading and trailing of the view to the parent's safeAnchor.
   - Parameter leading: A CGFloat offset for leading.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingTrailingSafe(leading: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    leadingTrailing(ensuredParent.safeAnchor, leading: leading, trailing: trailing)
  }
  
  /**
   Constraints top-left of the view to the parent's safeAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeftSafe(top: CGFloat = 0, left: CGFloat = 0) -> Layout {
    topLeft(ensuredParent.safeAnchor, top: top, left: left)
  }
  
  /**
   Constraints top-right of the view to the parent's safeAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topRightSafe(top: CGFloat = 0, right: CGFloat = 0) -> Layout {
    topRight(ensuredParent.safeAnchor, top: top, right: right)
  }
  
  /**
   Constraints bottom-left of the view to the parent's safeAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeftSafe(bottom: CGFloat = 0, left: CGFloat = 0) -> Layout {
    bottomLeft(ensuredParent.safeAnchor, bottom: bottom, left: left)
  }
  
  /**
   Constraints bottom-right of the view to the parent's safeAnchor.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomRightSafe(bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    bottomRight(ensuredParent.safeAnchor, bottom: bottom, right: right)
  }
  
  /**
   Constraints left and right of the view to the parent's safeAnchor.
   - Parameter left: A CGFloat offset for left.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftRightSafe(left: CGFloat = 0, right: CGFloat = 0) -> Layout {
    leftRight(ensuredParent.safeAnchor, left: left, right: right)
  }
  
  /**
   Constraints top and bottom of the view to the parent's safeAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter bottom: A CGFloat offset for bottom.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topBottomSafe(top: CGFloat = 0, bottom: CGFloat = 0) -> Layout {
    topBottom(ensuredParent.safeAnchor, top: top, bottom: bottom)
  }
  
  /**
   Constraints center of the view to the parent's safeAnchor.
   - Parameter offsetX: A CGFloat offset for horizontal center.
   - Parameter offsetY: A CGFloat offset for vertical center.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerSafe(offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> Layout {
    center(ensuredParent.safeAnchor, offsetX: offsetX, offsetY: offsetY)
  }
  
  /**
   Constraints edges of the view to the parent's safeAnchor.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func edgesSafe(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    edges(ensuredParent.safeAnchor, top: top, left: left, bottom: bottom, right: right)
  }
}

// MARK: Size

public extension Layout {
  /**
   Constraints width of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func widthSafe(offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    width(ensuredParent.safeAnchor, offset: offset, relation)
  }
  
  /**
   Constraints height of the view to the parent's safeAnchor.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func heightSafe(offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    height(ensuredParent.safeAnchor, offset: offset, relation)
  }
}
