package ${componentPackageName}

import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageCallBack
import android.arch.lifecycle.LifecycleOwner
import dagger.BindsInstance
import dagger.Component
import com.jess.arms.di.component.AppComponent

import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract

<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope
import ${ativityPackageName}.${pageName}Activity
import ${fragmentPackageName}.${pageName}Fragment
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope
import ${ativityPackageName}.${pageName}Activity
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope
import ${fragmentPackageName}.${pageName}Fragment
import cn.com.bluemoon.middleware.base.pageimpl.DefaultCollection.${pageTemplateName}.${pageTemplateName}PageCallBack
</#if>

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>

@Component(modules = [${pageName}Module::class], dependencies =[AppComponent::class])
interface ${pageName}Component {
<#if needActivity && needFragment>
    fun inject(activity: ${pageName}Activity)
    fun inject(fragment: ${pageName}Fragment)
  <#elseif needActivity || needFragment>
    fun inject(<#if needFragment>fragment: ${pageName}Fragment<#else>activity: ${pageName}Activity</#if>)
  </#if>

    @Component.Builder
    interface Builder {
        @BindsInstance
        fun view(view: ${pageName}Contract.View): ${pageName}Component.Builder

        @BindsInstance
        fun lifecycleOwner(owner: LifecycleOwner): ${pageName}Component.Builder

        @BindsInstance
        fun pageCallBack(pageCallBack: ${pageTemplateName}PageCallBack): ${pageName}Component.Builder

        fun appComponent(appComponent: AppComponent): ${pageName}Component.Builder

        fun build(): ${pageName}Component
    }
}
