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

//2.    Читаемость: Код стал более понятным — видно, что мы просто получаем значок команды, а не пишем много строк кода.
//3.    Упрощение изменений: Если нужно будет изменить логику получения значка, мы сделаем это в одном месте, а не везде по коду.
//Таким образом, используя вычисляемое свойство, мы избегаем повторяющегося кода, что делает наш код более компактным

extension TeamType {
    
    var badge: UIImage {
        switch self {
            
        case .arsenal:
            return UIImage(named: "")!
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
            return UIColor(named: "")!
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



