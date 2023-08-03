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
    
    var body: some View {
        if isActive{
            let persistenceController = PersistenceController.shared
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        } else{
            VStack{
                VStack{
                    Text("MotoDO")
                        .font(.system(size:80))
                        .foregroundColor(.blue)
                    
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

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
