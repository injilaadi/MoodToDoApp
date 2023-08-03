//
//  MoodPage.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 8/1/23.
//

import SwiftUI

struct MoodPage: View {
    let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
    private var buttonIcons = [" ⃝", "🙂", "😐", "☹️"]
    @State var moodIndex = [ 0, 0, 0, 0, 0, 0, 0 ]
    
    var body: some View {
        NavigationStack{
            //add new tracker button
            ZStack{
                blueColor
                    .ignoresSafeArea()
                VStack{
                    //tracker
                    //day, core data, state property color
                    Text("Mood Tracker")
                    
                    HStack{
                        Text("Monday")
                        Button(buttonIcons[moodIndex[0]]) {
                            moodIndex[0] = (moodIndex[0] + 1)%4
                        }
                    }
                    HStack{
                        Text("Tuesday")
                        Button(buttonIcons[moodIndex[1]]) {
                            moodIndex[1] = (moodIndex[1] + 1)%4
                        }
                    }
                    HStack{
                        Text("Wednesday")
                        Button(buttonIcons[moodIndex[2]]) {
                            moodIndex[2] = (moodIndex[2] + 1)%4
                        }
                    }
                    HStack{
                        Text("Thursday")
                        Button(buttonIcons[moodIndex[3]]) {
                            moodIndex[3] = (moodIndex[3] + 1)%4
                        }
                    }
                    HStack{
                        Text("Friday")
                        Button(buttonIcons[moodIndex[4]]) {
                            moodIndex[4] = (moodIndex[4] + 1)%4
                        }
                    }
                    HStack{
                        Text("Saturday")
                        Button(buttonIcons[moodIndex[5]]) {
                            moodIndex[5] = (moodIndex[5] + 1)%4
                        }
                    }
                    HStack{
                        Text("Sunday")
                        Button(buttonIcons[moodIndex[6]]) {
                            moodIndex[6] = (moodIndex[6] + 1)%4
                        }
                    }
                    
                    
                }
                
                VStack{
                   // Text("Mood Tracker")
                }
                .toolbar{
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: ContentView()) {
                            Image("HomeIcon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                            
                        }
                        NavigationLink(destination: SchedulePage()) {
                            Image("CalendarIcon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                            
                        }
                        NavigationLink(destination: MoodPage()) {
                            Image("SmileIcon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                            
                        }
                    }
                    
                }
            }
        }
    }
    
    
}

struct MoodPage_Previews: PreviewProvider {
    static var previews: some View {
        MoodPage()
    }
}
