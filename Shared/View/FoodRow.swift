//
//  FoodRow.swift
//  YesFood
//
//  Created by Huy Tran on 9/18/22.
//

import SwiftUI

struct FoodRow: View {
    var food: Foods
    
    var body: some View {
        HStack {
            food.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(food.name)
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodRow(food: foods[0])
                .previewLayout(.fixed(width: 300, height: 70))
            FoodRow(food: foods[2])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
