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
    private var imageIcons = ["moodBoard1", "moodBoard2", "moodBoard3", "moodBoard4", "moodBoard5" ]
    @State var boardIndex = 0
    @State var moodIndex = [ 0, 0, 0, 0, 0, 0, 0 ]
    
    var body: some View {
        NavigationStack{
            //add new tracker button
            ZStack{
                blueColor
                    .ignoresSafeArea()
                VStack {
                    //Spacer()
                        //.padding()
                    Text("Mood Tracker")
                        .font(.largeTitle)
                        .padding()
                    VStack(alignment: .leading){
                        //tracker
                        //day, core data, state property color
                        
                        
                        HStack{
                            Text("Monday")
                                .font(.system(.title, design: .rounded))
                                .multilineTextAlignment(.leading)
                            Button(buttonIcons[moodIndex[0]]) {
                                moodIndex[0] = (moodIndex[0] + 1)%7
                            }
                            Spacer()
                        }
                        .frame(alignment: .leading)
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
                    .padding(20)
                    
                    Spacer(minLength: 5)
                    VStack{
                        // Text("Mood Tracker")
                        Button {
                            boardIndex = (boardIndex+1)%6
                        } label: {
                            Image(imageIcons[boardIndex])
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                //.border(.black, width:4)
                                .padding()
                                
                            
                        }
                    }
                    .padding()
                    Spacer()
                    
                }
                .toolbar{
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: ContentView()) {
                            Image("HomeIcon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                                .padding()
                        }
                        NavigationLink(destination: SchedulePage()) {
                            Image("CalendarIcon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                                .padding()
                        }
                        NavigationLink(destination: MoodPage()) {
                            Image("SmileIcon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                                .padding()
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    
}

struct MoodPage_Previews: PreviewProvider {
    static var previews: some View {
        MoodPage()
    }
}
