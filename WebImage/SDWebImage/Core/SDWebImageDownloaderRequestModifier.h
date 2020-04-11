/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"

typedef NSURLRequest * _Nullable (^SDWebImageDownloaderRequestModifierBlock)(NSURLRequest * _Nonnull request);

/**
 这是下载请求修改器的协议。
 我们可以使用一个块来指定下载器请求修改器。但是使用协议可以使其可扩展，并允许Swift用户轻松地使用它，而不是使用“@convention(block)”将一个block存储到上下文选项中。
 */
@protocol SDWebImageDownloaderRequestModifier <NSObject>

/// Modify the original URL request and return a new one instead. You can modify the HTTP header, cachePolicy, etc for this URL.
/// @param request The original URL request for image loading
/// @note If return nil, the URL request will be cancelled.
- (nullable NSURLRequest *)modifiedRequestWithRequest:(nonnull NSURLRequest *)request;

@end

/**
 A downloader request modifier class with block.
 */
@interface SDWebImageDownloaderRequestModifier : NSObject <SDWebImageDownloaderRequestModifier>

- (nonnull instancetype)initWithBlock:(nonnull SDWebImageDownloaderRequestModifierBlock)block;
+ (nonnull instancetype)requestModifierWithBlock:(nonnull SDWebImageDownloaderRequestModifierBlock)block;

@end
