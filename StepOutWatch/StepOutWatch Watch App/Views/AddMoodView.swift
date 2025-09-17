import SwiftUI

struct AddMoodView: View {
    @Environment(Store.self) var store
    var mood: Mood
    
    var body: some View {
        @Bindable var bStore = store
        
        Button(mood.description.capitalized) {
            store.dailyMood.append(mood)
            store.isMissionStarted = true
        }
        .sheet(isPresented: $bStore.isMissionStarted) {
            MissionView()
        }
    }
}

#Preview {
    AddMoodView(mood: Mood(description: "Happy", emoji: "😁", colorName: "green"))
        .environment(Store())
}
