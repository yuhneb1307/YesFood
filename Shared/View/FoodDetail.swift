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
struct FoodDetail: View {
    var food: Foods
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Image(food.imageName)
                        .resizable()
                        .frame(width: 400, height: 200)
                        .offset(y:0)
                    Text(food.name)
                        .foregroundColor(.black)
                        .font(.system(size: 60))
                        .bold()
                        .foregroundColor(.white)
                    Text(food.info)
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .bold))
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    HStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .frame(height: 50.0)
                            .overlay(HStack{
                                Text(food.price)
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .bold))
                                    .bold()
                                    .foregroundColor(.white)
                            })
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .frame(height: 50.0)
                            .overlay(HStack{
                                Text(food.cal)
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .bold))
                                    .bold()
                                    .foregroundColor(.white)
                            })
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
