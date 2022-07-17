//
//  MealDetailViewController.swift
//  AskhanaFinal
//
//  Created by Leila Tolegenova on 25.04.2022.
//

import UIKit

class MealDetailViewController: UIViewController {

    @IBOutlet var labelProteins: UILabel!
    @IBOutlet var labelFats: UILabel!
    @IBOutlet weak var labelCarbs: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelPrice: UILabel!

    var meal: Meal!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelProteins.text = "Белки: \(meal.protein)"
        labelFats.text = "Жиры: \(meal.fats)"
        labelCarbs.text = "Углеводы: \(meal.carbs)"
        labelDescription.text = meal.description
        labelPrice.text = "\(meal.price)  тенге"
        
    }
    
}
