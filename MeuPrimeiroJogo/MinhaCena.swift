//
//  MinhaCena.swift
//  MeuPrimeiroJogo
//
//  Created by Pedro Henrique  on 26/11/19.
//  Copyright © 2019 Pedro Henrique . All rights reserved.
//

import UIKit
import SpriteKit

class MinhaCena: SKScene {
   
    let retangulo = SKShapeNode(rectOf: CGSize(width: 100, height: 100))
    let bolinha: SKShapeNode = SKShapeNode(circleOfRadius: 25)
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.lightGray
        
        retangulo.fillColor = .blue
        retangulo.strokeColor = . green
        retangulo.lineWidth = 0
        retangulo.position = CGPoint(x: 200, y: 300)
        self.addChild(retangulo)
        
        retangulo.physicsBody = SKPhysicsBody(rectangleOf: retangulo.frame.size)
        retangulo.physicsBody?.isDynamic = true
        retangulo.physicsBody?.allowsRotation = true
        
        let ret = CGRect(x: 0, y: 0, width: frame.width-20, height: 10)
        let chao = SKShapeNode(rect: ret)
        chao.fillColor = .yellow
        chao.physicsBody = SKPhysicsBody(rectangleOf: chao.frame.size, center: CGPoint(x: (frame.width-20)/2, y: 5))
        chao.physicsBody?.isDynamic = false
        chao.position = CGPoint(x: 10, y: 20)
        addChild(chao)
        
        bolinha.fillColor = .red
        bolinha.strokeColor = .green
        bolinha.lineWidth = 0
        bolinha.position = CGPoint(x: 100, y: 300)
        self.addChild(bolinha)
        
        
        bolinha.physicsBody = SKPhysicsBody(circleOfRadius: bolinha.frame.size.width/2)
        bolinha.physicsBody?.isDynamic = true
        bolinha.physicsBody?.allowsRotation = true
       
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         bolinha.physicsBody?.velocity = CGVector.zero
         bolinha.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 100))
    }

}
