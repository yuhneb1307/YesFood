//
//  CartView.swift
//  YesFood (iOS)
//
//  Created by duc on 18/09/2022.
//

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
