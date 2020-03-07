//
//  ViewController.swift
//  Flashcards
//
//  Created by Taylor Nguyen on 2/19/20.
//  Copyright © 2020 Taylor Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var firstOption: UIButton!
    @IBOutlet weak var secondOption: UIButton!
    @IBOutlet weak var thirdOption: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reset.isHidden = true
        firstOption.isHidden = false
        secondOption.isHidden = false
        thirdOption.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        frontLabel.isHidden = false
        
        card.layer.cornerRadius = 20.0
        card.clipsToBounds = true
        card.layer.shadowRadius = 20.0
        card.layer.shadowOpacity = 0.5
        
        frontLabel.layer.cornerRadius = 20.0
        frontLabel.layer.shadowRadius = 20.0
        frontLabel.layer.shadowOpacity = 0.5
        frontLabel.clipsToBounds = true
        
        backLabel.layer.cornerRadius = 20.0
        backLabel.layer.shadowRadius = 15.0
        backLabel.layer.shadowOpacity = 0.2
        backLabel.clipsToBounds = true
        
        secondOption.layer.cornerRadius = 20.0
        secondOption.layer.borderWidth = 4.0
        secondOption.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        secondOption.clipsToBounds = true
        
        firstOption.layer.cornerRadius = 20.0
        firstOption.layer.borderWidth = 4.0
        firstOption.layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        firstOption.clipsToBounds = true
        
        thirdOption.layer.cornerRadius = 20.0
        thirdOption.layer.borderWidth = 4.0
        thirdOption.layer.borderColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        thirdOption.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnFlashcards(_ sender: Any) {
        if(frontLabel.isHidden == false) {
            frontLabel.isHidden = true
        } else {
            frontLabel.isHidden = false
        }
    }
    
    func updateFlashcard(question: String, answer: String, wrong1: String, wrong2: String) {
        frontLabel.text = question
        backLabel.text = answer
        firstOption.setTitle(wrong1, for: .normal)
        secondOption.setTitle(wrong2, for: .normal)
        thirdOption.setTitle(answer, for: .normal)
    }

    @IBAction func tapOpt1(_ sender: UIButton) {
        if(secondOption.isHidden == false) {
            secondOption.isHidden = true
        } else {
            secondOption.isHidden = false
        }
        reset.isHidden = false
    }
    
    @IBAction func tapOpt2(_ sender: UIButton) {
        if(firstOption.isHidden == false) {
            firstOption.isHidden = true
        } else {
            firstOption.isHidden = false
        }
        reset.isHidden = false
    }
    
    @IBAction func tapOpt3(_ sender: UIButton) {
        
        thirdOption.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        frontLabel.isHidden = true
        reset.isHidden = false
    }
    
    @IBAction func didTapOnReset(_ sender: Any) {
        viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }

}

