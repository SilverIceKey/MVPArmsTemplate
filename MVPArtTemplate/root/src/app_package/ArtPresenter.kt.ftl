package ${packageName}${presenterPackageName}

<#if needActivity>import com.silvericekey.skutilslibrary.base.BPActivity</#if>
<#if needFragment>import com.silvericekey.skutilslibrary.base.BPFragment</#if>

<#import "root://activities/MVPArtTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
<#if needActivity>
class ${presenterName}(activity:${pageName}Activity) :
BPActivity(activity) {
    
}
</#if>


<#if needFragment>
class ${presenterName}(fragment:${pageName}Fragment) :
BPFragment(fragment) {
    
}
</#if>

