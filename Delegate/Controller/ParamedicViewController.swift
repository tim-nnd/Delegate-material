//
//  ParamedicViewController.swift
//  Delegate
//
//  Created by Timothy Ananda on 22/04/21.
//

import UIKit

class ParamedicViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var actionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        actionLabel.text = "Baru kelar makan"
    }
    
    @IBAction func timePickerChanged(_ sender: UIDatePicker) {
        
        let date = timePicker.date
        let time = Calendar.current.dateComponents([.hour], from: date)
        let hour = time.hour!
        
        if hour >= 0 && hour <= 8 {
            self.performSegue(withIdentifier: "paramedicToDoctor", sender: self)
        }
        else if hour >= 17 && hour <= 24 {
            self.performSegue(withIdentifier: "paramedicToSurgeon", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? CallCenterViewController {
            // MARK: - Code Here
        }
    }
}
