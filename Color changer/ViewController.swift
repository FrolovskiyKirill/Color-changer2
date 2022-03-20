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
        
        colorView.layer.cornerRadius = 10
        
        redChanger.minimumTrackTintColor = .red
        greenChanger.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        switch sender {
        case redChanger:
            redLabel.text = string(from: redChanger)
        case greenChanger:
            greenLabel.text = string(from: greenChanger)
        default:
            blueLabel.text = string(from: blueChanger)
        }
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redChanger.value),
            green: CGFloat(greenChanger.value),
            blue: CGFloat(blueChanger.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(from: redChanger)
            case greenLabel:
                greenLabel.text = string(from: greenChanger)
            default:
                blueLabel.text = string(from: blueChanger)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
//    @IBAction func sliderRed(_ sender: Any) {
//
//        colorView.backgroundColor = UIColor(red: CGFloat(redChanger.value),
//                                            green: CGFloat(greenChanger.value),
//                                            blue: CGFloat(blueChanger.value), alpha: 1)
//
//        redLabel.text = "\(round((100 * redChanger.value)) / 100)"
//        greenLabel.text = "\(round((100 * greenChanger.value)) / 100)"
//        blueLabel.text = "\(round((100 * blueChanger.value)) / 100)"
//
//    }
    
}

