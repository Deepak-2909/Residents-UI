//
//  ResidentsModel.swift
//  ResidentsUI
//
//  Created by Deepak on 14/07/21.
//

import Combine
import Foundation
import SwiftUI

struct ResidentModel: Identifiable {
    let id: String
    let name: String
    let wing: Character
    let room: Int
    var bookmarked: Bool
    let committe: String
    let job: String
    let jobPlace: String
    let quote: String
    let image: String
    
    init(id: String = UUID().uuidString, name: String, wing: Character, room: Int, bookmarked: Bool, committe: String, job: String, jobPlace: String, quote: String, image: String) {
        self.id = id
        self.name = name
        self.wing = wing
        self.room = room
        self.bookmarked = bookmarked
        self.committe = committe
        self.job = job
        self.jobPlace = jobPlace
        self.quote = quote
        self.image = image
    }
    
    func isBookmarked() -> ResidentModel {
        return ResidentModel(id: id, name: name, wing: wing, room: room, bookmarked: !bookmarked, committe: committe, job: job, jobPlace: jobPlace, quote: quote, image: image)
    }
}

#if DEBUG
var testData = [
    ResidentModel(name: "Grace Kelly", wing: "A", room: 101, bookmarked: false, committe: "COMMITTE MEMBER", job: "", jobPlace: "", quote: "", image: "Grace Kelly"),
    ResidentModel(name: "Amy Johnson", wing: "A", room: 101, bookmarked: false, committe: "", job: "Senior Vice President, Marketing", jobPlace: "CRYOBOT SYSTEMS", quote: "Success is not easy and is certainly not for lazy.", image: "Amy Johnson"),
    ResidentModel(name: "Charlie Tabbot", wing: "A", room: 102, bookmarked: false, committe: "COMMITTE MEMBER, MODERATOR", job: "", jobPlace: "", quote: "", image: "Charlie Tabbot"),
    ResidentModel(name: "Stephan Blarrisk", wing: "A", room: 102, bookmarked: false, committe: "", job: "", jobPlace: "", quote: "The biggest slap to your enemies is your success.", image: "Stephan Blarrisk"),
    ResidentModel(name: "Toby Snow", wing: "A", room: 102, bookmarked: false, committe: "COMMITTE MEMBER", job: "General Manager, SE Asia", jobPlace: "MASTIFF SPACE MINING", quote: "Great people talk about ideas, medium people talk about themselves & small people talk about others.", image: "Toby Snow"),
    ResidentModel(name: "Margaret Brown", wing: "A", room: 103, bookmarked: false, committe: "", job: "", jobPlace: "", quote: "", image: "Margaret Brown"),
    ResidentModel(name: "Keith Samuels", wing: "A", room: 103, bookmarked: false, committe: "", job: "Senior Faculty", jobPlace: "ST DRUID COLLEGE", quote: "", image: "Keith Samuels"),
    ResidentModel(name: "Rahul Singh", wing: "B", room: 201, bookmarked: false, committe: "", job: "", jobPlace: "", quote: "", image: "Rahul Singh"),
    ResidentModel(name: "Chandni Wong", wing: "B", room: 201, bookmarked: false, committe: "", job: "Holistic healer", jobPlace: "FAITH MIRACLES WELLNESS", quote: "Push yourself, because no one else is going to do it for you.", image: "Chandni Wong"),
    ResidentModel(name: "Sarah Duke", wing: "B", room: 202, bookmarked: false, committe: "", job: "", jobPlace: "", quote: "", image: "Sarah Duke"),
    ResidentModel(name: "Dominique Carlton", wing: "B", room: 202, bookmarked: false, committe: "", job: "", jobPlace: "", quote: "", image: "Dominique Carlton"),

]
#endif
