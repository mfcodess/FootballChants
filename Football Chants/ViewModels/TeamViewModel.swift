//
//  TeamViewModel.swift
//  Football Chants
//
//  Created by Max on 28.09.2024.
//

import Foundation

class TeamViewModel {
    
    private(set) var teams: [Team] = [
        
        Team(id: .arsenal,
             name: "Arsenal",
             info: "The Arsenal Football Club, commonly known as simply Arsenal, is a professional football club based in Holloway, North London, England. They compete in the Premier.",
             manager: .init(name: "Mikel Arteta", job: .manager),
             founded: "October 1886"),
        
        Team(id: .astonVilla,
             name: "Arsenal",
             info: "The Arsenal Football Club, commonly known as simply Arsenal, is a professional football club based in Holloway, North London, England. They compete in the Premier League, the top tier of English football. In domestic football, Arsenal have won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields, and a Football League Centenary Trophy. In European football, they have one European Cup Winners' Cup and one Inter-Cities Fairs Cup. In terms of trophies won, it is the third-most successful club in English football.",
             manager: .init(name: "Mikel Arteta", job: .manager),
             founded: "October 1886"),
        
        Team(id: .burnley,
             name: "Arsenal",
             info: "The Arsenal Football Club, commonly known as simply Arsenal, is a professional football club based in Holloway, North London, England. They compete in the Premier League, the top tier of English football. In domestic football, Arsenal have won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields, and a Football League Centenary Trophy. In European football, they have one European Cup Winners' Cup and one Inter-Cities Fairs Cup. In terms of trophies won, it is the third-most successful club in English football.",
             manager: .init(name: "Mikel Arteta", job: .manager),
             founded: "October 1886"),
        
        Team(id: .brighton,
             name: "Arsenal",
             info: "The Arsenal Football Club, commonly known as simply Arsenal, is a professional football club based in Holloway, North London, England. They compete in the Premier League, the top tier of English football. In domestic football, Arsenal have won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields, and a Football League Centenary Trophy. In European football, they have one European Cup Winners' Cup and one Inter-Cities Fairs Cup. In terms of trophies won, it is the third-most successful club in English football.",
             manager: .init(name: "Mikel Arteta", job: .manager),
             founded: "October 1886"),
        
        Team(id: .fulham,
             name: "Arsenal",
             info: "The Arsenal Football Club, commonly known as simply Arsenal, is a professional football club based in Holloway, North London, England. They compete in the Premier League, the top tier of English football. In domestic football, Arsenal have won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields, and a Football League Centenary Trophy. In European football, they have one European Cup Winners' Cup and one Inter-Cities Fairs Cup. In terms of trophies won, it is the third-most successful club in English football.",
             manager: .init(name: "Mikel Arteta", job: .manager),
             founded: "October 1886"),
        
        Team(id: .everton,
             name: "Arsenal",
             info: "The Arsenal Football Club, commonly known as simply Arsenal, is a professional football club based in Holloway, North London, England. They compete in the Premier League, the top tier of English football. In domestic football, Arsenal have won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields, and a Football League Centenary Trophy. In European football, they have one European Cup Winners' Cup and one Inter-Cities Fairs Cup. In terms of trophies won, it is the third-most successful club in English football.",
             manager: .init(name: "Mikel Arteta", job: .manager),
             founded: "October 1886")
    ]
    
    
    func toggleModel(for team: Team) {
        teams.forEach { item in
            if item.id == team.id {
                item.isPlaying.toggle()
            } else {
                item.isPlaying = false
            }
        }
    }
}
