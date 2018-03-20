//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by Saddam Al Amin on 3/20/18.
//  Copyright © 2018 Al Amin. All rights reserved.
//

import UIKit

// MARK: - TableView Custom Cell -

class CustomCell: UITableViewCell {
    @IBOutlet weak var lblCountryName: UILabel!
}

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.WS_GetCountryList(url: "http://services.groupkt.com/state/get/USA/all")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

