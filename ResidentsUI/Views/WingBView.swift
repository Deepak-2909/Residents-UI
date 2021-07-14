//
//  WingBView.swift
//  ResidentsUI
//
//  Created by Deepak on 13/07/21.
//

import SwiftUI

struct WingBView: View {
    @State var residents: [ResidentModel] = testData
    
    var body: some View {
            NavigationView {
                    ResidentCellViewB()
        }
    }
}

struct WingBView_Previews: PreviewProvider {
    static var previews: some View {
        WingBView()
    }
}

struct ResidentCellViewB: View {
    
    @State var residents: [ResidentModel] = testData
    
    var body: some View {
        List {
            Section(header:
                        Text("201")
                        .font(.title)
            ) {
                ForEach(residents, id: \.id) { resident in
                    if resident.room == 201 {
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
                        Text("202")
                        .font(.title)
            )
            {
                ForEach(residents, id: \.id) { resident in
                    if resident.room == 202 {
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
