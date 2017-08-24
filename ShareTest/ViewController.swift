//
//  ViewController.swift
//  ShareTest
//
//  Created by Rollin Francois on 8/23/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    
    
    // MARK: Outlets
    
    
    
    // MARK: Actions
    
    @IBAction func onFacebookShare(_ sender: Any) {
    }
    
    @IBAction func onTwitterShare(_ sender: Any) {
        
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            let twitterMessageComposer: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            twitterMessageComposer.add(URL(string: "http://www.asmtechnology.com"))
            
            twitterMessageComposer.setInitialText("Test Twitter Post")
            
            twitterMessageComposer.add(UIImage(named: "Petal"))
            
            self.present(twitterMessageComposer, animated: true, completion: nil)
        } else {
            let twitterNotConfiguredAlert = UIAlertController(title: "Twitter No Configured",
                                                             message: "Please set up a Twitter account.",
                                                             preferredStyle: UIAlertControllerStyle.alert)
            
            twitterNotConfiguredAlert.addAction(UIAlertAction(title: "OK",
                                                              style: UIAlertActionStyle.default,
                                                              handler: nil))
            
            self.present(twitterNotConfiguredAlert,
                         animated: true,
                         completion: nil)
            
        }
        
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

