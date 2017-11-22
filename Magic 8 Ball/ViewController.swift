//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Isaac Rodriguez on 11/22/17.
//  Copyright © 2017 Isaac Rodriguez. All rights reserved.
//

import UIKit

var RandomImgBall : Int = 0
let imgBallArray = ["ball1","ball2", "ball3", "ball4", "ball5"]

class ViewController: UIViewController {
    @IBOutlet weak var imageBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImgBall()

    }

  
    @IBAction func askButtonTapped(_ sender: UIButton) {
        updateImgBall()
        
    }
    
    func updateImgBall(){
        RandomImgBall = Int(arc4random_uniform(5))

        imageBall.image = UIImage(named:imgBallArray[RandomImgBall])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImgBall()
    }
    
}

