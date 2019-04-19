//
//  Meal.swift
//  FoodTrackerTake2
//
//  Created by Alec Smith on 4/18/19.
//  Copyright © 2019 Alec Smith. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
       
    }
}
