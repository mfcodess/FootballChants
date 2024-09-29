//
//  Manager.swift
//  Football Chants
//
//  Created by Max on 28.09.2024.
//

import Foundation

enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: JobType
}
