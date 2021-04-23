//
//  SurgeonViewController.swift
//  Delegate
//
//  Created by Timothy Ananda on 22/04/21.
//

import UIKit

class SurgeonViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var labelAksi: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        labelAksi.text = "Nunggu pasien"
    }
    
    @IBAction func timePickerChanged(_ sender: UIDatePicker) {
        
        let date = timePicker.date
        let time = Calendar.current.dateComponents([.hour], from: date)
        let hour = time.hour!
        
        if hour >= 0 && hour <= 8 {
            self.performSegue(withIdentifier: "surgeonToDoctor", sender: self)
        }
        else if hour >= 9 && hour <= 16 {
            self.performSegue(withIdentifier: "surgeonToParamedic", sender: self)
        }
    }
}

extension SurgeonViewController: LifeSupportDelegate {
    func doCPR() {
        labelAksi.text = "Melakukan CPR dan pertolongan pertama"
    }
    
    
}
