//
//  FileManager.m
//  
//
//  Created by CScent on 18/4/18.
//
//
//取消output中时间显示
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif
#import "FileManager.h"

@implementation FileManager
@synthesize fileName;

-(void) matchFile:(NSString *)name{
    self.fileName = name;
}
-(BOOL)showFiles:(NSString *)filePath{
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL isDir = NO;
    BOOL isExit = [fm fileExistsAtPath:filePath isDirectory:&isDir];
    if(isExit){
        if(isDir){
            NSArray *dirArray = [fm contentsOfDirectoryAtPath:filePath error:nil];
            NSString *subPath = nil;
            for(NSString *str in dirArray){
                subPath = [filePath stringByAppendingPathComponent:str];
                BOOL issubDir = NO;
                [fm fileExistsAtPath:subPath isDirectory:&issubDir];
                
                if([self showFiles:subPath])
                    return YES;
            }
        }
        else{
            if([[filePath lastPathComponent] isEqualToString:self.fileName]){
                NSLog(@"sussessful");
                return YES;
            }
            NSLog(@"%@",filePath);
        }
    }
    return NO;
}

@end
