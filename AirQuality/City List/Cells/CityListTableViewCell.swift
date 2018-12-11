//
//  CityListTableViewCell.swift
//  AirQuality
//
//  Created by Amy Cheong on 19/11/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit

class CityListTableViewCell: UITableViewCell {
   static let identifier = String(describing: CityListTableViewCell.self)

   @IBOutlet private weak var subContentView: PSIContentView!

   func display(_ airQuality: AirQuality) {
      subContentView.display(airQuality)
   }
}
