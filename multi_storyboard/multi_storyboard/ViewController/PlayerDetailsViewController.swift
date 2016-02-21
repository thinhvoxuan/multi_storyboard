//
//  PlayerDetailsViewController.swift
//  multi_storyboard
//
//  Created by thinhvoxuan on 2/21/16.
//  Copyright © 2016 Thinh VoXuan. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel! {
        didSet {
            detailLabel.text = "Chess"
        }
    }
    var player:Player?
    
    var game:String = "Chess" {
        didSet {
            detailLabel.text? = game
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }
    
    @IBAction func unwindWithSelectedGame(segue:UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = gamePickerViewController.selectedGame {
                game = selectedGame
        }
    }
}
