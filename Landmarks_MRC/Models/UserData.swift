//
//  UserData.swift
//  Landmarks_MRC
//
//  Created by Miranda Ramirez Cospin on 11/5/20.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
