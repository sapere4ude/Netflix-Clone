//
//  UpcomingViewController.swift
//  Netflix Clone
//
//  Created by Kant on 2022/02/20.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Upcoming"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
}
