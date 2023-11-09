import SwiftUI

struct Stars: View {
    var body: some View {
        ZStack{
            Image(systemName: "sparkles")
            
            Image(systemName: "sparkle")
                .offset(x: -20, y: 10)
                .font(.system(size: 5))

            Image(systemName: "sparkle")
                .offset(x: -40, y: -10)
                .font(.system(size: 5))
            
            Image(systemName: "sparkle")
                .offset(x: -20, y: -5)
                .font(.system(size: 10))

            Image(systemName: "sparkle")
                .offset(x: -50, y: 0)
                .font(.system(size: 10))
        }
    }
}

#Preview {
    Stars()
}
