//
//  TodayViewController.swift
//  AQIExtension
//
//  Created by Amy Cheong on 2/12/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit
import NotificationCenter
import Moya

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }

   override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
   }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
