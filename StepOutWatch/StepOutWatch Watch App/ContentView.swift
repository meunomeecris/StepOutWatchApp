import SwiftUI

struct ContentView: View {
    @Environment(Store.self) var store
    var body: some View {
        MoodView()
    }
}

#Preview {
    ContentView()
        .environment(Store())
}
