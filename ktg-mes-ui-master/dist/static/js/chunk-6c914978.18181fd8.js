(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-6c914978"],{"4a8f":function(e,t,a){"use strict";a.d(t,"d",(function(){return n})),a.d(t,"e",(function(){return l})),a.d(t,"c",(function(){return o})),a.d(t,"f",(function(){return i})),a.d(t,"a",(function(){return s})),a.d(t,"g",(function(){return u})),a.d(t,"b",(function(){return c}));var r=a("b775");function n(e){return Object(r["a"])({url:"/mes/md/itemtype/list",method:"get",params:e})}function l(e){return Object(r["a"])({url:"/mes/md/itemtype/list/exclude/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"get"})}function i(){return Object(r["a"])({url:"/mes/md/itemtype/treeselect",method:"get"})}function s(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"delete"})}},"7dd7":function(e,t,a){"use strict";a.d(t,"a",(function(){return n}));var r=a("b775");function n(e){return Object(r["a"])({url:"/mes/wm/wmstock/list",method:"get",params:e})}},"946d":function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-row",{attrs:{gutter:20}},[a("el-col",{attrs:{span:4,xs:24}},[a("div",{staticClass:"head-container"},[a("el-input",{staticStyle:{"margin-bottom":"20px"},attrs:{placeholder:"请输入分类名称",clearable:"",size:"small","prefix-icon":"el-icon-search"},model:{value:e.itemTypeName,callback:function(t){e.itemTypeName=t},expression:"itemTypeName"}})],1),a("div",{staticClass:"head-container"},[a("el-tree",{ref:"tree",attrs:{data:e.itemTypeOptions,props:e.defaultProps,"expand-on-click-node":!1,"filter-node-method":e.filterNode,"default-expand-all":""},on:{"node-click":e.handleNodeClick}})],1)]),a("el-col",{attrs:{span:20,xs:24}},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"100px"}},[a("el-form-item",{attrs:{label:"产品物料编码",prop:"itemCode"}},[a("el-input",{attrs:{placeholder:"请输入产品物料编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.itemCode,callback:function(t){e.$set(e.queryParams,"itemCode",t)},expression:"queryParams.itemCode"}})],1),a("el-form-item",{attrs:{label:"产品物料名称",prop:"itemName"}},[a("el-input",{attrs:{placeholder:"请输入产品物料名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.itemName,callback:function(t){e.$set(e.queryParams,"itemName",t)},expression:"queryParams.itemName"}})],1),a("el-form-item",{attrs:{label:"入库批次号",prop:"batchCode"}},[a("el-input",{attrs:{placeholder:"请输入入库批次号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.batchCode,callback:function(t){e.$set(e.queryParams,"batchCode",t)},expression:"queryParams.batchCode"}})],1),a("el-form-item",{attrs:{label:"仓库名称",prop:"warehouseName"}},[a("el-input",{attrs:{placeholder:"请输入仓库名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.warehouseName,callback:function(t){e.$set(e.queryParams,"warehouseName",t)},expression:"queryParams.warehouseName"}})],1),a("el-form-item",{attrs:{label:"供应商编号",prop:"vendorCode"}},[a("el-input",{attrs:{placeholder:"请输入供应商编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.vendorCode,callback:function(t){e.$set(e.queryParams,"vendorCode",t)},expression:"queryParams.vendorCode"}})],1),a("el-form-item",{attrs:{label:"供应商名称",prop:"vendorName"}},[a("el-input",{attrs:{placeholder:"请输入供应商名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.vendorName,callback:function(t){e.$set(e.queryParams,"vendorName",t)},expression:"queryParams.vendorName"}})],1),a("el-form-item",{attrs:{label:"库存有效期",prop:"expireDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择库存有效期"},model:{value:e.queryParams.expireDate,callback:function(t){e.$set(e.queryParams,"expireDate",t)},expression:"queryParams.expireDate"}})],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["wm:wmstock:export"],expression:"['wm:wmstock:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.wmstockList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"产品物料编码",width:"120px",align:"center",prop:"itemCode"}}),a("el-table-column",{attrs:{label:"产品物料名称",width:"150px",align:"center",prop:"itemName","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"规格型号",align:"center",prop:"specification","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"在库数量",align:"center",prop:"quantityOnhand"}}),a("el-table-column",{attrs:{label:"单位",align:"center",prop:"unitOfMeasure"}}),a("el-table-column",{attrs:{label:"入库批次号",width:"100px",align:"center",prop:"batchCode","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"仓库",align:"center",prop:"warehouseName"}}),a("el-table-column",{attrs:{label:"库区",align:"center",prop:"locationName"}}),a("el-table-column",{attrs:{label:"库位",align:"center",prop:"areaName"}}),a("el-table-column",{attrs:{label:"供应商编号",width:"100px",align:"center",prop:"vendorCode"}}),a("el-table-column",{attrs:{label:"供应商名称",width:"120px",align:"center",prop:"vendorName","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"供应商简称",width:"100px",align:"center",prop:"vendorNick"}}),a("el-table-column",{attrs:{label:"生产工单",width:"100px",prop:"workorderCode"}}),a("el-table-column",{attrs:{label:"入库日期",align:"center",prop:"recptDate",width:"120"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(e.parseTime(t.row.recptDate,"{y}-{m}-{d}")))])]}}])}),a("el-table-column",{attrs:{label:"库存有效期",align:"center",prop:"expireDate",width:"120"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(e.parseTime(t.row.expireDate,"{y}-{m}-{d}")))])]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}})],1)],1)],1)},n=[],l=a("5530"),o=(a("d81d"),a("7dd7")),i=a("4a8f"),s=a("ca17"),u=a.n(s),c=(a("542c"),{name:"Wmstock",components:{Treeselect:u.a},data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,itemTypeOptions:void 0,wmstockList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,itemTypeId:null,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,batchCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,vendorId:null,vendorCode:null,vendorName:null,vendorNick:null,quantityOnhand:null,workorderCode:null,expireDate:null},form:{}}},created:function(){this.getList(),this.getTreeselect()},methods:{getList:function(){var e=this;this.loading=!0,Object(o["a"])(this.queryParams).then((function(t){e.wmstockList=t.rows,e.total=t.total,e.loading=!1}))},getTreeselect:function(){var e=this;Object(i["f"])().then((function(t){e.itemTypeOptions=t.data}))},filterNode:function(e,t){return!e||-1!==t.label.indexOf(e)},handleNodeClick:function(e){this.queryParams.itemTypeId=e.id,this.handleQuery()},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.materialStockId})),this.single=1!==e.length,this.multiple=!e.length},handleExport:function(){this.download("mes/wm/wmstock/export",Object(l["a"])({},this.queryParams),"wmstock_".concat((new Date).getTime(),".xlsx"))}}}),m=c,d=a("2877"),p=Object(d["a"])(m,r,n,!1,null,null,null);t["default"]=p.exports}}]);