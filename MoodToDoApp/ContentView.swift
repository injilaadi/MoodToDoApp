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
        ZStack {
            NavigationStack {
                NavigationLink(destination: ContentView()) {
                    Image("")
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
