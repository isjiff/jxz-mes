(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-236cd1aa","chunk-728a5c4a"],{"11dd":function(t,e,n){"use strict";n.d(e,"e",(function(){return s})),n.d(e,"d",(function(){return r})),n.d(e,"c",(function(){return i})),n.d(e,"a",(function(){return o})),n.d(e,"f",(function(){return l})),n.d(e,"b",(function(){return u}));var a=n("b775");function s(t){return Object(a["a"])({url:"/mes/pro/protask/list",method:"get",params:t})}function r(t){return Object(a["a"])({url:"/mes/pro/protask/listGanttTaskList",method:"get",params:t})}function i(t){return Object(a["a"])({url:"/mes/pro/protask/"+t,method:"get"})}function o(t){return Object(a["a"])({url:"/mes/pro/protask",method:"post",data:t})}function l(t){return Object(a["a"])({url:"/mes/pro/protask",method:"put",data:t})}function u(t){return Object(a["a"])({url:"/mes/pro/protask/"+t,method:"delete"})}},"27f1":function(t,e,n){},"48fe":function(t,e,n){"use strict";n.r(e);var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"app-container"},[n("el-row",{staticClass:"mb8",attrs:{gutter:10}},[n("el-col",{attrs:{span:1}}),n("el-col",{attrs:{span:1.5}},[n("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["mes:pro:schedule:edit"],expression:"['mes:pro:schedule:edit']"}],attrs:{type:"success",plain:"",icon:"el-icon-edit",size:"mini"},on:{click:t.handleUpdate}},[t._v("保存")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{attrs:{type:"danger",plain:"",icon:"el-icon-delete",size:"mini"},on:{click:t.handleClose}},[t._v("关闭")])],1),n("el-col",{attrs:{span:1.5}},[n("el-button",{attrs:{type:"warning",plain:"",icon:"el-icon-refresh",size:"mini"},on:{click:t.handleRefresh}},[t._v("重新加载")])],1)],1),n("div",{staticClass:"wrapper"},[n("div",{staticClass:"container"},[n("GanttChar",{ref:"ganttChar",staticClass:"left-container",attrs:{optType:"edit",ids:t.changedTaskIds,tasks:t.tasks}})],1)])],1)},s=[],r=(n("d3b7"),n("159b"),n("4de4"),n("b05b")),i=n("11dd"),o={name:"",components:{GanttChar:r["default"]},data:function(){return{tasks:{data:[],links:[]},changedTaskIds:[],optType:"edit",queryParams:{workorderCode:null,workorderName:null,orderSource:null,sourceCode:null,productId:null,productCode:null,productName:null,productSpc:null,unitOfMeasure:null,quantity:null,quantityProduced:null,quantityChanged:null,quantityScheduled:null,clientId:null,clientCode:null,clientName:null,requestDate:null,parentId:null,ancestors:null,status:null},form:{taskId:null,startTime:null,duration:null,endTime:null}}},watch:{tasks:function(){console.log("TaskChanged")}},created:function(){this.getGanttTasks()},methods:{getGanttTasks:function(){var t=this;Object(i["d"])(this.queryParams).then((function(e){t.tasks.data=e.data.data,t.tasks.links=e.data.links,t.$refs.ganttChar.reload()}))},handleUpdate:function(){var t=this;this.changedTaskIds.length>0&&(this.reset(),this.changedTaskIds.forEach((function(e){var n=t.tasks.data.filter((function(t){return t.id==e}))[0],a=new Date(n.start_date),s=new Date(n.end_date);t.form.taskId=n.id,t.form.startTime=a.getFullYear()+"-"+(a.getMonth()+1)+"-"+a.getDate()+" "+a.getHours()+":"+a.getMinutes()+":"+a.getSeconds(),t.form.duration=n.duration,t.form.endTime=s.getFullYear()+"-"+(s.getMonth()+1)+"-"+s.getDate()+" "+s.getHours()+":"+s.getMinutes()+":"+s.getSeconds(),Object(i["f"])(t.form).then((function(t){console.log("update success:"+e)}),(function(t){console.log("update failed:"+t.msg)}))})),this.changedTaskIds=[],this.$modal.msgSuccess("保存成功"))},handleRefresh:function(){this.$refs.ganttChar.reload()},handleClose:function(){var t={path:"/mes/pro/proschedule"};this.$tab.closeOpenPage(t)},reset:function(){this.form={taskId:null,startTime:null,duration:null,endTime:null}}}},l=o,u=(n("7949"),n("2877")),d=Object(u["a"])(l,a,s,!1,null,"14968226",null);e["default"]=d.exports},4975:function(t,e,n){"use strict";n("27f1")},7949:function(t,e,n){"use strict";n("94ae")},"94ae":function(t,e,n){},b05b:function(t,e,n){"use strict";n.r(e);var a=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{ref:"gantt"})},s=[],r=(n("4de4"),n("d3b7"),n("6bfb")),i={name:"GanttChar",data:function(){return{newObj:{}}},props:{tasks:{type:Object,default:function(){return{data:[],links:[]}}},optType:{type:String,default:function(){return"view"}},ids:{type:Array,default:function(){return[]}}},created:function(){},mounted:function(){this.initConfig(),r["gantt"].plugins({marker:!0}),r["gantt"].init(this.$refs.gantt),r["gantt"].parse(this.tasks)},methods:{initData:function(){},reload:function(){r["gantt"].clearAll(),this.addTodayLine(),r["gantt"].parse(this.$props.tasks),r["gantt"].render()},addTodayLine:function(){var t=r["gantt"].date.date_to_str(r["gantt"].config.task_date),e=new Date;r["gantt"].addMarker({start_date:e,css:"today",text:"今天",title:"今天: "+t(e)})},initConfig:function(){"view"==this.optType?r["gantt"].config.readonly=!0:r["gantt"].config.readonly=!1,r["gantt"].config.duration_unit="hour",r["gantt"].config.duration_step=8,r["gantt"].config.grid_width=520,r["gantt"].config.columns=[{name:"text",label:"任务名",tree:!0,width:"200"},{name:"workstation",label:"工作站",align:"center",width:"*"},{name:"process",label:"工序",align:"center",width:"*"},{name:"start_date",label:"开始时间",align:"center",width:"*"},{name:"end_date",label:"结束时间",align:"center",width:"*"}],r["gantt"].i18n.setLocale("cn"),r["gantt"].plugins({tooltip:!0}),r["gantt"].templates.tooltip_text=function(t,e,n){return"project"==n.type?"<b style='text-align:left;'>生产工单:</b> "+n.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*n.progress)+"% </span>":"<b style='text-align:left;'>生产任务:</b> "+n.process+" "+n.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*n.progress)+"% </span>"},r["gantt"].config.open_tree_initially=!0,r["gantt"].templates.task_text=function(t,e,n){return"project"==n.type?"<b style='text-align:left;'>生产工单:</b> "+n.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*n.progress)+"% </span>":"<b style='text-align:left;'>生产任务:</b> "+n.process+" "+n.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*n.progress)+"% </span>"},r["gantt"].config.show_task_cells=!0;var t=function(t){var e=r["gantt"].date.date_to_str("%M %d"),n=r["gantt"].date.add(r["gantt"].date.add(t,1,"week"),-1,"day");return e(t)+" - "+e(n)},e=function(t){var e=r["gantt"].date.date_to_str("%M %d");r["gantt"].date.date_to_str("%D");return e(t)},n=function(t){return 0===t.getDay()||6===t.getDay()?"weekend":""};r["gantt"].config.scales=[{unit:"week",step:1,format:t},{unit:"day",step:1,format:e,css:n},{unit:"hour",step:8,format:"%H:%i"}],r["gantt"].config.scale_height=50,r["gantt"].config.xml_date="%Y-%m-%d %H:%i:%s",r["gantt"].config.auto_types=!1,r["gantt"].config.drag_progress=!0,r["gantt"].config.drag_move=!0,r["gantt"].config.drag_links=!0,r["gantt"].config.drag_resize=!0,r["gantt"].config.details_on_create=!0,r["gantt"].config.details_on_dblclick=!0;var a=this.$props.tasks,s=this.$props.ids;r["gantt"].attachEvent("onAfterTaskUpdate",(function(t,e){a.data.filter((function(e){return e.id==t}));s.push(t)}))}}},o=i,l=(n("4975"),n("2877")),u=Object(l["a"])(o,a,s,!1,null,null,null);e["default"]=u.exports}}]);