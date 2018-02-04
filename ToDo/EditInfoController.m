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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)savingInfo:(id)sender {
    [self.tasks addObject:self.NewTask.text];
    [self.prio addObject:self.NewPrio.text];
    [self.navigationController popViewControllerAnimated:YES];
}


@end
