# trQrcode

> 功能简介：二维码插件 用于生成二维码；

## 集成方式

1. 打开iOS目录`工程目录/platforms/ios/WeexEros`，编辑Podfile文件，添加`TornErosPluginQrcode`组件的引用，添加代码如下，**注意**版本号改为最新的版本

	```ruby
	def common
    	...忽略其他库的引用
    	# 在这里添加引用 TornErosPluginQrcode
    	pod 'TornErosPluginQrcode', :git => 'https://github.com/torns/torn-eros-plugin-ios-qrcode.git', :tag => '版本'
	end
	target 'WeexEros' do
    	common
	end
	```

2. 在终端中`cd`到此目录下执行 `pod update`，等待命令执行完毕，重新运行项目，如果没有报错则说明`TornErosPluginQrcode`组件集成成功；

## 使用


