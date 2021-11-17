//
//  MedicationDetailViewController.swift
//  MedicationManager
//
//  Created by chris vombaur on 11/10/21.
//

import UIKit

class MedicationDetailViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var medication: Medication?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let medication = medication,
           let timeOfDay = medication.timeOfDay{
            title = "Medication Details"
            nameTextField.text = medication.name
            datePicker.date = timeOfDay
        } else {
            title = "Add Medication"
        }
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
                !name.isEmpty
        else { return }
              let timeOfDay = datePicker.date
        
        if let medication = medication {
            MedicationController.shared.updatemedications(medication: medication, name: name, timeOfDay: timeOfDay)
        } else {
            MedicationController.shared.create(name: name, timeOfDay: timeOfDay)
        }
        
        navigationController?.popViewController(animated: true)
        
    }
}
