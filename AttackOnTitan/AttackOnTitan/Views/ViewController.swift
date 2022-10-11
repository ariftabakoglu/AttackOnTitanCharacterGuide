//
//  ViewController.swift
//  AttackOnTitan
//
//  Created by Arif TABAKOĞLU on 8.10.2022.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var searchBar: UISearchBar!

    @IBOutlet weak var collectionView: UICollectionView!
  
    var characters = [ImageWithName]()
    
    var searchResultArray = [ImageWithName]()
    
    var searchStatus:Bool = false

    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        searchBar.delegate = self
        
 
        // Characters
        
        let c1 = ImageWithName(name: "Keith Sadies", biologicalInformation: BiologicalInformation(species: "Human", gender: "Male", residance: "Wall Rose", status: "Deceased"), professionalInformation: ProfessionalInformation(occupation: "Commander", affilation: "Cadet Corps", formerAffilation: "Scout Regiment"), otherInformation: OtherInformation(titanKills: "2"), actingInformation: ActingInformation(voiceActor: "Tsuguo Mogami (Japanese),Patrick Seitz (English)"))
        let c2 = ImageWithName(name: "Bertholdt Hoover", biologicalInformation: BiologicalInformation(species: "Human, Intelligent Titan", gender: "Male", residance: "Wall Rose", status: "Deceased"), professionalInformation: ProfessionalInformation(occupation: "Warrior", affilation: "Marleyan Military", formerAffilation: "Scout Regiment, 104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "1"), actingInformation: ActingInformation(voiceActor: "Tomohisa Hashizume (Japanese),David Matranga (English)"))
        let c3 = ImageWithName(name: "Annie Leonhart", biologicalInformation: BiologicalInformation(species: "Human,Intelligent Titan", gender: "Female", residance: "Wall Sina", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Warrior", affilation: "Marleyan Military", formerAffilation: "Military Police Regiment, 104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "4"), actingInformation: ActingInformation(voiceActor: "Yu Shimamura (Japanese),Lauren Landa (English)"))
        let c4 = ImageWithName(name: "Sasha Braus", biologicalInformation: BiologicalInformation(species: "Human", gender: "Female", residance: "Wall Rose", status: "Deceased"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Scout Regiment, Special Operations Squad", formerAffilation: "104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "1"), actingInformation: ActingInformation(voiceActor: "Yū Kobayashi (Japanese), Ashly Burch (English)"))
        
        let c5 = ImageWithName(name: "Conny Springer", biologicalInformation: BiologicalInformation(species: "Human", gender: "Male", residance: "Wall Rose", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Scout Regiment, Special Operations Squad", formerAffilation: "104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "1"), actingInformation: ActingInformation(voiceActor: "Hiro Shimono (Japanese), Clifford Chapin (English)"))
        let c6 = ImageWithName(name: "Hange Zoe", biologicalInformation: BiologicalInformation(species: "Human", gender: "Ambiguous", residance: "Wall Rose", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Scout Regiment", formerAffilation: "Fourth Squad"), otherInformation: OtherInformation(titanKills: "2"), actingInformation: ActingInformation(voiceActor: "Romi Park (Japanese), Jessica Calvello (English)"))
        let c7 = ImageWithName(name: "Zeke Jaeger", biologicalInformation: BiologicalInformation(species: "Human, Intelligent Titan", gender: "Male", residance: "Marley", status: "Unknown"), professionalInformation: ProfessionalInformation(occupation: "Warrior", affilation: "Anti-Marleyan Volunteers, Nobility", formerAffilation: "Warriors"), otherInformation: OtherInformation(titanKills: "0"), actingInformation: ActingInformation(voiceActor: "Takehito Koyasu (Japanese), Jason Liebrecht (English)"))
        let c8 = ImageWithName(name: "Eren Jaeger", biologicalInformation: BiologicalInformation(species: "Human,Intelligent Titan", gender: "Male", residance: "Wall Rose", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Jaegerists", formerAffilation: "Scout Regiment, Special Operations Squad, 104th Cadet Corps, Elite Squad"), otherInformation: OtherInformation(titanKills: "23"), actingInformation: ActingInformation(voiceActor: "Yuki Kaji (Japanese), Bryce Papenbrook (English)"))
        let c9 = ImageWithName(name: "Reiner Braun", biologicalInformation: BiologicalInformation(species: "Human, Intelligent Titan", gender: "Male", residance: "Liberio", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Warrior", affilation: "Warriors", formerAffilation: "Scout Regiment, 104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "2"), actingInformation: ActingInformation(voiceActor: "Yoshimasa Hosoya (Japanese), Robert McCollum (English)"))
        let c10 = ImageWithName(name: "Levi Ackerman", biologicalInformation: BiologicalInformation(species: "Human", gender: "Male", residance: "Wall Rose", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Scout Regiment", formerAffilation: "Special Operations Squad"), otherInformation: OtherInformation(titanKills: "87"), actingInformation: ActingInformation(voiceActor:"Hiroshi Kamiya(Japanese),Matthew Mercer(English)"))
        let c11 = ImageWithName(name: "Mikasa Ackerman", biologicalInformation: BiologicalInformation(species: "Human", gender: "Female", residance: "Wall Rose", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Scout Regiment", formerAffilation: "104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "22"),actingInformation: ActingInformation(voiceActor: "Yui Ishikawa (Japanese), Trina Nishimura (English)"))
        let c12 = ImageWithName(name: "Armin Arlelt", biologicalInformation: BiologicalInformation(species: "Human, Intelligent Titan", gender: "Male", residance: "Wall Rose", status: "Alive"), professionalInformation: ProfessionalInformation(occupation: "Soldier", affilation: "Scout Regiment", formerAffilation: "104th Cadet Corps"), otherInformation: OtherInformation(titanKills: "2"), actingInformation: ActingInformation(voiceActor: "Marina Inoue (Japanese), Josh Grelle (English)"))
        
        
        characters = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12]
        
                                   
        // CollecttionView LAYOUT
        
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let width = self.collectionView.frame.size.width
        layout.itemSize = CGSize(width: (width)/3 - 15, height: (width - 5)/2)

        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        
        collectionView.collectionViewLayout = layout
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if segue.identifier == "toInfoVC"{
            
            let destinationVC = segue.destination as! InfoVC
            
            if let senderData = sender as? Int {
                
                   
                    if self.searchStatus == true{
                        
                        destinationVC.incomingName = self.searchResultArray[senderData].name
                        destinationVC.incomingImage = self.searchResultArray[senderData].image
                        destinationVC.incomingGender = self.searchResultArray[senderData].biologicalInformation.gender
                        destinationVC.incomingSpecies = self.searchResultArray[senderData].biologicalInformation.species
                        destinationVC.incomingResidance = self.searchResultArray[senderData].biologicalInformation.residance
                        destinationVC.incomingAffilation = self.searchResultArray[senderData].professionalInformation.affilation
                        destinationVC.incomingOccupation = self.searchResultArray[senderData].professionalInformation.occupation
                        destinationVC.incomingTitanKills = self.searchResultArray[senderData].otherInformation.titanKills
                        destinationVC.incomingFormerAffilation = self.searchResultArray[senderData].professionalInformation.formerAffilation
                        destinationVC.incomingVoiceActor = self.searchResultArray[senderData].actingInformation.voiceActor
                        destinationVC.incomingVoiceActor = self.searchResultArray[senderData].biologicalInformation.status
                      
                        
                    }else{
                       
                        destinationVC.incomingName = self.characters[senderData].name
                        destinationVC.incomingImage = self.characters[senderData].image
                        destinationVC.incomingGender = self.characters[senderData].biologicalInformation.gender
                        destinationVC.incomingSpecies = self.characters[senderData].biologicalInformation.species
                        destinationVC.incomingResidance = self.characters[senderData].biologicalInformation.residance
                        destinationVC.incomingAffilation = self.characters[senderData].professionalInformation.affilation
                        destinationVC.incomingOccupation = self.characters[senderData].professionalInformation.occupation
                        destinationVC.incomingTitanKills = self.characters[senderData].otherInformation.titanKills
                        destinationVC.incomingFormerAffilation = self.characters[senderData].professionalInformation.formerAffilation
                        destinationVC.incomingStatus = self.characters[senderData].biologicalInformation.status
                        destinationVC.incomingVoiceActor = self.characters[senderData].actingInformation.voiceActor
 
                }
                
            }
            
        }
    }
    

}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
        if searchStatus{
            return searchResultArray.count
        }else{
            return characters.count
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell
        
        if searchStatus{
            cell?.characterNameLabel.text = searchResultArray[indexPath.row].name
            cell?.characterImageView.image = searchResultArray[indexPath.row].image
        }else{
            cell?.characterNameLabel.text = characters[indexPath.row].name
            cell?.characterImageView.image = characters[indexPath.row].image
        }
        
        // cell border
        
        cell?.layer.borderColor = UIColor.brown.cgColor
        cell?.layer.borderWidth = 1.8
        cell?.layer.cornerRadius = 10
        
        return (cell != nil ? cell : nil)!
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toInfoVC", sender: indexPath.row)
        
    }
}


extension ViewController : UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search Result : \(searchText)")
        
        if searchText != "" {
        
            searchStatus = true
            
            searchResultArray = characters.filter({ searching in
                
                searching.name.lowercased().contains(searchText.lowercased())
                
            })

        }else{
            searchStatus = false
        }
        
        collectionView.reloadData()
    }
        
    }

