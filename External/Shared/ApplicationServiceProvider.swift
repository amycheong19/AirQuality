//
//  ApplicationServiceProvider.swift
//  External
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import Foundation
import Moya

public struct ApplicationServiceProvider: ApplicationServiceAvailable {
   public var airQualityProvider = MoyaProvider<AirQualityService>()

   public init() {}
}
