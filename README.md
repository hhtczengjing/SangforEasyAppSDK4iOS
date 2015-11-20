# SangforEasyAppSDK4iOS
Easy App SDK iOS版本

声明：本版本只提供本人多个项目集成使用,如需使用请联系深信服公司.

###在Podfile中添加

`pod 'SangforEasyAppSDK4iOS', :git => 'https://github.com/hhtczengjing/SangforEasyAppSDK4iOS.git'`

###快速使用

1.引入头文件

```
#import <SangforEasyAppSDK4iOS/AuthHelper.h>
```

2.初始化

```
NSString *host = @"主机地址";//服务器IP地址
short port = 443;//端口号，默认是443
AuthHelper *vpnHelper = [[AuthHelper alloc] initWithHostAndPort:host port:443 delegate:self];
```

3.认证

```
[vpnHelper setAuthParam:@PORPERTY_NamePasswordAuth_NAME param:@"用户名"];
[vpnHelper setAuthParam:@PORPERTY_NamePasswordAuth_PASSWORD param:@"密码"];
[vpnHelper loginVpn:SSL_AUTH_TYPE_PASSWORD];
```

4.回调,实现SangforSDKDelegate的回调方法

```
- (void)onCallBack:(const VPN_RESULT_NO)vpnErrno authType:(const int)authType {
    switch (vpnErrno){
        case RESULT_VPN_INIT_FAIL:
        	NSLog(@"VPN初始化失败!");
            break;
        case RESULT_VPN_AUTH_FAIL:
        	NSLog(@"VPN认证失败!");
            break;
        case RESULT_VPN_INIT_SUCCESS:
        	NSLog(@"VPN初始化完成!");
            break;
        case RESULT_VPN_AUTH_SUCCESS:
        	NSLog(@"VPN认证通过, 欢迎使用SSL VPN!");
            break;
        case RESULT_VPN_AUTH_LOGOUT:
        	NSLog(@"VPN注销完成!");
        	break;
        case RESULT_VPN_NONE:
            NSLog(@"未响应!");
            break;
        default:
            break;
    }
}
```