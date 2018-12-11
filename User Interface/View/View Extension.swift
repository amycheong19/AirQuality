//
//  View Extension.swift
//  Start
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import UIKit

public extension UIView {
   @objc dynamic public var nibContainerView: UIView {
      return self
   }
   
   @objc dynamic public var nibName: String {
      return String(describing: type(of: self))
   }
}
