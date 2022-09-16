//
//  ModelData.swift
//  YesFood
//
//  Created by Huy Tran on 9/16/22.
//

import Foundation
import CoreLocation

var foods = decodeJsonFromJsonFile(jsonFileName: "foods.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Foods] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Foods].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Foods]
}
