//
//  DateFormatter.swift
//  MedicationManager
//
//  Created by chris vombaur on 11/10/21.
//

import Foundation

extension DateFormatter {
    static let medicationTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    }()
}
