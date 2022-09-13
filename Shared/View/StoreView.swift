//
//  StoreView.swift
//  YesFood (iOS)
//
//  Created by duc on 13/09/2022.
//

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

