//
//  SnakeBodyPart.swift
//  Snake
//
//  Created by Денис on 05.11.2022.
//

import SpriteKit

class SnakeBodyPart: SKShapeNode {

    init(at point: CGPoint, diameter: CGFloat = 10.0) {
        super.init()
        path = UIBezierPath(ovalIn: CGRect(x: -diameter/2, y: -diameter/2, width: diameter, height: diameter)).cgPath
        fillColor = .black
        strokeColor = .black
        lineWidth = 5
        position = point

        physicsBody = SKPhysicsBody(circleOfRadius: diameter - 4, center: .zero)
        physicsBody?.isDynamic = true
        physicsBody?.categoryBitMask = CollisionCategories.snake
        physicsBody?.contactTestBitMask = CollisionCategories.edgeBody | CollisionCategories.apple
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
