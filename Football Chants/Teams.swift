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
    case everton
    case fulham
}

extension TeamType {
    
    var badge: UIImage {
        switch self {
            
        case .arsenal:
            return UIImage(named: "Arsenal")!
        case .astonVilla:
            return UIImage(named: "AstonVilla")!
        case .brighton:
            return UIImage(named: "Brighton")!
        case .burnley:
            return UIImage(named: "Burnley")!
        case .everton:
            return UIImage(named: "Everton")!
        case .fulham:
            return UIImage(named: "Fulham")!
        }
    }
    
    var background: UIColor {
        switch self {
            
        case .arsenal:
            return UIColor(named: "arsenalColorr")!
        case .astonVilla:
            return UIColor(named: "astonVillaColorr")!
        case .brighton:
            return UIColor(named: "brightonColorr")!
        case .burnley:
            return UIColor(named: "burnleyColorr")!
        case .everton:
            return UIColor(named: "evertonColorr")!
        case .fulham:
            return UIColor(named: "fulhamColorr")!
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
        case .everton:
            return "everton"
        case .fulham:
            return "fulham"
        }
    }
}



