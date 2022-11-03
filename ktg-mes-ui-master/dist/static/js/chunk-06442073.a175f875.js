(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-06442073"],{4530:function(e,t,n){"use strict";n.r(t);var r=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"app-container"},["view"!=e.optType?n("el-row",{staticClass:"mb8",attrs:{gutter:10}},[n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:templateproduct:add"],expression:"['mes:qc:templateproduct:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:templateproduct:edit"],expression:"['mes:qc:templateproduct:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:templateproduct:remove"],expression:"['mes:qc:templateproduct:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),n("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1):e._e(),n("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.templateproductList},on:{"selection-change":e.handleSelectionChange}},[n("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),n("el-table-column",{attrs:{label:"产品物料编码",align:"center",width:"100px",prop:"itemCode","show-overflow-tooltip":!0}}),n("el-table-column",{attrs:{label:"产品物料名称",align:"center",width:"120px",prop:"itemName","show-overflow-tooltip":!0}}),n("el-table-column",{attrs:{label:"规格型号",align:"center",prop:"specification","show-overflow-tooltip":!0}}),n("el-table-column",{attrs:{label:"最低检测数",align:"center",width:"100px",prop:"quantityCheck"}}),n("el-table-column",{attrs:{label:"单位",align:"center",width:"100px",prop:"unitOfMeasure"}}),n("el-table-column",{attrs:{label:"最大不合格数",align:"center",prop:"quantityUnqualified"}}),n("el-table-column",{attrs:{label:"最大致命缺陷率",align:"center",prop:"crRate"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.crRate+"%"))])]}}])}),n("el-table-column",{attrs:{label:"最大严重缺陷率",align:"center",prop:"majRate"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.majRate+"%"))])]}}])}),n("el-table-column",{attrs:{label:"最大轻微缺陷率",align:"center",prop:"minRate"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.minRate+"%"))])]}}])}),"view"!=e.optType?n("el-table-column",{attrs:{label:"操作",align:"center",width:"100px","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:templateproduct:edit"],expression:"['mes:qc:templateproduct:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(n){return e.handleUpdate(t.row)}}},[e._v("修改")]),n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:templateproduct:remove"],expression:"['mes:qc:templateproduct:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(n){return e.handleDelete(t.row)}}},[e._v("删除")])]}}],null,!1,3904650058)}):e._e()],1),n("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),n("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[n("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"110px"}},[n("el-row",[n("el-col",{attrs:{span:12}},[n("el-form-item",{attrs:{label:"产品物料编码",prop:"itemCode"}},[n("el-input",{attrs:{placeholder:"请输入产品物料编码"},model:{value:e.form.itemCode,callback:function(t){e.$set(e.form,"itemCode",t)},expression:"form.itemCode"}},[n("el-button",{attrs:{slot:"append",icon:"el-icon-search"},on:{click:e.handleSelectItem},slot:"append"})],1),n("ItemSelect",{ref:"itemSelect",on:{onSelected:e.onItemSelected}})],1)],1),n("el-col",{attrs:{span:12}},[n("el-form-item",{attrs:{label:"产品物料名称",prop:"itemName"}},[n("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.itemName,callback:function(t){e.$set(e.form,"itemName",t)},expression:"form.itemName"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:24}},[n("el-form-item",{attrs:{label:"规格型号",prop:"specification"}},[n("el-input",{attrs:{readonly:"readonly",type:"textarea"},model:{value:e.form.specification,callback:function(t){e.$set(e.form,"specification",t)},expression:"form.specification"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"最低检测数",prop:"quantityCheck"}},[n("el-input-number",{attrs:{min:1,size:"small",placeholder:"请输入最低检测数"},model:{value:e.form.quantityCheck,callback:function(t){e.$set(e.form,"quantityCheck",t)},expression:"form.quantityCheck"}})],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"最大不合格数",prop:"quantityUnqualified"}},[n("el-tooltip",{attrs:{content:"检测过程中缺陷数量超出最大不合格数后，整批将判定为不合格。为0时，代表不启用此限制",placement:"right"}},[n("el-input-number",{attrs:{min:0,size:"small",placeholder:"请输入最大不合格数"},model:{value:e.form.quantityUnqualified,callback:function(t){e.$set(e.form,"quantityUnqualified",t)},expression:"form.quantityUnqualified"}})],1)],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"单位",prop:"unitOfMeasure"}},[n("el-input",{attrs:{readonly:"readonly"},model:{value:e.form.unitOfMeasure,callback:function(t){e.$set(e.form,"unitOfMeasure",t)},expression:"form.unitOfMeasure"}})],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"最大致命缺陷率",prop:"crRate"}},[n("el-tooltip",{attrs:{content:"缺陷比例超出指定百分比后，整批将判断为不合格。为0时，代表不允许出现致命缺陷。"}},[n("el-input-number",{attrs:{min:0,max:100,pricision:2,size:"small",placeholder:"请输入最大致命缺陷率"},model:{value:e.form.crRate,callback:function(t){e.$set(e.form,"crRate",t)},expression:"form.crRate"}})],1)],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"最大严重缺陷率",prop:"majRate"}},[n("el-tooltip",{attrs:{content:"缺陷比例超出指定百分比后，整批将判断为不合格。为0时，代表不允许出现严重缺陷。"}},[n("el-input-number",{attrs:{min:0,max:100,pricision:2,size:"small",placeholder:"请输入最大严重缺陷率"},model:{value:e.form.majRate,callback:function(t){e.$set(e.form,"majRate",t)},expression:"form.majRate"}})],1)],1)],1),n("el-col",{attrs:{span:8}},[n("el-form-item",{attrs:{label:"最大轻微缺陷率",prop:"minRate"}},[n("el-tooltip",{attrs:{content:"缺陷比例超出指定百分比后，整批将判断为不合格。为0时，代表不允许出现轻微缺陷。"}},[n("el-input-number",{attrs:{min:0,max:100,pricision:2,size:"small",placeholder:"请输入最大轻微缺陷率"},model:{value:e.form.minRate,callback:function(t){e.$set(e.form,"minRate",t)},expression:"form.minRate"}})],1)],1)],1)],1),n("el-row",[n("el-col",{attrs:{span:24}},[n("el-form-item",{attrs:{label:"备注",prop:"remark"}},[n("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),n("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?n("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):n("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),n("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},a=[],l=(n("d81d"),n("b775"));function o(e){return Object(l["a"])({url:"/mes/qc/templateproduct/list",method:"get",params:e})}function i(e){return Object(l["a"])({url:"/mes/qc/templateproduct/"+e,method:"get"})}function u(e){return Object(l["a"])({url:"/mes/qc/templateproduct",method:"post",data:e})}function s(e){return Object(l["a"])({url:"/mes/qc/templateproduct",method:"put",data:e})}function c(e){return Object(l["a"])({url:"/mes/qc/templateproduct/"+e,method:"delete"})}var m=n("25fa"),d={name:"Templateproduct",components:{ItemSelect:m["a"]},props:{optType:null,templateId:null},data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,templateproductList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,templateId:this.templateId,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityCheck:null,quantityUnqualified:null,crRate:null,majRate:null,minRate:null},form:{},rules:{templateId:[{required:!0,message:"检测模板ID不能为空",trigger:"blur"}],itemId:[{required:!0,message:"产品物料不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,o(this.queryParams).then((function(t){e.templateproductList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={recordId:null,templateId:this.templateId,itemId:null,itemCode:null,itemName:null,specification:null,unitOfMeasure:null,quantityCheck:null,quantityUnqualified:null,crRate:0,majRate:0,minRate:100,remark:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.recordId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加检测模板-产品"},handleUpdate:function(e){var t=this;this.reset();var n=e.recordId||this.ids;i(n).then((function(e){t.form=e.data,t.open=!0,t.title="修改检测模板-产品"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.recordId?s(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,n=e.recordId||this.ids;this.$modal.confirm("是否确认删除检测目中的物料产品？").then((function(){return c(n)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleSelectItem:function(){this.$refs.itemSelect.showFlag=!0},onItemSelected:function(e){void 0!=e&&null!=e&&(this.form.itemId=e.itemId,this.form.itemCode=e.itemCode,this.form.itemName=e.itemName,this.form.specification=e.specification,this.form.unitOfMeasure=e.unitOfMeasure)}}},p=d,f=n("2877"),h=Object(f["a"])(p,r,a,!1,null,null,null);t["default"]=h.exports},"4a8f":function(e,t,n){"use strict";n.d(t,"d",(function(){return a})),n.d(t,"e",(function(){return l})),n.d(t,"c",(function(){return o})),n.d(t,"f",(function(){return i})),n.d(t,"a",(function(){return u})),n.d(t,"g",(function(){return s})),n.d(t,"b",(function(){return c}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/md/itemtype/list",method:"get",params:e})}function l(e){return Object(r["a"])({url:"/mes/md/itemtype/list/exclude/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"get"})}function i(){return Object(r["a"])({url:"/mes/md/itemtype/treeselect",method:"get"})}function u(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/md/itemtype",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/itemtype/"+e,method:"delete"})}},5755:function(e,t,n){"use strict";n.d(t,"d",(function(){return a})),n.d(t,"c",(function(){return l})),n.d(t,"a",(function(){return o})),n.d(t,"e",(function(){return i})),n.d(t,"b",(function(){return u}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/md/mditem/list",method:"get",params:e})}function l(e){return Object(r["a"])({url:"/mes/md/mditem/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/mes/md/mditem",method:"post",data:e})}function i(e){return Object(r["a"])({url:"/mes/md/mditem",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/mes/md/mditem/"+e,method:"delete"})}},8171:function(e,t,n){"use strict";n.d(t,"c",(function(){return a})),n.d(t,"e",(function(){return l})),n.d(t,"d",(function(){return o})),n.d(t,"a",(function(){return i})),n.d(t,"g",(function(){return u})),n.d(t,"b",(function(){return s})),n.d(t,"f",(function(){return c}));var r=n("b775");function a(e){return Object(r["a"])({url:"/system/autocode/get/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function o(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function i(e){return Object(r["a"])({url:"/system/autocode/rule",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/system/autocode/rule",method:"put",data:e})}function s(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function c(){return Object(r["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},c3e0:function(e,t,n){"use strict";n.d(t,"f",(function(){return a})),n.d(t,"e",(function(){return l})),n.d(t,"d",(function(){return o})),n.d(t,"c",(function(){return i})),n.d(t,"a",(function(){return u})),n.d(t,"g",(function(){return s})),n.d(t,"b",(function(){return c}));var r=n("b775");function a(e){return Object(r["a"])({url:"/mes/md/unitmeasure/list",method:"get",params:e})}function l(){return Object(r["a"])({url:"/mes/md/unitmeasure/listprimary",method:"get"})}function o(){return Object(r["a"])({url:"/mes/md/unitmeasure/selectall",method:"get"})}function i(e){return Object(r["a"])({url:"/mes/md/unitmeasure/"+e,method:"get"})}function u(e){return Object(r["a"])({url:"/mes/md/unitmeasure",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/md/unitmeasure",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/unitmeasure/"+e,method:"delete"})}}}]);