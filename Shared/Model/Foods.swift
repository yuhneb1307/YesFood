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
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    struct Coordinates: Codable {
        var latitude: Double
        var longitude: Double
    }
}

