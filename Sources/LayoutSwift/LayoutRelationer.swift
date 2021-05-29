//
//  LayoutRelationer.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import UIKit

/// A closure typealias for relation operators.
public typealias LayoutRelationer = (LayoutRelationers, LayoutRelationers) -> LayoutRelation

/// A dummy struct used in creating relation operators (==, >=, <=).
public struct LayoutRelationers {
  /// Passed as an unused argument to the LayoutRelationer closures.
  static let `nil` = LayoutRelationers()
  
  /**
   A method used as a default parameter for LayoutRelationer closures.
   Swift does not allow using == operator directly, so we had to create this.
   */
  public static func equal(left: LayoutRelationers, right: LayoutRelationers) -> LayoutRelation {
    .equal
  }
}

/// A method returning `LayoutRelation.equal`
public func ==(left: LayoutRelationers, right: LayoutRelationers) -> LayoutRelation {
  .equal
}

/// A method returning `LayoutRelation.greaterThanOrEqual`
public func >=(left: LayoutRelationers, right: LayoutRelationers) -> LayoutRelation {
  .greaterThanOrEqual
}

/// A method returning `LayoutRelation.lessThanOrEqual`
public func <=(left: LayoutRelationers, right: LayoutRelationers) -> LayoutRelation {
  .lessThanOrEqual
}

