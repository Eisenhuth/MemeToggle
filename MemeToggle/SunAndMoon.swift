import SwiftUI

struct SunAndMoon: View {
    var isOn: Bool
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(.white.opacity(0.10))
                .frame(width: 60)
                .fixedSize()
                .clipShape(.capsule)
                .frame(width: 100, height: 40)
            
            Circle()
                .foregroundStyle(.white.opacity(0.10))
                .frame(width: 90)
                .fixedSize()
                .clipShape(.capsule)
                .frame(width: 100, height: 40)
            
            Circle()
                .foregroundStyle(.white.opacity(0.10))
                .frame(width: 120)
                .fixedSize()
                .clipShape(.capsule)
                .frame(width: 100, height: 40)
            
            
            Circle() // sun/moon
                .fill(isOn ? .white : .yellow)
                .frame(width: 30)
                .shadow(color: .white, radius: 2, x: -0.5, y: -0.5)
                .shadow(color: .black, radius: 2, x:  0.5, y:  0.5)
            
            Circle()
                .fill(isOn ? .black.opacity(0.5) : .yellow)
                .frame(width: 8)
                .offset(x: -5, y: 2.5)
            
            Circle()
                .fill(isOn ? .black.opacity(0.5) : .yellow)
                .frame(width: 5)
                .offset(x: 2.5, y: -5)
            
            Circle()
                .fill(isOn ? .black.opacity(0.5) : .yellow)
                .frame(width: 5)
                .offset(x: 5, y: 5)
        }
    }
}

#Preview {
    SunAndMoon(isOn: true)
}
