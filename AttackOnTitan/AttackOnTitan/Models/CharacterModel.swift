//
//  CharacterModel.swift
//  AttackOnTitan
//
//  Created by Arif TABAKOĞLU on 8.10.2022.
//

import Foundation
import UIKit

struct ImageWithName {
    var name : String
    var image : UIImage
    var biologicalInformation : BiologicalInformation
    var professionalInformation : ProfessionalInformation
    var otherInformation : OtherInformation
    var actingInformation : ActingInformation
    
    init(name: String, biologicalInformation: BiologicalInformation, professionalInformation: ProfessionalInformation, otherInformation: OtherInformation, actingInformation: ActingInformation) {
       
        self.name = name
        self.image = UIImage(named: name)!
        
        self.biologicalInformation = biologicalInformation
        self.professionalInformation = professionalInformation
        self.otherInformation = otherInformation
        self.actingInformation = actingInformation
    }
}
