//
//  DetailsViewController.m
//  Instagram
//
//  Created by Kaitlyn Gunadhi on 7/10/20.
//  Copyright © 2020 Kaitlyn Gunadhi. All rights reserved.
//

#import "DetailsViewController.h"
#import "DateTools.h"
@import Parse;

@interface DetailsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;
@property (strong, nonatomic) IBOutlet PFImageView *photoView;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.usernameLabel.text = self.post.author.username;
    self.timestampLabel.text = self.post.createdAt.shortTimeAgoSinceNow;
    
    self.photoView.file = self.post.image;
    [self.photoView loadInBackground];
    
    // pad caption to start after username
    NSString *padding = [@"" stringByPaddingToLength:(([self.post.author.username length] + 1) * 2) withString:@" " startingAtIndex:0];
    self.captionLabel.text = [padding stringByAppendingString:self.post.caption];
    [self.captionLabel sizeToFit];
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
