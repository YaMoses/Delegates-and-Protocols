//
//  FirstViewController.swift
//  Delegates and Protocols
//
//  Created by Yamusa Dalhatu on 10/6/20.
//

import UIKit

class FirstViewController: UIViewController , CanRecieve{
  
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     
    }
    

    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendMessage", sender: self)
    }
    
    @IBAction func clickMeButtonPressed(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendMessage" {
            
            let secondVc = segue.destination as! SecondViewController
            
            secondVc.data = messageTextField.text!
            secondVc.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        messageLabel.text = data
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
