//
//  JournalRowView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 14/10/22.
//

import SwiftUI


struct JournalRowView: View {
    
    var journal: Journal
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "d-MM-y"
        return formatter
    }

    
    var body: some View {
        VStack {
            HStack {
                Text(dateFormatter.string(from: journal.date!))
            }
        }
    }
}

struct JournalRowView_Previews: PreviewProvider {
    static var previews: some View {
        JournalRowView(journal: Journal())
    }
}
