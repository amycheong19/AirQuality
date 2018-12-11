//
//  CityListViewModel.swift
//  AirQuality
//
//  Created by Amy Cheong on 18/11/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import Foundation
import Moya

final class CityListViewModel: ViewModel<CityListViewDependency> {
   struct DataSourceContext: ViewContext {
      var airQualityArray: [AirQuality] = []
   }

   var stateChanged: ((ViewState, DataSourceContext?) -> Void)?
   
   func fetchDataSource(){
      dependency?.airQualityServiceProvider().request(.getCurrentAirQuality) { result in
         switch result {
         case .success(let response):
            do {
               let results = try JSONDecoder().decode(AirQuality.self, from: response.data)
               self.stateChanged?(.ideal, .init(airQualityArray: [results]))
            } catch let error {
               debugPrint(error)
            }
         case .failure(let error):
            debugPrint(error)
         }
      }


   } 

}
