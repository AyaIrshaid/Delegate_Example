//
//  ViewController.swift
//  ExampleOnDelegates
//
//  Created by Aya Irshaid on 7/5/19.
//  Copyright © 2019 Aya Irshaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SettingsDelegate {

    
    //
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var settingsSideView: SettingsSideView!
    //
    var settingsViewIsVisible = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set delegate of 'settingsSideview' to self
        settingsSideView.delegate = self
    }
    
    
    // MARK: - Delegate Methods
    func didSelectMode(mode: Int) {
        
        //
        closeOpenSideView()
        
        //
        switch mode {
        case 0:
            setPageForLightMode()
        case 1:
            setPageForDarkMode()
        default:
            setPageForLightMode()
        }
        
    }
    
    
    //MARK: - IBAction methods
    @IBAction func settingsButtonTapped(_ sender: Any) {
        
        //
        closeOpenSideView()
      
    }
    
    
    //MARK: - View Methods
    
    func closeOpenSideView(){
        settingsViewIsVisible = !settingsViewIsVisible
        leftConstraint.constant = settingsViewIsVisible ? 207 : 0
    }
    
    
    func setPageForDarkMode(){
        
        backView.backgroundColor = .darkGray
        titleLabel.backgroundColor = .darkGray
        textLabel.backgroundColor = .darkGray
        titleLabel.textColor = .white
        textLabel.textColor = .white
    }
    
    
    func setPageForLightMode(){
        self.backView.backgroundColor = .white
        titleLabel.backgroundColor = .white
        textLabel.backgroundColor = .white
        titleLabel.textColor = .black
        textLabel.textColor = .black
    }

    
}

