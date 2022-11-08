//
//  ControlsFactory.swift
//  Snake
//
//  Created by Денис on 05.11.2022.
//

import SpriteKit

final class ControlsFactory {

    static func makeButton(at position: CGPoint, name: String) -> SKShapeNode {
        let button = SKShapeNode()
        button.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 45, height: 45)).cgPath
        button.position = position
        button.fillColor = .white
        button.strokeColor = .black
        button.lineWidth = 10
        button.name = name
        return button
    }

}

