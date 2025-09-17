import SwiftUI

@main
struct StepOutWatch_Watch_AppApp: App {
    private let store = Store()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(store)
        }
    }
}
