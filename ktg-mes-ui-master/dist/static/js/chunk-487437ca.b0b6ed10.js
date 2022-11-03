(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-487437ca"],{"52be":function(e,t,l){"use strict";l.r(t);var a=function(){var e=this,t=e.$createElement,l=e._self._c||t;return l("div",{staticClass:"app-container"},[l("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"100px"}},[l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户编码",prop:"clientCode"}},[l("el-input",{attrs:{placeholder:"请输入客户编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.clientCode,callback:function(t){e.$set(e.queryParams,"clientCode",t)},expression:"queryParams.clientCode"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户名称",prop:"clientName"}},[l("el-input",{attrs:{placeholder:"请输入客户名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.clientName,callback:function(t){e.$set(e.queryParams,"clientName",t)},expression:"queryParams.clientName"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户简称",prop:"clientNick"}},[l("el-input",{attrs:{placeholder:"请输入客户简称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.clientNick,callback:function(t){e.$set(e.queryParams,"clientNick",t)},expression:"queryParams.clientNick"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户英文名称",prop:"clientEn"}},[l("el-input",{attrs:{placeholder:"请输入客户英文名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.clientEn,callback:function(t){e.$set(e.queryParams,"clientEn",t)},expression:"queryParams.clientEn"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"是否启用",prop:"enableFlag"}},[l("el-select",{staticStyle:{width:"215px"},attrs:{placeholder:"是否启用",clearable:""},model:{value:e.queryParams.enableFlag,callback:function(t){e.$set(e.queryParams,"enableFlag",t)},expression:"queryParams.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(e){return l("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",[l("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),l("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1)],1)],1),l("el-row",{staticClass:"mb8",attrs:{gutter:10}},[l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:md:client:add"],expression:"['md:md:client:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:md:client:edit"],expression:"['md:md:client:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:md:client:remove"],expression:"['md:md:client:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),l("el-col",{attrs:{span:1.5}},[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:md:client:export"],expression:"['md:md:client:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),l("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),l("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.clientList},on:{"selection-change":e.handleSelectionChange}},[l("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),l("el-table-column",{attrs:{label:"客户编码",align:"center",prop:"clientCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:md:client:query"],expression:"['mes:md:client:query']"}],attrs:{type:"text"},on:{click:function(l){return e.handleView(t.row)}}},[e._v(e._s(t.row.clientCode))])]}}])}),l("el-table-column",{attrs:{label:"客户名称",width:"150px",align:"center",prop:"clientName","show-overflow-tooltip":!0}}),l("el-table-column",{attrs:{label:"客户简称",align:"center",prop:"clientNick"}}),l("el-table-column",{attrs:{label:"客户类型",align:"center",prop:"clientType"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("dict-tag",{attrs:{options:e.dict.type.mes_client_type,value:t.row.clientType}})]}}])}),l("el-table-column",{attrs:{label:"客户电话",align:"center",prop:"tel"}}),l("el-table-column",{attrs:{label:"联系人",align:"center",prop:"contact1"}}),l("el-table-column",{attrs:{label:"联系人-电话",align:"center",prop:"contact1Tel"}}),l("el-table-column",{attrs:{label:"是否启用",align:"center",prop:"enableFlag"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.enableFlag}})]}}])}),l("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:md:client:edit"],expression:"['md:md:client:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(l){return e.handleUpdate(t.row)}}},[e._v("修改")]),l("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["md:md:client:remove"],expression:"['md:md:client:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(l){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),l("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),l("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[l("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"120px"}},[l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户编码",prop:"clientCode"}},[l("el-input",{attrs:{placeholder:"请输入客户编码"},model:{value:e.form.clientCode,callback:function(t){e.$set(e.form,"clientCode",t)},expression:"form.clientCode"}})],1)],1),l("el-col",{attrs:{span:4}},[l("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType?l("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"客户名称",prop:"clientName"}},[l("el-input",{attrs:{placeholder:"请输入客户名称"},model:{value:e.form.clientName,callback:function(t){e.$set(e.form,"clientName",t)},expression:"form.clientName"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户简称",prop:"clientNick"}},[l("el-input",{attrs:{placeholder:"请输入客户简称"},model:{value:e.form.clientNick,callback:function(t){e.$set(e.form,"clientNick",t)},expression:"form.clientNick"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户英文名称",prop:"clientEn"}},[l("el-input",{attrs:{placeholder:"请输入客户英文名称"},model:{value:e.form.clientEn,callback:function(t){e.$set(e.form,"clientEn",t)},expression:"form.clientEn"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"客户类型",prop:"clientType"}},[l("el-select",{attrs:{placeholder:"请选择客户类型"},model:{value:e.form.clientType,callback:function(t){e.$set(e.form,"clientType",t)},expression:"form.clientType"}},e._l(e.dict.type.mes_client_type,(function(e){return l("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:24}},[l("el-form-item",{attrs:{label:"客户简介",prop:"clientDes"}},[l("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.clientDes,callback:function(t){e.$set(e.form,"clientDes",t)},expression:"form.clientDes"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:24}},[l("el-form-item",{attrs:{label:"客户地址",prop:"address"}},[l("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.address,callback:function(t){e.$set(e.form,"address",t)},expression:"form.address"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"客户官网地址",prop:"website"}},[l("el-input",{attrs:{placeholder:"请输入客户官网地址"},model:{value:e.form.website,callback:function(t){e.$set(e.form,"website",t)},expression:"form.website"}})],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"客户邮箱地址",prop:"email"}},["view"==e.optType?l("el-input",{model:{value:e.form.email,callback:function(t){e.$set(e.form,"email",t)},expression:"form.email"}}):l("el-input",{attrs:{placeholder:"请输入客户邮箱地址"},model:{value:e.form.email,callback:function(t){e.$set(e.form,"email",t)},expression:"form.email"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"客户电话",prop:"tel"}},["view"==e.optType?l("el-input",{model:{value:e.form.tel,callback:function(t){e.$set(e.form,"tel",t)},expression:"form.tel"}}):l("el-input",{attrs:{placeholder:"请输入客户电话"},model:{value:e.form.tel,callback:function(t){e.$set(e.form,"tel",t)},expression:"form.tel"}})],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"客户LOGO",prop:"clientLogo"}},["view"==e.optType?l("el-input",{model:{value:e.form.clientLogo,callback:function(t){e.$set(e.form,"clientLogo",t)},expression:"form.clientLogo"}}):l("el-input",{attrs:{placeholder:"请输入客户LOGO"},model:{value:e.form.clientLogo,callback:function(t){e.$set(e.form,"clientLogo",t)},expression:"form.clientLogo"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人1",prop:"contact1"}},["view"==e.optType?l("el-input",{model:{value:e.form.contact1,callback:function(t){e.$set(e.form,"contact1",t)},expression:"form.contact1"}}):l("el-input",{attrs:{placeholder:"请输入联系人1"},model:{value:e.form.contact1,callback:function(t){e.$set(e.form,"contact1",t)},expression:"form.contact1"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人1-电话",prop:"contact1Tel"}},["view"==e.optType?l("el-input",{model:{value:e.form.contact1Tel,callback:function(t){e.$set(e.form,"contact1Tel",t)},expression:"form.contact1Tel"}}):l("el-input",{attrs:{placeholder:"请输入联系人1-电话"},model:{value:e.form.contact1Tel,callback:function(t){e.$set(e.form,"contact1Tel",t)},expression:"form.contact1Tel"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人1-邮箱",prop:"contact1Email"}},["view"==e.optType?l("el-input",{model:{value:e.form.contact1Email,callback:function(t){e.$set(e.form,"contact1Email",t)},expression:"form.contact1Email"}}):l("el-input",{attrs:{placeholder:"请输入联系人1-邮箱"},model:{value:e.form.contact1Email,callback:function(t){e.$set(e.form,"contact1Email",t)},expression:"form.contact1Email"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人2",prop:"contact2"}},["view"==e.optType?l("el-input",{model:{value:e.form.contact2,callback:function(t){e.$set(e.form,"contact2",t)},expression:"form.contact2"}}):l("el-input",{attrs:{placeholder:"请输入联系人2"},model:{value:e.form.contact2,callback:function(t){e.$set(e.form,"contact2",t)},expression:"form.contact2"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人2-电话",prop:"contact2Tel"}},["view"==e.optType?l("el-input",{model:{value:e.form.contact2Tel,callback:function(t){e.$set(e.form,"contact2Tel",t)},expression:"form.contact2Tel"}}):l("el-input",{attrs:{placeholder:"请输入联系人2-电话"},model:{value:e.form.contact2Tel,callback:function(t){e.$set(e.form,"contact2Tel",t)},expression:"form.contact2Tel"}})],1)],1),l("el-col",{attrs:{span:8}},[l("el-form-item",{attrs:{label:"联系人2-邮箱",prop:"contact2Email"}},["view"==e.optType?l("el-input",{model:{value:e.form.contact2Email,callback:function(t){e.$set(e.form,"contact2Email",t)},expression:"form.contact2Email"}}):l("el-input",{attrs:{placeholder:"请输入联系人2-邮箱"},model:{value:e.form.contact2Email,callback:function(t){e.$set(e.form,"contact2Email",t)},expression:"form.contact2Email"}})],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"社会信用代码",prop:"creditCode"}},["view"==e.optType?l("el-input",{attrs:{readonly:""},model:{value:e.form.creditCode,callback:function(t){e.$set(e.form,"creditCode",t)},expression:"form.creditCode"}}):l("el-input",{attrs:{placeholder:"请输入统一社会信用代码"},model:{value:e.form.creditCode,callback:function(t){e.$set(e.form,"creditCode",t)},expression:"form.creditCode"}})],1)],1),l("el-col",{attrs:{span:12}},[l("el-form-item",{attrs:{label:"是否有效",prop:"enableFlag"}},["view"==e.optType?l("el-radio-group",{attrs:{disabled:""},model:{value:e.form.enableFlag,callback:function(t){e.$set(e.form,"enableFlag",t)},expression:"form.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return l("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1):l("el-radio-group",{model:{value:e.form.enableFlag,callback:function(t){e.$set(e.form,"enableFlag",t)},expression:"form.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return l("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1)],1)],1),l("el-row",[l("el-col",{attrs:{span:24}},[l("el-form-item",{attrs:{label:"备注",prop:"remark"}},["view"==e.optType?l("el-input",{attrs:{type:"textarea",readonly:""},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}}):l("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),l("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?l("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):l("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),l("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],o=l("5530"),r=(l("d81d"),l("fc13")),i=l("8171"),c={name:"Client",dicts:["mes_client_type","sys_yes_no"],data:function(){return{autoGenFlag:!1,optType:void 0,loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,clientList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,clientCode:null,clientName:null,clientNick:null,clientEn:null,clientDes:null,clientLogo:null,clientType:null,address:null,website:null,email:null,tel:null,contact1:null,contact1Tel:null,contact1Email:null,contact2:null,contact2Tel:null,contact2Email:null,creditCode:null,enableFlag:null},form:{},rules:{clientCode:[{required:!0,message:"客户编码不能为空",trigger:"blur"}],clientName:[{required:!0,message:"客户名称不能为空",trigger:"blur"}],email:[{type:"email",message:"请输入正确的邮箱地址",trigger:["blur","change"]}],contact1Email:[{type:"email",message:"请输入正确的邮箱地址",trigger:["blur","change"]}],contact2Email:[{type:"email",message:"请输入正确的邮箱地址",trigger:["blur","change"]}],enableFlag:[{required:!0,message:"是否启用不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,Object(r["d"])(this.queryParams).then((function(t){e.clientList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={clientId:null,clientCode:null,clientName:null,clientNick:null,clientEn:null,clientDes:null,clientLogo:null,clientType:null,address:null,website:null,email:null,tel:null,contact1:null,contact1Tel:null,contact1Email:null,contact2:null,contact2Tel:null,contact2Email:null,creditCode:null,enableFlag:"Y",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.clientId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加客户",this.optType="add"},handleView:function(e){var t=this;this.reset();var l=e.clientId||this.ids;Object(r["c"])(l).then((function(e){t.form=e.data,t.open=!0,t.title="查看客户",t.optType="view"}))},handleUpdate:function(e){var t=this;this.reset();var l=e.clientId||this.ids;Object(r["c"])(l).then((function(e){t.form=e.data,t.open=!0,t.title="修改客户",t.optType="edit"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.clientId?Object(r["e"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(r["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,l=e.clientId||this.ids;this.$modal.confirm('是否确认删除客户编号为"'+l+'"的数据项？').then((function(){return Object(r["b"])(l)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("md/client/export",Object(o["a"])({},this.queryParams),"client_".concat((new Date).getTime(),".xlsx"))},handleAutoGenChange:function(e){var t=this;e?Object(i["c"])("CLIENT_CODE").then((function(e){t.form.clientCode=e})):this.form.clientCode=null}}},s=c,u=l("2877"),m=Object(u["a"])(s,a,n,!1,null,null,null);t["default"]=m.exports},8171:function(e,t,l){"use strict";l.d(t,"c",(function(){return n})),l.d(t,"e",(function(){return o})),l.d(t,"d",(function(){return r})),l.d(t,"a",(function(){return i})),l.d(t,"g",(function(){return c})),l.d(t,"b",(function(){return s})),l.d(t,"f",(function(){return u}));var a=l("b775");function n(e){return Object(a["a"])({url:"/system/autocode/get/"+e,method:"get"})}function o(e){return Object(a["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function r(e){return Object(a["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function i(e){return Object(a["a"])({url:"/system/autocode/rule",method:"post",data:e})}function c(e){return Object(a["a"])({url:"/system/autocode/rule",method:"put",data:e})}function s(e){return Object(a["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function u(){return Object(a["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},fc13:function(e,t,l){"use strict";l.d(t,"d",(function(){return n})),l.d(t,"c",(function(){return o})),l.d(t,"a",(function(){return r})),l.d(t,"e",(function(){return i})),l.d(t,"b",(function(){return c}));var a=l("b775");function n(e){return Object(a["a"])({url:"/mes/md/client/list",method:"get",params:e})}function o(e){return Object(a["a"])({url:"/mes/md/client/"+e,method:"get"})}function r(e){return Object(a["a"])({url:"/mes/md/client",method:"post",data:e})}function i(e){return Object(a["a"])({url:"/mes/md/client",method:"put",data:e})}function c(e){return Object(a["a"])({url:"/mes/md/client/"+e,method:"delete"})}}}]);