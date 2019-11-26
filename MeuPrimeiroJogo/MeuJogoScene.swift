//
//  MeuJogoScene.swift
//  MeuPrimeiroJogo
//
//  Created by Pedro Henrique  on 26/11/19.
//  Copyright © 2019 Pedro Henrique . All rights reserved.
//

import UIKit
import SpriteKit

class MeuJogoScene: SKScene {
    override func didMove(to view: SKView) {
        
        var caixa: SKSpriteNode?
        
        caixa = self.childNode(withName: "caixa") as? SKSpriteNode
        
        caixa?.position = CGPoint(x: 200, y: 200 )
    }

}
