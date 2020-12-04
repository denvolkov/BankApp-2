//
//  BalanceViewController.swift
//  BankApp#2
//
//  Created by test on 03.12.2020.
//

import UIKit

class BalanceViewController: UIViewController {
    @IBOutlet weak var balanceLabel: UILabel!
    
    var balance = Int.random(in: 0...1_000_000) {
        didSet {
            balanceLabel.text = "\(balance) ₽"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateBalance()
    }

    func updateBalance() {
        balance = Int.random(in: 0...1_000_000)
    }
}

