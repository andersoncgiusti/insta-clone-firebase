//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Anderson Carvalho Giusti on 14/03/23.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
//        performSegue(withIdentifier: "toViewController", sender: nil)
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }
        
    }

}
