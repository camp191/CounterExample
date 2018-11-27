//
//  Store.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 27/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

let mainStore = Store<AppState>(
    reducer: appReducer,
    state: nil
)
