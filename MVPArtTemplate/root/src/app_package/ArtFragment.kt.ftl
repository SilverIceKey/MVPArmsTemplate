package ${packageName}${fragmentPackageName}

import android.view.View
import com.silvericekey.skutilslibrary.base.BaseFragment

<#if presenterName?has_content>
import ${packageName}${presenterPackageName}.${presenterName}
</#if>

import ${packageName}.R

<#import "root://activities/MVPArtTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
class ${pageName}Fragment : BaseFragment <#if presenterName?has_content><${presenterName}></#if>() {

    companion object {
        fun newInstance():${pageName}Fragment {
            val fragment = ${pageName}Fragment()
            return fragment
        }
    }
    override fun getLayoutID(): Int {
        return R.layout.${fragmentLayoutName} //如果你不需要框架帮你设置 setContentView(id) 需要自行设置,请返回 0
    }

    override fun initPresenter(): <#if presenterName?has_content>${presenterName}</#if> {
        return <#if presenterName?has_content>${presenterName}</#if>(this)
    }

    override fun initView(view: View) {
        TODO("Not yet implemented")
    }
}
