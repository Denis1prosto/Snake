//
//  Apple.swift
//  Snake
//
//  Created by Денис on 05.11.2022.
//

import SpriteKit

final class Apple: SKShapeNode {
    let diameter: CGFloat = 10

    convenience init(at point: CGPoint) {
        self.init()

        path = UIBezierPath(ovalIn: CGRect(x: -diameter/2, y: -diameter/2, width: diameter, height: diameter)).cgPath
        fillColor = .black
        strokeColor = .black
        lineWidth = 5
        position = point
        physicsBody = SKPhysicsBody(circleOfRadius: diameter / 2, center: .zero)
        physicsBody?.categoryBitMask = CollisionCategories.apple
    }

}

