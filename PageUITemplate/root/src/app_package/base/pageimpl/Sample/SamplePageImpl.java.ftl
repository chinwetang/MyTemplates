package ${packageName}.${pageName};

import android.arch.lifecycle.LifecycleOwner;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

import cn.com.bluemoon.middleware.base.pageimpl.BasePageImpl;

public class ${pageName}PageImpl extends BasePageImpl<${pageName}PageCallBack> {
    public ${pageName}PageImpl(LifecycleOwner owner, ${pageName}PageCallBack callback) {
        super(owner, callback);
    }

    @Override
    public void onBMInitContentView(View contentView) {
        getCallback().onBMInitContentView(contentView);
    }

    @Override
    public int getContentLayout() {
        return getCallback().getContentLayout();
    }

    @Override
    public int getLayout() {
        return 0;
    }
}
