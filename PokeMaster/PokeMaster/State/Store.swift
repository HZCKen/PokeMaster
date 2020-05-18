//
//  Store.swift
//  PokeMaster
//
//  Created by Ken on 2020/5/17.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation
import Combine

class Store: ObservableObject {
    @Published var appState = AppState()
}
