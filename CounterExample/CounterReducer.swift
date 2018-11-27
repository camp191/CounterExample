//
//  Reducer.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

func counterReducer(action: Action, state: CounterState?) -> CounterState {
    
    var state = state ?? CounterState()
    
    switch action {
    case _ as Actions.Counter.ReactionIncrease:
        state.num += 1
    case _ as Actions.Counter.ReactionDecrease:
        state.num -= 1
    default:
        break
    }
    
    return state
}

func authReducer(action: Action, state: AuthState?) -> AuthState {
    var state = state ?? AuthState()
    
    switch action {
    case let auth as Actions.Auth.updateAuthName:
        state.name = auth.name
    default:
        break
    }
    
    return state
}

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        counter: counterReducer(action: action, state: state?.counter),
        auth: authReducer(action: action, state: state?.auth)
    )
}
