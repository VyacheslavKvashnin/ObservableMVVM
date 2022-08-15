//
//  ViewController.swift
//  ObservableMVVM
//
//  Created by Вячеслав Квашнин on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var viewModel: ViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    @IBAction func button(_ sender: Any) {
        
    }
}

extension ViewController {
    static func instantiate(storyboardName: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateInitialViewController() as! Self
    }
}
