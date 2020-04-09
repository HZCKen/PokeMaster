//
//  BlurView.swift
//  PokeMaster
//
//  Created by Ken on 2020/4/4.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    var style: UIBlurEffect.Style = .systemMaterial
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: .zero)
        
        view.backgroundColor = .clear

          let blurEffect = UIBlurEffect(style: style)
          let blurView = UIVisualEffectView(effect: blurEffect)

          blurView.translatesAutoresizingMaskIntoConstraints = false
          view.addSubview(blurView)
          NSLayoutConstraint.activate([
              blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
              blurView.widthAnchor.constraint(equalTo: view.widthAnchor)
          ])
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<BlurView>) {
        
    }
}
