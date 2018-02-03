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

@end

@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.taskLabel.text = self.taskName;
    self.prioLabel.text = self.prioName;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clearTask:(id)sender {
    float value = self.indexNumber.row;
    [self.prio replaceObjectAtIndex:value withObject:@"Done"];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
