//
//  ViewController.swift
//  MatchApp-UIKit
//
//  Created by Omer Cagri Sayir on 13.02.2024.
//

import UIKit

class ViewController: UIViewController {

    let model = CardModel()
    var cardsArray: [Card] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsArray = model.getCards()
    }


}

