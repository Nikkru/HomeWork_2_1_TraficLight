//
//  ViewController.swift
//  HomeWork_2_1_1
//
//  Created by Nikolai Krusser on 20.05.2020.
//  Copyright © 2020 Nikolai Krusser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let off: Float = 0.2
    let on: Float = 1.0
    var go: Float = 0.2
    var attention: Float = 0.2
    var stop: Float = 1
    
    @IBOutlet weak var redTraficLightView: UIView!
    @IBOutlet weak var yellowTraficLightView: UIView!
    @IBOutlet weak var greenTraficLightView: UIView!
    @IBOutlet weak var controllTraficLightButtonText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTraficLightView.layer.opacity = off
        yellowTraficLightView.layer.opacity = off
        greenTraficLightView.layer.opacity = off
        
        redTraficLightView.layer.cornerRadius = CGFloat(Int(redTraficLightView.frame.size.height)/2)
        yellowTraficLightView.layer.cornerRadius = CGFloat(Int(yellowTraficLightView.frame.size.height)/2)
        greenTraficLightView.layer.cornerRadius = CGFloat(Int(greenTraficLightView.frame.size.height)/2)
    }
    
    @IBAction func controllTraficLightButton(_ sender: UIButton) {
        
        controllTraficLightButtonText.setTitle("NEXT", for: .normal)
        
        redTraficLightView.layer.opacity = stop
        yellowTraficLightView.layer.opacity = attention
        greenTraficLightView.layer.opacity = go
        
        if stop == on {
            attention = on
            stop = off
        } else if attention == on {
            go = on
            attention = off
        } else if go == on {
            stop = on
            go = off
        }
    }
    
}

