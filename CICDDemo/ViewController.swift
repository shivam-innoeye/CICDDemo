//
//  ViewController.swift
//  CICDDemo
//
//  Created by Shivam Sevarik on 12/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstNumber: UITextField!
    @IBOutlet weak var txtSecondNumber: UITextField!
    @IBOutlet weak var segOperations: UISegmentedControl!
    @IBOutlet weak var btnCompute: UIButton!
    @IBOutlet weak var lblResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnComputeAction(_ sender: Any) {
        let firstValue = Int(self.txtFirstNumber.text ?? "0") ?? 0
        let secondValue = Int(self.txtSecondNumber.text ?? "0") ?? 0
        switch self.segOperations.selectedSegmentIndex {
        case 0:
            self.lblResult.text = "Result is \(firstValue + secondValue)"
        case 1:
            self.lblResult.text = "Result is \(firstValue - secondValue)"
        case 2:
            self.lblResult.text = "Result is \(firstValue * secondValue)"
        case 3:
            self.lblResult.text = "Result is \(firstValue / secondValue)"

        default:
            print("default")
        }
    }

}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}

