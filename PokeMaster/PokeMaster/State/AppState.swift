//
//  AppState.swift
//  PokeMaster
//
//  Created by Ken on 2020/5/17.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

struct  AppState {
    var settings = Settings()
}

extension AppState {
    
    struct Settings {
        enum Sorting: CaseIterable {
            case id, name, color, favorite
        }
        enum AccountBehavior: CaseIterable {
            case register, login
        }
        
        var showEnglishName = true
        var sorting = Sorting.id
        var showFavoriteOnly = false
        
        
        var accountBehavior = AccountBehavior.login
        
        var email = ""
        var password = ""
        var verifyPassword = ""
        
        var loginUser: User?
    }
    
}
