//
//  PostCell.m
//  Instagram
//
//  Created by Kaitlyn Gunadhi on 7/9/20.
//  Copyright © 2020 Kaitlyn Gunadhi. All rights reserved.
//

#import "PostCell.h"
#import "DateTools.h"

@implementation PostCell

- (void)setPost:(Post *)post {
    _post = post;
    
    self.usernameLabel.text = post.author.username;
    self.usernameLabel2.text = post.author.username;
    self.timestampLabel.text = post.createdAt.timeAgoSinceNow;
    
    self.photoView.file = post.image;
    [self.photoView loadInBackground];
    
    // pad caption to start after username
    NSString *padding = [@"" stringByPaddingToLength:(([self.post.author.username length] + 1) * 2) withString:@" " startingAtIndex:0];
    self.captionLabel.text = [padding stringByAppendingString:post.caption];
    [self.captionLabel sizeToFit];
}

@end
