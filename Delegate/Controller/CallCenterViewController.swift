//
//  CallCenterViewController.swift
//  Delegate
//
//  Created by Timothy Ananda on 22/04/21.
//

import UIKit

class CallCenterViewController: UIViewController {

    @IBOutlet weak var delegateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func doCprPressed(_ sender: UIButton) {
        
        // MARK: - Code Here
        
        self.dismiss(animated: true, completion: nil)
    }

}
