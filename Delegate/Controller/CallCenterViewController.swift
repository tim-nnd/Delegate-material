//
//  CallCenterViewController.swift
//  Delegate
//
//  Created by Timothy Ananda on 22/04/21.
//

import UIKit

class CallCenterViewController: UIViewController {

    @IBOutlet weak var delegateLabel: UILabel!
    
    var delegate: LifeSupportDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func doCprPressed(_ sender: UIButton) {
        
        delegate?.doCPR()
        
        self.dismiss(animated: true, completion: nil)
    }

}
