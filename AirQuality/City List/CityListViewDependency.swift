//
//  CityListViewDependency.swift
//  AirQuality
//
//  Created by Amy Cheong on 18/11/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit
import Moya

final class CityListViewDependency: ViewDependable {
   weak var viewController: UIViewController?
   func airQualityServiceProvider() -> MoyaProvider<AirQualityService> {
      return applicationService().airQualityProvider
   }

   func prepare(for segue: UIStoryboardSegue, context: TransitionContext?) {

   }

}
