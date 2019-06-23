package ${packageName}.${pageName};

import android.arch.lifecycle.LifecycleOwner;
import android.view.View;

import cn.com.bluemoon.middleware.base.IPageCallBack;

public abstract class ${pageName}PageCallBack implements IPageCallBack {

    public abstract void onBMInitContentView(View contentView);

    public abstract int getContentLayout();
}
