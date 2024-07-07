#import <UIKit/UIKit.h>

// AppDelegate Interface
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property(strong, nonatomic) UIWindow *window;

@end

// ViewController Interface
@interface ViewController : UIViewController

@end

// ViewController Implementation
@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Additional setup if needed
  UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 300, 50)];
  label.text = @"Hello, World!";
  label.textAlignment = NSTextAlignmentCenter;
  [self.view addSubview:label];
}

@end

// AppDelegate Implementation
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                       bundle:nil];
  ViewController *viewController =
      [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];

  self.window.rootViewController = viewController;
  [self.window makeKeyAndVisible];

  return YES;
}

@end

// Main
int main(int argc, char *argv[]) {
  @autoreleasepool {
    return UIApplicationMain(argc, argv, nil,
                             NSStringFromClass([AppDelegate class]));
  }
}
