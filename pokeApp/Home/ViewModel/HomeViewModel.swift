//
//  HomeViewModel.swift
//  pokeApp
//
//  Created by Brian Baragar on 16/03/21.
//

import Foundation
class HomeViewModel {
    private weak var view: HomeView?
    private var router: HomeRouter?
    private var managerConection = API()
    
    func bind(view: HomeView, router: HomeRouter){
        self.view = view
        self.router = router
        self.router?.setSourceView(view)
    }
    func getPokemon(){
        managerConection.getListPokemon()
    }
}
