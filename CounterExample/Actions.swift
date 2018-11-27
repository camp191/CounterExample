//
//  Actions.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

struct Actions {
    struct Counter {
        struct ReactionIncrease: Action {}
        struct ReactionDecrease: Action {}
    }
    
    struct Auth {
        struct updateAuthName: Action {
            let name: String?
        }
    }
}

