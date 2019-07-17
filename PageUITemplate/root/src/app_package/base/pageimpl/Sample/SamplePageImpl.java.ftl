package ${packageName}.${pageName};

import android.arch.lifecycle.LifecycleOwner;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

import javax.inject.Inject;

import ${pageTemplatePath}.${pageTemplateName}PageImpl;

public class ${pageName}PageImpl extends ${pageTemplateName}PageImpl<${pageName}PageCallBack>{

    @Inject
    public ${pageName}PageImpl(LifecycleOwner owner, ${pageName}PageCallBack callback) {
        super(owner, callback);
    }
}
