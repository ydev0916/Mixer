//
//  TriviaBank.swift
//  Mixer
//
//  Created by Masthan Shaik on 11/21/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import Foundation


class TriviaBank{
    var list = [Trivia]()
    
    init() {
        list.append(Trivia(image: "flag1", questionText: "This British overseas territory is a popular tax haven.", choiceA: "A. Haiti", choiceB: "B. Suriname", choiceC: "C. Puerto Rico", choiceD: "D. Anguilla", answer: 4))
        
        list.append(Trivia(image: "flag2", questionText: "The highest point on this island, Mount Obama was renamed in 2009 in honor of the president.", choiceA: "A. Dominica", choiceB: "B. Bahamas", choiceC: "C. Antigua and Barbuda", choiceD: "British Virgin Islands", answer: 3))
        
        list.append(Trivia(image: "flag3", questionText: "This country produces its water from a desalination plant and the electricity on the island is a by-product of the desalination process.", choiceA: "A. Cuba", choiceB: "B. Aruba", choiceC: "C. Gaudeloupe", choiceD: "D. Cayman Islands", answer: 2))
        
        list.append(Trivia(image: "flag4", questionText: "This country has a magnificent underwater cave system.", choiceA: "A. The Bahamas", choiceB: "B. Venezuela", choiceC: "C. Matinique", choiceD: "D. Dominican Republic", answer: 1))
        
        list.append(Trivia(image: "flag5" , questionText: "This is the island of Cou-Cou and Flying Fish. The popular R&B singer Rihanna is from here.", choiceA: "A. Trinidad and Tobago" , choiceB: "B. Saint Kitts and Nevis" , choiceC: "C. Grenada" , choiceD: "D. Barbados", answer: 4))
        
        list.append(Trivia(image: "flag15" , questionText: "Rum is the national drink of this country. The fastest man in the world Usain Bolt is from here.", choiceA: "A. Jamaica" , choiceB: "B. Saint Vincent and the Grenadines" , choiceC: "C. St. Lucia" , choiceD: "D. Guyana", answer: 1))
    }
}
