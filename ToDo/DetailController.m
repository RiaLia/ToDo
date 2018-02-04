//
//  DetailController.m
//  ToDo
//
//  Created by Ria Buhlin on 2018-02-02.
//  Copyright © 2018 Ria Buhlin. All rights reserved.
//

#import "DetailController.h"

@interface DetailController ()
@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UILabel *prioLabel;
@property (weak, nonatomic) IBOutlet UIButton *clearBtn;

@end
@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.taskLabel.text = self.taskName;
    self.prioLabel.text = self.prioName;
    
    if([self.prio[self.indexNumber.row] isEqualToString:@"Klar"]){
        self.clearBtn.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)clearTask:(id)sender {
    float value = self.indexNumber.row;
    [self.prio replaceObjectAtIndex:value withObject:@"Klar"];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
