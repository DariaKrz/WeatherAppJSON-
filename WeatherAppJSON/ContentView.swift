//
//  ContentView.swift
//  WeatherAppJSON
//
//  Created by Дарья Кукурудза on 13.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Odesa")
                    .foregroundColor(.white)
                    .font(.system(size: 45, weight: .semibold))
                    .padding(2)
                Text("23°C")
                    .foregroundColor(.white)
                    .font(.system(size: 75, weight: .bold))
                    .padding(.bottom, 150)
                
                //Spacer(20)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 10) {
                        seeWeekDay(nameImage: "sun.max", temperature: "23°C", day: "Monday")
                        seeWeekDay(nameImage: "sun.min", temperature: "24°C", day: "Tuesday")
                        seeWeekDay(nameImage: "sun.max", temperature: "25°C", day: "Wendsday")
                        seeWeekDay(nameImage: "sun.min", temperature: "24°C", day: "Thursday")
                        seeWeekDay(nameImage: "sun.max", temperature: "22°C", day: "Friday")
                        seeWeekDay(nameImage: "sun.min", temperature: "23°C", day: "Saturday")
                    }
                }
                .padding(.top, 150)
                //.background(.black)
                
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [.cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .ignoresSafeArea()
    }
    

}

@ViewBuilder
func seeWeekDay(nameImage: String, temperature: String, day: String) -> some View {
    VStack {
        Image(systemName: nameImage)
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.white)
            .padding(.bottom, 10)
        Text(temperature)
            .foregroundColor(.white)
            .font(.system(size: 25, weight: .semibold))
            .padding(.bottom, 5)
        Text(day)
            .foregroundColor(.white)
            .font(.system(size: 15, weight: .bold))
    }
    .frame(width: 90, height: 150)
    //.background(.gray)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
