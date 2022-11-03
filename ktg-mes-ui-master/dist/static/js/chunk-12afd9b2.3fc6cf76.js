(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-12afd9b2"],{"22e4":function(e,t,n){"use strict";n.r(t);var a=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"app-container"},[n("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"100px"}},[n("el-form-item",{attrs:{label:"检测项编码",prop:"indexCode"}},[n("el-input",{attrs:{placeholder:"请输入检测项编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.indexCode,callback:function(t){e.$set(e.queryParams,"indexCode",t)},expression:"queryParams.indexCode"}})],1),n("el-form-item",{attrs:{label:"检测项名称",prop:"indexName"}},[n("el-input",{attrs:{placeholder:"请输入检测项名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.indexName,callback:function(t){e.$set(e.queryParams,"indexName",t)},expression:"queryParams.indexName"}})],1),n("el-form-item",{attrs:{label:"检测项类型",prop:"indexType"}},[n("el-select",{attrs:{placeholder:"请选择检测项类型",clearable:""},model:{value:e.queryParams.indexType,callback:function(t){e.$set(e.queryParams,"indexType",t)},expression:"queryParams.indexType"}},e._l(e.dict.type.mes_index_type,(function(e){return n("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1),n("el-form-item",[n("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),n("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),n("el-row",{staticClass:"mb8",attrs:{gutter:10}},[n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:qcindex:add"],expression:"['mes:qc:qcindex:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:qcindex:edit"],expression:"['mes:qc:qcindex:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:qcindex:remove"],expression:"['mes:qc:qcindex:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:qcindex:export"],expression:"['mes:qc:qcindex:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),n("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),n("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.qcindexList},on:{"selection-change":e.handleSelectionChange}},[n("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),n("el-table-column",{attrs:{label:"检测项编码",align:"center",prop:"indexCode"}}),n("el-table-column",{attrs:{label:"检测项名称",align:"center",prop:"indexName"}}),n("el-table-column",{attrs:{label:"检测项类型",align:"center",prop:"indexType"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("dict-tag",{attrs:{options:e.dict.type.mes_index_type,value:t.row.indexType}})]}}])}),n("el-table-column",{attrs:{label:"检测工具",align:"center",prop:"qcTool"}}),n("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:qcindex:edit"],expression:"['mes:qc:qcindex:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(n){return e.handleUpdate(t.row)}}},[e._v("修改")]),n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:qcindex:remove"],expression:"['mes:qc:qcindex:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(n){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),n("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),n("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[n("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"120px"}},[n("el-row",[n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"检测项编码",prop:"indexCode"}},[n("el-input",{attrs:{placeholder:"请输入检测项编码"},model:{value:e.form.indexCode,callback:function(t){e.$set(e.form,"indexCode",t)},expression:"form.indexCode"}})],1)],1),n("el-col",{attrs:{span:4}},[n("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType?n("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),n("el-col",{attrs:{span:12}},[n("el-form-item",{attrs:{label:"检测项名称",prop:"indexName"}},[n("el-input",{attrs:{placeholder:"请输入检测项名称"},model:{value:e.form.indexName,callback:function(t){e.$set(e.form,"indexName",t)},expression:"form.indexName"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:12}},[n("el-form-item",{attrs:{label:"检测项类型",prop:"indexType"}},[n("el-select",{attrs:{placeholder:"请选择检测项类型"},model:{value:e.form.indexType,callback:function(t){e.$set(e.form,"indexType",t)},expression:"form.indexType"}},e._l(e.dict.type.mes_index_type,(function(e){return n("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1),n("el-col",{attrs:{span:12}},[n("el-form-item",{attrs:{label:"检测工具",prop:"qcTool"}},[n("el-input",{attrs:{placeholder:"请输入检测工具"},model:{value:e.form.qcTool,callback:function(t){e.$set(e.form,"qcTool",t)},expression:"form.qcTool"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:24}},[n("el-form-item",{attrs:{label:"备注",prop:"remark"}},[n("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),n("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?n("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):n("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),n("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},r=[],i=n("5530"),l=(n("d81d"),n("3ed8")),o=n("8171"),s={name:"Qcindex",dicts:["mes_index_type"],data:function(){return{autoGenFlag:!1,optType:void 0,loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,qcindexList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,indexCode:null,indexName:null,indexType:null,qcTool:null},form:{},rules:{indexCode:[{required:!0,message:"检测项编码不能为空",trigger:"blur"}],indexName:[{required:!0,message:"检测项名称不能为空",trigger:"blur"}],indexType:[{required:!0,message:"检测项类型不能为空",trigger:"change"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,Object(l["d"])(this.queryParams).then((function(t){e.qcindexList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={indexId:null,indexCode:null,indexName:null,indexType:null,qcTool:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.indexId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加检测项",this.optType="add"},handleView:function(e){var t=this;this.reset();var n=e.indexId||this.ids;Object(l["c"])(n).then((function(e){t.form=e.data,t.open=!0,t.title="查看检测项信息",t.optType="view"}))},handleUpdate:function(e){var t=this;this.reset();var n=e.indexId||this.ids;Object(l["c"])(n).then((function(e){t.form=e.data,t.open=!0,t.title="修改检测项",t.optType="edit"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.indexId?Object(l["e"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(l["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,n=e.indexId||this.ids;this.$modal.confirm('是否确认删除检测项编号为"'+n+'"的数据项？').then((function(){return Object(l["b"])(n)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("qc/qcindex/export",Object(i["a"])({},this.queryParams),"qcindex_".concat((new Date).getTime(),".xlsx"))},handleAutoGenChange:function(e){var t=this;e?Object(o["c"])("QC_INDEX_CODE").then((function(e){t.form.indexCode=e})):this.form.indexCode=null}}},c=s,u=n("2877"),d=Object(u["a"])(c,a,r,!1,null,null,null);t["default"]=d.exports},"3ed8":function(e,t,n){"use strict";n.d(t,"d",(function(){return r})),n.d(t,"c",(function(){return i})),n.d(t,"a",(function(){return l})),n.d(t,"e",(function(){return o})),n.d(t,"b",(function(){return s}));var a=n("b775");function r(e){return Object(a["a"])({url:"/mes/qc/qcindex/list",method:"get",params:e})}function i(e){return Object(a["a"])({url:"/mes/qc/qcindex/"+e,method:"get"})}function l(e){return Object(a["a"])({url:"/mes/qc/qcindex",method:"post",data:e})}function o(e){return Object(a["a"])({url:"/mes/qc/qcindex",method:"put",data:e})}function s(e){return Object(a["a"])({url:"/mes/qc/qcindex/"+e,method:"delete"})}},8171:function(e,t,n){"use strict";n.d(t,"c",(function(){return r})),n.d(t,"e",(function(){return i})),n.d(t,"d",(function(){return l})),n.d(t,"a",(function(){return o})),n.d(t,"g",(function(){return s})),n.d(t,"b",(function(){return c})),n.d(t,"f",(function(){return u}));var a=n("b775");function r(e){return Object(a["a"])({url:"/system/autocode/get/"+e,method:"get"})}function i(e){return Object(a["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function l(e){return Object(a["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function o(e){return Object(a["a"])({url:"/system/autocode/rule",method:"post",data:e})}function s(e){return Object(a["a"])({url:"/system/autocode/rule",method:"put",data:e})}function c(e){return Object(a["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function u(){return Object(a["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}}}]);