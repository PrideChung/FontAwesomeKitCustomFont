#import "FCFViewController.h"
#import "FCFCustomIcon.h"

@interface FCFViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelA;
@property (weak, nonatomic) IBOutlet UILabel *labelB;

@end

@implementation FCFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.labelA.attributedText = [[FCFCustomIcon editIconWithSize:100] attributedString];
    self.labelB.attributedText = [[FCFCustomIcon heartIconWithSize:100] attributedString];
}

@end
