//
//  PokemonInfoRow.swift
//  PokeMaster
//
//  Created by Apple on 2020/3/23.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

struct PokemonInfoRow: View {
    
    var model: PokemonViewModel = PokemonViewModel.sample(id: 1)
    let expanded:Bool
    
    
    var body: some View {
        
        VStack {
            HStack {
                Image("Pokemon-\(model.id)")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 4)
                Spacer()
                VStack(alignment: .trailing) {
                    Text(model.name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    Text(model.nameEN)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 12)
            
            HStack(spacing: 20) {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "star")
                        .modifier(ToolButtonModifier())
                    
                }
                Button(action: {}) {
                    Image(systemName: "chart.bar")
                       .modifier(ToolButtonModifier())
                    
                }
                Button(action: {}) {
                    Image(systemName: "info.circle")
                        .modifier(ToolButtonModifier())
                }
            }
            .padding(.bottom, 12)
            .opacity(expanded ? 1 : 0)
            .frame(maxHeight: expanded ? .infinity : 0)
            
        }
        .frame(height: expanded ? 120 : 80)
        .padding(.leading, 23)
        .padding(.trailing, 23)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(model.color, style: StrokeStyle(lineWidth: 4))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.white, model.color]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                )
            }
            .padding(.horizontal)
        )
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))

        
    }
}

struct PokemonInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoRow(expanded: false)
    }
}


struct ToolButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .frame(width: 30, height: 30)
            .foregroundColor(.white)
    }
}
