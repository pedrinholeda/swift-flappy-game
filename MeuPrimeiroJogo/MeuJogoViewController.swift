//
//  MeuJogoViewController.swift
//  MeuPrimeiroJogo
//
//  Created by Pedro Henrique  on 26/11/19.
//  Copyright © 2019 Pedro Henrique . All rights reserved.
//

import UIKit
import SpriteKit


class MeuJogoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let minhaView: SKView = SKView(frame: self.view.frame)
        self.view = minhaView
        
        let minhaCena:MinhaCena = MinhaCena(size: minhaView.frame.size)
        
        minhaView.presentScene(minhaCena)
        
        minhaView.ignoresSiblingOrder = true
        minhaView.showsFPS = true
        minhaView.showsNodeCount = true
//        minhaView.showsPhysics = true
    }

}
