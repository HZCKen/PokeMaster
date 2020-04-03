//
//  PokemonInfoPanel.swift
//  PokeMaster
//
//  Created by Apple on 2020/3/23.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

struct PokemonInfoPanel: View {
    let model: PokemonViewModel

    // 1
    var abilities: [AbilityViewModel] {
        AbilityViewModel.sample(pokemonID: model.id)
    }
    
    var topIndicator: some View {
        RoundedRectangle(cornerRadius: 3)
            .frame(width: 40, height: 6)
            .opacity(0.2)
    }
    
    var pokemonDescription: some View {
        Text(model.descriptionText)
            .font(.callout)
            .foregroundColor(Color(hex: 0x666666))
            .fixedSize(horizontal: false, vertical: true)
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            topIndicator
            Header(model: model)
            pokemonDescription
            Divider()
        }
   
    }
}

struct PokemonInfoPanel_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel(model: .sample(id: 1))
    }
}


