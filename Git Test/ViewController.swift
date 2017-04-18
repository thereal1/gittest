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
    
    private let anotherBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .red
        btn.setTitle("Feneshed", for: .normal)
        btn.addTarget(self, action: #selector(ViewController.btnTapped), for: .touchUpInside)
        return btn
    }()
    
    private let lbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "This is a label"
        return lbl
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
        view.addSubview(anotherBtn)
        view.addSubview(lbl)
        
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        anotherBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        anotherBtn.topAnchor.constraint(equalTo: btn.bottomAnchor, constant: 20).isActive = true
        
        lbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lbl.topAnchor.constraint(equalTo: anotherBtn.bottomAnchor, constant: 20).isActive = true
        lbl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        lbl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    func btnTapped() {
        print("You finished")
    }
    
}

