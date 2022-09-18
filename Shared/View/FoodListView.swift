//
//  FoodListView.swift
//  YesFood (iOS)
//
//  Created by Huy Tran on 9/18/22.
//

import SwiftUI

struct FoodListView: View {
    
    var body: some View {
        NavigationView {
            List(foods){
                food in
                NavigationLink{
                    FoodDetail(food: food)
                } label: {
                    FoodRow(food: food)
                }
                .navigationTitle("List of food")
            }
        }
        
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
