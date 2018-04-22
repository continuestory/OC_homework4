//
//  main.m
//  homework_4
//
//  Created by CScent on 18/4/18.
//  Copyright (c) 2018年 CScent. All rights reserved.
//

//取消output中时间显示
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif

#import <Foundation/Foundation.h>
#import "FileManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//T8测试
//        NSString *schoolsPath = @"/Users/cscent/Desktop/list.txt";
//
//        NSString *schoolsContent = [[NSString alloc] initWithContentsOfFile:schoolsPath encoding:NSUTF8StringEncoding error:nil];
//        NSArray *schoolsArray = [schoolsContent componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//        
//        NSString *plistPath = [NSHomeDirectory() stringByAppendingPathComponent:@"list.plist"];
//        NSMutableArray *resultsArr = [[NSMutableArray alloc] initWithCapacity:0];
//        for (NSInteger j = 0; j < schoolsArray.count; j++){
//            NSString *schoolStr = [schoolsArray objectAtIndex:j];
//            NSArray *schoolArr = [schoolStr componentsSeparatedByString:@"\t"];
//            [resultsArr addObject:@{@"No.":[schoolArr objectAtIndex:0],@"Abbreviation":[schoolArr objectAtIndex:1],@"StateName":[schoolArr objectAtIndex:2],@"Capital":[schoolArr objectAtIndex:3],@"Become a state":[schoolArr objectAtIndex:4]}];
//        }  
//        [resultsArr writeToFile:plistPath atomically:YES];
//        
//        
//        
//        NSDictionary *buffer = [NSDictionary dictionaryWithContentsOfFile:@"/Users/cscent/list.plist"];
//        
//        NSLog(@"%@", buffer);
        
        
//T7测试
//        NSFileManager *fm = [NSFileManager defaultManager];
//        NSString *path = [fm currentDirectoryPath];
//        NSLog(@"Current directory path is: %@", path);
//        
//        NSFileHandle *inFile, *outFile;
//        NSData *buffer = nil;
//        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile3"];
//        
//        if (inFile == nil) {
//            NSLog(@"Open of testfile for reading failed");
//            return 1;
//        }
//        
//       
//        [fm createFileAtPath:@"testout" contents:nil attributes:nil];
//        
//        outFile = [NSFileHandle fileHandleWithStandardOutput];
//        
//        NSInteger kBufSize = 128, kBufRead = 0;
//        
//        buffer = [inFile readDataOfLength:kBufSize];
//        
//        
//        while ([buffer length] !=0) {
//            NSLog(@"%li / %li", kBufRead, kBufSize);
//            [inFile seekToFileOffset:kBufRead];
//            buffer = [inFile readDataOfLength:kBufSize];
//            [outFile writeData:buffer];
//            kBufRead += kBufSize;
//        }
//        
//     
//        [inFile closeFile];
        
        
//        T3测试
        FileManager *ffm = [[FileManager alloc]init];
        [ffm matchFile:@"myTest.rtf"];
        [ffm showFiles:NSHomeDirectory()];
        NSData *buffer;
        NSFileHandle *inHandle, *outHandle;
        inHandle = [NSFileHandle fileHandleWithStandardInput];
        if(inHandle == nil)
        {
            NSLog(@"Open of testfile.txt for reading failed!");
            return 0;
        }
    
        NSString *fileName1 = [NSString stringWithCString:argv[0] encoding:NSUTF8StringEncoding];
        NSString *fileName2 = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        NSLog(@"%@ and %@",fileName1,fileName2);
        buffer = [inHandle readDataToEndOfFile];
        outHandle = [NSFileHandle fileHandleForWritingAtPath:@"/Users/cscent/Documents/test_oc/myTest2.txt "];
        [outHandle writeData:buffer];
        
        [inHandle closeFile];
        [outHandle closeFile];
//
    }
    return 0;
}

