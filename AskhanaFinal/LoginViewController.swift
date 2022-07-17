//
//  ViewController.swift
//  AskhanaFinal
//
//  Created by Leila Tolegenova on 24.04.2022.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let tabController = storyboard?.instantiateViewController(withIdentifier: "TabController") as! TabController
        tabController.modalPresentationStyle = .fullScreen
        present(tabController, animated: true)
    }
    

}

