(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d2225a1"],{cdf0:function(e,r,t){"use strict";t.r(r);var a=function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("div",{staticClass:"app-container"},[t("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[t("el-form-item",{attrs:{label:"生产工单ID",prop:"workorderId"}},[t("el-input",{attrs:{placeholder:"请输入生产工单ID",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.workorderId,callback:function(r){e.$set(e.queryParams,"workorderId",r)},expression:"queryParams.workorderId"}})],1),t("el-form-item",{attrs:{label:"生产工单编码",prop:"workorderCode"}},[t("el-input",{attrs:{placeholder:"请输入生产工单编码",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.workorderCode,callback:function(r){e.$set(e.queryParams,"workorderCode",r)},expression:"queryParams.workorderCode"}})],1),t("el-form-item",{attrs:{label:"生产工单名称",prop:"workorderName"}},[t("el-input",{attrs:{placeholder:"请输入生产工单名称",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.workorderName,callback:function(r){e.$set(e.queryParams,"workorderName",r)},expression:"queryParams.workorderName"}})],1),t("el-form-item",{attrs:{label:"生产任务ID",prop:"taskId"}},[t("el-input",{attrs:{placeholder:"请输入生产任务ID",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.taskId,callback:function(r){e.$set(e.queryParams,"taskId",r)},expression:"queryParams.taskId"}})],1),t("el-form-item",{attrs:{label:"生产任务编号",prop:"taskCode"}},[t("el-input",{attrs:{placeholder:"请输入生产任务编号",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.taskCode,callback:function(r){e.$set(e.queryParams,"taskCode",r)},expression:"queryParams.taskCode"}})],1),t("el-form-item",{attrs:{label:"生产任务名称",prop:"taskName"}},[t("el-input",{attrs:{placeholder:"请输入生产任务名称",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.taskName,callback:function(r){e.$set(e.queryParams,"taskName",r)},expression:"queryParams.taskName"}})],1),t("el-form-item",{attrs:{label:"工作站ID",prop:"workstationId"}},[t("el-input",{attrs:{placeholder:"请输入工作站ID",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.workstationId,callback:function(r){e.$set(e.queryParams,"workstationId",r)},expression:"queryParams.workstationId"}})],1),t("el-form-item",{attrs:{label:"工作站编号",prop:"workstationCode"}},[t("el-input",{attrs:{placeholder:"请输入工作站编号",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.workstationCode,callback:function(r){e.$set(e.queryParams,"workstationCode",r)},expression:"queryParams.workstationCode"}})],1),t("el-form-item",{attrs:{label:"工作站名称",prop:"workstationName"}},[t("el-input",{attrs:{placeholder:"请输入工作站名称",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.workstationName,callback:function(r){e.$set(e.queryParams,"workstationName",r)},expression:"queryParams.workstationName"}})],1),t("el-form-item",{attrs:{label:"工序ID",prop:"processId"}},[t("el-input",{attrs:{placeholder:"请输入工序ID",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.processId,callback:function(r){e.$set(e.queryParams,"processId",r)},expression:"queryParams.processId"}})],1),t("el-form-item",{attrs:{label:"工序编号",prop:"processCode"}},[t("el-input",{attrs:{placeholder:"请输入工序编号",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.processCode,callback:function(r){e.$set(e.queryParams,"processCode",r)},expression:"queryParams.processCode"}})],1),t("el-form-item",{attrs:{label:"工序名称",prop:"processName"}},[t("el-input",{attrs:{placeholder:"请输入工序名称",clearable:""},nativeOn:{keyup:function(r){return!r.type.indexOf("key")&&e._k(r.keyCode,"enter",13,r.key,"Enter")?null:e.handleQuery(r)}},model:{value:e.queryParams.processName,callback:function(r){e.$set(e.queryParams,"processName",r)},expression:"queryParams.processName"}})],1),t("el-form-item",{attrs:{label:"生产日期",prop:"produceDate"}},[t("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择生产日期"},model:{value:e.queryParams.produceDate,callback:function(r){e.$set(e.queryParams,"produceDate",r)},expression:"queryParams.produceDate"}})],1),t("el-form-item",{attrs:{label:"单据状态",prop:"status"}},[t("el-select",{attrs:{placeholder:"请选择单据状态",clearable:""},model:{value:e.queryParams.status,callback:function(r){e.$set(e.queryParams,"status",r)},expression:"queryParams.status"}},e._l(e.dict.type.mes_order_status,(function(e){return t("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1),t("el-form-item",[t("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),t("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),t("el-row",{staticClass:"mb8",attrs:{gutter:10}},[t("el-col",{attrs:{span:1.5}},[t("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:productproduce:add"],expression:"['wm:productproduce:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),t("el-col",{attrs:{span:1.5}},[t("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:productproduce:edit"],expression:"['wm:productproduce:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),t("el-col",{attrs:{span:1.5}},[t("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:productproduce:remove"],expression:"['wm:productproduce:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),t("el-col",{attrs:{span:1.5}},[t("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:productproduce:export"],expression:"['wm:productproduce:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),t("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(r){e.showSearch=r},"update:show-search":function(r){e.showSearch=r},queryTable:e.getList}})],1),t("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.productproduceList},on:{"selection-change":e.handleSelectionChange}},[t("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),t("el-table-column",{attrs:{label:"入库单ID",align:"center",prop:"recordId"}}),t("el-table-column",{attrs:{label:"生产工单ID",align:"center",prop:"workorderId"}}),t("el-table-column",{attrs:{label:"生产工单编码",align:"center",prop:"workorderCode"}}),t("el-table-column",{attrs:{label:"生产工单名称",align:"center",prop:"workorderName"}}),t("el-table-column",{attrs:{label:"生产任务ID",align:"center",prop:"taskId"}}),t("el-table-column",{attrs:{label:"生产任务编号",align:"center",prop:"taskCode"}}),t("el-table-column",{attrs:{label:"生产任务名称",align:"center",prop:"taskName"}}),t("el-table-column",{attrs:{label:"工作站ID",align:"center",prop:"workstationId"}}),t("el-table-column",{attrs:{label:"工作站编号",align:"center",prop:"workstationCode"}}),t("el-table-column",{attrs:{label:"工作站名称",align:"center",prop:"workstationName"}}),t("el-table-column",{attrs:{label:"工序ID",align:"center",prop:"processId"}}),t("el-table-column",{attrs:{label:"工序编号",align:"center",prop:"processCode"}}),t("el-table-column",{attrs:{label:"工序名称",align:"center",prop:"processName"}}),t("el-table-column",{attrs:{label:"生产日期",align:"center",prop:"produceDate",width:"180"},scopedSlots:e._u([{key:"default",fn:function(r){return[t("span",[e._v(e._s(e.parseTime(r.row.produceDate,"{y}-{m}-{d}")))])]}}])}),t("el-table-column",{attrs:{label:"单据状态",align:"center",prop:"status"},scopedSlots:e._u([{key:"default",fn:function(r){return[t("dict-tag",{attrs:{options:e.dict.type.mes_order_status,value:r.row.status}})]}}])}),t("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark"}}),t("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(r){return[t("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:productproduce:edit"],expression:"['wm:productproduce:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(t){return e.handleUpdate(r.row)}}},[e._v("修改")]),t("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:productproduce:remove"],expression:"['wm:productproduce:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(t){return e.handleDelete(r.row)}}},[e._v("删除")])]}}])})],1),t("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(r){return e.$set(e.queryParams,"pageNum",r)},"update:limit":function(r){return e.$set(e.queryParams,"pageSize",r)},pagination:e.getList}}),t("el-dialog",{attrs:{title:e.title,visible:e.open,width:"500px","append-to-body":""},on:{"update:visible":function(r){e.open=r}}},[t("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[t("el-form-item",{attrs:{label:"生产工单ID",prop:"workorderId"}},[t("el-input",{attrs:{placeholder:"请输入生产工单ID"},model:{value:e.form.workorderId,callback:function(r){e.$set(e.form,"workorderId",r)},expression:"form.workorderId"}})],1),t("el-form-item",{attrs:{label:"生产工单编码",prop:"workorderCode"}},[t("el-input",{attrs:{placeholder:"请输入生产工单编码"},model:{value:e.form.workorderCode,callback:function(r){e.$set(e.form,"workorderCode",r)},expression:"form.workorderCode"}})],1),t("el-form-item",{attrs:{label:"生产工单名称",prop:"workorderName"}},[t("el-input",{attrs:{placeholder:"请输入生产工单名称"},model:{value:e.form.workorderName,callback:function(r){e.$set(e.form,"workorderName",r)},expression:"form.workorderName"}})],1),t("el-form-item",{attrs:{label:"生产任务ID",prop:"taskId"}},[t("el-input",{attrs:{placeholder:"请输入生产任务ID"},model:{value:e.form.taskId,callback:function(r){e.$set(e.form,"taskId",r)},expression:"form.taskId"}})],1),t("el-form-item",{attrs:{label:"生产任务编号",prop:"taskCode"}},[t("el-input",{attrs:{placeholder:"请输入生产任务编号"},model:{value:e.form.taskCode,callback:function(r){e.$set(e.form,"taskCode",r)},expression:"form.taskCode"}})],1),t("el-form-item",{attrs:{label:"生产任务名称",prop:"taskName"}},[t("el-input",{attrs:{placeholder:"请输入生产任务名称"},model:{value:e.form.taskName,callback:function(r){e.$set(e.form,"taskName",r)},expression:"form.taskName"}})],1),t("el-form-item",{attrs:{label:"工作站ID",prop:"workstationId"}},[t("el-input",{attrs:{placeholder:"请输入工作站ID"},model:{value:e.form.workstationId,callback:function(r){e.$set(e.form,"workstationId",r)},expression:"form.workstationId"}})],1),t("el-form-item",{attrs:{label:"工作站编号",prop:"workstationCode"}},[t("el-input",{attrs:{placeholder:"请输入工作站编号"},model:{value:e.form.workstationCode,callback:function(r){e.$set(e.form,"workstationCode",r)},expression:"form.workstationCode"}})],1),t("el-form-item",{attrs:{label:"工作站名称",prop:"workstationName"}},[t("el-input",{attrs:{placeholder:"请输入工作站名称"},model:{value:e.form.workstationName,callback:function(r){e.$set(e.form,"workstationName",r)},expression:"form.workstationName"}})],1),t("el-form-item",{attrs:{label:"工序ID",prop:"processId"}},[t("el-input",{attrs:{placeholder:"请输入工序ID"},model:{value:e.form.processId,callback:function(r){e.$set(e.form,"processId",r)},expression:"form.processId"}})],1),t("el-form-item",{attrs:{label:"工序编号",prop:"processCode"}},[t("el-input",{attrs:{placeholder:"请输入工序编号"},model:{value:e.form.processCode,callback:function(r){e.$set(e.form,"processCode",r)},expression:"form.processCode"}})],1),t("el-form-item",{attrs:{label:"工序名称",prop:"processName"}},[t("el-input",{attrs:{placeholder:"请输入工序名称"},model:{value:e.form.processName,callback:function(r){e.$set(e.form,"processName",r)},expression:"form.processName"}})],1),t("el-form-item",{attrs:{label:"生产日期",prop:"produceDate"}},[t("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择生产日期"},model:{value:e.form.produceDate,callback:function(r){e.$set(e.form,"produceDate",r)},expression:"form.produceDate"}})],1),t("el-form-item",{attrs:{label:"单据状态"}},[t("el-radio-group",{model:{value:e.form.status,callback:function(r){e.$set(e.form,"status",r)},expression:"form.status"}},e._l(e.dict.type.mes_order_status,(function(r){return t("el-radio",{key:r.value,attrs:{label:r.value}},[e._v(e._s(r.label))])})),1)],1),t("el-form-item",{attrs:{label:"备注",prop:"remark"}},[t("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(r){e.$set(e.form,"remark",r)},expression:"form.remark"}})],1)],1),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),t("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},o=[],l=t("5530"),n=(t("d81d"),t("b775"));function s(e){return Object(n["a"])({url:"/mes/wm/productproduce/list",method:"get",params:e})}function i(e){return Object(n["a"])({url:"/mes/wm/productproduce/"+e,method:"get"})}function u(e){return Object(n["a"])({url:"/mes/wm/productproduce",method:"post",data:e})}function c(e){return Object(n["a"])({url:"/mes/wm/productproduce",method:"put",data:e})}function d(e){return Object(n["a"])({url:"/mes/wm/productproduce/"+e,method:"delete"})}var m={name:"Productproduce",dicts:["mes_order_status"],data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,productproduceList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,workorderId:null,workorderCode:null,workorderName:null,taskId:null,taskCode:null,taskName:null,workstationId:null,workstationCode:null,workstationName:null,processId:null,processCode:null,processName:null,produceDate:null,status:null},form:{},rules:{}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,s(this.queryParams).then((function(r){e.productproduceList=r.rows,e.total=r.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={recordId:null,workorderId:null,workorderCode:null,workorderName:null,taskId:null,taskCode:null,taskName:null,workstationId:null,workstationCode:null,workstationName:null,processId:null,processCode:null,processName:null,produceDate:null,status:"0",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.recordId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加产品产出记录"},handleUpdate:function(e){var r=this;this.reset();var t=e.recordId||this.ids;i(t).then((function(e){r.form=e.data,r.open=!0,r.title="修改产品产出记录"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(r){r&&(null!=e.form.recordId?c(e.form).then((function(r){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(r){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var r=this,t=e.recordId||this.ids;this.$modal.confirm('是否确认删除产品产出记录编号为"'+t+'"的数据项？').then((function(){return d(t)})).then((function(){r.getList(),r.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("wm/productproduce/export",Object(l["a"])({},this.queryParams),"productproduce_".concat((new Date).getTime(),".xlsx"))}}},p=m,k=t("2877"),f=Object(k["a"])(p,a,o,!1,null,null,null);r["default"]=f.exports}}]);