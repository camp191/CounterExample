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
    var myState: MyState {get set}
}

public struct MyState {
    var counter: CounterState
    var name: NameState
    public init() {
        counter = CounterState(num: 0)
        name = NameState(name: "")
    }
}

public struct CounterState {
    public var num: Int
}

public struct NameState {
    public var name: String
}

extension AppState : CounterProtocolState {
    public var myState: MyState {
        get {
            if let myState = self.mystate["CounterProtocolState"] as? MyState {
                return myState
            }
            return MyState()
        }
        set { self.mystate["CounterProtocolState"] = newValue }
    }
    
}

public class CounterVC: UIViewController, StoreSubscriber {
    
    public typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var lblCounter: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    public var localStore: Store<AppState>?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        tfName.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
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
        lblCounter.text = "\(state.myState.counter.num)"
        lblName.text = "\(state.myState.name.name)"
    }
    
    @IBAction func increase(_ sender: UIButton) {
        localStore?.dispatch(CounterActions.ReactionIncrease())
    }
    
    @IBAction func decrease(_ sender: UIButton) {
        localStore?.dispatch(CounterActions.ReactionDecrease())
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        localStore?.dispatch(NameActions.UpdateName(name: textField.text ?? ""))
    }
    
}
