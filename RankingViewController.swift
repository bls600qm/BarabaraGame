//
//  RankingViewController.swift
//  BarabaraGame
//
//  Created by Rika Sumitomo on 2019/04/12.
//  Copyright © 2019 Rika Sumitomo. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {

    
    @IBOutlet weak var rankingLabel1: UILabel!
    @IBOutlet weak var rankingLabel2: UILabel!
    @IBOutlet weak var rankingLabel3: UILabel!
    
    let defaults: UserDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rankingLabel1.text = String(defaults.integer(forKey: "score1"))
        rankingLabel2.text = String(defaults.integer(forKey: "score2"))
        rankingLabel3.text = String(defaults.integer(forKey: "score3"))
    }
    
    @IBAction func toTop(){
        self.dismiss(animated: true, completion: nil) //Topへ
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
