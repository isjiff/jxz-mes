(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-282148d3","chunk-df97a8fc","chunk-2d217358"],{"23e6":function(e,t,a){"use strict";a.d(t,"e",(function(){return n})),a.d(t,"d",(function(){return r})),a.d(t,"c",(function(){return o})),a.d(t,"a",(function(){return i})),a.d(t,"f",(function(){return s})),a.d(t,"b",(function(){return c}));var l=a("b775");function n(e){return Object(l["a"])({url:"/mes/cal/team/list",method:"get",params:e})}function r(){return Object(l["a"])({url:"/mes/cal/team/listAll",method:"get"})}function o(e){return Object(l["a"])({url:"/mes/cal/team/"+e,method:"get"})}function i(e){return Object(l["a"])({url:"/mes/cal/team",method:"post",data:e})}function s(e){return Object(l["a"])({url:"/mes/cal/team",method:"put",data:e})}function c(e){return Object(l["a"])({url:"/mes/cal/team/"+e,method:"delete"})}},"3d7f":function(e,t,a){"use strict";a.r(t);var l=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-row",[a("el-col",{attrs:{span:12}},[a("el-card",{staticClass:"box-card"},[a("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[a("span",[e._v("班组")]),"view"!=e.optType?a("el-button",{staticStyle:{float:"right",padding:"3px 0"},attrs:{type:"text"},on:{click:e.handleAdd}},[e._v("添加")]):e._e()],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.teamList},on:{"row-click":e.onRowClick}},[a("el-table-column",{attrs:{label:"班组编号",align:"center",prop:"teamCode"}}),a("el-table-column",{attrs:{label:"班组名称",align:"center",prop:"teamName"}}),"view"!=e.optType?a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:plan:edit"],expression:"['mes:cal:plan:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")])]}}],null,!1,2563923017)}):e._e()],1),a("TeamSelect",{ref:"teamSelect",on:{onSelected:e.onTeamSelected}})],1)],1),a("el-col",{attrs:{span:12}},[a("el-card",{staticClass:"box-card"},[a("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[a("span",[e._v("成员")])]),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.teammemberList}},[a("el-table-column",{attrs:{label:"用户名",align:"center",prop:"userName"}}),a("el-table-column",{attrs:{label:"用户昵称",align:"center",prop:"nickName"}}),a("el-table-column",{attrs:{label:"电话",align:"center",prop:"tel"}})],1)],1)],1)],1)],1)},n=[],r=(a("d3b7"),a("159b"),a("b775"));function o(e){return Object(r["a"])({url:"/mes/cal/planteam/list",method:"get",params:e})}function i(e){return Object(r["a"])({url:"/mes/cal/planteam",method:"post",data:e})}function s(e){return Object(r["a"])({url:"/mes/cal/planteam/"+e,method:"delete"})}var c=a("a708"),u=function(){var e=this,t=e.$createElement,a=e._self._c||t;return e.showFlag?a("el-dialog",{attrs:{title:"班组选择",visible:e.showFlag,modal:!1,width:"80%",center:""},on:{"update:visible":function(t){e.showFlag=t}}},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[a("el-form-item",{attrs:{label:"班组编号",prop:"teamCode"}},[a("el-input",{attrs:{placeholder:"请输入班组编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.teamCode,callback:function(t){e.$set(e.queryParams,"teamCode",t)},expression:"queryParams.teamCode"}})],1),a("el-form-item",{attrs:{label:"班组名称",prop:"teamName"}},[a("el-input",{attrs:{placeholder:"请输入班组名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.teamName,callback:function(t){e.$set(e.queryParams,"teamName",t)},expression:"queryParams.teamName"}})],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.teamList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"班组编号",align:"center",prop:"teamCode"}}),a("el-table-column",{attrs:{label:"班组名称",align:"center",prop:"teamName"}}),a("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark"}})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary"},on:{click:e.confirmSelect}},[e._v("确 定")]),a("el-button",{on:{click:function(t){e.showFlag=!1}}},[e._v("取 消")])],1)],1):e._e()},m=[],d=(a("d81d"),a("23e6")),p={name:"TeamSelect",data:function(){return{showFlag:!1,loading:!0,ids:[],selectedRows:[],single:!0,multiple:!0,showSearch:!0,total:0,teamList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,teamCode:null,teamName:null}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,Object(d["e"])(this.queryParams).then((function(t){e.teamList=t.rows,e.total=t.total,e.loading=!1}))},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.teamId})),this.selectedRows=e},confirmSelect:function(){null!=this.selectedRows&&0!=this.selectedRows.size?(this.$emit("onSelected",this.selectedRows),this.showFlag=!1):this.$notify({title:"提示",type:"warning",message:"请至少选择一条数据!"})}}},f=p,h=a("2877"),b=Object(h["a"])(f,u,m,!1,null,null,null),y=b.exports,g={name:"PlanTeam",components:{TeamSelect:y},props:{planId:null,optType:null,calendarType:null},data:function(){return{loading:!0,teamList:[],teammemberList:[],form:{},queryParams:{pageNum:1,pageSize:10,planId:this.planId,teamId:null,teamCode:null,teamName:null,calendarType:this.calendarType}}},created:function(){this.getTeamList()},methods:{getTeamList:function(){var e=this;this.loading=!0,o(this.queryParams).then((function(t){e.teamList=t.rows,e.loading=!1}))},getMemberList:function(e){var t=this,a={teamId:e};this.loading=!0,Object(c["c"])(a).then((function(e){t.teammemberList=e.rows,t.loading=!1}))},onRowClick:function(e){this.getMemberList(e.teamId)},handleAdd:function(){this.$refs.teamSelect.showFlag=!0},onTeamSelected:function(e){var t=this;e.forEach((function(e){t.form.teamId=e.teamId,t.form.teamCode=e.teamCode,t.form.teamName=e.teamName,t.form.planId=t.planId,t.form.calendarType=t.calendarType,i(t.form).then((function(e){t.getTeamList()}))}))},handleDelete:function(e){var t=this,a=e.recordId;this.$modal.confirm("是否确认删除班组？").then((function(){return s(a)})).then((function(){t.getTeamList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))}}},v=g,w=Object(h["a"])(v,l,n,!1,null,null,null);t["default"]=w.exports},"76ee":function(e,t,a){"use strict";a.r(t);var l=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[a("el-form-item",{attrs:{label:"班组类型",prop:"calendarType"}},[a("el-select",{attrs:{placeholder:"请选择班组类型"},model:{value:e.queryParams.calendarType,callback:function(t){e.$set(e.queryParams,"calendarType",t)},expression:"queryParams.calendarType"}},e._l(e.dict.type.mes_calendar_type,(function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1),a("el-form-item",{attrs:{label:"计划编号",prop:"planCode"}},[a("el-input",{attrs:{placeholder:"请输入计划编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.planCode,callback:function(t){e.$set(e.queryParams,"planCode",t)},expression:"queryParams.planCode"}})],1),a("el-form-item",{attrs:{label:"计划名称",prop:"planName"}},[a("el-input",{attrs:{placeholder:"请输入计划名称",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.planName,callback:function(t){e.$set(e.queryParams,"planName",t)},expression:"queryParams.planName"}})],1),a("el-form-item",{attrs:{label:"开始日期",prop:"startDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择开始日期"},model:{value:e.queryParams.startDate,callback:function(t){e.$set(e.queryParams,"startDate",t)},expression:"queryParams.startDate"}})],1),a("el-form-item",{attrs:{label:"结束日期",prop:"endDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择结束日期"},model:{value:e.queryParams.endDate,callback:function(t){e.$set(e.queryParams,"endDate",t)},expression:"queryParams.endDate"}})],1),a("el-form-item",[a("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),a("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:calplan:add"],expression:"['mes:cal:calplan:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:calplan:remove"],expression:"['mes:cal:calplan:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:calplan:export"],expression:"['mes:cal:calplan:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.calplanList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"计划编号",align:"center",prop:"planCode"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:plan:query"],expression:"['mes:cal:plan:query']"}],attrs:{type:"text"},on:{click:function(a){return e.handleView(t.row)}}},[e._v(e._s(t.row.planCode))])]}}])}),a("el-table-column",{attrs:{label:"计划名称",width:"200px",align:"center",prop:"planName","show-overflow-tooltip":!0}}),a("el-table-column",{attrs:{label:"班组类型",align:"center",prop:"calendarType"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_calendar_type,value:t.row.calendarType}})]}}])}),a("el-table-column",{attrs:{label:"开始日期",align:"center",prop:"startDate",width:"120"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(e.parseTime(t.row.startDate,"{y}-{m}-{d}")))])]}}])}),a("el-table-column",{attrs:{label:"结束日期",align:"center",prop:"endDate",width:"120"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(e.parseTime(t.row.endDate,"{y}-{m}-{d}")))])]}}])}),a("el-table-column",{attrs:{label:"轮班方式",align:"center",prop:"shiftType"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_shift_type,value:t.row.shiftType}})]}}])}),a("el-table-column",{attrs:{label:"倒班方式",align:"center",prop:"shiftMethod"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_shift_method,value:t.row.shiftMethod}})]}}])}),a("el-table-column",{attrs:{label:"单据状态",align:"center",prop:"status"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("dict-tag",{attrs:{options:e.dict.type.mes_order_status,value:t.row.status}})]}}])}),a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return["PREPARE"==t.row.status?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:calplan:edit"],expression:"['mes:cal:calplan:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]):e._e(),"PREPARE"==t.row.status?a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:calplan:remove"],expression:"['mes:cal:calplan:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")]):e._e()]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("el-dialog",{directives:[{name:"loading",rawName:"v-loading",value:e.formLoading,expression:"formLoading"}],attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"计划编号",prop:"planCode"}},[a("el-input",{attrs:{placeholder:"请输入计划编号"},model:{value:e.form.planCode,callback:function(t){e.$set(e.form,"planCode",t)},expression:"form.planCode"}})],1)],1),a("el-col",{attrs:{span:4}},[a("el-form-item",{attrs:{"label-width":"80"}},["view"!=e.optType?a("el-switch",{attrs:{"active-color":"#13ce66","active-text":"自动生成"},on:{change:function(t){return e.handleAutoGenChange(e.autoGenFlag)}},model:{value:e.autoGenFlag,callback:function(t){e.autoGenFlag=t},expression:"autoGenFlag"}}):e._e()],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"计划名称",prop:"planName"}},[a("el-input",{attrs:{placeholder:"请输入计划名称"},model:{value:e.form.planName,callback:function(t){e.$set(e.form,"planName",t)},expression:"form.planName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"开始日期",prop:"startDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择开始日期"},model:{value:e.form.startDate,callback:function(t){e.$set(e.form,"startDate",t)},expression:"form.startDate"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"结束日期",prop:"endDate"}},[a("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择结束日期"},model:{value:e.form.endDate,callback:function(t){e.$set(e.form,"endDate",t)},expression:"form.endDate"}})],1)],1),a("el-col",{attrs:{span:8}},[a("el-form-item",{attrs:{label:"班组类型",prop:"calendarType"}},[a("el-select",{attrs:{placeholder:"请选择班组类型"},model:{value:e.form.calendarType,callback:function(t){e.$set(e.form,"calendarType",t)},expression:"form.calendarType"}},e._l(e.dict.type.mes_calendar_type,(function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"轮班方式"}},[a("el-radio-group",{model:{value:e.form.shiftType,callback:function(t){e.$set(e.form,"shiftType",t)},expression:"form.shiftType"}},e._l(e.dict.type.mes_shift_type,(function(t){return a("el-radio",{key:t.value,attrs:{label:t.value}},[e._v(e._s(t.label))])})),1)],1)],1),"SINGLE"!=e.form.shiftType?a("el-col",{attrs:{span:6}},[a("el-form-item",{attrs:{label:"倒班方式",prop:"shiftMethod"}},[a("el-select",{staticStyle:{width:"100px"},attrs:{placeholder:"请选择倒班方式"},model:{value:e.form.shiftMethod,callback:function(t){e.$set(e.form,"shiftMethod",t)},expression:"form.shiftMethod"}},e._l(e.dict.type.mes_shift_method,(function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})})),1)],1)],1):e._e(),"DAY"==e.form.shiftMethod&&"SINGLE"!=e.form.shiftType?a("el-col",{attrs:{span:6}},[a("el-form-item",{attrs:{"label-width":"20",prop:"shiftCount"}},[a("el-input-number",{attrs:{min:1,"controls-position":"right"},model:{value:e.form.shiftCount,callback:function(t){e.$set(e.form,"shiftCount",t)},expression:"form.shiftCount"}})],1)],1):e._e()],1),a("el-row",[a("el-col",{attrs:{span:24}},[a("el-form-item",{attrs:{label:"备注",prop:"remark"}},[a("el-input",{attrs:{type:"textarea",placeholder:"请输入内容"},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1)],1)],1)],1),null!=e.form.planId?a("el-tabs",{attrs:{type:"border-card"}},[a("el-tab-pane",{attrs:{label:"班次"}},[a("Shift",{ref:"shiftTab",attrs:{planId:e.form.planId,optType:e.optType}})],1),a("el-tab-pane",{attrs:{label:"班组"}},[a("Team",{ref:"teamTab",attrs:{planId:e.form.planId,calendarType:e.form.calendarType,optType:e.optType}})],1)],1):e._e(),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},["view"==e.optType||"PREPARE"!=e.form.status?a("el-button",{attrs:{type:"primary"},on:{click:e.cancel}},[e._v("返回")]):e._e(),"PREPARE"==e.form.status&&"view"!=e.optType?a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]):e._e(),"PREPARE"==e.form.status&&"view"!=e.optType&&null!=e.form.planId?a("el-button",{attrs:{type:"success"},on:{click:e.handleFinish}},[e._v("完成")]):e._e(),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],r=a("5530"),o=(a("d81d"),a("b775"));function i(e){return Object(o["a"])({url:"/mes/cal/calplan/list",method:"get",params:e})}function s(e){return Object(o["a"])({url:"/mes/cal/calplan/"+e,method:"get"})}function c(e){return Object(o["a"])({url:"/mes/cal/calplan",method:"post",data:e})}function u(e){return Object(o["a"])({url:"/mes/cal/calplan",method:"put",data:e})}function m(e){return Object(o["a"])({url:"/mes/cal/calplan/"+e,method:"delete"})}var d=a("c66e"),p=a("3d7f"),f=a("8171"),h={name:"Calplan",dicts:["mes_shift_method","mes_shift_type","mes_calendar_type","mes_order_status"],components:{Shift:d["default"],Team:p["default"]},data:function(){return{autoGenFlag:!1,optType:void 0,loading:!0,formLoading:!1,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,calplanList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,planCode:null,planName:null,calendarType:null,startDate:null,endDate:null,shiftType:null,shiftMethod:null},form:{},rules:{planCode:[{required:!0,message:"计划编号不能为空",trigger:"blur"}],planName:[{required:!0,message:"计划名称不能为空",trigger:"blur"}],calendarType:[{required:!0,message:"请选择班组类型",trigger:"blur"}],startDate:[{required:!0,message:"开始日期不能为空",trigger:"blur"}],endDate:[{required:!0,message:"结束日期不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,i(this.queryParams).then((function(t){e.calplanList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={planId:null,planCode:null,planName:null,calendarType:null,startDate:null,endDate:null,shiftType:"SHIFT_TWO",shiftMethod:"MONTH",shiftCount:1,status:"PREPARE",remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.planId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加排班计划",this.optType="add"},handleView:function(e){var t=this;this.reset();var a=e.planId||this.ids;s(a).then((function(e){t.form=e.data,t.open=!0,t.title="查看排班计划",t.optType="view"}))},handleUpdate:function(e){var t=this;this.reset();var a=e.planId||this.ids;s(a).then((function(e){t.form=e.data,t.open=!0,t.title="修改排班计划",t.optType="edit"}))},submitForm:function(){var e=this;this.formLoading=!0,this.$refs["form"].validate((function(t){t&&(null!=e.form.planId?u(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList(),e.formLoading=!1})):c(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,a=e.planId||this.ids;this.$modal.confirm('是否确认删除排班计划编号为"'+a+'"的数据项？').then((function(){return m(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleFinish:function(){var e=this;this.$modal.confirm("是否完成计划编制？【完成后将不能更改】").then((function(){e.form.status="CONFIRMED",e.submitForm()}))},handleExport:function(){this.download("cal/calplan/export",Object(r["a"])({},this.queryParams),"calplan_".concat((new Date).getTime(),".xlsx"))},handleAutoGenChange:function(e){var t=this;e?Object(f["c"])("CAL_PLAN_CODE").then((function(e){t.form.planCode=e})):this.form.planCode=null}}},b=h,y=a("2877"),g=Object(y["a"])(b,l,n,!1,null,null,null);t["default"]=g.exports},8171:function(e,t,a){"use strict";a.d(t,"c",(function(){return n})),a.d(t,"e",(function(){return r})),a.d(t,"d",(function(){return o})),a.d(t,"a",(function(){return i})),a.d(t,"g",(function(){return s})),a.d(t,"b",(function(){return c})),a.d(t,"f",(function(){return u}));var l=a("b775");function n(e){return Object(l["a"])({url:"/system/autocode/get/"+e,method:"get"})}function r(e){return Object(l["a"])({url:"/system/autocode/rule/list",method:"get",params:e})}function o(e){return Object(l["a"])({url:"/system/autocode/rule/"+e,method:"get"})}function i(e){return Object(l["a"])({url:"/system/autocode/rule",method:"post",data:e})}function s(e){return Object(l["a"])({url:"/system/autocode/rule",method:"put",data:e})}function c(e){return Object(l["a"])({url:"/system/autocode/rule/"+e,method:"delete"})}function u(){return Object(l["a"])({url:"/system/autocode/rule/refreshCache",method:"delete"})}},a708:function(e,t,a){"use strict";a.d(t,"c",(function(){return n})),a.d(t,"a",(function(){return r})),a.d(t,"b",(function(){return o}));var l=a("b775");function n(e){return Object(l["a"])({url:"/mes/cal/teammember/list",method:"get",params:e})}function r(e){return Object(l["a"])({url:"/mes/cal/teammember",method:"post",data:e})}function o(e){return Object(l["a"])({url:"/mes/cal/teammember/"+e,method:"delete"})}},c66e:function(e,t,a){"use strict";a.r(t);var l=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},["view"!=e.optType?a("el-row",{staticClass:"mb8",attrs:{gutter:10}},[a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:shift:add"],expression:"['mes:cal:shift:add']"}],attrs:{type:"primary",plain:"",icon:"el-icon-plus",size:"mini"},on:{click:e.handleAdd}},[e._v("新增")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:shift:edit"],expression:"['mes:cal:shift:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini",disabled:e.single},on:{click:e.handleUpdate}},[e._v("修改")])],1),a("el-col",{attrs:{span:1.5}},[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:cal:shift:remove"],expression:"['mes:cal:shift:remove']"}],attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini",disabled:e.multiple},on:{click:e.handleDelete}},[e._v("删除")])],1),a("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1):e._e(),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.shiftList},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),a("el-table-column",{attrs:{label:"序号",align:"center",prop:"orderNum"}}),a("el-table-column",{attrs:{label:"班次名称",align:"center",prop:"shiftName"}}),a("el-table-column",{attrs:{label:"开始时间",align:"center",prop:"startTime",width:"180"}}),a("el-table-column",{attrs:{label:"结束时间",align:"center",prop:"endTime",width:"180"}}),a("el-table-column",{attrs:{label:"备注",align:"center",prop:"remark"}}),"view"!=e.optType?a("el-table-column",{attrs:{label:"操作",align:"center","class-name":"small-padding fixed-width"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["cal:shift:edit"],expression:"['cal:shift:edit']"}],attrs:{size:"mini",type:"text",icon:"el-icon-edit"},on:{click:function(a){return e.handleUpdate(t.row)}}},[e._v("修改")]),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["cal:shift:remove"],expression:"['cal:shift:remove']"}],attrs:{size:"mini",type:"text",icon:"el-icon-delete"},on:{click:function(a){return e.handleDelete(t.row)}}},[e._v("删除")])]}}],null,!1,2071363914)}):e._e()],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),a("el-dialog",{attrs:{title:e.title,visible:e.open,width:"960px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"100px"}},[a("el-row",[a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"序号",prop:"orderNum"}},[a("el-input-number",{attrs:{min:1,placeholder:"请输入序号"},model:{value:e.form.orderNum,callback:function(t){e.$set(e.form,"orderNum",t)},expression:"form.orderNum"}})],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"班次名称",prop:"shiftName"}},[a("el-input",{attrs:{placeholder:"请输入班次名称"},model:{value:e.form.shiftName,callback:function(t){e.$set(e.form,"shiftName",t)},expression:"form.shiftName"}})],1)],1)],1),a("el-row",[a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"开始时间",prop:"startTime"}},[a("el-time-picker",{attrs:{placeholder:"请选择开始时间",format:"HH:mm","value-format":"HH:mm"},model:{value:e.form.startTime,callback:function(t){e.$set(e.form,"startTime",t)},expression:"form.startTime"}})],1)],1),a("el-col",{attrs:{span:12}},[a("el-form-item",{attrs:{label:"结束时间",prop:"endTime"}},[a("el-time-picker",{attrs:{placeholder:"请选择结束时间",format:"HH:mm","value-format":"HH:mm"},model:{value:e.form.endTime,callback:function(t){e.$set(e.form,"endTime",t)},expression:"form.endTime"}})],1)],1)],1)],1),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),a("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},n=[],r=(a("d81d"),a("b775"));function o(e){return Object(r["a"])({url:"/mes/cal/shift/list",method:"get",params:e})}function i(e){return Object(r["a"])({url:"/mes/cal/shift/"+e,method:"get"})}function s(e){return Object(r["a"])({url:"/mes/cal/shift",method:"post",data:e})}function c(e){return Object(r["a"])({url:"/mes/cal/shift",method:"put",data:e})}function u(e){return Object(r["a"])({url:"/mes/cal/shift/"+e,method:"delete"})}var m={name:"Shift",props:{planId:null,optType:null},data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,shiftList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,planId:this.planId,orderNum:null,shiftName:null,startTime:null,endTime:null},form:{},rules:{shiftName:[{required:!0,message:"班次名称不能为空",trigger:"blur"}],startTime:[{required:!0,message:"开始时间不能为空",trigger:"blur"}],endTime:[{required:!0,message:"结束时间不能为空",trigger:"blur"}]}}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,o(this.queryParams).then((function(t){e.shiftList=t.rows,e.total=t.total,e.loading=!1}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={shiftId:null,planId:this.planId,orderNum:null,shiftName:null,startTime:null,endTime:null,remark:null,attr1:null,attr2:null,attr3:null,attr4:null,createBy:null,createTime:null,updateBy:null,updateTime:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){this.ids=e.map((function(e){return e.shiftId})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加班次"},handleUpdate:function(e){var t=this;this.reset();var a=e.shiftId||this.ids;i(a).then((function(e){t.form=e.data,t.open=!0,t.title="修改计划班次"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.shiftId?c(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):s(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,a=e.shiftId||this.ids;this.$modal.confirm("是否确认删除班次？").then((function(){return u(a)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))}}},d=m,p=a("2877"),f=Object(p["a"])(d,l,n,!1,null,null,null);t["default"]=f.exports}}]);