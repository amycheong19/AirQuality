//
//  AirQuality.swift
//  AirQuality
//
//  Created by Amy Cheong on 30/11/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit
import Moya

public enum AirQualityService {
   case getCurrentAirQuality
}

extension AirQualityService: TargetType {

   public var baseURL: URL {
      return URL(string: "https://api.waqi.info")!
   }

   public var token: String {
      return "faf81299b2892ff392fbbcf93475f2ae6efd709d"
   }

   public enum paramKey: String {
      case token
   }

   public var path: String {
      switch self {
      case .getCurrentAirQuality:
         return "/feed/here/"
      }
   }

   public var method: Moya.Method {
      switch self {
      case .getCurrentAirQuality:
         return .get
      }
   }

   public var sampleData: Data {
      switch self {
      case .getCurrentAirQuality:
          return "{\"token\": \(token)}".utf8Encoded
      }
   }

   public var task: Task {
      switch self {
      case .getCurrentAirQuality:
         return .requestParameters(parameters: [paramKey.token.rawValue: token],
                                   encoding: URLEncoding.default)
      }
   }

   public var headers: [String: String]? {
      return ["Content-type": "application/json"]
   }
}

private extension String {
   var urlEscaped: String {
      return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
   }

   var utf8Encoded: Data {
      return data(using: .utf8)!
   }
}
