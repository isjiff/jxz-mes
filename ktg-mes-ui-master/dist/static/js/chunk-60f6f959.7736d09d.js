(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-60f6f959","chunk-3c7e8c1c"],{"4a8f":function(e,t,r){"use strict";r.d(t,"d",(function(){return n})),r.d(t,"e",(function(){return o})),r.d(t,"c",(function(){return l})),r.d(t,"f",(function(){return i})),r.d(t,"a",(function(){return s})),r.d(t,"g",(function(){return u})),r.d(t,"b",(function(){return c}));var a=r("b775");function n(e){return Object(a["a"])({url:"/mes/md/itemtype/list",method:"get",params:e})}function o(e){return Object(a["a"])({url:"/mes/md/itemtype/list/exclude/"+e,method:"get"})}function l(e){return Object(a["a"])({url:"/mes/md/itemtype/"+e,method:"get"})}function i(){return Object(a["a"])({url:"/mes/md/itemtype/treeselect",method:"get"})}function s(e){return Object(a["a"])({url:"/mes/md/itemtype",method:"post",data:e})}function u(e){return Object(a["a"])({url:"/mes/md/itemtype",method:"put",data:e})}function c(e){return Object(a["a"])({url:"/mes/md/itemtype/"+e,method:"delete"})}},6240:function(e,t,r){"use strict";r.d(t,"e",(function(){return n})),r.d(t,"c",(function(){return o})),r.d(t,"d",(function(){return l})),r.d(t,"a",(function(){return i})),r.d(t,"f",(function(){return s})),r.d(t,"b",(function(){return u}));var a=r("b775");function n(e){return Object(a["a"])({url:"/mes/wm/warehouse/list",method:"get",params:e})}function o(){return Object(a["a"])({url:"/mes/wm/warehouse/getTreeList",method:"get"})}function l(e){return Object(a["a"])({url:"/mes/wm/warehouse/"+e,method:"get"})}function i(e){return Object(a["a"])({url:"/mes/wm/warehouse",method:"post",data:e})}function s(e){return Object(a["a"])({url:"/mes/wm/warehouse",method:"put",data:e})}function u(e){return Object(a["a"])({url:"/mes/wm/warehouse/"+e,method:"delete"})}},"7dd7":function(e,t,r){"use strict";r.d(t,"a",(function(){return n}));var a=r("b775");function n(e){return Object(a["a"])({url:"/mes/wm/wmstock/list",method:"get",params:e})}},8171:function(e,t,r){"use strict";r.d(t,"c",(function(){return n})),r.d(t,"e",(function(){return o})),r.d(t,"d",(function(){return l})),r.d(t,"a",(function(){return i})),r.d(t,"g",(function(){return s})),r.d(t,"b",(function(){return u})),r.d(t,"f",(function(){return c}));var a=r("b775");function n(e){return Object(a["a"])({url:"/system/autocode/get/"+e,method:"get"})}function o(e){return Object(a["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function l(e){return Object(a["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function i(e){return Object(a["a"])({url:"/system/autocode/rule",method:"post",data:e})}function s(e){return Object(a["a"])({url:"/system/autocode/rule",method:"put",data:e})}function u(e){return Object(a["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function c(){return Object(a["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},"8dfc":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"app-container"},[r("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"90px"}},[r("el-form-item",{attrs:{label:"退料单编号",prop:"rtCode"}},[r("el-input",{attrs:{placeholder:"请输入退料单编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.rtCode,callback:function(t){e.$set(e.queryParams,"rtCode",t)},expression:"queryParams.rtCode"}})],1),r("el-form-item",{attrs:{label:"生产工单",prop:"workorderCode"}},[r("el-input",{attrs:{placeholder:"请输入生产工单编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.workorderCode,callback:function(t){e.$set(e.queryParams,"workorderCode",t)},expression:"queryParams.workorderCode"}})],1),r("el-form-item",{attrs:{label:"仓库名称",prop:"warehouseName"}},[r("el-input",{attrs:{placeholder:"请输入仓库名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.warehouseName,callback:function(t){e.$set(e.queryParams,"warehouseName",t)},expression:"queryParams.warehouseName"}})],1),r("el-form-item",[r("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),r("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),r("el-row",{staticClass:"mb8",attrs:{gutter:10}},[r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:add"],expression:"['mes:wm:rtissue:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:edit"],expression:"['mes:wm:rtissue:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:remove"],expression:"['mes:wm:rtissue:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),r("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),r("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.rtissueList},on:{"selection-change":e.handleSelectionChange}},[r("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),r("el-table-column",{attrs:{label:"退料单编号",width:"140px",align:"center",prop:"rtCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:query"],expression:"['mes:wm:rtissue:query']"}],attrs:{type:"text"},on:{click:function(r){return e.handleView(t.row)}}},[e._v(e._s(t.row.rtCode))])]}}])}),r("el-table-column",{attrs:{label:"退料单名称",width:"120px",align:"center",prop:"rtName","show-overflow-tooltip":!0}}),r("el-table-column",{attrs:{label:"生产工单",width:"140px",align:"center",prop:"workorderCode"}}),r("el-table-column",{attrs:{label:"仓库名称",align:"center",prop:"warehouseName"}}),r("el-table-column",{attrs:{label:"库区名称",width:"100px",align:"center",prop:"locationName"}}),r("el-table-column",{attrs:{label:"库位名称",align:"center",prop:"areaName"}}),r("el-table-column",{attrs:{label:"退料日期",align:"center",prop:"rtDate",width:"120"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("span",[e._v(e._s(e.parseTime(t.row.rtDate,"{y}-{m}-{d}")))])]}}])}),r("el-table-column",{attrs:{label:"单据状态",align:"center",prop:"status"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("dict-tag",{attrs:{options:e.dict.type.mes_order_status,value:t.row.status}})]}}])}),r("el-table-column",{attrs:{label:"操作",width:"150px",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["PREPARE"==t.row.status?r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:edit"],expression:"['mes:wm:rtissue:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(r){return e.handleExecute(t.row)}}},[e._v("执行入库")]):e._e(),r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:edit"],expression:"['mes:wm:rtissue:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(r){return e.handleUpdate(t.row)}}},[e._v("修改")]),r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:remove"],expression:"['mes:wm:rtissue:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(r){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),r("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),r("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[r("el-row",[r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"退料单编号",prop:"rtCode"}},[r("el-input",{attrs:{placeholder:"请输入退料单编号"},model:{value:e.form.rtCode,callback:function(t){e.$set(e.form,"rtCode",t)},expression:"form.rtCode"}})],1)],1),r("el-col",{attrs:{span:4}},[r("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType&&"PREPARE"==e.form.status?r("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"退料单名称",prop:"rtName"}},[r("el-input",{attrs:{placeholder:"请输入退料单名称"},model:{value:e.form.rtName,callback:function(t){e.$set(e.form,"rtName",t)},expression:"form.rtName"}})],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"生产工单",prop:"workorderCode"}},[r("el-input",{attrs:{placeholder:"请输入生产工单"},model:{value:e.form.workorderCode,callback:function(t){e.$set(e.form,"workorderCode",t)},expression:"form.workorderCode"}},[r("el-button",{attrs:{slot:"append",icon:"el-icon-search"},on:{click:e.handleWorkorderSelect},slot:"append"})],1)],1),r("WorkorderSelect",{ref:"woSelect",on:{onSelected:e.onWorkorderSelected}})],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"接收仓库"}},[r("el-cascader",{attrs:{options:e.warehouseOptions,props:e.warehouseProps},on:{change:e.handleWarehouseChanged},model:{value:e.warehouseInfo,callback:function(t){e.warehouseInfo=t},expression:"warehouseInfo"}})],1)],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"退料日期",prop:"rtDate"}},[r("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择退料日期"},model:{value:e.form.rtDate,callback:function(t){e.$set(e.form,"rtDate",t)},expression:"form.rtDate"}})],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:24}},[r("el-form-item",{attrs:{label:"备注",prop:"remark"}},[r("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),null!=e.form.rtId?r("el-divider",{attrs:{"content-position":"center"}},[e._v("物料信息")]):e._e(),null!=e.form.rtId?r("el-card",{staticClass:"box-card",attrs:{shadow:"always"}},[r("Rtissueline",{attrs:{rtId:e.form.rtId,optType:e.optType}})],1):e._e(),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType||"PREPARE"!=e.form.status?r("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):e._e(),"PREPARE"==e.form.status&&"view"!=e.optType?r("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]):e._e(),r("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],o=r("ade3"),l=r("5530"),i=(r("d81d"),r("ac1f"),r("5319"),r("e9c4"),r("b775"));function s(e){return Object(i["a"])({url:"/mes/wm/rtissue/list",method:"get",params:e})}function u(e){return Object(i["a"])({url:"/mes/wm/rtissue/"+e,method:"get"})}function c(e){return Object(i["a"])({url:"/mes/wm/rtissue",method:"post",data:e})}function d(e){return Object(i["a"])({url:"/mes/wm/rtissue",method:"put",data:e})}function m(e){return Object(i["a"])({url:"/mes/wm/rtissue/"+e,method:"put",data:data})}function p(e){return Object(i["a"])({url:"/mes/wm/rtissue/"+e,method:"delete"})}var h,f=r("373b"),w=r("991a"),b=r("6240"),g=r("8171"),v={name:"Rtissue",dicts:["mes_order_status"],components:{Rtissueline:w["default"],WorkorderSelect:f["a"]},data:function(){return{autoGenFlag:!1,optType:void 0,warehouseInfo:[],warehouseOptions:[],warehouseProps:{multiple:!1,value:"pId",label:"pName"},loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,rtissueList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,rtCode:null,rtName:null,workorderId:null,workorderCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,rtDate:null,status:null},form:{},rules:{rtCode:[{required:!0,message:"退料单编号不能为空",trigger:"blur"}]}}},created:function(){this.getList(),this.getWarehouseList()},methods:(h={getList:function(){var e=this;this.loading=!0,s(this.queryParams).then((function(t){e.rtissueList=t.rows,e.total=t.total,e.loading=!1}))},getWarehouseList:function(){var e=this;Object(b["c"])().then((function(t){e.warehouseOptions=t.data,e.warehouseOptions.map((function(e){e.children.map((function(e){var t=JSON.stringify(e.children).replace(/locationId/g,"lId").replace(/areaId/g,"pId").replace(/areaName/g,"pName");e.children=JSON.parse(t)}));var t=JSON.stringify(e.children).replace(/warehouseId/g,"wId").replace(/locationId/g,"pId").replace(/locationName/g,"pName");e.children=JSON.parse(t)}));var r=JSON.stringify(e.warehouseOptions).replace(/warehouseId/g,"pId").replace(/warehouseName/g,"pName");e.warehouseOptions=JSON.parse(r)}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={rtId:null,rtCode:null,rtName:null,workorderId:null,workorderCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,rtDate:new Date,status:"PREPARE",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.rtId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加生产退料单头",this.optType="add"},handleView:function(e){var t=this;this.reset();var r=e.rtId;getItemrecpt(r).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="查看生产退料单信息",t.optType="view"}))},handleUpdate:function(e){var t=this;this.reset();var r=e.rtId||this.ids;u(r).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="修改生产退料单头",t.optType="edit"}))}},Object(o["a"])(h,"handleView",(function(e){var t=this;this.reset();var r=e.rtId;u(r).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="查看退料单信息",t.optType="view"}))})),Object(o["a"])(h,"submitForm",(function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.rtId?d(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):c(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))})),Object(o["a"])(h,"handleExecute",(function(e){var t=this,r=e.rtId||this.ids;this.$modal.confirm("确认执行退料？").then((function(){return m(r)})).then((function(){t.getList(),t.$modal.msgSuccess("退料成功")})).catch((function(){}))})),Object(o["a"])(h,"handleDelete",(function(e){var t=this,r=e.rtId||this.ids;this.$modal.confirm('是否确认删除生产退料单头编号为"'+r+'"的数据项？').then((function(){return p(r)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))})),Object(o["a"])(h,"handleExport",(function(){this.download("wm/rtissue/export",Object(l["a"])({},this.queryParams),"rtissue_".concat((new Date).getTime(),".xlsx"))})),Object(o["a"])(h,"handleWarehouseChanged",(function(e){null!=e&&(this.form.warehouseId=e[0],this.form.locationId=e[1],this.form.areaId=e[2])})),Object(o["a"])(h,"handleWorkorderSelect",(function(){this.$refs.woSelect.showFlag=!0})),Object(o["a"])(h,"onWorkorderSelected",(function(e){void 0!=e&&null!=e&&(this.form.workorderId=e.workorderId,this.form.workorderCode=e.workorderCode)})),Object(o["a"])(h,"handleAutoGenChange",(function(e){var t=this;e?Object(g["c"])("RTISSUE_CODE").then((function(e){t.form.rtCode=e})):this.form.rtCode=null})),h)},y=v,k=r("2877"),I=Object(k["a"])(y,a,n,!1,null,null,null);t["default"]=I.exports},"991a":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"app-container"},["view"!=e.optType?r("el-row",{staticClass:"mb8",attrs:{gutter:10}},[r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:add"],expression:"['mes:wm:rtissue:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:edit"],expression:"['mes:wm:rtissue:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:remove"],expression:"['mes:wm:rtissue:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),r("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1):e._e(),r("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.rtissuelineList},on:{"selection-change":e.handleSelectionChange}},[r("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),r("el-table-column",{attrs:{label:"物料编码",width:"120px",align:"center",prop:"itemCode"}}),r("el-table-column",{attrs:{label:"物料名称",width:"150px",align:"center",prop:"itemName"}}),r("el-table-column",{attrs:{label:"规格型号",align:"center",prop:"specification","show-overflow-tooltip":!0}}),r("el-table-column",{attrs:{label:"单位",align:"center",prop:"unitOfMeasure"}}),r("el-table-column",{attrs:{label:"退料数量",align:"center",prop:"quantityRt"}}),r("el-table-column",{attrs:{label:"领料批次号",width:"120px",align:"center",prop:"batchCode"}}),r("el-table-column",{attrs:{label:"仓库名称",width:"100px",align:"center",prop:"warehouseName"}}),r("el-table-column",{attrs:{label:"库区名称",width:"100px",align:"center",prop:"locationName"}}),r("el-table-column",{attrs:{label:"库位名称",align:"center",prop:"areaName"}}),r("el-table-column",{attrs:{label:"操作",width:"100px",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["view"!=e.optType?r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:edit"],expression:"['mes:wm:rtissue:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(r){return e.handleUpdate(t.row)}}},[e._v("修改")]):e._e(),"view"!=e.optType?r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:rtissue:remove"],expression:"['mes:wm:rtissue:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(r){return e.handleDelete(t.row)}}},[e._v("删除")]):e._e()]}}])})],1),r("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),r("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[r("el-row",[r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"物料编码",prop:"itemCode"}},[r("el-input",{attrs:{placeholder:"请选择退料物料"},model:{value:e.form.itemCode,callback:function(t){e.$set(e.form,"itemCode",t)},expression:"form.itemCode"}},[r("el-button",{attrs:{slot:"append",icon:"el-icon-search"},on:{click:e.handleSelectStock},slot:"append"})],1)],1),r("StockSelect",{ref:"stockSelect",attrs:{warehouseCode:e.warehouseCode},on:{onSelected:e.onStockSelected}})],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"物料名称",prop:"itemName"}},[r("el-input",{attrs:{readonly:"readonly",placeholder:"请选择退料物料"},model:{value:e.form.itemName,callback:function(t){e.$set(e.form,"itemName",t)},expression:"form.itemName"}})],1)],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"单位",prop:"unitOfMeasure"}},[r("el-input",{attrs:{readonly:"readonly",placeholder:"请输入单位"},model:{value:e.form.unitOfMeasure,callback:function(t){e.$set(e.form,"unitOfMeasure",t)},expression:"form.unitOfMeasure"}})],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:24}},[r("el-form-item",{attrs:{label:"规格型号",prop:"specification"}},[r("el-input",{attrs:{readonly:"readonly",type:"textarea",placeholder:"请输入内容"},model:{value:e.form.specification,callback:function(t){e.$set(e.form,"specification",t)},expression:"form.specification"}})],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"批次号",prop:"batchCode"}},[r("el-input",{attrs:{readonly:"readonly",placeholder:"请输入批次号"},model:{value:e.form.batchCode,callback:function(t){e.$set(e.form,"batchCode",t)},expression:"form.batchCode"}})],1)],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"退料数量",prop:"quantityRt"}},[r("el-input",{attrs:{max:e.form.quantityMax,placeholder:"请输入退料数量"},model:{value:e.form.quantityRt,callback:function(t){e.$set(e.form,"quantityRt",t)},expression:"form.quantityRt"}})],1)],1),r("el-col",{attrs:{span:8}},[r("el-form-item",{attrs:{label:"接收仓库"}},[r("el-cascader",{attrs:{options:e.warehouseOptions,props:e.warehouseProps},on:{change:e.handleWarehouseChanged},model:{value:e.warehouseInfo,callback:function(t){e.warehouseInfo=t},expression:"warehouseInfo"}})],1)],1)],1)],1),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),r("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],o=r("5530"),l=(r("d81d"),r("ac1f"),r("5319"),r("e9c4"),r("b775"));function i(e){return Object(l["a"])({url:"/mes/wm/rtissueline/list",method:"get",params:e})}function s(e){return Object(l["a"])({url:"/mes/wm/rtissueline/"+e,method:"get"})}function u(e){return Object(l["a"])({url:"/mes/wm/rtissueline",method:"post",data:e})}function c(e){return Object(l["a"])({url:"/mes/wm/rtissueline",method:"put",data:e})}function d(e){return Object(l["a"])({url:"/mes/wm/rtissueline/"+e,method:"delete"})}var m=r("4fb9"),p=r("6240"),h={name:"Rtissueline",components:{StockSelect:m["a"]},props:{rtId:null,optType:null},data:function(){return{warehouseCode:"XBK_VIRTUAL",warehouseInfo:[],warehouseOptions:[],warehouseProps:{multiple:!1,value:"pId",label:"pName"},loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,rtissuelineList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,rtId:null,materialStockId:null,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityRt:null,batchCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null},form:{},rules:{itemCode:[{required:!0,message:"物料不能为空",trigger:"blur"}],quantityRt:[{required:!0,message:"退料数量不能为空",trigger:"blur"}],warehouseName:[{required:!0,message:"接收仓库不能为空",trigger:"blur"}]}}},created:function(){this.getList(),this.getWarehouseList()},methods:{getList:function(){var e=this;this.loading=!0,i(this.queryParams).then((function(t){e.rtissuelineList=t.rows,e.total=t.total,e.loading=!1}))},getWarehouseList:function(){var e=this;Object(p["c"])().then((function(t){e.warehouseOptions=t.data,e.warehouseOptions.map((function(e){e.children.map((function(e){var t=JSON.stringify(e.children).replace(/locationId/g,"lId").replace(/areaId/g,"pId").replace(/areaName/g,"pName");e.children=JSON.parse(t)}));var t=JSON.stringify(e.children).replace(/warehouseId/g,"wId").replace(/locationId/g,"pId").replace(/locationName/g,"pName");e.children=JSON.parse(t)}));var r=JSON.stringify(e.warehouseOptions).replace(/warehouseId/g,"pId").replace(/warehouseName/g,"pName");e.warehouseOptions=JSON.parse(r)}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={lineId:null,rtId:null,materialStockId:null,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityRt:null,quantityMax:null,batchCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.lineId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加生产退料单行"},handleUpdate:function(e){var t=this;this.reset();var r=e.lineId||this.ids;s(r).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="修改生产退料单行"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.lineId?c(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,r=e.lineId||this.ids;this.$modal.confirm('是否确认删除生产退料单行编号为"'+r+'"的数据项？').then((function(){return d(r)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("wm/rtissueline/export",Object(o["a"])({},this.queryParams),"rtissueline_".concat((new Date).getTime(),".xlsx"))},handleSelectStock:function(){this.$refs.stockSelect.showFlag=!0,this.$refs.stockSelect.getList()},onStockSelected:function(e){void 0!=e&&null!=e&&(this.form.materialStockId=e.materialStockId,this.form.itemId=e.itemId,this.form.itemCode=e.itemCode,this.form.itemName=e.itemName,this.form.specification=e.specification,this.form.unitOfMeasure=e.unitOfMeasure,this.form.batchCode=e.batchCode,this.form.quantityRt=e.quantityOnhand,this.form.quantityMax=e.quantityOnhand)},handleWarehouseChanged:function(e){null!=e&&(this.form.warehouseId=e[0],this.form.locationId=e[1],this.form.areaId=e[2])}}},f=h,w=r("2877"),b=Object(w["a"])(f,a,n,!1,null,null,null);t["default"]=b.exports},f1e6:function(e,t,r){"use strict";r.d(t,"d",(function(){return n})),r.d(t,"c",(function(){return o})),r.d(t,"a",(function(){return l})),r.d(t,"e",(function(){return i})),r.d(t,"b",(function(){return s}));var a=r("b775");function n(e){return Object(a["a"])({url:"/mes/pro/workorder/list",method:"get",params:e})}function o(e){return Object(a["a"])({url:"/mes/pro/workorder/"+e,method:"get"})}function l(e){return Object(a["a"])({url:"/mes/pro/workorder",method:"post",data:e})}function i(e){return Object(a["a"])({url:"/mes/pro/workorder",method:"put",data:e})}function s(e){return Object(a["a"])({url:"/mes/pro/workorder/"+e,method:"delete"})}}}]);