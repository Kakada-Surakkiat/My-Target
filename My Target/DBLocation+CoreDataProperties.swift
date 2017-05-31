//
//  DBLocation+CoreDataProperties.swift
//  My Target
//
//  Created by Kakada_Surakkiat on 5/31/17.
//  Copyright © 2017 Kakada_Surakkiat. All rights reserved.
//

import Foundation
import CoreData


extension DBLocation {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DBLocation> {
        return NSFetchRequest<DBLocation>(entityName: "DBLocation");
    }

    @NSManaged public var id: Int16
    @NSManaged public var last_update: Int64
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var name: String?
    @NSManaged public var phone: String?
    @NSManaged public var snippet: String?
    @NSManaged public var status: Int16

}
