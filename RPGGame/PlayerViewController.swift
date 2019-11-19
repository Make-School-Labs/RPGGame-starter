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
    /// Type of player
    var type: PlayerType?
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
        topLabel.textColor = .white
        // When button is touched trigger the doPlayerAction function is called
        button.addTarget(self, action: #selector(doPlayerAction), for: .touchUpInside)
    }
    
    // Changes the topLabel based on what playerType is passed
    @objc func doPlayerAction() {
        // Check if player type can casts only a spell
        if(type == PlayerType.Wizard || type == PlayerType.Priest) {
            topLabel.text = "\(player!.name) casts spell"
        }
        //TODO: Check for Fighter and Elf types.                          Update text based on if the playerType casts a spell or fights
    }
    
    
}
