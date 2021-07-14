//
//  WingAView.swift
//  ResidentsUI
//
//  Created by Deepak on 13/07/21.
//

import SwiftUI

struct WingAView: View {
    
   // @State var residents: [ResidentModel] = testData
    @EnvironmentObject var residentsViewModel: ResidentsViewModel
    let residents: ResidentModel
    
    var body: some View {
            NavigationView {
                    ResidentCellView()
                        
        }
    }
}

struct WingAView_Previews: PreviewProvider {
    
    static var residents = ResidentModel(name: "kelly", wing: "A", room: 102, bookmarked: true, committe: "", job: "", jobPlace: "", quote: "", image: "Grace Kelly")
    static var previews: some View {
        WingAView(residents: residents)
    }
}

struct ResidentCellView: View {
    
    @State var residents: [ResidentModel] = testData
    
    var body: some View {
        List {
            Section(header:
                        Text("101")
                        .font(.title)
            ) {
                ForEach(residents, id: \.id) { resident in
                    if resident.room == 101 {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(resident.image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                VStack(alignment: .leading) {
                                    Text(resident.name)
                                        .font(.title3)
                                    Text(resident.committe)
                                        .font(.subheadline)
                                        .foregroundColor(Color(#colorLiteral(red: 0.07340111583, green: 0.6708294749, blue: 0.4224532247, alpha: 1)))
                                    Text(resident.job)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Text(resident.jobPlace)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Image(systemName: "bookmark")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .padding(.trailing)
                            }
                            Text(resident.quote)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                }
            }
            
            Section(header:
                        Text("102")
                        .font(.title)
            )
            {
                ForEach(residents, id: \.id) { resident in
                    if resident.room == 102 {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(resident.image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                VStack(alignment: .leading) {
                                    Text(resident.name)
                                        .font(.title3)
                                    Text(resident.committe)
                                        .font(.subheadline)
                                        .foregroundColor(Color(#colorLiteral(red: 0.07340111583, green: 0.6708294749, blue: 0.4224532247, alpha: 1)))
                                    Text(resident.job)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Text(resident.jobPlace)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Image(systemName: resident.bookmarked ? "bookmark" : "bookmark.fill" )
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(resident.bookmarked ? Color(#colorLiteral(red: 0.07340111583, green: 0.6708294749, blue: 0.4224532247, alpha: 1)) : .secondary)
                                    .padding(.trailing)
                            }
                            Text(resident.quote)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                    }
                }
            }
            
            Section(header:
                        Text("103")
                        .font(.title)
            )
            {
                ForEach(residents, id: \.id) { resident in
                    if resident.room == 103 {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(resident.image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                VStack(alignment: .leading) {
                                    Text(resident.name)
                                        .font(.title3)
                                    Text(resident.committe)
                                        .font(.subheadline)
                                        .foregroundColor(Color(#colorLiteral(red: 0.07340111583, green: 0.6708294749, blue: 0.4224532247, alpha: 1)))
                                    Text(resident.job)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Text(resident.jobPlace)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Image(systemName: "bookmark")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .padding(.trailing)
                            }
                            Text(resident.quote)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                }
            }
        }
        .listStyle(SidebarListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}
