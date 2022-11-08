//
//  CGPoint+Extensions.swift
//  Snake
//
//  Created by Денис on 05.11.2022.
//


import UIKit

extension CGPoint {

    func relative(to frame: CGRect) -> CGPoint {
        return CGPoint(x: frame.origin.x + x, y: frame.origin.y + y)
    }
}

