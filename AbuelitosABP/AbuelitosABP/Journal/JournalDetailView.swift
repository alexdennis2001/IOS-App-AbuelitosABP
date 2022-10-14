//
//  JournalDetailView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 14/10/22.
//

import SwiftUI

struct JournalDetailView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) var presentationMode
    
    var mode: Mode = .add
    var journal: Journal
    @State var noteEdit: String = ""
    @State var ratingEdit: Int = 3
    @State var journalDate: Date = Date()
    
    @State private var isEditing = false
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    
    // Variable para darle formate a las variables tipo fecha
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MMM/dd"
        return formatter
    }
    
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                
                VStack{
                    DatePicker(selection: $journalDate, in: ...Date(), displayedComponents: .date) {
                        Text("Fecha")
                            .font(.system(size: 24, weight: .semibold))
                    }
                    
                }
                
                Section {
                    TextEditor(text: $noteEdit)
                        .cornerRadius(5)
                } header: {
                    Text("Notas")
                        .font(.system(size: 24, weight: .semibold))
                }
                
                
                
                Text("Calificación")
                    .font(.system(size: 24, weight: .semibold))
                
                HStack {
                    
                    ForEach(Satisfaction.satisfactions) { satisfaction in
                        Image(satisfaction.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.horizontal, 10)
                            .opacity(ratingEdit == satisfaction.rating ? 1.0 : 0.3)
                            .onTapGesture {
                                ratingEdit = satisfaction.rating
                            }
                    }
                    
                    
                    
                }
                .padding(.bottom, 10)
                
                Button {
                    if mode == .add {
                        addJournal()
                        presentationMode.wrappedValue.dismiss()
                    }
                    else {
                        editJournal()
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                } label: {
                    Text(mode == .add ? "Agregar" : "Editar")
                        .font(.system(size: 24, weight: .semibold))
                }
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .padding(.horizontal, 20)
            .onAppear {
                if mode == .edit {
                    noteEdit = journal.note_wrapped
                    ratingEdit = Int(journal.rating)
                    journalDate = journal.date!
                }
                else {
                    noteEdit = ""
                    ratingEdit = 3
                    
                }
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitle("Diario del día")
    }
    
    private func addJournal() {
        withAnimation {
            let newJournal = Journal(context: viewContext)
            newJournal.id = UUID()
            newJournal.note = noteEdit
            newJournal.rating = Int16(ratingEdit)
            newJournal.date = journalDate
            
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
    
    private func editJournal() {
        withAnimation {
            viewContext.performAndWait {
                
                journal.note = noteEdit
                journal.rating = Int16(ratingEdit)
                journal.date = journalDate
                
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
    
    
}

struct JournalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JournalDetailView(journal: Journal())
    }
}
