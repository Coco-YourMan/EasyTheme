//
//  AUUUserTableViewCell.m
//  ThemeTest
//
//  Created by JyHu on 2017/2/24.
//  Copyright © 2017年 JyHu. All rights reserved.
//

#import "AUUUserTableViewCell.h"
#import <Masonry/Masonry.h>
#import "AUUUserModel.h"

@interface AUUUserTableViewCell()

@property (retain, nonatomic) UIImageView *usersIconImageView;

@property (retain, nonatomic) UILabel *userNameLabel;

@end

@implementation AUUUserTableViewCell

+ (CGFloat)heightForObject:(id)object atIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView
{
    return 60;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        [self initlization];
    }
    return self;
}

- (void)initlization
{
    self.contentView.backgroundColorIdentifier = AUUColorBackground;
    
    self.usersIconImageView = [[UIImageView alloc] init];
    self.usersIconImageView.backgroundColor = [UIColor clearColor];
    [self addSubview:self.usersIconImageView];
    
    self.userNameLabel = [[UILabel alloc] init];
    self.userNameLabel.textColorIdentifier = AUUColorTextTitle;
    self.userNameLabel.font = [UIFont systemFontOfSize:18];
    [self addSubview:self.userNameLabel];
    
    [self.usersIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10);
        make.left.equalTo(self.mas_left).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        make.width.equalTo(self.usersIconImageView.mas_height);
    }];
    
    [self.userNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.left.equalTo(self.usersIconImageView.mas_right).offset(10);
    }];
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.usersIconImageView.image = nil;
    self.userNameLabel.text = @"";
}

- (BOOL)shouldUpdateCellWithObject:(id)object
{
    [super shouldUpdateCellWithObject:object];
    AUUUserModel *model = ((NICellObject *)object).userInfo;
    self.usersIconImageView.imageIdentifier = model.imageIdentifier;
    self.usersIconImageView.backgroundColor = [UIColor greenColor];
    self.userNameLabel.text = @"test";
    return YES;
}







- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
