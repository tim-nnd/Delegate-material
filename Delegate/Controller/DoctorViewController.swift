//
//  DoctorViewController.swift
//  Delegate
//
//  Created by Timothy Ananda on 22/04/21.
//

import UIKit

class DoctorViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var actionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        actionLabel.text = "Habis break"
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? CallCenterViewController {
            destinationVC.delegate = self
        }
    }
}

extension DoctorViewController: LifeSupportDelegate {
    func doCPR() {
        actionLabel.text = "Doing CPR"
    }
    
    
}
