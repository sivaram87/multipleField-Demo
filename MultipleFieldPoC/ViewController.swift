//
//  ViewController.swift
//  MultipleFieldPoC
//
//  Created by Shiva on 18/02/15.
//  Copyright (c) 2015 Shiva. All rights reserved.
//
// Updated on feature1 
// To be merged on the master branch
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var values = Dictionary<String, NSAttributedString>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Configure table dynamic height
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 160.0
        
        // Adding Values to Dictionary
        values.updateValue(self.formatValues("Sivaram", colorValue: UIColor.blackColor()), forKey: "Name")
        values.updateValue(self.formatValues("Demo Project", colorValue: UIColor.blueColor()), forKey: "Project")
        values.updateValue(self.formatValues("Ramanujam IT Park Chennai", colorValue: UIColor.grayColor()), forKey: "Location")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func formatValues(forStr: String, colorValue:UIColor) -> NSAttributedString {
        var fomattedStr:NSMutableAttributedString? = NSMutableAttributedString(string: forStr)
        if let fomattedStr = fomattedStr {
            fomattedStr.addAttribute(NSForegroundColorAttributeName, value: colorValue, range: NSMakeRange(0, fomattedStr.length))
        }
        return fomattedStr!
    }
    
}

extension ViewController{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell? {
        
        var cell: MultipleTableViewCell
        
        if (indexPath.row % 2) == 0 {
            cell = tableView.dequeueReusableCellWithIdentifier("MultipleCell", forIndexPath: indexPath) as! MultipleTableViewCell
            cell.lblTitle?.text = "Demo project"
            cell.setValueForDescription(values)
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier("NewCell", forIndexPath: indexPath) as! MultipleTableViewCell
            cell.lblTitle?.text = "Sivaram kljsdl;f ja;lsdjfl;asdjfl;asjfl;ajs fljsad;fl jasldfjsda Sivaram kljsdl;f ja;lsdjfl;asdjfl;asjfl;ajs fljsad;fl jasldfjsda"
            cell.lblDescription.text = "iOS Developer sdklfj a;lfjlk;sadjfl;asdjfl;asjd fds "
            
        }
        return cell
    }
    
}