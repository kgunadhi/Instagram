//
//  PostCollectionCell.m
//  Instagram
//
//  Created by Kaitlyn Gunadhi on 7/10/20.
//  Copyright © 2020 Kaitlyn Gunadhi. All rights reserved.
//

#import "PostCollectionCell.h"
#import "Post.h"

@implementation PostCollectionCell

- (void)setPost:(Post *)post {
    // Set underlying private storage _movie since replacing default setter
    _post = post;
    
    self.photoView.image = nil;
    self.photoView.file = post.image;
    [self.photoView loadInBackground];
}

@end
