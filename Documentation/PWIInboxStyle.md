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
