//
//  FileManager.h
//  
//
//  Created by CScent on 18/4/18.
//
//

#import <Foundation/Foundation.h>

@interface FileManager : NSObject
@property NSString *fileName;

-(void) matchFile:(NSString *)name;
-(BOOL) showFiles:(NSString *)filePath;
@end
