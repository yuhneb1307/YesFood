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

import Foundation
class ListViewModel: ObservableObject {
    @Published var stores = [Store]()
    @Published var nameSort = SortBy.nameASC
    @Published var ratingSort = SortBy.ratingASC
    
    init() {
        print("Ready")
        stores = loadJsonFile()
    }
    
    private func loadJsonFile() -> [Store]{
        var dbData = [Store]()
        do {
            if let filePath  = Bundle.main.url(forResource: "stores", withExtension: "json") {
                
                let jsonData = try Data(contentsOf: filePath)
                let decodedData = try JSONDecoder().decode([Store].self, from: jsonData)
                print("Decoded: \(decodedData)")
                dbData = decodedData
            } else {
                return [Store]()
            }
        } catch let error {
            print("[System] Error while fetching: \(error)")
        }
        return dbData
    }
    
    func sortList(by sortType: SortBy) {
        switch sortType {
        case .nameASC:
            stores.sort {
                $0.name.lowercased() < $1.name.lowercased()
            }
        case .nameDESC:
            stores.sort {
                $0.name.lowercased() > $1.name.lowercased()
            }
        case .ratingASC:
            stores.sort {
                $0.rating < $1.rating
            }
        case .ratingDESC:
            stores.sort {
                $0.rating > $1.rating
            }
        }
    }
    
    enum SortBy: String {
        case nameASC = "Name △"
        case nameDESC = "Name ▽"
        case ratingASC = "Rating △"
        case ratingDESC = "Rating ▽"
    }
}
