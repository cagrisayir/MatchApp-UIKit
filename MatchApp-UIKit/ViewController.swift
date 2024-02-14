//
//  ViewController.swift
//  MatchApp-UIKit
//
//  Created by Omer Cagri Sayir on 13.02.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var collectionView: UICollectionView!

    let model = CardModel()
    var cardsArray: [Card] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        cardsArray = model.getCards()

        // !!Set the view controller as the datasource and delegate of the collectionView
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    // MARK: - Collection View Delegate Methods

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Return number of cards
        return cardsArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        // Configure it

        // return it
        return cell
    }
}
