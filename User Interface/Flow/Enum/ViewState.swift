//
//  ViewState.swift
//  Start
//
//  Created by Junxiu on 30/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import Foundation

protocol StateManager {
   associatedtype Context: ViewContext
   var stateChanged: ((ViewState, Context?) -> Void)? { get set }
}

protocol ViewContext {
   
}

enum ViewState {
   case ideal
   case failed
   case loading
   case empty
   case warning
   case exit // to dismiss
   case preload // when view is loaded, and data is ready to come in
}
