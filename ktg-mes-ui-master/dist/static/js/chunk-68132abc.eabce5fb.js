(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-68132abc"],{"4a8f":function(e,t,r){"use strict";r.d(t,"d",(function(){return n})),r.d(t,"e",(function(){return i})),r.d(t,"c",(function(){return l})),r.d(t,"f",(function(){return o})),r.d(t,"a",(function(){return s})),r.d(t,"g",(function(){return m})),r.d(t,"b",(function(){return c}));var a=r("b775");function n(e){return Object(a["a"])({url:"/mes/md/itemtype/list",method:"get",params:e})}function i(e){return Object(a["a"])({url:"/mes/md/itemtype/list/exclude/"+e,method:"get"})}function l(e){return Object(a["a"])({url:"/mes/md/itemtype/"+e,method:"get"})}function o(){return Object(a["a"])({url:"/mes/md/itemtype/treeselect",method:"get"})}function s(e){return Object(a["a"])({url:"/mes/md/itemtype",method:"post",data:e})}function m(e){return Object(a["a"])({url:"/mes/md/itemtype",method:"put",data:e})}function c(e){return Object(a["a"])({url:"/mes/md/itemtype/"+e,method:"delete"})}},ee24:function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"app-container"},[r("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0}},[r("el-form-item",{attrs:{label:"分类名称",prop:"itemTypeName"}},[r("el-input",{attrs:{placeholder:"请输入分类名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.itemTypeName,callback:function(t){e.$set(e.queryParams,"itemTypeName",t)},expression:"queryParams.itemTypeName"}})],1),r("el-form-item",{attrs:{label:"是否启用",prop:"enableFlag"}},[r("el-select",{attrs:{placeholder:"选择是或否",clearable:""},model:{value:e.queryParams.enableFlag,callback:function(t){e.$set(e.queryParams,"enableFlag",t)},expression:"queryParams.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(e){return r("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1),r("el-form-item",[r("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),r("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),r("el-row",{staticClass:"mb8",attrs:{gutter:10}},[r("el-col",{attrs:{span:1.5}},[r("el-button",{attrs:{type:"info",plain:"",icon:"el-icon-sort",size:"mini"},on:{click:e.toggleExpandAll}},[e._v("展开/折叠")])],1),r("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),e.refreshTable?r("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.itemTypeList,"row-key":"itemTypeId","default-expand-all":e.isExpandAll,"tree-props":{children:"children",hasChildren:"hasChildren"}}},[r("el-table-column",{attrs:{prop:"itemTypeName",label:"分类",width:"260"}}),r("el-table-column",{attrs:{prop:"orderNum",label:"排序",width:"200"}}),r("el-table-column",{attrs:{prop:"itemOrProduct",label:"物料/产品",width:"200"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("dict-tag",{attrs:{options:e.dict.type.mes_item_product,value:t.row.itemOrProduct}})]}}],null,!1,2047508773)}),r("el-table-column",{attrs:{prop:"enableFlag",label:"是否启用",width:"100"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.enableFlag}})]}}],null,!1,4213365913)}),r("el-table-column",{attrs:{label:"创建时间",align:"center",prop:"createTime",width:"200"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("span",[e._v(e._s(e.parseTime(t.row.createTime)))])]}}],null,!1,3078210614)}),r("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:md:itemtype:edit"],expression:"['mes:md:itemtype:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(r){return e.handleUpdate(t.row)}}},[e._v("修改")]),r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:md:itemtype:add"],expression:"['mes:md:itemtype:add']"}],attrs:{size:"mini",type:"text",icon:"el-icon-plus"},on:{click:function(r){return e.handleAdd(t.row)}}},[e._v("新增")]),0!=t.row.parentTypeId?r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:md:itemtype:remove"],expression:"['mes:md:itemtype:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(r){return e.handleDelete(t.row)}}},[e._v("删除")]):e._e()]}}],null,!1,402845084)})],1):e._e(),r("el-dialog",{attrs:{title:e.title,visible:e.open,width:"600px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[r("el-row",[0!==e.form.parentTypeId?r("el-col",{attrs:{span:24}},[r("el-form-item",{attrs:{label:"父分类",prop:"parentTypeId"}},[r("treeselect",{attrs:{disabled:"disabled",options:e.itemTypeOptions,normalizer:e.normalizer,placeholder:"请选择上级分类"},model:{value:e.form.parentTypeId,callback:function(t){e.$set(e.form,"parentTypeId",t)},expression:"form.parentTypeId"}})],1)],1):e._e()],1),r("el-row",[r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"分类名称",prop:"itemTypeName"}},[r("el-input",{attrs:{placeholder:"请输入分类名称"},model:{value:e.form.itemTypeName,callback:function(t){e.$set(e.form,"itemTypeName",t)},expression:"form.itemTypeName"}})],1)],1),r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"显示排序",prop:"orderNum"}},[r("el-input-number",{attrs:{"controls-position":"right",min:0},model:{value:e.form.orderNum,callback:function(t){e.$set(e.form,"orderNum",t)},expression:"form.orderNum"}})],1)],1)],1),r("el-row",[r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"物料/产品"}},[r("el-radio-group",{model:{value:e.form.itemOrProduct,callback:function(t){e.$set(e.form,"itemOrProduct",t)},expression:"form.itemOrProduct"}},e._l(e.dict.type.mes_item_product,(function(t){return r("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1)],1),r("el-col",{attrs:{span:12}},[r("el-form-item",{attrs:{label:"启用状态"}},[r("el-radio-group",{model:{value:e.form.enableFlag,callback:function(t){e.$set(e.form,"enableFlag",t)},expression:"form.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return r("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1)],1)],1)],1),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),r("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],i=r("4a8f"),l=r("ca17"),o=r.n(l),s=(r("542c"),{name:"ItemType",dicts:["sys_yes_no","mes_item_product"],components:{Treeselect:o.a},data:function(){return{loading:!0,showSearch:!0,itemTypeList:[],itemTypeOptions:[],title:"",open:!1,isExpandAll:!0,refreshTable:!0,queryParams:{itemTypeName:void 0,enableFlag:void 0},form:{},rules:{parentTypeId:[{required:!0,message:"父分类不能为空",trigger:"blur"}],itemTypeName:[{required:!0,message:"分类名称不能为空",trigger:"blur"}],orderNum:[{required:!0,message:"显示排序不能为空",trigger:"blur"}],itemOrProduct:[{required:!0,message:"请选择是产品分类还是物料分类",trigger:["blur"]}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,Object(i["d"])(this.queryParams).then((function(t){var r=e.handleTree(t.data,"itemTypeId","parentTypeId");e.itemTypeList=r,e.loading=!1}))},normalizer:function(e){return e.children&&!e.children.length&&delete e.children,{id:e.itemTypeId,label:e.itemTypeName,children:e.children}},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={itemTypeId:void 0,parentTypeId:void 0,itemTypeCode:void 0,itemTypeName:void 0,orderNum:void 0,itemOrProduct:void 0,enableFlag:"Y"},this.resetForm("form")},handleQuery:function(){this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleAdd:function(e){var t=this;this.reset(),void 0!=e&&(this.form.parentTypeId=e.itemTypeId),this.open=!0,this.title="添加分类",Object(i["d"])().then((function(e){t.itemTypeOptions=t.handleTree(e.data,"itemTypeId","parentTypeId")}))},toggleExpandAll:function(){var e=this;this.refreshTable=!1,this.isExpandAll=!this.isExpandAll,this.$nextTick((function(){e.refreshTable=!0}))},handleUpdate:function(e){var t=this;this.reset(),Object(i["c"])(e.itemTypeId).then((function(e){t.form=e.data,t.open=!0,t.title="修改分类"})),Object(i["e"])(e.itemTypeId).then((function(e){t.itemTypeOptions=t.handleTree(e.data,"itemTypeId","parentTypeId")}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(void 0!=e.form.itemTypeId?Object(i["g"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(i["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this;this.$modal.confirm('是否确认删除名称为"'+e.itemTypeName+'"的分类？').then((function(){return Object(i["b"])(e.itemTypeId)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))}}}),m=s,c=r("2877"),d=Object(c["a"])(m,a,n,!1,null,null,null);t["default"]=d.exports}}]);