//
//  ViewModelable.swift
//  Start
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import Foundation

protocol ViewModelable {
   associatedtype ViewModel: ViewModelType
   var viewModel: ViewModel { get set }
}
