//
//  Profile.swift
//  Landmarks_MRC
//
//  Created by Miranda Ramirez Cospin on 11/6/20.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool
    var seasonalPhoto: Season
    var goalDate: Date
    
    static let `default` = Self(username: "Miranda Ramirez Cospin", prefersNotifications: true, seasonalPhoto: .summer)
    
    init(username: String, prefersNotifications: Bool = true, seasonalPhoto: Season = .summer) {
        self.username = username
        self.prefersNotifications = prefersNotifications
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = Date()
    }
    
    enum Season: String, CaseIterable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}

