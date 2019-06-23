package ${ativityPackageName}

import android.content.Context
import cn.com.bluemoon.middleware.base.BaseMultiViewActivity
import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageImpl
import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageCallBack

import com.jess.arms.di.component.AppComponent
import ${componentPackageName}.Dagger${pageName}Component
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

class ${pageName}Activity : BaseMultiViewActivity<${pageTemplateName}PageImpl, ${pageName}Presenter>
(), ${pageName}Contract.View {
    companion object {
        private val TAG = ${pageName}Activity::class.java.canonicalName
    }

    override fun setupActivityComponent(appComponent: AppComponent) {
        Dagger${pageName}Component
                .builder()
                .appComponent(appComponent)
                .view(this)
                .lifecycleOwner(this)
                .pageCallBack(getCallback())
                .build()
                .inject(this)
    }

    override fun getCallback(): ${pageTemplateName}PageCallBack{
        return object : ${pageTemplateName}PageCallBack() {
            // TODO 实现PageCallBack
        }
    }

    override fun getPageImpl(): ${pageTemplateName}PageImpl = pageImpl

    override fun getSelfContext(): Context {
        return this@${pageName}Activity
    }
}
