//
//  ViewController.swift
//  RPS
//
//  Created by Patrick Hardison on 11/6/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var opponentText: UILabel!
    
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    var playerchoice = "";
    var computerchoice = "";
    var playerScore = 0;
    var computerScore = 0;

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func randomSign() -> String {
        let sign = Int.random(in: 0...2)
        if sign == 0 {
            return "rock"
        } else if sign == 1 {
            return "paper"
        } else {
            return "scissors"
        }
    }


    func compare(playerchoice: String) -> String {
        computerchoice = randomSign()
        if computerchoice == "rock"{
            self.opponentText.text = "✊"
        } else if computerchoice == "paper"{
            self.opponentText.text = "🤚"
        } else {
            self.opponentText.text = "✌️"
        }
        
        
        if playerchoice == computerchoice{
            return "Draw"
        } else if playerchoice == "rock" && computerchoice == "scissors"{
            playerScore += 1;
            self.playerScoreLabel.text = String(playerScore)
            return "You Win"
        } else if playerchoice == "scissors" && computerchoice == "paper"{
            playerScore += 1;
            self.playerScoreLabel.text = String(playerScore)
            return "You Win"
        } else if playerchoice == "paper" && computerchoice == "rock"{
            playerScore += 1;
            self.playerScoreLabel.text = String(playerScore)
            return "You Win"
        } else {
            computerScore += 1;
            self.computerScoreLabel.text = String(computerScore)
            return "You Lose"
        }
    }
    
    @IBAction func rockPressed(_ sender: Any) {
        self.labelText.text = compare(playerchoice: "rock")
    }
    
    @IBAction func paperPressed(_ sender: Any) {
        self.labelText.text = compare(playerchoice: "paper")
    }
    
    @IBAction func scissorsPressed(_ sender: Any) {
        self.labelText.text = compare(playerchoice: "scissors")
    }
    
  
    
}


