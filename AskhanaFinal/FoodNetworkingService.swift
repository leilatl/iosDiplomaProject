//
//  FoodNetworkingService.swift
//  AskhanaFinal
//
//  Created by Leila Tolegenova on 25.04.2022.
//

import Foundation
struct Meal{
    var id: Int
    var name: String
    var get_absolute_url: String
    var description: String
    var price: Int
    var protein: Int
    var fats: Int
    var carbs: Int
    var available_inventory: Int
    var get_image: String
    var get_thumbnail: String
}
struct FoodCategory{
    var id: Int
    var name: String
    var get_absolute_url: String
    var meals: [Meal]
}
class FoodNetworkingService{
    func getMeals(category: String, completion: ([Meal])->()) {
        var meals = [
        Meal(id: 4,
             name: "Каша гречневая",
             get_absolute_url: "/zavtrak/kasha_grech/",
             description: "Классическая гречневая каша на молоке. 160грамм",
             price: 390,
             protein: 12,
             fats: 23,
             carbs: 65,
             available_inventory: 28,
             get_image: "http://127.0.0.1:8000/kasha_grech.png",
             get_thumbnail: "http://127.0.0.1:8000/uploads/kasha_grech.png")
        ]
        
        completion(meals)
    }
    
    
    /*func a() {
        getMeals(category: "Kasha") { meals in
            print(meals)
        }
    }*/
}
