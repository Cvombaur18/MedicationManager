//
//  MoodSurvey+Convenience.swift
//  MedicationManager
//
//  Created by chris vombaur on 11/11/21.
//

import CoreData

extension MoodSurvey {
    @discardableResult convenience init(mentalState: String, date: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.mentalState = mentalState
        self.date = date
    }
}

