(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-41bb3ed3"],{"051f":function(e,t,l){"use strict";l.d(t,"d",(function(){return o})),l.d(t,"c",(function(){return n})),l.d(t,"a",(function(){return a})),l.d(t,"e",(function(){return s})),l.d(t,"b",(function(){return i}));var r=l("b775");function o(e){return Object(r["a"])({url:"/mes/md/vendor/list",method:"get",params:e})}function n(e){return Object(r["a"])({url:"/mes/md/vendor/"+e,method:"get"})}function a(e){return Object(r["a"])({url:"/mes/md/vendor",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/md/vendor",method:"put",data:e})}function i(e){return Object(r["a"])({url:"/mes/md/vendor/"+e,method:"delete"})}},8171:function(e,t,l){"use strict";l.d(t,"c",(function(){return o})),l.d(t,"e",(function(){return n})),l.d(t,"d",(function(){return a})),l.d(t,"a",(function(){return s})),l.d(t,"g",(function(){return i})),l.d(t,"b",(function(){return c})),l.d(t,"f",(function(){return u}));var r=l("b775");function o(e){return Object(r["a"])({url:"/system/autocode/get/"+e,method:"get"})}function n(e){return Object(r["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function a(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function s(e){return Object(r["a"])({url:"/system/autocode/rule",method:"post",data:e})}function i(e){return Object(r["a"])({url:"/system/autocode/rule",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function u(){return Object(r["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},f80b:function(e,t,l){"use strict";l.r(t);var r=function(){var e=this,t=e.$createElement,l=e._self._c||t;return l("div",{staticClass:"app-container"},[l("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"100px"}},[l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商编码",prop:"vendorCode"}},[l("el-input",{attrs:{placeholder:"请输入供应商编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.vendorCode,callback:function(t){e.$set(e.queryParams,"vendorCode",t)},expression:"queryParams.vendorCode"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商名称",prop:"vendorName"}},[l("el-input",{attrs:{placeholder:"请输入供应商名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.vendorName,callback:function(t){e.$set(e.queryParams,"vendorName",t)},expression:"queryParams.vendorName"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商简称",prop:"vendorNick"}},[l("el-input",{attrs:{placeholder:"请输入供应商简称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.vendorNick,callback:function(t){e.$set(e.queryParams,"vendorNick",t)},expression:"queryParams.vendorNick"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"英文名称",prop:"vendorEn"}},[l("el-input",{attrs:{placeholder:"请输入供应商英文名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.vendorEn,callback:function(t){e.$set(e.queryParams,"vendorEn",t)},expression:"queryParams.vendorEn"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"是否启用",prop:"enableFlag"}},[l("el-select",{staticStyle:{width:"215px"},attrs:{placeholder:"是否启用",clearable:""},model:{value:e.queryParams.enableFlag,callback:function(t){e.$set(e.queryParams,"enableFlag",t)},expression:"queryParams.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(e){return l("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",[l("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),l("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1)],1)],1),l("el-row",{staticClass:"mb8",attrs:{gutter:10}},[l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:vendor:add"],expression:"['md:vendor:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:vendor:edit"],expression:"['md:vendor:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:vendor:remove"],expression:"['md:vendor:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:vendor:export"],expression:"['md:vendor:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),l("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),l("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.vendorList},on:{"selection-change":e.handleSelectionChange}},[l("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),l("el-table-column",{attrs:{label:"供应商编码",align:"center",prop:"vendorCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:md:vendor:query"],expression:"['mes:md:vendor:query']"}],attrs:{type:"text"},on:{click:function(l){return e.handleView(t.row)}}},[e._v(e._s(t.row.vendorCode))])]}}])}),l("el-table-column",{attrs:{label:"供应商名称",align:"center",prop:"vendorName",width:"150px","show-overflow-tooltip":!0}}),l("el-table-column",{attrs:{label:"供应商简称",align:"center",prop:"vendorNick"}}),l("el-table-column",{attrs:{label:"供应商等级",align:"center",prop:"vendorLevel"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("dict-tag",{attrs:{options:e.dict.type.mes_vendor_level,value:t.row.vendorLevel}})]}}])}),l("el-table-column",{attrs:{label:"供应商评分",align:"center",prop:"vendorScore"}}),l("el-table-column",{attrs:{label:"供应商电话",align:"center",prop:"tel"}}),l("el-table-column",{attrs:{label:"是否启用",align:"center",prop:"enableFlag"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.enableFlag}})]}}])}),l("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark","show-overflow-tooltip":!0}}),l("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:vendor:edit"],expression:"['md:vendor:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(l){return e.handleUpdate(t.row)}}},[e._v("修改")]),l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:vendor:remove"],expression:"['md:vendor:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(l){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),l("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),l("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[l("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"120px"}},[l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商编码",prop:"vendorCode"}},[l("el-input",{attrs:{placeholder:"请输入供应商编码"},model:{value:e.form.vendorCode,callback:function(t){e.$set(e.form,"vendorCode",t)},expression:"form.vendorCode"}})],1)],1),l("el-col",{attrs:{span:4}},[l("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType?l("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"供应商名称",prop:"vendorName"}},[l("el-input",{attrs:{placeholder:"请输入供应商名称"},model:{value:e.form.vendorName,callback:function(t){e.$set(e.form,"vendorName",t)},expression:"form.vendorName"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"供应商简称",prop:"vendorNick"}},[l("el-input",{attrs:{placeholder:"请输入供应商简称"},model:{value:e.form.vendorNick,callback:function(t){e.$set(e.form,"vendorNick",t)},expression:"form.vendorNick"}})],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"供应商英文名称",prop:"vendorEn"}},[l("el-input",{attrs:{placeholder:"请输入供应商英文名称"},model:{value:e.form.vendorEn,callback:function(t){e.$set(e.form,"vendorEn",t)},expression:"form.vendorEn"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:24}},[l("el-form-item",{attrs:{label:"供应商简介",prop:"vendorDes"}},[l("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.vendorDes,callback:function(t){e.$set(e.form,"vendorDes",t)},expression:"form.vendorDes"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:24}},[l("el-form-item",{attrs:{label:"供应商地址",prop:"address"}},[l("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.address,callback:function(t){e.$set(e.form,"address",t)},expression:"form.address"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"供应商等级",prop:"vendorLevel"}},[l("el-select",{attrs:{placeholder:"请选择供应商等级"},model:{value:e.form.vendorLevel,callback:function(t){e.$set(e.form,"vendorLevel",t)},expression:"form.vendorLevel"}},e._l(e.dict.type.mes_vendor_level,(function(e){return l("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"供应商评分",prop:"vendorScore"}},[l("el-input-number",{attrs:{min:0,max:100,placeholder:"请输入供应商评分"},model:{value:e.form.vendorScore,callback:function(t){e.$set(e.form,"vendorScore",t)},expression:"form.vendorScore"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商官网地址",prop:"website"}},[l("el-input",{attrs:{placeholder:"请输入供应商官网地址"},model:{value:e.form.website,callback:function(t){e.$set(e.form,"website",t)},expression:"form.website"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商邮箱地址",prop:"email"}},[l("el-input",{attrs:{placeholder:"请输入供应商邮箱地址"},model:{value:e.form.email,callback:function(t){e.$set(e.form,"email",t)},expression:"form.email"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商电话",prop:"tel"}},[l("el-input",{attrs:{placeholder:"请输入供应商电话"},model:{value:e.form.tel,callback:function(t){e.$set(e.form,"tel",t)},expression:"form.tel"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人1",prop:"contact1"}},[l("el-input",{attrs:{placeholder:"请输入联系人1"},model:{value:e.form.contact1,callback:function(t){e.$set(e.form,"contact1",t)},expression:"form.contact1"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人1-电话",prop:"contact1Tel"}},[l("el-input",{attrs:{placeholder:"请输入联系人1-电话"},model:{value:e.form.contact1Tel,callback:function(t){e.$set(e.form,"contact1Tel",t)},expression:"form.contact1Tel"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人1-邮箱",prop:"contact1Email"}},[l("el-input",{attrs:{placeholder:"请输入联系人1-邮箱"},model:{value:e.form.contact1Email,callback:function(t){e.$set(e.form,"contact1Email",t)},expression:"form.contact1Email"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人2",prop:"contact2"}},[l("el-input",{attrs:{placeholder:"请输入联系人2"},model:{value:e.form.contact2,callback:function(t){e.$set(e.form,"contact2",t)},expression:"form.contact2"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人2-电话",prop:"contact2Tel"}},[l("el-input",{attrs:{placeholder:"请输入联系人2-电话"},model:{value:e.form.contact2Tel,callback:function(t){e.$set(e.form,"contact2Tel",t)},expression:"form.contact2Tel"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人2-邮箱",prop:"contact2Email"}},[l("el-input",{attrs:{placeholder:"请输入联系人2-邮箱"},model:{value:e.form.contact2Email,callback:function(t){e.$set(e.form,"contact2Email",t)},expression:"form.contact2Email"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"统一社会信用代码",prop:"creditCode"}},[l("el-input",{attrs:{placeholder:"请输入统一社会信用代码"},model:{value:e.form.creditCode,callback:function(t){e.$set(e.form,"creditCode",t)},expression:"form.creditCode"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"是否启用",prop:"enableFlag"}},["view"==e.optType?l("el-radio-group",{attrs:{disabled:""},model:{value:e.form.enableFlag,callback:function(t){e.$set(e.form,"enableFlag",t)},expression:"form.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return l("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1):l("el-radio-group",{model:{value:e.form.enableFlag,callback:function(t){e.$set(e.form,"enableFlag",t)},expression:"form.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return l("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"供应商LOGO地址",prop:"vendorLogo"}},[l("el-input",{attrs:{placeholder:"请输入供应商LOGO地址"},model:{value:e.form.vendorLogo,callback:function(t){e.$set(e.form,"vendorLogo",t)},expression:"form.vendorLogo"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:24}},[l("el-form-item",{attrs:{label:"备注",prop:"remark"}},[l("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),l("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?l("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):l("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),l("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},o=[],n=l("5530"),a=(l("d81d"),l("051f")),s=l("8171"),i={name:"Vendor",dicts:["sys_yes_no","mes_vendor_level"],data:function(){return{autoGenFlag:!1,optType:void 0,loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,vendorList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,vendorCode:null,vendorName:null,vendorNick:null,vendorEn:null,vendorDes:null,vendorLogo:null,vendorLevel:null,vendorScore:null,address:null,website:null,email:null,tel:null,contact1:null,contact1Tel:null,contact1Email:null,contact2:null,contact2Tel:null,contact2Email:null,creditCode:null,enableFlag:null},form:{},rules:{vendorCode:[{required:!0,message:"供应商编码不能为空",trigger:"blur"}],vendorName:[{required:!0,message:"供应商名称不能为空",trigger:"blur"}],enableFlag:[{required:!0,message:"是否启用不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,Object(a["d"])(this.queryParams).then((function(t){e.vendorList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={vendorId:null,vendorCode:null,vendorName:null,vendorNick:null,vendorEn:null,vendorDes:null,vendorLogo:null,vendorLevel:"B",vendorScore:null,address:null,website:null,email:null,tel:null,contact1:null,contact1Tel:null,contact1Email:null,contact2:null,contact2Tel:null,contact2Email:null,creditCode:null,enableFlag:"Y",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.vendorId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加供应商",this.optType="add"},handleView:function(e){var t=this;this.reset();var l=e.vendorId||this.ids;Object(a["c"])(l).then((function(e){t.form=e.data,t.open=!0,t.title="查看供应商",t.optType="view"}))},handleUpdate:function(e){var t=this;this.reset();var l=e.vendorId||this.ids;Object(a["c"])(l).then((function(e){t.form=e.data,t.open=!0,t.title="修改供应商",t.optType="edit"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.vendorId?Object(a["e"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(a["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,l=e.vendorId||this.ids;this.$modal.confirm('是否确认删除供应商编号为"'+l+'"的数据项？').then((function(){return Object(a["b"])(l)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("md/vendor/export",Object(n["a"])({},this.queryParams),"vendor_".concat((new Date).getTime(),".xlsx"))},handleAutoGenChange:function(e){var t=this;e?Object(s["c"])("VENDOR_CODE").then((function(e){t.form.vendorCode=e})):this.form.vendorCode=null}}},c=i,u=l("2877"),d=Object(u["a"])(c,r,o,!1,null,null,null);t["default"]=d.exports}}]);