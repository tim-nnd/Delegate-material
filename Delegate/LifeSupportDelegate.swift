//
//  LifeSupportDelegate.swift
//  Delegate
//
//  Created by Timothy Ananda on 23/04/21.
//

import Foundation

protocol LifeSupportDelegate {
    var nama: String? { get set }
    
    func doCPR()
}
