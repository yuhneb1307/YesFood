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
        ScrollView {
            
                VStack {
                    MapView(coordinate: food.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 250)
                    
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct RestaurantLocationView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantLocationView(food: foods[0])
    }
}

