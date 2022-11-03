(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0cc5ab"],{"4e26":function(e,t,r){"use strict";r.r(t);var o=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"app-container"},[r("el-row",{staticClass:"mb8",attrs:{gutter:10}},[r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:pro:workorderbom:export"],expression:"['mes:pro:workorderbom:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),r("right-toolbar",{on:{queryTable:e.getList}})],1),r("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.workorderbomList},on:{"selection-change":e.handleSelectionChange}},[r("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),r("el-table-column",{attrs:{label:"BOM物料编号",width:"120",align:"center",prop:"itemCode"}}),r("el-table-column",{attrs:{label:"BOM物料名称",width:"200",align:"center",prop:"itemName","show-overflow-tooltip":!0}}),r("el-table-column",{attrs:{label:"规格型号",align:"center",prop:"itemSpc","show-overflow-tooltip":!0}}),r("el-table-column",{attrs:{label:"单位",align:"center",prop:"unitOfMeasure"}}),r("el-table-column",{attrs:{label:"物料/产品",align:"center",prop:"itemOrProduct"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("dict-tag",{attrs:{options:e.dict.type.mes_item_product,value:t.row.itemOrProduct}})]}}])}),r("el-table-column",{attrs:{label:"预计使用量",align:"center",prop:"quantity"}}),r("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["PREPARE"==t.row.status?r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:pro:workorderbom:edit"],expression:"['mes:pro:workorderbom:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(r){return e.handleUpdate(t.row)}}},[e._v("修改")]):e._e(),"CONFIRMED"==e.workorder.status&&"PRODUCT"==t.row.itemOrProduct?r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:pro:workorder:edit"],expression:"['mes:pro:workorder:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(r){return e.handleAddSubWorkorder(t.row)}}},[e._v("生成工单")]):e._e()]}}])})],1),r("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),r("el-dialog",{attrs:{title:e.title,visible:e.open,width:"500px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[r("el-form-item",{attrs:{label:"预计使用量",prop:"quantity"}},[r("el-input",{attrs:{placeholder:"请输入预计使用量"},model:{value:e.form.quantity,callback:function(t){e.$set(e.form,"quantity",t)},expression:"form.quantity"}})],1),r("el-form-item",{attrs:{label:"备注",prop:"remark"}},[r("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),r("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},a=[],i=r("5530"),n=(r("d81d"),r("e9c4"),r("b775"));function l(e){return Object(n["a"])({url:"/mes/pro/workorderbom/list",method:"get",params:e})}function s(e){return Object(n["a"])({url:"/mes/pro/workorderbom/"+e,method:"get"})}function u(e){return Object(n["a"])({url:"/mes/pro/workorderbom",method:"post",data:e})}function m(e){return Object(n["a"])({url:"/mes/pro/workorderbom",method:"put",data:e})}var d={name:"Workorderbom",dicts:["mes_item_product"],data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,workorderbomList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,workorderId:null,itemId:null,itemCode:null,itemName:null,itemSpc:null,unitOfMeasure:null,itemOrProduct:null,quantity:null},form:{},rules:{workorderId:[{required:!0,message:"生产工单ID不能为空",trigger:"blur"}],itemId:[{required:!0,message:"BOM物料ID不能为空",trigger:"blur"}],itemCode:[{required:!0,message:"BOM物料编号不能为空",trigger:"blur"}],itemName:[{required:!0,message:"BOM物料名称不能为空",trigger:"blur"}],unitOfMeasure:[{required:!0,message:"单位不能为空",trigger:"blur"}],itemOrProduct:[{required:!0,message:"物料产品标识不能为空",trigger:"blur"}],quantity:[{required:!0,message:"预计使用量不能为空",trigger:"blur"}]}}},props:{optType:void 0,workorder:void 0},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,this.queryParams.workorderId=this.workorder.workorderId,l(this.queryParams).then((function(t){e.workorderbomList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={lineId:null,workorderId:null,itemId:null,itemCode:null,itemName:null,itemSpc:null,unitOfMeasure:null,itemOrProduct:null,quantity:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.lineId})),this.single=1!==e.length,this.multiple=!e.length},handleUpdate:function(e){var t=this;this.reset();var r=e.lineId||this.ids;s(r).then((function(e){t.form=e.data,t.open=!0,t.title="修改生产工单BOM组成"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.lineId?m(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleAddSubWorkorder:function(e){var t=JSON.parse(JSON.stringify(this.workorder));t.workorderCode=null,t.workorderName=e.itemName+"【"+e.quantity+"】"+e.unitOfMeasure,t.productId=e.itemId,t.productCode=e.itemCode,t.productName=e.itemName,t.unitOfMeasure=e.unitOfMeasure,t.quantity=e.quantity,t.status="PREPARE",this.$emit("handleAddSub",t)},handleExport:function(){this.download("mes/pro/workorderbom/export",Object(i["a"])({},this.queryParams),"workorderbom_".concat((new Date).getTime(),".xlsx"))}}},c=d,p=r("2877"),h=Object(p["a"])(c,o,a,!1,null,null,null);t["default"]=h.exports}}]);