//
//  ApplicationServiceAvailable.swift
//  Domain
//
//  Created by Junxiu on 29/10/18.
//  Copyright © 2018 Junxiu. All rights reserved.
//

import Foundation
import Moya

public protocol ApplicationServiceAvailable {
   var airQualityProvider: MoyaProvider<AirQualityService> { get }
}
