//
//  DetailController.h
//  ToDo
//
//  Created by Ria Buhlin on 2018-02-02.
//  Copyright © 2018 Ria Buhlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailController : UIViewController
@property (nonatomic) NSString *taskName;
@property (nonatomic) NSString *prioName;
@property (nonatomic) NSMutableArray *prio;
@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) NSMutableArray *done;
@property (nonatomic) NSIndexPath *indexNumber;


@end
