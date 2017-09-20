//
//  AlertViewController.swift
//  VKAlertView
//
//  Created by Vinod Onkar on 20/09/17.
//  Copyright © 2017 Vinod Onkar. All rights reserved.
//

import UIKit

class AlertViewController: NSObject {
    static let shared = AlertViewController()
    
    func displayAlert(title:String, message:String, origin:UIViewController, noTitle:String, yesTitle:String)
    {
       let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        
        if noTitle.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count > 0 {
            let noAction = UIAlertAction.init(title: noTitle, style: .cancel) { (UIAlertAction) in
                alertController.dismiss(animated: true, completion: nil)
            }
              alertController.addAction(noAction)
        }
       
        if yesTitle.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count > 0 {
            let yesAction = UIAlertAction.init(title: yesTitle, style: .default) { (UIAlertAction) in
                alertController.dismiss(animated: true, completion: nil)
            }
            alertController.addAction(yesAction)

        }
        
        if title.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count == 0 && message.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count == 0{
            
            assertionFailure("title and message both cannot be empty")
            return
        }
        
        if noTitle.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count == 0 && yesTitle.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count == 0{
            
            assertionFailure("all button titles cannot be empty")
            return
        }
         origin.present(alertController, animated: true, completion: nil)
        
    }
    
}
