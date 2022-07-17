//
//  FoodDetailViewController.swift
//  AskhanaFinal
//
//  Created by Leila Tolegenova on 25.04.2022.
//

import UIKit

class FoodDetailViewController: UIViewController {
    let service = FoodNetworkingService()
    var meals: [Meal] = []
    @IBOutlet weak var tableView: UITableView!
    var message = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        service.getMeals(category: message) { [weak self] meals in
            self?.meals = meals
            self?.tableView.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    
}

extension FoodDetailViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodDetailTableViewCell",
                                                 for: indexPath) as! FoodDetailTableViewCell
        let meal = meals[indexPath.row]
        let viemodel = FoodDetailTableViewCellViewModel(name: meal.name,description: meal.description, weight: 0, price: meal.price)
        cell.configure(viewmodel: viemodel)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let meal = meals[indexPath.row]
        performSegue(withIdentifier: "showMealDeatails", sender: meal)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? MealDetailViewController,
            let meal = sender as? Meal else {
            return
        }
        vc.meal = meal
    
    }
    
}
