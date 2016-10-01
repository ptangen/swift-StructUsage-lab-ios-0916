//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var characterImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    @IBOutlet weak var speciesLabel: UILabel!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAllCharacters()
        
    }
    
    
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.titleLabel!.text! {
        case "Finn":
            updateViews(with: finn)
            
            print("hi, finn")
        case "Jake":
            updateViews(with: jake)
        case "Bubblegum":
            updateViews(with: bubblegum)
        case "BMO":
            updateViews(with: bmo)
        case "Lemongrab":
            updateViews(with: lemongrab)
        case "LSP":
            updateViews(with: lsp)
        default:break
        }
    }
    
    func createAllCharacters() {
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Pizza Maker", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Kangaroo", occupation: "Psychic", powerLevel: 16.2)
        bubblegum = Character(name: "Princess Bubblegum", species: "Pink", occupation: "Jaw Stress Reliever", powerLevel: 57.0)
        bmo = Character(name: "BMO", species: "Organism", occupation: "Muscle Growth", powerLevel: 100.0)
        lemongrab = Character(name: "Lemongrab", species: "Piccata", occupation: "Making things sour", powerLevel: 1.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Human", occupation: "Orator", powerLevel: 36.0)
        
    }
    
    func updateViews(with character: Character){
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        
        //character.displayImage()
        self.characterImageView.image = character.displayImage()
    }
}
