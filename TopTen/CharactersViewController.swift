//
//  CharactersViewController.swift
//  TopTen
//
//  Created by Donovan Cotter on 10/6/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var characters = ["Walter White", "Mac - It's Always Sunny", "Michael Scott", "Ray Donovan", "Micky Donovan", "Tony Soprano", "Ron Swanson", "Peter Griffin", "Randy Marsh", "Jesse Pinkman", "Ross Geller"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CharacterCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = characters[indexPath.row]
        cell.textLabel?.textColor = UIColor.yellowColor()
        cell.backgroundColor = UIColor.blackColor()
        
        return cell
    }
    
    
    
}
