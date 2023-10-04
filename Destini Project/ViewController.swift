//
//  ViewController.swift
//  Destini Project
//
//  Created by Frio Anbia on 02/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrian = StroyBrian()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrian.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrian.getStoryTitle()
        choice1Button.setTitle(storyBrian.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrian.getChoice2(), for: .normal)
    }
    
}

