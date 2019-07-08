//
//  SettingsSideViewController.swift
//  ExampleOnDelegates
//
//  Created by Aya Irshaid on 7/5/19.
//  Copyright © 2019 Aya Irshaid. All rights reserved.
//

import UIKit

//
protocol SettingsDelegate{
    func didSelectMode(mode:Int)
}

class SettingsSideView: UIView {

   //
    var delegate : SettingsDelegate!
   
    
    required init?(coder aDecoder: NSCoder) { // for using custom views in IB
        super.init(coder: aDecoder)
        
    }
    
    
    @IBAction func modeSelected(_ sender: UIButton) {
        
        // Light == 0
        // Dark == 1
        self.delegate?.didSelectMode(mode: sender.tag)
        
    }

    

}
