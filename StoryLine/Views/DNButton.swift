//
//  DNButton.swift
//  StoryLine
//
//  Created by Daniel on 18.07.2022.
//

import Foundation
import UIKit


class DNButton: UIButton {
    
    
    init(label: String){
        super.init(frame: .zero)
        
        setTitle(label, for: .normal)
        layer.cornerRadius = 20
        backgroundColor = .white
        titleLabel?.font = .boldSystemFont(ofSize: 20)
        setTitleColor(.black, for: .normal)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
