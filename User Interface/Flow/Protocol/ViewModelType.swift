//
//  ViewModelType.swift
//  Start
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import Foundation

protocol ViewModelType: class {
   associatedtype Dependency: ViewDependable
   var dependency: Dependency? { get set }
   init()
}
