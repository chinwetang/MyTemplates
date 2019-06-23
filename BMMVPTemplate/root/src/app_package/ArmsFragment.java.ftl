package ${fragmentPackageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

import com.jess.arms.di.component.AppComponent;

import cn.com.bluemoon.middleware.base.BaseMultiViewFragment;
import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import cn.com.bluemoon.middleware.base.pageimpl.${pageTemplateName}.${pageTemplateName}PageImpl;
import cn.com.bluemoon.middleware.base.pageimpl.${pageTemplateName}.${pageTemplateName}PageCallBack;


import static com.jess.arms.utils.Preconditions.checkNotNull;

<#import "root://activities/BMMVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Fragment extends BaseMultiViewFragment<${pageTemplateName}PageImpl,${pageName}Presenter> implements ${pageName}Contract.View{

    private static final String TAG=${pageName}Fragment.class.getCanonicalName();

    public static ${pageName}Fragment newInstance() {
        return new ${pageName}Fragment();
    }

    @Override
    public ${pageTemplateName}PageCallBack getCallback() {
        return null;
    }

    @Override
    public void setupFragmentComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .view(this)
                .lifecycleOwner(this)
                .pageCallBack(getCallback())
                .build()
                .inject(this);
    }

    @Override
    public void onBMInitView(View rootView) {
        super.onBMInitView(rootView);
    }

    @Override
    public void onBMInitData(@Nullable Bundle savedInstanceState) {
        super.onBMInitData(savedInstanceState);
    }

}
