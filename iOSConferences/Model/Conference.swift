//
// Created by Smital on 29/05/21.
// Copyright (c) 2021 JetBrains. All rights reserved.
//

import Foundation

class Conference: Codable, Identifiable {
    var name: String
    var location: String
    var start: Date
    var end: Date?
    var link: String
}