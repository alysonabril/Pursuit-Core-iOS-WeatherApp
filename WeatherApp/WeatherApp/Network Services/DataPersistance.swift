//
//  DataPersistance.swift
//  WeatherApp
//
//  Created by Alyson Abril on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class DataPersistenceManager {
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    static func filepathToDocumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
}
