//
//  ContentView.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 7/31/23.
//
//new app
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
        ZStack {
            NavigationStack{
                VStack{
                    .toolbar{
                        ToolbarItemGroup(placement: .status){
                            NavigationLink(destination: SchedulePage()) {
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
                            NavigationLink(destination: SchedulePage()) {
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
