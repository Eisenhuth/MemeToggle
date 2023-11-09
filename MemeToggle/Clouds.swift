import SwiftUI

struct Clouds: View {
    var body: some View {
        ZStack{
            Cloud()
                .foregroundStyle(Color(red: 211/255, green: 211/255, blue: 211/255))
                .offset(x: -5, y: -5)
            
            Cloud()
                .foregroundStyle(.white)
        }
    }
}

struct Cloud: View{
    var body: some View{
        ZStack{
            Circle()
                .frame(width: 20)
                .offset(x: -50, y: 20)
            
            Circle()
                .frame(width: 20)
                .offset(x: -40, y: 20)
            
            Circle()
                .frame(width: 20)
                .offset(x: -50, y: 15)
            
            Circle()
                .frame(width: 50)
                .offset(x: 40, y: 15)
            
            Circle()
                .frame(width: 25)
                .offset(x: 20, y: 20)
            
            Circle()
                .frame(width: 25)
                .offset(x: 0, y: 20)
            
            Circle()
                .frame(width: 30)
                .offset(x: -10, y: 20)
            
            Circle()
                .frame(width: 15)
                .offset(x: -30, y: 20)
            
            Circle()
                .frame(width: 25)
                .offset(x: 40, y: 0)
            
            Circle()
                .frame(width: 15)
                .offset(x: 50, y: -10)
        }
    }
}

#Preview {
    Clouds()
}
