package ${packageName}${ativityPackageName}

import com.silvericekey.skutilslibrary.base.BaseActivity


<#if presenterName?has_content>
import ${packageName}${presenterPackageName}.${presenterName};
</#if>

import ${packageName}.R;

<#import "root://activities/MVPArtTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
class ${pageName}Activity : BaseActivity <#if presenterName?has_content><${presenterName}>()</#if>{

    override fun getLayoutID(): Int {
        return R.layout.${activityLayoutName} //如果你不需要框架帮你设置 setContentView(id) 需要自行设置,请返回 0
    }

    override fun initPresenter(): <#if presenterName?has_content>${presenterName}</#if> {
        return <#if presenterName?has_content>${presenterName}(this)</#if>
    }

    override fun initView() {
        
    }
}
