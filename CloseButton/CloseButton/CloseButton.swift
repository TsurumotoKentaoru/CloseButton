//
//  CloseButton.swift
//  CloseButton
//
//  Created by 鶴本賢太朗 on 2019/01/23.
//  Copyright © 2019 Kentarou. All rights reserved.
//

import UIKit

class CloseButton: UIButton {
    
    internal var lineColor: UIColor = .white
    internal var lineWidth: CGFloat = 2
    
    override func draw(_ rect: CGRect) {
        // selfの中心に小さい正方形を見立てる
        // その正方形の対角線を描画することでバツを描く
        let seihoukeLength: CGFloat = self.bounds.width / 4
        let center: CGPoint = CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2)
        // 1本目
        do {
            let path: UIBezierPath = UIBezierPath()
            let startX: CGFloat = center.x - seihoukeLength
            let startY: CGFloat = center.y - seihoukeLength
            let endX: CGFloat = center.x + seihoukeLength
            let endY: CGFloat = center.y + seihoukeLength
            path.move(to: CGPoint(x: startX, y: startY))
            path.addLine(to: CGPoint(x: endX, y: endY))
            self.lineColor.setStroke()
            path.lineWidth = self.lineWidth
            path.stroke()
        }
        // 2本目
        do {
            let path: UIBezierPath = UIBezierPath()
            let startX: CGFloat = center.x - seihoukeLength
            let startY: CGFloat = center.y + seihoukeLength
            let endX: CGFloat = center.x + seihoukeLength
            let endY: CGFloat = center.y - seihoukeLength
            path.move(to: CGPoint(x: startX, y: startY))
            path.addLine(to: CGPoint(x: endX, y: endY))
            self.lineColor.setStroke()
            path.lineWidth = self.lineWidth
            path.stroke()
        }
    }
}
