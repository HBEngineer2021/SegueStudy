//
//  ViewController.swift
//  SegueStudy
//
//  Created by Motoki Onayama on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            // segueのIDを確認して特定のsegueのときのみ動作させる
            if segue.identifier == "SubViewController" {
                // 2. 遷移先のViewControllerを取得
                let next = segue.destination as? SubViewController
                // 3. １で用意した遷移先の変数に値を渡す
                next?.outputValue = self.TextField.text
            }
        
        if segue.identifier == "ReferenceController" {
            // 2. 遷移先のViewControllerを取得
            let next = segue.destination as? ReferenceController
            // 3. １で用意した遷移先の変数に値を渡す
            next?.outputValue = self.TextField.text
        }
        
        
        }
    
    
    
    @IBAction func TapOnText(_ sender: UIButton) {
       
        performSegue(withIdentifier: "SubViewController", sender: nil)
    }
}

class SubViewController: UIViewController {
    
    @IBOutlet var Label: UILabel!
    
    var outputValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label.text = outputValue
        
    }
    
}

class ReferenceController: UIViewController {
    
    @IBOutlet var Label: UILabel!
    
    var outputValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label.text = outputValue
        
    }
}
