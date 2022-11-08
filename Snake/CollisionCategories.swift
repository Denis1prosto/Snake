//
//  CollisionCategories.swift
//  Snake
//
//  Created by Денис on 05.11.2022.
//

import Foundation

struct CollisionCategories {
    static let snake: UInt32      = 0x1 << 0
    static let snakeHead: UInt32  = 0x1 << 1
    static let apple: UInt32      = 0x1 << 2
    static let edgeBody: UInt32   = 0x1 << 3
}

