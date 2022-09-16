//
//  Foods.swift
//  YesFood
//
//  Created by Huy Tran on 9/16/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Foods: Identifiable, Codable{
    var id: Int
    var name: String
    var price: String
    var info: String
    var cal: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

