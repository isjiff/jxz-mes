(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-74966c1a"],{"66e4":function(e,t,a){"use strict";a.d(t,"d",(function(){return n})),a.d(t,"c",(function(){return i})),a.d(t,"a",(function(){return o})),a.d(t,"e",(function(){return l})),a.d(t,"b",(function(){return s}));var r=a("b775");function n(e){return Object(r["a"])({url:"/mes/dv/machinery/list",method:"get",params:e})}function i(e){return Object(r["a"])({url:"/mes/dv/machinery/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/mes/dv/machinery",method:"post",data:e})}function l(e){return Object(r["a"])({url:"/mes/dv/machinery",method:"put",data:e})}function s(e){return Object(r["a"])({url:"/mes/dv/machinery/"+e,method:"delete"})}},8171:function(e,t,a){"use strict";a.d(t,"c",(function(){return n})),a.d(t,"e",(function(){return i})),a.d(t,"d",(function(){return o})),a.d(t,"a",(function(){return l})),a.d(t,"g",(function(){return s})),a.d(t,"b",(function(){return c})),a.d(t,"f",(function(){return m}));var r=a("b775");function n(e){return Object(r["a"])({url:"/system/autocode/get/"+e,method:"get"})}function i(e){return Object(r["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function o(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/system/autocode/rule",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/system/autocode/rule",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function m(){return Object(r["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},a15c:function(e,t,a){"use strict";a.d(t,"d",(function(){return n})),a.d(t,"c",(function(){return i})),a.d(t,"a",(function(){return o})),a.d(t,"e",(function(){return l})),a.d(t,"b",(function(){return s}));var r=a("b775");function n(e){return Object(r["a"])({url:"/mes/dv/machinerytype/list",method:"get",params:e})}function i(e){return Object(r["a"])({url:"/mes/dv/machinerytype/"+e,method:"get"})}function o(e){return Object(r["a"])({url:"/mes/dv/machinerytype",method:"post",data:e})}function l(e){return Object(r["a"])({url:"/mes/dv/machinerytype",method:"put",data:e})}function s(e){return Object(r["a"])({url:"/mes/dv/machinerytype/"+e,method:"delete"})}},dfb9:function(e,t,a){"use strict";a.d(t,"e",(function(){return n})),a.d(t,"d",(function(){return i})),a.d(t,"c",(function(){return o})),a.d(t,"a",(function(){return l})),a.d(t,"f",(function(){return s})),a.d(t,"b",(function(){return c}));var r=a("b775");function n(e){return Object(r["a"])({url:"/mes/md/workshop/list",method:"get",params:e})}function i(){return Object(r["a"])({url:"/mes/md/workshop/listAll",method:"get"})}function o(e){return Object(r["a"])({url:"/mes/md/workshop/"+e,method:"get"})}function l(e){return Object(r["a"])({url:"/mes/md/workshop",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/md/workshop",method:"put",data:e})}function c(e){return Object(r["a"])({url:"/mes/md/workshop/"+e,method:"delete"})}},e702:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-row",{attrs:{gutter:20}},[a("el-col",{attrs:{span:4,xs:24}},[a("div",{staticClass:"head-container"},[a("el-input",{staticStyle:{"margin-bottom":"20px"},attrs:{placeholder:"请输入分类名称",clearable:"",size:"small","prefix-icon":"el-icon-search"},model:{value:e.machineryTypeName,callback:function(t){e.machineryTypeName=t},expression:"machineryTypeName"}})],1),a("div",{staticClass:"head-container"},[a("el-tree",{ref:"tree",attrs:{data:e.machineryTypeOptions,props:e.defaultProps,"expand-on-click-node":!1,"filter-node-method":e.filterNode,"default-expand-all":""},on:{"node-click":e.handleNodeClick}})],1)]),a("el-col",{attrs:{span:20,xs:24}},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[a("el-form-item",{attrs:{label:"设备编码",prop:"machineryCode"}},[a("el-input",{staticStyle:{width:"240px"},attrs:{placeholder:"请输入设备编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.machineryCode,callback:function(t){e.$set(e.queryParams,"machineryCode",t)},expression:"queryParams.machineryCode"}})],1),a("el-form-item",{attrs:{label:"设备名称",prop:"machineryName"}},[a("el-input",{staticStyle:{width:"240px"},attrs:{placeholder:"请输入设备名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.machineryName,callback:function(t){e.$set(e.queryParams,"machineryName",t)},expression:"queryParams.machineryName"}})],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:add"],expression:"['mes:dv:machinery:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:edit"],expression:"['mes:dv:machinery:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:remove"],expression:"['mes:dv:machinery:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:import"],expression:"['mes:dv:machinery:import']"}],attrs:{type:"info",plain:"",icon:"el-icon-upload2",size:"mini"},on:{click:e.handleImport}},[e._v("导入")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:export"],expression:"['mes:dv:machinery:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.machineryList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"50",align:"center"}}),a("el-table-column",{key:"machineryCode",attrs:{label:"设备编码",width:"120",align:"center",prop:"machineryCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:query"],expression:"['mes:dv:machinery:query']"}],attrs:{size:"mini",type:"text"},on:{click:function(a){return e.handleView(t.row)}}},[e._v(e._s(t.row.machineryCode))])]}}])}),a("el-table-column",{key:"machineryName",attrs:{label:"设备名称","min-width":"120",align:"left",prop:"machineryName","show-overflow-tooltip":!0}}),a("el-table-column",{key:"machineryBrand",attrs:{label:"品牌",align:"left",prop:"machineryBrand","show-overflow-tooltip":!0}}),a("el-table-column",{key:"machinerySpec",attrs:{label:"规格型号",align:"left",prop:"machinerySpec","show-overflow-tooltip":!0}}),a("el-table-column",{key:"machineryTypeName",attrs:{label:"所属车间",align:"center",prop:"machineryTypeName","show-overflow-tooltip":!0}}),a("el-table-column",{key:"status",attrs:{label:"设备状态",align:"center",prop:"status"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_machinery_status,value:t.row.status}})]}}])}),a("el-table-column",{attrs:{label:"创建时间",align:"center",prop:"createTime",width:"160"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(e.parseTime(t.row.createTime)))])]}}])}),a("el-table-column",{attrs:{label:"操作",align:"center",width:"160","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:edit"],expression:"['mes:dv:machinery:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:dv:machinery:remove"],expression:"['mes:dv:machinery:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")])]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}})],1)],1),a("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"120px"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"设备编码",prop:"itemCode"}},["view"==e.optType?a("el-input",{attrs:{readonly:"readonly",maxlength:"64"},model:{value:e.form.machineryCode,callback:function(t){e.$set(e.form,"machineryCode",t)},expression:"form.machineryCode"}}):a("el-input",{attrs:{placeholder:"请输入设备编码",maxlength:"64"},model:{value:e.form.machineryCode,callback:function(t){e.$set(e.form,"machineryCode",t)},expression:"form.machineryCode"}})],1)],1),a("el-col",{attrs:{span:4}},[a("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType?a("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"设备名称",prop:"itemName"}},["view"==e.optType?a("el-input",{attrs:{maxlength:"255",readonly:"readonly"},model:{value:e.form.machineryName,callback:function(t){e.$set(e.form,"machineryName",t)},expression:"form.machineryName"}}):a("el-input",{attrs:{placeholder:"请输入设备名称",maxlength:"255"},model:{value:e.form.machineryName,callback:function(t){e.$set(e.form,"machineryName",t)},expression:"form.machineryName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"品牌",prop:"machineryBrand"}},["view"==e.optType?a("el-input",{attrs:{maxlength:"255",readonly:"readonly"},model:{value:e.form.machineryBrand,callback:function(t){e.$set(e.form,"machineryBrand",t)},expression:"form.machineryBrand"}}):a("el-input",{attrs:{placeholder:"请输入品牌",maxlength:"255"},model:{value:e.form.machineryBrand,callback:function(t){e.$set(e.form,"machineryBrand",t)},expression:"form.machineryBrand"}})],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"设备分类",prop:"machineryTypeId"}},["view"==e.optType?a("treeselect",{attrs:{options:e.machineryTypeOptions,normalizer:e.normalizer,disabled:""},model:{value:e.form.machineryTypeId,callback:function(t){e.$set(e.form,"machineryTypeId",t)},expression:"form.machineryTypeId"}}):a("treeselect",{attrs:{options:e.machineryTypeOptions,normalizer:e.normalizer,placeholder:"请选择所属分类"},model:{value:e.form.machineryTypeId,callback:function(t){e.$set(e.form,"machineryTypeId",t)},expression:"form.machineryTypeId"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"规格型号",prop:"machinerySpec"}},["view"==e.optType?a("el-input",{attrs:{type:"textarea",maxlength:"255",readonly:"readonly"},model:{value:e.form.machinerySpec,callback:function(t){e.$set(e.form,"machinerySpec",t)},expression:"form.machinerySpec"}}):a("el-input",{attrs:{type:"textarea",placeholder:"请输入规格型号",maxlength:"255"},model:{value:e.form.machinerySpec,callback:function(t){e.$set(e.form,"machinerySpec",t)},expression:"form.machinerySpec"}})],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"所属车间",prop:"workshopId"}},[a("el-select",{attrs:{placeholder:"请选择车间"},model:{value:e.form.workshopId,callback:function(t){e.$set(e.form,"workshopId",t)},expression:"form.workshopId"}},e._l(e.workshopOptions,(function(e){return a("el-option",{key:e.workshopId,attrs:{label:e.workshopName,value:e.workshopId}})})),1)],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"备注"}},["view"==e.optType?a("el-input",{attrs:{type:"textarea",readonly:""},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}}):a("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?a("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1),a("el-dialog",{attrs:{title:e.upload.title,visible:e.upload.open,width:"400px","append-to-body":""},on:{"update:visible":function(t){return e.$set(e.upload,"open",t)}}},[a("el-upload",{ref:"upload",attrs:{limit:1,accept:".xlsx, .xls",headers:e.upload.headers,action:e.upload.url+"?updateSupport="+e.upload.updateSupport,disabled:e.upload.isUploading,"on-progress":e.handleFileUploadProgress,"on-success":e.handleFileSuccess,"auto-upload":!1,drag:""}},[a("i",{staticClass:"el-icon-upload"}),a("div",{staticClass:"el-upload__text"},[e._v("将文件拖到此处，或"),a("em",[e._v("点击上传")])]),a("div",{staticClass:"el-upload__tip text-center",attrs:{slot:"tip"},slot:"tip"},[a("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"},[a("el-checkbox",{model:{value:e.upload.updateSupport,callback:function(t){e.$set(e.upload,"updateSupport",t)},expression:"upload.updateSupport"}}),e._v(" 是否更新已经存在的设备数据 ")],1),a("span",[e._v("仅允许导入xls、xlsx格式文件。")]),a("el-link",{staticStyle:{"font-size":"12px","vertical-align":"baseline"},attrs:{type:"primary",underline:!1},on:{click:e.importTemplate}},[e._v("下载模板")])],1)]),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary"},on:{click:e.submitFileForm}},[e._v("确 定")]),a("el-button",{on:{click:function(t){e.upload.open=!1}}},[e._v("取 消")])],1)],1)],1)},n=[],i=a("5530"),o=a("ade3"),l=(a("4de4"),a("d3b7"),a("d81d"),a("66e4")),s=a("a15c"),c=a("dfb9"),m=a("8171"),u=a("5f87"),d=a("ca17"),p=a.n(d),h=(a("542c"),{name:"Machinery",dicts:["sys_yes_no","mes_machinery_status"],components:{Treeselect:p.a},data:function(){var e;return e={autoGenFlag:!1,optType:void 0,loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,machineryList:[],title:"",machineryTypeOptions:[],workshopOptions:[],open:!1,machineryTypeName:void 0},Object(o["a"])(e,"autoGenFlag",!1),Object(o["a"])(e,"form",{}),Object(o["a"])(e,"defaultProps",{children:"children",label:"machineryTypeName"}),Object(o["a"])(e,"upload",{open:!1,title:"",isUploading:!1,updateSupport:0,headers:{Authorization:"Bearer "+Object(u["a"])()},url:"/prod-api/mes/dv/machinery/importData"}),Object(o["a"])(e,"queryParams",{pageNum:1,pageSize:10,machineryCode:null,machineryName:null,machineryBrand:null,machinerySpec:null,machineryTypeId:null,machineryTypeCode:null,machineryTypeName:null,workshopId:null,workshopCode:null,workshopName:null,status:null}),Object(o["a"])(e,"rules",{machineryCode:[{required:!0,message:"设备编码不能为空",trigger:"blur"},{max:64,message:"设备编码长度必须小于64个字符",trigger:"blur"}],machineryName:[{required:!0,message:"设备名称不能为空",trigger:"blur"}],workshopId:[{required:!0,message:"车间不能为空",trigger:"blur"}],machineryTypeId:[{required:!0,message:"设备分类不能为空",trigger:"blur"}]}),e},watch:{machineryTypeName:function(e){this.$refs.tree.filter(e)}},created:function(){this.getList(),this.getTreeselect()},methods:{getList:function(){var e=this;this.loading=!0,Object(l["d"])(this.queryParams).then((function(t){e.machineryList=t.rows,e.total=t.total,e.loading=!1}))},getWorkshops:function(){var e=this;Object(c["d"])().then((function(t){e.workshopOptions=t.data}))},normalizer:function(e){return e.children&&!e.children.length&&delete e.children,{id:e.machineryTypeId,label:e.machineryTypeName,children:e.children}},getTreeselect:function(){var e=this;Object(s["d"])().then((function(t){e.machineryTypeOptions=[];var a=e.handleTree(t.data,"machineryTypeId","parentTypeId")[0];e.machineryTypeOptions.push(a)}))},filterNode:function(e,t){return!e||-1!==t.machineryTypeName.indexOf(e)},handleNodeClick:function(e){this.queryParams.machineryTypeId=e.machineryTypeId,this.handleQuery()},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={machineryId:null,machineryCode:null,machineryName:null,machineryBrand:null,machinerySpec:null,machineryTypeId:null,machineryTypeCode:null,machineryTypeName:null,workshopId:null,workshopCode:null,workshopName:null,status:"STOP",remark:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.autoGenFlag=!1,this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.machineryId})),this.single=1!=e.length,this.multiple=!e.length},handleView:function(e){var t=this;this.reset(),this.getTreeselect(),this.getWorkshops();var a=e.machineryId||this.ids;Object(l["c"])(a).then((function(e){t.form=e.data,t.open=!0,t.title="查看设备信息",t.optType="view"}))},handleAdd:function(){this.reset(),this.getTreeselect(),this.getWorkshops(),0!=this.queryParams.machineryTypeId&&(this.form.machineryTypeId=this.queryParams.machineryTypeId),this.optType="add",this.open=!0,this.title="新增设备"},handleUpdate:function(e){var t=this;this.reset(),this.getTreeselect(),this.getWorkshops();var a=e.machineryId||this.ids;Object(l["c"])(a).then((function(e){t.form=e.data,t.open=!0,t.title="修改设备",t.optType="edit"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(void 0!=e.form.machineryId?Object(l["e"])(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):Object(l["a"])(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,a=e.machineryId||this.ids;this.$modal.confirm("确认删除数据项？").then((function(){return Object(l["b"])(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("mes/dv/machinery/export",Object(i["a"])({},this.queryParams),"user_".concat((new Date).getTime(),".xlsx"))},handleImport:function(){this.upload.title="设备导入",this.upload.open=!0},importTemplate:function(){this.download("mes/dv/machinery/importTemplate",{},"md_item_".concat((new Date).getTime(),".xlsx"))},handleFileUploadProgress:function(e,t,a){this.upload.isUploading=!0},handleFileSuccess:function(e,t,a){this.upload.open=!1,this.upload.isUploading=!1,this.$refs.upload.clearFiles(),this.$alert("<div style='overflow: auto;overflow-x: hidden;max-height: 70vh;padding: 10px 20px 0;'>"+e.msg+"</div>","导入结果",{dangerouslyUseHTMLString:!0}),this.getList()},submitFileForm:function(){this.$refs.upload.submit()},handleAutoGenChange:function(e){var t=this;e?Object(m["c"])("MACHINERY_CODE").then((function(e){t.form.machineryCode=e})):this.form.machineryCode=null}}}),y=h,f=a("2877"),v=Object(f["a"])(y,r,n,!1,null,null,null);t["default"]=v.exports}}]);