(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-b7c77ce0"],{a764:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[a("el-form-item",{attrs:{label:"单位编码",prop:"measureCode"}},[a("el-input",{attrs:{placeholder:"请输入单位编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.measureCode,callback:function(t){e.$set(e.queryParams,"measureCode",t)},expression:"queryParams.measureCode"}})],1),a("el-form-item",{attrs:{label:"单位名称",prop:"measureName"}},[a("el-input",{attrs:{placeholder:"请输入单位名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.measureName,callback:function(t){e.$set(e.queryParams,"measureName",t)},expression:"queryParams.measureName"}})],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:unitmeasure:add"],expression:"['mes:unitmeasure:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:unitmeasure:edit"],expression:"['mes:unitmeasure:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:unitmeasure:remove"],expression:"['mes:unitmeasure:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:unitmeasure:export"],expression:"['mes:unitmeasure:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.unitmeasureList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"单位编码",align:"center",prop:"measureCode"}}),a("el-table-column",{attrs:{label:"单位名称",align:"center",prop:"measureName"}}),a("el-table-column",{attrs:{label:"是否是主单位",align:"center",prop:"primaryFlag"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.primaryFlag}})]}}])}),a("el-table-column",{attrs:{label:"与主单位换算比例",align:"center",prop:"changeRate"}}),a("el-table-column",{attrs:{label:"是否启用",align:"center",prop:"enableFlag"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.sys_yes_no,value:t.row.enableFlag}})]}}])}),a("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark"}}),a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:unitmeasure:edit"],expression:"['mes:unitmeasure:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:unitmeasure:remove"],expression:"['mes:unitmeasure:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("el-dialog",{attrs:{title:e.title,visible:e.open,width:"800px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"150px"}},[a("el-form-item",{attrs:{label:"单位编码",prop:"measureCode"}},[a("el-input",{attrs:{placeholder:"请输入单位编码"},model:{value:e.form.measureCode,callback:function(t){e.$set(e.form,"measureCode",t)},expression:"form.measureCode"}})],1),a("el-form-item",{attrs:{label:"单位名称",prop:"measureName"}},[a("el-input",{attrs:{placeholder:"请输入单位名称"},model:{value:e.form.measureName,callback:function(t){e.$set(e.form,"measureName",t)},expression:"form.measureName"}})],1),a("el-form-item",{attrs:{label:"是否是主单位",prop:"primaryFlag"}},[a("el-radio-group",{model:{value:e.form.primaryFlag,callback:function(t){e.$set(e.form,"primaryFlag",t)},expression:"form.primaryFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return a("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1),"N"==e.form.primaryFlag?a("el-form-item",{attrs:{label:"主单位"}},[a("el-select",{attrs:{placeholder:"请选择主单位"},model:{value:e.form.primaryId,callback:function(t){e.$set(e.form,"primaryId",t)},expression:"form.primaryId"}},e._l(e.measureOptions,(function(e){return a("el-option",{key:e.measureId,attrs:{label:e.measureName,value:e.measureId,disabled:"N"==e.enableFlag}})})),1)],1):e._e(),"N"==e.form.primaryFlag?a("el-form-item",{attrs:{label:"与主单位换算比例",prop:"changeRate"}},[a("el-input-number",{attrs:{step:1,percision:2,placeholder:"请输入与主单位换算比例"},model:{value:e.form.changeRate,callback:function(t){e.$set(e.form,"changeRate",t)},expression:"form.changeRate"}})],1):e._e(),a("el-form-item",{attrs:{label:"是否启用",prop:"enableFlag"}},[a("el-radio-group",{model:{value:e.form.enableFlag,callback:function(t){e.$set(e.form,"enableFlag",t)},expression:"form.enableFlag"}},e._l(e.dict.type.sys_yes_no,(function(t){return a("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1),a("el-form-item",{attrs:{label:"备注",prop:"remark"}},[a("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],l=a("5530"),s=(a("d81d"),a("c3e0")),i={name:"Unitmeasure",dicts:["sys_yes_no"],data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,unitmeasureList:[],measureOptions:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,measureCode:null,measureName:null,primaryFlag:null,primaryId:null,changeRate:null,enableFlag:null},form:{},rules:{measureCode:[{required:!0,message:"单位编码不能为空",trigger:"blur"}],measureName:[{required:!0,message:"单位名称不能为空",trigger:"blur"}],primaryFlag:[{required:!0,message:"是否是主单位不能为空",trigger:"blur"}],enableFlag:[{required:!0,message:"是否启用不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,Object(s["f"])(this.queryParams).then((function(t){e.unitmeasureList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={measureId:null,measureCode:null,measureName:null,primaryFlag:null,primaryId:null,changeRate:null,enableFlag:"Y",remark:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.measureId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){var e=this;this.reset(),Object(s["e"])().then((function(t){e.measureOptions=t.data})),this.open=!0,this.title="添加单位"},handleUpdate:function(e){var t=this;this.reset(),Object(s["e"])().then((function(e){t.measureOptions=e.data}));var a=e.measureId||this.ids;Object(s["c"])(a).then((function(e){t.form=e.data,t.open=!0,t.title="修改单位"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.measureId?Object(s["g"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(s["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,a=e.measureId||this.ids;this.$modal.confirm('是否确认删除单位编号为"'+a+'"的数据项？').then((function(){return Object(s["b"])(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("mes/md/unitmeasure/export",Object(l["a"])({},this.queryParams),"unitmeasure_".concat((new Date).getTime(),".xlsx"))}}},o=i,u=a("2877"),m=Object(u["a"])(o,r,n,!1,null,null,null);t["default"]=m.exports},c3e0:function(e,t,a){"use strict";a.d(t,"f",(function(){return n})),a.d(t,"e",(function(){return l})),a.d(t,"d",(function(){return s})),a.d(t,"c",(function(){return i})),a.d(t,"a",(function(){return o})),a.d(t,"g",(function(){return u})),a.d(t,"b",(function(){return m}));var r=a("b775");function n(e){return Object(r["a"])({url:"/mes/md/unitmeasure/list",method:"get",params:e})}function l(){return Object(r["a"])({url:"/mes/md/unitmeasure/listprimary",method:"get"})}function s(){return Object(r["a"])({url:"/mes/md/unitmeasure/selectall",method:"get"})}function i(e){return Object(r["a"])({url:"/mes/md/unitmeasure/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/mes/md/unitmeasure",method:"post",data:e})}function u(e){return Object(r["a"])({url:"/mes/md/unitmeasure",method:"put",data:e})}function m(e){return Object(r["a"])({url:"/mes/md/unitmeasure/"+e,method:"delete"})}}}]);