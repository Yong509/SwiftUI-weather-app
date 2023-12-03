struct WeatherDayModel{
    var ID : Int
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    static let mockWeatherDayData: [WeatherDayModel] = [
        WeatherDayModel(ID: 1,dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 32),
        WeatherDayModel(ID: 2,dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 35),
        WeatherDayModel(ID: 3,dayOfWeek: "THU", imageName: "wind", temperature: 32),
        WeatherDayModel(ID: 4,dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 31),
        WeatherDayModel(ID: 5,dayOfWeek: "SAT", imageName: "cloud.drizzle.fill", temperature: 30),
    ]
}


