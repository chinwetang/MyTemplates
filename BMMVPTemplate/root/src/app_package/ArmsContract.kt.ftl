package ${contractPackageName}

<#if needActivity && needFragment>
import android.app.Activity
<#elseif needActivity>
import android.app.Activity
<#elseif needFragment>
@FragmentScope
</#if>

import cn.com.bluemoon.middleware.base.IContext
import com.jess.arms.mvp.IModel
import com.jess.arms.mvp.IView
import cn.com.bluemoon.middleware.base.lcee.LceeView
import ${pageTemplatePath}.${pageTemplateName}PageImpl

interface ${pageName}Contract {
    //对于经常使用的关于UI的方法可以定义到IView中,如显示隐藏进度条,和显示文字消息
    interface View : IView, LceeView, IContext {
        fun getPageImpl(): ${pageTemplateName}PageImpl
    }

    //Model层定义接口,外部只需关心Model返回的数据,无需关心内部细节,即是否使用缓存
    interface Model : IModel
}