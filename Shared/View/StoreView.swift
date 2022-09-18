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

struct StoreView: View {
    var store: Store
    
    var body: some View {
        VStack {
            store.image
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width-50, height: 200)
                .clipped()
            
            
            VStack {
                HStack {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    Spacer()
                    Text(store.address)
                        .font(.subheadline)
                }
                .padding(.bottom, 1)
                
                HStack(spacing: 0) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text(String(store.rating))
                        .padding(.trailing)
                    Text(store.type.rawValue)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.bottom, 1)
                
                HStack {
                    ForEach(store.tags, id: \.self) { tag in
                        Text(tag)
                            .encapulate(color: .black.opacity(0.8), foregroundColor : .white)
                    }
                    Spacer()
                }
                .padding(.bottom)
            }
            .frame(width: UIScreen.main.bounds.width-50)
        }
    }
}

