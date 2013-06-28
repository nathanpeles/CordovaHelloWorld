#import "ViewController.h"
#import <Cordova/CDVViewController.h>

@interface ViewController ()

@property (strong, nonatomic) CDVViewController *cordovaViewController;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.cordovaViewController = [[CDVViewController alloc] init];
    self.cordovaViewController.startPage = @"index.html";
    
    [self addChildViewController:self.cordovaViewController];
    self.cordovaViewController.view.frame = self.view.bounds;
    [self.view addSubview:self.cordovaViewController.view];
    [self.cordovaViewController didMoveToParentViewController:self];
}

@end
