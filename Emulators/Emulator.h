//
//  Emulator.h
//  2Term
//
//  Created by Kelvin Sherlock on 7/7/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#include <sys/ttycom.h>
#include <sys/termios.h>

@class NSEvent;
@class NSMenu;

#ifdef __cplusplus
class Screen;
class OutputChannel;
#else
#define Screen void
#define OutputChannel void
#endif

#import "iGeometry.h"


@interface EmulatorManager : NSObject

+(void)registerClass: (Class)klass;
+(NSMenu *)emulatorMenu;
+(id)emulatorForTag: (unsigned)tag;

@end

@protocol Emulator

-(void)processCharacter: (uint8_t)c screen: (Screen *)screen output: (OutputChannel *)output;
-(void)keyDown: (NSEvent *)event screen: (Screen *)screen output: (OutputChannel *)output;

-(void)reset;

+(NSString *)name;
-(NSString *)name;

-(const char *)termName;

-(BOOL)resizable;

-(struct winsize)defaultSize;

@optional

-(void)initTerm: (struct termios *)term;

@end