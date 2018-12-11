//
//  FlowTableViewController.swift
//  Start
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import UIKit

class FlowTableViewController<ViewModel: ViewModelType>: UITableViewController, ViewModelable {
   lazy var viewModel: ViewModel = {
      let viewModel = ViewModel()
      viewModel.dependency = ViewModel.Dependency()
      weak var _weakViewController = self
      viewModel.dependency?.viewController = _weakViewController
      return viewModel
   }()
   
   override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
      isInitialiazed()
   }
   
   required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      isInitialiazed()
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      viewModel.dependency?.prepare(for: segue, context: sender as? TransitionContext)
   }
   
   func isInitialiazed() {
      // Override this method for view model binding, additional setup...
   }
}
