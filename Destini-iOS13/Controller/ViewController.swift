//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func pressedButton(_ sender: UIButton) {
        let optionChose=sender.currentTitle!
        if storyBrain.isChoice1(optionChose){
            storyBrain.goChoice1()
        }else{
            storyBrain.goChoice2()
        }
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text=storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoise2(), for: .normal)
    }
    
}

