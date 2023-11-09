import SwiftUI

struct ContentView: View {
    @State private var lightMode = false
    
    var body: some View {
        Form{
            Toggle("designer vs dev toggle", isOn: $lightMode)
                .toggleStyle(MemeToggleStyle())
        }
    }
}

#Preview {
    ContentView()
}
