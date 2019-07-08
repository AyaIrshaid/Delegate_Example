//
//  SettingsSideViewController.swift
//  ExampleOnDelegates
//
//  Created by Aya Irshaid on 7/5/19.
//  Copyright © 2019 Aya Irshaid. All rights reserved.
//

import UIKit

// Custom protocol
protocol SettingsDelegate{
    func didSelectMode(mode:Int)
}

class SettingsSideView: UIView {

   // Define a variable of type custom protocol
    var delegate : SettingsDelegate!
   
    
    required init?(coder aDecoder: NSCoder) { 
        super.init(coder: aDecoder)
        
    }
    
    
    @IBAction func modeSelected(_ sender: UIButton) {
        
        // Call the protocol method when a mode is selected
        // Light == 0
        // Dark == 1
        self.delegate?.didSelectMode(mode: sender.tag)
        
    }

    

}
