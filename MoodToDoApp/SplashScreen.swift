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
        VStack{
            VStack{
                Text("MotoDO")
                    .font(.system(size:80))
                    .foregroundColor(.blue)
                
            }
            
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
