//
//  Player.swift
//  multi_storyboard
//
//  Created by thinhvoxuan on 2/21/16.
//  Copyright © 2016 Thinh VoXuan. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}