//
//  ViewController.swift
//  MealsAndCalories
//
//  Created by Özgür Salih Dülger on 4.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mealsNames = [String] ()
    var mealsImages = [UIImage]()
    var mealsCalories = [String] ()
    
    var chosenMealsName = ""
    var chosenMealsImage = UIImage()
    var chosenMealsCalories = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        mealsNames.append("Beyti Sarma")
        mealsNames.append("Adana Kebap")
        mealsNames.append("İskender")
        mealsNames.append("Lahmacun")
        mealsNames.append("Pide")
        mealsNames.append("Kemalpaşa Tatlısı")
       
        
        
        
        mealsImages.append(UIImage(named: "beyti")!)
        mealsImages.append(UIImage(named: "adanakebap")!)
        mealsImages.append(UIImage(named: "iskender")!)
        mealsImages.append(UIImage(named: "lahmacun")!)
        mealsImages.append(UIImage(named: "pide")!)
        mealsImages.append(UIImage(named: "kemalpasa")!)
     
        
        
        mealsCalories.append("489 Kalori")
        mealsCalories.append("361 Kalori")
        mealsCalories.append("755 Kalori")
        mealsCalories.append("240 Kalori")
        mealsCalories.append("671 Kalori")
        mealsCalories.append("426 Kalori")
      
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mealsNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMealsName = mealsNames[indexPath.row]
        chosenMealsImage = mealsImages[indexPath.row]
        chosenMealsCalories = mealsCalories[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVc", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVc" {
            let destinationVc = segue.destination as! DetailsVC
            destinationVc.selectedMealsName = chosenMealsName
            destinationVc.selectedMealsImage = chosenMealsImage
            destinationVc.selectedMealsCalories = chosenMealsCalories
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.mealsNames.remove(at: indexPath.row)
            self.mealsCalories.remove(at: indexPath.row)
            self.mealsImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


}

