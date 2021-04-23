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
        
        //coba set stringnya pake String(describing:)
        delegateLabel.text = "Delegate: " + String(describing: CallCenterViewController.self) //nanti pake si class delegatenya
    }
    
    @IBAction func doCprPressed(_ sender: UIButton) {
        
        // MARK: - Code Here
        delegate?.doCPR()
        
        self.dismiss(animated: true, completion: nil)
    }

}
