//
//  PWIInboxMessageViewCell.m
//  PushwooshInboxUI
//
//  Created by Pushwoosh on 01/11/2017.
//  Copyright © 2017 Pushwoosh. All rights reserved.
//

#import "PWIInboxMessageViewCell.h"
#import "UIImageView+PWILoadImage.h"
#import "PWIInboxStyle.h"

@interface PWIInboxMessageViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *inboxImageView;
@property (nonatomic) PWIInboxStyle *style;

@end


@implementation PWIInboxMessageViewCell

- (UIEdgeInsets)layoutMargins {
    return UIEdgeInsetsZero;
}

- (void)updateStyle:(PWIInboxStyle *)style {
    _style = style;
    if (style.selectionColor) {
        self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.bounds];
        self.selectedBackgroundView.backgroundColor = style.selectionColor;
    }
    _messageLabel.font = _style.descriptionFont;
    _messageLabel.textColor = _style.descriptionColor;
    _titleLabel.font = _style.titleFont;
    _titleLabel.textColor = _style.titleColor;
}

- (void)updateMessage:(NSObject<PWInboxMessageProtocol> *)message {
    _message = message;
    _titleLabel.attributedText = [self titleAttributedStringForMessage:message];
    _messageLabel.text = message.message;
    if (message.imageUrl.length) {
        [_inboxImageView pwi_loadImageFromUrl:message.imageUrl];
    } else {
        _inboxImageView.image = _style.defaultImageIcon;
    }
}

- (NSAttributedString *)titleAttributedStringForMessage:(NSObject<PWInboxMessageProtocol> *)message {
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] init];
    
    if (!message.isRead && _style.unreadImage) {
        NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
        textAttachment.image = _style.unreadImage;
        textAttachment.bounds = CGRectMake(0, 0, 10, 10);
        [string appendAttributedString:[NSAttributedString attributedStringWithAttachment:textAttachment]];
        [string appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
    }
    
    if (message.title) {
        [string appendAttributedString:[[NSAttributedString alloc] initWithString:message.title]];
    }
    
    if (message.sendDate) {
        NSString *dateString = _style.dateFormatterBlock(message.sendDate, self);
        [string appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        [string appendAttributedString:[[NSAttributedString alloc] initWithString:dateString attributes:@{NSFontAttributeName : _style.dateFont,
                                                                                                          NSForegroundColorAttributeName : _style.dateColor
                                                                                                          }]];
    }
    return string;
}

@end
