//
//  Layout+Anchors.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

public extension Layout {
  /**
   Constraints top of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func top(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.top, to: anchor, relation: relation, constant: offset)
  }
  
  /**
   Constraints left of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func left(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.left, to: anchor, relation: relation, constant: offset)
  }
  
  /**
   Constraints right of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func right(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.right, to: anchor, relation: relation, constant: -offset)
  }
  
  /**
   Constraints leading of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leading(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.leading, to: anchor, relation: relation, constant: offset)
  }
  
  /**
   Constraints trailing of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func trailing(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.trailing, to: anchor, relation: relation, constant: -offset)
  }
  
  /**
   Constraints bottom of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottom(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.bottom, to: anchor, relation: relation, constant: -offset)
  }

  /**
   Constraints horizontal center of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerX(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.centerX, to: anchor, relation: relation, constant: offset)
  }
  
  /**
   Constraints vertical center of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func centerY(_ anchor: LayoutAnchorable, _ offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.centerY, to: anchor, relation: relation, constant: offset)
  }
}

// MARK: Composite

public extension Layout {
  /**
   Constraints top-leading of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter top: A CGFloat offset for top.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeading(_ anchor: LayoutAnchorable, top: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    constraint(.topLeading, to: anchor, constants: [top, leading])
  }
  
  /**
   Constraints top-trailing of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter top: A CGFloat offset for top.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topTrailing(_ anchor: LayoutAnchorable, top: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    constraint(.topTrailing, to: anchor, constants: [top, -trailing])
  }
  
  /**
   Constraints bottom-leading of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter leading: A CGFloat offset for leading.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeading(_ anchor: LayoutAnchorable, bottom: CGFloat = 0, leading: CGFloat = 0) -> Layout {
    constraint(.bottomLeading, to: anchor, constants: [-bottom, leading])
  }
  
  /**
   Constraints bottom-trailing of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomTrailing(_ anchor: LayoutAnchorable, bottom: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    constraint(.bottomTrailing, to: anchor, constants: [-bottom, -trailing])
  }
  
  /**
   Constraints leading and trailing of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter leading: A CGFloat offset for leading.
   - Parameter trailing: A CGFloat offset for trailing.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leadingTrailing(_ anchor: LayoutAnchorable, leading: CGFloat = 0, trailing: CGFloat = 0) -> Layout {
    constraint(.leadingTrailing, to: anchor, constants: [leading, -trailing])
  }
  
  /**
   Constraints top-left of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topLeft(_ anchor: LayoutAnchorable, top: CGFloat = 0, left: CGFloat = 0) -> Layout {
    constraint(.topLeft, to: anchor, constants: [top, left])
  }
  
  /**
   Constraints top-right of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter top: A CGFloat offset for top.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topRight(_ anchor: LayoutAnchorable, top: CGFloat = 0, right: CGFloat = 0) -> Layout {
    constraint(.topRight, to: anchor, constants: [top, -right])
  }
  
  /**
   Constraints bottom-left of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter left: A CGFloat offset for left.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomLeft(_ anchor: LayoutAnchorable, bottom: CGFloat = 0, left: CGFloat = 0) -> Layout {
    constraint(.bottomLeft, to: anchor, constants: [-bottom, left])
  }
  
  /**
   Constraints bottom-right of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func bottomRight(_ anchor: LayoutAnchorable, bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    constraint(.bottomRight, to: anchor, constants: [-bottom, -right])
  }
  
  /**
   Constraints left and right of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter left: A CGFloat offset for left.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func leftRight(_ anchor: LayoutAnchorable, left: CGFloat = 0, right: CGFloat = 0) -> Layout {
    constraint(.leftRight, to: anchor, constants: [left, -right])
  }
  
  /**
   Constraints top and bottom of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter top: A CGFloat offset for top.
   - Parameter bottom: A CGFloat offset for bottom.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func topBottom(_ anchor: LayoutAnchorable, top: CGFloat = 0, bottom: CGFloat = 0) -> Layout {
    constraint(.topBottom, to: anchor, constants: [top, -bottom])
  }
  
  /**
   Constraints center of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter offsetX: A CGFloat offset for horizontal center.
   - Parameter offsetY: A CGFloat offset for vertical center.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func center(_ anchor: LayoutAnchorable, offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> Layout {
    constraint(.center, to: anchor, constants: [offsetX, offsetY])
  }
  
  /**
   Constraints edges of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter top: A CGFloat offset for top.
   - Parameter left: A CGFloat offset for left.
   - Parameter bottom: A CGFloat offset for bottom.
   - Parameter right: A CGFloat offset for right.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func edges(_ anchor: LayoutAnchorable, top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> Layout {
    constraint(.edges, to: anchor, constants: [top, left, -bottom, -right])
  }
}

// MARK: Size

public extension Layout {
  /**
   Constraints width of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func width(_ anchor: LayoutAnchorable, offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.width, to: anchor, relation: relation, constant: offset)
  }
  
  /**
   Constraints height of the view to the given anchor.
   - Parameter _ anchor: A LayoutAnchorable.
   - Parameter _ offset: A CGFloat offset.
   - Parameter _ relation: A LayoutRelation.
   - Returns: A Layout instance to allow chaining.
   */
  @discardableResult
  func height(_ anchor: LayoutAnchorable, offset: CGFloat = 0, _ relation: LayoutRelation = .equal) -> Layout {
    constraint(.height, to: anchor, relation: relation, constant: offset)
  }
}
