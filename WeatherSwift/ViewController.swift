//
//  ViewController.swift
//  WeatherSwift
//
//  Created by sean on 11/3/17.
//  Copyright © 2017 Cresent Engineering Lab. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textInputCityZip: UITextField!
    
    @IBOutlet weak var textOutput: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickedSubmit(sender: AnyObject) {
        let timeout = 11 as NSTimeInterval
        let searchTerm = "philip+glass"
        let url = NSURL(string: "https://itunes.apple.com/search?term=\(searchTerm)")
        let request: NSURLRequest = NSURLRequest(URL: url!,
            cachePolicy: NSURLRequestCachePolicy.ReloadIgnoringCacheData,
            timeoutInterval: timeout)
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        let task: NSURLSessionDataTask = session.dataTaskWithRequest(request, completionHandler: {
            (data, response, error) in
            if response == nil {
                print("Timeout")
            } else {
                //let datastring:NSString! = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //self.textOutput.text = "Output obj"
                //textOutput.text = datastring
                print(String(data: data!, encoding: NSUTF8StringEncoding))
            }
            }
        )
        
        task.resume()
        textOutput.text = "finished"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

