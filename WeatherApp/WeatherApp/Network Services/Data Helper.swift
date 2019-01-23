//
//  Data Helper.swift
//  WeatherApp
//
//  Created by Alyson Abril on 1/23/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct WeatherDateHelper {
    static func formatISOToDate(dateString: String) -> String {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = dateString
        if let date = isoDateFormatter.date(from: dateString) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            formattedDate = dateFormatter.string(from: date)
        }
        return formattedDate
        
    }
    static func formatISOToTime(dateString: String) -> String {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = dateString
        if let date = isoDateFormatter.date(from: dateString) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm:ss"
            formattedDate = dateFormatter.string(from: date)
        }
        return formattedDate
    }
    
}
