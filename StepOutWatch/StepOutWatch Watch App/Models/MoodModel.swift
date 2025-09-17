import Foundation
import SwiftUI

struct Mood {
    var description: String
    var emoji: String
    var colorName: String
    
    var color: Color {
        switch colorName {
        case "red": return .red
        case "blue": return .blue
        case "brown": return .brown
        case "yellow": return .yellow
        case "green": return .green
        default: return .indigo
        }
    }
}

extension Mood {
    static let allCases: [Mood] = [
        Mood(description: "angry", emoji: "😡", colorName: "red"),
        Mood(description: "sad", emoji: "😢", colorName: "blue"),
        Mood(description: "anxious", emoji: "😰", colorName: "blue"),
        Mood(description: "bored", emoji: "😐", colorName: "brown"),
        Mood(description: "tired", emoji: "😴", colorName: "brown"),
        Mood(description: "okay", emoji: "🙂", colorName: "yellow"),
        Mood(description: "happy", emoji: "😄", colorName: "yellow"),
        Mood(description: "confident", emoji: "😏", colorName: "green"),
        Mood(description: "motivated", emoji: "😉", colorName: "green")
    ]
}
