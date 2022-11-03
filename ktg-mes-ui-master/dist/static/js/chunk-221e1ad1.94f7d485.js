(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-221e1ad1","chunk-2d21027c"],{"822f":function(e,t,a){"use strict";a.r(t);var l=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.oqclineList}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"检测项名称",width:"120px",align:"center",prop:"indexName"}}),a("el-table-column",{attrs:{label:"检测项类型",width:"100px",align:"center",prop:"indexType"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_index_type,value:t.row.indexType}})]}}])}),a("el-table-column",{attrs:{label:"检测工具",align:"center",prop:"qcTool"}}),a("el-table-column",{attrs:{label:"检测要求",width:"150px",align:"center",prop:"checkMethod","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"标准值",align:"center",prop:"standerVal"}}),a("el-table-column",{attrs:{label:"单位",align:"center",prop:"unitOfMeasure"}}),a("el-table-column",{attrs:{label:"误差上限",align:"center",prop:"thresholdMax"}}),a("el-table-column",{attrs:{label:"误差下限",align:"center",prop:"thresholdMin"}}),a("el-table-column",{attrs:{label:"致命缺陷数量",align:"center",prop:"crQuantity"}}),a("el-table-column",{attrs:{label:"严重缺陷数量",align:"center",prop:"majQuantity"}}),a("el-table-column",{attrs:{label:"轻微缺陷数量",align:"center",prop:"minQuantity"}}),a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["view"!=e.optType?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:oqc:edit"],expression:"['mes:qc:oqc:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleDefect(t.row)}}},[e._v("缺陷记录")]):e._e()]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("Defectrecord",{ref:"defectDialog",attrs:{qcId:e.defect_qcid,lineId:e.defect_qclineid,qcType:e.defect_qctype,optType:e.optType}})],1)},n=[],i=a("b775");function c(e){return Object(i["a"])({url:"/mes/qc/oqcline/list",method:"get",params:e})}var r=a("b74e"),o={name:"Oqcline",components:{Defectrecord:r["default"]},dicts:["mes_index_type"],props:{oqcId:null,optType:void 0},data:function(){return{defect_qcid:null,defect_qclineid:null,defect_qctype:"OQC",loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,oqclineList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,oqcId:this.oqcId,indexId:null,indexCode:null,indexName:null,indexType:null,qcTool:null,checkMethod:null,standerVal:null,unitOfMeasure:null,thresholdMax:null,thresholdMin:null,crQuantity:null,majQuantity:null,minQuantity:null}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,c(this.queryParams).then((function(t){e.oqclineList=t.rows,e.total=t.total,e.loading=!1}))},handleDefect:function(e){var t=this;this.defect_qcid=e.oqcId,this.defect_qclineid=e.lineId,this.$nextTick((function(){t.$refs.defectDialog.showFlag=!0,t.$refs.defectDialog.getList()}))}}},s=o,d=a("2877"),u=Object(d["a"])(s,l,n,!1,null,null,null);t["default"]=u.exports},b74e:function(e,t,a){"use strict";a.r(t);var l=function(){var e=this,t=e.$createElement,a=e._self._c||t;return e.showFlag?a("el-dialog",{attrs:{title:"缺陷记录",visible:e.showFlag,modal:!1,width:"80%",center:""},on:{"update:visible":function(t){e.showFlag=t}}},[a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:defectrecord:add"],expression:"['mes:qc:defectrecord:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:defectrecord:edit"],expression:"['mes:qc:defectrecord:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("常见缺陷")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.defectrecordList}},[a("el-table-column",{attrs:{label:"缺陷描述",width:"400px",align:"center",prop:"defectName"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-input",{attrs:{type:"textarea"},model:{value:t.row.defectName,callback:function(a){e.$set(t.row,"defectName",a)},expression:"scope.row.defectName"}})]}}],null,!1,3640348867)}),a("el-table-column",{attrs:{label:"缺陷等级",align:"center",prop:"defectLevel"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-select",{model:{value:t.row.defectLevel,callback:function(a){e.$set(t.row,"defectLevel",a)},expression:"scope.row.defectLevel"}},e._l(e.dict.type.mes_defect_level,(function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)]}}],null,!1,619354251)}),a("el-table-column",{attrs:{label:"缺陷数量",align:"center",prop:"defectQuantity"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-input-number",{attrs:{min:1},model:{value:t.row.defectQuantity,callback:function(a){e.$set(t.row,"defectQuantity",a)},expression:"scope.row.defectQuantity"}})]}}],null,!1,3813605272)}),a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["view"!=e.optType?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:defectrecord:remove"],expression:"['mes:qc:defectrecord:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.$index,t.row)}}},[e._v("删除")]):e._e()]}}],null,!1,2243317798)})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType?a("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:qc:defectrecord:update"],expression:"['mes:qc:defectrecord:update']"}],attrs:{type:"primary"},on:{click:e.confirm}},[e._v("确 定")]),a("el-button",{on:{click:function(t){e.showFlag=!1}}},[e._v("取 消")])],1)],1):e._e()},n=[],i=(a("d3b7"),a("159b"),a("a434"),a("b775"));function c(e){return Object(i["a"])({url:"/mes/qc/defectrecord/list",method:"get",params:e})}function r(e){return Object(i["a"])({url:"/mes/qc/defectrecord",method:"put",data:e})}function o(e){return Object(i["a"])({url:"/mes/qc/defectrecord/"+e,method:"delete"})}var s={name:"Defectrecord",dicts:["mes_defect_level"],props:{qcId:null,qcType:null,lineId:null,optType:null},watch:{qcId:function(){this.queryParams.qcId=this.qcId},qcType:function(){this.queryParams.qcType=this.qcType},lineId:function(){this.queryParams.lineId=this.lineId}},data:function(){return{showFlag:!1,loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,defectrecordList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,qcType:this.qcType,qcId:this.qcId,lineId:this.lineId,defectName:null,defectLevel:null,defectQuantity:null}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,c(this.queryParams).then((function(t){e.defectrecordList=t.rows,e.total=t.total,e.loading=!1}))},handleAdd:function(){var e={recordId:null,qcId:this.qcId,qcType:this.qcType,lineId:this.lineId,defectName:null,defectLevel:null,defectQuantity:null,flag:"add",remark:null};this.defectrecordList.unshift(e)},handleUpdate:function(e){},confirm:function(){var e=this;0!=this.defectrecordList.length&&r(this.defectrecordList).then((function(t){e.$modal.msgSuccess(t.msg),200===t.code&&(e.showFlag=!1,e.getList(),e.$parent.getList())}))},handleDelete:function(e,t){var a=t.recordId||this.ids,l=this;this.$modal.confirm("是否确认删除缺陷记录？").then((function(){l.defectrecordList.forEach((function(t,n,i){n==e&&("add"==l.defectrecordList[e].flag?l.defectrecordList.splice(e,1):o(a).then((function(e){l.getList()})))}))})),this.$parent.getList()}}},d=s,u=a("2877"),p=Object(u["a"])(d,l,n,!1,null,null,null);t["default"]=p.exports}}]);