//
//  FoodDetail.swift
//  YesFood
//
//  Created by Huy Tran on 9/16/22.
//

import SwiftUI
import CoreLocation
struct FoodDetail: View {
    var food: Foods
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    CircleImage(image: food.image)
                        .offset(y:50)
                        .padding(.bottom, -100)
                    Text(food.name)
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top,175)
                    Text(food.info)
                        .padding()
                    HStack{
                        Text(food.price)
                            .padding()
                        Text(food.cal)
                            .padding()
                    }
                    
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(food: foods[0])
    }
}
