//
//  ScheduleView.swift
//  MoodToDoApp
//
//  Created by Tugs Oyun Enkh Amgalan on 8/2/23.
//

import SwiftUI

struct ScheduleView: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask: Bool
    
    var body: some View {
        ZStack{
            let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
            blueColor
                .ignoresSafeArea()
            VStack {
                
                Text("Task Title:")
                TextField("Enter the task description...", text: $title)
                
                Toggle(isOn: $isImportant) {
                    Text("Is it important?")
                }
                
                Button(action: {
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    self.showNewTask = false
                }) {
                    Text("Add")
                }
            }
            .padding()
            
        }
    }
    
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(title: "", isImportant: false, showNewTask: .constant(true))
    }
}
