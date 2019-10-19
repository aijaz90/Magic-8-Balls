//
//  ViewController.swift
//  Majic-8-Ball
//
//  Created by mac on 10/19/19.
//  Copyright © 2019 Aijaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballsArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomMajicNumbers: Int = 0
    @IBOutlet weak var majicImages: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMajicBalls()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
     updateMajicBalls()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
      updateMajicBalls()
    }
    func updateMajicBalls() {
        
        randomMajicNumbers = Int.random(in: 0 ... 4)
        print(randomMajicNumbers)
        majicImages.image = UIImage(named: ballsArray[randomMajicNumbers])
    }
}

