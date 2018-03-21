//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by  Al Amin on 3/20/18.
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
    var arrCountryList = [CountryList]()
    
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

extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let searchPredicate = NSPredicate(format: "name CONTAINS[c] %@", searchText)
        let array = (self.arrCountryList as NSArray).filtered(using: searchPredicate)
        self.arrCountryList = array as! [CountryList]
        self.tblView.reloadData()
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        cell.lblCountryName.text = self.arrCountryList[indexPath.row].name
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrCountryList.count
    }
}
