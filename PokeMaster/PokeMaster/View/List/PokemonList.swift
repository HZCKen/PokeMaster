//
//  PokemonList.swift
//  PokeMaster
//
//  Created by Apple on 2020/3/23.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
 
    @State var expandingIndex: Int?
    
    var body: some View {
        

        ScrollView {
            ForEach(PokemonViewModel.all) { pokemon in
                PokemonInfoRow(model: pokemon,
                               expanded: pokemon.id == self.expandingIndex)
                    .onTapGesture {
                        if self.expandingIndex == pokemon.id  {
                            self.expandingIndex = nil
                        } else {
                            self.expandingIndex = pokemon.id
                        }
                }
            }
        }.overlay (
            VStack {
                Spacer()
                PokemonInfoPanel(model: .sample(id: 1))
            }
            .edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
