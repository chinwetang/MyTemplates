<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    <uses-permission android:name="android.permission.CHANGE_WIFI_STATE"/>
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
    
    <application
    	android:name="com.jess.arms.base.BaseApplication"
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:supportsRtl="true"
        android:theme="@style/middleware_AppTheme">

        <!-- 只要依赖 AutoSize 就必须填写设计图尺寸, 否则报错, 不想使用 AutoSize 就不要依赖 AutoSize
        只要填写完设计图的尺寸, AutoSize 就会自动启动, 以下 dp 尺寸是根据公式 px / (dpi / 160) 求出, 运算时使用测试机的 dpi 即可
        AutoSize 的详细介绍请看这里 https://juejin.im/post/5bce688e6fb9a05cf715d1c2
        -->
        <meta-data
            android:name="design_width_in_dp"
            android:value="375"/>
        <meta-data
            android:name="design_height_in_dp"
            android:value="667"/>

        <!-- 每个业务组件需要声明两个 ConfigModule, CommonSDK 的 ConfigModule 和 业务组件自己的 ConfigModule
        CommonSDK 的 ConfigModule 含有有每个组件都可共用的配置信息, 业务组件自己的 ConfigModule 含有自己独有的配置
        信息, 这样即可重用代码, 又可以允许每个组件可自行管理自己独有的配置信息, 如果业务组件没有独有的配置信息则只需要
        声明 CommonSDK 的 ConfigModule -->
        <meta-data
            android:name="cn.com.bluemoon.middleware.core.GlobalConfiguration"
            android:value="ConfigModule"/>
        <meta-data
            android:name="${packageName}.app.GlobalConfiguration"
            android:value="ConfigModule"/>
    </application>
</manifest>
