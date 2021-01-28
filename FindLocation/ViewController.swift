//
//  ViewController.swift
//  FindLocation
//
//  Created by MAC on 28/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchedTXT: UITextField!
    @IBOutlet weak var find: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        find.layer.cornerRadius = 15
    }

    @IBAction func findBTN(_ sender: UIButton) {
        self.view.endEditing(true)
        if searchedTXT.text != nil && searchedTXT.text != ""{
            let urlString:String = "https://www.google.co.in/maps/place/\(String(describing: searchedTXT.text!))"
            let mapVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mapPage") as! mapPage
            mapVC.urlString = urlString
            self.navigationController?.present(mapVC, animated: true, completion: nil)
        }else{
            searchedTXT.placeholder = "Please Enter Here text You Want"
        }
    }
}

