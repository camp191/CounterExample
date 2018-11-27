//
//  Store.swift
//  AppState
//
//  Created by Thanapat Sorralump on 27/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import ReSwift

public struct AppState: StateType {
    public var mystate: [String: Any]
    
    public init() {
        mystate = [String: Any]()
    }
}
