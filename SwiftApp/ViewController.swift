//
//  ViewController.swift
//  SwiftApp
//
//  Created by Avinash  on 17/01/17.
//  Copyright © 2017 Avinash . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    var arrayNames = ["Avinash","Kumar","asdf"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Avinash New print Github")
        
        print("New Print Statement")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        print("asdf %i", arrayNames.count)
        return arrayNames.count
        
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cellIdentifier = "cellID"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let label = self.view.viewWithTag(100) as? UILabel
        label?.text = arrayNames[indexPath.row]
        return cell;
        
    }
    

}

