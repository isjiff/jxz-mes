(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-1b10b222"],{"1f27":function(e,t,a){"use strict";a.r(t);var o=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[a("el-form-item",{attrs:{label:"库区名称",prop:"locationName"}},[a("el-input",{attrs:{placeholder:"请输入库区名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.locationName,callback:function(t){e.$set(e.queryParams,"locationName",t)},expression:"queryParams.locationName"}})],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:location:add"],expression:"['mes:wm:location:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:location:edit"],expression:"['mes:wm:location:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:location:remove"],expression:"['mes:wm:location:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.locationList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"库区编码",align:"center",prop:"locationCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:location:query"],expression:"['mes:wm:location:query']"}],attrs:{type:"text"},on:{click:function(a){return e.handleView(t.row)}}},[e._v(e._s(t.row.locationCode))])]}}])}),a("el-table-column",{attrs:{label:"库区名称",align:"center",prop:"locationName"}}),a("el-table-column",{attrs:{label:"面积",align:"center",prop:"area"}}),a("el-table-column",{attrs:{label:"是否开启库位管理",align:"center",prop:"areaFlag"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.areaFlag}})]}}])}),a("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["Y"==t.row.areaFlag?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:area:edit","mes:wm:area:list"],expression:"['mes:wm:area:edit','mes:wm:area:list']"}],attrs:{size:"mini",type:"text",icon:"el-icon-s-shop"},on:{click:function(a){return e.handleArea(t.row.locationId)}}},[e._v("库位")]):e._e(),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:location:edit"],expression:"['mes:wm:location:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:location:remove"],expression:"['mes:wm:location:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"140px"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"库区编码",prop:"locationCode"}},[a("el-input",{attrs:{placeholder:"请输入库区编码"},model:{value:e.form.locationCode,callback:function(t){e.$set(e.form,"locationCode",t)},expression:"form.locationCode"}})],1)],1),a("el-col",{attrs:{span:4}},[a("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType?a("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"库区名称",prop:"locationName"}},[a("el-input",{attrs:{placeholder:"请输入库区名称"},model:{value:e.form.locationName,callback:function(t){e.$set(e.form,"locationName",t)},expression:"form.locationName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"面积",prop:"area"}},[a("el-input-number",{attrs:{min:0,step:1,percision:2,placeholder:"请输入面积"},model:{value:e.form.area,callback:function(t){e.$set(e.form,"area",t)},expression:"form.area"}})],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"是否开启库位管理",prop:"areaFlag"}},["view"==e.optType?a("el-radio-group",{attrs:{disabled:""},model:{value:e.form.areaFlag,callback:function(t){e.$set(e.form,"areaFlag",t)},expression:"form.areaFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return a("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1):a("el-radio-group",{model:{value:e.form.areaFlag,callback:function(t){e.$set(e.form,"areaFlag",t)},expression:"form.areaFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return a("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"备注",prop:"remark"}},[a("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?a("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],l=a("5530"),r=(a("d81d"),a("b775"));function i(e){return Object(r["a"])({url:"/mes/wm/location/list",method:"get",params:e})}function s(e){return Object(r["a"])({url:"/mes/wm/location/"+e,method:"get"})}function c(e){return Object(r["a"])({url:"/mes/wm/location",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/mes/wm/location",method:"put",data:e})}function m(e){return Object(r["a"])({url:"/mes/wm/location/"+e,method:"delete"})}var d=a("8171"),p={name:"Location",dicts:["sys_yes_no"],data:function(){return{autoGenFlag:!1,optType:void 0,warehouseId:void 0,loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,locationList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,locationCode:null,locationName:null,warehouseId:null,area:null,areaFlag:null},form:{},rules:{locationCode:[{required:!0,message:"库区编码不能为空",trigger:"blur"}],locationName:[{required:!0,message:"库区名称不能为空",trigger:"blur"}]}}},created:function(){var e=this.$route.query.warehouseId;this.warehouseId=e,this.queryParams.warehouseId=e,this.getList()},methods:{getList:function(){var e=this;this.loading=!0,i(this.queryParams).then((function(t){e.locationList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={locationId:null,locationCode:null,locationName:null,warehouseId:this.warehouseId,area:null,areaFlag:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.locationId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加库区设置",this.optType="add"},handleView:function(e){var t=this;this.reset();var a=e.locationId||this.ids;s(a).then((function(e){t.form=e.data,t.open=!0,t.title="查看库区",t.optType="view"}))},handleUpdate:function(e){var t=this;this.reset();var a=e.locationId||this.ids;s(a).then((function(e){t.form=e.data,t.open=!0,t.title="修改库区设置",t.optType="edit"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.locationId?u(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):c(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,a=e.locationId||this.ids;this.$modal.confirm('是否确认删除库区设置编号为"'+a+'"的数据项？').then((function(){return m(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("mes/wm/location/export",Object(l["a"])({},this.queryParams),"location_".concat((new Date).getTime(),".xlsx"))},handleArea:function(e){this.$router.push({path:"/mes/wm/area/index",query:{locationId:e||0,optType:this.optType}})},handleAutoGenChange:function(e){var t=this;e?Object(d["c"])("LOCATION_CODE").then((function(e){t.form.locationCode=e})):this.form.locationCode=null}}},h=p,f=a("2877"),v=Object(f["a"])(h,o,n,!1,null,null,null);t["default"]=v.exports},8171:function(e,t,a){"use strict";a.d(t,"c",(function(){return n})),a.d(t,"e",(function(){return l})),a.d(t,"d",(function(){return r})),a.d(t,"a",(function(){return i})),a.d(t,"g",(function(){return s})),a.d(t,"b",(function(){return c})),a.d(t,"f",(function(){return u}));var o=a("b775");function n(e){return Object(o["a"])({url:"/system/autocode/get/"+e,method:"get"})}function l(e){return Object(o["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function r(e){return Object(o["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function i(e){return Object(o["a"])({url:"/system/autocode/rule",method:"post",data:e})}function s(e){return Object(o["a"])({url:"/system/autocode/rule",method:"put",data:e})}function c(e){return Object(o["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function u(){return Object(o["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}}}]);