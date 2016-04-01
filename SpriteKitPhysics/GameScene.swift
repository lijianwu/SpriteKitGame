//
//  GameScene.swift
//  SpriteKitPhysics
//
//  Created by gdql－Apple on 16/4/1.
//  Copyright (c) 2016年 李坚武. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "测试球"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
        
        self.backgroundColor = UIColor.whiteColor()
        scene!.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        //构造函数
        self.runAction(SKAction.repeatAction(SKAction.sequence(
            [SKAction.runBlock(self.createBall), SKAction.waitForDuration(0.05)]), count: 100))
    }
    
    //实现创建方法
    func createBall(){
        let ball: SKSpriteNode = SKSpriteNode(imageNamed: "ball")
        ball.position = CGPoint(
            x: CGFloat(Int(arc4random()) % Int(self.size.width)),
                y: self.size.height - ball.size.height)
        
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2)
        self.addChild(ball)
    }
    
//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//       /* Called when a touch begins */
//        
//        for touch in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
//        }
//    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
