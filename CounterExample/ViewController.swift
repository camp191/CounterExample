//
//  ViewController.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import UIKit
import ReSwift


protocol MyProtocolState {
    var my: MyState {get set}
}

struct MyState {
    var myData: String
    var myData1: String
    
}

extension AppState : MyProtocolState {
    var my: MyState {
        get {
            
            return self.mystate["MyProtocolState"] as! MyState
        }
        set {
            self.mystate["MyProtocolState"] = newValue
        }
    }
    
}

class ViewController: UIViewController, StoreSubscriber {
    
    typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var lblCounter: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    var localStore: Store<AppState> =  mainStore
    
    override func viewDidLoad() {
        let a: MTLDrawPrimitivesIndirectArguments
        
        super.viewDidLoad()
        localStore.subscribe(self)
        tfName.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    func newState(state: AppState) {
        lblCounter.text = "\(state.counter.num)"
        lblName.text = state.auth.name
    }

    @IBAction func increase(_ sender: UIButton) {
        localStore.dispatch(Actions.Counter.ReactionIncrease())
    }
    
    @IBAction func decrease(_ sender: UIButton) {
        localStore.dispatch(Actions.Counter.ReactionDecrease())
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        localStore.dispatch(Actions.Auth.updateAuthName(name: textField.text))
    }
    
}
