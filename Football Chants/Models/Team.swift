//
//  Team.swift
//  Football Chants
//
//  Created by Max on 28.09.2024.
//

import Foundation


struct Team {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
}
