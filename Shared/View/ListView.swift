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

struct ListView: View {
    @ObservedObject var viewModel = ListViewModel()
    
    @State var inputText = ""
    @State var seletedCuisine = Food.all
    @State var isOnSale = false
    @State var cartView: Bool = true
    var body: some View {
        VStack {
            AppBarView(inputText: $inputText, seletedCuisine: $seletedCuisine, isOnSale: $isOnSale)
                .environmentObject(viewModel)
                .padding(.bottom, 5)
                .overlay(Divider()
                            .frame(width: UIScreen.main.bounds.width)
                            .background(Color.black), alignment: .bottom)
                .padding(.bottom, 5)
                
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.stores.filter({ store in
                        filterSearchText(store)
                    }).filter({ store in
                        filterCuisine(store)
                    }).filter({ store in
                        filterOnSale(store)
                    }), id: \.self) { store in
                        StoreView(store: store)
                    }
                }
            }
        }
    }
    
    private func filterSearchText(_ store: Store) -> Bool {
        if inputText == "" || store.name.localizedCaseInsensitiveContains(inputText) {
            return true
        } else {
            return false
        }
    }
    
    private func filterCuisine(_ store: Store) -> Bool {
        if seletedCuisine == .all || seletedCuisine == store.type
        {
            return true
        } else {
            return false
        }
    }
    
    private func filterOnSale(_ store: Store) -> Bool {
        if !isOnSale || store.tags.firstIndex(of: "On sale") != nil {
            return true
        } else {
            return false
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
