//
//  MainViewController.swift
//  HW 2.4
//
//  Created by Игорь Солодянкин on 24.02.2023.
//

import UIKit

protocol SettingViewProtocol: AnyObject {
    func set(color: UIColor)
}

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.color = view.backgroundColor
        settingVC.delegate = self
    }

}

extension MainViewController: SettingViewProtocol {
    func set(color: UIColor) {
        view.backgroundColor = color
    }
}
