//
//  ViewController.swift
//  IntentsDemo
//
//  Created by Roman Onyshkevych on 2024-12-10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupOpenShortcutsButton()
    }

    private func setupOpenShortcutsButton() {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Open shortcuts app"
        
        let openShortcutsButton = UIButton(configuration: configuration)
        openShortcutsButton.translatesAutoresizingMaskIntoConstraints = false
        openShortcutsButton.addAction(UIAction(handler: { _ in
            UIApplication.shared.open(URL(string: "shortcuts://")!)
        }), for: .touchUpInside)
        
        view.addSubview(openShortcutsButton)

        NSLayoutConstraint.activate(
            [
                openShortcutsButton.heightAnchor.constraint(equalToConstant: 50),
                openShortcutsButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                openShortcutsButton.bottomAnchor.constraint(
                    equalToSystemSpacingBelow: view.safeAreaLayoutGuide.bottomAnchor,
                    multiplier: 1
                ),
                openShortcutsButton.leadingAnchor.constraint(
                    equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor,
                    multiplier: 3
                ),
            ]
        )
    }

    
}
