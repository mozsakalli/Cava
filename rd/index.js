//java/lang/Object:<init>
function _0(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
return;
}
//java/lang/Object:equals
function _1(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=34;
		v0=a0;
		v1=a1;
		if(v1!=v0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/lang/Object:getClass
function _2(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
v1=v0.klass;
return v1;
}
//java/lang/Object:hashCode
function _3(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=_4(v0);
;
v2=_5(v1);
;
v3=v2|0;
return v3;
}
//java/lang/Object:notify
function _6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
return;
}
//java/lang/Object:notifyAll
function _7(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
return;
}
//java/lang/Object:toString
function _8(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=50;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v2=_2(v0);
;
v3=_a(v2);
;
v1=_b(v1,v3);
;
v1=_b(v1,$str0);
;
v4=v0.$c.$vt[2](v0);
;
v1=_c(v1,v4);
;
v3=v1.$c.$vt[0](v1);
;
return v3;
}
//java/lang/Object:wait
function _d(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=a0;
_e(v0,0);
$f.l=55;
return;
}
//java/lang/Object:wait
function _e(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=59;
v0=a0;
v1=a1;
_f(v0,v1,0);
$f.l=60;
return;
}
//java/lang/Object:wait
function _f(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=62;
v0=a0;
v1=a1;
v2=a2;
return;
}
//java/lang/Object:clone
function _10(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=65;
		v0=a0;
		v3=_2(v0);
		;
		v4=_11(v3);
		;
		if(v4==0) {$b=15; break;}
		$f.l=66;
		v1=_12(v0);
		;
		$f.l=67;
		v3=_2(v0);
		;
		v3=_13(v3);
		;
		v2=_14(v3,v1);
		;
		$f.l=68;
		_15(v0,0,v2,0,v1);
		$f.l=69;
		return v2;
	case 15:
		$f.l=71;
		v5=newArray(java/lang/Object,
		1);
		v3=_2(v0);
		;
		v5[0]=v3;
		v6=_16($str1,v5);
		;
		$f.l=72;
		v3=_2(v0);
		;
		v7=v3.size;
		_17(v6,0,v0,0,v7);
		$f.l=74;
		return v6;
}
}
//java/lang/Object:finalize
function _18(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=78;
v0=a0;
return;
}
//Test:main
function _19(vm){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=24;
		$f.trap=0;
		v0=0;
		$f.l=26;
		$f.trap=1;
		v1=0;
		$f.l=27;
		v2=0;
	case 9:
		if(v2>=100000) {$b=19; break;}
		$f.l=28;
		v1=(v1 + v2)|0;
		$f.l=29;
		v3=(v1 % 10)|0;
		if(v3!=0) {$b=16; break;}
		v1=(v1 + 1)|0;
	case 16:
		$f.l=27;
		v2=(v2 + 1)|0;
		{ $b=9; break; }
	case 19:
		$f.l=35;
		$f.trap=0;
		{ $b=36; break; }
	case 22:
		$f.l=31;
		$f.trap=0;
		v4=__caught;
		v5=v4;
		$f.l=32;
		v0=1;
		$f.l=35;
		{ $b=36; break; }
	case 30:
		$f.l=33;
		$f.trap=0;
		v6=__caught;
		v7=v6;
		$f.l=34;
		v8=2;
	case 36:
		$f.l=36;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,0)) {$b=22; continue;}
		if(vm.is(vm.exception,1)) {$b=30; continue;}
	}
throw error;
}
}
//java/lang/reflect/Method:<init>
function _1a(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=28;
v0=a0;
_0(v0);
return;
}
//java/lang/reflect/Method:getName
function _1b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/reflect/Method:getModifiers
function _1c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=v0.modifiers;
return v1;
}
//java/lang/reflect/Method:getParameterCount
function _1d(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=46;
		v0=a0;
		v1=v0.parameters;
		if(v1==null) {$b=7; break;}
		v1=v0.parameters;
		v2=v1.len;
		{ $b=8; break; }
	case 7:
		v2=0;
	case 8:
		return v2;
}
}
//java/lang/reflect/Method:getReturnType
function _1e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=50;
v0=a0;
v1=v0.type;
return v1;
}
//java/lang/reflect/Method:getParameterTypes
function _1f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=a0;
v1=v0.parameters;
return v1;
}
//java/lang/reflect/Method:invoke
function _20(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=58;
v0=a0;
v1=a1;
v2=a2;
v3=newArray(java/lang/Object,
4);
v3[0]=v0;
v3[1]=v0;
v3[2]=v1;
v3[3]=v2;
v4=_16($str2,v3);
;
return v4;
}
//java/lang/reflect/Method:getDeclaringClass
function _21(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=62;
v0=a0;
v1=v0.declaringClass;
return v1;
}
//java/lang/reflect/Method:setAccessible
function _22(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=65;
v0=a0;
v1=a1;
return;
}
//cava/c/VoidPtr:<init>
function _23(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
_0(v0);
return;
}
//java/lang/reflect/Field:<init>
function _24(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
_0(v0);
return;
}
//java/lang/reflect/Field:getName
function _25(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/reflect/Field:getModifiers
function _26(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
v1=v0.modifiers;
return v1;
}
//java/lang/reflect/Field:getType
function _27(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=v0.type;
return v1;
}
//java/lang/reflect/Field:getDeclaringClass
function _28(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=v0.declaringClass;
return v1;
}
//java/lang/reflect/Field:setAccessible
function _29(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=a1;
return;
}
//java/lang/reflect/Field:getSafeLong
function _2a(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=55;
		v0=a0;
		v1=a1;
		v3=v0.modifiers;
		v4=_2b(v3);
		;
		if(v4==0) {$b=9; break;}
		$f.l=56;
		v5=v0.address;
		{ $b=15; break; }
	case 9:
		$f.l=57;
		v6=newArray(java/lang/Object,
		2);
		v6[0]=v1;
		v5=v0.address;
		v6[1]=v5;
		v5=_2c($str3,v6);
		;
	case 15:
		v2=v5;
		$f.l=59;
		v7=v0.type;
		v8=$g0;
		if(v7!=v8) {$b=25; break;}
		$f.l=60;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_2d($str4,v6);
		;
		return v9;
	case 25:
		$f.l=61;
		v8=v0.type;
		v7=$g1;
		if(v8!=v7) {$b=34; break;}
		$f.l=62;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_2d($str5,v6);
		;
		return v9;
	case 34:
		$f.l=63;
		v8=v0.type;
		v7=$g2;
		if(v8!=v7) {$b=43; break;}
		$f.l=64;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_2d($str6,v6);
		;
		return v9;
	case 43:
		$f.l=65;
		v8=v0.type;
		v7=$g3;
		if(v8!=v7) {$b=52; break;}
		$f.l=66;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_2d($str7,v6);
		;
		return v9;
	case 52:
		$f.l=67;
		v8=v0.type;
		v7=$g4;
		if(v8!=v7) {$b=61; break;}
		$f.l=68;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_2d($str8,v6);
		;
		return v9;
	case 61:
		$f.l=69;
		v8=v0.type;
		v7=$g5;
		if(v8!=v7) {$b=70; break;}
		$f.l=70;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_2d($str9,v6);
		;
		return v9;
	case 70:
		$f.l=71;
		return 0;
}
}
//java/lang/reflect/Field:setSafeLong
function _2e(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=75;
		v0=a0;
		v1=a1;
		v2=a2;
		v4=v0.modifiers;
		v5=_2b(v4);
		;
		if(v5==0) {$b=10; break;}
		$f.l=76;
		v6=v0.address;
		{ $b=16; break; }
	case 10:
		$f.l=77;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v1;
		v6=v0.address;
		v7[1]=v6;
		v6=_2c($str3,v7);
		;
	case 16:
		v3=v6;
		$f.l=78;
		v8=v0.type;
		v9=$g0;
		if(v8!=v9) {$b=27; break;}
		$f.l=79;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_2f(v2);
		;
		v7[1]=v10;
		_30($str10,v7);
	case 27:
		$f.l=80;
		v9=v0.type;
		v8=$g1;
		if(v9!=v8) {$b=37; break;}
		$f.l=81;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_2f(v2);
		;
		v7[1]=v10;
		_30($str11,v7);
	case 37:
		$f.l=82;
		v9=v0.type;
		v8=$g2;
		if(v9!=v8) {$b=47; break;}
		$f.l=83;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_2f(v2);
		;
		v7[1]=v10;
		_30($str12,v7);
	case 47:
		$f.l=84;
		v9=v0.type;
		v8=$g3;
		if(v9!=v8) {$b=57; break;}
		$f.l=85;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_2f(v2);
		;
		v7[1]=v10;
		_30($str13,v7);
	case 57:
		$f.l=86;
		v9=v0.type;
		v8=$g4;
		if(v9!=v8) {$b=67; break;}
		$f.l=87;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_2f(v2);
		;
		v7[1]=v10;
		_30($str14,v7);
	case 67:
		$f.l=88;
		v9=v0.type;
		v8=$g5;
		if(v9!=v8) {$b=77; break;}
		$f.l=89;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_2f(v2);
		;
		v7[1]=v10;
		_30($str15,v7);
	case 77:
		$f.l=90;
		return;
}
}
//java/lang/reflect/Field:getSafeDouble
function _31(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=93;
		v0=a0;
		v1=a1;
		v3=v0.modifiers;
		v4=_2b(v3);
		;
		if(v4==0) {$b=9; break;}
		$f.l=94;
		v5=v0.address;
		{ $b=15; break; }
	case 9:
		$f.l=95;
		v6=newArray(java/lang/Object,
		2);
		v6[0]=v1;
		v5=v0.address;
		v6[1]=v5;
		v5=_2c($str3,v6);
		;
	case 15:
		v2=v5;
		$f.l=97;
		v7=v0.type;
		v8=$g6;
		if(v7!=v8) {$b=25; break;}
		$f.l=98;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v9=_32($str16,v6);
		;
		return v9;
	case 25:
		$f.l=99;
		v8=v0.type;
		v7=$g7;
		if(v8!=v7) {$b=35; break;}
		$f.l=100;
		v6=newArray(java/lang/Object,
		1);
		v6[0]=v2;
		v10=_33($str17,v6);
		;
		v9=v10;
		return v9;
	case 35:
		$f.l=101;
		return 0.0;
}
}
//java/lang/reflect/Field:setSafeDouble
function _34(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=105;
		v0=a0;
		v1=a1;
		v2=a2;
		v4=v0.modifiers;
		v5=_2b(v4);
		;
		if(v5==0) {$b=10; break;}
		$f.l=106;
		v6=v0.address;
		{ $b=16; break; }
	case 10:
		$f.l=107;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v1;
		v6=v0.address;
		v7[1]=v6;
		v6=_2c($str3,v7);
		;
	case 16:
		v3=v6;
		$f.l=108;
		v8=v0.type;
		v9=$g6;
		if(v8!=v9) {$b=27; break;}
		$f.l=109;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_35(v2);
		;
		v7[1]=v10;
		_30($str18,v7);
	case 27:
		$f.l=110;
		v9=v0.type;
		v8=$g7;
		if(v9!=v8) {$b=37; break;}
		$f.l=111;
		v7=newArray(java/lang/Object,
		2);
		v7[0]=v3;
		v10=_35(v2);
		;
		v7[1]=v10;
		_30($str19,v7);
	case 37:
		$f.l=112;
		return;
}
}
//java/lang/reflect/Field:get
function _36(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=115;
		v0=a0;
		v1=a1;
		v4=v0.type;
		v2=$g0;
		if(v4!=v2) {$b=12; break;}
		$f.l=116;
		v5=_2a(v0,v1);
		;
		v6=v5|0;
		v7=v6&0xff;
		v8=_37(v7);
		;
		return v8;
	case 12:
		$f.l=117;
		v4=v0.type;
		v2=$g1;
		if(v4!=v2) {$b=25; break;}
		$f.l=118;
		v5=_2a(v0,v1);
		;
		v7=(v5 > 1) - (v5 < 1);
		if(v7!=0) {$b=22; break;}
		v9=1;
		{ $b=23; break; }
	case 22:
		v9=0;
	case 23:
		v10=_38(v9);
		;
		return v10;
	case 25:
		$f.l=119;
		v4=v0.type;
		v2=$g2;
		if(v4!=v2) {$b=35; break;}
		$f.l=120;
		v5=_2a(v0,v1);
		;
		v6=v5|0;
		v11=v6&0xffff;
		v12=_39(v11);
		;
		return v12;
	case 35:
		$f.l=121;
		v4=v0.type;
		v2=$g3;
		if(v4!=v2) {$b=45; break;}
		$f.l=122;
		v5=_2a(v0,v1);
		;
		v6=v5|0;
		v13=v6&0xffff;
		v14=_3a(v13);
		;
		return v14;
	case 45:
		$f.l=123;
		v4=v0.type;
		v2=$g4;
		if(v4!=v2) {$b=54; break;}
		$f.l=124;
		v5=_2a(v0,v1);
		;
		v6=v5|0;
		v15=_3b(v6);
		;
		return v15;
	case 54:
		$f.l=125;
		v4=v0.type;
		v2=$g5;
		if(v4!=v2) {$b=62; break;}
		$f.l=126;
		v5=_2a(v0,v1);
		;
		v16=_2f(v5);
		;
		return v16;
	case 62:
		$f.l=127;
		v4=v0.type;
		v2=$g7;
		if(v4!=v2) {$b=71; break;}
		$f.l=128;
		v17=_31(v0,v1);
		;
		v18=v17;
		v19=_3c(v18);
		;
		return v19;
	case 71:
		$f.l=129;
		v4=v0.type;
		v2=$g6;
		if(v4!=v2) {$b=79; break;}
		$f.l=130;
		v17=_31(v0,v1);
		;
		v20=_35(v17);
		;
		return v20;
	case 79:
		$f.l=132;
		v6=v0.modifiers;
		v9=_2b(v6);
		;
		if(v9==0) {$b=86; break;}
		$f.l=133;
		v21=v0.address;
		{ $b=92; break; }
	case 86:
		$f.l=134;
		v22=newArray(java/lang/Object,
		2);
		v22[0]=v1;
		v21=v0.address;
		v22[1]=v21;
		v21=_2c($str3,v22);
		;
	case 92:
		v3=v21;
		$f.l=136;
		v22=newArray(java/lang/Object,
		1);
		v22[0]=v3;
		v23=_16($str20,v22);
		;
		return v23;
}
}
//java/lang/reflect/Field:set
function _3d(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=140;
		v0=a0;
		v1=a1;
		v2=a2;
		v5=v0.type;
		v3=$g7;
		if(v5==v3) {$b=10; break;}
		v5=v0.type;
		v3=$g6;
		if(v5!=v3) {$b=19; break;}
	case 10:
		$f.l=141;
		if(v2==null) {$b=123; break;}
		v6=vm.is(v2,2);
		if(v6==0) {$b=123; break;}
		$f.l=142;
		v7=vm.cast(v2,2);
		v8=v7.$c.$vt[8](v7);
		;
		_34(v0,v1,v8);
		{ $b=123; break; }
	case 19:
		$f.l=143;
		v5=v0.type;
		v3=$g0;
		if(v5==v3) {$b=32; break;}
		v5=v0.type;
		v3=$g3;
		if(v5==v3) {$b=32; break;}
		v5=v0.type;
		v3=$g4;
		if(v5==v3) {$b=32; break;}
		v5=v0.type;
		v3=$g5;
		if(v5!=v3) {$b=41; break;}
	case 32:
		$f.l=144;
		if(v2==null) {$b=123; break;}
		v6=vm.is(v2,2);
		if(v6==0) {$b=123; break;}
		$f.l=145;
		v7=vm.cast(v2,2);
		v9=v7.$c.$vt[3](v7);
		;
		_2e(v0,v1,v9);
		{ $b=123; break; }
	case 41:
		$f.l=146;
		v5=v0.type;
		v3=$g1;
		if(v5!=v3) {$b=60; break;}
		$f.l=147;
		if(v2==null) {$b=123; break;}
		v6=vm.is(v2,3);
		if(v6==0) {$b=123; break;}
		$f.l=148;
		v10=v0;
		v11=v1;
		v12=vm.cast(v2,3);
		v6=_3e(v12);
		;
		if(v6==0) {$b=57; break;}
		v9=1;
		{ $b=58; break; }
	case 57:
		v9=0;
	case 58:
		_2e(v0,v1,v9);
		{ $b=123; break; }
	case 60:
		$f.l=149;
		v5=v0.type;
		v3=$g2;
		if(v5!=v3) {$b=83; break;}
		$f.l=150;
		if(v2==null) {$b=123; break;}
		$f.l=151;
		v6=vm.is(v2,4);
		if(v6==0) {$b=75; break;}
		$f.l=152;
		v13=vm.cast(v2,4);
		v14=_3f(v13);
		;
		v9=Math.floor(v14);
		_2e(v0,v1,v9);
		{ $b=123; break; }
	case 75:
		$f.l=153;
		v6=vm.is(v2,2);
		if(v6==0) {$b=123; break;}
		$f.l=154;
		v7=vm.cast(v2,2);
		v9=v7.$c.$vt[3](v7);
		;
		_2e(v0,v1,v9);
		{ $b=123; break; }
	case 83:
		$f.l=158;
		if(v2==null) {$b=104; break;}
		v5=v0.type;
		v3=_2(v2);
		;
		v6=_40(v5,v3);
		;
		if(v6!=0) {$b=104; break;}
		$f.l=159;
		v15=new java/lang/ClassCastException;
		v16=new java/lang/StringBuilder;
		_9(v16);
		v16=_b(v16,$str21);
		;
		v5=_2(v2);
		;
		v17=_a(v5);
		;
		v16=_b(v16,v17);
		;
		v16=_b(v16,$str22);
		;
		v5=v0.type;
		v17=_a(v5);
		;
		v16=_b(v16,v17);
		;
		v17=v16.$c.$vt[0](v16);
		;
		_41(v15,v17);
		throw v15;
	case 104:
		$f.l=160;
		v18=v0.modifiers;
		v6=_2b(v18);
		;
		if(v6==0) {$b=111; break;}
		$f.l=161;
		v19=v0.address;
		{ $b=117; break; }
	case 111:
		$f.l=162;
		v20=newArray(java/lang/Object,
		2);
		v20[0]=v1;
		v19=v0.address;
		v20[1]=v19;
		v19=_2c($str3,v20);
		;
	case 117:
		v4=v19;
		$f.l=163;
		v20=newArray(java/lang/Object,
		2);
		v20[0]=v4;
		v20[1]=v2;
		_30($str23,v20);
	case 123:
		$f.l=165;
		return;
}
}
//java/lang/reflect/Field:getByte
function _42(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=168;
v0=a0;
v1=a1;
v2=_2a(v0,v1);
;
v3=v2|0;
v4=v3&0xff;
return v4;
}
//java/lang/reflect/Field:setByte
function _43(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=172;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_2e(v0,v1,v3);
$f.l=173;
return;
}
//java/lang/reflect/Field:getChar
function _44(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=176;
v0=a0;
v1=a1;
v2=_2a(v0,v1);
;
v3=v2|0;
v4=v3&0xffff;
return v4;
}
//java/lang/reflect/Field:setChar
function _45(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=179;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_2e(v0,v1,v3);
$f.l=180;
return;
}
//java/lang/reflect/Field:getBoolean
function _46(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=183;
		v0=a0;
		v1=a1;
		v2=_2a(v0,v1);
		;
		v3=(v2 > 1) - (v2 < 1);
		if(v3!=0) {$b=8; break;}
		v4=1;
		{ $b=9; break; }
	case 8:
		v4=0;
	case 9:
		return v4;
}
}
//java/lang/reflect/Field:setBoolean
function _47(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=186;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=v0;
		v4=v1;
		if(v2==0) {$b=9; break;}
		v5=1;
		{ $b=10; break; }
	case 9:
		v5=0;
	case 10:
		_2e(v0,v1,v5);
		$f.l=187;
		return;
}
}
//java/lang/reflect/Field:getShort
function _48(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=190;
v0=a0;
v1=a1;
v2=_2a(v0,v1);
;
v3=v2|0;
v4=v3&0xffff;
return v4;
}
//java/lang/reflect/Field:setShort
function _49(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=193;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_2e(v0,v1,v3);
$f.l=194;
return;
}
//java/lang/reflect/Field:getInt
function _4a(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=197;
v0=a0;
v1=a1;
v2=_2a(v0,v1);
;
v3=v2|0;
return v3;
}
//java/lang/reflect/Field:setInt
function _4b(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=200;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_2e(v0,v1,v3);
$f.l=201;
return;
}
//java/lang/reflect/Field:getLong
function _4c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=204;
v0=a0;
v1=a1;
v2=_2a(v0,v1);
;
return v2;
}
//java/lang/reflect/Field:setLong
function _4d(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=207;
v0=a0;
v1=a1;
v2=a2;
_2e(v0,v1,v2);
$f.l=208;
return;
}
//java/lang/reflect/Field:getFloat
function _4e(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=211;
v0=a0;
v1=a1;
v2=_31(v0,v1);
;
v3=v2;
return v3;
}
//java/lang/reflect/Field:setFloat
function _4f(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=214;
v0=a0;
v1=a1;
v2=a2;
v3=v2;
_34(v0,v1,v3);
$f.l=215;
return;
}
//java/lang/reflect/Field:getDouble
function _50(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=218;
v0=a0;
v1=a1;
v2=_31(v0,v1);
;
return v2;
}
//java/lang/reflect/Field:setDouble
function _51(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=221;
v0=a0;
v1=a1;
v2=a2;
_34(v0,v1,v2);
$f.l=222;
return;
}
//java/lang/Boolean:<init>
function _52(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=a1;
_0(v0);
$f.l=46;
v0.value=v1;
$f.l=47;
return;
}
//java/lang/Boolean:booleanValue
function _3e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Boolean:equals
function _53(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=60;
		v0=a0;
		v1=a1;
		if(v1==null) {$b=13; break;}
		v2=_2(v1);
		;
		v3=_2(v0);
		;
		if(v2!=v3) {$b=13; break;}
		v4=vm.cast(v1,3);
		v5=v4.value;
		v6=v0.value;
		if(v5!=v6) {$b=13; break;}
		v6=1;
		{ $b=14; break; }
	case 13:
		v6=0;
	case 14:
		return v6;
}
}
//java/lang/Boolean:hashCode
function _54(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=67;
		v0=a0;
		v1=v0.value;
		if(v1==0) {$b=6; break;}
		v2=1231;
		{ $b=7; break; }
	case 6:
		v2=1237;
	case 7:
		return v2;
}
}
//java/lang/Boolean:toString
function _55(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=74;
		v0=a0;
		v1=v0.value;
		if(v1==0) {$b=6; break;}
		$f.l=75;
		return $str24;
	case 6:
		$f.l=77;
		return $str25;
}
}
//java/lang/Boolean:valueOf
function _38(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=86;
		v0=a0;
		if(v0==0) {$b=5; break;}
		v1=$g8;
		{ $b=6; break; }
	case 5:
		v1=$g9;
	case 6:
		return v1;
}
}
//java/lang/Boolean:valueOf
function _56(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=90;
v0=a0;
v1=_57(v0);
;
v2=_38(v1);
;
return v2;
}
//java/lang/Boolean:parseBoolean
function _57(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=94;
		v0=a0;
		if(v0==null) {$b=7; break;}
		v1=_58(v0,$str24);
		;
		if(v1==0) {$b=7; break;}
		v1=1;
		{ $b=8; break; }
	case 7:
		v1=0;
	case 8:
		return v1;
}
}
//java/lang/Boolean:compareTo
function _59(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=98;
		v0=a0;
		v1=a1;
		v2=v1.value;
		v3=v0.value;
		if(v2!=v3) {$b=8; break;}
		$f.l=99;
		return 0;
	case 8:
		$f.l=101;
		v3=v1.value;
		if(v3==0) {$b=13; break;}
		$f.l=102;
		return -1;
	case 13:
		$f.l=104;
		return 1;
}
}
//java/lang/Boolean:<clinit>
function _5a(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=new java/lang/Boolean;
_52(v0,0);
$g9=v0;
$f.l=35;
v0=new java/lang/Boolean;
_52(v0,1);
$g8=v0;
$f.l=37;
v1=vm.getClass(5);
v1=v1.componentType;
$g1=v1;
return;
}
//java/lang/Character:<init>
function _5b(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=a1;
_0(v0);
$f.l=53;
v0.value=v1;
$f.l=54;
return;
}
//java/lang/Character:charValue
function _3f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Character:digit
function _5c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=67;
v0=a0;
v1=a1;
v2=_5d(v0,v1);
;
return v2;
}
//java/lang/Character:digit
function _5d(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=84;
		v0=a0;
		v1=a1;
		if(v1<2) {$b=5; break;}
		if(v1<=36) {$b=7; break;}
	case 5:
		$f.l=85;
		return -1;
	case 7:
		$f.l=87;
		if(v0>=128) {$b=36; break;}
		$f.l=89;
		v2=-1;
		$f.l=90;
		if(48>v0) {$b=17; break;}
		if(v0>57) {$b=17; break;}
		$f.l=91;
		v2=(v0 - 48)|0;
		{ $b=30; break; }
	case 17:
		$f.l=92;
		if(97>v0) {$b=24; break;}
		if(v0>122) {$b=24; break;}
		$f.l=93;
		v3=(v0 - 97)|0;
		v2=(10 + v3)|0;
		{ $b=30; break; }
	case 24:
		$f.l=94;
		if(65>v0) {$b=30; break;}
		if(v0>90) {$b=30; break;}
		$f.l=95;
		v3=(v0 - 65)|0;
		v2=(10 + v3)|0;
	case 30:
		$f.l=97;
		if(v2>=v1) {$b=34; break;}
		v3=v2;
		{ $b=35; break; }
	case 34:
		v3=-1;
	case 35:
		return v3;
	case 36:
		$f.l=100;
		return v0;
}
}
//java/lang/Character:equals
function _5e(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=108;
		v0=a0;
		v1=a1;
		if(v1==null) {$b=13; break;}
		v2=_2(v1);
		;
		v3=_2(v0);
		;
		if(v2!=v3) {$b=13; break;}
		v4=vm.cast(v1,4);
		v5=v4.value;
		v6=v0.value;
		if(v5!=v6) {$b=13; break;}
		v7=1;
		{ $b=14; break; }
	case 13:
		v7=0;
	case 14:
		return v7;
}
}
//java/lang/Character:hashCode
function _5f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=115;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Character:isDigit
function _60(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=122;
v0=a0;
v1=_61(v0);
;
return v1;
}
//java/lang/Character:isDigit
function _61(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=135;
		v0=a0;
		if(48>v0) {$b=6; break;}
		if(v0>57) {$b=6; break;}
		$f.l=136;
		return 1;
	case 6:
		$f.l=138;
		if(v0>=1632) {$b=10; break;}
		$f.l=139;
		return 0;
	case 10:
		$f.l=142;
		return 0;
}
}
//java/lang/Character:isLowerCase
function _62(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=152;
v0=a0;
v1=_63(v0);
;
return v1;
}
//java/lang/Character:isLowerCase
function _63(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=165;
		v0=a0;
		if(97>v0) {$b=6; break;}
		if(v0>122) {$b=6; break;}
		$f.l=166;
		return 1;
	case 6:
		$f.l=168;
		if(v0>=128) {$b=10; break;}
		$f.l=169;
		return 0;
	case 10:
		$f.l=172;
		return 0;
}
}
//java/lang/Character:isUpperCase
function _64(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=182;
v0=a0;
v1=_65(v0);
;
return v1;
}
//java/lang/Character:isUpperCase
function _65(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=195;
		v0=a0;
		if(65>v0) {$b=6; break;}
		if(v0>90) {$b=6; break;}
		$f.l=196;
		return 1;
	case 6:
		$f.l=202;
		return 0;
}
}
//java/lang/Character:toLowerCase
function _66(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=210;
v0=a0;
v1=_67(v0);
;
v2=v1&0xffff;
return v2;
}
//java/lang/Character:toLowerCase
function _67(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=224;
		v0=a0;
		if(65>v0) {$b=8; break;}
		if(v0>90) {$b=8; break;}
		$f.l=225;
		v1=(v0 - -32)|0;
		v2=v1&0xffff;
		return v2;
	case 8:
		$f.l=231;
		return v0;
}
}
//java/lang/Character:toString
function _68(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=239;
v0=a0;
v1=new java/lang/String;
v2=newArray(C,
1);
v3=v0.value;
v2[0]=v3;
_69(v1,v2);
return v1;
}
//java/lang/Character:toUpperCase
function _6a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=247;
v0=a0;
v1=_6b(v0);
;
v2=v1&0xffff;
return v2;
}
//java/lang/Character:toUpperCase
function _6b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=262;
		v0=a0;
		if(97>v0) {$b=8; break;}
		if(v0>122) {$b=8; break;}
		$f.l=263;
		v1=(v0 - 32)|0;
		v2=v1&0xffff;
		return v2;
	case 8:
		$f.l=269;
		return v0;
}
}
//java/lang/Character:isValidCodePoint
function _6c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=378;
		v0=a0;
		if(0>v0) {$b=6; break;}
		if(1114111<v0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		return v1;
}
}
//java/lang/Character:isSupplementaryCodePoint
function _6d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=392;
		v0=a0;
		if(65536>v0) {$b=6; break;}
		if(1114111<v0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		return v1;
}
}
//java/lang/Character:isHighSurrogate
function _6e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=408;
		v0=a0;
		if(55296>v0) {$b=6; break;}
		if(56319<v0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		return v1;
}
}
//java/lang/Character:isLowSurrogate
function _6f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=424;
		v0=a0;
		if(56320>v0) {$b=6; break;}
		if(57343<v0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		return v1;
}
}
//java/lang/Character:isSurrogatePair
function _70(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=441;
		v0=a0;
		v1=a1;
		v2=_6e(v0);
		;
		if(v2==0) {$b=9; break;}
		v2=_6f(v1);
		;
		if(v2==0) {$b=9; break;}
		v2=1;
		{ $b=10; break; }
	case 9:
		v2=0;
	case 10:
		return v2;
}
}
//java/lang/Character:charCount
function _71(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=461;
		v0=a0;
		if(v0<65536) {$b=5; break;}
		v1=2;
		{ $b=6; break; }
	case 5:
		v1=1;
	case 6:
		return v1;
}
}
//java/lang/Character:toCodePoint
function _72(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=482;
v0=a0;
v1=a1;
v4=(v0 & 1023)|0;
v2=(v4 << 10)|0;
$f.l=483;
v3=(v1 & 1023)|0;
$f.l=484;
v5=(v2 | v3)|0;
v5=(v5 + 65536)|0;
return v5;
}
//java/lang/Character:codePointAt
function _73(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=507;
		v0=a0;
		v1=a1;
		if(v0!=null) {$b=8; break;}
		$f.l=508;
		v5=new java/lang/NullPointerException;
		_74(v5);
		throw v5;
	case 8:
		$f.l=510;
		v2=v0v0.$c.$it[-1](v0);
		;
		$f.l=511;
		if(v1<0) {$b=13; break;}
		if(v1<v2) {$b=17; break;}
	case 13:
		$f.l=512;
		v6=new java/lang/IndexOutOfBoundsException;
		_75(v6);
		throw v6;
	case 17:
		$f.l=515;
		v7=(v1 + 1)|0;
		v3=v0v0.$c.$it[-1](v0,v1);
		;
		$f.l=516;
		if(v7<v2) {$b=24; break;}
		$f.l=517;
		return v3;
	case 24:
		$f.l=519;
		v4=v0v0.$c.$it[-1](v0,v7);
		;
		$f.l=520;
		v8=_70(v3,v4);
		;
		if(v8==0) {$b=32; break;}
		$f.l=521;
		v9=_72(v3,v4);
		;
		return v9;
	case 32:
		$f.l=523;
		return v3;
}
}
//java/lang/Character:codePointAt
function _76(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=546;
		v0=a0;
		v1=a1;
		if(v0!=null) {$b=8; break;}
		$f.l=547;
		v5=new java/lang/NullPointerException;
		_74(v5);
		throw v5;
	case 8:
		$f.l=549;
		v2=v0.len;
		$f.l=550;
		if(v1<0) {$b=13; break;}
		if(v1<v2) {$b=17; break;}
	case 13:
		$f.l=551;
		v6=new java/lang/IndexOutOfBoundsException;
		_75(v6);
		throw v6;
	case 17:
		$f.l=554;
		v7=(v1 + 1)|0;
		v3=v0[v1];
		$f.l=555;
		if(v7<v2) {$b=24; break;}
		$f.l=556;
		return v3;
	case 24:
		$f.l=558;
		v4=v0[v7];
		$f.l=559;
		v8=_70(v3,v4);
		;
		if(v8==0) {$b=32; break;}
		$f.l=560;
		v9=_72(v3,v4);
		;
		return v9;
	case 32:
		$f.l=562;
		return v3;
}
}
//java/lang/Character:codePointAt
function _77(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=589;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v1<0) {$b=9; break;}
		if(v1>=v2) {$b=9; break;}
		if(v2<0) {$b=9; break;}
		v5=v0.len;
		if(v2<=v5) {$b=13; break;}
	case 9:
		$f.l=590;
		v6=new java/lang/IndexOutOfBoundsException;
		_75(v6);
		throw v6;
	case 13:
		$f.l=593;
		v7=(v1 + 1)|0;
		v3=v0[v1];
		$f.l=594;
		if(v7<v2) {$b=20; break;}
		$f.l=595;
		return v3;
	case 20:
		$f.l=597;
		v4=v0[v7];
		$f.l=598;
		v8=_70(v3,v4);
		;
		if(v8==0) {$b=28; break;}
		$f.l=599;
		v5=_72(v3,v4);
		;
		return v5;
	case 28:
		$f.l=601;
		return v3;
}
}
//java/lang/Character:codePointBefore
function _78(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=625;
		v0=a0;
		v1=a1;
		if(v0!=null) {$b=8; break;}
		$f.l=626;
		v5=new java/lang/NullPointerException;
		_74(v5);
		throw v5;
	case 8:
		$f.l=628;
		v2=v0v0.$c.$it[-1](v0);
		;
		$f.l=629;
		if(v1<1) {$b=13; break;}
		if(v1<=v2) {$b=17; break;}
	case 13:
		$f.l=630;
		v6=new java/lang/IndexOutOfBoundsException;
		_75(v6);
		throw v6;
	case 17:
		$f.l=633;
		v1=(v1 + -1)|0;
		v3=v0v0.$c.$it[-1](v0,v1);
		;
		$f.l=634;
		v1=(v1 + -1)|0;
		if(v1>=0) {$b=25; break;}
		$f.l=635;
		return v3;
	case 25:
		$f.l=637;
		v4=v0v0.$c.$it[-1](v0,v1);
		;
		$f.l=638;
		v7=_70(v4,v3);
		;
		if(v7==0) {$b=33; break;}
		$f.l=639;
		v8=_72(v4,v3);
		;
		return v8;
	case 33:
		$f.l=641;
		return v3;
}
}
//java/lang/Character:codePointBefore
function _79(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=665;
		v0=a0;
		v1=a1;
		if(v0!=null) {$b=8; break;}
		$f.l=666;
		v5=new java/lang/NullPointerException;
		_74(v5);
		throw v5;
	case 8:
		$f.l=668;
		v2=v0.len;
		$f.l=669;
		if(v1<1) {$b=13; break;}
		if(v1<=v2) {$b=17; break;}
	case 13:
		$f.l=670;
		v6=new java/lang/IndexOutOfBoundsException;
		_75(v6);
		throw v6;
	case 17:
		$f.l=673;
		v1=(v1 + -1)|0;
		v3=v0[v1];
		$f.l=674;
		v1=(v1 + -1)|0;
		if(v1>=0) {$b=25; break;}
		$f.l=675;
		return v3;
	case 25:
		$f.l=677;
		v4=v0[v1];
		$f.l=678;
		v7=_70(v4,v3);
		;
		if(v7==0) {$b=33; break;}
		$f.l=679;
		v8=_72(v4,v3);
		;
		return v8;
	case 33:
		$f.l=681;
		return v3;
}
}
//java/lang/Character:codePointBefore
function _7a(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=709;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v0!=null) {$b=9; break;}
		$f.l=710;
		v6=new java/lang/NullPointerException;
		_74(v6);
		throw v6;
	case 9:
		$f.l=712;
		v3=v0.len;
		$f.l=713;
		if(v1<=v2) {$b=16; break;}
		if(v1>v3) {$b=16; break;}
		if(v2<0) {$b=16; break;}
		if(v2<v3) {$b=20; break;}
	case 16:
		$f.l=714;
		v7=new java/lang/IndexOutOfBoundsException;
		_75(v7);
		throw v7;
	case 20:
		$f.l=717;
		v1=(v1 + -1)|0;
		v4=v0[v1];
		$f.l=718;
		v1=(v1 + -1)|0;
		if(v1>=v2) {$b=28; break;}
		$f.l=719;
		return v4;
	case 28:
		$f.l=721;
		v5=v0[v1];
		$f.l=722;
		v8=_70(v5,v4);
		;
		if(v8==0) {$b=36; break;}
		$f.l=723;
		v9=_72(v5,v4);
		;
		return v9;
	case 36:
		$f.l=725;
		return v4;
}
}
//java/lang/Character:toChars
function _7b(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=751;
		v0=a0;
		v1=a1;
		v2=a2;
		v6=_6c(v0);
		;
		if(v6!=0) {$b=10; break;}
		$f.l=752;
		v7=new java/lang/IllegalArgumentException;
		_7c(v7);
		throw v7;
	case 10:
		$f.l=754;
		if(v1!=null) {$b=16; break;}
		$f.l=755;
		v8=new java/lang/NullPointerException;
		_74(v8);
		throw v8;
	case 16:
		$f.l=757;
		if(v2<0) {$b=20; break;}
		v9=v1.len;
		if(v2<v9) {$b=24; break;}
	case 20:
		$f.l=758;
		v10=new java/lang/IndexOutOfBoundsException;
		_75(v10);
		throw v10;
	case 24:
		$f.l=761;
		v6=_6d(v0);
		;
		if(v6==0) {$b=53; break;}
		$f.l=762;
		v9=v1.len;
		v9=(v9 - 1)|0;
		if(v2!=v9) {$b=35; break;}
		$f.l=763;
		v10=new java/lang/IndexOutOfBoundsException;
		_75(v10);
		throw v10;
	case 35:
		$f.l=767;
		v3=(v0 - 65536)|0;
		$f.l=768;
		v9=(v3 >> 10)|0;
		v9=(v9 & 1023)|0;
		v4=(55296 | v9)|0;
		$f.l=769;
		v9=(v3 & 1023)|0;
		v5=(56320 | v9)|0;
		$f.l=770;
		v11=v4&0xffff;
		v1[v2]=v11;
		$f.l=771;
		v9=(v2 + 1)|0;
		v11=v5&0xffff;
		v1[v9]=v11;
		$f.l=772;
		return 2;
	case 53:
		$f.l=775;
		v11=v0&0xffff;
		v1[v2]=v11;
		$f.l=776;
		return 1;
}
}
//java/lang/Character:toChars
function _7d(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=795;
		v0=a0;
		v4=_6c(v0);
		;
		if(v4!=0) {$b=8; break;}
		$f.l=796;
		v5=new java/lang/IllegalArgumentException;
		_7c(v5);
		throw v5;
	case 8:
		$f.l=799;
		v4=_6d(v0);
		;
		if(v4==0) {$b=27; break;}
		$f.l=800;
		v1=(v0 - 65536)|0;
		$f.l=801;
		v6=(v1 >> 10)|0;
		v6=(v6 & 1023)|0;
		v2=(55296 | v6)|0;
		$f.l=802;
		v6=(v1 & 1023)|0;
		v3=(56320 | v6)|0;
		$f.l=803;
		v7=newArray(C,
		2);
		v8=v2&0xffff;
		v7[0]=v8;
		v8=v3&0xffff;
		v7[1]=v8;
		return v7;
	case 27:
		$f.l=805;
		v7=newArray(C,
		1);
		v8=v0&0xffff;
		v7[0]=v8;
		return v7;
}
}
//java/lang/Character:codePointCount
function _7e(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=828;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v0!=null) {$b=9; break;}
		$f.l=829;
		v7=new java/lang/NullPointerException;
		_74(v7);
		throw v7;
	case 9:
		$f.l=831;
		v3=v0v0.$c.$it[-1](v0);
		;
		$f.l=832;
		if(v1<0) {$b=15; break;}
		if(v2>v3) {$b=15; break;}
		if(v1<=v2) {$b=19; break;}
	case 15:
		$f.l=833;
		v8=new java/lang/IndexOutOfBoundsException;
		_75(v8);
		throw v8;
	case 19:
		$f.l=836;
		v4=0;
		$f.l=837;
		v5=v1;
	case 23:
		if(v5>=v2) {$b=44; break;}
		$f.l=838;
		v6=v0v0.$c.$it[-1](v0,v5);
		;
		$f.l=839;
		v9=_6e(v6);
		;
		if(v9==0) {$b=39; break;}
		$f.l=840;
		v5=(v5 + 1)|0;
		if(v5>=v2) {$b=39; break;}
		$f.l=841;
		v6=v0v0.$c.$it[-1](v0,v5);
		;
		$f.l=842;
		v9=_6f(v6);
		;
		if(v9!=0) {$b=39; break;}
		$f.l=843;
		v4=(v4 + 1)|0;
	case 39:
		$f.l=847;
		v4=(v4 + 1)|0;
		$f.l=837;
		v5=(v5 + 1)|0;
		{ $b=23; break; }
	case 44:
		$f.l=849;
		return v4;
}
}
//java/lang/Character:codePointCount
function _7f(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=872;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v0!=null) {$b=9; break;}
		$f.l=873;
		v8=new java/lang/NullPointerException;
		_74(v8);
		throw v8;
	case 9:
		$f.l=875;
		v3=v0.len;
		$f.l=876;
		v4=(v1 + v2)|0;
		$f.l=877;
		if(v1<0) {$b=17; break;}
		if(v2<0) {$b=17; break;}
		if(v4<=v3) {$b=21; break;}
	case 17:
		$f.l=878;
		v9=new java/lang/IndexOutOfBoundsException;
		_75(v9);
		throw v9;
	case 21:
		$f.l=881;
		v5=0;
		$f.l=882;
		v6=v1;
	case 25:
		if(v6>=v4) {$b=46; break;}
		$f.l=883;
		v7=v0[v6];
		$f.l=884;
		v10=_6e(v7);
		;
		if(v10==0) {$b=41; break;}
		$f.l=885;
		v6=(v6 + 1)|0;
		if(v6>=v4) {$b=41; break;}
		$f.l=886;
		v7=v0[v6];
		$f.l=887;
		v10=_6f(v7);
		;
		if(v10!=0) {$b=41; break;}
		$f.l=888;
		v5=(v5 + 1)|0;
	case 41:
		$f.l=892;
		v5=(v5 + 1)|0;
		$f.l=882;
		v6=(v6 + 1)|0;
		{ $b=25; break; }
	case 46:
		$f.l=894;
		return v5;
}
}
//java/lang/Character:offsetByCodePoints
function _80(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=921;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v0!=null) {$b=9; break;}
		$f.l=922;
		v7=new java/lang/NullPointerException;
		_74(v7);
		throw v7;
	case 9:
		$f.l=924;
		v3=v0v0.$c.$it[-1](v0);
		;
		$f.l=925;
		if(v1<0) {$b=14; break;}
		if(v1<=v3) {$b=18; break;}
	case 14:
		$f.l=926;
		v8=new java/lang/IndexOutOfBoundsException;
		_75(v8);
		throw v8;
	case 18:
		$f.l=929;
		if(v2!=0) {$b=22; break;}
		$f.l=930;
		return v1;
	case 22:
		$f.l=933;
		if(v2<=0) {$b=56; break;}
		$f.l=934;
		v4=v2;
		$f.l=935;
		v5=v1;
	case 28:
		$f.l=936;
		if(v4<=0) {$b=54; break;}
		$f.l=937;
		v4=(v4 + -1)|0;
		$f.l=938;
		if(v5<v3) {$b=38; break;}
		$f.l=939;
		v8=new java/lang/IndexOutOfBoundsException;
		_75(v8);
		throw v8;
	case 38:
		$f.l=941;
		v9=v0v0.$c.$it[-1](v0,v5);
		;
		v10=_6e(v9);
		;
		if(v10==0) {$b=51; break;}
		$f.l=942;
		v6=(v5 + 1)|0;
		$f.l=943;
		if(v6>=v3) {$b=51; break;}
		v9=v0v0.$c.$it[-1](v0,v6);
		;
		v10=_6f(v9);
		;
		if(v10==0) {$b=51; break;}
		$f.l=944;
		v5=(v5 + 1)|0;
	case 51:
		$f.l=947;
		v5=(v5 + 1)|0;
		{ $b=28; break; }
	case 54:
		$f.l=949;
		return v5;
	case 56:
		$f.l=952;
		v4=-v2;
		$f.l=953;
		v5=v1;
	case 60:
		$f.l=954;
		if(v4<=0) {$b=87; break;}
		$f.l=955;
		v4=(v4 + -1)|0;
		$f.l=956;
		v5=(v5 + -1)|0;
		$f.l=957;
		if(v5>=0) {$b=72; break;}
		$f.l=958;
		v8=new java/lang/IndexOutOfBoundsException;
		_75(v8);
		throw v8;
	case 72:
		$f.l=960;
		v9=v0v0.$c.$it[-1](v0,v5);
		;
		v10=_6f(v9);
		;
		if(v10==0) {$b=60; break;}
		$f.l=961;
		v6=(v5 - 1)|0;
		$f.l=962;
		if(v6<0) {$b=85; break;}
		v9=v0v0.$c.$it[-1](v0,v6);
		;
		v10=_6e(v9);
		;
		if(v10==0) {$b=85; break;}
		$f.l=963;
		v5=(v5 + -1)|0;
	case 85:
		$f.l=965;
		{ $b=60; break; }
	case 87:
		$f.l=967;
		return v5;
}
}
//java/lang/Character:offsetByCodePoints
function _81(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1002;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		if(v0!=null) {$b=11; break;}
		$f.l=1003;
		v9=new java/lang/NullPointerException;
		_74(v9);
		throw v9;
	case 11:
		$f.l=1005;
		v5=(v1 + v2)|0;
		$f.l=1006;
		if(v1<0) {$b=20; break;}
		if(v2<0) {$b=20; break;}
		v10=v0.len;
		if(v5>v10) {$b=20; break;}
		if(v3<v1) {$b=20; break;}
		if(v3<=v5) {$b=24; break;}
	case 20:
		$f.l=1008;
		v11=new java/lang/IndexOutOfBoundsException;
		_75(v11);
		throw v11;
	case 24:
		$f.l=1011;
		if(v4!=0) {$b=28; break;}
		$f.l=1012;
		return v3;
	case 28:
		$f.l=1015;
		if(v4<=0) {$b=62; break;}
		$f.l=1016;
		v6=v4;
		$f.l=1017;
		v7=v3;
	case 34:
		$f.l=1018;
		if(v6<=0) {$b=60; break;}
		$f.l=1019;
		v6=(v6 + -1)|0;
		$f.l=1020;
		if(v7<v5) {$b=44; break;}
		$f.l=1021;
		v11=new java/lang/IndexOutOfBoundsException;
		_75(v11);
		throw v11;
	case 44:
		$f.l=1023;
		v12=v0[v7];
		v13=_6e(v12);
		;
		if(v13==0) {$b=57; break;}
		$f.l=1024;
		v8=(v7 + 1)|0;
		$f.l=1025;
		if(v8>=v5) {$b=57; break;}
		v12=v0[v8];
		v13=_6f(v12);
		;
		if(v13==0) {$b=57; break;}
		$f.l=1026;
		v7=(v7 + 1)|0;
	case 57:
		$f.l=1029;
		v7=(v7 + 1)|0;
		{ $b=34; break; }
	case 60:
		$f.l=1031;
		return v7;
	case 62:
		$f.l=1034;
		v6=-v4;
		$f.l=1035;
		v7=v3;
	case 66:
		$f.l=1036;
		if(v6<=0) {$b=93; break;}
		$f.l=1037;
		v6=(v6 + -1)|0;
		$f.l=1038;
		v7=(v7 + -1)|0;
		$f.l=1039;
		if(v7>=v1) {$b=78; break;}
		$f.l=1040;
		v11=new java/lang/IndexOutOfBoundsException;
		_75(v11);
		throw v11;
	case 78:
		$f.l=1042;
		v12=v0[v7];
		v13=_6f(v12);
		;
		if(v13==0) {$b=66; break;}
		$f.l=1043;
		v8=(v7 - 1)|0;
		$f.l=1044;
		if(v8<v1) {$b=91; break;}
		v12=v0[v8];
		v13=_6e(v12);
		;
		if(v13==0) {$b=91; break;}
		$f.l=1045;
		v7=(v7 + -1)|0;
	case 91:
		$f.l=1047;
		{ $b=66; break; }
	case 93:
		$f.l=1049;
		return v7;
}
}
//java/lang/Character:reverseBytes
function _82(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=1059;
v0=a0;
v1=(v0 << 8)|0;
v2=(v0 >> 8)|0;
v1=(v1 | v2)|0;
v2=v1&0xffff;
return v2;
}
//java/lang/Character:valueOf
function _39(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1069;
v0=a0;
v1=new java/lang/Character;
_5b(v1,v0);
return v1;
}
//java/lang/Character:isWhitespace
function _83(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1076;
v0=a0;
v1=_84(v0);
;
return v1;
}
//java/lang/Character:isWhitespace
function _84(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1089;
		v0=a0;
		if(v0<28) {$b=4; break;}
		if(v0<=32) {$b=6; break;}
	case 4:
		if(v0<9) {$b=8; break;}
		if(v0>13) {$b=8; break;}
	case 6:
		$f.l=1090;
		return 1;
	case 8:
		$f.l=1092;
		if(v0>=4096) {$b=12; break;}
		$f.l=1093;
		return 0;
	case 12:
		$f.l=1096;
		if(v0==5760) {$b=15; break;}
		if(v0!=6158) {$b=17; break;}
	case 15:
		$f.l=1097;
		return 1;
	case 17:
		$f.l=1099;
		if(v0>=8192) {$b=21; break;}
		$f.l=1100;
		return 0;
	case 21:
		$f.l=1103;
		if(v0==8199) {$b=24; break;}
		if(v0!=8239) {$b=26; break;}
	case 24:
		$f.l=1104;
		return 0;
	case 26:
		$f.l=1106;
		if(v0>65535) {$b=38; break;}
		$f.l=1108;
		if(v0<=8202) {$b=34; break;}
		if(v0==8232) {$b=34; break;}
		if(v0==8233) {$b=34; break;}
		if(v0==8287) {$b=34; break;}
		if(v0!=12288) {$b=36; break;}
	case 34:
		v1=1;
		{ $b=37; break; }
	case 36:
		v1=0;
	case 37:
		return v1;
	case 38:
		$f.l=1112;
		return 0;
}
}
//java/lang/Character:toString
function _85(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1116;
v0=a0;
v1=_86(v0);
;
return v1;
}
//java/lang/Character:<clinit>
function _87(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=vm.getClass(6);
v0=v0.componentType;
$g2=v0;
return;
}
//java/lang/Class:<init>
function _88(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
_0(v0);
return;
}
//java/lang/Class:forName
function _89(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=52;
		v0=a0;
		v1=v0;
		v2=-1;
		v5=v1.$c.$vt[2](v1);
		;
		switch(v5){
		case 2887: $b=6;break;
		case 2888: $b=18;break;
		case 2904: $b=14;break;
		case 2911: $b=10;break;
		}
	case 6:
		v6=v1.$c.$vt[1](v1,$str26);
		;
		if(v6==0) {$b=21; break;}
		v2=0;
		{ $b=21; break; }
	case 10:
		v6=v1.$c.$vt[1](v1,$str27);
		;
		if(v6==0) {$b=21; break;}
		v2=1;
		{ $b=21; break; }
	case 14:
		v6=v1.$c.$vt[1](v1,$str28);
		;
		if(v6==0) {$b=21; break;}
		v2=2;
		{ $b=21; break; }
	case 18:
		v6=v1.$c.$vt[1](v1,$str29);
		;
		if(v6==0) {$b=21; break;}
		v2=3;
	case 21:
		switch(v2){
		case 0: $b=22;break;
		case 1: $b=24;break;
		case 2: $b=26;break;
		case 3: $b=28;break;
		}
	case 22:
		$f.l=53;
		return vm.getClass(7);
	case 24:
		$f.l=54;
		return vm.getClass(5);
	case 26:
		$f.l=55;
		return vm.getClass(8);
	case 28:
		$f.l=56;
		return vm.getClass(6);
		$f.l=58;
		v7=newArray(java/lang/Object,
		0);
		v8=_8a($str30,v7);
		;
		$f.l=59;
		v9=0;
		$f.l=60;
		v3=_8b(v8,v9);
		;
	case 37:
		$f.l=61;
		if(v3==null) {$b=52; break;}
		$f.l=62;
		v4=vm.cast(v3,9);
		$f.l=63;
		v10=_a(v4);
		;
		v6=v10.$c.$vt[1](v10,v0);
		;
		if(v6==0) {$b=46; break;}
		return v4;
	case 46:
		$f.l=64;
		v5=v9;
		v9=(v9 + 1)|0;
		v3=_8b(v8,v5);
		;
		$f.l=65;
		{ $b=37; break; }
	case 52:
		$f.l=66;
		v11=new java/lang/ClassNotFoundException;
		_8c(v11,v0);
		throw v11;
}
}
//java/lang/Class:getSuperclass
function _8d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=70;
v0=a0;
v1=v0.superClass;
return v1;
}
//java/lang/Class:getComponentType
function _13(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=74;
v0=a0;
v1=v0.componentType;
return v1;
}
//java/lang/Class:isPrimitive
function _8e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=78;
		v0=a0;
		v1=$g0;
		if(v0==v1) {$b=20; break;}
		v1=$g2;
		if(v0==v1) {$b=20; break;}
		v1=$g1;
		if(v0==v1) {$b=20; break;}
		v1=$g3;
		if(v0==v1) {$b=20; break;}
		v1=$g4;
		if(v0==v1) {$b=20; break;}
		v1=$g7;
		if(v0==v1) {$b=20; break;}
		v1=$g5;
		if(v0==v1) {$b=20; break;}
		v1=$g6;
		if(v0==v1) {$b=20; break;}
		v1=$g10;
		if(v0!=v1) {$b=22; break;}
	case 20:
		v2=1;
		{ $b=23; break; }
	case 22:
		v2=0;
	case 23:
		return v2;
}
}
//java/lang/Class:getModifiers
function _8f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=83;
v0=a0;
v1=v0.modifiers;
return v1;
}
//java/lang/Class:getConstructor
function _90(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=87;
		v0=a0;
		v1=a1;
		v2=_91(v0,$str31,v1);
		;
		$f.l=88;
		if(v2==null) {$b=8; break;}
		$f.l=89;
		v2.klass=vm.getClass(10);
	case 8:
		$f.l=91;
		v3=vm.cast(v2,10);
		return v3;
}
}
//java/lang/Class:getDeclaredConstructor
function _92(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=95;
		v0=a0;
		v1=a1;
		v2=_93(v0,$str31,v1);
		;
		$f.l=96;
		if(v2==null) {$b=8; break;}
		$f.l=97;
		v2.klass=vm.getClass(10);
	case 8:
		$f.l=99;
		v3=vm.cast(v2,10);
		return v3;
}
}
//java/lang/Class:getName
function _a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=103;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/Class:getResourceAsStream
function _94(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=110;
v0=a0;
v1=a1;
return null;
}
//java/lang/Class:getResource
function _95(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=114;
v0=a0;
v1=a1;
return null;
}
//java/lang/Class:isArray
function _11(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=118;
		v0=a0;
		v1=v0.componentType;
		if(v1==null) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/lang/Class:isAssignableFrom
function _40(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=134;
v0=a0;
v1=a1;
v2=newArray(java/lang/Object,
2);
v2[0]=v0;
v2[1]=v1;
v3=_96($str32,v2);
;
return v3;
}
//java/lang/Class:isInstance
function _97(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=138;
v0=a0;
v1=a1;
v2=_2(v1);
;
v3=_40(v0,v2);
;
return v3;
}
//java/lang/Class:isInterface
function _98(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=142;
v0=a0;
return 0;
}
//java/lang/Class:newInstance
function _99(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=146;
		v0=a0;
		v3=newArray(java/lang/Class,
		0);
		v1=_90(v0,v3);
		;
		$f.l=147;
		if(v1==null) {$b=10; break;}
		$f.l=148;
		v4=newArray(java/lang/Object,
		0);
		v5=_9a(v1,v4);
		;
		return v5;
	case 10:
		$f.l=149;
		v6=new java/lang/IllegalArgumentException;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v7=v0.name;
		v2=_b(v2,v7);
		;
		v2=_b(v2,$str33);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_9b(v6,v7);
		throw v6;
}
}
//java/lang/Class:toString
function _9c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=153;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v2=_a(v0);
;
v1=_b(v1,v2);
;
v1=_b(v1,$str34);
;
v2=v1.$c.$vt[0](v1);
;
return v2;
}
//java/lang/Class:isAnnotation
function _9d(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=157;
v0=a0;
return 0;
}
//java/lang/Class:getAnnotation
function _9e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=166;
		v0=a0;
		v1=a1;
		if(v1!=null) {$b=8; break;}
		$f.l=167;
		v2=new java/lang/NullPointerException;
		_9f(v2,$str35);
		throw v2;
	case 8:
		$f.l=170;
		return null;
}
}
//java/lang/Class:getAnnotations
function _a0(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=177;
v0=a0;
return null;
}
//java/lang/Class:getDeclaredAnnotations
function _a1(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=184;
v0=a0;
return null;
}
//java/lang/Class:isAnnotationPresent
function _a2(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=192;
v0=a0;
v1=a1;
return 0;
}
//java/lang/Class:asSubclass
function _a3(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=204;
v0=a0;
v1=a1;
return null;
}
//java/lang/Class:cast
function _a4(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=221;
v0=a0;
v1=a1;
return v1;
}
//java/lang/Class:isEnum
function _a5(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=231;
v0=a0;
return 0;
}
//java/lang/Class:isAnonymousClass
function _a6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=238;
v0=a0;
return 0;
}
//java/lang/Class:getSimpleName
function _a7(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=245;
v0=a0;
v1=_a(v0);
;
$f.l=246;
v2=_a8(v1,46);
;
v2=(v2 + 1)|0;
v3=_a9(v1,v2);
;
return v3;
}
//java/lang/Class:isSynthetic
function _aa(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=253;
v0=a0;
return 0;
}
//java/lang/Class:getCanonicalName
function _ab(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=257;
v0=a0;
v1=_a(v0);
;
return v1;
}
//java/lang/Class:equals
function _ac(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=262;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/lang/Class:desiredAssertionStatus
function _ad(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=266;
v0=a0;
return 0;
}
//java/lang/Class:getInterfaces
function _ae(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=270;
		v0=a0;
		v1=v0.interfaces;
		if(v1==null) {$b=8; break;}
		v1=v0.interfaces;
		v2=_10(v1);
		;
		v1=vm.cast(v2,11);
		{ $b=9; break; }
	case 8:
		v1=newArray(java/lang/Class,
		0);
	case 9:
		return v1;
}
}
//java/lang/Class:findMethod
function _af(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=274;
		v0=a0;
		v1=a1;
		v2=a2;
		v9=v0.methods;
		if(v9!=null) {$b=7; break;}
		return null;
	case 7:
		$f.l=275;
		v3=v0.methods;
		v4=v3.len;
		v5=0;
	case 11:
		if(v5>=v4) {$b=52; break;}
		v6=v3[v5];
		$f.l=276;
		if(v2!=null) {$b=18; break;}
		v10=v6.parameters;
		v11=v10.len;
		if(v11==0) {$b=22; break;}
	case 18:
		v11=v2.len;
		v10=v6.parameters;
		v12=v10.len;
		if(v11!=v12) {$b=49; break;}
	case 22:
		v13=v6.name;
		$f.l=277;
		v14=v1.$c.$vt[1](v1,v13);
		;
		if(v14==0) {$b=49; break;}
		$f.l=278;
		v7=1;
		$f.l=279;
		if(v2==null) {$b=46; break;}
		$f.l=280;
		v8=0;
	case 32:
		v12=v2.len;
		if(v8>=v12) {$b=46; break;}
		$f.l=281;
		v15=v2[v8];
		v10=v6.parameters;
		v16=v10[v8];
		if(v15==v16) {$b=43; break;}
		$f.l=283;
		v7=0;
		$f.l=284;
		{ $b=46; break; }
	case 43:
		$f.l=280;
		v8=(v8 + 1)|0;
		{ $b=32; break; }
	case 46:
		$f.l=287;
		if(v7==0) {$b=49; break;}
		return v6;
	case 49:
		$f.l=275;
		v5=(v5 + 1)|0;
		{ $b=11; break; }
	case 52:
		$f.l=290;
		return null;
}
}
//java/lang/Class:getDeclaredMethod
function _93(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=294;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=_af(v0,v1,v2);
		;
		$f.l=295;
		if(v3!=null) {$b=10; break;}
		v4=new java/lang/NoSuchMethodError;
		_b0(v4);
		throw v4;
	case 10:
		$f.l=296;
		return v3;
}
}
//java/lang/Class:getDeclaredMethods
function _b1(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=300;
		v0=a0;
		v1=v0.methods;
		if(v1==null) {$b=8; break;}
		v1=v0.methods;
		v2=_10(v1);
		;
		v1=vm.cast(v2,12);
		{ $b=9; break; }
	case 8:
		v1=newArray(java/lang/reflect/Method,
		0);
	case 9:
		return v1;
}
}
//java/lang/Class:getMethod
function _91(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=304;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=v0;
	case 5:
		$f.l=305;
		if(v3==null) {$b=16; break;}
		$f.l=306;
		v4=_af(v3,v1,v2);
		;
		$f.l=307;
		if(v4==null) {$b=12; break;}
		return v4;
	case 12:
		$f.l=308;
		v3=v3.superClass;
		$f.l=309;
		{ $b=5; break; }
	case 16:
		$f.l=310;
		v5=new java/lang/NoSuchMethodError;
		_b0(v5);
		throw v5;
}
}
//java/lang/Class:getMethods
function _b2(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=314;
		v0=a0;
		v1=new java/util/ArrayList;
		_b3(v1);
		v2=v1;
		$f.l=315;
		v3=v0;
	case 7:
		$f.l=316;
		if(v3==null) {$b=27; break;}
		$f.l=317;
		v5=v3.methods;
		if(v5==null) {$b=24; break;}
		$f.l=318;
		v4=0;
	case 14:
		v5=v3.methods;
		v6=v5.len;
		if(v4>=v6) {$b=24; break;}
		$f.l=319;
		v5=v3.methods;
		v7=v5[v4];
		v8=v2v2.$c.$it[-1](v2,v7);
		;
		$f.l=318;
		v4=(v4 + 1)|0;
		{ $b=14; break; }
	case 24:
		$f.l=320;
		v3=v3.superClass;
		{ $b=7; break; }
	case 27:
		$f.l=322;
		v6=v2v2.$c.$it[-1](v2);
		;
		v5=newArray(java/lang/reflect/Method,
		v6);
		v9=v2v2.$c.$it[-1](v2,v5);
		;
		v5=vm.cast(v9,12);
		return v5;
}
}
//java/lang/Class:getDeclaredField
function _b4(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=326;
		v0=a0;
		v1=a1;
		v2=null;
		$f.l=327;
		v7=v0.fields;
		if(v7==null) {$b=24; break;}
		$f.l=328;
		v3=v0.fields;
		v4=v3.len;
		v5=0;
	case 11:
		if(v5>=v4) {$b=24; break;}
		v6=v3[v5];
		$f.l=329;
		v8=v6.name;
		v9=v8.$c.$vt[1](v8,v1);
		;
		if(v9==0) {$b=21; break;}
		$f.l=330;
		v2=v6;
		$f.l=331;
		{ $b=24; break; }
	case 21:
		$f.l=328;
		v5=(v5 + 1)|0;
		{ $b=11; break; }
	case 24:
		$f.l=334;
		if(v2!=null) {$b=29; break;}
		v10=new java/lang/NoSuchFieldError;
		_b5(v10,v1);
		throw v10;
	case 29:
		$f.l=335;
		return v2;
}
}
//java/lang/Class:getDeclaredFields
function _b6(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=339;
		v0=a0;
		v1=v0.fields;
		if(v1==null) {$b=8; break;}
		v1=v0.fields;
		v2=_10(v1);
		;
		v1=vm.cast(v2,13);
		{ $b=9; break; }
	case 8:
		v1=newArray(java/lang/reflect/Field,
		0);
	case 9:
		return v1;
}
}
//java/lang/Class:getField
function _b7(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=343;
		v0=a0;
		v1=a1;
		v2=v0;
		$f.l=344;
		v3=null;
	case 6:
		$f.l=345;
		if(v2==null) {$b=34; break;}
		if(v3!=null) {$b=34; break;}
		$f.l=346;
		v8=v2.fields;
		if(v8==null) {$b=29; break;}
		$f.l=347;
		v4=v2.fields;
		v5=v4.len;
		v6=0;
	case 16:
		if(v6>=v5) {$b=29; break;}
		v7=v4[v6];
		$f.l=348;
		v9=v7.name;
		v10=v9.$c.$vt[1](v9,v1);
		;
		if(v10==0) {$b=26; break;}
		$f.l=349;
		v3=v7;
		$f.l=350;
		{ $b=29; break; }
	case 26:
		$f.l=347;
		v6=(v6 + 1)|0;
		{ $b=16; break; }
	case 29:
		$f.l=353;
		if(v3!=null) {$b=6; break;}
		$f.l=354;
		v2=v2.superClass;
		{ $b=6; break; }
	case 34:
		$f.l=356;
		if(v3!=null) {$b=39; break;}
		v11=new java/lang/NoSuchFieldError;
		_b5(v11,v1);
		throw v11;
	case 39:
		$f.l=357;
		return v3;
}
}
//java/lang/Class:getFields
function _b8(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=361;
		v0=a0;
		v1=new java/util/ArrayList;
		_b3(v1);
		v2=v1;
		$f.l=362;
		v3=v0;
	case 7:
		$f.l=363;
		if(v3==null) {$b=27; break;}
		$f.l=364;
		v5=v3.fields;
		if(v5==null) {$b=24; break;}
		$f.l=365;
		v4=0;
	case 14:
		v5=v3.fields;
		v6=v5.len;
		if(v4>=v6) {$b=24; break;}
		$f.l=366;
		v5=v3.fields;
		v7=v5[v4];
		v8=v2v2.$c.$it[-1](v2,v7);
		;
		$f.l=365;
		v4=(v4 + 1)|0;
		{ $b=14; break; }
	case 24:
		$f.l=367;
		v3=v3.superClass;
		{ $b=7; break; }
	case 27:
		$f.l=369;
		v6=v2v2.$c.$it[-1](v2);
		;
		v5=newArray(java/lang/reflect/Field,
		v6);
		v9=v2v2.$c.$it[-1](v2,v5);
		;
		v5=vm.cast(v9,13);
		return v5;
}
}
//java/lang/Class:getPrimitiveNativeName
function _b9(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=374;
		v0=a0;
		v1=$g0;
		if(v0!=v1) {$b=6; break;}
		v2=$str36;
		{ $b=51; break; }
	case 6:
		$f.l=375;
		v1=$g1;
		if(v0!=v1) {$b=11; break;}
		v2=$str37;
		{ $b=51; break; }
	case 11:
		$f.l=376;
		v1=$g2;
		if(v0!=v1) {$b=16; break;}
		v2=$str38;
		{ $b=51; break; }
	case 16:
		$f.l=377;
		v1=$g3;
		if(v0!=v1) {$b=21; break;}
		v2=$str39;
		{ $b=51; break; }
	case 21:
		$f.l=378;
		v1=$g4;
		if(v0!=v1) {$b=26; break;}
		v2=$str40;
		{ $b=51; break; }
	case 26:
		$f.l=379;
		v1=$g7;
		if(v0!=v1) {$b=31; break;}
		v2=$str41;
		{ $b=51; break; }
	case 31:
		$f.l=380;
		v1=$g5;
		if(v0!=v1) {$b=36; break;}
		v2=$str42;
		{ $b=51; break; }
	case 36:
		$f.l=381;
		v1=$g6;
		if(v0!=v1) {$b=41; break;}
		v2=$str43;
		{ $b=51; break; }
	case 41:
		$f.l=382;
		v4=new java/lang/RuntimeException;
		v3=new java/lang/StringBuilder;
		_9(v3);
		v5=_a(v0);
		;
		v3=_b(v3,v5);
		;
		v3=_b(v3,$str44);
		;
		v5=v3.$c.$vt[0](v3);
		;
		_ba(v4,v5);
		throw v4;
	case 51:
		$f.l=383;
		return v2;
}
}
//java/lang/Class:getArrayClassFor
function _bb(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=387;
		v0=a0;
		v1=new java/lang/StringBuilder;
		_9(v1);
		v1=_b(v1,$str45);
		;
		v3=_8e(v0);
		;
		if(v3==0) {$b=9; break;}
		v4=_b9(v0);
		;
		{ $b=10; break; }
	case 9:
		v4=_a(v0);
		;
	case 10:
		v1=_b(v1,v4);
		;
		v2=v1.$c.$vt[0](v1);
		;
		$f.l=388;
		v5=_89(v2);
		;
		return v5;
}
}
//java/lang/reflect/Constructor:<init>
function _bc(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=a0;
_1a(v0);
return;
}
//java/lang/reflect/Constructor:newInstance
function _9a(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=a0;
v1=a1;
v2=newArray(java/lang/Object,
1);
v3=v0.declaringClass;
v2[0]=v3;
v4=_16($str1,v2);
;
v4=_20(v0,v4,v1);
;
return v4;
}
//java/lang/StringBuilder:toString
function _bd(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=530;
		v0=a0;
		v1=v0.count;
		if(v1!=0) {$b=6; break;}
		$f.l=531;
		return $str46;
	case 6:
		$f.l=540;
		v2=new java/lang/String;
		v3=v0.value;
		v1=v0.count;
		_be(v2,v3,0,v1);
		return v2;
}
}
//java/lang/Throwable:<init>
function _bf(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=32;
v0=a0;
v1=vm.cast(null,14);
_c0(v0,v1);
$f.l=33;
return;
}
//java/lang/Throwable:<init>
function _c0(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
v1=a1;
_0(v0);
$f.l=28;
v0.cause=v0;
$f.l=36;
v0.detailMessage=v1;
$f.l=37;
return;
}
//java/lang/Throwable:<init>
function _c1(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=a1;
v2=a2;
_c0(v0,v1);
$f.l=41;
v0.cause=v2;
$f.l=42;
return;
}
//java/lang/Throwable:<init>
function _c2(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=a0;
		v1=a1;
		v2=v0;
		if(v1!=null) {$b=7; break;}
		v3=null;
		{ $b=8; break; }
	case 7:
		v3=v1.$c.$vt[0](v1);
		;
	case 8:
		_c1(v0,v3,v1);
		$f.l=46;
		return;
}
}
//java/lang/Throwable:getMessage
function _c3(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=v0.detailMessage;
return v1;
}
//java/lang/Throwable:getLocalizedMessage
function _c4(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=_c3(v0);
;
return v1;
}
//java/lang/Throwable:getCause
function _c5(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=57;
		v0=a0;
		v1=v0.cause;
		if(v1!=v0) {$b=6; break;}
		v1=null;
		{ $b=7; break; }
	case 6:
		v1=v0.cause;
	case 7:
		return v1;
}
}
//java/lang/Throwable:initCause
function _c6(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=61;
		v0=a0;
		v1=a1;
		if(v1!=v0) {$b=8; break;}
		$f.l=62;
		v2=new java/lang/IllegalArgumentException;
		_7c(v2);
		throw v2;
	case 8:
		$f.l=64;
		v3=v0.cause;
		if(v3==v0) {$b=15; break;}
		$f.l=65;
		v4=new java/lang/IllegalStateException;
		_c7(v4);
		throw v4;
	case 15:
		$f.l=67;
		v0.cause=v1;
		$f.l=68;
		return v0;
}
}
//java/lang/Throwable:toString
function _c8(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=72;
		v0=a0;
		v1=_c4(v0);
		;
		$f.l=73;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v3=_2(v0);
		;
		v4=_a(v3);
		;
		v2=_b(v2,v4);
		;
		if(v1!=null) {$b=12; break;}
		v4=$str46;
		{ $b=17; break; }
	case 12:
		v5=new java/lang/StringBuilder;
		_9(v5);
		v5=_b(v5,$str47);
		;
		v5=_b(v5,v1);
		;
		v4=v5.$c.$vt[0](v5);
		;
	case 17:
		v5=_b(v2,v4);
		;
		v4=v5.$c.$vt[0](v5);
		;
		return v4;
}
}
//java/lang/Throwable:printStackTrace
function _c9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=77;
v0=a0;
v1=$g11;
_ca(v0,v1);
$f.l=78;
return;
}
//java/lang/Throwable:printStackTrace
function _ca(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=81;
v0=a0;
v1=a1;
v2=_cb(v0);
;
_cc(v1,v2);
$f.l=82;
_cd(v1);
$f.l=83;
return;
}
//java/lang/Throwable:printStackTrace
function _ce(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=86;
v0=a0;
v1=a1;
v2=_cb(v0);
;
_cf(v1,v2);
$f.l=87;
_d0(v1);
$f.l=88;
return;
}
//java/lang/Throwable:stackTraceString
function _cb(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=91;
		v0=a0;
		v1=new java/lang/StringBuilder;
		_9(v1);
		v2=v1;
		$f.l=94;
		v3=_d1(v0);
		;
		$f.l=95;
		v9=v0.$c.$vt[0](v0);
		;
		_d2(v2,v9,v3,0);
		$f.l=98;
		v4=_c5(v0);
		;
	case 12:
		$f.l=99;
		if(v4==null) {$b=58; break;}
		$f.l=101;
		v1=_b(v2,$str48);
		;
		$f.l=104;
		v5=v3;
		$f.l=105;
		v3=_d1(v4);
		;
		$f.l=106;
		if(v5==null) {$b=24; break;}
		v10=v5.len;
		if(v10!=0) {$b=28; break;}
	case 24:
		$f.l=107;
		v9=v4.$c.$vt[0](v4);
		;
		_d2(v2,v9,v3,0);
		{ $b=54; break; }
	case 28:
		$f.l=109;
		v6=0;
		$f.l=110;
		v10=v3.len;
		v7=(v10 - 1)|0;
		$f.l=111;
		v10=v5.len;
		v8=(v10 - 1)|0;
	case 36:
		$f.l=112;
		if(v7<=0) {$b=51; break;}
		if(v8<=0) {$b=51; break;}
		$f.l=113;
		v11=v3[v7];
		v12=v5[v8];
		v13=v11.$c.$vt[1](v11,v12);
		;
		if(v13==0) {$b=51; break;}
		$f.l=114;
		v6=(v6 + 1)|0;
		$f.l=115;
		v7=(v7 + -1)|0;
		$f.l=116;
		v8=(v8 + -1)|0;
		{ $b=36; break; }
	case 51:
		$f.l=121;
		v9=v4.$c.$vt[0](v4);
		;
		_d2(v2,v9,v3,v6);
	case 54:
		$f.l=123;
		v4=_c5(v4);
		;
		$f.l=124;
		{ $b=12; break; }
	case 58:
		$f.l=126;
		v9=v2.$c.$vt[0](v2);
		;
		return v9;
}
}
//java/lang/Throwable:stackTraceStringBuffer
function _d2(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=133;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=$str49;
		$f.l=135;
		v6=_b(v0,v1);
		;
		$f.l=136;
		v6=_b(v0,v4);
		;
		$f.l=139;
		if(v2==null) {$b=14; break;}
		v7=v2.len;
		if(v7!=0) {$b=19; break;}
	case 14:
		$f.l=140;
		v6=_b(v0,$str50);
		;
		$f.l=141;
		v6=_b(v0,v4);
		;
		{ $b=50; break; }
	case 19:
		$f.l=143;
		v5=0;
	case 21:
		v7=v2.len;
		v7=(v7 - v3)|0;
		if(v5>=v7) {$b=40; break;}
		$f.l=144;
		v6=_b(v0,$str51);
		;
		$f.l=145;
		v6=v0;
		v8=v2[v5];
		if(v8!=null) {$b=32; break;}
		v9=$str52;
		{ $b=34; break; }
	case 32:
		v8=v2[v5];
		v9=v8.$c.$vt[0](v8);
		;
	case 34:
		v6=_b(v0,v9);
		;
		$f.l=146;
		v6=_b(v0,v4);
		;
		$f.l=143;
		v5=(v5 + 1)|0;
		{ $b=21; break; }
	case 40:
		$f.l=148;
		if(v3<=0) {$b=50; break;}
		$f.l=149;
		v6=_b(v0,$str53);
		;
		$f.l=150;
		v6=_c(v0,v3);
		;
		$f.l=151;
		v6=_b(v0,$str54);
		;
		$f.l=152;
		v6=_b(v0,v4);
		;
	case 50:
		$f.l=155;
		return;
}
}
//java/lang/Throwable:getStackTrace
function _d1(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=158;
		v0=a0;
		v1=v0.stackTrace;
		if(v1==null) {$b=8; break;}
		v1=v0.stackTrace;
		v2=_10(v1);
		;
		v1=vm.cast(v2,15);
		{ $b=9; break; }
	case 8:
		v1=newArray(java/lang/StackTraceElement,
		0);
	case 9:
		return v1;
}
}
//java/lang/Throwable:setStackTrace
function _d3(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=162;
		v0=a0;
		v1=a1;
		v2=v1.len;
		$f.l=163;
		v3=newArray(java/lang/StackTraceElement,
		v2);
	case 6:
		$f.l=165;
		v2=(v2 + -1)|0;
		if(v2<0) {$b=25; break;}
		$f.l=166;
		v4=v1[v2];
		v3[v2]=v4;
		$f.l=167;
		v4=v3[v2];
		if(v4!=null) {$b=6; break;}
		$f.l=168;
		v5=new java/lang/NullPointerException;
		v6=new java/lang/StringBuilder;
		_9(v6);
		v6=_b(v6,$str55);
		;
		v6=_c(v6,v2);
		;
		v6=_b(v6,$str56);
		;
		v7=v6.$c.$vt[0](v6);
		;
		_9f(v5,v7);
		throw v5;
	case 25:
		$f.l=172;
		v0.stackTrace=v3;
		$f.l=173;
		return;
}
}
//java/lang/Throwable:addSuppressed
function _d4(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=176;
v0=a0;
v1=a1;
return;
}
//java/util/AbstractCollection:toString
function _d5(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=345;
		v0=a0;
		v4=_d6(v0);
		;
		if(v4==0) {$b=6; break;}
		$f.l=346;
		return $str57;
	case 6:
		$f.l=349;
		v5=new java/lang/StringBuffer;
		v6=_d7(v0);
		;
		v6=(v6 * 16)|0;
		_d8(v5,v6);
		v1=v5;
		$f.l=350;
		v5=_d9(v1,91);
		;
		$f.l=351;
		v2=_da(v0);
		;
	case 16:
		$f.l=352;
		v4=v2v2.$c.$it[0](v2);
		;
		if(v4==0) {$b=35; break;}
		$f.l=353;
		v3=v2v2.$c.$it[0](v2);
		;
		$f.l=354;
		if(v3==v0) {$b=26; break;}
		$f.l=355;
		v5=_db(v1,v3);
		;
		{ $b=28; break; }
	case 26:
		$f.l=357;
		v5=_dc(v1,$str58);
		;
	case 28:
		$f.l=359;
		v4=v2v2.$c.$it[0](v2);
		;
		if(v4==0) {$b=33; break;}
		$f.l=360;
		v5=_dc(v1,$str59);
		;
	case 33:
		$f.l=362;
		{ $b=16; break; }
	case 35:
		$f.l=363;
		v5=_d9(v1,93);
		;
		$f.l=364;
		v7=_dd(v1);
		;
		return v7;
}
}
//java/lang/Thread:<init>
function _de(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
_0(v0);
$f.l=32;
v0.priority=5;
$f.l=48;
v0.target=v0;
$f.l=49;
return;
}
//java/lang/Thread:<init>
function _df(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
v1=a1;
_0(v0);
$f.l=32;
v0.priority=5;
$f.l=52;
v0.target=v1;
$f.l=53;
return;
}
//java/lang/Thread:<init>
function _e0(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=55;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=32;
v0.priority=5;
$f.l=56;
v0.target=v1;
$f.l=57;
v0.name=v2;
$f.l=58;
return;
}
//java/lang/Thread:<init>
function _e1(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=a1;
_0(v0);
$f.l=32;
v0.priority=5;
$f.l=61;
v0.name=v1;
$f.l=62;
v0.target=v0;
$f.l=63;
return;
}
//java/lang/Thread:getId
function _e2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=66;
v0=a0;
v1=newArray(java/lang/Object,
1);
v1[0]=v0;
v2=_2d($str60,v1);
;
return v2;
}
//java/lang/Thread:currentThread
function _e3(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=70;
v0=newArray(java/lang/Object,
0);
v1=_e4($str61,v0);
;
return v1;
}
//java/lang/Thread:getName
function _e5(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=74;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/Thread:getStackTrace
function _e6(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=78;
		v0=a0;
		v2=newArray(java/lang/Object,
		1);
		v2[0]=v0;
		v3=_16($str62,v2);
		;
		v1=vm.cast(v3,16);
		$f.l=79;
		if(v1!=null) {$b=10; break;}
		v4=newArray(java/lang/StackTraceElement,
		0);
		return v4;
	case 10:
		$f.l=80;
		v4=_d1(v1);
		;
		return v4;
}
}
//java/lang/Thread:getPriority
function _e7(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.priority;
return v1;
}
//java/lang/Thread:interrupt
function _e8(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=88;
v0=a0;
return;
}
//java/lang/Thread:isAlive
function _e9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=91;
v0=a0;
v1=v0.alive;
return v1;
}
//java/lang/Thread:run
function _ea(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=97;
		v0=a0;
		v1=v0.target;
		if(v1==null) {$b=6; break;}
		v1=v0.target;
		v1v1.$c.$it[-1](v1);
	case 6:
		$f.l=98;
		return;
}
}
//java/lang/Thread:setPriority
function _eb(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=101;
v0=a0;
v1=a1;
v0.priority=v1;
$f.l=102;
return;
}
//java/lang/Thread:sleep
function _ec(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=105;
v0=a0;
v1=newArray(java/lang/Object,
1);
v2=_2f(v0);
;
v1[0]=v2;
_30($str63,v1);
$f.l=106;
return;
}
//java/lang/Thread:start
function _ed(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=109;
v0=a0;
v1=newArray(java/lang/Object,
2);
v2=v0.handle;
v1[0]=v2;
v1[1]=v0;
_30($str64,v1);
$f.l=110;
return;
}
//java/lang/Thread:toString
function _ee(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=113;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str65);
;
v2=v0.name;
v1=_b(v1,v2);
;
v2=v1.$c.$vt[0](v1);
;
return v2;
}
//java/lang/Thread:yield
function _ef(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=118;
		$f.trap=1;
		_ec(1);
		$f.l=119;
		$f.trap=0;
		{ $b=10; break; }
	case 7:
		$f.trap=0;
		v1=__caught;
		v0=v1;
	case 10:
		$f.l=120;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,17)) {$b=7; continue;}
	}
throw error;
}
}
//java/lang/Thread:threadProc
function _f0(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=123;
		$f.trap=0;
		v0=a0;
		v1=$g12;
		v2=v1;
		monitor(v1,false);
		$f.l=124;
		$f.trap=1;
		v1=$g12;
		v5=_f1(v1,v0);
		;
		$f.l=125;
		monitor(v2,true);
		$f.trap=0;
		{ $b=22; break; }
	case 15:
		$f.trap=0;
		v6=__caught;
		$f.trap=2;
		v3=v6;
		monitor(v2,true);
		$f.trap=0;
		throw v3;
	case 22:
		$f.l=126;
		v7=newArray(java/lang/Object,
		0);
		_30($str66,v7);
		$f.l=127;
		v0.alive=1;
		$f.l=129;
		$f.trap=3;
		_ea(v0);
		$f.l=132;
		$f.trap=0;
		{ $b=37; break; }
	case 33:
		$f.l=130;
		$f.trap=0;
		v6=__caught;
		v8=v6;
	case 37:
		$f.l=133;
		v0.alive=0;
		$f.l=134;
		v7=newArray(java/lang/Object,
		0);
		_30($str67,v7);
		$f.l=135;
		v1=$g12;
		v2=v1;
		monitor(v1,false);
		$f.l=136;
		$f.trap=4;
		v1=$g12;
		v5=_f2(v1,v0);
		;
		$f.l=137;
		monitor(v2,true);
		$f.trap=0;
		{ $b=61; break; }
	case 54:
		$f.trap=0;
		v6=__caught;
		$f.trap=5;
		v4=v6;
		monitor(v2,true);
		$f.trap=0;
		throw v4;
	case 61:
		$f.l=138;
		$f.trap=0;
		return null;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,16)) {$b=15; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,16)) {$b=15; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,16)) {$b=33; continue;}
	}
	if($f.trap==4){
		if(vm.is(vm.exception,16)) {$b=54; continue;}
	}
	if($f.trap==5){
		if(vm.is(vm.exception,16)) {$b=54; continue;}
	}
throw error;
}
}
//java/lang/Thread:setDaemon
function _f3(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=143;
v0=a0;
v1=a1;
return;
}
//java/lang/Thread:<clinit>
function _f4(vm){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=new java/util/ArrayList;
_b3(v0);
$g12=v0;
$f.l=45;
v0=$g12;
v1=_e3();
;
v2=_f1(v0,v1);
;
$f.l=46;
return;
}
//java/io/PrintWriter:<clinit>
function _f5(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=271;
v0=newArray(C,
2);
v0[0]=13;
v0[1]=10;
$g13=v0;
return;
}
//java/lang/Number:<init>
function _f6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=23;
v0=a0;
_0(v0);
return;
}
//java/lang/StackTraceElement:<init>
function _f7(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=a4;
_0(v0);
$f.l=32;
v0.fileName=v1;
$f.l=33;
v0.lineNumber=v2;
$f.l=34;
v0.declaringClass=v3;
$f.l=35;
v0.methodName=v4;
$f.l=36;
return;
}
//java/lang/StackTraceElement:<init>
function _f8(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=40;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		_f7(v0,v3,v4,v1,v2);
		$f.l=42;
		if(v1==null) {$b=10; break;}
		if(v2!=null) {$b=14; break;}
	case 10:
		$f.l=43;
		v5=new java/lang/NullPointerException;
		_9f(v5,$str68);
		throw v5;
	case 14:
		$f.l=45;
		return;
}
}
//java/lang/StackTraceElement:getFileName
function _f9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=v0.fileName;
return v1;
}
//java/lang/StackTraceElement:getLineNumber
function _fa(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=v0.lineNumber;
return v1;
}
//java/lang/StackTraceElement:getClassName
function _fb(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
v1=v0.declaringClass;
return v1;
}
//java/lang/StackTraceElement:getMethodName
function _fc(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=v0.methodName;
return v1;
}
//java/lang/StackTraceElement:toString
function _fd(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=64;
		v0=a0;
		v1=new java/lang/StringBuilder;
		_9(v1);
		v2=v1;
		$f.l=65;
		v3=v0.declaringClass;
		if(v3==null) {$b=16; break;}
		$f.l=66;
		v3=v0.declaringClass;
		v1=_b(v2,v3);
		;
		$f.l=67;
		v3=v0.methodName;
		if(v3==null) {$b=16; break;}
		$f.l=68;
		v1=_fe(v2,46);
		;
	case 16:
		$f.l=71;
		v3=v0.methodName;
		if(v3==null) {$b=22; break;}
		$f.l=72;
		v3=v0.methodName;
		v1=_b(v2,v3);
		;
	case 22:
		$f.l=75;
		v4=v0.lineNumber;
		if(v4<=0) {$b=30; break;}
		$f.l=76;
		v1=_fe(v2,40);
		;
		v4=v0.lineNumber;
		v1=_c(v1,v4);
		;
		v1=_fe(v1,41);
		;
	case 30:
		$f.l=78;
		v3=v2.$c.$vt[0](v2);
		;
		return v3;
}
}
//java/lang/StackTraceElement:equals
function _ff(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=82;
		v0=a0;
		v1=a1;
		v3=vm.is(v1,18);
		if(v3!=0) {$b=7; break;}
		$f.l=83;
		return 0;
	case 7:
		$f.l=85;
		v2=vm.cast(v1,18);
		$f.l=86;
		v4=v0.fileName;
		v5=v2.fileName;
		v3=_100(v4,v5);
		;
		if(v3==0) {$b=29; break;}
		v6=v0.lineNumber;
		v7=v2.lineNumber;
		if(v6!=v7) {$b=29; break;}
		v5=v0.declaringClass;
		v4=v2.declaringClass;
		$f.l=88;
		v3=_100(v5,v4);
		;
		if(v3==0) {$b=29; break;}
		v5=v0.methodName;
		v4=v2.methodName;
		$f.l=89;
		v3=_100(v5,v4);
		;
		if(v3==0) {$b=29; break;}
		v3=1;
		{ $b=30; break; }
	case 29:
		v3=0;
	case 30:
		$f.l=86;
		return v3;
}
}
//java/lang/StackTraceElement:hashCode
function _101(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=93;
v0=a0;
v1=v0.fileName;
v2=_102(v1);
;
v3=v0.lineNumber;
v3=(v2 ^ v3)|0;
v1=v0.declaringClass;
v2=_102(v1);
;
v3=(v3 ^ v2)|0;
v1=v0.methodName;
$f.l=94;
v2=_102(v1);
;
v3=(v3 ^ v2)|0;
$f.l=93;
return v3;
}
//java/lang/StackTraceElement:equals
function _100(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=98;
		v0=a0;
		v1=a1;
		if(v0!=null) {$b=9; break;}
		if(v1!=null) {$b=7; break;}
		v2=1;
		{ $b=10; break; }
	case 7:
		v2=0;
		{ $b=10; break; }
	case 9:
		v2=v0.$c.$vt[1](v0,v1);
		;
	case 10:
		return v2;
}
}
//java/lang/StackTraceElement:hashCode
function _102(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=102;
		v0=a0;
		if(v0!=null) {$b=5; break;}
		v1=0;
		{ $b=6; break; }
	case 5:
		v1=v0.$c.$vt[2](v0);
		;
	case 6:
		return v1;
}
}
//java/lang/String:equals
function _103(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=297;
		v0=a0;
		v1=a1;
		if(v1!=v0) {$b=6; break;}
		$f.l=298;
		return 1;
	case 6:
		$f.l=300;
		if(v1==null) {$b=10; break;}
		v4=_2(v1);
		;
		if(v4==vm.getClass(14)) {$b=12; break;}
	case 10:
		$f.l=301;
		return 0;
	case 12:
		$f.l=303;
		v2=vm.cast(v1,14);
		$f.l=304;
		v5=_104(v2);
		;
		v6=_104(v0);
		;
		if(v5==v6) {$b=20; break;}
		$f.l=305;
		return 0;
	case 20:
		$f.l=307;
		v3=0;
	case 22:
		v6=v0.count;
		if(v3>=v6) {$b=39; break;}
		$f.l=308;
		v7=v0.value;
		v6=v0.offset;
		v6=(v6 + v3)|0;
		v8=v7[v6];
		v7=v2.value;
		v6=v2.offset;
		v6=(v6 + v3)|0;
		v9=v7[v6];
		if(v8==v9) {$b=36; break;}
		$f.l=309;
		return 0;
	case 36:
		$f.l=307;
		v3=(v3 + 1)|0;
		{ $b=22; break; }
	case 39:
		$f.l=312;
		return 1;
}
}
//java/lang/String:hashCode
function _105(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=425;
		v0=a0;
		v1=v0.hashCode;
		$f.l=426;
		if(v1!=0) {$b=24; break;}
		v4=v0.count;
		if(v4<=0) {$b=24; break;}
		$f.l=427;
		v2=v0.offset;
		$f.l=428;
		v4=v0.count;
		v3=(v2 + v4)|0;
	case 12:
		$f.l=429;
		if(v2>=v3) {$b=22; break;}
		$f.l=430;
		v5=(v1 * 31)|0;
		v6=v0.value;
		v4=v2;
		v2=(v2 + 1)|0;
		v7=v6[v4];
		v1=(v5 + v7)|0;
		{ $b=12; break; }
	case 22:
		$f.l=432;
		v0.hashCode=v1;
	case 24:
		$f.l=434;
		return v1;
}
}
//java/lang/String:toString
function _106(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=918;
v0=a0;
return v0;
}
//java/lang/String:<clinit>
function _107(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=new java/util/ArrayList;
_b3(v0);
$g14=v0;
$f.l=41;
v1=newArray(C,
0);
$g15=v1;
return;
}
//java/lang/Long:<init>
function _108(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=63;
v0=a0;
v1=a1;
_f6(v0);
$f.l=64;
v0.value=v1;
$f.l=65;
return;
}
//java/lang/Long:<init>
function _109(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=a1;
v2=_10a(v1);
;
_108(v0,v2);
$f.l=77;
return;
}
//java/lang/Long:byteValue
function _10b(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=81;
v0=a0;
v1=v0.value;
v2=v1|0;
v3=v2&0xff;
return v3;
}
//java/lang/Long:compareTo
function _10c(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=97;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=_10d(v2,v3);
;
return v4;
}
//java/lang/Long:compare
function _10d(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=108;
		v0=a0;
		v1=a1;
		v2=(v0 > v1) - (v0 < v1);
		if(v2>=0) {$b=7; break;}
		v2=-1;
		{ $b=12; break; }
	case 7:
		v2=(v0 > v1) - (v0 < v1);
		if(v2!=0) {$b=11; break;}
		v2=0;
		{ $b=12; break; }
	case 11:
		v2=1;
	case 12:
		return v2;
}
}
//java/lang/Long:invalidLong
function _10e(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=112;
v0=a0;
v1=new java/lang/NumberFormatException;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,$str69);
;
v2=_b(v2,v0);
;
v2=_b(v2,$str70);
;
v3=v2.$c.$vt[0](v2);
;
_10f(v1,v3);
throw v1;
}
//java/lang/Long:decode
function _110(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=128;
		v0=a0;
		v1=_104(v0);
		;
		v2=0;
		$f.l=129;
		if(v1!=0) {$b=9; break;}
		$f.l=130;
		v7=_10e(v0);
		;
		throw v7;
	case 9:
		$f.l=132;
		v3=_111(v0,v2);
		;
		$f.l=133;
		if(v3!=45) {$b=15; break;}
		v8=1;
		{ $b=16; break; }
	case 15:
		v8=0;
	case 16:
		v4=v8;
		$f.l=134;
		if(v4==0) {$b=27; break;}
		$f.l=135;
		if(v1!=1) {$b=24; break;}
		$f.l=136;
		v7=_10e(v0);
		;
		throw v7;
	case 24:
		$f.l=138;
		v2=(v2 + 1)|0;
		v3=_111(v0,v2);
		;
	case 27:
		$f.l=141;
		v5=10;
		$f.l=142;
		if(v3!=48) {$b=55; break;}
		$f.l=143;
		v2=(v2 + 1)|0;
		if(v2!=v1) {$b=37; break;}
		$f.l=144;
		v9=_2f(0);
		;
		return v9;
	case 37:
		$f.l=146;
		v10=_111(v0,v2);
		;
		v3=v10;
		if(v10==120) {$b=42; break;}
		if(v3!=88) {$b=52; break;}
	case 42:
		$f.l=147;
		if(v2!=v1) {$b=47; break;}
		$f.l=148;
		v7=_10e(v0);
		;
		throw v7;
	case 47:
		$f.l=150;
		v2=(v2 + 1)|0;
		$f.l=151;
		v5=16;
		{ $b=66; break; }
	case 52:
		$f.l=153;
		v5=8;
		{ $b=66; break; }
	case 55:
		$f.l=155;
		if(v3!=35) {$b=66; break;}
		$f.l=156;
		if(v2!=v1) {$b=62; break;}
		$f.l=157;
		v7=_10e(v0);
		;
		throw v7;
	case 62:
		$f.l=159;
		v2=(v2 + 1)|0;
		$f.l=160;
		v5=16;
	case 66:
		$f.l=163;
		v6=_112(v0,v2,v5,v4);
		;
		$f.l=164;
		v9=_2f(v6);
		;
		return v9;
}
}
//java/lang/Long:doubleValue
function _113(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=169;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Long:equals
function _114(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=183;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,19);
		if(v2==0) {$b=12; break;}
		v3=vm.cast(v1,19);
		v4=v3.value;
		v5=v0.value;
		v6=(v4 > v5) - (v4 < v5);
		if(v6!=0) {$b=12; break;}
		v2=1;
		{ $b=13; break; }
	case 12:
		v2=0;
	case 13:
		return v2;
}
}
//java/lang/Long:floatValue
function _115(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=188;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Long:getLong
function _116(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=201;
		$f.trap=0;
		v0=a0;
		if(v0==null) {$b=7; break;}
		v3=_104(v0);
		;
		if(v3!=0) {$b=10; break;}
	case 7:
		$f.l=202;
		$f.trap=0;
		return null;
	case 10:
		$f.l=204;
		v1=_117(v0);
		;
		$f.l=205;
		if(v1!=null) {$b=17; break;}
		$f.l=206;
		$f.trap=0;
		return null;
	case 17:
		$f.l=209;
		$f.trap=1;
		v4=_110(v1);
		;
		$f.trap=0;
		$f.trap=0;
		return v4;
	case 23:
		$f.l=210;
		$f.trap=0;
		v5=__caught;
		v2=v5;
		$f.l=211;
		$f.trap=0;
		return null;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,20)) {$b=23; continue;}
	}
throw error;
}
}
//java/lang/Long:getLong
function _118(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=228;
		$f.trap=0;
		v0=a0;
		v1=a1;
		if(v0==null) {$b=8; break;}
		v4=_104(v0);
		;
		if(v4!=0) {$b=12; break;}
	case 8:
		$f.l=229;
		v5=_2f(v1);
		;
		$f.trap=0;
		return v5;
	case 12:
		$f.l=231;
		v2=_117(v0);
		;
		$f.l=232;
		if(v2!=null) {$b=20; break;}
		$f.l=233;
		v5=_2f(v1);
		;
		$f.trap=0;
		return v5;
	case 20:
		$f.l=236;
		$f.trap=1;
		v5=_110(v2);
		;
		$f.trap=0;
		$f.trap=0;
		return v5;
	case 26:
		$f.l=237;
		$f.trap=0;
		v6=__caught;
		v3=v6;
		$f.l=238;
		v5=_2f(v1);
		;
		$f.trap=0;
		return v5;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,20)) {$b=26; continue;}
	}
throw error;
}
}
//java/lang/Long:getLong
function _119(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=255;
		$f.trap=0;
		v0=a0;
		v1=a1;
		if(v0==null) {$b=8; break;}
		v4=_104(v0);
		;
		if(v4!=0) {$b=11; break;}
	case 8:
		$f.l=256;
		$f.trap=0;
		return v1;
	case 11:
		$f.l=258;
		v2=_117(v0);
		;
		$f.l=259;
		if(v2!=null) {$b=18; break;}
		$f.l=260;
		$f.trap=0;
		return v1;
	case 18:
		$f.l=263;
		$f.trap=1;
		v5=_110(v2);
		;
		$f.trap=0;
		$f.trap=0;
		return v5;
	case 24:
		$f.l=264;
		$f.trap=0;
		v6=__caught;
		v3=v6;
		$f.l=265;
		$f.trap=0;
		return v1;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,20)) {$b=24; continue;}
	}
throw error;
}
}
//java/lang/Long:hashCode
function _11a(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=271;
v0=a0;
v1=v0.value;
v2=v0.value;
v2=(v2 >>> 32)|0;
v2=(v1 ^ v2)|0;
v3=v2|0;
return v3;
}
//java/lang/Long:intValue
function _11b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=276;
v0=a0;
v1=v0.value;
v2=v1|0;
return v2;
}
//java/lang/Long:longValue
function _11c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=286;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Long:parseLong
function _10a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=299;
v0=a0;
v1=_11d(v0,10);
;
return v1;
}
//java/lang/Long:parseLong
function _11d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=315;
		v0=a0;
		v1=a1;
		if(v1<2) {$b=5; break;}
		if(v1<=36) {$b=14; break;}
	case 5:
		$f.l=316;
		v6=new java/lang/NumberFormatException;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v2=_b(v2,$str71);
		;
		v2=_c(v2,v1);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_10f(v6,v7);
		throw v6;
	case 14:
		$f.l=318;
		if(v0!=null) {$b=19; break;}
		$f.l=319;
		v6=_10e(v0);
		;
		throw v6;
	case 19:
		$f.l=321;
		v3=_104(v0);
		;
		v4=0;
		$f.l=322;
		if(v3!=0) {$b=27; break;}
		$f.l=323;
		v6=_10e(v0);
		;
		throw v6;
	case 27:
		$f.l=325;
		v8=_111(v0,v4);
		;
		if(v8!=45) {$b=32; break;}
		v9=1;
		{ $b=33; break; }
	case 32:
		v9=0;
	case 33:
		v5=v9;
		$f.l=326;
		if(v5==0) {$b=41; break;}
		v4=(v4 + 1)|0;
		if(v4!=v3) {$b=41; break;}
		$f.l=327;
		v6=_10e(v0);
		;
		throw v6;
	case 41:
		$f.l=330;
		v10=_112(v0,v4,v1,v5);
		;
		return v10;
}
}
//java/lang/Long:parse
function _112(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=334;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v10=Math.floor(v2);
		v4=(-9223372036854775808 / v10)|0;
		$f.l=335;
		v5=0;
		v7=_104(v0);
		;
		v6=Math.floor(v7);
	case 11:
		$f.l=336;
		v10=Math.floor(v1);
		v11=(v10 > v6) - (v10 < v6);
		if(v11>=0) {$b=46; break;}
		$f.l=337;
		v7=v1;
		v1=(v1 + 1)|0;
		v12=_111(v0,v7);
		;
		v8=_5c(v12,v2);
		;
		$f.l=338;
		if(v8!=-1) {$b=25; break;}
		$f.l=339;
		v13=_10e(v0);
		;
		throw v13;
	case 25:
		$f.l=341;
		v11=(v4 > v5) - (v4 < v5);
		if(v11<=0) {$b=31; break;}
		$f.l=342;
		v13=_10e(v0);
		;
		throw v13;
	case 31:
		$f.l=344;
		v10=Math.floor(v2);
		v10=(v5 * v10)|0;
		v14=Math.floor(v8);
		v9=(v10 - v14)|0;
		$f.l=345;
		v11=(v9 > v5) - (v9 < v5);
		if(v11<=0) {$b=42; break;}
		$f.l=346;
		v13=_10e(v0);
		;
		throw v13;
	case 42:
		$f.l=348;
		v5=v9;
		$f.l=349;
		{ $b=11; break; }
	case 46:
		$f.l=350;
		if(v3!=0) {$b=56; break;}
		$f.l=351;
		v5=-v5;
		$f.l=352;
		v11=(v5 > 0) - (v5 < 0);
		if(v11>=0) {$b=56; break;}
		$f.l=353;
		v13=_10e(v0);
		;
		throw v13;
	case 56:
		$f.l=356;
		return v5;
}
}
//java/lang/Long:shortValue
function _11e(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=361;
v0=a0;
v1=v0.value;
v2=v1|0;
v3=v2&0xffff;
return v3;
}
//java/lang/Long:toBinaryString
function _11f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=372;
v0=a0;
v1=_120(v0,2);
;
return v1;
}
//java/lang/Long:toHexString
function _121(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=384;
v0=a0;
v1=_120(v0,16);
;
return v1;
}
//java/lang/Long:toOctalString
function _122(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=395;
v0=a0;
v1=_120(v0,8);
;
return v1;
}
//java/lang/Long:toString
function _123(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=400;
v0=a0;
v1=v0.value;
v2=_124(v1);
;
return v2;
}
//java/lang/Long:toString
function _124(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=412;
v0=a0;
v1=_120(v0,10);
;
return v1;
}
//java/lang/Long:toString
function _120(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=435;
		v0=a0;
		v1=a1;
		if(v1<1) {$b=5; break;}
		if(v1<=36) {$b=15; break;}
	case 5:
		$f.l=436;
		v9=new java/lang/IllegalArgumentException;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v2=_b(v2,$str72);
		;
		v2=_c(v2,v1);
		;
		v2=_b(v2,$str73);
		;
		v10=v2.$c.$vt[0](v2);
		;
		_9b(v9,v10);
		throw v9;
	case 15:
		$f.l=439;
		v11=(v0 > 0) - (v0 < 0);
		if(v11!=0) {$b=20; break;}
		$f.l=440;
		return $str74;
	case 20:
		$f.l=443;
		v11=(v0 > 0) - (v0 < 0);
		if(v11>=0) {$b=25; break;}
		v12=1;
		{ $b=26; break; }
	case 25:
		v12=0;
	case 26:
		v3=v12;
		$f.l=445;
		if(v3==0) {$b=31; break;}
		v11=1;
		{ $b=32; break; }
	case 31:
		v11=0;
	case 32:
		v4=v11;
		$f.l=446;
		v5=v0;
	case 35:
		v11=(v5 > 0) - (v5 < 0);
		if(v11==0) {$b=43; break;}
		$f.l=447;
		v4=(v4 + 1)|0;
		$f.l=446;
		v13=Math.floor(v1);
		v5=(v5 / v13)|0;
		{ $b=35; break; }
	case 43:
		$f.l=450;
		v14=newArray(C,
		v4);
		$f.l=452;
		v6=(v4 - 1)|0;
		$f.l=453;
		v7=v0;
	case 49:
		v11=(v7 > 0) - (v7 < 0);
		if(v11==0) {$b=81; break;}
		$f.l=454;
		v13=Math.floor(v1);
		v8=(v7 % v13)|0;
		$f.l=455;
		if(v3==0) {$b=58; break;}
		$f.l=456;
		v8=-v8;
	case 58:
		$f.l=459;
		v11=(v8 > 0) - (v8 < 0);
		if(v11<0) {$b=69; break;}
		v11=(v8 > 9) - (v8 < 9);
		if(v11>0) {$b=69; break;}
		$f.l=460;
		v13=(48 + v8)|0;
		v15=v13|0;
		v16=v15&0xffff;
		v14[v6]=v16;
		{ $b=75; break; }
	case 69:
		$f.l=462;
		v13=(v8 - 10)|0;
		v13=(97 + v13)|0;
		v15=v13|0;
		v16=v15&0xffff;
		v14[v6]=v16;
	case 75:
		$f.l=464;
		v6=(v6 + -1)|0;
		$f.l=453;
		v13=Math.floor(v1);
		v7=(v7 / v13)|0;
		{ $b=49; break; }
	case 81:
		$f.l=467;
		if(v3==0) {$b=85; break;}
		$f.l=468;
		v14[v6]=45;
	case 85:
		$f.l=471;
		v10=new java/lang/String;
		_be(v10,v14,0,v4);
		return v10;
}
}
//java/lang/Long:valueOf
function _125(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=485;
v0=a0;
v1=_10a(v0);
;
v2=_2f(v1);
;
return v2;
}
//java/lang/Long:valueOf
function _126(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=502;
v0=a0;
v1=a1;
v2=_11d(v0,v1);
;
v3=_2f(v2);
;
return v3;
}
//java/lang/Long:highestOneBit
function _127(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=517;
v0=a0;
v1=(v0 >> 1)|0;
v0=(v0 | v1)|0;
$f.l=518;
v1=(v0 >> 2)|0;
v0=(v0 | v1)|0;
$f.l=519;
v1=(v0 >> 4)|0;
v0=(v0 | v1)|0;
$f.l=520;
v1=(v0 >> 8)|0;
v0=(v0 | v1)|0;
$f.l=521;
v1=(v0 >> 16)|0;
v0=(v0 | v1)|0;
$f.l=522;
v1=(v0 >> 32)|0;
v0=(v0 | v1)|0;
$f.l=523;
v1=(v0 >>> 1)|0;
v1=(v0 - v1)|0;
return v1;
}
//java/lang/Long:lowestOneBit
function _128(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=537;
v0=a0;
v1=-v0;
v1=(v0 & v1)|0;
return v1;
}
//java/lang/Long:numberOfLeadingZeros
function _129(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=550;
		v0=a0;
		v3=(v0 > 0) - (v0 < 0);
		if(v3>=0) {$b=6; break;}
		$f.l=551;
		return 0;
	case 6:
		$f.l=553;
		v3=(v0 > 0) - (v0 < 0);
		if(v3!=0) {$b=11; break;}
		$f.l=554;
		return 64;
	case 11:
		$f.l=559;
		v1=1;
		$f.l=560;
		v4=(v0 >>> 32)|0;
		v2=v4|0;
		$f.l=561;
		if(v2!=0) {$b=22; break;}
		$f.l=562;
		v1=(v1 + 32)|0;
		$f.l=563;
		v2=v0|0;
	case 22:
		$f.l=565;
		v5=(v2 >>> 16)|0;
		if(v5!=0) {$b=29; break;}
		$f.l=566;
		v1=(v1 + 16)|0;
		$f.l=567;
		v2=(v2 << 16)|0;
	case 29:
		$f.l=569;
		v5=(v2 >>> 24)|0;
		if(v5!=0) {$b=36; break;}
		$f.l=570;
		v1=(v1 + 8)|0;
		$f.l=571;
		v2=(v2 << 8)|0;
	case 36:
		$f.l=573;
		v5=(v2 >>> 28)|0;
		if(v5!=0) {$b=43; break;}
		$f.l=574;
		v1=(v1 + 4)|0;
		$f.l=575;
		v2=(v2 << 4)|0;
	case 43:
		$f.l=577;
		v5=(v2 >>> 30)|0;
		if(v5!=0) {$b=50; break;}
		$f.l=578;
		v1=(v1 + 2)|0;
		$f.l=579;
		v2=(v2 << 2)|0;
	case 50:
		$f.l=581;
		v5=(v2 >>> 31)|0;
		v5=(v1 - v5)|0;
		return v5;
}
}
//java/lang/Long:numberOfTrailingZeros
function _12a(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=593;
		v0=a0;
		v1=v0|0;
		$f.l=594;
		if(v1==0) {$b=7; break;}
		v2=_12b(v1);
		;
		{ $b=12; break; }
	case 7:
		$f.l=595;
		v3=(v0 >>> 32)|0;
		v2=v3|0;
		v2=_12b(v2);
		;
		v2=(32 + v2)|0;
	case 12:
		$f.l=594;
		return v2;
}
}
//java/lang/Long:bitCount
function _12c(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=608;
v0=a0;
v2=(v0 >>> 1)|0;
v2=(v2 & 6148914691236517205)|0;
v0=(v0 - v2)|0;
$f.l=609;
v2=(v0 & 3689348814741910323)|0;
v3=(v0 >>> 2)|0;
v3=(v3 & 3689348814741910323)|0;
v0=(v2 + v3)|0;
$f.l=610;
v3=(v0 >>> 32)|0;
v4=v3|0;
v5=v0|0;
v1=(v4 + v5)|0;
$f.l=611;
v5=(v1 & 252645135)|0;
v4=(v1 >>> 4)|0;
v4=(v4 & 252645135)|0;
v1=(v5 + v4)|0;
$f.l=612;
v5=(v1 >>> 8)|0;
v1=(v1 + v5)|0;
$f.l=613;
v5=(v1 >>> 16)|0;
v1=(v1 + v5)|0;
$f.l=614;
v5=(v1 & 127)|0;
return v5;
}
//java/lang/Long:rotateLeft
function _12d(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=644;
v0=a0;
v1=a1;
v2=(v0 << v1)|0;
v3=-v1;
v4=(v0 >>> v3)|0;
v4=(v2 | v4)|0;
return v4;
}
//java/lang/Long:rotateRight
function _12e(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=658;
v0=a0;
v1=a1;
v2=(v0 >>> v1)|0;
v3=-v1;
v4=(v0 << v3)|0;
v4=(v2 | v4)|0;
return v4;
}
//java/lang/Long:reverseBytes
function _12f(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=671;
v0=a0;
v1=(v0 >>> 8)|0;
v1=(v1 & 71777214294589695)|0;
v2=(v0 & 71777214294589695)|0;
v2=(v2 << 8)|0;
v0=(v1 | v2)|0;
$f.l=672;
v2=(v0 >>> 16)|0;
v2=(v2 & 281470681808895)|0;
v1=(v0 & 281470681808895)|0;
v1=(v1 << 16)|0;
v0=(v2 | v1)|0;
$f.l=673;
v2=(v0 >>> 32)|0;
v1=(v0 << 32)|0;
v2=(v2 | v1)|0;
return v2;
}
//java/lang/Long:reverse
function _130(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=686;
v0=a0;
v1=(v0 >>> 1)|0;
v1=(v1 & 6148914691236517205)|0;
v2=(v0 & 6148914691236517205)|0;
v2=(v2 << 1)|0;
v0=(v1 | v2)|0;
$f.l=687;
v2=(v0 >>> 2)|0;
v2=(v2 & 3689348814741910323)|0;
v1=(v0 & 3689348814741910323)|0;
v1=(v1 << 2)|0;
v0=(v2 | v1)|0;
$f.l=688;
v2=(v0 >>> 4)|0;
v2=(v2 & 1085102592571150095)|0;
v1=(v0 & 1085102592571150095)|0;
v1=(v1 << 4)|0;
v0=(v2 | v1)|0;
$f.l=689;
v2=(v0 >>> 8)|0;
v2=(v2 & 71777214294589695)|0;
v1=(v0 & 71777214294589695)|0;
v1=(v1 << 8)|0;
v0=(v2 | v1)|0;
$f.l=690;
v2=(v0 >>> 16)|0;
v2=(v2 & 281470681808895)|0;
v1=(v0 & 281470681808895)|0;
v1=(v1 << 16)|0;
v0=(v2 | v1)|0;
$f.l=691;
v2=(v0 >>> 32)|0;
v1=(v0 << 32)|0;
v2=(v2 | v1)|0;
return v2;
}
//java/lang/Long:signum
function _131(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=704;
		v0=a0;
		v1=(v0 > 0) - (v0 < 0);
		if(v1>=0) {$b=6; break;}
		v1=-1;
		{ $b=11; break; }
	case 6:
		v1=(v0 > 0) - (v0 < 0);
		if(v1!=0) {$b=10; break;}
		v1=0;
		{ $b=11; break; }
	case 10:
		v1=1;
	case 11:
		return v1;
}
}
//java/lang/Long:valueOf
function _2f(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=719;
		v0=a0;
		v1=(v0 > 128) - (v0 < 128);
		if(v1>=0) {$b=6; break;}
		v1=(v0 > -128) - (v0 < -128);
		if(v1>=0) {$b=9; break;}
	case 6:
		v2=new java/lang/Long;
		_108(v2,v0);
		{ $b=13; break; }
	case 9:
		v3=$g16;
		v4=v0|0;
		v4=(v4 + 128)|0;
		v2=v3[v4];
	case 13:
		return v2;
}
}
//java/lang/Long:compareTo
function _132(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,19);
v3=_10c(v0,v2);
;
return v3;
}
//java/lang/Long:<clinit>
function _133(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=vm.getClass(21);
		$f.l=46;
		v0=_13(v0);
		;
		$g5=v0;
		$f.l=725;
		v2=newArray(java/lang/Long,
		256);
		$g16=v2;
		$f.l=728;
		v1=-128;
	case 10:
		if(v1>=128) {$b=21; break;}
		$f.l=729;
		v2=$g16;
		v3=(v1 + 128)|0;
		v4=new java/lang/Long;
		v5=Math.floor(v1);
		_108(v4,v5);
		v2[v3]=v4;
		$f.l=728;
		v1=(v1 + 1)|0;
		{ $b=10; break; }
	case 21:
		$f.l=731;
		return;
}
}
//java/lang/Integer:<init>
function _134(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=77;
v0=a0;
v1=a1;
_f6(v0);
$f.l=78;
v0.value=v1;
$f.l=79;
return;
}
//java/lang/Integer:<init>
function _135(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=91;
v0=a0;
v1=a1;
v2=_136(v1);
;
_134(v0,v2);
$f.l=92;
return;
}
//java/lang/Integer:byteValue
function _137(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=96;
v0=a0;
v1=v0.value;
v2=v1&0xff;
return v2;
}
//java/lang/Integer:compareTo
function _138(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=113;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v3=_139(v2,v3);
;
return v3;
}
//java/lang/Integer:compare
function _139(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=122;
		v0=a0;
		v1=a1;
		if(v0>=v1) {$b=6; break;}
		v2=-1;
		{ $b=10; break; }
	case 6:
		if(v0!=v1) {$b=9; break;}
		v2=0;
		{ $b=10; break; }
	case 9:
		v2=1;
	case 10:
		return v2;
}
}
//java/lang/Integer:invalidInt
function _13a(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=126;
v0=a0;
v1=new java/lang/NumberFormatException;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,$str75);
;
v2=_b(v2,v0);
;
v2=_b(v2,$str70);
;
v3=v2.$c.$vt[0](v2);
;
_10f(v1,v3);
throw v1;
}
//java/lang/Integer:decode
function _13b(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=143;
		v0=a0;
		v1=_104(v0);
		;
		v2=0;
		$f.l=144;
		if(v1!=0) {$b=9; break;}
		$f.l=145;
		v7=_13a(v0);
		;
		throw v7;
	case 9:
		$f.l=147;
		v3=_111(v0,v2);
		;
		$f.l=148;
		if(v3!=45) {$b=15; break;}
		v8=1;
		{ $b=16; break; }
	case 15:
		v8=0;
	case 16:
		v4=v8;
		$f.l=149;
		if(v4==0) {$b=27; break;}
		$f.l=150;
		if(v1!=1) {$b=24; break;}
		$f.l=151;
		v7=_13a(v0);
		;
		throw v7;
	case 24:
		$f.l=153;
		v2=(v2 + 1)|0;
		v3=_111(v0,v2);
		;
	case 27:
		$f.l=156;
		v5=10;
		$f.l=157;
		if(v3!=48) {$b=54; break;}
		$f.l=158;
		v2=(v2 + 1)|0;
		if(v2!=v1) {$b=37; break;}
		$f.l=159;
		v9=_3b(0);
		;
		return v9;
	case 37:
		$f.l=161;
		v10=_111(v0,v2);
		;
		v3=v10;
		if(v10==120) {$b=42; break;}
		if(v3!=88) {$b=51; break;}
	case 42:
		$f.l=162;
		v2=(v2 + 1)|0;
		if(v2!=v1) {$b=48; break;}
		$f.l=163;
		v7=_13a(v0);
		;
		throw v7;
	case 48:
		$f.l=165;
		v5=16;
		{ $b=64; break; }
	case 51:
		$f.l=167;
		v5=8;
		{ $b=64; break; }
	case 54:
		$f.l=169;
		if(v3!=35) {$b=64; break;}
		$f.l=170;
		v2=(v2 + 1)|0;
		if(v2!=v1) {$b=62; break;}
		$f.l=171;
		v7=_13a(v0);
		;
		throw v7;
	case 62:
		$f.l=173;
		v5=16;
	case 64:
		$f.l=176;
		v6=_13c(v0,v2,v5,v4);
		;
		$f.l=177;
		v9=_3b(v6);
		;
		return v9;
}
}
//java/lang/Integer:doubleValue
function _13d(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=182;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Integer:equals
function _13e(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=197;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,22);
		if(v2==0) {$b=11; break;}
		v3=vm.cast(v1,22);
		v4=v3.value;
		v5=v0.value;
		if(v4!=v5) {$b=11; break;}
		v2=1;
		{ $b=12; break; }
	case 11:
		v2=0;
	case 12:
		return v2;
}
}
//java/lang/Integer:floatValue
function _13f(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=202;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Integer:getInteger
function _140(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=217;
		$f.trap=0;
		v0=a0;
		if(v0==null) {$b=7; break;}
		v3=_104(v0);
		;
		if(v3!=0) {$b=10; break;}
	case 7:
		$f.l=218;
		$f.trap=0;
		return null;
	case 10:
		$f.l=220;
		v1=_117(v0);
		;
		$f.l=221;
		if(v1!=null) {$b=17; break;}
		$f.l=222;
		$f.trap=0;
		return null;
	case 17:
		$f.l=225;
		$f.trap=1;
		v4=_13b(v1);
		;
		$f.trap=0;
		$f.trap=0;
		return v4;
	case 23:
		$f.l=226;
		$f.trap=0;
		v5=__caught;
		v2=v5;
		$f.l=227;
		$f.trap=0;
		return null;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,20)) {$b=23; continue;}
	}
throw error;
}
}
//java/lang/Integer:getInteger
function _141(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=246;
		$f.trap=0;
		v0=a0;
		v1=a1;
		if(v0==null) {$b=8; break;}
		v4=_104(v0);
		;
		if(v4!=0) {$b=12; break;}
	case 8:
		$f.l=247;
		v5=_3b(v1);
		;
		$f.trap=0;
		return v5;
	case 12:
		$f.l=249;
		v2=_117(v0);
		;
		$f.l=250;
		if(v2!=null) {$b=20; break;}
		$f.l=251;
		v5=_3b(v1);
		;
		$f.trap=0;
		return v5;
	case 20:
		$f.l=254;
		$f.trap=1;
		v5=_13b(v2);
		;
		$f.trap=0;
		$f.trap=0;
		return v5;
	case 26:
		$f.l=255;
		$f.trap=0;
		v6=__caught;
		v3=v6;
		$f.l=256;
		v5=_3b(v1);
		;
		$f.trap=0;
		return v5;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,20)) {$b=26; continue;}
	}
throw error;
}
}
//java/lang/Integer:getInteger
function _142(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=275;
		$f.trap=0;
		v0=a0;
		v1=a1;
		if(v0==null) {$b=8; break;}
		v4=_104(v0);
		;
		if(v4!=0) {$b=11; break;}
	case 8:
		$f.l=276;
		$f.trap=0;
		return v1;
	case 11:
		$f.l=278;
		v2=_117(v0);
		;
		$f.l=279;
		if(v2!=null) {$b=18; break;}
		$f.l=280;
		$f.trap=0;
		return v1;
	case 18:
		$f.l=283;
		$f.trap=1;
		v5=_13b(v2);
		;
		$f.trap=0;
		$f.trap=0;
		return v5;
	case 24:
		$f.l=284;
		$f.trap=0;
		v6=__caught;
		v3=v6;
		$f.l=285;
		$f.trap=0;
		return v1;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,20)) {$b=24; continue;}
	}
throw error;
}
}
//java/lang/Integer:hashCode
function _143(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=291;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Integer:intValue
function _144(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=301;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Integer:longValue
function _145(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=306;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Integer:parseInt
function _136(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=320;
v0=a0;
v1=_146(v0,10);
;
return v1;
}
//java/lang/Integer:parseInt
function _146(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=339;
		v0=a0;
		v1=a1;
		if(v1<2) {$b=5; break;}
		if(v1<=36) {$b=14; break;}
	case 5:
		$f.l=340;
		v6=new java/lang/NumberFormatException;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v2=_b(v2,$str71);
		;
		v2=_c(v2,v1);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_10f(v6,v7);
		throw v6;
	case 14:
		$f.l=342;
		if(v0!=null) {$b=19; break;}
		$f.l=343;
		v6=_13a(v0);
		;
		throw v6;
	case 19:
		$f.l=345;
		v3=_104(v0);
		;
		v4=0;
		$f.l=346;
		if(v3!=0) {$b=27; break;}
		$f.l=347;
		v6=_13a(v0);
		;
		throw v6;
	case 27:
		$f.l=349;
		v8=_111(v0,v4);
		;
		if(v8!=45) {$b=32; break;}
		v9=1;
		{ $b=33; break; }
	case 32:
		v9=0;
	case 33:
		v5=v9;
		$f.l=350;
		if(v5==0) {$b=41; break;}
		v4=(v4 + 1)|0;
		if(v4!=v3) {$b=41; break;}
		$f.l=351;
		v6=_13a(v0);
		;
		throw v6;
	case 41:
		$f.l=354;
		v10=_13c(v0,v4,v1,v5);
		;
		return v10;
}
}
//java/lang/Integer:parse
function _13c(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=358;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=(-2147483648 / v2)|0;
		$f.l=359;
		v5=0;
		v6=_104(v0);
		;
	case 9:
		$f.l=360;
		if(v1>=v6) {$b=38; break;}
		$f.l=361;
		v9=v1;
		v1=(v1 + 1)|0;
		v10=_111(v0,v9);
		;
		v7=_5c(v10,v2);
		;
		$f.l=362;
		if(v7!=-1) {$b=21; break;}
		$f.l=363;
		v11=_13a(v0);
		;
		throw v11;
	case 21:
		$f.l=365;
		if(v4<=v5) {$b=26; break;}
		$f.l=366;
		v11=_13a(v0);
		;
		throw v11;
	case 26:
		$f.l=368;
		v9=(v5 * v2)|0;
		v8=(v9 - v7)|0;
		$f.l=369;
		if(v8<=v5) {$b=34; break;}
		$f.l=370;
		v11=_13a(v0);
		;
		throw v11;
	case 34:
		$f.l=372;
		v5=v8;
		$f.l=373;
		{ $b=9; break; }
	case 38:
		$f.l=374;
		if(v3!=0) {$b=47; break;}
		$f.l=375;
		v5=-v5;
		$f.l=376;
		if(v5>=0) {$b=47; break;}
		$f.l=377;
		v11=_13a(v0);
		;
		throw v11;
	case 47:
		$f.l=380;
		return v5;
}
}
//java/lang/Integer:shortValue
function _147(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=385;
v0=a0;
v1=v0.value;
v2=v1&0xffff;
return v2;
}
//java/lang/Integer:toBinaryString
function _148(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=397;
v0=a0;
v1=Math.floor(v0);
v1=(v1 & 4294967295)|0;
v2=_120(v1,2);
;
return v2;
}
//java/lang/Integer:toHexString
function _149(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=410;
v0=a0;
v1=Math.floor(v0);
v1=(v1 & 4294967295)|0;
v2=_120(v1,16);
;
return v2;
}
//java/lang/Integer:toOctalString
function _14a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=422;
v0=a0;
v1=Math.floor(v0);
v1=(v1 & 4294967295)|0;
v2=_120(v1,8);
;
return v2;
}
//java/lang/Integer:toString
function _14b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=427;
v0=a0;
v1=v0.value;
v2=_14c(v1);
;
return v2;
}
//java/lang/Integer:toString
function _14c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=440;
v0=a0;
v1=_14d(v0,10);
;
return v1;
}
//java/lang/Integer:toString
function _14d(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=463;
v0=a0;
v1=a1;
v2=Math.floor(v0);
v3=_120(v2,v1);
;
return v3;
}
//java/lang/Integer:valueOf
function _14e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=478;
v0=a0;
v1=_136(v0);
;
v2=_3b(v1);
;
return v2;
}
//java/lang/Integer:valueOf
function _14f(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=498;
v0=a0;
v1=a1;
v2=_146(v0,v1);
;
v3=_3b(v2);
;
return v3;
}
//java/lang/Integer:highestOneBit
function _150(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=514;
v0=a0;
v1=(v0 >> 1)|0;
v0=(v0 | v1)|0;
$f.l=515;
v1=(v0 >> 2)|0;
v0=(v0 | v1)|0;
$f.l=516;
v1=(v0 >> 4)|0;
v0=(v0 | v1)|0;
$f.l=517;
v1=(v0 >> 8)|0;
v0=(v0 | v1)|0;
$f.l=518;
v1=(v0 >> 16)|0;
v0=(v0 | v1)|0;
$f.l=519;
v1=(v0 >>> 1)|0;
v1=(v0 - v1)|0;
return v1;
}
//java/lang/Integer:lowestOneBit
function _151(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=534;
v0=a0;
v1=-v0;
v1=(v0 & v1)|0;
return v1;
}
//java/lang/Integer:numberOfLeadingZeros
function _152(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=548;
		v0=a0;
		if(v0>0) {$b=8; break;}
		$f.l=549;
		v2=(v0 ^ -1)|0;
		v2=(v2 >> 26)|0;
		v2=(v2 & 32)|0;
		return v2;
	case 8:
		$f.l=551;
		v1=1;
		$f.l=552;
		v2=(v0 >> 16)|0;
		if(v2!=0) {$b=17; break;}
		$f.l=553;
		v1=(v1 + 16)|0;
		$f.l=554;
		v0=(v0 << 16)|0;
	case 17:
		$f.l=556;
		v2=(v0 >> 24)|0;
		if(v2!=0) {$b=24; break;}
		$f.l=557;
		v1=(v1 + 8)|0;
		$f.l=558;
		v0=(v0 << 8)|0;
	case 24:
		$f.l=560;
		v2=(v0 >> 28)|0;
		if(v2!=0) {$b=31; break;}
		$f.l=561;
		v1=(v1 + 4)|0;
		$f.l=562;
		v0=(v0 << 4)|0;
	case 31:
		$f.l=564;
		v2=(v0 >> 30)|0;
		if(v2!=0) {$b=38; break;}
		$f.l=565;
		v1=(v1 + 2)|0;
		$f.l=566;
		v0=(v0 << 2)|0;
	case 38:
		$f.l=568;
		v2=(v0 >>> 31)|0;
		v2=(v1 - v2)|0;
		return v2;
}
}
//java/lang/Integer:numberOfTrailingZeros
function _12b(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=581;
v0=a0;
v1=$g17;
v2=-v0;
v2=(v0 & v2)|0;
v2=(v2 * 72416175)|0;
v2=(v2 >>> 26)|0;
v3=v1[v2];
return v3;
}
//java/lang/Integer:bitCount
function _153(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=595;
v0=a0;
v1=(v0 >> 1)|0;
v1=(v1 & 1431655765)|0;
v0=(v0 - v1)|0;
$f.l=596;
v1=(v0 & 858993459)|0;
v2=(v0 >> 2)|0;
v2=(v2 & 858993459)|0;
v0=(v1 + v2)|0;
$f.l=597;
v2=(v0 >> 4)|0;
v2=(v2 + v0)|0;
v0=(v2 & 252645135)|0;
$f.l=598;
v2=(v0 >> 8)|0;
v0=(v0 + v2)|0;
$f.l=599;
v2=(v0 >> 16)|0;
v0=(v0 + v2)|0;
$f.l=600;
v2=(v0 & 63)|0;
return v2;
}
//java/lang/Integer:rotateLeft
function _154(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=616;
v0=a0;
v1=a1;
v2=(v0 << v1)|0;
v3=-v1;
v3=(v0 >>> v3)|0;
v3=(v2 | v3)|0;
return v3;
}
//java/lang/Integer:rotateRight
function _155(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=632;
v0=a0;
v1=a1;
v2=(v0 >>> v1)|0;
v3=-v1;
v3=(v0 << v3)|0;
v3=(v2 | v3)|0;
return v3;
}
//java/lang/Integer:reverseBytes
function _156(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=646;
v0=a0;
v1=(v0 >>> 8)|0;
v1=(v1 & 16711935)|0;
v2=(v0 & 16711935)|0;
v2=(v2 << 8)|0;
v0=(v1 | v2)|0;
$f.l=647;
v2=(v0 >>> 16)|0;
v1=(v0 << 16)|0;
v2=(v2 | v1)|0;
return v2;
}
//java/lang/Integer:reverse
function _157(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=661;
v0=a0;
v1=(v0 >>> 1)|0;
v1=(v1 & 1431655765)|0;
v2=(v0 & 1431655765)|0;
v2=(v2 << 1)|0;
v0=(v1 | v2)|0;
$f.l=662;
v2=(v0 >>> 2)|0;
v2=(v2 & 858993459)|0;
v1=(v0 & 858993459)|0;
v1=(v1 << 2)|0;
v0=(v2 | v1)|0;
$f.l=663;
v2=(v0 >>> 4)|0;
v2=(v2 & 252645135)|0;
v1=(v0 & 252645135)|0;
v1=(v1 << 4)|0;
v0=(v2 | v1)|0;
$f.l=664;
v2=(v0 >>> 8)|0;
v2=(v2 & 16711935)|0;
v1=(v0 & 16711935)|0;
v1=(v1 << 8)|0;
v0=(v2 | v1)|0;
$f.l=665;
v2=(v0 >>> 16)|0;
v1=(v0 << 16)|0;
v2=(v2 | v1)|0;
return v2;
}
//java/lang/Integer:signum
function _158(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=679;
v0=a0;
v1=(v0 >> 31)|0;
v2=-v0;
v2=(v2 >>> 31)|0;
v2=(v1 | v2)|0;
return v2;
}
//java/lang/Integer:valueOf
function _3b(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=695;
		v0=a0;
		if(v0>=128) {$b=4; break;}
		if(v0>=-128) {$b=7; break;}
	case 4:
		v1=new java/lang/Integer;
		_134(v1,v0);
		{ $b=10; break; }
	case 7:
		v2=$g18;
		v3=(v0 + 128)|0;
		v1=v2[v3];
	case 10:
		return v1;
}
}
//java/lang/Integer:compareTo
function _159(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,22);
v3=_138(v0,v2);
;
return v3;
}
//java/lang/Integer:<clinit>
function _15a(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=54;
		v1=newArray(B,
		64);
		v1[0]=32;
		v1[1]=0;
		v1[2]=1;
		v1[3]=12;
		v1[4]=2;
		v1[5]=6;
		v1[6]=-1;
		v1[7]=13;
		v1[8]=3;
		v1[9]=-1;
		v1[10]=7;
		v1[11]=-1;
		v1[12]=-1;
		v1[13]=-1;
		v1[14]=-1;
		v1[15]=14;
		v1[16]=10;
		v1[17]=4;
		v1[18]=-1;
		v1[19]=-1;
		v1[20]=8;
		v1[21]=-1;
		v1[22]=-1;
		v1[23]=25;
		v1[24]=-1;
		v1[25]=-1;
		v1[26]=-1;
		v1[27]=-1;
		v1[28]=-1;
		v1[29]=21;
		v1[30]=27;
		v1[31]=15;
		v1[32]=31;
		v1[33]=11;
		v1[34]=5;
		v1[35]=-1;
		v1[36]=-1;
		v1[37]=-1;
		v1[38]=-1;
		v1[39]=-1;
		v1[40]=9;
		v1[41]=-1;
		v1[42]=-1;
		v1[43]=24;
		v1[44]=-1;
		v1[45]=-1;
		v1[46]=20;
		v1[47]=26;
		v1[48]=30;
		v1[49]=-1;
		v1[50]=-1;
		v1[51]=-1;
		v1[52]=-1;
		v1[53]=23;
		v1[54]=-1;
		v1[55]=19;
		v1[56]=29;
		v1[57]=-1;
		v1[58]=22;
		v1[59]=18;
		v1[60]=28;
		v1[61]=17;
		v1[62]=16;
		v1[63]=-1;
		$g17=v1;
		$f.l=65;
		v2=vm.getClass(23);
		$f.l=66;
		v2=_13(v2);
		;
		$g4=v2;
		$f.l=701;
		v3=newArray(java/lang/Integer,
		256);
		$g18=v3;
		$f.l=704;
		v0=-128;
	case 77:
		if(v0>=128) {$b=87; break;}
		$f.l=705;
		v3=$g18;
		v4=(v0 + 128)|0;
		v5=new java/lang/Integer;
		_134(v5,v0);
		v3[v4]=v5;
		$f.l=704;
		v0=(v0 + 1)|0;
		{ $b=77; break; }
	case 87:
		$f.l=707;
		return;
}
}
//java/lang/Double:<init>
function _15b(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=126;
v0=a0;
v1=a1;
_f6(v0);
$f.l=127;
v0.value=v1;
$f.l=128;
return;
}
//java/lang/Double:<init>
function _15c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=139;
v0=a0;
v1=a1;
v2=_15d(v1);
;
_15b(v0,v2);
$f.l=140;
return;
}
//java/lang/Double:compareTo
function _15e(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=162;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=_15f(v2,v3);
;
return v4;
}
//java/lang/Double:byteValue
function _160(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=167;
v0=a0;
v1=v0.value;
v2=v1|0;
v3=v2&0xff;
return v3;
}
//java/lang/Double:doubleToLongBits
function _161(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=178;
v0=a0;
v1=0;
$f.l=179;
v2=newArray(java/lang/Object,
2);
$f.l=186;
v3=_35(v0);
;
v2[0]=v3;
v4=_2f(v1);
;
v2[1]=v4;
$f.l=179;
_30($str76,v2);
$f.l=187;
return v1;
}
//java/lang/Double:doubleToRawLongBits
function _162(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=197;
v0=a0;
v1=0;
$f.l=198;
v2=newArray(java/lang/Object,
2);
$f.l=205;
v3=_35(v0);
;
v2[0]=v3;
v4=_2f(v1);
;
v2[1]=v4;
$f.l=198;
_30($str77,v2);
$f.l=206;
return v1;
}
//java/lang/Double:doubleValue
function _163(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=216;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Double:equals
function _164(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=234;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,24);
		if(v2==0) {$b=15; break;}
		v3=v0.value;
		$f.l=235;
		v4=_161(v3);
		;
		v5=vm.cast(v1,24);
		v3=v5.value;
		v6=_161(v3);
		;
		v7=(v4 > v6) - (v4 < v6);
		if(v7!=0) {$b=15; break;}
		v2=1;
		{ $b=16; break; }
	case 15:
		v2=0;
	case 16:
		$f.l=234;
		return v2;
}
}
//java/lang/Double:floatValue
function _165(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=240;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Double:hashCode
function _166(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=245;
v0=a0;
v2=v0.value;
v1=_161(v2);
;
$f.l=246;
v3=(v1 >>> 32)|0;
v3=(v1 ^ v3)|0;
v4=v3|0;
return v4;
}
//java/lang/Double:intValue
function _167(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=251;
v0=a0;
v1=v0.value;
v2=v1|0;
return v2;
}
//java/lang/Double:isInfinite
function _168(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=261;
v0=a0;
v1=v0.value;
v2=_169(v1);
;
return v2;
}
//java/lang/Double:isInfinite
function _169(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=272;
		v0=a0;
		v1=(v0 != v0 || Infinity != Infinity) ? -1 : (v0 > Infinity) - (v0 < Infinity);
		if(v1==0) {$b=6; break;}
		v1=(v0 != v0 || -Infinity != -Infinity) ? -1 : (v0 > -Infinity) - (v0 < -Infinity);
		if(v1!=0) {$b=8; break;}
	case 6:
		v2=1;
		{ $b=9; break; }
	case 8:
		v2=0;
	case 9:
		return v2;
}
}
//java/lang/Double:isNaN
function _16a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=282;
v0=a0;
v1=v0.value;
v2=_16b(v1);
;
return v2;
}
//java/lang/Double:isNaN
function _16b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=294;
		v0=a0;
		v1=(v0 != v0 || v0 != v0) ? -1 : (v0 > v0) - (v0 < v0);
		if(v1==0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/lang/Double:longBitsToDouble
function _16c(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=303;
v0=a0;
v1=0.0;
$f.l=304;
v2=newArray(java/lang/Object,
2);
$f.l=311;
v3=_2f(v0);
;
v2[0]=v3;
v4=_35(v1);
;
v2[1]=v4;
$f.l=304;
_30($str78,v2);
$f.l=312;
return v1;
}
//java/lang/Double:longValue
function _16d(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=317;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Double:parseDouble
function _15d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=329;
v0=a0;
v1=_16e(v0);
;
return v1;
}
//java/lang/Double:shortValue
function _16f(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=334;
v0=a0;
v1=v0.value;
v2=v1|0;
v3=v2&0xffff;
return v3;
}
//java/lang/Double:toString
function _170(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=339;
v0=a0;
v1=v0.value;
v2=_171(v1);
;
return v2;
}
//java/lang/Double:toString
function _171(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=352;
v0=a0;
v1=$g19;
v2=_172(v1);
;
$f.l=353;
v4=newArray(java/lang/Object,
2);
v4[0]=v2;
v5=_35(v0);
;
v4[1]=v5;
v3=_173($str79,v4);
;
$f.l=354;
v6=new java/lang/String;
v1=$g19;
_174(v6,v1,0,v3);
return v6;
}
//java/lang/Double:valueOf
function _175(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=368;
v0=a0;
v1=_15d(v0);
;
v2=_35(v1);
;
return v2;
}
//java/lang/Double:compare
function _15f(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=388;
		v0=a0;
		v1=a1;
		v4=(v0 != v0 || v1 != v1) ? -1 : (v0 > v1) - (v0 < v1);
		if(v4<=0) {$b=7; break;}
		$f.l=389;
		return 1;
	case 7:
		$f.l=391;
		v4=(v1 != v1 || v0 != v0) ? -1 : (v1 > v0) - (v1 < v0);
		if(v4<=0) {$b=12; break;}
		$f.l=392;
		return -1;
	case 12:
		$f.l=394;
		v4=(v0 != v0 || v1 != v1) ? -1 : (v0 > v1) - (v0 < v1);
		if(v4!=0) {$b=19; break;}
		v4=(0.0 != 0.0 || v0 != v0) ? -1 : (0.0 > v0) - (0.0 < v0);
		if(v4==0) {$b=19; break;}
		$f.l=395;
		return 0;
	case 19:
		$f.l=399;
		v5=_16b(v0);
		;
		if(v5==0) {$b=29; break;}
		$f.l=400;
		v5=_16b(v1);
		;
		if(v5==0) {$b=27; break;}
		$f.l=401;
		return 0;
	case 27:
		$f.l=403;
		return 1;
	case 29:
		$f.l=404;
		v5=_16b(v1);
		;
		if(v5==0) {$b=34; break;}
		$f.l=405;
		return -1;
	case 34:
		$f.l=409;
		v2=_162(v0);
		;
		$f.l=410;
		v3=_162(v1);
		;
		$f.l=413;
		v6=(v2 >> 63)|0;
		v7=(v3 >> 63)|0;
		v7=(v6 - v7)|0;
		v8=v7|0;
		return v8;
}
}
//java/lang/Double:valueOf
function _35(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=424;
v0=a0;
v1=new java/lang/Double;
_15b(v1,v0);
return v1;
}
//java/lang/Double:toHexString
function _176(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=438;
		v0=a0;
		v9=(v0 != v0 || v0 != v0) ? -1 : (v0 > v0) - (v0 < v0);
		if(v9==0) {$b=6; break;}
		$f.l=439;
		return $str80;
	case 6:
		$f.l=441;
		v9=(v0 != v0 || Infinity != Infinity) ? -1 : (v0 > Infinity) - (v0 < Infinity);
		if(v9!=0) {$b=11; break;}
		$f.l=442;
		return $str81;
	case 11:
		$f.l=444;
		v9=(v0 != v0 || -Infinity != -Infinity) ? -1 : (v0 > -Infinity) - (v0 < -Infinity);
		if(v9!=0) {$b=16; break;}
		$f.l=445;
		return $str82;
	case 16:
		$f.l=448;
		v1=_161(v0);
		;
		$f.l=450;
		v10=(v1 & -9223372036854775808)|0;
		v9=(v10 > 0) - (v10 < 0);
		if(v9==0) {$b=24; break;}
		v11=1;
		{ $b=25; break; }
	case 24:
		v11=0;
	case 25:
		v2=v11;
		$f.l=452;
		v10=(v1 & 9218868437227405312)|0;
		v3=(v10 >>> 52)|0;
		$f.l=454;
		v4=(v1 & 4503599627370495)|0;
		$f.l=456;
		v9=(v3 > 0) - (v3 < 0);
		if(v9!=0) {$b=42; break;}
		v9=(v4 > 0) - (v4 < 0);
		if(v9!=0) {$b=42; break;}
		$f.l=457;
		if(v2==0) {$b=40; break;}
		v12=$str83;
		{ $b=41; break; }
	case 40:
		v12=$str84;
	case 41:
		return v12;
	case 42:
		$f.l=460;
		v13=new java/lang/StringBuilder;
		_177(v13,10);
		v5=v13;
		$f.l=461;
		if(v2==0) {$b=51; break;}
		$f.l=462;
		v13=_b(v5,$str85);
		;
		{ $b=53; break; }
	case 51:
		$f.l=464;
		v13=_b(v5,$str86);
		;
	case 53:
		$f.l=467;
		v9=(v3 > 0) - (v3 < 0);
		if(v9!=0) {$b=94; break;}
		$f.l=468;
		v13=_b(v5,$str87);
		;
		$f.l=470;
		v6=13;
	case 60:
		$f.l=473;
		v9=(v4 > 0) - (v4 < 0);
		if(v9==0) {$b=71; break;}
		v10=(v4 & 15)|0;
		v9=(v10 > 0) - (v10 < 0);
		if(v9!=0) {$b=71; break;}
		$f.l=474;
		v4=(v4 >>> 4)|0;
		$f.l=475;
		v6=(v6 + -1)|0;
		{ $b=60; break; }
	case 71:
		$f.l=478;
		v7=_121(v4);
		;
		$f.l=481;
		v9=(v4 > 0) - (v4 < 0);
		if(v9==0) {$b=88; break;}
		v14=_104(v7);
		;
		if(v6<=v14) {$b=88; break;}
		$f.l=482;
		v14=_104(v7);
		;
		v8=(v6 - v14)|0;
	case 81:
		$f.l=483;
		v14=v8;
		v8=(v8 + -1)|0;
		if(v14==0) {$b=88; break;}
		$f.l=484;
		v13=_fe(v5,48);
		;
		{ $b=81; break; }
	case 88:
		$f.l=487;
		v13=_b(v5,v7);
		;
		$f.l=488;
		v13=_b(v5,$str88);
		;
		$f.l=489;
		{ $b=134; break; }
	case 94:
		$f.l=490;
		v13=_b(v5,$str89);
		;
		$f.l=492;
		v6=13;
	case 98:
		$f.l=495;
		v9=(v4 > 0) - (v4 < 0);
		if(v9==0) {$b=109; break;}
		v10=(v4 & 15)|0;
		v9=(v10 > 0) - (v10 < 0);
		if(v9!=0) {$b=109; break;}
		$f.l=496;
		v4=(v4 >>> 4)|0;
		$f.l=497;
		v6=(v6 + -1)|0;
		{ $b=98; break; }
	case 109:
		$f.l=500;
		v7=_121(v4);
		;
		$f.l=503;
		v9=(v4 > 0) - (v4 < 0);
		if(v9==0) {$b=126; break;}
		v14=_104(v7);
		;
		if(v6<=v14) {$b=126; break;}
		$f.l=504;
		v14=_104(v7);
		;
		v8=(v6 - v14)|0;
	case 119:
		$f.l=505;
		v14=v8;
		v8=(v8 + -1)|0;
		if(v14==0) {$b=126; break;}
		$f.l=506;
		v13=_fe(v5,48);
		;
		{ $b=119; break; }
	case 126:
		$f.l=510;
		v13=_b(v5,v7);
		;
		$f.l=511;
		v13=_fe(v5,112);
		;
		$f.l=513;
		v10=(v3 - 1023)|0;
		v12=_124(v10);
		;
		v13=_b(v5,v12);
		;
	case 134:
		$f.l=515;
		v12=v5.$c.$vt[0](v5);
		;
		return v12;
}
}
//java/lang/Double:compareTo
function _178(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
v1=a1;
v2=vm.cast(v1,24);
v3=_15e(v0,v2);
;
return v3;
}
//java/lang/Double:<clinit>
function _179(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=107;
v0=vm.getClass(25);
$f.l=108;
v0=_13(v0);
;
$g6=v0;
$f.l=349;
v1=newArray(B,
21);
$g19=v1;
return;
}
//java/lang/Float:<init>
function _17a(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=125;
v0=a0;
v1=a1;
_f6(v0);
$f.l=126;
v0.value=v1;
$f.l=127;
return;
}
//java/lang/Float:<init>
function _17b(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=134;
v0=a0;
v1=a1;
_f6(v0);
$f.l=135;
v2=v1;
v0.value=v2;
$f.l=136;
return;
}
//java/lang/Float:<init>
function _17c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=147;
v0=a0;
v1=a1;
v2=_17d(v1);
;
_17a(v0,v2);
$f.l=148;
return;
}
//java/lang/Float:compareTo
function _17e(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=169;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=_17f(v2,v3);
;
return v4;
}
//java/lang/Float:byteValue
function _180(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=174;
v0=a0;
v1=v0.value;
v2=v1|0;
v3=v2&0xff;
return v3;
}
//java/lang/Float:doubleValue
function _181(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=179;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Float:equals
function _182(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=197;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,26);
		if(v2==0) {$b=14; break;}
		v3=v0.value;
		$f.l=198;
		v4=_183(v3);
		;
		v5=vm.cast(v1,26);
		v3=v5.value;
		v6=_183(v3);
		;
		if(v4!=v6) {$b=14; break;}
		v2=1;
		{ $b=15; break; }
	case 14:
		v2=0;
	case 15:
		$f.l=197;
		return v2;
}
}
//java/lang/Float:floatToIntBits
function _183(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=209;
v0=a0;
v1=0;
$f.l=210;
v2=newArray(java/lang/Object,
3);
$f.l=222;
v3=_3c(v0);
;
v2[0]=v3;
v4=_3b(v1);
;
v2[1]=v4;
v4=_3b(v1);
;
v2[2]=v4;
$f.l=210;
_30($str90,v2);
$f.l=223;
return v1;
}
//java/lang/Float:floatToRawIntBits
function _184(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=233;
v0=a0;
v1=0;
$f.l=234;
v2=newArray(java/lang/Object,
2);
$f.l=241;
v3=_3c(v0);
;
v2[0]=v3;
v4=_3b(v1);
;
v2[1]=v4;
$f.l=234;
_30($str91,v2);
$f.l=242;
return v1;
}
//java/lang/Float:floatValue
function _185(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=252;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Float:hashCode
function _186(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=257;
v0=a0;
v1=v0.value;
v2=_183(v1);
;
return v2;
}
//java/lang/Float:intBitsToFloat
function _187(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=266;
v0=a0;
v1=0.0;
$f.l=267;
v2=newArray(java/lang/Object,
2);
$f.l=274;
v3=_3b(v0);
;
v2[0]=v3;
v4=_3c(v1);
;
v2[1]=v4;
$f.l=267;
_30($str92,v2);
$f.l=275;
return v1;
}
//java/lang/Float:intValue
function _188(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=280;
v0=a0;
v1=v0.value;
v2=v1|0;
return v2;
}
//java/lang/Float:isInfinite
function _189(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=290;
v0=a0;
v1=v0.value;
v2=_18a(v1);
;
return v2;
}
//java/lang/Float:isInfinite
function _18a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=301;
		v0=a0;
		v1=(v0 != v0 || Infinity != Infinity) ? -1 : (v0 > Infinity) - (v0 < Infinity);
		if(v1==0) {$b=6; break;}
		v1=(v0 != v0 || -Infinity != -Infinity) ? -1 : (v0 > -Infinity) - (v0 < -Infinity);
		if(v1!=0) {$b=8; break;}
	case 6:
		v2=1;
		{ $b=9; break; }
	case 8:
		v2=0;
	case 9:
		return v2;
}
}
//java/lang/Float:isNaN
function _18b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=311;
v0=a0;
v1=v0.value;
v2=_18c(v1);
;
return v2;
}
//java/lang/Float:isNaN
function _18c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=323;
		v0=a0;
		v1=(v0 != v0 || v0 != v0) ? -1 : (v0 > v0) - (v0 < v0);
		if(v1==0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/lang/Float:longValue
function _18d(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=328;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Float:parseFloat
function _17d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=342;
v0=a0;
v1=_18e(v0);
;
return v1;
}
//java/lang/Float:shortValue
function _18f(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=347;
v0=a0;
v1=v0.value;
v2=v1|0;
v3=v2&0xffff;
return v3;
}
//java/lang/Float:toString
function _190(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=352;
v0=a0;
v1=v0.value;
v2=_191(v1);
;
return v2;
}
//java/lang/Float:toString
function _191(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=363;
v0=a0;
v1=v0;
v2=_171(v1);
;
return v2;
}
//java/lang/Float:valueOf
function _192(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=377;
v0=a0;
v1=_17d(v0);
;
v2=_3c(v1);
;
return v2;
}
//java/lang/Float:compare
function _17f(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=398;
		v0=a0;
		v1=a1;
		v4=(v0 != v0 || v1 != v1) ? -1 : (v0 > v1) - (v0 < v1);
		if(v4<=0) {$b=7; break;}
		$f.l=399;
		return 1;
	case 7:
		$f.l=401;
		v4=(v1 != v1 || v0 != v0) ? -1 : (v1 > v0) - (v1 < v0);
		if(v4<=0) {$b=12; break;}
		$f.l=402;
		return -1;
	case 12:
		$f.l=404;
		v4=(v0 != v0 || v1 != v1) ? -1 : (v0 > v1) - (v0 < v1);
		if(v4!=0) {$b=19; break;}
		v4=(0.0 != 0.0 || v0 != v0) ? -1 : (0.0 > v0) - (0.0 < v0);
		if(v4==0) {$b=19; break;}
		$f.l=405;
		return 0;
	case 19:
		$f.l=409;
		v5=_18c(v0);
		;
		if(v5==0) {$b=29; break;}
		$f.l=410;
		v5=_18c(v1);
		;
		if(v5==0) {$b=27; break;}
		$f.l=411;
		return 0;
	case 27:
		$f.l=413;
		return 1;
	case 29:
		$f.l=414;
		v5=_18c(v1);
		;
		if(v5==0) {$b=34; break;}
		$f.l=415;
		return -1;
	case 34:
		$f.l=419;
		v2=_184(v0);
		;
		$f.l=420;
		v3=_184(v1);
		;
		$f.l=424;
		v6=(v2 >> 31)|0;
		v7=(v3 >> 31)|0;
		v7=(v6 - v7)|0;
		return v7;
}
}
//java/lang/Float:valueOf
function _3c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=435;
v0=a0;
v1=new java/lang/Float;
_17a(v1,v0);
return v1;
}
//java/lang/Float:toHexString
function _193(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=449;
		v0=a0;
		v9=(v0 != v0 || v0 != v0) ? -1 : (v0 > v0) - (v0 < v0);
		if(v9==0) {$b=6; break;}
		$f.l=450;
		return $str80;
	case 6:
		$f.l=452;
		v9=(v0 != v0 || Infinity != Infinity) ? -1 : (v0 > Infinity) - (v0 < Infinity);
		if(v9!=0) {$b=11; break;}
		$f.l=453;
		return $str81;
	case 11:
		$f.l=455;
		v9=(v0 != v0 || -Infinity != -Infinity) ? -1 : (v0 > -Infinity) - (v0 < -Infinity);
		if(v9!=0) {$b=16; break;}
		$f.l=456;
		return $str82;
	case 16:
		$f.l=459;
		v1=_183(v0);
		;
		$f.l=461;
		v10=(v1 & -2147483648)|0;
		if(v10==0) {$b=23; break;}
		v11=1;
		{ $b=24; break; }
	case 23:
		v11=0;
	case 24:
		v2=v11;
		$f.l=463;
		v10=(v1 & 2139095040)|0;
		v3=(v10 >>> 23)|0;
		$f.l=466;
		v10=(v1 & 8388607)|0;
		v4=(v10 << 1)|0;
		$f.l=468;
		if(v3!=0) {$b=40; break;}
		if(v4!=0) {$b=40; break;}
		$f.l=469;
		if(v2==0) {$b=38; break;}
		v12=$str83;
		{ $b=39; break; }
	case 38:
		v12=$str84;
	case 39:
		return v12;
	case 40:
		$f.l=472;
		v13=new java/lang/StringBuilder;
		_177(v13,10);
		v5=v13;
		$f.l=473;
		if(v2==0) {$b=49; break;}
		$f.l=474;
		v13=_b(v5,$str85);
		;
		{ $b=51; break; }
	case 49:
		$f.l=476;
		v13=_b(v5,$str86);
		;
	case 51:
		$f.l=479;
		if(v3!=0) {$b=88; break;}
		$f.l=480;
		v13=_b(v5,$str87);
		;
		$f.l=482;
		v6=6;
	case 57:
		$f.l=485;
		if(v4==0) {$b=66; break;}
		v10=(v4 & 15)|0;
		if(v10!=0) {$b=66; break;}
		$f.l=486;
		v4=(v4 >>> 4)|0;
		$f.l=487;
		v6=(v6 + -1)|0;
		{ $b=57; break; }
	case 66:
		$f.l=490;
		v7=_149(v4);
		;
		$f.l=493;
		if(v4==0) {$b=82; break;}
		v10=_104(v7);
		;
		if(v6<=v10) {$b=82; break;}
		$f.l=494;
		v10=_104(v7);
		;
		v8=(v6 - v10)|0;
	case 75:
		$f.l=495;
		v10=v8;
		v8=(v8 + -1)|0;
		if(v10==0) {$b=82; break;}
		$f.l=496;
		v13=_fe(v5,48);
		;
		{ $b=75; break; }
	case 82:
		$f.l=499;
		v13=_b(v5,v7);
		;
		$f.l=500;
		v13=_b(v5,$str93);
		;
		$f.l=501;
		{ $b=124; break; }
	case 88:
		$f.l=502;
		v13=_b(v5,$str89);
		;
		$f.l=504;
		v6=6;
	case 92:
		$f.l=507;
		if(v4==0) {$b=101; break;}
		v10=(v4 & 15)|0;
		if(v10!=0) {$b=101; break;}
		$f.l=508;
		v4=(v4 >>> 4)|0;
		$f.l=509;
		v6=(v6 + -1)|0;
		{ $b=92; break; }
	case 101:
		$f.l=512;
		v7=_149(v4);
		;
		$f.l=515;
		if(v4==0) {$b=117; break;}
		v10=_104(v7);
		;
		if(v6<=v10) {$b=117; break;}
		$f.l=516;
		v10=_104(v7);
		;
		v8=(v6 - v10)|0;
	case 110:
		$f.l=517;
		v10=v8;
		v8=(v8 + -1)|0;
		if(v10==0) {$b=117; break;}
		$f.l=518;
		v13=_fe(v5,48);
		;
		{ $b=110; break; }
	case 117:
		$f.l=521;
		v13=_b(v5,v7);
		;
		$f.l=522;
		v13=_fe(v5,112);
		;
		$f.l=524;
		v10=(v3 - 127)|0;
		v13=_c(v5,v10);
		;
	case 124:
		$f.l=526;
		v12=v5.$c.$vt[0](v5);
		;
		return v12;
}
}
//java/lang/Float:compareTo
function _194(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
v1=a1;
v2=vm.cast(v1,26);
v3=_17e(v0,v2);
;
return v3;
}
//java/lang/Float:<clinit>
function _195(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=107;
v0=vm.getClass(27);
$f.l=108;
v0=_13(v0);
;
$g7=v0;
$f.l=107;
return;
}
//java/lang/Short:<init>
function _196(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
_f6(v0);
$f.l=32;
v0.value=v1;
$f.l=33;
return;
}
//java/lang/Short:valueOf
function _3a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=new java/lang/Short;
_196(v1,v0);
return v1;
}
//java/lang/Short:compareTo
function _197(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=(v2 - v3)|0;
return v4;
}
//java/lang/Short:equals
function _198(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,28);
		if(v2==0) {$b=11; break;}
		v3=vm.cast(v1,28);
		v4=v3.value;
		v5=v0.value;
		if(v4!=v5) {$b=11; break;}
		v2=1;
		{ $b=12; break; }
	case 11:
		v2=0;
	case 12:
		return v2;
}
}
//java/lang/Short:hashCode
function _199(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Short:toString
function _19a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=v0.value;
v2=_19b(v1);
;
return v2;
}
//java/lang/Short:toString
function _19c(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
v1=a1;
v2=Math.floor(v0);
v3=_120(v2,v1);
;
return v3;
}
//java/lang/Short:toString
function _19b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=_19c(v0,10);
;
return v1;
}
//java/lang/Short:byteValue
function _19d(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=64;
v0=a0;
v1=v0.value;
v2=v1&0xff;
return v2;
}
//java/lang/Short:shortValue
function _19e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Short:intValue
function _19f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=72;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Short:longValue
function _1a0(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Short:floatValue
function _1a1(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=80;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Short:doubleValue
function _1a2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Short:compareTo
function _1a3(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,28);
v3=_197(v0,v2);
;
return v3;
}
//java/lang/Short:<clinit>
function _1a4(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=vm.getClass(8);
v0=v0.componentType;
$g3=v0;
return;
}
//java/lang/Byte:<init>
function _1a5(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
_f6(v0);
$f.l=32;
v0.value=v1;
$f.l=33;
return;
}
//java/lang/Byte:valueOf
function _37(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=new java/lang/Byte;
_1a5(v1,v0);
return v1;
}
//java/lang/Byte:equals
function _1a6(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=40;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,29);
		if(v2==0) {$b=11; break;}
		v3=vm.cast(v1,29);
		v4=v3.value;
		v5=v0.value;
		if(v4!=v5) {$b=11; break;}
		v2=1;
		{ $b=12; break; }
	case 11:
		v2=0;
	case 12:
		return v2;
}
}
//java/lang/Byte:hashCode
function _1a7(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Byte:toString
function _1a8(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=v0.value;
v2=_1a9(v1);
;
return v2;
}
//java/lang/Byte:compareTo
function _1aa(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=(v2 - v3)|0;
return v4;
}
//java/lang/Byte:toString
function _1ab(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
v1=a1;
v2=Math.floor(v0);
v3=_120(v2,v1);
;
return v3;
}
//java/lang/Byte:toString
function _1a9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=_1ab(v0,10);
;
return v1;
}
//java/lang/Byte:parseByte
function _1ac(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=64;
v0=a0;
v1=_136(v0);
;
v2=v1&0xff;
return v2;
}
//java/lang/Byte:byteValue
function _1ad(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Byte:shortValue
function _1ae(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=72;
v0=a0;
v1=v0.value;
v2=v1&0xffff;
return v2;
}
//java/lang/Byte:intValue
function _1af(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Byte:longValue
function _1b0(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=80;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Byte:floatValue
function _1b1(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Byte:doubleValue
function _1b2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=88;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Byte:toUnsignedInt
function _1b3(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=92;
v0=a0;
v1=(v0 & 255)|0;
return v1;
}
//java/lang/Byte:compareTo
function _1b4(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,29);
v3=_1aa(v0,v2);
;
return v3;
}
//java/lang/Byte:<clinit>
function _1b5(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=vm.getClass(7);
v0=v0.componentType;
$g0=v0;
return;
}
//java/util/AbstractList:equals
function _1b6(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=482;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=6; break;}
		$f.l=483;
		return 1;
	case 6:
		$f.l=485;
		v7=vm.is(v1,30);
		if(v7==0) {$b=38; break;}
		$f.l=486;
		v2=vm.cast(v1,30);
		$f.l=487;
		v8=v2v2.$c.$it[-1](v2);
		;
		v9=_d7(v0);
		;
		if(v8==v9) {$b=17; break;}
		$f.l=488;
		return 0;
	case 17:
		$f.l=491;
		v3=_1b7(v0);
		;
		v4=v2v2.$c.$it[-1](v2);
		;
	case 20:
		$f.l=492;
		v7=v3v3.$c.$it[0](v3);
		;
		if(v7==0) {$b=36; break;}
		$f.l=493;
		v5=v3v3.$c.$it[0](v3);
		;
		v6=v4v4.$c.$it[0](v4);
		;
		$f.l=494;
		if(v5!=null) {$b=30; break;}
		if(v6!=null) {$b=32; break;}
		{ $b=34; break; }
	case 30:
		v7=v5.$c.$vt[1](v5,v6);
		;
		if(v7!=0) {$b=34; break;}
	case 32:
		$f.l=495;
		return 0;
	case 34:
		$f.l=497;
		{ $b=20; break; }
	case 36:
		$f.l=498;
		return 1;
	case 38:
		$f.l=500;
		return 0;
}
}
//java/util/AbstractList:hashCode
function _1b8(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=524;
		v0=a0;
		v1=1;
		$f.l=525;
		v2=_1b7(v0);
		;
	case 5:
		$f.l=526;
		v4=v2v2.$c.$it[0](v2);
		;
		if(v4==0) {$b=19; break;}
		$f.l=527;
		v3=v2v2.$c.$it[0](v2);
		;
		$f.l=528;
		v5=(31 * v1)|0;
		if(v3!=null) {$b=15; break;}
		v6=0;
		{ $b=16; break; }
	case 15:
		v6=v3.$c.$vt[2](v3);
		;
	case 16:
		v1=(v5 + v6)|0;
		$f.l=529;
		{ $b=5; break; }
	case 19:
		$f.l=530;
		return v1;
}
}
var vm={fp:0,frames:[{trap:0},{trap:0}]};
_19(vm);
