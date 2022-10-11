//
//  CharacterInfo.swift
//  AttackOnTitan
//
//  Created by Arif TABAKOĞLU on 9.10.2022.
//

import Foundation
import UIKit

struct CharacterInfo{
    
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
