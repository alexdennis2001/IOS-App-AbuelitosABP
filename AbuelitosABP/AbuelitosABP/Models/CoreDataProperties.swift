//
//  Journal+CoreDataProperties.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 13/10/22.
//

import Foundation
import CoreData

extension Journal {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Journal> {
        return NSFetchRequest<Journal>(entityName: "Journal")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var date: Date?
    @NSManaged public var note: String?
    @NSManaged public var rating: Int16
    
    var note_wrapped: String {
        note ?? ""
    }
    
    
    
}

extension Journal : Identifiable {

}
