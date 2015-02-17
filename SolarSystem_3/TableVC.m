//
//  TableVC.m
//  SolarSystem_3
//
//  Created by Alfred on 17/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "TableVC.h"

@interface TableVC ()

@end

@implementation TableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.planets = [[NSMutableArray alloc] init];
//    NSString *planet1 = @"Mercury";
//    [self.planets addObject:planet1];
    NSString *planet1 = @"Mercury";
    NSString *planet2 = @"Venus";
    NSString *planet3 = @"Earth";
    NSString *planet4 = @"Mars";
    NSString *planet5 = @"Jupiter";
    NSString *planet6 = @"Saturn";
    NSString *planet7 = @"Uranus";
    NSString *planet8 = @"Neptune";
    
    self.planets = [@[planet1,planet2,planet3,planet4,planet5,planet6,planet7,planet8] mutableCopy];
    NSLog(@"%@", _planets);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.planets count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = [self.planets objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor blueColor];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
