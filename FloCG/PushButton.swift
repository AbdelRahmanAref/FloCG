//
//  PushButton.swift
//  FloCG
//
//  Created by AbdelRahman Aref on 5/6/18.
//  Copyright © 2018 AbdelRahman Aref. All rights reserved.
//

import UIKit
@IBDesignable
class PushButton: UIButton {

     override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.blue.setFill()
        path.fill()
        
        
        //set up width and height variables for horizontal stroke
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * Constants.plusButtonScale
        let halfPlusWidth = plusWidth / 2
        //create the path
        let plusPath = UIBezierPath()
        //set the path's line width to the height of the stroke
        plusPath.lineWidth = Constants.plusLineWidth
        //move the initial point of the path to the start of the horizontal stroke
        plusPath.move(to: CGPoint(x: halfWidth - halfPlusWidth + Constants.halfPointShift, y: halfHeight + Constants.halfPointShift))
        //add a point to the path at the end of the stroke
        plusPath.addLine(to: CGPoint(x: halfWidth + halfPlusWidth + Constants.halfPointShift, y: halfHeight + Constants.halfPointShift))
        plusPath.move(to: CGPoint(x: halfWidth + Constants.halfPointShift, y: halfHeight - halfPlusWidth + Constants.halfPointShift))
        plusPath.addLine(to: CGPoint(x: halfWidth  + Constants.halfPointShift, y: halfHeight + halfPlusWidth + Constants.halfPointShift))
        
        //set the stroke color
        UIColor.white.setStroke()
        //draw the stroke
        plusPath.stroke()
    }
    
    private struct Constants {
        static let plusLineWidth: CGFloat = 3.0
        static let plusButtonScale : CGFloat = 0.6
        static let halfPointShift : CGFloat = 0.5
    }
    private var halfWidth: CGFloat{ return bounds.width / 2 }
    private var halfHeight: CGFloat { return bounds.height / 2 }
}
















