//
//  DesiredLeagueVC.swift
//  app_swoosh
//
//  Created by Prabhat  on 21/05/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import UIKit

class DesiredLeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBT: boxButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        
    }

    @IBAction func OnNextTaped(_ sender: Any) {
        performSegue(withIdentifier: "levelVCSegue", sender: self)
    }
    
    @IBAction func OnMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    
    @IBAction func OnWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func OnCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Co-ed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredleague = leagueType
        nextBT.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let levelVC = segue.destination as? LevelVC {
            levelVC.player = player
        }
    }
}
