//
//  Model.swift
//  CityIntroductionBook
//
//  Created by Serdar Altındaş on 22.04.2023.
//

import Foundation
import UIKit

class City {
    
    var isim : String
    var bolge : String
    var gorsel : UIImage
    // init etmemizin sebebi hepsini tek satırda almak için yapıyoruz.
    init(isim: String, bolge: String, gorsel: UIImage) {
        
        self.isim = isim
        self.bolge = bolge
        self.gorsel = gorsel
    }

    
    
}
