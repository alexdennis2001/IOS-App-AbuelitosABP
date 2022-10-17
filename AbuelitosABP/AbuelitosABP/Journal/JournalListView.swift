//
//  JournalListView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 13/10/22.
//

import SwiftUI
import CoreData

struct JournalListView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Journal.date, ascending: false)],
        animation: .default)
    private var journal: FetchedResults<Journal>
    
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            List {
                ForEach(journal) { journal in
                    NavigationLink {
                        JournalDetailView(mode: .edit, journal: journal)
                    } label: {
                        JournalRowView(journal: journal)
                    }
                }
                .onDelete(perform: deleteJournal)
            }
            VStack{
                Spacer()
                
                NavigationLink {
                    JournalDetailView(mode: .add, journal: Journal())
                } label: {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                }
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .clipShape(Circle())
            }
            .padding(.bottom, 60)
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
            }
        }
        .navigationBarTitle("Diario Personal")
        
    }
    
    private func deleteJournal(offsets: IndexSet) {
        withAnimation {
            offsets.map { journal[$0] }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

struct JournalListView_Previews: PreviewProvider {
    static var previews: some View {
        JournalListView()
    }
}
