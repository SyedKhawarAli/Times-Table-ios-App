//
//  ViewController.swift
//  timesTable
//
//  Created by Macbook Pro on 26/06/2017.
//  Copyright © 2017 iotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var tabel: UITableView!
    
    
    @IBAction func sliderChange(_ sender: Any) {
        print("slider changed")
        tabel.reloadData()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 50
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
     
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = String(Int(slider.value*20) * (indexPath.row+1))
        
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

