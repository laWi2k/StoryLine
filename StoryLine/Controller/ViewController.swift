//
//  ViewController.swift
//  StoryLine
//
//  Created by Daniel on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let storyGenerator = StoryGenerator()
    
    var currentQuestion = 0
    
    let vStackView = DNStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        settingConstraints()
        targetingButtons()
        setupUI()
    }
    
    func addSubviews(){
        view.backgroundColor = .systemGray3
        view.addSubview(vStackView)
    }
    
    func settingConstraints() {
        NSLayoutConstraint.activate([
            vStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            vStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            vStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            vStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5)
        ])
    }
    
    func targetingButtons() {
        vStackView.buttonOne.addTarget(self, action: #selector(buttonOneTappedDown), for: .touchDown)
        vStackView.buttonOne.addTarget(self, action: #selector(buttonOneTappedUp), for: .touchUpInside)
        
        vStackView.buttonTwo.addTarget(self, action: #selector(buttonTwoTappedDown), for: .touchDown)
        vStackView.buttonTwo.addTarget(self, action: #selector(buttonTwoTappedUp), for: .touchUpInside)
    }
    
    func setupUI() {
        vStackView.questionLabel.text = storyGenerator.currentQuestion.title
        vStackView.buttonOne.setTitle(storyGenerator.currentQuestion.choice1 , for: .normal)
        vStackView.buttonTwo.setTitle(storyGenerator.currentQuestion.choice2 , for: .normal)
    }
    
    // MARK: -OBJ C Funcs
    
    @objc func buttonOneTappedDown(){
        vStackView.buttonOne.alpha = 0.5
    }
    
    @objc func buttonOneTappedUp(){
        vStackView.buttonOne.alpha = 1
        storyGenerator.goToNextStory(userChoice: .choice1)
        setupUI()
    }
    
    @objc func buttonTwoTappedDown(){
        vStackView.buttonTwo.alpha = 0.5
    }
    
    @objc func buttonTwoTappedUp(){
        vStackView.buttonTwo.alpha = 1
        storyGenerator.goToNextStory(userChoice: .choice2)
        setupUI()
    }
}

