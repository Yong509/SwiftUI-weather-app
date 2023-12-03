import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                
                MainWeatherStatusView(imageName: isNight
                                      ? "moon.stars.fill"
                                      : "cloud.sun.fill",
                                      temperature: 30)
            HStack(spacing: 20){
                ForEach(WeatherDayModel.mockWeatherDayData, 
                        id: \.self.ID){
                        weather in WeatherDayView(
                            dayOfWeek: weather.dayOfWeek,
                            imageName: weather.imageName,
                            temperature: weather.temperature
                        )
                    }
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white
                    )
                       
                }
                Spacer()
            }
        }
    }
}
   
    


#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature) °C")
                .font(.system(size: 20,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct MainWeatherStatusView: View{
    var imageName: String
    var temperature: Int
    var body: some View{
        VStack{
            Text("Bangkok, TH")
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            VStack(spacing: 10){
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                
                Text("\(temperature) °C")
                    .font(.system(size: 70,weight: .medium))
                    .foregroundColor(.white)
            }
            .padding(.bottom, 40)
        }
    }
}

struct BackgroundView: View{
    
    var isNight: Bool
    
    var body: some View{
        LinearGradient(gradient:
                        Gradient(
                            colors:[
                                isNight
                                ? .black
                                : .blue,
                                isNight
                                ? .gray
                                :  Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing
        )
        .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


