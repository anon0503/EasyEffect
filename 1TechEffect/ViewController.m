//
//  ViewController.m
//  1TechEffect
//
//  Created by あのん の MacBook Pro on 2014/10/30.
//  Copyright (c) 2014年 内田和希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


-(IBAction)convertImage{    
    
//元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIColorMonochrome"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];

}

-(IBAction)CIPhotoEffectChrome{
    
    
    //元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIPhotoEffectChrome"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];
    
}

-(IBAction)CIPhotoEffectFade{
    
    
    //元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIPhotoEffectFade"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];
    
}


-(IBAction)CIPhotoEffectInstant{
    
    
    //元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIPhotoEffectInstant"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];
    
}

-(IBAction)CIPhotoEffectNoir{
    
    
    //元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIPhotoEffectNoir"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];
    
}

-(IBAction)CIColorInvert{
    
    
    //元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIColorInvert"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];
    
}

-(IBAction)CIFalseColor{
    
    
    //元の画像を表示させる
    [imageView setImage:image];
    
    //
    originImage = imageView.image;
    
    //UIImageをCCImageに変換
    filteredImage = [[CIImage alloc] initWithCGImage:originImage.CGImage];
    
    //CIFilterを作成（今回はモノクロ風フィルタを作成）
    CIFilter *filter = [CIFilter filterWithName:@"CIFalseColor"];
    [filter setValue:filteredImage forKey:@"inputImage"];
    
    // フィルタ後の画像を取得
    filteredImage = filter.outputImage;
    
    //CIImageをUIImageに変換する
    CIContext *ciContext = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [ciContext createCGImage:filteredImage
                                          fromRect:[filteredImage extent]];
    
    outputImage = [UIImage imageWithCGImage:imageRef
                                      scale:1.0f
                                orientation:UIImageOrientationUp];
    CGImageRelease(imageRef);
    //画像を表示する
    [imageView setImage:outputImage];
    
}

-(IBAction)hozon{//保存ボタンをおした時の挙動
    UIImage *saveimage = imageView.image;
    UIImageWriteToSavedPhotosAlbum(saveimage, nil, nil, nil);
    /*
    NSData *savedata = UIImagePNGRepresentation(saveimage);//UIImageをPNGのデータに変換
    NSString *filePath = [NSString stringWithFormat:@"%@/image.png",[NSHomeDirectory() stringByAppendingPathComponent:@"Camera Roll"]];
    if([savedata writeToFile:filePath atomically:YES]){
        NSLog(@"Save OK");
    }else{
        NSLog(@"Error");
    }*/
    
    /*あんべ
    CGRect innerframe = AVMakeRectWithAspectRatioInsideRect(image.size, imageView.bounds);
    
    CGRect rect = CGRectMake(imageView.frame.origin.x, imageView.frame.origin.y, innerframe.size.width, innerframe.size.height);//保存される画像サイズを取得
    
    UIGraphicsBeginImageContext(rect.size);
    
    //[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    [imageView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *capture = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(capture, nil, nil, nil);
    UIGraphicsEndImageContext();
     */
}



-(IBAction)yomikomi{
    UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
    [ipc setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [ipc setDelegate:self] ;
    [ipc setAllowsEditing:YES] ;
    [self presentViewController: ipc animated:YES completion:nil] ;
    
}

    //フォトライブラリーで画像が選択された時の反応
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    image = [info objectForKey:(UIImagePickerControllerEditedImage)];
    [imageView setImage:image];
    
                      [self dismissViewControllerAnimated:YES completion:nil] ;
}

-(IBAction)undone{
    
    //元の画像を表示させる
    [imageView setImage:image];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
