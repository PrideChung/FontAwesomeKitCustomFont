#import "FCFCustomIcon.h"

@implementation FCFCustomIcon

+ (UIFont *)iconFontWithSize:(CGFloat)size
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self registerIconFontWithURL:[[NSBundle mainBundle] URLForResource:@"fontastic" withExtension:@"ttf"]];
    });
    
    UIFont *font = [UIFont fontWithName:@"fontastic" size:size];
    NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    return font;
}

+ (instancetype)editIconWithSize:(CGFloat)size
{
    return [[self class] iconWithCode:@"a" size:size];
}

+ (instancetype)heartIconWithSize:(CGFloat)size
{
    return [[self class] iconWithCode:@"b" size:size];
}

@end
