//
//  LevelVC.swift
//  app_swoosh
//
//  Created by Prabhat  on 21/05/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import UIKit

class LevelVC: UIViewController {
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredleague!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
