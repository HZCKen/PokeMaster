//
//  PokemonInfoPanelHeader.swift
//  PokeMaster
//
//  Created by Apple on 2020/3/23.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

extension PokemonInfoPanel {
    
    struct Header: View {
        let model: PokemonViewModel
        
        var body: some View {
            HStack(spacing: 18) {
                pokemonIcon
                nameSpecies
                verticalDivider
                VStack(spacing: 12) {
                    bodyStatus
                    typeInfo
                }

            }
            
        }
        
        
        var pokemonIcon: some View {
            
            Image("Pokemon-\(model.id)")
                .resizable()
                .frame(width:68, height: 68)
            

        }
        
        var nameSpecies: some View {
            VStack {
                Text(model.name)
                    .font(.system(size: 22)).bold()
                    .foregroundColor(model.color)
                Text(model.nameEN)
                    .font(.system(size: 13)).bold()
                    .foregroundColor(model.color)
                Text(model.genus)
                    .font(.system(size: 13)).bold()
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            }
        }
        
        var verticalDivider: some View {
             Color.black.opacity(0.1).frame(width: 1, height: 44)
        }
        
        var bodyStatus: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text("身高")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    
                    Text(model.height)
                        .foregroundColor(model.color)
                }
                
                HStack {
                    Text("体重")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    
                    Text(model.weight)
                        .foregroundColor(model.color)
                }
        }
    }
        
        var typeInfo: some View {
            HStack {
                ForEach(model.types) { t in
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(t.color)
                            .frame(width: 36, height: 14)
                        Text(t.name)
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                    
                }
            }
        }
    }
}
