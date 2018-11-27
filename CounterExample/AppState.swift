//
//  AppState.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    var counter: CounterState
    var auth: AuthState
    //var state: MyState
    
    var mystate: [String: Any]
    
}



struct CounterState {
    var num: Int = 0
}

struct AuthState {
    var name: String? = ""
}
