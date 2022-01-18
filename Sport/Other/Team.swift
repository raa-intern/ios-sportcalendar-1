//
//  Team.swift


//MARK: Prototype file need custom to current API
import Foundation

struct TeamResponse: Codable {
    var teams: [Team]
}

struct EventTeam: Codable {
    let id: Int
    let name: String
    let gender: String
    let sport: String
    
    init(id: Int, name: String, gender: String, sport: String) {
        self.id = id
        self.name = name
        self.gender = gender
        self.sport = sport
    }
    
    init() {
        self.id = 0
        self.name = ""
        self.gender = ""
        self.sport = ""
    }
}

struct Team: Codable {
    let id: Int
    let name: String
    let gender: String
    let sport: String
    let events: [TeamEvent]
    
    init(id: Int, name: String, gender: String, sport: String, events: [TeamEvent]) {
        self.id = id
        self.name = name
        self.gender = gender
        self.sport = sport
        self.events = events
    }
}
