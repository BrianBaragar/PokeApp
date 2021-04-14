//
//  API.swift
//  pokeApp
//
//  Created by Brian Baragar on 16/03/21.
//

import Foundation
import PokemonAPI
import RxSwift

class API {
    let pokemonAPI = PokemonAPI()
    
    func getListPokemon(){
        pokemonAPI.pokemonService.fetchPokemonList() { result in
            switch result{
            case .success(let pokemonsPaged):
                print(pokemonsPaged.count)
                pokemonsPaged.results?.forEach({ (pokemon) in
                    self.pokemonAPI.resourceService.fetch(pokemon){result in
                        switch result{
                        case .success(let pokemon):
                            print(pokemon.name)
                        case .failure(let error):
                            print(error.localizedDescription)
                        }
                    }
                })
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
