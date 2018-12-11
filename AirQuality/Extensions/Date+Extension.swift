//
//  Date+Extension.swift
//  AirQuality
//
//  Created by Amy Cheong on 2/12/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit

extension Date {
   static func getFormattedDate(string: String,
                                getFormatter: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> String? {
      let dateFormatterGet = DateFormatter()
      dateFormatterGet.dateFormat = getFormatter

      let dateFormatterPrint = DateFormatter()
      dateFormatterPrint.dateFormat = "dd MMM, h:mm a"

      guard let date = dateFormatterGet.date(from: string) else {
         return nil
      }

      return dateFormatterPrint.string(from: date)
   }
}
