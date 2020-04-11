//
//  ViewController.m
//  AFN
//
//  Created by 李闯 on 2020/4/11.
//  Copyright © 2020 李闯. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)shu
{
    NSString *urlString = @"https://www.example.com/app/publicRequest";
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"https" ofType:@"cer"];
    NSData * certData =[NSData dataWithContentsOfFile:cerPath];
    NSSet * certSet = [[NSSet alloc] initWithObjects:certData, nil];

    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 是否允许,NO-- 不允许无效的证书
    [securityPolicy setAllowInvalidCertificates:YES];
    // 设置证书
    [securityPolicy setPinnedCertificates:certSet];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.securityPolicy = securityPolicy;
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    // request
    [manager GET:urlString parameters:nil headers:nil progress:^(NSProgress * progress){
    } success:^(NSURLSessionDataTask *task, id responseObject) {
        NSArray * array = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        NSLog(@"OK === %@",array);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"error ==%@",error.description);
    }];

}

- (void)network
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //解析方式
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    //如果服务器返回的ContentType不是这三种中的一种，我们就需要设置
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    [manager.reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"3G");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"无线");
                break;
                
            default:
                break;
        }
    }];
    
    [manager.reachabilityManager stopMonitoring];
}

- (void)post
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url = @"http://120.25.226.186:32812/login";
    NSDictionary *parameters = @{@"":@""};
    NSDictionary *headers = @{@"":@""};
    [manager POST:url parameters:parameters headers:headers constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)post2
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url = @"http://120.25.226.186:32812/login";
    NSDictionary *parameters = @{@"":@""};
    NSDictionary *headers = @{@"":@""};
    [manager POST:url parameters:parameters headers:headers progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)downLoad
{
    // 1.创建一个管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    // 2. 创建请求对象
    NSURL *url = [NSURL URLWithString:@"http://120.25.226.186:32812/resources/images/minion_03.png"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    // 3. 下载文件
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    // downloadProgress.completedUnitCount 当前下载大小
    // downloadProgress.totalUnitCount 总大小
    NSLog(@"%f", 1.0 * downloadProgress.completedUnitCount / downloadProgress.totalUnitCount);
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        // targetPath  临时存储地址
        NSLog(@"targetPath:%@",targetPath);
        NSString *path =[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
        NSString *filePath = [path stringByAppendingPathComponent:response.suggestedFilename];
        NSURL *url = [NSURL fileURLWithPath:filePath];
        NSLog(@"path:%@",filePath);
        // 返回url 我们想要存储的地址
        // response 响应头
        return url;
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        // 下载完成之后调用
        // response 响应头
        // filePath 下载存储地址
        NSLog(@"filePath:%@",filePath);
    }];
    // 需要手动开启
    [downloadTask resume];
}

- (void)upLoad
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url =@"http://120.25.226.186:32812/upload";
    [manager POST:url parameters:nil headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        // formData 将要上传的数据
        UIImage *image =[UIImage imageNamed:@"123"];
        NSData *data =UIImagePNGRepresentation(image);
        // 方法一
        /**
          data:上传文件二进制数据
          name:接口的名字
          fileName:文件上传到服务器之后叫什么名字
          mineType:上传文件的类型，可以上传任意二进制mineType.
         */
        [formData appendPartWithFileData:data name:@"file" fileName:@"123.png" mimeType:@"image/png"];
        // 方法二
        /**
         data:上传文件二进制数据
         name:接口的名字
         这种方法内部会将文件名当做上传到服务器之后的名字，并自动获取其类型
         */
        [formData appendPartWithFormData:data name:@"file"];
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        // 上传进度
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        // 上传成功
        NSLog(@"上传成功");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // 上传失败
        NSLog(@"上传失败");
    }];
}
- (void)upload2
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url =@"http://120.25.226.186:32812/upload";
    [manager POST:url parameters:nil headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        // formData 将要上传的数据
        // 直接传URL
        NSURL *url =[NSURL fileURLWithPath:@"/Users/yangboxing/Desktop/Snip20160905_7.png"];
        // 方法一
        [formData appendPartWithFileURL:url name:@"file" fileName:@"hhaha.png" mimeType:@"image/png" error:nil];
        // 方法二
        /**
         这个方法会自动截取url最后一块的文件名作为上传到服务器的文件名
         也会自动获取mimeType，如果没有办法获取mimeType 就使用@"application/octet-stream" 表示任意的二进制数据 ，当我们不在意文件类型的时候 也可以用这个。
         */
        [formData appendPartWithFileURL:url name:@"file" error:nil];
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        // 上传进度
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        // 上传成功
        NSLog(@"上传成功");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // 上传失败
        NSLog(@"上传失败");
    }];
}


@end
