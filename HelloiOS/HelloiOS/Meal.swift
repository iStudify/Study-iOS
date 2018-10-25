//
//  Meal.swift
//  HelloiOS
//
//  Created by Gavin on 2018/10/15.
//  Copyright © 2018 Gavin Liu. All rights reserved.
//

import UIKit

class Meal {
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        if name.isEmpty || rating < 0  {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
