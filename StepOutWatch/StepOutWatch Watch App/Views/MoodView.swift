import SwiftUI

struct MoodView: View {
    @Environment(Store.self) var store
    var body: some View {
        @Bindable var bStore = store
        
        VStack(spacing: 12) {
            Text("I am feeling")
                .font(.system(.callout, weight: .bold))
                .foregroundStyle(.tint)
            
            Stepper(value: $bStore.moodIndex,
                    in: (0...store.maxMoodRange)) {
                Text(store.returnMood().emoji)
            }
            
            AddMoodView(store: _store, mood: store.returnMood())
        }
        .padding()
    }
}


#Preview {
    MoodView()
        .environment(Store())
}


