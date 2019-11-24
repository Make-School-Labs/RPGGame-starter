//
//  PlayerViewController.swift
//  RPGGame
//
//  Created by Jonathan Kopp on 10/14/19.
//  Copyright © 2019 Jonathan Kopp. All rights reserved.
//

import Foundation
import UIKit

class PlayerViewController: UIViewController{
    /// The player object
    var player: Player?
    /// Action label
    @IBOutlet var topLabel: UILabel!
    /// Action button
    @IBOutlet var button: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // Changes the navigations color
        // TODO: Set the color to your most favorite color!
        self.navigationController!.navigationBar.barTintColor = .purple
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Navigation Controller title
        self.title = player?.name
        
        self.view.backgroundColor = .green
        topLabel.textColor = .white
        
        // When button is touched trigger the doPlayerAction() function is called
        button.addTarget(self, action: #selector(doPlayerAction), for: .touchUpInside)
    }
    
    // TODO: Changes the topLabel based on what the player object is
    @objc func doPlayerAction() {
        // Hint - Try using a switch case to determine what the player object is!
        
    }
    
    
}
