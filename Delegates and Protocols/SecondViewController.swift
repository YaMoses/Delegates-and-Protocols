//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by Yamusa Dalhatu on 10/6/20.
//

import UIKit

protocol CanRecieve {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanRecieve?

    @IBOutlet weak var messageLabel2: UILabel!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    var data = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageLabel2.text = data
    }
    
    @IBAction func sendBackButtonPressed(_ sender: Any) {
        
        delegate?.dataReceived(data: messageTextField.text!)
        dismiss(animated: true, completion: nil)
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
