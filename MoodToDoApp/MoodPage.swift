//
//  MoodPage.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 8/1/23.
//

import SwiftUI

struct MoodPage: View {
    let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
    private var buttonIcons = [" ⃝", "😝", "🙂", "😐", "😴", "☹️", "😭"]
    private var imageIcons = ["moodBoard1", "moodBoard2", "moodBoard3", "moodBoard4", "moodBoard5", "moodBoard6"]
    @State var boardIndex = 0
    @State var moodIndex = [ 0, 0, 0, 0, 0, 0, 0 ]
    
    var body: some View {
        NavigationStack{
            //add new tracker button
            ZStack{
                blueColor
                    .ignoresSafeArea()
                VStack {
                    VStack{
                        //tracker
                        //day, core data, state property color
                        Text("Mood Tracker")
                            .font(.largeTitle)
                        
                        HStack{
                            Text("Monday")
                                .font(.system(.title, design: .rounded))
                            Button(buttonIcons[moodIndex[0]]) {
                                moodIndex[0] = (moodIndex[0] + 1)%7
                            }
                        }
                        HStack{
                            Text("Tuesday")
                                .font(.title)
                            Button(buttonIcons[moodIndex[1]]) {
                                moodIndex[1] = (moodIndex[1] + 1)%7
                            }
                        }
                        HStack{
                            Text("Wednesday")
                                .font(.title)
                            Button(buttonIcons[moodIndex[2]]) {
                                moodIndex[2] = (moodIndex[2] + 1)%7
                            }
                        }
                        HStack{
                            Text("Thursday")
                                .font(.title)
                            Button(buttonIcons[moodIndex[3]]) {
                                moodIndex[3] = (moodIndex[3] + 1)%7
                            }
                        }
                        HStack{
                            Text("Friday")
                                .font(.title)
                            Button(buttonIcons[moodIndex[4]]) {
                                moodIndex[4] = (moodIndex[4] + 1)%7
                            }
                        }
                        HStack{
                            Text("Saturday")
                                .font(.title)
                            Button(buttonIcons[moodIndex[5]]) {
                                moodIndex[5] = (moodIndex[5] + 1)%7
                            }
                        }
                        HStack{
                            Text("Sunday")
                                .font(.title)
                            Button(buttonIcons[moodIndex[6]]) {
                                moodIndex[6] = (moodIndex[6] + 1)%7
                            }
                        }
                        
                        
                    }
                    .frame(alignment:.top)
                    
                    Spacer(minLength: 10.0)
                    VStack{
                        // Text("Mood Tracker")
                        Button {
                            boardIndex = (boardIndex+1)%6
                        } label: {
                            Image(imageIcons[boardIndex])
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                        }
                    }
                    .padding(110)
                    
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
