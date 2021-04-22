//
//  DoctorViewController.swift
//  Delegate
//
//  Created by Timothy Ananda on 22/04/21.
//

import UIKit

class DoctorViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func timePickerChanged(_ sender: UIDatePicker) {
        
        let date = timePicker.date
        let time = Calendar.current.dateComponents([.hour], from: date)
        let hour = time.hour!
        
        if hour >= 9 && hour <= 16 {
            self.performSegue(withIdentifier: "doctorToParamedic", sender: self)
        }
        else if hour >= 17 && hour <= 24 {
            self.performSegue(withIdentifier: "doctorToSurgeon", sender: self)
        }
    }
        
    // MARK: - add code here
}
