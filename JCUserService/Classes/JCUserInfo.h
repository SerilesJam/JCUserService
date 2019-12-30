//
//  JCUserInfo.h
//  JCUserService
//
//  Created by Jam Jia on 12/30/19.
//

#import <Foundation/Foundation.h>

#import "JCToolKit/JCToolKit.h"

NS_ASSUME_NONNULL_BEGIN

/*
 用户信息类，实际项目中应该单独做个repo单独管理，这里演示方便就放这里吧
 */
@interface JCUserInfo : NSObject

jc_singleton

@property (nonatomic, strong, readonly) NSString *nickName;
@property (nonatomic, strong, readonly) NSString *userId;
@property (nonatomic, strong, readonly) NSString *userToken;

@end

NS_ASSUME_NONNULL_END
