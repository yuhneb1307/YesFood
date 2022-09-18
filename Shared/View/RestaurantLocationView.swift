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

import SwiftUI
import CoreLocation
struct RestaurantLocationView: View {
    var food: Foods
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Lets go and pick up your food")
                    .foregroundColor(.black)
                    .font(.system(size: 25, weight: .bold))
                    .bold()
                    .foregroundColor(.white)
                MapView(coordinate: food.locationCoordinate)
                    .ignoresSafeArea()
            }
            
        }
    }
}

struct RestaurantLocationView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantLocationView(food: foods[0])
    }
}

