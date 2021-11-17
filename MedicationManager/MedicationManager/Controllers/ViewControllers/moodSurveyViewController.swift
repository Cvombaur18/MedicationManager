//
//  moodSurveyViewController.swift
//  MedicationManager
//
//  Created by chris vombaur on 11/11/21.
//

import UIKit

protocol MoodSurveyViewControllerDelegate: AnyObject {
    func moodButtonTapped(with emoji: String)
}

class moodSurveyViewController: UIViewController {
    
    weak var delegate: MoodSurveyViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func emojiTapped(_ sender: UIButton) {
        guard let emoji = sender.titleLabel?.text
        else { return }
            delegate?.moodButtonTapped(with: emoji)
            dismiss(animated: true, completion: nil)
        }
    }

