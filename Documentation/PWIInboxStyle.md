### PWIInboxStyle <a name="PWIInboxStyle"></a>
This class is designed to customize the Inbox appearance
```
@interface PWIInboxStyle : NSObject
```
---
### dateFormatterBlock <a name="dateFormatterBlock"></a>
This block customizes the date formatting
```
@property (nonatomic, readwrite) PWIDateFormatterBlock dateFormatterBlock
```
---
### *defaultImageIcon <a name="*defaultImageIcon"></a>
The default icon in the cell next to the message; if not specified, the app icon is used
```
@property (nonatomic, readwrite) UIImage *defaultImageIcon
```
---
### *defaultFont <a name="*defaultFont"></a>
The default font
```
@property (nonatomic, readwrite) UIFont *defaultFont
```
---
### *defaultTextColor <a name="*defaultTextColor"></a>
The default text color
```
@property (nonatomic, readwrite) UIColor *defaultTextColor
```
---
### *backgroundColor <a name="*backgroundColor"></a>
The default background color
```
@property (nonatomic, readwrite) UIColor *backgroundColor
```
---
### *selectionColor <a name="*selectionColor"></a>
The default selection color
```
@property (nonatomic, readwrite) UIColor *selectionColor
```
---
### *unreadImage <a name="*unreadImage"></a>
The appearance of the unread messages mark
```
@property (nonatomic, readwrite) UIImage *unreadImage
```
---
### *listErrorImage <a name="*listErrorImage"></a>
The image which is displayed if an error occurs and the list of inbox messages is empty
```
@property (nonatomic, readwrite) UIImage *listErrorImage
```
---
### *listErrorMessage <a name="*listErrorMessage"></a>
The error text which is displayed when an error occurs; cannot be localized
```
@property (nonatomic, readwrite) NSString *listErrorMessage
```
---
### *listEmptyImage <a name="*listEmptyImage"></a>
The image which is displayed if the list of inbox messages is empty
```
@property (nonatomic, readwrite) UIImage *listEmptyImage
```
---
### *listEmptyMessage <a name="*listEmptyMessage"></a>
The text which is displayed if the list of inbox messages is empty; cannot be localized
```
@property (nonatomic, readwrite) NSString *listEmptyMessage
```
---
### *accentColor <a name="*accentColor"></a>
The accent color
```
@property (nonatomic, readwrite) UIColor *accentColor
```
---
### *titleColor <a name="*titleColor"></a>
The color of message titles
```
@property (nonatomic, readwrite) UIColor *titleColor
```
---
### *descriptionColor <a name="*descriptionColor"></a>
The color of messages descriptions
```
@property (nonatomic, readwrite) UIColor *descriptionColor
```
---
### *dateColor <a name="*dateColor"></a>
The color of message dates
```
@property (nonatomic, readwrite) UIColor *dateColor
```
---
### *separatorColor <a name="*separatorColor"></a>
The color of the separator
```
@property (nonatomic, readwrite) UIColor *separatorColor
```
---
### *titleFont <a name="*titleFont"></a>
The font of message titles
```
@property (nonatomic, readwrite) UIFont *titleFont
```
---
### *descriptionFont <a name="*descriptionFont"></a>
The font of message descriptions
```
@property (nonatomic, readwrite) UIFont *descriptionFont
```
---
### *dateFont <a name="*dateFont"></a>
The font of message dates
```
@property (nonatomic, readwrite) UIFont *dateFont
```
---
### defaultStyle: <a name="defaultStyle:"></a>
The method returning the default style; all parameters might be changed

@retutn instance of default style
```
+ (instancetype)defaultStyle
```
---
### customStyleWithDefaultImageIcon: <a name="customStyleWithDefaultImageIcon:"></a>
The method filling style's fields based on following parameters: icon, textColor, accentColor, date; all parameters might be changed
```
+ (instancetype)customStyleWithDefaultImageIcon:(UIImage *)icon
textColor:(UIColor *)textColor
accentColor:(UIColor *)accentColor
font:(UIFont *)font
```
---
### customStyleWithDefaultImageIcon: <a name="customStyleWithDefaultImageIcon:"></a>
The method filling style's fields based on following parameters: icon, textColor, accentColor, font, dateFormatterBlock; all parameters might be changed
```
+ (instancetype)customStyleWithDefaultImageIcon:(UIImage *)icon
textColor:(UIColor *)textColor
accentColor:(UIColor *)accentColor
font:(UIFont *)font
dateFromatterBlock:(PWIDateFormatterBlock)dateFormatterBlock
```
---
