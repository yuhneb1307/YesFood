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

struct CartView: View {
    var body: some View {
        ZStack {
            
            VStack(spacing: 30){
                Spacer()
                VStack(spacing:5) {
                    Text("My Favorite \nFood Spots in Saigon!")
                    
                        .padding()
                        .multilineTextAlignment(.center)
                    Text("You only lick once...\nLick the bowl!")
                    
                        .multilineTextAlignment(.center)
                        .padding(5)
                        .opacity(0.8)
                }
            }
        }
    }
}
struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
