//
//  ViewController.h
//  FRadvN8V2
//
//  Created by Freelance on 18/06/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController


/* SCROLLVIEW */
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom1;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom2;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom3;
@property (strong, nonatomic) IBOutlet UIImageView *ref;

@property (strong, nonatomic) IBOutlet UIImageView *imgA;
@property (strong, nonatomic) IBOutlet UIImageView *imgB;
@property (strong, nonatomic) IBOutlet UIImageView *imgC;
@property (strong, nonatomic) IBOutlet UIImageView *imgD;
@property (strong, nonatomic) IBOutlet UIImageView *imgE;

@property (strong, nonatomic) IBOutlet UIImageView *page9C;
@property (strong, nonatomic) IBOutlet UIImageView *page15C;


@property (strong, nonatomic) IBOutlet UIImageView *imageRefFoot;
@property (strong, nonatomic) IBOutlet UIImageView *imageRefFoot2;
@property (strong, nonatomic) IBOutlet UIButton *zoomMap;
@property (strong, nonatomic) IBOutlet UIButton *zoomEtoil2;
@property (strong, nonatomic) IBOutlet UIButton *zoomEtoil1;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom1;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom2;
@property (strong, nonatomic) IBOutlet UIButton *exitZoom3;

@property (strong, nonatomic) NSArray *imageArray;


/* Button Var */
@property (strong, nonatomic) IBOutlet UIButton *varHome1;
@property (strong, nonatomic) IBOutlet UIButton *varInnovation1;
@property (strong, nonatomic) IBOutlet UIButton *varPerformance1;
@property (strong, nonatomic) IBOutlet UIButton *varPurete1;
@property (strong, nonatomic) IBOutlet UIButton *varTransportabilite1;
@property (strong, nonatomic) IBOutlet UIButton *varBonUsage1;
@property (strong, nonatomic) IBOutlet UIButton *varResume1;

@property (strong, nonatomic) IBOutlet UIButton *varRefButton;

/* Button Action */

- (IBAction)showRefButton:(id)sender;

/* Methode */
-(void) scrollToImageIndex:(int)index;



/* Page Control */
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;


// LES ANIMATION //
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView1;
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView2;
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView3;
@property (strong, nonatomic) IBOutlet UIImageView *animatedImageView4;

@property (strong, nonatomic) IBOutlet UIImageView *compteurA;
@property (strong, nonatomic) IBOutlet UIImageView *compteurB;
@property (strong, nonatomic) IBOutlet UIImageView *compteurC;
@property (strong, nonatomic) IBOutlet UIImageView *compteurD;


@property (strong, nonatomic) IBOutlet NSTimer *timer1;
@property (strong, nonatomic) IBOutlet NSTimer *timer2;
@property (strong, nonatomic) IBOutlet NSTimer *timer3;
@property (strong, nonatomic) IBOutlet NSTimer *timer4;
@property (strong, nonatomic) IBOutlet NSTimer *timer5;

@property (strong, nonatomic) IBOutlet NSTimer *tmpDebut1;
@property (strong, nonatomic) IBOutlet NSTimer *tmpDebut2;
@property (strong, nonatomic) IBOutlet NSTimer *tmpImg1;
@property (strong, nonatomic) IBOutlet NSTimer *tmpImg2;

@property (strong, nonatomic) IBOutlet NSTimer *tzoomTime;


// UIView
@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (strong, nonatomic) IBOutlet UIView *containerVieww;
@property (strong, nonatomic) IBOutlet UIView *containerViewwB;
@property (strong, nonatomic) IBOutlet UIView *containerViewwC;
@property (strong, nonatomic) IBOutlet UIView *containerViewwD;


@property (strong, nonatomic) IBOutlet UIView *compteur1;
@property (strong, nonatomic) IBOutlet UIView *compteur2;
@property (strong, nonatomic) IBOutlet UIView *compteur3;
@property (strong, nonatomic) IBOutlet UIView *compteur4;

@property (strong, nonatomic) IBOutlet UIView *tzoom;
@property (strong, nonatomic) IBOutlet UIButton *btnPause;


@end
