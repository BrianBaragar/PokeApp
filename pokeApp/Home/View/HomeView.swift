//
//  HomeView.swift
//  pokeApp
//
//  Created by Brian Baragar on 16/03/21.
//

import UIKit

class HomeView: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var router =  HomeRouter()
    private var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.bind(view: self, router: router)
        configureCollectionView()
        getPokemon()
    }
    
    private func configureCollectionView(){
        collectionView.register(UINib(nibName: "PokeCell", bundle: nil), forCellWithReuseIdentifier: "PokeCell")
    }
    private func getPokemon(){
        viewModel.getPokemon()
    }
}

extension HomeView: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath)
        return cell
    }
    
}

