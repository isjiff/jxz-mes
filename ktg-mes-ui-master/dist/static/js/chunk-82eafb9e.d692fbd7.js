(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-82eafb9e"],{"4a8f":function(e,t,n){"use strict";n.d(t,"d",(function(){return a})),n.d(t,"e",(function(){return o})),n.d(t,"c",(function(){return i})),n.d(t,"f",(function(){return l})),n.d(t,"a",(function(){return u})),n.d(t,"g",(function(){return s})),n.d(t,"b",(function(){return c}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/md/itemtype/list",method:"get",params:e})}function o(e){return Object(r["a"])({url:"/mes/md/itemtype/list/exclude/"+e,method:"get"})}function i(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"get"})}function l(){return Object(r["a"])({url:"/mes/md/itemtype/treeselect",method:"get"})}function u(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"delete"})}},5755:function(e,t,n){"use strict";n.d(t,"d",(function(){return a})),n.d(t,"c",(function(){return o})),n.d(t,"a",(function(){return i})),n.d(t,"e",(function(){return l})),n.d(t,"b",(function(){return u}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/md/mditem/list",method:"get",params:e})}function o(e){return Object(r["a"])({url:"/mes/md/mditem/"+e,method:"get"})}function i(e){return Object(r["a"])({url:"/mes/md/mditem",method:"post",data:e})}function l(e){return Object(r["a"])({url:"/mes/md/mditem",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/mes/md/mditem/"+e,method:"delete"})}},6240:function(e,t,n){"use strict";n.d(t,"e",(function(){return a})),n.d(t,"c",(function(){return o})),n.d(t,"d",(function(){return i})),n.d(t,"a",(function(){return l})),n.d(t,"f",(function(){return u})),n.d(t,"b",(function(){return s}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/wm/warehouse/list",method:"get",params:e})}function o(){return Object(r["a"])({url:"/mes/wm/warehouse/getTreeList",method:"get"})}function i(e){return Object(r["a"])({url:"/mes/wm/warehouse/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/mes/wm/warehouse",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/mes/wm/warehouse",method:"put",data:e})}function s(e){return Object(r["a"])({url:"/mes/wm/warehouse/"+e,method:"delete"})}},"725a":function(e,t,n){"use strict";n.r(t);var r=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"app-container"},["view"!=e.optType?n("el-row",{staticClass:"mb8",attrs:{gutter:10}},[n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:itemrecptline:add"],expression:"['mes:wm:itemrecptline:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:itemrecptline:remove"],expression:"['mes:wm:itemrecptline:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),n("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1):e._e(),n("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.itemrecptlineList},on:{"selection-change":e.handleSelectionChange}},[n("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),n("el-table-column",{attrs:{label:"物料编码",align:"center",width:"120px",prop:"itemCode"}}),n("el-table-column",{attrs:{label:"物料名称",align:"center",prop:"itemName","show-overflow-tooltip":!0}}),n("el-table-column",{attrs:{label:"规格型号",align:"center",prop:"specification","show-overflow-tooltip":!0}}),n("el-table-column",{attrs:{label:"单位",align:"center",prop:"unitOfMeasure"}}),n("el-table-column",{attrs:{label:"入库数量",align:"center",prop:"quantityRecived"}}),n("el-table-column",{attrs:{label:"批次号",align:"center",prop:"batchCode"}}),n("el-table-column",{attrs:{label:"仓库",align:"center",prop:"warehouseName"}}),n("el-table-column",{attrs:{label:"库区",align:"center",prop:"locationName"}}),n("el-table-column",{attrs:{label:"库位",align:"center",prop:"areaName"}}),n("el-table-column",{attrs:{label:"有效期",align:"center",prop:"expireDate",width:"180"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(e.parseTime(t.row.expireDate,"{y}-{m}-{d}")))])]}}])}),"view"!=e.optType?n("el-table-column",{attrs:{label:"操作",align:"center",width:"100px","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:itemrecptline:edit"],expression:"['mes:wm:itemrecptline:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(n){return e.handleUpdate(t.row)}}},[e._v("修改")]),n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:wm:itemrecptline:remove"],expression:"['mes:wm:itemrecptline:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(n){return e.handleDelete(t.row)}}},[e._v("删除")])]}}],null,!1,3399195466)}):e._e()],1),n("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),n("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[n("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[n("el-row",[n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"物料编码",prop:"itemCode"}},[n("el-input",{attrs:{readonly:"readonly",placeholder:"请选择物料编码"},model:{value:e.form.itemCode,callback:function(t){e.$set(e.form,"itemCode",t)},expression:"form.itemCode"}},[n("el-button",{attrs:{slot:"append",icon:"el-icon-search"},on:{click:e.handleSelectProduct},slot:"append"})],1)],1),n("ItemSelect",{ref:"itemSelect",on:{onSelected:e.onItemSelected}})],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"物料名称",prop:"itemName"}},[n("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.itemName,callback:function(t){e.$set(e.form,"itemName",t)},expression:"form.itemName"}})],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"单位",prop:"unitOfMeasure"}},[n("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.unitOfMeasure,callback:function(t){e.$set(e.form,"unitOfMeasure",t)},expression:"form.unitOfMeasure"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"入库数量",prop:"quantityRecived"}},[n("el-input-number",{attrs:{min:.01,placeholder:"请输入入库数量"},model:{value:e.form.quantityRecived,callback:function(t){e.$set(e.form,"quantityRecived",t)},expression:"form.quantityRecived"}})],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"入库批次号",prop:"batchCode"}},[n("el-input",{attrs:{placeholder:"请输入入库批次号"},model:{value:e.form.batchCode,callback:function(t){e.$set(e.form,"batchCode",t)},expression:"form.batchCode"}})],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"有效期",prop:"expireDate"}},[n("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择有效期"},model:{value:e.form.expireDate,callback:function(t){e.$set(e.form,"expireDate",t)},expression:"form.expireDate"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:12}},[n("el-form-item",{attrs:{label:"入库仓库"}},[n("el-cascader",{attrs:{options:e.warehouseOptions,props:e.warehouseProps},on:{change:e.handleWarehouseChanged},model:{value:e.warehouseInfo,callback:function(t){e.warehouseInfo=t},expression:"warehouseInfo"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:24}},[n("el-form-item",{attrs:{label:"备注",prop:"remark"}},[n("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),n("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[n("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),n("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},a=[],o=n("5530"),i=(n("d81d"),n("ac1f"),n("5319"),n("e9c4"),n("b775"));function l(e){return Object(i["a"])({url:"/mes/wm/itemrecptline/list",method:"get",params:e})}function u(e){return Object(i["a"])({url:"/mes/wm/itemrecptline/"+e,method:"get"})}function s(e){return Object(i["a"])({url:"/mes/wm/itemrecptline",method:"post",data:e})}function c(e){return Object(i["a"])({url:"/mes/wm/itemrecptline",method:"put",data:e})}function m(e){return Object(i["a"])({url:"/mes/wm/itemrecptline/"+e,method:"delete"})}var d=n("25fa"),p=n("6240"),h={name:"Itemrecptline",components:{ItemSelect:d["a"]},props:{recptId:null,optType:null,warehouseId:null,locationId:null,areaId:null},data:function(){return{warehouseInfo:[],warehouseOptions:[],warehouseProps:{multiple:!1,value:"pId",label:"pName"},loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,itemrecptlineList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,recptId:this.recptId,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityRecived:null,batchCode:null,warehouseId:null,warehouseCode:null,warehouseName:null,locationId:null,locationCode:null,locationName:null,areaId:null,areaCode:null,areaName:null,expireDate:null},form:{},rules:{itemId:[{required:!0,message:"产品物料ID不能为空",trigger:"blur"}],quantityRecived:[{required:!0,message:"入库数量不能为空",trigger:"blur"}],warehouseId:[{required:!0,message:"请选择入库的仓库"}]}}},created:function(){this.getList(),this.getWarehouseList()},methods:{getList:function(){var e=this;this.loading=!0,l(this.queryParams).then((function(t){e.itemrecptlineList=t.rows,e.total=t.total,e.loading=!1}))},getWarehouseList:function(){var e=this;Object(p["c"])().then((function(t){e.warehouseOptions=t.data,e.warehouseOptions.map((function(e){e.children.map((function(e){var t=JSON.stringify(e.children).replace(/locationId/g,"lId").replace(/areaId/g,"pId").replace(/areaName/g,"pName");e.children=JSON.parse(t)}));var t=JSON.stringify(e.children).replace(/warehouseId/g,"wId").replace(/locationId/g,"pId").replace(/locationName/g,"pName");e.children=JSON.parse(t)}));var n=JSON.stringify(e.warehouseOptions).replace(/warehouseId/g,"pId").replace(/warehouseName/g,"pName");e.warehouseOptions=JSON.parse(n)}))},handleWarehouseChanged:function(e){null!=e&&(this.form.warehouseId=e[0],this.form.locationId=e[1],this.form.areaId=e[2])},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={lineId:null,recptId:this.recptId,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityRecived:1,batchCode:null,warehouseId:this.warehouseId,warehouseCode:null,warehouseName:null,locationId:this.locationId,locationCode:null,locationName:null,areaId:this.areaId,areaCode:null,areaName:null,expireDate:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.lineId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.warehouseInfo=[],null!=this.warehouseId&&(this.warehouseInfo[0]=this.warehouseId,this.warehouseInfo[1]=this.locationId,this.warehouseInfo[2]=this.areaId),this.open=!0,this.title="添加物料入库单行"},handleUpdate:function(e){var t=this;this.reset();var n=e.lineId||this.ids;u(n).then((function(e){t.form=e.data,t.warehouseInfo[0]=e.data.warehouseId,t.warehouseInfo[1]=e.data.locationId,t.warehouseInfo[2]=e.data.areaId,t.open=!0,t.title="修改物料入库单行"}))},handleSelectProduct:function(){this.$refs.itemSelect.showFlag=!0},onItemSelected:function(e){void 0!=e&&null!=e&&(this.form.itemId=e.itemId,this.form.itemCode=e.itemCode,this.form.itemName=e.itemName,this.form.specification=e.specification,this.form.unitOfMeasure=e.unitOfMeasure)},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.lineId?c(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):s(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,n=e.lineId||this.ids;this.$modal.confirm('是否确认删除物料入库单行编号为"'+n+'"的数据项？').then((function(){return m(n)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("wm/itemrecptline/export",Object(o["a"])({},this.queryParams),"itemrecptline_".concat((new Date).getTime(),".xlsx"))}}},f=h,b=n("2877"),w=Object(b["a"])(f,r,a,!1,null,null,null);t["default"]=w.exports},8171:function(e,t,n){"use strict";n.d(t,"c",(function(){return a})),n.d(t,"e",(function(){return o})),n.d(t,"d",(function(){return i})),n.d(t,"a",(function(){return l})),n.d(t,"g",(function(){return u})),n.d(t,"b",(function(){return s})),n.d(t,"f",(function(){return c}));var r=n("b775");function a(e){return Object(r["a"])({url:"/system/autocode/get/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function i(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/system/autocode/rule",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/system/autocode/rule",method:"put",data:e})}function s(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function c(){return Object(r["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},c3e0:function(e,t,n){"use strict";n.d(t,"f",(function(){return a})),n.d(t,"e",(function(){return o})),n.d(t,"d",(function(){return i})),n.d(t,"c",(function(){return l})),n.d(t,"a",(function(){return u})),n.d(t,"g",(function(){return s})),n.d(t,"b",(function(){return c}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/md/unitmeasure/list",method:"get",params:e})}function o(){return Object(r["a"])({url:"/mes/md/unitmeasure/listprimary",method:"get"})}function i(){return Object(r["a"])({url:"/mes/md/unitmeasure/selectall",method:"get"})}function l(e){return Object(r["a"])({url:"/mes/md/unitmeasure/"+e,method:"get"})}function u(e){return Object(r["a"])({url:"/mes/md/unitmeasure",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/md/unitmeasure",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/unitmeasure/"+e,method:"delete"})}}}]);