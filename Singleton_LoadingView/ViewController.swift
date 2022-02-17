//
//  ViewController.swift
//  Singleton_LoadingView
//
//  Created by Matt on 2022/2/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Singleton.shared.show(self.view)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            Singleton.shared.dismiss()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            Singleton.shared.show(self.view)
        }
    }
    
    


}

