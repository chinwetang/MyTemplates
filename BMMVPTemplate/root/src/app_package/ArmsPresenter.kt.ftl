package ${presenterPackageName}

import android.app.Application

import com.jess.arms.integration.AppManager
<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope
</#if>
import com.jess.arms.mvp.BasePresenter
import com.jess.arms.http.imageloader.ImageLoader
import me.jessyan.rxerrorhandler.core.RxErrorHandler
import javax.inject.Inject

import ${contractPackageName}.${pageName}Contract
import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageImpl
import android.arch.lifecycle.Lifecycle
import android.arch.lifecycle.OnLifecycleEvent

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
class ${pageName}Presenter
@Inject
constructor(model: ${pageName}Contract.Model, rootView: ${pageName}Contract.View) :
BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model,rootView) {
    @Inject
    lateinit var mErrorHandler:RxErrorHandler
    @Inject
    lateinit var mApplication:Application
    @Inject
    lateinit var mImageLoader:ImageLoader
    @Inject
    lateinit var mAppManager:AppManager

    lateinit var pageImpl: ${pageTemplateName}PageImpl

    @OnLifecycleEvent(Lifecycle.Event.<#if needActivity && needFragment>ON_CREATE<#elseif needActivity>ON_CREATE<#elseif needFragment>ON_RESUME</#if>)
    internal fun initPageImpl() {
        pageImpl = mRootView.getPageImpl()
    }
}
