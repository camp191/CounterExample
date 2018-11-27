//
//  Reducers.swift
//  CounterUI
//
//  Created by Thanapat Sorralump on 27/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

public func myStateReducer(action: Action, state: MyState?) -> MyState {
    var state = state ?? MyState()
    state.counter = counterReducer(action: action, state: state.counter)
    state.name = nameReducer(action: action, state: state.name)
    return state
}

public func counterReducer(action: Action, state: CounterState?) -> CounterState {
    
    var state = state ?? CounterState(num: 0)
    
    switch action {
    case _ as CounterActions.ReactionIncrease:
        state.num += 1
    case _ as CounterActions.ReactionDecrease:
        state.num -= 1
    default:
        break
    }
    
    return state
}

public func nameReducer(action: Action, state: NameState?) -> NameState {
    var state = state ?? NameState(name: "")
    
    switch action {
    case let authName as NameActions.UpdateName:
        state.name = authName.name
    default:
        break
    }
    
    return state
}
