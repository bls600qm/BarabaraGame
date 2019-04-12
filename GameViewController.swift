//
//  GameViewController.swift
//  BarabaraGame
//
//  Created by Rika Sumitomo on 2019/04/12.
//  Copyright © 2019 Rika Sumitomo. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var imgView1: UIImageView! //上の画像
    @IBOutlet var imgView2: UIImageView! //真ん中の画像
    @IBOutlet var imgView3: UIImageView! //下の画像
    
    @IBOutlet var resultLabel: UILabel! //スコアを表示するラベル
    

    var timer: Timer! //画像を動かすタイマー
    var score: Int = 1000 //スコアの値
    let defaults: UserDefaults = UserDefaults.standard //スコアを保存する変数
    
    let width: CGFloat = UIScreen.main.bounds.size.width //画面幅
    var positionX: [CGFloat] = [0.0, 0.0, 0.0] //画像の位置のは配列
    var dx: [CGFloat] = [1.0, 0.5, -1.0] //画像の動かす幅の配列
    
    
    
    func start(){
        //結果ラベルを見えなくする
        resultLabel.isHidden = true
        
        //タイマーを動かす
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self,selector: #selector(self.up), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    @objc func up() { //funcから始めるとエラーになる　@objcをつけるとなぜかいける
        for i in 0..<3 {
            if positionX[i] > width || positionX[i] < 0 {
                dx[i] = dx[i] * (-1)
            }
            positionX[i] += dx[i]
        }
        imgView1.center.x = positionX[0]
        imgView2.center.x = positionX[1]
        imgView3.center.x = positionX[2]
    }
    
    @IBAction func stop(){
        if timer.isValid == true { //もしタイマーが動いてたら
            timer.invalidate() //タイマーを無効にする
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        positionX = [width/2, width/2, width/2] //画像の位置を画面幅の中心にする
        self.start()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
