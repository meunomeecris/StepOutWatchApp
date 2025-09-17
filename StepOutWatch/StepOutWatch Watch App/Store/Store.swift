import Foundation

@Observable class Store {
    var moods: [Mood] = Mood.allCases
    
    var dailyMood: [Mood] = []
    var maxMoodRange: Int { return moods.count - 1 }
    var moodIndex = 5
    var isMissionStarted: Bool = false
    
    func returnMood() -> Mood {
        moods[moodIndex]
    }
    
}
