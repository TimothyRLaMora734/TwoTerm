//
//  TextLabel.m
//  2Term
//
//  Created by Kelvin Sherlock on 7/7/2016.
//
//

#import "TextLabel.h"

#import "CharacterGenerator.h"

@implementation TextLabel

@synthesize text = _text;
@synthesize color = _color;
@synthesize characterGenerator = _characterGenerator;

-(void) setText:(NSString *)text {
    if (_text == text) return;
    [_text release];
    _text = [text retain];
    [self setNeedsDisplay: YES];
}

-(void) setColor:(NSColor *)color {
    if (_color == color) return;
    [_color release];
    _color = [color retain];
    [self setNeedsDisplay: YES];
}

-(void) setCharacterGenerator:(CharacterGenerator *)characterGenerator {
    if (_characterGenerator == characterGenerator) return;
    [_characterGenerator release];
    _characterGenerator = [characterGenerator retain];
    [self setNeedsDisplay: YES];
}


/*
-(BOOL)isFlipped {
    return YES;
}
*/
-(BOOL)isOpaque {
    return NO;
}

-(void)dealloc {
    
    [_text release];
    [_color release];
    [_characterGenerator release];
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [[NSColor clearColor] setFill];
    NSRectFill(dirtyRect);
    
    NSUInteger length = [_text length];
    if (!length) return;
    if (!_color) return;

    NSSize sz = [_characterGenerator characterSize];
    
    NSRect frame = [self frame];

    CGFloat width = sz.width * length;
    
    NSPoint point = NSZeroPoint;

    if (width < NSWidth(frame)) {
        point.x = (NSWidth(frame) - width) * 0.5;
    }
    
    point.x = floor(point.x);

    [_color setFill];
    for (unsigned i = 0; i < length; ++i) {
        unichar c = [_text characterAtIndex: i];

        [_characterGenerator drawCharacter: c atPoint: point];
        point.x += sz.width;
        if (point.x > NSWidth(frame)) break;
    }
}

-(void)awakeFromNib {
    
    [super awakeFromNib];

    //[self setWantsLayer: YES];

    if (!_text) _text = [@"Testing!" retain];
    if (!_color) _color = [[NSColor greenColor] retain];
    if (!_characterGenerator) _characterGenerator = [[CharacterGenerator generatorForCharacterSet: CGApple80] retain];
    
}

@end
