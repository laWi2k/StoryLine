//
//  StackVIew.swift
//  StoryLine
//
//  Created by Daniel on 18.07.2022.
//

import Foundation
import UIKit

class DNStackView: UIStackView {
    public var questionLabel = DNLabel(labelText: "Test Data")
    public var buttonOne = DNButton(label: "Test Data")
    public var buttonTwo = DNButton(label: "Test Data")
    
    
    init(){
        super.init(frame: .zero)
        
        axis = .vertical
        clipsToBounds = true
        
        addSubview(questionLabel)
        addSubview(buttonOne)
        addSubview(buttonTwo)
        
        
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonTwo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            buttonTwo.widthAnchor.constraint(equalTo: widthAnchor, constant: -20),
            buttonTwo.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonTwo.heightAnchor.constraint(equalToConstant: 70),
            
            buttonOne.bottomAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: -20),
            buttonOne.widthAnchor.constraint(equalTo: widthAnchor, constant: -20),
            buttonOne.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonOne.heightAnchor.constraint(equalToConstant: 70),
            
            questionLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -20),
            questionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionLabel.bottomAnchor.constraint(equalTo: buttonOne.topAnchor, constant: -50),
            questionLabel.topAnchor.constraint(equalTo: topAnchor)
            
        ])
    }
    
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
