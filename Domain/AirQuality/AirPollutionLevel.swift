//
//  AirPollutionLevel.swift
//  AirQuality
//
//  Created by Amy Cheong on 2/12/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import Foundation
import UIKit

enum AirPollutionLevel {
   case good
   case moderate
   case sensitive
   case unhealthy
   case veryUnhealthy
   case hazardous

   var title: String {
      switch self {
      case .good:
         return "Good"
      case .moderate:
         return "Moderate"
      case .sensitive:
         return "Unhealthy for Sensitive Groups"
      case .unhealthy:
         return "Unhealthy"
      case .veryUnhealthy:
         return "Very Unhealthy"
      case .hazardous:
         return "Hazardous"
      }
   }

   var healthImplications: String {
      switch self {
      case .good:
         return "Air quality is considered satisfactory, and air pollution poses little or no risk"
      case .moderate:
         return "Air quality is acceptable; however, for some pollutants there may be a moderate health concern for a very small number of people who are unusually sensitive to air pollution."
      case .sensitive:
         return "Members of sensitive groups may experience health effects. The general public is not likely to be affected."
      case .unhealthy:
         return "Everyone may begin to experience health effects; members of sensitive groups may experience more serious health effects"
      case .veryUnhealthy:
         return "Health warnings of emergency conditions. The entire population is more likely to be affected."
      case .hazardous:
         return "Health alert: everyone may experience more serious health effects"
      }
   }

   static func getLevel(by aqi: Int) -> AirPollutionLevel {
      switch aqi {
      case 0...50:
         return .good
      case 51...100:
         return .moderate
      case 101...150:
         return .sensitive
      case 151...200:
         return .unhealthy
      case 201...300:
         return .veryUnhealthy
      default:
         return .hazardous
      }
   }

   var color: UIColor {
      switch self {
      case .good:
         return #colorLiteral(red: 0.262745098, green: 0.5019607843, blue: 0, alpha: 1)
      case .moderate:
         return #colorLiteral(red: 0.9725490196, green: 0.9058823529, blue: 0.1098039216, alpha: 1)
      case .sensitive:
         return #colorLiteral(red: 1, green: 0.7450980392, blue: 0.003921568627, alpha: 1)
      case .unhealthy:
         return #colorLiteral(red: 0.8823529412, green: 0.07058823529, blue: 0, alpha: 1)
      case .veryUnhealthy:
         return #colorLiteral(red: 0.7411764706, green: 0.06274509804, blue: 0.8784313725, alpha: 1)
      case .hazardous:
         return #colorLiteral(red: 0.537254902, green: 0.1058823529, blue: 0.07843137255, alpha: 1)
      }
   }
}
