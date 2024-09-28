//
//  Manager.swift
//  Football Chants
//
//  Created by Max on 28.09.2024.
//

import Foundation

enum JobType {
    case manager
    case headCoach
}

struct Manager {
    let name: String
    let jobs: JobType
}
