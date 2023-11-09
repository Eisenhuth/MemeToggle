import SwiftUI

struct MemeToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.label
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(configuration.isOn ? Color(red: 0, green: 1/255, blue: 18/255) : .blue.opacity(0.70))
                .overlay {
                    
                    Stars()
                        .offset(y: configuration.isOn ? 0 : -50)
                        .foregroundStyle(.white)
                    
                    Clouds()
                        .offset(y: configuration.isOn ? 50 : 5)
                    
                    SunAndMoon(isOn: configuration.isOn)
                    .offset(x: configuration.isOn ? 30 : -30)
                    
                    
                }
                .frame(width: 100, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}
