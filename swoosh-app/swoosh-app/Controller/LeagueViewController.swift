//
//  LeagueViewController.swift
//  swoosh-app
//
//  Created by Sergey Neupokoev on 16/1/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showSkillVC", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
