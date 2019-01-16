//
//  LeagueViewController.swift
//  swoosh-app
//
//  Created by Sergey Neupokoev on 16/1/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

    }
    
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: UIButton) {
        selectLeague(leagueType: "Mens")
    }
    
    @IBAction func onWomesTapped(_ sender: UIButton) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: UIButton) {
        selectLeague(leagueType: "Coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
        }
    }
    

}
