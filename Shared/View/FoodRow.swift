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
