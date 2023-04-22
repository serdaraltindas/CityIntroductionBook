//
//  ViewController.swift
//  CityIntroductionBook
//
//  Created by Serdar Altındaş on 22.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var city = [City]()
    var userSelected : City?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //citys
        let city1 = City(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "sehir1")!)
        let city2 = City(isim: "İzmir", bolge: "Ege", gorsel: UIImage(named: "sehir2")!)
        let city3 = City(isim: "Diyarbakır", bolge: "Doğu Anadolu", gorsel: UIImage(named: "sehir1")!)
        let city4 = City(isim: "Sinop", bolge: "Karadeniz", gorsel: UIImage(named: "sehir2")!)
        let city5 = City(isim: "Ankara", bolge: "İç Anadolu", gorsel: UIImage(named: "sehir1")!)
        
        city = [city1,city2,city3,city4,city5]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = city[indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelected = city[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = userSelected
        }
    }
}

