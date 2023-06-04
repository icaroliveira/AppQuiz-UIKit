//
//  ViewController.swift
//  Iquiz
//
//  Created by icaro on 20/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iniciarquiz: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lsa()
    }

    func lsa(){
        navigationItem.hidesBackButton = true
        iniciarquiz.layer.cornerRadius = 12.0
    }
    
}

