//
//  Weather.swift
//  AirQuality
//
//  Created by Amy Cheong on 19/11/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import Foundation

public struct City: Codable {
   public let name: String
   public let url: String
}

public struct Time: Codable {
   // Local measurement time time.
   public let s: String
   // Station timezone.
   public let tz: String
}

public struct DataResponse: Codable {
   // Real-time air quality infomrmation.
   public var aqi: Int
   // Unique ID for the city monitoring station.
   public var idx: Double
   // Local measurement time time.
   public var time: Time

   public var city: City
}

public struct AirQuality: Codable{
   public var data: DataResponse
   public var status: String
}
