(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-09bd4a72"],{"4d61":function(b,e,f){"use strict";f("e965")},"5e59":function(b,e,f){"use strict";f.d(e,"a",(function(){return c}));var t=f("b775");function c(b){return Object(t["a"])({url:"/mes/cal/calendar/list",method:"get",params:b})}},7591:function(b,e,f){"use strict";f.r(e);var t=function(){var b=this,e=b.$createElement,f=b._self._c||e;return f("div",{staticClass:"app-container"},[f("el-container",[f("el-aside",{attrs:{width:"150px"}},[f("el-radio-group",{staticClass:"x-fillitem el-group-list",on:{change:b.onSelected},model:{value:b.selectedType,callback:function(e){b.selectedType=e},expression:"selectedType"}},b._l(b.dict.type.mes_calendar_type,(function(e){return f("el-radio-button",{key:e.value,attrs:{label:e.value}},[b._v(b._s(e.label))])})),1)],1),f("el-main",[f("el-calendar",{directives:[{name:"loading",rawName:"v-loading",value:b.loading,expression:"loading"}],scopedSlots:b._u([{key:"dateCell",fn:function(e){var t=e.date,c=e.data;return[f("div",[f("el-row",[f("el-col",{attrs:{span:6}},[f("div",{staticClass:"solar"},[b._v(" "+b._s(c.day.split("-")[2])+" ")])]),f("el-col",{attrs:{span:12}},[f("div",{staticClass:"lunar",class:{festival:b.isFestival(t,c)}},[b._v(b._s(b.solarDate2lunar(c.day)))])]),f("el-col",{attrs:{span:6}},[-1==b.holidayList.indexOf(c.day)?f("el-tag",{attrs:{effect:"dark"}},[b._v("班")]):f("el-tag",{attrs:{effect:"dark",type:"success"}},[b._v("休")])],1)],1),b._l(b.calendarDayList,(function(e){return f("el-row",{key:e.theDay},[e.theDay==c.day&&-1==b.holidayList.indexOf(c.day)?f("el-col",{attrs:{span:24}},b._l(e.teamShifts,(function(t){return f("div",{key:t.orderNum,staticClass:"grid-content"},[1==t.orderNum?f("el-button",{attrs:{type:"success",icon:"el-icon-sunrise"}},[b._v(b._s(t.teamName))]):b._e(),2==t.orderNum&&"SHIFT_THREE"==e.shiftType?f("el-button",{attrs:{type:"warning",icon:"el-icon-sunny"}},[b._v(b._s(t.teamName))]):b._e(),2==t.orderNum&&"SHIFT_TWO"==e.shiftType?f("el-button",{attrs:{type:"info",icon:"el-icon-moon"}},[b._v(b._s(t.teamName))]):b._e(),3==t.orderNum&&"SHIFT_THREE"==e.shiftType?f("el-button",{attrs:{type:"info",icon:"el-icon-moon"}},[b._v(b._s(t.teamName))]):b._e()],1)})),0):b._e()],1)}))],2)]}}]),model:{value:b.date,callback:function(e){b.date=e},expression:"date"}})],1)],1)],1)},c=[],a=(f("d3b7"),f("159b"),f("ac1f"),f("1276"),f("a15b"),f("c45f")),n=f("5e59"),i=f("cf80"),r={name:"CalendarTypeView",dicts:["mes_calendar_type"],data:function(){return{loading:!0,date:new Date,holidayList:[],workdayList:[],selectedType:null,calendarDayList:[],teamShiftQueryParams:{queryType:"TYPE",calendarType:null},queryParams:{theDay:null,holidayType:null,startTime:null,endTime:null}}},watch:{date:{handler:function(b,e){var f=this;console.log(b.getFullYear()+"-"+(b.getMonth()+1)+"-"+b.getDate()),this.teamShiftQueryParams.date=b.getFullYear()+"-"+(b.getMonth()+1)+"-"+b.getDate(),this.loading=!0,Object(n["a"])(this.teamShiftQueryParams).then((function(b){f.calendarDayList=b.data,f.loading=!1}))}}},created:function(){this.getList()},methods:{getList:function(){var b=this;this.loading=!0,this.holidayList=[],this.workdayList=[];var e=this;Object(a["b"])(this.queryParams).then((function(f){null!=f.data&&(f.data.forEach((function(b){"HOLIDAY"==b.holidayType?e.holidayList.push(b.theDay):e.workdayList.push(b.theDay)})),b.loading=!1)}))},onSelected:function(b){var e=this;this.loading=!0,this.teamShiftQueryParams.calendarType=b,this.teamShiftQueryParams.date=this.date,Object(n["a"])(this.teamShiftQueryParams).then((function(b){e.calendarDayList=b.data,e.loading=!1}))},isFestival:function(b,e){var f=e.day.split("-"),t=i["a"].solar2lunar(f[0],f[1],f[2]),c=[];return c.push(null==t.festival?"":" "+t.festival),c.push(null==t.lunarFestival?"":""+t.lunarFestival),c.push(null==t.Term?"":""+t.Term),c=c.join(""),""!=c},solarDate2lunar:function(b){var e=b.split("-"),f=i["a"].solar2lunar(e[0],e[1],e[2]),t=f.IMonthCn+f.IDayCn,c=[];return c.push(null==f.festival?"":" "+f.festival),c.push(null==f.lunarFestival?"":""+f.lunarFestival),c.push(null==f.Term?"":""+f.Term),c=c.join(""),""==c?t:c}}},s=r,l=(f("4d61"),f("2877")),d=Object(l["a"])(s,t,c,!1,null,null,null);e["default"]=d.exports},c45f:function(b,e,f){"use strict";f.d(e,"b",(function(){return c})),f.d(e,"a",(function(){return a}));var t=f("b775");function c(b){return Object(t["a"])({url:"/mes/cal/calholiday/list",method:"get",params:b})}function a(b){return Object(t["a"])({url:"/mes/cal/calholiday",method:"post",data:b})}},cf80:function(b,e,f){"use strict";f("d3b7"),f("25f0");var t={lunarInfo:[19416,19168,42352,21717,53856,55632,91476,22176,39632,21970,19168,42422,42192,53840,119381,46400,54944,44450,38320,84343,18800,42160,46261,27216,27968,109396,11104,38256,21234,18800,25958,54432,59984,92821,23248,11104,100067,37600,116951,51536,54432,120998,46416,22176,107956,9680,37584,53938,43344,46423,27808,46416,86869,19872,42416,83315,21168,43432,59728,27296,44710,43856,19296,43748,42352,21088,62051,55632,23383,22176,38608,19925,19152,42192,54484,53840,54616,46400,46752,103846,38320,18864,43380,42160,45690,27216,27968,44870,43872,38256,19189,18800,25776,29859,59984,27480,23232,43872,38613,37600,51552,55636,54432,55888,30034,22176,43959,9680,37584,51893,43344,46240,47780,44368,21977,19360,42416,86390,21168,43312,31060,27296,44368,23378,19296,42726,42208,53856,60005,54576,23200,30371,38608,19195,19152,42192,118966,53840,54560,56645,46496,22224,21938,18864,42359,42160,43600,111189,27936,44448,84835,37744,18936,18800,25776,92326,59984,27424,108228,43744,37600,53987,51552,54615,54432,55888,23893,22176,42704,21972,21200,43448,43344,46240,46758,44368,21920,43940,42416,21168,45683,26928,29495,27296,44368,84821,19296,42352,21732,53600,59752,54560,55968,92838,22224,19168,43476,41680,53584,62034,54560],solarMonth:[31,28,31,30,31,30,31,31,30,31,30,31],Gan:["甲","乙","丙","丁","戊","己","庚","辛","壬","癸"],Zhi:["子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥"],Animals:["鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪"],festival:{"1-1":{title:"元旦节"},"2-14":{title:"情人节"},"5-1":{title:"劳动节"},"5-4":{title:"青年节"},"6-1":{title:"儿童节"},"9-10":{title:"教师节"},"10-1":{title:"国庆节"},"12-25":{title:"圣诞节"},"3-8":{title:"妇女节"},"3-12":{title:"植树节"},"4-1":{title:"愚人节"},"5-12":{title:"护士节"},"7-1":{title:"建党节"},"8-1":{title:"建军节"},"12-24":{title:"平安夜"}},lFestival:{"12-30":{title:"除夕"},"1-1":{title:"春节"},"1-15":{title:"元宵节"},"2-2":{title:"龙抬头"},"5-5":{title:"端午节"},"7-7":{title:"七夕节"},"7-15":{title:"中元节"},"8-15":{title:"中秋节"},"9-9":{title:"重阳节"},"10-1":{title:"寒衣节"},"10-15":{title:"下元节"},"12-8":{title:"腊八节"},"12-23":{title:"北方小年"},"12-24":{title:"南方小年"}},getFestival:function(){return this.festival},getLunarFestival:function(){return this.lFestival},setFestival:function(){var b=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};this.festival=b},setLunarFestival:function(){var b=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};this.lFestival=b},solarTerm:["小寒","大寒","立春","雨水","惊蛰","春分","清明","谷雨","立夏","小满","芒种","夏至","小暑","大暑","立秋","处暑","白露","秋分","寒露","霜降","立冬","小雪","大雪","冬至"],sTermInfo:["9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c3598082c95f8c965cc920f","97bd0b06bdb0722c965ce1cfcc920f","b027097bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c359801ec95f8c965cc920f","97bd0b06bdb0722c965ce1cfcc920f","b027097bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c359801ec95f8c965cc920f","97bd0b06bdb0722c965ce1cfcc920f","b027097bd097c36b0b6fc9274c91aa","9778397bd19801ec9210c965cc920e","97b6b97bd19801ec95f8c965cc920f","97bd09801d98082c95f8e1cfcc920f","97bd097bd097c36b0b6fc9210c8dc2","9778397bd197c36c9210c9274c91aa","97b6b97bd19801ec95f8c965cc920e","97bd09801d98082c95f8e1cfcc920f","97bd097bd097c36b0b6fc9210c8dc2","9778397bd097c36c9210c9274c91aa","97b6b97bd19801ec95f8c965cc920e","97bcf97c3598082c95f8e1cfcc920f","97bd097bd097c36b0b6fc9210c8dc2","9778397bd097c36c9210c9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c3598082c95f8c965cc920f","97bd097bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c3598082c95f8c965cc920f","97bd097bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c359801ec95f8c965cc920f","97bd097bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c359801ec95f8c965cc920f","97bd097bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf97c359801ec95f8c965cc920f","97bd097bd07f595b0b6fc920fb0722","9778397bd097c36b0b6fc9210c8dc2","9778397bd19801ec9210c9274c920e","97b6b97bd19801ec95f8c965cc920f","97bd07f5307f595b0b0bc920fb0722","7f0e397bd097c36b0b6fc9210c8dc2","9778397bd097c36c9210c9274c920e","97b6b97bd19801ec95f8c965cc920f","97bd07f5307f595b0b0bc920fb0722","7f0e397bd097c36b0b6fc9210c8dc2","9778397bd097c36c9210c9274c91aa","97b6b97bd19801ec9210c965cc920e","97bd07f1487f595b0b0bc920fb0722","7f0e397bd097c36b0b6fc9210c8dc2","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf7f1487f595b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf7f1487f595b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf7f1487f531b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c965cc920e","97bcf7f1487f531b0b0bb0b6fb0722","7f0e397bd07f595b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b97bd19801ec9210c9274c920e","97bcf7f0e47f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","9778397bd097c36b0b6fc9210c91aa","97b6b97bd197c36c9210c9274c920e","97bcf7f0e47f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","9778397bd097c36b0b6fc9210c8dc2","9778397bd097c36c9210c9274c920e","97b6b7f0e47f531b0723b0b6fb0722","7f0e37f5307f595b0b0bc920fb0722","7f0e397bd097c36b0b6fc9210c8dc2","9778397bd097c36b0b70c9274c91aa","97b6b7f0e47f531b0723b0b6fb0721","7f0e37f1487f595b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc9210c8dc2","9778397bd097c36b0b6fc9274c91aa","97b6b7f0e47f531b0723b0b6fb0721","7f0e27f1487f595b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","9778397bd097c36b0b6fc9274c91aa","97b6b7f0e47f531b0723b0787b0721","7f0e27f0e47f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","9778397bd097c36b0b6fc9210c91aa","97b6b7f0e47f149b0723b0787b0721","7f0e27f0e47f531b0723b0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","9778397bd097c36b0b6fc9210c8dc2","977837f0e37f149b0723b0787b0721","7f07e7f0e47f531b0723b0b6fb0722","7f0e37f5307f595b0b0bc920fb0722","7f0e397bd097c35b0b6fc9210c8dc2","977837f0e37f14998082b0787b0721","7f07e7f0e47f531b0723b0b6fb0721","7f0e37f1487f595b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc9210c8dc2","977837f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","977837f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd097c35b0b6fc920fb0722","977837f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","977837f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","977837f0e37f14998082b0787b06bd","7f07e7f0e47f149b0723b0787b0721","7f0e27f0e47f531b0b0bb0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","977837f0e37f14998082b0723b06bd","7f07e7f0e37f149b0723b0787b0721","7f0e27f0e47f531b0723b0b6fb0722","7f0e397bd07f595b0b0bc920fb0722","977837f0e37f14898082b0723b02d5","7ec967f0e37f14998082b0787b0721","7f07e7f0e47f531b0723b0b6fb0722","7f0e37f1487f595b0b0bb0b6fb0722","7f0e37f0e37f14898082b0723b02d5","7ec967f0e37f14998082b0787b0721","7f07e7f0e47f531b0723b0b6fb0722","7f0e37f1487f531b0b0bb0b6fb0722","7f0e37f0e37f14898082b0723b02d5","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e37f1487f531b0b0bb0b6fb0722","7f0e37f0e37f14898082b072297c35","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e37f0e37f14898082b072297c35","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e37f0e366aa89801eb072297c35","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f149b0723b0787b0721","7f0e27f1487f531b0b0bb0b6fb0722","7f0e37f0e366aa89801eb072297c35","7ec967f0e37f14998082b0723b06bd","7f07e7f0e47f149b0723b0787b0721","7f0e27f0e47f531b0723b0b6fb0722","7f0e37f0e366aa89801eb072297c35","7ec967f0e37f14998082b0723b06bd","7f07e7f0e37f14998083b0787b0721","7f0e27f0e47f531b0723b0b6fb0722","7f0e37f0e366aa89801eb072297c35","7ec967f0e37f14898082b0723b02d5","7f07e7f0e37f14998082b0787b0721","7f07e7f0e47f531b0723b0b6fb0722","7f0e36665b66aa89801e9808297c35","665f67f0e37f14898082b0723b02d5","7ec967f0e37f14998082b0787b0721","7f07e7f0e47f531b0723b0b6fb0722","7f0e36665b66a449801e9808297c35","665f67f0e37f14898082b0723b02d5","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e36665b66a449801e9808297c35","665f67f0e37f14898082b072297c35","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e26665b66a449801e9808297c35","665f67f0e37f1489801eb072297c35","7ec967f0e37f14998082b0787b06bd","7f07e7f0e47f531b0723b0b6fb0721","7f0e27f1487f531b0b0bb0b6fb0722"],nStr1:["日","一","二","三","四","五","六","七","八","九","十"],nStr2:["初","十","廿","卅"],nStr3:["正","二","三","四","五","六","七","八","九","十","冬","腊"],lYearDays:function(b){var e,f=348;for(e=32768;e>8;e>>=1)f+=this.lunarInfo[b-1900]&e?1:0;return f+this.leapDays(b)},leapMonth:function(b){return 15&this.lunarInfo[b-1900]},leapDays:function(b){return this.leapMonth(b)?65536&this.lunarInfo[b-1900]?30:29:0},monthDays:function(b,e){return e>12||e<1?-1:this.lunarInfo[b-1900]&65536>>e?30:29},solarDays:function(b,e){if(e>12||e<1)return-1;var f=e-1;return 1===f?b%4===0&&b%100!==0||b%400===0?29:28:this.solarMonth[f]},toGanZhiYear:function(b){var e=(b-3)%10,f=(b-3)%12;return 0===e&&(e=10),0===f&&(f=12),this.Gan[e-1]+this.Zhi[f-1]},toAstro:function(b,e){var f="魔羯水瓶双鱼白羊金牛双子巨蟹狮子处女天秤天蝎射手魔羯",t=[20,19,21,21,21,22,23,23,23,23,22,22];return f.substr(2*b-(e<t[b-1]?2:0),2)+"座"},toGanZhi:function(b){return this.Gan[b%10]+this.Zhi[b%12]},getTerm:function(b,e){if(b<1900||b>2100||e<1||e>24)return-1;for(var f=this.sTermInfo[b-1900],t=[],c=0;c<f.length;c+=5){var a=parseInt("0x"+f.substr(c,5)).toString();t.push(a[0],a.substr(1,2),a[3],a.substr(4,2))}return parseInt(t[e-1])},toChinaMonth:function(b){if(b>12||b<1)return-1;var e=this.nStr3[b-1];return e+="月",e},toChinaDay:function(b){var e;switch(b){case 10:e="初十";break;case 20:e="二十";break;case 30:e="三十";break;default:e=this.nStr2[Math.floor(b/10)],e+=this.nStr1[b%10]}return e},getAnimal:function(b){return this.Animals[(b-4)%12]},solar2lunar:function(b,e,f){var t,c=parseInt(b),a=parseInt(e),n=parseInt(f);if(c<1900||c>2100)return-1;if(1900===c&&1===a&&n<31)return-1;t=c?new Date(c,parseInt(a)-1,n):new Date;var i,r=0,s=0;c=t.getFullYear(),a=t.getMonth()+1,n=t.getDate();var l=(Date.UTC(t.getFullYear(),t.getMonth(),t.getDate())-Date.UTC(1900,0,31))/864e5;for(i=1900;i<2101&&l>0;i++)s=this.lYearDays(i),l-=s;l<0&&(l+=s,i--);var d=new Date,o=!1;d.getFullYear()===c&&d.getMonth()+1===a&&d.getDate()===n&&(o=!0);var u=t.getDay(),h=this.nStr1[u];0===u&&(u=7);var y=i;r=this.leapMonth(i);var v=!1;for(i=1;i<13&&l>0;i++)r>0&&i===r+1&&!1===v?(--i,v=!0,s=this.leapDays(y)):s=this.monthDays(y,i),!0===v&&i===r+1&&(v=!1),l-=s;0===l&&r>0&&i===r+1&&(v?v=!1:(v=!0,--i)),l<0&&(l+=s,--i);var p=i,m=l+1,g=a-1,D=this.toGanZhiYear(y),T=this.getTerm(c,2*a-1),_=this.getTerm(c,2*a),F=this.toGanZhi(12*(c-1900)+a+11);n>=T&&(F=this.toGanZhi(12*(c-1900)+a+12));var I=!1,w=null;T===n&&(I=!0,w=this.solarTerm[2*a-2]),_===n&&(I=!0,w=this.solarTerm[2*a-1]);var C=Date.UTC(c,g,1,0,0,0,0)/864e5+25567+10,M=this.toGanZhi(C+n-1),S=this.toAstro(a,n),k=c+"-"+a+"-"+n,L=y+"-"+p+"-"+m,Y=this.festival,O=this.lFestival,N=a+"-"+n,j=p+"-"+m;return 12===p&&29===m&&29===this.monthDays(y,p)&&(j="12-30"),{date:k,lunarDate:L,festival:Y[N]?Y[N].title:null,lunarFestival:O[j]?O[j].title:null,lYear:y,lMonth:p,lDay:m,Animal:this.getAnimal(y),IMonthCn:(v?"闰":"")+this.toChinaMonth(p),IDayCn:this.toChinaDay(m),cYear:c,cMonth:a,cDay:n,gzYear:D,gzMonth:F,gzDay:M,isToday:o,isLeap:v,nWeek:u,ncWeek:"星期"+h,isTerm:I,Term:w,astro:S}},lunar2solar:function(b,e,f,t){b=parseInt(b),e=parseInt(e),f=parseInt(f),t=!!t;var c=this.leapMonth(b);this.leapDays(b);if(t&&c!==e)return-1;if(2100===b&&12===e&&f>1||1900===b&&1===e&&f<31)return-1;var a=this.monthDays(b,e),n=a;if(t&&(n=this.leapDays(b,e)),b<1900||b>2100||f>n)return-1;var i,r=0;for(i=1900;i<b;i++)r+=this.lYearDays(i);var s=0,l=!1;for(i=1;i<e;i++)s=this.leapMonth(b),l||s<=i&&s>0&&(r+=this.leapDays(b),l=!0),r+=this.monthDays(b,i);t&&(r+=a);var d=Date.UTC(1900,1,30,0,0,0),o=new Date(864e5*(r+f-31)+d),u=o.getUTCFullYear(),h=o.getUTCMonth()+1,y=o.getUTCDate();return this.solar2lunar(u,h,y)}};e["a"]=t},e965:function(b,e,f){}}]);