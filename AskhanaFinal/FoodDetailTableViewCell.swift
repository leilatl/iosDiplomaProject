//
//  FoodDetailTableViewCell.swift
//  AskhanaFinal
//
//  Created by Leila Tolegenova on 25.04.2022.
//

import UIKit
class FoodDetailTableViewCellViewModel {
    var name: String
    var description: String
    var weight: Int
    var price: Int
    var counter = 1
    
    init(name: String, description: String, weight: Int, price: Int) {
        self.name = name
        self.description = description
        self.weight = weight
        self.price = price
    }
    
    init() {
        name = ""
        description = ""
        weight = 0
        price = 0
    }
}

class FoodDetailTableViewCell: UITableViewCell {
    var viewModel = FoodDetailTableViewCellViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodDescriptionLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(viewmodel: FoodDetailTableViewCellViewModel) {
        self.viewModel = viewmodel
        foodNameLabel.text = viewmodel.name
        foodDescriptionLabel.text = viewmodel.description
        weightLabel.text = "\(viewmodel.weight) грамм"
        priceLabel.text = "\(viewmodel.price) тенге"
        quantityLabel.text = String(viewmodel.counter)
    }
    
}
