//
//  MeuJogoViewController.swift
//  MeuPrimeiroJogo
//
//  Created by Pedro Henrique  on 25/11/19.
//  Copyright © 2019 Pedro Henrique . All rights reserved.
//
import SpriteKit
import UIKit


class MeuJogoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        if let view = self.view as! SKView?{
            
            if let cena = SKScene(fileNamed: "MeuJogo.sks"){
            cena.scaleMode = .aspectFill
            view.presentScene(cena)
            }
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsPhysics = true
            view.showsNodeCount = true
        }
    }
}
