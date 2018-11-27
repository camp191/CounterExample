//
//  ViewController.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import UIKit
import ReSwift
import AppState

public protocol CounterProtocolState {
    var counter: CounterState {get set}
}

public struct CounterState {
    public var num: Int
}

extension AppState : CounterProtocolState {
    public var counter: CounterState {
        get {
            return self.mystate["CounterProtocolState"] as! CounterState
        }
        set {
            self.mystate["CounterProtocolState"] = newValue
        }
    }
}

public class CounterVC: UIViewController, StoreSubscriber {
    
    public typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var lblCounter: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    public var localStore: Store<AppState>?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        localStore?.subscribe(self)
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        localStore?.subscribe(self)
    }
    
    override public func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        localStore?.unsubscribe(self)
    }
    
    public func newState(state: AppState) {
        lblCounter.text = "\(state.counter.num)"
    }
    
    @IBAction func increase(_ sender: UIButton) {
        localStore?.dispatch(Actions.Counter.ReactionIncrease())
    }
    
    @IBAction func decrease(_ sender: UIButton) {
        localStore?.dispatch(Actions.Counter.ReactionDecrease())
    }
    
}
