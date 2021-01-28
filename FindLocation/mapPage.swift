//
//  mapPage.swift
//  FindLocation
//
//  Created by MAC on 28/01/21.
//

import UIKit

class mapPage: UIViewController {
    var urlString = String()
    @IBOutlet weak var web: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: urlString)!)
        web.loadRequest(request)
        
    }

}
