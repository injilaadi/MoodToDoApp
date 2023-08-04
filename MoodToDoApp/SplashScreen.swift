//
//  SplashScreen.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 8/3/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
    var body: some View {
        //58, 90, 171
        ZStack{
            Color(red: 58/255, green: 90/255, blue: 171/255)
                .ignoresSafeArea()
            if isActive{
                let persistenceController = PersistenceController.shared
                ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
            } else{
                VStack{
                    VStack{
                        Text("motodo")
                            .font(.system(size:80))
                            .foregroundColor(Color(red: 240/255, green: 248/255, blue: 255/255))
                            
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration:1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: . now() + 2.0){ withAnimation{
                        self.isActive = true
                    }
                        
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
