//
//  PSIContentView.swift
//  AirQuality
//
//  Created by Amy Cheong on 11/12/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit

final class PSIContentView: DesignableView {
   @IBOutlet weak var cityNameLabel: UILabel!
   @IBOutlet weak var timeLabel: UILabel!
   @IBOutlet weak var aqiLabel: UILabel!
   @IBOutlet weak var aqiDescLabel: UILabel!
   @IBOutlet weak var psiLevelColourView: UIView!

   func display(_ airQuality: AirQuality) {
      self.cityNameLabel.text = airQuality.data.city.name
      self.aqiLabel.text = String(airQuality.data.aqi)

      var formattedTime = airQuality.data.time.s.replacingOccurrences(of: " ", with: "T")
      formattedTime.append(airQuality.data.time.tz)

      if let date = Date.getFormattedDate(string: formattedTime) {
         self.timeLabel.isHidden = false
         self.timeLabel.text = "Updated at \(date)"
      } else {
         self.timeLabel.isHidden = true
      }

      let pollutionLevel = AirPollutionLevel.getLevel(by: airQuality.data.aqi)
      psiLevelColourView.backgroundColor = pollutionLevel.color
      aqiDescLabel.text = pollutionLevel.title
   }
}
