//
//  SchedulePage.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 8/1/23.
//

import SwiftUI

struct SchedulePage: View {
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>
    
    var body: some View {
        let blueColor = Color(red: 191/255, green: 215/255, blue: 237/255)
        NavigationStack{
            
            ZStack{
                blueColor
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Text("To Do List")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                        Spacer()
                        
                        Button(action: {
                            self.showNewTask = true
                        }) {
                            Text ("+")
                                .font(.system(size: 40))
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
                
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
        List {
            
            ForEach (toDoItems) { toDoItem in
                if toDoItem.isImportant {
                    Text("‼️" + (toDoItem.title ?? "No title"))
                        
                } else {
                    Text(toDoItem.title ?? "No title")
                        
                }
            }
            .onDelete(perform: deleteTask)
            
           
        }
       
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
       
        
        
        if showNewTask {
            ScheduleView(title: "", isImportant: false, showNewTask: $showNewTask)
        }
    }
    
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems [$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print (error)
            }
        }
    }
    
    
}

struct SchedulePage_Previews: PreviewProvider {
    static var previews: some View {
        SchedulePage()
    }
}
