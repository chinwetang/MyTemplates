package ${fragmentPackageName}

import android.os.Bundle
import android.view.View

import cn.com.bluemoon.middleware.base.BaseMultiViewFragment
import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageImpl
import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageCallBack

import com.jess.arms.di.component.AppComponent
import ${componentPackageName}.Dagger${pageName}Component
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

class ${pageName}Fragment : BaseMultiViewFragment<${pageTemplateName}PageImpl, ${pageName}Presenter>
(), ${pageName}Contract.View {
    companion object {
        private val TAG = ${pageName}Fragment::class.java.canonicalName
        fun newInstance()= ${pageName}Fragment()
    }

    override fun setupFragmentComponent(appComponent: AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
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
        return context!!
    }
}
