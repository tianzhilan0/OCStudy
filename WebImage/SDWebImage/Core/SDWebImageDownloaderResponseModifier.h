/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"

typedef NSURLResponse * _Nullable (^SDWebImageDownloaderResponseModifierBlock)(NSURLResponse * _Nonnull response);

/**
 这是下载器响应修改器的协议。
 我们可以使用一个块来指定下载器响应修改器。但是使用协议可以使其可扩展，并允许Swift用户轻松地使用它，而不是使用“@convention(block)”将一个block存储到上下文选项中。
 */
@protocol SDWebImageDownloaderResponseModifier <NSObject>

/// Modify the original URL response and return a new response. You can use this to check MIME-Type, mock server response, etc.
/// @param response The original URL response, note for HTTP request it's actually a `NSHTTPURLResponse` instance
/// @note If nil is returned, the image download will marked as cancelled with error `SDWebImageErrorInvalidDownloadResponse`
- (nullable NSURLResponse *)modifiedResponseWithResponse:(nonnull NSURLResponse *)response;

@end

/**
 A downloader response modifier class with block.
 */
@interface SDWebImageDownloaderResponseModifier : NSObject <SDWebImageDownloaderResponseModifier>

- (nonnull instancetype)initWithBlock:(nonnull SDWebImageDownloaderResponseModifierBlock)block;
+ (nonnull instancetype)responseModifierWithBlock:(nonnull SDWebImageDownloaderResponseModifierBlock)block;

@end
