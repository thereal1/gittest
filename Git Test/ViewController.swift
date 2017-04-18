//
//  ViewController.swift
//  Git Test
//
//  Created by Zac Workman on 18/04/2017.
//  Copyright © 2017 Zac Workman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let btn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .red
        btn.setTitle("Tap Me!", for: .normal)
        btn.addTarget(self, action: #selector(ViewController.btnTapped), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupElements()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func setupElements() {
        view.addSubview(btn)
        
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func btnTapped() {
        print("tapped")
    }
    
}

