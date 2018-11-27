//
//  Store.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 27/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift
import AppState
import CounterUI

let mainStore = Store<AppState>(
    reducer: appReducer,
    state: nil
)

func appReducer(action: Action, state: AppState?) -> AppState {
    var newState = AppState()
    newState.counter = counterReducer(action: action, state: state?.counter)
    return newState
}
