//
//  DNLabel.swift
//  StoryLine
//
//  Created by Daniel on 18.07.2022.
//

import Foundation
import UIKit

class DNLabel: UILabel {

    
    init(labelText: String){
        super.init(frame: .zero)
        
        text = labelText
        numberOfLines = 0
        textAlignment = .center
        font = .boldSystemFont(ofSize: 25)
        textColor = .black
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
