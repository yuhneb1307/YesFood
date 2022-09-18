//
//  RestaurantLocationView.swift
//  YesFood (iOS)
//
//  Created by Huy Tran on 9/18/22.
//

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

