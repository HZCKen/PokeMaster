//
//  PokemonRootView.swift
//  PokeMaster
//
//  Created by Ken on 2020/4/18.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

struct PokemonRootView: View {
    var body: some View {

        NavigationView {
            PokemonList().navigationBarTitle("宝可梦列表")
        }
    }
}

struct PokemonRootView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRootView()
    }
}
