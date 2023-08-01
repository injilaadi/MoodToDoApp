//
//  SchedulePage.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 8/1/23.
//

import SwiftUI

struct SchedulePage: View {
    var body: some View {
        let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
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

struct SchedulePage_Previews: PreviewProvider {
    static var previews: some View {
        SchedulePage()
    }
}
