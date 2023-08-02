//
//  MoodPage.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 8/1/23.
//

import SwiftUI

struct MoodPage: View {
    var body: some View {
        let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
        @State var button = " ⃝"
        NavigationStack{
            
            ZStack{
                blueColor
                    .ignoresSafeArea()
                VStack{
                    //tracker
                    //day, core data, state property color,
                    Text("Mood Tracker")
                    HStack{
                        Text("Monday")
                        Button(button) {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        
                        
                       
                       
                        
                    }
                    HStack{
                        Text("Tuesday")
                        
                    }
                    HStack{
                        Text("Wednesday")
                        
                    }
                    HStack{
                        Text("Thursday")
                        
                    }
                    HStack{
                        Text("Friday")
                        
                    }
                    HStack{
                        Text("Saturday")
                        
                    }
                    HStack{
                        Text("Sunday")
                        
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
