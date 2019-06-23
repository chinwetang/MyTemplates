package ${moudlePackageName}

import dagger.Binds
import dagger.Module
import ${contractPackageName}.${pageName}Contract
import ${modelPackageName}.${pageName}Model

@Module
abstract class ${pageName}Module {

    @Binds
    internal abstract fun bind${pageName}Model(model: ${pageName}Model): ${pageName}Contract.Model
}