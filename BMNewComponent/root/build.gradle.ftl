<#import "root://activities/common/kotlin_macros.ftl" as kt>
<@kt.addKotlinPlugins />
apply from:"../../common_component_build.gradle"

apply plugin: 'kotlin-android-extensions'
apply plugin: 'kotlin-android'

android {
//    resourcePrefix "ModuleName_" //给 Module 内的资源名增加前缀, 避免资源名冲突, 建议使用 Module 名作为前缀
}

dependencies {
    ${getConfigurationName("compile")} fileTree(dir: 'libs', include: ['*.jar'])
    ${getConfigurationName("compile")} project(":lib_blueplus")
    <@kt.addKotlinDependencies />
}
