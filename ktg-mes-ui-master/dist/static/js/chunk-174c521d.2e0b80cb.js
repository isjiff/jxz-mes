(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-174c521d","chunk-4fd0fb81"],{1315:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},["view"!=e.optType?a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:add"],expression:"['mes:wm:issueheader:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:edit"],expression:"['mes:wm:issueheader:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:remove"],expression:"['mes:wm:issueheader:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1):e._e(),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.issuelineList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"产品物料编码",width:"120px",align:"center",prop:"itemCode"}}),a("el-table-column",{attrs:{label:"产品物料名称",width:"120px",align:"center",prop:"itemName","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"规格型号",align:"center",prop:"specification","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"单位",align:"center",prop:"unitOfMeasure"}}),a("el-table-column",{attrs:{label:"领料数量",align:"center",prop:"quantityIssued"}}),a("el-table-column",{attrs:{label:"批次号",align:"center",prop:"batchCode"}}),a("el-table-column",{attrs:{label:"仓库名称",align:"center",prop:"warehouseName"}}),a("el-table-column",{attrs:{label:"库区名称",align:"center",prop:"locationName"}}),a("el-table-column",{attrs:{label:"库位名称",align:"center",prop:"areaName"}}),a("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark","show-overflow-tooltip":!0}}),"view"!=e.optType?a("el-table-column",{attrs:{label:"操作",align:"center",width:"100px","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["view"!=e.optType?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:edit"],expression:"['mes:wm:issueheader:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]):e._e(),"view"!=e.optType?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:remove"],expression:"['mes:wm:issueheader:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")]):e._e()]}}],null,!1,2750210570)}):e._e()],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"产品物料编码",prop:"itemCode"}},[a("el-input",{attrs:{readonly:"readonly",placeholder:"请选择产品物料编码"},model:{value:e.form.itemCode,callback:function(t){e.$set(e.form,"itemCode",t)},expression:"form.itemCode"}},[a("el-button",{attrs:{slot:"append",icon:"el-icon-search"},on:{click:e.handleSelectStock},slot:"append"})],1)],1),a("StockSelect",{ref:"stockSelect",attrs:{batchCode:e.batchCdoe,vendorId:e.vendorId},on:{onSelected:e.onStockSelected}})],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"产品物料名称",prop:"itemName"}},[a("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.itemName,callback:function(t){e.$set(e.form,"itemName",t)},expression:"form.itemName"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"领料数量",prop:"quantityIssued"}},[a("el-input-number",{attrs:{max:e.form.quantityMax,placeholder:"请输入领料数量"},model:{value:e.form.quantityIssued,callback:function(t){e.$set(e.form,"quantityIssued",t)},expression:"form.quantityIssued"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"规格型号",prop:"specification"}},[a("el-input",{attrs:{readonly:"readonly",type:"textarea"},model:{value:e.form.specification,callback:function(t){e.$set(e.form,"specification",t)},expression:"form.specification"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"单位",prop:"unitOfMeasure"}},[a("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.unitOfMeasure,callback:function(t){e.$set(e.form,"unitOfMeasure",t)},expression:"form.unitOfMeasure"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"批次号",prop:"batchCode"}},[a("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.batchCode,callback:function(t){e.$set(e.form,"batchCode",t)},expression:"form.batchCode"}})],1)],1),a("el-col",{attrs:{span:8}})],1),a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"仓库",prop:"warehouseName"}},[a("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.warehouseName,callback:function(t){e.$set(e.form,"warehouseName",t)},expression:"form.warehouseName"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"库区",prop:"locationName"}},[a("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.locationName,callback:function(t){e.$set(e.form,"locationName",t)},expression:"form.locationName"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"库位",prop:"areaName"}},[a("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.areaName,callback:function(t){e.$set(e.form,"areaName",t)},expression:"form.areaName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"备注",prop:"remark"}},[a("el-input",{attrs:{type:"textarea"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},o=[],n=a("5530"),s=(a("d81d"),a("b775"));function l(e){return Object(s["a"])({url:"/mes/wm/issueline/list",method:"get",params:e})}function i(e){return Object(s["a"])({url:"/mes/wm/issueline/"+e,method:"get"})}function u(e){return Object(s["a"])({url:"/mes/wm/issueline",method:"post",data:e})}function c(e){return Object(s["a"])({url:"/mes/wm/issueline",method:"put",data:e})}function m(e){return Object(s["a"])({url:"/mes/wm/issueline/"+e,method:"delete"})}var d=a("4fb9"),p={name:"Issueline",components:{StockSelect:d["a"]},props:{optType:null,issueId:null,warehouseId:null,locationId:null,areaId:null},data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,issuelineList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,issueId:this.issueId,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityIssued:null,batchCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null},form:{},rules:{itemId:[{required:!0,message:"产品物料不能为空",trigger:"blur"}],quantityIssued:[{required:!0,message:"领料数量不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,l(this.queryParams).then((function(t){e.issuelineList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={lineId:null,issueId:this.issueId,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityIssued:null,batchCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.lineId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加生产领料单行"},handleUpdate:function(e){var t=this;this.reset();var a=e.lineId||this.ids;i(a).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="修改生产领料单行"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.lineId?c(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,a=e.lineId||this.ids;this.$modal.confirm('是否确认删除生产领料单行编号为"'+a+'"的数据项？').then((function(){return m(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleSelectStock:function(){this.$refs.stockSelect.showFlag=!0,this.$refs.stockSelect.getList()},onStockSelected:function(e){void 0!=e&&null!=e&&(this.form.materialStockId=e.materialStockId,this.form.itemId=e.itemId,this.form.itemCode=e.itemCode,this.form.itemName=e.itemName,this.form.specification=e.specification,this.form.unitOfMeasure=e.unitOfMeasure,this.form.batchCode=e.batchCode,this.form.warehouseId=e.warehouseId,this.form.warehouseCode=e.warehouseCode,this.form.warehouseName=e.warehouseName,this.form.locationId=e.locationId,this.form.locationCode=e.locationCode,this.form.locationName=e.locationName,this.form.areaId=e.areaId,this.form.areaCode=e.areaCode,this.form.areaName=e.areaName,this.form.quantityIssued=e.quantityOnhand,this.form.quantityMax=e.quantityOnhand)},handleExport:function(){this.download("wm/issueline/export",Object(n["a"])({},this.queryParams),"issueline_".concat((new Date).getTime(),".xlsx"))}}},h=p,f=a("2877"),w=Object(f["a"])(h,r,o,!1,null,null,null);t["default"]=w.exports},"287e":function(e,t,a){"use strict";a.d(t,"e",(function(){return o})),a.d(t,"d",(function(){return n})),a.d(t,"c",(function(){return s})),a.d(t,"a",(function(){return l})),a.d(t,"f",(function(){return i})),a.d(t,"b",(function(){return u}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/pro/process/list",method:"get",params:e})}function n(){return Object(r["a"])({url:"/mes/pro/process/listAll",method:"get"})}function s(e){return Object(r["a"])({url:"/mes/pro/process/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/mes/pro/process",method:"post",data:e})}function i(e){return Object(r["a"])({url:"/mes/pro/process",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/mes/pro/process/"+e,method:"delete"})}},"4a8f":function(e,t,a){"use strict";a.d(t,"d",(function(){return o})),a.d(t,"e",(function(){return n})),a.d(t,"c",(function(){return s})),a.d(t,"f",(function(){return l})),a.d(t,"a",(function(){return i})),a.d(t,"g",(function(){return u})),a.d(t,"b",(function(){return c}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/md/itemtype/list",method:"get",params:e})}function n(e){return Object(r["a"])({url:"/mes/md/itemtype/list/exclude/"+e,method:"get"})}function s(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"get"})}function l(){return Object(r["a"])({url:"/mes/md/itemtype/treeselect",method:"get"})}function i(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"delete"})}},6240:function(e,t,a){"use strict";a.d(t,"e",(function(){return o})),a.d(t,"c",(function(){return n})),a.d(t,"d",(function(){return s})),a.d(t,"a",(function(){return l})),a.d(t,"f",(function(){return i})),a.d(t,"b",(function(){return u}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/wm/warehouse/list",method:"get",params:e})}function n(){return Object(r["a"])({url:"/mes/wm/warehouse/getTreeList",method:"get"})}function s(e){return Object(r["a"])({url:"/mes/wm/warehouse/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/mes/wm/warehouse",method:"post",data:e})}function i(e){return Object(r["a"])({url:"/mes/wm/warehouse",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/mes/wm/warehouse/"+e,method:"delete"})}},"7dd7":function(e,t,a){"use strict";a.d(t,"a",(function(){return o}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/wm/wmstock/list",method:"get",params:e})}},8171:function(e,t,a){"use strict";a.d(t,"c",(function(){return o})),a.d(t,"e",(function(){return n})),a.d(t,"d",(function(){return s})),a.d(t,"a",(function(){return l})),a.d(t,"g",(function(){return i})),a.d(t,"b",(function(){return u})),a.d(t,"f",(function(){return c}));var r=a("b775");function o(e){return Object(r["a"])({url:"/system/autocode/get/"+e,method:"get"})}function n(e){return Object(r["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function s(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/system/autocode/rule",method:"post",data:e})}function i(e){return Object(r["a"])({url:"/system/autocode/rule",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function c(){return Object(r["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},"8a40":function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"100px"}},[a("el-form-item",{attrs:{label:"领料单编号",prop:"issueCode"}},[a("el-input",{attrs:{placeholder:"请输入领料单编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.issueCode,callback:function(t){e.$set(e.queryParams,"issueCode",t)},expression:"queryParams.issueCode"}})],1),a("el-form-item",{attrs:{label:"领料单名称",prop:"issueName"}},[a("el-input",{attrs:{placeholder:"请输入领料单名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.issueName,callback:function(t){e.$set(e.queryParams,"issueName",t)},expression:"queryParams.issueName"}})],1),a("el-form-item",{attrs:{label:"仓库名称",prop:"warehouseName"}},[a("el-input",{attrs:{placeholder:"请输入仓库名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.warehouseName,callback:function(t){e.$set(e.queryParams,"warehouseName",t)},expression:"queryParams.warehouseName"}})],1),a("el-form-item",{attrs:{label:"领料日期",prop:"issueDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择领料日期"},model:{value:e.queryParams.issueDate,callback:function(t){e.$set(e.queryParams,"issueDate",t)},expression:"queryParams.issueDate"}})],1),a("el-form-item",{attrs:{label:"单据状态",prop:"status"}},[a("el-select",{attrs:{placeholder:"请选择单据状态",clearable:""},model:{value:e.queryParams.status,callback:function(t){e.$set(e.queryParams,"status",t)},expression:"queryParams.status"}},e._l(e.dict.type.mes_order_status,(function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:add"],expression:"['mes:wm:issueheader:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:edit"],expression:"['mes:wm:issueheader:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:remove"],expression:"['mes:wm:issueheader:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:export"],expression:"['mes:wm:issueheader:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.issueheaderList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"领料单编号",align:"center",width:"150px",prop:"issueCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:query"],expression:"['mes:wm:issueheader:query']"}],attrs:{type:"text"},on:{click:function(a){return e.handleView(t.row)}}},[e._v(e._s(t.row.issueCode))])]}}])}),a("el-table-column",{attrs:{label:"领料单名称",align:"center",prop:"issueName","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"仓库名称",align:"center",prop:"warehouseName"}}),a("el-table-column",{attrs:{label:"库区名称",align:"center",prop:"locationName"}}),a("el-table-column",{attrs:{label:"库位名称",align:"center",prop:"areaName"}}),a("el-table-column",{attrs:{label:"领料日期",align:"center",prop:"issueDate",width:"180"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(e.parseTime(t.row.issueDate,"{y}-{m}-{d}")))])]}}])}),a("el-table-column",{attrs:{label:"单据状态",align:"center",prop:"status"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_order_status,value:t.row.status}})]}}])}),a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["PREPARE"==t.row.status?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:edit"],expression:"['mes:wm:issueheader:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleExecute(t.row)}}},[e._v("执行领出")]):e._e(),"PREPARE"==t.row.status?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:edit"],expression:"['mes:wm:issueheader:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]):e._e(),"PREPARE"==t.row.status?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:issueheader:remove"],expression:"['mes:wm:issueheader:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")]):e._e()]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"领料单编号",prop:"issueCode"}},[a("el-input",{attrs:{placeholder:"请输入领料单编号"},model:{value:e.form.issueCode,callback:function(t){e.$set(e.form,"issueCode",t)},expression:"form.issueCode"}})],1)],1),a("el-col",{attrs:{span:4}},[a("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType&&"PREPARE"==e.form.status?a("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"领料单名称",prop:"issueName"}},[a("el-input",{attrs:{placeholder:"请输入领料单名称"},model:{value:e.form.issueName,callback:function(t){e.$set(e.form,"issueName",t)},expression:"form.issueName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"领料日期",prop:"issueDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择领料日期"},model:{value:e.form.issueDate,callback:function(t){e.$set(e.form,"issueDate",t)},expression:"form.issueDate"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"领料仓库"}},[a("el-cascader",{attrs:{options:e.warehouseOptions,props:e.warehouseProps},on:{change:e.handleWarehouseChanged},model:{value:e.warehouseInfo,callback:function(t){e.warehouseInfo=t},expression:"warehouseInfo"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"单据状态",prop:"status"}},[a("el-select",{attrs:{disabled:""},model:{value:e.form.status,callback:function(t){e.$set(e.form,"status",t)},expression:"form.status"}},e._l(e.dict.type.mes_order_status,(function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"生产工单",prop:"workorderCode"}},[a("el-input",{attrs:{placeholder:"请选择生产工单"},model:{value:e.form.workorderCode,callback:function(t){e.$set(e.form,"workorderCode",t)},expression:"form.workorderCode"}},[a("el-button",{attrs:{slot:"append",icon:"el-icon-search"},on:{click:e.handleWorkorderSelect},slot:"append"})],1)],1),a("WorkorderSelect",{ref:"woSelect",on:{onSelected:e.onWorkorderSelected}})],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"客户编号"}},[a("el-input",{attrs:{placeholder:"请选择生产工单"},model:{value:e.form.clientCode,callback:function(t){e.$set(e.form,"clientCode",t)},expression:"form.clientCode"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"客户名称"}},[a("el-input",{attrs:{placeholder:"请选择生产工单"},model:{value:e.form.clientName,callback:function(t){e.$set(e.form,"clientName",t)},expression:"form.clientName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"备注",prop:"remark"}},[a("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),null!=e.form.issueId?a("el-divider",{attrs:{"content-position":"center"}},[e._v("物料信息")]):e._e(),null!=e.form.issueId?a("el-card",{staticClass:"box-card",attrs:{shadow:"always"}},[a("Issueline",{ref:"line",attrs:{issueId:e.form.issueId,warehouseId:e.form.warehouseId,locationId:e.form.locationId,areaId:e.form.areaId,optType:e.optType}})],1):e._e(),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType||"PREPARE"!=e.form.status?a("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):e._e(),"PREPARE"==e.form.status&&"view"!=e.optType?a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]):e._e(),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},o=[],n=a("5530"),s=(a("d81d"),a("ac1f"),a("5319"),a("e9c4"),a("b775"));function l(e){return Object(s["a"])({url:"/mes/wm/issueheader/list",method:"get",params:e})}function i(e){return Object(s["a"])({url:"/mes/wm/issueheader/"+e,method:"get"})}function u(e){return Object(s["a"])({url:"/mes/wm/issueheader",method:"post",data:e})}function c(e){return Object(s["a"])({url:"/mes/wm/issueheader",method:"put",data:e})}function m(e){return Object(s["a"])({url:"/mes/wm/issueheader/"+e,method:"delete"})}function d(e){return Object(s["a"])({url:"/mes/wm/issueheader/"+e,method:"put"})}var p=a("e820"),h=a("373b"),f=a("6240"),w=a("8171"),b=a("1315"),g={name:"Issueheader",dicts:["mes_order_status"],components:{Issueline:b["default"],WorkstationSelect:p["a"],WorkorderSelect:h["a"]},data:function(){return{autoGenFlag:!1,optType:void 0,warehouseInfo:[],warehouseOptions:[],warehouseProps:{multiple:!1,value:"pId",label:"pName"},loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,issueheaderList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,issueCode:null,issueName:null,workstationId:null,workstationCode:null,workorderId:null,workorderCode:null,taskId:null,taskCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,issueDate:null,status:null},form:{},rules:{issueCode:[{required:!0,message:"领料单编号不能为空",trigger:"blur"}],issueName:[{required:!0,message:"领料单名称不能为空",trigger:"blur"}],issueDate:[{required:!0,message:"请指定领出日期",trigger:"blur"}]}}},created:function(){this.getList(),this.getWarehouseList()},methods:{getList:function(){var e=this;this.loading=!0,l(this.queryParams).then((function(t){e.issueheaderList=t.rows,e.total=t.total,e.loading=!1}))},getWarehouseList:function(){var e=this;Object(f["c"])().then((function(t){e.warehouseOptions=t.data,e.warehouseOptions.map((function(e){e.children.map((function(e){var t=JSON.stringify(e.children).replace(/locationId/g,"lId").replace(/areaId/g,"pId").replace(/areaName/g,"pName");e.children=JSON.parse(t)}));var t=JSON.stringify(e.children).replace(/warehouseId/g,"wId").replace(/locationId/g,"pId").replace(/locationName/g,"pName");e.children=JSON.parse(t)}));var a=JSON.stringify(e.warehouseOptions).replace(/warehouseId/g,"pId").replace(/warehouseName/g,"pName");e.warehouseOptions=JSON.parse(a)}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={issueId:null,issueCode:null,issueName:null,workstationId:null,workstationCode:null,workstationName:null,workorderId:null,workorderCode:null,workorderName:null,taskId:null,taskCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,issueDate:new Date,status:"PREPARE",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.issueId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加生产领料单",this.optType="add"},handleUpdate:function(e){var t=this;this.reset();var a=e.issueId||this.ids;i(a).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="修改生产领料单",t.optType="edit"}))},handleView:function(e){var t=this;this.reset();var a=e.issueId;i(a).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="查看领料单信息",t.optType="view"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.issueId?c(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleExecute:function(e){var t=this,a=e.issueId||this.ids;this.$modal.confirm("确认执行出库？").then((function(){return d(a)})).then((function(){t.getList(),t.$modal.msgSuccess("出库成功")})).catch((function(){}))},handleDelete:function(e){var t=this,a=e.issueId||this.ids;this.$modal.confirm('是否确认删除生产领料单头编号为"'+a+'"的数据项？').then((function(){return m(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("wm/issueheader/export",Object(n["a"])({},this.queryParams),"issueheader_".concat((new Date).getTime(),".xlsx"))},handleWarehouseChanged:function(e){null!=e&&(this.form.warehouseId=e[0],this.form.locationId=e[1],this.form.areaId=e[2])},handleWorkstationSelect:function(){this.$refs.wsSelect.showFlag=!0},onWorkstationSelected:function(e){void 0!=e&&null!=e&&(this.form.workstationId=e.workstationId,this.form.workstationCode=e.workstationCode,this.form.workstationName=e.workstationName)},handleWorkorderSelect:function(){this.$refs.woSelect.showFlag=!0},onWorkorderSelected:function(e){void 0!=e&&null!=e&&(this.form.workorderId=e.workorderId,this.form.workorderCode=e.workorderCode,this.form.workorderName=e.workorderName,this.form.clientCode=e.clientCode,this.form.clientName=e.clientName)},handleAutoGenChange:function(e){var t=this;e?Object(w["c"])("ISSUE_CODE").then((function(e){t.form.issueCode=e})):this.form.issueCode=null}}},v=g,y=a("2877"),k=Object(y["a"])(v,r,o,!1,null,null,null);t["default"]=k.exports},dfb9:function(e,t,a){"use strict";a.d(t,"e",(function(){return o})),a.d(t,"d",(function(){return n})),a.d(t,"c",(function(){return s})),a.d(t,"a",(function(){return l})),a.d(t,"f",(function(){return i})),a.d(t,"b",(function(){return u}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/md/workshop/list",method:"get",params:e})}function n(){return Object(r["a"])({url:"/mes/md/workshop/listAll",method:"get"})}function s(e){return Object(r["a"])({url:"/mes/md/workshop/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/mes/md/workshop",method:"post",data:e})}function i(e){return Object(r["a"])({url:"/mes/md/workshop",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/mes/md/workshop/"+e,method:"delete"})}},f1e6:function(e,t,a){"use strict";a.d(t,"d",(function(){return o})),a.d(t,"c",(function(){return n})),a.d(t,"a",(function(){return s})),a.d(t,"e",(function(){return l})),a.d(t,"b",(function(){return i}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/pro/workorder/list",method:"get",params:e})}function n(e){return Object(r["a"])({url:"/mes/pro/workorder/"+e,method:"get"})}function s(e){return Object(r["a"])({url:"/mes/pro/workorder",method:"post",data:e})}function l(e){return Object(r["a"])({url:"/mes/pro/workorder",method:"put",data:e})}function i(e){return Object(r["a"])({url:"/mes/pro/workorder/"+e,method:"delete"})}},f356:function(e,t,a){"use strict";a.d(t,"d",(function(){return o})),a.d(t,"c",(function(){return n})),a.d(t,"a",(function(){return s})),a.d(t,"e",(function(){return l})),a.d(t,"b",(function(){return i}));var r=a("b775");function o(e){return Object(r["a"])({url:"/mes/md/workstation/list",method:"get",params:e})}function n(e){return Object(r["a"])({url:"/mes/md/workstation/"+e,method:"get"})}function s(e){return Object(r["a"])({url:"/mes/md/workstation",method:"post",data:e})}function l(e){return Object(r["a"])({url:"/mes/md/workstation",method:"put",data:e})}function i(e){return Object(r["a"])({url:"/mes/md/workstation/"+e,method:"delete"})}}}]);