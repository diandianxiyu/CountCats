//
//  CountDownScene.swift
//  CountCats
//
//  Created by 雨 on 15/12/19.
//  Copyright © 2015年 CoderFix.cn. All rights reserved.
//

import Foundation
import SpriteKit

 var labNum:SKLabelNode=SKLabelNode()
var time=3;
class CountDownScene: SKScene {
    
    
    
    
    override func didMoveToView(view: SKView) {
        
        //显示对应的文字
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        let w = "开始倒计时"
        myLabel.text =  w
        myLabel.fontSize = 60
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame) + 80)
        
        self.addChild(myLabel)
        
        //给出对应的倒计时数字，并定时变换
        // let  labNum = SKLabelNode()
        labNum.text="3"
        labNum.fontSize=200
        
        labNum.position=CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame) - 100 )
        
        self.addChild(labNum)
        
        time=3
        
        changeLabTime()
        
    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    func changeLabTime ( ) {
    
        //启动计时器
        NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector:Selector("getCurrentTimeLeft"), userInfo : nil, repeats: true)
    }
    
    func getCurrentTimeLeft(){
        //使用全局变量作为倒计时
        time -= 1
        labNum.text=String(time)
        //当为0的时候，进行下一个场景的跳转
        if(time == 0){
            //场景切换
            tapped()
        }
    }
    
    //跳转到下一个场景
    func tapped(){
        //声明下一个场景的实例
        let secondScene = RunCatScene(size: self.size)
        //场景过渡动画
        let doors = SKTransition.flipVerticalWithDuration(0.9)
        //带动画的场景跳转
        //跳转之前，删除两个按钮，因为按钮并不属于场景里面
        
        self.view?.presentScene(secondScene,transition:doors)
    }

}
