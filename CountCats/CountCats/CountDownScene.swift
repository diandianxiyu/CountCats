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
        let w = "🐶🐶]]]]]]]"
        myLabel.text =  w
        myLabel.fontSize = 400
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
        
        
        //放入一个按钮
        let startButtun=UIButton();
        startButtun.setTitle("START", forState: UIControlState.Normal);
        startButtun.setTitle(" PRESSING START", forState: UIControlState.Highlighted)
        startButtun.frame=CGRectMake(10, 15, 100, 30);
        
        self.view?.addSubview(startButtun)
        
        
    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

}
