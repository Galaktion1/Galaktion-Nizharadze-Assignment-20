//
//  ViewController.swift
//  Galaktion Nizharadze, Assignment #20
//
//  Created by Gaga Nizharadze on 09.08.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func calcPrimeNumberButtonAction(_ sender: UIButton) {
    
        let primeQueue = DispatchQueue(label: "perform_primeNumbs")
        sender.isEnabled = false
        
        primeQueue.async {
            self.printPrimeNumbers()
            DispatchQueue.main.async {
                sender.isEnabled = true
            }
        }
    }
    
    
    private func printPrimeNumbers() {
            print(2)
            print(3)
            for each in stride(from: 5, through: 10000, by: 2) {
                if each.isPrime() {
                    print(each)
                }
            }
    }
}



extension Int {
    func isPrime() -> Bool  {
        for each in 2 ... self / 2 {
            if self % each == 0 {
                return false
            }
        }
        return true
    }
}
