//
//  InfoVC.swift
//  AttackOnTitan
//
//  Created by Arif TABAKOĞLU on 9.10.2022.
//

import UIKit

class InfoVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var voiceActorLabel: UILabel!
    @IBOutlet weak var formerAffilationLabel: UILabel!
    @IBOutlet weak var titanKillsLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var residanceLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var affilationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var incomingName : String?
    var incomingImage : UIImage?
    var incomingSpecies : String?
    var incomingGender : String?
    var incomingResidance : String?
    var incomingOccupation : String?
    var incomingAffilation : String?
    var incomingFormerAffilation : String?
    var incomingTitanKills: String?
    var incomingVoiceActor: String?
    var incomingStatus : String?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        if let name = incomingName{
            nameLabel.text = name
        }
        if let image = incomingImage{
            imageView.image = image
        }
        if let species = incomingSpecies{
            speciesLabel.text = species
        }
        if let status = incomingStatus{
            statusLabel.text = status
        }
        if let gender = incomingGender{
            
            genderLabel.text = gender
            
        }
        if let residance = incomingResidance{
            
            residanceLabel.text = residance
            
        }
        if let occupation = incomingOccupation{
            occupationLabel.text = occupation
        }
        
        if let affiliation = incomingAffilation {
            affilationLabel.text = affiliation
        }
        
        if let formerAffilation = incomingFormerAffilation{
            formerAffilationLabel.text = formerAffilation
        }
        if let titanKills = incomingTitanKills{
            titanKillsLabel.text = titanKills
        }
        if let voiceActor = incomingVoiceActor{
            
            voiceActorLabel.text = voiceActor
        }
        

    }
    

}
