//
//  AssociatedObject.swift
//  Oxuyan
//
//  Created by Orkhan Alikhanov on 5/28/21.
//

import ObjectiveC

public struct AssociatedObject {
  /**
   Gets the Obj-C reference for the instance object within the UIView extension.
   - Parameter base: Base object.
   - Parameter key: Memory key pointer.
   - Parameter initializer: Object initializer.
   - Returns: The associated reference for the initializer object.
   */
  public static func get<T: Any>(base: Any, key: UnsafePointer<UInt8>, initializer: () -> T) -> T {
    if let v = objc_getAssociatedObject(base, key) as? T {
      return v
    }
    
    let v = initializer()
    objc_setAssociatedObject(base, key, v, .OBJC_ASSOCIATION_RETAIN)
    return v
  }
  
  /**
   Sets the Obj-C reference for the instance object within the UIView extension.
   - Parameter base: Base object.
   - Parameter key: Memory key pointer.
   - Parameter value: The object instance to set for the associated object.
   - Returns: The associated reference for the initializer object.
   */
  public static func set<T: Any>(base: Any, key: UnsafePointer<UInt8>, value: T) {
    objc_setAssociatedObject(base, key, value, .OBJC_ASSOCIATION_RETAIN)
  }
}
