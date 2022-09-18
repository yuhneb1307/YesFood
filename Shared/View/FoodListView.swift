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
