<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/base/pageimpl/Sample/SamplePageCallBack.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${pageName}/${pageName}PageCallBack.java" />

	<instantiate from="root/src/app_package/base/pageimpl/Sample/SamplePageImpl.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${pageName}/${pageName}PageImpl.java" />


    
</recipe>