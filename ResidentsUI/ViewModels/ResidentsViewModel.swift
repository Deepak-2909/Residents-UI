//
//  ResidentsViewModel.swift
//  ResidentsUI
//
//  Created by Deepak on 14/07/21.
//

import Foundation

class ResidentsViewModel: ObservableObject {
    @Published var testData: [ResidentModel] = [] 
//        didSet{
//            saveData()
//            /*didSet will call saveData( which will save the changes) everytime testData is called*/
//        }
//    }
//    var key: String = "saved_Data"
//
//    init() {
//        getTestData()
//    }
//
//    func getTestData() {
//
//        guard
//            let data = UserDefaults.standard.data(forKey: key),
//            let savedData = try? JSONDecoder().decode([ResidentModel].self, from: data)
//        else {return}
//        self.testData = savedData
//    }
    
    func updateBookmark(item: ResidentModel){
        
        if let index = testData.firstIndex(where: {$0.id == item.id}){     
            testData[index] = item.isBookmarked()
        }
    }
    
//    func saveData() {
//        if let encodeData = try? JSONEncoder().encode(testData) {
//            UserDefaults.standard.setValue(encodeData, forKey: key)
//        }
//    }
}


