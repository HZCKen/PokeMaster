//
//  User.swift
//  PokeMaster
//
//  Created by Ken on 2020/5/18.
//  Copyright © 2020 Ken_cheng. All rights reserved.
//

import Foundation

struct User: Codable {
    var email: String
    
    var favoritePokemenIDs: Set<Int>
    
    func isFavoritePokemon(id: Int) -> Bool {
        favoritePokemenIDs.contains(id)
    }
}
