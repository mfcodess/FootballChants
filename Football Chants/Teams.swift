//
//  Teams.swift
//  Football Chants
//
//  Created by Max on 28.09.2024.
//

import UIKit


enum TeamType {
    case arsenal
    case astonVilla
    case brighton
    case burnley
    case chelsea
    case everton
    case fulham
}

extension TeamType {
    
    var badge: UIImage {
        switch self {
            
        case .arsenal:
            return UIImage(named: "Arsenal")!
        case .astonVilla:
            return UIImage(named: "")!
        case .brighton:
            return UIImage(named: "")!
        case .burnley:
            return UIImage(named: "")!
        case .chelsea:
            return UIImage(named: "")!
        case .everton:
            return UIImage(named: "")!
        case .fulham:
            return UIImage(named: "")!
        }
    }
    
    var background: UIColor {
        switch self {
            
        case .arsenal:
            return .red
        case .astonVilla:
            return UIColor(named: "")!
        case .brighton:
            return UIColor(named: "")!
        case .burnley:
            return UIColor(named: "")!
        case .chelsea:
            return UIColor(named: "")!
        case .everton:
            return UIColor(named: "")!
        case .fulham:
            return UIColor(named: "")!
        }
    }
    
    var chantFile: String {
        switch self {
            
        case .arsenal:
            return "arsenal"
        case .astonVilla:
            return "aston_villa"
        case .brighton:
            return "brighton"
        case .burnley:
            return "burnley"
        case .chelsea:
            return "chelsea"
        case .everton:
            return "everton"
        case .fulham:
            return "fulham"
        }
    }
}



