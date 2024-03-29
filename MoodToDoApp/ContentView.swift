//
//  ContentView.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 7/31/23.
//
//

import SwiftUI

struct ContentView: View {
    var positiveMessages = ["You are quite ravishing today!", "Drink water!", "You are amazing!", "Wow, you're brilliant!", "Take a break, you deserve it!", "All limitations are self-imposed.", "Every moment is a fresh beginning.", "All smiles here :)"]
    @State var displayedMessage = "Click here!"
    let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
    
    var body: some View {
    
        NavigationStack{
            ZStack{
                blueColor
                    .ignoresSafeArea()
                
                VStack (alignment:.center){
                    
//                    Text("motodo")
//                        .font(.largeTitle)
//                        .fontWeight(.semibold)
                    
                    // positive message generator
                    
                    
                    Text(displayedMessage)
                        .foregroundColor(Color(red:24/255.0, green:24/255.0, blue:24/255.0))
                        .font((.custom("CourierPrimer-BoldItalic", fixedSize: 20)))
                    Button("") {
                        var intRandom = Int.random(in: 0..<positiveMessages.count)
                        while positiveMessages [intRandom] == displayedMessage{
                            intRandom = Int.random(in: 0..<positiveMessages.count)
                            
                        }
                        displayedMessage = positiveMessages[intRandom]
                    }
                    
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color (red: 32/255, green: 114/255, blue: 175/255))
                    .padding()
                    
                    
                    
                }
                .frame(width: 300, height: 200)
                .background(.white)
                .cornerRadius(25)
                
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
        }
        .navigationBarHidden(true)
        
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

