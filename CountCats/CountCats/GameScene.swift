//
//  GameScene.swift
//  CountCats
//
//  Created by 雨 on 15/12/19.
//  Copyright (c) 2015年 CoderFix.cn. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    //设置这个场景中的两个按钮
//    let btnStart : UIButton;
    
    
    override func didMoveToView(view: SKView) {
        
        
        //初始化开始界面
        let labTitle=SKLabelNode(fontNamed: "Chalkduster")
        labTitle.text="数猫猫";
        labTitle.fontSize=80;
        labTitle.position=CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame)+95)
        self.addChild(labTitle)
        
        //副标题
        let labSubTitle=SKLabelNode(fontNamed: "Chalkduster")
        labSubTitle.text="CountCats";
        labSubTitle.fontSize=35;
        labSubTitle.position=CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame)+40)
        self.addChild(labSubTitle)
        
        //文字说明
        let labSubTitle2=SKLabelNode(fontNamed: "Chalkduster")
        labSubTitle2.text="会有一大波猫猫路过，快来快来数一数，到底多少只~";
        labSubTitle2.fontSize=20;
        labSubTitle2.position=CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame)+10)
        self.addChild(labSubTitle2)
        
        
        //开始按钮
        let btnStart=UIButton()
        btnStart.tag=100
        btnStart.frame=CGRectMake(CGRectGetMidX(self.frame) / 2 + 25,  CGRectGetMidY(self.frame) / 2 + 30,  100, 40)
        btnStart.setTitle("开始",forState: UIControlState.Normal)
        btnStart.backgroundColor=UIColor.blueColor()
        self.view?.addSubview(btnStart)
        
        //捐款按钮
        let btnGift=UIButton()
        btnGift.tag=101
        btnGift.frame=CGRectMake(CGRectGetMidX(self.frame) / 2 + 25,  CGRectGetMidY(self.frame) / 2 + 80, 100, 40)
        btnGift.setTitle("给作者捐款",forState: UIControlState.Normal)
        btnGift.backgroundColor=UIColor.blueColor()
        self.view?.addSubview(btnGift)

        //底部的地址
        let labUrl=SKLabelNode(fontNamed:"Arial")
        labUrl.text="CoderFix.cn";
        labUrl.fontSize=15;
        labUrl.position=CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame) - 280 )
        self.addChild(labUrl)
     
        btnStart.addTarget(self,action:Selector("tapped"),forControlEvents:.TouchUpInside)
        
    
    }
    
    //跳转到下一个场景
    func tapped(){
        
        self.view?.viewWithTag(100)?.removeFromSuperview()
        self.view?.viewWithTag(101)?.removeFromSuperview()
         //声明下一个场景的实例
        let secondScene = CountDownScene(size: self.size)
        //场景过渡动画
        let doors = SKTransition.flipVerticalWithDuration(0.1)
        //带动画的场景跳转
        //跳转之前，删除两个按钮，因为按钮并不属于场景里面
        
        self.view?.presentScene(secondScene,transition:doors)
}
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5;
            sprite.yScale = 0.5
            sprite.position = location
            
            
            print(location)
            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            let a2=SKAction.moveToY(200, duration: 2)
            sprite.runAction(SKAction.repeatActionForever(a2))
            sprite.physicsBody=SKPhysicsBody(circleOfRadius: 60)
            sprite.physicsBody?.usesPreciseCollisionDetection=true
            
            
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    
}
