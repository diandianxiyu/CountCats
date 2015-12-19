//
//  CountDownScene.swift
//  CountCats
//
//  Created by 雨 on 15/12/19.
//  Copyright © 2015年 CoderFix.cn. All rights reserved.
//

import Foundation
import SpriteKit

class CountDownScene: SKScene {


    
    override func didMoveToView(view: SKView) {
        
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        let w = "🐶"
        myLabel.text =  w
        myLabel.fontSize = 50
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
         
        
        
    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

}
