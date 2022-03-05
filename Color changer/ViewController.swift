//
//  ViewController.swift
//  Color changer
//
//  Created by Кирилл on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redChanger: UISlider!
    @IBOutlet weak var greenChanger: UISlider!
    @IBOutlet weak var blueChanger: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redChanger.value = 0
        greenChanger.value = 0
        blueChanger.value = 0
        
        redLabel.text = "\(0.0)"
        greenLabel.text = "\(0.0)"
        blueLabel.text = "\(0.0)"
        
        colorView.layer.cornerRadius = 10
    }
    
    @IBAction func sliderRed(_ sender: Any) {
        
        colorView.backgroundColor = UIColor(red: CGFloat(redChanger.value), green: CGFloat(greenChanger.value), blue: CGFloat(blueChanger.value), alpha: 1)
        
        redLabel.text = "\(round((100 * redChanger.value)) / 100)"
        greenLabel.text = "\(round((100 * greenChanger.value)) / 100)"
        blueLabel.text = "\(round((100 * blueChanger.value)) / 100)"
        
    }
    
}

