(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-616de99a"],{"287e":function(e,t,r){"use strict";r.d(t,"e",(function(){return l})),r.d(t,"d",(function(){return n})),r.d(t,"c",(function(){return s})),r.d(t,"a",(function(){return a})),r.d(t,"f",(function(){return i})),r.d(t,"b",(function(){return c}));var o=r("b775");function l(e){return Object(o["a"])({url:"/mes/pro/process/list",method:"get",params:e})}function n(){return Object(o["a"])({url:"/mes/pro/process/listAll",method:"get"})}function s(e){return Object(o["a"])({url:"/mes/pro/process/"+e,method:"get"})}function a(e){return Object(o["a"])({url:"/mes/pro/process",method:"post",data:e})}function i(e){return Object(o["a"])({url:"/mes/pro/process",method:"put",data:e})}function c(e){return Object(o["a"])({url:"/mes/pro/process/"+e,method:"delete"})}},5937:function(e,t,r){"use strict";r.d(t,"e",(function(){return l})),r.d(t,"d",(function(){return n})),r.d(t,"c",(function(){return s})),r.d(t,"a",(function(){return a})),r.d(t,"f",(function(){return i})),r.d(t,"b",(function(){return c}));var o=r("b775");function l(e){return Object(o["a"])({url:"/mes/pro/routeprocess/list",method:"get",params:e})}function n(e){return Object(o["a"])({url:"/mes/pro/routeprocess/listProductProcess/"+e,method:"get"})}function s(e){return Object(o["a"])({url:"/mes/pro/routeprocess/"+e,method:"get"})}function a(e){return Object(o["a"])({url:"/mes/pro/routeprocess",method:"post",data:e})}function i(e){return Object(o["a"])({url:"/mes/pro/routeprocess",method:"put",data:e})}function c(e){return Object(o["a"])({url:"/mes/pro/routeprocess/"+e,method:"delete"})}},dfb0:function(e,t,r){"use strict";r.r(t);var o=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"app-container"},["view"!=e.optType?r("el-row",{staticClass:"mb8",attrs:{gutter:10}},[r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["pro:routeprocess:add"],expression:"['pro:routeprocess:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["pro:routeprocess:edit"],expression:"['pro:routeprocess:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["pro:routeprocess:remove"],expression:"['pro:routeprocess:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),r("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1):e._e(),r("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.routeprocessList},on:{"selection-change":e.handleSelectionChange}},[r("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),r("el-table-column",{attrs:{label:"序号",align:"center",fixed:"",prop:"orderNum"}}),r("el-table-column",{attrs:{label:"工序编码",width:"120px",fixed:"",align:"center",prop:"processCode"}}),r("el-table-column",{attrs:{label:"工序名称",width:"150px",fixed:"",align:"center",prop:"processName"}}),r("el-table-column",{attrs:{label:"下一道工序",width:"150px",align:"center",prop:"nextProcessName"}}),r("el-table-column",{attrs:{label:"与下一道工序关系",width:"150px",align:"center",prop:"linkType"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("dict-tag",{attrs:{options:e.dict.type.mes_link_type,value:t.row.linkType}})]}}])}),r("el-table-column",{attrs:{label:"关键工序",width:"100px",align:"center",prop:"keyFlag"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.keyFlag}})]}}])}),r("el-table-column",{attrs:{label:"准备时间",align:"center",prop:"defaultPreTime"}}),r("el-table-column",{attrs:{label:"等待时间",align:"center",prop:"defaultSufTime"}}),r("el-table-column",{attrs:{label:"甘特图显示颜色",align:"center",prop:"colorCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("el-color-picker",{attrs:{disabled:""},model:{value:t.row.colorCode,callback:function(r){e.$set(t.row,"colorCode",r)},expression:"scope.row.colorCode"}})]}}])}),"view"!=e.optType?r("el-table-column",{attrs:{label:"操作",align:"center",fixed:"right",width:"150px","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:pro:routeprocess:edit"],expression:"['mes:pro:routeprocess:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(r){return e.handleUpdate(t.row)}}},[e._v("修改")]),r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:pro:routeprocess:remove"],expression:"['mes:pro:routeprocess:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(r){return e.handleDelete(t.row)}}},[e._v("删除")])]}}],null,!1,187270730)}):e._e()],1),r("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),r("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"150px"}},[r("el-row",[r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"序号",prop:"orderNum"}},[r("el-input-number",{attrs:{min:1,placeholder:"请输入序号"},model:{value:e.form.orderNum,callback:function(t){e.$set(e.form,"orderNum",t)},expression:"form.orderNum"}})],1)],1),r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"工序",prop:"processId"}},[r("el-select",{attrs:{placeholder:"请选择工序"},model:{value:e.form.processId,callback:function(t){e.$set(e.form,"processId",t)},expression:"form.processId"}},e._l(e.processOptions,(function(e){return r("el-option",{key:e.processId,attrs:{label:e.processName,value:e.processId}})})),1)],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"与下一道工序关系",prop:"linkType"}},[r("el-tooltip",{attrs:{effect:"dark",placement:"right"}},[r("div",{attrs:{slot:"content"},slot:"content"},[e._v(" S-to-S：当前工序开始生产，下一道工序才可开始生产 "),r("br"),e._v(" F-to-F：当前工序结束生产，下一道工序才可结束生产 "),r("br"),e._v(" S-to-F：当前工序开始生产，下一道工序才可结束生产 "),r("br"),e._v(" F-to-S：当前工序结束生产，下一道工序才可开始生产 ")]),r("el-select",{attrs:{placeholder:"请选择与下一道工序关系"},model:{value:e.form.linkType,callback:function(t){e.$set(e.form,"linkType",t)},expression:"form.linkType"}},e._l(e.dict.type.mes_link_type,(function(e){return r("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1)],1),r("el-col",{attrs:{span:5}},[r("el-form-item",{attrs:{label:"甘特图显示颜色",prop:"colorCode"}},[r("el-color-picker",{model:{value:e.form.colorCode,callback:function(t){e.$set(e.form,"colorCode",t)},expression:"form.colorCode"}})],1)],1),r("el-col",{attrs:{span:7}},[r("el-input",{attrs:{maxlength:"7",placeholder:"请输入颜色编码在左侧选择颜色"},model:{value:e.form.colorCode,callback:function(t){e.$set(e.form,"colorCode",t)},expression:"form.colorCode"}})],1)],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"是否关键工序",prop:"keyFlag"}},[r("el-tooltip",{attrs:{effect:"dark",placement:"right"}},[r("div",{attrs:{slot:"content"},slot:"content"},[e._v(" 是：整个工单的生产进度将根据当前工序的生产报工数量进行更新"),r("br"),e._v(" 每个工艺流程只能有一个关键工序 ")]),r("el-select",{model:{value:e.form.keyFlag,callback:function(t){e.$set(e.form,"keyFlag",t)},expression:"form.keyFlag"}},e._l(e.dict.type.sys_yes_no,(function(e){return r("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1)],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"准备时间",prop:"defaultPreTime"}},[r("el-tooltip",{attrs:{effect:"dark",content:"当前系统支持的最小时间粒度为1小时",placement:"right"}},[r("el-input-number",{attrs:{min:0,step:1,placeholder:"请输入准备时间"},model:{value:e.form.defaultPreTime,callback:function(t){e.$set(e.form,"defaultPreTime",t)},expression:"form.defaultPreTime"}})],1)],1)],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"等待时间",prop:"defaultSufTime"}},[r("el-input-number",{attrs:{min:0,step:1,placeholder:"请输入等待时间"},model:{value:e.form.defaultSufTime,callback:function(t){e.$set(e.form,"defaultSufTime",t)},expression:"form.defaultSufTime"}})],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:24}},[r("el-form-item",{attrs:{label:"备注",prop:"remark"}},[r("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?r("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):r("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),r("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},l=[],n=r("5530"),s=(r("d81d"),r("5937")),a=r("287e"),i={name:"Routeprocess",dicts:["mes_link_type","sys_yes_no"],data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,routeprocessList:[],processOptions:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,routeId:this.routeId,processId:null,processCode:null,processName:null,orderNum:null,nextProcessId:null,nextProcessCode:null,nextProcessName:null,linkType:null,defaultPreTime:null,defaultSufTime:null,colorCode:null},form:{},rules:{routeId:[{required:!0,message:"工艺路线ID不能为空",trigger:"blur"}],processId:[{required:!0,message:"工序ID不能为空",trigger:"blur"}],nextProcessId:[{required:!0,message:"工序ID不能为空",trigger:"blur"}],keyFlag:[{required:!0,message:"请指定当前工序是否关键工序",trigger:"blur"}]}}},props:{routeId:void 0,optType:void 0},created:function(){this.getList(),this.getProcess()},methods:{getList:function(){var e=this;this.loading=!0,Object(s["e"])(this.queryParams).then((function(t){e.routeprocessList=t.rows,e.total=t.total,e.loading=!1}))},getProcess:function(){var e=this;Object(a["d"])().then((function(t){e.processOptions=t.data}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={recordId:null,routeId:this.routeId,processId:null,processCode:null,processName:null,orderNum:1,nextProcessId:null,nextProcessCode:null,nextProcessName:null,linkType:null,defaultPreTime:0,defaultSufTime:0,colorCode:"#00AEF3",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.recordId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加工艺组成"},handleUpdate:function(e){var t=this;this.reset();var r=e.recordId||this.ids;Object(s["c"])(r).then((function(e){t.form=e.data,t.open=!0,t.title="修改工艺组成"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.recordId?Object(s["f"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(s["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,r=e.recordId||this.ids;this.$modal.confirm('是否确认删除工艺组成编号为"'+r+'"的数据项？').then((function(){return Object(s["b"])(r)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("mes/pro/routeprocess/export",Object(n["a"])({},this.queryParams),"routeprocess_".concat((new Date).getTime(),".xlsx"))}}},c=i,u=r("2877"),p=Object(u["a"])(c,o,l,!1,null,null,null);t["default"]=p.exports}}]);