//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Taylor Nguyen on 3/6/20.
//  Copyright © 2020 Taylor Nguyen. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {

    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionText: UITextField!
    @IBOutlet weak var answerText: UITextField!
    @IBOutlet weak var wrong1: UITextField!
    @IBOutlet weak var wrong2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
       flashcardsController.viewDidLoad()
        
        let question = questionText.text
        let answer = answerText.text
        let wrong = wrong1.text
        let wrongAgain = wrong2.text
  
        flashcardsController.updateFlashcard(question: question!, answer: answer!, wrong1: wrong!, wrong2: wrongAgain!)
        
        dismiss(animated: true)
        
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
