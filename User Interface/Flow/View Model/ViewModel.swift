//
//  ViewModel.swift
//  Start
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import Foundation

class ViewModel<Dependency: ViewDependable>: ViewModelType {
   var dependency: Dependency?
   
   required init() {
      dependency = Dependency()
      commonInit()
   }
   
   func commonInit() {
      //
   }
}
