package ${ativityPackageName};

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

import cn.com.bluemoon.middleware.base.BaseMultiViewActivity;
import com.jess.arms.di.component.AppComponent;

import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import ${pageTemplatePath}.${pageTemplateName}PageImpl;
import ${pageTemplatePath}.${pageTemplateName}PageCallBack;

import ${packageName}.R;


import static com.jess.arms.utils.Preconditions.checkNotNull;

<#import "root://activities/BMMVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BaseMultiViewActivity<${pageTemplateName}PageImpl,${pageName}Presenter> implements ${pageName}Contract.View {

    private static final String TAG=${pageName}Activity.class.getCanonicalName();

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
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

    @Override
    public ${pageTemplateName}PageCallBack getCallback() {
        return null;
    }
}
