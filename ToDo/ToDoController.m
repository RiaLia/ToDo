//
//  ToDoController.m
//  ToDo
//
//  Created by Ria Buhlin on 2018-01-30.
//  Copyright © 2018 Ria Buhlin. All rights reserved.
//

#import "ToDoController.h"
#import "EditInfoController.h"
#import "DetailController.h"

@interface ToDoController ()
@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) NSMutableArray *prio;

@end

@implementation ToDoController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tasks = @[@"Städa", @"Handla", @"Tvätta", @"Måla klart väggen", @"Sätta upp lister", @"Sortera tvätt", @"Slänga skräp", @"Bygga sänggavel"].mutableCopy;
    self.prio = @[@"Hög", @"Hög", @"Medel", @"Låg", @"Låg", @"Hög", @"Medel", @"Låg"].mutableCopy;
}

-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
} 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tasks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.tasks[indexPath.row];
    cell.detailTextLabel.text = self.prio[indexPath.row];
    
    if([self.prio[indexPath.row] isEqualToString:@"Klar"]){
        cell.detailTextLabel.hidden = YES;
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else if([self.prio[indexPath.row] isEqualToString:@"Hög"]){
        cell.detailTextLabel.textColor = [UIColor redColor];
    }
    else if ([self.prio[indexPath.row]isEqualToString:@"Medel"]){
        cell.detailTextLabel.textColor = [UIColor darkGrayColor];
    }
    else {
         cell.detailTextLabel.textColor = [UIColor grayColor];
    }
    return cell;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.tasks removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UITableViewCell *cell = sender;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if([segue.identifier isEqualToString:@"addTask"]) {
        EditInfoController *Edit = [segue destinationViewController];
        Edit.tasks = self.tasks;
        Edit.prio = self.prio;
    }
    else if([segue.identifier isEqualToString:@"Detail"]){
        DetailController *Detail = [segue destinationViewController];
        Detail.title = cell.textLabel.text;
        Detail.taskName = cell.textLabel.text;
        Detail.prioName = cell.detailTextLabel.text;
        
        Detail.prio = self.prio;
        Detail.tasks = self.tasks;
        Detail.indexNumber = indexPath;
    }
}

@end
