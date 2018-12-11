//
//  ViewDependable.swift
//  Start
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import UIKit

struct TransitionContext {
   let sender: Any?
   let content: Any?
}

protocol ViewDependable: class {
   func prepare(for segue: UIStoryboardSegue, context: TransitionContext?)
   var viewController: UIViewController? { get set }
   init()
}

extension ViewDependable {
   func applicationService() -> ApplicationServiceAvailable {
      return ApplicationServiceProvider()
   }
   
   func performSegue(_ segue: SegueIdentifiable, sender: Any?, content: Any?) {
      weak var _viewController = self.viewController
      _viewController?.performSegue(withIdentifier: segue.identifier(),
                                    sender: TransitionContext(sender: sender, content: content))
   }
   
   func dismiss() {
      weak var _viewController = self.viewController
      _viewController?.dismiss(animated: true, completion: nil)
   }
}
