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

struct AppBarView: View {
    @State var showcartView = false
    
    @EnvironmentObject var viewModel: ListViewModel
    @State var showSearchBar = false
    @Binding var inputText: String
    @Binding var seletedCuisine: Food
    @Binding var isOnSale: Bool
    
    
    var SearchBarView: some View {
        VStack {
            TextField("Search something...", text: $inputText)
                .padding(5)
                .font(.system(size: 15))
                .textFieldStyle(.roundedBorder)
                .shadow(radius: 3)
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showcartView = true
                }) {
                    Image(systemName: "ellipsis")
                }
                NavigationLink("", destination: CartView(), isActive: $showcartView)
                Spacer()
                
                if showSearchBar {
                    SearchBarView
                        .transition(.move(edge: .top))
                } else {
                    Text("Stores list")
                        .bold()
                }
                 
                Spacer()
                Image(systemName: "magnifyingglass")
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showSearchBar.toggle()
                            inputText = ""
                        }
                    }
            }
            .font(.system(size: 25))
            .frame(height: 50)

            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    Text(viewModel.nameSort.rawValue)
                        .encapulate(borderColor: .gray)
                        .onTapGesture {
                            if (viewModel.nameSort == .nameASC){
                                viewModel.nameSort = .nameDESC
                            } else {
                                viewModel.nameSort = .nameASC
                            }
                            viewModel.sortList(by: viewModel.nameSort)
                        }
                    Text(viewModel.ratingSort.rawValue)
                        .encapulate(borderColor: .gray)
                        .onTapGesture {
                            if (viewModel.ratingSort == .ratingASC){
                                viewModel.ratingSort = .ratingDESC
                            } else {
                                viewModel.ratingSort = .ratingASC
                            }
                            viewModel.sortList(by: viewModel.ratingSort)
                        }
                    
                    Picker(seletedCuisine.rawValue,
                           selection: $seletedCuisine) {
                        ForEach(Food.allCases, id: \.self) { value in
                            Text(value.rawValue)
                                .tag(value)
                        }
                    }
                    .colorMultiply(.black)
                    .pickerStyle(.menu)
                    .padding(.vertical, -5)
                    .encapulate(borderColor: .gray)
                    
                    if isOnSale {
                        Text("On sale")
                            .encapulate(color: .blue.opacity(0.8), foregroundColor: .white)
                            .onTapGesture {
                                isOnSale.toggle()
                            }
                    } else {
                        Text("On sale")
                            .encapulate(borderColor: .gray)
                            .onTapGesture {
                                isOnSale.toggle()
                            }
                    }
                }
                .padding(.vertical, 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width-30, height: 100)
    }
}
