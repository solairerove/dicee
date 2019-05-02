//
//  ViewController.swift
//  Dicee
//
//  Created by Nikita Krivitski on 5/2/19.
//  Copyright © 2019 Nikita Krivitski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftRandomDiceIndex: Int = 0
    var rightRandomDiceIndex: Int = 0

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtomEmitter(_ sender: UIButton) {
        leftRandomDiceIndex = getRandomIndex(rangeFrom: 0, rangeTo: 5)
        rightRandomDiceIndex = getRandomIndex(rangeFrom: 0, rangeTo: 5)
        
        print(leftRandomDiceIndex, rightRandomDiceIndex)
    }

    func getRandomIndex(rangeFrom: Int, rangeTo: Int) -> Int {
        return Int.random(in: rangeFrom ... rangeTo)
    }
}
