//
//  DetailsViewController.swift
//  CityIntroductionBook
//
//  Created by Serdar Altındaş on 22.04.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var cityBolgeLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityImageView: UIImageView!
    
    var selectedCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityNameLabel.text = selectedCity?.isim
        cityBolgeLabel.text = selectedCity?.bolge
        cityImageView.image = selectedCity?.gorsel
        
    }
}
