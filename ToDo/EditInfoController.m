//
//  EditInfoController.m
//  ToDo
//
//  Created by Ria Buhlin on 2018-02-02.
//  Copyright © 2018 Ria Buhlin. All rights reserved.
//

#import "EditInfoController.h"

@interface EditInfoController ()
@property (weak, nonatomic) IBOutlet UITextField *NewTask;
@property (weak, nonatomic) IBOutlet UITextField *NewPrio;


@end

@implementation EditInfoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)savingInfo:(id)sender {
    [self.tasks addObject:self.NewTask.text];
    [self.prio addObject:self.NewPrio.text];
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/* - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue identifier] isEqualToString:@"savingInfo"]){
        UIViewController *save = [segue destinationViewController];
    }
} */


@end
