//
//  ViewController.h
//  1TechEffect
//
//  Created by あのん の MacBook Pro on 2014/10/30.
//  Copyright (c) 2014年 内田和希. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

#import <CoreImage/coreImage.h>//CoreImage.frameworkの導入←「これ重要」

@interface ViewController : UIViewController{
    
    UIImage *image;
    
    UIImage *originImage;     //処理前の画像（元画像）
    
    CIImage *filteredImage;   //処理中の画像
    
    UIImage *outputImage;     //処理後の画像
    
    IBOutlet UIImageView *imageView;  //画像を表示させるためのImageView
    
}

-(IBAction)convertImage;      //画像処理をさせるメソッド

-(IBAction)undone;            //元に戻すメソッド

-(IBAction)yomikomi;




@end

