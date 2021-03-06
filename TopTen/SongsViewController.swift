//
//  SongsViewController.swift
//  TopTen
//
//  Created by Donovan Cotter on 10/6/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class SongsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var songs = ["Ray Charles - Georgia On My Mind", "Jay-Z - Allure", "Otis Redding - The Dock Of The Bay", "Eminem - Till I Collapse", "The Rolling Stones - Can't You Hear Me Knocking", "The Notorious B.I.G. - Hypnotize", "K-Ci & JoJo - All My Life", "Boyz II Men - Motown Philly", "Usher - Nice & Slow", "Tupac - I Ain't Mad At Cha"]

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
        return songs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SongCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = songs[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor.blueColor()
        
        return cell
    }
    

}
