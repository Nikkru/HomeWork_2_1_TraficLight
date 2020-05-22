//
//  ViewController.swift
//  HomeWork_2_1_1
//
//  Created by Nikolai Krusser on 20.05.2020.
//  Copyright © 2020 Nikolai Krusser. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    private let off: CGFloat = 0.2
    private let on: CGFloat = 1.0
    private var traficLight = TraficLight.stop
    
    @IBOutlet weak var redTraficLightView: UIView!
    @IBOutlet weak var yellowTraficLightView: UIView!
    @IBOutlet weak var greenTraficLightView: UIView!
    @IBOutlet weak var controllTraficLightButtonText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTraficLightView.alpha = off
        yellowTraficLightView.alpha = off
        greenTraficLightView.alpha = off
    }
    override func viewWillLayoutSubviews() {
        redTraficLightView.layer.cornerRadius = CGFloat(Int(redTraficLightView.frame.size.height)/2)
        yellowTraficLightView.layer.cornerRadius = CGFloat(Int(yellowTraficLightView.frame.size.height)/2)
        greenTraficLightView.layer.cornerRadius = CGFloat(Int(greenTraficLightView.frame.size.height)/2)
    }
    @IBAction func controllTraficLightButton(_ sender: UIButton) {
        
        controllTraficLightButtonText.setTitle("NEXT", for: .normal)
        
        switch traficLight {
        case .stop:
            greenTraficLightView.alpha = off
            redTraficLightView.alpha = on
            traficLight = .attantion
        case .attantion:
            redTraficLightView.alpha = off
            yellowTraficLightView.alpha = on
            traficLight = .go
        case .go:
            yellowTraficLightView.alpha = off
            greenTraficLightView.alpha = on
            traficLight = .stop
        }

    }
    
}

