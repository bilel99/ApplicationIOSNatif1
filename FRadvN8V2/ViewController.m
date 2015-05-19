//
//  ViewController.m
//  FRadvN8V2
//
//  Created by Freelance on 18/06/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
{
    MPMoviePlayerController *mpc;
}


@end

@implementation ViewController



@synthesize scrollView;
@synthesize imageView;
@synthesize imageArray;

@synthesize imageZoom1;
@synthesize imageZoom2;
@synthesize imageZoom3;
@synthesize ref;

@synthesize imageRefFoot;
@synthesize imageRefFoot2;
@synthesize zoomMap;
@synthesize exitZoom1;
@synthesize exitZoom2;
@synthesize exitZoom3;
@synthesize zoomEtoil1;
@synthesize zoomEtoil2;

@synthesize varHome1;
@synthesize varInnovation1;
@synthesize varPerformance1;
@synthesize varPurete1;
@synthesize varTransportabilite1;
@synthesize varBonUsage1;
@synthesize varResume1;
@synthesize varRefButton;

@synthesize pageControl;

@synthesize animatedImageView1;
@synthesize animatedImageView2;
@synthesize animatedImageView3;
@synthesize animatedImageView4;

@synthesize compteurA;
@synthesize compteurB;
@synthesize compteurC;
@synthesize compteurD;

@synthesize containerView;
@synthesize containerVieww;
@synthesize containerViewwB;
@synthesize containerViewwC;
@synthesize containerViewwD;

@synthesize compteur1;
@synthesize compteur2;
@synthesize compteur3;
@synthesize compteur4;

@synthesize imgA;
@synthesize imgB;
@synthesize imgC;
@synthesize imgD;
@synthesize imgE;




@synthesize timer1;
@synthesize timer2;
@synthesize timer3;
@synthesize timer4;
@synthesize timer5;

@synthesize tmpDebut1;
@synthesize tmpDebut2;
@synthesize tmpImg1;
@synthesize tmpImg2;

@synthesize page9C;
@synthesize page15C;

@synthesize tzoom;
@synthesize tzoomTime;
@synthesize btnPause;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    // Création du ScrollView //
    //Put the names of our image files in our array.
    imageArray = [[NSArray alloc] initWithObjects:@"page1.jpg",@"page2.jpg",@"page3.jpg",@"page4.jpg",@"page5.png",@"page6.png",@"page7.png",@"page8.jpg",@"page9.jpg",@"page10.jpg",@"page11.jpg",@"page12.jpg",@"page13.png",@"page14.jpg",@"page15.jpg",@"page16.jpg",@"page17.jpg",@"page188.png",@"page19.jpg",@"page20.jpg",@"page21.jpg",@"page22.png",@"page23.png",@"page24.png",@"page25.jpg",@"page26.jpg",@"page27.jpg",@"page28.jpg", nil];
    
    
    
    //Set the content size of our scrollview according to the total width of our imageView objects.
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
    
    
    
    self.scrollView.pagingEnabled = YES;
    
    
    for (int i = 0; i < [imageArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [self.scrollView addSubview:imageView];
        
    }
    
    
    /* PLACEMENT DES BUTTON SUR LES DIFFERENT PAGE */
    
    
    // BUTTON ZOOM2 //
    CGRect targetFrame = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth = 100.0;
    CGFloat buttonHeight = 100.0;
    
    CGRect buttonFrame = CGRectMake(targetFrame.origin.x + 315 - buttonWidth / 2, targetFrame.origin.y + 610 - buttonHeight / 2, buttonWidth, buttonHeight);
    
    zoomEtoil1 = [ [ UIButton alloc] initWithFrame : buttonFrame ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomEtoil1 setTitle:@"" forState:UIControlStateNormal];
    [zoomEtoil1 addTarget:self action:@selector(zoomEtoileUn:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomEtoil1 ];
    
    
    
    
    
    // BUTTON ZOOM3 //
    CGRect targetFrame2 = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth2 = 100.0;
    CGFloat buttonHeight2 = 100.0;
    
    CGRect buttonFrame2 = CGRectMake(targetFrame2.origin.x + 715 - buttonWidth2 / 2, targetFrame2.origin.y + 610 - buttonHeight2 / 2, buttonWidth2, buttonHeight2);
    
    zoomEtoil2 = [ [ UIButton alloc] initWithFrame : buttonFrame2 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomEtoil2 setTitle:@"" forState:UIControlStateNormal];
    [zoomEtoil2 addTarget:self action:@selector(zoomEtoileDeux:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomEtoil2 ];
    
    
    
    
    // BUTTON ZOOM 1 //
    CGRect targetFrame3 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth3 = 100.0;
    CGFloat buttonHeight3 = 100.0;
    
    CGRect buttonFrame3 = CGRectMake(targetFrame3.origin.x + 840 - buttonWidth3 / 2, targetFrame3.origin.y + 450 - buttonHeight3 / 2, buttonWidth3, buttonHeight3);
    
    zoomMap = [ [ UIButton alloc] initWithFrame : buttonFrame3 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomMap setTitle:@"" forState:UIControlStateNormal];
    [zoomMap addTarget:self action:@selector(zoomMap:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomMap ];
    
    
    
    
    
    // MINI REF //
    CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth = 270.0;
    CGFloat imageRefHeight = 17.0;
    
    CGRect imgRef = CGRectMake(refTarget.origin.x + 509 - ImageRefWidth / 2, refTarget.origin.y + 716 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
    
    imageRefFoot = [[UIImageView alloc] initWithFrame:imgRef];
    imageRefFoot.image=[UIImage imageNamed:@"ref1.png"];
    [self.view addSubview:imageRefFoot];
    
    
    // MINI REF2 //
    CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth2 = 600.0;
    CGFloat imageRefHeight2 = 15.0;
    
    CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
    
    imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
    imageRefFoot2.image=[UIImage imageNamed:@"refTP.png"];
    [self.view addSubview:imageRefFoot2];
    
    
    
    
    
    
    
    
    // LES BOUTONS //
    
    // Button acceuil Gris
    varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varHome1.frame = CGRectMake(17, 6, 50, 45);
    [varHome1 setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateNormal];
    [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varHome1];
    // Fin bouton Accueil
    
    
    // Button innovation Vert
    varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varInnovation1.frame = CGRectMake(75, 6, 149, 45);
    [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
    [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varInnovation1];
    // Fin Bouton Innovation
    
    // Bouton performance vert
    varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varPerformance1.frame = CGRectMake(232, 6, 149, 45);
    [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
    [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varPerformance1];
    // Fin Bouton performance
    
    // Bouton purete
    varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varPurete1.frame = CGRectMake(389, 6, 149, 45);
    [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
    [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varPurete1];
    // Fin bouton purete
    
    // Bouton transportabilite
    varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
    [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
    [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varTransportabilite1];
    // Fin Bouton transportabilite
    
    // Button bonUsage
    varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
    [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
    [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varBonUsage1];
    // Fin bouton BonUsage
    
    // Bouton resume
    varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
    varResume1.frame = CGRectMake(860, 6, 149, 45);
    [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
    [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:varResume1];
    // Fin Bouton Resume

    

    
    
    imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
    imageRefFoot2.image=[UIImage imageNamed:@"refTP.png"];
    [self.view addSubview:imageRefFoot2];
    
    
    
    
    
    
    
    
    
    
    // ANIMATION D'OUVERTURE ROULETTE DE DROITE A GAUCHE peut servir de zoom ou autre animation
    CGFloat s = 3;
    CGAffineTransform tr = CGAffineTransformScale(self.view.transform, s, s);
    CGFloat h = self.view.frame.size.height;
    CGFloat w = self.view.frame.size.width;
    [UIView animateWithDuration:2.5 delay:0 options:0 animations:^{
        self.view.transform = tr;
        self.view.center = CGPointMake(w-w*s/2,h*s/2);
    } completion:^(BOOL finished) {}];
    
    
    
    
    
    
    
    
    
    
    /*
    UIPinchGestureRecognizer *twoFingerPinch = [[UIPinchGestureRecognizer alloc]
                                                 initWithTarget:self
                                                 action:@selector(twoFingerPinch:)];
    
    [[self view] addGestureRecognizer:twoFingerPinch];
    */




}



/*
- (void)twoFingerPinch:(UIPinchGestureRecognizer *)recognizer
{
    

    NSLog(@"Pinch scale: %f", recognizer.scale);
    CGAffineTransform transform = CGAffineTransformMakeScale(recognizer.scale, recognizer.scale);
    // you can implement any int/float value in context of what scale you want to zoom in or out
    self.view.transform = transform;
    
}
*/



- (void) showImgA {
    
    
    // REFF //
    
    CGRect img1 = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth1 = 152;
    CGFloat RefHeight1 = 360;
    
    CGRect refTarget1 = CGRectMake(img1.origin.x + 105 - RefWidth1 / 2, img1.origin.y + 450 - RefHeight1 / 2, RefWidth1, RefHeight1);
    
    imgA = [[UIImageView alloc] initWithFrame:refTarget1];
    imgA.image=[UIImage imageNamed:@"1.png"];
    [scrollView addSubview:imgA];
    
    
    
}










- (void) showImgB {
    
    
    // REFF //
    
    CGRect img2 = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth2 = 180;
    CGFloat RefHeight2 = 360;
    
    CGRect refTarget2 = CGRectMake(img2.origin.x + 299 - RefWidth2 / 2, img2.origin.y + 450 - RefHeight2 / 2, RefWidth2, RefHeight2);
    
    imgB = [[UIImageView alloc] initWithFrame:refTarget2];
    imgB.image=[UIImage imageNamed:@"2.png"];
    [scrollView addSubview:imgB];
    
}






- (void) showImgC {

    
    // REFF //
    
    CGRect img3 = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth3 = 152;
    CGFloat RefHeight3 = 360;
    
    CGRect refTarget3 = CGRectMake(img3.origin.x + 493 - RefWidth3 / 2, img3.origin.y + 450 - RefHeight3 / 2, RefWidth3, RefHeight3);
    
    imgC = [[UIImageView alloc] initWithFrame:refTarget3];
    imgC.image=[UIImage imageNamed:@"3.png"];
    [scrollView addSubview:imgC];
    
}





- (void) showImgD {
    

    // REFF //
    
    CGRect img4 = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth4 = 205;
    CGFloat RefHeight4 = 360;
    
    CGRect refTarget4 = CGRectMake(img4.origin.x + 700 - RefWidth4 / 2, img4.origin.y + 450 - RefHeight4 / 2, RefWidth4, RefHeight4);
    
    imgD = [[UIImageView alloc] initWithFrame:refTarget4];
    imgD.image=[UIImage imageNamed:@"4.png"];
    [scrollView addSubview:imgD];
    
    
}





- (void) showImgE {
    
    // REFF //
    
    CGRect img5 = CGRectMake ( self.scrollView.frame.size.width * 17, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth5 = 124;
    CGFloat RefHeight5 = 360;
    
    CGRect refTarget5 = CGRectMake(img5.origin.x + 892.5 - RefWidth5 / 2, img5.origin.y + 450 - RefHeight5 / 2, RefWidth5, RefHeight5);
    
    imgE = [[UIImageView alloc] initWithFrame:refTarget5];
    imgE.image=[UIImage imageNamed:@"5.png"];
    [scrollView addSubview:imgE];
    
}




- (void) tZoomFunction {
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    tzoom = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    tzoom.frame = CGRectMake(20, 100, 10, 10);
    [tzoom setBackgroundColor:[UIColor clearColor]];
    [tzoom setTag:9112];
    
    
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"media3" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    mpc = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [[self tzoom]addSubview:mpc.view];
    
    
    
    // TAILLE ET FULLSCREEN
    [mpc.view setFrame:CGRectMake(507, 190, 340, 310)];
    [mpc setFullscreen:NO animated:YES];
    
    
    // Suppression de tous les control
    [mpc setControlStyle:MPMovieControlStyleNone];
    
    
    // TRANSPARENCE
    mpc.backgroundView.backgroundColor = [UIColor clearColor];
    mpc.view.backgroundColor = [UIColor clearColor];
    for (UIView *aSubview in mpc.view.subviews) {
        aSubview.backgroundColor = [UIColor clearColor];
    }
    
    
    [mpc play];
    mpc.repeatMode = MPMovieRepeatModeOne;
    
    
    
    
    
    
    CGRect btnPause1 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth111 = 510;
    CGFloat buttonHeight111 = 720;
    
    CGRect buttonFrame111 = CGRectMake(btnPause1.origin.x + 710 - buttonWidth111 / 2, btnPause1.origin.y + 300 - buttonHeight111 / 2, buttonWidth111, buttonHeight111);
    
    btnPause = [ [ UIButton alloc] initWithFrame : buttonFrame111 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [btnPause setTitle:@"" forState:UIControlStateNormal];
    [btnPause addTarget:self action:@selector(btnPauseClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : btnPause ];
    
    
    
    

    
    // Add the container view to the image view.
    [self.view addSubview:tzoom];
    
}


static int tapCount = 0;
-(IBAction)btnPauseClick:(id)sender {
    
    tapCount ++;
    if(tapCount == 1) {
        
        [mpc pause];
    }
    else if(tapCount == 2) {
        
        [mpc play];
    }
    else {
        
        tapCount = 1;
        [mpc pause];
    }
    
}



- (void) cerclePage9 {
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerVieww = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerVieww.frame = CGRectMake(20, 100, 10, 10);
    [containerVieww setBackgroundColor:[UIColor clearColor]];
    [containerVieww setTag:1112];
    
    
    
    // REFF //
    
    animatedImageView1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView1.frame = CGRectMake(161, 230, 115, 115);
    animatedImageView1.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],nil];
    animatedImageView1.animationDuration = 1.0f;
    animatedImageView1.animationRepeatCount = 1;
    [animatedImageView1 startAnimating];
    [containerVieww addSubview:animatedImageView1];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerVieww];
    
    
    
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur1 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur1.frame = CGRectMake(20, 100, 10, 10);
    [compteur1 setBackgroundColor:[UIColor clearColor]];
    [compteur1 setTag:1211];
    
    
    
    // REFF //
    
    compteurA = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurA.frame = CGRectMake(161, 230, 115, 115);
    compteurA.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"10.png"],
                                          [UIImage imageNamed:@"20.png"],
                                          [UIImage imageNamed:@"30.png"],
                                          [UIImage imageNamed:@"40.png"],
                                          [UIImage imageNamed:@"50.png"],
                                          [UIImage imageNamed:@"60.png"],
                                          [UIImage imageNamed:@"70.png"],
                                          [UIImage imageNamed:@"80.png"],
                                          [UIImage imageNamed:@"808.png"],nil];
    compteurA.animationDuration = 1.0f;
    compteurA.animationRepeatCount = 1;
    [compteurA startAnimating];
    [compteur1 addSubview:compteurA];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur1];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerViewwB = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerViewwB.frame = CGRectMake(20, 100, 10, 10);
    [containerViewwB setBackgroundColor:[UIColor clearColor]];
    [containerViewwB setTag:1121];
    
    
    
    // REFF //
    
    animatedImageView2 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView2.frame = CGRectMake(465, 230, 115, 115);
    animatedImageView2.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],
                                          [UIImage imageNamed:@"cercle20.png"],nil];
    animatedImageView2.animationDuration = 1.0f;
    animatedImageView2.animationRepeatCount = 1;
    [animatedImageView2 startAnimating];
    [containerViewwB addSubview:animatedImageView2];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerViewwB];
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur2 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur2.frame = CGRectMake(20, 100, 10, 10);
    [compteur2 setBackgroundColor:[UIColor clearColor]];
    [compteur2 setTag:1212];
    
    
    
    // REFF //
    
    compteurB = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurB.frame = CGRectMake(465, 230, 115, 115);
    compteurB.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"893.png"],nil];
    compteurB.animationDuration = 1.0f;
    compteurB.animationRepeatCount = 1;
    [compteurB startAnimating];
    [compteur2 addSubview:compteurB];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur2];
    
    
    
    

    
    
    
}








- (void) cerclePage15 {
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerViewwC = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerViewwC.frame = CGRectMake(20, 100, 10, 10);
    [containerViewwC setBackgroundColor:[UIColor clearColor]];
    [containerViewwC setTag:1122];
    
    
    
    // REFF //
    
    animatedImageView3 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView3.frame = CGRectMake(161, 230, 115, 115);
    animatedImageView3.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],
                                          [UIImage imageNamed:@"cercle20.png"],
                                          [UIImage imageNamed:@"cercle21.png"],nil];
    animatedImageView3.animationDuration = 1.0f;
    animatedImageView3.animationRepeatCount = 1;
    [animatedImageView3 startAnimating];
    [containerViewwC addSubview:animatedImageView3];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerViewwC];
    
    
    
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur3 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur3.frame = CGRectMake(20, 100, 10, 10);
    [compteur3 setBackgroundColor:[UIColor clearColor]];
    [compteur3 setTag:1213];
    
    
    
    // REFF //
    
    compteurC = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurC.frame = CGRectMake(161, 230, 115, 115);
    compteurC.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"90.png"],
                                 [UIImage imageNamed:@"921.png"],nil];
    compteurC.animationDuration = 1.0f;
    compteurC.animationRepeatCount = 1;
    [compteurC startAnimating];
    [compteur3 addSubview:compteurC];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur3];
    
    
    
    

    
    
    
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerViewwD = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    containerViewwD.frame = CGRectMake(20, 100, 10, 10);
    [containerViewwD setBackgroundColor:[UIColor clearColor]];
    [containerViewwD setTag:1123];
    
    
    
    // REFF //
    
    animatedImageView4 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView4.frame = CGRectMake(465, 230, 115, 115);
    animatedImageView4.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"cercle1.png"],
                                          [UIImage imageNamed:@"cercle2.png"],
                                          [UIImage imageNamed:@"cercle3.png"],
                                          [UIImage imageNamed:@"cercle4.png"],
                                          [UIImage imageNamed:@"cercle5.png"],
                                          [UIImage imageNamed:@"cercle6.png"],
                                          [UIImage imageNamed:@"cercle7.png"],
                                          [UIImage imageNamed:@"cercle8.png"],
                                          [UIImage imageNamed:@"cercle9.png"],
                                          [UIImage imageNamed:@"cercle10.png"],
                                          [UIImage imageNamed:@"cercle11.png"],
                                          [UIImage imageNamed:@"cercle12.png"],
                                          [UIImage imageNamed:@"cercle13.png"],
                                          [UIImage imageNamed:@"cercle14.png"],
                                          [UIImage imageNamed:@"cercle15.png"],
                                          [UIImage imageNamed:@"cercle16.png"],
                                          [UIImage imageNamed:@"cercle17.png"],
                                          [UIImage imageNamed:@"cercle18.png"],
                                          [UIImage imageNamed:@"cercle19.png"],
                                          [UIImage imageNamed:@"cercle20.png"],
                                          [UIImage imageNamed:@"cercle21.png"],
                                          [UIImage imageNamed:@"cercle22.png"],nil];
    animatedImageView4.animationDuration = 1.0f;
    animatedImageView4.animationRepeatCount = 1;
    [animatedImageView4 startAnimating];
    [containerViewwD addSubview:animatedImageView4];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerViewwD];
    
    
    // COMPTEUR++//
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    compteur4 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    compteur4.frame = CGRectMake(20, 100, 10, 10);
    [compteur4 setBackgroundColor:[UIColor clearColor]];
    [compteur4 setTag:1215];
    
    
    
    // REFF //
    
    compteurD = [[UIImageView alloc] initWithFrame:self.view.bounds];
    compteurD.frame = CGRectMake(465, 230, 115, 115);
    compteurD.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"10.png"],
                                 [UIImage imageNamed:@"20.png"],
                                 [UIImage imageNamed:@"30.png"],
                                 [UIImage imageNamed:@"40.png"],
                                 [UIImage imageNamed:@"50.png"],
                                 [UIImage imageNamed:@"60.png"],
                                 [UIImage imageNamed:@"70.png"],
                                 [UIImage imageNamed:@"80.png"],
                                 [UIImage imageNamed:@"90.png"],
                                 [UIImage imageNamed:@"953.png"],nil];
    compteurD.animationDuration = 1.0f;
    compteurD.animationRepeatCount = 1;
    [compteurD startAnimating];
    [compteur4 addSubview:compteurD];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:compteur4];
    
    
    
}

- (void) departPage9 {
    
    // REFF //
    
    CGRect page9C1 = CGRectMake ( self.scrollView.frame.size.width * 9, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth11 = 579.5;
    CGFloat RefHeight11 = 180;
    
    CGRect refTarget11 = CGRectMake(page9C1.origin.x + 338 - RefWidth11 / 2, page9C1.origin.y + 390 - RefHeight11 / 2, RefWidth11, RefHeight11);
    
    page9C = [[UIImageView alloc] initWithFrame:refTarget11];
    page9C.image=[UIImage imageNamed:@"page9CC.png"];
    [scrollView addSubview:page9C];

}

- (void) departPage15 {
    
    // REFF //
    
    CGRect page15C2 = CGRectMake ( self.scrollView.frame.size.width * 15, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth22 = 579.5;
    CGFloat RefHeight22 = 180;
    
    CGRect refTarget22 = CGRectMake(page15C2.origin.x + 338 - RefWidth22 / 2, page15C2.origin.y + 387 - RefHeight22 / 2, RefWidth22, RefHeight22);
    
    page15C = [[UIImageView alloc] initWithFrame:refTarget22];
    page15C.image=[UIImage imageNamed:@"page15CC.png"];
    [scrollView addSubview:page15C];
    
}


-(IBAction)zoomEtoileUn:(id)sender
{
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    
    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    page9C.image = nil;
    page15C.image = nil;
    
    
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];

    
    
    imageZoom3.image = nil;
    
    UIImage *zoom1E = [UIImage imageNamed:@"zoom2.png"];
    [imageZoom2 setImage:zoom1E];
    
    
    exitZoom1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom1.frame = CGRectMake(370, 240, 150, 40);
    [exitZoom1 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom1 addTarget:self action:@selector(buttonExitZoom1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom1];
    
}



-(IBAction)buttonExitZoom1:(id)sender
{
    imageZoom2.image = nil;
    
    
}



-(IBAction)zoomEtoileDeux:(id)sender
{
    
    
    
    
    
    [animatedImageView1 removeFromSuperview];
    [animatedImageView2 removeFromSuperview];
    [animatedImageView3 removeFromSuperview];
    [animatedImageView4 removeFromSuperview];
    
    tmpDebut1 = nil;
    tmpDebut2 = nil;
    tmpImg1 = nil;
    tmpImg2 = nil;
    
    
    [containerVieww removeFromSuperview];
    [containerViewwB removeFromSuperview];
    [containerViewwC removeFromSuperview];
    [containerViewwD removeFromSuperview];
    

    
    [compteur1 removeFromSuperview];
    [compteur2 removeFromSuperview];
    [compteur3 removeFromSuperview];
    [compteur4 removeFromSuperview];
    
    
    
    animatedImageView1.image = nil;
    animatedImageView2.image = nil;
    animatedImageView3.image = nil;
    animatedImageView4.image = nil;
    
    compteurA.image = nil;
    compteurB.image = nil;
    compteurC.image = nil;
    compteurD.image = nil;
    
    page9C.image = nil;
    page15C.image = nil;
    
    
    
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    
    imageZoom2.image = nil;
    
    UIImage *zoom2E = [UIImage imageNamed:@"zoom3.png"];
    [imageZoom3 setImage:zoom2E];
    
    exitZoom2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom2.frame = CGRectMake(755, 240, 150, 40);
    [exitZoom2 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom2 addTarget:self action:@selector(buttonExitZoom2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom2];
    
}


-(IBAction)buttonExitZoom2:(id)sender
{
    imageZoom3.image=nil;
    
}



-(IBAction)zoomMap:(id)sender
{
    UIImage *zoomMapImage = [UIImage imageNamed:@"zoom1.png"];
    [imageZoom1 setImage:zoomMapImage];
    
    exitZoom3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom3.frame = CGRectMake(735, 150, 150, 40);
    [exitZoom3 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom3 addTarget:self action:@selector(buttonExitZoom3:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom3];


}


-(IBAction)buttonExitZoom3:(id)sender
{
    imageZoom1.image = nil;
}



-(IBAction)showHome1:(id)sender
{
    
    [self scrollToImageIndex:0];
    
    [sender setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateSelected];
    
    [tzoom removeFromSuperview];
    [mpc.view removeFromSuperview];
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];
    
    }

-(IBAction)showInnovation1:(id)sender
{
    [self scrollToImageIndex:1];
    
    [sender setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateSelected];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];
    
}

-(IBAction)showPerformance1:(id)sender
{
    [self scrollToImageIndex:5];
    
    [sender setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateSelected];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];
    
}

-(IBAction)showPurete1:(id)sender
{
    [self scrollToImageIndex:17];
    
    [sender setImage:[UIImage imageNamed:@"purete_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"purete_grey.jpg"] forState:UIControlStateSelected];
    
    imgA.image = nil;
    imgB.image = nil;
    imgC.image = nil;
    imgD.image = nil;
    imgE.image = nil;
    
    [imgA removeFromSuperview];
    [imgB removeFromSuperview];
    [imgC removeFromSuperview];
    [imgD removeFromSuperview];
    [imgE removeFromSuperview];
    
    timer1 = nil;
    timer2 = nil;
    timer3 = nil;
    timer4 = nil;
    timer5 = nil;
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    
    
    

}

-(IBAction)showTransportabilite1:(id)sender
{
    [self scrollToImageIndex:18];
    
    [sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];

}

-(IBAction)showBonUsage1:(id)sender
{
    [self scrollToImageIndex:21];
    
    [sender setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateSelected];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];
    
}

-(IBAction)showResume1:(id)sender
{
    [self scrollToImageIndex:24];
    
    [sender setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateSelected];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];


}



- (IBAction)showRefButton:(id)sender {
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    containerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor clearColor]];
    [containerView setTag:1111];
    
    
    
    // REFF //
    CGRect reff = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth = 1000;
    CGFloat RefHeight = 800;
    
    CGRect refTarget = CGRectMake(reff.origin.x + 500 - RefWidth / 2, reff.origin.y + 365 - RefHeight / 2, RefWidth, RefHeight);
    
    ref = [[UIImageView alloc] initWithFrame:refTarget];
    ref.image=[UIImage imageNamed:@"reff.png"];
    [containerView addSubview:ref];
    
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(765, 90, 150, 40);
    [myButton setTitle:@"" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(buttonClickedRef:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerView];
    
    
    // Animate the display of the container view.
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = self.view.frame;
    }];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];

}



- (IBAction)buttonClickedRef:(id)sender
{
    
    
    
    // Animate the way the view gets dismissed.
    containerView = [self.view viewWithTag:1111];
    
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    }];
    
    [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
    
    [tzoomTime invalidate];
    [tmpDebut1 invalidate];
    [tmpDebut2 invalidate];
    [tmpImg1 invalidate];
    [tmpImg2 invalidate];
    
    [timer1 invalidate];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    [timer5 invalidate];
    
}









#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    static NSInteger previousPage = 0;
    CGFloat pageWidth = scrollView.frame.size.width;
    float fractionalPage = scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    
    
    if (previousPage != page)
    {
        previousPage = page;
        
        
        if(page == 0)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [tzoomTime invalidate];
            
            [tzoomTime invalidate];
            
            

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            // MINI REF //
            CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth = 270.0;
            CGFloat imageRefHeight = 17.0;
            
            CGRect imgRef = CGRectMake(refTarget.origin.x + 509 - ImageRefWidth / 2, refTarget.origin.y + 716 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
            
            imageRefFoot = [[UIImageView alloc] initWithFrame:imgRef];
            imageRefFoot.image=[UIImage imageNamed:@"ref1.png"];
            [self.view addSubview:imageRefFoot];
            
            
            
            
            // MINI REF2 //
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 600.0;
            CGFloat imageRefHeight2 = 15.0;
            
            CGRect imgReff2 = CGRectMake(refTarget2.origin.x + 509 - ImageRefWidth2 / 2, refTarget2.origin.y + 750 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            imageRefFoot2 = [[UIImageView alloc] initWithFrame:imgReff2];
            imageRefFoot2.image=[UIImage imageNamed:@"refTP.png"];
            [self.view addSubview:imageRefFoot2];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil Gris
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home_grey.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            
        }
        else if(page == 1)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            
            
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 2)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
               tzoomTime = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(tZoomFunction) userInfo:nil repeats:NO];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 3)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 4)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 4;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation_grey.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            
        }
        else if(page == 5)
        {
            
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 6)
        {
            
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            page9C.image = nil;
            page15C.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 7)
        {
            
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            page15C.image = nil;
            
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            
            
            
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut2 invalidate];
            [tmpImg2 invalidate];
            
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut2 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
        }
        else if(page == 8)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            page15C.image = nil;
            
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            
            
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg2 invalidate];
            
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            tmpDebut2 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 9)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            page15C.image = nil;
            
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut2 invalidate];
            [tmpImg2 invalidate];
            
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            tmpDebut2 = nil;
            tmpImg2 = nil;
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 4;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            

            

    if(animatedImageView1.image == nil && compteurA.image == nil && page9C.image == nil && animatedImageView2.image == nil && compteurB.image == nil)
    {
            
            tmpDebut1 = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(cerclePage9) userInfo:nil repeats:NO];
            
            
            tmpImg1 = [NSTimer scheduledTimerWithTimeInterval:1.4 target:self selector:@selector(departPage9) userInfo:nil repeats:NO];
    }
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 10)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            page15C.image = nil;
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            //[tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            //[tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            tmpDebut2 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 5;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 11)
        {
            
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            page15C.image = nil;
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg2 invalidate];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            tmpDebut2 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 6;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
        }
        else if(page == 12)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;

            page9C.image = nil;
            page15C.image = nil;
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 7;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 13)
        {

            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            page9C.image = nil;
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            
            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpImg1 invalidate];
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpImg1 = nil;
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 8;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 14)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            
            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            
            page9C.image = nil;
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpImg1 = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 9;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 15)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;

            page9C.image = nil;
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpImg1 = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 10;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
    if(animatedImageView3.image == nil && compteurC.image == nil && page15C.image == nil && animatedImageView4.image == nil && compteurD.image == nil)
    {
            
            tmpDebut2 = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(cerclePage15) userInfo:nil repeats:NO];
            
            
            tmpImg2 = [NSTimer scheduledTimerWithTimeInterval:1.4 target:self selector:@selector(departPage15) userInfo:nil repeats:NO];
    }
            
            
            
            
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 16)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            
            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            
            page9C.image = nil;
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpImg1 = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 12;
            pageControl.currentPage = 12;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance gris
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance_grey.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            

        }
        else if(page == 17)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            
            page9C.image = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpImg1 = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 1;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            

            
            
            
    if(imgA.image == nil && imgB.image == nil && imgC.image == nil && imgD.image == nil && imgE.image == nil)
    {
            
            timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showImgA) userInfo:nil repeats:NO];
            
            
            timer2 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(showImgB) userInfo:nil repeats:NO];
            
 
            timer3 = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(showImgC) userInfo:nil repeats:NO];
            

            timer4 = [NSTimer scheduledTimerWithTimeInterval:4.0 target:self selector:@selector(showImgD) userInfo:nil repeats:NO];
            
            
            timer5 = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(showImgE) userInfo:nil repeats:NO];
            
    }
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete Gris
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete_grey.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            

        }
        else if(page == 18)
        {
            
            
            
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;


            page9C.image = nil;
            page15C.image = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite vert
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            

        }
        else if(page == 19)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            
            
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            page9C.image = nil;
            page15C.image = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite vert
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            
        }
        else if(page == 20)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];
            
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            
            page9C.image = nil;
            page15C.image = nil;
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite vert
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            
        }
        else if(page == 21)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            
            page9C.image = nil;
            page15C.image = nil;
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];

            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage gris
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
            
        }
        else if(page == 22)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            page9C.image = nil;
            page15C.image = nil;

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;

            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage gris
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 23)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            page9C.image = nil;
            page15C.image = nil;
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;

            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage gris
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage_grey.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 24)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            page9C.image = nil;
            page15C.image = nil;

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;

            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume gris
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 25)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            page9C.image = nil;
            page15C.image = nil;

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;

            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume gris
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 26)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            page9C.image = nil;
            page15C.image = nil;

            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;


            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume gris
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
            
        }
        else if(page == 27)
        {
            // SUPPRESSION DES OBJET //
            [pageControl removeFromSuperview];
            [varHome1 removeFromSuperview];
            [varInnovation1 removeFromSuperview];
            [varPerformance1 removeFromSuperview];
            [varPurete1 removeFromSuperview];
            [varTransportabilite1 removeFromSuperview];
            [varBonUsage1 removeFromSuperview];
            [varResume1 removeFromSuperview];
            
            imageRefFoot.image = nil;
            [pageControl removeFromSuperview];
            
            
            [containerVieww removeFromSuperview];
            [containerViewwB removeFromSuperview];
            [containerViewwC removeFromSuperview];
            [containerViewwD removeFromSuperview];

            page9C.image = nil;
            page15C.image = nil;

            
            
            [compteur1 removeFromSuperview];
            [compteur2 removeFromSuperview];
            [compteur3 removeFromSuperview];
            [compteur4 removeFromSuperview];
            
            
            imgA.image = nil;
            imgB.image = nil;
            imgC.image = nil;
            imgD.image = nil;
            imgE.image = nil;
            
            animatedImageView1.image = nil;
            animatedImageView2.image = nil;
            animatedImageView3.image = nil;
            animatedImageView4.image = nil;
            
            compteurA.image = nil;
            compteurB.image = nil;
            compteurC.image = nil;
            compteurD.image = nil;

            [imgA removeFromSuperview];
            [imgB removeFromSuperview];
            [imgC removeFromSuperview];
            [imgD removeFromSuperview];
            [imgE removeFromSuperview];
            
            timer1 = nil;
            timer2 = nil;
            timer3 = nil;
            timer4 = nil;
            timer5 = nil;
            
            [animatedImageView1 removeFromSuperview];
            [animatedImageView2 removeFromSuperview];
            [animatedImageView3 removeFromSuperview];
            [animatedImageView4 removeFromSuperview];
            
            tmpDebut1 = nil;
            tmpDebut2 = nil;
            tmpImg1 = nil;
            tmpImg2 = nil;
            
            
            [timer1 invalidate];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            [timer5 invalidate];
            
            [tmpDebut1 invalidate];
            [tmpDebut2 invalidate];
            [tmpImg1 invalidate];
            [tmpImg2 invalidate];
            
            [tzoom removeFromSuperview];
            [mpc.view removeFromSuperview];
            [tzoomTime invalidate];
            
            
            // Suppression des Image; //
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            imageZoom3.image = nil;
            
            // Animate the way the view gets dismissed.
            containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 4;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            // LES BOUTONS //
            
            // Button acceuil vert
            [varHome1 removeFromSuperview];
            
            varHome1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varHome1.frame = CGRectMake(17, 6, 50, 45);
            [varHome1 setImage:[UIImage imageNamed:@"home.jpg"] forState:UIControlStateNormal];
            [varHome1 addTarget:self action:@selector(showHome1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHome1];
            // Fin bouton Accueil
            
            // Button innovation Vert
            [varInnovation1 removeFromSuperview];
            
            varInnovation1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovation1.frame = CGRectMake(75, 6, 149, 45);
            [varInnovation1 setImage:[UIImage imageNamed:@"innovation.jpg"] forState:UIControlStateNormal];
            [varInnovation1 addTarget:self action:@selector(showInnovation1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovation1];
            // Fin Bouton Innovation
            
            // Bouton performance vert
            [varPerformance1 removeFromSuperview];
            
            varPerformance1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPerformance1.frame = CGRectMake(232, 6, 149, 45);
            [varPerformance1 setImage:[UIImage imageNamed:@"performance.jpg"] forState:UIControlStateNormal];
            [varPerformance1 addTarget:self action:@selector(showPerformance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPerformance1];
            // Fin Bouton performance
            
            // Bouton purete vert
            [varPurete1 removeFromSuperview];
            
            varPurete1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varPurete1.frame = CGRectMake(389, 6, 149, 45);
            [varPurete1 setImage:[UIImage imageNamed:@"purete.jpg"] forState:UIControlStateNormal];
            [varPurete1 addTarget:self action:@selector(showPurete1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPurete1];
            // Fin bouton purete
            
            // Bouton transportabilite
            [varTransportabilite1 removeFromSuperview];
            
            varTransportabilite1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varTransportabilite1.frame = CGRectMake(546, 6, 149, 45);
            [varTransportabilite1 setImage:[UIImage imageNamed:@"transportabilite.jpg"] forState:UIControlStateNormal];
            [varTransportabilite1 addTarget:self action:@selector(showTransportabilite1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varTransportabilite1];
            // Fin Bouton transportabilite
            
            // Button bonUsage
            [varBonUsage1 removeFromSuperview];
            
            varBonUsage1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varBonUsage1.frame = CGRectMake(703, 6, 149, 45);
            [varBonUsage1 setImage:[UIImage imageNamed:@"bon_usage.jpg"] forState:UIControlStateNormal];
            [varBonUsage1 addTarget:self action:@selector(showBonUsage1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBonUsage1];
            // Fin bouton BonUsage
            
            // Bouton resume gris
            [varResume1 removeFromSuperview];
            
            varResume1 = [UIButton buttonWithType:UIButtonTypeCustom];
            varResume1.frame = CGRectMake(860, 6, 149, 45);
            [varResume1 setImage:[UIImage imageNamed:@"resume_grey.jpg"] forState:UIControlStateNormal];
            [varResume1 addTarget:self action:@selector(showResume1:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varResume1];
            // Fin Bouton Resume
            
         
            
        }
        
    }
    else
    {
        
        [containerVieww removeFromSuperview];
        [containerViewwB removeFromSuperview];
        [containerViewwC removeFromSuperview];
        [containerViewwD removeFromSuperview];
        
        
        
        [compteur1 removeFromSuperview];
        [compteur2 removeFromSuperview];
        [compteur3 removeFromSuperview];
        [compteur4 removeFromSuperview];
        
        
        animatedImageView1.image = nil;
        animatedImageView2.image = nil;
        animatedImageView3.image = nil;
        animatedImageView4.image = nil;
        
        
        [animatedImageView1 removeFromSuperview];
        [animatedImageView2 removeFromSuperview];
        [animatedImageView3 removeFromSuperview];
        [animatedImageView4 removeFromSuperview];
        
        
        compteurA.image = nil;
        compteurB.image = nil;
        compteurC.image = nil;
        compteurD.image = nil;
        
        
        
        [compteurA removeFromSuperview];
        [compteurB removeFromSuperview];
        [compteurC removeFromSuperview];
        [compteurD removeFromSuperview];
        
        
        
        [tzoom removeFromSuperview];
        
        imageZoom1.image = nil;
        
        
        // Animate the way the view gets dismissed.
        containerView = [self.view viewWithTag:1111];
        
        [UIView animateWithDuration:0.5 animations:^{
            containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
        }];
        
        [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
        
        
        
        
    }
}





-(void)scrollToImageIndex:(int)index
{
    CGRect desiredVisibleRect = CGRectMake(self.scrollView.frame.size.width * index,
                                           0.0,
                                           self.scrollView.frame.size.width,
                                           self.scrollView.frame.size.height);
    
    [self.scrollView scrollRectToVisible:desiredVisibleRect animated:YES];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if([self.view window] == nil)
    {
        self.view = nil;
    }
    return;
}


@end
