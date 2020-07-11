//
//  PostCollectionCell.h
//  Instagram
//
//  Created by Kaitlyn Gunadhi on 7/10/20.
//  Copyright © 2020 Kaitlyn Gunadhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
@import Parse;

NS_ASSUME_NONNULL_BEGIN

@interface PostCollectionCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet PFImageView *photoView;
@property (nonatomic, strong) Post *post;

@end

NS_ASSUME_NONNULL_END
