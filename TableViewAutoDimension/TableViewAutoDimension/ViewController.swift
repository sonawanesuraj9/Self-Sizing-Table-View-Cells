//
//  ViewController.swift
//  TableViewAutoDimension
//
//  Created by Suraj Sonawane on 25/10/16.
//  Copyright © 2016 Suraj Sonawane. All rights reserved.
//

import UIKit

class bioTableViewCell : UITableViewCell{
    
    
    //TODO: - Controls
    
    @IBOutlet weak var lblDescription: UILabel!
   // @IBOutlet weak var imgDescription: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblBio: UILabel!
    
    
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tblMain: UITableView!
    
    let evenText = "Not only is the app missing images of each artist and each work, but the information you are trying to display is getting cut off! Each piece of information and image will be a different size, so you can’t just increase"
    
    let oddText = "Run the app again, and it will look nothing has really changed. You are now using your bioLabel, but it’s just showing one line of text in each cell. Even though the number of lines is set to 0 and your constraints are properly configured so your bioLabel takes up the entire cell, it turns out table views need to be told to let Auto Layout drive the height of each cell."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tblMain.tableFooterView = UIView()
        self.tblMain.rowHeight = UITableViewAutomaticDimension
        self.tblMain.estimatedRowHeight = 140
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


//TODO: - UITableViewDatasource method implementation
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("CellID", forIndexPath: indexPath) as! bioTableViewCell
        
        cell.selectionStyle = .None
        
        if(indexPath.row % 2 == 0){
           cell.lblBio.text = evenText
            cell.lblBio.textColor = UIColor(white: 150/255, alpha: 1)
            cell.imgProfile.image = UIImage(named: "img1.png")
            cell.lblDescription.text = "I am cool guy"
        }else{
           cell.lblBio.text = oddText
             cell.lblBio.textColor = UIColor(white: 0/255, alpha: 1)
            
            cell.imgProfile.image = UIImage(named: "img2.png")
            cell.lblDescription.text = "I am iOS Developer"
        }
        
        return cell
    }
    

    
}

