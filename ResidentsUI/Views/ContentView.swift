//
//  ContentView.swift
//  ResidentsUI
//
//  Created by Deepak on 13/07/21.
//

import SwiftUI

struct ContentView: View {
        init() {
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.1294117647, green: 0.1294117647, blue: 0.1294117647, alpha: 1)
        UISegmentedControl.appearance().backgroundColor = #colorLiteral(red: 0.1294117647, green: 0.1294117647, blue: 0.1294117647, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }
    
    //@State var resident: [ResidentModel] = testData
    @EnvironmentObject var residentsViewModel: ResidentsViewModel
    @State private var residents: ResidentModel = ResidentModel(name: "", wing: "A", room: 101, bookmarked: false, committe: "", job: "", jobPlace: "", quote: "", image: "")
    
    @State private var selectedTab: Int = 1
    
    var body: some View {
        NavigationView {
            
            VStack {
                Picker("", selection: $selectedTab){
                    Text("Bookmark").tag(0)
                    Text("Wing A").tag(1)
                    Text("Wing B").tag(2)
//                    ForEach(0..<tabs.count) {
//                        Text(self.tabs[$0])
//                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                //.padding(.trailing,20)
                
                switch(selectedTab) {
                case 0: BookmarkView()
                case 1: WingAView(residents: residents)
                case 2: WingBView()
                default: WingAView( residents: residents)
                    
                }
                
                Spacer()
            }
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    VStack {
                        Text("Residents")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.top)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
