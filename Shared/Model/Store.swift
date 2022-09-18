/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 3
  Author: Tran Le Quoc Huy, Dinh Quang Nhat, Ha Minh Duc, Tang Hue Thy
  ID: s3878686, s3681446, s3878911, s3697323
  Created  date: 07/07/2022
  Last modified: 18/09/2022
  Acknowledgement: RMIT Canvas, Github, Youtube
*/

import Foundation
import SwiftUI
import CoreLocation

struct Store : Identifiable, Codable, Hashable{
    var id: Int
    let imageName: String
    var image: Image {
        Image(imageName)
    }
    
    let type: Food
    let name: String
    let address: String
    let time: String
    let rating: Double
    var tags: [String]
    
    enum CodingKeys: String, CodingKey {
        case id, imageName, name, address, time, rating, tags
        case type = "food"
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}

enum Food: String, Codable, CaseIterable {
    case all = "All"
    case vietnamese = "Vietnamese"
    case korean = "Korean"
    case japanese = "Japanese"
    case chinese = "Chinese"
    case western = "Western"
    case indian = "Indian"
    case coffee = "Coffee"
    case milktea = "Milktea"
}



extension Food {
    enum ErrorType: Error {
        case encoding
        case decoding
    }
    
    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer()
        let decodedValue = try value.decode(String.self)
        
        switch decodedValue {
        case "Vietnamese":
            self = .vietnamese
        case "Korean":
            self = .korean
        case "Japanese":
            self = .japanese
        case "Chinese":
            self = .chinese
        case "Western":
            self = .western
        case "Indian":
            self = .indian
        case "Coffee":
            self = .coffee
        case "Milktea":
            self = .milktea
        default:
            print("Error occurs while decoding 'Food' key.")
            throw ErrorType.decoding
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var contrainer = encoder.singleValueContainer()
        
        switch self {
        case .vietnamese:
            try contrainer.encode("Vietnamese")
        case .korean:
            try contrainer.encode("Korean")
        case .japanese:
            try contrainer.encode("Asian")
        case .chinese:
            try contrainer.encode("Chinese")
        case .western:
            try contrainer.encode("Western")
        case .indian:
            try contrainer.encode("Indian")
        case .coffee:
            try contrainer.encode("Coffee")
        case .milktea:
            try contrainer.encode("Milktea")
        case .all:
            try contrainer.encode("None")

        }
    }
}
