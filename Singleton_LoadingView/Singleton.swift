//
//  LoadingView.swift
//  Singleton_LoadingView
//
//  Created by Matt on 2022/2/17.
//

import Foundation
import UIKit


final class Singleton {
    static let shared = Singleton()
    
    private let loadingView: UIView = {
        let v = UIView()
        let label = UILabel()
        label.text = "Loading...."
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        v.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        v.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: v.centerXAnchor, constant: 0),
            label.centerYAnchor.constraint(equalTo: v.centerYAnchor, constant: 0)
        ])
        return v
    }()
    
    func show(_ view: UIView) {
        loadingView.frame = view.bounds
        view.addSubview(loadingView)
    }
    
    func dismiss() {
        loadingView.removeFromSuperview()
    }
}
