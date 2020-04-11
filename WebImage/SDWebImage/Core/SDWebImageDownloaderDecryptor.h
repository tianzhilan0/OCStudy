/*
* This file is part of the SDWebImage package.
* (c) Olivier Poitrey <rs@dailymotion.com>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*/

#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"

typedef NSData * _Nullable (^SDWebImageDownloaderDecryptorBlock)(NSData * _Nonnull data, NSURLResponse * _Nullable response);

/**
这是下载器解密器的协议。在解码之前对原始加密数据进行解密。注意渐进译码与解密器不兼容。
We can use a block to specify the downloader decryptor. But Using protocol can make this extensible, and allow Swift user to use it easily instead of using `@convention(block)` to store a block into context options.
*/
@protocol SDWebImageDownloaderDecryptor <NSObject>

/// Decrypt the original download data and return a new data. You can use this to decrypt the data using your perfereed algorithm.
/// @param data The original download data
/// @param response The URL response for data. If you modifiy the original URL response via response modifier, the modified version will be here. This arg is nullable.
/// @note If nil is returned, the image download will be marked as failed with error `SDWebImageErrorBadImageData`
- (nullable NSData *)decryptedDataWithData:(nonnull NSData *)data response:(nullable NSURLResponse *)response;

@end

/**
带有块的下载器响应修改器类。
*/
@interface SDWebImageDownloaderDecryptor : NSObject <SDWebImageDownloaderDecryptor>

- (nonnull instancetype)initWithBlock:(nonnull SDWebImageDownloaderDecryptorBlock)block;
+ (nonnull instancetype)decryptorWithBlock:(nonnull SDWebImageDownloaderDecryptorBlock)block;

@end

/// 为公共数据加密创建解密器的方便方法。
@interface SDWebImageDownloaderDecryptor (Conveniences)

/// Base64编码的图像数据解密器
@property (class, readonly, nonnull) SDWebImageDownloaderDecryptor *base64Decryptor;

@end
