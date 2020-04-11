/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"

/// Operation execution order
typedef NS_ENUM(NSInteger, SDWebImageDownloaderExecutionOrder) {
    /**
     * 默认值。所有下载操作都将以队列方式执行(先进先出)。
     */
    SDWebImageDownloaderFIFOExecutionOrder,
    
    /**
     * 所有下载操作将以堆栈方式执行(后进先出)。
     */
    SDWebImageDownloaderLIFOExecutionOrder
};

/**
 The class contains all the config for image downloader
 @note This class conform to NSCopying, make sure to add the property in `copyWithZone:` as well.
 */
@interface SDWebImageDownloaderConfig : NSObject <NSCopying>

/**
 获取用于共享实例或初始化的默认下载器配置，该配置不提供任何下载器配置。如“SDWebImageDownloader.sharedDownloader”。
 @note You can modify the property on default downloader config, which can be used for later created downloader instance. The already created downloader instance does not get affected.
 */
@property (nonatomic, class, readonly, nonnull) SDWebImageDownloaderConfig *defaultDownloaderConfig;

/**
 * 并发下载的最大数量。
 * Defaults to 6.
 */
@property (nonatomic, assign) NSInteger maxConcurrentDownloads;

/**
 * 每个下载操作的超时值(以秒为单位)。
 * Defaults to 15.0.
 */
@property (nonatomic, assign) NSTimeInterval downloadTimeout;

/**
 * 网络下载期间关于进度百分比的最小间隔。这意味着下一个进度回调和当前进度回调的进度百分比差异应该大于或等于这个值。但是，最终的完成下载进度回调不会受到影响。
 * The value should be 0.0-1.0.
 * @note If you're using progressive decoding feature, this will also effect the image refresh rate.
 * @note This value may enhance the performance if you don't want progress callback too frequently.
 * Defaults to 0, which means each time we receive the new data from URLSession, we callback the progressBlock immediately.
 */
@property (nonatomic, assign) double minimumProgressInterval;

/**
 * NSURLSession使用的自定义会话配置。如果您不提供，我们将使用' defaultSessionConfiguration '代替。
 * Defatuls to nil.
 * @note This property does not support dynamic changes, means it's immutable after the downloader instance initialized.
 */
@property (nonatomic, strong, nullable) NSURLSessionConfiguration *sessionConfiguration;

/**
 * Gets/Sets a subclass of `SDWebImageDownloaderOperation` as the default
 * `NSOperation` to be used each time SDWebImage constructs a request
 * operation to download an image.
 * Defaults to nil.
 * @note Passing `NSOperation<SDWebImageDownloaderOperation>` to set as default. Passing `nil` will revert to `SDWebImageDownloaderOperation`.
 */
@property (nonatomic, assign, nullable) Class operationClass;

/**
 * Changes download operations execution order.
 * Defaults to `SDWebImageDownloaderFIFOExecutionOrder`.
 */
@property (nonatomic, assign) SDWebImageDownloaderExecutionOrder executionOrder;

/**
 * 设置为请求操作设置的默认URL凭据。
 * Defaults to nil.
 */
@property (nonatomic, copy, nullable) NSURLCredential *urlCredential;

/**
 * 设置用于HTTP基本身份验证的用户名。
 * Defaults to nil.
 */
@property (nonatomic, copy, nullable) NSString *username;

/**
 * 设置用于HTTP基本身份验证的密码。
 * Defautls to nil.
 */
@property (nonatomic, copy, nullable) NSString *password;

@end
