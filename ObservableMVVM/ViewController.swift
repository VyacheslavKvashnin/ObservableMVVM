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
     
        setBinding()
    }
    
    func setBinding() {
        viewModel.name.bind { name in
            self.label.text = name
        }
    }
    
    @IBAction func button(_ sender: Any) {
        viewModel.showData()
    }
}

extension ViewController {
    static func instantiate(storyboardName: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateInitialViewController() as! Self
    }
}
