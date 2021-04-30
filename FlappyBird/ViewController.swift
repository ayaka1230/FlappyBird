//
//  ViewController.swift
//  FlappyBird
//
//  Created by 長坂絢加 on 2021/04/30.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // SKView に型を変換する
        let skView = self.view as! SKView
        
        // FPS を表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビュート同じサイズでシーンを作成する
        let scene = GameScene(size: skView.frame.size)

        // ビューにシーンを表示する
        skView.presentScene(scene)

    }
    
    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }


}

