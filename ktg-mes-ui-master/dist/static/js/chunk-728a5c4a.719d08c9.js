(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-728a5c4a"],{"27f1":function(t,n,e){},4975:function(t,n,e){"use strict";e("27f1")},b05b:function(t,n,e){"use strict";e.r(n);var a=function(){var t=this,n=t.$createElement,e=t._self._c||n;return e("div",{ref:"gantt"})},i=[],s=(e("4de4"),e("d3b7"),e("6bfb")),r={name:"GanttChar",data:function(){return{newObj:{}}},props:{tasks:{type:Object,default:function(){return{data:[],links:[]}}},optType:{type:String,default:function(){return"view"}},ids:{type:Array,default:function(){return[]}}},created:function(){},mounted:function(){this.initConfig(),s["gantt"].plugins({marker:!0}),s["gantt"].init(this.$refs.gantt),s["gantt"].parse(this.tasks)},methods:{initData:function(){},reload:function(){s["gantt"].clearAll(),this.addTodayLine(),s["gantt"].parse(this.$props.tasks),s["gantt"].render()},addTodayLine:function(){var t=s["gantt"].date.date_to_str(s["gantt"].config.task_date),n=new Date;s["gantt"].addMarker({start_date:n,css:"today",text:"今天",title:"今天: "+t(n)})},initConfig:function(){"view"==this.optType?s["gantt"].config.readonly=!0:s["gantt"].config.readonly=!1,s["gantt"].config.duration_unit="hour",s["gantt"].config.duration_step=8,s["gantt"].config.grid_width=520,s["gantt"].config.columns=[{name:"text",label:"任务名",tree:!0,width:"200"},{name:"workstation",label:"工作站",align:"center",width:"*"},{name:"process",label:"工序",align:"center",width:"*"},{name:"start_date",label:"开始时间",align:"center",width:"*"},{name:"end_date",label:"结束时间",align:"center",width:"*"}],s["gantt"].i18n.setLocale("cn"),s["gantt"].plugins({tooltip:!0}),s["gantt"].templates.tooltip_text=function(t,n,e){return"project"==e.type?"<b style='text-align:left;'>生产工单:</b> "+e.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*e.progress)+"% </span>":"<b style='text-align:left;'>生产任务:</b> "+e.process+" "+e.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*e.progress)+"% </span>"},s["gantt"].config.open_tree_initially=!0,s["gantt"].templates.task_text=function(t,n,e){return"project"==e.type?"<b style='text-align:left;'>生产工单:</b> "+e.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*e.progress)+"% </span>":"<b style='text-align:left;'>生产任务:</b> "+e.process+" "+e.text+"    <span style='text-align:left;'> 完成比例："+Math.round(100*e.progress)+"% </span>"},s["gantt"].config.show_task_cells=!0;var t=function(t){var n=s["gantt"].date.date_to_str("%M %d"),e=s["gantt"].date.add(s["gantt"].date.add(t,1,"week"),-1,"day");return n(t)+" - "+n(e)},n=function(t){var n=s["gantt"].date.date_to_str("%M %d");s["gantt"].date.date_to_str("%D");return n(t)},e=function(t){return 0===t.getDay()||6===t.getDay()?"weekend":""};s["gantt"].config.scales=[{unit:"week",step:1,format:t},{unit:"day",step:1,format:n,css:e},{unit:"hour",step:8,format:"%H:%i"}],s["gantt"].config.scale_height=50,s["gantt"].config.xml_date="%Y-%m-%d %H:%i:%s",s["gantt"].config.auto_types=!1,s["gantt"].config.drag_progress=!0,s["gantt"].config.drag_move=!0,s["gantt"].config.drag_links=!0,s["gantt"].config.drag_resize=!0,s["gantt"].config.details_on_create=!0,s["gantt"].config.details_on_dblclick=!0;var a=this.$props.tasks,i=this.$props.ids;s["gantt"].attachEvent("onAfterTaskUpdate",(function(t,n){a.data.filter((function(n){return n.id==t}));i.push(t)}))}}},o=r,g=(e("4975"),e("2877")),l=Object(g["a"])(o,a,i,!1,null,null,null);n["default"]=l.exports}}]);