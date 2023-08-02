//
//  ContentView.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 7/31/23.
//
// change file
import SwiftUI

struct ContentView: View {
    var positiveMessages = [ "You are quite ravishing today!", "Drink water!"]
    @State var displayedMessage = "You are quite ravishing today!"
    
    var body: some View {
        let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
        ZStack {
            blueColor
                .ignoresSafeArea()
            
            VStack (alignment:.center){
                Text("Mood To Do")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // positive message generator
                Text(displayedMessage)
                Button("") {
                    displayedMessage = positiveMessages [Int.random(in: 0..<positiveMessages.count)]
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color (red: 50/255, green: 80/255, blue: 50/255))
                
                NavigationStack{
                    blueColor
                        .ignoresSafeArea()
                    VStack{
                        
                    }
                        .toolbar{
                            ToolbarItemGroup(placement: .status){
                                NavigationLink(destination: ContentView()) {
                                    Image("HomeIcon")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50.0)
                                       
                                }
                                NavigationLink(destination: SchedulePage()) {
                                        Image("CalendarIcon")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50.0)
                                            
                                }
                                NavigationLink(destination: MoodPage()) {
                                        Image("SmileIcon")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50.0)
                                            
                                }
                            }
                            
                        }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
