//
//  Actions.swift
//  CounterUI
//
//  Created by Thanapat Sorralump on 27/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

struct CounterActions {
    struct ReactionIncrease: Action {}
    struct ReactionDecrease: Action {}
}

struct NameActions {
    struct UpdateName: Action {
        let name: String
    }
}
