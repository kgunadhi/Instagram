//
//  PostCell.m
//  Instagram
//
//  Created by Kaitlyn Gunadhi on 7/9/20.
//  Copyright © 2020 Kaitlyn Gunadhi. All rights reserved.
//

#import "PostCell.h"

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setPost:(Post *)post {
    _post = post;
    
    self.usernameLabel.text = post.author.username;
    self.usernameLabel2.text = post.author.username;
    self.photoView.file = post.image;
    [self.photoView loadInBackground];
    
    // pad caption to start after username
    NSString *padding = [@"" stringByPaddingToLength:([post.author.username length] * 2 + 2) withString:@" " startingAtIndex:0];
    self.captionLabel.text = [padding stringByAppendingString:post.caption];
    [self.captionLabel sizeToFit];
}

@end