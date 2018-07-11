//
//  Model.swift
//  Tucan
//
//  Created by Cat on 2/5/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import Foundation
import UIKit

class Model {
    static var articlesData = Model.myData()
    
    class func myData() ->[(image: UIImage, text: String)] {
        return  [(image: UIImage(named: "1.jpg")!, text:
            "Toucans - are members of the family Ramphastidae of near passerine birds from the Neotropics. The Ramphastidae family is most closely related to the American barbets. They are brightly marked and have large, often-colorful bills. The family includes five genera and over forty different species. Toucans are arboreal and typically lay 2–21 white eggs in their nests."),
                
                (image: UIImage(named: "3.jpg")!, text: "Toucans - are members of the family Ramphastidae of near passerine birds from the Neotropics. The Ramphastidae family is most closely related to the American barbets. They are brightly marked and have large, often-colorful bills. The family includes five genera and over forty different species. Toucans are arboreal and typically lay 2–21 white eggs in their nests."),
                (image: UIImage(named: "2.jpg")!, text: "Toucans are native to the Neotropics, from Southern Mexico, through Central America, into South America south to northern Argentina. They mostly live in the tropics, but the montane species from the genus Andigena reach temperate climates in the Andes and can be found up to the tree line."),
                 (image: UIImage(named: "3.jpg")!, text: "Toucans are highly social and most species occur in groups of up to 20 or more birds for most of the time. Pairs may retire from the groups during the breeding season, then return with their offspring after the breeding season. Larger groups may form during irruptions, migration or around a particularly large fruiting tree."),
                 (image: UIImage(named: "1.jpg")!, text: "Toucans are primarily frugivorous (fruit eating), but are opportunistically omnivorous and will take prey such as insects, smaller birds, and small lizards.[9] Captive toucans have been reported to hunt insects actively in their cages, and it is possible to keep toucans on an insect-only diet."),]
    }
}
