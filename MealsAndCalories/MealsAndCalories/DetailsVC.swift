//
//  DetailsVC.swift
//  MealsAndCalories
//
//  Created by Özgür Salih Dülger on 6.01.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var mealsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mealsCaloriesLabel: UILabel!
    
    
    var selectedMealsName = ""
    var selectedMealsImage = UIImage()
    var selectedMealsCalories = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mealsLabel.text = selectedMealsName
        imageView.image = selectedMealsImage
        mealsCaloriesLabel.text = selectedMealsCalories
    }
    
 

}
