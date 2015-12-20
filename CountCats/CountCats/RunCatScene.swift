//
//  RunCatScene.swift
//  CountCats
//
//  Created by 雨 on 15/12/20.
//  Copyright © 2015年 CoderFix.cn. All rights reserved.
//

import Foundation
import SpriteKit


class RunCatScene: SKScene {
    
    
    
    
    override func didMoveToView(view: SKView) {
        
        //显示对应的文字
        let test = SKLabelNode(fontNamed:"Chalkduster")
        let w = "猫猫奔跑的界面"
        test.text =  w
        test.fontSize = 60
        test.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame) + 80)
        
        self.addChild(test)
       
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    
}

