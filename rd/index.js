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
		v5=newArray(0,1);
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
//org/jbox2d/dynamics/contacts/Velocity:<init>
function _19(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=28;
v0=a0;
_0(v0);
$f.l=29;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.v=v1;
return;
}
//org/jbox2d/dynamics/contacts/ContactSolver:<init>
function _1b(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=67;
		v0=a0;
		_0(v0);
		$f.l=77;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.tangent=v1;
		$f.l=78;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.temp1=v1;
		$f.l=79;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.temp2=v1;
		$f.l=183;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.P=v1;
		$f.l=184;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.temp=v1;
		$f.l=226;
		v3=new org/jbox2d/common/Transform;
		_1c(v3);
		v0.xfA=v3;
		$f.l=227;
		v3=new org/jbox2d/common/Transform;
		_1c(v3);
		v0.xfB=v3;
		$f.l=228;
		v4=new org/jbox2d/collision/WorldManifold;
		_1d(v4);
		v0.worldManifold=v4;
		$f.l=336;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.a=v1;
		$f.l=337;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.b=v1;
		$f.l=338;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.dv1=v1;
		$f.l=339;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.dv2=v1;
		$f.l=340;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.x=v1;
		$f.l=341;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.d=v1;
		$f.l=342;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.P1=v1;
		$f.l=343;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.P2=v1;
		$f.l=809;
		v5=new org/jbox2d/dynamics/contacts/PositionSolverManifold;
		_1e(v5);
		v0.psolver=v5;
		$f.l=810;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.rA=v1;
		$f.l=811;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.rB=v1;
		$f.l=68;
		v6=newArray(1,256);
		v0.m_positionConstraints=v6;
		$f.l=69;
		v7=newArray(2,256);
		v0.m_velocityConstraints=v7;
		$f.l=70;
		v2=0;
	case 87:
		if(v2>=256) {$b=101; break;}
		$f.l=71;
		v6=v0.m_positionConstraints;
		v8=new org/jbox2d/dynamics/contacts/ContactPositionConstraint;
		_1f(v8);
		v6[v2]=v8;
		$f.l=72;
		v7=v0.m_velocityConstraints;
		v9=new org/jbox2d/dynamics/contacts/ContactVelocityConstraint;
		_20(v9);
		v7[v2]=v9;
		$f.l=70;
		v2=(v2 + 1)|0;
		{ $b=87; break; }
	case 101:
		$f.l=74;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:init
function _21(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=83;
		v0=a0;
		v1=a1;
		v19=v1.step;
		v0.m_step=v19;
		$f.l=84;
		v20=v1.count;
		v0.m_count=v20;
		$f.l=86;
		v21=v0.m_positionConstraints;
		v20=v21.len;
		v22=v0.m_count;
		if(v20>=v22) {$b=39; break;}
		$f.l=87;
		v2=v0.m_positionConstraints;
		$f.l=88;
		v22=v2.len;
		v22=(v22 * 2)|0;
		v20=v0.m_count;
		v22=_22(v22,v20);
		;
		v21=newArray(1,v22);
		v0.m_positionConstraints=v21;
		$f.l=89;
		v21=v0.m_positionConstraints;
		v22=v2.len;
		_15(v2,0,v21,0,v22);
		$f.l=90;
		v3=v2.len;
	case 28:
		v21=v0.m_positionConstraints;
		v22=v21.len;
		if(v3>=v22) {$b=39; break;}
		$f.l=91;
		v21=v0.m_positionConstraints;
		v23=new org/jbox2d/dynamics/contacts/ContactPositionConstraint;
		_1f(v23);
		v21[v3]=v23;
		$f.l=90;
		v3=(v3 + 1)|0;
		{ $b=28; break; }
	case 39:
		$f.l=95;
		v24=v0.m_velocityConstraints;
		v22=v24.len;
		v20=v0.m_count;
		if(v22>=v20) {$b=70; break;}
		$f.l=96;
		v25=v0.m_velocityConstraints;
		$f.l=97;
		v22=v25.len;
		v22=(v22 * 2)|0;
		v20=v0.m_count;
		v22=_22(v22,v20);
		;
		v24=newArray(2,v22);
		v0.m_velocityConstraints=v24;
		$f.l=98;
		v24=v0.m_velocityConstraints;
		v22=v25.len;
		_15(v25,0,v24,0,v22);
		$f.l=99;
		v3=v25.len;
	case 59:
		v24=v0.m_velocityConstraints;
		v22=v24.len;
		if(v3>=v22) {$b=70; break;}
		$f.l=100;
		v24=v0.m_velocityConstraints;
		v26=new org/jbox2d/dynamics/contacts/ContactVelocityConstraint;
		_20(v26);
		v24[v3]=v26;
		$f.l=99;
		v3=(v3 + 1)|0;
		{ $b=59; break; }
	case 70:
		$f.l=104;
		v27=v1.positions;
		v0.m_positions=v27;
		$f.l=105;
		v28=v1.velocities;
		v0.m_velocities=v28;
		$f.l=106;
		v29=v1.contacts;
		v0.m_contacts=v29;
		$f.l=108;
		v30=0;
	case 81:
		v22=v0.m_count;
		if(v30>=v22) {$b=261; break;}
		$f.l=110;
		v29=v0.m_contacts;
		v31=v29[v30];
		$f.l=112;
		v4=v31.m_fixtureA;
		$f.l=113;
		v5=v31.m_fixtureB;
		$f.l=114;
		v6=_23(v4);
		;
		$f.l=115;
		v7=_23(v5);
		;
		$f.l=116;
		v8=v6.m_radius;
		$f.l=117;
		v9=v7.m_radius;
		$f.l=118;
		v10=_24(v4);
		;
		$f.l=119;
		v11=_24(v5);
		;
		$f.l=120;
		v12=_25(v31);
		;
		$f.l=122;
		v13=v12.pointCount;
		$f.l=123;
		v32=$g0;
		if(v32!=0) {$b=113; break;}
		if(v13>0) {$b=113; break;}
		v33=new java/lang/AssertionError;
		_26(v33);
		throw v33;
	case 113:
		$f.l=125;
		v24=v0.m_velocityConstraints;
		v14=v24[v30];
		$f.l=126;
		v34=v31.m_friction;
		v14.friction=v34;
		$f.l=127;
		v34=v31.m_restitution;
		v14.restitution=v34;
		$f.l=128;
		v34=v31.m_tangentSpeed;
		v14.tangentSpeed=v34;
		$f.l=129;
		v22=v10.m_islandIndex;
		v14.indexA=v22;
		$f.l=130;
		v22=v11.m_islandIndex;
		v14.indexB=v22;
		$f.l=131;
		v34=v10.m_invMass;
		v14.invMassA=v34;
		$f.l=132;
		v34=v11.m_invMass;
		v14.invMassB=v34;
		$f.l=133;
		v34=v10.m_invI;
		v14.invIA=v34;
		$f.l=134;
		v34=v11.m_invI;
		v14.invIB=v34;
		$f.l=135;
		v14.contactIndex=v30;
		$f.l=136;
		v14.pointCount=v13;
		$f.l=137;
		v35=v14.K;
		_27(v35);
		$f.l=138;
		v35=v14.normalMass;
		_27(v35);
		$f.l=140;
		v21=v0.m_positionConstraints;
		v15=v21[v30];
		$f.l=141;
		v22=v10.m_islandIndex;
		v15.indexA=v22;
		$f.l=142;
		v22=v11.m_islandIndex;
		v15.indexB=v22;
		$f.l=143;
		v34=v10.m_invMass;
		v15.invMassA=v34;
		$f.l=144;
		v34=v11.m_invMass;
		v15.invMassB=v34;
		$f.l=145;
		v36=v15.localCenterA;
		v37=v10.m_sweep;
		v38=v37.localCenter;
		v38=_28(v36,v38);
		;
		$f.l=146;
		v38=v15.localCenterB;
		v37=v11.m_sweep;
		v36=v37.localCenter;
		v38=_28(v38,v36);
		;
		$f.l=147;
		v34=v10.m_invI;
		v15.invIA=v34;
		$f.l=148;
		v34=v11.m_invI;
		v15.invIB=v34;
		$f.l=149;
		v38=v15.localNormal;
		v36=v12.localNormal;
		v38=_28(v38,v36);
		;
		$f.l=150;
		v38=v15.localPoint;
		v36=v12.localPoint;
		v38=_28(v38,v36);
		;
		$f.l=151;
		v15.pointCount=v13;
		$f.l=152;
		v15.radiusA=v8;
		$f.l=153;
		v15.radiusB=v9;
		$f.l=154;
		v39=v12.type;
		v15.type=v39;
		$f.l=157;
		v16=0;
	case 203:
		if(v16>=v13) {$b=258; break;}
		$f.l=158;
		v40=v12.points;
		v17=v40[v16];
		$f.l=159;
		v41=v14.points;
		v18=v41[v16];
		$f.l=161;
		v19=v0.m_step;
		v32=v19.warmStarting;
		if(v32==0) {$b=227; break;}
		$f.l=164;
		v19=v0.m_step;
		v34=v19.dtRatio;
		v42=v17.normalImpulse;
		v42=v34 * v42;
		v18.normalImpulse=v42;
		$f.l=165;
		v19=v0.m_step;
		v42=v19.dtRatio;
		v34=v17.tangentImpulse;
		v42=v42 * v34;
		v18.tangentImpulse=v42;
		{ $b=231; break; }
	case 227:
		$f.l=167;
		v18.normalImpulse=0.0;
		$f.l=168;
		v18.tangentImpulse=0.0;
	case 231:
		$f.l=171;
		v38=v18.rA;
		_29(v38);
		$f.l=172;
		v38=v18.rB;
		_29(v38);
		$f.l=173;
		v18.normalMass=0.0;
		$f.l=174;
		v18.tangentMass=0.0;
		$f.l=175;
		v18.velocityBias=0.0;
		$f.l=176;
		v43=v15.localPoints;
		v38=v43[v16];
		v36=v17.localPoint;
		v42=v36.x;
		v38.x=v42;
		$f.l=177;
		v43=v15.localPoints;
		v38=v43[v16];
		v36=v17.localPoint;
		v42=v36.y;
		v38.y=v42;
		$f.l=157;
		v16=(v16 + 1)|0;
		{ $b=203; break; }
	case 258:
		$f.l=108;
		v30=(v30 + 1)|0;
		{ $b=81; break; }
	case 261:
		$f.l=180;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:warmStart
function _2a(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=188;
		v0=a0;
		v1=0;
	case 3:
		v21=v0.m_count;
		if(v1>=v21) {$b=124; break;}
		$f.l=189;
		v22=v0.m_velocityConstraints;
		v2=v22[v1];
		$f.l=191;
		v3=v2.indexA;
		$f.l=192;
		v4=v2.indexB;
		$f.l=193;
		v5=v2.invMassA;
		$f.l=194;
		v6=v2.invIA;
		$f.l=195;
		v7=v2.invMassB;
		$f.l=196;
		v8=v2.invIB;
		$f.l=197;
		v9=v2.pointCount;
		$f.l=199;
		v23=v0.m_velocities;
		v24=v23[v3];
		v10=v24.v;
		$f.l=200;
		v23=v0.m_velocities;
		v24=v23[v3];
		v11=v24.w;
		$f.l=201;
		v23=v0.m_velocities;
		v24=v23[v4];
		v12=v24.v;
		$f.l=202;
		v23=v0.m_velocities;
		v24=v23[v4];
		v13=v24.w;
		$f.l=204;
		v14=v2.normal;
		$f.l=205;
		v25=v14.y;
		v15=1.0 * v25;
		$f.l=206;
		v25=v14.x;
		v16=-1.0 * v25;
		$f.l=208;
		v17=0;
	case 48:
		if(v17>=v9) {$b=113; break;}
		$f.l=209;
		v26=v2.points;
		v18=v26[v17];
		$f.l=210;
		v25=v18.tangentImpulse;
		v25=v15 * v25;
		v27=v14.x;
		v28=v18.normalImpulse;
		v28=v27 * v28;
		v19=v25 + v28;
		$f.l=211;
		v28=v18.tangentImpulse;
		v28=v16 * v28;
		v27=v14.y;
		v25=v18.normalImpulse;
		v27=v27 * v25;
		v20=v28 + v27;
		$f.l=213;
		v29=v18.rA;
		v28=v29.x;
		v28=v28 * v20;
		v29=v18.rA;
		v27=v29.y;
		v27=v27 * v19;
		v28=v28 - v27;
		v28=v6 * v28;
		v11=v11 - v28;
		$f.l=214;
		v29=v10;
		v28=v10.x;
		v27=v19 * v5;
		v28=v28 - v27;
		v10.x=v28;
		$f.l=215;
		v29=v10;
		v28=v10.y;
		v27=v20 * v5;
		v28=v28 - v27;
		v10.y=v28;
		$f.l=216;
		v29=v18.rB;
		v28=v29.x;
		v28=v28 * v20;
		v29=v18.rB;
		v27=v29.y;
		v27=v27 * v19;
		v28=v28 - v27;
		v28=v8 * v28;
		v13=v13 + v28;
		$f.l=217;
		v29=v12;
		v28=v12.x;
		v27=v19 * v7;
		v28=v28 + v27;
		v12.x=v28;
		$f.l=218;
		v29=v12;
		v28=v12.y;
		v27=v20 * v7;
		v28=v28 + v27;
		v12.y=v28;
		$f.l=208;
		v17=(v17 + 1)|0;
		{ $b=48; break; }
	case 113:
		$f.l=220;
		v23=v0.m_velocities;
		v24=v23[v3];
		v24.w=v11;
		$f.l=221;
		v23=v0.m_velocities;
		v24=v23[v4];
		v24.w=v13;
		$f.l=188;
		v1=(v1 + 1)|0;
		{ $b=3; break; }
	case 124:
		$f.l=223;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:initializeVelocityConstraints
function _2b(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54,v55,v56,v57,v58,v59,v60,v61,v62,v63,v64;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=233;
		v0=a0;
		v1=0;
	case 3:
		v37=v0.m_count;
		if(v1>=v37) {$b=386; break;}
		$f.l=234;
		v38=v0.m_velocityConstraints;
		v2=v38[v1];
		$f.l=235;
		v39=v0.m_positionConstraints;
		v3=v39[v1];
		$f.l=237;
		v4=v3.radiusA;
		$f.l=238;
		v5=v3.radiusB;
		$f.l=239;
		v40=v0.m_contacts;
		v37=v2.contactIndex;
		v41=v40[v37];
		v6=_25(v41);
		;
		$f.l=241;
		v7=v2.indexA;
		$f.l=242;
		v8=v2.indexB;
		$f.l=244;
		v9=v2.invMassA;
		$f.l=245;
		v10=v2.invMassB;
		$f.l=246;
		v11=v2.invIA;
		$f.l=247;
		v12=v2.invIB;
		$f.l=248;
		v13=v3.localCenterA;
		$f.l=249;
		v14=v3.localCenterB;
		$f.l=251;
		v42=v0.m_positions;
		v43=v42[v7];
		v15=v43.c;
		$f.l=252;
		v42=v0.m_positions;
		v43=v42[v7];
		v16=v43.a;
		$f.l=253;
		v44=v0.m_velocities;
		v45=v44[v7];
		v17=v45.v;
		$f.l=254;
		v44=v0.m_velocities;
		v45=v44[v7];
		v18=v45.w;
		$f.l=256;
		v42=v0.m_positions;
		v43=v42[v8];
		v19=v43.c;
		$f.l=257;
		v42=v0.m_positions;
		v43=v42[v8];
		v20=v43.a;
		$f.l=258;
		v44=v0.m_velocities;
		v45=v44[v8];
		v21=v45.v;
		$f.l=259;
		v44=v0.m_velocities;
		v45=v44[v8];
		v22=v45.w;
		$f.l=261;
		v46=$g0;
		if(v46!=0) {$b=76; break;}
		v37=v6.pointCount;
		if(v37>0) {$b=76; break;}
		v47=new java/lang/AssertionError;
		_26(v47);
		throw v47;
	case 76:
		$f.l=263;
		v48=v0.xfA;
		v49=v48.q;
		v49=_2c(v49,v16);
		;
		$f.l=264;
		v48=v0.xfB;
		v49=v48.q;
		v49=_2c(v49,v20);
		;
		$f.l=265;
		v48=v0.xfA;
		v50=v48.p;
		v51=v15.x;
		v48=v0.xfA;
		v49=v48.q;
		v52=v49.c;
		v53=v13.x;
		v53=v52 * v53;
		v48=v0.xfA;
		v49=v48.q;
		v52=v49.s;
		v54=v13.y;
		v54=v52 * v54;
		v54=v53 - v54;
		v54=v51 - v54;
		v50.x=v54;
		$f.l=266;
		v48=v0.xfA;
		v50=v48.p;
		v54=v15.y;
		v48=v0.xfA;
		v49=v48.q;
		v53=v49.s;
		v52=v13.x;
		v53=v53 * v52;
		v48=v0.xfA;
		v49=v48.q;
		v52=v49.c;
		v51=v13.y;
		v52=v52 * v51;
		v53=v53 + v52;
		v54=v54 - v53;
		v50.y=v54;
		$f.l=267;
		v48=v0.xfB;
		v50=v48.p;
		v54=v19.x;
		v48=v0.xfB;
		v49=v48.q;
		v53=v49.c;
		v52=v14.x;
		v53=v53 * v52;
		v48=v0.xfB;
		v49=v48.q;
		v52=v49.s;
		v51=v14.y;
		v52=v52 * v51;
		v53=v53 - v52;
		v54=v54 - v53;
		v50.x=v54;
		$f.l=268;
		v48=v0.xfB;
		v50=v48.p;
		v54=v19.y;
		v48=v0.xfB;
		v49=v48.q;
		v53=v49.s;
		v52=v14.x;
		v53=v53 * v52;
		v48=v0.xfB;
		v49=v48.q;
		v52=v49.c;
		v51=v14.y;
		v52=v52 * v51;
		v53=v53 + v52;
		v54=v54 - v53;
		v50.y=v54;
		$f.l=270;
		v55=v0.worldManifold;
		v48=v0.xfA;
		v56=v0.xfB;
		_2d(v55,v6,v48,v4,v56,v5);
		$f.l=272;
		v50=v2.normal;
		v55=v0.worldManifold;
		v57=v55.normal;
		v57=_28(v50,v57);
		;
		$f.l=274;
		v23=v2.pointCount;
		$f.l=275;
		v24=0;
	case 166:
		if(v24>=v23) {$b=311; break;}
		$f.l=276;
		v58=v2.points;
		v25=v58[v24];
		$f.l=278;
		v57=v25.rA;
		v55=v0.worldManifold;
		v59=v55.points;
		v50=v59[v24];
		v57=_28(v57,v50);
		;
		v57=_2e(v57,v15);
		;
		$f.l=279;
		v57=v25.rB;
		v55=v0.worldManifold;
		v59=v55.points;
		v50=v59[v24];
		v57=_28(v57,v50);
		;
		v57=_2e(v57,v19);
		;
		$f.l=281;
		v57=v25.rA;
		v54=v57.x;
		v57=v2.normal;
		v53=v57.y;
		v54=v54 * v53;
		v57=v25.rA;
		v53=v57.y;
		v57=v2.normal;
		v52=v57.x;
		v53=v53 * v52;
		v26=v54 - v53;
		$f.l=282;
		v57=v25.rB;
		v54=v57.x;
		v57=v2.normal;
		v53=v57.y;
		v54=v54 * v53;
		v57=v25.rB;
		v53=v57.y;
		v57=v2.normal;
		v52=v57.x;
		v53=v53 * v52;
		v27=v54 - v53;
		$f.l=284;
		v54=v9 + v10;
		v53=v11 * v26;
		v53=v53 * v26;
		v54=v54 + v53;
		v53=v12 * v27;
		v53=v53 * v27;
		v28=v54 + v53;
		$f.l=286;
		v60=v25;
		v61=(v28 != v28 || 0.0 != 0.0) ? -1 : (v28 > 0.0) - (v28 < 0.0);
		if(v61<=0) {$b=222; break;}
		v54=1.0 / v28;
		{ $b=223; break; }
	case 222:
		v54=0.0;
	case 223:
		v60.normalMass=v54;
		$f.l=288;
		v57=v2.normal;
		v54=v57.y;
		v29=1.0 * v54;
		$f.l=289;
		v57=v2.normal;
		v54=v57.x;
		v30=-1.0 * v54;
		$f.l=291;
		v57=v25.rA;
		v54=v57.x;
		v54=v54 * v30;
		v57=v25.rA;
		v53=v57.y;
		v53=v53 * v29;
		v31=v54 - v53;
		$f.l=292;
		v57=v25.rB;
		v54=v57.x;
		v54=v54 * v30;
		v57=v25.rB;
		v53=v57.y;
		v53=v53 * v29;
		v32=v54 - v53;
		$f.l=294;
		v54=v9 + v10;
		v53=v11 * v31;
		v53=v53 * v31;
		v54=v54 + v53;
		v53=v12 * v32;
		v53=v53 * v32;
		v33=v54 + v53;
		$f.l=296;
		v60=v25;
		v61=(v33 != v33 || 0.0 != 0.0) ? -1 : (v33 > 0.0) - (v33 < 0.0);
		if(v61<=0) {$b=262; break;}
		v54=1.0 / v33;
		{ $b=263; break; }
	case 262:
		v54=0.0;
	case 263:
		v60.tangentMass=v54;
		$f.l=299;
		v25.velocityBias=0.0;
		$f.l=300;
		v54=v21.x;
		v53=-v22;
		v57=v25.rB;
		v52=v57.y;
		v53=v53 * v52;
		v54=v54 + v53;
		v53=v17.x;
		v54=v54 - v53;
		v53=-v18;
		v57=v25.rA;
		v52=v57.y;
		v53=v53 * v52;
		v34=v54 - v53;
		$f.l=301;
		v54=v21.y;
		v57=v25.rB;
		v53=v57.x;
		v53=v22 * v53;
		v54=v54 + v53;
		v53=v17.y;
		v54=v54 - v53;
		v57=v25.rA;
		v53=v57.x;
		v53=v18 * v53;
		v35=v54 - v53;
		$f.l=302;
		v57=v2.normal;
		v54=v57.x;
		v54=v54 * v34;
		v57=v2.normal;
		v53=v57.y;
		v53=v53 * v35;
		v36=v54 + v53;
		$f.l=303;
		v61=(v36 != v36 || -1.0 != -1.0) ? 1 : (v36 > -1.0) - (v36 < -1.0);
		if(v61>=0) {$b=308; break;}
		$f.l=304;
		v54=v2.restitution;
		v54=-v54;
		v54=v54 * v36;
		v25.velocityBias=v54;
	case 308:
		$f.l=275;
		v24=(v24 + 1)|0;
		{ $b=166; break; }
	case 311:
		$f.l=309;
		v37=v2.pointCount;
		if(v37!=2) {$b=383; break;}
		$f.l=310;
		v58=v2.points;
		v62=v58[0];
		$f.l=311;
		v58=v2.points;
		v25=v58[1];
		$f.l=313;
		v57=v62.rA;
		v50=v2.normal;
		v26=_2f(v57,v50);
		;
		$f.l=314;
		v57=v62.rB;
		v50=v2.normal;
		v27=_2f(v57,v50);
		;
		$f.l=315;
		v57=v25.rA;
		v50=v2.normal;
		v28=_2f(v57,v50);
		;
		$f.l=316;
		v57=v25.rB;
		v50=v2.normal;
		v29=_2f(v57,v50);
		;
		$f.l=318;
		v54=v9 + v10;
		v53=v11 * v26;
		v53=v53 * v26;
		v54=v54 + v53;
		v53=v12 * v27;
		v53=v53 * v27;
		v30=v54 + v53;
		$f.l=319;
		v54=v9 + v10;
		v53=v11 * v28;
		v53=v53 * v28;
		v54=v54 + v53;
		v53=v12 * v29;
		v53=v53 * v29;
		v31=v54 + v53;
		$f.l=320;
		v54=v9 + v10;
		v53=v11 * v26;
		v53=v53 * v28;
		v54=v54 + v53;
		v53=v12 * v27;
		v53=v53 * v29;
		v32=v54 + v53;
		$f.l=321;
		v54=v30 * v30;
		v53=v30 * v31;
		v52=v32 * v32;
		v53=v53 - v52;
		v53=100.0 * v53;
		v61=(v54 != v54 || v53 != v53) ? 1 : (v54 > v53) - (v54 < v53);
		if(v61>=0) {$b=381; break;}
		$f.l=323;
		v63=v2.K;
		v57=v63.ex;
		v57=_30(v57,v30,v32);
		;
		$f.l=324;
		v63=v2.K;
		v57=v63.ey;
		v57=_30(v57,v32,v31);
		;
		$f.l=325;
		v63=v2.K;
		v64=v2.normalMass;
		_31(v63,v64);
		{ $b=383; break; }
	case 381:
		$f.l=329;
		v2.pointCount=1;
	case 383:
		$f.l=233;
		v1=(v1 + 1)|0;
		{ $b=3; break; }
	case 386:
		$f.l=333;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:solveVelocityConstraints
function _32(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=346;
		v0=a0;
		v1=0;
	case 3:
		v27=v0.m_count;
		if(v1>=v27) {$b=825; break;}
		$f.l=347;
		v28=v0.m_velocityConstraints;
		v2=v28[v1];
		$f.l=349;
		v3=v2.indexA;
		$f.l=350;
		v4=v2.indexB;
		$f.l=352;
		v5=v2.invMassA;
		$f.l=353;
		v6=v2.invMassB;
		$f.l=354;
		v7=v2.invIA;
		$f.l=355;
		v8=v2.invIB;
		$f.l=356;
		v9=v2.pointCount;
		$f.l=358;
		v29=v0.m_velocities;
		v30=v29[v3];
		v10=v30.v;
		$f.l=359;
		v29=v0.m_velocities;
		v30=v29[v3];
		v11=v30.w;
		$f.l=360;
		v29=v0.m_velocities;
		v30=v29[v4];
		v12=v30.v;
		$f.l=361;
		v29=v0.m_velocities;
		v30=v29[v4];
		v13=v30.w;
		$f.l=363;
		v14=v2.normal;
		$f.l=364;
		v31=v0.tangent;
		v32=v2.normal;
		v33=v32.y;
		v33=1.0 * v33;
		v31.x=v33;
		$f.l=365;
		v32=v0.tangent;
		v31=v2.normal;
		v33=v31.x;
		v33=-1.0 * v33;
		v32.y=v33;
		$f.l=366;
		v15=v2.friction;
		$f.l=368;
		v34=$g0;
		if(v34!=0) {$b=62; break;}
		if(v9==1) {$b=62; break;}
		if(v9==2) {$b=62; break;}
		v35=new java/lang/AssertionError;
		_26(v35);
		throw v35;
	case 62:
		$f.l=371;
		v16=0;
	case 64:
		if(v16>=v9) {$b=175; break;}
		$f.l=372;
		v36=v2.points;
		v17=v36[v16];
		$f.l=373;
		v18=v17.rA;
		$f.l=374;
		v33=-v13;
		v32=v17.rB;
		v37=v32.y;
		v37=v33 * v37;
		v33=v12.x;
		v37=v37 + v33;
		v33=v10.x;
		v37=v37 - v33;
		v33=v18.y;
		v33=v11 * v33;
		v19=v37 + v33;
		$f.l=375;
		v32=v17.rB;
		v37=v32.x;
		v37=v13 * v37;
		v33=v12.y;
		v37=v37 + v33;
		v33=v10.y;
		v37=v37 - v33;
		v33=v18.x;
		v33=v11 * v33;
		v20=v37 - v33;
		$f.l=378;
		v32=v0.tangent;
		v37=v32.x;
		v37=v19 * v37;
		v32=v0.tangent;
		v33=v32.y;
		v33=v20 * v33;
		v37=v37 + v33;
		v33=v2.tangentSpeed;
		v21=v37 - v33;
		$f.l=379;
		v37=v17.tangentMass;
		v33=-v21;
		v22=v37 * v33;
		$f.l=382;
		v37=v17.normalImpulse;
		v23=v15 * v37;
		$f.l=383;
		v37=v17.tangentImpulse;
		v37=v37 + v22;
		v33=-v23;
		v24=_33(v37,v33,v23);
		;
		$f.l=385;
		v37=v17.tangentImpulse;
		v22=v24 - v37;
		$f.l=386;
		v17.tangentImpulse=v24;
		$f.l=391;
		v32=v0.tangent;
		v37=v32.x;
		v25=v37 * v22;
		$f.l=392;
		v32=v0.tangent;
		v37=v32.y;
		v26=v37 * v22;
		$f.l=395;
		v32=v10;
		v37=v10.x;
		v33=v25 * v5;
		v37=v37 - v33;
		v10.x=v37;
		$f.l=396;
		v32=v10;
		v37=v10.y;
		v33=v26 * v5;
		v37=v37 - v33;
		v10.y=v37;
		$f.l=397;
		v32=v17.rA;
		v37=v32.x;
		v37=v37 * v26;
		v32=v17.rA;
		v33=v32.y;
		v33=v33 * v25;
		v37=v37 - v33;
		v37=v7 * v37;
		v11=v11 - v37;
		$f.l=400;
		v32=v12;
		v37=v12.x;
		v33=v25 * v6;
		v37=v37 + v33;
		v12.x=v37;
		$f.l=401;
		v32=v12;
		v37=v12.y;
		v33=v26 * v6;
		v37=v37 + v33;
		v12.y=v37;
		$f.l=402;
		v32=v17.rB;
		v37=v32.x;
		v37=v37 * v26;
		v32=v17.rB;
		v33=v32.y;
		v33=v33 * v25;
		v37=v37 - v33;
		v37=v8 * v37;
		v13=v13 + v37;
		$f.l=371;
		v16=(v16 + 1)|0;
		{ $b=64; break; }
	case 175:
		$f.l=406;
		v27=v2.pointCount;
		if(v27!=1) {$b=285; break;}
		$f.l=407;
		v36=v2.points;
		v38=v36[0];
		$f.l=412;
		v37=-v13;
		v32=v38.rB;
		v33=v32.y;
		v37=v37 * v33;
		v33=v12.x;
		v37=v37 + v33;
		v33=v10.x;
		v37=v37 - v33;
		v32=v38.rA;
		v33=v32.y;
		v33=v11 * v33;
		v39=v37 + v33;
		$f.l=413;
		v32=v38.rB;
		v37=v32.x;
		v37=v13 * v37;
		v33=v12.y;
		v37=v37 + v33;
		v33=v10.y;
		v37=v37 - v33;
		v32=v38.rA;
		v33=v32.x;
		v33=v11 * v33;
		v40=v37 - v33;
		$f.l=416;
		v37=v14.x;
		v37=v39 * v37;
		v33=v14.y;
		v33=v40 * v33;
		v19=v37 + v33;
		$f.l=417;
		v37=v38.normalMass;
		v37=-v37;
		v33=v38.velocityBias;
		v33=v19 - v33;
		v20=v37 * v33;
		$f.l=420;
		v37=v38.normalImpulse;
		v21=v37 + v20;
		$f.l=421;
		v41=(v21 != v21 || 0.0 != 0.0) ? -1 : (v21 > 0.0) - (v21 < 0.0);
		if(v41<=0) {$b=226; break;}
		v37=v21;
		{ $b=227; break; }
	case 226:
		v37=0.0;
	case 227:
		v22=v37;
		$f.l=422;
		v37=v38.normalImpulse;
		v20=v22 - v37;
		$f.l=423;
		v38.normalImpulse=v22;
		$f.l=426;
		v37=v14.x;
		v23=v37 * v20;
		$f.l=427;
		v37=v14.y;
		v24=v37 * v20;
		$f.l=430;
		v32=v10;
		v37=v10.x;
		v33=v23 * v5;
		v37=v37 - v33;
		v10.x=v37;
		$f.l=431;
		v32=v10;
		v37=v10.y;
		v33=v24 * v5;
		v37=v37 - v33;
		v10.y=v37;
		$f.l=432;
		v32=v38.rA;
		v37=v32.x;
		v37=v37 * v24;
		v32=v38.rA;
		v33=v32.y;
		v33=v33 * v23;
		v37=v37 - v33;
		v37=v7 * v37;
		v11=v11 - v37;
		$f.l=435;
		v32=v12;
		v37=v12.x;
		v33=v23 * v6;
		v37=v37 + v33;
		v12.x=v37;
		$f.l=436;
		v32=v12;
		v37=v12.y;
		v33=v24 * v6;
		v37=v37 + v33;
		v12.y=v37;
		$f.l=437;
		v32=v38.rB;
		v37=v32.x;
		v37=v37 * v24;
		v32=v38.rB;
		v33=v32.y;
		v33=v33 * v23;
		v37=v37 - v33;
		v37=v8 * v37;
		v13=v13 + v37;
		$f.l=438;
		{ $b=814; break; }
	case 285:
		$f.l=478;
		v36=v2.points;
		v38=v36[0];
		$f.l=479;
		v36=v2.points;
		v17=v36[1];
		$f.l=480;
		v32=v0.a;
		v37=v38.normalImpulse;
		v32.x=v37;
		$f.l=481;
		v32=v0.a;
		v37=v17.normalImpulse;
		v32.y=v37;
		$f.l=483;
		v34=$g0;
		if(v34!=0) {$b=313; break;}
		v32=v0.a;
		v37=v32.x;
		v41=(v37 != v37 || 0.0 != 0.0) ? -1 : (v37 > 0.0) - (v37 < 0.0);
		if(v41<0) {$b=310; break;}
		v32=v0.a;
		v37=v32.y;
		v41=(v37 != v37 || 0.0 != 0.0) ? -1 : (v37 > 0.0) - (v37 < 0.0);
		if(v41>=0) {$b=313; break;}
	case 310:
		v35=new java/lang/AssertionError;
		_26(v35);
		throw v35;
	case 313:
		$f.l=486;
		v32=v0.dv1;
		v37=-v13;
		v31=v38.rB;
		v33=v31.y;
		v37=v37 * v33;
		v33=v12.x;
		v37=v37 + v33;
		v33=v10.x;
		v37=v37 - v33;
		v31=v38.rA;
		v33=v31.y;
		v33=v11 * v33;
		v37=v37 + v33;
		v32.x=v37;
		$f.l=487;
		v32=v0.dv1;
		v31=v38.rB;
		v37=v31.x;
		v37=v13 * v37;
		v33=v12.y;
		v37=v37 + v33;
		v33=v10.y;
		v37=v37 - v33;
		v31=v38.rA;
		v33=v31.x;
		v33=v11 * v33;
		v37=v37 - v33;
		v32.y=v37;
		$f.l=490;
		v32=v0.dv2;
		v37=-v13;
		v31=v17.rB;
		v33=v31.y;
		v37=v37 * v33;
		v33=v12.x;
		v37=v37 + v33;
		v33=v10.x;
		v37=v37 - v33;
		v31=v17.rA;
		v33=v31.y;
		v33=v11 * v33;
		v37=v37 + v33;
		v32.x=v37;
		$f.l=491;
		v32=v0.dv2;
		v31=v17.rB;
		v37=v31.x;
		v37=v13 * v37;
		v33=v12.y;
		v37=v37 + v33;
		v33=v10.y;
		v37=v37 - v33;
		v31=v17.rA;
		v33=v31.x;
		v33=v11 * v33;
		v37=v37 - v33;
		v32.y=v37;
		$f.l=494;
		v32=v0.dv1;
		v37=v32.x;
		v33=v14.x;
		v37=v37 * v33;
		v32=v0.dv1;
		v33=v32.y;
		v42=v14.y;
		v42=v33 * v42;
		v40=v37 + v42;
		$f.l=495;
		v32=v0.dv2;
		v42=v32.x;
		v37=v14.x;
		v42=v42 * v37;
		v32=v0.dv2;
		v37=v32.y;
		v33=v14.y;
		v37=v37 * v33;
		v19=v42 + v37;
		$f.l=497;
		v32=v0.b;
		v42=v38.velocityBias;
		v42=v40 - v42;
		v32.x=v42;
		$f.l=498;
		v32=v0.b;
		v42=v17.velocityBias;
		v42=v19 - v42;
		v32.y=v42;
		$f.l=502;
		v43=v2.K;
		$f.l=503;
		v32=v0.b;
		v42=v32.x;
		v31=v43.ex;
		v37=v31.x;
		v31=v0.a;
		v33=v31.x;
		v37=v37 * v33;
		v31=v43.ey;
		v33=v31.x;
		v31=v0.a;
		v44=v31.y;
		v44=v33 * v44;
		v44=v37 + v44;
		v44=v42 - v44;
		v32.x=v44;
		$f.l=504;
		v32=v0.b;
		v44=v32.y;
		v31=v43.ex;
		v42=v31.y;
		v31=v0.a;
		v37=v31.x;
		v42=v42 * v37;
		v31=v43.ey;
		v37=v31.y;
		v31=v0.a;
		v33=v31.y;
		v37=v37 * v33;
		v42=v42 + v37;
		v44=v44 - v42;
		v32.y=v44;
		$f.l=520;
		v45=v2.normalMass;
		v32=v0.b;
		v31=v0.x;
		_34(v45,v32,v31);
		$f.l=521;
		v32=v0.x;
		v44=v32.x;
		v44=v44 * -1.0;
		v32.x=v44;
		$f.l=522;
		v32=v0.x;
		v44=v32.y;
		v44=v44 * -1.0;
		v32.y=v44;
		$f.l=524;
		v32=v0.x;
		v44=v32.x;
		v41=(v44 != v44 || 0.0 != 0.0) ? -1 : (v44 > 0.0) - (v44 < 0.0);
		if(v41<0) {$b=529; break;}
		v32=v0.x;
		v44=v32.y;
		v41=(v44 != v44 || 0.0 != 0.0) ? -1 : (v44 > 0.0) - (v44 < 0.0);
		if(v41<0) {$b=529; break;}
		$f.l=528;
		v32=v0.d;
		v31=v0.x;
		v32=_28(v32,v31);
		;
		v31=v0.a;
		v32=_2e(v32,v31);
		;
		$f.l=533;
		v32=v0.P1;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.x;
		v32=_35(v32,v44);
		;
		$f.l=534;
		v32=v0.P2;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.y;
		v32=_35(v32,v44);
		;
		$f.l=542;
		v32=v0.temp1;
		v31=v0.P1;
		v32=_28(v32,v31);
		;
		v31=v0.P2;
		v32=_36(v32,v31);
		;
		$f.l=543;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v5);
		;
		$f.l=544;
		v32=v0.temp2;
		v32=_2e(v10,v32);
		;
		$f.l=545;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v6);
		;
		$f.l=546;
		v32=v0.temp2;
		v32=_36(v12,v32);
		;
		$f.l=548;
		v32=v38.rA;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rA;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v7 * v44;
		v11=v11 - v44;
		$f.l=549;
		v32=v38.rB;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rB;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v8 * v44;
		v13=v13 + v44;
		$f.l=552;
		v32=v0.x;
		v44=v32.x;
		v38.normalImpulse=v44;
		$f.l=553;
		v32=v0.x;
		v44=v32.y;
		v17.normalImpulse=v44;
		$f.l=577;
		{ $b=814; break; }
	case 529:
		$f.l=586;
		v32=v0.x;
		v44=v38.normalMass;
		v44=-v44;
		v31=v0.b;
		v42=v31.x;
		v44=v44 * v42;
		v32.x=v44;
		$f.l=587;
		v32=v0.x;
		v32.y=0.0;
		$f.l=588;
		v40=0.0;
		$f.l=589;
		v45=v2.K;
		v32=v45.ex;
		v44=v32.y;
		v32=v0.x;
		v42=v32.x;
		v44=v44 * v42;
		v32=v0.b;
		v42=v32.y;
		v19=v44 + v42;
		$f.l=591;
		v32=v0.x;
		v44=v32.x;
		v41=(v44 != v44 || 0.0 != 0.0) ? -1 : (v44 > 0.0) - (v44 < 0.0);
		if(v41<0) {$b=629; break;}
		v41=(v19 != v19 || 0.0 != 0.0) ? -1 : (v19 > 0.0) - (v19 < 0.0);
		if(v41<0) {$b=629; break;}
		$f.l=594;
		v32=v0.d;
		v31=v0.x;
		v32=_28(v32,v31);
		;
		v31=v0.a;
		v32=_2e(v32,v31);
		;
		$f.l=599;
		v32=v0.P1;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.x;
		v32=_35(v32,v44);
		;
		$f.l=600;
		v32=v0.P2;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.y;
		v32=_35(v32,v44);
		;
		$f.l=609;
		v32=v0.temp1;
		v31=v0.P1;
		v32=_28(v32,v31);
		;
		v31=v0.P2;
		v32=_36(v32,v31);
		;
		$f.l=610;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v5);
		;
		$f.l=611;
		v32=v0.temp2;
		v32=_2e(v10,v32);
		;
		$f.l=612;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v6);
		;
		$f.l=613;
		v32=v0.temp2;
		v32=_36(v12,v32);
		;
		$f.l=615;
		v32=v38.rA;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rA;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v7 * v44;
		v11=v11 - v44;
		$f.l=616;
		v32=v38.rB;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rB;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v8 * v44;
		v13=v13 + v44;
		$f.l=619;
		v32=v0.x;
		v44=v32.x;
		v38.normalImpulse=v44;
		$f.l=620;
		v32=v0.x;
		v44=v32.y;
		v17.normalImpulse=v44;
		$f.l=639;
		{ $b=814; break; }
	case 629:
		$f.l=648;
		v32=v0.x;
		v32.x=0.0;
		$f.l=649;
		v32=v0.x;
		v44=v17.normalMass;
		v44=-v44;
		v31=v0.b;
		v42=v31.y;
		v44=v44 * v42;
		v32.y=v44;
		$f.l=650;
		v45=v2.K;
		v32=v45.ey;
		v44=v32.x;
		v32=v0.x;
		v42=v32.y;
		v44=v44 * v42;
		v32=v0.b;
		v42=v32.x;
		v40=v44 + v42;
		$f.l=651;
		v19=0.0;
		$f.l=653;
		v32=v0.x;
		v44=v32.y;
		v41=(v44 != v44 || 0.0 != 0.0) ? -1 : (v44 > 0.0) - (v44 < 0.0);
		if(v41<0) {$b=729; break;}
		v41=(v40 != v40 || 0.0 != 0.0) ? -1 : (v40 > 0.0) - (v40 < 0.0);
		if(v41<0) {$b=729; break;}
		$f.l=656;
		v32=v0.d;
		v31=v0.x;
		v32=_28(v32,v31);
		;
		v31=v0.a;
		v32=_2e(v32,v31);
		;
		$f.l=666;
		v32=v0.P1;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.x;
		v32=_35(v32,v44);
		;
		$f.l=667;
		v32=v0.P2;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.y;
		v32=_35(v32,v44);
		;
		$f.l=669;
		v32=v0.temp1;
		v31=v0.P1;
		v32=_28(v32,v31);
		;
		v31=v0.P2;
		v32=_36(v32,v31);
		;
		$f.l=670;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v5);
		;
		$f.l=671;
		v32=v0.temp2;
		v32=_2e(v10,v32);
		;
		$f.l=672;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v6);
		;
		$f.l=673;
		v32=v0.temp2;
		v32=_36(v12,v32);
		;
		$f.l=675;
		v32=v38.rA;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rA;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v7 * v44;
		v11=v11 - v44;
		$f.l=676;
		v32=v38.rB;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rB;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v8 * v44;
		v13=v13 + v44;
		$f.l=679;
		v32=v0.x;
		v44=v32.x;
		v38.normalImpulse=v44;
		$f.l=680;
		v32=v0.x;
		v44=v32.y;
		v17.normalImpulse=v44;
		$f.l=699;
		{ $b=814; break; }
	case 729:
		$f.l=707;
		v32=v0.x;
		v32.x=0.0;
		$f.l=708;
		v32=v0.x;
		v32.y=0.0;
		$f.l=709;
		v32=v0.b;
		v40=v32.x;
		$f.l=710;
		v32=v0.b;
		v19=v32.y;
		$f.l=712;
		v41=(v40 != v40 || 0.0 != 0.0) ? -1 : (v40 > 0.0) - (v40 < 0.0);
		if(v41<0) {$b=814; break;}
		v41=(v19 != v19 || 0.0 != 0.0) ? -1 : (v19 > 0.0) - (v19 < 0.0);
		if(v41<0) {$b=814; break;}
		$f.l=715;
		v32=v0.d;
		v31=v0.x;
		v32=_28(v32,v31);
		;
		v31=v0.a;
		v32=_2e(v32,v31);
		;
		$f.l=725;
		v32=v0.P1;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.x;
		v32=_35(v32,v44);
		;
		$f.l=726;
		v32=v0.P2;
		v32=_28(v32,v14);
		;
		v31=v0.d;
		v44=v31.y;
		v32=_35(v32,v44);
		;
		$f.l=728;
		v32=v0.temp1;
		v31=v0.P1;
		v32=_28(v32,v31);
		;
		v31=v0.P2;
		v32=_36(v32,v31);
		;
		$f.l=729;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v5);
		;
		$f.l=730;
		v32=v0.temp2;
		v32=_2e(v10,v32);
		;
		$f.l=731;
		v32=v0.temp2;
		v31=v0.temp1;
		v32=_28(v32,v31);
		;
		v32=_35(v32,v6);
		;
		$f.l=732;
		v32=v0.temp2;
		v32=_36(v12,v32);
		;
		$f.l=734;
		v32=v38.rA;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rA;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v7 * v44;
		v11=v11 - v44;
		$f.l=735;
		v32=v38.rB;
		v31=v0.P1;
		v44=_2f(v32,v31);
		;
		v32=v17.rB;
		v31=v0.P2;
		v42=_2f(v32,v31);
		;
		v44=v44 + v42;
		v44=v8 * v44;
		v13=v13 + v44;
		$f.l=738;
		v32=v0.x;
		v44=v32.x;
		v38.normalImpulse=v44;
		$f.l=739;
		v32=v0.x;
		v44=v32.y;
		v17.normalImpulse=v44;
	case 814:
		$f.l=750;
		v29=v0.m_velocities;
		v30=v29[v3];
		v30.w=v11;
		$f.l=752;
		v29=v0.m_velocities;
		v30=v29[v4];
		v30.w=v13;
		$f.l=346;
		v1=(v1 + 1)|0;
		{ $b=3; break; }
	case 825:
		$f.l=754;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:storeImpulses
function _37(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=757;
		v0=a0;
		v1=0;
	case 3:
		v5=v0.m_count;
		if(v1>=v5) {$b=37; break;}
		$f.l=758;
		v6=v0.m_velocityConstraints;
		v2=v6[v1];
		$f.l=759;
		v7=v0.m_contacts;
		v5=v2.contactIndex;
		v8=v7[v5];
		v3=_25(v8);
		;
		$f.l=761;
		v4=0;
	case 15:
		v5=v2.pointCount;
		if(v4>=v5) {$b=34; break;}
		$f.l=762;
		v9=v3.points;
		v10=v9[v4];
		v11=v2.points;
		v12=v11[v4];
		v13=v12.normalImpulse;
		v10.normalImpulse=v13;
		$f.l=763;
		v9=v3.points;
		v10=v9[v4];
		v11=v2.points;
		v12=v11[v4];
		v13=v12.tangentImpulse;
		v10.tangentImpulse=v13;
		$f.l=761;
		v4=(v4 + 1)|0;
		{ $b=15; break; }
	case 34:
		$f.l=757;
		v1=(v1 + 1)|0;
		{ $b=3; break; }
	case 37:
		$f.l=766;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:solvePositionConstraints
function _38(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=817;
		v0=a0;
		v1=0.0;
		$f.l=819;
		v2=0;
	case 5:
		v27=v0.m_count;
		if(v2>=v27) {$b=167; break;}
		$f.l=820;
		v28=v0.m_positionConstraints;
		v3=v28[v2];
		$f.l=822;
		v4=v3.indexA;
		$f.l=823;
		v5=v3.indexB;
		$f.l=825;
		v6=v3.invMassA;
		$f.l=826;
		v7=v3.invIA;
		$f.l=827;
		v8=v3.localCenterA;
		$f.l=828;
		v9=v3.invMassB;
		$f.l=829;
		v10=v3.invIB;
		$f.l=830;
		v11=v3.localCenterB;
		$f.l=831;
		v12=v3.pointCount;
		$f.l=833;
		v29=v0.m_positions;
		v30=v29[v4];
		v13=v30.c;
		$f.l=834;
		v29=v0.m_positions;
		v30=v29[v4];
		v14=v30.a;
		$f.l=835;
		v29=v0.m_positions;
		v30=v29[v5];
		v15=v30.c;
		$f.l=836;
		v29=v0.m_positions;
		v30=v29[v5];
		v16=v30.a;
		$f.l=839;
		v17=0;
	case 46:
		if(v17>=v12) {$b=156; break;}
		$f.l=840;
		v31=v0.xfA;
		v32=v31.q;
		v32=_2c(v32,v14);
		;
		$f.l=841;
		v31=v0.xfB;
		v32=v31.q;
		v32=_2c(v32,v16);
		;
		$f.l=842;
		v31=v0.xfA;
		v32=v31.q;
		v31=v0.xfA;
		v33=v31.p;
		_39(v32,v8,v33);
		$f.l=843;
		v31=v0.xfA;
		v33=v31.p;
		v33=_3a(v33);
		;
		v33=_36(v33,v13);
		;
		$f.l=844;
		v31=v0.xfB;
		v32=v31.q;
		v31=v0.xfB;
		v33=v31.p;
		_39(v32,v11,v33);
		$f.l=845;
		v31=v0.xfB;
		v33=v31.p;
		v33=_3a(v33);
		;
		v33=_36(v33,v15);
		;
		$f.l=847;
		v18=v0.psolver;
		$f.l=848;
		v31=v0.xfA;
		v34=v0.xfB;
		_3b(v18,v3,v31,v34,v17);
		$f.l=849;
		v19=v18.normal;
		$f.l=851;
		v20=v18.point;
		$f.l=852;
		v21=v18.separation;
		$f.l=854;
		v33=v0.rA;
		v33=_28(v33,v20);
		;
		v33=_2e(v33,v13);
		;
		$f.l=855;
		v33=v0.rB;
		v33=_28(v33,v20);
		;
		v33=_2e(v33,v15);
		;
		$f.l=858;
		v1=_3c(v1,v21);
		;
		$f.l=861;
		v35=v21 + 0.005;
		v35=0.2 * v35;
		v22=_33(v35,-0.2,0.0);
		;
		$f.l=866;
		v33=v0.rA;
		v23=_2f(v33,v19);
		;
		$f.l=867;
		v33=v0.rB;
		v24=_2f(v33,v19);
		;
		$f.l=868;
		v35=v6 + v9;
		v36=v7 * v23;
		v36=v36 * v23;
		v36=v35 + v36;
		v35=v10 * v24;
		v35=v35 * v24;
		v25=v36 + v35;
		$f.l=871;
		v37=(v25 != v25 || 0.0 != 0.0) ? -1 : (v25 > 0.0) - (v25 < 0.0);
		if(v37<=0) {$b=123; break;}
		v36=-v22;
		v36=v36 / v25;
		{ $b=124; break; }
	case 123:
		v36=0.0;
	case 124:
		v26=v36;
		$f.l=873;
		v33=v0.P;
		v33=_28(v33,v19);
		;
		v33=_35(v33,v26);
		;
		$f.l=875;
		v33=v0.temp;
		v38=v0.P;
		v38=_28(v33,v38);
		;
		v38=_35(v38,v6);
		;
		v38=_2e(v13,v38);
		;
		$f.l=876;
		v38=v0.rA;
		v33=v0.P;
		v36=_2f(v38,v33);
		;
		v36=v7 * v36;
		v14=v14 - v36;
		$f.l=878;
		v38=v0.temp;
		v33=v0.P;
		v38=_28(v38,v33);
		;
		v38=_35(v38,v9);
		;
		v38=_36(v15,v38);
		;
		$f.l=879;
		v38=v0.rB;
		v33=v0.P;
		v36=_2f(v38,v33);
		;
		v36=v10 * v36;
		v16=v16 + v36;
		$f.l=839;
		v17=(v17 + 1)|0;
		{ $b=46; break; }
	case 156:
		$f.l=883;
		v29=v0.m_positions;
		v30=v29[v4];
		v30.a=v14;
		$f.l=886;
		v29=v0.m_positions;
		v30=v29[v5];
		v30.a=v16;
		$f.l=819;
		v2=(v2 + 1)|0;
		{ $b=5; break; }
	case 167:
		$f.l=891;
		v37=(v1 != v1 || -0.015 != -0.015) ? -1 : (v1 > -0.015) - (v1 < -0.015);
		if(v37<0) {$b=172; break;}
		v39=1;
		{ $b=173; break; }
	case 172:
		v39=0;
	case 173:
		return v39;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:solveTOIPositionConstraints
function _3d(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=896;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=0.0;
		$f.l=898;
		v4=0;
	case 7:
		v29=v0.m_count;
		if(v4>=v29) {$b=183; break;}
		$f.l=899;
		v30=v0.m_positionConstraints;
		v5=v30[v4];
		$f.l=901;
		v6=v5.indexA;
		$f.l=902;
		v7=v5.indexB;
		$f.l=903;
		v8=v5.localCenterA;
		$f.l=904;
		v9=v5.localCenterB;
		$f.l=905;
		v10=v5.pointCount;
		$f.l=907;
		v11=0.0;
		$f.l=908;
		v12=0.0;
		$f.l=909;
		if(v6==v1) {$b=29; break;}
		if(v6!=v2) {$b=33; break;}
	case 29:
		$f.l=910;
		v11=v5.invMassA;
		$f.l=911;
		v12=v5.invIA;
	case 33:
		$f.l=914;
		v13=0.0;
		$f.l=915;
		v14=0.0;
		$f.l=916;
		if(v7==v1) {$b=40; break;}
		if(v7!=v2) {$b=44; break;}
	case 40:
		$f.l=917;
		v13=v5.invMassB;
		$f.l=918;
		v14=v5.invIB;
	case 44:
		$f.l=921;
		v31=v0.m_positions;
		v32=v31[v6];
		v15=v32.c;
		$f.l=922;
		v31=v0.m_positions;
		v32=v31[v6];
		v16=v32.a;
		$f.l=924;
		v31=v0.m_positions;
		v32=v31[v7];
		v17=v32.c;
		$f.l=925;
		v31=v0.m_positions;
		v32=v31[v7];
		v18=v32.a;
		$f.l=928;
		v19=0;
	case 62:
		if(v19>=v10) {$b=172; break;}
		$f.l=929;
		v33=v0.xfA;
		v34=v33.q;
		v34=_2c(v34,v16);
		;
		$f.l=930;
		v33=v0.xfB;
		v34=v33.q;
		v34=_2c(v34,v18);
		;
		$f.l=931;
		v33=v0.xfA;
		v34=v33.q;
		v33=v0.xfA;
		v35=v33.p;
		_39(v34,v8,v35);
		$f.l=932;
		v33=v0.xfA;
		v35=v33.p;
		v35=_3a(v35);
		;
		v35=_36(v35,v15);
		;
		$f.l=933;
		v33=v0.xfB;
		v34=v33.q;
		v33=v0.xfB;
		v35=v33.p;
		_39(v34,v9,v35);
		$f.l=934;
		v33=v0.xfB;
		v35=v33.p;
		v35=_3a(v35);
		;
		v35=_36(v35,v17);
		;
		$f.l=936;
		v20=v0.psolver;
		$f.l=937;
		v33=v0.xfA;
		v36=v0.xfB;
		_3b(v20,v5,v33,v36,v19);
		$f.l=938;
		v21=v20.normal;
		$f.l=940;
		v22=v20.point;
		$f.l=941;
		v23=v20.separation;
		$f.l=943;
		v35=v0.rA;
		v35=_28(v35,v22);
		;
		v35=_2e(v35,v15);
		;
		$f.l=944;
		v35=v0.rB;
		v35=_28(v35,v22);
		;
		v35=_2e(v35,v17);
		;
		$f.l=947;
		v3=_3c(v3,v23);
		;
		$f.l=950;
		v37=v23 + 0.005;
		v37=0.75 * v37;
		v24=_33(v37,-0.2,0.0);
		;
		$f.l=955;
		v35=v0.rA;
		v25=_2f(v35,v21);
		;
		$f.l=956;
		v35=v0.rB;
		v26=_2f(v35,v21);
		;
		$f.l=957;
		v37=v11 + v13;
		v38=v12 * v25;
		v38=v38 * v25;
		v38=v37 + v38;
		v37=v14 * v26;
		v37=v37 * v26;
		v27=v38 + v37;
		$f.l=960;
		v39=(v27 != v27 || 0.0 != 0.0) ? -1 : (v27 > 0.0) - (v27 < 0.0);
		if(v39<=0) {$b=139; break;}
		v38=-v24;
		v38=v38 / v27;
		{ $b=140; break; }
	case 139:
		v38=0.0;
	case 140:
		v28=v38;
		$f.l=962;
		v35=v0.P;
		v35=_28(v35,v21);
		;
		v35=_35(v35,v28);
		;
		$f.l=964;
		v35=v0.temp;
		v40=v0.P;
		v40=_28(v35,v40);
		;
		v40=_35(v40,v11);
		;
		v40=_2e(v15,v40);
		;
		$f.l=965;
		v40=v0.rA;
		v35=v0.P;
		v38=_2f(v40,v35);
		;
		v38=v12 * v38;
		v16=v16 - v38;
		$f.l=967;
		v40=v0.temp;
		v35=v0.P;
		v40=_28(v40,v35);
		;
		v40=_35(v40,v13);
		;
		v40=_36(v17,v40);
		;
		$f.l=968;
		v40=v0.rB;
		v35=v0.P;
		v38=_2f(v40,v35);
		;
		v38=v14 * v38;
		v18=v18 + v38;
		$f.l=928;
		v19=(v19 + 1)|0;
		{ $b=62; break; }
	case 172:
		$f.l=972;
		v31=v0.m_positions;
		v32=v31[v6];
		v32.a=v16;
		$f.l=975;
		v31=v0.m_positions;
		v32=v31[v7];
		v32.a=v18;
		$f.l=898;
		v4=(v4 + 1)|0;
		{ $b=7; break; }
	case 183:
		$f.l=980;
		v39=(v3 != v3 || -0.0075 != -0.0075) ? -1 : (v3 > -0.0075) - (v3 < -0.0075);
		if(v39<0) {$b=188; break;}
		v41=1;
		{ $b=189; break; }
	case 188:
		v41=0;
	case 189:
		return v41;
}
}
//org/jbox2d/dynamics/contacts/ContactSolver:<clinit>
function _3e(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=vm.getClass(3);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g0=v1;
		return;
}
}
//org/jbox2d/collision/Collision:<init>
function _40(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
v1=a1;
_0(v0);
$f.l=61;
v2=new org/jbox2d/collision/DistanceInput;
_41(v2);
v0.input=v2;
$f.l=62;
v3=new org/jbox2d/collision/Distance$SimplexCache;
_42(v3);
v0.cache=v3;
$f.l=63;
v4=new org/jbox2d/collision/DistanceOutput;
_43(v4);
v0.output=v4;
$f.l=506;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.temp=v5;
$f.l=676;
v6=new org/jbox2d/collision/Collision$EdgeResults;
_44(v6,null);
v0.results1=v6;
$f.l=677;
v6=new org/jbox2d/collision/Collision$EdgeResults;
_44(v6,null);
v0.results2=v6;
$f.l=678;
v7=newArray(4,2);
v0.incidentEdge=v7;
$f.l=679;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.localTangent=v5;
$f.l=680;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.localNormal=v5;
$f.l=681;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.planePoint=v5;
$f.l=682;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.tangent=v5;
$f.l=683;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.v11=v5;
$f.l=684;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.v12=v5;
$f.l=685;
v7=newArray(4,2);
v0.clipPoints1=v7;
$f.l=686;
v7=newArray(4,2);
v0.clipPoints2=v7;
$f.l=843;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.Q=v5;
$f.l=844;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.e=v5;
$f.l=845;
v8=new org/jbox2d/collision/ContactID;
_45(v8);
v0.cf=v8;
$f.l=846;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.e1=v5;
$f.l=847;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.P=v5;
$f.l=848;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.n=v5;
$f.l=976;
v9=new org/jbox2d/collision/Collision$EPCollider;
_46(v9);
v0.collider=v9;
$f.l=52;
v7=v0.incidentEdge;
v10=new org/jbox2d/collision/Collision$ClipVertex;
_47(v10);
v7[0]=v10;
$f.l=53;
v7=v0.incidentEdge;
v10=new org/jbox2d/collision/Collision$ClipVertex;
_47(v10);
v7[1]=v10;
$f.l=54;
v7=v0.clipPoints1;
v10=new org/jbox2d/collision/Collision$ClipVertex;
_47(v10);
v7[0]=v10;
$f.l=55;
v7=v0.clipPoints1;
v10=new org/jbox2d/collision/Collision$ClipVertex;
_47(v10);
v7[1]=v10;
$f.l=56;
v7=v0.clipPoints2;
v10=new org/jbox2d/collision/Collision$ClipVertex;
_47(v10);
v7[0]=v10;
$f.l=57;
v7=v0.clipPoints2;
v10=new org/jbox2d/collision/Collision$ClipVertex;
_47(v10);
v7[1]=v10;
$f.l=58;
v0.pool=v1;
$f.l=59;
return;
}
//org/jbox2d/collision/Collision:testOverlap
function _48(vm,a0,a1,a2,a3,a4,a5,a6){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=76;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=a6;
		v7=v0.input;
		v8=v7.proxyA;
		_49(v8,v1,v2);
		$f.l=77;
		v7=v0.input;
		v8=v7.proxyB;
		_49(v8,v3,v4);
		$f.l=78;
		v7=v0.input;
		v9=v7.transformA;
		v9=_4a(v9,v5);
		;
		$f.l=79;
		v7=v0.input;
		v9=v7.transformB;
		v9=_4a(v9,v6);
		;
		$f.l=80;
		v7=v0.input;
		v7.useRadii=1;
		$f.l=82;
		v10=v0.cache;
		v10.count=0;
		$f.l=84;
		v11=v0.pool;
		v12=v11.$c.$it[33](v11);
		;
		v13=v0.output;
		v10=v0.cache;
		v7=v0.input;
		_4b(v12,v13,v10,v7);
		$f.l=86;
		v13=v0.output;
		v14=v13.distance;
		v15=(v14 != v14 || 1.1920929E-6 != 1.1920929E-6) ? 1 : (v14 > 1.1920929E-6) - (v14 < 1.1920929E-6);
		if(v15>=0) {$b=43; break;}
		v16=1;
		{ $b=44; break; }
	case 43:
		v16=0;
	case 44:
		return v16;
}
}
//org/jbox2d/collision/Collision:clipSegmentToLine
function _4c(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=149;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=0;
		$f.l=150;
		v6=v1[0];
		$f.l=151;
		v7=v1[1];
		$f.l=152;
		v8=v6.v;
		$f.l=153;
		v9=v7.v;
		$f.l=156;
		v14=_4d(v2,v8);
		;
		v10=v14 - v3;
		$f.l=157;
		v14=_4d(v2,v9);
		;
		v11=v14 - v3;
		$f.l=160;
		v15=(v10 != v10 || 0.0 != 0.0) ? 1 : (v10 > 0.0) - (v10 < 0.0);
		if(v15>0) {$b=29; break;}
		$f.l=161;
		v16=v5;
		v5=(v5 + 1)|0;
		v17=v0[v16];
		_4e(v17,v6);
	case 29:
		$f.l=163;
		v15=(v11 != v11 || 0.0 != 0.0) ? 1 : (v11 > 0.0) - (v11 < 0.0);
		if(v15>0) {$b=37; break;}
		$f.l=164;
		v16=v5;
		v5=(v5 + 1)|0;
		v17=v0[v16];
		_4e(v17,v7);
	case 37:
		$f.l=168;
		v14=v10 * v11;
		v15=(v14 != v14 || 0.0 != 0.0) ? 1 : (v14 > 0.0) - (v14 < 0.0);
		if(v15>=0) {$b=87; break;}
		$f.l=170;
		v14=v10 - v11;
		v12=v10 / v14;
		$f.l=172;
		v13=v0[v5];
		$f.l=174;
		v18=v13.v;
		v14=v8.x;
		v19=v9.x;
		v20=v8.x;
		v20=v19 - v20;
		v20=v12 * v20;
		v20=v14 + v20;
		v18.x=v20;
		$f.l=175;
		v18=v13.v;
		v20=v8.y;
		v19=v9.y;
		v14=v8.y;
		v19=v19 - v14;
		v19=v12 * v19;
		v20=v20 + v19;
		v18.y=v20;
		$f.l=178;
		v21=v13.id;
		v15=v4&0xff;
		v21.indexA=v15;
		$f.l=179;
		v21=v13.id;
		v22=v6.id;
		v15=v22.indexB;
		v21.indexB=v15;
		$f.l=180;
		v22=v13.id;
		v23=$g1;
		v16=_4f(v23);
		;
		v15=v16&0xff;
		v22.typeA=v15;
		$f.l=181;
		v22=v13.id;
		v23=$g2;
		v16=_4f(v23);
		;
		v15=v16&0xff;
		v22.typeB=v15;
		$f.l=182;
		v5=(v5 + 1)|0;
	case 87:
		$f.l=185;
		return v5;
}
}
//org/jbox2d/collision/Collision:collideCircles
function _50(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=204;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v1.pointCount=0;
		$f.l=212;
		v6=v2.m_p;
		$f.l=213;
		v7=v4.m_p;
		$f.l=214;
		v16=v3.q;
		v17=v16.c;
		v18=v6.x;
		v18=v17 * v18;
		v16=v3.q;
		v17=v16.s;
		v19=v6.y;
		v19=v17 * v19;
		v19=v18 - v19;
		v20=v3.p;
		v18=v20.x;
		v8=v19 + v18;
		$f.l=215;
		v16=v3.q;
		v19=v16.s;
		v18=v6.x;
		v19=v19 * v18;
		v16=v3.q;
		v18=v16.c;
		v17=v6.y;
		v18=v18 * v17;
		v19=v19 + v18;
		v20=v3.p;
		v18=v20.y;
		v9=v19 + v18;
		$f.l=216;
		v16=v5.q;
		v19=v16.c;
		v18=v7.x;
		v19=v19 * v18;
		v16=v5.q;
		v18=v16.s;
		v17=v7.y;
		v18=v18 * v17;
		v19=v19 - v18;
		v20=v5.p;
		v18=v20.x;
		v10=v19 + v18;
		$f.l=217;
		v16=v5.q;
		v19=v16.s;
		v18=v7.x;
		v19=v19 * v18;
		v16=v5.q;
		v18=v16.c;
		v17=v7.y;
		v18=v18 * v17;
		v19=v19 + v18;
		v20=v5.p;
		v18=v20.y;
		v11=v19 + v18;
		$f.l=218;
		v12=v10 - v8;
		$f.l=219;
		v13=v11 - v9;
		$f.l=220;
		v19=v12 * v12;
		v18=v13 * v13;
		v14=v19 + v18;
		$f.l=223;
		v19=v2.m_radius;
		v18=v4.m_radius;
		v15=v19 + v18;
		$f.l=224;
		v19=v15 * v15;
		v21=(v14 != v14 || v19 != v19) ? -1 : (v14 > v19) - (v14 < v19);
		if(v21<=0) {$b=82; break;}
		$f.l=225;
		return;
	case 82:
		$f.l=228;
		v22=$g3;
		v1.type=v22;
		$f.l=229;
		v20=v1.localPoint;
		v20=_28(v20,v6);
		;
		$f.l=230;
		v20=v1.localNormal;
		_29(v20);
		$f.l=231;
		v1.pointCount=1;
		$f.l=233;
		v23=v1.points;
		v24=v23[0];
		v20=v24.localPoint;
		v20=_28(v20,v7);
		;
		$f.l=234;
		v23=v1.points;
		v24=v23[0];
		v25=v24.id;
		_51(v25);
		$f.l=235;
		return;
}
}
//org/jbox2d/collision/Collision:collidePolygonAndCircle
function _52(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54,v55,v56;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=250;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v1.pointCount=0;
		$f.l=260;
		v6=v4.m_p;
		$f.l=261;
		v7=v5.q;
		$f.l=262;
		v8=v3.q;
		$f.l=263;
		v41=v7.c;
		v42=v6.x;
		v42=v41 * v42;
		v41=v7.s;
		v43=v6.y;
		v43=v41 * v43;
		v43=v42 - v43;
		v44=v5.p;
		v42=v44.x;
		v9=v43 + v42;
		$f.l=264;
		v43=v7.s;
		v42=v6.x;
		v43=v43 * v42;
		v42=v7.c;
		v41=v6.y;
		v42=v42 * v41;
		v43=v43 + v42;
		v44=v5.p;
		v42=v44.y;
		v10=v43 + v42;
		$f.l=265;
		v44=v3.p;
		v43=v44.x;
		v11=v9 - v43;
		$f.l=266;
		v44=v3.p;
		v43=v44.y;
		v12=v10 - v43;
		$f.l=267;
		v43=v8.c;
		v43=v43 * v11;
		v42=v8.s;
		v42=v42 * v12;
		v13=v43 + v42;
		$f.l=268;
		v43=v8.s;
		v43=-v43;
		v43=v43 * v11;
		v42=v8.c;
		v42=v42 * v12;
		v14=v43 + v42;
		$f.l=272;
		v15=0;
		$f.l=273;
		v16=-3.4028235E38;
		$f.l=274;
		v43=v2.m_radius;
		v42=v4.m_radius;
		v17=v43 + v42;
		$f.l=275;
		v18=v2.m_count;
		$f.l=277;
		v19=v2.m_vertices;
		$f.l=278;
		v20=v2.m_normals;
		$f.l=280;
		v21=0;
	case 73:
		if(v21>=v18) {$b=105; break;}
		$f.l=285;
		v22=v19[v21];
		$f.l=286;
		v43=v22.x;
		v23=v13 - v43;
		$f.l=287;
		v43=v22.y;
		v24=v14 - v43;
		$f.l=288;
		v44=v20[v21];
		v43=v44.x;
		v43=v43 * v23;
		v44=v20[v21];
		v42=v44.y;
		v42=v42 * v24;
		v25=v43 + v42;
		$f.l=291;
		v45=(v25 != v25 || v17 != v17) ? -1 : (v25 > v17) - (v25 < v17);
		if(v45<=0) {$b=95; break;}
		$f.l=293;
		return;
	case 95:
		$f.l=296;
		v45=(v25 != v25 || v16 != v16) ? -1 : (v25 > v16) - (v25 < v16);
		if(v45<=0) {$b=102; break;}
		$f.l=297;
		v16=v25;
		$f.l=298;
		v15=v21;
	case 102:
		$f.l=280;
		v21=(v21 + 1)|0;
		{ $b=73; break; }
	case 105:
		$f.l=303;
		v21=v15;
		$f.l=304;
		v46=(v21 + 1)|0;
		if(v46>=v18) {$b=112; break;}
		v46=(v21 + 1)|0;
		{ $b=113; break; }
	case 112:
		v46=0;
	case 113:
		v47=v46;
		$f.l=305;
		v48=v19[v21];
		$f.l=306;
		v49=v19[v47];
		$f.l=309;
		v45=(v16 != v16 || 1.1920929E-7 != 1.1920929E-7) ? 1 : (v16 > 1.1920929E-7) - (v16 < 1.1920929E-7);
		if(v45>=0) {$b=166; break;}
		$f.l=310;
		v1.pointCount=1;
		$f.l=311;
		v50=$g4;
		v1.type=v50;
		$f.l=318;
		v26=v20[v15];
		$f.l=319;
		v44=v1.localNormal;
		v43=v26.x;
		v44.x=v43;
		$f.l=320;
		v44=v1.localNormal;
		v43=v26.y;
		v44.y=v43;
		$f.l=321;
		v44=v1.localPoint;
		v43=v48.x;
		v42=v49.x;
		v43=v43 + v42;
		v43=v43 * 0.5;
		v44.x=v43;
		$f.l=322;
		v44=v1.localPoint;
		v43=v48.y;
		v42=v49.y;
		v43=v43 + v42;
		v43=v43 * 0.5;
		v44.y=v43;
		$f.l=323;
		v51=v1.points;
		v27=v51[0];
		$f.l=324;
		v44=v27.localPoint;
		v43=v6.x;
		v44.x=v43;
		$f.l=325;
		v44=v27.localPoint;
		v43=v6.y;
		v44.y=v43;
		$f.l=326;
		v52=v27.id;
		_51(v52);
		$f.l=329;
		return;
	case 166:
		$f.l=341;
		v43=v48.x;
		v53=v13 - v43;
		$f.l=342;
		v43=v48.y;
		v54=v14 - v43;
		$f.l=343;
		v43=v49.x;
		v42=v48.x;
		v28=v43 - v42;
		$f.l=344;
		v43=v49.y;
		v42=v48.y;
		v29=v43 - v42;
		$f.l=345;
		v43=v53 * v28;
		v42=v54 * v29;
		v30=v43 + v42;
		$f.l=347;
		v43=v49.x;
		v31=v13 - v43;
		$f.l=348;
		v43=v49.y;
		v32=v14 - v43;
		$f.l=349;
		v43=v48.x;
		v42=v49.x;
		v33=v43 - v42;
		$f.l=350;
		v43=v48.y;
		v42=v49.y;
		v34=v43 - v42;
		$f.l=351;
		v43=v31 * v33;
		v42=v32 * v34;
		v35=v43 + v42;
		$f.l=354;
		v45=(v30 != v30 || 0.0 != 0.0) ? 1 : (v30 > 0.0) - (v30 < 0.0);
		if(v45>0) {$b=253; break;}
		$f.l=356;
		v43=v48.x;
		v36=v13 - v43;
		$f.l=357;
		v43=v48.y;
		v37=v14 - v43;
		$f.l=358;
		v43=v36 * v36;
		v42=v37 * v37;
		v43=v43 + v42;
		v42=v17 * v17;
		v45=(v43 != v43 || v42 != v42) ? -1 : (v43 > v42) - (v43 < v42);
		if(v45<=0) {$b=220; break;}
		$f.l=359;
		return;
	case 220:
		$f.l=362;
		v1.pointCount=1;
		$f.l=363;
		v50=$g4;
		v1.type=v50;
		$f.l=367;
		v44=v1.localNormal;
		v43=v48.x;
		v43=v13 - v43;
		v44.x=v43;
		$f.l=368;
		v44=v1.localNormal;
		v43=v48.y;
		v43=v14 - v43;
		v44.y=v43;
		$f.l=370;
		v44=v1.localNormal;
		v43=_53(v44);
		;
		$f.l=371;
		v44=v1.localPoint;
		v44=_28(v44,v48);
		;
		$f.l=372;
		v51=v1.points;
		v55=v51[0];
		v44=v55.localPoint;
		v44=_28(v44,v6);
		;
		$f.l=373;
		v51=v1.points;
		v55=v51[0];
		v52=v55.id;
		_51(v52);
		$f.l=374;
		{ $b=355; break; }
	case 253:
		v45=(v35 != v35 || 0.0 != 0.0) ? 1 : (v35 > 0.0) - (v35 < 0.0);
		if(v45>0) {$b=303; break;}
		$f.l=376;
		v43=v49.x;
		v36=v13 - v43;
		$f.l=377;
		v43=v49.y;
		v37=v14 - v43;
		$f.l=378;
		v43=v36 * v36;
		v42=v37 * v37;
		v43=v43 + v42;
		v42=v17 * v17;
		v45=(v43 != v43 || v42 != v42) ? -1 : (v43 > v42) - (v43 < v42);
		if(v45<=0) {$b=270; break;}
		$f.l=379;
		return;
	case 270:
		$f.l=382;
		v1.pointCount=1;
		$f.l=383;
		v50=$g4;
		v1.type=v50;
		$f.l=387;
		v44=v1.localNormal;
		v43=v49.x;
		v43=v13 - v43;
		v44.x=v43;
		$f.l=388;
		v44=v1.localNormal;
		v43=v49.y;
		v43=v14 - v43;
		v44.y=v43;
		$f.l=390;
		v44=v1.localNormal;
		v43=_53(v44);
		;
		$f.l=391;
		v44=v1.localPoint;
		v44=_28(v44,v49);
		;
		$f.l=392;
		v51=v1.points;
		v55=v51[0];
		v44=v55.localPoint;
		v44=_28(v44,v6);
		;
		$f.l=393;
		v51=v1.points;
		v55=v51[0];
		v52=v55.id;
		_51(v52);
		$f.l=394;
		{ $b=355; break; }
	case 303:
		$f.l=406;
		v43=v48.x;
		v42=v49.x;
		v43=v43 + v42;
		v36=v43 * 0.5;
		$f.l=407;
		v43=v48.y;
		v42=v49.y;
		v43=v43 + v42;
		v37=v43 * 0.5;
		$f.l=409;
		v38=v13 - v36;
		$f.l=410;
		v39=v14 - v37;
		$f.l=411;
		v40=v20[v21];
		$f.l=412;
		v43=v40.x;
		v43=v38 * v43;
		v42=v40.y;
		v42=v39 * v42;
		v16=v43 + v42;
		$f.l=413;
		v45=(v16 != v16 || v17 != v17) ? -1 : (v16 > v17) - (v16 < v17);
		if(v45<=0) {$b=330; break;}
		$f.l=414;
		return;
	case 330:
		$f.l=418;
		v1.pointCount=1;
		$f.l=419;
		v50=$g4;
		v1.type=v50;
		$f.l=420;
		v44=v1.localNormal;
		v56=v20[v21];
		v56=_28(v44,v56);
		;
		$f.l=421;
		v56=v1.localPoint;
		v56.x=v36;
		$f.l=422;
		v56=v1.localPoint;
		v56.y=v37;
		$f.l=423;
		v51=v1.points;
		v55=v51[0];
		v56=v55.localPoint;
		v56=_28(v56,v6);
		;
		$f.l=424;
		v51=v1.points;
		v55=v51[0];
		v52=v55.id;
		_51(v52);
	case 355:
		$f.l=426;
		return;
}
}
//org/jbox2d/collision/Collision:edgeSeparation
function _54(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=440;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=v1.m_count;
		$f.l=441;
		v7=v1.m_vertices;
		$f.l=442;
		v8=v1.m_normals;
		$f.l=444;
		v9=v4.m_count;
		$f.l=445;
		v10=v4.m_vertices;
		$f.l=447;
		v29=$g5;
		if(v29!=0) {$b=24; break;}
		if(0>v3) {$b=21; break;}
		if(v3<v6) {$b=24; break;}
	case 21:
		v30=new java/lang/AssertionError;
		_26(v30);
		throw v30;
	case 24:
		$f.l=459;
		v11=v2.q;
		$f.l=460;
		v12=v5.q;
		$f.l=461;
		v13=v11;
		$f.l=462;
		v14=v8[v3];
		$f.l=463;
		v31=v13.c;
		v32=v14.x;
		v32=v31 * v32;
		v31=v13.s;
		v33=v14.y;
		v33=v31 * v33;
		v15=v32 - v33;
		$f.l=464;
		v33=v13.s;
		v32=v14.x;
		v33=v33 * v32;
		v32=v13.c;
		v31=v14.y;
		v32=v32 * v31;
		v16=v33 + v32;
		$f.l=465;
		v17=v12;
		$f.l=466;
		v33=v17.c;
		v33=v33 * v15;
		v32=v17.s;
		v32=v32 * v16;
		v18=v33 + v32;
		$f.l=467;
		v33=v17.s;
		v33=-v33;
		v33=v33 * v15;
		v32=v17.c;
		v32=v32 * v16;
		v19=v33 + v32;
		$f.l=471;
		v20=0;
		$f.l=472;
		v21=3.4028235E38;
		$f.l=474;
		v22=0;
	case 69:
		if(v22>=v9) {$b=88; break;}
		$f.l=475;
		v23=v10[v22];
		$f.l=476;
		v33=v23.x;
		v33=v33 * v18;
		v32=v23.y;
		v32=v32 * v19;
		v24=v33 + v32;
		$f.l=477;
		v34=(v24 != v24 || v21 != v21) ? 1 : (v24 > v21) - (v24 < v21);
		if(v34>=0) {$b=85; break;}
		$f.l=478;
		v21=v24;
		$f.l=479;
		v20=v22;
	case 85:
		$f.l=474;
		v22=(v22 + 1)|0;
		{ $b=69; break; }
	case 88:
		$f.l=493;
		v35=v7[v3];
		$f.l=494;
		v33=v11.c;
		v32=v35.x;
		v33=v33 * v32;
		v32=v11.s;
		v31=v35.y;
		v32=v32 * v31;
		v33=v33 - v32;
		v36=v2.p;
		v32=v36.x;
		v37=v33 + v32;
		$f.l=495;
		v33=v11.s;
		v32=v35.x;
		v33=v33 * v32;
		v32=v11.c;
		v31=v35.y;
		v32=v32 * v31;
		v33=v33 + v32;
		v36=v2.p;
		v32=v36.y;
		v24=v33 + v32;
		$f.l=496;
		v25=v10[v20];
		$f.l=497;
		v33=v12.c;
		v32=v25.x;
		v33=v33 * v32;
		v32=v12.s;
		v31=v25.y;
		v32=v32 * v31;
		v33=v33 - v32;
		v36=v5.p;
		v32=v36.x;
		v33=v33 + v32;
		v26=v33 - v37;
		$f.l=498;
		v33=v12.s;
		v32=v25.x;
		v33=v33 * v32;
		v32=v12.c;
		v31=v25.y;
		v32=v32 * v31;
		v33=v33 + v32;
		v36=v5.p;
		v32=v36.y;
		v33=v33 + v32;
		v27=v33 - v24;
		$f.l=500;
		v33=v26 * v15;
		v32=v27 * v16;
		v28=v33 + v32;
		$f.l=501;
		return v28;
}
}
//org/jbox2d/collision/Collision:findMaxSeparation
function _55(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=520;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=v2.m_count;
		$f.l=521;
		v7=v2.m_normals;
		$f.l=523;
		v8=v2.m_centroid;
		$f.l=524;
		v9=v4.m_centroid;
		$f.l=525;
		v10=v5.q;
		$f.l=526;
		v11=v3.q;
		$f.l=535;
		v27=v10.c;
		v28=v9.x;
		v28=v27 * v28;
		v27=v10.s;
		v29=v9.y;
		v29=v27 * v29;
		v29=v28 - v29;
		v30=v5.p;
		v28=v30.x;
		v12=v29 + v28;
		$f.l=536;
		v29=v10.s;
		v28=v9.x;
		v29=v29 * v28;
		v28=v10.c;
		v27=v9.y;
		v28=v28 * v27;
		v29=v29 + v28;
		v30=v5.p;
		v28=v30.y;
		v13=v29 + v28;
		$f.l=537;
		v29=v11.c;
		v28=v8.x;
		v29=v29 * v28;
		v28=v11.s;
		v27=v8.y;
		v28=v28 * v27;
		v29=v29 - v28;
		v30=v3.p;
		v28=v30.x;
		v29=v29 + v28;
		v12=v12 - v29;
		$f.l=538;
		v29=v11.s;
		v28=v8.x;
		v29=v29 * v28;
		v28=v11.c;
		v27=v8.y;
		v28=v28 * v27;
		v29=v29 + v28;
		v30=v3.p;
		v28=v30.y;
		v29=v29 + v28;
		v13=v13 - v29;
		$f.l=540;
		v29=v11.c;
		v29=v29 * v12;
		v28=v11.s;
		v28=v28 * v13;
		v14=v29 + v28;
		$f.l=541;
		v29=v11.s;
		v29=-v29;
		v29=v29 * v12;
		v28=v11.c;
		v28=v28 * v13;
		v15=v29 + v28;
		$f.l=545;
		v16=0;
		$f.l=547;
		v17=-3.4028235E38;
		$f.l=548;
		v18=0;
	case 83:
		if(v18>=v6) {$b=102; break;}
		$f.l=549;
		v19=v7[v18];
		$f.l=550;
		v29=v19.x;
		v29=v29 * v14;
		v28=v19.y;
		v28=v28 * v15;
		v20=v29 + v28;
		$f.l=551;
		v31=(v20 != v20 || v17 != v17) ? -1 : (v20 > v17) - (v20 < v17);
		if(v31<=0) {$b=99; break;}
		$f.l=552;
		v17=v20;
		$f.l=553;
		v16=v18;
	case 99:
		$f.l=548;
		v18=(v18 + 1)|0;
		{ $b=83; break; }
	case 102:
		$f.l=558;
		v32=_54(v0,v2,v3,v16,v4,v5);
		;
		$f.l=561;
		v33=(v16 - 1)|0;
		if(v33<0) {$b=109; break;}
		v33=(v16 - 1)|0;
		{ $b=110; break; }
	case 109:
		v33=(v6 - 1)|0;
	case 110:
		v34=v33;
		$f.l=562;
		v21=_54(v0,v2,v3,v34,v4,v5);
		;
		$f.l=565;
		v33=(v16 + 1)|0;
		if(v33>=v6) {$b=118; break;}
		v33=(v16 + 1)|0;
		{ $b=119; break; }
	case 118:
		v33=0;
	case 119:
		v22=v33;
		$f.l=566;
		v23=_54(v0,v2,v3,v22,v4,v5);
		;
		$f.l=572;
		v31=(v21 != v21 || v32 != v32) ? -1 : (v21 > v32) - (v21 < v32);
		if(v31<=0) {$b=134; break;}
		v31=(v21 != v21 || v23 != v23) ? -1 : (v21 > v23) - (v21 < v23);
		if(v31<=0) {$b=134; break;}
		$f.l=573;
		v24=-1;
		$f.l=574;
		v25=v34;
		$f.l=575;
		v26=v21;
		{ $b=150; break; }
	case 134:
		$f.l=576;
		v31=(v23 != v23 || v32 != v32) ? -1 : (v23 > v32) - (v23 < v32);
		if(v31<=0) {$b=144; break;}
		$f.l=577;
		v24=1;
		$f.l=578;
		v25=v22;
		$f.l=579;
		v26=v23;
		{ $b=150; break; }
	case 144:
		$f.l=581;
		v1.edgeIndex=v16;
		$f.l=582;
		v1.separation=v32;
		$f.l=583;
		return;
	case 150:
		$f.l=588;
		if(v24!=-1) {$b=160; break;}
		$f.l=589;
		v33=(v25 - 1)|0;
		if(v33<0) {$b=157; break;}
		v33=(v25 - 1)|0;
		{ $b=158; break; }
	case 157:
		v33=(v6 - 1)|0;
	case 158:
		v16=v33;
		{ $b=167; break; }
	case 160:
		$f.l=591;
		v33=(v25 + 1)|0;
		if(v33>=v6) {$b=165; break;}
		v33=(v25 + 1)|0;
		{ $b=166; break; }
	case 165:
		v33=0;
	case 166:
		v16=v33;
	case 167:
		$f.l=594;
		v32=_54(v0,v2,v3,v16,v4,v5);
		;
		$f.l=596;
		v31=(v32 != v32 || v26 != v26) ? -1 : (v32 > v26) - (v32 < v26);
		if(v31<=0) {$b=177; break;}
		$f.l=597;
		v25=v16;
		$f.l=598;
		v26=v32;
		{ $b=150; break; }
	case 177:
		$f.l=604;
		v1.edgeIndex=v25;
		$f.l=605;
		v1.separation=v26;
		$f.l=606;
		return;
}
}
//org/jbox2d/collision/Collision:findIncidentEdge
function _56(vm,a0,a1,a2,a3,a4,a5,a6){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=611;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=a6;
		v7=v2.m_count;
		$f.l=612;
		v8=v2.m_normals;
		$f.l=614;
		v9=v5.m_count;
		$f.l=615;
		v10=v5.m_vertices;
		$f.l=616;
		v11=v5.m_normals;
		$f.l=618;
		v29=$g5;
		if(v29!=0) {$b=25; break;}
		if(0>v4) {$b=22; break;}
		if(v4<v7) {$b=25; break;}
	case 22:
		v30=new java/lang/AssertionError;
		_26(v30);
		throw v30;
	case 25:
		$f.l=620;
		v12=v1[0];
		$f.l=621;
		v13=v1[1];
		$f.l=622;
		v14=v3.q;
		$f.l=623;
		v15=v6.q;
		$f.l=631;
		v16=v8[v4];
		$f.l=632;
		v31=v14.c;
		v32=v16.x;
		v32=v31 * v32;
		v31=v14.s;
		v33=v16.y;
		v33=v31 * v33;
		v17=v32 - v33;
		$f.l=633;
		v33=v14.s;
		v32=v16.x;
		v33=v33 * v32;
		v32=v14.c;
		v31=v16.y;
		v32=v32 * v31;
		v18=v33 + v32;
		$f.l=634;
		v33=v15.c;
		v33=v33 * v17;
		v32=v15.s;
		v32=v32 * v18;
		v19=v33 + v32;
		$f.l=635;
		v33=v15.s;
		v33=-v33;
		v33=v33 * v17;
		v32=v15.c;
		v32=v32 * v18;
		v20=v33 + v32;
		$f.l=640;
		v21=0;
		$f.l=641;
		v22=3.4028235E38;
		$f.l=642;
		v23=0;
	case 70:
		if(v23>=v9) {$b=89; break;}
		$f.l=643;
		v24=v11[v23];
		$f.l=644;
		v33=v24.x;
		v33=v19 * v33;
		v32=v24.y;
		v32=v20 * v32;
		v25=v33 + v32;
		$f.l=645;
		v34=(v25 != v25 || v22 != v22) ? 1 : (v25 > v22) - (v25 < v22);
		if(v34>=0) {$b=86; break;}
		$f.l=646;
		v22=v25;
		$f.l=647;
		v21=v23;
	case 86:
		$f.l=642;
		v23=(v23 + 1)|0;
		{ $b=70; break; }
	case 89:
		$f.l=652;
		v23=v21;
		$f.l=653;
		v35=(v23 + 1)|0;
		if(v35>=v9) {$b=96; break;}
		v35=(v23 + 1)|0;
		{ $b=97; break; }
	case 96:
		v35=0;
	case 97:
		v36=v35;
		$f.l=656;
		v37=v10[v23];
		$f.l=657;
		v26=v12.v;
		$f.l=658;
		v33=v15.c;
		v32=v37.x;
		v33=v33 * v32;
		v32=v15.s;
		v31=v37.y;
		v32=v32 * v31;
		v33=v33 - v32;
		v38=v6.p;
		v32=v38.x;
		v33=v33 + v32;
		v26.x=v33;
		$f.l=659;
		v33=v15.s;
		v32=v37.x;
		v33=v33 * v32;
		v32=v15.c;
		v31=v37.y;
		v32=v32 * v31;
		v33=v33 + v32;
		v38=v6.p;
		v32=v38.y;
		v33=v33 + v32;
		v26.y=v33;
		$f.l=660;
		v39=v12.id;
		v34=v4&0xff;
		v39.indexA=v34;
		$f.l=661;
		v39=v12.id;
		v34=v23&0xff;
		v39.indexB=v34;
		$f.l=662;
		v39=v12.id;
		v40=$g2;
		v35=_4f(v40);
		;
		v34=v35&0xff;
		v39.typeA=v34;
		$f.l=663;
		v39=v12.id;
		v40=$g1;
		v35=_4f(v40);
		;
		v34=v35&0xff;
		v39.typeB=v34;
		$f.l=666;
		v27=v10[v36];
		$f.l=667;
		v28=v13.v;
		$f.l=668;
		v33=v15.c;
		v32=v27.x;
		v33=v33 * v32;
		v32=v15.s;
		v31=v27.y;
		v32=v32 * v31;
		v33=v33 - v32;
		v38=v6.p;
		v32=v38.x;
		v33=v33 + v32;
		v28.x=v33;
		$f.l=669;
		v33=v15.s;
		v32=v27.x;
		v33=v33 * v32;
		v32=v15.c;
		v31=v27.y;
		v32=v32 * v31;
		v33=v33 + v32;
		v38=v6.p;
		v32=v38.y;
		v33=v33 + v32;
		v28.y=v33;
		$f.l=670;
		v39=v13.id;
		v34=v4&0xff;
		v39.indexA=v34;
		$f.l=671;
		v39=v13.id;
		v34=v36&0xff;
		v39.indexB=v34;
		$f.l=672;
		v39=v13.id;
		v40=$g2;
		v35=_4f(v40);
		;
		v34=v35&0xff;
		v39.typeA=v34;
		$f.l=673;
		v39=v13.id;
		v40=$g1;
		v35=_4f(v40);
		;
		v34=v35&0xff;
		v39.typeB=v34;
		$f.l=674;
		return;
}
}
//org/jbox2d/collision/Collision:collidePolygons
function _57(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=707;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v1.pointCount=0;
		$f.l=708;
		v33=v2.m_radius;
		v34=v4.m_radius;
		v6=v33 + v34;
		$f.l=710;
		v35=v0.results1;
		_55(v0,v35,v2,v3,v4,v5);
		$f.l=711;
		v35=v0.results1;
		v34=v35.separation;
		v36=(v34 != v34 || v6 != v6) ? -1 : (v34 > v6) - (v34 < v6);
		if(v36<=0) {$b=22; break;}
		$f.l=712;
		return;
	case 22:
		$f.l=715;
		v35=v0.results2;
		_55(v0,v35,v4,v5,v2,v3);
		$f.l=716;
		v35=v0.results2;
		v34=v35.separation;
		v36=(v34 != v34 || v6 != v6) ? -1 : (v34 > v6) - (v34 < v6);
		if(v36<=0) {$b=32; break;}
		$f.l=717;
		return;
	case 32:
		$f.l=725;
		v7=0.98;
		$f.l=726;
		v8=0.001;
		$f.l=728;
		v35=v0.results2;
		v34=v35.separation;
		v35=v0.results1;
		v33=v35.separation;
		v33=0.98 * v33;
		v33=v33 + 0.001;
		v36=(v34 != v34 || v33 != v33) ? -1 : (v34 > v33) - (v34 < v33);
		if(v36<=0) {$b=62; break;}
		$f.l=729;
		v9=v4;
		$f.l=730;
		v10=v2;
		$f.l=731;
		v11=v5;
		$f.l=732;
		v12=v3;
		$f.l=733;
		v35=v0.results2;
		v13=v35.edgeIndex;
		$f.l=734;
		v37=$g6;
		v1.type=v37;
		$f.l=735;
		v14=1;
		{ $b=78; break; }
	case 62:
		$f.l=737;
		v9=v2;
		$f.l=738;
		v10=v4;
		$f.l=739;
		v11=v3;
		$f.l=740;
		v12=v5;
		$f.l=741;
		v35=v0.results1;
		v13=v35.edgeIndex;
		$f.l=742;
		v37=$g4;
		v1.type=v37;
		$f.l=743;
		v14=0;
	case 78:
		$f.l=745;
		v15=v11.q;
		$f.l=747;
		v38=v0.incidentEdge;
		_56(v0,v38,v9,v11,v13,v10,v12);
		$f.l=749;
		v16=v9.m_count;
		$f.l=750;
		v17=v9.m_vertices;
		$f.l=752;
		v18=v13;
		$f.l=753;
		v39=(v13 + 1)|0;
		if(v39>=v16) {$b=94; break;}
		v39=(v13 + 1)|0;
		{ $b=95; break; }
	case 94:
		v39=0;
	case 95:
		v19=v39;
		$f.l=754;
		v40=v0.v11;
		v41=v17[v18];
		v41=_28(v40,v41);
		;
		$f.l=755;
		v41=v0.v12;
		v40=v17[v19];
		v41=_28(v41,v40);
		;
		$f.l=756;
		v41=v0.localTangent;
		v40=v0.v12;
		v34=v40.x;
		v40=v0.v11;
		v33=v40.x;
		v34=v34 - v33;
		v41.x=v34;
		$f.l=757;
		v41=v0.localTangent;
		v40=v0.v12;
		v34=v40.y;
		v40=v0.v11;
		v33=v40.y;
		v34=v34 - v33;
		v41.y=v34;
		$f.l=758;
		v41=v0.localTangent;
		v34=_53(v41);
		;
		$f.l=761;
		v41=v0.localNormal;
		v40=v0.localTangent;
		v34=v40.y;
		v34=1.0 * v34;
		v41.x=v34;
		$f.l=762;
		v41=v0.localNormal;
		v40=v0.localTangent;
		v34=v40.x;
		v34=-1.0 * v34;
		v41.y=v34;
		$f.l=765;
		v41=v0.planePoint;
		v40=v0.v11;
		v34=v40.x;
		v40=v0.v12;
		v33=v40.x;
		v34=v34 + v33;
		v34=v34 * 0.5;
		v41.x=v34;
		$f.l=766;
		v41=v0.planePoint;
		v40=v0.v11;
		v34=v40.y;
		v40=v0.v12;
		v33=v40.y;
		v34=v34 + v33;
		v34=v34 * 0.5;
		v41.y=v34;
		$f.l=769;
		v41=v0.tangent;
		v34=v15.c;
		v40=v0.localTangent;
		v33=v40.x;
		v34=v34 * v33;
		v33=v15.s;
		v40=v0.localTangent;
		v42=v40.y;
		v42=v33 * v42;
		v42=v34 - v42;
		v41.x=v42;
		$f.l=770;
		v41=v0.tangent;
		v42=v15.s;
		v40=v0.localTangent;
		v34=v40.x;
		v42=v42 * v34;
		v34=v15.c;
		v40=v0.localTangent;
		v33=v40.y;
		v34=v34 * v33;
		v42=v42 + v34;
		v41.y=v42;
		$f.l=773;
		v41=v0.tangent;
		v42=v41.y;
		v20=1.0 * v42;
		$f.l=774;
		v41=v0.tangent;
		v42=v41.x;
		v21=-1.0 * v42;
		$f.l=777;
		v41=v0.v11;
		v40=v0.v11;
		_58(v11,v41,v40);
		$f.l=778;
		v41=v0.v12;
		v40=v0.v12;
		_58(v11,v41,v40);
		$f.l=784;
		v41=v0.v11;
		v42=v41.x;
		v42=v20 * v42;
		v41=v0.v11;
		v34=v41.y;
		v34=v21 * v34;
		v22=v42 + v34;
		$f.l=789;
		v41=v0.tangent;
		v42=v41.x;
		v41=v0.v11;
		v34=v41.x;
		v42=v42 * v34;
		v41=v0.tangent;
		v34=v41.y;
		v41=v0.v11;
		v33=v41.y;
		v34=v34 * v33;
		v42=v42 + v34;
		v42=-v42;
		v23=v42 + v6;
		$f.l=790;
		v41=v0.tangent;
		v42=v41.x;
		v41=v0.v12;
		v34=v41.x;
		v42=v42 * v34;
		v41=v0.tangent;
		v34=v41.y;
		v41=v0.v12;
		v33=v41.y;
		v34=v34 * v33;
		v42=v42 + v34;
		v24=v42 + v6;
		$f.l=799;
		v41=v0.tangent;
		v41=_3a(v41);
		;
		$f.l=800;
		v38=v0.clipPoints1;
		v43=v0.incidentEdge;
		v41=v0.tangent;
		v25=_4c(v38,v43,v41,v23,v18);
		;
		$f.l=801;
		v41=v0.tangent;
		v41=_3a(v41);
		;
		$f.l=803;
		if(v25>=2) {$b=243; break;}
		$f.l=804;
		return;
	case 243:
		$f.l=808;
		v43=v0.clipPoints2;
		v38=v0.clipPoints1;
		v41=v0.tangent;
		v25=_4c(v43,v38,v41,v24,v19);
		;
		$f.l=810;
		if(v25>=2) {$b=252; break;}
		$f.l=811;
		return;
	case 252:
		$f.l=815;
		v41=v1.localNormal;
		v40=v0.localNormal;
		v41=_28(v41,v40);
		;
		$f.l=816;
		v41=v1.localPoint;
		v40=v0.planePoint;
		v41=_28(v41,v40);
		;
		$f.l=818;
		v26=0;
		$f.l=819;
		v27=0;
	case 264:
		if(v27>=2) {$b=337; break;}
		$f.l=821;
		v43=v0.clipPoints2;
		v44=v43[v27];
		v41=v44.v;
		v42=v41.x;
		v42=v20 * v42;
		v43=v0.clipPoints2;
		v44=v43[v27];
		v41=v44.v;
		v34=v41.y;
		v34=v21 * v34;
		v42=v42 + v34;
		v28=v42 - v22;
		$f.l=823;
		v36=(v28 != v28 || v6 != v6) ? 1 : (v28 > v6) - (v28 < v6);
		if(v36>0) {$b=334; break;}
		$f.l=824;
		v45=v1.points;
		v29=v45[v26];
		$f.l=826;
		v30=v29.localPoint;
		$f.l=827;
		v43=v0.clipPoints2;
		v44=v43[v27];
		v41=v44.v;
		v42=v41.x;
		v41=v12.p;
		v34=v41.x;
		v31=v42 - v34;
		$f.l=828;
		v43=v0.clipPoints2;
		v44=v43[v27];
		v41=v44.v;
		v42=v41.y;
		v41=v12.p;
		v34=v41.y;
		v32=v42 - v34;
		$f.l=829;
		v46=v12.q;
		v42=v46.c;
		v42=v42 * v31;
		v46=v12.q;
		v34=v46.s;
		v34=v34 * v32;
		v42=v42 + v34;
		v30.x=v42;
		$f.l=830;
		v46=v12.q;
		v42=v46.s;
		v42=-v42;
		v42=v42 * v31;
		v46=v12.q;
		v34=v46.c;
		v34=v34 * v32;
		v42=v42 + v34;
		v30.y=v42;
		$f.l=831;
		v47=v29.id;
		v43=v0.clipPoints2;
		v44=v43[v27];
		v48=v44.id;
		_59(v47,v48);
		$f.l=832;
		if(v14==0) {$b=332; break;}
		$f.l=834;
		v48=v29.id;
		_5a(v48);
	case 332:
		$f.l=836;
		v26=(v26 + 1)|0;
	case 334:
		$f.l=819;
		v27=(v27 + 1)|0;
		{ $b=264; break; }
	case 337:
		$f.l=840;
		v1.pointCount=v26;
		$f.l=841;
		return;
}
}
//org/jbox2d/collision/Collision:collideEdgeAndCircle
function _5b(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=854;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v1.pointCount=0;
		$f.l=859;
		v17=v4.m_p;
		v18=v0.temp;
		_5c(v5,v17,v18);
		$f.l=860;
		v18=v0.temp;
		v17=v0.Q;
		_5d(v3,v18,v17);
		$f.l=862;
		v6=v2.m_vertex1;
		$f.l=863;
		v7=v2.m_vertex2;
		$f.l=864;
		v18=v0.e;
		v18=_28(v18,v7);
		;
		v18=_2e(v18,v6);
		;
		$f.l=867;
		v18=v0.e;
		v17=v0.temp;
		v17=_28(v17,v7);
		;
		v19=v0.Q;
		v19=_2e(v17,v19);
		;
		v8=_4d(v18,v19);
		;
		$f.l=868;
		v19=v0.e;
		v18=v0.temp;
		v17=v0.Q;
		v18=_28(v18,v17);
		;
		v18=_2e(v18,v6);
		;
		v9=_4d(v19,v18);
		;
		$f.l=870;
		v20=v2.m_radius;
		v21=v4.m_radius;
		v10=v20 + v21;
		$f.l=873;
		v22=v0.cf;
		v22.indexB=0;
		$f.l=874;
		v22=v0.cf;
		v23=$g1;
		v24=_4f(v23);
		;
		v25=v24&0xff;
		v22.typeB=v25;
		$f.l=877;
		v25=(v9 != v9 || 0.0 != 0.0) ? 1 : (v9 > 0.0) - (v9 < 0.0);
		if(v25>0) {$b=128; break;}
		$f.l=878;
		v11=v6;
		$f.l=879;
		v19=$g7;
		v18=v0.Q;
		v19=_28(v19,v18);
		;
		v19=_2e(v19,v11);
		;
		$f.l=880;
		v19=$g7;
		v18=$g7;
		v12=_4d(v19,v18);
		;
		$f.l=881;
		v21=v10 * v10;
		v25=(v12 != v12 || v21 != v21) ? -1 : (v12 > v21) - (v12 < v21);
		if(v25<=0) {$b=71; break;}
		$f.l=882;
		return;
	case 71:
		$f.l=886;
		v26=v2.m_hasVertex0;
		if(v26==0) {$b=94; break;}
		$f.l=887;
		v13=v2.m_vertex0;
		$f.l=888;
		v14=v6;
		$f.l=889;
		v19=v0.e1;
		v19=_28(v19,v14);
		;
		v19=_2e(v19,v13);
		;
		$f.l=890;
		v19=v0.e1;
		v18=v0.temp;
		v18=_28(v18,v14);
		;
		v17=v0.Q;
		v18=_2e(v18,v17);
		;
		v15=_4d(v19,v18);
		;
		$f.l=893;
		v25=(v15 != v15 || 0.0 != 0.0) ? -1 : (v15 > 0.0) - (v15 < 0.0);
		if(v25<=0) {$b=94; break;}
		$f.l=894;
		return;
	case 94:
		$f.l=898;
		v22=v0.cf;
		v22.indexA=0;
		$f.l=899;
		v22=v0.cf;
		v23=$g1;
		v24=_4f(v23);
		;
		v25=v24&0xff;
		v22.typeA=v25;
		$f.l=900;
		v1.pointCount=1;
		$f.l=901;
		v27=$g3;
		v1.type=v27;
		$f.l=902;
		v19=v1.localNormal;
		_29(v19);
		$f.l=903;
		v19=v1.localPoint;
		v19=_28(v19,v11);
		;
		$f.l=905;
		v28=v1.points;
		v29=v28[0];
		v22=v29.id;
		v30=v0.cf;
		_59(v22,v30);
		$f.l=906;
		v28=v1.points;
		v29=v28[0];
		v19=v29.localPoint;
		v18=v4.m_p;
		v19=_28(v19,v18);
		;
		$f.l=907;
		return;
	case 128:
		$f.l=911;
		v25=(v8 != v8 || 0.0 != 0.0) ? 1 : (v8 > 0.0) - (v8 < 0.0);
		if(v25>0) {$b=205; break;}
		$f.l=912;
		v11=v7;
		$f.l=913;
		v19=$g7;
		v18=v0.Q;
		v19=_28(v19,v18);
		;
		v19=_2e(v19,v11);
		;
		$f.l=914;
		v19=$g7;
		v18=$g7;
		v12=_4d(v19,v18);
		;
		$f.l=915;
		v21=v10 * v10;
		v25=(v12 != v12 || v21 != v21) ? -1 : (v12 > v21) - (v12 < v21);
		if(v25<=0) {$b=148; break;}
		$f.l=916;
		return;
	case 148:
		$f.l=920;
		v26=v2.m_hasVertex3;
		if(v26==0) {$b=171; break;}
		$f.l=921;
		v13=v2.m_vertex3;
		$f.l=922;
		v14=v7;
		$f.l=923;
		v31=v0.e1;
		$f.l=924;
		v19=_28(v31,v13);
		;
		v19=_2e(v19,v14);
		;
		$f.l=925;
		v19=v0.temp;
		v18=v0.Q;
		v19=_28(v19,v18);
		;
		v19=_2e(v19,v14);
		;
		v16=_4d(v31,v19);
		;
		$f.l=928;
		v25=(v16 != v16 || 0.0 != 0.0) ? -1 : (v16 > 0.0) - (v16 < 0.0);
		if(v25<=0) {$b=171; break;}
		$f.l=929;
		return;
	case 171:
		$f.l=933;
		v30=v0.cf;
		v30.indexA=1;
		$f.l=934;
		v30=v0.cf;
		v23=$g1;
		v24=_4f(v23);
		;
		v25=v24&0xff;
		v30.typeA=v25;
		$f.l=935;
		v1.pointCount=1;
		$f.l=936;
		v27=$g3;
		v1.type=v27;
		$f.l=937;
		v19=v1.localNormal;
		_29(v19);
		$f.l=938;
		v19=v1.localPoint;
		v19=_28(v19,v11);
		;
		$f.l=940;
		v28=v1.points;
		v29=v28[0];
		v30=v29.id;
		v22=v0.cf;
		_59(v30,v22);
		$f.l=941;
		v28=v1.points;
		v29=v28[0];
		v19=v29.localPoint;
		v18=v4.m_p;
		v19=_28(v19,v18);
		;
		$f.l=942;
		return;
	case 205:
		$f.l=946;
		v19=v0.e;
		v18=v0.e;
		v32=_4d(v19,v18);
		;
		$f.l=947;
		v26=$g5;
		if(v26!=0) {$b=217; break;}
		v25=(v32 != v32 || 0.0 != 0.0) ? -1 : (v32 > 0.0) - (v32 < 0.0);
		if(v25>0) {$b=217; break;}
		v33=new java/lang/AssertionError;
		_26(v33);
		throw v33;
	case 217:
		$f.l=950;
		v19=v0.P;
		v19=_28(v19,v6);
		;
		v19=_35(v19,v8);
		;
		v18=v0.temp;
		v18=_28(v18,v7);
		;
		v18=_35(v18,v9);
		;
		v19=_36(v19,v18);
		;
		$f.l=951;
		v19=v0.P;
		v21=1.0 / v32;
		v19=_35(v19,v21);
		;
		$f.l=952;
		v19=$g7;
		v18=v0.Q;
		v19=_28(v19,v18);
		;
		v18=v0.P;
		v19=_2e(v19,v18);
		;
		$f.l=953;
		v19=$g7;
		v18=$g7;
		v12=_4d(v19,v18);
		;
		$f.l=954;
		v21=v10 * v10;
		v25=(v12 != v12 || v21 != v21) ? -1 : (v12 > v21) - (v12 < v21);
		if(v25<=0) {$b=245; break;}
		$f.l=955;
		return;
	case 245:
		$f.l=958;
		v19=v0.n;
		v18=v0.e;
		v21=v18.y;
		v21=-v21;
		v19.x=v21;
		$f.l=959;
		v19=v0.n;
		v18=v0.e;
		v21=v18.x;
		v19.y=v21;
		$f.l=960;
		v19=v0.n;
		v18=v0.temp;
		v17=v0.Q;
		v18=_28(v18,v17);
		;
		v18=_2e(v18,v6);
		;
		v21=_4d(v19,v18);
		;
		v25=(v21 != v21 || 0.0 != 0.0) ? 1 : (v21 > 0.0) - (v21 < 0.0);
		if(v25>=0) {$b=274; break;}
		$f.l=961;
		v19=v0.n;
		v18=v0.n;
		v21=v18.x;
		v21=-v21;
		v18=v0.n;
		v20=v18.y;
		v20=-v20;
		v19=_30(v19,v21,v20);
		;
	case 274:
		$f.l=963;
		v19=v0.n;
		v21=_53(v19);
		;
		$f.l=965;
		v30=v0.cf;
		v30.indexA=0;
		$f.l=966;
		v30=v0.cf;
		v23=$g2;
		v24=_4f(v23);
		;
		v25=v24&0xff;
		v30.typeA=v25;
		$f.l=967;
		v1.pointCount=1;
		$f.l=968;
		v27=$g4;
		v1.type=v27;
		$f.l=969;
		v19=v1.localNormal;
		v18=v0.n;
		v19=_28(v19,v18);
		;
		$f.l=970;
		v19=v1.localPoint;
		v19=_28(v19,v6);
		;
		$f.l=972;
		v28=v1.points;
		v29=v28[0];
		v30=v29.id;
		v22=v0.cf;
		_59(v30,v22);
		$f.l=973;
		v28=v1.points;
		v29=v28[0];
		v19=v29.localPoint;
		v18=v4.m_p;
		v19=_28(v19,v18);
		;
		$f.l=974;
		return;
}
}
//org/jbox2d/collision/Collision:collideEdgeAndPolygon
function _5e(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=980;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=a4;
v5=a5;
v6=v0.collider;
_5f(v6,v1,v2,v3,v4,v5);
$f.l=981;
return;
}
//org/jbox2d/collision/Collision:<clinit>
function _60(vm){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=46;
		v0=vm.getClass(5);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g5=v1;
		$f.l=191;
		v2=new org/jbox2d/common/Vec2;
		_1a(v2);
		$g7=v2;
		return;
}
}
//java/lang/reflect/Method:<init>
function _61(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=28;
v0=a0;
_0(v0);
return;
}
//java/lang/reflect/Method:getName
function _62(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/reflect/Method:getModifiers
function _63(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=v0.modifiers;
return v1;
}
//java/lang/reflect/Method:getParameterCount
function _64(vm,a0){
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
function _65(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=50;
v0=a0;
v1=v0.type;
return v1;
}
//java/lang/reflect/Method:getParameterTypes
function _66(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=a0;
v1=v0.parameters;
return v1;
}
//java/lang/reflect/Method:invoke
function _67(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=58;
v0=a0;
v1=a1;
v2=a2;
v3=newArray(0,4);
v3[0]=v0;
v3[1]=v0;
v3[2]=v1;
v3[3]=v2;
v4=_16($str2,v3);
;
return v4;
}
//java/lang/reflect/Method:getDeclaringClass
function _68(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=62;
v0=a0;
v1=v0.declaringClass;
return v1;
}
//java/lang/reflect/Method:setAccessible
function _69(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=65;
v0=a0;
v1=a1;
return;
}
//cava/c/VoidPtr:<init>
function _6a(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
_0(v0);
return;
}
//cava/c/VoidPtr:fromObject
function _4(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=newArray(0,1);
v1[0]=v0;
v2=_6b($str3,v1);
;
return v2;
}
//cava/c/VoidPtr:toLong
function _5(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=58;
v0=a0;
v1=newArray(0,1);
v1[0]=v0;
v2=_6c($str4,v1);
;
return v2;
}
//org/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef:<init>
function _6d(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=983;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/shapes/MassData:<init>
function _6e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=65;
v0=a0;
_0(v0);
$f.l=66;
v1=0.0;
v0.I=v1;
v0.mass=v1;
$f.l=67;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.center=v2;
$f.l=68;
return;
}
//org/jbox2d/collision/shapes/MassData:<init>
function _6f(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=a1;
_0(v0);
$f.l=77;
v2=v1.mass;
v0.mass=v2;
$f.l=78;
v2=v1.I;
v0.I=v2;
$f.l=79;
v3=v1.center;
v3=_70(v3);
;
v0.center=v3;
$f.l=80;
return;
}
//org/jbox2d/collision/shapes/MassData:clone
function _71(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=90;
v0=a0;
v1=new org/jbox2d/collision/shapes/MassData;
_6f(v1,v0);
return v1;
}
//org/jbox2d/collision/shapes/MassData:clone
function _72(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=a0;
v1=_71(v0);
;
return v1;
}
//org/jbox2d/collision/shapes/Shape:<init>
function _73(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=a1;
_0(v0);
$f.l=43;
v0.m_type=v1;
$f.l=44;
return;
}
//org/jbox2d/collision/shapes/Shape:getType
function _74(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=v0.m_type;
return v1;
}
//org/jbox2d/collision/shapes/Shape:getRadius
function _75(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=62;
v0=a0;
v1=v0.m_radius;
return v1;
}
//org/jbox2d/collision/shapes/Shape:setRadius
function _76(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=72;
v0=a0;
v1=a1;
v0.m_radius=v1;
$f.l=73;
return;
}
//org/jbox2d/collision/shapes/Shape:clone
function _77(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=v0.$c.$vt[17](v0);
;
return v1;
}
//org/jbox2d/collision/ManifoldPoint:<init>
function _78(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=77;
v0=a0;
_0(v0);
$f.l=78;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPoint=v1;
$f.l=79;
v2=0.0;
v0.tangentImpulse=v2;
v0.normalImpulse=v2;
$f.l=80;
v3=new org/jbox2d/collision/ContactID;
_45(v3);
v0.id=v3;
$f.l=81;
return;
}
//org/jbox2d/collision/ManifoldPoint:set
function _79(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=99;
v0=a0;
v1=a1;
v2=v0.localPoint;
v3=v1.localPoint;
v3=_28(v2,v3);
;
$f.l=100;
v4=v1.normalImpulse;
v0.normalImpulse=v4;
$f.l=101;
v4=v1.tangentImpulse;
v0.tangentImpulse=v4;
$f.l=102;
v5=v0.id;
v6=v1.id;
_59(v5,v6);
$f.l=103;
return;
}
//org/jbox2d/collision/Distance$1:<clinit>
function _7a(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=496;
		$f.trap=0;
		v0=_7b();
		;
		v3=v0.len;
		v4=newArray(6,v3);
		$g8=v4;
		$f.trap=1;
		v4=$g8;
		v1=$g9;
		v3=_4f(v1);
		;
		v4[v3]=1;
		$f.trap=0;
		{ $b=17; break; }
	case 14:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 17:
		$f.trap=2;
		v4=$g8;
		v1=$g10;
		v3=_4f(v1);
		;
		v4[v3]=2;
		$f.trap=0;
		{ $b=27; break; }
	case 24:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 27:
		$f.trap=3;
		v4=$g8;
		v1=$g11;
		v3=_4f(v1);
		;
		v4[v3]=3;
		$f.trap=0;
		{ $b=37; break; }
	case 34:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 37:
		$f.trap=4;
		v4=$g8;
		v1=$g12;
		v3=_4f(v1);
		;
		v4[v3]=4;
		$f.trap=0;
		{ $b=47; break; }
	case 44:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 47:
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,7)) {$b=14; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,7)) {$b=24; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,7)) {$b=34; continue;}
	}
	if($f.trap==4){
		if(vm.is(vm.exception,7)) {$b=44; continue;}
	}
throw error;
}
}
//org/jbox2d/collision/Collision$EPAxis:<init>
function _7c(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=1044;
v0=a0;
_0(v0);
$f.l=1045;
return;
}
//cava/c/NativeObject:<init>
function _7d(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=23;
v0=a0;
_0(v0);
return;
}
//cava/c/NativeObject:getNativePeer
function _7e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=33;
v0=a0;
v1=v0.nativePeer;
return v1;
}
//cava/c/NativeObject:finalize
function _7f(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=46;
		v0=a0;
		v1=v0.noOwner;
		if(v1!=0) {$b=10; break;}
		v2=v0.nativePeer;
		if(v2==null) {$b=10; break;}
		$f.l=47;
		v0.$c.$vt[31](v0);
		$f.l=48;
		v0.nativePeer=null;
	case 10:
		$f.l=50;
		_18(v0);
		$f.l=51;
		return;
}
}
//cava/c/CharPtr:fromArray
function _80(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=61;
v0=a0;
v1=newArray(0,1);
v1[0]=v0;
v2=_81($str5,v1);
;
return v2;
}
//org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack:<init>
function _82(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=887;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_0(v0);
$f.l=888;
v3=newArray(8,v2);
v0.stack=v3;
$f.l=889;
v0.position=0;
$f.l=890;
v0.size=v2;
$f.l=891;
return;
}
//org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack:reset
function _83(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=894;
v0=a0;
v0.position=0;
$f.l=895;
return;
}
//org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack:pop
function _84(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=898;
		v0=a0;
		v1=$g13;
		if(v1!=0) {$b=9; break;}
		v2=v0.position;
		if(v2>0) {$b=9; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 9:
		$f.l=899;
		v4=v0.stack;
		v5=v0;
		v2=v0.position;
		v2=(v2 - 1)|0;
		v0.position=v2;
		v6=v4[v2];
		return v6;
}
}
//org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack:push
function _85(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=903;
		v0=a0;
		v1=a1;
		v3=v0.position;
		v4=v0.size;
		if(v3!=v4) {$b=21; break;}
		$f.l=904;
		v2=v0.stack;
		$f.l=905;
		v4=v0.size;
		v4=(v4 * 2)|0;
		v5=newArray(8,v4);
		v0.stack=v5;
		$f.l=906;
		v5=v0.stack;
		v4=v5.len;
		v0.size=v4;
		$f.l=907;
		v5=v0.stack;
		v4=v2.len;
		_15(v2,0,v5,0,v4);
	case 21:
		$f.l=909;
		v5=v0.stack;
		v6=v0;
		v4=v0.position;
		v3=(v4 + 1)|0;
		v0.position=v3;
		v5[v4]=v1;
		$f.l=910;
		return;
}
}
//org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack:getCount
function _86(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=913;
v0=a0;
v1=v0.position;
return v1;
}
//org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack:<clinit>
function _87(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=882;
		v0=vm.getClass(9);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g13=v1;
		return;
}
}
//org/jbox2d/collision/TimeOfImpact$TOIInput:<init>
function _88(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
_0(v0);
$f.l=57;
v1=new org/jbox2d/collision/Distance$DistanceProxy;
_89(v1);
v0.proxyA=v1;
$f.l=58;
v1=new org/jbox2d/collision/Distance$DistanceProxy;
_89(v1);
v0.proxyB=v1;
$f.l=59;
v2=new org/jbox2d/common/Sweep;
_8a(v2);
v0.sweepA=v2;
$f.l=60;
v2=new org/jbox2d/common/Sweep;
_8a(v2);
v0.sweepB=v2;
return;
}
//org/jbox2d/dynamics/Fixture:<init>
function _8b(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=69;
v0=a0;
_0(v0);
$f.l=406;
v1=new org/jbox2d/collision/AABB;
_8c(v1);
v0.pool1=v1;
$f.l=407;
v1=new org/jbox2d/collision/AABB;
_8c(v1);
v0.pool2=v1;
$f.l=408;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.displacement=v2;
$f.l=70;
v0.m_userData=null;
$f.l=71;
v0.m_body=null;
$f.l=72;
v0.m_next=null;
$f.l=73;
v0.m_proxies=null;
$f.l=74;
v0.m_proxyCount=0;
$f.l=75;
v0.m_shape=null;
$f.l=76;
v3=new org/jbox2d/dynamics/Filter;
_8d(v3);
v0.m_filter=v3;
$f.l=77;
return;
}
//org/jbox2d/dynamics/Fixture:getType
function _8e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=85;
v0=a0;
v1=v0.m_shape;
v2=_74(v1);
;
return v2;
}
//org/jbox2d/dynamics/Fixture:getShape
function _23(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=95;
v0=a0;
v1=v0.m_shape;
return v1;
}
//org/jbox2d/dynamics/Fixture:isSensor
function _8f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=105;
v0=a0;
v1=v0.m_isSensor;
return v1;
}
//org/jbox2d/dynamics/Fixture:getFilterData
function _90(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=139;
v0=a0;
v1=v0.m_filter;
return v1;
}
//org/jbox2d/dynamics/Fixture:getBody
function _24(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=183;
v0=a0;
v1=v0.m_body;
return v1;
}
//org/jbox2d/dynamics/Fixture:getMassData
function _91(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=253;
v0=a0;
v1=a1;
v2=v0.m_shape;
v3=v0.m_density;
v2.$c.$vt[19](v2,v1,v3);
$f.l=254;
return;
}
//org/jbox2d/dynamics/Fixture:create
function _92(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=318;
		v0=a0;
		v1=a1;
		v2=a2;
		v8=v2.userData;
		v0.m_userData=v8;
		$f.l=319;
		v9=v2.friction;
		v0.m_friction=v9;
		$f.l=320;
		v9=v2.restitution;
		v0.m_restitution=v9;
		$f.l=322;
		v0.m_body=v1;
		$f.l=323;
		v0.m_next=null;
		$f.l=326;
		v10=v0.m_filter;
		v11=v2.filter;
		_93(v10,v11);
		$f.l=328;
		v12=v2.isSensor;
		v0.m_isSensor=v12;
		$f.l=330;
		v13=v2.shape;
		v13=v13.$c.$vt[17](v13);
		;
		v0.m_shape=v13;
		$f.l=333;
		v13=v0.m_shape;
		v3=v13.$c.$vt[16](v13);
		;
		$f.l=334;
		v14=v0.m_proxies;
		if(v14!=null) {$b=55; break;}
		$f.l=335;
		v14=newArray(10,v3);
		v0.m_proxies=v14;
		$f.l=336;
		v4=0;
	case 38:
		if(v4>=v3) {$b=55; break;}
		$f.l=337;
		v14=v0.m_proxies;
		v5=new org/jbox2d/dynamics/FixtureProxy;
		_94(v5);
		v14[v4]=v5;
		$f.l=338;
		v14=v0.m_proxies;
		v5=v14[v4];
		v5.fixture=null;
		$f.l=339;
		v14=v0.m_proxies;
		v5=v14[v4];
		v5.proxyId=-1;
		$f.l=336;
		v4=(v4 + 1)|0;
		{ $b=38; break; }
	case 55:
		$f.l=343;
		v14=v0.m_proxies;
		v15=v14.len;
		if(v15>=v3) {$b=94; break;}
		$f.l=344;
		v16=v0.m_proxies;
		$f.l=345;
		v15=v16.len;
		v15=(v15 * 2)|0;
		v6=_22(v15,v3);
		;
		$f.l=346;
		v14=newArray(10,v6);
		v0.m_proxies=v14;
		$f.l=347;
		v14=v0.m_proxies;
		v15=v16.len;
		_15(v16,0,v14,0,v15);
		$f.l=348;
		v7=0;
	case 74:
		if(v7>=v6) {$b=94; break;}
		$f.l=349;
		v15=v16.len;
		if(v7<v15) {$b=83; break;}
		$f.l=350;
		v14=v0.m_proxies;
		v5=new org/jbox2d/dynamics/FixtureProxy;
		_94(v5);
		v14[v7]=v5;
	case 83:
		$f.l=352;
		v14=v0.m_proxies;
		v5=v14[v7];
		v5.fixture=null;
		$f.l=353;
		v14=v0.m_proxies;
		v5=v14[v7];
		v5.proxyId=-1;
		$f.l=348;
		v7=(v7 + 1)|0;
		{ $b=74; break; }
	case 94:
		$f.l=356;
		v0.m_proxyCount=0;
		$f.l=358;
		v9=v2.density;
		v0.m_density=v9;
		$f.l=359;
		return;
}
}
//org/jbox2d/dynamics/Fixture:createProxies
function _95(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=376;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g14;
		if(v3!=0) {$b=11; break;}
		v6=v0.m_proxyCount;
		if(v6==0) {$b=11; break;}
		v7=new java/lang/AssertionError;
		_26(v7);
		throw v7;
	case 11:
		$f.l=379;
		v8=v0.m_shape;
		v6=v8.$c.$vt[16](v8);
		;
		v0.m_proxyCount=v6;
		$f.l=381;
		v4=0;
	case 17:
		v6=v0.m_proxyCount;
		if(v4>=v6) {$b=37; break;}
		$f.l=382;
		v9=v0.m_proxies;
		v5=v9[v4];
		$f.l=383;
		v8=v0.m_shape;
		v10=v5.aabb;
		v8.$c.$vt[18](v8,v10,v2,v4);
		$f.l=384;
		v10=v5.aabb;
		v6=_96(v1,v10,v5);
		;
		v5.proxyId=v6;
		$f.l=385;
		v5.fixture=v0;
		$f.l=386;
		v5.childIndex=v4;
		$f.l=381;
		v4=(v4 + 1)|0;
		{ $b=17; break; }
	case 37:
		$f.l=388;
		return;
}
}
//org/jbox2d/dynamics/Fixture:synchronize
function _97(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=419;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v8=v0.m_proxyCount;
		if(v8!=0) {$b=9; break;}
		$f.l=420;
		return;
	case 9:
		$f.l=423;
		v4=0;
	case 11:
		v8=v0.m_proxyCount;
		if(v4>=v8) {$b=112; break;}
		$f.l=424;
		v9=v0.m_proxies;
		v5=v9[v4];
		$f.l=427;
		v6=v0.pool1;
		$f.l=428;
		v7=v0.pool2;
		$f.l=429;
		v10=v0.m_shape;
		v8=v5.childIndex;
		v10.$c.$vt[18](v10,v6,v2,v8);
		$f.l=430;
		v10=v0.m_shape;
		v8=v5.childIndex;
		v10.$c.$vt[18](v10,v7,v3,v8);
		$f.l=432;
		v11=v5.aabb;
		v12=v11.lowerBound;
		v13=v6.lowerBound;
		v14=v13.x;
		v13=v7.lowerBound;
		v15=v13.x;
		v16=(v14 != v14 || v15 != v15) ? 1 : (v14 > v15) - (v14 < v15);
		if(v16>=0) {$b=40; break;}
		v13=v6.lowerBound;
		v15=v13.x;
		{ $b=42; break; }
	case 40:
		v13=v7.lowerBound;
		v15=v13.x;
	case 42:
		v12.x=v15;
		$f.l=433;
		v11=v5.aabb;
		v13=v11.lowerBound;
		v12=v6.lowerBound;
		v15=v12.y;
		v12=v7.lowerBound;
		v14=v12.y;
		v16=(v15 != v15 || v14 != v14) ? 1 : (v15 > v14) - (v15 < v14);
		if(v16>=0) {$b=55; break;}
		v12=v6.lowerBound;
		v15=v12.y;
		{ $b=57; break; }
	case 55:
		v12=v7.lowerBound;
		v15=v12.y;
	case 57:
		v13.y=v15;
		$f.l=434;
		v11=v5.aabb;
		v13=v11.upperBound;
		v12=v6.upperBound;
		v15=v12.x;
		v12=v7.upperBound;
		v14=v12.x;
		v16=(v15 != v15 || v14 != v14) ? -1 : (v15 > v14) - (v15 < v14);
		if(v16<=0) {$b=70; break;}
		v12=v6.upperBound;
		v15=v12.x;
		{ $b=72; break; }
	case 70:
		v12=v7.upperBound;
		v15=v12.x;
	case 72:
		v13.x=v15;
		$f.l=435;
		v11=v5.aabb;
		v13=v11.upperBound;
		v12=v6.upperBound;
		v15=v12.y;
		v12=v7.upperBound;
		v14=v12.y;
		v16=(v15 != v15 || v14 != v14) ? -1 : (v15 > v14) - (v15 < v14);
		if(v16<=0) {$b=85; break;}
		v12=v6.upperBound;
		v15=v12.y;
		{ $b=87; break; }
	case 85:
		v12=v7.upperBound;
		v15=v12.y;
	case 87:
		v13.y=v15;
		$f.l=436;
		v13=v0.displacement;
		v12=v3.p;
		v15=v12.x;
		v12=v2.p;
		v14=v12.x;
		v15=v15 - v14;
		v13.x=v15;
		$f.l=437;
		v13=v0.displacement;
		v12=v3.p;
		v15=v12.y;
		v12=v2.p;
		v14=v12.y;
		v15=v15 - v14;
		v13.y=v15;
		$f.l=439;
		v8=v5.proxyId;
		v11=v5.aabb;
		v13=v0.displacement;
		_98(v1,v8,v11,v13);
		$f.l=423;
		v4=(v4 + 1)|0;
		{ $b=11; break; }
	case 112:
		$f.l=441;
		return;
}
}
//org/jbox2d/dynamics/Fixture:<clinit>
function _99(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=48;
		v0=vm.getClass(11);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g14=v1;
		return;
}
}
//org/jbox2d/pooling/normal/OrderedStack:<init>
function _9a(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=39;
		v0=a0;
		v1=a1;
		v2=a2;
		_0(v0);
		$f.l=40;
		v0.size=v1;
		$f.l=41;
		v4=newArray(0,v1);
		v0.pool=v4;
		$f.l=42;
		v3=0;
	case 12:
		if(v3>=v1) {$b=20; break;}
		$f.l=43;
		v4=v0.pool;
		v5=v0.$c.$vt[15](v0);
		;
		v4[v3]=v5;
		$f.l=42;
		v3=(v3 + 1)|0;
		{ $b=12; break; }
	case 20:
		$f.l=45;
		v0.index=0;
		$f.l=46;
		v4=newArray(0,v2);
		v0.container=v4;
		$f.l=47;
		return;
}
}
//org/jbox2d/pooling/normal/OrderedStack:pop
function _9b(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=51;
		v0=a0;
		v1=$g15;
		if(v1!=0) {$b=10; break;}
		v2=v0.index;
		v3=v0.size;
		if(v2<v3) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_9c(v4,$str6);
		throw v4;
	case 10:
		$f.l=52;
		v5=v0.pool;
		v6=v0;
		v2=v0.index;
		v3=(v2 + 1)|0;
		v0.index=v3;
		v7=v5[v2];
		return v7;
}
}
//org/jbox2d/pooling/normal/OrderedStack:push
function _9d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=65;
		v0=a0;
		v1=a1;
		v2=v0;
		v3=v0.index;
		v3=(v3 - v1)|0;
		v0.index=v3;
		$f.l=66;
		v4=$g15;
		if(v4!=0) {$b=15; break;}
		v3=v0.index;
		if(v3>=0) {$b=15; break;}
		v5=new java/lang/AssertionError;
		_9c(v5,$str7);
		throw v5;
	case 15:
		$f.l=67;
		return;
}
}
//org/jbox2d/pooling/normal/OrderedStack:<clinit>
function _9e(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=32;
		v0=vm.getClass(12);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g15=v1;
		return;
}
}
//cava/c/WCharPtr:from
function _9f(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=v0.value;
v2=v0.offset;
v3=_a0(v1,v2);
;
return v3;
}
//cava/c/WCharPtr:from
function _a0(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=a1;
v2=newArray(0,2);
v2[0]=v0;
v3=_a1(v1);
;
v2[1]=v3;
v4=_a2($str8,v2);
;
return v4;
}
//org/jbox2d/collision/RayCastInput:<init>
function _a3(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
_0(v0);
$f.l=37;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.p1=v1;
$f.l=38;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.p2=v1;
$f.l=39;
v0.maxFraction=0.0;
$f.l=40;
return;
}
//org/jbox2d/collision/Distance$SimplexVertex:<init>
function _a4(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=a1;
v0.this$0=v1;
_0(v0);
$f.l=54;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.wA=v2;
$f.l=55;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.wB=v2;
$f.l=56;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.w=v2;
return;
}
//org/jbox2d/collision/Distance$SimplexVertex:set
function _a5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=62;
v0=a0;
v1=a1;
v2=v0.wA;
v3=v1.wA;
v3=_28(v2,v3);
;
$f.l=63;
v3=v0.wB;
v2=v1.wB;
v3=_28(v3,v2);
;
$f.l=64;
v3=v0.w;
v2=v1.w;
v3=_28(v3,v2);
;
$f.l=65;
v4=v1.a;
v0.a=v4;
$f.l=66;
v5=v1.indexA;
v0.indexA=v5;
$f.l=67;
v5=v1.indexB;
v0.indexB=v5;
$f.l=68;
return;
}
//org/jbox2d/collision/Distance$SimplexVertex:<init>
function _a6(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=a1;
v2=a2;
_a4(v0,v1);
return;
}
//org/jbox2d/common/Settings:<clinit>
function _a7(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=39;
$g16=1;
$f.l=40;
$g17=1;
$f.l=41;
$g18=1;
$f.l=42;
$g19=1;
$f.l=43;
$g20=1;
$f.l=45;
$g21=10;
$f.l=46;
$g22=1;
$f.l=72;
v0=_a8(57119.86598277577);
;
v1=v0|0;
$g23=v1;
$f.l=78;
$g24=0;
$f.l=164;
$g25=2.4674013;
return;
}
//org/jbox2d/dynamics/contacts/ContactEdge:<init>
function _a9(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
_0(v0);
$f.l=40;
v0.other=null;
$f.l=45;
v0.contact=null;
$f.l=50;
v0.prev=null;
$f.l=55;
v0.next=null;
return;
}
//org/jbox2d/collision/DistanceOutput:<init>
function _43(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=32;
v0=a0;
_0(v0);
$f.l=34;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.pointA=v1;
$f.l=37;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.pointB=v1;
return;
}
//java/lang/reflect/Field:<init>
function _aa(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
_0(v0);
return;
}
//java/lang/reflect/Field:getName
function _ab(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/reflect/Field:getModifiers
function _ac(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
v1=v0.modifiers;
return v1;
}
//java/lang/reflect/Field:getType
function _ad(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=v0.type;
return v1;
}
//java/lang/reflect/Field:getDeclaringClass
function _ae(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=v0.declaringClass;
return v1;
}
//java/lang/reflect/Field:setAccessible
function _af(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=a1;
return;
}
//java/lang/reflect/Field:getSafeLong
function _b0(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=55;
		v0=a0;
		v1=a1;
		v3=v0.modifiers;
		v4=_b1(v3);
		;
		if(v4==0) {$b=8; break;}
		v5=v0.address;
		{ $b=14; break; }
	case 8:
		v6=newArray(0,2);
		v6[0]=v1;
		v5=v0.address;
		v6[1]=v5;
		$f.l=57;
		v5=_6b($str9,v6);
		;
	case 14:
		v2=v5;
		$f.l=59;
		v7=v0.type;
		v8=$g26;
		if(v7!=v8) {$b=24; break;}
		$f.l=60;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_6c($str10,v6);
		;
		return v9;
	case 24:
		$f.l=61;
		v8=v0.type;
		v7=$g27;
		if(v8!=v7) {$b=33; break;}
		$f.l=62;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_6c($str11,v6);
		;
		return v9;
	case 33:
		$f.l=63;
		v8=v0.type;
		v7=$g28;
		if(v8!=v7) {$b=42; break;}
		$f.l=64;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_6c($str12,v6);
		;
		return v9;
	case 42:
		$f.l=65;
		v8=v0.type;
		v7=$g29;
		if(v8!=v7) {$b=51; break;}
		$f.l=66;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_6c($str13,v6);
		;
		return v9;
	case 51:
		$f.l=67;
		v8=v0.type;
		v7=$g30;
		if(v8!=v7) {$b=60; break;}
		$f.l=68;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_6c($str14,v6);
		;
		return v9;
	case 60:
		$f.l=69;
		v8=v0.type;
		v7=$g31;
		if(v8!=v7) {$b=69; break;}
		$f.l=70;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_6c($str15,v6);
		;
		return v9;
	case 69:
		$f.l=71;
		return 0;
}
}
//java/lang/reflect/Field:setSafeLong
function _b2(vm,a0,a1,a2){
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
		v5=_b1(v4);
		;
		if(v5==0) {$b=9; break;}
		v6=v0.address;
		{ $b=15; break; }
	case 9:
		v7=newArray(0,2);
		v7[0]=v1;
		v6=v0.address;
		v7[1]=v6;
		$f.l=77;
		v6=_6b($str9,v7);
		;
	case 15:
		v3=v6;
		$f.l=78;
		v8=v0.type;
		v9=$g26;
		if(v8!=v9) {$b=26; break;}
		$f.l=79;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b3(v2);
		;
		v7[1]=v10;
		_b4($str16,v7);
	case 26:
		$f.l=80;
		v9=v0.type;
		v8=$g27;
		if(v9!=v8) {$b=36; break;}
		$f.l=81;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b3(v2);
		;
		v7[1]=v10;
		_b4($str17,v7);
	case 36:
		$f.l=82;
		v9=v0.type;
		v8=$g28;
		if(v9!=v8) {$b=46; break;}
		$f.l=83;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b3(v2);
		;
		v7[1]=v10;
		_b4($str18,v7);
	case 46:
		$f.l=84;
		v9=v0.type;
		v8=$g29;
		if(v9!=v8) {$b=56; break;}
		$f.l=85;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b3(v2);
		;
		v7[1]=v10;
		_b4($str19,v7);
	case 56:
		$f.l=86;
		v9=v0.type;
		v8=$g30;
		if(v9!=v8) {$b=66; break;}
		$f.l=87;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b3(v2);
		;
		v7[1]=v10;
		_b4($str20,v7);
	case 66:
		$f.l=88;
		v9=v0.type;
		v8=$g31;
		if(v9!=v8) {$b=76; break;}
		$f.l=89;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b3(v2);
		;
		v7[1]=v10;
		_b4($str21,v7);
	case 76:
		$f.l=90;
		return;
}
}
//java/lang/reflect/Field:getSafeDouble
function _b5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=93;
		v0=a0;
		v1=a1;
		v3=v0.modifiers;
		v4=_b1(v3);
		;
		if(v4==0) {$b=8; break;}
		v5=v0.address;
		{ $b=14; break; }
	case 8:
		v6=newArray(0,2);
		v6[0]=v1;
		v5=v0.address;
		v6[1]=v5;
		$f.l=95;
		v5=_6b($str9,v6);
		;
	case 14:
		v2=v5;
		$f.l=97;
		v7=v0.type;
		v8=$g32;
		if(v7!=v8) {$b=24; break;}
		$f.l=98;
		v6=newArray(0,1);
		v6[0]=v2;
		v9=_b6($str22,v6);
		;
		return v9;
	case 24:
		$f.l=99;
		v8=v0.type;
		v7=$g33;
		if(v8!=v7) {$b=34; break;}
		$f.l=100;
		v6=newArray(0,1);
		v6[0]=v2;
		v10=_b7($str23,v6);
		;
		v9=v10;
		return v9;
	case 34:
		$f.l=101;
		return 0.0;
}
}
//java/lang/reflect/Field:setSafeDouble
function _b8(vm,a0,a1,a2){
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
		v5=_b1(v4);
		;
		if(v5==0) {$b=9; break;}
		v6=v0.address;
		{ $b=15; break; }
	case 9:
		v7=newArray(0,2);
		v7[0]=v1;
		v6=v0.address;
		v7[1]=v6;
		$f.l=107;
		v6=_6b($str9,v7);
		;
	case 15:
		v3=v6;
		$f.l=108;
		v8=v0.type;
		v9=$g32;
		if(v8!=v9) {$b=26; break;}
		$f.l=109;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b9(v2);
		;
		v7[1]=v10;
		_b4($str24,v7);
	case 26:
		$f.l=110;
		v9=v0.type;
		v8=$g33;
		if(v9!=v8) {$b=36; break;}
		$f.l=111;
		v7=newArray(0,2);
		v7[0]=v3;
		v10=_b9(v2);
		;
		v7[1]=v10;
		_b4($str25,v7);
	case 36:
		$f.l=112;
		return;
}
}
//java/lang/reflect/Field:get
function _ba(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=115;
		v0=a0;
		v1=a1;
		v4=v0.type;
		v2=$g26;
		if(v4!=v2) {$b=12; break;}
		$f.l=116;
		v5=_b0(v0,v1);
		;
		v6=v5|0;
		v7=v6&0xff;
		v8=_bb(v7);
		;
		return v8;
	case 12:
		$f.l=117;
		v4=v0.type;
		v2=$g27;
		if(v4!=v2) {$b=25; break;}
		$f.l=118;
		v5=_b0(v0,v1);
		;
		v7=(v5 > 1) - (v5 < 1);
		if(v7!=0) {$b=22; break;}
		v9=1;
		{ $b=23; break; }
	case 22:
		v9=0;
	case 23:
		v10=_bc(v9);
		;
		return v10;
	case 25:
		$f.l=119;
		v4=v0.type;
		v2=$g28;
		if(v4!=v2) {$b=35; break;}
		$f.l=120;
		v5=_b0(v0,v1);
		;
		v6=v5|0;
		v11=v6&0xffff;
		v12=_bd(v11);
		;
		return v12;
	case 35:
		$f.l=121;
		v4=v0.type;
		v2=$g29;
		if(v4!=v2) {$b=45; break;}
		$f.l=122;
		v5=_b0(v0,v1);
		;
		v6=v5|0;
		v13=v6&0xffff;
		v14=_be(v13);
		;
		return v14;
	case 45:
		$f.l=123;
		v4=v0.type;
		v2=$g30;
		if(v4!=v2) {$b=54; break;}
		$f.l=124;
		v5=_b0(v0,v1);
		;
		v6=v5|0;
		v15=_a1(v6);
		;
		return v15;
	case 54:
		$f.l=125;
		v4=v0.type;
		v2=$g31;
		if(v4!=v2) {$b=62; break;}
		$f.l=126;
		v5=_b0(v0,v1);
		;
		v16=_b3(v5);
		;
		return v16;
	case 62:
		$f.l=127;
		v4=v0.type;
		v2=$g33;
		if(v4!=v2) {$b=71; break;}
		$f.l=128;
		v17=_b5(v0,v1);
		;
		v18=v17;
		v19=_bf(v18);
		;
		return v19;
	case 71:
		$f.l=129;
		v4=v0.type;
		v2=$g32;
		if(v4!=v2) {$b=79; break;}
		$f.l=130;
		v17=_b5(v0,v1);
		;
		v20=_b9(v17);
		;
		return v20;
	case 79:
		$f.l=132;
		v6=v0.modifiers;
		v9=_b1(v6);
		;
		if(v9==0) {$b=85; break;}
		v21=v0.address;
		{ $b=91; break; }
	case 85:
		v22=newArray(0,2);
		v22[0]=v1;
		v21=v0.address;
		v22[1]=v21;
		$f.l=134;
		v21=_6b($str9,v22);
		;
	case 91:
		v3=v21;
		$f.l=136;
		v22=newArray(0,1);
		v22[0]=v3;
		v23=_16($str26,v22);
		;
		return v23;
}
}
//java/lang/reflect/Field:set
function _c0(vm,a0,a1,a2){
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
		v3=$g33;
		if(v5==v3) {$b=10; break;}
		v5=v0.type;
		v3=$g32;
		if(v5!=v3) {$b=19; break;}
	case 10:
		$f.l=141;
		if(v2==null) {$b=122; break;}
		v6=vm.is(v2,13);
		if(v6==0) {$b=122; break;}
		$f.l=142;
		v7=vm.cast(v2,13);
		v8=v7.$c.$vt[14](v7);
		;
		_b8(v0,v1,v8);
		{ $b=122; break; }
	case 19:
		$f.l=143;
		v5=v0.type;
		v3=$g26;
		if(v5==v3) {$b=32; break;}
		v5=v0.type;
		v3=$g29;
		if(v5==v3) {$b=32; break;}
		v5=v0.type;
		v3=$g30;
		if(v5==v3) {$b=32; break;}
		v5=v0.type;
		v3=$g31;
		if(v5!=v3) {$b=41; break;}
	case 32:
		$f.l=144;
		if(v2==null) {$b=122; break;}
		v6=vm.is(v2,13);
		if(v6==0) {$b=122; break;}
		$f.l=145;
		v7=vm.cast(v2,13);
		v9=v7.$c.$vt[10](v7);
		;
		_b2(v0,v1,v9);
		{ $b=122; break; }
	case 41:
		$f.l=146;
		v5=v0.type;
		v3=$g27;
		if(v5!=v3) {$b=60; break;}
		$f.l=147;
		if(v2==null) {$b=122; break;}
		v6=vm.is(v2,14);
		if(v6==0) {$b=122; break;}
		$f.l=148;
		v10=v0;
		v11=v1;
		v12=vm.cast(v2,14);
		v6=_c1(v12);
		;
		if(v6==0) {$b=57; break;}
		v9=1;
		{ $b=58; break; }
	case 57:
		v9=0;
	case 58:
		_b2(v0,v1,v9);
		{ $b=122; break; }
	case 60:
		$f.l=149;
		v5=v0.type;
		v3=$g28;
		if(v5!=v3) {$b=83; break;}
		$f.l=150;
		if(v2==null) {$b=122; break;}
		$f.l=151;
		v6=vm.is(v2,15);
		if(v6==0) {$b=75; break;}
		$f.l=152;
		v13=vm.cast(v2,15);
		v14=_c2(v13);
		;
		v9=Math.floor(v14);
		_b2(v0,v1,v9);
		{ $b=122; break; }
	case 75:
		$f.l=153;
		v6=vm.is(v2,13);
		if(v6==0) {$b=122; break;}
		$f.l=154;
		v7=vm.cast(v2,13);
		v9=v7.$c.$vt[10](v7);
		;
		_b2(v0,v1,v9);
		{ $b=122; break; }
	case 83:
		$f.l=158;
		if(v2==null) {$b=104; break;}
		v5=v0.type;
		v3=_2(v2);
		;
		v6=_c3(v5,v3);
		;
		if(v6!=0) {$b=104; break;}
		$f.l=159;
		v15=new java/lang/ClassCastException;
		v16=new java/lang/StringBuilder;
		_9(v16);
		v16=_b(v16,$str27);
		;
		v5=_2(v2);
		;
		v17=_a(v5);
		;
		v16=_b(v16,v17);
		;
		v16=_b(v16,$str28);
		;
		v5=v0.type;
		v17=_a(v5);
		;
		v16=_b(v16,v17);
		;
		v17=v16.$c.$vt[0](v16);
		;
		_c4(v15,v17);
		throw v15;
	case 104:
		$f.l=160;
		v18=v0.modifiers;
		v6=_b1(v18);
		;
		if(v6==0) {$b=110; break;}
		v19=v0.address;
		{ $b=116; break; }
	case 110:
		v20=newArray(0,2);
		v20[0]=v1;
		v19=v0.address;
		v20[1]=v19;
		$f.l=162;
		v19=_6b($str9,v20);
		;
	case 116:
		v4=v19;
		$f.l=163;
		v20=newArray(0,2);
		v20[0]=v4;
		v20[1]=v2;
		_b4($str29,v20);
	case 122:
		$f.l=165;
		return;
}
}
//java/lang/reflect/Field:getByte
function _c5(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=168;
v0=a0;
v1=a1;
v2=_b0(v0,v1);
;
v3=v2|0;
v4=v3&0xff;
return v4;
}
//java/lang/reflect/Field:setByte
function _c6(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=172;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_b2(v0,v1,v3);
$f.l=173;
return;
}
//java/lang/reflect/Field:getChar
function _c7(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=176;
v0=a0;
v1=a1;
v2=_b0(v0,v1);
;
v3=v2|0;
v4=v3&0xffff;
return v4;
}
//java/lang/reflect/Field:setChar
function _c8(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=179;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_b2(v0,v1,v3);
$f.l=180;
return;
}
//java/lang/reflect/Field:getBoolean
function _c9(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=183;
		v0=a0;
		v1=a1;
		v2=_b0(v0,v1);
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
function _ca(vm,a0,a1,a2){
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
		_b2(v0,v1,v5);
		$f.l=187;
		return;
}
}
//java/lang/reflect/Field:getShort
function _cb(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=190;
v0=a0;
v1=a1;
v2=_b0(v0,v1);
;
v3=v2|0;
v4=v3&0xffff;
return v4;
}
//java/lang/reflect/Field:setShort
function _cc(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=193;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_b2(v0,v1,v3);
$f.l=194;
return;
}
//java/lang/reflect/Field:getInt
function _cd(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=197;
v0=a0;
v1=a1;
v2=_b0(v0,v1);
;
v3=v2|0;
return v3;
}
//java/lang/reflect/Field:setInt
function _ce(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=200;
v0=a0;
v1=a1;
v2=a2;
v3=Math.floor(v2);
_b2(v0,v1,v3);
$f.l=201;
return;
}
//java/lang/reflect/Field:getLong
function _cf(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=204;
v0=a0;
v1=a1;
v2=_b0(v0,v1);
;
return v2;
}
//java/lang/reflect/Field:setLong
function _d0(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=207;
v0=a0;
v1=a1;
v2=a2;
_b2(v0,v1,v2);
$f.l=208;
return;
}
//java/lang/reflect/Field:getFloat
function _d1(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=211;
v0=a0;
v1=a1;
v2=_b5(v0,v1);
;
v3=v2;
return v3;
}
//java/lang/reflect/Field:setFloat
function _d2(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=214;
v0=a0;
v1=a1;
v2=a2;
v3=v2;
_b8(v0,v1,v3);
$f.l=215;
return;
}
//java/lang/reflect/Field:getDouble
function _d3(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=218;
v0=a0;
v1=a1;
v2=_b5(v0,v1);
;
return v2;
}
//java/lang/reflect/Field:setDouble
function _d4(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=221;
v0=a0;
v1=a1;
v2=a2;
_b8(v0,v1,v2);
$f.l=222;
return;
}
//org/jbox2d/collision/Collision$ClipVertex:<init>
function _47(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=1000;
v0=a0;
_0(v0);
$f.l=1001;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.v=v1;
$f.l=1002;
v2=new org/jbox2d/collision/ContactID;
_45(v2);
v0.id=v2;
$f.l=1003;
return;
}
//org/jbox2d/collision/Collision$ClipVertex:set
function _4e(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
$f.l=1006;
v0=a0;
v1=a1;
v2=v1.v;
$f.l=1007;
v4=v0.v;
v5=v2.x;
v4.x=v5;
$f.l=1008;
v4=v0.v;
v5=v2.y;
v4.y=v5;
$f.l=1009;
v3=v1.id;
$f.l=1010;
v6=v0.id;
v7=v3.indexA;
v6.indexA=v7;
$f.l=1011;
v6=v0.id;
v7=v3.indexB;
v6.indexB=v7;
$f.l=1012;
v6=v0.id;
v7=v3.typeA;
v6.typeA=v7;
$f.l=1013;
v6=v0.id;
v7=v3.typeB;
v6.typeB=v7;
$f.l=1014;
return;
}
//org/jbox2d/dynamics/joints/Joint:create
function _d5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27;
var $f=vm.frames[vm.fp++];
$f.l=43;
v0=a0;
v1=a1;
v2=$g34;
v3=v1.type;
v4=_4f(v3);
;
v4=v2[v4];
switch(v4){
case 1: $b=8;break;
case 2: $b=14;break;
case 3: $b=20;break;
case 4: $b=26;break;
case 5: $b=32;break;
case 6: $b=38;break;
case 7: $b=44;break;
case 8: $b=50;break;
case 9: $b=56;break;
case 10: $b=62;break;
case 11: $b=67;break;
case 12: $b=73;break;
}
case 8:
	$f.l=45;
	v5=new org/jbox2d/dynamics/joints/MouseJoint;
	v6=_d6(v0);
	;
	v7=vm.cast(v1,16);
	_d7(v5,v6,v7);
	return v5;
case 14:
	$f.l=47;
	v8=new org/jbox2d/dynamics/joints/DistanceJoint;
	v6=_d6(v0);
	;
	v9=vm.cast(v1,17);
	_d8(v8,v6,v9);
	return v8;
case 20:
	$f.l=49;
	v10=new org/jbox2d/dynamics/joints/PrismaticJoint;
	v6=_d6(v0);
	;
	v11=vm.cast(v1,18);
	_d9(v10,v6,v11);
	return v10;
case 26:
	$f.l=51;
	v12=new org/jbox2d/dynamics/joints/RevoluteJoint;
	v6=_d6(v0);
	;
	v13=vm.cast(v1,19);
	_da(v12,v6,v13);
	return v12;
case 32:
	$f.l=53;
	v14=new org/jbox2d/dynamics/joints/WeldJoint;
	v6=_d6(v0);
	;
	v15=vm.cast(v1,20);
	_db(v14,v6,v15);
	return v14;
case 38:
	$f.l=55;
	v16=new org/jbox2d/dynamics/joints/FrictionJoint;
	v6=_d6(v0);
	;
	v17=vm.cast(v1,21);
	_dc(v16,v6,v17);
	return v16;
case 44:
	$f.l=57;
	v18=new org/jbox2d/dynamics/joints/WheelJoint;
	v6=_d6(v0);
	;
	v19=vm.cast(v1,22);
	_dd(v18,v6,v19);
	return v18;
case 50:
	$f.l=59;
	v20=new org/jbox2d/dynamics/joints/GearJoint;
	v6=_d6(v0);
	;
	v21=vm.cast(v1,23);
	_de(v20,v6,v21);
	return v20;
case 56:
	$f.l=61;
	v22=new org/jbox2d/dynamics/joints/PulleyJoint;
	v6=_d6(v0);
	;
	v23=vm.cast(v1,24);
	_df(v22,v6,v23);
	return v22;
case 62:
	$f.l=63;
	v24=new org/jbox2d/dynamics/joints/ConstantVolumeJoint;
	v25=vm.cast(v1,25);
	_e0(v24,v0,v25);
	return v24;
case 67:
	$f.l=65;
	v26=new org/jbox2d/dynamics/joints/RopeJoint;
	v6=_d6(v0);
	;
	v27=vm.cast(v1,26);
	_e1(v26,v6,v27);
	return v26;
case 73:
	$f.l=68;
	return null;
	}
	//org/jbox2d/dynamics/joints/Joint:<init>
	function _e2(vm,a0,a1,a2){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=96;
			v0=a0;
			v1=a1;
			v2=a2;
			_0(v0);
			$f.l=97;
			v3=$g35;
			if(v3!=0) {$b=14; break;}
			v4=v2.bodyA;
			v5=v2.bodyB;
			if(v4!=v5) {$b=14; break;}
			v6=new java/lang/AssertionError;
			_26(v6);
			throw v6;
		case 14:
			$f.l=99;
			v0.pool=v1;
			$f.l=100;
			v7=v2.type;
			v0.m_type=v7;
			$f.l=101;
			v0.m_prev=null;
			$f.l=102;
			v0.m_next=null;
			$f.l=103;
			v5=v2.bodyA;
			v0.m_bodyA=v5;
			$f.l=104;
			v5=v2.bodyB;
			v0.m_bodyB=v5;
			$f.l=105;
			v3=v2.collideConnected;
			v0.m_collideConnected=v3;
			$f.l=106;
			v0.m_islandFlag=0;
			$f.l=107;
			v8=v2.userData;
			v0.m_userData=v8;
			$f.l=109;
			v9=new org/jbox2d/dynamics/joints/JointEdge;
			_e3(v9);
			v0.m_edgeA=v9;
			$f.l=110;
			v9=v0.m_edgeA;
			v9.joint=null;
			$f.l=111;
			v9=v0.m_edgeA;
			v9.other=null;
			$f.l=112;
			v9=v0.m_edgeA;
			v9.prev=null;
			$f.l=113;
			v9=v0.m_edgeA;
			v9.next=null;
			$f.l=115;
			v9=new org/jbox2d/dynamics/joints/JointEdge;
			_e3(v9);
			v0.m_edgeB=v9;
			$f.l=116;
			v9=v0.m_edgeB;
			v9.joint=null;
			$f.l=117;
			v9=v0.m_edgeB;
			v9.other=null;
			$f.l=118;
			v9=v0.m_edgeB;
			v9.prev=null;
			$f.l=119;
			v9=v0.m_edgeB;
			v9.next=null;
			$f.l=123;
			return;
	}
	}
	//org/jbox2d/dynamics/joints/Joint:getType
	function _e4(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=131;
	v0=a0;
	v1=v0.m_type;
	return v1;
	}
	//org/jbox2d/dynamics/joints/Joint:getBodyA
	function _e5(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=138;
	v0=a0;
	v1=v0.m_bodyA;
	return v1;
	}
	//org/jbox2d/dynamics/joints/Joint:getBodyB
	function _e6(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=147;
	v0=a0;
	v1=v0.m_bodyB;
	return v1;
	}
	//org/jbox2d/dynamics/joints/Joint:getCollideConnected
	function _e7(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=205;
	v0=a0;
	v1=v0.m_collideConnected;
	return v1;
	}
	//org/jbox2d/dynamics/joints/Joint:<clinit>
	function _e8(vm){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=39;
			v0=vm.getClass(27);
			v1=_3f(v0);
			;
			if(v1!=0) {$b=6; break;}
			v1=1;
			{ $b=7; break; }
		case 6:
			v1=0;
		case 7:
			$g35=v1;
			return;
	}
	}
	//org/jbox2d/dynamics/World:<init>
	function _e9(vm,a0,a1){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	$f.l=130;
	v0=a0;
	v1=a1;
	v2=new org/jbox2d/pooling/normal/DefaultWorldPool;
	_ea(v2,100,10);
	_eb(v0,v1,v2);
	$f.l=131;
	return;
	}
	//org/jbox2d/dynamics/World:<init>
	function _eb(vm,a0,a1,a2){
	var v0,v1,v2,v3;
	var $f=vm.frames[vm.fp++];
	$f.l=139;
	v0=a0;
	v1=a1;
	v2=a2;
	v3=new org/jbox2d/collision/broadphase/DynamicTree;
	_ec(v3);
	_ed(v0,v1,v2,v3);
	$f.l=140;
	return;
	}
	//org/jbox2d/dynamics/World:<init>
	function _ed(vm,a0,a1,a2,a3){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
	var $f=vm.frames[vm.fp++];
	$f.l=142;
	v0=a0;
	v1=a1;
	v2=a2;
	v3=a3;
	_0(v0);
	$f.l=83;
	v0.activeContacts=0;
	$f.l=84;
	v0.contactPoolCount=0;
	$f.l=96;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.m_gravity=v4;
	$f.l=121;
	v5=_7b();
	;
	v6=v5.len;
	v5=_7b();
	;
	v7=v5.len;
	v8=newMultiArray(28,v6,v7);
	v0.contactStacks=v8;
	$f.l=554;
	v9=new org/jbox2d/dynamics/TimeStep;
	_ee(v9);
	v0.step=v9;
	$f.l=555;
	v10=new org/jbox2d/common/Timer;
	_ef(v10);
	v0.stepTimer=v10;
	$f.l=556;
	v10=new org/jbox2d/common/Timer;
	_ef(v10);
	v0.tempTimer=v10;
	$f.l=637;
	v11=new org/jbox2d/common/Color3f;
	_f0(v11);
	v0.color=v11;
	$f.l=638;
	v12=new org/jbox2d/common/Transform;
	_1c(v12);
	v0.xf=v12;
	$f.l=639;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.cA=v4;
	$f.l=640;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.cB=v4;
	$f.l=641;
	v13=new org/jbox2d/pooling/arrays/Vec2Array;
	_f1(v13);
	v0.avs=v13;
	$f.l=730;
	v14=new org/jbox2d/dynamics/WorldQueryWrapper;
	_f2(v14);
	v0.wqwrapper=v14;
	$f.l=744;
	v15=new org/jbox2d/dynamics/WorldRayCastWrapper;
	_f3(v15);
	v0.wrcwrapper=v15;
	$f.l=745;
	v16=new org/jbox2d/collision/RayCastInput;
	_a3(v16);
	v0.input=v16;
	$f.l=958;
	v17=new org/jbox2d/dynamics/Island;
	_f4(v17);
	v0.island=v17;
	$f.l=959;
	v18=newArray(29,10);
	v0.stack=v18;
	$f.l=960;
	v19=new org/jbox2d/dynamics/Profile;
	_f5(v19);
	v0.islandProfile=v19;
	$f.l=961;
	v10=new org/jbox2d/common/Timer;
	_ef(v10);
	v0.broadphaseTimer=v10;
	$f.l=1121;
	v17=new org/jbox2d/dynamics/Island;
	_f4(v17);
	v0.toiIsland=v17;
	$f.l=1122;
	v20=new org/jbox2d/collision/TimeOfImpact$TOIInput;
	_88(v20);
	v0.toiInput=v20;
	$f.l=1123;
	v21=new org/jbox2d/collision/TimeOfImpact$TOIOutput;
	_f6(v21);
	v0.toiOutput=v21;
	$f.l=1124;
	v9=new org/jbox2d/dynamics/TimeStep;
	_ee(v9);
	v0.subStep=v9;
	$f.l=1125;
	v18=newArray(29,2);
	v0.tempBodies=v18;
	$f.l=1126;
	v22=new org/jbox2d/common/Sweep;
	_8a(v22);
	v0.backup1=v22;
	$f.l=1127;
	v22=new org/jbox2d/common/Sweep;
	_8a(v22);
	v0.backup2=v22;
	$f.l=1454;
	v0.liquidLength=0.12;
	$f.l=1455;
	v0.averageLinearVel=-1.0;
	$f.l=1456;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.liquidOffset=v4;
	$f.l=1457;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.circCenterMoved=v4;
	$f.l=1458;
	v11=new org/jbox2d/common/Color3f;
	_f7(v11,0.4,0.4,1.0);
	v0.liquidColor=v11;
	$f.l=1460;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.center=v4;
	$f.l=1461;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.axis=v4;
	$f.l=1462;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.v1=v4;
	$f.l=1463;
	v4=new org/jbox2d/common/Vec2;
	_1a(v4);
	v0.v2=v4;
	$f.l=1464;
	v13=new org/jbox2d/pooling/arrays/Vec2Array;
	_f1(v13);
	v0.tlvertices=v13;
	$f.l=143;
	v0.pool=v2;
	$f.l=144;
	v0.m_destructionListener=null;
	$f.l=145;
	v0.m_debugDraw=null;
	$f.l=147;
	v0.m_bodyList=null;
	$f.l=148;
	v0.m_jointList=null;
	$f.l=150;
	v0.m_bodyCount=0;
	$f.l=151;
	v0.m_jointCount=0;
	$f.l=153;
	v0.m_warmStarting=1;
	$f.l=154;
	v0.m_continuousPhysics=1;
	$f.l=155;
	v0.m_subStepping=0;
	$f.l=156;
	v0.m_stepComplete=1;
	$f.l=158;
	v0.m_allowSleep=1;
	$f.l=159;
	v4=v0.m_gravity;
	v4=_28(v4,v1);
	;
	$f.l=161;
	v0.m_flags=4;
	$f.l=163;
	v0.m_inv_dt0=0.0;
	$f.l=165;
	v23=new org/jbox2d/dynamics/ContactManager;
	_f8(v23,v0,v3);
	v0.m_contactManager=v23;
	$f.l=166;
	v19=new org/jbox2d/dynamics/Profile;
	_f5(v19);
	v0.m_profile=v19;
	$f.l=168;
	_f9(v0);
	$f.l=169;
	return;
	}
	//org/jbox2d/dynamics/World:addType
	function _fa(vm,a0,a1,a2,a3){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=197;
			v0=a0;
			v1=a1;
			v2=a2;
			v3=a3;
			v4=new org/jbox2d/dynamics/contacts/ContactRegister;
			_fb(v4);
			v5=v4;
			$f.l=198;
			v5.creator=v1;
			$f.l=199;
			v5.primary=1;
			$f.l=200;
			v7=v0.contactStacks;
			v8=_4f(v2);
			;
			v9=v7[v8];
			v8=_4f(v3);
			;
			v9[v8]=v5;
			$f.l=202;
			if(v2==v3) {$b=34; break;}
			$f.l=203;
			v4=new org/jbox2d/dynamics/contacts/ContactRegister;
			_fb(v4);
			v6=v4;
			$f.l=204;
			v6.creator=v1;
			$f.l=205;
			v6.primary=0;
			$f.l=206;
			v7=v0.contactStacks;
			v8=_4f(v3);
			;
			v9=v7[v8];
			v8=_4f(v2);
			;
			v9[v8]=v6;
		case 34:
			$f.l=208;
			return;
	}
	}
	//org/jbox2d/dynamics/World:initializeRegisters
	function _f9(vm,a0){
	var v0,v1,v2,v3,v4;
	var $f=vm.frames[vm.fp++];
	$f.l=211;
	v0=a0;
	v3=v0.pool;
	v4=v3.$c.$it[45](v3);
	;
	v1=$g9;
	v2=$g9;
	_fa(v0,v4,v1,v2);
	$f.l=212;
	v3=v0.pool;
	v4=v3.$c.$it[48](v3);
	;
	v2=$g10;
	v1=$g9;
	_fa(v0,v4,v2,v1);
	$f.l=213;
	v3=v0.pool;
	v4=v3.$c.$it[46](v3);
	;
	v2=$g10;
	v1=$g10;
	_fa(v0,v4,v2,v1);
	$f.l=214;
	v3=v0.pool;
	v4=v3.$c.$it[31](v3);
	;
	v2=$g12;
	v1=$g9;
	_fa(v0,v4,v2,v1);
	$f.l=215;
	v3=v0.pool;
	v4=v3.$c.$it[42](v3);
	;
	v2=$g12;
	v1=$g10;
	_fa(v0,v4,v2,v1);
	$f.l=216;
	v3=v0.pool;
	v4=v3.$c.$it[29](v3);
	;
	v2=$g11;
	v1=$g9;
	_fa(v0,v4,v2,v1);
	$f.l=217;
	v3=v0.pool;
	v4=v3.$c.$it[35](v3);
	;
	v2=$g11;
	v1=$g10;
	_fa(v0,v4,v2,v1);
	$f.l=218;
	return;
	}
	//org/jbox2d/dynamics/World:popContact
	function _fc(vm,a0,a1,a2,a3,a4){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=221;
			v0=a0;
			v1=a1;
			v2=a2;
			v3=a3;
			v4=a4;
			v5=_8e(v1);
			;
			$f.l=222;
			v6=_8e(v3);
			;
			$f.l=224;
			v10=v0.contactStacks;
			v11=_4f(v5);
			;
			v12=v10[v11];
			v11=_4f(v6);
			;
			v7=v12[v11];
			$f.l=225;
			v8=v7.creator;
			$f.l=226;
			if(v8==null) {$b=36; break;}
			$f.l=227;
			v13=v7.primary;
			if(v13==0) {$b=29; break;}
			$f.l=228;
			v14=v8.$c.$it[26](v8);
			;
			v9=vm.cast(v14,30);
			$f.l=229;
			v9.$c.$vt[20](v9,v1,v2,v3,v4);
			$f.l=230;
			return v9;
		case 29:
			$f.l=232;
			v14=v8.$c.$it[26](v8);
			;
			v9=vm.cast(v14,30);
			$f.l=233;
			v9.$c.$vt[20](v9,v3,v4,v1,v2);
			$f.l=234;
			return v9;
		case 36:
			$f.l=237;
			return null;
	}
	}
	//org/jbox2d/dynamics/World:pushContact
	function _fd(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=242;
			v0=a0;
			v1=a1;
			v2=_fe(v1);
			;
			$f.l=243;
			v3=_ff(v1);
			;
			$f.l=245;
			v7=v1.m_manifold;
			v8=v7.pointCount;
			if(v8<=0) {$b=20; break;}
			v9=_8f(v2);
			;
			if(v9!=0) {$b=20; break;}
			v9=_8f(v3);
			;
			if(v9!=0) {$b=20; break;}
			$f.l=246;
			v10=_24(v2);
			;
			_100(v10,1);
			$f.l=247;
			v10=_24(v3);
			;
			_100(v10,1);
		case 20:
			$f.l=250;
			v4=_8e(v2);
			;
			$f.l=251;
			v5=_8e(v3);
			;
			$f.l=253;
			v11=v0.contactStacks;
			v8=_4f(v4);
			;
			v12=v11[v8];
			v8=_4f(v5);
			;
			v13=v12[v8];
			v6=v13.creator;
			$f.l=254;
			v6.$c.$it[27](v6,v1);
			$f.l=255;
			return;
	}
	}
	//org/jbox2d/dynamics/World:getPool
	function _d6(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=258;
	v0=a0;
	v1=v0.pool;
	return v1;
	}
	//org/jbox2d/dynamics/World:createBody
	function _101(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=307;
			v0=a0;
			v1=a1;
			v2=$g36;
			if(v2!=0) {$b=10; break;}
			v2=_102(v0);
			;
			if(v2==0) {$b=10; break;}
			v4=new java/lang/AssertionError;
			_26(v4);
			throw v4;
		case 10:
			$f.l=308;
			v2=_102(v0);
			;
			if(v2==0) {$b=15; break;}
			$f.l=309;
			return null;
		case 15:
			$f.l=312;
			v5=new org/jbox2d/dynamics/Body;
			_103(v5,v1,v0);
			v3=v5;
			$f.l=315;
			v3.m_prev=null;
			$f.l=316;
			v5=v0.m_bodyList;
			v3.m_next=v5;
			$f.l=317;
			v5=v0.m_bodyList;
			if(v5==null) {$b=30; break;}
			$f.l=318;
			v5=v0.m_bodyList;
			v5.m_prev=v3;
		case 30:
			$f.l=320;
			v0.m_bodyList=v3;
			$f.l=321;
			v6=v0;
			v7=v0.m_bodyCount;
			v7=(v7 + 1)|0;
			v0.m_bodyCount=v7;
			$f.l=323;
			return v3;
	}
	}
	//org/jbox2d/dynamics/World:createJoint
	function _104(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=409;
			v0=a0;
			v1=a1;
			v2=$g36;
			if(v2!=0) {$b=10; break;}
			v2=_102(v0);
			;
			if(v2==0) {$b=10; break;}
			v7=new java/lang/AssertionError;
			_26(v7);
			throw v7;
		case 10:
			$f.l=410;
			v2=_102(v0);
			;
			if(v2==0) {$b=15; break;}
			$f.l=411;
			return null;
		case 15:
			$f.l=414;
			v3=_d5(v0,v1);
			;
			$f.l=417;
			v3.m_prev=null;
			$f.l=418;
			v8=v0.m_jointList;
			v3.m_next=v8;
			$f.l=419;
			v8=v0.m_jointList;
			if(v8==null) {$b=28; break;}
			$f.l=420;
			v8=v0.m_jointList;
			v8.m_prev=v3;
		case 28:
			$f.l=422;
			v0.m_jointList=v3;
			$f.l=423;
			v9=v0;
			v10=v0.m_jointCount;
			v10=(v10 + 1)|0;
			v0.m_jointCount=v10;
			$f.l=426;
			v11=v3.m_edgeA;
			v11.joint=v3;
			$f.l=427;
			v11=v3.m_edgeA;
			v12=_e6(v3);
			;
			v11.other=v12;
			$f.l=428;
			v11=v3.m_edgeA;
			v11.prev=null;
			$f.l=429;
			v11=v3.m_edgeA;
			v12=_e5(v3);
			;
			v13=v12.m_jointList;
			v11.next=v13;
			$f.l=430;
			v12=_e5(v3);
			;
			v13=v12.m_jointList;
			if(v13==null) {$b=59; break;}
			$f.l=431;
			v12=_e5(v3);
			;
			v13=v12.m_jointList;
			v11=v3.m_edgeA;
			v13.prev=v11;
		case 59:
			$f.l=433;
			v12=_e5(v3);
			;
			v13=v3.m_edgeA;
			v12.m_jointList=v13;
			$f.l=435;
			v13=v3.m_edgeB;
			v13.joint=v3;
			$f.l=436;
			v13=v3.m_edgeB;
			v12=_e5(v3);
			;
			v13.other=v12;
			$f.l=437;
			v13=v3.m_edgeB;
			v13.prev=null;
			$f.l=438;
			v13=v3.m_edgeB;
			v12=_e6(v3);
			;
			v11=v12.m_jointList;
			v13.next=v11;
			$f.l=439;
			v12=_e6(v3);
			;
			v13=v12.m_jointList;
			if(v13==null) {$b=87; break;}
			$f.l=440;
			v12=_e6(v3);
			;
			v13=v12.m_jointList;
			v11=v3.m_edgeB;
			v13.prev=v11;
		case 87:
			$f.l=442;
			v12=_e6(v3);
			;
			v13=v3.m_edgeB;
			v12.m_jointList=v13;
			$f.l=444;
			v4=v1.bodyA;
			$f.l=445;
			v5=v1.bodyB;
			$f.l=448;
			v2=v1.collideConnected;
			if(v2!=0) {$b=111; break;}
			$f.l=449;
			v6=_105(v5);
			;
		case 100:
			$f.l=450;
			if(v6==null) {$b=111; break;}
			$f.l=451;
			v12=v6.other;
			if(v12!=v4) {$b=108; break;}
			$f.l=454;
			v14=v6.contact;
			_106(v14);
		case 108:
			$f.l=457;
			v6=v6.next;
			{ $b=100; break; }
		case 111:
			$f.l=463;
			return v3;
	}
	}
	//org/jbox2d/dynamics/World:step
	function _107(vm,a0,a1,a2,a3){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=566;
			v0=a0;
			v1=a1;
			v2=a2;
			v3=a3;
			v4=v0.stepTimer;
			_108(v4);
			$f.l=569;
			v5=v0.m_flags;
			v5=(v5 & 1)|0;
			if(v5!=1) {$b=19; break;}
			$f.l=571;
			v6=v0.m_contactManager;
			_109(v6);
			$f.l=572;
			v7=v0;
			v5=v0.m_flags;
			v5=(v5 & -2)|0;
			v0.m_flags=v5;
		case 19:
			$f.l=575;
			v7=v0;
			v5=v0.m_flags;
			v5=(v5 | 2)|0;
			v0.m_flags=v5;
			$f.l=577;
			v8=v0.step;
			v8.dt=v1;
			$f.l=578;
			v8=v0.step;
			v8.velocityIterations=v2;
			$f.l=579;
			v8=v0.step;
			v8.positionIterations=v3;
			$f.l=580;
			v9=(v1 != v1 || 0.0 != 0.0) ? -1 : (v1 > 0.0) - (v1 < 0.0);
			if(v9<=0) {$b=41; break;}
			$f.l=581;
			v8=v0.step;
			v10=1.0 / v1;
			v8.inv_dt=v10;
			{ $b=44; break; }
		case 41:
			$f.l=583;
			v8=v0.step;
			v8.inv_dt=0.0;
		case 44:
			$f.l=586;
			v8=v0.step;
			v10=v0.m_inv_dt0;
			v10=v10 * v1;
			v8.dtRatio=v10;
			$f.l=588;
			v8=v0.step;
			v11=v0.m_warmStarting;
			v8.warmStarting=v11;
			$f.l=591;
			v4=v0.tempTimer;
			_108(v4);
			$f.l=592;
			v6=v0.m_contactManager;
			_10a(v6);
			$f.l=593;
			v12=v0.m_profile;
			v4=v0.tempTimer;
			v10=_10b(v4);
			;
			v12.collide=v10;
			$f.l=596;
			v11=v0.m_stepComplete;
			if(v11==0) {$b=82; break;}
			v8=v0.step;
			v10=v8.dt;
			v9=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
			if(v9<=0) {$b=82; break;}
			$f.l=597;
			v4=v0.tempTimer;
			_108(v4);
			$f.l=598;
			v8=v0.step;
			_10c(v0,v8);
			$f.l=599;
			v12=v0.m_profile;
			v4=v0.tempTimer;
			v10=_10b(v4);
			;
			v12.solve=v10;
		case 82:
			$f.l=603;
			v11=v0.m_continuousPhysics;
			if(v11==0) {$b=100; break;}
			v8=v0.step;
			v10=v8.dt;
			v9=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
			if(v9<=0) {$b=100; break;}
			$f.l=604;
			v4=v0.tempTimer;
			_108(v4);
			$f.l=605;
			v8=v0.step;
			_10d(v0,v8);
			$f.l=606;
			v12=v0.m_profile;
			v4=v0.tempTimer;
			v10=_10b(v4);
			;
			v12.solveTOI=v10;
		case 100:
			$f.l=609;
			v8=v0.step;
			v10=v8.dt;
			v9=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
			if(v9<=0) {$b=109; break;}
			$f.l=610;
			v8=v0.step;
			v10=v8.inv_dt;
			v0.m_inv_dt0=v10;
		case 109:
			$f.l=613;
			v5=v0.m_flags;
			v5=(v5 & 4)|0;
			if(v5!=4) {$b=115; break;}
			$f.l=614;
			_10e(v0);
		case 115:
			$f.l=617;
			v7=v0;
			v5=v0.m_flags;
			v5=(v5 & -3)|0;
			v0.m_flags=v5;
			$f.l=620;
			v12=v0.m_profile;
			v4=v0.stepTimer;
			v10=_10b(v4);
			;
			v12.step=v10;
			$f.l=621;
			return;
	}
	}
	//org/jbox2d/dynamics/World:clearForces
	function _10e(vm,a0){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=631;
			v0=a0;
			v1=v0.m_bodyList;
		case 3:
			if(v1==null) {$b=12; break;}
			$f.l=632;
			v2=v1.m_force;
			_29(v2);
			$f.l=633;
			v1.m_torque=0.0;
			$f.l=631;
			v1=_10f(v1);
			;
			{ $b=3; break; }
		case 12:
			$f.l=635;
			return;
	}
	}
	//org/jbox2d/dynamics/World:isLocked
	function _102(vm,a0){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=920;
			v0=a0;
			v1=v0.m_flags;
			v1=(v1 & 2)|0;
			if(v1!=2) {$b=7; break;}
			v2=1;
			{ $b=8; break; }
		case 7:
			v2=0;
		case 8:
			return v2;
	}
	}
	//org/jbox2d/dynamics/World:solve
	function _10c(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=964;
			v0=a0;
			v1=a1;
			v11=v0.m_profile;
			v11.solveInit=0.0;
			$f.l=965;
			v11=v0.m_profile;
			v11.solveVelocity=0.0;
			$f.l=966;
			v11=v0.m_profile;
			v11.solvePosition=0.0;
			$f.l=969;
			v12=v0.island;
			v13=v0.m_bodyCount;
			v14=v0.m_contactManager;
			v15=v14.m_contactCount;
			v16=v0.m_jointCount;
			v14=v0.m_contactManager;
			v17=v14.m_contactListener;
			_110(v12,v13,v15,v16,v17);
			$f.l=973;
			v2=v0.m_bodyList;
		case 22:
			if(v2==null) {$b=31; break;}
			$f.l=974;
			v18=v2;
			v16=v2.m_flags;
			v16=(v16 & -2)|0;
			v2.m_flags=v16;
			$f.l=973;
			v2=v2.m_next;
			{ $b=22; break; }
		case 31:
			$f.l=976;
			v14=v0.m_contactManager;
			v19=v14.m_contactList;
		case 34:
			if(v19==null) {$b=43; break;}
			$f.l=977;
			v20=v19;
			v16=v19.m_flags;
			v16=(v16 & -2)|0;
			v19.m_flags=v16;
			$f.l=976;
			v19=v19.m_next;
			{ $b=34; break; }
		case 43:
			$f.l=979;
			v21=v0.m_jointList;
		case 45:
			if(v21==null) {$b=51; break;}
			$f.l=980;
			v21.m_islandFlag=0;
			$f.l=979;
			v21=v21.m_next;
			{ $b=45; break; }
		case 51:
			$f.l=984;
			v22=v0.m_bodyCount;
			$f.l=985;
			v23=v0.stack;
			v16=v23.len;
			if(v16>=v22) {$b=60; break;}
			$f.l=986;
			v23=newArray(29,v22);
			v0.stack=v23;
		case 60:
			$f.l=988;
			v3=v0.m_bodyList;
		case 62:
			if(v3==null) {$b=288; break;}
			$f.l=989;
			v16=v3.m_flags;
			v16=(v16 & 1)|0;
			if(v16!=1) {$b=69; break;}
			$f.l=990;
			{ $b=285; break; }
		case 69:
			$f.l=993;
			v24=_111(v3);
			;
			if(v24==0) {$b=285; break;}
			v24=_112(v3);
			;
			if(v24!=0) {$b=76; break;}
			$f.l=994;
			{ $b=285; break; }
		case 76:
			$f.l=998;
			v25=_113(v3);
			;
			v26=$g37;
			if(v25!=v26) {$b=82; break;}
			$f.l=999;
			{ $b=285; break; }
		case 82:
			$f.l=1003;
			v12=v0.island;
			_114(v12);
			$f.l=1004;
			v4=0;
			$f.l=1005;
			v23=v0.stack;
			v27=(v4 + 1)|0;
			v23[v4]=v3;
			$f.l=1006;
			v18=v3;
			v16=v3.m_flags;
			v16=(v16 | 1)|0;
			v3.m_flags=v16;
		case 96:
			$f.l=1009;
			if(v27<=0) {$b=237; break;}
			$f.l=1011;
			v23=v0.stack;
			v27=(v27 + -1)|0;
			v5=v23[v27];
			$f.l=1012;
			v24=$g36;
			if(v24!=0) {$b=110; break;}
			v24=_112(v5);
			;
			if(v24==1) {$b=110; break;}
			v28=new java/lang/AssertionError;
			_26(v28);
			throw v28;
		case 110:
			$f.l=1013;
			v12=v0.island;
			_115(v12,v5);
			$f.l=1016;
			_100(v5,1);
			$f.l=1020;
			v26=_113(v5);
			;
			v25=$g37;
			if(v26!=v25) {$b=121; break;}
			$f.l=1021;
			{ $b=96; break; }
		case 121:
			$f.l=1025;
			v6=v5.m_contactList;
		case 123:
			if(v6==null) {$b=186; break;}
			$f.l=1026;
			v7=v6.contact;
			$f.l=1029;
			v16=v7.m_flags;
			v16=(v16 & 1)|0;
			if(v16!=1) {$b=132; break;}
			$f.l=1030;
			{ $b=183; break; }
		case 132:
			$f.l=1034;
			v24=_116(v7);
			;
			if(v24==0) {$b=183; break;}
			v24=_117(v7);
			;
			if(v24!=0) {$b=139; break;}
			$f.l=1035;
			{ $b=183; break; }
		case 139:
			$f.l=1039;
			v29=v7.m_fixtureA;
			v8=v29.m_isSensor;
			$f.l=1040;
			v29=v7.m_fixtureB;
			v9=v29.m_isSensor;
			$f.l=1041;
			if(v8!=0) {$b=183; break;}
			if(v9==0) {$b=150; break;}
			$f.l=1042;
			{ $b=183; break; }
		case 150:
			$f.l=1045;
			v12=v0.island;
			_118(v12,v7);
			$f.l=1046;
			v20=v7;
			v16=v7.m_flags;
			v16=(v16 | 1)|0;
			v7.m_flags=v16;
			$f.l=1048;
			v10=v6.other;
			$f.l=1051;
			v16=v10.m_flags;
			v16=(v16 & 1)|0;
			if(v16!=1) {$b=166; break;}
			$f.l=1052;
			{ $b=183; break; }
		case 166:
			$f.l=1055;
			v24=$g36;
			if(v24!=0) {$b=173; break;}
			if(v27<v22) {$b=173; break;}
			v28=new java/lang/AssertionError;
			_26(v28);
			throw v28;
		case 173:
			$f.l=1056;
			v23=v0.stack;
			v16=v27;
			v27=(v27 + 1)|0;
			v23[v16]=v10;
			$f.l=1057;
			v18=v10;
			v16=v10.m_flags;
			v16=(v16 | 1)|0;
			v10.m_flags=v16;
		case 183:
			$f.l=1025;
			v6=v6.next;
			{ $b=123; break; }
		case 186:
			$f.l=1061;
			v30=v5.m_jointList;
		case 188:
			if(v30==null) {$b=235; break;}
			$f.l=1062;
			v31=v30.joint;
			v24=v31.m_islandFlag;
			if(v24!=1) {$b=195; break;}
			$f.l=1063;
			{ $b=232; break; }
		case 195:
			$f.l=1066;
			v32=v30.other;
			$f.l=1069;
			v24=_112(v32);
			;
			if(v24!=0) {$b=202; break;}
			$f.l=1070;
			{ $b=232; break; }
		case 202:
			$f.l=1073;
			v12=v0.island;
			v31=v30.joint;
			_119(v12,v31);
			$f.l=1074;
			v31=v30.joint;
			v31.m_islandFlag=1;
			$f.l=1076;
			v16=v32.m_flags;
			v16=(v16 & 1)|0;
			if(v16!=1) {$b=215; break;}
			$f.l=1077;
			{ $b=232; break; }
		case 215:
			$f.l=1080;
			v24=$g36;
			if(v24!=0) {$b=222; break;}
			if(v27<v22) {$b=222; break;}
			v28=new java/lang/AssertionError;
			_26(v28);
			throw v28;
		case 222:
			$f.l=1081;
			v23=v0.stack;
			v16=v27;
			v27=(v27 + 1)|0;
			v23[v16]=v32;
			$f.l=1082;
			v18=v32;
			v16=v32.m_flags;
			v16=(v16 | 1)|0;
			v32.m_flags=v16;
		case 232:
			$f.l=1061;
			v30=v30.next;
			{ $b=188; break; }
		case 235:
			$f.l=1084;
			{ $b=96; break; }
		case 237:
			$f.l=1085;
			v12=v0.island;
			v11=v0.islandProfile;
			v33=v0.m_gravity;
			v24=v0.m_allowSleep;
			_11a(v12,v11,v1,v33,v24);
			$f.l=1086;
			v11=v0.m_profile;
			v34=v11.solveInit;
			v35=v0.islandProfile;
			v36=v35.solveInit;
			v36=v34 + v36;
			v11.solveInit=v36;
			$f.l=1087;
			v35=v0.m_profile;
			v36=v35.solveVelocity;
			v11=v0.islandProfile;
			v34=v11.solveVelocity;
			v36=v36 + v34;
			v35.solveVelocity=v36;
			$f.l=1088;
			v35=v0.m_profile;
			v36=v35.solvePosition;
			v11=v0.islandProfile;
			v34=v11.solvePosition;
			v36=v36 + v34;
			v35.solvePosition=v36;
			$f.l=1091;
			v37=0;
		case 266:
			v12=v0.island;
			v16=v12.m_bodyCount;
			if(v37>=v16) {$b=285; break;}
			$f.l=1093;
			v12=v0.island;
			v23=v12.m_bodies;
			v38=v23[v37];
			$f.l=1094;
			v26=_113(v38);
			;
			v25=$g37;
			if(v26!=v25) {$b=282; break;}
			$f.l=1095;
			v18=v38;
			v16=v38.m_flags;
			v16=(v16 & -2)|0;
			v38.m_flags=v16;
		case 282:
			$f.l=1091;
			v37=(v37 + 1)|0;
			{ $b=266; break; }
		case 285:
			$f.l=988;
			v3=v3.m_next;
			{ $b=62; break; }
		case 288:
			$f.l=1100;
			v39=v0.broadphaseTimer;
			_108(v39);
			$f.l=1102;
			v3=v0.m_bodyList;
		case 293:
			if(v3==null) {$b=311; break;}
			$f.l=1104;
			v16=v3.m_flags;
			v16=(v16 & 1)|0;
			if(v16!=0) {$b=300; break;}
			$f.l=1105;
			{ $b=308; break; }
		case 300:
			$f.l=1108;
			v26=_113(v3);
			;
			v25=$g37;
			if(v26!=v25) {$b=306; break;}
			$f.l=1109;
			{ $b=308; break; }
		case 306:
			$f.l=1113;
			_11b(v3);
		case 308:
			$f.l=1102;
			v3=_10f(v3);
			;
			{ $b=293; break; }
		case 311:
			$f.l=1117;
			v14=v0.m_contactManager;
			_109(v14);
			$f.l=1118;
			v35=v0.m_profile;
			v39=v0.broadphaseTimer;
			v36=_10b(v39);
			;
			v35.broadphase=v36;
			$f.l=1119;
			return;
	}
	}
	//org/jbox2d/dynamics/World:solveTOI
	function _10d(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54,v55,v56;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=1131;
			v0=a0;
			v1=a1;
			v2=v0.toiIsland;
			$f.l=1132;
			v22=v0.m_contactManager;
			v23=v22.m_contactListener;
			_110(v2,64,32,0,v23);
			$f.l=1134;
			v24=v0.m_stepComplete;
			if(v24==0) {$b=41; break;}
			$f.l=1135;
			v3=v0.m_bodyList;
		case 13:
			if(v3==null) {$b=25; break;}
			$f.l=1136;
			v25=v3;
			v26=v3.m_flags;
			v26=(v26 & -2)|0;
			v3.m_flags=v26;
			$f.l=1137;
			v27=v3.m_sweep;
			v27.alpha0=0.0;
			$f.l=1135;
			v3=v3.m_next;
			{ $b=13; break; }
		case 25:
			$f.l=1140;
			v22=v0.m_contactManager;
			v28=v22.m_contactList;
		case 28:
			if(v28==null) {$b=41; break;}
			$f.l=1142;
			v29=v28;
			v26=v28.m_flags;
			v26=(v26 & -34)|0;
			v28.m_flags=v26;
			$f.l=1143;
			v28.m_toiCount=0.0;
			$f.l=1144;
			v28.m_toi=1.0;
			$f.l=1140;
			v28=v28.m_next;
			{ $b=28; break; }
		case 41:
			$f.l=1151;
			v28=null;
			$f.l=1152;
			v4=1.0;
			$f.l=1154;
			v22=v0.m_contactManager;
			v5=v22.m_contactList;
		case 48:
			if(v5==null) {$b=244; break;}
			$f.l=1156;
			v24=_116(v5);
			;
			if(v24!=0) {$b=54; break;}
			$f.l=1157;
			{ $b=241; break; }
		case 54:
			$f.l=1161;
			v30=v5.m_toiCount;
			v31=(v30 != v30 || 8.0 != 8.0) ? -1 : (v30 > 8.0) - (v30 < 8.0);
			if(v31<=0) {$b=60; break;}
			$f.l=1162;
			{ $b=241; break; }
		case 60:
			$f.l=1165;
			v6=1.0;
			$f.l=1166;
			v26=v5.m_flags;
			v26=(v26 & 32)|0;
			if(v26==0) {$b=69; break;}
			$f.l=1168;
			v6=v5.m_toi;
			{ $b=234; break; }
		case 69:
			$f.l=1170;
			v7=_fe(v5);
			;
			$f.l=1171;
			v8=_ff(v5);
			;
			$f.l=1174;
			v24=_8f(v7);
			;
			if(v24!=0) {$b=241; break;}
			v24=_8f(v8);
			;
			if(v24==0) {$b=80; break;}
			$f.l=1175;
			{ $b=241; break; }
		case 80:
			$f.l=1178;
			v9=_24(v7);
			;
			$f.l=1179;
			v10=_24(v8);
			;
			$f.l=1181;
			v11=v9.m_type;
			$f.l=1182;
			v12=v10.m_type;
			$f.l=1183;
			v24=$g36;
			if(v24!=0) {$b=98; break;}
			v32=$g38;
			if(v11==v32) {$b=98; break;}
			v32=$g38;
			if(v12==v32) {$b=98; break;}
			v33=new java/lang/AssertionError;
			_26(v33);
			throw v33;
		case 98:
			$f.l=1185;
			v24=_111(v9);
			;
			if(v24==0) {$b=105; break;}
			v32=$g37;
			if(v11==v32) {$b=105; break;}
			v24=1;
			{ $b=106; break; }
		case 105:
			v24=0;
		case 106:
			v13=v24;
			$f.l=1186;
			v24=_111(v10);
			;
			if(v24==0) {$b=114; break;}
			v32=$g37;
			if(v12==v32) {$b=114; break;}
			v24=1;
			{ $b=115; break; }
		case 114:
			v24=0;
		case 115:
			v14=v24;
			$f.l=1189;
			if(v13!=0) {$b=121; break;}
			if(v14!=0) {$b=121; break;}
			$f.l=1190;
			{ $b=241; break; }
		case 121:
			$f.l=1193;
			v24=_11c(v9);
			;
			if(v24!=0) {$b=126; break;}
			v32=$g38;
			if(v11==v32) {$b=128; break;}
		case 126:
			v24=1;
			{ $b=129; break; }
		case 128:
			v24=0;
		case 129:
			v15=v24;
			$f.l=1194;
			v24=_11c(v10);
			;
			if(v24!=0) {$b=135; break;}
			v32=$g38;
			if(v12==v32) {$b=137; break;}
		case 135:
			v24=1;
			{ $b=138; break; }
		case 137:
			v24=0;
		case 138:
			v16=v24;
			$f.l=1197;
			if(v15!=0) {$b=144; break;}
			if(v16!=0) {$b=144; break;}
			$f.l=1198;
			{ $b=241; break; }
		case 144:
			$f.l=1203;
			v27=v9.m_sweep;
			v17=v27.alpha0;
			$f.l=1205;
			v27=v9.m_sweep;
			v30=v27.alpha0;
			v27=v10.m_sweep;
			v34=v27.alpha0;
			v31=(v30 != v30 || v34 != v34) ? 1 : (v30 > v34) - (v30 < v34);
			if(v31>=0) {$b=161; break;}
			$f.l=1206;
			v27=v10.m_sweep;
			v17=v27.alpha0;
			$f.l=1207;
			v27=v9.m_sweep;
			_11d(v27,v17);
			{ $b=174; break; }
		case 161:
			$f.l=1208;
			v27=v10.m_sweep;
			v34=v27.alpha0;
			v27=v9.m_sweep;
			v30=v27.alpha0;
			v31=(v34 != v34 || v30 != v30) ? 1 : (v34 > v30) - (v34 < v30);
			if(v31>=0) {$b=174; break;}
			$f.l=1209;
			v27=v9.m_sweep;
			v17=v27.alpha0;
			$f.l=1210;
			v27=v10.m_sweep;
			_11d(v27,v17);
		case 174:
			$f.l=1213;
			v24=$g36;
			if(v24!=0) {$b=182; break;}
			v31=(v17 != v17 || 1.0 != 1.0) ? 1 : (v17 > 1.0) - (v17 < 1.0);
			if(v31<0) {$b=182; break;}
			v33=new java/lang/AssertionError;
			_26(v33);
			throw v33;
		case 182:
			$f.l=1215;
			v18=_11e(v5);
			;
			$f.l=1216;
			v19=_11f(v5);
			;
			$f.l=1219;
			v20=v0.toiInput;
			$f.l=1220;
			v35=v20.proxyA;
			v36=_23(v7);
			;
			_49(v35,v36,v18);
			$f.l=1221;
			v35=v20.proxyB;
			v36=_23(v8);
			;
			_49(v35,v36,v19);
			$f.l=1222;
			v27=v20.sweepA;
			v37=v9.m_sweep;
			v37=_120(v27,v37);
			;
			$f.l=1223;
			v37=v20.sweepB;
			v27=v10.m_sweep;
			v37=_120(v37,v27);
			;
			$f.l=1224;
			v20.tMax=1.0;
			$f.l=1226;
			v38=v0.pool;
			v39=v38.$c.$it[44](v38);
			;
			v40=v0.toiOutput;
			_121(v39,v40,v20);
			$f.l=1229;
			v40=v0.toiOutput;
			v21=v40.t;
			$f.l=1230;
			v40=v0.toiOutput;
			v41=v40.state;
			v42=$g39;
			if(v41!=v42) {$b=225; break;}
			$f.l=1231;
			v34=1.0 - v17;
			v34=v34 * v21;
			v34=v17 + v34;
			v6=_3c(v34,1.0);
			;
			{ $b=227; break; }
		case 225:
			$f.l=1233;
			v6=1.0;
		case 227:
			$f.l=1236;
			v5.m_toi=v6;
			$f.l=1237;
			v29=v5;
			v26=v5.m_flags;
			v26=(v26 | 32)|0;
			v5.m_flags=v26;
		case 234:
			$f.l=1240;
			v31=(v6 != v6 || v4 != v4) ? 1 : (v6 > v4) - (v6 < v4);
			if(v31>=0) {$b=241; break;}
			$f.l=1242;
			v28=v5;
			$f.l=1243;
			v4=v6;
		case 241:
			$f.l=1154;
			v5=v5.m_next;
			{ $b=48; break; }
		case 244:
			$f.l=1247;
			if(v28==null) {$b=248; break;}
			v31=(0.9999988 != 0.9999988 || v4 != v4) ? 1 : (0.9999988 > v4) - (0.9999988 < v4);
			if(v31>=0) {$b=252; break;}
		case 248:
			$f.l=1249;
			v0.m_stepComplete=1;
			$f.l=1250;
			{ $b=540; break; }
		case 252:
			$f.l=1254;
			v43=_fe(v28);
			;
			$f.l=1255;
			v44=_ff(v28);
			;
			$f.l=1256;
			v45=_24(v43);
			;
			$f.l=1257;
			v46=_24(v44);
			;
			$f.l=1259;
			v37=v0.backup1;
			v27=v45.m_sweep;
			v37=_120(v37,v27);
			;
			$f.l=1260;
			v37=v0.backup2;
			v27=v46.m_sweep;
			v37=_120(v37,v27);
			;
			$f.l=1262;
			_122(v45,v4);
			$f.l=1263;
			_122(v46,v4);
			$f.l=1266;
			v22=v0.m_contactManager;
			v23=v22.m_contactListener;
			_123(v28,v23);
			$f.l=1267;
			v29=v28;
			v26=v28.m_flags;
			v26=(v26 & -33)|0;
			v28.m_flags=v26;
			$f.l=1268;
			v29=v28;
			v34=v28.m_toiCount;
			v34=v34 + 1.0;
			v28.m_toiCount=v34;
			$f.l=1271;
			v24=_116(v28);
			;
			if(v24==0) {$b=291; break;}
			v24=_117(v28);
			;
			if(v24!=0) {$b=307; break;}
		case 291:
			$f.l=1273;
			_124(v28,0);
			$f.l=1274;
			v37=v45.m_sweep;
			v27=v0.backup1;
			v37=_120(v37,v27);
			;
			$f.l=1275;
			v37=v46.m_sweep;
			v27=v0.backup2;
			v37=_120(v37,v27);
			;
			$f.l=1276;
			_125(v45);
			$f.l=1277;
			_125(v46);
			$f.l=1278;
			{ $b=41; break; }
		case 307:
			$f.l=1281;
			_100(v45,1);
			$f.l=1282;
			_100(v46,1);
			$f.l=1285;
			_114(v2);
			$f.l=1286;
			_115(v2,v45);
			$f.l=1287;
			_115(v2,v46);
			$f.l=1288;
			_118(v2,v28);
			$f.l=1290;
			v25=v45;
			v26=v45.m_flags;
			v26=(v26 | 1)|0;
			v45.m_flags=v26;
			$f.l=1291;
			v25=v46;
			v26=v46.m_flags;
			v26=(v26 | 1)|0;
			v46.m_flags=v26;
			$f.l=1292;
			v29=v28;
			v26=v28.m_flags;
			v26=(v26 | 1)|0;
			v28.m_flags=v26;
			$f.l=1295;
			v47=v0.tempBodies;
			v47[0]=v45;
			$f.l=1296;
			v47=v0.tempBodies;
			v47[1]=v46;
			$f.l=1297;
			v48=0;
		case 342:
			if(v48>=2) {$b=464; break;}
			$f.l=1298;
			v47=v0.tempBodies;
			v10=v47[v48];
			$f.l=1299;
			v32=v10.m_type;
			v49=$g38;
			if(v32!=v49) {$b=461; break;}
			$f.l=1300;
			v50=v10.m_contactList;
		case 352:
			if(v50==null) {$b=461; break;}
			$f.l=1301;
			v26=v2.m_bodyCount;
			v51=v2.m_bodyCapacity;
			if(v26!=v51) {$b=359; break;}
			$f.l=1302;
			{ $b=461; break; }
		case 359:
			$f.l=1305;
			v51=v2.m_contactCount;
			v26=v2.m_contactCapacity;
			if(v51!=v26) {$b=365; break;}
			$f.l=1306;
			{ $b=461; break; }
		case 365:
			$f.l=1309;
			v52=v50.contact;
			$f.l=1312;
			v51=v52.m_flags;
			v51=(v51 & 1)|0;
			if(v51==0) {$b=373; break;}
			$f.l=1313;
			{ $b=458; break; }
		case 373:
			$f.l=1317;
			v53=v50.other;
			$f.l=1318;
			v49=v53.m_type;
			v32=$g38;
			if(v49!=v32) {$b=385; break;}
			v24=_11c(v10);
			;
			if(v24!=0) {$b=385; break;}
			v24=_11c(v53);
			;
			if(v24!=0) {$b=385; break;}
			$f.l=1320;
			{ $b=458; break; }
		case 385:
			$f.l=1324;
			v54=v52.m_fixtureA;
			v14=v54.m_isSensor;
			$f.l=1325;
			v54=v52.m_fixtureB;
			v15=v54.m_isSensor;
			$f.l=1326;
			if(v14!=0) {$b=458; break;}
			if(v15==0) {$b=396; break;}
			$f.l=1327;
			{ $b=458; break; }
		case 396:
			$f.l=1331;
			v37=v0.backup1;
			v27=v53.m_sweep;
			v37=_120(v37,v27);
			;
			$f.l=1332;
			v51=v53.m_flags;
			v51=(v51 & 1)|0;
			if(v51!=0) {$b=406; break;}
			$f.l=1333;
			_122(v53,v4);
		case 406:
			$f.l=1337;
			v22=v0.m_contactManager;
			v23=v22.m_contactListener;
			_123(v52,v23);
			$f.l=1340;
			v24=_116(v52);
			;
			if(v24!=0) {$b=421; break;}
			$f.l=1341;
			v37=v53.m_sweep;
			v27=v0.backup1;
			v37=_120(v37,v27);
			;
			$f.l=1342;
			_125(v53);
			$f.l=1343;
			{ $b=458; break; }
		case 421:
			$f.l=1347;
			v24=_117(v52);
			;
			if(v24!=0) {$b=432; break;}
			$f.l=1348;
			v37=v53.m_sweep;
			v27=v0.backup1;
			v37=_120(v37,v27);
			;
			$f.l=1349;
			_125(v53);
			$f.l=1350;
			{ $b=458; break; }
		case 432:
			$f.l=1354;
			v29=v52;
			v51=v52.m_flags;
			v51=(v51 | 1)|0;
			v52.m_flags=v51;
			$f.l=1355;
			_118(v2,v52);
			$f.l=1358;
			v51=v53.m_flags;
			v51=(v51 & 1)|0;
			if(v51==0) {$b=445; break;}
			$f.l=1359;
			{ $b=458; break; }
		case 445:
			$f.l=1363;
			v25=v53;
			v51=v53.m_flags;
			v51=(v51 | 1)|0;
			v53.m_flags=v51;
			$f.l=1365;
			v49=v53.m_type;
			v32=$g37;
			if(v49==v32) {$b=456; break;}
			$f.l=1366;
			_100(v53,1);
		case 456:
			$f.l=1369;
			_115(v2,v53);
		case 458:
			$f.l=1300;
			v50=v50.next;
			{ $b=352; break; }
		case 461:
			$f.l=1297;
			v48=(v48 + 1)|0;
			{ $b=342; break; }
		case 464:
			$f.l=1374;
			v55=v0.subStep;
			v34=1.0 - v4;
			v30=v1.dt;
			v34=v34 * v30;
			v55.dt=v34;
			$f.l=1375;
			v55=v0.subStep;
			v56=v0.subStep;
			v34=v56.dt;
			v34=1.0 / v34;
			v55.inv_dt=v34;
			$f.l=1376;
			v56=v0.subStep;
			v56.dtRatio=1.0;
			$f.l=1377;
			v56=v0.subStep;
			v56.positionIterations=20;
			$f.l=1378;
			v56=v0.subStep;
			v51=v1.velocityIterations;
			v56.velocityIterations=v51;
			$f.l=1379;
			v56=v0.subStep;
			v56.warmStarting=0;
			$f.l=1380;
			v56=v0.subStep;
			v51=v45.m_islandIndex;
			v26=v46.m_islandIndex;
			_126(v2,v56,v51,v26);
			$f.l=1383;
			v48=0;
		case 496:
			v51=v2.m_bodyCount;
			if(v48>=v51) {$b=528; break;}
			$f.l=1384;
			v47=v2.m_bodies;
			v10=v47[v48];
			$f.l=1385;
			v25=v10;
			v51=v10.m_flags;
			v51=(v51 & -2)|0;
			v10.m_flags=v51;
			$f.l=1387;
			v49=v10.m_type;
			v32=$g38;
			if(v49==v32) {$b=512; break;}
			$f.l=1388;
			{ $b=525; break; }
		case 512:
			$f.l=1391;
			_11b(v10);
			$f.l=1394;
			v50=v10.m_contactList;
		case 516:
			if(v50==null) {$b=525; break;}
			$f.l=1395;
			v29=v50.contact;
			v51=v29.m_flags;
			v51=(v51 & -34)|0;
			v29.m_flags=v51;
			$f.l=1394;
			v50=v50.next;
			{ $b=516; break; }
		case 525:
			$f.l=1383;
			v48=(v48 + 1)|0;
			{ $b=496; break; }
		case 528:
			$f.l=1401;
			v22=v0.m_contactManager;
			_109(v22);
			$f.l=1403;
			v24=v0.m_subStepping;
			if(v24==0) {$b=538; break;}
			$f.l=1404;
			v0.m_stepComplete=0;
			$f.l=1405;
			{ $b=540; break; }
		case 538:
			$f.l=1407;
			{ $b=41; break; }
		case 540:
			$f.l=1408;
			return;
	}
	}
	//org/jbox2d/dynamics/World:<clinit>
	function _127(vm){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=73;
			v0=vm.getClass(31);
			v1=_3f(v0);
			;
			if(v1!=0) {$b=6; break;}
			v1=1;
			{ $b=7; break; }
		case 6:
			v1=0;
		case 7:
			$g36=v1;
			$f.l=1453;
			v2=new java/lang/Integer;
			_128(v2,1234598372);
			$g40=v2;
			return;
	}
	}
	//java/lang/StringToReal$StringExponentPair:<init>
	function _129(vm,a0){
	var v0;
	var $f=vm.frames[vm.fp++];
	$f.l=26;
	v0=a0;
	_0(v0);
	return;
	}
	//java/lang/StringToReal$StringExponentPair:specialValue
	function _12a(vm,a0){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=36;
			v0=a0;
			v1=v0.infinity;
			if(v1==0) {$b=11; break;}
			$f.l=37;
			v1=v0.negative;
			if(v1==0) {$b=9; break;}
			v2=-Infinity;
			{ $b=10; break; }
		case 9:
			v2=Infinity;
		case 10:
			return v2;
		case 11:
			$f.l=39;
			v1=v0.negative;
			if(v1==0) {$b=16; break;}
			v2=-0.0;
			{ $b=17; break; }
		case 16:
			v2=0.0;
		case 17:
			return v2;
	}
	}
	//java/lang/StringToReal$StringExponentPair:<init>
	function _12b(vm,a0,a1){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=26;
	v0=a0;
	v1=a1;
	_129(v0);
	return;
	}
	//org/jbox2d/common/Timer:<init>
	function _ef(vm,a0){
	var v0;
	var $f=vm.frames[vm.fp++];
	$f.l=35;
	v0=a0;
	_0(v0);
	$f.l=36;
	_108(v0);
	$f.l=37;
	return;
	}
	//org/jbox2d/common/Timer:reset
	function _108(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=40;
	v0=a0;
	v1=_12c();
	;
	v0.resetNanos=v1;
	$f.l=41;
	return;
	}
	//org/jbox2d/common/Timer:getMilliseconds
	function _10b(vm,a0){
	var v0,v1,v2,v3;
	var $f=vm.frames[vm.fp++];
	$f.l=44;
	v0=a0;
	v1=_12c();
	;
	v2=v0.resetNanos;
	v2=(v1 - v2)|0;
	v2=(v2 / 1000)|0;
	v3=v2;
	v3=v3 * 1.0;
	v3=v3 / 1000.0;
	return v3;
	}
	//java/util/NumberComparator:isNumber
	function _12d(vm,a0){
	var v0,v1,v2,v3;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=81;
			v0=a0;
			if(v0!=null) {$b=5; break;}
			$f.l=82;
			return 0;
		case 5:
			$f.l=84;
			v1=_2(v0);
			;
			$f.l=85;
			v2=vm.getClass(32);
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(33);
			$f.l=86;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(34);
			$f.l=87;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(35);
			$f.l=88;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(36);
			$f.l=89;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(14);
			$f.l=90;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(37);
			$f.l=91;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3!=0) {$b=39; break;}
			v2=vm.getClass(15);
			$f.l=92;
			v3=v2.$c.$vt[1](v2,v1);
			;
			if(v3==0) {$b=41; break;}
		case 39:
			v3=1;
			{ $b=42; break; }
		case 41:
			v3=0;
		case 42:
			$f.l=85;
			return v3;
	}
	}
	//java/util/NumberComparator:createComparator
	function _12e(vm,a0){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=99;
			v0=a0;
			if(v0!=null) {$b=5; break;}
			$f.l=100;
			return null;
		case 5:
			$f.l=101;
			v1=vm.getClass(32);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=13; break;}
			$f.l=102;
			v3=new java/util/NumberComparator$D;
			_12f(v3);
			return v3;
		case 13:
			$f.l=103;
			v1=vm.getClass(33);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=21; break;}
			$f.l=104;
			v4=new java/util/NumberComparator$F;
			_130(v4);
			return v4;
		case 21:
			$f.l=105;
			v1=vm.getClass(34);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=29; break;}
			$f.l=106;
			v5=new java/util/NumberComparator$I;
			_131(v5);
			return v5;
		case 29:
			$f.l=107;
			v1=vm.getClass(36);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=37; break;}
			$f.l=108;
			v6=new java/util/NumberComparator$S;
			_132(v6);
			return v6;
		case 37:
			$f.l=109;
			v1=vm.getClass(37);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=45; break;}
			$f.l=110;
			v7=new java/util/NumberComparator$B;
			_133(v7);
			return v7;
		case 45:
			$f.l=111;
			v1=vm.getClass(15);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=53; break;}
			$f.l=112;
			v8=new java/util/NumberComparator$C;
			_134(v8);
			return v8;
		case 53:
			$f.l=113;
			v1=vm.getClass(35);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=61; break;}
			$f.l=114;
			v9=new java/util/NumberComparator$L;
			_135(v9);
			return v9;
		case 61:
			$f.l=115;
			v1=vm.getClass(14);
			v2=v1.$c.$vt[1](v1,v0);
			;
			if(v2==0) {$b=69; break;}
			$f.l=116;
			v10=new java/util/NumberComparator$Z;
			_136(v10);
			return v10;
		case 69:
			$f.l=118;
			return null;
	}
	}
	//JBox$Scene:<init>
	function _137(vm,a0){
	var v0,v1,v2,v3;
	var $f=vm.frames[vm.fp++];
	$f.l=44;
	v0=a0;
	_0(v0);
	$f.l=45;
	v1=new org/jbox2d/dynamics/World;
	v2=new org/jbox2d/common/Vec2;
	_138(v2,0.0,-9.8);
	_e9(v1,v2);
	v0.world=v1;
	$f.l=46;
	_139(v0);
	$f.l=47;
	_13a(v0);
	$f.l=48;
	_13b(v0);
	$f.l=49;
	_13c(v0);
	$f.l=50;
	v3=_13d();
	;
	v0.lastCalculated=v3;
	$f.l=51;
	v3=v0.lastCalculated;
	v0.startTime=v3;
	$f.l=52;
	return;
	}
	//JBox$Scene:initAxis
	function _139(vm,a0){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
	var $f=vm.frames[vm.fp++];
	$f.l=55;
	v0=a0;
	v1=new org/jbox2d/dynamics/BodyDef;
	_13e(v1);
	v2=v1;
	$f.l=56;
	v5=$g37;
	v2.type=v5;
	$f.l=57;
	v6=new org/jbox2d/common/Vec2;
	_138(v6,3.0,3.0);
	v2.position=v6;
	$f.l=58;
	v7=v0.world;
	v8=_101(v7,v2);
	;
	v0.axis=v8;
	$f.l=60;
	v9=new org/jbox2d/collision/shapes/CircleShape;
	_13f(v9);
	v3=v9;
	$f.l=61;
	_76(v3,0.02);
	$f.l=62;
	v6=v3.m_p;
	v6=_30(v6,0.0,0.0);
	;
	$f.l=64;
	v10=new org/jbox2d/dynamics/FixtureDef;
	_140(v10);
	v4=v10;
	$f.l=65;
	v4.shape=v3;
	$f.l=66;
	v8=v0.axis;
	v11=_141(v8,v4);
	;
	$f.l=67;
	return;
	}
	//JBox$Scene:initReel
	function _13a(vm,a0){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=70;
			v0=a0;
			v1=new org/jbox2d/dynamics/BodyDef;
			_13e(v1);
			v2=v1;
			$f.l=71;
			v16=$g38;
			v2.type=v16;
			$f.l=72;
			v17=new org/jbox2d/common/Vec2;
			_138(v17,3.0,3.0);
			v2.position=v17;
			$f.l=73;
			v18=v0.world;
			v19=_101(v18,v2);
			;
			v0.reel=v19;
			$f.l=75;
			v20=new org/jbox2d/dynamics/FixtureDef;
			_140(v20);
			v3=v20;
			$f.l=76;
			v3.friction=0.5;
			$f.l=77;
			v3.restitution=0.4;
			$f.l=78;
			v3.density=1.0;
			$f.l=80;
			v4=30;
			$f.l=81;
			v5=0;
		case 30:
			if(v5>=30) {$b=102; break;}
			$f.l=82;
			v21=new org/jbox2d/collision/shapes/PolygonShape;
			_142(v21);
			v6=v21;
			$f.l=83;
			v22=v5;
			v22=v22 / 30.0;
			v22=v22 * 2.0;
			v7=v22 * 3.141592653589793;
			$f.l=84;
			v22=_143(v7);
			;
			v8=2.7 * v22;
			$f.l=85;
			v22=_144(v7);
			;
			v9=2.7 * v22;
			$f.l=86;
			v23=(v5 + 1)|0;
			v22=v23;
			v22=v22 / 30.0;
			v22=v22 * 2.0;
			v10=v22 * 3.141592653589793;
			$f.l=87;
			v22=_143(v10);
			;
			v11=2.7 * v22;
			$f.l=88;
			v22=_144(v10);
			;
			v12=2.7 * v22;
			$f.l=89;
			v22=v7 + v10;
			v13=v22 / 2.0;
			$f.l=90;
			v22=_143(v13);
			;
			v14=0.01 * v22;
			$f.l=91;
			v22=_144(v13);
			;
			v15=0.01 * v22;
			$f.l=93;
			v24=newArray(38,4);
			v17=new org/jbox2d/common/Vec2;
			v25=v8;
			v26=v9;
			_138(v17,v25,v26);
			v24[0]=v17;
			v17=new org/jbox2d/common/Vec2;
			v26=v11;
			v25=v12;
			_138(v17,v26,v25);
			v24[1]=v17;
			v17=new org/jbox2d/common/Vec2;
			v22=v11 - v14;
			v26=v22;
			v22=v12 - v15;
			v25=v22;
			_138(v17,v26,v25);
			v24[2]=v17;
			v17=new org/jbox2d/common/Vec2;
			v22=v8 - v14;
			v26=v22;
			v22=v9 - v15;
			v25=v22;
			_138(v17,v26,v25);
			v24[3]=v17;
			_145(v6,v24,4);
			$f.l=95;
			v3.shape=v6;
			$f.l=96;
			v19=v0.reel;
			v27=_141(v19,v3);
			;
			$f.l=81;
			v5=(v5 + 1)|0;
			{ $b=30; break; }
		case 102:
			$f.l=98;
			return;
	}
	}
	//JBox$Scene:initBalls
	function _13c(vm,a0){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=101;
			v0=a0;
			v1=0.15;
			$f.l=103;
			v10=new org/jbox2d/dynamics/BodyDef;
			_13e(v10);
			v2=v10;
			$f.l=104;
			v11=$g38;
			v2.type=v11;
			$f.l=105;
			v12=new org/jbox2d/dynamics/FixtureDef;
			_140(v12);
			v3=v12;
			$f.l=106;
			v3.friction=0.3;
			$f.l=107;
			v3.restitution=0.3;
			$f.l=108;
			v3.density=0.2;
			$f.l=109;
			v13=new org/jbox2d/collision/shapes/CircleShape;
			_13f(v13);
			v4=v13;
			$f.l=110;
			v4.m_radius=0.15;
			$f.l=111;
			v3.shape=v4;
			$f.l=113;
			v5=0;
		case 30:
			if(v5>=6) {$b=100; break;}
			$f.l=114;
			v6=0;
		case 33:
			if(v6>=6) {$b=97; break;}
			$f.l=115;
			v14=v6;
			v14=v14 + 0.5;
			v7=v14 * 0.31;
			$f.l=116;
			v14=v5;
			v14=v14 + 0.5;
			v8=v14 * 0.31;
			$f.l=117;
			v15=v2.position;
			v14=3.0 + v7;
			v15.x=v14;
			$f.l=118;
			v15=v2.position;
			v14=3.0 + v8;
			v15.y=v14;
			$f.l=119;
			v16=v0.world;
			v9=_101(v16,v2);
			;
			$f.l=120;
			v17=_141(v9,v3);
			;
			$f.l=122;
			v15=v2.position;
			v14=3.0 - v7;
			v15.x=v14;
			$f.l=123;
			v15=v2.position;
			v14=3.0 + v8;
			v15.y=v14;
			$f.l=124;
			v16=v0.world;
			v9=_101(v16,v2);
			;
			$f.l=125;
			v17=_141(v9,v3);
			;
			$f.l=127;
			v15=v2.position;
			v14=3.0 + v7;
			v15.x=v14;
			$f.l=128;
			v15=v2.position;
			v14=3.0 - v8;
			v15.y=v14;
			$f.l=129;
			v16=v0.world;
			v9=_101(v16,v2);
			;
			$f.l=130;
			v17=_141(v9,v3);
			;
			$f.l=132;
			v15=v2.position;
			v14=3.0 - v7;
			v15.x=v14;
			$f.l=133;
			v15=v2.position;
			v14=3.0 - v8;
			v15.y=v14;
			$f.l=134;
			v16=v0.world;
			v9=_101(v16,v2);
			;
			$f.l=135;
			v17=_141(v9,v3);
			;
			$f.l=114;
			v6=(v6 + 1)|0;
			{ $b=33; break; }
		case 97:
			$f.l=113;
			v5=(v5 + 1)|0;
			{ $b=30; break; }
		case 100:
			$f.l=138;
			return;
	}
	}
	//JBox$Scene:joinReelToAxis
	function _13b(vm,a0){
	var v0,v1,v2,v3,v4,v5;
	var $f=vm.frames[vm.fp++];
	$f.l=141;
	v0=a0;
	v1=new org/jbox2d/dynamics/joints/RevoluteJointDef;
	_146(v1);
	v2=v1;
	$f.l=142;
	v3=v0.axis;
	v2.bodyA=v3;
	$f.l=143;
	v3=v0.reel;
	v2.bodyB=v3;
	$f.l=144;
	v4=v0.world;
	v5=_104(v4,v2);
	;
	$f.l=145;
	return;
	}
	//JBox$Scene:calculate
	function _147(vm,a0){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=148;
			v0=a0;
			v1=_13d();
			;
			$f.l=149;
			v5=v0.lastCalculated;
			v5=(v1 - v5)|0;
			v2=v5|0;
			$f.l=150;
			v5=v0.startTime;
			v3=(v1 - v5)|0;
		case 10:
			$f.l=151;
			if(v2<=10) {$b=36; break;}
			$f.l=152;
			v5=(v3 + 5000)|0;
			v5=(v5 / 10000)|0;
			v4=v5|0;
			$f.l=153;
			v6=v0.reel;
			v7=(v4 % 2)|0;
			if(v7!=0) {$b=22; break;}
			v8=8.0;
			{ $b=23; break; }
		case 22:
			v8=-8.0;
		case 23:
			_148(v6,v8);
			$f.l=154;
			v9=v0.world;
			_107(v9,0.01,20,40);
			$f.l=155;
			v10=v0;
			v5=v0.lastCalculated;
			v5=(v5 + 10)|0;
			v0.lastCalculated=v5;
			$f.l=156;
			v2=(v2 + -10)|0;
			$f.l=157;
			{ $b=10; break; }
		case 36:
			$f.l=158;
			v5=_13d();
			;
			v0.lastCalculated=v5;
			$f.l=159;
			return;
	}
	}
	//cava/c/CLib:memmove
	function _17(vm,a0,a1,a2,a3,a4){
	var v0,v1,v2,v3,v4,v5,v6;
	var $f=vm.frames[vm.fp++];
	$f.l=50;
	v0=a0;
	v1=a1;
	v2=a2;
	v3=a3;
	v4=a4;
	v5=newArray(0,5);
	v5[0]=v0;
	v6=_a1(v1);
	;
	v5[1]=v6;
	v5[2]=v2;
	v6=_a1(v3);
	;
	v5[3]=v6;
	v6=_a1(v4);
	;
	v5[4]=v6;
	_b4($str30,v5);
	$f.l=51;
	return;
	}
	//cava/c/CLib:<clinit>
	function _149(vm){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=30;
	v0=newArray(0,0);
	v1=_14a($str31,v0);
	;
	$g41=v1;
	$f.l=31;
	v0=newArray(0,0);
	v1=_14a($str32,v0);
	;
	$g42=v1;
	$f.l=32;
	v0=newArray(0,0);
	v1=_14a($str33,v0);
	;
	$g43=v1;
	$f.l=33;
	v0=newArray(0,0);
	v1=_14a($str34,v0);
	;
	$g44=v1;
	$f.l=34;
	v0=newArray(0,0);
	v1=_14a($str35,v0);
	;
	$g45=v1;
	$f.l=35;
	v0=newArray(0,0);
	v1=_14a($str36,v0);
	;
	$g46=v1;
	$f.l=36;
	v0=newArray(0,0);
	v1=_14a($str37,v0);
	;
	$g47=v1;
	$f.l=37;
	v0=newArray(0,0);
	v1=_14a($str38,v0);
	;
	$g48=v1;
	return;
	}
	//org/jbox2d/dynamics/contacts/ContactRegister:<init>
	function _fb(vm,a0){
	var v0;
	var $f=vm.frames[vm.fp++];
	$f.l=28;
	v0=a0;
	_0(v0);
	return;
	}
	//org/jbox2d/dynamics/Filter:<init>
	function _8d(vm,a0){
	var v0;
	var $f=vm.frames[vm.fp++];
	$f.l=51;
	v0=a0;
	_0(v0);
	$f.l=52;
	v0.categoryBits=1;
	$f.l=53;
	v0.maskBits=65535;
	$f.l=54;
	v0.groupIndex=0;
	$f.l=55;
	return;
	}
	//org/jbox2d/dynamics/Filter:set
	function _93(vm,a0,a1){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	$f.l=58;
	v0=a0;
	v1=a1;
	v2=v1.categoryBits;
	v0.categoryBits=v2;
	$f.l=59;
	v2=v1.maskBits;
	v0.maskBits=v2;
	$f.l=60;
	v2=v1.groupIndex;
	v0.groupIndex=v2;
	$f.l=61;
	return;
	}
	//org/jbox2d/dynamics/Profile:<init>
	function _f5(vm,a0){
	var v0;
	var $f=vm.frames[vm.fp++];
	$f.l=28;
	v0=a0;
	_0(v0);
	return;
	}
	//org/jbox2d/collision/Manifold:<init>
	function _14b(vm,a0){
	var v0,v1,v2,v3,v4;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=74;
			v0=a0;
			_0(v0);
			$f.l=75;
			v3=newArray(39,2);
			v0.points=v3;
			$f.l=76;
			v1=0;
		case 8:
			if(v1>=2) {$b=17; break;}
			$f.l=77;
			v3=v0.points;
			v2=new org/jbox2d/collision/ManifoldPoint;
			_78(v2);
			v3[v1]=v2;
			$f.l=76;
			v1=(v1 + 1)|0;
			{ $b=8; break; }
		case 17:
			$f.l=79;
			v4=new org/jbox2d/common/Vec2;
			_1a(v4);
			v0.localNormal=v4;
			$f.l=80;
			v4=new org/jbox2d/common/Vec2;
			_1a(v4);
			v0.localPoint=v4;
			$f.l=81;
			v0.pointCount=0;
			$f.l=82;
			return;
	}
	}
	//org/jbox2d/collision/Manifold:set
	function _14c(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=107;
			v0=a0;
			v1=a1;
			v2=0;
		case 4:
			v3=v1.pointCount;
			if(v2>=v3) {$b=15; break;}
			$f.l=108;
			v4=v0.points;
			v5=v4[v2];
			v4=v1.points;
			v6=v4[v2];
			_79(v5,v6);
			$f.l=107;
			v2=(v2 + 1)|0;
			{ $b=4; break; }
		case 15:
			$f.l=111;
			v7=v1.type;
			v0.type=v7;
			$f.l=112;
			v8=v0.localNormal;
			v9=v1.localNormal;
			v9=_28(v8,v9);
			;
			$f.l=113;
			v9=v0.localPoint;
			v8=v1.localPoint;
			v9=_28(v9,v8);
			;
			$f.l=114;
			v3=v1.pointCount;
			v0.pointCount=v3;
			$f.l=115;
			return;
	}
	}
	//java/lang/Character:<init>
	function _14d(vm,a0,a1){
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
	function _c2(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=60;
	v0=a0;
	v1=v0.value;
	return v1;
	}
	//java/lang/Character:digit
	function _14e(vm,a0,a1){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	$f.l=67;
	v0=a0;
	v1=a1;
	v2=_14f(v0,v1);
	;
	return v2;
	}
	//java/lang/Character:digit
	function _14f(vm,a0,a1){
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
	function _150(vm,a0,a1){
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
			v4=vm.cast(v1,15);
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
	function _151(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=115;
	v0=a0;
	v1=v0.value;
	return v1;
	}
	//java/lang/Character:isDigit
	function _152(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=122;
	v0=a0;
	v1=_153(v0);
	;
	return v1;
	}
	//java/lang/Character:isDigit
	function _153(vm,a0){
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
	function _154(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=152;
	v0=a0;
	v1=_155(v0);
	;
	return v1;
	}
	//java/lang/Character:isLowerCase
	function _155(vm,a0){
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
	function _156(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=182;
	v0=a0;
	v1=_157(v0);
	;
	return v1;
	}
	//java/lang/Character:isUpperCase
	function _157(vm,a0){
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
	function _158(vm,a0){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	$f.l=210;
	v0=a0;
	v1=_159(v0);
	;
	v2=v1&0xffff;
	return v2;
	}
	//java/lang/Character:toLowerCase
	function _159(vm,a0){
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
	function _15a(vm,a0){
	var v0,v1,v2,v3;
	var $f=vm.frames[vm.fp++];
	$f.l=239;
	v0=a0;
	v1=new java/lang/String;
	v2=newArray(40,1);
	v3=v0.value;
	v2[0]=v3;
	_15b(v1,v2);
	return v1;
	}
	//java/lang/Character:toUpperCase
	function _15c(vm,a0){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	$f.l=247;
	v0=a0;
	v1=_15d(v0);
	;
	v2=v1&0xffff;
	return v2;
	}
	//java/lang/Character:toUpperCase
	function _15d(vm,a0){
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
	function _15e(vm,a0){
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
	function _15f(vm,a0){
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
	function _160(vm,a0){
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
	function _161(vm,a0){
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
	function _162(vm,a0,a1){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=441;
			v0=a0;
			v1=a1;
			v2=_160(v0);
			;
			if(v2==0) {$b=9; break;}
			v2=_161(v1);
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
	function _163(vm,a0){
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
	function _164(vm,a0,a1){
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
	function _165(vm,a0,a1){
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
			_166(v5);
			throw v5;
		case 8:
			$f.l=510;
			v2=v0.$c.$it[7](v0);
			;
			$f.l=511;
			if(v1<0) {$b=13; break;}
			if(v1<v2) {$b=17; break;}
		case 13:
			$f.l=512;
			v6=new java/lang/IndexOutOfBoundsException;
			_167(v6);
			throw v6;
		case 17:
			$f.l=515;
			v7=(v1 + 1)|0;
			v3=v0.$c.$it[8](v0,v1);
			;
			$f.l=516;
			if(v7<v2) {$b=24; break;}
			$f.l=517;
			return v3;
		case 24:
			$f.l=519;
			v4=v0.$c.$it[8](v0,v7);
			;
			$f.l=520;
			v8=_162(v3,v4);
			;
			if(v8==0) {$b=32; break;}
			$f.l=521;
			v9=_164(v3,v4);
			;
			return v9;
		case 32:
			$f.l=523;
			return v3;
	}
	}
	//java/lang/Character:codePointAt
	function _168(vm,a0,a1){
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
			_166(v5);
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
			_167(v6);
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
			v8=_162(v3,v4);
			;
			if(v8==0) {$b=32; break;}
			$f.l=560;
			v9=_164(v3,v4);
			;
			return v9;
		case 32:
			$f.l=562;
			return v3;
	}
	}
	//java/lang/Character:codePointAt
	function _169(vm,a0,a1,a2){
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
			_167(v6);
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
			v8=_162(v3,v4);
			;
			if(v8==0) {$b=28; break;}
			$f.l=599;
			v5=_164(v3,v4);
			;
			return v5;
		case 28:
			$f.l=601;
			return v3;
	}
	}
	//java/lang/Character:codePointBefore
	function _16a(vm,a0,a1){
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
			_166(v5);
			throw v5;
		case 8:
			$f.l=628;
			v2=v0.$c.$it[7](v0);
			;
			$f.l=629;
			if(v1<1) {$b=13; break;}
			if(v1<=v2) {$b=17; break;}
		case 13:
			$f.l=630;
			v6=new java/lang/IndexOutOfBoundsException;
			_167(v6);
			throw v6;
		case 17:
			$f.l=633;
			v1=(v1 + -1)|0;
			v3=v0.$c.$it[8](v0,v1);
			;
			$f.l=634;
			v1=(v1 + -1)|0;
			if(v1>=0) {$b=25; break;}
			$f.l=635;
			return v3;
		case 25:
			$f.l=637;
			v4=v0.$c.$it[8](v0,v1);
			;
			$f.l=638;
			v7=_162(v4,v3);
			;
			if(v7==0) {$b=33; break;}
			$f.l=639;
			v8=_164(v4,v3);
			;
			return v8;
		case 33:
			$f.l=641;
			return v3;
	}
	}
	//java/lang/Character:codePointBefore
	function _16b(vm,a0,a1){
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
			_166(v5);
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
			_167(v6);
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
			v7=_162(v4,v3);
			;
			if(v7==0) {$b=33; break;}
			$f.l=679;
			v8=_164(v4,v3);
			;
			return v8;
		case 33:
			$f.l=681;
			return v3;
	}
	}
	//java/lang/Character:codePointBefore
	function _16c(vm,a0,a1,a2){
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
			_166(v6);
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
			_167(v7);
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
			v8=_162(v5,v4);
			;
			if(v8==0) {$b=36; break;}
			$f.l=723;
			v9=_164(v5,v4);
			;
			return v9;
		case 36:
			$f.l=725;
			return v4;
	}
	}
	//java/lang/Character:toChars
	function _16d(vm,a0,a1,a2){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=751;
			v0=a0;
			v1=a1;
			v2=a2;
			v6=_15e(v0);
			;
			if(v6!=0) {$b=10; break;}
			$f.l=752;
			v7=new java/lang/IllegalArgumentException;
			_16e(v7);
			throw v7;
		case 10:
			$f.l=754;
			if(v1!=null) {$b=16; break;}
			$f.l=755;
			v8=new java/lang/NullPointerException;
			_166(v8);
			throw v8;
		case 16:
			$f.l=757;
			if(v2<0) {$b=20; break;}
			v9=v1.len;
			if(v2<v9) {$b=24; break;}
		case 20:
			$f.l=758;
			v10=new java/lang/IndexOutOfBoundsException;
			_167(v10);
			throw v10;
		case 24:
			$f.l=761;
			v6=_15f(v0);
			;
			if(v6==0) {$b=53; break;}
			$f.l=762;
			v9=v1.len;
			v9=(v9 - 1)|0;
			if(v2!=v9) {$b=35; break;}
			$f.l=763;
			v10=new java/lang/IndexOutOfBoundsException;
			_167(v10);
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
	function _16f(vm,a0){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=795;
			v0=a0;
			v4=_15e(v0);
			;
			if(v4!=0) {$b=8; break;}
			$f.l=796;
			v5=new java/lang/IllegalArgumentException;
			_16e(v5);
			throw v5;
		case 8:
			$f.l=799;
			v4=_15f(v0);
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
			v7=newArray(40,2);
			v8=v2&0xffff;
			v7[0]=v8;
			v8=v3&0xffff;
			v7[1]=v8;
			return v7;
		case 27:
			$f.l=805;
			v7=newArray(40,1);
			v8=v0&0xffff;
			v7[0]=v8;
			return v7;
	}
	}
	//java/lang/Character:codePointCount
	function _170(vm,a0,a1,a2){
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
			_166(v7);
			throw v7;
		case 9:
			$f.l=831;
			v3=v0.$c.$it[7](v0);
			;
			$f.l=832;
			if(v1<0) {$b=15; break;}
			if(v2>v3) {$b=15; break;}
			if(v1<=v2) {$b=19; break;}
		case 15:
			$f.l=833;
			v8=new java/lang/IndexOutOfBoundsException;
			_167(v8);
			throw v8;
		case 19:
			$f.l=836;
			v4=0;
			$f.l=837;
			v5=v1;
		case 23:
			if(v5>=v2) {$b=44; break;}
			$f.l=838;
			v6=v0.$c.$it[8](v0,v5);
			;
			$f.l=839;
			v9=_160(v6);
			;
			if(v9==0) {$b=39; break;}
			$f.l=840;
			v5=(v5 + 1)|0;
			if(v5>=v2) {$b=39; break;}
			$f.l=841;
			v6=v0.$c.$it[8](v0,v5);
			;
			$f.l=842;
			v9=_161(v6);
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
	function _171(vm,a0,a1,a2){
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
			_166(v8);
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
			_167(v9);
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
			v10=_160(v7);
			;
			if(v10==0) {$b=41; break;}
			$f.l=885;
			v6=(v6 + 1)|0;
			if(v6>=v4) {$b=41; break;}
			$f.l=886;
			v7=v0[v6];
			$f.l=887;
			v10=_161(v7);
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
	function _172(vm,a0,a1,a2){
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
			_166(v7);
			throw v7;
		case 9:
			$f.l=924;
			v3=v0.$c.$it[7](v0);
			;
			$f.l=925;
			if(v1<0) {$b=14; break;}
			if(v1<=v3) {$b=18; break;}
		case 14:
			$f.l=926;
			v8=new java/lang/IndexOutOfBoundsException;
			_167(v8);
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
			_167(v8);
			throw v8;
		case 38:
			$f.l=941;
			v9=v0.$c.$it[8](v0,v5);
			;
			v10=_160(v9);
			;
			if(v10==0) {$b=51; break;}
			$f.l=942;
			v6=(v5 + 1)|0;
			$f.l=943;
			if(v6>=v3) {$b=51; break;}
			v9=v0.$c.$it[8](v0,v6);
			;
			v10=_161(v9);
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
			_167(v8);
			throw v8;
		case 72:
			$f.l=960;
			v9=v0.$c.$it[8](v0,v5);
			;
			v10=_161(v9);
			;
			if(v10==0) {$b=60; break;}
			$f.l=961;
			v6=(v5 - 1)|0;
			$f.l=962;
			if(v6<0) {$b=85; break;}
			v9=v0.$c.$it[8](v0,v6);
			;
			v10=_160(v9);
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
	function _173(vm,a0,a1,a2,a3,a4){
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
			_166(v9);
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
			_167(v11);
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
			_167(v11);
			throw v11;
		case 44:
			$f.l=1023;
			v12=v0[v7];
			v13=_160(v12);
			;
			if(v13==0) {$b=57; break;}
			$f.l=1024;
			v8=(v7 + 1)|0;
			$f.l=1025;
			if(v8>=v5) {$b=57; break;}
			v12=v0[v8];
			v13=_161(v12);
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
			_167(v11);
			throw v11;
		case 78:
			$f.l=1042;
			v12=v0[v7];
			v13=_161(v12);
			;
			if(v13==0) {$b=66; break;}
			$f.l=1043;
			v8=(v7 - 1)|0;
			$f.l=1044;
			if(v8<v1) {$b=91; break;}
			v12=v0[v8];
			v13=_160(v12);
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
	function _174(vm,a0){
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
	function _bd(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=1069;
	v0=a0;
	v1=new java/lang/Character;
	_14d(v1,v0);
	return v1;
	}
	//java/lang/Character:isWhitespace
	function _175(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=1076;
	v0=a0;
	v1=_176(v0);
	;
	return v1;
	}
	//java/lang/Character:isWhitespace
	function _176(vm,a0){
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
	function _177(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=1116;
	v0=a0;
	v1=_178(v0);
	;
	return v1;
	}
	//java/lang/Character:<clinit>
	function _179(vm){
	var v0;
	var $f=vm.frames[vm.fp++];
	$f.l=24;
	v0=vm.getClass(40);
	v0=v0.componentType;
	$g28=v0;
	return;
	}
	//org/jbox2d/collision/Distance$SimplexCache:<init>
	function _42(vm,a0){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	$f.l=85;
	v0=a0;
	_0(v0);
	$f.l=81;
	v1=newArray(6,3);
	v0.indexA=v1;
	$f.l=83;
	v1=newArray(6,3);
	v0.indexB=v1;
	$f.l=86;
	v0.metric=0.0;
	$f.l=87;
	v0.count=0;
	$f.l=88;
	v1=v0.indexA;
	v1[0]=2147483647;
	$f.l=89;
	v1=v0.indexA;
	v1[1]=2147483647;
	$f.l=90;
	v1=v0.indexA;
	v1[2]=2147483647;
	$f.l=91;
	v1=v0.indexB;
	v1[0]=2147483647;
	$f.l=92;
	v1=v0.indexB;
	v1[1]=2147483647;
	$f.l=93;
	v1=v0.indexB;
	v1[2]=2147483647;
	$f.l=94;
	return;
	}
	//org/jbox2d/collision/Distance$DistanceProxy:<init>
	function _89(vm,a0){
	var v0,v1,v2,v3,v4;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=481;
			v0=a0;
			_0(v0);
			$f.l=482;
			v3=newArray(38,8);
			v0.m_vertices=v3;
			$f.l=483;
			v1=0;
		case 8:
			v3=v0.m_vertices;
			v4=v3.len;
			if(v1>=v4) {$b=19; break;}
			$f.l=484;
			v3=v0.m_vertices;
			v2=new org/jbox2d/common/Vec2;
			_1a(v2);
			v3[v1]=v2;
			$f.l=483;
			v1=(v1 + 1)|0;
			{ $b=8; break; }
		case 19:
			$f.l=486;
			v3=newArray(38,2);
			v0.m_buffer=v3;
			$f.l=487;
			v0.m_count=0;
			$f.l=488;
			v0.m_radius=0.0;
			$f.l=489;
			return;
	}
	}
	//org/jbox2d/collision/Distance$DistanceProxy:set
	function _49(vm,a0,a1,a2){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=496;
			v0=a0;
			v1=a1;
			v2=a2;
			v3=$g8;
			v8=_74(v1);
			;
			v9=_4f(v8);
			;
			v9=v3[v9];
			switch(v9){
			case 1: $b=9;break;
			case 2: $b=23;break;
			case 3: $b=46;break;
			case 4: $b=97;break;
			}
		case 9:
			$f.l=498;
			v4=vm.cast(v1,41);
			$f.l=499;
			v10=v0.m_vertices;
			v11=v10[0];
			v12=v4.m_p;
			v12=_28(v11,v12);
			;
			$f.l=500;
			v0.m_count=1;
			$f.l=501;
			v13=v4.m_radius;
			v0.m_radius=v13;
			$f.l=503;
			{ $b=122; break; }
		case 23:
			$f.l=505;
			v5=vm.cast(v1,42);
			$f.l=506;
			v9=v5.m_count;
			v0.m_count=v9;
			$f.l=507;
			v13=v5.m_radius;
			v0.m_radius=v13;
			$f.l=508;
			v6=0;
		case 33:
			v9=v0.m_count;
			if(v6>=v9) {$b=44; break;}
			$f.l=509;
			v10=v0.m_vertices;
			v12=v10[v6];
			v10=v5.m_vertices;
			v11=v10[v6];
			v12=_28(v12,v11);
			;
			$f.l=508;
			v6=(v6 + 1)|0;
			{ $b=33; break; }
		case 44:
			$f.l=511;
			{ $b=122; break; }
		case 46:
			$f.l=513;
			v14=vm.cast(v1,43);
			$f.l=514;
			v15=$g49;
			if(v15!=0) {$b=57; break;}
			if(0>v2) {$b=54; break;}
			v9=v14.m_count;
			if(v2<v9) {$b=57; break;}
		case 54:
			v16=new java/lang/AssertionError;
			_26(v16);
			throw v16;
		case 57:
			$f.l=516;
			v10=v0.m_buffer;
			v17=v14.m_vertices;
			v12=v17[v2];
			v10[0]=v12;
			$f.l=517;
			v9=(v2 + 1)|0;
			v18=v14.m_count;
			if(v9>=v18) {$b=73; break;}
			$f.l=518;
			v17=v0.m_buffer;
			v10=v14.m_vertices;
			v18=(v2 + 1)|0;
			v12=v10[v18];
			v17[1]=v12;
			{ $b=78; break; }
		case 73:
			$f.l=520;
			v17=v0.m_buffer;
			v10=v14.m_vertices;
			v12=v10[0];
			v17[1]=v12;
		case 78:
			$f.l=523;
			v17=v0.m_vertices;
			v12=v17[0];
			v17=v0.m_buffer;
			v11=v17[0];
			v12=_28(v12,v11);
			;
			$f.l=524;
			v17=v0.m_vertices;
			v12=v17[1];
			v17=v0.m_buffer;
			v11=v17[1];
			v12=_28(v12,v11);
			;
			$f.l=525;
			v0.m_count=2;
			$f.l=526;
			v13=v14.m_radius;
			v0.m_radius=v13;
			$f.l=527;
			{ $b=122; break; }
		case 97:
			$f.l=529;
			v7=vm.cast(v1,44);
			$f.l=530;
			v17=v0.m_vertices;
			v12=v17[0];
			v11=v7.m_vertex1;
			v12=_28(v12,v11);
			;
			$f.l=531;
			v17=v0.m_vertices;
			v12=v17[1];
			v11=v7.m_vertex2;
			v12=_28(v12,v11);
			;
			$f.l=532;
			v0.m_count=2;
			$f.l=533;
			v13=v7.m_radius;
			v0.m_radius=v13;
			$f.l=534;
			{ $b=122; break; }
			$f.l=536;
			v15=$g49;
			if(v15!=0) {$b=122; break;}
			v16=new java/lang/AssertionError;
			_26(v16);
			throw v16;
		case 122:
			$f.l=538;
			return;
	}
	}
	//org/jbox2d/collision/Distance$DistanceProxy:getSupport
	function _17a(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=547;
			v0=a0;
			v1=a1;
			v2=0;
			$f.l=548;
			v6=v0.m_vertices;
			v7=v6[0];
			v3=_4d(v7,v1);
			;
			$f.l=549;
			v4=1;
		case 10:
			v8=v0.m_count;
			if(v4>=v8) {$b=26; break;}
			$f.l=550;
			v6=v0.m_vertices;
			v7=v6[v4];
			v5=_4d(v7,v1);
			;
			$f.l=551;
			v9=(v5 != v5 || v3 != v3) ? -1 : (v5 > v3) - (v5 < v3);
			if(v9<=0) {$b=23; break;}
			$f.l=552;
			v2=v4;
			$f.l=553;
			v3=v5;
		case 23:
			$f.l=549;
			v4=(v4 + 1)|0;
			{ $b=10; break; }
		case 26:
			$f.l=557;
			return v2;
	}
	}
	//org/jbox2d/collision/Distance$DistanceProxy:getVertex
	function _17b(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5,v6;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=596;
			v0=a0;
			v1=a1;
			v2=$g49;
			if(v2!=0) {$b=11; break;}
			if(0>v1) {$b=8; break;}
			v3=v0.m_count;
			if(v1<v3) {$b=11; break;}
		case 8:
			v4=new java/lang/AssertionError;
			_26(v4);
			throw v4;
		case 11:
			$f.l=597;
			v5=v0.m_vertices;
			v6=v5[v1];
			return v6;
	}
	}
	//org/jbox2d/collision/Distance$DistanceProxy:<clinit>
	function _17c(vm){
	var v0,v1;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=475;
			v0=vm.getClass(45);
			v1=_3f(v0);
			;
			if(v1!=0) {$b=6; break;}
			v1=1;
			{ $b=7; break; }
		case 6:
			v1=0;
		case 7:
			$g49=v1;
			return;
	}
	}
	//java/lang/StringToReal:parseDblImpl
	function _17d(vm,a0,a1){
	var v0,v1,v2;
	var $f=vm.frames[vm.fp++];
	$f.l=51;
	v0=a0;
	v1=a1;
	v2=new java/lang/UnsupportedOperationException;
	_17e(v2);
	throw v2;
	}
	//java/lang/StringToReal:parseFltImpl
	function _17f(vm,a0,a1){
	var v0,v1,v2,v3;
	var $f=vm.frames[vm.fp++];
	$f.l=62;
	v0=a0;
	v1=a1;
	v2=_17d(v0,v1);
	;
	v3=v2;
	return v3;
	}
	//java/lang/StringToReal:invalidReal
	function _180(vm,a0,a1){
	var v0,v1,v2,v3,v4,v5;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)switch($b){
		case -1:
			$f.l=66;
			v0=a0;
			v1=a1;
			v2=new java/lang/NumberFormatException;
			v3=v2;
			v4=new java/lang/StringBuilder;
			_9(v4);
			v4=_b(v4,$str39);
			;
			if(v1==0) {$b=11; break;}
			v5=$str40;
			{ $b=12; break; }
		case 11:
			v5=$str41;
		case 12:
			v4=_b(v4,v5);
			;
			v4=_b(v4,$str42);
			;
			v4=_b(v4,v0);
			;
			v4=_b(v4,$str43);
			;
			v5=v4.$c.$vt[0](v4);
			;
			_181(v2,v5);
			throw v2;
	}
	}
	//java/lang/StringToReal:initialParse
	function _182(vm,a0,a1,a2){
	var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26;
	var $f=vm.frames[vm.fp++];
	var $b=-1;
	while(1)try{switch($b){
		case -1:
			$f.l=77;
			$f.trap=0;
			v0=a0;
			v1=a1;
			v2=a2;
			v3=new java/lang/StringToReal$StringExponentPair;
			_12b(v3,null);
			v4=v3;
			$f.l=78;
			if(v1!=0) {$b=14; break;}
			$f.l=79;
			v13=_180(v0,v2);
			;
			throw v13;
		case 14:
			$f.l=81;
			v3=v4;
			v14=_183(v0,0);
			;
			if(v14!=45) {$b=20; break;}
			v15=1;
			{ $b=21; break; }
		case 20:
			v15=0;
		case 21:
			v4.negative=v15;
			$f.l=85;
			v16=(v1 - 1)|0;
			v5=_183(v0,v16);
			;
			$f.l=86;
			if(v5==68) {$b=30; break;}
			if(v5==100) {$b=30; break;}
			if(v5==70) {$b=30; break;}
			if(v5!=102) {$b=37; break;}
		case 30:
			$f.l=87;
			v1=(v1 + -1)|0;
			$f.l=88;
			if(v1!=0) {$b=37; break;}
			$f.l=89;
			v13=_180(v0,v2);
			;
			throw v13;
		case 37:
			$f.l=93;
			v16=_184(v0,69);
			;
			v17=_184(v0,101);
			;
			v6=_185(v16,v17);
			;
			$f.l=94;
			if(v6==-1) {$b=119; break;}
			$f.l=96;
			v17=(v6 + 1)|0;
			if(v17!=v1) {$b=49; break;}
			$f.l=97;
			v13=_180(v0,v2);
			;
			throw v13;
		case 49:
			$f.l=101;
			v7=(v6 + 1)|0;
			$f.l=102;
			v8=0;
			$f.l=103;
			v9=_183(v0,v7);
			;
			$f.l=104;
			if(v9==43) {$b=58; break;}
			if(v9!=45) {$b=66; break;}
		case 58:
			$f.l=105;
			if(v9!=45) {$b=62; break;}
			v15=1;
			{ $b=63; break; }
		case 62:
			v15=0;
		case 63:
			v8=v15;
			$f.l=106;
			v7=(v7 + 1)|0;
		case 66:
			$f.l=110;
			v10=_186(v0,v7,v1);
			;
			$f.l=111;
			v17=_187(v10);
			;
			if(v17!=0) {$b=74; break;}
			$f.l=112;
			v13=_180(v0,v2);
			;
			throw v13;
		case 74:
			$f.l=114;
			v11=0;
		case 76:
			v17=_187(v10);
			;
			if(v11>=v17) {$b=89; break;}
			$f.l=115;
			v12=_183(v10,v11);
			;
			$f.l=116;
			if(v12<48) {$b=83; break;}
			if(v12<=57) {$b=86; break;}
		case 83:
			$f.l=117;
			v13=_180(v0,v2);
			;
			throw v13;
		case 86:
			$f.l=114;
			v11=(v11 + 1)|0;
			{ $b=76; break; }
		case 89:
			$f.l=123;
			$f.trap=1;
			v17=_188(v10);
			;
			v18=Math.floor(v17);
			v4.e=v18;
			$f.l=124;
			if(v8==0) {$b=100; break;}
			$f.l=125;
			v18=v4.e;
			v18=-v18;
			v4.e=v18;
		case 100:
			$f.l=135;
			$f.trap=0;
			{ $b=117; break; }
		case 103:
			$f.l=127;
			$f.trap=0;
			v13=__caught;
			v19=v13;
			$f.l=129;
			if(v8==0) {$b=112; break;}
			$f.l=130;
			v4.zero=1;
			{ $b=114; break; }
		case 112:
			$f.l=132;
			v4.infinity=1;
		case 114:
			$f.l=134;
			$f.trap=0;
			return v4;
		case 117:
			$f.l=136;
			{ $b=121; break; }
		case 119:
			$f.l=137;
			v6=v1;
		case 121:
			$f.l=139;
			if(v1!=0) {$b=126; break;}
			$f.l=140;
			v13=_180(v0,v2);
			;
			throw v13;
		case 126:
			$f.l=143;
			v7=0;
			$f.l=144;
			v5=_183(v0,v7);
			;
			$f.l=145;
			if(v5!=45) {$b=139; break;}
			$f.l=146;
			v7=(v7 + 1)|0;
			$f.l=147;
			v1=(v1 + -1)|0;
			$f.l=148;
			v4.negative=1;
			{ $b=145; break; }
		case 139:
			$f.l=149;
			if(v5!=43) {$b=145; break;}
			$f.l=150;
			v7=(v7 + 1)|0;
			$f.l=151;
			v1=(v1 + -1)|0;
		case 145:
			$f.l=153;
			if(v1!=0) {$b=150; break;}
			$f.l=154;
			v13=_180(v0,v2);
			;
			throw v13;
		case 150:
			$f.l=157;
			v20=_184(v0,46);
			;
			$f.l=158;
			if(v20<=-1) {$b=172; break;}
			$f.l=159;
			v3=v4;
			v18=v4.e;
			v17=(v6 - v20)|0;
			v17=(v17 - 1)|0;
			v21=Math.floor(v17);
			v21=(v18 - v21)|0;
			v4.e=v21;
			$f.l=160;
			v22=new java/lang/StringBuilder;
			_9(v22);
			v23=_186(v0,v7,v20);
			;
			v22=_b(v22,v23);
			;
			v17=(v20 + 1)|0;
			v23=_186(v0,v17,v6);
			;
			v22=_b(v22,v23);
			;
			v0=v22.$c.$vt[0](v22);
			;
			{ $b=174; break; }
		case 172:
			$f.l=162;
			v0=_186(v0,v7,v6);
			;
		case 174:
			$f.l=165;
			v17=_187(v0);
			;
			v1=v17;
			if(v17!=0) {$b=181; break;}
			$f.l=166;
			v13=_180(v0,v2);
			;
			throw v13;
		case 181:
			$f.l=169;
			v6=v1;
		case 183:
			$f.l=170;
			if(v6<=1) {$b=191; break;}
			v17=(v6 - 1)|0;
			v14=_183(v0,v17);
			;
			if(v14!=48) {$b=191; break;}
			$f.l=171;
			v6=(v6 + -1)|0;
			{ $b=183; break; }
		case 191:
			$f.l=174;
			v7=0;
		case 193:
			$f.l=175;
			v17=(v6 - 1)|0;
			if(v7>=v17) {$b=201; break;}
			v14=_183(v0,v7);
			;
			if(v14!=48) {$b=201; break;}
			$f.l=176;
			v7=(v7 + 1)|0;
			{ $b=193; break; }
		case 201:
			$f.l=179;
			if(v6!=v1) {$b=204; break;}
			if(v7==0) {$b=213; break;}
		case 204:
			$f.l=180;
			v3=v4;
			v21=v4.e;
			v17=(v1 - v6)|0;
			v18=Math.floor(v17);
			v21=(v21 + v18)|0;
			v4.e=v21;
			$f.l=181;
			v0=_186(v0,v7,v6);
			;
		case 213:
			$f.l=187;
			v24=-359;
			$f.l=188;
			v25=52;
			$f.l=189;
			v1=_187(v0);
			;
			$f.l=190;
			if(v1<=52) {$b=239; break;}
			v21=v4.e;
			v26=(v21 > -359) - (v21 < -359);
			if(v26>=0) {$b=239; break;}
			$f.l=191;
			v21=v4.e;
			v17=v21|0;
			v17=(-359 - v17)|0;
			v16=(v1 - 1)|0;
			v11=_189(v17,v16);
			;
			$f.l=192;
			v17=(v1 - v11)|0;
			v0=_186(v0,0,v17);
			;
			$f.l=193;
			v3=v4;
			v21=v4.e;
			v18=Math.floor(v11);
			v21=(v21 + v18)|0;
			v4.e=v21;
		case 239:
			$f.l=199;
			v21=v4.e;
			v26=(v21 > -1024) - (v21 < -1024);
			if(v26>=0) {$b=248; break;}
			$f.l=200;
			v4.zero=1;
			$f.l=201;
			$f.trap=0;
			return v4;
		case 248:
			$f.l=202;
			v21=v4.e;
			v26=(v21 > 1024) - (v21 < 1024);
			if(v26<=0) {$b=257; break;}
			$f.l=203;
			v4.infinity=1;
			$f.l=204;
			$f.trap=0;
			return v4;
		case 257:
			$f.l=207;
			v4.s=v0;
			$f.l=208;
			$f.trap=0;
			return v4;
	}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,46)) {$b=103; continue;}
	}
throw error;
}
}
//java/lang/StringToReal:parseName
function _18a(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=214;
		v0=a0;
		v1=a1;
		v2=0;
		$f.l=215;
		v3=0;
		$f.l=216;
		v4=_187(v0);
		;
		$f.l=217;
		v5=_183(v0,v3);
		;
		$f.l=218;
		if(v5!=45) {$b=19; break;}
		$f.l=219;
		v2=1;
		$f.l=220;
		v3=(v3 + 1)|0;
		$f.l=221;
		v4=(v4 + -1)|0;
		{ $b=25; break; }
	case 19:
		$f.l=222;
		if(v5!=43) {$b=25; break;}
		$f.l=223;
		v3=(v3 + 1)|0;
		$f.l=224;
		v4=(v4 + -1)|0;
	case 25:
		$f.l=227;
		if(v4!=8) {$b=35; break;}
		v6=_18b(v0,0,v3,$str44,0,8);
		;
		if(v6==0) {$b=35; break;}
		$f.l=228;
		if(v2==0) {$b=33; break;}
		v7=-Infinity;
		{ $b=34; break; }
	case 33:
		v7=Infinity;
	case 34:
		return v7;
	case 35:
		$f.l=230;
		if(v4!=3) {$b=41; break;}
		v6=_18b(v0,0,v3,$str45,0,3);
		;
		if(v6==0) {$b=41; break;}
		$f.l=231;
		return NaN;
	case 41:
		$f.l=233;
		v8=_180(v0,v1);
		;
		throw v8;
}
}
//java/lang/StringToReal:parseDouble
function _18c(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=247;
		v0=a0;
		v0=_18d(v0);
		;
		$f.l=248;
		v1=_187(v0);
		;
		$f.l=250;
		if(v1!=0) {$b=10; break;}
		$f.l=251;
		v5=_180(v0,1);
		;
		throw v5;
	case 10:
		$f.l=255;
		v6=(v1 - 1)|0;
		v2=_183(v0,v6);
		;
		$f.l=256;
		if(v2==121) {$b=16; break;}
		if(v2!=78) {$b=20; break;}
	case 16:
		$f.l=257;
		v7=_18a(v0,1);
		;
		v8=v7;
		return v8;
	case 20:
		$f.l=266;
		v3=_182(v0,v1,1);
		;
		$f.l=267;
		v9=v3.infinity;
		if(v9!=0) {$b=27; break;}
		v9=v3.zero;
		if(v9==0) {$b=31; break;}
	case 27:
		$f.l=268;
		v7=_12a(v3);
		;
		v8=v7;
		return v8;
	case 31:
		$f.l=270;
		v10=v3.s;
		v11=v3.e;
		v6=v11|0;
		v4=_17d(v10,v6);
		;
		$f.l=271;
		v11=_18e(v4);
		;
		v12=(v11 > -1) - (v11 < -1);
		if(v12!=0) {$b=43; break;}
		$f.l=272;
		v5=_180(v0,1);
		;
		throw v5;
	case 43:
		$f.l=274;
		v9=v3.negative;
		if(v9==0) {$b=48; break;}
		v8=-v4;
		{ $b=49; break; }
	case 48:
		v8=v4;
	case 49:
		return v8;
}
}
//java/lang/StringToReal:parseFloat
function _18f(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=288;
		v0=a0;
		v0=_18d(v0);
		;
		$f.l=289;
		v1=_187(v0);
		;
		$f.l=291;
		if(v1!=0) {$b=10; break;}
		$f.l=292;
		v5=_180(v0,0);
		;
		throw v5;
	case 10:
		$f.l=296;
		v6=(v1 - 1)|0;
		v2=_183(v0,v6);
		;
		$f.l=297;
		if(v2==121) {$b=16; break;}
		if(v2!=78) {$b=19; break;}
	case 16:
		$f.l=298;
		v7=_18a(v0,0);
		;
		return v7;
	case 19:
		$f.l=307;
		v3=_182(v0,v1,0);
		;
		$f.l=308;
		v8=v3.infinity;
		if(v8!=0) {$b=26; break;}
		v8=v3.zero;
		if(v8==0) {$b=29; break;}
	case 26:
		$f.l=309;
		v7=_12a(v3);
		;
		return v7;
	case 29:
		$f.l=311;
		v9=v3.s;
		v10=v3.e;
		v6=v10|0;
		v4=_17f(v9,v6);
		;
		$f.l=312;
		v6=_190(v4);
		;
		if(v6!=-1) {$b=40; break;}
		$f.l=313;
		v5=_180(v0,0);
		;
		throw v5;
	case 40:
		$f.l=315;
		v8=v3.negative;
		if(v8==0) {$b=45; break;}
		v7=-v4;
		{ $b=46; break; }
	case 45:
		v7=v4;
	case 46:
		return v7;
}
}
//java/lang/Math:abs
function _191(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=_192(v0);
;
v1=(v1 & 2147483647)|0;
v2=_193(v1);
;
return v2;
}
//java/lang/Math:ceil
function _a8(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=231;
v0=a0;
v1=newArray(0,1);
v2=_b9(v0);
;
v1[0]=v2;
v3=_b6($str46,v1);
;
return v3;
}
//java/lang/Math:cos
function _143(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=250;
v0=a0;
v1=newArray(0,1);
v2=_b9(v0);
;
v1[0]=v2;
v3=_b6($str47,v1);
;
return v3;
}
//java/lang/Math:floor
function _194(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=333;
v0=a0;
v1=newArray(0,1);
v2=_b9(v0);
;
v1[0]=v2;
v3=_b6($str48,v1);
;
return v3;
}
//java/lang/Math:max
function _185(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=524;
		v0=a0;
		v1=a1;
		if(v0<=v1) {$b=6; break;}
		v2=v0;
		{ $b=7; break; }
	case 6:
		v2=v1;
	case 7:
		return v2;
}
}
//java/lang/Math:min
function _189(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=602;
		v0=a0;
		v1=a1;
		if(v0>=v1) {$b=6; break;}
		v2=v0;
		{ $b=7; break; }
	case 6:
		v2=v1;
	case 7:
		return v2;
}
}
//java/lang/Math:sin
function _144(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=804;
v0=a0;
v1=newArray(0,1);
v2=_b9(v0);
;
v1[0]=v2;
v3=_b6($str49,v1);
;
return v3;
}
//org/jbox2d/dynamics/Island:<init>
function _f4(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=182;
v0=a0;
_0(v0);
$f.l=235;
v1=new org/jbox2d/dynamics/contacts/ContactSolver;
_1b(v1);
v0.contactSolver=v1;
$f.l=236;
v2=new org/jbox2d/common/Timer;
_ef(v2);
v0.timer=v2;
$f.l=237;
v3=new org/jbox2d/dynamics/SolverData;
_195(v3);
v0.solverData=v3;
$f.l=238;
v4=new org/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;
_6d(v4);
v0.solverDef=v4;
$f.l=430;
v1=new org/jbox2d/dynamics/contacts/ContactSolver;
_1b(v1);
v0.toiContactSolver=v1;
$f.l=431;
v4=new org/jbox2d/dynamics/contacts/ContactSolver$ContactSolverDef;
_6d(v4);
v0.toiSolverDef=v4;
$f.l=580;
v5=new org/jbox2d/callbacks/ContactImpulse;
_196(v5);
v0.impulse=v5;
$f.l=184;
return;
}
//org/jbox2d/dynamics/Island:init
function _110(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=189;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v0.m_bodyCapacity=v1;
		$f.l=190;
		v0.m_contactCapacity=v2;
		$f.l=191;
		v0.m_jointCapacity=v3;
		$f.l=192;
		v0.m_bodyCount=0;
		$f.l=193;
		v0.m_contactCount=0;
		$f.l=194;
		v0.m_jointCount=0;
		$f.l=196;
		v0.m_listener=v4;
		$f.l=198;
		v7=v0.m_bodies;
		if(v7==null) {$b=26; break;}
		v8=v0.m_bodyCapacity;
		v7=v0.m_bodies;
		v9=v7.len;
		if(v8<=v9) {$b=30; break;}
	case 26:
		$f.l=199;
		v9=v0.m_bodyCapacity;
		v7=newArray(29,v9);
		v0.m_bodies=v7;
	case 30:
		$f.l=201;
		v10=v0.m_joints;
		if(v10==null) {$b=37; break;}
		v9=v0.m_jointCapacity;
		v10=v0.m_joints;
		v8=v10.len;
		if(v9<=v8) {$b=41; break;}
	case 37:
		$f.l=202;
		v9=v0.m_jointCapacity;
		v10=newArray(47,v9);
		v0.m_joints=v10;
	case 41:
		$f.l=204;
		v11=v0.m_contacts;
		if(v11==null) {$b=48; break;}
		v9=v0.m_contactCapacity;
		v11=v0.m_contacts;
		v8=v11.len;
		if(v9<=v8) {$b=52; break;}
	case 48:
		$f.l=205;
		v9=v0.m_contactCapacity;
		v11=newArray(48,v9);
		v0.m_contacts=v11;
	case 52:
		$f.l=209;
		v12=v0.m_velocities;
		if(v12==null) {$b=59; break;}
		v9=v0.m_bodyCapacity;
		v12=v0.m_velocities;
		v8=v12.len;
		if(v9<=v8) {$b=87; break;}
	case 59:
		$f.l=210;
		v12=v0.m_velocities;
		if(v12!=null) {$b=64; break;}
		v12=newArray(49,0);
		{ $b=65; break; }
	case 64:
		v12=v0.m_velocities;
	case 65:
		v5=v12;
		$f.l=211;
		v9=v0.m_bodyCapacity;
		v12=newArray(49,v9);
		v0.m_velocities=v12;
		$f.l=212;
		v12=v0.m_velocities;
		v9=v5.len;
		_15(v5,0,v12,0,v9);
		$f.l=213;
		v6=v5.len;
	case 76:
		v12=v0.m_velocities;
		v9=v12.len;
		if(v6>=v9) {$b=87; break;}
		$f.l=214;
		v12=v0.m_velocities;
		v13=new org/jbox2d/dynamics/contacts/Velocity;
		_19(v13);
		v12[v6]=v13;
		$f.l=213;
		v6=(v6 + 1)|0;
		{ $b=76; break; }
	case 87:
		$f.l=219;
		v14=v0.m_positions;
		if(v14==null) {$b=94; break;}
		v9=v0.m_bodyCapacity;
		v14=v0.m_positions;
		v8=v14.len;
		if(v9<=v8) {$b=122; break;}
	case 94:
		$f.l=220;
		v14=v0.m_positions;
		if(v14!=null) {$b=99; break;}
		v14=newArray(50,0);
		{ $b=100; break; }
	case 99:
		v14=v0.m_positions;
	case 100:
		v15=v14;
		$f.l=221;
		v9=v0.m_bodyCapacity;
		v14=newArray(50,v9);
		v0.m_positions=v14;
		$f.l=222;
		v14=v0.m_positions;
		v9=v15.len;
		_15(v15,0,v14,0,v9);
		$f.l=223;
		v6=v15.len;
	case 111:
		v14=v0.m_positions;
		v9=v14.len;
		if(v6>=v9) {$b=122; break;}
		$f.l=224;
		v14=v0.m_positions;
		v16=new org/jbox2d/dynamics/contacts/Position;
		_197(v16);
		v14[v6]=v16;
		$f.l=223;
		v6=(v6 + 1)|0;
		{ $b=111; break; }
	case 122:
		$f.l=227;
		return;
}
}
//org/jbox2d/dynamics/Island:clear
function _114(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=230;
v0=a0;
v0.m_bodyCount=0;
$f.l=231;
v0.m_contactCount=0;
$f.l=232;
v0.m_jointCount=0;
$f.l=233;
return;
}
//org/jbox2d/dynamics/Island:solve
function _11a(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=243;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=v2.dt;
		$f.l=246;
		v6=0;
	case 9:
		v15=v0.m_bodyCount;
		if(v6>=v15) {$b=129; break;}
		$f.l=247;
		v16=v0.m_bodies;
		v7=v16[v6];
		$f.l=248;
		v17=v7.m_sweep;
		v8=v17.c;
		$f.l=249;
		v17=v7.m_sweep;
		v9=v17.a;
		$f.l=250;
		v10=v7.m_linearVelocity;
		$f.l=251;
		v11=v7.m_angularVelocity;
		$f.l=254;
		v17=v7.m_sweep;
		v18=v17.c0;
		v17=v7.m_sweep;
		v19=v17.c;
		v19=_28(v18,v19);
		;
		$f.l=255;
		v17=v7.m_sweep;
		v20=v7.m_sweep;
		v21=v20.a;
		v17.a0=v21;
		$f.l=257;
		v22=v7.m_type;
		v23=$g38;
		if(v22!=v23) {$b=94; break;}
		$f.l=260;
		v19=v10;
		v21=v10.x;
		v24=v7.m_gravityScale;
		v25=v3.x;
		v25=v24 * v25;
		v24=v7.m_invMass;
		v18=v7.m_force;
		v26=v18.x;
		v26=v24 * v26;
		v26=v25 + v26;
		v26=v5 * v26;
		v26=v21 + v26;
		v10.x=v26;
		$f.l=261;
		v19=v10;
		v26=v10.y;
		v25=v7.m_gravityScale;
		v24=v3.y;
		v25=v25 * v24;
		v24=v7.m_invMass;
		v18=v7.m_force;
		v21=v18.y;
		v24=v24 * v21;
		v25=v25 + v24;
		v25=v5 * v25;
		v26=v26 + v25;
		v10.y=v26;
		$f.l=262;
		v26=v7.m_invI;
		v26=v5 * v26;
		v25=v7.m_torque;
		v26=v26 * v25;
		v11=v11 + v26;
		$f.l=272;
		v26=v7.m_linearDamping;
		v26=v5 * v26;
		v26=1.0 - v26;
		v12=_33(v26,0.0,1.0);
		;
		$f.l=273;
		v19=v10;
		v26=v10.x;
		v26=v26 * v12;
		v10.x=v26;
		$f.l=274;
		v19=v10;
		v26=v10.y;
		v26=v26 * v12;
		v10.y=v26;
		$f.l=275;
		v26=v7.m_angularDamping;
		v26=v5 * v26;
		v26=1.0 - v26;
		v26=_33(v26,0.0,1.0);
		;
		v11=v11 * v26;
	case 94:
		$f.l=278;
		v27=v0.m_positions;
		v28=v27[v6];
		v19=v28.c;
		v26=v8.x;
		v19.x=v26;
		$f.l=279;
		v27=v0.m_positions;
		v28=v27[v6];
		v19=v28.c;
		v26=v8.y;
		v19.y=v26;
		$f.l=280;
		v27=v0.m_positions;
		v28=v27[v6];
		v28.a=v9;
		$f.l=281;
		v29=v0.m_velocities;
		v30=v29[v6];
		v19=v30.v;
		v26=v10.x;
		v19.x=v26;
		$f.l=282;
		v29=v0.m_velocities;
		v30=v29[v6];
		v19=v30.v;
		v26=v10.y;
		v19.y=v26;
		$f.l=283;
		v29=v0.m_velocities;
		v30=v29[v6];
		v30.w=v11;
		$f.l=246;
		v6=(v6 + 1)|0;
		{ $b=9; break; }
	case 129:
		$f.l=286;
		v31=v0.timer;
		_108(v31);
		$f.l=289;
		v32=v0.solverData;
		v32.step=v2;
		$f.l=290;
		v32=v0.solverData;
		v27=v0.m_positions;
		v32.positions=v27;
		$f.l=291;
		v32=v0.solverData;
		v29=v0.m_velocities;
		v32.velocities=v29;
		$f.l=294;
		v33=v0.solverDef;
		v33.step=v2;
		$f.l=295;
		v33=v0.solverDef;
		v34=v0.m_contacts;
		v33.contacts=v34;
		$f.l=296;
		v33=v0.solverDef;
		v15=v0.m_contactCount;
		v33.count=v15;
		$f.l=297;
		v33=v0.solverDef;
		v27=v0.m_positions;
		v33.positions=v27;
		$f.l=298;
		v33=v0.solverDef;
		v29=v0.m_velocities;
		v33.velocities=v29;
		$f.l=300;
		v35=v0.contactSolver;
		v33=v0.solverDef;
		_21(v35,v33);
		$f.l=302;
		v35=v0.contactSolver;
		_2b(v35);
		$f.l=304;
		v36=v2.warmStarting;
		if(v36==0) {$b=175; break;}
		$f.l=306;
		v35=v0.contactSolver;
		_2a(v35);
	case 175:
		$f.l=309;
		v6=0;
	case 177:
		v15=v0.m_jointCount;
		if(v6>=v15) {$b=187; break;}
		$f.l=310;
		v37=v0.m_joints;
		v38=v37[v6];
		v32=v0.solverData;
		v38.$c.$vt[5](v38,v32);
		$f.l=309;
		v6=(v6 + 1)|0;
		{ $b=177; break; }
	case 187:
		$f.l=313;
		v31=v0.timer;
		v26=_10b(v31);
		;
		v1.solveInit=v26;
		$f.l=316;
		v31=v0.timer;
		_108(v31);
		$f.l=318;
		v6=0;
	case 196:
		v15=v2.velocityIterations;
		if(v6>=v15) {$b=216; break;}
		$f.l=319;
		v39=0;
	case 200:
		v15=v0.m_jointCount;
		if(v39>=v15) {$b=210; break;}
		$f.l=320;
		v37=v0.m_joints;
		v38=v37[v39];
		v32=v0.solverData;
		v38.$c.$vt[6](v38,v32);
		$f.l=319;
		v39=(v39 + 1)|0;
		{ $b=200; break; }
	case 210:
		$f.l=323;
		v35=v0.contactSolver;
		_32(v35);
		$f.l=318;
		v6=(v6 + 1)|0;
		{ $b=196; break; }
	case 216:
		$f.l=327;
		v35=v0.contactSolver;
		_37(v35);
		$f.l=328;
		v31=v0.timer;
		v26=_10b(v31);
		;
		v1.solveVelocity=v26;
		$f.l=331;
		v6=0;
	case 225:
		v15=v0.m_bodyCount;
		if(v6>=v15) {$b=311; break;}
		$f.l=332;
		v27=v0.m_positions;
		v28=v27[v6];
		v40=v28.c;
		$f.l=333;
		v27=v0.m_positions;
		v28=v27[v6];
		v41=v28.a;
		$f.l=334;
		v29=v0.m_velocities;
		v30=v29[v6];
		v42=v30.v;
		$f.l=335;
		v29=v0.m_velocities;
		v30=v29[v6];
		v43=v30.w;
		$f.l=338;
		v26=v42.x;
		v11=v26 * v5;
		$f.l=339;
		v26=v42.y;
		v12=v26 * v5;
		$f.l=341;
		v26=v11 * v11;
		v25=v12 * v12;
		v26=v26 + v25;
		v44=(v26 != v26 || 4.0 != 4.0) ? -1 : (v26 > 4.0) - (v26 < 4.0);
		if(v44<=0) {$b=271; break;}
		$f.l=342;
		v26=v11 * v11;
		v25=v12 * v12;
		v26=v26 + v25;
		v26=_198(v26);
		;
		v13=2.0 / v26;
		$f.l=344;
		v19=v42;
		v26=v42.x;
		v26=v26 * v13;
		v42.x=v26;
		$f.l=345;
		v19=v42;
		v26=v42.y;
		v26=v26 * v13;
		v42.y=v26;
	case 271:
		$f.l=348;
		v13=v5 * v43;
		$f.l=349;
		v26=v13 * v13;
		v25=$g25;
		v44=(v26 != v26 || v25 != v25) ? -1 : (v26 > v25) - (v26 < v25);
		if(v44<=0) {$b=283; break;}
		$f.l=350;
		v26=_199(v13);
		;
		v14=1.5707964 / v26;
		$f.l=351;
		v43=v43 * v14;
	case 283:
		$f.l=355;
		v19=v40;
		v26=v40.x;
		v25=v42.x;
		v25=v5 * v25;
		v26=v26 + v25;
		v40.x=v26;
		$f.l=356;
		v19=v40;
		v26=v40.y;
		v25=v42.y;
		v25=v5 * v25;
		v26=v26 + v25;
		v40.y=v26;
		$f.l=357;
		v26=v5 * v43;
		v41=v41 + v26;
		$f.l=359;
		v27=v0.m_positions;
		v28=v27[v6];
		v28.a=v41;
		$f.l=360;
		v29=v0.m_velocities;
		v30=v29[v6];
		v30.w=v43;
		$f.l=331;
		v6=(v6 + 1)|0;
		{ $b=225; break; }
	case 311:
		$f.l=364;
		v31=v0.timer;
		_108(v31);
		$f.l=365;
		v45=0;
		$f.l=366;
		v39=0;
	case 318:
		v15=v2.positionIterations;
		if(v39>=v15) {$b=354; break;}
		$f.l=367;
		v35=v0.contactSolver;
		v46=_38(v35);
		;
		$f.l=369;
		v47=1;
		$f.l=370;
		v48=0;
	case 327:
		v15=v0.m_jointCount;
		if(v48>=v15) {$b=344; break;}
		$f.l=371;
		v37=v0.m_joints;
		v38=v37[v48];
		v32=v0.solverData;
		v49=v38.$c.$vt[4](v38,v32);
		;
		$f.l=372;
		if(v47==0) {$b=339; break;}
		if(v49==0) {$b=339; break;}
		v36=1;
		{ $b=340; break; }
	case 339:
		v36=0;
	case 340:
		v47=v36;
		$f.l=370;
		v48=(v48 + 1)|0;
		{ $b=327; break; }
	case 344:
		$f.l=375;
		if(v46==0) {$b=351; break;}
		if(v47==0) {$b=351; break;}
		$f.l=377;
		v45=1;
		$f.l=378;
		{ $b=354; break; }
	case 351:
		$f.l=366;
		v39=(v39 + 1)|0;
		{ $b=318; break; }
	case 354:
		$f.l=383;
		v39=0;
	case 356:
		v15=v0.m_bodyCount;
		if(v39>=v15) {$b=407; break;}
		$f.l=384;
		v16=v0.m_bodies;
		v50=v16[v39];
		$f.l=385;
		v20=v50.m_sweep;
		v19=v20.c;
		v27=v0.m_positions;
		v28=v27[v39];
		v18=v28.c;
		v26=v18.x;
		v19.x=v26;
		$f.l=386;
		v20=v50.m_sweep;
		v19=v20.c;
		v27=v0.m_positions;
		v28=v27[v39];
		v18=v28.c;
		v26=v18.y;
		v19.y=v26;
		$f.l=387;
		v20=v50.m_sweep;
		v27=v0.m_positions;
		v28=v27[v39];
		v26=v28.a;
		v20.a=v26;
		$f.l=388;
		v19=v50.m_linearVelocity;
		v29=v0.m_velocities;
		v30=v29[v39];
		v18=v30.v;
		v26=v18.x;
		v19.x=v26;
		$f.l=389;
		v19=v50.m_linearVelocity;
		v29=v0.m_velocities;
		v30=v29[v39];
		v18=v30.v;
		v26=v18.y;
		v19.y=v26;
		$f.l=390;
		v29=v0.m_velocities;
		v30=v29[v39];
		v26=v30.w;
		v50.m_angularVelocity=v26;
		$f.l=391;
		_125(v50);
		$f.l=383;
		v39=(v39 + 1)|0;
		{ $b=356; break; }
	case 407:
		$f.l=394;
		v31=v0.timer;
		v26=_10b(v31);
		;
		v1.solvePosition=v26;
		$f.l=396;
		v35=v0.contactSolver;
		v51=v35.m_velocityConstraints;
		_19a(v0,v51);
		$f.l=398;
		if(v4==0) {$b=482; break;}
		$f.l=399;
		v52=3.4028235E38;
		$f.l=401;
		v41=1.0E-4;
		$f.l=402;
		v9=0.0012184699;
		$f.l=404;
		v48=0;
	case 425:
		v15=v0.m_bodyCount;
		if(v48>=v15) {$b=466; break;}
		$f.l=405;
		v16=v0.m_bodies;
		v53=v16[v48];
		$f.l=406;
		v23=_113(v53);
		;
		v22=$g37;
		if(v23!=v22) {$b=436; break;}
		$f.l=407;
		{ $b=463; break; }
	case 436:
		$f.l=410;
		v15=v53.m_flags;
		v15=(v15 & 4)|0;
		if(v15==0) {$b=450; break;}
		v26=v53.m_angularVelocity;
		v25=v53.m_angularVelocity;
		v26=v26 * v25;
		v44=(v26 != v26 || 0.0012184699 != 0.0012184699) ? -1 : (v26 > 0.0012184699) - (v26 < 0.0012184699);
		if(v44>0) {$b=450; break;}
		v19=v53.m_linearVelocity;
		v18=v53.m_linearVelocity;
		v26=_4d(v19,v18);
		;
		v44=(v26 != v26 || 1.0E-4 != 1.0E-4) ? -1 : (v26 > 1.0E-4) - (v26 < 1.0E-4);
		if(v44<=0) {$b=455; break;}
	case 450:
		$f.l=413;
		v53.m_sleepTime=0.0;
		$f.l=414;
		v52=0.0;
		{ $b=463; break; }
	case 455:
		$f.l=416;
		v54=v53;
		v26=v53.m_sleepTime;
		v26=v26 + v5;
		v53.m_sleepTime=v26;
		$f.l=417;
		v26=v53.m_sleepTime;
		v52=_3c(v52,v26);
		;
	case 463:
		$f.l=404;
		v48=(v48 + 1)|0;
		{ $b=425; break; }
	case 466:
		$f.l=421;
		v44=(v52 != v52 || 0.5 != 0.5) ? -1 : (v52 > 0.5) - (v52 < 0.5);
		if(v44<0) {$b=482; break;}
		if(v45==0) {$b=482; break;}
		$f.l=422;
		v48=0;
	case 472:
		v15=v0.m_bodyCount;
		if(v48>=v15) {$b=482; break;}
		$f.l=423;
		v16=v0.m_bodies;
		v53=v16[v48];
		$f.l=424;
		_100(v53,0);
		$f.l=422;
		v48=(v48 + 1)|0;
		{ $b=472; break; }
	case 482:
		$f.l=428;
		return;
}
}
//org/jbox2d/dynamics/Island:solveTOI
function _126(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=434;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=$g50;
		if(v4!=0) {$b=12; break;}
		v15=v0.m_bodyCount;
		if(v2<v15) {$b=12; break;}
		v16=new java/lang/AssertionError;
		_26(v16);
		throw v16;
	case 12:
		$f.l=435;
		v4=$g50;
		if(v4!=0) {$b=20; break;}
		v15=v0.m_bodyCount;
		if(v3<v15) {$b=20; break;}
		v16=new java/lang/AssertionError;
		_26(v16);
		throw v16;
	case 20:
		$f.l=438;
		v5=0;
	case 22:
		v15=v0.m_bodyCount;
		if(v5>=v15) {$b=80; break;}
		$f.l=439;
		v17=v0.m_positions;
		v18=v17[v5];
		v19=v18.c;
		v20=v0.m_bodies;
		v21=v20[v5];
		v22=v21.m_sweep;
		v23=v22.c;
		v24=v23.x;
		v19.x=v24;
		$f.l=440;
		v17=v0.m_positions;
		v18=v17[v5];
		v23=v18.c;
		v20=v0.m_bodies;
		v21=v20[v5];
		v22=v21.m_sweep;
		v19=v22.c;
		v24=v19.y;
		v23.y=v24;
		$f.l=441;
		v17=v0.m_positions;
		v18=v17[v5];
		v20=v0.m_bodies;
		v21=v20[v5];
		v22=v21.m_sweep;
		v24=v22.a;
		v18.a=v24;
		$f.l=442;
		v25=v0.m_velocities;
		v26=v25[v5];
		v23=v26.v;
		v20=v0.m_bodies;
		v21=v20[v5];
		v19=v21.m_linearVelocity;
		v24=v19.x;
		v23.x=v24;
		$f.l=443;
		v25=v0.m_velocities;
		v26=v25[v5];
		v23=v26.v;
		v20=v0.m_bodies;
		v21=v20[v5];
		v19=v21.m_linearVelocity;
		v24=v19.y;
		v23.y=v24;
		$f.l=444;
		v25=v0.m_velocities;
		v26=v25[v5];
		v20=v0.m_bodies;
		v21=v20[v5];
		v24=v21.m_angularVelocity;
		v26.w=v24;
		$f.l=438;
		v5=(v5 + 1)|0;
		{ $b=22; break; }
	case 80:
		$f.l=447;
		v27=v0.toiSolverDef;
		v28=v0.m_contacts;
		v27.contacts=v28;
		$f.l=448;
		v27=v0.toiSolverDef;
		v15=v0.m_contactCount;
		v27.count=v15;
		$f.l=449;
		v27=v0.toiSolverDef;
		v27.step=v1;
		$f.l=450;
		v27=v0.toiSolverDef;
		v17=v0.m_positions;
		v27.positions=v17;
		$f.l=451;
		v27=v0.toiSolverDef;
		v25=v0.m_velocities;
		v27.velocities=v25;
		$f.l=452;
		v29=v0.toiContactSolver;
		v27=v0.toiSolverDef;
		_21(v29,v27);
		$f.l=455;
		v5=0;
	case 105:
		v15=v1.positionIterations;
		if(v5>=v15) {$b=117; break;}
		$f.l=456;
		v29=v0.toiContactSolver;
		v6=_3d(v29,v2,v3);
		;
		$f.l=457;
		if(v6==0) {$b=114; break;}
		$f.l=458;
		{ $b=117; break; }
	case 114:
		$f.l=455;
		v5=(v5 + 1)|0;
		{ $b=105; break; }
	case 117:
		$f.l=495;
		v20=v0.m_bodies;
		v21=v20[v2];
		v22=v21.m_sweep;
		v23=v22.c0;
		v17=v0.m_positions;
		v18=v17[v2];
		v19=v18.c;
		v24=v19.x;
		v23.x=v24;
		$f.l=496;
		v20=v0.m_bodies;
		v21=v20[v2];
		v22=v21.m_sweep;
		v23=v22.c0;
		v17=v0.m_positions;
		v18=v17[v2];
		v19=v18.c;
		v24=v19.y;
		v23.y=v24;
		$f.l=497;
		v20=v0.m_bodies;
		v21=v20[v2];
		v22=v21.m_sweep;
		v17=v0.m_positions;
		v18=v17[v2];
		v24=v18.a;
		v22.a0=v24;
		$f.l=498;
		v20=v0.m_bodies;
		v21=v20[v3];
		v22=v21.m_sweep;
		v23=v22.c0;
		v17=v0.m_positions;
		v18=v17[v3];
		v19=v18.c;
		v23=_28(v23,v19);
		;
		$f.l=499;
		v20=v0.m_bodies;
		v21=v20[v3];
		v22=v21.m_sweep;
		v17=v0.m_positions;
		v18=v17[v3];
		v24=v18.a;
		v22.a0=v24;
		$f.l=503;
		v29=v0.toiContactSolver;
		_2b(v29);
		$f.l=506;
		v5=0;
	case 167:
		v15=v1.velocityIterations;
		if(v5>=v15) {$b=175; break;}
		$f.l=507;
		v29=v0.toiContactSolver;
		_32(v29);
		$f.l=506;
		v5=(v5 + 1)|0;
		{ $b=167; break; }
	case 175:
		$f.l=513;
		v30=v1.dt;
		$f.l=516;
		v31=0;
	case 179:
		v15=v0.m_bodyCount;
		if(v31>=v15) {$b=309; break;}
		$f.l=517;
		v17=v0.m_positions;
		v18=v17[v31];
		v7=v18.c;
		$f.l=518;
		v17=v0.m_positions;
		v18=v17[v31];
		v8=v18.a;
		$f.l=519;
		v25=v0.m_velocities;
		v26=v25[v31];
		v9=v26.v;
		$f.l=520;
		v25=v0.m_velocities;
		v26=v25[v31];
		v10=v26.w;
		$f.l=523;
		v24=v9.x;
		v11=v24 * v30;
		$f.l=524;
		v24=v9.y;
		v12=v24 * v30;
		$f.l=525;
		v24=v11 * v11;
		v32=v12 * v12;
		v32=v24 + v32;
		v33=(v32 != v32 || 4.0 != 4.0) ? -1 : (v32 > 4.0) - (v32 < 4.0);
		if(v33<=0) {$b=217; break;}
		$f.l=526;
		v32=v11 * v11;
		v24=v12 * v12;
		v32=v32 + v24;
		v32=_198(v32);
		;
		v13=2.0 / v32;
		$f.l=528;
		v23=_35(v9,v13);
		;
	case 217:
		$f.l=531;
		v13=v30 * v10;
		$f.l=532;
		v32=v13 * v13;
		v24=$g25;
		v33=(v32 != v32 || v24 != v24) ? -1 : (v32 > v24) - (v32 < v24);
		if(v33<=0) {$b=229; break;}
		$f.l=533;
		v32=_199(v13);
		;
		v14=1.5707964 / v32;
		$f.l=534;
		v10=v10 * v14;
	case 229:
		$f.l=538;
		v23=v7;
		v32=v7.x;
		v24=v9.x;
		v24=v24 * v30;
		v32=v32 + v24;
		v7.x=v32;
		$f.l=539;
		v23=v7;
		v32=v7.y;
		v24=v9.y;
		v24=v24 * v30;
		v32=v32 + v24;
		v7.y=v32;
		$f.l=540;
		v32=v30 * v10;
		v8=v8 + v32;
		$f.l=542;
		v17=v0.m_positions;
		v18=v17[v31];
		v23=v18.c;
		v32=v7.x;
		v23.x=v32;
		$f.l=543;
		v17=v0.m_positions;
		v18=v17[v31];
		v23=v18.c;
		v32=v7.y;
		v23.y=v32;
		$f.l=544;
		v17=v0.m_positions;
		v18=v17[v31];
		v18.a=v8;
		$f.l=545;
		v25=v0.m_velocities;
		v26=v25[v31];
		v23=v26.v;
		v32=v9.x;
		v23.x=v32;
		$f.l=546;
		v25=v0.m_velocities;
		v26=v25[v31];
		v23=v26.v;
		v32=v9.y;
		v23.y=v32;
		$f.l=547;
		v25=v0.m_velocities;
		v26=v25[v31];
		v26.w=v10;
		$f.l=550;
		v20=v0.m_bodies;
		v34=v20[v31];
		$f.l=551;
		v22=v34.m_sweep;
		v23=v22.c;
		v32=v7.x;
		v23.x=v32;
		$f.l=552;
		v22=v34.m_sweep;
		v23=v22.c;
		v32=v7.y;
		v23.y=v32;
		$f.l=553;
		v22=v34.m_sweep;
		v22.a=v8;
		$f.l=554;
		v23=v34.m_linearVelocity;
		v32=v9.x;
		v23.x=v32;
		$f.l=555;
		v23=v34.m_linearVelocity;
		v32=v9.y;
		v23.y=v32;
		$f.l=556;
		v34.m_angularVelocity=v10;
		$f.l=557;
		_125(v34);
		$f.l=516;
		v31=(v31 + 1)|0;
		{ $b=179; break; }
	case 309:
		$f.l=560;
		v29=v0.toiContactSolver;
		v35=v29.m_velocityConstraints;
		_19a(v0,v35);
		$f.l=561;
		return;
}
}
//org/jbox2d/dynamics/Island:add
function _115(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=564;
		v0=a0;
		v1=a1;
		v2=$g50;
		if(v2!=0) {$b=11; break;}
		v3=v0.m_bodyCount;
		v4=v0.m_bodyCapacity;
		if(v3<v4) {$b=11; break;}
		v5=new java/lang/AssertionError;
		_26(v5);
		throw v5;
	case 11:
		$f.l=565;
		v4=v0.m_bodyCount;
		v1.m_islandIndex=v4;
		$f.l=566;
		v6=v0.m_bodies;
		v4=v0.m_bodyCount;
		v6[v4]=v1;
		$f.l=567;
		v7=v0;
		v4=v0.m_bodyCount;
		v4=(v4 + 1)|0;
		v0.m_bodyCount=v4;
		$f.l=568;
		return;
}
}
//org/jbox2d/dynamics/Island:add
function _118(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=571;
		v0=a0;
		v1=a1;
		v2=$g50;
		if(v2!=0) {$b=11; break;}
		v3=v0.m_contactCount;
		v4=v0.m_contactCapacity;
		if(v3<v4) {$b=11; break;}
		v5=new java/lang/AssertionError;
		_26(v5);
		throw v5;
	case 11:
		$f.l=572;
		v6=v0.m_contacts;
		v7=v0;
		v3=v0.m_contactCount;
		v4=(v3 + 1)|0;
		v0.m_contactCount=v4;
		v6[v3]=v1;
		$f.l=573;
		return;
}
}
//org/jbox2d/dynamics/Island:add
function _119(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=576;
		v0=a0;
		v1=a1;
		v2=$g50;
		if(v2!=0) {$b=11; break;}
		v3=v0.m_jointCount;
		v4=v0.m_jointCapacity;
		if(v3<v4) {$b=11; break;}
		v5=new java/lang/AssertionError;
		_26(v5);
		throw v5;
	case 11:
		$f.l=577;
		v6=v0.m_joints;
		v7=v0;
		v3=v0.m_jointCount;
		v4=(v3 + 1)|0;
		v0.m_jointCount=v4;
		v6[v3]=v1;
		$f.l=578;
		return;
}
}
//org/jbox2d/dynamics/Island:report
function _19a(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=583;
		v0=a0;
		v1=a1;
		v6=v0.m_listener;
		if(v6!=null) {$b=7; break;}
		$f.l=584;
		return;
	case 7:
		$f.l=587;
		v2=0;
	case 9:
		v7=v0.m_contactCount;
		if(v2>=v7) {$b=48; break;}
		$f.l=588;
		v8=v0.m_contacts;
		v3=v8[v2];
		$f.l=590;
		v4=v1[v2];
		$f.l=591;
		v9=v0.impulse;
		v7=v4.pointCount;
		v9.count=v7;
		$f.l=592;
		v5=0;
	case 22:
		v7=v4.pointCount;
		if(v5>=v7) {$b=41; break;}
		$f.l=593;
		v9=v0.impulse;
		v10=v9.normalImpulses;
		v11=v4.points;
		v12=v11[v5];
		v13=v12.normalImpulse;
		v10[v5]=v13;
		$f.l=594;
		v9=v0.impulse;
		v10=v9.tangentImpulses;
		v11=v4.points;
		v12=v11[v5];
		v13=v12.tangentImpulse;
		v10[v5]=v13;
		$f.l=592;
		v5=(v5 + 1)|0;
		{ $b=22; break; }
	case 41:
		$f.l=597;
		v6=v0.m_listener;
		v9=v0.impulse;
		v6.$c.$it[50](v6,v3,v9);
		$f.l=587;
		v2=(v2 + 1)|0;
		{ $b=9; break; }
	case 48:
		$f.l=599;
		return;
}
}
//org/jbox2d/dynamics/Island:<clinit>
function _19b(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=163;
		v0=vm.getClass(51);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g50=v1;
		return;
}
}
//org/jbox2d/callbacks/ContactFilter:<init>
function _19c(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/callbacks/ContactFilter:shouldCollide
function _19d(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=48;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=_90(v1);
		;
		$f.l=49;
		v4=_90(v2);
		;
		$f.l=51;
		v6=v3.groupIndex;
		v7=v4.groupIndex;
		if(v6!=v7) {$b=20; break;}
		v7=v3.groupIndex;
		if(v7==0) {$b=20; break;}
		$f.l=52;
		v7=v3.groupIndex;
		if(v7<=0) {$b=18; break;}
		v8=1;
		{ $b=19; break; }
	case 18:
		v8=0;
	case 19:
		return v8;
	case 20:
		$f.l=55;
		v7=v3.maskBits;
		v6=v4.categoryBits;
		v7=(v7 & v6)|0;
		if(v7==0) {$b=31; break;}
		v7=v3.categoryBits;
		v6=v4.maskBits;
		v7=(v7 & v6)|0;
		if(v7==0) {$b=31; break;}
		v8=1;
		{ $b=32; break; }
	case 31:
		v8=0;
	case 32:
		v5=v8;
		$f.l=57;
		return v5;
}
}
//org/jbox2d/collision/DistanceInput:<init>
function _41(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
_0(v0);
$f.l=36;
v1=new org/jbox2d/collision/Distance$DistanceProxy;
_89(v1);
v0.proxyA=v1;
$f.l=37;
v1=new org/jbox2d/collision/Distance$DistanceProxy;
_89(v1);
v0.proxyB=v1;
$f.l=38;
v2=new org/jbox2d/common/Transform;
_1c(v2);
v0.transformA=v2;
$f.l=39;
v2=new org/jbox2d/common/Transform;
_1c(v2);
v0.transformB=v2;
return;
}
//org/jbox2d/dynamics/contacts/Contact:<init>
function _19e(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=90;
v0=a0;
v1=a1;
_0(v0);
$f.l=69;
v0.m_nodeA=null;
$f.l=70;
v0.m_nodeB=null;
$f.l=260;
v2=new org/jbox2d/collision/Manifold;
_14b(v2);
v0.oldManifold=v2;
$f.l=91;
v0.m_fixtureA=null;
$f.l=92;
v0.m_fixtureB=null;
$f.l=93;
v3=new org/jbox2d/dynamics/contacts/ContactEdge;
_a9(v3);
v0.m_nodeA=v3;
$f.l=94;
v3=new org/jbox2d/dynamics/contacts/ContactEdge;
_a9(v3);
v0.m_nodeB=v3;
$f.l=95;
v2=new org/jbox2d/collision/Manifold;
_14b(v2);
v0.m_manifold=v2;
$f.l=96;
v0.pool=v1;
$f.l=97;
return;
}
//org/jbox2d/dynamics/contacts/Contact:init
function _19f(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
$f.l=101;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=a4;
v0.m_flags=0;
$f.l=103;
v0.m_fixtureA=v1;
$f.l=104;
v0.m_fixtureB=v3;
$f.l=106;
v0.m_indexA=v2;
$f.l=107;
v0.m_indexB=v4;
$f.l=109;
v5=v0.m_manifold;
v5.pointCount=0;
$f.l=111;
v0.m_prev=null;
$f.l=112;
v0.m_next=null;
$f.l=114;
v6=v0.m_nodeA;
v6.contact=null;
$f.l=115;
v6=v0.m_nodeA;
v6.prev=null;
$f.l=116;
v6=v0.m_nodeA;
v6.next=null;
$f.l=117;
v6=v0.m_nodeA;
v6.other=null;
$f.l=119;
v6=v0.m_nodeB;
v6.contact=null;
$f.l=120;
v6=v0.m_nodeB;
v6.prev=null;
$f.l=121;
v6=v0.m_nodeB;
v6.next=null;
$f.l=122;
v6=v0.m_nodeB;
v6.other=null;
$f.l=124;
v0.m_toiCount=0.0;
$f.l=125;
v7=v1.m_friction;
v8=v3.m_friction;
v8=_1a0(v7,v8);
;
v0.m_friction=v8;
$f.l=126;
v8=v1.m_restitution;
v7=v3.m_restitution;
v8=_1a1(v8,v7);
;
v0.m_restitution=v8;
$f.l=128;
v0.m_tangentSpeed=0.0;
$f.l=129;
return;
}
//org/jbox2d/dynamics/contacts/Contact:getManifold
function _25(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=135;
v0=a0;
v1=v0.m_manifold;
return v1;
}
//org/jbox2d/dynamics/contacts/Contact:isTouching
function _117(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=157;
		v0=a0;
		v1=v0.m_flags;
		v1=(v1 & 2)|0;
		if(v1!=2) {$b=7; break;}
		v2=1;
		{ $b=8; break; }
	case 7:
		v2=0;
	case 8:
		return v2;
}
}
//org/jbox2d/dynamics/contacts/Contact:setEnabled
function _124(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=167;
		v0=a0;
		v1=a1;
		if(v1==0) {$b=10; break;}
		$f.l=168;
		v2=v0;
		v3=v0.m_flags;
		v3=(v3 | 4)|0;
		v0.m_flags=v3;
		{ $b=15; break; }
	case 10:
		$f.l=170;
		v2=v0;
		v3=v0.m_flags;
		v3=(v3 & -5)|0;
		v0.m_flags=v3;
	case 15:
		$f.l=172;
		return;
}
}
//org/jbox2d/dynamics/contacts/Contact:isEnabled
function _116(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=180;
		v0=a0;
		v1=v0.m_flags;
		v1=(v1 & 4)|0;
		if(v1!=4) {$b=7; break;}
		v2=1;
		{ $b=8; break; }
	case 7:
		v2=0;
	case 8:
		return v2;
}
}
//org/jbox2d/dynamics/contacts/Contact:getNext
function _1a2(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=189;
v0=a0;
v1=v0.m_next;
return v1;
}
//org/jbox2d/dynamics/contacts/Contact:getFixtureA
function _fe(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=198;
v0=a0;
v1=v0.m_fixtureA;
return v1;
}
//org/jbox2d/dynamics/contacts/Contact:getChildIndexA
function _11e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=202;
v0=a0;
v1=v0.m_indexA;
return v1;
}
//org/jbox2d/dynamics/contacts/Contact:getFixtureB
function _ff(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=211;
v0=a0;
v1=v0.m_fixtureB;
return v1;
}
//org/jbox2d/dynamics/contacts/Contact:getChildIndexB
function _11f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=215;
v0=a0;
v1=v0.m_indexB;
return v1;
}
//org/jbox2d/dynamics/contacts/Contact:flagForFiltering
function _106(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=256;
v0=a0;
v1=v0;
v2=v0.m_flags;
v2=(v2 | 8)|0;
v0.m_flags=v2;
$f.l=257;
return;
}
//org/jbox2d/dynamics/contacts/Contact:update
function _123(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=264;
		v0=a0;
		v1=a1;
		v16=v0.oldManifold;
		v17=v0.m_manifold;
		_14c(v16,v17);
		$f.l=267;
		v18=v0;
		v19=v0.m_flags;
		v19=(v19 | 4)|0;
		v0.m_flags=v19;
		$f.l=269;
		v2=0;
		$f.l=270;
		v19=v0.m_flags;
		v19=(v19 & 2)|0;
		if(v19!=2) {$b=19; break;}
		v20=1;
		{ $b=20; break; }
	case 19:
		v20=0;
	case 20:
		v3=v20;
		$f.l=272;
		v21=v0.m_fixtureA;
		v4=_8f(v21);
		;
		$f.l=273;
		v21=v0.m_fixtureB;
		v5=_8f(v21);
		;
		$f.l=274;
		if(v4!=0) {$b=30; break;}
		if(v5==0) {$b=32; break;}
	case 30:
		v20=1;
		{ $b=33; break; }
	case 32:
		v20=0;
	case 33:
		v6=v20;
		$f.l=276;
		v21=v0.m_fixtureA;
		v7=_24(v21);
		;
		$f.l=277;
		v21=v0.m_fixtureB;
		v8=_24(v21);
		;
		$f.l=278;
		v9=_1a3(v7);
		;
		$f.l=279;
		v10=_1a3(v8);
		;
		$f.l=283;
		if(v6==0) {$b=63; break;}
		$f.l=284;
		v21=v0.m_fixtureA;
		v11=_23(v21);
		;
		$f.l=285;
		v21=v0.m_fixtureB;
		v12=_23(v21);
		;
		$f.l=286;
		v22=v0.pool;
		v23=v22.$c.$it[38](v22);
		;
		v19=v0.m_indexA;
		v24=v0.m_indexB;
		v2=_48(v23,v11,v19,v12,v24,v9,v10);
		;
		$f.l=289;
		v17=v0.m_manifold;
		v17.pointCount=0;
		$f.l=290;
		{ $b=122; break; }
	case 63:
		$f.l=291;
		v17=v0.m_manifold;
		v0.$c.$vt[7](v0,v17,v9,v10);
		$f.l=292;
		v17=v0.m_manifold;
		v24=v17.pointCount;
		if(v24<=0) {$b=72; break;}
		v20=1;
		{ $b=73; break; }
	case 72:
		v20=0;
	case 73:
		v2=v20;
		$f.l=296;
		v25=0;
	case 76:
		v17=v0.m_manifold;
		v24=v17.pointCount;
		if(v25>=v24) {$b=116; break;}
		$f.l=297;
		v17=v0.m_manifold;
		v26=v17.points;
		v27=v26[v25];
		$f.l=298;
		v27.normalImpulse=0.0;
		$f.l=299;
		v27.tangentImpulse=0.0;
		$f.l=300;
		v13=v27.id;
		$f.l=302;
		v14=0;
	case 91:
		v17=v0.oldManifold;
		v24=v17.pointCount;
		if(v14>=v24) {$b=113; break;}
		$f.l=303;
		v17=v0.oldManifold;
		v26=v17.points;
		v15=v26[v14];
		$f.l=305;
		v28=v15.id;
		v20=_1a4(v28,v13);
		;
		if(v20==0) {$b=110; break;}
		$f.l=306;
		v29=v15.normalImpulse;
		v27.normalImpulse=v29;
		$f.l=307;
		v29=v15.tangentImpulse;
		v27.tangentImpulse=v29;
		$f.l=308;
		{ $b=113; break; }
	case 110:
		$f.l=302;
		v14=(v14 + 1)|0;
		{ $b=91; break; }
	case 113:
		$f.l=296;
		v25=(v25 + 1)|0;
		{ $b=76; break; }
	case 116:
		$f.l=313;
		if(v2==v3) {$b=122; break;}
		$f.l=314;
		_100(v7,1);
		$f.l=315;
		_100(v8,1);
	case 122:
		$f.l=319;
		if(v2==0) {$b=130; break;}
		$f.l=320;
		v18=v0;
		v24=v0.m_flags;
		v24=(v24 | 2)|0;
		v0.m_flags=v24;
		{ $b=135; break; }
	case 130:
		$f.l=322;
		v18=v0;
		v24=v0.m_flags;
		v24=(v24 & -3)|0;
		v0.m_flags=v24;
	case 135:
		$f.l=325;
		if(v1!=null) {$b=139; break;}
		$f.l=326;
		return;
	case 139:
		$f.l=329;
		if(v3!=0) {$b=144; break;}
		if(v2!=1) {$b=144; break;}
		$f.l=330;
		v1.$c.$it[51](v1,v0);
	case 144:
		$f.l=333;
		if(v3!=1) {$b=149; break;}
		if(v2!=0) {$b=149; break;}
		$f.l=334;
		v1.$c.$it[49](v1,v0);
	case 149:
		$f.l=337;
		if(v6!=0) {$b=155; break;}
		if(v2==0) {$b=155; break;}
		$f.l=338;
		v17=v0.oldManifold;
		v1.$c.$it[52](v1,v0,v17);
	case 155:
		$f.l=340;
		return;
}
}
//org/jbox2d/dynamics/contacts/Contact:mixFriction
function _1a0(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=351;
v0=a0;
v1=a1;
v2=v0 * v1;
v2=_198(v2);
;
return v2;
}
//org/jbox2d/dynamics/contacts/Contact:mixRestitution
function _1a1(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=363;
		v0=a0;
		v1=a1;
		v2=(v0 != v0 || v1 != v1) ? -1 : (v0 > v1) - (v0 < v1);
		if(v2<=0) {$b=7; break;}
		v3=v0;
		{ $b=8; break; }
	case 7:
		v3=v1;
	case 8:
		return v3;
}
}
//java/lang/Class:<init>
function _1a5(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
_0(v0);
return;
}
//java/lang/Class:forName
function _1a6(vm,a0){
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
		v6=v1.$c.$vt[1](v1,$str50);
		;
		if(v6==0) {$b=21; break;}
		v2=0;
		{ $b=21; break; }
	case 10:
		v6=v1.$c.$vt[1](v1,$str51);
		;
		if(v6==0) {$b=21; break;}
		v2=1;
		{ $b=21; break; }
	case 14:
		v6=v1.$c.$vt[1](v1,$str52);
		;
		if(v6==0) {$b=21; break;}
		v2=2;
		{ $b=21; break; }
	case 18:
		v6=v1.$c.$vt[1](v1,$str53);
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
		return vm.getClass(52);
	case 24:
		$f.l=54;
		return vm.getClass(53);
	case 26:
		$f.l=55;
		return vm.getClass(54);
	case 28:
		$f.l=56;
		return vm.getClass(40);
		$f.l=58;
		v7=newArray(0,0);
		v8=_1a7($str54,v7);
		;
		$f.l=59;
		v9=0;
		$f.l=60;
		v3=_1a8(v8,v9);
		;
	case 37:
		$f.l=61;
		if(v3==null) {$b=52; break;}
		$f.l=62;
		v4=vm.cast(v3,55);
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
		v3=_1a8(v8,v5);
		;
		$f.l=65;
		{ $b=37; break; }
	case 52:
		$f.l=66;
		v11=new java/lang/ClassNotFoundException;
		_1a9(v11,v0);
		throw v11;
}
}
//java/lang/Class:getSuperclass
function _1aa(vm,a0){
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
function _1ab(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=78;
		v0=a0;
		v1=$g26;
		if(v0==v1) {$b=20; break;}
		v1=$g28;
		if(v0==v1) {$b=20; break;}
		v1=$g27;
		if(v0==v1) {$b=20; break;}
		v1=$g29;
		if(v0==v1) {$b=20; break;}
		v1=$g30;
		if(v0==v1) {$b=20; break;}
		v1=$g33;
		if(v0==v1) {$b=20; break;}
		v1=$g31;
		if(v0==v1) {$b=20; break;}
		v1=$g32;
		if(v0==v1) {$b=20; break;}
		v1=$g51;
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
function _1ac(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=83;
v0=a0;
v1=v0.modifiers;
return v1;
}
//java/lang/Class:getConstructor
function _1ad(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=87;
		v0=a0;
		v1=a1;
		v2=_1ae(v0,$str55,v1);
		;
		$f.l=88;
		if(v2==null) {$b=8; break;}
		$f.l=89;
		v2.klass=vm.getClass(56);
	case 8:
		$f.l=91;
		v3=vm.cast(v2,56);
		return v3;
}
}
//java/lang/Class:getDeclaredConstructor
function _1af(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=95;
		v0=a0;
		v1=a1;
		v2=_1b0(v0,$str55,v1);
		;
		$f.l=96;
		if(v2==null) {$b=8; break;}
		$f.l=97;
		v2.klass=vm.getClass(56);
	case 8:
		$f.l=99;
		v3=vm.cast(v2,56);
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
function _1b1(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=110;
v0=a0;
v1=a1;
return null;
}
//java/lang/Class:getResource
function _1b2(vm,a0,a1){
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
function _c3(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=134;
v0=a0;
v1=a1;
v2=newArray(0,2);
v2[0]=v0;
v2[1]=v1;
v3=_1b3($str56,v2);
;
return v3;
}
//java/lang/Class:isInstance
function _1b4(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=138;
v0=a0;
v1=a1;
v2=_2(v1);
;
v3=_c3(v0,v2);
;
return v3;
}
//java/lang/Class:isInterface
function _1b5(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=142;
v0=a0;
return 0;
}
//java/lang/Class:newInstance
function _1b6(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=146;
		v0=a0;
		v3=newArray(57,0);
		v1=_1ad(v0,v3);
		;
		$f.l=147;
		if(v1==null) {$b=10; break;}
		$f.l=148;
		v4=newArray(0,0);
		v5=_1b7(v1,v4);
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
		v2=_b(v2,$str57);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_1b8(v6,v7);
		throw v6;
}
}
//java/lang/Class:toString
function _1b9(vm,a0){
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
v1=_b(v1,$str58);
;
v2=v1.$c.$vt[0](v1);
;
return v2;
}
//java/lang/Class:isAnnotation
function _1ba(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=157;
v0=a0;
return 0;
}
//java/lang/Class:getAnnotation
function _1bb(vm,a0,a1){
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
		_1bc(v2,$str59);
		throw v2;
	case 8:
		$f.l=170;
		return null;
}
}
//java/lang/Class:getAnnotations
function _1bd(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=177;
v0=a0;
return null;
}
//java/lang/Class:getDeclaredAnnotations
function _1be(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=184;
v0=a0;
return null;
}
//java/lang/Class:isAnnotationPresent
function _1bf(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=192;
v0=a0;
v1=a1;
return 0;
}
//java/lang/Class:asSubclass
function _1c0(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=204;
v0=a0;
v1=a1;
return null;
}
//java/lang/Class:cast
function _1c1(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=221;
v0=a0;
v1=a1;
return v1;
}
//java/lang/Class:isEnum
function _1c2(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=231;
v0=a0;
return 0;
}
//java/lang/Class:isAnonymousClass
function _1c3(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=238;
v0=a0;
return 0;
}
//java/lang/Class:getSimpleName
function _1c4(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=245;
v0=a0;
v1=_a(v0);
;
$f.l=246;
v2=_1c5(v1,46);
;
v2=(v2 + 1)|0;
v3=_1c6(v1,v2);
;
return v3;
}
//java/lang/Class:isSynthetic
function _1c7(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=253;
v0=a0;
return 0;
}
//java/lang/Class:getCanonicalName
function _1c8(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=257;
v0=a0;
v1=_a(v0);
;
return v1;
}
//java/lang/Class:equals
function _1c9(vm,a0,a1){
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
function _3f(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=266;
v0=a0;
return 0;
}
//java/lang/Class:getInterfaces
function _1ca(vm,a0){
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
		v2=v1.$c.$vt[3](v1);
		;
		v1=vm.cast(v2,57);
		{ $b=9; break; }
	case 8:
		v1=newArray(57,0);
	case 9:
		return v1;
}
}
//java/lang/Class:findMethod
function _1cb(vm,a0,a1,a2){
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
function _1b0(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=294;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=_1cb(v0,v1,v2);
		;
		$f.l=295;
		if(v3!=null) {$b=10; break;}
		v4=new java/lang/NoSuchMethodError;
		_1cc(v4);
		throw v4;
	case 10:
		$f.l=296;
		return v3;
}
}
//java/lang/Class:getDeclaredMethods
function _1cd(vm,a0){
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
		v2=v1.$c.$vt[3](v1);
		;
		v1=vm.cast(v2,58);
		{ $b=9; break; }
	case 8:
		v1=newArray(58,0);
	case 9:
		return v1;
}
}
//java/lang/Class:getMethod
function _1ae(vm,a0,a1,a2){
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
		v4=_1cb(v3,v1,v2);
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
		_1cc(v5);
		throw v5;
}
}
//java/lang/Class:getMethods
function _1ce(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=314;
		v0=a0;
		v1=new java/util/ArrayList;
		_1cf(v1);
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
		v8=v2.$c.$it[4](v2,v7);
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
		v6=v2.$c.$it[3](v2);
		;
		v5=newArray(58,v6);
		v9=v2.$c.$it[5](v2,v5);
		;
		v5=vm.cast(v9,58);
		return v5;
}
}
//java/lang/Class:getDeclaredField
function _1d0(vm,a0,a1){
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
		_1d1(v10,v1);
		throw v10;
	case 29:
		$f.l=335;
		return v2;
}
}
//java/lang/Class:getDeclaredFields
function _1d2(vm,a0){
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
		v2=v1.$c.$vt[3](v1);
		;
		v1=vm.cast(v2,59);
		{ $b=9; break; }
	case 8:
		v1=newArray(59,0);
	case 9:
		return v1;
}
}
//java/lang/Class:getField
function _1d3(vm,a0,a1){
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
		_1d1(v11,v1);
		throw v11;
	case 39:
		$f.l=357;
		return v3;
}
}
//java/lang/Class:getFields
function _1d4(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=361;
		v0=a0;
		v1=new java/util/ArrayList;
		_1cf(v1);
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
		v8=v2.$c.$it[4](v2,v7);
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
		v6=v2.$c.$it[3](v2);
		;
		v5=newArray(59,v6);
		v9=v2.$c.$it[5](v2,v5);
		;
		v5=vm.cast(v9,59);
		return v5;
}
}
//java/lang/Class:getPrimitiveNativeName
function _1d5(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=374;
		v0=a0;
		v1=$g26;
		if(v0!=v1) {$b=6; break;}
		v2=$str60;
		{ $b=51; break; }
	case 6:
		$f.l=375;
		v1=$g27;
		if(v0!=v1) {$b=11; break;}
		v2=$str61;
		{ $b=51; break; }
	case 11:
		$f.l=376;
		v1=$g28;
		if(v0!=v1) {$b=16; break;}
		v2=$str62;
		{ $b=51; break; }
	case 16:
		$f.l=377;
		v1=$g29;
		if(v0!=v1) {$b=21; break;}
		v2=$str63;
		{ $b=51; break; }
	case 21:
		$f.l=378;
		v1=$g30;
		if(v0!=v1) {$b=26; break;}
		v2=$str64;
		{ $b=51; break; }
	case 26:
		$f.l=379;
		v1=$g33;
		if(v0!=v1) {$b=31; break;}
		v2=$str65;
		{ $b=51; break; }
	case 31:
		$f.l=380;
		v1=$g31;
		if(v0!=v1) {$b=36; break;}
		v2=$str66;
		{ $b=51; break; }
	case 36:
		$f.l=381;
		v1=$g32;
		if(v0!=v1) {$b=41; break;}
		v2=$str67;
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
		v3=_b(v3,$str68);
		;
		v5=v3.$c.$vt[0](v3);
		;
		_1d6(v4,v5);
		throw v4;
	case 51:
		$f.l=383;
		return v2;
}
}
//java/lang/Class:getArrayClassFor
function _1d7(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=387;
		v0=a0;
		v1=new java/lang/StringBuilder;
		_9(v1);
		v1=_b(v1,$str69);
		;
		v3=_1ab(v0);
		;
		if(v3==0) {$b=9; break;}
		v4=_1d5(v0);
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
		v5=_1a6(v2);
		;
		return v5;
}
}
//JBox:<init>
function _1d8(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
_0(v0);
$f.l=166;
v1=new JBox$Scene;
_137(v1);
v0.scene=v1;
return;
}
//JBox:render
function _1d9(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=207;
v0=a0;
return;
}
//JBox:main
function _1da(vm){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=211;
		v0=$g52;
		if(v0!=null) {$b=6; break;}
		v0=new JBox;
		_1d8(v0);
		$g52=v0;
	case 6:
		$f.l=212;
		v1=_13d();
		;
		$f.l=213;
		v0=$g52;
		v3=v0.scene;
		_147(v3);
		$f.l=214;
		v4=_13d();
		;
		v4=(v4 - v1)|0;
		v2=v4|0;
		$f.l=215;
		v0=$g52;
		_1d9(v0);
		$f.l=216;
		return;
}
}
//org/jbox2d/dynamics/Body:<init>
function _103(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=98;
		v0=a0;
		v1=a1;
		v2=a2;
		_0(v0);
		$f.l=61;
		v3=new org/jbox2d/common/Transform;
		_1c(v3);
		v0.m_xf=v3;
		$f.l=66;
		v4=new org/jbox2d/common/Sweep;
		_8a(v4);
		v0.m_sweep=v4;
		$f.l=68;
		v5=new org/jbox2d/common/Vec2;
		_1a(v5);
		v0.m_linearVelocity=v5;
		$f.l=69;
		v0.m_angularVelocity=0.0;
		$f.l=71;
		v5=new org/jbox2d/common/Vec2;
		_1a(v5);
		v0.m_force=v5;
		$f.l=72;
		v0.m_torque=0.0;
		$f.l=213;
		v6=new org/jbox2d/dynamics/FixtureDef;
		_140(v6);
		v0.fixDef=v6;
		$f.l=652;
		v7=new org/jbox2d/collision/shapes/MassData;
		_6e(v7);
		v0.pmd=v7;
		$f.l=1111;
		v3=new org/jbox2d/common/Transform;
		_1c(v3);
		v0.pxf=v3;
		$f.l=99;
		v8=$g53;
		if(v8!=0) {$b=46; break;}
		v5=v1.position;
		v8=_1db(v5);
		;
		if(v8!=0) {$b=46; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 46:
		$f.l=100;
		v8=$g53;
		if(v8!=0) {$b=55; break;}
		v5=v1.linearVelocity;
		v8=_1db(v5);
		;
		if(v8!=0) {$b=55; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 55:
		$f.l=101;
		v8=$g53;
		if(v8!=0) {$b=64; break;}
		v10=v1.gravityScale;
		v11=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v11>=0) {$b=64; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 64:
		$f.l=102;
		v8=$g53;
		if(v8!=0) {$b=73; break;}
		v10=v1.angularDamping;
		v11=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v11>=0) {$b=73; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 73:
		$f.l=103;
		v8=$g53;
		if(v8!=0) {$b=82; break;}
		v10=v1.linearDamping;
		v11=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v11>=0) {$b=82; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 82:
		$f.l=105;
		v0.m_flags=0;
		$f.l=107;
		v8=v1.bullet;
		if(v8==0) {$b=92; break;}
		$f.l=108;
		v12=v0;
		v13=v0.m_flags;
		v13=(v13 | 8)|0;
		v0.m_flags=v13;
	case 92:
		$f.l=110;
		v8=v1.fixedRotation;
		if(v8==0) {$b=100; break;}
		$f.l=111;
		v12=v0;
		v13=v0.m_flags;
		v13=(v13 | 16)|0;
		v0.m_flags=v13;
	case 100:
		$f.l=113;
		v8=v1.allowSleep;
		if(v8==0) {$b=108; break;}
		$f.l=114;
		v12=v0;
		v13=v0.m_flags;
		v13=(v13 | 4)|0;
		v0.m_flags=v13;
	case 108:
		$f.l=116;
		v8=v1.awake;
		if(v8==0) {$b=116; break;}
		$f.l=117;
		v12=v0;
		v13=v0.m_flags;
		v13=(v13 | 2)|0;
		v0.m_flags=v13;
	case 116:
		$f.l=119;
		v8=v1.active;
		if(v8==0) {$b=124; break;}
		$f.l=120;
		v12=v0;
		v13=v0.m_flags;
		v13=(v13 | 32)|0;
		v0.m_flags=v13;
	case 124:
		$f.l=123;
		v0.m_world=v2;
		$f.l=125;
		v3=v0.m_xf;
		v5=v3.p;
		v14=v1.position;
		v14=_28(v5,v14);
		;
		$f.l=126;
		v3=v0.m_xf;
		v15=v3.q;
		v10=v1.angle;
		v15=_2c(v15,v10);
		;
		$f.l=128;
		v4=v0.m_sweep;
		v14=v4.localCenter;
		_29(v14);
		$f.l=129;
		v4=v0.m_sweep;
		v14=v4.c0;
		v3=v0.m_xf;
		v5=v3.p;
		v14=_28(v14,v5);
		;
		$f.l=130;
		v4=v0.m_sweep;
		v14=v4.c;
		v3=v0.m_xf;
		v5=v3.p;
		v14=_28(v14,v5);
		;
		$f.l=131;
		v4=v0.m_sweep;
		v10=v1.angle;
		v4.a0=v10;
		$f.l=132;
		v4=v0.m_sweep;
		v10=v1.angle;
		v4.a=v10;
		$f.l=133;
		v4=v0.m_sweep;
		v4.alpha0=0.0;
		$f.l=135;
		v0.m_jointList=null;
		$f.l=136;
		v0.m_contactList=null;
		$f.l=137;
		v0.m_prev=null;
		$f.l=138;
		v0.m_next=null;
		$f.l=140;
		v14=v0.m_linearVelocity;
		v5=v1.linearVelocity;
		v14=_28(v14,v5);
		;
		$f.l=141;
		v10=v1.angularVelocity;
		v0.m_angularVelocity=v10;
		$f.l=143;
		v10=v1.linearDamping;
		v0.m_linearDamping=v10;
		$f.l=144;
		v10=v1.angularDamping;
		v0.m_angularDamping=v10;
		$f.l=145;
		v10=v1.gravityScale;
		v0.m_gravityScale=v10;
		$f.l=147;
		v14=v0.m_force;
		_29(v14);
		$f.l=148;
		v0.m_torque=0.0;
		$f.l=150;
		v0.m_sleepTime=0.0;
		$f.l=152;
		v16=v1.type;
		v0.m_type=v16;
		$f.l=154;
		v16=v0.m_type;
		v17=$g38;
		if(v16!=v17) {$b=206; break;}
		$f.l=155;
		v0.m_mass=1.0;
		$f.l=156;
		v0.m_invMass=1.0;
		{ $b=210; break; }
	case 206:
		$f.l=158;
		v0.m_mass=0.0;
		$f.l=159;
		v0.m_invMass=0.0;
	case 210:
		$f.l=162;
		v0.m_I=0.0;
		$f.l=163;
		v0.m_invI=0.0;
		$f.l=165;
		v18=v1.userData;
		v0.m_userData=v18;
		$f.l=167;
		v0.m_fixtureList=null;
		$f.l=168;
		v0.m_fixtureCount=0;
		$f.l=169;
		return;
}
}
//org/jbox2d/dynamics/Body:createFixture
function _141(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=181;
		v0=a0;
		v1=a1;
		v2=$g53;
		if(v2!=0) {$b=11; break;}
		v5=v0.m_world;
		v2=_102(v5);
		;
		if(v2==0) {$b=11; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 11:
		$f.l=183;
		v5=v0.m_world;
		v2=_102(v5);
		;
		if(v2!=1) {$b=17; break;}
		$f.l=184;
		return null;
	case 17:
		$f.l=187;
		v7=new org/jbox2d/dynamics/Fixture;
		_8b(v7);
		v3=v7;
		$f.l=188;
		_92(v3,v0,v1);
		$f.l=190;
		v8=v0.m_flags;
		v8=(v8 & 32)|0;
		if(v8!=32) {$b=34; break;}
		$f.l=191;
		v5=v0.m_world;
		v9=v5.m_contactManager;
		v4=v9.m_broadPhase;
		$f.l=192;
		v10=v0.m_xf;
		_95(v3,v4,v10);
	case 34:
		$f.l=195;
		v7=v0.m_fixtureList;
		v3.m_next=v7;
		$f.l=196;
		v0.m_fixtureList=v3;
		$f.l=197;
		v11=v0;
		v8=v0.m_fixtureCount;
		v8=(v8 + 1)|0;
		v0.m_fixtureCount=v8;
		$f.l=199;
		v3.m_body=v0;
		$f.l=202;
		v12=v3.m_density;
		v13=(v12 != v12 || 0.0 != 0.0) ? -1 : (v12 > 0.0) - (v12 < 0.0);
		if(v13<=0) {$b=52; break;}
		$f.l=203;
		_1dc(v0);
	case 52:
		$f.l=208;
		v5=v0.m_world;
		v8=v5.m_flags;
		v8=(v8 | 1)|0;
		v5.m_flags=v8;
		$f.l=210;
		return v3;
}
}
//org/jbox2d/dynamics/Body:getTransform
function _1a3(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=342;
v0=a0;
v1=v0.m_xf;
return v1;
}
//org/jbox2d/dynamics/Body:getWorldCenter
function _1dd(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=367;
v0=a0;
v1=v0.m_sweep;
v2=v1.c;
return v2;
}
//org/jbox2d/dynamics/Body:applyTorque
function _148(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=500;
		v0=a0;
		v1=a1;
		v3=v0.m_type;
		v2=$g38;
		if(v3==v2) {$b=8; break;}
		$f.l=501;
		return;
	case 8:
		$f.l=504;
		v4=_111(v0);
		;
		if(v4!=0) {$b=13; break;}
		$f.l=505;
		_100(v0,1);
	case 13:
		$f.l=508;
		v5=v0;
		v6=v0.m_torque;
		v6=v6 + v1;
		v0.m_torque=v6;
		$f.l=509;
		return;
}
}
//org/jbox2d/dynamics/Body:getMass
function _1de(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=564;
v0=a0;
v1=v0.m_mass;
return v1;
}
//org/jbox2d/dynamics/Body:resetMassData
function _1dc(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=661;
		v0=a0;
		v0.m_mass=0.0;
		$f.l=662;
		v0.m_invMass=0.0;
		$f.l=663;
		v0.m_I=0.0;
		$f.l=664;
		v0.m_invI=0.0;
		$f.l=665;
		v6=v0.m_sweep;
		v7=v6.localCenter;
		_29(v7);
		$f.l=668;
		v8=v0.m_type;
		v9=$g37;
		if(v8==v9) {$b=20; break;}
		v9=v0.m_type;
		v8=$g54;
		if(v9!=v8) {$b=39; break;}
	case 20:
		$f.l=670;
		v6=v0.m_sweep;
		v7=v6.c0;
		v10=v0.m_xf;
		v11=v10.p;
		v11=_28(v7,v11);
		;
		$f.l=671;
		v6=v0.m_sweep;
		v11=v6.c;
		v10=v0.m_xf;
		v7=v10.p;
		v11=_28(v11,v7);
		;
		$f.l=672;
		v6=v0.m_sweep;
		v12=v0.m_sweep;
		v13=v12.a;
		v6.a0=v13;
		$f.l=673;
		return;
	case 39:
		$f.l=676;
		v14=$g53;
		if(v14!=0) {$b=48; break;}
		v9=v0.m_type;
		v8=$g38;
		if(v9==v8) {$b=48; break;}
		v15=new java/lang/AssertionError;
		_26(v15);
		throw v15;
	case 48:
		$f.l=679;
		v16=v0.m_world;
		v17=_d6(v16);
		;
		v1=v17.$c.$it[32](v17);
		;
		$f.l=680;
		_29(v1);
		$f.l=681;
		v16=v0.m_world;
		v17=_d6(v16);
		;
		v2=v17.$c.$it[32](v17);
		;
		$f.l=682;
		v3=v0.pmd;
		$f.l=683;
		v4=v0.m_fixtureList;
	case 62:
		if(v4==null) {$b=93; break;}
		$f.l=684;
		v13=v4.m_density;
		v18=(v13 != v13 || 0.0 != 0.0) ? -1 : (v13 > 0.0) - (v13 < 0.0);
		if(v18!=0) {$b=69; break;}
		$f.l=685;
		{ $b=90; break; }
	case 69:
		$f.l=687;
		_91(v4,v3);
		$f.l=688;
		v19=v0;
		v13=v0.m_mass;
		v20=v3.mass;
		v20=v13 + v20;
		v0.m_mass=v20;
		$f.l=690;
		v11=v3.center;
		v11=_28(v2,v11);
		;
		v20=v3.mass;
		v11=_35(v11,v20);
		;
		$f.l=691;
		v11=_36(v1,v2);
		;
		$f.l=692;
		v19=v0;
		v20=v0.m_I;
		v13=v3.I;
		v20=v20 + v13;
		v0.m_I=v20;
	case 90:
		$f.l=683;
		v4=v4.m_next;
		{ $b=62; break; }
	case 93:
		$f.l=696;
		v20=v0.m_mass;
		v18=(v20 != v20 || 0.0 != 0.0) ? -1 : (v20 > 0.0) - (v20 < 0.0);
		if(v18<=0) {$b=105; break;}
		$f.l=697;
		v20=v0.m_mass;
		v20=1.0 / v20;
		v0.m_invMass=v20;
		$f.l=698;
		v20=v0.m_invMass;
		v11=_35(v1,v20);
		;
		{ $b=109; break; }
	case 105:
		$f.l=701;
		v0.m_mass=1.0;
		$f.l=702;
		v0.m_invMass=1.0;
	case 109:
		$f.l=705;
		v20=v0.m_I;
		v18=(v20 != v20 || 0.0 != 0.0) ? -1 : (v20 > 0.0) - (v20 < 0.0);
		if(v18<=0) {$b=138; break;}
		v21=v0.m_flags;
		v21=(v21 & 16)|0;
		if(v21!=0) {$b=138; break;}
		$f.l=707;
		v19=v0;
		v20=v0.m_I;
		v13=v0.m_mass;
		v22=_4d(v1,v1);
		;
		v22=v13 * v22;
		v22=v20 - v22;
		v0.m_I=v22;
		$f.l=708;
		v14=$g53;
		if(v14!=0) {$b=133; break;}
		v22=v0.m_I;
		v18=(v22 != v22 || 0.0 != 0.0) ? -1 : (v22 > 0.0) - (v22 < 0.0);
		if(v18>0) {$b=133; break;}
		v15=new java/lang/AssertionError;
		_26(v15);
		throw v15;
	case 133:
		$f.l=709;
		v22=v0.m_I;
		v22=1.0 / v22;
		v0.m_invI=v22;
		{ $b=142; break; }
	case 138:
		$f.l=711;
		v0.m_I=0.0;
		$f.l=712;
		v0.m_invI=0.0;
	case 142:
		$f.l=715;
		v16=v0.m_world;
		v17=_d6(v16);
		;
		v23=v17.$c.$it[32](v17);
		;
		$f.l=717;
		v12=v0.m_sweep;
		v11=v12.c;
		v11=_28(v23,v11);
		;
		$f.l=718;
		v12=v0.m_sweep;
		v11=v12.localCenter;
		v11=_28(v11,v1);
		;
		$f.l=720;
		v10=v0.m_xf;
		v12=v0.m_sweep;
		v11=v12.localCenter;
		v12=v0.m_sweep;
		v7=v12.c0;
		_5c(v10,v11,v7);
		$f.l=721;
		v12=v0.m_sweep;
		v11=v12.c;
		v12=v0.m_sweep;
		v7=v12.c0;
		v11=_28(v11,v7);
		;
		$f.l=725;
		v12=v0.m_sweep;
		v11=v12.c;
		v11=_28(v2,v11);
		;
		v11=_2e(v11,v23);
		;
		$f.l=727;
		v5=v23;
		$f.l=728;
		v22=v0.m_angularVelocity;
		_1df(v22,v2,v5);
		$f.l=729;
		v11=v0.m_linearVelocity;
		v11=_36(v11,v5);
		;
		$f.l=731;
		v16=v0.m_world;
		v17=_d6(v16);
		;
		v17.$c.$it[43](v17,3);
		$f.l=732;
		return;
}
}
//org/jbox2d/dynamics/Body:getLocalPoint
function _1e0(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=777;
v0=a0;
v1=a1;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v3=v2;
$f.l=778;
_1e1(v0,v1,v3);
$f.l=779;
return v3;
}
//org/jbox2d/dynamics/Body:getLocalPointToOut
function _1e1(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=783;
v0=a0;
v1=a1;
v2=a2;
v3=v0.m_xf;
_1e2(v3,v1,v2);
$f.l=784;
return;
}
//org/jbox2d/dynamics/Body:getType
function _113(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=862;
v0=a0;
v1=v0.m_type;
return v1;
}
//org/jbox2d/dynamics/Body:isBullet
function _11c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=918;
		v0=a0;
		v1=v0.m_flags;
		v1=(v1 & 8)|0;
		if(v1!=8) {$b=7; break;}
		v2=1;
		{ $b=8; break; }
	case 7:
		v2=0;
	case 8:
		return v2;
}
}
//org/jbox2d/dynamics/Body:setAwake
function _100(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=960;
		v0=a0;
		v1=a1;
		if(v1==0) {$b=16; break;}
		$f.l=961;
		v2=v0.m_flags;
		v2=(v2 & 2)|0;
		if(v2!=0) {$b=33; break;}
		$f.l=962;
		v3=v0;
		v2=v0.m_flags;
		v2=(v2 | 2)|0;
		v0.m_flags=v2;
		$f.l=963;
		v0.m_sleepTime=0.0;
		{ $b=33; break; }
	case 16:
		$f.l=966;
		v3=v0;
		v2=v0.m_flags;
		v2=(v2 & -3)|0;
		v0.m_flags=v2;
		$f.l=967;
		v0.m_sleepTime=0.0;
		$f.l=968;
		v4=v0.m_linearVelocity;
		_29(v4);
		$f.l=969;
		v0.m_angularVelocity=0.0;
		$f.l=970;
		v4=v0.m_force;
		_29(v4);
		$f.l=971;
		v0.m_torque=0.0;
	case 33:
		$f.l=973;
		return;
}
}
//org/jbox2d/dynamics/Body:isAwake
function _111(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=981;
		v0=a0;
		v1=v0.m_flags;
		v1=(v1 & 2)|0;
		if(v1!=2) {$b=7; break;}
		v2=1;
		{ $b=8; break; }
	case 7:
		v2=0;
	case 8:
		return v2;
}
}
//org/jbox2d/dynamics/Body:isActive
function _112(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1039;
		v0=a0;
		v1=v0.m_flags;
		v1=(v1 & 32)|0;
		if(v1!=32) {$b=7; break;}
		v2=1;
		{ $b=8; break; }
	case 7:
		v2=0;
	case 8:
		return v2;
}
}
//org/jbox2d/dynamics/Body:getContactList
function _105(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1083;
v0=a0;
v1=v0.m_contactList;
return v1;
}
//org/jbox2d/dynamics/Body:getNext
function _10f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1088;
v0=a0;
v1=v0.m_next;
return v1;
}
//org/jbox2d/dynamics/Body:synchronizeFixtures
function _11b(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1114;
		v0=a0;
		v1=v0.pxf;
		$f.l=1121;
		v3=v1.q;
		v4=v0.m_sweep;
		v5=v4.a0;
		v5=_1e3(v5);
		;
		v3.s=v5;
		$f.l=1122;
		v3=v1.q;
		v4=v0.m_sweep;
		v5=v4.a0;
		v5=_1e4(v5);
		;
		v3.c=v5;
		$f.l=1123;
		v6=v1.p;
		v4=v0.m_sweep;
		v7=v4.c0;
		v5=v7.x;
		v3=v1.q;
		v8=v3.c;
		v4=v0.m_sweep;
		v7=v4.localCenter;
		v9=v7.x;
		v9=v8 * v9;
		v9=v5 - v9;
		v3=v1.q;
		v8=v3.s;
		v4=v0.m_sweep;
		v7=v4.localCenter;
		v5=v7.y;
		v8=v8 * v5;
		v9=v9 + v8;
		v6.x=v9;
		$f.l=1124;
		v7=v1.p;
		v4=v0.m_sweep;
		v6=v4.c0;
		v9=v6.y;
		v3=v1.q;
		v8=v3.s;
		v4=v0.m_sweep;
		v6=v4.localCenter;
		v5=v6.x;
		v8=v8 * v5;
		v9=v9 - v8;
		v3=v1.q;
		v8=v3.c;
		v4=v0.m_sweep;
		v6=v4.localCenter;
		v5=v6.y;
		v8=v8 * v5;
		v9=v9 - v8;
		v7.y=v9;
		$f.l=1127;
		v2=v0.m_fixtureList;
	case 57:
		if(v2==null) {$b=67; break;}
		$f.l=1128;
		v10=v0.m_world;
		v11=v10.m_contactManager;
		v12=v11.m_broadPhase;
		v13=v0.m_xf;
		_97(v2,v12,v1,v13);
		$f.l=1127;
		v2=v2.m_next;
		{ $b=57; break; }
	case 67:
		$f.l=1130;
		return;
}
}
//org/jbox2d/dynamics/Body:synchronizeTransform
function _125(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
$f.l=1139;
v0=a0;
v3=v0.m_xf;
v4=v3.q;
v5=v0.m_sweep;
v6=v5.a;
v6=_1e3(v6);
;
v4.s=v6;
$f.l=1140;
v3=v0.m_xf;
v4=v3.q;
v5=v0.m_sweep;
v6=v5.a;
v6=_1e4(v6);
;
v4.c=v6;
$f.l=1141;
v3=v0.m_xf;
v1=v3.q;
$f.l=1142;
v5=v0.m_sweep;
v2=v5.localCenter;
$f.l=1143;
v3=v0.m_xf;
v7=v3.p;
v5=v0.m_sweep;
v8=v5.c;
v6=v8.x;
v9=v1.c;
v10=v2.x;
v10=v9 * v10;
v10=v6 - v10;
v9=v1.s;
v6=v2.y;
v9=v9 * v6;
v10=v10 + v9;
v7.x=v10;
$f.l=1144;
v3=v0.m_xf;
v8=v3.p;
v5=v0.m_sweep;
v7=v5.c;
v10=v7.y;
v9=v1.s;
v6=v2.x;
v9=v9 * v6;
v10=v10 - v9;
v9=v1.c;
v6=v2.y;
v9=v9 * v6;
v10=v10 - v9;
v8.y=v10;
$f.l=1145;
return;
}
//org/jbox2d/dynamics/Body:shouldCollide
function _1e5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1156;
		v0=a0;
		v1=a1;
		v4=v0.m_type;
		v2=$g38;
		if(v4==v2) {$b=11; break;}
		v4=v1.m_type;
		v2=$g38;
		if(v4==v2) {$b=11; break;}
		$f.l=1157;
		return 0;
	case 11:
		$f.l=1161;
		v3=v0.m_jointList;
	case 13:
		if(v3==null) {$b=26; break;}
		$f.l=1162;
		v5=v3.other;
		if(v5!=v1) {$b=23; break;}
		$f.l=1163;
		v6=v3.joint;
		v7=_e7(v6);
		;
		if(v7!=0) {$b=23; break;}
		$f.l=1164;
		return 0;
	case 23:
		$f.l=1161;
		v3=v3.next;
		{ $b=13; break; }
	case 26:
		$f.l=1169;
		return 1;
}
}
//org/jbox2d/dynamics/Body:advance
function _122(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
$f.l=1174;
v0=a0;
v1=a1;
v2=v0.m_sweep;
_11d(v2,v1);
$f.l=1175;
v2=v0.m_sweep;
v3=v2.c;
v2=v0.m_sweep;
v4=v2.c0;
v4=_28(v3,v4);
;
$f.l=1176;
v2=v0.m_sweep;
v5=v0.m_sweep;
v6=v5.a0;
v2.a=v6;
$f.l=1177;
v7=v0.m_xf;
v8=v7.q;
v5=v0.m_sweep;
v6=v5.a;
v8=_2c(v8,v6);
;
$f.l=1179;
v7=v0.m_xf;
v8=v7.q;
v5=v0.m_sweep;
v4=v5.localCenter;
v7=v0.m_xf;
v3=v7.p;
_39(v8,v4,v3);
$f.l=1180;
v7=v0.m_xf;
v4=v7.p;
v4=_35(v4,-1.0);
;
v5=v0.m_sweep;
v3=v5.c;
v4=_36(v4,v3);
;
$f.l=1181;
return;
}
//org/jbox2d/dynamics/Body:<clinit>
function _1e6(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=43;
		v0=vm.getClass(60);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g53=v1;
		return;
}
}
//java/util/Arrays:checkOffsetAndCount
function _1e7(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=38;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=(v1 | v2)|0;
		if(v3<0) {$b=9; break;}
		if(v1>v0) {$b=9; break;}
		v3=(v0 - v1)|0;
		if(v3>=v2) {$b=13; break;}
	case 9:
		$f.l=39;
		v4=new java/lang/ArrayIndexOutOfBoundsException;
		_1e8(v4,v1);
		throw v4;
	case 13:
		$f.l=41;
		return;
}
}
//java/util/Arrays:fill
function _1e9(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1100;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v5=v0.len;
		_1ea(v5,v1,v2);
		$f.l=1101;
		v4=v1;
	case 9:
		if(v4>=v2) {$b=15; break;}
		$f.l=1102;
		v0[v4]=v3;
		$f.l=1101;
		v4=(v4 + 1)|0;
		{ $b=9; break; }
	case 15:
		$f.l=1104;
		return;
}
}
//java/util/Arrays:checkBounds
function _1ea(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1906;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v1<=v2) {$b=16; break;}
		$f.l=1908;
		v4=new java/lang/IndexOutOfBoundsException;
		v3=new java/lang/StringBuilder;
		_9(v3);
		v3=_b(v3,$str70);
		;
		v3=_c(v3,v1);
		;
		v3=_b(v3,$str71);
		;
		v3=_c(v3,v2);
		;
		v5=v3.$c.$vt[0](v3);
		;
		_1eb(v4,v5);
		throw v4;
	case 16:
		$f.l=1910;
		if(v1>=0) {$b=27; break;}
		$f.l=1912;
		v4=new java/lang/IndexOutOfBoundsException;
		v3=new java/lang/StringBuilder;
		_9(v3);
		v3=_b(v3,$str70);
		;
		v3=_c(v3,v1);
		;
		v5=v3.$c.$vt[0](v3);
		;
		_1eb(v4,v5);
		throw v4;
	case 27:
		$f.l=1914;
		if(v2<=v0) {$b=38; break;}
		$f.l=1916;
		v4=new java/lang/IndexOutOfBoundsException;
		v3=new java/lang/StringBuilder;
		_9(v3);
		v3=_b(v3,$str70);
		;
		v3=_c(v3,v2);
		;
		v5=v3.$c.$vt[0](v3);
		;
		_1eb(v4,v5);
		throw v4;
	case 38:
		$f.l=1918;
		return;
}
}
//java/util/Arrays:sort
function _1ec(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2589;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v0!=null) {$b=9; break;}
		$f.l=2590;
		v3=new java/lang/NullPointerException;
		_166(v3);
		throw v3;
	case 9:
		$f.l=2592;
		v4=v0.len;
		_1ea(v4,v1,v2);
		$f.l=2593;
		_1ed(v1,v2,v0);
		$f.l=2594;
		return;
}
}
//java/util/Arrays:sort
function _1ed(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2597;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=(v1 - v0)|0;
		$f.l=2598;
		if(v3>0) {$b=9; break;}
		$f.l=2599;
		return;
	case 9:
		$f.l=2601;
		v5=vm.is(v2,61);
		if(v5==0) {$b=17; break;}
		$f.l=2602;
		v6=vm.cast(v2,61);
		v6=vm.cast(v6,61);
		_1ee(v6,v0,v1);
		{ $b=23; break; }
	case 17:
		$f.l=2604;
		v4=newArray(0,v1);
		$f.l=2605;
		_15(v2,v0,v4,v0,v3);
		$f.l=2606;
		_1ef(v4,v2,v0,v1);
	case 23:
		$f.l=2608;
		return;
}
}
//java/util/Arrays:swap
function _1f0(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=2621;
v0=a0;
v1=a1;
v2=a2;
v3=v2[v0];
$f.l=2622;
v4=v2[v1];
v2[v0]=v4;
$f.l=2623;
v2[v1]=v3;
$f.l=2624;
return;
}
//java/util/Arrays:mergeSort
function _1ef(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2645;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=(v3 - v2)|0;
		$f.l=2647;
		v5=v0[v2];
		$f.l=2648;
		v13=_12d(v5);
		;
		if(v13==0) {$b=17; break;}
		$f.l=2649;
		v14=_2(v5);
		;
		v15=_12e(v14);
		;
		_1f1(v0,v1,v2,v3,v15);
		$f.l=2650;
		return;
	case 17:
		$f.l=2653;
		if(v4>7) {$b=52; break;}
		$f.l=2654;
		v6=(v2 + 1)|0;
	case 21:
		if(v6>=v3) {$b=50; break;}
		$f.l=2655;
		v16=v1[v6];
		v7=vm.cast(v16,62);
		$f.l=2657;
		v17=(v6 - 1)|0;
		v8=v1[v17];
		$f.l=2658;
		v17=v7.$c.$it[0](v7,v8);
		;
		if(v17>=0) {$b=47; break;}
		$f.l=2659;
		v9=v6;
	case 33:
		$f.l=2661;
		v17=v9;
		v9=(v9 + -1)|0;
		v1[v17]=v8;
		$f.l=2662;
		if(v9<=v2) {$b=45; break;}
		v17=(v9 - 1)|0;
		v16=v1[v17];
		v8=v16;
		$f.l=2663;
		v17=v7.$c.$it[0](v7,v16);
		;
		if(v17<0) {$b=33; break;}
	case 45:
		$f.l=2664;
		v1[v9]=v7;
	case 47:
		$f.l=2654;
		v6=(v6 + 1)|0;
		{ $b=21; break; }
	case 50:
		$f.l=2667;
		return;
	case 52:
		$f.l=2669;
		v17=(v3 + v2)|0;
		v6=(v17 >>> 1)|0;
		$f.l=2670;
		_1ef(v1,v0,v2,v6);
		$f.l=2671;
		_1ef(v1,v0,v6,v3);
		$f.l=2676;
		v17=(v6 - 1)|0;
		v16=v0[v17];
		v18=vm.cast(v16,62);
		v16=v0[v6];
		v17=v18.$c.$it[0](v18,v16);
		;
		if(v17>0) {$b=70; break;}
		$f.l=2677;
		_15(v0,v2,v1,v2,v4);
		$f.l=2678;
		return;
	case 70:
		$f.l=2680;
		v19=v6;
		v20=v2;
	case 73:
		$f.l=2684;
		v16=v0[v2];
		v21=vm.cast(v16,62);
		$f.l=2685;
		v16=v0[v19];
		v10=vm.cast(v16,62);
		$f.l=2686;
		v17=v21.$c.$it[0](v21,v10);
		;
		if(v17>0) {$b=102; break;}
		$f.l=2687;
		v17=(v2 + 1)|0;
		v22=(v6 - 1)|0;
		v11=_1f2(v0,v10,-1,v17,v22);
		;
		$f.l=2688;
		v22=(v11 - v2)|0;
		v12=(v22 + 1)|0;
		$f.l=2689;
		_15(v0,v2,v1,v20,v12);
		$f.l=2690;
		v23=(v20 + v12)|0;
		$f.l=2691;
		v20=(v23 + 1)|0;
		v1[v23]=v10;
		$f.l=2692;
		v19=(v19 + 1)|0;
		$f.l=2693;
		v2=(v11 + 1)|0;
		$f.l=2694;
		{ $b=120; break; }
	case 102:
		$f.l=2695;
		v22=(v19 + 1)|0;
		v17=(v3 - 1)|0;
		v11=_1f2(v0,v21,0,v22,v17);
		;
		$f.l=2696;
		v22=(v11 - v19)|0;
		v12=(v22 + 1)|0;
		$f.l=2697;
		_15(v0,v19,v1,v20,v12);
		$f.l=2698;
		v23=(v20 + v12)|0;
		$f.l=2699;
		v20=(v23 + 1)|0;
		v1[v23]=v21;
		$f.l=2700;
		v2=(v2 + 1)|0;
		$f.l=2701;
		v19=(v11 + 1)|0;
	case 120:
		$f.l=2703;
		v22=(v3 - v19)|0;
		if(v22<=0) {$b=125; break;}
		v22=(v6 - v2)|0;
		if(v22>0) {$b=73; break;}
	case 125:
		$f.l=2706;
		v22=(v3 - v19)|0;
		if(v22>0) {$b=132; break;}
		$f.l=2707;
		v22=(v6 - v2)|0;
		_15(v0,v2,v1,v20,v22);
		{ $b=135; break; }
	case 132:
		$f.l=2709;
		v22=(v3 - v19)|0;
		_15(v0,v19,v1,v20,v22);
	case 135:
		$f.l=2711;
		return;
}
}
//java/util/Arrays:mergeSort
function _1f1(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2734;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=(v3 - v2)|0;
		$f.l=2736;
		if(v5>7) {$b=41; break;}
		$f.l=2737;
		v6=(v2 + 1)|0;
	case 11:
		if(v6>=v3) {$b=39; break;}
		$f.l=2738;
		v7=v1[v6];
		$f.l=2739;
		v13=(v6 - 1)|0;
		v8=v1[v13];
		$f.l=2740;
		v13=v4.$c.$it[1](v4,v8,v7);
		;
		if(v13<=0) {$b=36; break;}
		$f.l=2741;
		v9=v6;
	case 22:
		$f.l=2743;
		v13=v9;
		v9=(v9 + -1)|0;
		v1[v13]=v8;
		$f.l=2744;
		if(v9<=v2) {$b=34; break;}
		v13=(v9 - 1)|0;
		v14=v1[v13];
		v8=v14;
		$f.l=2745;
		v13=v4.$c.$it[1](v4,v14,v7);
		;
		if(v13>0) {$b=22; break;}
	case 34:
		$f.l=2746;
		v1[v9]=v7;
	case 36:
		$f.l=2737;
		v6=(v6 + 1)|0;
		{ $b=11; break; }
	case 39:
		$f.l=2749;
		return;
	case 41:
		$f.l=2751;
		v13=(v3 + v2)|0;
		v6=(v13 >>> 1)|0;
		$f.l=2752;
		_1f1(v1,v0,v2,v6,v4);
		$f.l=2753;
		_1f1(v1,v0,v6,v3,v4);
		$f.l=2758;
		v13=(v6 - 1)|0;
		v14=v0[v13];
		v15=v0[v6];
		v13=v4.$c.$it[1](v4,v14,v15);
		;
		if(v13>0) {$b=58; break;}
		$f.l=2759;
		_15(v0,v2,v1,v2,v5);
		$f.l=2760;
		return;
	case 58:
		$f.l=2762;
		v16=v6;
		v17=v2;
	case 61:
		$f.l=2766;
		v18=v0[v2];
		$f.l=2767;
		v10=v0[v16];
		$f.l=2768;
		v13=v4.$c.$it[1](v4,v18,v10);
		;
		if(v13>0) {$b=88; break;}
		$f.l=2769;
		v13=(v2 + 1)|0;
		v19=(v6 - 1)|0;
		v11=_1f3(v0,v10,-1,v13,v19,v4);
		;
		$f.l=2770;
		v19=(v11 - v2)|0;
		v12=(v19 + 1)|0;
		$f.l=2771;
		_15(v0,v2,v1,v17,v12);
		$f.l=2772;
		v20=(v17 + v12)|0;
		$f.l=2773;
		v17=(v20 + 1)|0;
		v1[v20]=v10;
		$f.l=2774;
		v16=(v16 + 1)|0;
		$f.l=2775;
		v2=(v11 + 1)|0;
		$f.l=2776;
		{ $b=106; break; }
	case 88:
		$f.l=2777;
		v19=(v16 + 1)|0;
		v13=(v3 - 1)|0;
		v11=_1f3(v0,v18,0,v19,v13,v4);
		;
		$f.l=2778;
		v19=(v11 - v16)|0;
		v12=(v19 + 1)|0;
		$f.l=2779;
		_15(v0,v16,v1,v17,v12);
		$f.l=2780;
		v20=(v17 + v12)|0;
		$f.l=2781;
		v17=(v20 + 1)|0;
		v1[v20]=v18;
		$f.l=2782;
		v2=(v2 + 1)|0;
		$f.l=2783;
		v16=(v11 + 1)|0;
	case 106:
		$f.l=2785;
		v19=(v3 - v16)|0;
		if(v19<=0) {$b=111; break;}
		v19=(v6 - v2)|0;
		if(v19>0) {$b=61; break;}
	case 111:
		$f.l=2788;
		v19=(v3 - v16)|0;
		if(v19>0) {$b=118; break;}
		$f.l=2789;
		v19=(v6 - v2)|0;
		_15(v0,v2,v1,v17,v19);
		{ $b=121; break; }
	case 118:
		$f.l=2791;
		v19=(v3 - v16)|0;
		_15(v0,v16,v1,v17,v19);
	case 121:
		$f.l=2793;
		return;
}
}
//java/util/Arrays:find
function _1f2(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2820;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v7=_12d(v1);
		;
		if(v7==0) {$b=13; break;}
		$f.l=2821;
		v8=_2(v1);
		;
		v9=_12e(v8);
		;
		v10=_1f3(v0,v1,v2,v3,v4,v9);
		;
		return v10;
	case 13:
		$f.l=2823;
		v5=v3;
		$f.l=2824;
		v6=1;
	case 17:
		$f.l=2825;
		if(v5>v4) {$b=35; break;}
		$f.l=2826;
		v11=v0[v5];
		v10=v1.$c.$it[0](v1,v11);
		;
		if(v10<=v2) {$b=26; break;}
		$f.l=2827;
		v3=(v5 + 1)|0;
		{ $b=30; break; }
	case 26:
		$f.l=2829;
		v4=(v5 - 1)|0;
		$f.l=2830;
		{ $b=35; break; }
	case 30:
		$f.l=2832;
		v5=(v5 + v6)|0;
		$f.l=2833;
		v6=(v6 << 1)|0;
		{ $b=17; break; }
	case 35:
		$f.l=2835;
		if(v3>v4) {$b=50; break;}
		$f.l=2836;
		v10=(v3 + v4)|0;
		v5=(v10 >>> 1)|0;
		$f.l=2837;
		v11=v0[v5];
		v10=v1.$c.$it[0](v1,v11);
		;
		if(v10<=v2) {$b=47; break;}
		$f.l=2838;
		v3=(v5 + 1)|0;
		{ $b=35; break; }
	case 47:
		$f.l=2840;
		v4=(v5 - 1)|0;
		{ $b=35; break; }
	case 50:
		$f.l=2843;
		v10=(v3 - 1)|0;
		return v10;
}
}
//java/util/Arrays:find
function _1f3(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2869;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=v3;
		$f.l=2870;
		v7=1;
	case 10:
		$f.l=2871;
		if(v6>v4) {$b=28; break;}
		$f.l=2872;
		v8=v0[v6];
		v9=v5.$c.$it[1](v5,v1,v8);
		;
		if(v9<=v2) {$b=19; break;}
		$f.l=2873;
		v3=(v6 + 1)|0;
		{ $b=23; break; }
	case 19:
		$f.l=2875;
		v4=(v6 - 1)|0;
		$f.l=2876;
		{ $b=28; break; }
	case 23:
		$f.l=2878;
		v6=(v6 + v7)|0;
		$f.l=2879;
		v7=(v7 << 1)|0;
		{ $b=10; break; }
	case 28:
		$f.l=2881;
		if(v3>v4) {$b=43; break;}
		$f.l=2882;
		v9=(v3 + v4)|0;
		v6=(v9 >>> 1)|0;
		$f.l=2883;
		v8=v0[v6];
		v9=v5.$c.$it[1](v5,v1,v8);
		;
		if(v9<=v2) {$b=40; break;}
		$f.l=2884;
		v3=(v6 + 1)|0;
		{ $b=28; break; }
	case 40:
		$f.l=2886;
		v4=(v6 - 1)|0;
		{ $b=28; break; }
	case 43:
		$f.l=2889;
		v9=(v3 - 1)|0;
		return v9;
}
}
//java/util/Arrays:medChar
function _1f4(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2896;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v8=v3[v0];
		v5=_1f5(v8,v4);
		;
		$f.l=2897;
		v8=v3[v1];
		v6=_1f5(v8,v4);
		;
		$f.l=2898;
		v8=v3[v2];
		v7=_1f5(v8,v4);
		;
		$f.l=2899;
		if(v5>=v6) {$b=24; break;}
		if(v6>=v7) {$b=19; break;}
		v9=v1;
		{ $b=31; break; }
	case 19:
		if(v5>=v7) {$b=22; break;}
		v9=v2;
		{ $b=31; break; }
	case 22:
		v9=v0;
		{ $b=31; break; }
	case 24:
		if(v6>=v7) {$b=30; break;}
		if(v5>=v7) {$b=28; break;}
		v9=v0;
		{ $b=31; break; }
	case 28:
		v9=v2;
		{ $b=31; break; }
	case 30:
		v9=v1;
	case 31:
		return v9;
}
}
//java/util/Arrays:charAt
function _1f5(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2909;
		v0=a0;
		v1=a1;
		v2=_187(v0);
		;
		if(v1<v2) {$b=7; break;}
		$f.l=2910;
		return -1;
	case 7:
		$f.l=2912;
		v3=_183(v0,v1);
		;
		return v3;
}
}
//java/util/Arrays:copySwap
function _1f6(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2932;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		if(v0!=v2) {$b=33; break;}
		v6=(v1 + v4)|0;
		if(v6<=v3) {$b=33; break;}
		$f.l=2933;
		v6=(v3 + v4)|0;
		v5=(v6 - 1)|0;
	case 12:
		$f.l=2934;
		if(v1>=v3) {$b=22; break;}
		$f.l=2935;
		v7=v0[v1];
		v2[v5]=v7;
		$f.l=2934;
		v1=(v1 + 1)|0;
		v5=(v5 + -1)|0;
		v4=(v4 + -1)|0;
		{ $b=12; break; }
	case 22:
		$f.l=2937;
		if(v4<=1) {$b=31; break;}
		$f.l=2938;
		_1f0(v1,v5,v2);
		$f.l=2937;
		v1=(v1 + 1)|0;
		v5=(v5 + -1)|0;
		v4=(v4 + -2)|0;
		{ $b=22; break; }
	case 31:
		$f.l=2941;
		{ $b=46; break; }
	case 33:
		$f.l=2942;
		v6=(v3 + v4)|0;
		v3=(v6 - 1)|0;
	case 36:
		$f.l=2943;
		if(v4<=0) {$b=46; break;}
		$f.l=2944;
		v7=v0[v1];
		v2[v3]=v7;
		$f.l=2943;
		v1=(v1 + 1)|0;
		v3=(v3 + -1)|0;
		v4=(v4 + -1)|0;
		{ $b=36; break; }
	case 46:
		$f.l=2947;
		return;
}
}
//java/util/Arrays:stableStringSort
function _1ee(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=2962;
v0=a0;
v1=a1;
v2=a2;
v3=newArray(61,v2);
_1f7(v0,v0,v3,v1,v2,0);
$f.l=2963;
return;
}
//java/util/Arrays:stableStringSort
function _1f7(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=2984;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=(v4 - v3)|0;
		$f.l=2986;
		if(v6>=7) {$b=77; break;}
		$f.l=2987;
		if(v1!=v0) {$b=43; break;}
		$f.l=2988;
		v7=(v3 + 1)|0;
	case 14:
		if(v7>=v4) {$b=42; break;}
		$f.l=2989;
		v8=v0[v7];
		$f.l=2990;
		v18=(v7 - 1)|0;
		v9=v0[v18];
		$f.l=2991;
		v18=_1f8(v8,v9);
		;
		if(v18>=0) {$b=39; break;}
		$f.l=2992;
		v10=v7;
	case 25:
		$f.l=2994;
		v18=v10;
		v10=(v10 + -1)|0;
		v0[v18]=v9;
		$f.l=2995;
		if(v10<=v3) {$b=37; break;}
		v18=(v10 - 1)|0;
		v19=v0[v18];
		v9=v19;
		$f.l=2996;
		v18=_1f8(v8,v19);
		;
		if(v18<0) {$b=25; break;}
	case 37:
		$f.l=2997;
		v0[v10]=v8;
	case 39:
		$f.l=2988;
		v7=(v7 + 1)|0;
		{ $b=14; break; }
	case 42:
		{ $b=75; break; }
	case 43:
		$f.l=3001;
		v7=(v4 - 1)|0;
		$f.l=3002;
		v20=(v7 + -1)|0;
		v19=v1[v7];
		v2[v3]=v19;
		$f.l=3003;
		v21=(v3 + 1)|0;
	case 51:
		if(v21>=v4) {$b=75; break;}
		$f.l=3004;
		v9=v1[v20];
		$f.l=3006;
		v11=v21;
	case 56:
		$f.l=3007;
		if(v11<=v3) {$b=69; break;}
		v18=(v11 - 1)|0;
		v19=v2[v18];
		v22=v19;
		$f.l=3008;
		v18=_1f8(v9,v19);
		;
		if(v18>=0) {$b=69; break;}
		$f.l=3009;
		v18=v11;
		v11=(v11 + -1)|0;
		v2[v18]=v22;
		{ $b=56; break; }
	case 69:
		$f.l=3011;
		v2[v11]=v9;
		$f.l=3003;
		v21=(v21 + 1)|0;
		v20=(v20 + -1)|0;
		{ $b=51; break; }
	case 75:
		$f.l=3014;
		return;
	case 77:
		$f.l=3018;
		v18=(v6 / 2)|0;
		v21=(v3 + v18)|0;
		$f.l=3019;
		v23=v3;
		$f.l=3020;
		v10=(v4 - 1)|0;
		$f.l=3021;
		if(v6<=40) {$b=102; break;}
		$f.l=3022;
		v20=(v6 / 8)|0;
		$f.l=3023;
		v18=(v23 + v20)|0;
		v24=(v20 * 2)|0;
		v24=(v23 + v24)|0;
		v23=_1f4(v23,v18,v24,v1,v5);
		;
		$f.l=3024;
		v24=(v21 - v20)|0;
		v18=(v21 + v20)|0;
		v21=_1f4(v24,v21,v18,v1,v5);
		;
		$f.l=3025;
		v24=(v10 - v20)|0;
		v18=(v20 * 2)|0;
		v18=(v10 - v18)|0;
		v10=_1f4(v10,v24,v18,v1,v5);
		;
	case 102:
		$f.l=3027;
		v21=_1f4(v23,v21,v10,v1,v5);
		;
		$f.l=3032;
		v19=v1[v21];
		v11=_1f5(v19,v5);
		;
		$f.l=3034;
		v24=v3;
		v12=v3;
		v13=v3;
		$f.l=3035;
		v14=(v4 - 1)|0;
		$f.l=3038;
		v15=v3;
	case 115:
		if(v15>=v4) {$b=142; break;}
		$f.l=3039;
		v16=v1[v15];
		$f.l=3040;
		v24=_1f5(v16,v5);
		;
		v17=(v24 - v11)|0;
		$f.l=3041;
		if(v17>=0) {$b=128; break;}
		$f.l=3042;
		v1[v13]=v16;
		$f.l=3043;
		v13=(v13 + 1)|0;
		{ $b=139; break; }
	case 128:
		$f.l=3044;
		if(v17<=0) {$b=135; break;}
		$f.l=3045;
		v2[v14]=v16;
		$f.l=3046;
		v14=(v14 + -1)|0;
		{ $b=139; break; }
	case 135:
		$f.l=3048;
		v2[v12]=v16;
		$f.l=3049;
		v12=(v12 + 1)|0;
	case 139:
		$f.l=3038;
		v15=(v15 + 1)|0;
		{ $b=115; break; }
	case 142:
		$f.l=3053;
		v20=(v12 - v3)|0;
		$f.l=3054;
		if(v20<=0) {$b=168; break;}
		$f.l=3055;
		if(v0!=v1) {$b=151; break;}
		$f.l=3056;
		_15(v2,v3,v0,v13,v20);
		{ $b=153; break; }
	case 151:
		$f.l=3058;
		_1f6(v2,v3,v0,v13,v20);
	case 153:
		$f.l=3061;
		if(v12<v4) {$b=158; break;}
		if(v11!=-1) {$b=158; break;}
		$f.l=3062;
		return;
	case 158:
		$f.l=3064;
		v25=v0;
		v26=v0;
		if(v0!=v2) {$b=164; break;}
		v27=v1;
		{ $b=165; break; }
	case 164:
		v27=v2;
	case 165:
		v24=(v13 + v20)|0;
		v18=(v5 + 1)|0;
		_1f7(v0,v0,v27,v13,v24,v18);
	case 168:
		$f.l=3068;
		v20=(v13 - v3)|0;
		$f.l=3069;
		if(v20<=0) {$b=174; break;}
		$f.l=3070;
		_1f7(v0,v1,v2,v3,v13,v5);
	case 174:
		$f.l=3073;
		v14=(v14 + 1)|0;
		$f.l=3074;
		v20=(v4 - v14)|0;
		$f.l=3075;
		if(v20<=0) {$b=182; break;}
		$f.l=3076;
		_1f7(v0,v2,v1,v14,v4,v5);
	case 182:
		$f.l=3078;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:<init>
function _1f9(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=a1;
v0.this$0=v1;
_0(v0);
$f.l=105;
v2=new org/jbox2d/collision/Distance$SimplexVertex;
v3=v0.this$0;
_a6(v2,v3,null);
v0.m_v1=v2;
$f.l=106;
v2=new org/jbox2d/collision/Distance$SimplexVertex;
v3=v0.this$0;
_a6(v2,v3,null);
v0.m_v2=v2;
$f.l=107;
v2=new org/jbox2d/collision/Distance$SimplexVertex;
v3=v0.this$0;
_a6(v2,v3,null);
v0.m_v3=v2;
$f.l=108;
v4=newArray(63,3);
v2=v0.m_v1;
v4[0]=v2;
v2=v0.m_v2;
v4[1]=v2;
v2=v0.m_v3;
v4[2]=v2;
v0.vertices=v4;
$f.l=165;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.e12=v5;
$f.l=195;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.case2=v5;
$f.l=196;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.case22=v5;
$f.l=228;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.case3=v5;
$f.l=229;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.case33=v5;
$f.l=352;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.e13=v5;
$f.l=353;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.e23=v5;
$f.l=354;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.w1=v5;
$f.l=355;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.w2=v5;
$f.l=356;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.w3=v5;
return;
}
//org/jbox2d/collision/Distance$Simplex:readCache
function _1fa(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=113;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=$g55;
		if(v6!=0) {$b=14; break;}
		v11=v1.count;
		if(v11<=3) {$b=14; break;}
		v12=new java/lang/AssertionError;
		_26(v12);
		throw v12;
	case 14:
		$f.l=116;
		v11=v1.count;
		v0.m_count=v11;
		$f.l=118;
		v7=0;
	case 19:
		v11=v0.m_count;
		if(v7>=v11) {$b=55; break;}
		$f.l=119;
		v13=v0.vertices;
		v8=v13[v7];
		$f.l=120;
		v14=v1.indexA;
		v11=v14[v7];
		v8.indexA=v11;
		$f.l=121;
		v14=v1.indexB;
		v11=v14[v7];
		v8.indexB=v11;
		$f.l=122;
		v11=v8.indexA;
		v9=_17b(v2,v11);
		;
		$f.l=123;
		v11=v8.indexB;
		v10=_17b(v4,v11);
		;
		$f.l=124;
		v15=v8.wA;
		_5c(v3,v9,v15);
		$f.l=125;
		v15=v8.wB;
		_5c(v5,v10,v15);
		$f.l=126;
		v15=v8.w;
		v16=v8.wB;
		v16=_28(v15,v16);
		;
		v15=v8.wA;
		v16=_2e(v16,v15);
		;
		$f.l=127;
		v8.a=0.0;
		$f.l=118;
		v7=(v7 + 1)|0;
		{ $b=19; break; }
	case 55:
		$f.l=132;
		v11=v0.m_count;
		if(v11<=1) {$b=73; break;}
		$f.l=133;
		v17=v1.metric;
		$f.l=134;
		v18=_1fb(v0);
		;
		$f.l=135;
		v19=0.5 * v17;
		v20=(v18 != v18 || v19 != v19) ? 1 : (v18 > v19) - (v18 < v19);
		if(v20<0) {$b=71; break;}
		v19=2.0 * v17;
		v20=(v19 != v19 || v18 != v18) ? 1 : (v19 > v18) - (v19 < v18);
		if(v20<0) {$b=71; break;}
		v20=(v18 != v18 || 1.1920929E-7 != 1.1920929E-7) ? 1 : (v18 > 1.1920929E-7) - (v18 < 1.1920929E-7);
		if(v20>=0) {$b=73; break;}
	case 71:
		$f.l=137;
		v0.m_count=0;
	case 73:
		$f.l=142;
		v11=v0.m_count;
		if(v11!=0) {$b=101; break;}
		$f.l=143;
		v13=v0.vertices;
		v21=v13[0];
		$f.l=144;
		v21.indexA=0;
		$f.l=145;
		v21.indexB=0;
		$f.l=146;
		v22=_17b(v2,0);
		;
		$f.l=147;
		v9=_17b(v4,0);
		;
		$f.l=148;
		v16=v21.wA;
		_5c(v3,v22,v16);
		$f.l=149;
		v16=v21.wB;
		_5c(v5,v9,v16);
		$f.l=150;
		v16=v21.w;
		v15=v21.wB;
		v16=_28(v16,v15);
		;
		v15=v21.wA;
		v16=_2e(v16,v15);
		;
		$f.l=151;
		v0.m_count=1;
	case 101:
		$f.l=153;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:writeCache
function _1fc(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=156;
		v0=a0;
		v1=a1;
		v3=_1fb(v0);
		;
		v1.metric=v3;
		$f.l=157;
		v4=v0.m_count;
		v1.count=v4;
		$f.l=159;
		v2=0;
	case 10:
		v4=v0.m_count;
		if(v2>=v4) {$b=27; break;}
		$f.l=160;
		v5=v1.indexA;
		v6=v0.vertices;
		v7=v6[v2];
		v4=v7.indexA;
		v5[v2]=v4;
		$f.l=161;
		v5=v1.indexB;
		v6=v0.vertices;
		v7=v6[v2];
		v4=v7.indexB;
		v5[v2]=v4;
		$f.l=159;
		v2=(v2 + 1)|0;
		{ $b=10; break; }
	case 27:
		$f.l=163;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:getSearchDirection
function _1fd(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=168;
		v0=a0;
		v1=a1;
		v3=v0.m_count;
		switch(v3){
		case 1: $b=5;break;
		case 2: $b=12;break;
		}
	case 5:
		$f.l=170;
		v4=v0.m_v1;
		v5=v4.w;
		v5=_28(v1,v5);
		;
		v5=_3a(v5);
		;
		$f.l=171;
		return;
	case 12:
		$f.l=173;
		v5=v0.e12;
		v4=v0.m_v2;
		v6=v4.w;
		v6=_28(v5,v6);
		;
		v4=v0.m_v1;
		v5=v4.w;
		v6=_2e(v6,v5);
		;
		$f.l=175;
		v4=v0.m_v1;
		v6=v4.w;
		v6=_28(v1,v6);
		;
		v6=_3a(v6);
		;
		$f.l=176;
		v6=v0.e12;
		v2=_2f(v6,v1);
		;
		$f.l=178;
		v7=(v2 != v2 || 0.0 != 0.0) ? -1 : (v2 > 0.0) - (v2 < 0.0);
		if(v7<=0) {$b=36; break;}
		$f.l=180;
		v6=v0.e12;
		_1df(1.0,v6,v1);
		$f.l=181;
		return;
	case 36:
		$f.l=184;
		v6=v0.e12;
		_1fe(v6,1.0,v1);
		$f.l=185;
		return;
		$f.l=188;
		v8=$g55;
		if(v8!=0) {$b=47; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 47:
		$f.l=189;
		_29(v1);
		$f.l=190;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:getClosestPoint
function _1ff(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=204;
		v0=a0;
		v1=a1;
		v2=v0.m_count;
		switch(v2){
		case 0: $b=5;break;
		case 1: $b=15;break;
		case 2: $b=21;break;
		case 3: $b=44;break;
		}
	case 5:
		$f.l=206;
		v3=$g55;
		if(v3!=0) {$b=11; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 11:
		$f.l=207;
		_29(v1);
		$f.l=208;
		return;
	case 15:
		$f.l=210;
		v5=v0.m_v1;
		v6=v5.w;
		v6=_28(v1,v6);
		;
		$f.l=211;
		return;
	case 21:
		$f.l=213;
		v6=v0.case22;
		v5=v0.m_v2;
		v7=v5.w;
		v7=_28(v6,v7);
		;
		v5=v0.m_v2;
		v8=v5.a;
		v7=_35(v7,v8);
		;
		$f.l=214;
		v7=v0.case2;
		v5=v0.m_v1;
		v6=v5.w;
		v7=_28(v7,v6);
		;
		v5=v0.m_v1;
		v8=v5.a;
		v7=_35(v7,v8);
		;
		v6=v0.case22;
		v7=_36(v7,v6);
		;
		$f.l=215;
		v7=v0.case2;
		v7=_28(v1,v7);
		;
		$f.l=216;
		return;
	case 44:
		$f.l=218;
		_29(v1);
		$f.l=219;
		return;
		$f.l=221;
		v3=$g55;
		if(v3!=0) {$b=54; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 54:
		$f.l=222;
		_29(v1);
		$f.l=223;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:getWitnessPoints
function _200(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=232;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=v0.m_count;
		switch(v3){
		case 0: $b=6;break;
		case 1: $b=12;break;
		case 2: $b=22;break;
		case 3: $b=58;break;
		}
	case 6:
		$f.l=234;
		v4=$g55;
		if(v4!=0) {$b=96; break;}
		v5=new java/lang/AssertionError;
		_26(v5);
		throw v5;
	case 12:
		$f.l=238;
		v6=v0.m_v1;
		v7=v6.wA;
		v7=_28(v1,v7);
		;
		$f.l=239;
		v6=v0.m_v1;
		v7=v6.wB;
		v7=_28(v2,v7);
		;
		$f.l=240;
		{ $b=96; break; }
	case 22:
		$f.l=243;
		v7=v0.case2;
		v6=v0.m_v1;
		v8=v6.wA;
		v8=_28(v7,v8);
		;
		v6=v0.m_v1;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		$f.l=244;
		v6=v0.m_v2;
		v8=v6.wA;
		v8=_28(v1,v8);
		;
		v6=v0.m_v2;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		v7=v0.case2;
		v8=_36(v8,v7);
		;
		$f.l=247;
		v8=v0.case2;
		v6=v0.m_v1;
		v7=v6.wB;
		v8=_28(v8,v7);
		;
		v6=v0.m_v1;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		$f.l=248;
		v6=v0.m_v2;
		v8=v6.wB;
		v8=_28(v2,v8);
		;
		v6=v0.m_v2;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		v7=v0.case2;
		v8=_36(v8,v7);
		;
		$f.l=250;
		{ $b=96; break; }
	case 58:
		$f.l=253;
		v6=v0.m_v1;
		v8=v6.wA;
		v8=_28(v1,v8);
		;
		v6=v0.m_v1;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		$f.l=254;
		v8=v0.case3;
		v6=v0.m_v2;
		v7=v6.wA;
		v8=_28(v8,v7);
		;
		v6=v0.m_v2;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		$f.l=255;
		v8=v0.case33;
		v6=v0.m_v3;
		v7=v6.wA;
		v8=_28(v8,v7);
		;
		v6=v0.m_v3;
		v9=v6.a;
		v8=_35(v8,v9);
		;
		$f.l=256;
		v8=v0.case3;
		v8=_36(v1,v8);
		;
		v7=v0.case33;
		v8=_36(v8,v7);
		;
		$f.l=257;
		v8=_28(v2,v1);
		;
		$f.l=260;
		{ $b=96; break; }
		$f.l=263;
		v4=$g55;
		if(v4!=0) {$b=96; break;}
		v5=new java/lang/AssertionError;
		_26(v5);
		throw v5;
	case 96:
		$f.l=266;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:getMetric
function _1fb(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=270;
		v0=a0;
		v1=v0.m_count;
		switch(v1){
		case 0: $b=4;break;
		case 1: $b=12;break;
		case 2: $b=14;break;
		case 3: $b=21;break;
		}
	case 4:
		$f.l=272;
		v2=$g55;
		if(v2!=0) {$b=10; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 10:
		$f.l=273;
		return 0.0;
	case 12:
		$f.l=276;
		return 0.0;
	case 14:
		$f.l=279;
		v4=v0.m_v1;
		v5=v4.w;
		v4=v0.m_v2;
		v6=v4.w;
		v7=_201(v5,v6);
		;
		return v7;
	case 21:
		$f.l=282;
		v6=v0.case3;
		v4=v0.m_v2;
		v5=v4.w;
		v6=_28(v6,v5);
		;
		v4=v0.m_v1;
		v5=v4.w;
		v6=_2e(v6,v5);
		;
		$f.l=283;
		v6=v0.case33;
		v4=v0.m_v3;
		v5=v4.w;
		v6=_28(v6,v5);
		;
		v4=v0.m_v1;
		v5=v4.w;
		v6=_2e(v6,v5);
		;
		$f.l=285;
		v6=v0.case3;
		v5=v0.case33;
		v7=_2f(v6,v5);
		;
		return v7;
		$f.l=288;
		v2=$g55;
		if(v2!=0) {$b=48; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 48:
		$f.l=289;
		return 0.0;
}
}
//org/jbox2d/collision/Distance$Simplex:solve2
function _202(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=321;
		v0=a0;
		v6=v0.m_v1;
		v1=v6.w;
		$f.l=322;
		v6=v0.m_v2;
		v2=v6.w;
		$f.l=323;
		v7=v0.e12;
		v7=_28(v7,v2);
		;
		v7=_2e(v7,v1);
		;
		$f.l=326;
		v7=v0.e12;
		v8=_4d(v1,v7);
		;
		v3=-v8;
		$f.l=327;
		v9=(v3 != v3 || 0.0 != 0.0) ? 1 : (v3 > 0.0) - (v3 < 0.0);
		if(v9>0) {$b=25; break;}
		$f.l=329;
		v6=v0.m_v1;
		v6.a=1.0;
		$f.l=330;
		v0.m_count=1;
		$f.l=331;
		return;
	case 25:
		$f.l=335;
		v7=v0.e12;
		v4=_4d(v2,v7);
		;
		$f.l=336;
		v9=(v4 != v4 || 0.0 != 0.0) ? 1 : (v4 > 0.0) - (v4 < 0.0);
		if(v9>0) {$b=42; break;}
		$f.l=338;
		v6=v0.m_v2;
		v6.a=1.0;
		$f.l=339;
		v0.m_count=1;
		$f.l=340;
		v6=v0.m_v1;
		v10=v0.m_v2;
		_a5(v6,v10);
		$f.l=341;
		return;
	case 42:
		$f.l=345;
		v8=v4 + v3;
		v5=1.0 / v8;
		$f.l=346;
		v10=v0.m_v1;
		v8=v4 * v5;
		v10.a=v8;
		$f.l=347;
		v10=v0.m_v2;
		v8=v3 * v5;
		v10.a=v8;
		$f.l=348;
		v0.m_count=2;
		$f.l=349;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:solve3
function _203(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=367;
		v0=a0;
		v18=v0.w1;
		v19=v0.m_v1;
		v20=v19.w;
		v20=_28(v18,v20);
		;
		$f.l=368;
		v20=v0.w2;
		v19=v0.m_v2;
		v18=v19.w;
		v20=_28(v20,v18);
		;
		$f.l=369;
		v20=v0.w3;
		v19=v0.m_v3;
		v18=v19.w;
		v20=_28(v20,v18);
		;
		$f.l=375;
		v20=v0.e12;
		v18=v0.w2;
		v20=_28(v20,v18);
		;
		v18=v0.w1;
		v20=_2e(v20,v18);
		;
		$f.l=376;
		v20=v0.w1;
		v18=v0.e12;
		v1=_4d(v20,v18);
		;
		$f.l=377;
		v20=v0.w2;
		v18=v0.e12;
		v2=_4d(v20,v18);
		;
		$f.l=378;
		v3=v2;
		$f.l=379;
		v4=-v1;
		$f.l=385;
		v20=v0.e13;
		v18=v0.w3;
		v20=_28(v20,v18);
		;
		v18=v0.w1;
		v20=_2e(v20,v18);
		;
		$f.l=386;
		v20=v0.w1;
		v18=v0.e13;
		v5=_4d(v20,v18);
		;
		$f.l=387;
		v20=v0.w3;
		v18=v0.e13;
		v6=_4d(v20,v18);
		;
		$f.l=388;
		v7=v6;
		$f.l=389;
		v8=-v5;
		$f.l=395;
		v20=v0.e23;
		v18=v0.w3;
		v20=_28(v20,v18);
		;
		v18=v0.w2;
		v20=_2e(v20,v18);
		;
		$f.l=396;
		v20=v0.w2;
		v18=v0.e23;
		v9=_4d(v20,v18);
		;
		$f.l=397;
		v20=v0.w3;
		v18=v0.e23;
		v10=_4d(v20,v18);
		;
		$f.l=398;
		v11=v10;
		$f.l=399;
		v12=-v9;
		$f.l=402;
		v20=v0.e12;
		v18=v0.e13;
		v13=_2f(v20,v18);
		;
		$f.l=404;
		v20=v0.w2;
		v18=v0.w3;
		v21=_2f(v20,v18);
		;
		v14=v13 * v21;
		$f.l=405;
		v20=v0.w3;
		v18=v0.w1;
		v21=_2f(v20,v18);
		;
		v15=v13 * v21;
		$f.l=406;
		v20=v0.w1;
		v18=v0.w2;
		v21=_2f(v20,v18);
		;
		v16=v13 * v21;
		$f.l=409;
		v22=(v4 != v4 || 0.0 != 0.0) ? 1 : (v4 > 0.0) - (v4 < 0.0);
		if(v22>0) {$b=101; break;}
		v22=(v8 != v8 || 0.0 != 0.0) ? 1 : (v8 > 0.0) - (v8 < 0.0);
		if(v22>0) {$b=101; break;}
		$f.l=410;
		v19=v0.m_v1;
		v19.a=1.0;
		$f.l=411;
		v0.m_count=1;
		$f.l=412;
		return;
	case 101:
		$f.l=416;
		v22=(v3 != v3 || 0.0 != 0.0) ? -1 : (v3 > 0.0) - (v3 < 0.0);
		if(v22<=0) {$b=123; break;}
		v22=(v4 != v4 || 0.0 != 0.0) ? -1 : (v4 > 0.0) - (v4 < 0.0);
		if(v22<=0) {$b=123; break;}
		v22=(v16 != v16 || 0.0 != 0.0) ? 1 : (v16 > 0.0) - (v16 < 0.0);
		if(v22>0) {$b=123; break;}
		$f.l=417;
		v21=v3 + v4;
		v17=1.0 / v21;
		$f.l=418;
		v19=v0.m_v1;
		v21=v3 * v17;
		v19.a=v21;
		$f.l=419;
		v19=v0.m_v2;
		v21=v4 * v17;
		v19.a=v21;
		$f.l=420;
		v0.m_count=2;
		$f.l=421;
		return;
	case 123:
		$f.l=425;
		v22=(v7 != v7 || 0.0 != 0.0) ? -1 : (v7 > 0.0) - (v7 < 0.0);
		if(v22<=0) {$b=149; break;}
		v22=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v22<=0) {$b=149; break;}
		v22=(v15 != v15 || 0.0 != 0.0) ? 1 : (v15 > 0.0) - (v15 < 0.0);
		if(v22>0) {$b=149; break;}
		$f.l=426;
		v21=v7 + v8;
		v17=1.0 / v21;
		$f.l=427;
		v19=v0.m_v1;
		v21=v7 * v17;
		v19.a=v21;
		$f.l=428;
		v19=v0.m_v3;
		v21=v8 * v17;
		v19.a=v21;
		$f.l=429;
		v0.m_count=2;
		$f.l=430;
		v19=v0.m_v2;
		v23=v0.m_v3;
		_a5(v19,v23);
		$f.l=431;
		return;
	case 149:
		$f.l=435;
		v22=(v3 != v3 || 0.0 != 0.0) ? 1 : (v3 > 0.0) - (v3 < 0.0);
		if(v22>0) {$b=165; break;}
		v22=(v12 != v12 || 0.0 != 0.0) ? 1 : (v12 > 0.0) - (v12 < 0.0);
		if(v22>0) {$b=165; break;}
		$f.l=436;
		v23=v0.m_v2;
		v23.a=1.0;
		$f.l=437;
		v0.m_count=1;
		$f.l=438;
		v23=v0.m_v1;
		v19=v0.m_v2;
		_a5(v23,v19);
		$f.l=439;
		return;
	case 165:
		$f.l=443;
		v22=(v7 != v7 || 0.0 != 0.0) ? 1 : (v7 > 0.0) - (v7 < 0.0);
		if(v22>0) {$b=181; break;}
		v22=(v11 != v11 || 0.0 != 0.0) ? 1 : (v11 > 0.0) - (v11 < 0.0);
		if(v22>0) {$b=181; break;}
		$f.l=444;
		v23=v0.m_v3;
		v23.a=1.0;
		$f.l=445;
		v0.m_count=1;
		$f.l=446;
		v23=v0.m_v1;
		v19=v0.m_v3;
		_a5(v23,v19);
		$f.l=447;
		return;
	case 181:
		$f.l=451;
		v22=(v11 != v11 || 0.0 != 0.0) ? -1 : (v11 > 0.0) - (v11 < 0.0);
		if(v22<=0) {$b=207; break;}
		v22=(v12 != v12 || 0.0 != 0.0) ? -1 : (v12 > 0.0) - (v12 < 0.0);
		if(v22<=0) {$b=207; break;}
		v22=(v14 != v14 || 0.0 != 0.0) ? 1 : (v14 > 0.0) - (v14 < 0.0);
		if(v22>0) {$b=207; break;}
		$f.l=452;
		v21=v11 + v12;
		v17=1.0 / v21;
		$f.l=453;
		v23=v0.m_v2;
		v21=v11 * v17;
		v23.a=v21;
		$f.l=454;
		v23=v0.m_v3;
		v21=v12 * v17;
		v23.a=v21;
		$f.l=455;
		v0.m_count=2;
		$f.l=456;
		v23=v0.m_v1;
		v19=v0.m_v3;
		_a5(v23,v19);
		$f.l=457;
		return;
	case 207:
		$f.l=461;
		v21=v14 + v15;
		v21=v21 + v16;
		v17=1.0 / v21;
		$f.l=462;
		v23=v0.m_v1;
		v21=v14 * v17;
		v23.a=v21;
		$f.l=463;
		v23=v0.m_v2;
		v21=v15 * v17;
		v23.a=v21;
		$f.l=464;
		v23=v0.m_v3;
		v21=v16 * v17;
		v23.a=v21;
		$f.l=465;
		v0.m_count=3;
		$f.l=466;
		return;
}
}
//org/jbox2d/collision/Distance$Simplex:<init>
function _204(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=a1;
v2=a2;
_1f9(v0,v1);
return;
}
//org/jbox2d/collision/Distance$Simplex:<clinit>
function _205(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=104;
		v0=vm.getClass(45);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g55=v1;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactPositionConstraint:<init>
function _1f(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=a0;
		_0(v0);
		$f.l=31;
		v2=newArray(38,2);
		v0.localPoints=v2;
		$f.l=32;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.localNormal=v3;
		$f.l=33;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.localPoint=v3;
		$f.l=37;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.localCenterA=v3;
		$f.l=38;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.localCenterB=v3;
		$f.l=45;
		v1=0;
	case 24:
		v2=v0.localPoints;
		v4=v2.len;
		if(v1>=v4) {$b=35; break;}
		$f.l=46;
		v2=v0.localPoints;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v2[v1]=v3;
		$f.l=45;
		v1=(v1 + 1)|0;
		{ $b=24; break; }
	case 35:
		$f.l=48;
		return;
}
}
//java/lang/reflect/Modifier:isStatic
function _b1(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=34;
		v0=a0;
		v1=(v0 & 8)|0;
		if(v1==0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/lang/StrictMath:round
function _206(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=121;
		v0=a0;
		v1=(v0 != v0 || v0 != v0) ? -1 : (v0 > v0) - (v0 < v0);
		if(v1==0) {$b=6; break;}
		$f.l=122;
		return 0;
	case 6:
		$f.l=124;
		v2=v0 + 0.5;
		v3=v2;
		v3=_207(v3);
		;
		v4=v3|0;
		return v4;
}
}
//org/jbox2d/dynamics/contacts/Position:<init>
function _197(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=28;
v0=a0;
_0(v0);
$f.l=29;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.c=v1;
return;
}
//java/lang/System:arraycopy
function _15(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=54;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v10=v0.klass;
		v10=v10.componentType;
		if(v10==null) {$b=12; break;}
		v10=v2.klass;
		v10=v10.componentType;
		if(v10!=null) {$b=13; break;}
	case 12:
		return;
	case 13:
		$f.l=55;
		v10=v0.klass;
		v10=v10.componentType;
		v5=_1ab(v10);
		;
		$f.l=56;
		v10=v2.klass;
		v10=v10.componentType;
		v6=_1ab(v10);
		;
		$f.l=57;
		if(v5==v6) {$b=24; break;}
		return;
	case 24:
		$f.l=58;
		v7=_12(v0);
		;
		$f.l=59;
		v11=(v1 + v4)|0;
		if(v11<=v7) {$b=32; break;}
		v12=new java/lang/IndexOutOfBoundsException;
		_167(v12);
		throw v12;
	case 32:
		$f.l=60;
		v8=_12(v2);
		;
		$f.l=61;
		v11=(v3 + v4)|0;
		if(v11<=v8) {$b=40; break;}
		v12=new java/lang/IndexOutOfBoundsException;
		_167(v12);
		throw v12;
	case 40:
		$f.l=62;
		if(v5==0) {$b=75; break;}
		$f.l=63;
		v10=v0.klass;
		v10=v10.componentType;
		v11=v10.size;
		v10=v2.klass;
		v10=v10.componentType;
		v13=v10.size;
		if(v11!=v13) {$b=85; break;}
		$f.l=64;
		v10=v0.klass;
		v10=v10.componentType;
		v13=v10.size;
		if(v13<0) {$b=59; break;}
		v10=v0.klass;
		v10=v10.componentType;
		v13=v10.size;
		if(v13<=8) {$b=62; break;}
	case 59:
		v14=new java/lang/RuntimeException;
		_1d6(v14,$str72);
		throw v14;
	case 62:
		$f.l=65;
		v10=v0.klass;
		v10=v10.componentType;
		v9=v10.size;
		$f.l=66;
		v15=_80(v2);
		;
		v13=(v3 * v9)|0;
		v16=_80(v0);
		;
		v11=(v1 * v9)|0;
		v17=(v4 * v9)|0;
		_17(v15,v13,v16,v11,v17);
		$f.l=67;
		{ $b=85; break; }
	case 75:
		$f.l=70;
		v18=newArray(0,0);
		v9=_14a($str73,v18);
		;
		$f.l=71;
		v16=_80(v2);
		;
		v17=(v3 * v9)|0;
		v15=_80(v0);
		;
		v13=(v1 * v9)|0;
		v11=(v4 * v9)|0;
		_17(v16,v17,v15,v13,v11);
	case 85:
		$f.l=73;
		return;
}
}
//java/lang/System:currentTimeMillis
function _13d(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=79;
v0=newArray(0,0);
_b4($str74,v0);
$f.l=81;
v0=newArray(0,0);
v1=_6c($str75,v0);
;
return v1;
}
//java/lang/System:nanoTime
function _12c(vm){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=85;
v0=0;
$f.l=86;
v1=newArray(0,2);
$f.l=98;
v2=_b3(v0);
;
v1[0]=v2;
v2=_b3(v0);
;
v1[1]=v2;
$f.l=86;
_b4($str76,v1);
$f.l=99;
return v0;
}
//java/lang/System:getProperty
function _208(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=124;
v0=a0;
return null;
}
//java/lang/System:<clinit>
function _209(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=32;
v0=new java/io/ConsolePrintStream;
_20a(v0);
$g56=v0;
$f.l=41;
v0=new java/io/ConsolePrintStream;
_20a(v0);
$g57=v0;
return;
}
//java/lang/Boolean:<init>
function _20b(vm,a0,a1){
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
function _c1(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Boolean:equals
function _20c(vm,a0,a1){
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
		v4=vm.cast(v1,14);
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
function _20d(vm,a0){
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
function _20e(vm,a0){
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
		return $str77;
	case 6:
		$f.l=77;
		return $str78;
}
}
//java/lang/Boolean:valueOf
function _bc(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=86;
		v0=a0;
		if(v0==0) {$b=5; break;}
		v1=$g58;
		{ $b=6; break; }
	case 5:
		v1=$g59;
	case 6:
		return v1;
}
}
//java/lang/Boolean:valueOf
function _20f(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=90;
v0=a0;
v1=_210(v0);
;
v2=_bc(v1);
;
return v2;
}
//java/lang/Boolean:parseBoolean
function _210(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=94;
		v0=a0;
		if(v0==null) {$b=7; break;}
		v1=_211(v0,$str77);
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
function _212(vm,a0,a1){
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
function _213(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=new java/lang/Boolean;
_20b(v0,0);
$g59=v0;
$f.l=35;
v0=new java/lang/Boolean;
_20b(v0,1);
$g58=v0;
$f.l=37;
v1=vm.getClass(53);
v1=v1.componentType;
$g27=v1;
return;
}
//org/jbox2d/collision/Collision$ReferenceFace:<init>
function _214(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1073;
v0=a0;
_0(v0);
$f.l=1075;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.v1=v1;
$f.l=1076;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.v2=v1;
$f.l=1077;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.normal=v1;
$f.l=1079;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.sideNormal1=v1;
$f.l=1082;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.sideNormal2=v1;
return;
}
//org/jbox2d/collision/WorldManifold:<init>
function _1d(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=48;
		v0=a0;
		_0(v0);
		$f.l=56;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.pool3=v1;
		$f.l=57;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.pool4=v1;
		$f.l=49;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v0.normal=v1;
		$f.l=50;
		v3=newArray(38,2);
		v0.points=v3;
		$f.l=51;
		v2=0;
	case 20:
		if(v2>=2) {$b=29; break;}
		$f.l=52;
		v3=v0.points;
		v1=new org/jbox2d/common/Vec2;
		_1a(v1);
		v3[v2]=v1;
		$f.l=51;
		v2=(v2 + 1)|0;
		{ $b=20; break; }
	case 29:
		$f.l=54;
		return;
}
}
//org/jbox2d/collision/WorldManifold:initialize
function _2d(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=61;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v14=v1.pointCount;
		if(v14!=0) {$b=11; break;}
		$f.l=62;
		return;
	case 11:
		$f.l=65;
		v15=$g60;
		v16=v1.type;
		v14=_4f(v16);
		;
		v14=v15[v14];
		switch(v14){
		case 1: $b=17;break;
		case 2: $b=94;break;
		case 3: $b=173;break;
		}
	case 17:
		$f.l=82;
		v6=v0.pool3;
		$f.l=83;
		v7=v0.pool4;
		$f.l=85;
		v17=v0.normal;
		v17.x=1.0;
		$f.l=86;
		v17=v0.normal;
		v17.y=0.0;
		$f.l=95;
		v17=v1.localPoint;
		_58(v2,v17,v6);
		$f.l=96;
		v18=v1.points;
		v19=v18[0];
		v17=v19.localPoint;
		_58(v4,v17,v7);
		$f.l=98;
		v20=_215(v6,v7);
		;
		v21=(v20 != v20 || 1.4210855E-14 != 1.4210855E-14) ? -1 : (v20 > 1.4210855E-14) - (v20 < 1.4210855E-14);
		if(v21<=0) {$b=54; break;}
		$f.l=99;
		v17=v0.normal;
		v20=v7.x;
		v22=v6.x;
		v22=v20 - v22;
		v17.x=v22;
		$f.l=100;
		v17=v0.normal;
		v22=v7.y;
		v20=v6.y;
		v22=v22 - v20;
		v17.y=v22;
		$f.l=101;
		v17=v0.normal;
		v22=_53(v17);
		;
	case 54:
		$f.l=104;
		v17=v0.normal;
		v22=v17.x;
		v22=v22 * v3;
		v20=v6.x;
		v8=v22 + v20;
		$f.l=105;
		v17=v0.normal;
		v22=v17.y;
		v22=v22 * v3;
		v20=v6.y;
		v9=v22 + v20;
		$f.l=107;
		v17=v0.normal;
		v22=v17.x;
		v22=-v22;
		v22=v22 * v5;
		v20=v7.x;
		v10=v22 + v20;
		$f.l=108;
		v17=v0.normal;
		v22=v17.y;
		v22=-v22;
		v22=v22 * v5;
		v20=v7.y;
		v11=v22 + v20;
		$f.l=110;
		v23=v0.points;
		v17=v23[0];
		v22=v8 + v10;
		v22=v22 * 0.5;
		v17.x=v22;
		$f.l=111;
		v23=v0.points;
		v17=v23[0];
		v22=v9 + v11;
		v22=v22 * 0.5;
		v17.y=v22;
		$f.l=113;
		{ $b=262; break; }
	case 94:
		$f.l=115;
		v6=v0.pool3;
		$f.l=117;
		v24=v2.q;
		v17=v1.localNormal;
		v25=v0.normal;
		_39(v24,v17,v25);
		$f.l=118;
		v25=v1.localPoint;
		_58(v2,v25,v6);
		$f.l=120;
		v7=v0.pool4;
		$f.l=122;
		v26=0;
	case 108:
		v14=v1.pointCount;
		if(v26>=v14) {$b=171; break;}
		$f.l=128;
		v18=v1.points;
		v19=v18[v26];
		v25=v19.localPoint;
		_58(v4,v25,v7);
		$f.l=136;
		v22=v7.x;
		v20=v6.x;
		v22=v22 - v20;
		v25=v0.normal;
		v20=v25.x;
		v22=v22 * v20;
		v20=v7.y;
		v27=v6.y;
		v27=v20 - v27;
		v25=v0.normal;
		v20=v25.y;
		v27=v27 * v20;
		v27=v22 + v27;
		v9=v3 - v27;
		$f.l=141;
		v25=v0.normal;
		v27=v25.x;
		v27=v27 * v9;
		v22=v7.x;
		v10=v27 + v22;
		$f.l=142;
		v25=v0.normal;
		v27=v25.y;
		v27=v27 * v9;
		v22=v7.y;
		v11=v27 + v22;
		$f.l=144;
		v25=v0.normal;
		v27=v25.x;
		v27=-v27;
		v27=v27 * v5;
		v22=v7.x;
		v12=v27 + v22;
		$f.l=145;
		v25=v0.normal;
		v27=v25.y;
		v27=-v27;
		v27=v27 * v5;
		v22=v7.y;
		v13=v27 + v22;
		$f.l=147;
		v23=v0.points;
		v25=v23[v26];
		v27=v10 + v12;
		v27=v27 * 0.5;
		v25.x=v27;
		$f.l=148;
		v23=v0.points;
		v25=v23[v26];
		v27=v11 + v13;
		v27=v27 * 0.5;
		v25.y=v27;
		$f.l=122;
		v26=(v26 + 1)|0;
		{ $b=108; break; }
	case 171:
		$f.l=151;
		{ $b=262; break; }
	case 173:
		$f.l=153;
		v6=v0.pool3;
		$f.l=154;
		v24=v4.q;
		v25=v1.localNormal;
		v17=v0.normal;
		_39(v24,v25,v17);
		$f.l=155;
		v25=v1.localPoint;
		_58(v4,v25,v6);
		$f.l=164;
		v7=v0.pool4;
		$f.l=166;
		v26=0;
	case 187:
		v14=v1.pointCount;
		if(v26>=v14) {$b=250; break;}
		$f.l=173;
		v18=v1.points;
		v19=v18[v26];
		v25=v19.localPoint;
		_58(v2,v25,v7);
		$f.l=188;
		v27=v7.x;
		v22=v6.x;
		v27=v27 - v22;
		v25=v0.normal;
		v22=v25.x;
		v27=v27 * v22;
		v22=v7.y;
		v20=v6.y;
		v22=v22 - v20;
		v25=v0.normal;
		v20=v25.y;
		v22=v22 * v20;
		v27=v27 + v22;
		v9=v5 - v27;
		$f.l=193;
		v25=v0.normal;
		v27=v25.x;
		v27=v27 * v9;
		v22=v7.x;
		v10=v27 + v22;
		$f.l=194;
		v25=v0.normal;
		v27=v25.y;
		v27=v27 * v9;
		v22=v7.y;
		v11=v27 + v22;
		$f.l=196;
		v25=v0.normal;
		v27=v25.x;
		v27=-v27;
		v27=v27 * v3;
		v22=v7.x;
		v12=v27 + v22;
		$f.l=197;
		v25=v0.normal;
		v27=v25.y;
		v27=-v27;
		v27=v27 * v3;
		v22=v7.y;
		v13=v27 + v22;
		$f.l=199;
		v23=v0.points;
		v25=v23[v26];
		v27=v12 + v10;
		v27=v27 * 0.5;
		v25.x=v27;
		$f.l=200;
		v23=v0.points;
		v25=v23[v26];
		v27=v13 + v11;
		v27=v27 * 0.5;
		v25.y=v27;
		$f.l=166;
		v26=(v26 + 1)|0;
		{ $b=187; break; }
	case 250:
		$f.l=203;
		v25=v0.normal;
		v17=v0.normal;
		v27=v17.x;
		v27=-v27;
		v25.x=v27;
		$f.l=204;
		v25=v0.normal;
		v17=v0.normal;
		v27=v17.y;
		v27=-v27;
		v25.y=v27;
	case 262:
		$f.l=207;
		return;
}
}
//org/jbox2d/dynamics/contacts/PositionSolverManifold:<init>
function _1e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=993;
v0=a0;
_0(v0);
$f.l=995;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.normal=v1;
$f.l=996;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.point=v1;
return;
}
//org/jbox2d/dynamics/contacts/PositionSolverManifold:initialize
function _3b(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1000;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=$g61;
		if(v5!=0) {$b=13; break;}
		v17=v1.pointCount;
		if(v17>0) {$b=13; break;}
		v18=new java/lang/AssertionError;
		_26(v18);
		throw v18;
	case 13:
		$f.l=1002;
		v6=v2.q;
		$f.l=1003;
		v7=v3.q;
		$f.l=1004;
		v19=v1.localPoints;
		v8=v19[v4];
		$f.l=1005;
		v20=$g62;
		v21=v1.type;
		v17=_4f(v21);
		;
		v17=v20[v17];
		switch(v17){
		case 1: $b=26;break;
		case 2: $b=115;break;
		case 3: $b=208;break;
		}
	case 26:
		$f.l=1015;
		v9=v1.localPoint;
		$f.l=1016;
		v19=v1.localPoints;
		v10=v19[0];
		$f.l=1017;
		v22=v6.c;
		v23=v9.x;
		v23=v22 * v23;
		v22=v6.s;
		v24=v9.y;
		v24=v22 * v24;
		v24=v23 - v24;
		v25=v2.p;
		v23=v25.x;
		v11=v24 + v23;
		$f.l=1018;
		v24=v6.s;
		v23=v9.x;
		v24=v24 * v23;
		v23=v6.c;
		v22=v9.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25=v2.p;
		v23=v25.y;
		v12=v24 + v23;
		$f.l=1019;
		v24=v7.c;
		v23=v10.x;
		v24=v24 * v23;
		v23=v7.s;
		v22=v10.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25=v3.p;
		v23=v25.x;
		v13=v24 + v23;
		$f.l=1020;
		v24=v7.s;
		v23=v10.x;
		v24=v24 * v23;
		v23=v7.c;
		v22=v10.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25=v3.p;
		v23=v25.y;
		v14=v24 + v23;
		$f.l=1021;
		v25=v0.normal;
		v24=v13 - v11;
		v25.x=v24;
		$f.l=1022;
		v25=v0.normal;
		v24=v14 - v12;
		v25.y=v24;
		$f.l=1023;
		v25=v0.normal;
		v24=_53(v25);
		;
		$f.l=1025;
		v25=v0.point;
		v24=v11 + v13;
		v24=v24 * 0.5;
		v25.x=v24;
		$f.l=1026;
		v25=v0.point;
		v24=v12 + v14;
		v24=v24 * 0.5;
		v25.y=v24;
		$f.l=1027;
		v15=v13 - v11;
		$f.l=1028;
		v16=v14 - v12;
		$f.l=1029;
		v25=v0.normal;
		v24=v25.x;
		v24=v15 * v24;
		v25=v0.normal;
		v23=v25.y;
		v23=v16 * v23;
		v24=v24 + v23;
		v23=v1.radiusA;
		v24=v24 - v23;
		v23=v1.radiusB;
		v24=v24 - v23;
		v0.separation=v24;
		$f.l=1030;
		{ $b=309; break; }
	case 115:
		$f.l=1041;
		v9=v1.localNormal;
		$f.l=1042;
		v10=v1.localPoint;
		$f.l=1043;
		v25=v0.normal;
		v24=v6.c;
		v23=v9.x;
		v24=v24 * v23;
		v23=v6.s;
		v22=v9.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25.x=v24;
		$f.l=1044;
		v25=v0.normal;
		v24=v6.s;
		v23=v9.x;
		v24=v24 * v23;
		v23=v6.c;
		v22=v9.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25.y=v24;
		$f.l=1045;
		v24=v6.c;
		v23=v10.x;
		v24=v24 * v23;
		v23=v6.s;
		v22=v10.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25=v2.p;
		v23=v25.x;
		v11=v24 + v23;
		$f.l=1046;
		v24=v6.s;
		v23=v10.x;
		v24=v24 * v23;
		v23=v6.c;
		v22=v10.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25=v2.p;
		v23=v25.y;
		v12=v24 + v23;
		$f.l=1048;
		v24=v7.c;
		v23=v8.x;
		v24=v24 * v23;
		v23=v7.s;
		v22=v8.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25=v3.p;
		v23=v25.x;
		v13=v24 + v23;
		$f.l=1049;
		v24=v7.s;
		v23=v8.x;
		v24=v24 * v23;
		v23=v7.c;
		v22=v8.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25=v3.p;
		v23=v25.y;
		v14=v24 + v23;
		$f.l=1050;
		v15=v13 - v11;
		$f.l=1051;
		v16=v14 - v12;
		$f.l=1052;
		v25=v0.normal;
		v24=v25.x;
		v24=v15 * v24;
		v25=v0.normal;
		v23=v25.y;
		v23=v16 * v23;
		v24=v24 + v23;
		v23=v1.radiusA;
		v24=v24 - v23;
		v23=v1.radiusB;
		v24=v24 - v23;
		v0.separation=v24;
		$f.l=1053;
		v25=v0.point;
		v25.x=v13;
		$f.l=1054;
		v25=v0.point;
		v25.y=v14;
		$f.l=1055;
		{ $b=309; break; }
	case 208:
		$f.l=1069;
		v9=v1.localNormal;
		$f.l=1070;
		v10=v1.localPoint;
		$f.l=1071;
		v25=v0.normal;
		v24=v7.c;
		v23=v9.x;
		v24=v24 * v23;
		v23=v7.s;
		v22=v9.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25.x=v24;
		$f.l=1072;
		v25=v0.normal;
		v24=v7.s;
		v23=v9.x;
		v24=v24 * v23;
		v23=v7.c;
		v22=v9.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25.y=v24;
		$f.l=1073;
		v24=v7.c;
		v23=v10.x;
		v24=v24 * v23;
		v23=v7.s;
		v22=v10.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25=v3.p;
		v23=v25.x;
		v11=v24 + v23;
		$f.l=1074;
		v24=v7.s;
		v23=v10.x;
		v24=v24 * v23;
		v23=v7.c;
		v22=v10.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25=v3.p;
		v23=v25.y;
		v12=v24 + v23;
		$f.l=1076;
		v24=v6.c;
		v23=v8.x;
		v24=v24 * v23;
		v23=v6.s;
		v22=v8.y;
		v23=v23 * v22;
		v24=v24 - v23;
		v25=v2.p;
		v23=v25.x;
		v13=v24 + v23;
		$f.l=1077;
		v24=v6.s;
		v23=v8.x;
		v24=v24 * v23;
		v23=v6.c;
		v22=v8.y;
		v23=v23 * v22;
		v24=v24 + v23;
		v25=v2.p;
		v23=v25.y;
		v14=v24 + v23;
		$f.l=1078;
		v15=v13 - v11;
		$f.l=1079;
		v16=v14 - v12;
		$f.l=1080;
		v25=v0.normal;
		v24=v25.x;
		v24=v15 * v24;
		v25=v0.normal;
		v23=v25.y;
		v23=v16 * v23;
		v24=v24 + v23;
		v23=v1.radiusA;
		v24=v24 - v23;
		v23=v1.radiusB;
		v24=v24 - v23;
		v0.separation=v24;
		$f.l=1081;
		v25=v0.point;
		v25.x=v13;
		$f.l=1082;
		v25=v0.point;
		v25.y=v14;
		$f.l=1083;
		v25=v0.normal;
		v24=v25.x;
		v24=v24 * -1.0;
		v25.x=v24;
		$f.l=1084;
		v25=v0.normal;
		v24=v25.y;
		v24=v24 * -1.0;
		v25.y=v24;
	case 309:
		$f.l=1088;
		return;
}
}
//org/jbox2d/dynamics/contacts/PositionSolverManifold:<clinit>
function _216(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=993;
		v0=vm.getClass(64);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g61=v1;
		return;
}
}
//org/jbox2d/pooling/arrays/IntArray:get
function _217(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=40;
		v0=a0;
		v1=a1;
		v2=$g63;
		if(v2!=0) {$b=9; break;}
		if(v1>0) {$b=9; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 9:
		$f.l=42;
		v4=v0.map;
		v5=_a1(v1);
		;
		v2=v4.$c.$vt[44](v4,v5);
		;
		if(v2!=0) {$b=19; break;}
		$f.l=43;
		v4=v0.map;
		v5=_a1(v1);
		;
		v6=_218(v0,v1);
		;
		v7=v4.$c.$vt[42](v4,v5,v6);
		;
	case 19:
		$f.l=46;
		v2=$g63;
		if(v2!=0) {$b=31; break;}
		v4=v0.map;
		v5=_a1(v1);
		;
		v7=v4.$c.$vt[43](v4,v5);
		;
		v6=vm.cast(v7,6);
		v8=v6.len;
		if(v8==v1) {$b=31; break;}
		v3=new java/lang/AssertionError;
		_9c(v3,$str79);
		throw v3;
	case 31:
		$f.l=47;
		v4=v0.map;
		v5=_a1(v1);
		;
		v7=v4.$c.$vt[43](v4,v5);
		;
		v6=vm.cast(v7,6);
		return v6;
}
}
//org/jbox2d/pooling/arrays/IntArray:getInitializedArray
function _218(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
v1=a1;
v2=newArray(6,v1);
return v2;
}
//org/jbox2d/pooling/arrays/IntArray:<clinit>
function _219(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=35;
		v0=vm.getClass(65);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g63=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/Joint$1:<clinit>
function _21a(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=43;
		$f.trap=0;
		v0=_21b();
		;
		v3=v0.len;
		v4=newArray(6,v3);
		$g34=v4;
		$f.trap=1;
		v4=$g34;
		v1=$g64;
		v3=_4f(v1);
		;
		v4[v3]=1;
		$f.trap=0;
		{ $b=17; break; }
	case 14:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 17:
		$f.trap=2;
		v4=$g34;
		v1=$g65;
		v3=_4f(v1);
		;
		v4[v3]=2;
		$f.trap=0;
		{ $b=27; break; }
	case 24:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 27:
		$f.trap=3;
		v4=$g34;
		v1=$g66;
		v3=_4f(v1);
		;
		v4[v3]=3;
		$f.trap=0;
		{ $b=37; break; }
	case 34:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 37:
		$f.trap=4;
		v4=$g34;
		v1=$g67;
		v3=_4f(v1);
		;
		v4[v3]=4;
		$f.trap=0;
		{ $b=47; break; }
	case 44:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 47:
		$f.trap=5;
		v4=$g34;
		v1=$g68;
		v3=_4f(v1);
		;
		v4[v3]=5;
		$f.trap=0;
		{ $b=57; break; }
	case 54:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 57:
		$f.trap=6;
		v4=$g34;
		v1=$g69;
		v3=_4f(v1);
		;
		v4[v3]=6;
		$f.trap=0;
		{ $b=67; break; }
	case 64:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 67:
		$f.trap=7;
		v4=$g34;
		v1=$g70;
		v3=_4f(v1);
		;
		v4[v3]=7;
		$f.trap=0;
		{ $b=77; break; }
	case 74:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 77:
		$f.trap=8;
		v4=$g34;
		v1=$g71;
		v3=_4f(v1);
		;
		v4[v3]=8;
		$f.trap=0;
		{ $b=87; break; }
	case 84:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 87:
		$f.trap=9;
		v4=$g34;
		v1=$g72;
		v3=_4f(v1);
		;
		v4[v3]=9;
		$f.trap=0;
		{ $b=97; break; }
	case 94:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 97:
		$f.trap=10;
		v4=$g34;
		v1=$g73;
		v3=_4f(v1);
		;
		v4[v3]=10;
		$f.trap=0;
		{ $b=107; break; }
	case 104:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 107:
		$f.trap=11;
		v4=$g34;
		v1=$g74;
		v3=_4f(v1);
		;
		v4[v3]=11;
		$f.trap=0;
		{ $b=117; break; }
	case 114:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 117:
		$f.trap=12;
		v4=$g34;
		v1=$g75;
		v3=_4f(v1);
		;
		v4[v3]=12;
		$f.trap=0;
		{ $b=127; break; }
	case 124:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 127:
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,7)) {$b=14; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,7)) {$b=24; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,7)) {$b=34; continue;}
	}
	if($f.trap==4){
		if(vm.is(vm.exception,7)) {$b=44; continue;}
	}
	if($f.trap==5){
		if(vm.is(vm.exception,7)) {$b=54; continue;}
	}
	if($f.trap==6){
		if(vm.is(vm.exception,7)) {$b=64; continue;}
	}
	if($f.trap==7){
		if(vm.is(vm.exception,7)) {$b=74; continue;}
	}
	if($f.trap==8){
		if(vm.is(vm.exception,7)) {$b=84; continue;}
	}
	if($f.trap==9){
		if(vm.is(vm.exception,7)) {$b=94; continue;}
	}
	if($f.trap==10){
		if(vm.is(vm.exception,7)) {$b=104; continue;}
	}
	if($f.trap==11){
		if(vm.is(vm.exception,7)) {$b=114; continue;}
	}
	if($f.trap==12){
		if(vm.is(vm.exception,7)) {$b=124; continue;}
	}
throw error;
}
}
//org/jbox2d/common/Color3f:<init>
function _f0(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=a0;
_0(v0);
$f.l=69;
v1=0.0;
v0.z=v1;
v1=v1;
v0.y=v1;
v0.x=v1;
$f.l=70;
return;
}
//org/jbox2d/common/Color3f:<init>
function _f7(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=71;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
_0(v0);
$f.l=72;
v0.x=v1;
$f.l=73;
v0.y=v2;
$f.l=74;
v0.z=v3;
$f.l=75;
return;
}
//org/jbox2d/common/Color3f:<clinit>
function _21c(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=57;
v0=new org/jbox2d/common/Color3f;
_f7(v0,1.0,1.0,1.0);
$g76=v0;
$f.l=58;
v0=new org/jbox2d/common/Color3f;
_f7(v0,0.0,0.0,0.0);
$g77=v0;
$f.l=59;
v0=new org/jbox2d/common/Color3f;
_f7(v0,0.0,0.0,1.0);
$g78=v0;
$f.l=60;
v0=new org/jbox2d/common/Color3f;
_f7(v0,0.0,1.0,0.0);
$g79=v0;
$f.l=61;
v0=new org/jbox2d/common/Color3f;
_f7(v0,1.0,0.0,0.0);
$g80=v0;
return;
}
//org/jbox2d/collision/TimeOfImpact$TOIOutput:<init>
function _f6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/RayCastOutput:<init>
function _21d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
_0(v0);
$f.l=38;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.normal=v1;
$f.l=39;
v0.fraction=0.0;
$f.l=40;
return;
}
//org/jbox2d/collision/Collision$TempPolygon:<init>
function _21e(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1062;
		v0=a0;
		_0(v0);
		$f.l=1058;
		v3=newArray(38,8);
		v0.vertices=v3;
		$f.l=1059;
		v3=newArray(38,8);
		v0.normals=v3;
		$f.l=1063;
		v1=0;
	case 11:
		v3=v0.vertices;
		v4=v3.len;
		if(v1>=v4) {$b=27; break;}
		$f.l=1064;
		v3=v0.vertices;
		v2=new org/jbox2d/common/Vec2;
		_1a(v2);
		v3[v1]=v2;
		$f.l=1065;
		v3=v0.normals;
		v2=new org/jbox2d/common/Vec2;
		_1a(v2);
		v3[v1]=v2;
		$f.l=1063;
		v1=(v1 + 1)|0;
		{ $b=11; break; }
	case 27:
		$f.l=1067;
		return;
}
}
//cava/c/VoidPtrPtr:get
function _1a8(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=a1;
v2=newArray(0,2);
v2[0]=v0;
v3=_a1(v1);
;
v2[1]=v3;
v4=_16($str80,v2);
;
return v4;
}
//org/jbox2d/dynamics/contacts/PositionSolverManifold$1:<clinit>
function _21f(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=1005;
		$f.trap=0;
		v0=_220();
		;
		v3=v0.len;
		v4=newArray(6,v3);
		$g62=v4;
		$f.trap=1;
		v4=$g62;
		v1=$g3;
		v3=_4f(v1);
		;
		v4[v3]=1;
		$f.trap=0;
		{ $b=17; break; }
	case 14:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 17:
		$f.trap=2;
		v4=$g62;
		v1=$g4;
		v3=_4f(v1);
		;
		v4[v3]=2;
		$f.trap=0;
		{ $b=27; break; }
	case 24:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 27:
		$f.trap=3;
		v4=$g62;
		v1=$g6;
		v3=_4f(v1);
		;
		v4[v3]=3;
		$f.trap=0;
		{ $b=37; break; }
	case 34:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 37:
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,7)) {$b=14; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,7)) {$b=24; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,7)) {$b=34; continue;}
	}
throw error;
}
}
//org/jbox2d/dynamics/joints/JointDef:<init>
function _221(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
_0(v0);
$f.l=35;
v1=$g75;
v0.type=v1;
$f.l=36;
v0.userData=null;
$f.l=37;
v0.bodyA=null;
$f.l=38;
v0.bodyB=null;
$f.l=39;
v0.collideConnected=0;
$f.l=40;
return;
}
//org/jbox2d/dynamics/TimeStep:<init>
function _ee(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/Collision$EdgeResults:<init>
function _222(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=988;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/Collision$EdgeResults:<init>
function _44(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=988;
v0=a0;
v1=a1;
_222(v0);
return;
}
//org/jbox2d/dynamics/FixtureProxy:<init>
function _94(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=33;
v0=a0;
_0(v0);
$f.l=34;
v1=new org/jbox2d/collision/AABB;
_8c(v1);
v0.aabb=v1;
return;
}
//java/lang/Void:<clinit>
function _223(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=newArray(0,0);
v1=_224($str81,v0);
;
$g51=v1;
return;
}
//org/jbox2d/dynamics/FixtureDef:<init>
function _140(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=73;
v0=a0;
_0(v0);
$f.l=40;
v0.shape=null;
$f.l=74;
v0.shape=null;
$f.l=75;
v0.userData=null;
$f.l=76;
v0.friction=0.2;
$f.l=77;
v0.restitution=0.0;
$f.l=78;
v0.density=0.0;
$f.l=79;
v1=new org/jbox2d/dynamics/Filter;
_8d(v1);
v0.filter=v1;
$f.l=80;
v0.isSensor=0;
$f.l=81;
return;
}
//org/jbox2d/collision/TimeOfImpact:<init>
function _225(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
$f.l=96;
v0=a0;
v1=a1;
_0(v0);
$f.l=83;
v2=new org/jbox2d/collision/Distance$SimplexCache;
_42(v2);
v0.cache=v2;
$f.l=84;
v3=new org/jbox2d/collision/DistanceInput;
_41(v3);
v0.distanceInput=v3;
$f.l=85;
v4=new org/jbox2d/common/Transform;
_1c(v4);
v0.xfA=v4;
$f.l=86;
v4=new org/jbox2d/common/Transform;
_1c(v4);
v0.xfB=v4;
$f.l=87;
v5=new org/jbox2d/collision/DistanceOutput;
_43(v5);
v0.distanceOutput=v5;
$f.l=88;
v6=new org/jbox2d/collision/SeparationFunction;
_226(v6);
v0.fcn=v6;
$f.l=89;
v7=newArray(6,2);
v0.indexes=v7;
$f.l=90;
v8=new org/jbox2d/common/Sweep;
_8a(v8);
v0.sweepA=v8;
$f.l=91;
v8=new org/jbox2d/common/Sweep;
_8a(v8);
v0.sweepB=v8;
$f.l=97;
v0.pool=v1;
$f.l=98;
return;
}
//org/jbox2d/collision/TimeOfImpact:timeOfImpact
function _121(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=113;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g81;
		v3=(v3 + 1)|0;
		$g81=v3;
		$f.l=115;
		v22=$g82;
		v1.state=v22;
		$f.l=116;
		v23=v2.tMax;
		v1.t=v23;
		$f.l=118;
		v4=v2.proxyA;
		$f.l=119;
		v5=v2.proxyB;
		$f.l=121;
		v24=v0.sweepA;
		v25=v2.sweepA;
		v25=_120(v24,v25);
		;
		$f.l=122;
		v25=v0.sweepB;
		v24=v2.sweepB;
		v25=_120(v25,v24);
		;
		$f.l=126;
		v25=v0.sweepA;
		_227(v25);
		$f.l=127;
		v25=v0.sweepB;
		_227(v25);
		$f.l=129;
		v6=v2.tMax;
		$f.l=131;
		v23=v4.m_radius;
		v26=v5.m_radius;
		v7=v23 + v26;
		$f.l=133;
		v26=v7 - 0.015;
		v8=_228(0.005,v26);
		;
		$f.l=134;
		v9=0.00125;
		$f.l=136;
		v27=$g83;
		if(v27!=0) {$b=50; break;}
		v28=(v8 != v8 || v9 != v9) ? -1 : (v8 > v9) - (v8 < v9);
		if(v28>0) {$b=50; break;}
		v29=new java/lang/AssertionError;
		_26(v29);
		throw v29;
	case 50:
		$f.l=138;
		v10=0.0;
		$f.l=139;
		v11=0;
		$f.l=141;
		v30=v0.cache;
		v30.count=0;
		$f.l=142;
		v31=v0.distanceInput;
		v32=v2.proxyA;
		v31.proxyA=v32;
		$f.l=143;
		v31=v0.distanceInput;
		v32=v2.proxyB;
		v31.proxyB=v32;
		$f.l=144;
		v31=v0.distanceInput;
		v31.useRadii=0;
	case 68:
		$f.l=149;
		v25=v0.sweepA;
		v33=v0.xfA;
		_229(v25,v33,v10);
		$f.l=150;
		v25=v0.sweepB;
		v33=v0.xfB;
		_229(v25,v33,v10);
		$f.l=155;
		v31=v0.distanceInput;
		v33=v0.xfA;
		v31.transformA=v33;
		$f.l=156;
		v31=v0.distanceInput;
		v33=v0.xfB;
		v31.transformB=v33;
		$f.l=157;
		v34=v0.pool;
		v35=v34.$c.$it[33](v34);
		;
		v36=v0.distanceOutput;
		v30=v0.cache;
		v31=v0.distanceInput;
		_4b(v35,v36,v30,v31);
		$f.l=165;
		v36=v0.distanceOutput;
		v26=v36.distance;
		v28=(v26 != v26 || 0.0 != 0.0) ? 1 : (v26 > 0.0) - (v26 < 0.0);
		if(v28>0) {$b=103; break;}
		$f.l=168;
		v22=$g84;
		v1.state=v22;
		$f.l=169;
		v1.t=0.0;
		$f.l=170;
		{ $b=278; break; }
	case 103:
		$f.l=173;
		v36=v0.distanceOutput;
		v26=v36.distance;
		v23=v8 + v9;
		v28=(v26 != v26 || v23 != v23) ? 1 : (v26 > v23) - (v26 < v23);
		if(v28>=0) {$b=116; break;}
		$f.l=176;
		v22=$g39;
		v1.state=v22;
		$f.l=177;
		v1.t=v10;
		$f.l=178;
		{ $b=278; break; }
	case 116:
		$f.l=182;
		v37=v0.fcn;
		v30=v0.cache;
		v25=v0.sweepA;
		v24=v0.sweepB;
		v26=_22a(v37,v30,v4,v25,v5,v24,v10);
		;
		$f.l=187;
		v12=0;
		$f.l=188;
		v13=v6;
		$f.l=189;
		v14=0;
	case 128:
		$f.l=193;
		v37=v0.fcn;
		v38=v0.indexes;
		v15=_22b(v37,v38,v13);
		;
		$f.l=196;
		v26=v8 + v9;
		v28=(v15 != v15 || v26 != v26) ? -1 : (v15 > v26) - (v15 < v26);
		if(v28<=0) {$b=145; break;}
		$f.l=199;
		v22=$g85;
		v1.state=v22;
		$f.l=200;
		v1.t=v6;
		$f.l=201;
		v12=1;
		$f.l=202;
		{ $b=257; break; }
	case 145:
		$f.l=206;
		v26=v8 - v9;
		v28=(v15 != v15 || v26 != v26) ? -1 : (v15 > v26) - (v15 < v26);
		if(v28<=0) {$b=153; break;}
		$f.l=209;
		v10=v13;
		$f.l=210;
		{ $b=257; break; }
	case 153:
		$f.l=214;
		v37=v0.fcn;
		v38=v0.indexes;
		v3=v38[0];
		v38=v0.indexes;
		v39=v38[1];
		v16=_22c(v37,v3,v39,v10);
		;
		$f.l=219;
		v26=v8 - v9;
		v28=(v16 != v16 || v26 != v26) ? 1 : (v16 > v26) - (v16 < v26);
		if(v28>=0) {$b=173; break;}
		$f.l=221;
		v22=$g86;
		v1.state=v22;
		$f.l=222;
		v1.t=v10;
		$f.l=223;
		v12=1;
		$f.l=224;
		{ $b=257; break; }
	case 173:
		$f.l=228;
		v26=v8 + v9;
		v28=(v16 != v16 || v26 != v26) ? 1 : (v16 > v26) - (v16 < v26);
		if(v28>0) {$b=186; break;}
		$f.l=231;
		v22=$g39;
		v1.state=v22;
		$f.l=232;
		v1.t=v10;
		$f.l=233;
		v12=1;
		$f.l=234;
		{ $b=257; break; }
	case 186:
		$f.l=238;
		v17=0;
		$f.l=239;
		v18=v10;
		v19=v13;
	case 191:
		$f.l=243;
		v39=(v17 & 1)|0;
		if(v39!=1) {$b=202; break;}
		$f.l=245;
		v26=v8 - v16;
		v23=v19 - v18;
		v26=v26 * v23;
		v23=v15 - v16;
		v26=v26 / v23;
		v20=v18 + v26;
		{ $b=205; break; }
	case 202:
		$f.l=248;
		v26=v18 + v19;
		v20=0.5 * v26;
	case 205:
		$f.l=251;
		v37=v0.fcn;
		v38=v0.indexes;
		v39=v38[0];
		v38=v0.indexes;
		v3=v38[1];
		v21=_22c(v37,v39,v3,v20);
		;
		$f.l=253;
		v26=v21 - v8;
		v26=_199(v26);
		;
		v28=(v26 != v26 || v9 != v9) ? 1 : (v26 > v9) - (v26 < v9);
		if(v28>=0) {$b=221; break;}
		$f.l=255;
		v13=v20;
		$f.l=256;
		{ $b=245; break; }
	case 221:
		$f.l=260;
		v28=(v21 != v21 || v8 != v8) ? -1 : (v21 > v8) - (v21 < v8);
		if(v28<=0) {$b=229; break;}
		$f.l=261;
		v18=v20;
		$f.l=262;
		v16=v21;
		{ $b=233; break; }
	case 229:
		$f.l=264;
		v19=v20;
		$f.l=265;
		v15=v21;
	case 233:
		$f.l=268;
		v17=(v17 + 1)|0;
		$f.l=269;
		v39=$g87;
		v39=(v39 + 1)|0;
		$g87=v39;
		$f.l=272;
		if(v17!=50) {$b=243; break;}
		$f.l=273;
		{ $b=245; break; }
	case 243:
		$f.l=275;
		{ $b=191; break; }
	case 245:
		$f.l=277;
		v39=$g88;
		v39=_22(v39,v17);
		;
		$g88=v39;
		$f.l=279;
		v14=(v14 + 1)|0;
		$f.l=281;
		if(v14!=8) {$b=255; break;}
		$f.l=282;
		{ $b=257; break; }
	case 255:
		$f.l=284;
		{ $b=128; break; }
	case 257:
		$f.l=286;
		v11=(v11 + 1)|0;
		$f.l=287;
		v39=$g89;
		v39=(v39 + 1)|0;
		$g89=v39;
		$f.l=289;
		if(v12==0) {$b=267; break;}
		$f.l=291;
		{ $b=278; break; }
	case 267:
		$f.l=294;
		if(v11!=1000) {$b=276; break;}
		$f.l=297;
		v22=$g86;
		v1.state=v22;
		$f.l=298;
		v1.t=v10;
		$f.l=299;
		{ $b=278; break; }
	case 276:
		$f.l=301;
		{ $b=68; break; }
	case 278:
		$f.l=304;
		v39=$g90;
		v39=_22(v39,v11);
		;
		$g90=v39;
		$f.l=305;
		return;
}
}
//org/jbox2d/collision/TimeOfImpact:<clinit>
function _22d(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=42;
		v0=vm.getClass(66);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g83=v1;
		$f.l=45;
		$g81=0;
		$f.l=46;
		$g89=0;
		$f.l=47;
		$g90=0;
		$f.l=48;
		$g87=0;
		$f.l=49;
		$g88=0;
		return;
}
}
//org/jbox2d/collision/Distance:<init>
function _22e(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=a0;
_0(v0);
$f.l=601;
v1=new org/jbox2d/collision/Distance$Simplex;
_204(v1,v0,null);
v0.simplex=v1;
$f.l=602;
v2=newArray(6,3);
v0.saveA=v2;
$f.l=603;
v2=newArray(6,3);
v0.saveB=v2;
$f.l=604;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.closestPoint=v3;
$f.l=605;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.d=v3;
$f.l=606;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.temp=v3;
$f.l=607;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.normal=v3;
return;
}
//org/jbox2d/collision/Distance:distance
function _4b(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=620;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=$g91;
		v4=(v4 + 1)|0;
		$g91=v4;
		$f.l=622;
		v5=v3.proxyA;
		$f.l=623;
		v6=v3.proxyB;
		$f.l=625;
		v7=v3.transformA;
		$f.l=626;
		v8=v3.transformB;
		$f.l=629;
		v17=v0.simplex;
		_1fa(v17,v2,v5,v7,v6,v8);
		$f.l=632;
		v17=v0.simplex;
		v9=v17.vertices;
		$f.l=637;
		v10=0;
		$f.l=639;
		v17=v0.simplex;
		v18=v0.closestPoint;
		_1ff(v17,v18);
		$f.l=640;
		v18=v0.closestPoint;
		v11=_22f(v18);
		;
		$f.l=641;
		v12=v11;
		$f.l=644;
		v13=0;
	case 35:
		$f.l=645;
		v4=$g92;
		if(v13>=v4) {$b=186; break;}
		$f.l=648;
		v17=v0.simplex;
		v10=v17.m_count;
		$f.l=649;
		v14=0;
	case 43:
		if(v14>=v10) {$b=57; break;}
		$f.l=650;
		v19=v0.saveA;
		v20=v9[v14];
		v4=v20.indexA;
		v19[v14]=v4;
		$f.l=651;
		v19=v0.saveB;
		v20=v9[v14];
		v4=v20.indexB;
		v19[v14]=v4;
		$f.l=649;
		v14=(v14 + 1)|0;
		{ $b=43; break; }
	case 57:
		$f.l=654;
		v17=v0.simplex;
		v4=v17.m_count;
		switch(v4){
		case 1: $b=61;break;
		case 2: $b=63;break;
		case 3: $b=68;break;
		}
	case 61:
		$f.l=656;
		{ $b=79; break; }
	case 63:
		$f.l=658;
		v17=v0.simplex;
		_202(v17);
		$f.l=659;
		{ $b=79; break; }
	case 68:
		$f.l=661;
		v17=v0.simplex;
		_203(v17);
		$f.l=662;
		{ $b=79; break; }
		$f.l=664;
		v21=$g93;
		if(v21!=0) {$b=79; break;}
		v22=new java/lang/AssertionError;
		_26(v22);
		throw v22;
	case 79:
		$f.l=668;
		v17=v0.simplex;
		v4=v17.m_count;
		if(v4!=3) {$b=85; break;}
		$f.l=669;
		{ $b=186; break; }
	case 85:
		$f.l=673;
		v17=v0.simplex;
		v18=v0.closestPoint;
		_1ff(v17,v18);
		$f.l=674;
		v18=v0.closestPoint;
		v12=_22f(v18);
		;
		$f.l=677;
		v23=(v12 != v12 || v11 != v11) ? -1 : (v12 > v11) - (v12 < v11);
		if(v23<0) {$b=95; break;}
	case 95:
		$f.l=680;
		v11=v12;
		$f.l=683;
		v17=v0.simplex;
		v18=v0.d;
		_1fd(v17,v18);
		$f.l=686;
		v18=v0.d;
		v24=_22f(v18);
		;
		v23=(v24 != v24 || 1.4210855E-14 != 1.4210855E-14) ? 1 : (v24 > 1.4210855E-14) - (v24 < 1.4210855E-14);
		if(v23>=0) {$b=108; break;}
		$f.l=693;
		{ $b=186; break; }
	case 108:
		$f.l=704;
		v17=v0.simplex;
		v4=v17.m_count;
		v25=v9[v4];
		$f.l=706;
		v26=v7.q;
		v18=v0.d;
		v18=_3a(v18);
		;
		v27=v0.temp;
		_230(v26,v18,v27);
		$f.l=707;
		v27=v0.temp;
		v4=_17a(v5,v27);
		;
		v25.indexA=v4;
		$f.l=708;
		v4=v25.indexA;
		v27=_17b(v5,v4);
		;
		v18=v25.wA;
		_5c(v7,v27,v18);
		$f.l=710;
		v26=v8.q;
		v27=v0.d;
		v27=_3a(v27);
		;
		v18=v0.temp;
		_230(v26,v27,v18);
		$f.l=711;
		v27=v0.temp;
		v4=_17a(v6,v27);
		;
		v25.indexB=v4;
		$f.l=712;
		v4=v25.indexB;
		v27=_17b(v6,v4);
		;
		v18=v25.wB;
		_5c(v8,v27,v18);
		$f.l=713;
		v27=v25.w;
		v18=v25.wB;
		v27=_28(v27,v18);
		;
		v18=v25.wA;
		v27=_2e(v27,v18);
		;
		$f.l=716;
		v13=(v13 + 1)|0;
		$f.l=717;
		v4=$g94;
		v4=(v4 + 1)|0;
		$g94=v4;
		$f.l=720;
		v15=0;
		$f.l=721;
		v16=0;
	case 158:
		if(v16>=v10) {$b=175; break;}
		$f.l=722;
		v4=v25.indexA;
		v19=v0.saveA;
		v28=v19[v16];
		if(v4!=v28) {$b=172; break;}
		v28=v25.indexB;
		v19=v0.saveB;
		v4=v19[v16];
		if(v28!=v4) {$b=172; break;}
		$f.l=723;
		v15=1;
		$f.l=724;
		{ $b=175; break; }
	case 172:
		$f.l=721;
		v16=(v16 + 1)|0;
		{ $b=158; break; }
	case 175:
		$f.l=729;
		if(v15==0) {$b=179; break;}
		$f.l=730;
		{ $b=186; break; }
	case 179:
		$f.l=734;
		v17=v0.simplex;
		v28=v17.m_count;
		v28=(v28 + 1)|0;
		v17.m_count=v28;
		$f.l=735;
		{ $b=35; break; }
	case 186:
		$f.l=737;
		v28=$g92;
		v28=_22(v28,v13);
		;
		$g92=v28;
		$f.l=740;
		v17=v0.simplex;
		v27=v1.pointA;
		v18=v1.pointB;
		_200(v17,v27,v18);
		$f.l=741;
		v27=v1.pointA;
		v18=v1.pointB;
		v24=_201(v27,v18);
		;
		v1.distance=v24;
		$f.l=742;
		v1.iterations=v13;
		$f.l=745;
		v17=v0.simplex;
		_1fc(v17,v2);
		$f.l=748;
		v21=v3.useRadii;
		if(v21==0) {$b=265; break;}
		$f.l=749;
		v29=v5.m_radius;
		$f.l=750;
		v30=v6.m_radius;
		$f.l=752;
		v24=v1.distance;
		v31=v29 + v30;
		v23=(v24 != v24 || v31 != v31) ? -1 : (v24 > v31) - (v24 < v31);
		if(v23<=0) {$b=254; break;}
		v31=v1.distance;
		v23=(v31 != v31 || 1.1920929E-7 != 1.1920929E-7) ? -1 : (v31 > 1.1920929E-7) - (v31 < 1.1920929E-7);
		if(v23<=0) {$b=254; break;}
		$f.l=755;
		v32=v1;
		v31=v1.distance;
		v24=v29 + v30;
		v31=v31 - v24;
		v1.distance=v31;
		$f.l=756;
		v27=v0.normal;
		v18=v1.pointB;
		v27=_28(v27,v18);
		;
		v18=v1.pointA;
		v27=_2e(v27,v18);
		;
		$f.l=757;
		v27=v0.normal;
		v31=_53(v27);
		;
		$f.l=758;
		v27=v0.temp;
		v18=v0.normal;
		v27=_28(v27,v18);
		;
		v27=_35(v27,v29);
		;
		$f.l=759;
		v27=v1.pointA;
		v18=v0.temp;
		v27=_36(v27,v18);
		;
		$f.l=760;
		v27=v0.temp;
		v18=v0.normal;
		v27=_28(v27,v18);
		;
		v27=_35(v27,v30);
		;
		$f.l=761;
		v27=v1.pointB;
		v18=v0.temp;
		v27=_2e(v27,v18);
		;
		{ $b=265; break; }
	case 254:
		$f.l=766;
		v27=v1.pointA;
		v18=v1.pointB;
		v27=_36(v27,v18);
		;
		v27=_35(v27,0.5);
		;
		$f.l=767;
		v27=v1.pointB;
		v18=v1.pointA;
		v27=_28(v27,v18);
		;
		$f.l=768;
		v1.distance=0.0;
	case 265:
		$f.l=771;
		return;
}
}
//org/jbox2d/collision/Distance:<clinit>
function _231(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=vm.getClass(45);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g93=v1;
		$f.l=46;
		$g91=0;
		$f.l=47;
		$g94=0;
		$f.l=48;
		$g92=20;
		return;
}
}
//org/jbox2d/collision/WorldManifold$1:<clinit>
function _232(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=65;
		$f.trap=0;
		v0=_220();
		;
		v3=v0.len;
		v4=newArray(6,v3);
		$g60=v4;
		$f.trap=1;
		v4=$g60;
		v1=$g3;
		v3=_4f(v1);
		;
		v4[v3]=1;
		$f.trap=0;
		{ $b=17; break; }
	case 14:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 17:
		$f.trap=2;
		v4=$g60;
		v1=$g4;
		v3=_4f(v1);
		;
		v4[v3]=2;
		$f.trap=0;
		{ $b=27; break; }
	case 24:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 27:
		$f.trap=3;
		v4=$g60;
		v1=$g6;
		v3=_4f(v1);
		;
		v4[v3]=3;
		$f.trap=0;
		{ $b=37; break; }
	case 34:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 37:
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,7)) {$b=14; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,7)) {$b=24; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,7)) {$b=34; continue;}
	}
throw error;
}
}
//org/jbox2d/collision/SeparationFunction:<init>
function _226(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=314;
v0=a0;
_0(v0);
$f.l=319;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.m_localPoint=v1;
$f.l=320;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.m_axis=v1;
$f.l=325;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPointA=v1;
$f.l=326;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPointB=v1;
$f.l=327;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.pointA=v1;
$f.l=328;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.pointB=v1;
$f.l=329;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPointA1=v1;
$f.l=330;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPointA2=v1;
$f.l=331;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.normal=v1;
$f.l=332;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPointB1=v1;
$f.l=333;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localPointB2=v1;
$f.l=334;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.temp=v1;
$f.l=335;
v2=new org/jbox2d/common/Transform;
_1c(v2);
v0.xfa=v2;
$f.l=336;
v2=new org/jbox2d/common/Transform;
_1c(v2);
v0.xfb=v2;
$f.l=426;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.axisA=v1;
$f.l=427;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.axisB=v1;
return;
}
//org/jbox2d/collision/SeparationFunction:initialize
function _22a(vm,a0,a1,a2,a3,a4,a5,a6){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=342;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v6=a6;
		v0.m_proxyA=v2;
		$f.l=343;
		v0.m_proxyB=v4;
		$f.l=344;
		v7=v1.count;
		$f.l=345;
		v9=$g95;
		if(v9!=0) {$b=21; break;}
		if(0>=v7) {$b=18; break;}
		if(v7<3) {$b=21; break;}
	case 18:
		v10=new java/lang/AssertionError;
		_26(v10);
		throw v10;
	case 21:
		$f.l=347;
		v0.m_sweepA=v3;
		$f.l=348;
		v0.m_sweepB=v5;
		$f.l=350;
		v11=v0.m_sweepA;
		v12=v0.xfa;
		_229(v11,v12,v6);
		$f.l=351;
		v11=v0.m_sweepB;
		v12=v0.xfb;
		_229(v11,v12,v6);
		$f.l=357;
		if(v7!=1) {$b=73; break;}
		$f.l=358;
		v13=$g96;
		v0.m_type=v13;
		$f.l=364;
		v14=v0.localPointA;
		v15=v0.m_proxyA;
		v16=v1.indexA;
		v17=v16[0];
		v18=_17b(v15,v17);
		;
		v18=_28(v14,v18);
		;
		$f.l=365;
		v18=v0.localPointB;
		v15=v0.m_proxyB;
		v16=v1.indexB;
		v17=v16[0];
		v14=_17b(v15,v17);
		;
		v18=_28(v18,v14);
		;
		$f.l=366;
		v12=v0.xfa;
		v18=v0.localPointA;
		v14=v0.pointA;
		_5c(v12,v18,v14);
		$f.l=367;
		v12=v0.xfb;
		v18=v0.localPointB;
		v14=v0.pointB;
		_5c(v12,v18,v14);
		$f.l=368;
		v18=v0.m_axis;
		v14=v0.pointB;
		v18=_28(v18,v14);
		;
		v14=v0.pointA;
		v18=_2e(v18,v14);
		;
		$f.l=369;
		v18=v0.m_axis;
		v8=_53(v18);
		;
		$f.l=370;
		return v8;
	case 73:
		$f.l=371;
		v16=v1.indexA;
		v17=v16[0];
		v16=v1.indexA;
		v19=v16[1];
		if(v17!=v19) {$b=158; break;}
		$f.l=373;
		v13=$g97;
		v0.m_type=v13;
		$f.l=375;
		v18=v0.localPointB1;
		v15=v0.m_proxyB;
		v16=v1.indexB;
		v19=v16[0];
		v14=_17b(v15,v19);
		;
		v18=_28(v18,v14);
		;
		$f.l=376;
		v18=v0.localPointB2;
		v15=v0.m_proxyB;
		v16=v1.indexB;
		v19=v16[1];
		v14=_17b(v15,v19);
		;
		v18=_28(v18,v14);
		;
		$f.l=378;
		v18=v0.temp;
		v14=v0.localPointB2;
		v18=_28(v18,v14);
		;
		v14=v0.localPointB1;
		v18=_2e(v18,v14);
		;
		$f.l=379;
		v18=v0.temp;
		v14=v0.m_axis;
		_1fe(v18,1.0,v14);
		$f.l=380;
		v18=v0.m_axis;
		v20=_53(v18);
		;
		$f.l=382;
		v12=v0.xfb;
		v21=v12.q;
		v18=v0.m_axis;
		v14=v0.normal;
		_39(v21,v18,v14);
		$f.l=384;
		v18=v0.m_localPoint;
		v14=v0.localPointB1;
		v18=_28(v18,v14);
		;
		v14=v0.localPointB2;
		v18=_36(v18,v14);
		;
		v18=_35(v18,0.5);
		;
		$f.l=385;
		v12=v0.xfb;
		v18=v0.m_localPoint;
		v14=v0.pointB;
		_5c(v12,v18,v14);
		$f.l=387;
		v18=v0.localPointA;
		v16=v1.indexA;
		v19=v16[0];
		v14=_17b(v2,v19);
		;
		v18=_28(v18,v14);
		;
		$f.l=388;
		v12=v0.xfa;
		v18=v0.localPointA;
		v14=v0.pointA;
		_5c(v12,v18,v14);
		$f.l=390;
		v18=v0.temp;
		v14=v0.pointA;
		v18=_28(v18,v14);
		;
		v14=v0.pointB;
		v18=_2e(v18,v14);
		;
		$f.l=391;
		v18=v0.temp;
		v14=v0.normal;
		v8=_4d(v18,v14);
		;
		$f.l=392;
		v22=(v8 != v8 || 0.0 != 0.0) ? 1 : (v8 > 0.0) - (v8 < 0.0);
		if(v22>=0) {$b=156; break;}
		$f.l=393;
		v18=v0.m_axis;
		v18=_3a(v18);
		;
		$f.l=394;
		v8=-v8;
	case 156:
		$f.l=396;
		return v8;
	case 158:
		$f.l=399;
		v13=$g98;
		v0.m_type=v13;
		$f.l=401;
		v18=v0.localPointA1;
		v15=v0.m_proxyA;
		v16=v1.indexA;
		v19=v16[0];
		v14=_17b(v15,v19);
		;
		v18=_28(v18,v14);
		;
		$f.l=402;
		v18=v0.localPointA2;
		v15=v0.m_proxyA;
		v16=v1.indexA;
		v19=v16[1];
		v14=_17b(v15,v19);
		;
		v18=_28(v18,v14);
		;
		$f.l=404;
		v18=v0.temp;
		v14=v0.localPointA2;
		v18=_28(v18,v14);
		;
		v14=v0.localPointA1;
		v18=_2e(v18,v14);
		;
		$f.l=405;
		v18=v0.temp;
		v14=v0.m_axis;
		_1fe(v18,1.0,v14);
		$f.l=406;
		v18=v0.m_axis;
		v20=_53(v18);
		;
		$f.l=408;
		v12=v0.xfa;
		v21=v12.q;
		v18=v0.m_axis;
		v14=v0.normal;
		_39(v21,v18,v14);
		$f.l=410;
		v18=v0.m_localPoint;
		v14=v0.localPointA1;
		v18=_28(v18,v14);
		;
		v14=v0.localPointA2;
		v18=_36(v18,v14);
		;
		v18=_35(v18,0.5);
		;
		$f.l=411;
		v12=v0.xfa;
		v18=v0.m_localPoint;
		v14=v0.pointA;
		_5c(v12,v18,v14);
		$f.l=413;
		v18=v0.localPointB;
		v15=v0.m_proxyB;
		v16=v1.indexB;
		v19=v16[0];
		v14=_17b(v15,v19);
		;
		v18=_28(v18,v14);
		;
		$f.l=414;
		v12=v0.xfb;
		v18=v0.localPointB;
		v14=v0.pointB;
		_5c(v12,v18,v14);
		$f.l=416;
		v18=v0.temp;
		v14=v0.pointB;
		v18=_28(v18,v14);
		;
		v14=v0.pointA;
		v18=_2e(v18,v14);
		;
		$f.l=417;
		v18=v0.temp;
		v14=v0.normal;
		v8=_4d(v18,v14);
		;
		$f.l=418;
		v22=(v8 != v8 || 0.0 != 0.0) ? 1 : (v8 > 0.0) - (v8 < 0.0);
		if(v22>=0) {$b=236; break;}
		$f.l=419;
		v18=v0.m_axis;
		v18=_3a(v18);
		;
		$f.l=420;
		v8=-v8;
	case 236:
		$f.l=422;
		return v8;
}
}
//org/jbox2d/collision/SeparationFunction:findMinSeparation
function _22b(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=432;
		v0=a0;
		v1=a1;
		v2=a2;
		v4=v0.m_sweepA;
		v5=v0.xfa;
		_229(v4,v5,v2);
		$f.l=433;
		v4=v0.m_sweepB;
		v5=v0.xfb;
		_229(v4,v5,v2);
		$f.l=435;
		v6=$g99;
		v7=v0.m_type;
		v8=_4f(v7);
		;
		v8=v6[v8];
		switch(v8){
		case 1: $b=17;break;
		case 2: $b=73;break;
		case 3: $b=120;break;
		}
	case 17:
		$f.l=437;
		v5=v0.xfa;
		v9=v5.q;
		v10=v0.m_axis;
		v11=v0.axisA;
		_230(v9,v10,v11);
		$f.l=438;
		v5=v0.xfb;
		v9=v5.q;
		v11=v0.m_axis;
		v11=_3a(v11);
		;
		v10=v0.axisB;
		_230(v9,v11,v10);
		$f.l=439;
		v11=v0.m_axis;
		v11=_3a(v11);
		;
		$f.l=441;
		v12=v0.m_proxyA;
		v11=v0.axisA;
		v8=_17a(v12,v11);
		;
		v1[0]=v8;
		$f.l=442;
		v12=v0.m_proxyB;
		v11=v0.axisB;
		v8=_17a(v12,v11);
		;
		v1[1]=v8;
		$f.l=444;
		v11=v0.localPointA;
		v12=v0.m_proxyA;
		v8=v1[0];
		v10=_17b(v12,v8);
		;
		v11=_28(v11,v10);
		;
		$f.l=445;
		v11=v0.localPointB;
		v12=v0.m_proxyB;
		v8=v1[1];
		v10=_17b(v12,v8);
		;
		v11=_28(v11,v10);
		;
		$f.l=447;
		v5=v0.xfa;
		v11=v0.localPointA;
		v10=v0.pointA;
		_5c(v5,v11,v10);
		$f.l=448;
		v5=v0.xfb;
		v11=v0.localPointB;
		v10=v0.pointB;
		_5c(v5,v11,v10);
		$f.l=450;
		v11=v0.pointB;
		v10=v0.pointA;
		v11=_2e(v11,v10);
		;
		v10=v0.m_axis;
		v3=_4d(v11,v10);
		;
		$f.l=451;
		return v3;
	case 73:
		$f.l=454;
		v5=v0.xfa;
		v9=v5.q;
		v11=v0.m_axis;
		v10=v0.normal;
		_39(v9,v11,v10);
		$f.l=455;
		v5=v0.xfa;
		v11=v0.m_localPoint;
		v10=v0.pointA;
		_5c(v5,v11,v10);
		$f.l=457;
		v5=v0.xfb;
		v9=v5.q;
		v11=v0.normal;
		v11=_3a(v11);
		;
		v10=v0.axisB;
		_230(v9,v11,v10);
		$f.l=458;
		v11=v0.normal;
		v11=_3a(v11);
		;
		$f.l=460;
		v1[0]=-1;
		$f.l=461;
		v12=v0.m_proxyB;
		v11=v0.axisB;
		v8=_17a(v12,v11);
		;
		v1[1]=v8;
		$f.l=463;
		v11=v0.localPointB;
		v12=v0.m_proxyB;
		v8=v1[1];
		v10=_17b(v12,v8);
		;
		v11=_28(v11,v10);
		;
		$f.l=464;
		v5=v0.xfb;
		v11=v0.localPointB;
		v10=v0.pointB;
		_5c(v5,v11,v10);
		$f.l=466;
		v11=v0.pointB;
		v10=v0.pointA;
		v11=_2e(v11,v10);
		;
		v10=v0.normal;
		v3=_4d(v11,v10);
		;
		$f.l=467;
		return v3;
	case 120:
		$f.l=470;
		v5=v0.xfb;
		v9=v5.q;
		v11=v0.m_axis;
		v10=v0.normal;
		_39(v9,v11,v10);
		$f.l=471;
		v5=v0.xfb;
		v11=v0.m_localPoint;
		v10=v0.pointB;
		_5c(v5,v11,v10);
		$f.l=473;
		v5=v0.xfa;
		v9=v5.q;
		v11=v0.normal;
		v11=_3a(v11);
		;
		v10=v0.axisA;
		_230(v9,v11,v10);
		$f.l=474;
		v11=v0.normal;
		v11=_3a(v11);
		;
		$f.l=476;
		v1[1]=-1;
		$f.l=477;
		v12=v0.m_proxyA;
		v11=v0.axisA;
		v8=_17a(v12,v11);
		;
		v1[0]=v8;
		$f.l=479;
		v11=v0.localPointA;
		v12=v0.m_proxyA;
		v8=v1[0];
		v10=_17b(v12,v8);
		;
		v11=_28(v11,v10);
		;
		$f.l=480;
		v5=v0.xfa;
		v11=v0.localPointA;
		v10=v0.pointA;
		_5c(v5,v11,v10);
		$f.l=482;
		v11=v0.pointA;
		v10=v0.pointB;
		v11=_2e(v11,v10);
		;
		v10=v0.normal;
		v3=_4d(v11,v10);
		;
		$f.l=483;
		return v3;
		$f.l=486;
		v13=$g95;
		if(v13!=0) {$b=173; break;}
		v14=new java/lang/AssertionError;
		_26(v14);
		throw v14;
	case 173:
		$f.l=487;
		v1[0]=-1;
		$f.l=488;
		v1[1]=-1;
		$f.l=489;
		return 0.0;
}
}
//org/jbox2d/collision/SeparationFunction:evaluate
function _22c(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=494;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v5=v0.m_sweepA;
		v6=v0.xfa;
		_229(v5,v6,v3);
		$f.l=495;
		v5=v0.m_sweepB;
		v6=v0.xfb;
		_229(v5,v6,v3);
		$f.l=497;
		v7=$g99;
		v8=v0.m_type;
		v9=_4f(v8);
		;
		v9=v7[v9];
		switch(v9){
		case 1: $b=18;break;
		case 2: $b=62;break;
		case 3: $b=101;break;
		}
	case 18:
		$f.l=499;
		v6=v0.xfa;
		v10=v6.q;
		v11=v0.m_axis;
		v12=v0.axisA;
		_230(v10,v11,v12);
		$f.l=500;
		v6=v0.xfb;
		v10=v6.q;
		v12=v0.m_axis;
		v12=_3a(v12);
		;
		v11=v0.axisB;
		_230(v10,v12,v11);
		$f.l=501;
		v12=v0.m_axis;
		v12=_3a(v12);
		;
		$f.l=503;
		v12=v0.localPointA;
		v13=v0.m_proxyA;
		v11=_17b(v13,v1);
		;
		v12=_28(v12,v11);
		;
		$f.l=504;
		v12=v0.localPointB;
		v13=v0.m_proxyB;
		v11=_17b(v13,v2);
		;
		v12=_28(v12,v11);
		;
		$f.l=506;
		v6=v0.xfa;
		v12=v0.localPointA;
		v11=v0.pointA;
		_5c(v6,v12,v11);
		$f.l=507;
		v6=v0.xfb;
		v12=v0.localPointB;
		v11=v0.pointB;
		_5c(v6,v12,v11);
		$f.l=509;
		v12=v0.pointB;
		v11=v0.pointA;
		v12=_2e(v12,v11);
		;
		v11=v0.m_axis;
		v4=_4d(v12,v11);
		;
		$f.l=510;
		return v4;
	case 62:
		$f.l=514;
		v6=v0.xfa;
		v10=v6.q;
		v12=v0.m_axis;
		v11=v0.normal;
		_39(v10,v12,v11);
		$f.l=515;
		v6=v0.xfa;
		v12=v0.m_localPoint;
		v11=v0.pointA;
		_5c(v6,v12,v11);
		$f.l=517;
		v6=v0.xfb;
		v10=v6.q;
		v12=v0.normal;
		v12=_3a(v12);
		;
		v11=v0.axisB;
		_230(v10,v12,v11);
		$f.l=518;
		v12=v0.normal;
		v12=_3a(v12);
		;
		$f.l=520;
		v12=v0.localPointB;
		v13=v0.m_proxyB;
		v11=_17b(v13,v2);
		;
		v12=_28(v12,v11);
		;
		$f.l=521;
		v6=v0.xfb;
		v12=v0.localPointB;
		v11=v0.pointB;
		_5c(v6,v12,v11);
		$f.l=522;
		v12=v0.pointB;
		v11=v0.pointA;
		v12=_2e(v12,v11);
		;
		v11=v0.normal;
		v4=_4d(v12,v11);
		;
		$f.l=523;
		return v4;
	case 101:
		$f.l=527;
		v6=v0.xfb;
		v10=v6.q;
		v12=v0.m_axis;
		v11=v0.normal;
		_39(v10,v12,v11);
		$f.l=528;
		v6=v0.xfb;
		v12=v0.m_localPoint;
		v11=v0.pointB;
		_5c(v6,v12,v11);
		$f.l=530;
		v6=v0.xfa;
		v10=v6.q;
		v12=v0.normal;
		v12=_3a(v12);
		;
		v11=v0.axisA;
		_230(v10,v12,v11);
		$f.l=531;
		v12=v0.normal;
		v12=_3a(v12);
		;
		$f.l=533;
		v12=v0.localPointA;
		v13=v0.m_proxyA;
		v11=_17b(v13,v1);
		;
		v12=_28(v12,v11);
		;
		$f.l=534;
		v6=v0.xfa;
		v12=v0.localPointA;
		v11=v0.pointA;
		_5c(v6,v12,v11);
		$f.l=536;
		v12=v0.pointA;
		v11=v0.pointB;
		v12=_2e(v12,v11);
		;
		v11=v0.normal;
		v4=_4d(v12,v11);
		;
		$f.l=537;
		return v4;
		$f.l=540;
		v14=$g95;
		if(v14!=0) {$b=146; break;}
		v15=new java/lang/AssertionError;
		_26(v15);
		throw v15;
	case 146:
		$f.l=541;
		return 0.0;
}
}
//org/jbox2d/collision/SeparationFunction:<clinit>
function _233(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=314;
		v0=vm.getClass(67);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g95=v1;
		return;
}
}
//org/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint:<init>
function _234(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
_0(v0);
$f.l=52;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.rA=v1;
$f.l=53;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.rB=v1;
return;
}
//org/jbox2d/dynamics/SolverData:<init>
function _195(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/dynamics/contacts/ContactVelocityConstraint:<init>
function _20(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=a0;
		_0(v0);
		$f.l=31;
		v2=newArray(68,2);
		v0.points=v2;
		$f.l=32;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.normal=v3;
		$f.l=33;
		v4=new org/jbox2d/common/Mat22;
		_235(v4);
		v0.normalMass=v4;
		$f.l=34;
		v4=new org/jbox2d/common/Mat22;
		_235(v4);
		v0.K=v4;
		$f.l=46;
		v1=0;
	case 20:
		v2=v0.points;
		v5=v2.len;
		if(v1>=v5) {$b=31; break;}
		$f.l=47;
		v2=v0.points;
		v6=new org/jbox2d/dynamics/contacts/ContactVelocityConstraint$VelocityConstraintPoint;
		_234(v6);
		v2[v1]=v6;
		$f.l=46;
		v1=(v1 + 1)|0;
		{ $b=20; break; }
	case 31:
		$f.l=49;
		return;
}
}
//java/lang/reflect/Array:newInstance
function _14(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=63;
v0=a0;
v1=a1;
v2=_236(v0,v1);
;
return v2;
}
//java/lang/reflect/Array:getLength
function _12(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=114;
		v0=a0;
		v1=_2(v0);
		;
		v2=_11(v1);
		;
		if(v2!=0) {$b=8; break;}
		v3=new java/lang/IllegalArgumentException;
		_16e(v3);
		throw v3;
	case 8:
		$f.l=115;
		v4=newArray(0,1);
		v4[0]=v0;
		v5=_14a($str82,v4);
		;
		return v5;
}
}
//java/lang/reflect/Array:newArray
function _236(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=474;
		v0=a0;
		v1=a1;
		if(v1>=0) {$b=7; break;}
		v2=new java/lang/NegativeArraySizeException;
		_237(v2);
		throw v2;
	case 7:
		$f.l=475;
		v3=_1ab(v0);
		;
		if(v3==0) {$b=18; break;}
		$f.l=476;
		v4=newArray(0,2);
		v5=_1d7(v0);
		;
		v4[0]=v5;
		v6=_a1(v1);
		;
		v4[1]=v6;
		v7=_16($str83,v4);
		;
		return v7;
	case 18:
		$f.l=478;
		v4=newArray(0,2);
		v5=_1d7(v0);
		;
		v4[0]=v5;
		v6=_a1(v1);
		;
		v4[1]=v6;
		v7=_16($str84,v4);
		;
		return v7;
}
}
//java/lang/StringBuffer:<init>
function _238(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=43;
v0=a0;
v1=a1;
_0(v0);
$f.l=44;
v2=new java/lang/StringBuilder;
_239(v2,v1);
v0.internal=v2;
$f.l=45;
return;
}
//java/lang/StringBuffer:append
function _23a(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=70;
v0=a0;
v1=a1;
v2=v0.internal;
v2=_23b(v2,v1);
;
$f.l=71;
return v0;
}
//java/lang/StringBuffer:append
function _23c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=130;
v0=a0;
v1=a1;
v2=v0.internal;
v2=_23d(v2,v1);
;
$f.l=131;
return v0;
}
//java/lang/StringBuffer:append
function _23e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=140;
v0=a0;
v1=a1;
v2=v0.internal;
v2=_b(v2,v1);
;
$f.l=141;
return v0;
}
//java/lang/StringBuffer:toString
function _23f(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=319;
v0=a0;
v1=v0.internal;
v2=v1.$c.$vt[0](v1);
;
return v2;
}
//java/util/HashMap$AbstractMapIterator:<init>
function _240(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=87;
v0=a0;
v1=a1;
_0(v0);
$f.l=79;
v0.position=0;
$f.l=88;
v0.associatedMap=v1;
$f.l=89;
v2=v1.modCount;
v0.expectedModCount=v2;
$f.l=90;
v0.futureEntry=null;
$f.l=91;
return;
}
//java/util/HashMap$AbstractMapIterator:hasNext
function _241(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=94;
		v0=a0;
		v1=v0.futureEntry;
		if(v1==null) {$b=6; break;}
		$f.l=95;
		return 1;
	case 6:
		$f.l=97;
		v2=v0.position;
		v3=v0.associatedMap;
		v4=v3.elementData;
		v5=v4.len;
		if(v2>=v5) {$b=26; break;}
		$f.l=98;
		v3=v0.associatedMap;
		v4=v3.elementData;
		v5=v0.position;
		v1=v4[v5];
		if(v1!=null) {$b=24; break;}
		$f.l=99;
		v6=v0;
		v5=v0.position;
		v5=(v5 + 1)|0;
		v0.position=v5;
		{ $b=6; break; }
	case 24:
		$f.l=101;
		return 1;
	case 26:
		$f.l=104;
		return 0;
}
}
//java/util/HashMap$AbstractMapIterator:checkConcurrentMod
function _242(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=108;
		v0=a0;
		v1=v0.expectedModCount;
		v2=v0.associatedMap;
		v3=v2.modCount;
		if(v1==v3) {$b=10; break;}
		$f.l=109;
		v4=new java/util/ConcurrentModificationException;
		_243(v4);
		throw v4;
	case 10:
		$f.l=111;
		return;
}
}
//java/util/HashMap$AbstractMapIterator:makeNext
function _244(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=114;
		v0=a0;
		_242(v0);
		$f.l=115;
		v3=_241(v0);
		;
		if(v3!=0) {$b=10; break;}
		$f.l=116;
		v4=new java/util/NoSuchElementException;
		_245(v4);
		throw v4;
	case 10:
		$f.l=118;
		v5=v0.futureEntry;
		if(v5!=null) {$b=29; break;}
		$f.l=119;
		v6=v0.associatedMap;
		v7=v6.elementData;
		v1=v0;
		v2=v0.position;
		v8=(v2 + 1)|0;
		v0.position=v8;
		v5=v7[v2];
		v0.currentEntry=v5;
		$f.l=120;
		v5=v0.currentEntry;
		v5=v5.next;
		v0.futureEntry=v5;
		$f.l=121;
		v0.prevEntry=null;
		{ $b=42; break; }
	case 29:
		$f.l=123;
		v5=v0.currentEntry;
		if(v5==null) {$b=35; break;}
		$f.l=124;
		v5=v0.currentEntry;
		v0.prevEntry=v5;
	case 35:
		$f.l=126;
		v5=v0.futureEntry;
		v0.currentEntry=v5;
		$f.l=127;
		v5=v0.futureEntry;
		v5=v5.next;
		v0.futureEntry=v5;
	case 42:
		$f.l=129;
		return;
}
}
//org/jbox2d/pooling/arrays/Vec2Array:<init>
function _f1(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
_0(v0);
$f.l=37;
v1=new java/util/HashMap;
_246(v1);
v0.map=v1;
return;
}
//org/jbox2d/pooling/arrays/Vec2Array:get
function _247(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=40;
		v0=a0;
		v1=a1;
		v2=$g100;
		if(v2!=0) {$b=9; break;}
		if(v1>0) {$b=9; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 9:
		$f.l=42;
		v4=v0.map;
		v5=_a1(v1);
		;
		v2=v4.$c.$vt[44](v4,v5);
		;
		if(v2!=0) {$b=19; break;}
		$f.l=43;
		v4=v0.map;
		v5=_a1(v1);
		;
		v6=_248(v0,v1);
		;
		v7=v4.$c.$vt[42](v4,v5,v6);
		;
	case 19:
		$f.l=46;
		v2=$g100;
		if(v2!=0) {$b=31; break;}
		v4=v0.map;
		v5=_a1(v1);
		;
		v7=v4.$c.$vt[43](v4,v5);
		;
		v6=vm.cast(v7,38);
		v8=v6.len;
		if(v8==v1) {$b=31; break;}
		v3=new java/lang/AssertionError;
		_9c(v3,$str79);
		throw v3;
	case 31:
		$f.l=47;
		v4=v0.map;
		v5=_a1(v1);
		;
		v7=v4.$c.$vt[43](v4,v5);
		;
		v6=vm.cast(v7,38);
		return v6;
}
}
//org/jbox2d/pooling/arrays/Vec2Array:getInitializedArray
function _248(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=51;
		v0=a0;
		v1=a1;
		v2=newArray(38,v1);
		$f.l=52;
		v3=0;
	case 6:
		v5=v2.len;
		if(v3>=v5) {$b=15; break;}
		$f.l=53;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v2[v3]=v4;
		$f.l=52;
		v3=(v3 + 1)|0;
		{ $b=6; break; }
	case 15:
		$f.l=55;
		return v2;
}
}
//org/jbox2d/pooling/arrays/Vec2Array:<clinit>
function _249(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=35;
		v0=vm.getClass(69);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g100=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/JointEdge:<init>
function _e3(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
_0(v0);
$f.l=41;
v0.other=null;
$f.l=46;
v0.joint=null;
$f.l=51;
v0.prev=null;
$f.l=56;
v0.next=null;
return;
}
//org/jbox2d/collision/broadphase/DynamicTreeNode:isLeaf
function _24a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=a0;
		v1=v0.child1;
		if(v1!=null) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//org/jbox2d/collision/broadphase/DynamicTreeNode:<init>
function _24b(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=59;
v0=a0;
v1=a1;
_0(v0);
$f.l=32;
v2=new org/jbox2d/collision/AABB;
_8c(v2);
v0.aabb=v2;
$f.l=59;
v0.id=v1;
return;
}
//org/jbox2d/collision/Collision$EPCollider:<init>
function _46(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1114;
		v0=a0;
		_0(v0);
		$f.l=1094;
		v1=new org/jbox2d/collision/Collision$TempPolygon;
		_21e(v1);
		v0.m_polygonB=v1;
		$f.l=1096;
		v3=new org/jbox2d/common/Transform;
		_1c(v3);
		v0.m_xf=v3;
		$f.l=1097;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_centroidB=v4;
		$f.l=1098;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_v0=v4;
		$f.l=1099;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_v1=v4;
		$f.l=1100;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_v2=v4;
		$f.l=1101;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_v3=v4;
		$f.l=1102;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_normal0=v4;
		$f.l=1103;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_normal1=v4;
		$f.l=1104;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_normal2=v4;
		$f.l=1105;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_normal=v4;
		$f.l=1109;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_lowerLimit=v4;
		$f.l=1110;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.m_upperLimit=v4;
		$f.l=1122;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.edge1=v4;
		$f.l=1123;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.temp=v4;
		$f.l=1124;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.edge0=v4;
		$f.l=1125;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.edge2=v4;
		$f.l=1126;
		v5=newArray(4,2);
		v0.ie=v5;
		$f.l=1127;
		v5=newArray(4,2);
		v0.clipPoints1=v5;
		$f.l=1128;
		v5=newArray(4,2);
		v0.clipPoints2=v5;
		$f.l=1129;
		v6=new org/jbox2d/collision/Collision$ReferenceFace;
		_214(v6);
		v0.rf=v6;
		$f.l=1130;
		v7=new org/jbox2d/collision/Collision$EPAxis;
		_7c(v7);
		v0.edgeAxis=v7;
		$f.l=1131;
		v7=new org/jbox2d/collision/Collision$EPAxis;
		_7c(v7);
		v0.polygonAxis=v7;
		$f.l=1519;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.perp=v4;
		$f.l=1520;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.n=v4;
		$f.l=1115;
		v2=0;
	case 102:
		if(v2>=2) {$b=121; break;}
		$f.l=1116;
		v5=v0.ie;
		v8=new org/jbox2d/collision/Collision$ClipVertex;
		_47(v8);
		v5[v2]=v8;
		$f.l=1117;
		v5=v0.clipPoints1;
		v8=new org/jbox2d/collision/Collision$ClipVertex;
		_47(v8);
		v5[v2]=v8;
		$f.l=1118;
		v5=v0.clipPoints2;
		v8=new org/jbox2d/collision/Collision$ClipVertex;
		_47(v8);
		v5[v2]=v8;
		$f.l=1115;
		v2=(v2 + 1)|0;
		{ $b=102; break; }
	case 121:
		$f.l=1120;
		return;
}
}
//org/jbox2d/collision/Collision$EPCollider:collide
function _5f(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49,v50,v51,v52;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1136;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		v23=v0.m_xf;
		_24c(v3,v5,v23);
		$f.l=1137;
		v23=v0.m_xf;
		v24=v4.m_centroid;
		v25=v0.m_centroidB;
		_5c(v23,v24,v25);
		$f.l=1139;
		v25=v2.m_vertex0;
		v0.m_v0=v25;
		$f.l=1140;
		v25=v2.m_vertex1;
		v0.m_v1=v25;
		$f.l=1141;
		v25=v2.m_vertex2;
		v0.m_v2=v25;
		$f.l=1142;
		v25=v2.m_vertex3;
		v0.m_v3=v25;
		$f.l=1144;
		v6=v2.m_hasVertex0;
		$f.l=1145;
		v7=v2.m_hasVertex3;
		$f.l=1147;
		v25=v0.edge1;
		v24=v0.m_v2;
		v25=_28(v25,v24);
		;
		v24=v0.m_v1;
		v25=_2e(v25,v24);
		;
		$f.l=1148;
		v25=v0.edge1;
		v26=_53(v25);
		;
		$f.l=1149;
		v25=v0.m_normal1;
		v24=v0.edge1;
		v26=v24.y;
		v24=v0.edge1;
		v27=v24.x;
		v27=-v27;
		v25=_30(v25,v26,v27);
		;
		$f.l=1150;
		v25=v0.m_normal1;
		v24=v0.temp;
		v28=v0.m_centroidB;
		v28=_28(v24,v28);
		;
		v24=v0.m_v1;
		v28=_2e(v28,v24);
		;
		v8=_4d(v25,v28);
		;
		$f.l=1151;
		v9=0.0;
		v10=0.0;
		$f.l=1152;
		v11=0;
		v12=0;
		$f.l=1155;
		if(v6==0) {$b=98; break;}
		$f.l=1156;
		v28=v0.edge0;
		v25=v0.m_v1;
		v28=_28(v28,v25);
		;
		v25=v0.m_v0;
		v28=_2e(v28,v25);
		;
		$f.l=1157;
		v28=v0.edge0;
		v27=_53(v28);
		;
		$f.l=1158;
		v28=v0.m_normal0;
		v25=v0.edge0;
		v27=v25.y;
		v25=v0.edge0;
		v26=v25.x;
		v26=-v26;
		v28=_30(v28,v27,v26);
		;
		$f.l=1159;
		v28=v0.edge0;
		v25=v0.edge1;
		v27=_2f(v28,v25);
		;
		v29=(v27 != v27 || 0.0 != 0.0) ? -1 : (v27 > 0.0) - (v27 < 0.0);
		if(v29<0) {$b=88; break;}
		v30=1;
		{ $b=89; break; }
	case 88:
		v30=0;
	case 89:
		v11=v30;
		$f.l=1160;
		v28=v0.m_normal0;
		v25=v0.temp;
		v24=v0.m_centroidB;
		v25=_28(v25,v24);
		;
		v24=v0.m_v0;
		v25=_2e(v25,v24);
		;
		v9=_4d(v28,v25);
		;
	case 98:
		$f.l=1164;
		if(v7==0) {$b=135; break;}
		$f.l=1165;
		v28=v0.edge2;
		v25=v0.m_v3;
		v28=_28(v28,v25);
		;
		v25=v0.m_v2;
		v28=_2e(v28,v25);
		;
		$f.l=1166;
		v28=v0.edge2;
		v27=_53(v28);
		;
		$f.l=1167;
		v28=v0.m_normal2;
		v25=v0.edge2;
		v27=v25.y;
		v25=v0.edge2;
		v26=v25.x;
		v26=-v26;
		v28=_30(v28,v27,v26);
		;
		$f.l=1168;
		v28=v0.edge1;
		v25=v0.edge2;
		v27=_2f(v28,v25);
		;
		v29=(v27 != v27 || 0.0 != 0.0) ? -1 : (v27 > 0.0) - (v27 < 0.0);
		if(v29<=0) {$b=125; break;}
		v30=1;
		{ $b=126; break; }
	case 125:
		v30=0;
	case 126:
		v12=v30;
		$f.l=1169;
		v28=v0.m_normal2;
		v25=v0.temp;
		v24=v0.m_centroidB;
		v25=_28(v25,v24);
		;
		v24=v0.m_v2;
		v25=_2e(v25,v24);
		;
		v10=_4d(v28,v25);
		;
	case 135:
		$f.l=1173;
		if(v6==0) {$b=477; break;}
		if(v7==0) {$b=477; break;}
		$f.l=1174;
		if(v11==0) {$b=224; break;}
		if(v12==0) {$b=224; break;}
		$f.l=1175;
		v31=v0;
		v29=(v9 != v9 || 0.0 != 0.0) ? -1 : (v9 > 0.0) - (v9 < 0.0);
		if(v29>=0) {$b=149; break;}
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29>=0) {$b=149; break;}
		v29=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v29<0) {$b=151; break;}
	case 149:
		v30=1;
		{ $b=152; break; }
	case 151:
		v30=0;
	case 152:
		v0.m_front=v30;
		$f.l=1176;
		v30=v0.m_front;
		if(v30==0) {$b=187; break;}
		$f.l=1177;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1178;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1179;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal0;
		v27=v25.x;
		v28.x=v27;
		$f.l=1180;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal0;
		v27=v25.y;
		v28.y=v27;
		$f.l=1181;
		v28=v0.m_upperLimit;
		v25=v0.m_normal2;
		v27=v25.x;
		v28.x=v27;
		$f.l=1182;
		v28=v0.m_upperLimit;
		v25=v0.m_normal2;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 187:
		$f.l=1184;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1185;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1186;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1187;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1188;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1189;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 224:
		$f.l=1191;
		if(v11==0) {$b=309; break;}
		$f.l=1192;
		v31=v0;
		v29=(v9 != v9 || 0.0 != 0.0) ? -1 : (v9 > 0.0) - (v9 < 0.0);
		if(v29>=0) {$b=234; break;}
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=236; break;}
		v29=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v29<0) {$b=236; break;}
	case 234:
		v30=1;
		{ $b=237; break; }
	case 236:
		v30=0;
	case 237:
		v0.m_front=v30;
		$f.l=1193;
		v30=v0.m_front;
		if(v30==0) {$b=272; break;}
		$f.l=1194;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1195;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1196;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal0;
		v27=v25.x;
		v28.x=v27;
		$f.l=1197;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal0;
		v27=v25.y;
		v28.y=v27;
		$f.l=1198;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1199;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 272:
		$f.l=1201;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1202;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1203;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal2;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1204;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal2;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1205;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1206;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 309:
		$f.l=1208;
		if(v12==0) {$b=394; break;}
		$f.l=1209;
		v31=v0;
		v29=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v29>=0) {$b=319; break;}
		v29=(v9 != v9 || 0.0 != 0.0) ? -1 : (v9 > 0.0) - (v9 < 0.0);
		if(v29<0) {$b=321; break;}
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=321; break;}
	case 319:
		v30=1;
		{ $b=322; break; }
	case 321:
		v30=0;
	case 322:
		v0.m_front=v30;
		$f.l=1210;
		v30=v0.m_front;
		if(v30==0) {$b=357; break;}
		$f.l=1211;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1212;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1213;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1214;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1215;
		v28=v0.m_upperLimit;
		v25=v0.m_normal2;
		v27=v25.x;
		v28.x=v27;
		$f.l=1216;
		v28=v0.m_upperLimit;
		v25=v0.m_normal2;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 357:
		$f.l=1218;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1219;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1220;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1221;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1222;
		v28=v0.m_upperLimit;
		v25=v0.m_normal0;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1223;
		v28=v0.m_upperLimit;
		v25=v0.m_normal0;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 394:
		$f.l=1226;
		v31=v0;
		v29=(v9 != v9 || 0.0 != 0.0) ? -1 : (v9 > 0.0) - (v9 < 0.0);
		if(v29<0) {$b=404; break;}
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=404; break;}
		v29=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v29<0) {$b=404; break;}
		v30=1;
		{ $b=405; break; }
	case 404:
		v30=0;
	case 405:
		v0.m_front=v30;
		$f.l=1227;
		v30=v0.m_front;
		if(v30==0) {$b=440; break;}
		$f.l=1228;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1229;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1230;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1231;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1232;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1233;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 440:
		$f.l=1235;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1236;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1237;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal2;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1238;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal2;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1239;
		v28=v0.m_upperLimit;
		v25=v0.m_normal0;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1240;
		v28=v0.m_upperLimit;
		v25=v0.m_normal0;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 477:
		$f.l=1243;
		if(v6==0) {$b=643; break;}
		$f.l=1244;
		if(v11==0) {$b=562; break;}
		$f.l=1245;
		v31=v0;
		v29=(v9 != v9 || 0.0 != 0.0) ? -1 : (v9 > 0.0) - (v9 < 0.0);
		if(v29>=0) {$b=487; break;}
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=489; break;}
	case 487:
		v30=1;
		{ $b=490; break; }
	case 489:
		v30=0;
	case 490:
		v0.m_front=v30;
		$f.l=1246;
		v30=v0.m_front;
		if(v30==0) {$b=527; break;}
		$f.l=1247;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1248;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1249;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal0;
		v27=v25.x;
		v28.x=v27;
		$f.l=1250;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal0;
		v27=v25.y;
		v28.y=v27;
		$f.l=1251;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1252;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 527:
		$f.l=1254;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1255;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1256;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1257;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1258;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1259;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 562:
		$f.l=1262;
		v31=v0;
		v29=(v9 != v9 || 0.0 != 0.0) ? -1 : (v9 > 0.0) - (v9 < 0.0);
		if(v29<0) {$b=570; break;}
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=570; break;}
		v30=1;
		{ $b=571; break; }
	case 570:
		v30=0;
	case 571:
		v0.m_front=v30;
		$f.l=1263;
		v30=v0.m_front;
		if(v30==0) {$b=608; break;}
		$f.l=1264;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1265;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1266;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1267;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1268;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1269;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 608:
		$f.l=1271;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1272;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1273;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1274;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1275;
		v28=v0.m_upperLimit;
		v25=v0.m_normal0;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1276;
		v28=v0.m_upperLimit;
		v25=v0.m_normal0;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 643:
		$f.l=1279;
		if(v7==0) {$b=809; break;}
		$f.l=1280;
		if(v12==0) {$b=728; break;}
		$f.l=1281;
		v31=v0;
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29>=0) {$b=653; break;}
		v29=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v29<0) {$b=655; break;}
	case 653:
		v30=1;
		{ $b=656; break; }
	case 655:
		v30=0;
	case 656:
		v0.m_front=v30;
		$f.l=1282;
		v30=v0.m_front;
		if(v30==0) {$b=693; break;}
		$f.l=1283;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1284;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1285;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1286;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1287;
		v28=v0.m_upperLimit;
		v25=v0.m_normal2;
		v27=v25.x;
		v28.x=v27;
		$f.l=1288;
		v28=v0.m_upperLimit;
		v25=v0.m_normal2;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 693:
		$f.l=1290;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1291;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1292;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1293;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1294;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1295;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 728:
		$f.l=1298;
		v31=v0;
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=736; break;}
		v29=(v10 != v10 || 0.0 != 0.0) ? -1 : (v10 > 0.0) - (v10 < 0.0);
		if(v29<0) {$b=736; break;}
		v30=1;
		{ $b=737; break; }
	case 736:
		v30=0;
	case 737:
		v0.m_front=v30;
		$f.l=1299;
		v30=v0.m_front;
		if(v30==0) {$b=774; break;}
		$f.l=1300;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1301;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1302;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1303;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1304;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1305;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 774:
		$f.l=1307;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1308;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1309;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal2;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1310;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal2;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1311;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1312;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		{ $b=887; break; }
	case 809:
		$f.l=1316;
		v31=v0;
		v29=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v29<0) {$b=815; break;}
		v30=1;
		{ $b=816; break; }
	case 815:
		v30=0;
	case 816:
		v0.m_front=v30;
		$f.l=1317;
		v30=v0.m_front;
		if(v30==0) {$b=855; break;}
		$f.l=1318;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1319;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1320;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1321;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1322;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1323;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		{ $b=887; break; }
	case 855:
		$f.l=1325;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.x;
		v27=-v27;
		v28.x=v27;
		$f.l=1326;
		v28=v0.m_normal;
		v25=v0.m_normal1;
		v27=v25.y;
		v27=-v27;
		v28.y=v27;
		$f.l=1327;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1328;
		v28=v0.m_lowerLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
		$f.l=1329;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.x;
		v28.x=v27;
		$f.l=1330;
		v28=v0.m_upperLimit;
		v25=v0.m_normal1;
		v27=v25.y;
		v28.y=v27;
	case 887:
		$f.l=1335;
		v32=v0.m_polygonB;
		v33=v4.m_count;
		v32.count=v33;
		$f.l=1336;
		v13=0;
	case 893:
		v33=v4.m_count;
		if(v13>=v33) {$b=915; break;}
		$f.l=1337;
		v23=v0.m_xf;
		v34=v4.m_vertices;
		v28=v34[v13];
		v32=v0.m_polygonB;
		v34=v32.vertices;
		v25=v34[v13];
		_5c(v23,v28,v25);
		$f.l=1338;
		v23=v0.m_xf;
		v35=v23.q;
		v34=v4.m_normals;
		v28=v34[v13];
		v32=v0.m_polygonB;
		v34=v32.normals;
		v25=v34[v13];
		_39(v35,v28,v25);
		$f.l=1336;
		v13=(v13 + 1)|0;
		{ $b=893; break; }
	case 915:
		$f.l=1341;
		v0.m_radius=0.02;
		$f.l=1343;
		v1.pointCount=0;
		$f.l=1345;
		v36=v0.edgeAxis;
		_24d(v0,v36);
		$f.l=1348;
		v36=v0.edgeAxis;
		v37=v36.type;
		v38=$g101;
		if(v37!=v38) {$b=929; break;}
		$f.l=1349;
		return;
	case 929:
		$f.l=1352;
		v36=v0.edgeAxis;
		v27=v36.separation;
		v26=v0.m_radius;
		v29=(v27 != v27 || v26 != v26) ? -1 : (v27 > v26) - (v27 < v26);
		if(v29<=0) {$b=937; break;}
		$f.l=1353;
		return;
	case 937:
		$f.l=1356;
		v36=v0.polygonAxis;
		_24e(v0,v36);
		$f.l=1357;
		v36=v0.polygonAxis;
		v38=v36.type;
		v37=$g101;
		if(v38==v37) {$b=952; break;}
		v36=v0.polygonAxis;
		v27=v36.separation;
		v26=v0.m_radius;
		v29=(v27 != v27 || v26 != v26) ? -1 : (v27 > v26) - (v27 < v26);
		if(v29<=0) {$b=952; break;}
		$f.l=1358;
		return;
	case 952:
		$f.l=1362;
		v39=0.98;
		$f.l=1363;
		v14=0.001;
		$f.l=1366;
		v36=v0.polygonAxis;
		v38=v36.type;
		v37=$g101;
		if(v38!=v37) {$b=964; break;}
		$f.l=1367;
		v15=v0.edgeAxis;
		{ $b=978; break; }
	case 964:
		$f.l=1368;
		v36=v0.polygonAxis;
		v27=v36.separation;
		v36=v0.edgeAxis;
		v26=v36.separation;
		v26=0.98 * v26;
		v26=v26 + 0.001;
		v29=(v27 != v27 || v26 != v26) ? -1 : (v27 > v26) - (v27 < v26);
		if(v29<=0) {$b=976; break;}
		$f.l=1369;
		v15=v0.polygonAxis;
		{ $b=978; break; }
	case 976:
		$f.l=1371;
		v15=v0.edgeAxis;
	case 978:
		$f.l=1374;
		v40=v0.ie;
		v16=v40[0];
		$f.l=1375;
		v40=v0.ie;
		v17=v40[1];
		$f.l=1377;
		v38=v15.type;
		v37=$g102;
		if(v38!=v37) {$b=1130; break;}
		$f.l=1378;
		v41=$g4;
		v1.type=v41;
		$f.l=1381;
		v18=0;
		$f.l=1382;
		v28=v0.m_normal;
		v32=v0.m_polygonB;
		v34=v32.normals;
		v25=v34[0];
		v19=_4d(v28,v25);
		;
		$f.l=1383;
		v20=1;
	case 1001:
		v32=v0.m_polygonB;
		v33=v32.count;
		if(v20>=v33) {$b=1020; break;}
		$f.l=1384;
		v28=v0.m_normal;
		v32=v0.m_polygonB;
		v34=v32.normals;
		v25=v34[v20];
		v21=_4d(v28,v25);
		;
		$f.l=1385;
		v29=(v21 != v21 || v19 != v19) ? 1 : (v21 > v19) - (v21 < v19);
		if(v29>=0) {$b=1017; break;}
		$f.l=1386;
		v19=v21;
		$f.l=1387;
		v18=v20;
	case 1017:
		$f.l=1383;
		v20=(v20 + 1)|0;
		{ $b=1001; break; }
	case 1020:
		$f.l=1391;
		v20=v18;
		$f.l=1392;
		v33=(v20 + 1)|0;
		v32=v0.m_polygonB;
		v42=v32.count;
		if(v33>=v42) {$b=1029; break;}
		v42=(v20 + 1)|0;
		{ $b=1030; break; }
	case 1029:
		v42=0;
	case 1030:
		v43=v42;
		$f.l=1394;
		v28=v16.v;
		v32=v0.m_polygonB;
		v34=v32.vertices;
		v25=v34[v20];
		v28=_28(v28,v25);
		;
		$f.l=1395;
		v44=v16.id;
		v44.indexA=0;
		$f.l=1396;
		v44=v16.id;
		v29=v20&0xff;
		v44.indexB=v29;
		$f.l=1397;
		v44=v16.id;
		v45=$g2;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeA=v29;
		$f.l=1398;
		v44=v16.id;
		v45=$g1;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeB=v29;
		$f.l=1400;
		v28=v17.v;
		v32=v0.m_polygonB;
		v34=v32.vertices;
		v25=v34[v43];
		v28=_28(v28,v25);
		;
		$f.l=1401;
		v44=v17.id;
		v44.indexA=0;
		$f.l=1402;
		v44=v17.id;
		v29=v43&0xff;
		v44.indexB=v29;
		$f.l=1403;
		v44=v17.id;
		v45=$g2;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeA=v29;
		$f.l=1404;
		v44=v17.id;
		v45=$g1;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeB=v29;
		$f.l=1406;
		v30=v0.m_front;
		if(v30==0) {$b=1106; break;}
		$f.l=1407;
		v46=v0.rf;
		v46.i1=0;
		$f.l=1408;
		v46=v0.rf;
		v46.i2=1;
		$f.l=1409;
		v46=v0.rf;
		v28=v46.v1;
		v25=v0.m_v1;
		v28=_28(v28,v25);
		;
		$f.l=1410;
		v46=v0.rf;
		v28=v46.v2;
		v25=v0.m_v2;
		v28=_28(v28,v25);
		;
		$f.l=1411;
		v46=v0.rf;
		v28=v46.normal;
		v25=v0.m_normal1;
		v28=_28(v28,v25);
		;
		{ $b=1128; break; }
	case 1106:
		$f.l=1413;
		v46=v0.rf;
		v46.i1=1;
		$f.l=1414;
		v46=v0.rf;
		v46.i2=0;
		$f.l=1415;
		v46=v0.rf;
		v28=v46.v1;
		v25=v0.m_v2;
		v28=_28(v28,v25);
		;
		$f.l=1416;
		v46=v0.rf;
		v28=v46.v2;
		v25=v0.m_v1;
		v28=_28(v28,v25);
		;
		$f.l=1417;
		v46=v0.rf;
		v28=v46.normal;
		v25=v0.m_normal1;
		v28=_28(v28,v25);
		;
		v28=_3a(v28);
		;
	case 1128:
		$f.l=1419;
		{ $b=1226; break; }
	case 1130:
		$f.l=1420;
		v41=$g6;
		v1.type=v41;
		$f.l=1422;
		v28=v16.v;
		v25=v0.m_v1;
		v28=_28(v28,v25);
		;
		$f.l=1423;
		v44=v16.id;
		v44.indexA=0;
		$f.l=1424;
		v44=v16.id;
		v42=v15.index;
		v29=v42&0xff;
		v44.indexB=v29;
		$f.l=1425;
		v44=v16.id;
		v45=$g1;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeA=v29;
		$f.l=1426;
		v44=v16.id;
		v45=$g2;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeB=v29;
		$f.l=1428;
		v28=v17.v;
		v25=v0.m_v2;
		v28=_28(v28,v25);
		;
		$f.l=1429;
		v44=v17.id;
		v44.indexA=0;
		$f.l=1430;
		v44=v17.id;
		v42=v15.index;
		v29=v42&0xff;
		v44.indexB=v29;
		$f.l=1431;
		v44=v17.id;
		v45=$g1;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeA=v29;
		$f.l=1432;
		v44=v17.id;
		v45=$g2;
		v42=_4f(v45);
		;
		v29=v42&0xff;
		v44.typeB=v29;
		$f.l=1434;
		v46=v0.rf;
		v42=v15.index;
		v46.i1=v42;
		$f.l=1435;
		v46=v0.rf;
		v47=v0.rf;
		v42=v47.i1;
		v42=(v42 + 1)|0;
		v32=v0.m_polygonB;
		v33=v32.count;
		if(v42>=v33) {$b=1197; break;}
		v47=v0.rf;
		v42=v47.i1;
		v42=(v42 + 1)|0;
		{ $b=1198; break; }
	case 1197:
		v42=0;
	case 1198:
		v46.i2=v42;
		$f.l=1436;
		v47=v0.rf;
		v28=v47.v1;
		v32=v0.m_polygonB;
		v34=v32.vertices;
		v47=v0.rf;
		v42=v47.i1;
		v25=v34[v42];
		v28=_28(v28,v25);
		;
		$f.l=1437;
		v47=v0.rf;
		v28=v47.v2;
		v32=v0.m_polygonB;
		v34=v32.vertices;
		v47=v0.rf;
		v42=v47.i2;
		v25=v34[v42];
		v28=_28(v28,v25);
		;
		$f.l=1438;
		v47=v0.rf;
		v28=v47.normal;
		v32=v0.m_polygonB;
		v34=v32.normals;
		v47=v0.rf;
		v42=v47.i1;
		v25=v34[v42];
		v28=_28(v28,v25);
		;
	case 1226:
		$f.l=1441;
		v47=v0.rf;
		v28=v47.sideNormal1;
		v47=v0.rf;
		v25=v47.normal;
		v27=v25.y;
		v47=v0.rf;
		v25=v47.normal;
		v26=v25.x;
		v26=-v26;
		v28=_30(v28,v27,v26);
		;
		$f.l=1442;
		v47=v0.rf;
		v28=v47.sideNormal2;
		v47=v0.rf;
		v25=v47.sideNormal1;
		v28=_28(v28,v25);
		;
		v28=_3a(v28);
		;
		$f.l=1443;
		v47=v0.rf;
		v46=v0.rf;
		v28=v46.sideNormal1;
		v46=v0.rf;
		v25=v46.v1;
		v27=_4d(v28,v25);
		;
		v47.sideOffset1=v27;
		$f.l=1444;
		v47=v0.rf;
		v46=v0.rf;
		v28=v46.sideNormal2;
		v46=v0.rf;
		v25=v46.v2;
		v27=_4d(v28,v25);
		;
		v47.sideOffset2=v27;
		$f.l=1450;
		v40=v0.clipPoints1;
		v48=v0.ie;
		v47=v0.rf;
		v28=v47.sideNormal1;
		v47=v0.rf;
		v27=v47.sideOffset1;
		v47=v0.rf;
		v42=v47.i1;
		v18=_4c(v40,v48,v28,v27,v42);
		;
		$f.l=1452;
		if(v18>=2) {$b=1274; break;}
		$f.l=1453;
		return;
	case 1274:
		$f.l=1457;
		v48=v0.clipPoints2;
		v40=v0.clipPoints1;
		v47=v0.rf;
		v28=v47.sideNormal2;
		v47=v0.rf;
		v27=v47.sideOffset2;
		v47=v0.rf;
		v42=v47.i2;
		v18=_4c(v48,v40,v28,v27,v42);
		;
		$f.l=1459;
		if(v18>=2) {$b=1288; break;}
		$f.l=1460;
		return;
	case 1288:
		$f.l=1464;
		v38=v15.type;
		v37=$g102;
		if(v38!=v37) {$b=1303; break;}
		$f.l=1465;
		v28=v1.localNormal;
		v47=v0.rf;
		v25=v47.normal;
		v28=_28(v28,v25);
		;
		$f.l=1466;
		v28=v1.localPoint;
		v47=v0.rf;
		v25=v47.v1;
		v28=_28(v28,v25);
		;
		{ $b=1317; break; }
	case 1303:
		$f.l=1468;
		v28=v1.localNormal;
		v34=v4.m_normals;
		v47=v0.rf;
		v42=v47.i1;
		v25=v34[v42];
		v28=_28(v28,v25);
		;
		$f.l=1469;
		v28=v1.localPoint;
		v34=v4.m_vertices;
		v47=v0.rf;
		v42=v47.i1;
		v25=v34[v42];
		v28=_28(v28,v25);
		;
	case 1317:
		$f.l=1472;
		v49=0;
		$f.l=1473;
		v20=0;
	case 1321:
		if(v20>=2) {$b=1398; break;}
		$f.l=1476;
		v47=v0.rf;
		v28=v47.normal;
		v25=v0.temp;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v24=v50.v;
		v25=_28(v25,v24);
		;
		v47=v0.rf;
		v24=v47.v1;
		v25=_2e(v25,v24);
		;
		v21=_4d(v28,v25);
		;
		$f.l=1478;
		v27=v0.m_radius;
		v29=(v21 != v21 || v27 != v27) ? 1 : (v21 > v27) - (v21 < v27);
		if(v29>0) {$b=1395; break;}
		$f.l=1479;
		v51=v1.points;
		v22=v51[v49];
		$f.l=1481;
		v38=v15.type;
		v37=$g102;
		if(v38!=v37) {$b=1359; break;}
		$f.l=1483;
		v23=v0.m_xf;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v28=v50.v;
		v25=v22.localPoint;
		_5d(v23,v28,v25);
		$f.l=1484;
		v44=v22.id;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v52=v50.id;
		_59(v44,v52);
		{ $b=1393; break; }
	case 1359:
		$f.l=1486;
		v28=v22.localPoint;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v25=v50.v;
		v28=_28(v28,v25);
		;
		$f.l=1487;
		v52=v22.id;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v44=v50.id;
		v29=v44.typeB;
		v52.typeA=v29;
		$f.l=1488;
		v52=v22.id;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v44=v50.id;
		v29=v44.typeA;
		v52.typeB=v29;
		$f.l=1489;
		v52=v22.id;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v44=v50.id;
		v29=v44.indexB;
		v52.indexA=v29;
		$f.l=1490;
		v52=v22.id;
		v48=v0.clipPoints2;
		v50=v48[v20];
		v44=v50.id;
		v29=v44.indexA;
		v52.indexB=v29;
	case 1393:
		$f.l=1493;
		v49=(v49 + 1)|0;
	case 1395:
		$f.l=1473;
		v20=(v20 + 1)|0;
		{ $b=1321; break; }
	case 1398:
		$f.l=1497;
		v1.pointCount=v49;
		$f.l=1498;
		return;
}
}
//org/jbox2d/collision/Collision$EPCollider:computeEdgeSeparation
function _24d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1502;
		v0=a0;
		v1=a1;
		v2=$g102;
		v1.type=v2;
		$f.l=1503;
		v10=v1;
		v11=v0.m_front;
		if(v11==0) {$b=11; break;}
		v12=0;
		{ $b=12; break; }
	case 11:
		v12=1;
	case 12:
		v1.index=v12;
		$f.l=1504;
		v1.separation=3.4028235E38;
		$f.l=1505;
		v13=v0.m_normal;
		v3=v13.x;
		$f.l=1506;
		v13=v0.m_normal;
		v4=v13.y;
		$f.l=1508;
		v5=0;
	case 23:
		v14=v0.m_polygonB;
		v15=v14.count;
		if(v5>=v15) {$b=53; break;}
		$f.l=1509;
		v14=v0.m_polygonB;
		v16=v14.vertices;
		v6=v16[v5];
		$f.l=1510;
		v17=v6.x;
		v13=v0.m_v1;
		v18=v13.x;
		v7=v17 - v18;
		$f.l=1511;
		v18=v6.y;
		v13=v0.m_v1;
		v17=v13.y;
		v8=v18 - v17;
		$f.l=1512;
		v18=v3 * v7;
		v17=v4 * v8;
		v9=v18 + v17;
		$f.l=1513;
		v18=v1.separation;
		v12=(v9 != v9 || v18 != v18) ? 1 : (v9 > v18) - (v9 < v18);
		if(v12>=0) {$b=50; break;}
		$f.l=1514;
		v1.separation=v9;
	case 50:
		$f.l=1508;
		v5=(v5 + 1)|0;
		{ $b=23; break; }
	case 53:
		$f.l=1517;
		return;
}
}
//org/jbox2d/collision/Collision$EPCollider:computePolygonSeparation
function _24e(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=1523;
		v0=a0;
		v1=a1;
		v2=$g101;
		v1.type=v2;
		$f.l=1524;
		v1.index=-1;
		$f.l=1525;
		v1.separation=-3.4028235E38;
		$f.l=1527;
		v11=v0.perp;
		v12=v0.m_normal;
		v13=v12.y;
		v13=-v13;
		v11.x=v13;
		$f.l=1528;
		v12=v0.perp;
		v11=v0.m_normal;
		v13=v11.x;
		v12.y=v13;
		$f.l=1530;
		v3=0;
	case 22:
		v14=v0.m_polygonB;
		v15=v14.count;
		if(v3>=v15) {$b=146; break;}
		$f.l=1531;
		v14=v0.m_polygonB;
		v16=v14.normals;
		v4=v16[v3];
		$f.l=1532;
		v14=v0.m_polygonB;
		v16=v14.vertices;
		v5=v16[v3];
		$f.l=1533;
		v12=v0.n;
		v13=v4.x;
		v13=-v13;
		v12.x=v13;
		$f.l=1534;
		v12=v0.n;
		v13=v4.y;
		v13=-v13;
		v12.y=v13;
		$f.l=1538;
		v13=v5.x;
		v12=v0.m_v1;
		v17=v12.x;
		v6=v13 - v17;
		$f.l=1539;
		v17=v5.y;
		v12=v0.m_v1;
		v13=v12.y;
		v7=v17 - v13;
		$f.l=1540;
		v12=v0.n;
		v17=v12.x;
		v17=v17 * v6;
		v12=v0.n;
		v13=v12.y;
		v13=v13 * v7;
		v8=v17 + v13;
		$f.l=1541;
		v17=v5.x;
		v12=v0.m_v2;
		v13=v12.x;
		v6=v17 - v13;
		$f.l=1542;
		v17=v5.y;
		v12=v0.m_v2;
		v13=v12.y;
		v7=v17 - v13;
		$f.l=1543;
		v12=v0.n;
		v17=v12.x;
		v17=v17 * v6;
		v12=v0.n;
		v13=v12.y;
		v13=v13 * v7;
		v9=v17 + v13;
		$f.l=1544;
		v10=_3c(v8,v9);
		;
		$f.l=1546;
		v17=v0.m_radius;
		v18=(v10 != v10 || v17 != v17) ? -1 : (v10 > v17) - (v10 < v17);
		if(v18<=0) {$b=94; break;}
		$f.l=1548;
		v2=$g103;
		v1.type=v2;
		$f.l=1549;
		v1.index=v3;
		$f.l=1550;
		v1.separation=v10;
		$f.l=1551;
		return;
	case 94:
		$f.l=1555;
		v12=v0.n;
		v17=v12.x;
		v12=v0.perp;
		v13=v12.x;
		v17=v17 * v13;
		v12=v0.n;
		v13=v12.y;
		v12=v0.perp;
		v19=v12.y;
		v19=v13 * v19;
		v19=v17 + v19;
		v18=(v19 != v19 || 0.0 != 0.0) ? -1 : (v19 > 0.0) - (v19 < 0.0);
		if(v18<0) {$b=120; break;}
		$f.l=1556;
		v12=v0.temp;
		v11=v0.n;
		v12=_28(v12,v11);
		;
		v11=v0.m_upperLimit;
		v12=_2e(v12,v11);
		;
		v11=v0.m_normal;
		v19=_4d(v12,v11);
		;
		v18=(v19 != v19 || -0.03490659 != -0.03490659) ? 1 : (v19 > -0.03490659) - (v19 < -0.03490659);
		if(v18>=0) {$b=132; break;}
		$f.l=1557;
		{ $b=143; break; }
	case 120:
		$f.l=1560;
		v12=v0.temp;
		v11=v0.n;
		v12=_28(v12,v11);
		;
		v11=v0.m_lowerLimit;
		v12=_2e(v12,v11);
		;
		v11=v0.m_normal;
		v19=_4d(v12,v11);
		;
		v18=(v19 != v19 || -0.03490659 != -0.03490659) ? 1 : (v19 > -0.03490659) - (v19 < -0.03490659);
		if(v18>=0) {$b=132; break;}
		$f.l=1561;
		{ $b=143; break; }
	case 132:
		$f.l=1565;
		v19=v1.separation;
		v18=(v10 != v10 || v19 != v19) ? -1 : (v10 > v19) - (v10 < v19);
		if(v18<=0) {$b=143; break;}
		$f.l=1566;
		v2=$g103;
		v1.type=v2;
		$f.l=1567;
		v1.index=v3;
		$f.l=1568;
		v1.separation=v10;
	case 143:
		$f.l=1530;
		v3=(v3 + 1)|0;
		{ $b=22; break; }
	case 146:
		$f.l=1571;
		return;
}
}
//org/jbox2d/dynamics/BodyDef:<init>
function _13e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=119;
v0=a0;
_0(v0);
$f.l=120;
v0.userData=null;
$f.l=121;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.position=v1;
$f.l=122;
v0.angle=0.0;
$f.l=123;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.linearVelocity=v1;
$f.l=124;
v0.angularVelocity=0.0;
$f.l=125;
v0.linearDamping=0.0;
$f.l=126;
v0.angularDamping=0.0;
$f.l=127;
v0.allowSleep=1;
$f.l=128;
v0.awake=1;
$f.l=129;
v0.fixedRotation=0;
$f.l=130;
v0.bullet=0;
$f.l=131;
v2=$g37;
v0.type=v2;
$f.l=132;
v0.active=1;
$f.l=133;
v0.gravityScale=1.0;
$f.l=134;
return;
}
//org/jbox2d/collision/AABB:<init>
function _8c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
_0(v0);
$f.l=43;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.lowerBound=v1;
$f.l=44;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.upperBound=v1;
$f.l=45;
return;
}
//org/jbox2d/collision/AABB:combine
function _24f(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=144;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=v0.lowerBound;
		v4=v1.lowerBound;
		v5=v4.x;
		v4=v2.lowerBound;
		v6=v4.x;
		v7=(v5 != v5 || v6 != v6) ? 1 : (v5 > v6) - (v5 < v6);
		if(v7>=0) {$b=14; break;}
		v4=v1.lowerBound;
		v6=v4.x;
		{ $b=16; break; }
	case 14:
		v4=v2.lowerBound;
		v6=v4.x;
	case 16:
		v3.x=v6;
		$f.l=145;
		v4=v0.lowerBound;
		v3=v1.lowerBound;
		v6=v3.y;
		v3=v2.lowerBound;
		v5=v3.y;
		v7=(v6 != v6 || v5 != v5) ? 1 : (v6 > v5) - (v6 < v5);
		if(v7>=0) {$b=28; break;}
		v3=v1.lowerBound;
		v6=v3.y;
		{ $b=30; break; }
	case 28:
		v3=v2.lowerBound;
		v6=v3.y;
	case 30:
		v4.y=v6;
		$f.l=146;
		v4=v0.upperBound;
		v3=v1.upperBound;
		v6=v3.x;
		v3=v2.upperBound;
		v5=v3.x;
		v7=(v6 != v6 || v5 != v5) ? -1 : (v6 > v5) - (v6 < v5);
		if(v7<=0) {$b=42; break;}
		v3=v1.upperBound;
		v6=v3.x;
		{ $b=44; break; }
	case 42:
		v3=v2.upperBound;
		v6=v3.x;
	case 44:
		v4.x=v6;
		$f.l=147;
		v4=v0.upperBound;
		v3=v1.upperBound;
		v6=v3.y;
		v3=v2.upperBound;
		v5=v3.y;
		v7=(v6 != v6 || v5 != v5) ? -1 : (v6 > v5) - (v6 < v5);
		if(v7<=0) {$b=56; break;}
		v3=v1.upperBound;
		v6=v3.y;
		{ $b=58; break; }
	case 56:
		v3=v2.upperBound;
		v6=v3.y;
	case 58:
		v4.y=v6;
		$f.l=148;
		return;
}
}
//org/jbox2d/collision/AABB:getPerimeter
function _250(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=156;
v0=a0;
v1=v0.upperBound;
v2=v1.x;
v1=v0.lowerBound;
v3=v1.x;
v3=v2 - v3;
v1=v0.upperBound;
v2=v1.y;
v3=v3 + v2;
v1=v0.lowerBound;
v2=v1.y;
v3=v3 - v2;
v3=2.0 * v3;
return v3;
}
//org/jbox2d/collision/AABB:testOverlap
function _251(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=310;
		v0=a0;
		v1=a1;
		v2=v1.lowerBound;
		v3=v2.x;
		v2=v0.upperBound;
		v4=v2.x;
		v4=v3 - v4;
		v5=(v4 != v4 || 0.0 != 0.0) ? -1 : (v4 > 0.0) - (v4 < 0.0);
		if(v5>0) {$b=17; break;}
		v2=v1.lowerBound;
		v4=v2.y;
		v2=v0.upperBound;
		v3=v2.y;
		v4=v4 - v3;
		v5=(v4 != v4 || 0.0 != 0.0) ? -1 : (v4 > 0.0) - (v4 < 0.0);
		if(v5<=0) {$b=19; break;}
	case 17:
		$f.l=311;
		return 0;
	case 19:
		$f.l=314;
		v2=v0.lowerBound;
		v4=v2.x;
		v2=v1.upperBound;
		v3=v2.x;
		v4=v4 - v3;
		v5=(v4 != v4 || 0.0 != 0.0) ? -1 : (v4 > 0.0) - (v4 < 0.0);
		if(v5>0) {$b=34; break;}
		v2=v0.lowerBound;
		v4=v2.y;
		v2=v1.upperBound;
		v3=v2.y;
		v4=v4 - v3;
		v5=(v4 != v4 || 0.0 != 0.0) ? -1 : (v4 > 0.0) - (v4 < 0.0);
		if(v5<=0) {$b=36; break;}
	case 34:
		$f.l=315;
		return 0;
	case 36:
		$f.l=318;
		return 1;
}
}
//org/jbox2d/collision/AABB:toString
function _252(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=323;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str85);
;
v3=v0.lowerBound;
v1=_23d(v1,v3);
;
v1=_b(v1,$str86);
;
v3=v0.upperBound;
v1=_23d(v1,v3);
;
v1=_b(v1,$str87);
;
v2=v1.$c.$vt[0](v1);
;
$f.l=324;
return v2;
}
//org/jbox2d/callbacks/ContactImpulse:<init>
function _196(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
_0(v0);
$f.l=39;
v1=newArray(70,2);
v0.normalImpulses=v1;
$f.l=40;
v1=newArray(70,2);
v0.tangentImpulses=v1;
return;
}
//org/jbox2d/collision/SeparationFunction$1:<clinit>
function _253(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=435;
		$f.trap=0;
		v0=_254();
		;
		v3=v0.len;
		v4=newArray(6,v3);
		$g99=v4;
		$f.trap=1;
		v4=$g99;
		v1=$g96;
		v3=_4f(v1);
		;
		v4[v3]=1;
		$f.trap=0;
		{ $b=17; break; }
	case 14:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 17:
		$f.trap=2;
		v4=$g99;
		v1=$g98;
		v3=_4f(v1);
		;
		v4[v3]=2;
		$f.trap=0;
		{ $b=27; break; }
	case 24:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 27:
		$f.trap=3;
		v4=$g99;
		v1=$g97;
		v3=_4f(v1);
		;
		v4[v3]=3;
		$f.trap=0;
		{ $b=37; break; }
	case 34:
		$f.trap=0;
		v5=__caught;
		v2=v5;
	case 37:
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,7)) {$b=14; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,7)) {$b=24; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,7)) {$b=34; continue;}
	}
throw error;
}
}
//org/jbox2d/dynamics/joints/MouseJoint:<init>
function _d7(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=66;
		v0=a0;
		v1=a1;
		v2=a2;
		_e2(v0,v1,v2);
		$f.l=45;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_localAnchorB=v3;
		$f.l=46;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_targetA=v3;
		$f.l=52;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_impulse=v3;
		$f.l=58;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_rB=v3;
		$f.l=59;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_localCenterB=v3;
		$f.l=62;
		v4=new org/jbox2d/common/Mat22;
		_235(v4);
		v0.m_mass=v4;
		$f.l=63;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_C=v3;
		$f.l=67;
		v5=$g104;
		if(v5!=0) {$b=42; break;}
		v3=v2.target;
		v5=_1db(v3);
		;
		if(v5!=0) {$b=42; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 42:
		$f.l=68;
		v5=$g104;
		if(v5!=0) {$b=51; break;}
		v7=v2.maxForce;
		v8=(v7 != v7 || 0.0 != 0.0) ? -1 : (v7 > 0.0) - (v7 < 0.0);
		if(v8>=0) {$b=51; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 51:
		$f.l=69;
		v5=$g104;
		if(v5!=0) {$b=60; break;}
		v7=v2.frequencyHz;
		v8=(v7 != v7 || 0.0 != 0.0) ? -1 : (v7 > 0.0) - (v7 < 0.0);
		if(v8>=0) {$b=60; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 60:
		$f.l=70;
		v5=$g104;
		if(v5!=0) {$b=69; break;}
		v7=v2.dampingRatio;
		v8=(v7 != v7 || 0.0 != 0.0) ? -1 : (v7 > 0.0) - (v7 < 0.0);
		if(v8>=0) {$b=69; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 69:
		$f.l=72;
		v3=v0.m_targetA;
		v9=v2.target;
		v9=_28(v3,v9);
		;
		$f.l=73;
		v10=v0.m_bodyB;
		v11=_1a3(v10);
		;
		v9=v0.m_targetA;
		v3=v0.m_localAnchorB;
		_5d(v11,v9,v3);
		$f.l=75;
		v7=v2.maxForce;
		v0.m_maxForce=v7;
		$f.l=76;
		v9=v0.m_impulse;
		_29(v9);
		$f.l=78;
		v7=v2.frequencyHz;
		v0.m_frequencyHz=v7;
		$f.l=79;
		v7=v2.dampingRatio;
		v0.m_dampingRatio=v7;
		$f.l=81;
		v0.m_beta=0.0;
		$f.l=82;
		v0.m_gamma=0.0;
		$f.l=83;
		return;
}
}
//org/jbox2d/dynamics/joints/MouseJoint:initVelocityConstraints
function _255(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=146;
		v0=a0;
		v1=a1;
		v14=v0.m_bodyB;
		v15=v14.m_islandIndex;
		v0.m_indexB=v15;
		$f.l=147;
		v16=v0.m_localCenterB;
		v14=v0.m_bodyB;
		v17=v14.m_sweep;
		v18=v17.localCenter;
		v18=_28(v16,v18);
		;
		$f.l=148;
		v14=v0.m_bodyB;
		v19=v14.m_invMass;
		v0.m_invMassB=v19;
		$f.l=149;
		v14=v0.m_bodyB;
		v19=v14.m_invI;
		v0.m_invIB=v19;
		$f.l=151;
		v20=v1.positions;
		v15=v0.m_indexB;
		v21=v20[v15];
		v2=v21.c;
		$f.l=152;
		v20=v1.positions;
		v15=v0.m_indexB;
		v21=v20[v15];
		v3=v21.a;
		$f.l=153;
		v22=v1.velocities;
		v15=v0.m_indexB;
		v23=v22[v15];
		v4=v23.v;
		$f.l=154;
		v22=v1.velocities;
		v15=v0.m_indexB;
		v23=v22[v15];
		v5=v23.w;
		$f.l=156;
		v24=v0.pool;
		v6=v24.$c.$it[39](v24);
		;
		$f.l=158;
		v25=_2c(v6,v3);
		;
		$f.l=160;
		v14=v0.m_bodyB;
		v7=_1de(v14);
		;
		$f.l=163;
		v19=v0.m_frequencyHz;
		v8=6.2831855 * v19;
		$f.l=166;
		v19=2.0 * v7;
		v26=v0.m_dampingRatio;
		v26=v19 * v26;
		v9=v26 * v8;
		$f.l=169;
		v26=v8 * v8;
		v10=v7 * v26;
		$f.l=174;
		v27=v1.step;
		v11=v27.dt;
		$f.l=175;
		v28=$g104;
		if(v28!=0) {$b=72; break;}
		v26=v11 * v10;
		v26=v9 + v26;
		v29=(v26 != v26 || 1.1920929E-7 != 1.1920929E-7) ? -1 : (v26 > 1.1920929E-7) - (v26 < 1.1920929E-7);
		if(v29>0) {$b=72; break;}
		v30=new java/lang/AssertionError;
		_26(v30);
		throw v30;
	case 72:
		$f.l=176;
		v26=v11 * v10;
		v26=v9 + v26;
		v26=v11 * v26;
		v0.m_gamma=v26;
		$f.l=177;
		v26=v0.m_gamma;
		v29=(v26 != v26 || 0.0 != 0.0) ? -1 : (v26 > 0.0) - (v26 < 0.0);
		if(v29==0) {$b=85; break;}
		$f.l=178;
		v26=v0.m_gamma;
		v26=1.0 / v26;
		v0.m_gamma=v26;
	case 85:
		$f.l=180;
		v26=v11 * v10;
		v19=v0.m_gamma;
		v26=v26 * v19;
		v0.m_beta=v26;
		$f.l=182;
		v24=v0.pool;
		v12=v24.$c.$it[32](v24);
		;
		$f.l=185;
		v18=v0.m_localAnchorB;
		v18=_28(v12,v18);
		;
		v16=v0.m_localCenterB;
		v18=_2e(v18,v16);
		;
		v16=v0.m_rB;
		_39(v6,v18,v16);
		$f.l=190;
		v24=v0.pool;
		v13=v24.$c.$it[47](v24);
		;
		$f.l=191;
		v18=v13.ex;
		v26=v0.m_invMassB;
		v19=v0.m_invIB;
		v16=v0.m_rB;
		v31=v16.y;
		v31=v19 * v31;
		v16=v0.m_rB;
		v19=v16.y;
		v31=v31 * v19;
		v31=v26 + v31;
		v26=v0.m_gamma;
		v31=v31 + v26;
		v18.x=v31;
		$f.l=192;
		v18=v13.ex;
		v31=v0.m_invIB;
		v31=-v31;
		v16=v0.m_rB;
		v26=v16.x;
		v31=v31 * v26;
		v16=v0.m_rB;
		v26=v16.y;
		v31=v31 * v26;
		v18.y=v31;
		$f.l=193;
		v18=v13.ey;
		v16=v13.ex;
		v31=v16.y;
		v18.x=v31;
		$f.l=194;
		v18=v13.ey;
		v31=v0.m_invMassB;
		v26=v0.m_invIB;
		v16=v0.m_rB;
		v19=v16.x;
		v26=v26 * v19;
		v16=v0.m_rB;
		v19=v16.x;
		v26=v26 * v19;
		v31=v31 + v26;
		v26=v0.m_gamma;
		v31=v31 + v26;
		v18.y=v31;
		$f.l=196;
		v32=v0.m_mass;
		_31(v13,v32);
		$f.l=198;
		v18=v0.m_C;
		v18=_28(v18,v2);
		;
		v16=v0.m_rB;
		v18=_36(v18,v16);
		;
		v16=v0.m_targetA;
		v18=_2e(v18,v16);
		;
		$f.l=199;
		v18=v0.m_C;
		v31=v0.m_beta;
		v18=_35(v18,v31);
		;
		$f.l=202;
		v5=v5 * 0.98;
		$f.l=204;
		v27=v1.step;
		v28=v27.warmStarting;
		if(v28==0) {$b=198; break;}
		$f.l=205;
		v18=v0.m_impulse;
		v27=v1.step;
		v31=v27.dtRatio;
		v18=_35(v18,v31);
		;
		$f.l=206;
		v18=v4;
		v31=v4.x;
		v26=v0.m_invMassB;
		v16=v0.m_impulse;
		v19=v16.x;
		v26=v26 * v19;
		v31=v31 + v26;
		v4.x=v31;
		$f.l=207;
		v18=v4;
		v31=v4.y;
		v26=v0.m_invMassB;
		v16=v0.m_impulse;
		v19=v16.y;
		v26=v26 * v19;
		v31=v31 + v26;
		v4.y=v31;
		$f.l=208;
		v31=v0.m_invIB;
		v18=v0.m_rB;
		v16=v0.m_impulse;
		v26=_2f(v18,v16);
		;
		v31=v31 * v26;
		v5=v5 + v31;
		{ $b=201; break; }
	case 198:
		$f.l=210;
		v18=v0.m_impulse;
		_29(v18);
	case 201:
		$f.l=214;
		v22=v1.velocities;
		v15=v0.m_indexB;
		v23=v22[v15];
		v23.w=v5;
		$f.l=216;
		v24=v0.pool;
		v24.$c.$it[43](v24,1);
		$f.l=217;
		v24=v0.pool;
		v24.$c.$it[40](v24,1);
		$f.l=218;
		v24=v0.pool;
		v24.$c.$it[30](v24,1);
		$f.l=219;
		return;
}
}
//org/jbox2d/dynamics/joints/MouseJoint:solvePositionConstraints
function _256(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=223;
v0=a0;
v1=a1;
return 1;
}
//org/jbox2d/dynamics/joints/MouseJoint:solveVelocityConstraints
function _257(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=229;
		v0=a0;
		v1=a1;
		v9=v1.velocities;
		v10=v0.m_indexB;
		v11=v9[v10];
		v2=v11.v;
		$f.l=230;
		v9=v1.velocities;
		v10=v0.m_indexB;
		v11=v9[v10];
		v3=v11.w;
		$f.l=233;
		v12=v0.pool;
		v4=v12.$c.$it[32](v12);
		;
		$f.l=234;
		v13=v0.m_rB;
		_1df(v3,v13,v4);
		$f.l=235;
		v13=_36(v4,v2);
		;
		$f.l=237;
		v12=v0.pool;
		v5=v12.$c.$it[32](v12);
		;
		$f.l=238;
		v12=v0.pool;
		v6=v12.$c.$it[32](v12);
		;
		$f.l=240;
		v13=v0.m_impulse;
		v13=_28(v6,v13);
		;
		v14=v0.m_gamma;
		v13=_35(v13,v14);
		;
		v15=v0.m_C;
		v15=_36(v13,v15);
		;
		v15=_36(v15,v4);
		;
		v15=_3a(v15);
		;
		$f.l=241;
		v16=v0.m_mass;
		_34(v16,v6,v5);
		$f.l=243;
		v7=v6;
		$f.l=244;
		v15=v0.m_impulse;
		v15=_28(v7,v15);
		;
		$f.l=245;
		v15=v0.m_impulse;
		v15=_36(v15,v5);
		;
		$f.l=246;
		v17=v1.step;
		v14=v17.dt;
		v18=v0.m_maxForce;
		v8=v14 * v18;
		$f.l=247;
		v15=v0.m_impulse;
		v18=_22f(v15);
		;
		v14=v8 * v8;
		v19=(v18 != v18 || v14 != v14) ? -1 : (v18 > v14) - (v18 < v14);
		if(v19<=0) {$b=63; break;}
		$f.l=248;
		v15=v0.m_impulse;
		v13=v0.m_impulse;
		v18=_258(v13);
		;
		v18=v8 / v18;
		v15=_35(v15,v18);
		;
	case 63:
		$f.l=250;
		v15=v0.m_impulse;
		v15=_28(v5,v15);
		;
		v15=_2e(v15,v7);
		;
		$f.l=252;
		v15=v2;
		v18=v2.x;
		v14=v0.m_invMassB;
		v20=v5.x;
		v20=v14 * v20;
		v20=v18 + v20;
		v2.x=v20;
		$f.l=253;
		v15=v2;
		v20=v2.y;
		v18=v0.m_invMassB;
		v14=v5.y;
		v18=v18 * v14;
		v20=v20 + v18;
		v2.y=v20;
		$f.l=254;
		v20=v0.m_invIB;
		v15=v0.m_rB;
		v18=_2f(v15,v5);
		;
		v20=v20 * v18;
		v3=v3 + v20;
		$f.l=257;
		v9=v1.velocities;
		v10=v0.m_indexB;
		v11=v9[v10];
		v11.w=v3;
		$f.l=259;
		v12=v0.pool;
		v12.$c.$it[43](v12,3);
		$f.l=260;
		return;
}
}
//org/jbox2d/dynamics/joints/MouseJoint:<clinit>
function _259(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=43;
		v0=vm.getClass(71);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g104=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/PrismaticJoint:<init>
function _d9(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=145;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=132;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=133;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=146;
v3=new org/jbox2d/common/Vec2;
v4=v2.localAnchorA;
_25a(v3,v4);
v0.m_localAnchorA=v3;
$f.l=147;
v4=new org/jbox2d/common/Vec2;
v3=v2.localAnchorB;
_25a(v4,v3);
v0.m_localAnchorB=v4;
$f.l=148;
v4=new org/jbox2d/common/Vec2;
v3=v2.localAxisA;
_25a(v4,v3);
v0.m_localXAxisA=v4;
$f.l=149;
v4=v0.m_localXAxisA;
v5=_53(v4);
;
$f.l=150;
v4=new org/jbox2d/common/Vec2;
_1a(v4);
v0.m_localYAxisA=v4;
$f.l=151;
v4=v0.m_localXAxisA;
v3=v0.m_localYAxisA;
_1df(1.0,v4,v3);
$f.l=152;
v5=v2.referenceAngle;
v0.m_referenceAngle=v5;
$f.l=154;
v6=new org/jbox2d/common/Vec3;
_25b(v6);
v0.m_impulse=v6;
$f.l=155;
v0.m_motorMass=0.0;
$f.l=156;
v0.m_motorImpulse=0.0;
$f.l=158;
v5=v2.lowerTranslation;
v0.m_lowerTranslation=v5;
$f.l=159;
v5=v2.upperTranslation;
v0.m_upperTranslation=v5;
$f.l=160;
v5=v2.maxMotorForce;
v0.m_maxMotorForce=v5;
$f.l=161;
v5=v2.motorSpeed;
v0.m_motorSpeed=v5;
$f.l=162;
v7=v2.enableLimit;
v0.m_enableLimit=v7;
$f.l=163;
v7=v2.enableMotor;
v0.m_enableMotor=v7;
$f.l=164;
v8=$g105;
v0.m_limitState=v8;
$f.l=166;
v9=new org/jbox2d/common/Mat33;
_25c(v9);
v0.m_K=v9;
$f.l=167;
v4=new org/jbox2d/common/Vec2;
_1a(v4);
v0.m_axis=v4;
$f.l=168;
v4=new org/jbox2d/common/Vec2;
_1a(v4);
v0.m_perp=v4;
$f.l=169;
return;
}
//org/jbox2d/dynamics/joints/PrismaticJoint:initVelocityConstraints
function _25d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=393;
		v0=a0;
		v1=a1;
		v26=v0.m_bodyA;
		v27=v26.m_islandIndex;
		v0.m_indexA=v27;
		$f.l=394;
		v26=v0.m_bodyB;
		v27=v26.m_islandIndex;
		v0.m_indexB=v27;
		$f.l=395;
		v28=v0.m_localCenterA;
		v26=v0.m_bodyA;
		v29=v26.m_sweep;
		v30=v29.localCenter;
		v30=_28(v28,v30);
		;
		$f.l=396;
		v30=v0.m_localCenterB;
		v26=v0.m_bodyB;
		v29=v26.m_sweep;
		v28=v29.localCenter;
		v30=_28(v30,v28);
		;
		$f.l=397;
		v26=v0.m_bodyA;
		v31=v26.m_invMass;
		v0.m_invMassA=v31;
		$f.l=398;
		v26=v0.m_bodyB;
		v31=v26.m_invMass;
		v0.m_invMassB=v31;
		$f.l=399;
		v26=v0.m_bodyA;
		v31=v26.m_invI;
		v0.m_invIA=v31;
		$f.l=400;
		v26=v0.m_bodyB;
		v31=v26.m_invI;
		v0.m_invIB=v31;
		$f.l=402;
		v32=v1.positions;
		v27=v0.m_indexA;
		v33=v32[v27];
		v2=v33.c;
		$f.l=403;
		v32=v1.positions;
		v27=v0.m_indexA;
		v33=v32[v27];
		v3=v33.a;
		$f.l=404;
		v34=v1.velocities;
		v27=v0.m_indexA;
		v35=v34[v27];
		v4=v35.v;
		$f.l=405;
		v34=v1.velocities;
		v27=v0.m_indexA;
		v35=v34[v27];
		v5=v35.w;
		$f.l=407;
		v32=v1.positions;
		v27=v0.m_indexB;
		v33=v32[v27];
		v6=v33.c;
		$f.l=408;
		v32=v1.positions;
		v27=v0.m_indexB;
		v33=v32[v27];
		v7=v33.a;
		$f.l=409;
		v34=v1.velocities;
		v27=v0.m_indexB;
		v35=v34[v27];
		v8=v35.v;
		$f.l=410;
		v34=v1.velocities;
		v27=v0.m_indexB;
		v35=v34[v27];
		v9=v35.w;
		$f.l=412;
		v36=v0.pool;
		v10=v36.$c.$it[39](v36);
		;
		$f.l=413;
		v36=v0.pool;
		v11=v36.$c.$it[39](v36);
		;
		$f.l=414;
		v36=v0.pool;
		v12=v36.$c.$it[32](v36);
		;
		$f.l=415;
		v36=v0.pool;
		v13=v36.$c.$it[32](v36);
		;
		$f.l=416;
		v36=v0.pool;
		v14=v36.$c.$it[32](v36);
		;
		$f.l=417;
		v36=v0.pool;
		v15=v36.$c.$it[32](v36);
		;
		$f.l=419;
		v37=_2c(v10,v3);
		;
		$f.l=420;
		v37=_2c(v11,v7);
		;
		$f.l=423;
		v30=v0.m_localAnchorA;
		v30=_28(v12,v30);
		;
		v28=v0.m_localCenterA;
		v30=_2e(v30,v28);
		;
		_39(v10,v30,v14);
		$f.l=424;
		v30=v0.m_localAnchorB;
		v30=_28(v12,v30);
		;
		v28=v0.m_localCenterB;
		v30=_2e(v30,v28);
		;
		_39(v11,v30,v15);
		$f.l=425;
		v30=_28(v12,v6);
		;
		v30=_2e(v30,v2);
		;
		v30=_36(v30,v15);
		;
		v30=_2e(v30,v14);
		;
		$f.l=427;
		v16=v0.m_invMassA;
		v17=v0.m_invMassB;
		$f.l=428;
		v18=v0.m_invIA;
		v19=v0.m_invIB;
		$f.l=432;
		v30=v0.m_localXAxisA;
		v28=v0.m_axis;
		_39(v10,v30,v28);
		$f.l=433;
		v30=_28(v13,v12);
		;
		v30=_36(v30,v14);
		;
		$f.l=434;
		v30=v0.m_axis;
		v31=_2f(v13,v30);
		;
		v0.m_a1=v31;
		$f.l=435;
		v30=v0.m_axis;
		v31=_2f(v15,v30);
		;
		v0.m_a2=v31;
		$f.l=437;
		v31=v16 + v17;
		v38=v0.m_a1;
		v38=v18 * v38;
		v39=v0.m_a1;
		v39=v38 * v39;
		v39=v31 + v39;
		v38=v0.m_a2;
		v38=v19 * v38;
		v31=v0.m_a2;
		v38=v38 * v31;
		v39=v39 + v38;
		v0.m_motorMass=v39;
		$f.l=438;
		v39=v0.m_motorMass;
		v40=(v39 != v39 || 0.0 != 0.0) ? -1 : (v39 > 0.0) - (v39 < 0.0);
		if(v40<=0) {$b=159; break;}
		$f.l=439;
		v39=v0.m_motorMass;
		v39=1.0 / v39;
		v0.m_motorMass=v39;
	case 159:
		$f.l=445;
		v30=v0.m_localYAxisA;
		v28=v0.m_perp;
		_39(v10,v30,v28);
		$f.l=447;
		v30=_28(v13,v12);
		;
		v30=_36(v30,v14);
		;
		$f.l=448;
		v30=v0.m_perp;
		v39=_2f(v13,v30);
		;
		v0.m_s1=v39;
		$f.l=449;
		v30=v0.m_perp;
		v39=_2f(v15,v30);
		;
		v0.m_s2=v39;
		$f.l=451;
		v39=v16 + v17;
		v38=v0.m_s1;
		v38=v18 * v38;
		v31=v0.m_s1;
		v38=v38 * v31;
		v39=v39 + v38;
		v38=v0.m_s2;
		v38=v19 * v38;
		v31=v0.m_s2;
		v38=v38 * v31;
		v20=v39 + v38;
		$f.l=452;
		v39=v0.m_s1;
		v39=v18 * v39;
		v38=v0.m_s2;
		v38=v19 * v38;
		v21=v39 + v38;
		$f.l=453;
		v39=v0.m_s1;
		v39=v18 * v39;
		v38=v0.m_a1;
		v39=v39 * v38;
		v38=v0.m_s2;
		v38=v19 * v38;
		v31=v0.m_a2;
		v38=v38 * v31;
		v22=v39 + v38;
		$f.l=454;
		v23=v18 + v19;
		$f.l=455;
		v40=(v23 != v23 || 0.0 != 0.0) ? -1 : (v23 > 0.0) - (v23 < 0.0);
		if(v40!=0) {$b=209; break;}
		$f.l=457;
		v23=1.0;
	case 209:
		$f.l=459;
		v39=v0.m_a1;
		v39=v18 * v39;
		v38=v0.m_a2;
		v38=v19 * v38;
		v24=v39 + v38;
		$f.l=460;
		v39=v16 + v17;
		v38=v0.m_a1;
		v38=v18 * v38;
		v31=v0.m_a1;
		v38=v38 * v31;
		v39=v39 + v38;
		v38=v0.m_a2;
		v38=v19 * v38;
		v31=v0.m_a2;
		v38=v38 * v31;
		v25=v39 + v38;
		$f.l=462;
		v41=v0.m_K;
		v42=v41.ex;
		v42=_25e(v42,v20,v21,v22);
		;
		$f.l=463;
		v41=v0.m_K;
		v42=v41.ey;
		v42=_25e(v42,v21,v23,v24);
		;
		$f.l=464;
		v41=v0.m_K;
		v42=v41.ez;
		v42=_25e(v42,v22,v24,v25);
		;
		$f.l=468;
		v43=v0.m_enableLimit;
		if(v43==0) {$b=294; break;}
		$f.l=470;
		v30=v0.m_axis;
		v20=_4d(v30,v12);
		;
		$f.l=471;
		v39=v0.m_upperTranslation;
		v38=v0.m_lowerTranslation;
		v39=v39 - v38;
		v39=_199(v39);
		;
		v40=(v39 != v39 || 0.01 != 0.01) ? 1 : (v39 > 0.01) - (v39 < 0.01);
		if(v40>=0) {$b=256; break;}
		$f.l=472;
		v44=$g106;
		v0.m_limitState=v44;
		{ $b=292; break; }
	case 256:
		$f.l=473;
		v39=v0.m_lowerTranslation;
		v40=(v20 != v20 || v39 != v39) ? 1 : (v20 > v39) - (v20 < v39);
		if(v40>0) {$b=271; break;}
		$f.l=474;
		v44=v0.m_limitState;
		v45=$g107;
		if(v44==v45) {$b=292; break;}
		$f.l=475;
		v45=$g107;
		v0.m_limitState=v45;
		$f.l=476;
		v42=v0.m_impulse;
		v42.z=0.0;
		{ $b=292; break; }
	case 271:
		$f.l=478;
		v39=v0.m_upperTranslation;
		v40=(v20 != v20 || v39 != v39) ? -1 : (v20 > v39) - (v20 < v39);
		if(v40<0) {$b=286; break;}
		$f.l=479;
		v45=v0.m_limitState;
		v44=$g108;
		if(v45==v44) {$b=292; break;}
		$f.l=480;
		v45=$g108;
		v0.m_limitState=v45;
		$f.l=481;
		v42=v0.m_impulse;
		v42.z=0.0;
		{ $b=292; break; }
	case 286:
		$f.l=484;
		v45=$g105;
		v0.m_limitState=v45;
		$f.l=485;
		v42=v0.m_impulse;
		v42.z=0.0;
	case 292:
		$f.l=487;
		{ $b=300; break; }
	case 294:
		$f.l=488;
		v45=$g105;
		v0.m_limitState=v45;
		$f.l=489;
		v42=v0.m_impulse;
		v42.z=0.0;
	case 300:
		$f.l=492;
		v43=v0.m_enableMotor;
		if(v43!=0) {$b=305; break;}
		$f.l=493;
		v0.m_motorImpulse=0.0;
	case 305:
		$f.l=496;
		v46=v1.step;
		v43=v46.warmStarting;
		if(v43==0) {$b=408; break;}
		$f.l=498;
		v42=v0.m_impulse;
		v46=v1.step;
		v39=v46.dtRatio;
		v42=_25f(v42,v39);
		;
		$f.l=499;
		v47=v0;
		v39=v0.m_motorImpulse;
		v46=v1.step;
		v38=v46.dtRatio;
		v39=v39 * v38;
		v0.m_motorImpulse=v39;
		$f.l=501;
		v36=v0.pool;
		v48=v36.$c.$it[32](v36);
		;
		$f.l=502;
		v30=v0.m_axis;
		v30=_28(v13,v30);
		;
		v39=v0.m_motorImpulse;
		v42=v0.m_impulse;
		v38=v42.z;
		v39=v39 + v38;
		v30=_35(v30,v39);
		;
		$f.l=503;
		v30=v0.m_perp;
		v30=_28(v48,v30);
		;
		v42=v0.m_impulse;
		v39=v42.x;
		v30=_35(v30,v39);
		;
		v30=_36(v30,v13);
		;
		$f.l=505;
		v42=v0.m_impulse;
		v39=v42.x;
		v38=v0.m_s1;
		v39=v39 * v38;
		v42=v0.m_impulse;
		v38=v42.y;
		v39=v39 + v38;
		v38=v0.m_motorImpulse;
		v42=v0.m_impulse;
		v31=v42.z;
		v38=v38 + v31;
		v31=v0.m_a1;
		v38=v38 * v31;
		v21=v39 + v38;
		$f.l=506;
		v42=v0.m_impulse;
		v39=v42.x;
		v38=v0.m_s2;
		v39=v39 * v38;
		v42=v0.m_impulse;
		v38=v42.y;
		v39=v39 + v38;
		v38=v0.m_motorImpulse;
		v42=v0.m_impulse;
		v31=v42.z;
		v38=v38 + v31;
		v31=v0.m_a2;
		v38=v38 * v31;
		v22=v39 + v38;
		$f.l=508;
		v30=v4;
		v39=v4.x;
		v38=v48.x;
		v38=v16 * v38;
		v39=v39 - v38;
		v4.x=v39;
		$f.l=509;
		v30=v4;
		v39=v4.y;
		v38=v48.y;
		v38=v16 * v38;
		v39=v39 - v38;
		v4.y=v39;
		$f.l=510;
		v39=v18 * v21;
		v5=v5 - v39;
		$f.l=512;
		v30=v8;
		v39=v8.x;
		v38=v48.x;
		v38=v17 * v38;
		v39=v39 + v38;
		v8.x=v39;
		$f.l=513;
		v30=v8;
		v39=v8.y;
		v38=v48.y;
		v38=v17 * v38;
		v39=v39 + v38;
		v8.y=v39;
		$f.l=514;
		v39=v19 * v22;
		v9=v9 + v39;
		$f.l=516;
		v36=v0.pool;
		v36.$c.$it[43](v36,1);
		$f.l=517;
		{ $b=413; break; }
	case 408:
		$f.l=518;
		v42=v0.m_impulse;
		_260(v42);
		$f.l=519;
		v0.m_motorImpulse=0.0;
	case 413:
		$f.l=523;
		v34=v1.velocities;
		v27=v0.m_indexA;
		v35=v34[v27];
		v35.w=v5;
		$f.l=525;
		v34=v1.velocities;
		v27=v0.m_indexB;
		v35=v34[v27];
		v35.w=v9;
		$f.l=527;
		v36=v0.pool;
		v36.$c.$it[30](v36,2);
		$f.l=528;
		v36=v0.pool;
		v36.$c.$it[43](v36,4);
		$f.l=529;
		return;
}
}
//org/jbox2d/dynamics/joints/PrismaticJoint:solveVelocityConstraints
function _261(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=533;
		v0=a0;
		v1=a1;
		v21=v1.velocities;
		v22=v0.m_indexA;
		v23=v21[v22];
		v2=v23.v;
		$f.l=534;
		v21=v1.velocities;
		v22=v0.m_indexA;
		v23=v21[v22];
		v3=v23.w;
		$f.l=535;
		v21=v1.velocities;
		v22=v0.m_indexB;
		v23=v21[v22];
		v4=v23.v;
		$f.l=536;
		v21=v1.velocities;
		v22=v0.m_indexB;
		v23=v21[v22];
		v5=v23.w;
		$f.l=538;
		v6=v0.m_invMassA;
		v7=v0.m_invMassB;
		$f.l=539;
		v8=v0.m_invIA;
		v9=v0.m_invIB;
		$f.l=541;
		v24=v0.pool;
		v10=v24.$c.$it[32](v24);
		;
		$f.l=544;
		v25=v0.m_enableMotor;
		if(v25==0) {$b=120; break;}
		v26=v0.m_limitState;
		v27=$g106;
		if(v26==v27) {$b=120; break;}
		$f.l=545;
		v28=_28(v10,v4);
		;
		v28=_2e(v28,v2);
		;
		$f.l=546;
		v28=v0.m_axis;
		v29=_4d(v28,v10);
		;
		v30=v0.m_a2;
		v30=v30 * v5;
		v30=v29 + v30;
		v29=v0.m_a1;
		v29=v29 * v3;
		v11=v30 - v29;
		$f.l=547;
		v30=v0.m_motorMass;
		v29=v0.m_motorSpeed;
		v29=v29 - v11;
		v12=v30 * v29;
		$f.l=548;
		v13=v0.m_motorImpulse;
		$f.l=549;
		v31=v1.step;
		v30=v31.dt;
		v29=v0.m_maxMotorForce;
		v14=v30 * v29;
		$f.l=550;
		v30=v0.m_motorImpulse;
		v30=v30 + v12;
		v29=-v14;
		v30=_33(v30,v29,v14);
		;
		v0.m_motorImpulse=v30;
		$f.l=551;
		v30=v0.m_motorImpulse;
		v12=v30 - v13;
		$f.l=553;
		v24=v0.pool;
		v15=v24.$c.$it[32](v24);
		;
		$f.l=554;
		v28=v0.m_axis;
		v28=_28(v15,v28);
		;
		v28=_35(v28,v12);
		;
		$f.l=555;
		v30=v0.m_a1;
		v16=v12 * v30;
		$f.l=556;
		v30=v0.m_a2;
		v17=v12 * v30;
		$f.l=558;
		v28=v2;
		v30=v2.x;
		v29=v15.x;
		v29=v6 * v29;
		v30=v30 - v29;
		v2.x=v30;
		$f.l=559;
		v28=v2;
		v30=v2.y;
		v29=v15.y;
		v29=v6 * v29;
		v30=v30 - v29;
		v2.y=v30;
		$f.l=560;
		v30=v8 * v16;
		v3=v3 - v30;
		$f.l=562;
		v28=v4;
		v30=v4.x;
		v29=v15.x;
		v29=v7 * v29;
		v30=v30 + v29;
		v4.x=v30;
		$f.l=563;
		v28=v4;
		v30=v4.y;
		v29=v15.y;
		v29=v7 * v29;
		v30=v30 + v29;
		v4.y=v30;
		$f.l=564;
		v30=v9 * v17;
		v5=v5 + v30;
		$f.l=566;
		v24=v0.pool;
		v24.$c.$it[43](v24,1);
	case 120:
		$f.l=569;
		v24=v0.pool;
		v32=v24.$c.$it[32](v24);
		;
		$f.l=570;
		v28=_28(v10,v4);
		;
		v28=_2e(v28,v2);
		;
		$f.l=571;
		v28=v0.m_perp;
		v30=_4d(v28,v10);
		;
		v29=v0.m_s2;
		v29=v29 * v5;
		v30=v30 + v29;
		v29=v0.m_s1;
		v29=v29 * v3;
		v30=v30 - v29;
		v32.x=v30;
		$f.l=572;
		v30=v5 - v3;
		v32.y=v30;
		$f.l=575;
		v25=v0.m_enableLimit;
		if(v25==0) {$b=319; break;}
		v27=v0.m_limitState;
		v26=$g105;
		if(v27==v26) {$b=319; break;}
		$f.l=578;
		v28=_28(v10,v4);
		;
		v28=_2e(v28,v2);
		;
		$f.l=579;
		v28=v0.m_axis;
		v30=_4d(v28,v10);
		;
		v29=v0.m_a2;
		v29=v29 * v5;
		v30=v30 + v29;
		v29=v0.m_a1;
		v29=v29 * v3;
		v12=v30 - v29;
		$f.l=581;
		v24=v0.pool;
		v33=v24.$c.$it[28](v24);
		;
		$f.l=582;
		v30=v32.x;
		v29=v32.y;
		v34=_25e(v33,v30,v29,v12);
		;
		$f.l=584;
		v24=v0.pool;
		v35=v24.$c.$it[28](v24);
		;
		$f.l=585;
		v24=v0.pool;
		v36=v24.$c.$it[28](v24);
		;
		$f.l=587;
		v34=v0.m_impulse;
		v34=_262(v35,v34);
		;
		$f.l=588;
		v37=v0.m_K;
		v34=_263(v33);
		;
		_264(v37,v34,v36);
		$f.l=590;
		v34=v0.m_impulse;
		v34=_265(v34,v36);
		;
		$f.l=592;
		v27=v0.m_limitState;
		v26=$g107;
		if(v27!=v26) {$b=191; break;}
		$f.l=593;
		v34=v0.m_impulse;
		v38=v0.m_impulse;
		v30=v38.z;
		v30=_228(v30,0.0);
		;
		v34.z=v30;
		{ $b=201; break; }
	case 191:
		$f.l=594;
		v27=v0.m_limitState;
		v26=$g108;
		if(v27!=v26) {$b=201; break;}
		$f.l=595;
		v38=v0.m_impulse;
		v34=v0.m_impulse;
		v30=v34.z;
		v30=_3c(v30,0.0);
		;
		v38.z=v30;
	case 201:
		$f.l=600;
		v24=v0.pool;
		v39=v24.$c.$it[32](v24);
		;
		$f.l=601;
		v24=v0.pool;
		v40=v24.$c.$it[32](v24);
		;
		$f.l=603;
		v37=v0.m_K;
		v38=v37.ez;
		v30=v38.x;
		v37=v0.m_K;
		v38=v37.ez;
		v29=v38.y;
		v28=_30(v10,v30,v29);
		;
		v38=v0.m_impulse;
		v30=v38.z;
		v29=v35.z;
		v30=v30 - v29;
		v28=_35(v28,v30);
		;
		$f.l=604;
		v28=_28(v39,v32);
		;
		v28=_3a(v28);
		;
		v28=_2e(v28,v10);
		;
		$f.l=606;
		v37=v0.m_K;
		_266(v37,v39,v40);
		$f.l=607;
		v30=v35.x;
		v29=v35.y;
		v28=_267(v40,v30,v29);
		;
		$f.l=608;
		v38=v0.m_impulse;
		v30=v40.x;
		v38.x=v30;
		$f.l=609;
		v38=v0.m_impulse;
		v30=v40.y;
		v38.y=v30;
		$f.l=611;
		v38=v0.m_impulse;
		v38=_262(v36,v38);
		;
		v38=_268(v38,v35);
		;
		$f.l=613;
		v24=v0.pool;
		v18=v24.$c.$it[32](v24);
		;
		$f.l=614;
		v28=v0.m_axis;
		v28=_28(v10,v28);
		;
		v30=v36.z;
		v28=_35(v28,v30);
		;
		$f.l=615;
		v28=v0.m_perp;
		v28=_28(v18,v28);
		;
		v30=v36.x;
		v28=_35(v28,v30);
		;
		v28=_36(v28,v10);
		;
		$f.l=617;
		v30=v36.x;
		v29=v0.m_s1;
		v30=v30 * v29;
		v29=v36.y;
		v30=v30 + v29;
		v29=v36.z;
		v41=v0.m_a1;
		v41=v29 * v41;
		v19=v30 + v41;
		$f.l=618;
		v41=v36.x;
		v30=v0.m_s2;
		v41=v41 * v30;
		v30=v36.y;
		v41=v41 + v30;
		v30=v36.z;
		v29=v0.m_a2;
		v30=v30 * v29;
		v20=v41 + v30;
		$f.l=620;
		v28=v2;
		v41=v2.x;
		v30=v18.x;
		v30=v6 * v30;
		v41=v41 - v30;
		v2.x=v41;
		$f.l=621;
		v28=v2;
		v41=v2.y;
		v30=v18.y;
		v30=v6 * v30;
		v41=v41 - v30;
		v2.y=v41;
		$f.l=622;
		v41=v8 * v19;
		v3=v3 - v41;
		$f.l=624;
		v28=v4;
		v41=v4.x;
		v30=v18.x;
		v30=v7 * v30;
		v41=v41 + v30;
		v4.x=v41;
		$f.l=625;
		v28=v4;
		v41=v4.y;
		v30=v18.y;
		v30=v7 * v30;
		v41=v41 + v30;
		v4.y=v41;
		$f.l=626;
		v41=v9 * v20;
		v5=v5 + v41;
		$f.l=628;
		v24=v0.pool;
		v24.$c.$it[43](v24,3);
		$f.l=629;
		v24=v0.pool;
		v24.$c.$it[36](v24,3);
		$f.l=630;
		{ $b=397; break; }
	case 319:
		$f.l=632;
		v24=v0.pool;
		v42=v24.$c.$it[32](v24);
		;
		$f.l=633;
		v37=v0.m_K;
		v28=_3a(v32);
		;
		_266(v37,v28,v42);
		$f.l=634;
		v28=_3a(v32);
		;
		$f.l=636;
		v38=v0.m_impulse;
		v41=v38.x;
		v30=v42.x;
		v41=v41 + v30;
		v38.x=v41;
		$f.l=637;
		v38=v0.m_impulse;
		v41=v38.y;
		v30=v42.y;
		v41=v41 + v30;
		v38.y=v41;
		$f.l=639;
		v24=v0.pool;
		v43=v24.$c.$it[32](v24);
		;
		$f.l=640;
		v28=v0.m_perp;
		v28=_28(v43,v28);
		;
		v41=v42.x;
		v28=_35(v28,v41);
		;
		$f.l=641;
		v41=v42.x;
		v30=v0.m_s1;
		v41=v41 * v30;
		v30=v42.y;
		v14=v41 + v30;
		$f.l=642;
		v41=v42.x;
		v30=v0.m_s2;
		v41=v41 * v30;
		v30=v42.y;
		v44=v41 + v30;
		$f.l=644;
		v28=v2;
		v41=v2.x;
		v30=v43.x;
		v30=v6 * v30;
		v41=v41 - v30;
		v2.x=v41;
		$f.l=645;
		v28=v2;
		v41=v2.y;
		v30=v43.y;
		v30=v6 * v30;
		v41=v41 - v30;
		v2.y=v41;
		$f.l=646;
		v41=v8 * v14;
		v3=v3 - v41;
		$f.l=648;
		v28=v4;
		v41=v4.x;
		v30=v43.x;
		v30=v7 * v30;
		v41=v41 + v30;
		v4.x=v41;
		$f.l=649;
		v28=v4;
		v41=v4.y;
		v30=v43.y;
		v30=v7 * v30;
		v41=v41 + v30;
		v4.y=v41;
		$f.l=650;
		v41=v9 * v44;
		v5=v5 + v41;
		$f.l=652;
		v24=v0.pool;
		v24.$c.$it[43](v24,2);
	case 397:
		$f.l=656;
		v21=v1.velocities;
		v22=v0.m_indexA;
		v23=v21[v22];
		v23.w=v3;
		$f.l=658;
		v21=v1.velocities;
		v22=v0.m_indexB;
		v23=v21[v22];
		v23.w=v5;
		$f.l=660;
		v24=v0.pool;
		v24.$c.$it[43](v24,2);
		$f.l=661;
		return;
}
}
//org/jbox2d/dynamics/joints/PrismaticJoint:solvePositionConstraints
function _269(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47,v48,v49;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=667;
		v0=a0;
		v1=a1;
		v36=v0.pool;
		v2=v36.$c.$it[39](v36);
		;
		$f.l=668;
		v36=v0.pool;
		v3=v36.$c.$it[39](v36);
		;
		$f.l=669;
		v36=v0.pool;
		v4=v36.$c.$it[32](v36);
		;
		$f.l=670;
		v36=v0.pool;
		v5=v36.$c.$it[32](v36);
		;
		$f.l=671;
		v36=v0.pool;
		v6=v36.$c.$it[32](v36);
		;
		$f.l=672;
		v36=v0.pool;
		v7=v36.$c.$it[32](v36);
		;
		$f.l=673;
		v36=v0.pool;
		v8=v36.$c.$it[32](v36);
		;
		$f.l=674;
		v36=v0.pool;
		v9=v36.$c.$it[32](v36);
		;
		$f.l=675;
		v36=v0.pool;
		v10=v36.$c.$it[32](v36);
		;
		$f.l=677;
		v36=v0.pool;
		v11=v36.$c.$it[28](v36);
		;
		$f.l=679;
		v37=v1.positions;
		v38=v0.m_indexA;
		v39=v37[v38];
		v12=v39.c;
		$f.l=680;
		v37=v1.positions;
		v38=v0.m_indexA;
		v39=v37[v38];
		v13=v39.a;
		$f.l=681;
		v37=v1.positions;
		v38=v0.m_indexB;
		v39=v37[v38];
		v14=v39.c;
		$f.l=682;
		v37=v1.positions;
		v38=v0.m_indexB;
		v39=v37[v38];
		v15=v39.a;
		$f.l=684;
		v40=_2c(v2,v13);
		;
		$f.l=685;
		v40=_2c(v3,v15);
		;
		$f.l=687;
		v16=v0.m_invMassA;
		v17=v0.m_invMassB;
		$f.l=688;
		v18=v0.m_invIA;
		v19=v0.m_invIB;
		$f.l=691;
		v41=v0.m_localAnchorA;
		v41=_28(v9,v41);
		;
		v42=v0.m_localCenterA;
		v42=_2e(v41,v42);
		;
		_39(v2,v42,v4);
		$f.l=692;
		v42=v0.m_localAnchorB;
		v42=_28(v9,v42);
		;
		v41=v0.m_localCenterB;
		v42=_2e(v42,v41);
		;
		_39(v3,v42,v5);
		$f.l=693;
		v42=_28(v6,v14);
		;
		v42=_36(v42,v5);
		;
		v42=_2e(v42,v12);
		;
		v42=_2e(v42,v4);
		;
		$f.l=695;
		v42=v0.m_localXAxisA;
		_39(v2,v42,v7);
		$f.l=696;
		v42=_28(v9,v6);
		;
		v42=_36(v42,v4);
		;
		v20=_2f(v42,v7);
		;
		$f.l=697;
		v21=_2f(v5,v7);
		;
		$f.l=698;
		v42=v0.m_localYAxisA;
		_39(v2,v42,v8);
		$f.l=700;
		v42=_28(v9,v6);
		;
		v42=_36(v42,v4);
		;
		v22=_2f(v42,v8);
		;
		$f.l=701;
		v23=_2f(v5,v8);
		;
		$f.l=703;
		v43=_4d(v8,v6);
		;
		v10.x=v43;
		$f.l=704;
		v43=v15 - v13;
		v44=v0.m_referenceAngle;
		v44=v43 - v44;
		v10.y=v44;
		$f.l=706;
		v44=v10.x;
		v24=_199(v44);
		;
		$f.l=707;
		v44=v10.y;
		v25=_199(v44);
		;
		$f.l=709;
		v26=0;
		$f.l=710;
		v27=0.0;
		$f.l=711;
		v45=v0.m_enableLimit;
		if(v45==0) {$b=166; break;}
		$f.l=712;
		v28=_4d(v7,v6);
		;
		$f.l=713;
		v44=v0.m_upperTranslation;
		v43=v0.m_lowerTranslation;
		v44=v44 - v43;
		v44=_199(v44);
		;
		v46=(v44 != v44 || 0.01 != 0.01) ? 1 : (v44 > 0.01) - (v44 < 0.01);
		if(v46>=0) {$b=135; break;}
		$f.l=715;
		v27=_33(v28,-0.2,0.2);
		;
		$f.l=718;
		v44=_199(v28);
		;
		v24=_228(v24,v44);
		;
		$f.l=719;
		v26=1;
		{ $b=166; break; }
	case 135:
		$f.l=720;
		v44=v0.m_lowerTranslation;
		v46=(v28 != v28 || v44 != v44) ? 1 : (v28 > v44) - (v28 < v44);
		if(v46>0) {$b=151; break;}
		$f.l=722;
		v44=v0.m_lowerTranslation;
		v44=v28 - v44;
		v44=v44 + 0.005;
		v27=_33(v44,-0.2,0.0);
		;
		$f.l=725;
		v44=v0.m_lowerTranslation;
		v44=v44 - v28;
		v24=_228(v24,v44);
		;
		$f.l=726;
		v26=1;
		{ $b=166; break; }
	case 151:
		$f.l=727;
		v44=v0.m_upperTranslation;
		v46=(v28 != v28 || v44 != v44) ? -1 : (v28 > v44) - (v28 < v44);
		if(v46<0) {$b=166; break;}
		$f.l=729;
		v44=v0.m_upperTranslation;
		v44=v28 - v44;
		v44=v44 - 0.005;
		v27=_33(v44,0.0,0.2);
		;
		$f.l=732;
		v44=v0.m_upperTranslation;
		v44=v28 - v44;
		v24=_228(v24,v44);
		;
		$f.l=733;
		v26=1;
	case 166:
		$f.l=737;
		if(v26==0) {$b=239; break;}
		$f.l=738;
		v44=v16 + v17;
		v43=v18 * v22;
		v43=v43 * v22;
		v44=v44 + v43;
		v43=v19 * v23;
		v43=v43 * v23;
		v28=v44 + v43;
		$f.l=739;
		v44=v18 * v22;
		v43=v19 * v23;
		v29=v44 + v43;
		$f.l=740;
		v44=v18 * v22;
		v44=v44 * v20;
		v43=v19 * v23;
		v43=v43 * v21;
		v30=v44 + v43;
		$f.l=741;
		v31=v18 + v19;
		$f.l=742;
		v46=(v31 != v31 || 0.0 != 0.0) ? -1 : (v31 > 0.0) - (v31 < 0.0);
		if(v46!=0) {$b=193; break;}
		$f.l=744;
		v31=1.0;
	case 193:
		$f.l=746;
		v44=v18 * v20;
		v43=v19 * v21;
		v32=v44 + v43;
		$f.l=747;
		v44=v16 + v17;
		v43=v18 * v20;
		v43=v43 * v20;
		v44=v44 + v43;
		v43=v19 * v21;
		v43=v43 * v21;
		v33=v44 + v43;
		$f.l=749;
		v36=v0.pool;
		v34=v36.$c.$it[34](v36);
		;
		$f.l=750;
		v47=v34.ex;
		v47=_25e(v47,v28,v29,v30);
		;
		$f.l=751;
		v47=v34.ey;
		v47=_25e(v47,v29,v31,v32);
		;
		$f.l=752;
		v47=v34.ez;
		v47=_25e(v47,v30,v32,v33);
		;
		$f.l=754;
		v36=v0.pool;
		v35=v36.$c.$it[28](v36);
		;
		$f.l=755;
		v44=v10.x;
		v35.x=v44;
		$f.l=756;
		v44=v10.y;
		v35.y=v44;
		$f.l=757;
		v35.z=v27;
		$f.l=759;
		v47=_263(v35);
		;
		_264(v34,v47,v11);
		$f.l=760;
		v36=v0.pool;
		v36.$c.$it[36](v36,1);
		$f.l=761;
		v36=v0.pool;
		v36.$c.$it[41](v36,1);
		$f.l=762;
		{ $b=283; break; }
	case 239:
		$f.l=763;
		v44=v16 + v17;
		v43=v18 * v22;
		v43=v43 * v22;
		v44=v44 + v43;
		v43=v19 * v23;
		v43=v43 * v23;
		v28=v44 + v43;
		$f.l=764;
		v44=v18 * v22;
		v43=v19 * v23;
		v29=v44 + v43;
		$f.l=765;
		v30=v18 + v19;
		$f.l=766;
		v46=(v30 != v30 || 0.0 != 0.0) ? -1 : (v30 > 0.0) - (v30 < 0.0);
		if(v46!=0) {$b=258; break;}
		$f.l=767;
		v30=1.0;
	case 258:
		$f.l=770;
		v36=v0.pool;
		v48=v36.$c.$it[47](v36);
		;
		$f.l=771;
		v42=v48.ex;
		v42=_30(v42,v28,v29);
		;
		$f.l=772;
		v42=v48.ey;
		v42=_30(v42,v29,v30);
		;
		$f.l=775;
		v42=_3a(v10);
		;
		_26a(v48,v42,v9);
		$f.l=776;
		v42=_3a(v10);
		;
		$f.l=778;
		v44=v9.x;
		v11.x=v44;
		$f.l=779;
		v44=v9.y;
		v11.y=v44;
		$f.l=780;
		v11.z=0.0;
		$f.l=782;
		v36=v0.pool;
		v36.$c.$it[40](v36,1);
	case 283:
		$f.l=785;
		v44=v11.x;
		v43=v8.x;
		v44=v44 * v43;
		v43=v11.z;
		v49=v7.x;
		v49=v43 * v49;
		v28=v44 + v49;
		$f.l=786;
		v49=v11.x;
		v44=v8.y;
		v49=v49 * v44;
		v44=v11.z;
		v43=v7.y;
		v44=v44 * v43;
		v29=v49 + v44;
		$f.l=787;
		v49=v11.x;
		v49=v49 * v22;
		v44=v11.y;
		v49=v49 + v44;
		v44=v11.z;
		v44=v44 * v20;
		v30=v49 + v44;
		$f.l=788;
		v49=v11.x;
		v49=v49 * v23;
		v44=v11.y;
		v49=v49 + v44;
		v44=v11.z;
		v44=v44 * v21;
		v31=v49 + v44;
		$f.l=790;
		v42=v12;
		v49=v12.x;
		v44=v16 * v28;
		v49=v49 - v44;
		v12.x=v49;
		$f.l=791;
		v42=v12;
		v49=v12.y;
		v44=v16 * v29;
		v49=v49 - v44;
		v12.y=v49;
		$f.l=792;
		v49=v18 * v30;
		v13=v13 - v49;
		$f.l=793;
		v42=v14;
		v49=v14.x;
		v44=v17 * v28;
		v49=v49 + v44;
		v14.x=v49;
		$f.l=794;
		v42=v14;
		v49=v14.y;
		v44=v17 * v29;
		v49=v49 + v44;
		v14.y=v49;
		$f.l=795;
		v49=v19 * v31;
		v15=v15 + v49;
		$f.l=798;
		v37=v1.positions;
		v38=v0.m_indexA;
		v39=v37[v38];
		v39.a=v13;
		$f.l=800;
		v37=v1.positions;
		v38=v0.m_indexB;
		v39=v37[v38];
		v39.a=v15;
		$f.l=802;
		v36=v0.pool;
		v36.$c.$it[43](v36,7);
		$f.l=803;
		v36=v0.pool;
		v36.$c.$it[36](v36,1);
		$f.l=804;
		v36=v0.pool;
		v36.$c.$it[30](v36,2);
		$f.l=806;
		v46=(v24 != v24 || 0.005 != 0.005) ? 1 : (v24 > 0.005) - (v24 < 0.005);
		if(v46>0) {$b=371; break;}
		v46=(v25 != v25 || 0.03490659 != 0.03490659) ? 1 : (v25 > 0.03490659) - (v25 < 0.03490659);
		if(v46>0) {$b=371; break;}
		v45=1;
		{ $b=372; break; }
	case 371:
		v45=0;
	case 372:
		return v45;
}
}
//org/jbox2d/dynamics/joints/PrismaticJoint:<clinit>
function _26b(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=111;
		v0=vm.getClass(72);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g109=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:<init>
function _e0(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=61;
		v0=a0;
		v1=a1;
		v2=a2;
		v6=_d6(v1);
		;
		_e2(v0,v6,v2);
		$f.l=42;
		v0.m_impulse=0.0;
		$f.l=62;
		v0.world=v1;
		$f.l=63;
		v7=v2.bodies;
		v8=v7.$c.$vt[23](v7);
		;
		if(v8>2) {$b=18; break;}
		$f.l=64;
		v9=new java/lang/IllegalArgumentException;
		_1b8(v9,$str88);
		throw v9;
	case 18:
		$f.l=67;
		v7=v2.bodies;
		v10=newArray(29,0);
		v11=v7.$c.$vt[28](v7,v10);
		;
		v10=vm.cast(v11,29);
		v0.bodies=v10;
		$f.l=69;
		v10=v0.bodies;
		v8=v10.len;
		v12=newArray(70,v8);
		v0.targetLengths=v12;
		$f.l=70;
		v3=0;
	case 31:
		v12=v0.targetLengths;
		v8=v12.len;
		if(v3>=v8) {$b=58; break;}
		$f.l=71;
		v12=v0.targetLengths;
		v8=v12.len;
		v8=(v8 - 1)|0;
		if(v3!=v8) {$b=41; break;}
		v8=0;
		{ $b=42; break; }
	case 41:
		v8=(v3 + 1)|0;
	case 42:
		v4=v8;
		$f.l=72;
		v10=v0.bodies;
		v13=v10[v3];
		v14=_1dd(v13);
		;
		v10=v0.bodies;
		v13=v10[v4];
		v15=_1dd(v13);
		;
		v15=_26c(v14,v15);
		;
		v5=_258(v15);
		;
		$f.l=73;
		v12=v0.targetLengths;
		v12[v3]=v5;
		$f.l=70;
		v3=(v3 + 1)|0;
		{ $b=31; break; }
	case 58:
		$f.l=75;
		v16=_26d(v0);
		;
		v0.targetVolume=v16;
		$f.l=77;
		v7=v2.joints;
		if(v7==null) {$b=73; break;}
		v7=v2.joints;
		v8=v7.$c.$vt[23](v7);
		;
		v7=v2.bodies;
		v17=v7.$c.$vt[23](v7);
		;
		if(v8==v17) {$b=73; break;}
		$f.l=78;
		v9=new java/lang/IllegalArgumentException;
		_1b8(v9,$str89);
		throw v9;
	case 73:
		$f.l=81;
		v7=v2.joints;
		if(v7!=null) {$b=131; break;}
		$f.l=82;
		v18=new org/jbox2d/dynamics/joints/DistanceJointDef;
		_26e(v18);
		v19=v18;
		$f.l=83;
		v10=v0.bodies;
		v17=v10.len;
		v20=newArray(73,v17);
		v0.distanceJoints=v20;
		$f.l=84;
		v4=0;
	case 87:
		v12=v0.targetLengths;
		v17=v12.len;
		if(v4>=v17) {$b=129; break;}
		$f.l=85;
		v12=v0.targetLengths;
		v17=v12.len;
		v17=(v17 - 1)|0;
		if(v4!=v17) {$b=97; break;}
		v17=0;
		{ $b=98; break; }
	case 97:
		v17=(v4 + 1)|0;
	case 98:
		v21=v17;
		$f.l=86;
		v16=v2.frequencyHz;
		v19.frequencyHz=v16;
		$f.l=87;
		v16=v2.dampingRatio;
		v19.dampingRatio=v16;
		$f.l=88;
		v22=v2.collideConnected;
		v19.collideConnected=v22;
		$f.l=89;
		v10=v0.bodies;
		v13=v10[v4];
		v10=v0.bodies;
		v23=v10[v21];
		v10=v0.bodies;
		v24=v10[v4];
		v15=_1dd(v24);
		;
		v10=v0.bodies;
		v24=v10[v21];
		v14=_1dd(v24);
		;
		_26f(v19,v13,v23,v15,v14);
		$f.l=91;
		v20=v0.distanceJoints;
		v25=v0.world;
		v26=_104(v25,v19);
		;
		v27=vm.cast(v26,74);
		v20[v4]=v27;
		$f.l=84;
		v4=(v4 + 1)|0;
		{ $b=87; break; }
	case 129:
		$f.l=93;
		{ $b=137; break; }
	case 131:
		$f.l=94;
		v7=v2.joints;
		v20=newArray(73,0);
		v11=v7.$c.$vt[28](v7,v20);
		;
		v20=vm.cast(v11,73);
		v0.distanceJoints=v20;
	case 137:
		$f.l=97;
		v10=v0.bodies;
		v17=v10.len;
		v28=newArray(38,v17);
		v0.normals=v28;
		$f.l=98;
		v3=0;
	case 144:
		v28=v0.normals;
		v17=v28.len;
		if(v3>=v17) {$b=155; break;}
		$f.l=99;
		v28=v0.normals;
		v15=new org/jbox2d/common/Vec2;
		_1a(v15);
		v28[v3]=v15;
		$f.l=98;
		v3=(v3 + 1)|0;
		{ $b=144; break; }
	case 155:
		$f.l=101;
		return;
}
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:getBodyArea
function _26d(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=111;
		v0=a0;
		v1=0.0;
		$f.l=112;
		v2=0;
	case 5:
		v4=v0.bodies;
		v5=v4.len;
		v5=(v5 - 1)|0;
		if(v2>=v5) {$b=42; break;}
		$f.l=113;
		v4=v0.bodies;
		v5=v4.len;
		v5=(v5 - 1)|0;
		if(v2!=v5) {$b=16; break;}
		v5=0;
		{ $b=17; break; }
	case 16:
		v5=(v2 + 1)|0;
	case 17:
		v3=v5;
		$f.l=114;
		v4=v0.bodies;
		v6=v4[v2];
		v7=_1dd(v6);
		;
		v8=v7.x;
		v4=v0.bodies;
		v6=v4[v3];
		v7=_1dd(v6);
		;
		v9=v7.y;
		v9=v8 * v9;
		v4=v0.bodies;
		v6=v4[v3];
		v7=_1dd(v6);
		;
		v8=v7.x;
		v4=v0.bodies;
		v6=v4[v2];
		v7=_1dd(v6);
		;
		v10=v7.y;
		v10=v8 * v10;
		v10=v9 - v10;
		v1=v1 + v10;
		$f.l=112;
		v2=(v2 + 1)|0;
		{ $b=5; break; }
	case 42:
		$f.l=118;
		v1=v1 * 0.5;
		$f.l=119;
		return v1;
}
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:getSolverArea
function _270(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=123;
		v0=a0;
		v1=a1;
		v2=0.0;
		$f.l=124;
		v3=0;
	case 6:
		v5=v0.bodies;
		v6=v5.len;
		if(v3>=v6) {$b=50; break;}
		$f.l=125;
		v5=v0.bodies;
		v6=v5.len;
		v6=(v6 - 1)|0;
		if(v3!=v6) {$b=16; break;}
		v6=0;
		{ $b=17; break; }
	case 16:
		v6=(v3 + 1)|0;
	case 17:
		v4=v6;
		$f.l=126;
		v5=v0.bodies;
		v7=v5[v3];
		v6=v7.m_islandIndex;
		v8=v1[v6];
		v9=v8.c;
		v10=v9.x;
		v5=v0.bodies;
		v7=v5[v4];
		v6=v7.m_islandIndex;
		v8=v1[v6];
		v9=v8.c;
		v11=v9.y;
		v11=v10 * v11;
		v5=v0.bodies;
		v7=v5[v4];
		v6=v7.m_islandIndex;
		v8=v1[v6];
		v9=v8.c;
		v10=v9.x;
		v5=v0.bodies;
		v7=v5[v3];
		v6=v7.m_islandIndex;
		v8=v1[v6];
		v9=v8.c;
		v12=v9.y;
		v12=v10 * v12;
		v12=v11 - v12;
		v2=v2 + v12;
		$f.l=124;
		v3=(v3 + 1)|0;
		{ $b=6; break; }
	case 50:
		$f.l=130;
		v2=v2 * 0.5;
		$f.l=131;
		return v2;
}
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:constrainEdges
function _271(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=135;
		v0=a0;
		v1=a1;
		v2=0.0;
		$f.l=136;
		v3=0;
	case 6:
		v10=v0.bodies;
		v11=v10.len;
		if(v3>=v11) {$b=72; break;}
		$f.l=137;
		v10=v0.bodies;
		v11=v10.len;
		v11=(v11 - 1)|0;
		if(v3!=v11) {$b=16; break;}
		v11=0;
		{ $b=17; break; }
	case 16:
		v11=(v3 + 1)|0;
	case 17:
		v4=v11;
		$f.l=138;
		v10=v0.bodies;
		v12=v10[v4];
		v11=v12.m_islandIndex;
		v13=v1[v11];
		v14=v13.c;
		v15=v14.x;
		v10=v0.bodies;
		v12=v10[v3];
		v11=v12.m_islandIndex;
		v13=v1[v11];
		v14=v13.c;
		v16=v14.x;
		v5=v15 - v16;
		$f.l=139;
		v10=v0.bodies;
		v12=v10[v4];
		v11=v12.m_islandIndex;
		v13=v1[v11];
		v14=v13.c;
		v16=v14.y;
		v10=v0.bodies;
		v12=v10[v3];
		v11=v12.m_islandIndex;
		v13=v1[v11];
		v14=v13.c;
		v15=v14.y;
		v6=v16 - v15;
		$f.l=140;
		v16=v5 * v5;
		v15=v6 * v6;
		v16=v16 + v15;
		v7=_198(v16);
		;
		$f.l=141;
		v17=(v7 != v7 || 1.1920929E-7 != 1.1920929E-7) ? 1 : (v7 > 1.1920929E-7) - (v7 < 1.1920929E-7);
		if(v17>=0) {$b=56; break;}
		$f.l=142;
		v7=1.0;
	case 56:
		$f.l=144;
		v18=v0.normals;
		v14=v18[v3];
		v16=v6 / v7;
		v14.x=v16;
		$f.l=145;
		v18=v0.normals;
		v14=v18[v3];
		v16=-v5;
		v16=v16 / v7;
		v14.y=v16;
		$f.l=146;
		v2=v2 + v7;
		$f.l=136;
		v3=(v3 + 1)|0;
		{ $b=6; break; }
	case 72:
		$f.l=149;
		v19=v0.pool;
		v20=v19.$c.$it[32](v19);
		;
		$f.l=151;
		v16=v0.targetVolume;
		v15=_270(v0,v1);
		;
		v21=v16 - v15;
		$f.l=152;
		v16=0.5 * v21;
		v5=v16 / v2;
		$f.l=154;
		v22=1;
		$f.l=155;
		v23=0;
	case 86:
		v10=v0.bodies;
		v11=v10.len;
		if(v23>=v11) {$b=153; break;}
		$f.l=156;
		v10=v0.bodies;
		v11=v10.len;
		v11=(v11 - 1)|0;
		if(v23!=v11) {$b=96; break;}
		v11=0;
		{ $b=97; break; }
	case 96:
		v11=(v23 + 1)|0;
	case 97:
		v8=v11;
		$f.l=157;
		v18=v0.normals;
		v14=v18[v23];
		v16=v14.x;
		v18=v0.normals;
		v14=v18[v8];
		v15=v14.x;
		v16=v16 + v15;
		v16=v5 * v16;
		v18=v0.normals;
		v14=v18[v23];
		v15=v14.y;
		v18=v0.normals;
		v14=v18[v8];
		v24=v14.y;
		v24=v15 + v24;
		v24=v5 * v24;
		v14=_30(v20,v16,v24);
		;
		$f.l=160;
		v9=_22f(v20);
		;
		$f.l=161;
		v17=(v9 != v9 || 0.040000003 != 0.040000003) ? -1 : (v9 > 0.040000003) - (v9 < 0.040000003);
		if(v17<=0) {$b=125; break;}
		$f.l=162;
		v24=_198(v9);
		;
		v24=0.2 / v24;
		v14=_35(v20,v24);
		;
	case 125:
		$f.l=164;
		v17=(v9 != v9 || 2.5E-5 != 2.5E-5) ? -1 : (v9 > 2.5E-5) - (v9 < 2.5E-5);
		if(v17<=0) {$b=130; break;}
		$f.l=165;
		v22=0;
	case 130:
		$f.l=167;
		v10=v0.bodies;
		v12=v10[v8];
		v11=v12.m_islandIndex;
		v13=v1[v11];
		v14=v13.c;
		v24=v14.x;
		v16=v20.x;
		v24=v24 + v16;
		v14.x=v24;
		$f.l=168;
		v10=v0.bodies;
		v12=v10[v8];
		v11=v12.m_islandIndex;
		v13=v1[v11];
		v14=v13.c;
		v24=v14.y;
		v16=v20.y;
		v24=v24 + v16;
		v14.y=v24;
		$f.l=155;
		v23=(v23 + 1)|0;
		{ $b=86; break; }
	case 153:
		$f.l=173;
		v19=v0.pool;
		v19.$c.$it[43](v19,1);
		$f.l=175;
		return v22;
}
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:initVelocityConstraints
function _272(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=180;
		v0=a0;
		v1=a1;
		v2=v1.velocities;
		$f.l=181;
		v3=v1.positions;
		$f.l=182;
		v8=v0.pool;
		v9=v0.bodies;
		v10=v9.len;
		v4=v8.$c.$it[37](v8,v10);
		;
		$f.l=184;
		v5=0;
	case 13:
		v9=v0.bodies;
		v10=v9.len;
		if(v5>=v10) {$b=52; break;}
		$f.l=185;
		if(v5!=0) {$b=22; break;}
		v9=v0.bodies;
		v10=v9.len;
		v10=(v10 - 1)|0;
		{ $b=23; break; }
	case 22:
		v10=(v5 - 1)|0;
	case 23:
		v6=v10;
		$f.l=186;
		v9=v0.bodies;
		v10=v9.len;
		v10=(v10 - 1)|0;
		if(v5!=v10) {$b=31; break;}
		v10=0;
		{ $b=32; break; }
	case 31:
		v10=(v5 + 1)|0;
	case 32:
		v7=v10;
		$f.l=187;
		v11=v4[v5];
		v9=v0.bodies;
		v12=v9[v7];
		v10=v12.m_islandIndex;
		v13=v3[v10];
		v14=v13.c;
		v14=_28(v11,v14);
		;
		$f.l=188;
		v14=v4[v5];
		v9=v0.bodies;
		v12=v9[v6];
		v10=v12.m_islandIndex;
		v13=v3[v10];
		v11=v13.c;
		v14=_2e(v14,v11);
		;
		$f.l=184;
		v5=(v5 + 1)|0;
		{ $b=13; break; }
	case 52:
		$f.l=191;
		v15=v1.step;
		v16=v15.warmStarting;
		if(v16==0) {$b=109; break;}
		$f.l=192;
		v17=v0;
		v18=v0.m_impulse;
		v15=v1.step;
		v19=v15.dtRatio;
		v19=v18 * v19;
		v0.m_impulse=v19;
		$f.l=198;
		v5=0;
	case 65:
		v9=v0.bodies;
		v10=v9.len;
		if(v5>=v10) {$b=108; break;}
		$f.l=199;
		v9=v0.bodies;
		v12=v9[v5];
		v10=v12.m_islandIndex;
		v20=v2[v10];
		v14=v20.v;
		v19=v14.x;
		v9=v0.bodies;
		v12=v9[v5];
		v18=v12.m_invMass;
		v11=v4[v5];
		v21=v11.y;
		v21=v18 * v21;
		v21=v21 * 0.5;
		v18=v0.m_impulse;
		v21=v21 * v18;
		v21=v19 + v21;
		v14.x=v21;
		$f.l=200;
		v9=v0.bodies;
		v12=v9[v5];
		v10=v12.m_islandIndex;
		v20=v2[v10];
		v14=v20.v;
		v21=v14.y;
		v9=v0.bodies;
		v12=v9[v5];
		v19=v12.m_invMass;
		v11=v4[v5];
		v18=v11.x;
		v18=-v18;
		v19=v19 * v18;
		v19=v19 * 0.5;
		v18=v0.m_impulse;
		v19=v19 * v18;
		v21=v21 + v19;
		v14.y=v21;
		$f.l=198;
		v5=(v5 + 1)|0;
		{ $b=65; break; }
	case 108:
		{ $b=111; break; }
	case 109:
		$f.l=203;
		v0.m_impulse=0.0;
	case 111:
		$f.l=205;
		return;
}
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:solvePositionConstraints
function _273(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=209;
v0=a0;
v1=a1;
v2=v1.positions;
v3=_271(v0,v2);
;
return v3;
}
//org/jbox2d/dynamics/joints/ConstantVolumeJoint:solveVelocityConstraints
function _274(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=214;
		v0=a0;
		v1=a1;
		v2=0.0;
		$f.l=215;
		v3=0.0;
		$f.l=217;
		v4=v1.velocities;
		$f.l=218;
		v5=v1.positions;
		$f.l=219;
		v10=v0.pool;
		v11=v0.bodies;
		v12=v11.len;
		v6=v10.$c.$it[37](v10,v12);
		;
		$f.l=221;
		v7=0;
	case 17:
		v11=v0.bodies;
		v12=v11.len;
		if(v7>=v12) {$b=73; break;}
		$f.l=222;
		if(v7!=0) {$b=26; break;}
		v11=v0.bodies;
		v12=v11.len;
		v12=(v12 - 1)|0;
		{ $b=27; break; }
	case 26:
		v12=(v7 - 1)|0;
	case 27:
		v8=v12;
		$f.l=223;
		v11=v0.bodies;
		v12=v11.len;
		v12=(v12 - 1)|0;
		if(v7!=v12) {$b=35; break;}
		v12=0;
		{ $b=36; break; }
	case 35:
		v12=(v7 + 1)|0;
	case 36:
		v9=v12;
		$f.l=224;
		v13=v6[v7];
		v11=v0.bodies;
		v14=v11[v9];
		v12=v14.m_islandIndex;
		v15=v5[v12];
		v16=v15.c;
		v16=_28(v13,v16);
		;
		$f.l=225;
		v16=v6[v7];
		v11=v0.bodies;
		v14=v11[v8];
		v12=v14.m_islandIndex;
		v15=v5[v12];
		v13=v15.c;
		v16=_2e(v16,v13);
		;
		$f.l=226;
		v16=v6[v7];
		v17=_22f(v16);
		;
		v11=v0.bodies;
		v14=v11[v7];
		v18=_1de(v14);
		;
		v18=v17 / v18;
		v3=v3 + v18;
		$f.l=227;
		v11=v0.bodies;
		v14=v11[v7];
		v12=v14.m_islandIndex;
		v19=v4[v12];
		v16=v19.v;
		v13=v6[v7];
		v18=_2f(v16,v13);
		;
		v2=v2 + v18;
		$f.l=221;
		v7=(v7 + 1)|0;
		{ $b=17; break; }
	case 73:
		$f.l=229;
		v18=-2.0 * v2;
		v20=v18 / v3;
		$f.l=233;
		v21=v0;
		v18=v0.m_impulse;
		v18=v18 + v20;
		v0.m_impulse=v18;
		$f.l=235;
		v8=0;
	case 83:
		v11=v0.bodies;
		v12=v11.len;
		if(v8>=v12) {$b=124; break;}
		$f.l=236;
		v11=v0.bodies;
		v14=v11[v8];
		v12=v14.m_islandIndex;
		v19=v4[v12];
		v16=v19.v;
		v18=v16.x;
		v11=v0.bodies;
		v14=v11[v8];
		v17=v14.m_invMass;
		v13=v6[v8];
		v22=v13.y;
		v22=v17 * v22;
		v22=v22 * 0.5;
		v22=v22 * v20;
		v22=v18 + v22;
		v16.x=v22;
		$f.l=237;
		v11=v0.bodies;
		v14=v11[v8];
		v12=v14.m_islandIndex;
		v19=v4[v12];
		v16=v19.v;
		v22=v16.y;
		v11=v0.bodies;
		v14=v11[v8];
		v18=v14.m_invMass;
		v13=v6[v8];
		v17=v13.x;
		v17=-v17;
		v18=v18 * v17;
		v18=v18 * 0.5;
		v18=v18 * v20;
		v22=v22 + v18;
		v16.y=v22;
		$f.l=235;
		v8=(v8 + 1)|0;
		{ $b=83; break; }
	case 124:
		$f.l=239;
		return;
}
}
//org/jbox2d/dynamics/joints/PulleyJoint:<init>
function _df(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=77;
		v0=a0;
		v1=a1;
		v2=a2;
		_e2(v0,v1,v2);
		$f.l=49;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_groundAnchorA=v3;
		$f.l=50;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_groundAnchorB=v3;
		$f.l=55;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_localAnchorA=v3;
		$f.l=56;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_localAnchorB=v3;
		$f.l=64;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_uA=v3;
		$f.l=65;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_uB=v3;
		$f.l=66;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_rA=v3;
		$f.l=67;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_rB=v3;
		$f.l=68;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_localCenterA=v3;
		$f.l=69;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_localCenterB=v3;
		$f.l=78;
		v3=v0.m_groundAnchorA;
		v4=v2.groundAnchorA;
		v4=_28(v3,v4);
		;
		$f.l=79;
		v4=v0.m_groundAnchorB;
		v3=v2.groundAnchorB;
		v4=_28(v4,v3);
		;
		$f.l=80;
		v4=v0.m_localAnchorA;
		v3=v2.localAnchorA;
		v4=_28(v4,v3);
		;
		$f.l=81;
		v4=v0.m_localAnchorB;
		v3=v2.localAnchorB;
		v4=_28(v4,v3);
		;
		$f.l=83;
		v5=$g110;
		if(v5!=0) {$b=70; break;}
		v6=v2.ratio;
		v7=(v6 != v6 || 0.0 != 0.0) ? -1 : (v6 > 0.0) - (v6 < 0.0);
		if(v7!=0) {$b=70; break;}
		v8=new java/lang/AssertionError;
		_26(v8);
		throw v8;
	case 70:
		$f.l=84;
		v6=v2.ratio;
		v0.m_ratio=v6;
		$f.l=86;
		v6=v2.lengthA;
		v0.m_lengthA=v6;
		$f.l=87;
		v6=v2.lengthB;
		v0.m_lengthB=v6;
		$f.l=89;
		v6=v2.lengthA;
		v9=v0.m_ratio;
		v10=v2.lengthB;
		v10=v9 * v10;
		v10=v6 + v10;
		v0.m_constant=v10;
		$f.l=90;
		v0.m_impulse=0.0;
		$f.l=91;
		return;
}
}
//org/jbox2d/dynamics/joints/PulleyJoint:initVelocityConstraints
function _275(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=183;
		v0=a0;
		v1=a1;
		v21=v0.m_bodyA;
		v22=v21.m_islandIndex;
		v0.m_indexA=v22;
		$f.l=184;
		v21=v0.m_bodyB;
		v22=v21.m_islandIndex;
		v0.m_indexB=v22;
		$f.l=185;
		v23=v0.m_localCenterA;
		v21=v0.m_bodyA;
		v24=v21.m_sweep;
		v25=v24.localCenter;
		v25=_28(v23,v25);
		;
		$f.l=186;
		v25=v0.m_localCenterB;
		v21=v0.m_bodyB;
		v24=v21.m_sweep;
		v23=v24.localCenter;
		v25=_28(v25,v23);
		;
		$f.l=187;
		v21=v0.m_bodyA;
		v26=v21.m_invMass;
		v0.m_invMassA=v26;
		$f.l=188;
		v21=v0.m_bodyB;
		v26=v21.m_invMass;
		v0.m_invMassB=v26;
		$f.l=189;
		v21=v0.m_bodyA;
		v26=v21.m_invI;
		v0.m_invIA=v26;
		$f.l=190;
		v21=v0.m_bodyB;
		v26=v21.m_invI;
		v0.m_invIB=v26;
		$f.l=192;
		v27=v1.positions;
		v22=v0.m_indexA;
		v28=v27[v22];
		v2=v28.c;
		$f.l=193;
		v27=v1.positions;
		v22=v0.m_indexA;
		v28=v27[v22];
		v3=v28.a;
		$f.l=194;
		v29=v1.velocities;
		v22=v0.m_indexA;
		v30=v29[v22];
		v4=v30.v;
		$f.l=195;
		v29=v1.velocities;
		v22=v0.m_indexA;
		v30=v29[v22];
		v5=v30.w;
		$f.l=197;
		v27=v1.positions;
		v22=v0.m_indexB;
		v28=v27[v22];
		v6=v28.c;
		$f.l=198;
		v27=v1.positions;
		v22=v0.m_indexB;
		v28=v27[v22];
		v7=v28.a;
		$f.l=199;
		v29=v1.velocities;
		v22=v0.m_indexB;
		v30=v29[v22];
		v8=v30.v;
		$f.l=200;
		v29=v1.velocities;
		v22=v0.m_indexB;
		v30=v29[v22];
		v9=v30.w;
		$f.l=202;
		v31=v0.pool;
		v10=v31.$c.$it[39](v31);
		;
		$f.l=203;
		v31=v0.pool;
		v11=v31.$c.$it[39](v31);
		;
		$f.l=204;
		v31=v0.pool;
		v12=v31.$c.$it[32](v31);
		;
		$f.l=206;
		v32=_2c(v10,v3);
		;
		$f.l=207;
		v32=_2c(v11,v7);
		;
		$f.l=210;
		v25=v0.m_localAnchorA;
		v25=_28(v12,v25);
		;
		v23=v0.m_localCenterA;
		v25=_2e(v25,v23);
		;
		v23=v0.m_rA;
		_39(v10,v25,v23);
		$f.l=211;
		v25=v0.m_localAnchorB;
		v25=_28(v12,v25);
		;
		v23=v0.m_localCenterB;
		v25=_2e(v25,v23);
		;
		v23=v0.m_rB;
		_39(v11,v25,v23);
		$f.l=213;
		v25=v0.m_uA;
		v25=_28(v25,v2);
		;
		v23=v0.m_rA;
		v25=_36(v25,v23);
		;
		v23=v0.m_groundAnchorA;
		v25=_2e(v25,v23);
		;
		$f.l=214;
		v25=v0.m_uB;
		v25=_28(v25,v6);
		;
		v23=v0.m_rB;
		v25=_36(v25,v23);
		;
		v23=v0.m_groundAnchorB;
		v25=_2e(v25,v23);
		;
		$f.l=216;
		v25=v0.m_uA;
		v13=_258(v25);
		;
		$f.l=217;
		v25=v0.m_uB;
		v14=_258(v25);
		;
		$f.l=219;
		v33=(v13 != v13 || 0.049999997 != 0.049999997) ? -1 : (v13 > 0.049999997) - (v13 < 0.049999997);
		if(v33<=0) {$b=133; break;}
		$f.l=220;
		v25=v0.m_uA;
		v26=1.0 / v13;
		v25=_35(v25,v26);
		;
		{ $b=136; break; }
	case 133:
		$f.l=222;
		v25=v0.m_uA;
		_29(v25);
	case 136:
		$f.l=225;
		v33=(v14 != v14 || 0.049999997 != 0.049999997) ? -1 : (v14 > 0.049999997) - (v14 < 0.049999997);
		if(v33<=0) {$b=144; break;}
		$f.l=226;
		v25=v0.m_uB;
		v26=1.0 / v14;
		v25=_35(v25,v26);
		;
		{ $b=147; break; }
	case 144:
		$f.l=228;
		v25=v0.m_uB;
		_29(v25);
	case 147:
		$f.l=232;
		v25=v0.m_rA;
		v23=v0.m_uA;
		v15=_2f(v25,v23);
		;
		$f.l=233;
		v25=v0.m_rB;
		v23=v0.m_uB;
		v16=_2f(v25,v23);
		;
		$f.l=235;
		v26=v0.m_invMassA;
		v34=v0.m_invIA;
		v34=v34 * v15;
		v34=v34 * v15;
		v17=v26 + v34;
		$f.l=236;
		v34=v0.m_invMassB;
		v26=v0.m_invIB;
		v26=v26 * v16;
		v26=v26 * v16;
		v18=v34 + v26;
		$f.l=238;
		v34=v0.m_ratio;
		v26=v0.m_ratio;
		v34=v34 * v26;
		v34=v34 * v18;
		v34=v17 + v34;
		v0.m_mass=v34;
		$f.l=240;
		v34=v0.m_mass;
		v33=(v34 != v34 || 0.0 != 0.0) ? -1 : (v34 > 0.0) - (v34 < 0.0);
		if(v33<=0) {$b=182; break;}
		$f.l=241;
		v34=v0.m_mass;
		v34=1.0 / v34;
		v0.m_mass=v34;
	case 182:
		$f.l=244;
		v35=v1.step;
		v36=v35.warmStarting;
		if(v36==0) {$b=262; break;}
		$f.l=247;
		v37=v0;
		v34=v0.m_impulse;
		v35=v1.step;
		v26=v35.dtRatio;
		v34=v34 * v26;
		v0.m_impulse=v34;
		$f.l=250;
		v31=v0.pool;
		v19=v31.$c.$it[32](v31);
		;
		$f.l=251;
		v31=v0.pool;
		v20=v31.$c.$it[32](v31);
		;
		$f.l=253;
		v25=v0.m_uA;
		v25=_28(v19,v25);
		;
		v34=v0.m_impulse;
		v34=-v34;
		v25=_35(v25,v34);
		;
		$f.l=254;
		v25=v0.m_uB;
		v25=_28(v20,v25);
		;
		v34=v0.m_ratio;
		v34=-v34;
		v26=v0.m_impulse;
		v34=v34 * v26;
		v25=_35(v25,v34);
		;
		$f.l=256;
		v25=v4;
		v34=v4.x;
		v26=v0.m_invMassA;
		v38=v19.x;
		v38=v26 * v38;
		v38=v34 + v38;
		v4.x=v38;
		$f.l=257;
		v25=v4;
		v38=v4.y;
		v34=v0.m_invMassA;
		v26=v19.y;
		v34=v34 * v26;
		v38=v38 + v34;
		v4.y=v38;
		$f.l=258;
		v38=v0.m_invIA;
		v25=v0.m_rA;
		v34=_2f(v25,v19);
		;
		v38=v38 * v34;
		v5=v5 + v38;
		$f.l=259;
		v25=v8;
		v38=v8.x;
		v34=v0.m_invMassB;
		v26=v20.x;
		v34=v34 * v26;
		v38=v38 + v34;
		v8.x=v38;
		$f.l=260;
		v25=v8;
		v38=v8.y;
		v34=v0.m_invMassB;
		v26=v20.y;
		v34=v34 * v26;
		v38=v38 + v34;
		v8.y=v38;
		$f.l=261;
		v38=v0.m_invIB;
		v25=v0.m_rB;
		v34=_2f(v25,v20);
		;
		v38=v38 * v34;
		v9=v9 + v38;
		$f.l=263;
		v31=v0.pool;
		v31.$c.$it[43](v31,2);
		$f.l=264;
		{ $b=264; break; }
	case 262:
		$f.l=265;
		v0.m_impulse=0.0;
	case 264:
		$f.l=268;
		v29=v1.velocities;
		v22=v0.m_indexA;
		v30=v29[v22];
		v30.w=v5;
		$f.l=270;
		v29=v1.velocities;
		v22=v0.m_indexB;
		v30=v29[v22];
		v30.w=v9;
		$f.l=272;
		v31=v0.pool;
		v31.$c.$it[43](v31,1);
		$f.l=273;
		v31=v0.pool;
		v31.$c.$it[30](v31,2);
		$f.l=274;
		return;
}
}
//org/jbox2d/dynamics/joints/PulleyJoint:solveVelocityConstraints
function _276(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20;
var $f=vm.frames[vm.fp++];
$f.l=278;
v0=a0;
v1=a1;
v12=v1.velocities;
v13=v0.m_indexA;
v14=v12[v13];
v2=v14.v;
$f.l=279;
v12=v1.velocities;
v13=v0.m_indexA;
v14=v12[v13];
v3=v14.w;
$f.l=280;
v12=v1.velocities;
v13=v0.m_indexB;
v14=v12[v13];
v4=v14.v;
$f.l=281;
v12=v1.velocities;
v13=v0.m_indexB;
v14=v12[v13];
v5=v14.w;
$f.l=283;
v15=v0.pool;
v6=v15.$c.$it[32](v15);
;
$f.l=284;
v15=v0.pool;
v7=v15.$c.$it[32](v15);
;
$f.l=285;
v15=v0.pool;
v8=v15.$c.$it[32](v15);
;
$f.l=286;
v15=v0.pool;
v9=v15.$c.$it[32](v15);
;
$f.l=288;
v16=v0.m_rA;
_1df(v3,v16,v6);
$f.l=289;
v16=_36(v6,v2);
;
$f.l=290;
v16=v0.m_rB;
_1df(v5,v16,v7);
$f.l=291;
v16=_36(v7,v4);
;
$f.l=293;
v16=v0.m_uA;
v17=_4d(v16,v6);
;
v17=-v17;
v18=v0.m_ratio;
v16=v0.m_uB;
v19=_4d(v16,v7);
;
v19=v18 * v19;
v10=v17 - v19;
$f.l=294;
v19=v0.m_mass;
v19=-v19;
v11=v19 * v10;
$f.l=295;
v20=v0;
v19=v0.m_impulse;
v19=v19 + v11;
v0.m_impulse=v19;
$f.l=297;
v16=v0.m_uA;
v16=_28(v8,v16);
;
v19=-v11;
v16=_35(v16,v19);
;
$f.l=298;
v16=v0.m_uB;
v16=_28(v9,v16);
;
v19=v0.m_ratio;
v19=-v19;
v19=v19 * v11;
v16=_35(v16,v19);
;
$f.l=299;
v16=v2;
v19=v2.x;
v18=v0.m_invMassA;
v17=v8.x;
v18=v18 * v17;
v19=v19 + v18;
v2.x=v19;
$f.l=300;
v16=v2;
v19=v2.y;
v18=v0.m_invMassA;
v17=v8.y;
v18=v18 * v17;
v19=v19 + v18;
v2.y=v19;
$f.l=301;
v19=v0.m_invIA;
v16=v0.m_rA;
v18=_2f(v16,v8);
;
v19=v19 * v18;
v3=v3 + v19;
$f.l=302;
v16=v4;
v19=v4.x;
v18=v0.m_invMassB;
v17=v9.x;
v18=v18 * v17;
v19=v19 + v18;
v4.x=v19;
$f.l=303;
v16=v4;
v19=v4.y;
v18=v0.m_invMassB;
v17=v9.y;
v18=v18 * v17;
v19=v19 + v18;
v4.y=v19;
$f.l=304;
v19=v0.m_invIB;
v16=v0.m_rB;
v18=_2f(v16,v9);
;
v19=v19 * v18;
v5=v5 + v19;
$f.l=307;
v12=v1.velocities;
v13=v0.m_indexA;
v14=v12[v13];
v14.w=v3;
$f.l=309;
v12=v1.velocities;
v13=v0.m_indexB;
v14=v12[v13];
v14.w=v5;
$f.l=311;
v15=v0.pool;
v15.$c.$it[43](v15,4);
$f.l=312;
return;
}
//org/jbox2d/dynamics/joints/PulleyJoint:solvePositionConstraints
function _277(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=316;
		v0=a0;
		v1=a1;
		v25=v0.pool;
		v2=v25.$c.$it[39](v25);
		;
		$f.l=317;
		v25=v0.pool;
		v3=v25.$c.$it[39](v25);
		;
		$f.l=318;
		v25=v0.pool;
		v4=v25.$c.$it[32](v25);
		;
		$f.l=319;
		v25=v0.pool;
		v5=v25.$c.$it[32](v25);
		;
		$f.l=320;
		v25=v0.pool;
		v6=v25.$c.$it[32](v25);
		;
		$f.l=321;
		v25=v0.pool;
		v7=v25.$c.$it[32](v25);
		;
		$f.l=322;
		v25=v0.pool;
		v8=v25.$c.$it[32](v25);
		;
		$f.l=323;
		v25=v0.pool;
		v9=v25.$c.$it[32](v25);
		;
		$f.l=324;
		v25=v0.pool;
		v10=v25.$c.$it[32](v25);
		;
		$f.l=326;
		v26=v1.positions;
		v27=v0.m_indexA;
		v28=v26[v27];
		v11=v28.c;
		$f.l=327;
		v26=v1.positions;
		v27=v0.m_indexA;
		v28=v26[v27];
		v12=v28.a;
		$f.l=328;
		v26=v1.positions;
		v27=v0.m_indexB;
		v28=v26[v27];
		v13=v28.c;
		$f.l=329;
		v26=v1.positions;
		v27=v0.m_indexB;
		v28=v26[v27];
		v14=v28.a;
		$f.l=331;
		v29=_2c(v2,v12);
		;
		$f.l=332;
		v29=_2c(v3,v14);
		;
		$f.l=334;
		v30=v0.m_localAnchorA;
		v30=_28(v8,v30);
		;
		v31=v0.m_localCenterA;
		v31=_2e(v30,v31);
		;
		_39(v2,v31,v4);
		$f.l=335;
		v31=v0.m_localAnchorB;
		v31=_28(v8,v31);
		;
		v30=v0.m_localCenterB;
		v31=_2e(v31,v30);
		;
		_39(v3,v31,v5);
		$f.l=337;
		v31=_28(v6,v11);
		;
		v31=_36(v31,v4);
		;
		v30=v0.m_groundAnchorA;
		v31=_2e(v31,v30);
		;
		$f.l=338;
		v31=_28(v7,v13);
		;
		v31=_36(v31,v5);
		;
		v30=v0.m_groundAnchorB;
		v31=_2e(v31,v30);
		;
		$f.l=340;
		v15=_258(v6);
		;
		$f.l=341;
		v16=_258(v7);
		;
		$f.l=343;
		v32=(v15 != v15 || 0.049999997 != 0.049999997) ? -1 : (v15 > 0.049999997) - (v15 < 0.049999997);
		if(v32<=0) {$b=86; break;}
		$f.l=344;
		v33=1.0 / v15;
		v31=_35(v6,v33);
		;
		{ $b=88; break; }
	case 86:
		$f.l=346;
		_29(v6);
	case 88:
		$f.l=349;
		v32=(v16 != v16 || 0.049999997 != 0.049999997) ? -1 : (v16 > 0.049999997) - (v16 < 0.049999997);
		if(v32<=0) {$b=95; break;}
		$f.l=350;
		v33=1.0 / v16;
		v31=_35(v7,v33);
		;
		{ $b=97; break; }
	case 95:
		$f.l=352;
		_29(v7);
	case 97:
		$f.l=356;
		v17=_2f(v4,v6);
		;
		$f.l=357;
		v18=_2f(v5,v7);
		;
		$f.l=359;
		v33=v0.m_invMassA;
		v34=v0.m_invIA;
		v34=v34 * v17;
		v34=v34 * v17;
		v19=v33 + v34;
		$f.l=360;
		v34=v0.m_invMassB;
		v33=v0.m_invIB;
		v33=v33 * v18;
		v33=v33 * v18;
		v20=v34 + v33;
		$f.l=362;
		v34=v0.m_ratio;
		v33=v0.m_ratio;
		v34=v34 * v33;
		v34=v34 * v20;
		v21=v19 + v34;
		$f.l=364;
		v32=(v21 != v21 || 0.0 != 0.0) ? -1 : (v21 > 0.0) - (v21 < 0.0);
		if(v32<=0) {$b=124; break;}
		$f.l=365;
		v21=1.0 / v21;
	case 124:
		$f.l=368;
		v34=v0.m_constant;
		v34=v34 - v15;
		v33=v0.m_ratio;
		v33=v33 * v16;
		v22=v34 - v33;
		$f.l=369;
		v23=_199(v22);
		;
		$f.l=371;
		v34=-v21;
		v24=v34 * v22;
		$f.l=373;
		v31=_28(v9,v6);
		;
		v34=-v24;
		v31=_35(v31,v34);
		;
		$f.l=374;
		v31=_28(v10,v7);
		;
		v34=v0.m_ratio;
		v34=-v34;
		v34=v34 * v24;
		v31=_35(v31,v34);
		;
		$f.l=376;
		v31=v11;
		v34=v11.x;
		v33=v0.m_invMassA;
		v35=v9.x;
		v35=v33 * v35;
		v35=v34 + v35;
		v11.x=v35;
		$f.l=377;
		v31=v11;
		v35=v11.y;
		v34=v0.m_invMassA;
		v33=v9.y;
		v34=v34 * v33;
		v35=v35 + v34;
		v11.y=v35;
		$f.l=378;
		v35=v0.m_invIA;
		v34=_2f(v4,v9);
		;
		v35=v35 * v34;
		v12=v12 + v35;
		$f.l=379;
		v31=v13;
		v35=v13.x;
		v34=v0.m_invMassB;
		v33=v10.x;
		v34=v34 * v33;
		v35=v35 + v34;
		v13.x=v35;
		$f.l=380;
		v31=v13;
		v35=v13.y;
		v34=v0.m_invMassB;
		v33=v10.y;
		v34=v34 * v33;
		v35=v35 + v34;
		v13.y=v35;
		$f.l=381;
		v35=v0.m_invIB;
		v34=_2f(v5,v10);
		;
		v35=v35 * v34;
		v14=v14 + v35;
		$f.l=384;
		v26=v1.positions;
		v27=v0.m_indexA;
		v28=v26[v27];
		v28.a=v12;
		$f.l=386;
		v26=v1.positions;
		v27=v0.m_indexB;
		v28=v26[v27];
		v28.a=v14;
		$f.l=388;
		v25=v0.pool;
		v25.$c.$it[30](v25,2);
		$f.l=389;
		v25=v0.pool;
		v25.$c.$it[43](v25,7);
		$f.l=391;
		v32=(v23 != v23 || 0.005 != 0.005) ? 1 : (v23 > 0.005) - (v23 < 0.005);
		if(v32>=0) {$b=208; break;}
		v36=1;
		{ $b=209; break; }
	case 208:
		v36=0;
	case 209:
		return v36;
}
}
//org/jbox2d/dynamics/joints/PulleyJoint:<clinit>
function _278(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=vm.getClass(75);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g110=v1;
		return;
}
}
//org/jbox2d/dynamics/contacts/PolygonContact:<init>
function _279(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=37;
return;
}
//org/jbox2d/dynamics/contacts/PolygonContact:evaluate
function _27a(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=v0.pool;
v5=v4.$c.$it[38](v4);
;
v6=v0.m_fixtureA;
v7=_23(v6);
;
v8=vm.cast(v7,42);
v6=v0.m_fixtureB;
v7=_23(v6);
;
v9=vm.cast(v7,42);
_57(v5,v1,v8,v2,v9,v3);
$f.l=49;
return;
}
//org/jbox2d/dynamics/contacts/PolygonContact:<clinit>
function _27b(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=33;
		v0=vm.getClass(76);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g111=v1;
		return;
}
}
//java/lang/StringIndexOutOfBoundsException:<init>
function _27c(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=a0;
_167(v0);
$f.l=28;
return;
}
//java/lang/StringIndexOutOfBoundsException:<init>
function _27d(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
v1=a1;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,$str70);
;
v2=_c(v2,v1);
;
v3=v2.$c.$vt[0](v2);
;
_1eb(v0,v3);
$f.l=36;
return;
}
//org/jbox2d/dynamics/contacts/EdgeAndPolygonContact:<init>
function _27e(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=38;
return;
}
//org/jbox2d/dynamics/contacts/EdgeAndPolygonContact:init
function _27f(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=42;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		_19f(v0,v1,v2,v3,v4);
		$f.l=43;
		v5=$g112;
		if(v5!=0) {$b=17; break;}
		v6=v0.m_fixtureA;
		v7=_8e(v6);
		;
		v8=$g12;
		if(v7==v8) {$b=17; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 17:
		$f.l=44;
		v5=$g112;
		if(v5!=0) {$b=27; break;}
		v6=v0.m_fixtureB;
		v8=_8e(v6);
		;
		v7=$g10;
		if(v8==v7) {$b=27; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 27:
		$f.l=45;
		return;
}
}
//org/jbox2d/dynamics/contacts/EdgeAndPolygonContact:evaluate
function _280(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=v0.pool;
v5=v4.$c.$it[38](v4);
;
v6=v0.m_fixtureA;
v7=_23(v6);
;
v8=vm.cast(v7,44);
v6=v0.m_fixtureB;
v7=_23(v6);
;
v9=vm.cast(v7,42);
_5e(v5,v1,v8,v2,v9,v3);
$f.l=51;
return;
}
//org/jbox2d/dynamics/contacts/EdgeAndPolygonContact:<clinit>
function _281(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=34;
		v0=vm.getClass(77);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g112=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/GearJoint:<init>
function _de(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=108;
		v0=a0;
		v1=a1;
		v2=a2;
		_e2(v0,v1,v2);
		$f.l=81;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_localAnchorA=v17;
		$f.l=82;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_localAnchorB=v17;
		$f.l=83;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_localAnchorC=v17;
		$f.l=84;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_localAnchorD=v17;
		$f.l=86;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_localAxisC=v17;
		$f.l=87;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_localAxisD=v17;
		$f.l=99;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_lcA=v17;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_lcB=v17;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_lcC=v17;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_lcD=v17;
		$f.l=103;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_JvAC=v17;
		v17=new org/jbox2d/common/Vec2;
		_1a(v17);
		v0.m_JvBD=v17;
		$f.l=110;
		v18=v2.joint1;
		v0.m_joint1=v18;
		$f.l=111;
		v18=v2.joint2;
		v0.m_joint2=v18;
		$f.l=113;
		v18=v0.m_joint1;
		v19=_e4(v18);
		;
		v0.m_typeA=v19;
		$f.l=114;
		v18=v0.m_joint2;
		v19=_e4(v18);
		;
		v0.m_typeB=v19;
		$f.l=116;
		v20=$g113;
		if(v20!=0) {$b=75; break;}
		v19=v0.m_typeA;
		v21=$g67;
		if(v19==v21) {$b=75; break;}
		v21=v0.m_typeA;
		v19=$g66;
		if(v21==v19) {$b=75; break;}
		v22=new java/lang/AssertionError;
		_26(v22);
		throw v22;
	case 75:
		$f.l=117;
		v20=$g113;
		if(v20!=0) {$b=87; break;}
		v21=v0.m_typeB;
		v19=$g67;
		if(v21==v19) {$b=87; break;}
		v21=v0.m_typeB;
		v19=$g66;
		if(v21==v19) {$b=87; break;}
		v22=new java/lang/AssertionError;
		_26(v22);
		throw v22;
	case 87:
		$f.l=123;
		v18=v0.m_joint1;
		v23=_e5(v18);
		;
		v0.m_bodyC=v23;
		$f.l=124;
		v18=v0.m_joint1;
		v23=_e6(v18);
		;
		v0.m_bodyA=v23;
		$f.l=127;
		v23=v0.m_bodyA;
		v3=v23.m_xf;
		$f.l=128;
		v23=v0.m_bodyA;
		v24=v23.m_sweep;
		v4=v24.a;
		$f.l=129;
		v23=v0.m_bodyC;
		v5=v23.m_xf;
		$f.l=130;
		v23=v0.m_bodyC;
		v24=v23.m_sweep;
		v6=v24.a;
		$f.l=132;
		v21=v0.m_typeA;
		v19=$g67;
		if(v21!=v19) {$b=136; break;}
		$f.l=133;
		v18=v2.joint1;
		v7=vm.cast(v18,78);
		$f.l=134;
		v17=v0.m_localAnchorC;
		v25=v7.m_localAnchorA;
		v25=_28(v17,v25);
		;
		$f.l=135;
		v25=v0.m_localAnchorA;
		v17=v7.m_localAnchorB;
		v25=_28(v25,v17);
		;
		$f.l=136;
		v26=v7.m_referenceAngle;
		v0.m_referenceAngleA=v26;
		$f.l=137;
		v25=v0.m_localAxisC;
		_29(v25);
		$f.l=139;
		v26=v4 - v6;
		v27=v0.m_referenceAngleA;
		v8=v26 - v27;
		$f.l=140;
		{ $b=181; break; }
	case 136:
		$f.l=141;
		v28=v0.pool;
		v29=v28.$c.$it[32](v28);
		;
		$f.l=142;
		v28=v0.pool;
		v9=v28.$c.$it[32](v28);
		;
		$f.l=143;
		v18=v2.joint1;
		v10=vm.cast(v18,72);
		$f.l=144;
		v25=v0.m_localAnchorC;
		v17=v10.m_localAnchorA;
		v25=_28(v25,v17);
		;
		$f.l=145;
		v25=v0.m_localAnchorA;
		v17=v10.m_localAnchorB;
		v25=_28(v25,v17);
		;
		$f.l=146;
		v27=v10.m_referenceAngle;
		v0.m_referenceAngleA=v27;
		$f.l=147;
		v25=v0.m_localAxisC;
		v17=v10.m_localXAxisA;
		v25=_28(v25,v17);
		;
		$f.l=149;
		v11=v0.m_localAnchorC;
		$f.l=150;
		v30=v3.q;
		v25=v0.m_localAnchorA;
		_39(v30,v25,v9);
		$f.l=151;
		v25=v3.p;
		v25=_36(v9,v25);
		;
		v17=v5.p;
		v25=_2e(v25,v17);
		;
		$f.l=152;
		v30=v5.q;
		_230(v30,v9,v29);
		$f.l=153;
		v25=_2e(v29,v11);
		;
		v17=v0.m_localAxisC;
		v8=_4d(v25,v17);
		;
		$f.l=154;
		v28=v0.pool;
		v28.$c.$it[43](v28,2);
	case 181:
		$f.l=157;
		v18=v0.m_joint2;
		v23=_e5(v18);
		;
		v0.m_bodyD=v23;
		$f.l=158;
		v18=v0.m_joint2;
		v23=_e6(v18);
		;
		v0.m_bodyB=v23;
		$f.l=161;
		v23=v0.m_bodyB;
		v31=v23.m_xf;
		$f.l=162;
		v23=v0.m_bodyB;
		v24=v23.m_sweep;
		v32=v24.a;
		$f.l=163;
		v23=v0.m_bodyD;
		v33=v23.m_xf;
		$f.l=164;
		v23=v0.m_bodyD;
		v24=v23.m_sweep;
		v34=v24.a;
		$f.l=166;
		v21=v0.m_typeB;
		v19=$g67;
		if(v21!=v19) {$b=230; break;}
		$f.l=167;
		v18=v2.joint2;
		v12=vm.cast(v18,78);
		$f.l=168;
		v25=v0.m_localAnchorD;
		v17=v12.m_localAnchorA;
		v25=_28(v25,v17);
		;
		$f.l=169;
		v25=v0.m_localAnchorB;
		v17=v12.m_localAnchorB;
		v25=_28(v25,v17);
		;
		$f.l=170;
		v27=v12.m_referenceAngle;
		v0.m_referenceAngleB=v27;
		$f.l=171;
		v25=v0.m_localAxisD;
		_29(v25);
		$f.l=173;
		v27=v32 - v34;
		v26=v0.m_referenceAngleB;
		v13=v27 - v26;
		$f.l=174;
		{ $b=275; break; }
	case 230:
		$f.l=175;
		v28=v0.pool;
		v35=v28.$c.$it[32](v28);
		;
		$f.l=176;
		v28=v0.pool;
		v14=v28.$c.$it[32](v28);
		;
		$f.l=177;
		v18=v2.joint2;
		v15=vm.cast(v18,72);
		$f.l=178;
		v25=v0.m_localAnchorD;
		v17=v15.m_localAnchorA;
		v25=_28(v25,v17);
		;
		$f.l=179;
		v25=v0.m_localAnchorB;
		v17=v15.m_localAnchorB;
		v25=_28(v25,v17);
		;
		$f.l=180;
		v27=v15.m_referenceAngle;
		v0.m_referenceAngleB=v27;
		$f.l=181;
		v25=v0.m_localAxisD;
		v17=v15.m_localXAxisA;
		v25=_28(v25,v17);
		;
		$f.l=183;
		v16=v0.m_localAnchorD;
		$f.l=184;
		v30=v31.q;
		v25=v0.m_localAnchorB;
		_39(v30,v25,v14);
		$f.l=185;
		v25=v31.p;
		v25=_36(v14,v25);
		;
		v17=v33.p;
		v25=_2e(v25,v17);
		;
		$f.l=186;
		v30=v33.q;
		_230(v30,v14,v35);
		$f.l=187;
		v25=_2e(v35,v16);
		;
		v17=v0.m_localAxisD;
		v13=_4d(v25,v17);
		;
		$f.l=188;
		v28=v0.pool;
		v28.$c.$it[43](v28,2);
	case 275:
		$f.l=191;
		v27=v2.ratio;
		v0.m_ratio=v27;
		$f.l=193;
		v27=v0.m_ratio;
		v27=v27 * v13;
		v27=v8 + v27;
		v0.m_constant=v27;
		$f.l=195;
		v0.m_impulse=0.0;
		$f.l=196;
		return;
}
}
//org/jbox2d/dynamics/joints/GearJoint:initVelocityConstraints
function _282(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=230;
		v0=a0;
		v1=a1;
		v22=v0.m_bodyA;
		v23=v22.m_islandIndex;
		v0.m_indexA=v23;
		$f.l=231;
		v22=v0.m_bodyB;
		v23=v22.m_islandIndex;
		v0.m_indexB=v23;
		$f.l=232;
		v22=v0.m_bodyC;
		v23=v22.m_islandIndex;
		v0.m_indexC=v23;
		$f.l=233;
		v22=v0.m_bodyD;
		v23=v22.m_islandIndex;
		v0.m_indexD=v23;
		$f.l=234;
		v24=v0.m_lcA;
		v22=v0.m_bodyA;
		v25=v22.m_sweep;
		v26=v25.localCenter;
		v26=_28(v24,v26);
		;
		$f.l=235;
		v26=v0.m_lcB;
		v22=v0.m_bodyB;
		v25=v22.m_sweep;
		v24=v25.localCenter;
		v26=_28(v26,v24);
		;
		$f.l=236;
		v26=v0.m_lcC;
		v22=v0.m_bodyC;
		v25=v22.m_sweep;
		v24=v25.localCenter;
		v26=_28(v26,v24);
		;
		$f.l=237;
		v26=v0.m_lcD;
		v22=v0.m_bodyD;
		v25=v22.m_sweep;
		v24=v25.localCenter;
		v26=_28(v26,v24);
		;
		$f.l=238;
		v22=v0.m_bodyA;
		v27=v22.m_invMass;
		v0.m_mA=v27;
		$f.l=239;
		v22=v0.m_bodyB;
		v27=v22.m_invMass;
		v0.m_mB=v27;
		$f.l=240;
		v22=v0.m_bodyC;
		v27=v22.m_invMass;
		v0.m_mC=v27;
		$f.l=241;
		v22=v0.m_bodyD;
		v27=v22.m_invMass;
		v0.m_mD=v27;
		$f.l=242;
		v22=v0.m_bodyA;
		v27=v22.m_invI;
		v0.m_iA=v27;
		$f.l=243;
		v22=v0.m_bodyB;
		v27=v22.m_invI;
		v0.m_iB=v27;
		$f.l=244;
		v22=v0.m_bodyC;
		v27=v22.m_invI;
		v0.m_iC=v27;
		$f.l=245;
		v22=v0.m_bodyD;
		v27=v22.m_invI;
		v0.m_iD=v27;
		$f.l=248;
		v28=v1.positions;
		v23=v0.m_indexA;
		v29=v28[v23];
		v2=v29.a;
		$f.l=249;
		v30=v1.velocities;
		v23=v0.m_indexA;
		v31=v30[v23];
		v3=v31.v;
		$f.l=250;
		v30=v1.velocities;
		v23=v0.m_indexA;
		v31=v30[v23];
		v4=v31.w;
		$f.l=253;
		v28=v1.positions;
		v23=v0.m_indexB;
		v29=v28[v23];
		v5=v29.a;
		$f.l=254;
		v30=v1.velocities;
		v23=v0.m_indexB;
		v31=v30[v23];
		v6=v31.v;
		$f.l=255;
		v30=v1.velocities;
		v23=v0.m_indexB;
		v31=v30[v23];
		v7=v31.w;
		$f.l=258;
		v28=v1.positions;
		v23=v0.m_indexC;
		v29=v28[v23];
		v8=v29.a;
		$f.l=259;
		v30=v1.velocities;
		v23=v0.m_indexC;
		v31=v30[v23];
		v9=v31.v;
		$f.l=260;
		v30=v1.velocities;
		v23=v0.m_indexC;
		v31=v30[v23];
		v10=v31.w;
		$f.l=263;
		v28=v1.positions;
		v23=v0.m_indexD;
		v29=v28[v23];
		v11=v29.a;
		$f.l=264;
		v30=v1.velocities;
		v23=v0.m_indexD;
		v31=v30[v23];
		v12=v31.v;
		$f.l=265;
		v30=v1.velocities;
		v23=v0.m_indexD;
		v31=v30[v23];
		v13=v31.w;
		$f.l=267;
		v32=v0.pool;
		v14=v32.$c.$it[39](v32);
		;
		v32=v0.pool;
		v15=v32.$c.$it[39](v32);
		;
		v32=v0.pool;
		v16=v32.$c.$it[39](v32);
		;
		v32=v0.pool;
		v17=v32.$c.$it[39](v32);
		;
		$f.l=268;
		v33=_2c(v14,v2);
		;
		$f.l=269;
		v33=_2c(v15,v5);
		;
		$f.l=270;
		v33=_2c(v16,v8);
		;
		$f.l=271;
		v33=_2c(v17,v11);
		;
		$f.l=273;
		v0.m_mass=0.0;
		$f.l=275;
		v32=v0.pool;
		v18=v32.$c.$it[32](v32);
		;
		$f.l=277;
		v34=v0.m_typeA;
		v35=$g67;
		if(v34!=v35) {$b=176; break;}
		$f.l=278;
		v26=v0.m_JvAC;
		_29(v26);
		$f.l=279;
		v0.m_JwA=1.0;
		$f.l=280;
		v0.m_JwC=1.0;
		$f.l=281;
		v36=v0;
		v27=v0.m_mass;
		v37=v0.m_iA;
		v38=v0.m_iC;
		v38=v37 + v38;
		v38=v27 + v38;
		v0.m_mass=v38;
		{ $b=229; break; }
	case 176:
		$f.l=283;
		v32=v0.pool;
		v19=v32.$c.$it[32](v32);
		;
		$f.l=284;
		v32=v0.pool;
		v20=v32.$c.$it[32](v32);
		;
		$f.l=285;
		v26=v0.m_localAxisC;
		v24=v0.m_JvAC;
		_39(v16,v26,v24);
		$f.l=286;
		v26=v0.m_localAnchorC;
		v26=_28(v18,v26);
		;
		v24=v0.m_lcC;
		v26=_2e(v26,v24);
		;
		_39(v16,v26,v19);
		$f.l=287;
		v26=v0.m_localAnchorA;
		v26=_28(v18,v26);
		;
		v24=v0.m_lcA;
		v26=_2e(v26,v24);
		;
		_39(v14,v26,v20);
		$f.l=288;
		v26=v0.m_JvAC;
		v38=_2f(v19,v26);
		;
		v0.m_JwC=v38;
		$f.l=289;
		v26=v0.m_JvAC;
		v38=_2f(v20,v26);
		;
		v0.m_JwA=v38;
		$f.l=290;
		v36=v0;
		v38=v0.m_mass;
		v37=v0.m_mC;
		v27=v0.m_mA;
		v37=v37 + v27;
		v27=v0.m_iC;
		v39=v0.m_JwC;
		v39=v27 * v39;
		v27=v0.m_JwC;
		v39=v39 * v27;
		v39=v37 + v39;
		v37=v0.m_iA;
		v27=v0.m_JwA;
		v37=v37 * v27;
		v27=v0.m_JwA;
		v37=v37 * v27;
		v39=v39 + v37;
		v39=v38 + v39;
		v0.m_mass=v39;
		$f.l=291;
		v32=v0.pool;
		v32.$c.$it[43](v32,2);
	case 229:
		$f.l=294;
		v35=v0.m_typeB;
		v34=$g67;
		if(v35!=v34) {$b=255; break;}
		$f.l=295;
		v26=v0.m_JvBD;
		_29(v26);
		$f.l=296;
		v39=v0.m_ratio;
		v0.m_JwB=v39;
		$f.l=297;
		v39=v0.m_ratio;
		v0.m_JwD=v39;
		$f.l=298;
		v36=v0;
		v39=v0.m_mass;
		v38=v0.m_ratio;
		v37=v0.m_ratio;
		v38=v38 * v37;
		v37=v0.m_iB;
		v27=v0.m_iD;
		v37=v37 + v27;
		v38=v38 * v37;
		v39=v39 + v38;
		v0.m_mass=v39;
		{ $b=321; break; }
	case 255:
		$f.l=300;
		v32=v0.pool;
		v19=v32.$c.$it[32](v32);
		;
		$f.l=301;
		v32=v0.pool;
		v20=v32.$c.$it[32](v32);
		;
		$f.l=302;
		v32=v0.pool;
		v21=v32.$c.$it[32](v32);
		;
		$f.l=303;
		v26=v0.m_localAxisD;
		_39(v17,v26,v19);
		$f.l=304;
		v26=v0.m_localAnchorD;
		v26=_28(v18,v26);
		;
		v24=v0.m_lcD;
		v26=_2e(v26,v24);
		;
		_39(v17,v26,v20);
		$f.l=305;
		v26=v0.m_localAnchorB;
		v26=_28(v18,v26);
		;
		v24=v0.m_lcB;
		v26=_2e(v26,v24);
		;
		_39(v15,v26,v21);
		$f.l=306;
		v26=v0.m_JvBD;
		v26=_28(v26,v19);
		;
		v39=v0.m_ratio;
		v26=_35(v26,v39);
		;
		$f.l=307;
		v39=v0.m_ratio;
		v38=_2f(v20,v19);
		;
		v39=v39 * v38;
		v0.m_JwD=v39;
		$f.l=308;
		v39=v0.m_ratio;
		v38=_2f(v21,v19);
		;
		v39=v39 * v38;
		v0.m_JwB=v39;
		$f.l=309;
		v36=v0;
		v39=v0.m_mass;
		v38=v0.m_ratio;
		v37=v0.m_ratio;
		v38=v38 * v37;
		v37=v0.m_mD;
		v27=v0.m_mB;
		v37=v37 + v27;
		v38=v38 * v37;
		v37=v0.m_iD;
		v27=v0.m_JwD;
		v37=v37 * v27;
		v27=v0.m_JwD;
		v37=v37 * v27;
		v38=v38 + v37;
		v37=v0.m_iB;
		v27=v0.m_JwB;
		v37=v37 * v27;
		v27=v0.m_JwB;
		v37=v37 * v27;
		v38=v38 + v37;
		v39=v39 + v38;
		v0.m_mass=v39;
		$f.l=310;
		v32=v0.pool;
		v32.$c.$it[43](v32,3);
	case 321:
		$f.l=314;
		v36=v0;
		v39=v0.m_mass;
		v40=(v39 != v39 || 0.0 != 0.0) ? -1 : (v39 > 0.0) - (v39 < 0.0);
		if(v40<=0) {$b=329; break;}
		v39=v0.m_mass;
		v39=1.0 / v39;
		{ $b=330; break; }
	case 329:
		v39=0.0;
	case 330:
		v0.m_mass=v39;
		$f.l=316;
		v41=v1.step;
		v42=v41.warmStarting;
		if(v42==0) {$b=452; break;}
		$f.l=317;
		v26=v3;
		v39=v3.x;
		v38=v0.m_mA;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvAC;
		v37=v24.x;
		v38=v38 * v37;
		v39=v39 + v38;
		v3.x=v39;
		$f.l=318;
		v26=v3;
		v39=v3.y;
		v38=v0.m_mA;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvAC;
		v37=v24.y;
		v38=v38 * v37;
		v39=v39 + v38;
		v3.y=v39;
		$f.l=319;
		v39=v0.m_iA;
		v38=v0.m_impulse;
		v39=v39 * v38;
		v38=v0.m_JwA;
		v39=v39 * v38;
		v4=v4 + v39;
		$f.l=321;
		v26=v6;
		v39=v6.x;
		v38=v0.m_mB;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvBD;
		v37=v24.x;
		v38=v38 * v37;
		v39=v39 + v38;
		v6.x=v39;
		$f.l=322;
		v26=v6;
		v39=v6.y;
		v38=v0.m_mB;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvBD;
		v37=v24.y;
		v38=v38 * v37;
		v39=v39 + v38;
		v6.y=v39;
		$f.l=323;
		v39=v0.m_iB;
		v38=v0.m_impulse;
		v39=v39 * v38;
		v38=v0.m_JwB;
		v39=v39 * v38;
		v7=v7 + v39;
		$f.l=325;
		v26=v9;
		v39=v9.x;
		v38=v0.m_mC;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvAC;
		v37=v24.x;
		v38=v38 * v37;
		v39=v39 - v38;
		v9.x=v39;
		$f.l=326;
		v26=v9;
		v39=v9.y;
		v38=v0.m_mC;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvAC;
		v37=v24.y;
		v38=v38 * v37;
		v39=v39 - v38;
		v9.y=v39;
		$f.l=327;
		v39=v0.m_iC;
		v38=v0.m_impulse;
		v39=v39 * v38;
		v38=v0.m_JwC;
		v39=v39 * v38;
		v10=v10 - v39;
		$f.l=329;
		v26=v12;
		v39=v12.x;
		v38=v0.m_mD;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvBD;
		v37=v24.x;
		v38=v38 * v37;
		v39=v39 - v38;
		v12.x=v39;
		$f.l=330;
		v26=v12;
		v39=v12.y;
		v38=v0.m_mD;
		v37=v0.m_impulse;
		v38=v38 * v37;
		v24=v0.m_JvBD;
		v37=v24.y;
		v38=v38 * v37;
		v39=v39 - v38;
		v12.y=v39;
		$f.l=331;
		v39=v0.m_iD;
		v38=v0.m_impulse;
		v39=v39 * v38;
		v38=v0.m_JwD;
		v39=v39 * v38;
		v13=v13 - v39;
		{ $b=454; break; }
	case 452:
		$f.l=333;
		v0.m_impulse=0.0;
	case 454:
		$f.l=335;
		v32=v0.pool;
		v32.$c.$it[43](v32,1);
		$f.l=336;
		v32=v0.pool;
		v32.$c.$it[30](v32,4);
		$f.l=339;
		v30=v1.velocities;
		v23=v0.m_indexA;
		v31=v30[v23];
		v31.w=v4;
		$f.l=341;
		v30=v1.velocities;
		v23=v0.m_indexB;
		v31=v30[v23];
		v31.w=v7;
		$f.l=343;
		v30=v1.velocities;
		v23=v0.m_indexC;
		v31=v30[v23];
		v31.w=v10;
		$f.l=345;
		v30=v1.velocities;
		v23=v0.m_indexD;
		v31=v30[v23];
		v31.w=v13;
		$f.l=346;
		return;
}
}
//org/jbox2d/dynamics/joints/GearJoint:solveVelocityConstraints
function _283(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
var $f=vm.frames[vm.fp++];
$f.l=350;
v0=a0;
v1=a1;
v14=v1.velocities;
v15=v0.m_indexA;
v16=v14[v15];
v2=v16.v;
$f.l=351;
v14=v1.velocities;
v15=v0.m_indexA;
v16=v14[v15];
v3=v16.w;
$f.l=352;
v14=v1.velocities;
v15=v0.m_indexB;
v16=v14[v15];
v4=v16.v;
$f.l=353;
v14=v1.velocities;
v15=v0.m_indexB;
v16=v14[v15];
v5=v16.w;
$f.l=354;
v14=v1.velocities;
v15=v0.m_indexC;
v16=v14[v15];
v6=v16.v;
$f.l=355;
v14=v1.velocities;
v15=v0.m_indexC;
v16=v14[v15];
v7=v16.w;
$f.l=356;
v14=v1.velocities;
v15=v0.m_indexD;
v16=v14[v15];
v8=v16.v;
$f.l=357;
v14=v1.velocities;
v15=v0.m_indexD;
v16=v14[v15];
v9=v16.w;
$f.l=359;
v17=v0.pool;
v10=v17.$c.$it[32](v17);
;
$f.l=360;
v17=v0.pool;
v11=v17.$c.$it[32](v17);
;
$f.l=361;
v18=v0.m_JvAC;
v19=_28(v10,v2);
;
v19=_2e(v19,v6);
;
v20=_4d(v18,v19);
;
v19=v0.m_JvBD;
v18=_28(v11,v4);
;
v18=_2e(v18,v8);
;
v21=_4d(v19,v18);
;
v12=v20 + v21;
$f.l=363;
v21=v0.m_JwA;
v21=v21 * v3;
v20=v0.m_JwC;
v20=v20 * v7;
v21=v21 - v20;
v20=v0.m_JwB;
v20=v20 * v5;
v22=v0.m_JwD;
v22=v22 * v9;
v22=v20 - v22;
v22=v21 + v22;
v12=v12 + v22;
$f.l=364;
v17=v0.pool;
v17.$c.$it[43](v17,2);
$f.l=366;
v22=v0.m_mass;
v22=-v22;
v13=v22 * v12;
$f.l=367;
v23=v0;
v22=v0.m_impulse;
v22=v22 + v13;
v0.m_impulse=v22;
$f.l=369;
v19=v2;
v22=v2.x;
v21=v0.m_mA;
v21=v21 * v13;
v18=v0.m_JvAC;
v20=v18.x;
v21=v21 * v20;
v22=v22 + v21;
v2.x=v22;
$f.l=370;
v19=v2;
v22=v2.y;
v21=v0.m_mA;
v21=v21 * v13;
v18=v0.m_JvAC;
v20=v18.y;
v21=v21 * v20;
v22=v22 + v21;
v2.y=v22;
$f.l=371;
v22=v0.m_iA;
v22=v22 * v13;
v21=v0.m_JwA;
v22=v22 * v21;
v3=v3 + v22;
$f.l=373;
v19=v4;
v22=v4.x;
v21=v0.m_mB;
v21=v21 * v13;
v18=v0.m_JvBD;
v20=v18.x;
v21=v21 * v20;
v22=v22 + v21;
v4.x=v22;
$f.l=374;
v19=v4;
v22=v4.y;
v21=v0.m_mB;
v21=v21 * v13;
v18=v0.m_JvBD;
v20=v18.y;
v21=v21 * v20;
v22=v22 + v21;
v4.y=v22;
$f.l=375;
v22=v0.m_iB;
v22=v22 * v13;
v21=v0.m_JwB;
v22=v22 * v21;
v5=v5 + v22;
$f.l=377;
v19=v6;
v22=v6.x;
v21=v0.m_mC;
v21=v21 * v13;
v18=v0.m_JvAC;
v20=v18.x;
v21=v21 * v20;
v22=v22 - v21;
v6.x=v22;
$f.l=378;
v19=v6;
v22=v6.y;
v21=v0.m_mC;
v21=v21 * v13;
v18=v0.m_JvAC;
v20=v18.y;
v21=v21 * v20;
v22=v22 - v21;
v6.y=v22;
$f.l=379;
v22=v0.m_iC;
v22=v22 * v13;
v21=v0.m_JwC;
v22=v22 * v21;
v7=v7 - v22;
$f.l=381;
v19=v8;
v22=v8.x;
v21=v0.m_mD;
v21=v21 * v13;
v18=v0.m_JvBD;
v20=v18.x;
v21=v21 * v20;
v22=v22 - v21;
v8.x=v22;
$f.l=382;
v19=v8;
v22=v8.y;
v21=v0.m_mD;
v21=v21 * v13;
v18=v0.m_JvBD;
v20=v18.y;
v21=v21 * v20;
v22=v22 - v21;
v8.y=v22;
$f.l=383;
v22=v0.m_iD;
v22=v22 * v13;
v21=v0.m_JwD;
v22=v22 * v21;
v9=v9 - v22;
$f.l=387;
v14=v1.velocities;
v15=v0.m_indexA;
v16=v14[v15];
v16.w=v3;
$f.l=389;
v14=v1.velocities;
v15=v0.m_indexB;
v16=v14[v15];
v16.w=v5;
$f.l=391;
v14=v1.velocities;
v15=v0.m_indexC;
v16=v14[v15];
v16.w=v7;
$f.l=393;
v14=v1.velocities;
v15=v0.m_indexD;
v16=v14[v15];
v16.w=v9;
$f.l=394;
return;
}
//org/jbox2d/dynamics/joints/GearJoint:solvePositionConstraints
function _284(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=406;
		v0=a0;
		v1=a1;
		v30=v1.positions;
		v31=v0.m_indexA;
		v32=v30[v31];
		v2=v32.c;
		$f.l=407;
		v30=v1.positions;
		v31=v0.m_indexA;
		v32=v30[v31];
		v3=v32.a;
		$f.l=408;
		v30=v1.positions;
		v31=v0.m_indexB;
		v32=v30[v31];
		v4=v32.c;
		$f.l=409;
		v30=v1.positions;
		v31=v0.m_indexB;
		v32=v30[v31];
		v5=v32.a;
		$f.l=410;
		v30=v1.positions;
		v31=v0.m_indexC;
		v32=v30[v31];
		v6=v32.c;
		$f.l=411;
		v30=v1.positions;
		v31=v0.m_indexC;
		v32=v30[v31];
		v7=v32.a;
		$f.l=412;
		v30=v1.positions;
		v31=v0.m_indexD;
		v32=v30[v31];
		v8=v32.c;
		$f.l=413;
		v30=v1.positions;
		v31=v0.m_indexD;
		v32=v30[v31];
		v9=v32.a;
		$f.l=415;
		v33=v0.pool;
		v10=v33.$c.$it[39](v33);
		;
		v33=v0.pool;
		v11=v33.$c.$it[39](v33);
		;
		v33=v0.pool;
		v12=v33.$c.$it[39](v33);
		;
		v33=v0.pool;
		v13=v33.$c.$it[39](v33);
		;
		$f.l=416;
		v34=_2c(v10,v3);
		;
		$f.l=417;
		v34=_2c(v11,v5);
		;
		$f.l=418;
		v34=_2c(v12,v7);
		;
		$f.l=419;
		v34=_2c(v13,v9);
		;
		$f.l=421;
		v14=0.0;
		$f.l=425;
		v33=v0.pool;
		v15=v33.$c.$it[32](v33);
		;
		$f.l=426;
		v33=v0.pool;
		v16=v33.$c.$it[32](v33);
		;
		$f.l=427;
		v33=v0.pool;
		v17=v33.$c.$it[32](v33);
		;
		$f.l=429;
		v18=0.0;
		$f.l=431;
		v35=v0.m_typeA;
		v36=$g67;
		if(v35!=v36) {$b=92; break;}
		$f.l=432;
		_29(v16);
		$f.l=433;
		v19=1.0;
		$f.l=434;
		v20=1.0;
		$f.l=435;
		v37=v0.m_iA;
		v38=v0.m_iC;
		v38=v37 + v38;
		v18=v18 + v38;
		$f.l=437;
		v38=v3 - v7;
		v37=v0.m_referenceAngleA;
		v21=v38 - v37;
		{ $b=153; break; }
	case 92:
		$f.l=439;
		v33=v0.pool;
		v22=v33.$c.$it[32](v33);
		;
		$f.l=440;
		v33=v0.pool;
		v23=v33.$c.$it[32](v33);
		;
		$f.l=441;
		v33=v0.pool;
		v24=v33.$c.$it[32](v33);
		;
		$f.l=442;
		v33=v0.pool;
		v25=v33.$c.$it[32](v33);
		;
		$f.l=443;
		v39=v0.m_localAxisC;
		_39(v12,v39,v16);
		$f.l=444;
		v39=v0.m_localAnchorC;
		v39=_28(v15,v39);
		;
		v40=v0.m_lcC;
		v40=_2e(v39,v40);
		;
		_39(v12,v40,v22);
		$f.l=445;
		v40=v0.m_localAnchorA;
		v40=_28(v15,v40);
		;
		v39=v0.m_lcA;
		v40=_2e(v40,v39);
		;
		_39(v10,v40,v23);
		$f.l=446;
		v20=_2f(v22,v16);
		;
		$f.l=447;
		v19=_2f(v23,v16);
		;
		$f.l=448;
		v38=v0.m_mC;
		v37=v0.m_mA;
		v38=v38 + v37;
		v37=v0.m_iC;
		v37=v37 * v20;
		v37=v37 * v20;
		v38=v38 + v37;
		v37=v0.m_iA;
		v37=v37 * v19;
		v37=v37 * v19;
		v38=v38 + v37;
		v18=v18 + v38;
		$f.l=450;
		v40=v0.m_localAnchorC;
		v40=_28(v24,v40);
		;
		v39=v0.m_lcC;
		v40=_2e(v40,v39);
		;
		$f.l=451;
		v40=_28(v15,v23);
		;
		v40=_36(v40,v2);
		;
		v40=_2e(v40,v6);
		;
		_230(v12,v40,v25);
		$f.l=452;
		v40=_2e(v25,v24);
		;
		v39=v0.m_localAxisC;
		v21=_4d(v40,v39);
		;
		$f.l=453;
		v33=v0.pool;
		v33.$c.$it[43](v33,4);
	case 153:
		$f.l=456;
		v36=v0.m_typeB;
		v35=$g67;
		if(v36!=v35) {$b=177; break;}
		$f.l=457;
		_29(v17);
		$f.l=458;
		v26=v0.m_ratio;
		$f.l=459;
		v27=v0.m_ratio;
		$f.l=460;
		v38=v0.m_ratio;
		v37=v0.m_ratio;
		v38=v38 * v37;
		v37=v0.m_iB;
		v41=v0.m_iD;
		v41=v37 + v41;
		v41=v38 * v41;
		v18=v18 + v41;
		$f.l=462;
		v41=v5 - v9;
		v38=v0.m_referenceAngleB;
		v28=v41 - v38;
		{ $b=249; break; }
	case 177:
		$f.l=464;
		v33=v0.pool;
		v22=v33.$c.$it[32](v33);
		;
		$f.l=465;
		v33=v0.pool;
		v23=v33.$c.$it[32](v33);
		;
		$f.l=466;
		v33=v0.pool;
		v24=v33.$c.$it[32](v33);
		;
		$f.l=467;
		v33=v0.pool;
		v25=v33.$c.$it[32](v33);
		;
		$f.l=468;
		v33=v0.pool;
		v29=v33.$c.$it[32](v33);
		;
		$f.l=469;
		v40=v0.m_localAxisD;
		_39(v13,v40,v22);
		$f.l=470;
		v40=v0.m_localAnchorD;
		v40=_28(v15,v40);
		;
		v39=v0.m_lcD;
		v40=_2e(v40,v39);
		;
		_39(v13,v40,v23);
		$f.l=471;
		v40=v0.m_localAnchorB;
		v40=_28(v15,v40);
		;
		v39=v0.m_lcB;
		v40=_2e(v40,v39);
		;
		_39(v11,v40,v24);
		$f.l=472;
		v40=_28(v17,v22);
		;
		v41=v0.m_ratio;
		v40=_35(v40,v41);
		;
		$f.l=473;
		v27=_2f(v23,v22);
		;
		$f.l=474;
		v26=_2f(v24,v22);
		;
		$f.l=475;
		v41=v0.m_ratio;
		v38=v0.m_ratio;
		v41=v41 * v38;
		v38=v0.m_mD;
		v37=v0.m_mB;
		v38=v38 + v37;
		v41=v41 * v38;
		v38=v0.m_iD;
		v38=v38 * v27;
		v38=v38 * v27;
		v41=v41 + v38;
		v38=v0.m_iB;
		v38=v38 * v26;
		v38=v38 * v26;
		v41=v41 + v38;
		v18=v18 + v41;
		$f.l=477;
		v40=v0.m_localAnchorD;
		v40=_28(v25,v40);
		;
		v39=v0.m_lcD;
		v40=_2e(v40,v39);
		;
		$f.l=478;
		v40=_28(v15,v24);
		;
		v40=_36(v40,v4);
		;
		v40=_2e(v40,v8);
		;
		_230(v13,v40,v29);
		$f.l=479;
		v40=_2e(v29,v25);
		;
		v39=v0.m_localAxisD;
		v28=_4d(v40,v39);
		;
		$f.l=480;
		v33=v0.pool;
		v33.$c.$it[43](v33,5);
	case 249:
		$f.l=483;
		v41=v0.m_ratio;
		v41=v41 * v28;
		v41=v21 + v41;
		v38=v0.m_constant;
		v42=v41 - v38;
		$f.l=485;
		v43=0.0;
		$f.l=486;
		v44=(v18 != v18 || 0.0 != 0.0) ? -1 : (v18 > 0.0) - (v18 < 0.0);
		if(v44<=0) {$b=263; break;}
		$f.l=487;
		v41=-v42;
		v43=v41 / v18;
	case 263:
		$f.l=489;
		v33=v0.pool;
		v33.$c.$it[43](v33,3);
		$f.l=490;
		v33=v0.pool;
		v33.$c.$it[30](v33,4);
		$f.l=492;
		v40=v2;
		v41=v2.x;
		v38=v0.m_mA;
		v38=v38 * v43;
		v37=v16.x;
		v38=v38 * v37;
		v41=v41 + v38;
		v2.x=v41;
		$f.l=493;
		v40=v2;
		v41=v2.y;
		v38=v0.m_mA;
		v38=v38 * v43;
		v37=v16.y;
		v38=v38 * v37;
		v41=v41 + v38;
		v2.y=v41;
		$f.l=494;
		v41=v0.m_iA;
		v41=v41 * v43;
		v41=v41 * v19;
		v3=v3 + v41;
		$f.l=496;
		v40=v4;
		v41=v4.x;
		v38=v0.m_mB;
		v38=v38 * v43;
		v37=v17.x;
		v38=v38 * v37;
		v41=v41 + v38;
		v4.x=v41;
		$f.l=497;
		v40=v4;
		v41=v4.y;
		v38=v0.m_mB;
		v38=v38 * v43;
		v37=v17.y;
		v38=v38 * v37;
		v41=v41 + v38;
		v4.y=v41;
		$f.l=498;
		v41=v0.m_iB;
		v41=v41 * v43;
		v41=v41 * v26;
		v5=v5 + v41;
		$f.l=500;
		v40=v6;
		v41=v6.x;
		v38=v0.m_mC;
		v38=v38 * v43;
		v37=v16.x;
		v38=v38 * v37;
		v41=v41 - v38;
		v6.x=v41;
		$f.l=501;
		v40=v6;
		v41=v6.y;
		v38=v0.m_mC;
		v38=v38 * v43;
		v37=v16.y;
		v38=v38 * v37;
		v41=v41 - v38;
		v6.y=v41;
		$f.l=502;
		v41=v0.m_iC;
		v41=v41 * v43;
		v41=v41 * v20;
		v7=v7 - v41;
		$f.l=504;
		v40=v8;
		v41=v8.x;
		v38=v0.m_mD;
		v38=v38 * v43;
		v37=v17.x;
		v38=v38 * v37;
		v41=v41 - v38;
		v8.x=v41;
		$f.l=505;
		v40=v8;
		v41=v8.y;
		v38=v0.m_mD;
		v38=v38 * v43;
		v37=v17.y;
		v38=v38 * v37;
		v41=v41 - v38;
		v8.y=v41;
		$f.l=506;
		v41=v0.m_iD;
		v41=v41 * v43;
		v41=v41 * v27;
		v9=v9 - v41;
		$f.l=509;
		v30=v1.positions;
		v31=v0.m_indexA;
		v32=v30[v31];
		v32.a=v3;
		$f.l=511;
		v30=v1.positions;
		v31=v0.m_indexB;
		v32=v30[v31];
		v32.a=v5;
		$f.l=513;
		v30=v1.positions;
		v31=v0.m_indexC;
		v32=v30[v31];
		v32.a=v7;
		$f.l=515;
		v30=v1.positions;
		v31=v0.m_indexD;
		v32=v30[v31];
		v32.a=v9;
		$f.l=518;
		v44=(v14 != v14 || 0.005 != 0.005) ? 1 : (v14 > 0.005) - (v14 < 0.005);
		if(v44>=0) {$b=386; break;}
		v45=1;
		{ $b=387; break; }
	case 386:
		v45=0;
	case 387:
		return v45;
}
}
//org/jbox2d/dynamics/joints/GearJoint:<clinit>
function _285(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=67;
		v0=vm.getClass(79);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g113=v1;
		return;
}
}
//org/jbox2d/common/MathUtils:sin
function _1e3(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=81;
		v0=a0;
		v1=$g22;
		if(v1==0) {$b=7; break;}
		$f.l=82;
		v2=_286(v0);
		;
		return v2;
	case 7:
		$f.l=84;
		v3=v0;
		v3=_287(v3);
		;
		v2=v3;
		return v2;
}
}
//org/jbox2d/common/MathUtils:sinLUT
function _286(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=89;
		v0=a0;
		v0=v0 % 6.2831855;
		$f.l=91;
		v2=(v0 != v0 || 0.0 != 0.0) ? 1 : (v0 > 0.0) - (v0 < 0.0);
		if(v2>=0) {$b=8; break;}
		$f.l=92;
		v0=v0 + 6.2831855;
	case 8:
		$f.l=95;
		v3=$g24;
		if(v3==0) {$b=45; break;}
		$f.l=97;
		v0=v0 / 1.1E-4;
		$f.l=99;
		v1=v0|0;
		$f.l=101;
		if(v1==0) {$b=20; break;}
		$f.l=102;
		v4=v1;
		v0=v0 % v4;
	case 20:
		$f.l=106;
		v5=$g23;
		v5=(v5 - 1)|0;
		if(v1!=v5) {$b=34; break;}
		$f.l=107;
		v4=1.0 - v0;
		v6=$g114;
		v7=v6[v1];
		v7=v4 * v7;
		v6=$g114;
		v4=v6[0];
		v4=v0 * v4;
		v7=v7 + v4;
		return v7;
	case 34:
		$f.l=109;
		v7=1.0 - v0;
		v6=$g114;
		v4=v6[v1];
		v7=v7 * v4;
		v6=$g114;
		v5=(v1 + 1)|0;
		v4=v6[v5];
		v4=v0 * v4;
		v7=v7 + v4;
		return v7;
	case 45:
		$f.l=113;
		v6=$g114;
		v7=v0 / 1.1E-4;
		v5=_288(v7);
		;
		v8=$g23;
		v8=(v5 % v8)|0;
		v7=v6[v8];
		return v7;
}
}
//org/jbox2d/common/MathUtils:cos
function _1e4(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=118;
		v0=a0;
		v1=$g22;
		if(v1==0) {$b=8; break;}
		$f.l=119;
		v2=1.5707964 - v0;
		v2=_286(v2);
		;
		return v2;
	case 8:
		$f.l=121;
		v3=v0;
		v3=_289(v3);
		;
		v2=v3;
		return v2;
}
}
//org/jbox2d/common/MathUtils:abs
function _199(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=126;
		v0=a0;
		v1=$g16;
		if(v1==0) {$b=11; break;}
		$f.l=127;
		v2=(v0 != v0 || 0.0 != 0.0) ? -1 : (v0 > 0.0) - (v0 < 0.0);
		if(v2<=0) {$b=9; break;}
		v3=v0;
		{ $b=10; break; }
	case 9:
		v3=-v0;
	case 10:
		return v3;
	case 11:
		$f.l=129;
		v3=_191(v0);
		;
		return v3;
}
}
//org/jbox2d/common/MathUtils:floor
function _28a(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=139;
		v0=a0;
		v1=$g17;
		if(v1==0) {$b=17; break;}
		$f.l=140;
		v2=v0|0;
		$f.l=141;
		v3=(v0 != v0 || 0.0 != 0.0) ? 1 : (v0 > 0.0) - (v0 < 0.0);
		if(v3>=0) {$b=15; break;}
		v4=v2;
		v3=(v0 != v0 || v4 != v4) ? -1 : (v0 > v4) - (v0 < v4);
		if(v3==0) {$b=15; break;}
		$f.l=142;
		v5=(v2 - 1)|0;
		return v5;
	case 15:
		$f.l=144;
		return v2;
	case 17:
		$f.l=146;
		v6=v0;
		v6=_194(v6);
		;
		v5=v6|0;
		return v5;
}
}
//org/jbox2d/common/MathUtils:round
function _288(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=163;
		v0=a0;
		v1=$g19;
		if(v1==0) {$b=8; break;}
		$f.l=164;
		v2=v0 + 0.5;
		v3=_28a(v2);
		;
		return v3;
	case 8:
		$f.l=166;
		v3=_206(v0);
		;
		return v3;
}
}
//org/jbox2d/common/MathUtils:max
function _228(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=185;
		v0=a0;
		v1=a1;
		v2=(v0 != v0 || v1 != v1) ? -1 : (v0 > v1) - (v0 < v1);
		if(v2<=0) {$b=7; break;}
		v3=v0;
		{ $b=8; break; }
	case 7:
		v3=v1;
	case 8:
		return v3;
}
}
//org/jbox2d/common/MathUtils:max
function _22(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=189;
		v0=a0;
		v1=a1;
		if(v0<=v1) {$b=6; break;}
		v2=v0;
		{ $b=7; break; }
	case 6:
		v2=v1;
	case 7:
		return v2;
}
}
//org/jbox2d/common/MathUtils:min
function _3c(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=193;
		v0=a0;
		v1=a1;
		v2=(v0 != v0 || v1 != v1) ? 1 : (v0 > v1) - (v0 < v1);
		if(v2>=0) {$b=7; break;}
		v3=v0;
		{ $b=8; break; }
	case 7:
		v3=v1;
	case 8:
		return v3;
}
}
//org/jbox2d/common/MathUtils:min
function _28b(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=197;
		v0=a0;
		v1=a1;
		if(v0>=v1) {$b=6; break;}
		v2=v0;
		{ $b=7; break; }
	case 6:
		v2=v1;
	case 7:
		return v2;
}
}
//org/jbox2d/common/MathUtils:clamp
function _33(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=209;
v0=a0;
v1=a1;
v2=a2;
v3=_3c(v0,v2);
;
v3=_228(v1,v3);
;
return v3;
}
//org/jbox2d/common/MathUtils:sqrt
function _198(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=296;
v0=a0;
v1=v0;
v1=_28c(v1);
;
v2=v1;
return v2;
}
//org/jbox2d/common/MathUtils:distanceSquared
function _215(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=300;
v0=a0;
v1=a1;
v4=v0.x;
v5=v1.x;
v2=v4 - v5;
$f.l=301;
v5=v0.y;
v4=v1.y;
v3=v5 - v4;
$f.l=302;
v5=v2 * v2;
v4=v3 * v3;
v5=v5 + v4;
return v5;
}
//org/jbox2d/common/MathUtils:distance
function _201(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=306;
v0=a0;
v1=a1;
v2=_215(v0,v1);
;
v2=_198(v2);
;
return v2;
}
//org/jbox2d/common/MathUtils:<clinit>
function _28d(vm){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=72;
		v0=$g23;
		v2=newArray(70,v0);
		$g114=v2;
		$f.l=75;
		v1=0;
	case 6:
		v0=$g23;
		if(v1>=v0) {$b=19; break;}
		$f.l=76;
		v2=$g114;
		v3=v1;
		v3=v3 * 1.1E-4;
		v4=v3;
		v4=_144(v4);
		;
		v3=v4;
		v2[v1]=v3;
		$f.l=75;
		v1=(v1 + 1)|0;
		{ $b=6; break; }
	case 19:
		$f.l=78;
		return;
}
}
//org/jbox2d/collision/shapes/EdgeShape:<init>
function _28e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=63;
v0=a0;
v1=$g12;
_73(v0,v1);
$f.l=45;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_vertex1=v2;
$f.l=49;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_vertex2=v2;
$f.l=54;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_vertex0=v2;
$f.l=58;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_vertex3=v2;
$f.l=59;
v0.m_hasVertex0=0;
v0.m_hasVertex3=0;
$f.l=84;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.normal=v2;
$f.l=64;
v0.m_radius=0.01;
$f.l=65;
return;
}
//org/jbox2d/collision/shapes/EdgeShape:getChildCount
function _28f(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=69;
v0=a0;
return 1;
}
//org/jbox2d/collision/shapes/EdgeShape:computeAABB
function _290(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=172;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=v1.lowerBound;
		$f.l=173;
		v5=v1.upperBound;
		$f.l=174;
		v6=v2.q;
		$f.l=176;
		v11=v6.c;
		v12=v0.m_vertex1;
		v13=v12.x;
		v13=v11 * v13;
		v11=v6.s;
		v12=v0.m_vertex1;
		v14=v12.y;
		v14=v11 * v14;
		v14=v13 - v14;
		v12=v2.p;
		v13=v12.x;
		v7=v14 + v13;
		$f.l=177;
		v14=v6.s;
		v12=v0.m_vertex1;
		v13=v12.x;
		v14=v14 * v13;
		v13=v6.c;
		v12=v0.m_vertex1;
		v11=v12.y;
		v13=v13 * v11;
		v14=v14 + v13;
		v12=v2.p;
		v13=v12.y;
		v8=v14 + v13;
		$f.l=178;
		v14=v6.c;
		v12=v0.m_vertex2;
		v13=v12.x;
		v14=v14 * v13;
		v13=v6.s;
		v12=v0.m_vertex2;
		v11=v12.y;
		v13=v13 * v11;
		v14=v14 - v13;
		v12=v2.p;
		v13=v12.x;
		v9=v14 + v13;
		$f.l=179;
		v14=v6.s;
		v12=v0.m_vertex2;
		v13=v12.x;
		v14=v14 * v13;
		v13=v6.c;
		v12=v0.m_vertex2;
		v11=v12.y;
		v13=v13 * v11;
		v14=v14 + v13;
		v12=v2.p;
		v13=v12.y;
		v10=v14 + v13;
		$f.l=181;
		v12=v4;
		v15=(v7 != v7 || v9 != v9) ? 1 : (v7 > v9) - (v7 < v9);
		if(v15>=0) {$b=68; break;}
		v14=v7;
		{ $b=69; break; }
	case 68:
		v14=v9;
	case 69:
		v4.x=v14;
		$f.l=182;
		v12=v4;
		v15=(v8 != v8 || v10 != v10) ? 1 : (v8 > v10) - (v8 < v10);
		if(v15>=0) {$b=76; break;}
		v14=v8;
		{ $b=77; break; }
	case 76:
		v14=v10;
	case 77:
		v4.y=v14;
		$f.l=183;
		v12=v5;
		v15=(v7 != v7 || v9 != v9) ? -1 : (v7 > v9) - (v7 < v9);
		if(v15<=0) {$b=84; break;}
		v14=v7;
		{ $b=85; break; }
	case 84:
		v14=v9;
	case 85:
		v5.x=v14;
		$f.l=184;
		v12=v5;
		v15=(v8 != v8 || v10 != v10) ? -1 : (v8 > v10) - (v8 < v10);
		if(v15<=0) {$b=92; break;}
		v14=v8;
		{ $b=93; break; }
	case 92:
		v14=v10;
	case 93:
		v5.y=v14;
		$f.l=186;
		v12=v4;
		v14=v4.x;
		v13=v0.m_radius;
		v14=v14 - v13;
		v4.x=v14;
		$f.l=187;
		v12=v4;
		v14=v4.y;
		v13=v0.m_radius;
		v14=v14 - v13;
		v4.y=v14;
		$f.l=188;
		v12=v5;
		v14=v5.x;
		v13=v0.m_radius;
		v14=v14 + v13;
		v5.x=v14;
		$f.l=189;
		v12=v5;
		v14=v5.y;
		v13=v0.m_radius;
		v14=v14 + v13;
		v5.y=v14;
		$f.l=190;
		return;
}
}
//org/jbox2d/collision/shapes/EdgeShape:computeMass
function _291(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=194;
v0=a0;
v1=a1;
v2=a2;
v1.mass=0.0;
$f.l=195;
v3=v1.center;
v4=v0.m_vertex1;
v4=_28(v3,v4);
;
v3=v0.m_vertex2;
v4=_36(v4,v3);
;
v4=_35(v4,0.5);
;
$f.l=196;
v1.I=0.0;
$f.l=197;
return;
}
//org/jbox2d/collision/shapes/EdgeShape:clone
function _292(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=201;
v0=a0;
v1=new org/jbox2d/collision/shapes/EdgeShape;
_28e(v1);
v2=v1;
$f.l=202;
v3=v0.m_radius;
v2.m_radius=v3;
$f.l=203;
v4=v0.m_hasVertex0;
v2.m_hasVertex0=v4;
$f.l=204;
v4=v0.m_hasVertex3;
v2.m_hasVertex3=v4;
$f.l=205;
v5=v2.m_vertex0;
v6=v0.m_vertex0;
v6=_28(v5,v6);
;
$f.l=206;
v6=v2.m_vertex1;
v5=v0.m_vertex1;
v6=_28(v6,v5);
;
$f.l=207;
v6=v2.m_vertex2;
v5=v0.m_vertex2;
v6=_28(v6,v5);
;
$f.l=208;
v6=v2.m_vertex3;
v5=v0.m_vertex3;
v6=_28(v6,v5);
;
$f.l=209;
return v2;
}
//org/jbox2d/collision/shapes/EdgeShape:clone
function _293(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=v0.$c.$vt[17](v0);
;
return v1;
}
//java/lang/IncompatibleClassChangeError:<init>
function _294(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
v1=a1;
_295(v0,v1);
$f.l=48;
return;
}
//java/lang/reflect/Constructor:<init>
function _296(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=a0;
_61(v0);
return;
}
//java/lang/reflect/Constructor:newInstance
function _1b7(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=a0;
v1=a1;
v2=newArray(0,1);
v3=v0.declaringClass;
v2[0]=v3;
v4=_16($str1,v2);
;
v4=_67(v0,v4,v1);
;
return v4;
}
//org/jbox2d/dynamics/contacts/PolygonAndCircleContact:<init>
function _297(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=38;
return;
}
//org/jbox2d/dynamics/contacts/PolygonAndCircleContact:evaluate
function _298(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=v0.pool;
v5=v4.$c.$it[38](v4);
;
v6=v0.m_fixtureA;
v7=_23(v6);
;
v8=vm.cast(v7,42);
v6=v0.m_fixtureB;
v7=_23(v6);
;
v9=vm.cast(v7,41);
_52(v5,v1,v8,v2,v9,v3);
$f.l=50;
return;
}
//org/jbox2d/dynamics/contacts/PolygonAndCircleContact:<clinit>
function _299(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=34;
		v0=vm.getClass(80);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g115=v1;
		return;
}
}
//org/jbox2d/collision/shapes/PolygonShape:<init>
function _142(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=75;
		v0=a0;
		v1=$g10;
		_73(v0,v1);
		$f.l=48;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.m_centroid=v3;
		$f.l=68;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.pool1=v3;
		$f.l=69;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.pool2=v3;
		$f.l=70;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.pool3=v3;
		$f.l=71;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v0.pool4=v3;
		$f.l=72;
		v4=new org/jbox2d/common/Transform;
		_1c(v4);
		v0.poolt1=v4;
		$f.l=77;
		v0.m_count=0;
		$f.l=78;
		v5=newArray(38,8);
		v0.m_vertices=v5;
		$f.l=79;
		v2=0;
	case 35:
		v5=v0.m_vertices;
		v6=v5.len;
		if(v2>=v6) {$b=46; break;}
		$f.l=80;
		v5=v0.m_vertices;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v5[v2]=v3;
		$f.l=79;
		v2=(v2 + 1)|0;
		{ $b=35; break; }
	case 46:
		$f.l=82;
		v5=newArray(38,8);
		v0.m_normals=v5;
		$f.l=83;
		v2=0;
	case 51:
		v5=v0.m_normals;
		v6=v5.len;
		if(v2>=v6) {$b=62; break;}
		$f.l=84;
		v5=v0.m_normals;
		v3=new org/jbox2d/common/Vec2;
		_1a(v3);
		v5[v2]=v3;
		$f.l=83;
		v2=(v2 + 1)|0;
		{ $b=51; break; }
	case 62:
		$f.l=86;
		_76(v0,0.01);
		$f.l=87;
		v3=v0.m_centroid;
		_29(v3);
		$f.l=88;
		return;
}
}
//org/jbox2d/collision/shapes/PolygonShape:clone
function _29a(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=91;
		v0=a0;
		v1=new org/jbox2d/collision/shapes/PolygonShape;
		_142(v1);
		v2=v1;
		$f.l=92;
		v4=v2.m_centroid;
		v5=v0.m_centroid;
		v5=_28(v4,v5);
		;
		$f.l=93;
		v3=0;
	case 11:
		v6=v2.m_normals;
		v7=v6.len;
		if(v3>=v7) {$b=29; break;}
		$f.l=94;
		v6=v2.m_normals;
		v5=v6[v3];
		v6=v0.m_normals;
		v4=v6[v3];
		v5=_28(v5,v4);
		;
		$f.l=95;
		v6=v2.m_vertices;
		v5=v6[v3];
		v6=v0.m_vertices;
		v4=v6[v3];
		v5=_28(v5,v4);
		;
		$f.l=93;
		v3=(v3 + 1)|0;
		{ $b=11; break; }
	case 29:
		$f.l=97;
		v8=_75(v0);
		;
		_76(v2,v8);
		$f.l=98;
		v7=v0.m_count;
		v2.m_count=v7;
		$f.l=99;
		return v2;
}
}
//org/jbox2d/collision/shapes/PolygonShape:set
function _145(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=111;
v0=a0;
v1=a1;
v2=a2;
_29b(v0,v1,v2,null,null);
$f.l=112;
return;
}
//org/jbox2d/collision/shapes/PolygonShape:set
function _29b(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=124;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=$g116;
		if(v5!=0) {$b=13; break;}
		if(3>v2) {$b=10; break;}
		if(v2<=8) {$b=13; break;}
	case 10:
		v18=new java/lang/AssertionError;
		_26(v18);
		throw v18;
	case 13:
		$f.l=125;
		if(v2>=3) {$b=19; break;}
		$f.l=126;
		_29c(v0,1.0,1.0);
		$f.l=127;
		return;
	case 19:
		$f.l=130;
		v6=_28b(v2,8);
		;
		$f.l=133;
		if(v3==null) {$b=25; break;}
		v19=_247(v3,v6);
		;
		{ $b=26; break; }
	case 25:
		v19=newArray(38,v6);
	case 26:
		v7=v19;
		$f.l=134;
		v8=0;
	case 29:
		if(v8>=v6) {$b=36; break;}
		$f.l=135;
		v20=v1[v8];
		v7[v8]=v20;
		$f.l=134;
		v8=(v8 + 1)|0;
		{ $b=29; break; }
	case 36:
		$f.l=142;
		v8=0;
		$f.l=143;
		v20=v7[0];
		v9=v20.x;
		$f.l=144;
		v10=1;
	case 43:
		if(v10>=v2) {$b=65; break;}
		$f.l=145;
		v20=v7[v10];
		v11=v20.x;
		$f.l=146;
		v21=(v11 != v11 || v9 != v9) ? -1 : (v11 > v9) - (v11 < v9);
		if(v21>0) {$b=58; break;}
		v21=(v11 != v11 || v9 != v9) ? -1 : (v11 > v9) - (v11 < v9);
		if(v21!=0) {$b=62; break;}
		v20=v7[v10];
		v22=v20.y;
		v20=v7[v8];
		v23=v20.y;
		v21=(v22 != v22 || v23 != v23) ? 1 : (v22 > v23) - (v22 < v23);
		if(v21>=0) {$b=62; break;}
	case 58:
		$f.l=147;
		v8=v10;
		$f.l=148;
		v9=v11;
	case 62:
		$f.l=144;
		v10=(v10 + 1)|0;
		{ $b=43; break; }
	case 65:
		$f.l=152;
		if(v4==null) {$b=69; break;}
		v24=_217(v4,8);
		;
		{ $b=70; break; }
	case 69:
		v24=newArray(6,8);
	case 70:
		v25=v24;
		$f.l=156;
		v26=0;
		$f.l=157;
		v12=v8;
	case 75:
		$f.l=160;
		v25[v26]=v12;
		$f.l=162;
		v13=0;
		$f.l=163;
		v14=1;
	case 81:
		if(v14>=v6) {$b=121; break;}
		$f.l=164;
		if(v13!=v12) {$b=88; break;}
		$f.l=165;
		v13=v14;
		$f.l=166;
		{ $b=118; break; }
	case 88:
		$f.l=169;
		v20=v0.pool1;
		v27=v7[v13];
		v27=_28(v20,v27);
		;
		v28=v25[v26];
		v20=v7[v28];
		v15=_2e(v27,v20);
		;
		$f.l=170;
		v27=v0.pool2;
		v20=v7[v14];
		v27=_28(v27,v20);
		;
		v28=v25[v26];
		v20=v7[v28];
		v16=_2e(v27,v20);
		;
		$f.l=171;
		v17=_2f(v15,v16);
		;
		$f.l=172;
		v21=(v17 != v17 || 0.0 != 0.0) ? 1 : (v17 > 0.0) - (v17 < 0.0);
		if(v21>=0) {$b=109; break;}
		$f.l=173;
		v13=v14;
	case 109:
		$f.l=177;
		v21=(v17 != v17 || 0.0 != 0.0) ? -1 : (v17 > 0.0) - (v17 < 0.0);
		if(v21!=0) {$b=118; break;}
		v23=_22f(v16);
		;
		v22=_22f(v15);
		;
		v21=(v23 != v23 || v22 != v22) ? -1 : (v23 > v22) - (v23 < v22);
		if(v21<=0) {$b=118; break;}
		$f.l=178;
		v13=v14;
	case 118:
		$f.l=163;
		v14=(v14 + 1)|0;
		{ $b=81; break; }
	case 121:
		$f.l=182;
		v26=(v26 + 1)|0;
		$f.l=183;
		v12=v13;
		$f.l=185;
		if(v13!=v8) {$b=129; break;}
		$f.l=186;
		{ $b=131; break; }
	case 129:
		$f.l=188;
		{ $b=75; break; }
	case 131:
		$f.l=190;
		v0.m_count=v26;
		$f.l=193;
		v13=0;
	case 135:
		v28=v0.m_count;
		if(v13>=v28) {$b=155; break;}
		$f.l=194;
		v19=v0.m_vertices;
		v27=v19[v13];
		if(v27!=null) {$b=146; break;}
		$f.l=195;
		v19=v0.m_vertices;
		v27=new org/jbox2d/common/Vec2;
		_1a(v27);
		v19[v13]=v27;
	case 146:
		$f.l=197;
		v19=v0.m_vertices;
		v27=v19[v13];
		v28=v25[v13];
		v20=v7[v28];
		v27=_28(v27,v20);
		;
		$f.l=193;
		v13=(v13 + 1)|0;
		{ $b=135; break; }
	case 155:
		$f.l=200;
		v29=v0.pool1;
		$f.l=203;
		v14=0;
	case 159:
		v28=v0.m_count;
		if(v14>=v28) {$b=198; break;}
		$f.l=204;
		v30=v14;
		$f.l=205;
		v28=(v14 + 1)|0;
		v31=v0.m_count;
		if(v28>=v31) {$b=169; break;}
		v31=(v14 + 1)|0;
		{ $b=170; break; }
	case 169:
		v31=0;
	case 170:
		v32=v31;
		$f.l=206;
		v19=v0.m_vertices;
		v27=v19[v32];
		v27=_28(v29,v27);
		;
		v19=v0.m_vertices;
		v20=v19[v30];
		v27=_2e(v27,v20);
		;
		$f.l=208;
		v5=$g116;
		if(v5!=0) {$b=187; break;}
		v23=_22f(v29);
		;
		v21=(v23 != v23 || 1.4210855E-14 != 1.4210855E-14) ? -1 : (v23 > 1.4210855E-14) - (v23 < 1.4210855E-14);
		if(v21>0) {$b=187; break;}
		v18=new java/lang/AssertionError;
		_26(v18);
		throw v18;
	case 187:
		$f.l=209;
		v19=v0.m_normals;
		v27=v19[v14];
		_1fe(v29,1.0,v27);
		$f.l=210;
		v19=v0.m_normals;
		v27=v19[v14];
		v23=_53(v27);
		;
		$f.l=203;
		v14=(v14 + 1)|0;
		{ $b=159; break; }
	case 198:
		$f.l=214;
		v19=v0.m_vertices;
		v31=v0.m_count;
		v27=v0.m_centroid;
		_29d(v0,v19,v31,v27);
		$f.l=215;
		return;
}
}
//org/jbox2d/collision/shapes/PolygonShape:setAsBox
function _29c(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=224;
v0=a0;
v1=a1;
v2=a2;
v0.m_count=4;
$f.l=225;
v3=v0.m_vertices;
v4=v3[0];
v5=-v1;
v6=-v2;
v4=_30(v4,v5,v6);
;
$f.l=226;
v3=v0.m_vertices;
v4=v3[1];
v6=-v2;
v4=_30(v4,v1,v6);
;
$f.l=227;
v3=v0.m_vertices;
v4=v3[2];
v4=_30(v4,v1,v2);
;
$f.l=228;
v3=v0.m_vertices;
v4=v3[3];
v6=-v1;
v4=_30(v4,v6,v2);
;
$f.l=229;
v3=v0.m_normals;
v4=v3[0];
v4=_30(v4,0.0,-1.0);
;
$f.l=230;
v3=v0.m_normals;
v4=v3[1];
v4=_30(v4,1.0,0.0);
;
$f.l=231;
v3=v0.m_normals;
v4=v3[2];
v4=_30(v4,0.0,1.0);
;
$f.l=232;
v3=v0.m_normals;
v4=v3[3];
v4=_30(v4,-1.0,0.0);
;
$f.l=233;
v4=v0.m_centroid;
_29(v4);
$f.l=234;
return;
}
//org/jbox2d/collision/shapes/PolygonShape:getChildCount
function _29e(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=268;
v0=a0;
return 1;
}
//org/jbox2d/collision/shapes/PolygonShape:computeAABB
function _29f(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=306;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=v1.lowerBound;
		$f.l=307;
		v5=v1.upperBound;
		$f.l=308;
		v13=v0.m_vertices;
		v6=v13[0];
		$f.l=309;
		v7=v2.q;
		$f.l=310;
		v8=v2.p;
		$f.l=312;
		v14=v7.c;
		v15=v6.x;
		v15=v14 * v15;
		v14=v7.s;
		v16=v6.y;
		v16=v14 * v16;
		v16=v15 - v16;
		v15=v8.x;
		v16=v16 + v15;
		v4.x=v16;
		$f.l=313;
		v16=v7.s;
		v15=v6.x;
		v16=v16 * v15;
		v15=v7.c;
		v14=v6.y;
		v15=v15 * v14;
		v16=v16 + v15;
		v15=v8.y;
		v16=v16 + v15;
		v4.y=v16;
		$f.l=314;
		v16=v4.x;
		v5.x=v16;
		$f.l=315;
		v16=v4.y;
		v5.y=v16;
		$f.l=317;
		v9=1;
	case 45:
		v17=v0.m_count;
		if(v9>=v17) {$b=109; break;}
		$f.l=318;
		v13=v0.m_vertices;
		v10=v13[v9];
		$f.l=320;
		v16=v7.c;
		v15=v10.x;
		v16=v16 * v15;
		v15=v7.s;
		v14=v10.y;
		v15=v15 * v14;
		v16=v16 - v15;
		v15=v8.x;
		v11=v16 + v15;
		$f.l=321;
		v16=v7.s;
		v15=v10.x;
		v16=v16 * v15;
		v15=v7.c;
		v14=v10.y;
		v15=v15 * v14;
		v16=v16 + v15;
		v15=v8.y;
		v12=v16 + v15;
		$f.l=322;
		v18=v4;
		v16=v4.x;
		v19=(v16 != v16 || v11 != v11) ? 1 : (v16 > v11) - (v16 < v11);
		if(v19>=0) {$b=77; break;}
		v16=v4.x;
		{ $b=78; break; }
	case 77:
		v16=v11;
	case 78:
		v4.x=v16;
		$f.l=323;
		v18=v4;
		v16=v4.y;
		v19=(v16 != v16 || v12 != v12) ? 1 : (v16 > v12) - (v16 < v12);
		if(v19>=0) {$b=86; break;}
		v16=v4.y;
		{ $b=87; break; }
	case 86:
		v16=v12;
	case 87:
		v4.y=v16;
		$f.l=324;
		v18=v5;
		v16=v5.x;
		v19=(v16 != v16 || v11 != v11) ? -1 : (v16 > v11) - (v16 < v11);
		if(v19<=0) {$b=95; break;}
		v16=v5.x;
		{ $b=96; break; }
	case 95:
		v16=v11;
	case 96:
		v5.x=v16;
		$f.l=325;
		v18=v5;
		v16=v5.y;
		v19=(v16 != v16 || v12 != v12) ? -1 : (v16 > v12) - (v16 < v12);
		if(v19<=0) {$b=104; break;}
		v16=v5.y;
		{ $b=105; break; }
	case 104:
		v16=v12;
	case 105:
		v5.y=v16;
		$f.l=317;
		v9=(v9 + 1)|0;
		{ $b=45; break; }
	case 109:
		$f.l=328;
		v18=v4;
		v16=v4.x;
		v15=v0.m_radius;
		v16=v16 - v15;
		v4.x=v16;
		$f.l=329;
		v18=v4;
		v16=v4.y;
		v15=v0.m_radius;
		v16=v16 - v15;
		v4.y=v16;
		$f.l=330;
		v18=v5;
		v16=v5.x;
		v15=v0.m_radius;
		v16=v16 + v15;
		v5.x=v16;
		$f.l=331;
		v18=v5;
		v16=v5.y;
		v15=v0.m_radius;
		v16=v16 + v15;
		v5.y=v16;
		$f.l=332;
		return;
}
}
//org/jbox2d/collision/shapes/PolygonShape:computeCentroidToOut
function _29d(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=432;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=$g116;
		if(v4!=0) {$b=11; break;}
		if(v2>=3) {$b=11; break;}
		v16=new java/lang/AssertionError;
		_26(v16);
		throw v16;
	case 11:
		$f.l=434;
		v17=_30(v3,0.0,0.0);
		;
		$f.l=435;
		v5=0.0;
		$f.l=439;
		v6=v0.pool1;
		$f.l=440;
		_29(v6);
		$f.l=442;
		v7=v0.pool2;
		$f.l=443;
		v8=v0.pool3;
		$f.l=445;
		v9=0.33333334;
		$f.l=447;
		v10=0;
	case 27:
		if(v10>=v2) {$b=63; break;}
		$f.l=449;
		v11=v6;
		$f.l=450;
		v12=v1[v10];
		$f.l=451;
		v18=(v10 + 1)|0;
		if(v18>=v2) {$b=38; break;}
		v18=(v10 + 1)|0;
		v17=v1[v18];
		{ $b=39; break; }
	case 38:
		v17=v1[0];
	case 39:
		v13=v17;
		$f.l=453;
		v17=_28(v7,v12);
		;
		v17=_2e(v17,v11);
		;
		$f.l=454;
		v17=_28(v8,v13);
		;
		v17=_2e(v17,v11);
		;
		$f.l=456;
		v14=_2f(v7,v8);
		;
		$f.l=458;
		v15=0.5 * v14;
		$f.l=459;
		v5=v5 + v15;
		$f.l=462;
		v17=_28(v7,v11);
		;
		v17=_36(v17,v12);
		;
		v17=_36(v17,v13);
		;
		v19=v15 * 0.33333334;
		v17=_35(v17,v19);
		;
		$f.l=463;
		v17=_36(v3,v7);
		;
		$f.l=447;
		v10=(v10 + 1)|0;
		{ $b=27; break; }
	case 63:
		$f.l=467;
		v4=$g116;
		if(v4!=0) {$b=71; break;}
		v20=(v5 != v5 || 1.1920929E-7 != 1.1920929E-7) ? -1 : (v5 > 1.1920929E-7) - (v5 < 1.1920929E-7);
		if(v20>0) {$b=71; break;}
		v16=new java/lang/AssertionError;
		_26(v16);
		throw v16;
	case 71:
		$f.l=468;
		v19=1.0 / v5;
		v17=_35(v3,v19);
		;
		$f.l=469;
		return;
}
}
//org/jbox2d/collision/shapes/PolygonShape:computeMass
function _2a0(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=496;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g116;
		if(v3!=0) {$b=11; break;}
		v20=v0.m_count;
		if(v20>=3) {$b=11; break;}
		v21=new java/lang/AssertionError;
		_26(v21);
		throw v21;
	case 11:
		$f.l=498;
		v4=v0.pool1;
		$f.l=499;
		_29(v4);
		$f.l=500;
		v5=0.0;
		$f.l=501;
		v6=0.0;
		$f.l=505;
		v7=v0.pool2;
		$f.l=506;
		_29(v7);
		$f.l=508;
		v8=0;
	case 25:
		v20=v0.m_count;
		if(v8>=v20) {$b=34; break;}
		$f.l=509;
		v22=v0.m_vertices;
		v23=v22[v8];
		v23=_36(v7,v23);
		;
		$f.l=508;
		v8=(v8 + 1)|0;
		{ $b=25; break; }
	case 34:
		$f.l=511;
		v20=v0.m_count;
		v24=v20;
		v24=1.0 / v24;
		v23=_35(v7,v24);
		;
		$f.l=513;
		v25=0.33333334;
		$f.l=515;
		v9=v0.pool3;
		$f.l=516;
		v10=v0.pool4;
		$f.l=518;
		v11=0;
	case 47:
		v20=v0.m_count;
		if(v11>=v20) {$b=119; break;}
		$f.l=520;
		v22=v0.m_vertices;
		v23=v22[v11];
		v23=_28(v9,v23);
		;
		v23=_2e(v23,v7);
		;
		$f.l=521;
		v23=_28(v10,v7);
		;
		v23=_3a(v23);
		;
		v20=(v11 + 1)|0;
		v26=v0.m_count;
		if(v20>=v26) {$b=64; break;}
		v22=v0.m_vertices;
		v26=(v11 + 1)|0;
		v27=v22[v26];
		{ $b=66; break; }
	case 64:
		v22=v0.m_vertices;
		v27=v22[0];
	case 66:
		v27=_36(v23,v27);
		;
		$f.l=523;
		v12=_2f(v9,v10);
		;
		$f.l=525;
		v13=0.5 * v12;
		$f.l=526;
		v5=v5 + v13;
		$f.l=529;
		v27=v4;
		v24=v4.x;
		v28=v13 * 0.33333334;
		v29=v9.x;
		v30=v10.x;
		v30=v29 + v30;
		v30=v28 * v30;
		v30=v24 + v30;
		v4.x=v30;
		$f.l=530;
		v27=v4;
		v30=v4.y;
		v29=v13 * 0.33333334;
		v28=v9.y;
		v24=v10.y;
		v28=v28 + v24;
		v29=v29 * v28;
		v30=v30 + v29;
		v4.y=v30;
		$f.l=532;
		v14=v9.x;
		v15=v9.y;
		$f.l=533;
		v16=v10.x;
		v17=v10.y;
		$f.l=535;
		v30=v14 * v14;
		v29=v16 * v14;
		v30=v30 + v29;
		v29=v16 * v16;
		v18=v30 + v29;
		$f.l=536;
		v30=v15 * v15;
		v29=v17 * v15;
		v30=v30 + v29;
		v29=v17 * v17;
		v19=v30 + v29;
		$f.l=538;
		v30=0.083333336 * v12;
		v29=v18 + v19;
		v30=v30 * v29;
		v6=v6 + v30;
		$f.l=518;
		v11=(v11 + 1)|0;
		{ $b=47; break; }
	case 119:
		$f.l=542;
		v30=v2 * v5;
		v1.mass=v30;
		$f.l=545;
		v3=$g116;
		if(v3!=0) {$b=130; break;}
		v31=(v5 != v5 || 1.1920929E-7 != 1.1920929E-7) ? -1 : (v5 > 1.1920929E-7) - (v5 < 1.1920929E-7);
		if(v31>0) {$b=130; break;}
		v21=new java/lang/AssertionError;
		_26(v21);
		throw v21;
	case 130:
		$f.l=546;
		v30=1.0 / v5;
		v27=_35(v4,v30);
		;
		$f.l=547;
		v27=v1.center;
		v27=_28(v27,v4);
		;
		v27=_36(v27,v7);
		;
		$f.l=550;
		v30=v6 * v2;
		v1.I=v30;
		$f.l=553;
		v32=v1;
		v30=v1.I;
		v29=v1.mass;
		v27=v1.center;
		v23=v1.center;
		v28=_4d(v27,v23);
		;
		v29=v29 * v28;
		v30=v30 + v29;
		v1.I=v30;
		$f.l=554;
		return;
}
}
//org/jbox2d/collision/shapes/PolygonShape:clone
function _2a1(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
v1=v0.$c.$vt[17](v0);
;
return v1;
}
//org/jbox2d/collision/shapes/PolygonShape:<clinit>
function _2a2(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=41;
		v0=vm.getClass(42);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g116=v1;
		return;
}
}
//org/jbox2d/dynamics/contacts/ChainAndPolygonContact:<init>
function _2a3(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=48;
v2=new org/jbox2d/collision/shapes/EdgeShape;
_28e(v2);
v0.edge=v2;
$f.l=39;
return;
}
//org/jbox2d/dynamics/contacts/ChainAndPolygonContact:init
function _2a4(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=43;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		_19f(v0,v1,v2,v3,v4);
		$f.l=44;
		v5=$g117;
		if(v5!=0) {$b=17; break;}
		v6=v0.m_fixtureA;
		v7=_8e(v6);
		;
		v8=$g11;
		if(v7==v8) {$b=17; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 17:
		$f.l=45;
		v5=$g117;
		if(v5!=0) {$b=27; break;}
		v6=v0.m_fixtureB;
		v8=_8e(v6);
		;
		v7=$g10;
		if(v8==v7) {$b=27; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 27:
		$f.l=46;
		return;
}
}
//org/jbox2d/dynamics/contacts/ChainAndPolygonContact:evaluate
function _2a5(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v5=v0.m_fixtureA;
v6=_23(v5);
;
v4=vm.cast(v6,43);
$f.l=53;
v7=v0.edge;
v8=v0.m_indexA;
_2a6(v4,v7,v8);
$f.l=54;
v9=v0.pool;
v10=v9.$c.$it[38](v9);
;
v7=v0.edge;
v5=v0.m_fixtureB;
v6=_23(v5);
;
v11=vm.cast(v6,42);
_5e(v10,v1,v7,v2,v11,v3);
$f.l=56;
return;
}
//org/jbox2d/dynamics/contacts/ChainAndPolygonContact:<clinit>
function _2a7(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=35;
		v0=vm.getClass(81);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g117=v1;
		return;
}
}
//java/lang/NoSuchFieldError:<init>
function _1d1(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=a1;
_294(v0,v1);
$f.l=46;
return;
}
//org/jbox2d/dynamics/contacts/CircleContact:<init>
function _2a8(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=37;
return;
}
//org/jbox2d/dynamics/contacts/CircleContact:evaluate
function _2a9(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=v0.pool;
v5=v4.$c.$it[38](v4);
;
v6=v0.m_fixtureA;
v7=_23(v6);
;
v8=vm.cast(v7,41);
v6=v0.m_fixtureB;
v7=_23(v6);
;
v9=vm.cast(v7,41);
_50(v5,v1,v8,v2,v9,v3);
$f.l=49;
return;
}
//org/jbox2d/dynamics/contacts/CircleContact:<clinit>
function _2aa(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=33;
		v0=vm.getClass(82);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g118=v1;
		return;
}
}
//org/jbox2d/dynamics/contacts/ChainAndCircleContact:<init>
function _2ab(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=48;
v2=new org/jbox2d/collision/shapes/EdgeShape;
_28e(v2);
v0.edge=v2;
$f.l=39;
return;
}
//org/jbox2d/dynamics/contacts/ChainAndCircleContact:init
function _2ac(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=43;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		_19f(v0,v1,v2,v3,v4);
		$f.l=44;
		v5=$g119;
		if(v5!=0) {$b=17; break;}
		v6=v0.m_fixtureA;
		v7=_8e(v6);
		;
		v8=$g11;
		if(v7==v8) {$b=17; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 17:
		$f.l=45;
		v5=$g119;
		if(v5!=0) {$b=27; break;}
		v6=v0.m_fixtureB;
		v8=_8e(v6);
		;
		v7=$g9;
		if(v8==v7) {$b=27; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 27:
		$f.l=46;
		return;
}
}
//org/jbox2d/dynamics/contacts/ChainAndCircleContact:evaluate
function _2ad(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v5=v0.m_fixtureA;
v6=_23(v5);
;
v4=vm.cast(v6,43);
$f.l=53;
v7=v0.edge;
v8=v0.m_indexA;
_2a6(v4,v7,v8);
$f.l=54;
v9=v0.pool;
v10=v9.$c.$it[38](v9);
;
v7=v0.edge;
v5=v0.m_fixtureB;
v6=_23(v5);
;
v11=vm.cast(v6,41);
_5b(v10,v1,v7,v2,v11,v3);
$f.l=56;
return;
}
//org/jbox2d/dynamics/contacts/ChainAndCircleContact:<clinit>
function _2ae(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=35;
		v0=vm.getClass(83);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g119=v1;
		return;
}
}
//org/jbox2d/pooling/normal/DefaultWorldPool$13:<init>
function _2af(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=128;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.this$0=v1;
_9a(v0,v2,v3);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$13:newInstance
function _2b0(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=129;
v0=a0;
v1=new org/jbox2d/common/Mat33;
_25c(v1);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$13:newInstance
function _2b1(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=128;
v0=a0;
v1=_2b0(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$12:<init>
function _2b2(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=125;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.this$0=v1;
_9a(v0,v2,v3);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$12:newInstance
function _2b3(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=126;
v0=a0;
v1=new org/jbox2d/common/Rot;
_2b4(v1);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$12:newInstance
function _2b5(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=125;
v0=a0;
v1=_2b3(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$11:<init>
function _2b6(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=122;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.this$0=v1;
_9a(v0,v2,v3);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$11:newInstance
function _2b7(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=123;
v0=a0;
v1=new org/jbox2d/collision/AABB;
_8c(v1);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$11:newInstance
function _2b8(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=122;
v0=a0;
v1=_2b7(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$10:<init>
function _2b9(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=119;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.this$0=v1;
_9a(v0,v2,v3);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$10:newInstance
function _2ba(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=120;
v0=a0;
v1=new org/jbox2d/common/Mat22;
_235(v1);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$10:newInstance
function _2bb(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=119;
v0=a0;
v1=_2ba(v0);
;
return v1;
}
//org/jbox2d/dynamics/joints/RevoluteJoint:<init>
function _da(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=92;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=62;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localAnchorA=v3;
$f.l=63;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localAnchorB=v3;
$f.l=64;
v4=new org/jbox2d/common/Vec3;
_25b(v4);
v0.m_impulse=v4;
$f.l=79;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rA=v3;
$f.l=80;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rB=v3;
$f.l=81;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=82;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=87;
v5=new org/jbox2d/common/Mat33;
_25c(v5);
v0.m_mass=v5;
$f.l=93;
v3=v0.m_localAnchorA;
v6=v2.localAnchorA;
v6=_28(v3,v6);
;
$f.l=94;
v6=v0.m_localAnchorB;
v3=v2.localAnchorB;
v6=_28(v6,v3);
;
$f.l=95;
v7=v2.referenceAngle;
v0.m_referenceAngle=v7;
$f.l=97;
v0.m_motorImpulse=0.0;
$f.l=99;
v7=v2.lowerAngle;
v0.m_lowerAngle=v7;
$f.l=100;
v7=v2.upperAngle;
v0.m_upperAngle=v7;
$f.l=101;
v7=v2.maxMotorTorque;
v0.m_maxMotorTorque=v7;
$f.l=102;
v7=v2.motorSpeed;
v0.m_motorSpeed=v7;
$f.l=103;
v8=v2.enableLimit;
v0.m_enableLimit=v8;
$f.l=104;
v8=v2.enableMotor;
v0.m_enableMotor=v8;
$f.l=105;
v9=$g105;
v0.m_limitState=v9;
$f.l=106;
return;
}
//org/jbox2d/dynamics/joints/RevoluteJoint:initVelocityConstraints
function _2bc(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=110;
		v0=a0;
		v1=a1;
		v17=v0.m_bodyA;
		v18=v17.m_islandIndex;
		v0.m_indexA=v18;
		$f.l=111;
		v17=v0.m_bodyB;
		v18=v17.m_islandIndex;
		v0.m_indexB=v18;
		$f.l=112;
		v19=v0.m_localCenterA;
		v17=v0.m_bodyA;
		v20=v17.m_sweep;
		v21=v20.localCenter;
		v21=_28(v19,v21);
		;
		$f.l=113;
		v21=v0.m_localCenterB;
		v17=v0.m_bodyB;
		v20=v17.m_sweep;
		v19=v20.localCenter;
		v21=_28(v21,v19);
		;
		$f.l=114;
		v17=v0.m_bodyA;
		v22=v17.m_invMass;
		v0.m_invMassA=v22;
		$f.l=115;
		v17=v0.m_bodyB;
		v22=v17.m_invMass;
		v0.m_invMassB=v22;
		$f.l=116;
		v17=v0.m_bodyA;
		v22=v17.m_invI;
		v0.m_invIA=v22;
		$f.l=117;
		v17=v0.m_bodyB;
		v22=v17.m_invI;
		v0.m_invIB=v22;
		$f.l=120;
		v23=v1.positions;
		v18=v0.m_indexA;
		v24=v23[v18];
		v2=v24.a;
		$f.l=121;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v3=v26.v;
		$f.l=122;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v4=v26.w;
		$f.l=125;
		v23=v1.positions;
		v18=v0.m_indexB;
		v24=v23[v18];
		v5=v24.a;
		$f.l=126;
		v25=v1.velocities;
		v18=v0.m_indexB;
		v26=v25[v18];
		v6=v26.v;
		$f.l=127;
		v25=v1.velocities;
		v18=v0.m_indexB;
		v26=v25[v18];
		v7=v26.w;
		$f.l=128;
		v27=v0.pool;
		v8=v27.$c.$it[39](v27);
		;
		$f.l=129;
		v27=v0.pool;
		v9=v27.$c.$it[39](v27);
		;
		$f.l=130;
		v27=v0.pool;
		v10=v27.$c.$it[32](v27);
		;
		$f.l=132;
		v28=_2c(v8,v2);
		;
		$f.l=133;
		v28=_2c(v9,v5);
		;
		$f.l=136;
		v21=v0.m_localAnchorA;
		v21=_28(v10,v21);
		;
		v19=v0.m_localCenterA;
		v21=_2e(v21,v19);
		;
		v19=v0.m_rA;
		_39(v8,v21,v19);
		$f.l=137;
		v21=v0.m_localAnchorB;
		v21=_28(v10,v21);
		;
		v19=v0.m_localCenterB;
		v21=_2e(v21,v19);
		;
		v19=v0.m_rB;
		_39(v9,v21,v19);
		$f.l=148;
		v11=v0.m_invMassA;
		v12=v0.m_invMassB;
		$f.l=149;
		v13=v0.m_invIA;
		v14=v0.m_invIB;
		$f.l=151;
		v22=v13 + v14;
		v29=(v22 != v22 || 0.0 != 0.0) ? -1 : (v22 > 0.0) - (v22 < 0.0);
		if(v29!=0) {$b=107; break;}
		v30=1;
		{ $b=108; break; }
	case 107:
		v30=0;
	case 108:
		v15=v30;
		$f.l=153;
		v31=v0.m_mass;
		v32=v31.ex;
		v22=v11 + v12;
		v21=v0.m_rA;
		v33=v21.y;
		v21=v0.m_rA;
		v34=v21.y;
		v34=v33 * v34;
		v34=v34 * v13;
		v34=v22 + v34;
		v21=v0.m_rB;
		v33=v21.y;
		v21=v0.m_rB;
		v22=v21.y;
		v33=v33 * v22;
		v33=v33 * v14;
		v34=v34 + v33;
		v32.x=v34;
		$f.l=154;
		v31=v0.m_mass;
		v32=v31.ey;
		v21=v0.m_rA;
		v34=v21.y;
		v34=-v34;
		v21=v0.m_rA;
		v33=v21.x;
		v34=v34 * v33;
		v34=v34 * v13;
		v21=v0.m_rB;
		v33=v21.y;
		v21=v0.m_rB;
		v22=v21.x;
		v33=v33 * v22;
		v33=v33 * v14;
		v34=v34 - v33;
		v32.x=v34;
		$f.l=155;
		v31=v0.m_mass;
		v32=v31.ez;
		v21=v0.m_rA;
		v34=v21.y;
		v34=-v34;
		v34=v34 * v13;
		v21=v0.m_rB;
		v33=v21.y;
		v33=v33 * v14;
		v34=v34 - v33;
		v32.x=v34;
		$f.l=156;
		v31=v0.m_mass;
		v32=v31.ex;
		v31=v0.m_mass;
		v35=v31.ey;
		v34=v35.x;
		v32.y=v34;
		$f.l=157;
		v31=v0.m_mass;
		v35=v31.ey;
		v34=v11 + v12;
		v21=v0.m_rA;
		v33=v21.x;
		v21=v0.m_rA;
		v22=v21.x;
		v33=v33 * v22;
		v33=v33 * v13;
		v34=v34 + v33;
		v21=v0.m_rB;
		v33=v21.x;
		v21=v0.m_rB;
		v22=v21.x;
		v33=v33 * v22;
		v33=v33 * v14;
		v34=v34 + v33;
		v35.y=v34;
		$f.l=158;
		v31=v0.m_mass;
		v35=v31.ez;
		v21=v0.m_rA;
		v34=v21.x;
		v34=v34 * v13;
		v21=v0.m_rB;
		v33=v21.x;
		v33=v33 * v14;
		v34=v34 + v33;
		v35.y=v34;
		$f.l=159;
		v31=v0.m_mass;
		v35=v31.ex;
		v31=v0.m_mass;
		v32=v31.ez;
		v34=v32.x;
		v35.z=v34;
		$f.l=160;
		v31=v0.m_mass;
		v35=v31.ey;
		v31=v0.m_mass;
		v32=v31.ez;
		v34=v32.y;
		v35.z=v34;
		$f.l=161;
		v31=v0.m_mass;
		v35=v31.ez;
		v34=v13 + v14;
		v35.z=v34;
		$f.l=163;
		v34=v13 + v14;
		v0.m_motorMass=v34;
		$f.l=164;
		v34=v0.m_motorMass;
		v29=(v34 != v34 || 0.0 != 0.0) ? -1 : (v34 > 0.0) - (v34 < 0.0);
		if(v29<=0) {$b=225; break;}
		$f.l=165;
		v34=v0.m_motorMass;
		v34=1.0 / v34;
		v0.m_motorMass=v34;
	case 225:
		$f.l=168;
		v30=v0.m_enableMotor;
		if(v30==0) {$b=229; break;}
		if(v15==0) {$b=231; break;}
	case 229:
		$f.l=169;
		v0.m_motorImpulse=0.0;
	case 231:
		$f.l=172;
		v30=v0.m_enableLimit;
		if(v30==0) {$b=288; break;}
		if(v15!=0) {$b=288; break;}
		$f.l=173;
		v34=v5 - v2;
		v33=v0.m_referenceAngle;
		v16=v34 - v33;
		$f.l=174;
		v34=v0.m_upperAngle;
		v33=v0.m_lowerAngle;
		v34=v34 - v33;
		v34=_199(v34);
		;
		v29=(v34 != v34 || 0.06981318 != 0.06981318) ? 1 : (v34 > 0.06981318) - (v34 < 0.06981318);
		if(v29>=0) {$b=250; break;}
		$f.l=175;
		v36=$g106;
		v0.m_limitState=v36;
		{ $b=286; break; }
	case 250:
		$f.l=176;
		v34=v0.m_lowerAngle;
		v29=(v16 != v16 || v34 != v34) ? 1 : (v16 > v34) - (v16 < v34);
		if(v29>0) {$b=265; break;}
		$f.l=177;
		v36=v0.m_limitState;
		v37=$g107;
		if(v36==v37) {$b=261; break;}
		$f.l=178;
		v35=v0.m_impulse;
		v35.z=0.0;
	case 261:
		$f.l=180;
		v37=$g107;
		v0.m_limitState=v37;
		{ $b=286; break; }
	case 265:
		$f.l=181;
		v34=v0.m_upperAngle;
		v29=(v16 != v16 || v34 != v34) ? -1 : (v16 > v34) - (v16 < v34);
		if(v29<0) {$b=280; break;}
		$f.l=182;
		v37=v0.m_limitState;
		v36=$g108;
		if(v37==v36) {$b=276; break;}
		$f.l=183;
		v35=v0.m_impulse;
		v35.z=0.0;
	case 276:
		$f.l=185;
		v37=$g108;
		v0.m_limitState=v37;
		{ $b=286; break; }
	case 280:
		$f.l=187;
		v37=$g105;
		v0.m_limitState=v37;
		$f.l=188;
		v35=v0.m_impulse;
		v35.z=0.0;
	case 286:
		$f.l=190;
		{ $b=291; break; }
	case 288:
		$f.l=191;
		v37=$g105;
		v0.m_limitState=v37;
	case 291:
		$f.l=194;
		v38=v1.step;
		v30=v38.warmStarting;
		if(v30==0) {$b=380; break;}
		$f.l=195;
		v27=v0.pool;
		v39=v27.$c.$it[32](v27);
		;
		$f.l=197;
		v35=v0.m_impulse;
		v34=v35.x;
		v38=v1.step;
		v33=v38.dtRatio;
		v34=v34 * v33;
		v35.x=v34;
		$f.l=198;
		v35=v0.m_impulse;
		v34=v35.y;
		v38=v1.step;
		v33=v38.dtRatio;
		v34=v34 * v33;
		v35.y=v34;
		$f.l=199;
		v40=v0;
		v34=v0.m_motorImpulse;
		v38=v1.step;
		v33=v38.dtRatio;
		v34=v34 * v33;
		v0.m_motorImpulse=v34;
		$f.l=201;
		v35=v0.m_impulse;
		v34=v35.x;
		v39.x=v34;
		$f.l=202;
		v35=v0.m_impulse;
		v34=v35.y;
		v39.y=v34;
		$f.l=204;
		v21=v3;
		v34=v3.x;
		v33=v39.x;
		v33=v11 * v33;
		v34=v34 - v33;
		v3.x=v34;
		$f.l=205;
		v21=v3;
		v34=v3.y;
		v33=v39.y;
		v33=v11 * v33;
		v34=v34 - v33;
		v3.y=v34;
		$f.l=206;
		v21=v0.m_rA;
		v34=_2f(v21,v39);
		;
		v33=v0.m_motorImpulse;
		v34=v34 + v33;
		v35=v0.m_impulse;
		v33=v35.z;
		v34=v34 + v33;
		v34=v13 * v34;
		v4=v4 - v34;
		$f.l=208;
		v21=v6;
		v34=v6.x;
		v33=v39.x;
		v33=v12 * v33;
		v34=v34 + v33;
		v6.x=v34;
		$f.l=209;
		v21=v6;
		v34=v6.y;
		v33=v39.y;
		v33=v12 * v33;
		v34=v34 + v33;
		v6.y=v34;
		$f.l=210;
		v21=v0.m_rB;
		v34=_2f(v21,v39);
		;
		v33=v0.m_motorImpulse;
		v34=v34 + v33;
		v35=v0.m_impulse;
		v33=v35.z;
		v34=v34 + v33;
		v34=v14 * v34;
		v7=v7 + v34;
		$f.l=211;
		v27=v0.pool;
		v27.$c.$it[43](v27,1);
		$f.l=212;
		{ $b=385; break; }
	case 380:
		$f.l=213;
		v35=v0.m_impulse;
		_260(v35);
		$f.l=214;
		v0.m_motorImpulse=0.0;
	case 385:
		$f.l=217;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v26.w=v4;
		$f.l=219;
		v25=v1.velocities;
		v18=v0.m_indexB;
		v26=v25[v18];
		v26.w=v7;
		$f.l=221;
		v27=v0.pool;
		v27.$c.$it[43](v27,1);
		$f.l=222;
		v27=v0.pool;
		v27.$c.$it[30](v27,2);
		$f.l=223;
		return;
}
}
//org/jbox2d/dynamics/joints/RevoluteJoint:solveVelocityConstraints
function _2bd(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=227;
		v0=a0;
		v1=a1;
		v18=v1.velocities;
		v19=v0.m_indexA;
		v20=v18[v19];
		v2=v20.v;
		$f.l=228;
		v18=v1.velocities;
		v19=v0.m_indexA;
		v20=v18[v19];
		v3=v20.w;
		$f.l=229;
		v18=v1.velocities;
		v19=v0.m_indexB;
		v20=v18[v19];
		v4=v20.v;
		$f.l=230;
		v18=v1.velocities;
		v19=v0.m_indexB;
		v20=v18[v19];
		v5=v20.w;
		$f.l=232;
		v6=v0.m_invMassA;
		v7=v0.m_invMassB;
		$f.l=233;
		v8=v0.m_invIA;
		v9=v0.m_invIB;
		$f.l=235;
		v21=v8 + v9;
		v22=(v21 != v21 || 0.0 != 0.0) ? -1 : (v21 > 0.0) - (v21 < 0.0);
		if(v22!=0) {$b=34; break;}
		v23=1;
		{ $b=35; break; }
	case 34:
		v23=0;
	case 35:
		v10=v23;
		$f.l=238;
		v23=v0.m_enableMotor;
		if(v23==0) {$b=73; break;}
		v24=v0.m_limitState;
		v25=$g106;
		if(v24==v25) {$b=73; break;}
		if(v10!=0) {$b=73; break;}
		$f.l=239;
		v21=v5 - v3;
		v26=v0.m_motorSpeed;
		v11=v21 - v26;
		$f.l=240;
		v26=v0.m_motorMass;
		v26=-v26;
		v12=v26 * v11;
		$f.l=241;
		v13=v0.m_motorImpulse;
		$f.l=242;
		v27=v1.step;
		v26=v27.dt;
		v21=v0.m_maxMotorTorque;
		v14=v26 * v21;
		$f.l=243;
		v26=v0.m_motorImpulse;
		v26=v26 + v12;
		v21=-v14;
		v26=_33(v26,v21,v14);
		;
		v0.m_motorImpulse=v26;
		$f.l=244;
		v26=v0.m_motorImpulse;
		v12=v26 - v13;
		$f.l=246;
		v26=v8 * v12;
		v3=v3 - v26;
		$f.l=247;
		v26=v9 * v12;
		v5=v5 + v26;
	case 73:
		$f.l=249;
		v28=v0.pool;
		v29=v28.$c.$it[32](v28);
		;
		$f.l=252;
		v23=v0.m_enableLimit;
		if(v23==0) {$b=307; break;}
		v25=v0.m_limitState;
		v24=$g105;
		if(v25==v24) {$b=307; break;}
		if(v10!=0) {$b=307; break;}
		$f.l=254;
		v28=v0.pool;
		v30=v28.$c.$it[32](v28);
		;
		$f.l=255;
		v28=v0.pool;
		v31=v28.$c.$it[28](v28);
		;
		$f.l=258;
		v32=v0.m_rA;
		_1df(v3,v32,v29);
		$f.l=259;
		v32=v0.m_rB;
		_1df(v5,v32,v30);
		$f.l=260;
		v32=_36(v30,v4);
		;
		v32=_2e(v32,v2);
		;
		v32=_2e(v32,v29);
		;
		$f.l=261;
		v14=v5 - v3;
		$f.l=262;
		v26=v30.x;
		v21=v30.y;
		v33=_25e(v31,v26,v21,v14);
		;
		$f.l=264;
		v28=v0.pool;
		v15=v28.$c.$it[28](v28);
		;
		$f.l=265;
		v34=v0.m_mass;
		_264(v34,v31,v15);
		$f.l=266;
		v33=_263(v15);
		;
		$f.l=268;
		v25=v0.m_limitState;
		v24=$g106;
		if(v25!=v24) {$b=121; break;}
		$f.l=269;
		v33=v0.m_impulse;
		v33=_265(v33,v15);
		;
		{ $b=250; break; }
	case 121:
		$f.l=270;
		v25=v0.m_limitState;
		v24=$g107;
		if(v25!=v24) {$b=187; break;}
		$f.l=271;
		v33=v0.m_impulse;
		v26=v33.z;
		v21=v15.z;
		v16=v26 + v21;
		$f.l=272;
		v22=(v16 != v16 || 0.0 != 0.0) ? 1 : (v16 > 0.0) - (v16 < 0.0);
		if(v22>=0) {$b=182; break;}
		$f.l=273;
		v28=v0.pool;
		v17=v28.$c.$it[32](v28);
		;
		$f.l=274;
		v34=v0.m_mass;
		v33=v34.ez;
		v26=v33.x;
		v34=v0.m_mass;
		v33=v34.ez;
		v21=v33.y;
		v32=_30(v17,v26,v21);
		;
		v33=v0.m_impulse;
		v26=v33.z;
		v32=_35(v32,v26);
		;
		v32=_2e(v32,v30);
		;
		$f.l=275;
		v34=v0.m_mass;
		_266(v34,v17,v29);
		$f.l=276;
		v26=v29.x;
		v15.x=v26;
		$f.l=277;
		v26=v29.y;
		v15.y=v26;
		$f.l=278;
		v33=v0.m_impulse;
		v26=v33.z;
		v26=-v26;
		v15.z=v26;
		$f.l=279;
		v33=v0.m_impulse;
		v26=v33.x;
		v21=v29.x;
		v26=v26 + v21;
		v33.x=v26;
		$f.l=280;
		v33=v0.m_impulse;
		v26=v33.y;
		v21=v29.y;
		v26=v26 + v21;
		v33.y=v26;
		$f.l=281;
		v33=v0.m_impulse;
		v33.z=0.0;
		$f.l=282;
		v28=v0.pool;
		v28.$c.$it[43](v28,1);
		$f.l=283;
		{ $b=185; break; }
	case 182:
		$f.l=284;
		v33=v0.m_impulse;
		v33=_265(v33,v15);
		;
	case 185:
		$f.l=286;
		{ $b=250; break; }
	case 187:
		v25=v0.m_limitState;
		v24=$g108;
		if(v25!=v24) {$b=250; break;}
		$f.l=287;
		v33=v0.m_impulse;
		v26=v33.z;
		v21=v15.z;
		v16=v26 + v21;
		$f.l=288;
		v22=(v16 != v16 || 0.0 != 0.0) ? -1 : (v16 > 0.0) - (v16 < 0.0);
		if(v22<=0) {$b=247; break;}
		$f.l=289;
		v28=v0.pool;
		v17=v28.$c.$it[32](v28);
		;
		$f.l=290;
		v34=v0.m_mass;
		v33=v34.ez;
		v26=v33.x;
		v34=v0.m_mass;
		v33=v34.ez;
		v21=v33.y;
		v32=_30(v17,v26,v21);
		;
		v33=v0.m_impulse;
		v26=v33.z;
		v32=_35(v32,v26);
		;
		v32=_2e(v32,v30);
		;
		$f.l=291;
		v34=v0.m_mass;
		_266(v34,v17,v29);
		$f.l=292;
		v26=v29.x;
		v15.x=v26;
		$f.l=293;
		v26=v29.y;
		v15.y=v26;
		$f.l=294;
		v33=v0.m_impulse;
		v26=v33.z;
		v26=-v26;
		v15.z=v26;
		$f.l=295;
		v33=v0.m_impulse;
		v26=v33.x;
		v21=v29.x;
		v26=v26 + v21;
		v33.x=v26;
		$f.l=296;
		v33=v0.m_impulse;
		v26=v33.y;
		v21=v29.y;
		v26=v26 + v21;
		v33.y=v26;
		$f.l=297;
		v33=v0.m_impulse;
		v33.z=0.0;
		$f.l=298;
		v28=v0.pool;
		v28.$c.$it[43](v28,1);
		$f.l=299;
		{ $b=250; break; }
	case 247:
		$f.l=300;
		v33=v0.m_impulse;
		v33=_265(v33,v15);
		;
	case 250:
		$f.l=303;
		v28=v0.pool;
		v35=v28.$c.$it[32](v28);
		;
		$f.l=305;
		v26=v15.x;
		v21=v15.y;
		v32=_30(v35,v26,v21);
		;
		$f.l=307;
		v32=v2;
		v26=v2.x;
		v21=v35.x;
		v21=v6 * v21;
		v26=v26 - v21;
		v2.x=v26;
		$f.l=308;
		v32=v2;
		v26=v2.y;
		v21=v35.y;
		v21=v6 * v21;
		v26=v26 - v21;
		v2.y=v26;
		$f.l=309;
		v32=v0.m_rA;
		v26=_2f(v32,v35);
		;
		v21=v15.z;
		v26=v26 + v21;
		v26=v8 * v26;
		v3=v3 - v26;
		$f.l=311;
		v32=v4;
		v26=v4.x;
		v21=v35.x;
		v21=v7 * v21;
		v26=v26 + v21;
		v4.x=v26;
		$f.l=312;
		v32=v4;
		v26=v4.y;
		v21=v35.y;
		v21=v7 * v21;
		v26=v26 + v21;
		v4.y=v26;
		$f.l=313;
		v32=v0.m_rB;
		v26=_2f(v32,v35);
		;
		v21=v15.z;
		v26=v26 + v21;
		v26=v9 * v26;
		v5=v5 + v26;
		$f.l=315;
		v28=v0.pool;
		v28.$c.$it[43](v28,2);
		$f.l=316;
		v28=v0.pool;
		v28.$c.$it[36](v28,2);
		$f.l=317;
		{ $b=380; break; }
	case 307:
		$f.l=320;
		v28=v0.pool;
		v30=v28.$c.$it[32](v28);
		;
		$f.l=321;
		v28=v0.pool;
		v36=v28.$c.$it[32](v28);
		;
		$f.l=323;
		v32=v0.m_rA;
		_1df(v3,v32,v29);
		$f.l=324;
		v32=v0.m_rB;
		_1df(v5,v32,v30);
		$f.l=325;
		v32=_36(v30,v4);
		;
		v32=_2e(v32,v2);
		;
		v32=_2e(v32,v29);
		;
		$f.l=326;
		v34=v0.m_mass;
		v32=_3a(v30);
		;
		_266(v34,v32,v36);
		$f.l=328;
		v33=v0.m_impulse;
		v26=v33.x;
		v21=v36.x;
		v26=v26 + v21;
		v33.x=v26;
		$f.l=329;
		v33=v0.m_impulse;
		v26=v33.y;
		v21=v36.y;
		v26=v26 + v21;
		v33.y=v26;
		$f.l=331;
		v32=v2;
		v26=v2.x;
		v21=v36.x;
		v21=v6 * v21;
		v26=v26 - v21;
		v2.x=v26;
		$f.l=332;
		v32=v2;
		v26=v2.y;
		v21=v36.y;
		v21=v6 * v21;
		v26=v26 - v21;
		v2.y=v26;
		$f.l=333;
		v32=v0.m_rA;
		v26=_2f(v32,v36);
		;
		v26=v8 * v26;
		v3=v3 - v26;
		$f.l=335;
		v32=v4;
		v26=v4.x;
		v21=v36.x;
		v21=v7 * v21;
		v26=v26 + v21;
		v4.x=v26;
		$f.l=336;
		v32=v4;
		v26=v4.y;
		v21=v36.y;
		v21=v7 * v21;
		v26=v26 + v21;
		v4.y=v26;
		$f.l=337;
		v32=v0.m_rB;
		v26=_2f(v32,v36);
		;
		v26=v9 * v26;
		v5=v5 + v26;
		$f.l=339;
		v28=v0.pool;
		v28.$c.$it[43](v28,2);
	case 380:
		$f.l=343;
		v18=v1.velocities;
		v19=v0.m_indexA;
		v20=v18[v19];
		v20.w=v3;
		$f.l=345;
		v18=v1.velocities;
		v19=v0.m_indexB;
		v20=v18[v19];
		v20.w=v5;
		$f.l=347;
		v28=v0.pool;
		v28.$c.$it[43](v28,1);
		$f.l=348;
		return;
}
}
//org/jbox2d/dynamics/joints/RevoluteJoint:solvePositionConstraints
function _2be(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=352;
		v0=a0;
		v1=a1;
		v20=v0.pool;
		v2=v20.$c.$it[39](v20);
		;
		$f.l=353;
		v20=v0.pool;
		v3=v20.$c.$it[39](v20);
		;
		$f.l=354;
		v21=v1.positions;
		v22=v0.m_indexA;
		v23=v21[v22];
		v4=v23.c;
		$f.l=355;
		v21=v1.positions;
		v22=v0.m_indexA;
		v23=v21[v22];
		v5=v23.a;
		$f.l=356;
		v21=v1.positions;
		v22=v0.m_indexB;
		v23=v21[v22];
		v6=v23.c;
		$f.l=357;
		v21=v1.positions;
		v22=v0.m_indexB;
		v23=v21[v22];
		v7=v23.a;
		$f.l=359;
		v24=_2c(v2,v5);
		;
		$f.l=360;
		v24=_2c(v3,v7);
		;
		$f.l=362;
		v8=0.0;
		$f.l=363;
		v9=0.0;
		$f.l=365;
		v25=v0.m_invIA;
		v26=v0.m_invIB;
		v26=v25 + v26;
		v27=(v26 != v26 || 0.0 != 0.0) ? -1 : (v26 > 0.0) - (v26 < 0.0);
		if(v27!=0) {$b=44; break;}
		v28=1;
		{ $b=45; break; }
	case 44:
		v28=0;
	case 45:
		v10=v28;
		$f.l=368;
		v28=v0.m_enableLimit;
		if(v28==0) {$b=115; break;}
		v29=v0.m_limitState;
		v30=$g105;
		if(v29==v30) {$b=115; break;}
		if(v10!=0) {$b=115; break;}
		$f.l=369;
		v26=v7 - v5;
		v25=v0.m_referenceAngle;
		v11=v26 - v25;
		$f.l=370;
		v12=0.0;
		$f.l=372;
		v30=v0.m_limitState;
		v29=$g106;
		if(v30!=v29) {$b=75; break;}
		$f.l=374;
		v26=v0.m_lowerAngle;
		v26=v11 - v26;
		v13=_33(v26,-0.13962635,0.13962635);
		;
		$f.l=377;
		v26=v0.m_motorMass;
		v26=-v26;
		v12=v26 * v13;
		$f.l=378;
		v8=_199(v13);
		;
		$f.l=379;
		{ $b=107; break; }
	case 75:
		v30=v0.m_limitState;
		v29=$g107;
		if(v30!=v29) {$b=92; break;}
		$f.l=380;
		v26=v0.m_lowerAngle;
		v13=v11 - v26;
		$f.l=381;
		v8=-v13;
		$f.l=384;
		v26=v13 + 0.03490659;
		v13=_33(v26,-0.13962635,0.0);
		;
		$f.l=385;
		v26=v0.m_motorMass;
		v26=-v26;
		v12=v26 * v13;
		$f.l=386;
		{ $b=107; break; }
	case 92:
		v30=v0.m_limitState;
		v29=$g108;
		if(v30!=v29) {$b=107; break;}
		$f.l=387;
		v26=v0.m_upperAngle;
		v13=v11 - v26;
		$f.l=388;
		v8=v13;
		$f.l=391;
		v26=v13 - 0.03490659;
		v13=_33(v26,0.0,0.13962635);
		;
		$f.l=392;
		v26=v0.m_motorMass;
		v26=-v26;
		v12=v26 * v13;
	case 107:
		$f.l=395;
		v26=v0.m_invIA;
		v26=v26 * v12;
		v5=v5 - v26;
		$f.l=396;
		v26=v0.m_invIB;
		v26=v26 * v12;
		v7=v7 + v26;
	case 115:
		$f.l=400;
		v24=_2c(v2,v5);
		;
		$f.l=401;
		v24=_2c(v3,v7);
		;
		$f.l=403;
		v20=v0.pool;
		v31=v20.$c.$it[32](v20);
		;
		$f.l=404;
		v20=v0.pool;
		v32=v20.$c.$it[32](v20);
		;
		$f.l=405;
		v20=v0.pool;
		v33=v20.$c.$it[32](v20);
		;
		$f.l=406;
		v20=v0.pool;
		v14=v20.$c.$it[32](v20);
		;
		$f.l=408;
		v34=v0.m_localAnchorA;
		v34=_28(v33,v34);
		;
		v35=v0.m_localCenterA;
		v35=_2e(v34,v35);
		;
		_39(v2,v35,v31);
		$f.l=409;
		v35=v0.m_localAnchorB;
		v35=_28(v33,v35);
		;
		v34=v0.m_localCenterB;
		v35=_2e(v35,v34);
		;
		_39(v3,v35,v32);
		$f.l=410;
		v35=_28(v33,v6);
		;
		v35=_36(v35,v32);
		;
		v35=_2e(v35,v4);
		;
		v35=_2e(v35,v31);
		;
		$f.l=411;
		v9=_258(v33);
		;
		$f.l=413;
		v15=v0.m_invMassA;
		v16=v0.m_invMassB;
		$f.l=414;
		v17=v0.m_invIA;
		v18=v0.m_invIB;
		$f.l=416;
		v20=v0.pool;
		v19=v20.$c.$it[47](v20);
		;
		$f.l=417;
		v35=v19.ex;
		v26=v15 + v16;
		v25=v31.y;
		v25=v17 * v25;
		v36=v31.y;
		v36=v25 * v36;
		v36=v26 + v36;
		v26=v32.y;
		v26=v18 * v26;
		v25=v32.y;
		v26=v26 * v25;
		v36=v36 + v26;
		v35.x=v36;
		$f.l=418;
		v35=v19.ex;
		v36=-v17;
		v26=v31.x;
		v36=v36 * v26;
		v26=v31.y;
		v36=v36 * v26;
		v26=v32.x;
		v26=v18 * v26;
		v25=v32.y;
		v26=v26 * v25;
		v36=v36 - v26;
		v35.y=v36;
		$f.l=419;
		v35=v19.ey;
		v34=v19.ex;
		v36=v34.y;
		v35.x=v36;
		$f.l=420;
		v35=v19.ey;
		v36=v15 + v16;
		v26=v31.x;
		v26=v17 * v26;
		v25=v31.x;
		v26=v26 * v25;
		v36=v36 + v26;
		v26=v32.x;
		v26=v18 * v26;
		v25=v32.x;
		v26=v26 * v25;
		v36=v36 + v26;
		v35.y=v36;
		$f.l=421;
		_26a(v19,v33,v14);
		$f.l=422;
		v35=_3a(v14);
		;
		$f.l=424;
		v35=v4;
		v36=v4.x;
		v26=v14.x;
		v26=v15 * v26;
		v36=v36 - v26;
		v4.x=v36;
		$f.l=425;
		v35=v4;
		v36=v4.y;
		v26=v14.y;
		v26=v15 * v26;
		v36=v36 - v26;
		v4.y=v36;
		$f.l=426;
		v36=_2f(v31,v14);
		;
		v36=v17 * v36;
		v5=v5 - v36;
		$f.l=428;
		v35=v6;
		v36=v6.x;
		v26=v14.x;
		v26=v16 * v26;
		v36=v36 + v26;
		v6.x=v36;
		$f.l=429;
		v35=v6;
		v36=v6.y;
		v26=v14.y;
		v26=v16 * v26;
		v36=v36 + v26;
		v6.y=v36;
		$f.l=430;
		v36=_2f(v32,v14);
		;
		v36=v18 * v36;
		v7=v7 + v36;
		$f.l=432;
		v20=v0.pool;
		v20.$c.$it[43](v20,4);
		$f.l=433;
		v20=v0.pool;
		v20.$c.$it[40](v20,1);
		$f.l=436;
		v21=v1.positions;
		v22=v0.m_indexA;
		v23=v21[v22];
		v23.a=v5;
		$f.l=438;
		v21=v1.positions;
		v22=v0.m_indexB;
		v23=v21[v22];
		v23.a=v7;
		$f.l=440;
		v20=v0.pool;
		v20.$c.$it[30](v20,2);
		$f.l=442;
		v27=(v9 != v9 || 0.005 != 0.005) ? 1 : (v9 > 0.005) - (v9 < 0.005);
		if(v27>0) {$b=271; break;}
		v27=(v8 != v8 || 0.03490659 != 0.03490659) ? 1 : (v8 > 0.03490659) - (v8 < 0.03490659);
		if(v27>0) {$b=271; break;}
		v28=1;
		{ $b=272; break; }
	case 271:
		v28=0;
	case 272:
		return v28;
}
}
//org/jbox2d/dynamics/joints/RevoluteJoint:<clinit>
function _2bf(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=59;
		v0=vm.getClass(78);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g120=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/PulleyJointDef:<clinit>
function _2c0(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=39;
		v0=vm.getClass(24);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g121=v1;
		return;
}
}
//org/jbox2d/dynamics/joints/DistanceJointDef:<init>
function _26e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=82;
v0=a0;
_221(v0);
$f.l=83;
v1=$g65;
v0.type=v1;
$f.l=84;
v2=new org/jbox2d/common/Vec2;
_138(v2,0.0,0.0);
v0.localAnchorA=v2;
$f.l=85;
v2=new org/jbox2d/common/Vec2;
_138(v2,0.0,0.0);
v0.localAnchorB=v2;
$f.l=86;
v0.length=1.0;
$f.l=87;
v0.frequencyHz=0.0;
$f.l=88;
v0.dampingRatio=0.0;
$f.l=89;
return;
}
//org/jbox2d/dynamics/joints/DistanceJointDef:initialize
function _26f(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=100;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=a4;
v0.bodyA=v1;
$f.l=101;
v0.bodyB=v2;
$f.l=102;
v6=v0.localAnchorA;
v7=v0.bodyA;
v8=_1e0(v7,v3);
;
v8=_28(v6,v8);
;
$f.l=103;
v8=v0.localAnchorB;
v7=v0.bodyB;
v6=_1e0(v7,v4);
;
v8=_28(v8,v6);
;
$f.l=104;
v5=_26c(v4,v3);
;
$f.l=105;
v9=_258(v5);
;
v0.length=v9;
$f.l=106;
return;
}
//org/jbox2d/collision/shapes/ChainShape:<init>
function _2c1(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=a0;
v1=$g11;
_73(v0,v1);
$f.l=48;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_prevVertex=v2;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_nextVertex=v2;
$f.l=49;
v0.m_hasPrevVertex=0;
v0.m_hasNextVertex=0;
$f.l=51;
v3=new org/jbox2d/collision/shapes/EdgeShape;
_28e(v3);
v0.pool0=v3;
$f.l=55;
v0.m_vertices=null;
$f.l=56;
v0.m_radius=0.01;
$f.l=57;
v0.m_count=0;
$f.l=58;
return;
}
//org/jbox2d/collision/shapes/ChainShape:getChildCount
function _2c2(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=62;
v0=a0;
v1=v0.m_count;
v1=(v1 - 1)|0;
return v1;
}
//org/jbox2d/collision/shapes/ChainShape:getChildEdge
function _2a6(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=69;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g122;
		if(v3!=0) {$b=13; break;}
		if(0>v2) {$b=10; break;}
		v7=v0.m_count;
		v7=(v7 - 1)|0;
		if(v2<v7) {$b=13; break;}
	case 10:
		v8=new java/lang/AssertionError;
		_26(v8);
		throw v8;
	case 13:
		$f.l=70;
		v9=v0.m_radius;
		v1.m_radius=v9;
		$f.l=72;
		v10=v0.m_vertices;
		v7=(v2 + 0)|0;
		v4=v10[v7];
		$f.l=73;
		v10=v0.m_vertices;
		v7=(v2 + 1)|0;
		v5=v10[v7];
		$f.l=74;
		v11=v1.m_vertex1;
		v9=v4.x;
		v11.x=v9;
		$f.l=75;
		v11=v1.m_vertex1;
		v9=v4.y;
		v11.y=v9;
		$f.l=76;
		v11=v1.m_vertex2;
		v9=v5.x;
		v11.x=v9;
		$f.l=77;
		v11=v1.m_vertex2;
		v9=v5.y;
		v11.y=v9;
		$f.l=79;
		if(v2<=0) {$b=58; break;}
		$f.l=80;
		v10=v0.m_vertices;
		v7=(v2 - 1)|0;
		v6=v10[v7];
		$f.l=81;
		v11=v1.m_vertex0;
		v9=v6.x;
		v11.x=v9;
		$f.l=82;
		v11=v1.m_vertex0;
		v9=v6.y;
		v11.y=v9;
		$f.l=83;
		v1.m_hasVertex0=1;
		$f.l=84;
		{ $b=71; break; }
	case 58:
		$f.l=85;
		v11=v1.m_vertex0;
		v12=v0.m_prevVertex;
		v9=v12.x;
		v11.x=v9;
		$f.l=86;
		v12=v1.m_vertex0;
		v11=v0.m_prevVertex;
		v9=v11.y;
		v12.y=v9;
		$f.l=87;
		v3=v0.m_hasPrevVertex;
		v1.m_hasVertex0=v3;
	case 71:
		$f.l=90;
		v7=v0.m_count;
		v7=(v7 - 2)|0;
		if(v2>=v7) {$b=91; break;}
		$f.l=91;
		v10=v0.m_vertices;
		v7=(v2 + 2)|0;
		v6=v10[v7];
		$f.l=92;
		v12=v1.m_vertex3;
		v9=v6.x;
		v12.x=v9;
		$f.l=93;
		v12=v1.m_vertex3;
		v9=v6.y;
		v12.y=v9;
		$f.l=94;
		v1.m_hasVertex3=1;
		$f.l=95;
		{ $b=104; break; }
	case 91:
		$f.l=96;
		v12=v1.m_vertex3;
		v11=v0.m_nextVertex;
		v9=v11.x;
		v12.x=v9;
		$f.l=97;
		v12=v1.m_vertex3;
		v11=v0.m_nextVertex;
		v9=v11.y;
		v12.y=v9;
		$f.l=98;
		v3=v0.m_hasNextVertex;
		v1.m_hasVertex3=v3;
	case 104:
		$f.l=100;
		return;
}
}
//org/jbox2d/collision/shapes/ChainShape:computeAABB
function _2c3(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=130;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=$g122;
		if(v4!=0) {$b=12; break;}
		v17=v0.m_count;
		if(v3<v17) {$b=12; break;}
		v18=new java/lang/AssertionError;
		_26(v18);
		throw v18;
	case 12:
		$f.l=131;
		v5=v1.lowerBound;
		$f.l=132;
		v6=v1.upperBound;
		$f.l=134;
		v7=v3;
		$f.l=135;
		v8=(v3 + 1)|0;
		$f.l=136;
		v17=v0.m_count;
		if(v8!=v17) {$b=25; break;}
		$f.l=137;
		v8=0;
	case 25:
		$f.l=140;
		v19=v0.m_vertices;
		v9=v19[v7];
		$f.l=141;
		v19=v0.m_vertices;
		v10=v19[v8];
		$f.l=142;
		v11=v2.q;
		$f.l=143;
		v12=v2.p;
		$f.l=144;
		v20=v11.c;
		v21=v9.x;
		v21=v20 * v21;
		v20=v11.s;
		v22=v9.y;
		v22=v20 * v22;
		v22=v21 - v22;
		v21=v12.x;
		v13=v22 + v21;
		$f.l=145;
		v22=v11.s;
		v21=v9.x;
		v22=v22 * v21;
		v21=v11.c;
		v20=v9.y;
		v21=v21 * v20;
		v22=v22 + v21;
		v21=v12.y;
		v14=v22 + v21;
		$f.l=146;
		v22=v11.c;
		v21=v10.x;
		v22=v22 * v21;
		v21=v11.s;
		v20=v10.y;
		v21=v21 * v20;
		v22=v22 - v21;
		v21=v12.x;
		v15=v22 + v21;
		$f.l=147;
		v22=v11.s;
		v21=v10.x;
		v22=v22 * v21;
		v21=v11.c;
		v20=v10.y;
		v21=v21 * v20;
		v22=v22 + v21;
		v21=v12.y;
		v16=v22 + v21;
		$f.l=149;
		v23=v5;
		v24=(v13 != v13 || v15 != v15) ? 1 : (v13 > v15) - (v13 < v15);
		if(v24>=0) {$b=81; break;}
		v22=v13;
		{ $b=82; break; }
	case 81:
		v22=v15;
	case 82:
		v5.x=v22;
		$f.l=150;
		v23=v5;
		v24=(v14 != v14 || v16 != v16) ? 1 : (v14 > v16) - (v14 < v16);
		if(v24>=0) {$b=89; break;}
		v22=v14;
		{ $b=90; break; }
	case 89:
		v22=v16;
	case 90:
		v5.y=v22;
		$f.l=151;
		v23=v6;
		v24=(v13 != v13 || v15 != v15) ? -1 : (v13 > v15) - (v13 < v15);
		if(v24<=0) {$b=97; break;}
		v22=v13;
		{ $b=98; break; }
	case 97:
		v22=v15;
	case 98:
		v6.x=v22;
		$f.l=152;
		v23=v6;
		v24=(v14 != v14 || v16 != v16) ? -1 : (v14 > v16) - (v14 < v16);
		if(v24<=0) {$b=105; break;}
		v22=v14;
		{ $b=106; break; }
	case 105:
		v22=v16;
	case 106:
		v6.y=v22;
		$f.l=153;
		return;
}
}
//org/jbox2d/collision/shapes/ChainShape:computeMass
function _2c4(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=157;
v0=a0;
v1=a1;
v2=a2;
v1.mass=0.0;
$f.l=158;
v3=v1.center;
_29(v3);
$f.l=159;
v1.I=0.0;
$f.l=160;
return;
}
//org/jbox2d/collision/shapes/ChainShape:clone
function _2c5(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
$f.l=164;
v0=a0;
v1=new org/jbox2d/collision/shapes/ChainShape;
_2c1(v1);
v2=v1;
$f.l=165;
v3=v0.m_vertices;
v4=v0.m_count;
_2c6(v2,v3,v4);
$f.l=166;
v5=v2.m_prevVertex;
v6=v0.m_prevVertex;
v6=_28(v5,v6);
;
$f.l=167;
v6=v2.m_nextVertex;
v5=v0.m_nextVertex;
v6=_28(v6,v5);
;
$f.l=168;
v7=v0.m_hasPrevVertex;
v2.m_hasPrevVertex=v7;
$f.l=169;
v7=v0.m_hasNextVertex;
v2.m_hasNextVertex=v7;
$f.l=170;
return v2;
}
//org/jbox2d/collision/shapes/ChainShape:createChain
function _2c6(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=209;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g122;
		if(v3!=0) {$b=13; break;}
		v7=v0.m_vertices;
		if(v7!=null) {$b=10; break;}
		v8=v0.m_count;
		if(v8==0) {$b=13; break;}
	case 10:
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 13:
		$f.l=210;
		v3=$g122;
		if(v3!=0) {$b=20; break;}
		if(v2>=2) {$b=20; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 20:
		$f.l=211;
		v0.m_count=v2;
		$f.l=212;
		v8=v0.m_count;
		v7=newArray(38,v8);
		v0.m_vertices=v7;
		$f.l=213;
		v4=1;
	case 28:
		v8=v0.m_count;
		if(v4>=v8) {$b=46; break;}
		$f.l=214;
		v8=(v4 - 1)|0;
		v5=v1[v8];
		$f.l=215;
		v6=v1[v4];
		$f.l=217;
		v10=_215(v5,v6);
		;
		v11=(v10 != v10 || 2.5E-5 != 2.5E-5) ? 1 : (v10 > 2.5E-5) - (v10 < 2.5E-5);
		if(v11>=0) {$b=43; break;}
		$f.l=218;
		v12=new java/lang/RuntimeException;
		_1d6(v12,$str90);
		throw v12;
	case 43:
		$f.l=213;
		v4=(v4 + 1)|0;
		{ $b=28; break; }
	case 46:
		$f.l=221;
		v4=0;
	case 48:
		v8=v0.m_count;
		if(v4>=v8) {$b=59; break;}
		$f.l=222;
		v7=v0.m_vertices;
		v13=new org/jbox2d/common/Vec2;
		v14=v1[v4];
		_25a(v13,v14);
		v7[v4]=v13;
		$f.l=221;
		v4=(v4 + 1)|0;
		{ $b=48; break; }
	case 59:
		$f.l=224;
		v0.m_hasPrevVertex=0;
		$f.l=225;
		v0.m_hasNextVertex=0;
		$f.l=226;
		return;
}
}
//org/jbox2d/collision/shapes/ChainShape:clone
function _2c7(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=a0;
v1=v0.$c.$vt[17](v0);
;
return v1;
}
//org/jbox2d/collision/shapes/ChainShape:<clinit>
function _2c8(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=vm.getClass(43);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g122=v1;
		return;
}
}
//java/lang/ArrayIndexOutOfBoundsException:<init>
function _1e8(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
v2=_2c9(v1);
;
_1eb(v0,v2);
$f.l=35;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$9:<init>
function _2ca(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=116;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.this$0=v1;
_9a(v0,v2,v3);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$9:newInstance
function _2cb(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=117;
v0=a0;
v1=new org/jbox2d/common/Vec3;
_25b(v1);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$9:newInstance
function _2cc(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=116;
v0=a0;
v1=_2cb(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$8:<init>
function _2cd(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=113;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.this$0=v1;
_9a(v0,v2,v3);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$8:newInstance
function _2ce(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=114;
v0=a0;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$8:newInstance
function _2cf(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=113;
v0=a0;
v1=_2ce(v0);
;
return v1;
}
//org/jbox2d/dynamics/joints/FrictionJoint:<init>
function _dc(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=65;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=53;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rA=v3;
$f.l=54;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rB=v3;
$f.l=55;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=56;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=61;
v4=new org/jbox2d/common/Mat22;
_235(v4);
v0.m_linearMass=v4;
$f.l=66;
v3=new org/jbox2d/common/Vec2;
v5=v2.localAnchorA;
_25a(v3,v5);
v0.m_localAnchorA=v3;
$f.l=67;
v5=new org/jbox2d/common/Vec2;
v3=v2.localAnchorB;
_25a(v5,v3);
v0.m_localAnchorB=v5;
$f.l=69;
v5=new org/jbox2d/common/Vec2;
_1a(v5);
v0.m_linearImpulse=v5;
$f.l=70;
v0.m_angularImpulse=0.0;
$f.l=72;
v6=v2.maxForce;
v0.m_maxForce=v6;
$f.l=73;
v6=v2.maxTorque;
v0.m_maxTorque=v6;
$f.l=74;
return;
}
//org/jbox2d/dynamics/joints/FrictionJoint:initVelocityConstraints
function _2d0(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=127;
		v0=a0;
		v1=a1;
		v17=v0.m_bodyA;
		v18=v17.m_islandIndex;
		v0.m_indexA=v18;
		$f.l=128;
		v17=v0.m_bodyB;
		v18=v17.m_islandIndex;
		v0.m_indexB=v18;
		$f.l=129;
		v19=v0.m_localCenterA;
		v17=v0.m_bodyA;
		v20=v17.m_sweep;
		v21=v20.localCenter;
		v21=_28(v19,v21);
		;
		$f.l=130;
		v21=v0.m_localCenterB;
		v17=v0.m_bodyB;
		v20=v17.m_sweep;
		v19=v20.localCenter;
		v21=_28(v21,v19);
		;
		$f.l=131;
		v17=v0.m_bodyA;
		v22=v17.m_invMass;
		v0.m_invMassA=v22;
		$f.l=132;
		v17=v0.m_bodyB;
		v22=v17.m_invMass;
		v0.m_invMassB=v22;
		$f.l=133;
		v17=v0.m_bodyA;
		v22=v17.m_invI;
		v0.m_invIA=v22;
		$f.l=134;
		v17=v0.m_bodyB;
		v22=v17.m_invI;
		v0.m_invIB=v22;
		$f.l=136;
		v23=v1.positions;
		v18=v0.m_indexA;
		v24=v23[v18];
		v2=v24.a;
		$f.l=137;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v3=v26.v;
		$f.l=138;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v4=v26.w;
		$f.l=140;
		v23=v1.positions;
		v18=v0.m_indexB;
		v24=v23[v18];
		v5=v24.a;
		$f.l=141;
		v25=v1.velocities;
		v18=v0.m_indexB;
		v26=v25[v18];
		v6=v26.v;
		$f.l=142;
		v25=v1.velocities;
		v18=v0.m_indexB;
		v26=v25[v18];
		v7=v26.w;
		$f.l=145;
		v27=v0.pool;
		v8=v27.$c.$it[32](v27);
		;
		$f.l=146;
		v27=v0.pool;
		v9=v27.$c.$it[39](v27);
		;
		$f.l=147;
		v27=v0.pool;
		v10=v27.$c.$it[39](v27);
		;
		$f.l=149;
		v28=_2c(v9,v2);
		;
		$f.l=150;
		v28=_2c(v10,v5);
		;
		$f.l=153;
		v21=v0.m_localAnchorA;
		v21=_28(v8,v21);
		;
		v19=v0.m_localCenterA;
		v21=_2e(v21,v19);
		;
		v19=v0.m_rA;
		_39(v9,v21,v19);
		$f.l=154;
		v21=v0.m_localAnchorB;
		v21=_28(v8,v21);
		;
		v19=v0.m_localCenterB;
		v21=_2e(v21,v19);
		;
		v19=v0.m_rB;
		_39(v10,v21,v19);
		$f.l=165;
		v11=v0.m_invMassA;
		v12=v0.m_invMassB;
		$f.l=166;
		v13=v0.m_invIA;
		v14=v0.m_invIB;
		$f.l=168;
		v27=v0.pool;
		v15=v27.$c.$it[47](v27);
		;
		$f.l=169;
		v21=v15.ex;
		v22=v11 + v12;
		v19=v0.m_rA;
		v29=v19.y;
		v29=v13 * v29;
		v19=v0.m_rA;
		v30=v19.y;
		v30=v29 * v30;
		v30=v22 + v30;
		v19=v0.m_rB;
		v29=v19.y;
		v29=v14 * v29;
		v19=v0.m_rB;
		v22=v19.y;
		v29=v29 * v22;
		v30=v30 + v29;
		v21.x=v30;
		$f.l=170;
		v21=v15.ex;
		v30=-v13;
		v19=v0.m_rA;
		v29=v19.x;
		v30=v30 * v29;
		v19=v0.m_rA;
		v29=v19.y;
		v30=v30 * v29;
		v19=v0.m_rB;
		v29=v19.x;
		v29=v14 * v29;
		v19=v0.m_rB;
		v22=v19.y;
		v29=v29 * v22;
		v30=v30 - v29;
		v21.y=v30;
		$f.l=171;
		v21=v15.ey;
		v19=v15.ex;
		v30=v19.y;
		v21.x=v30;
		$f.l=172;
		v21=v15.ey;
		v30=v11 + v12;
		v19=v0.m_rA;
		v29=v19.x;
		v29=v13 * v29;
		v19=v0.m_rA;
		v22=v19.x;
		v29=v29 * v22;
		v30=v30 + v29;
		v19=v0.m_rB;
		v29=v19.x;
		v29=v14 * v29;
		v19=v0.m_rB;
		v22=v19.x;
		v29=v29 * v22;
		v30=v30 + v29;
		v21.y=v30;
		$f.l=174;
		v31=v0.m_linearMass;
		_31(v15,v31);
		$f.l=176;
		v30=v13 + v14;
		v0.m_angularMass=v30;
		$f.l=177;
		v30=v0.m_angularMass;
		v32=(v30 != v30 || 0.0 != 0.0) ? -1 : (v30 > 0.0) - (v30 < 0.0);
		if(v32<=0) {$b=176; break;}
		$f.l=178;
		v30=v0.m_angularMass;
		v30=1.0 / v30;
		v0.m_angularMass=v30;
	case 176:
		$f.l=181;
		v33=v1.step;
		v34=v33.warmStarting;
		if(v34==0) {$b=227; break;}
		$f.l=183;
		v21=v0.m_linearImpulse;
		v33=v1.step;
		v30=v33.dtRatio;
		v21=_35(v21,v30);
		;
		$f.l=184;
		v35=v0;
		v30=v0.m_angularImpulse;
		v33=v1.step;
		v29=v33.dtRatio;
		v30=v30 * v29;
		v0.m_angularImpulse=v30;
		$f.l=186;
		v27=v0.pool;
		v16=v27.$c.$it[32](v27);
		;
		$f.l=187;
		v21=v0.m_linearImpulse;
		v21=_28(v16,v21);
		;
		$f.l=189;
		v21=_28(v8,v16);
		;
		v21=_35(v21,v11);
		;
		$f.l=190;
		v21=_2e(v3,v8);
		;
		$f.l=191;
		v21=v0.m_rA;
		v30=_2f(v21,v16);
		;
		v29=v0.m_angularImpulse;
		v30=v30 + v29;
		v30=v13 * v30;
		v4=v4 - v30;
		$f.l=193;
		v21=_28(v8,v16);
		;
		v21=_35(v21,v12);
		;
		$f.l=194;
		v21=_36(v6,v8);
		;
		$f.l=195;
		v21=v0.m_rB;
		v30=_2f(v21,v16);
		;
		v29=v0.m_angularImpulse;
		v30=v30 + v29;
		v30=v14 * v30;
		v7=v7 + v30;
		$f.l=197;
		v27=v0.pool;
		v27.$c.$it[43](v27,1);
		$f.l=198;
		{ $b=232; break; }
	case 227:
		$f.l=199;
		v21=v0.m_linearImpulse;
		_29(v21);
		$f.l=200;
		v0.m_angularImpulse=0.0;
	case 232:
		$f.l=203;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v30=v26.w;
		v32=(v30 != v30 || v4 != v4) ? -1 : (v30 > v4) - (v30 < v4);
		if(v32==0) {$b=251; break;}
		$f.l=204;
		v34=$g123;
		if(v34!=0) {$b=251; break;}
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v30=v26.w;
		v32=(v30 != v30 || v4 != v4) ? -1 : (v30 > v4) - (v30 < v4);
		if(v32!=0) {$b=251; break;}
		v36=new java/lang/AssertionError;
		_26(v36);
		throw v36;
	case 251:
		$f.l=206;
		v25=v1.velocities;
		v18=v0.m_indexA;
		v26=v25[v18];
		v26.w=v4;
		$f.l=208;
		v25=v1.velocities;
		v18=v0.m_indexB;
		v26=v25[v18];
		v26.w=v7;
		$f.l=210;
		v27=v0.pool;
		v27.$c.$it[30](v27,2);
		$f.l=211;
		v27=v0.pool;
		v27.$c.$it[43](v27,1);
		$f.l=212;
		v27=v0.pool;
		v27.$c.$it[40](v27,1);
		$f.l=213;
		return;
}
}
//org/jbox2d/dynamics/joints/FrictionJoint:solveVelocityConstraints
function _2d1(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=217;
		v0=a0;
		v1=a1;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v2=v18.v;
		$f.l=218;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v3=v18.w;
		$f.l=219;
		v16=v1.velocities;
		v17=v0.m_indexB;
		v18=v16[v17];
		v4=v18.v;
		$f.l=220;
		v16=v1.velocities;
		v17=v0.m_indexB;
		v18=v16[v17];
		v5=v18.w;
		$f.l=222;
		v6=v0.m_invMassA;
		v7=v0.m_invMassB;
		$f.l=223;
		v8=v0.m_invIA;
		v9=v0.m_invIB;
		$f.l=225;
		v19=v1.step;
		v10=v19.dt;
		$f.l=229;
		v11=v5 - v3;
		$f.l=230;
		v20=v0.m_angularMass;
		v20=-v20;
		v12=v20 * v11;
		$f.l=232;
		v13=v0.m_angularImpulse;
		$f.l=233;
		v20=v0.m_maxTorque;
		v14=v10 * v20;
		$f.l=234;
		v20=v0.m_angularImpulse;
		v20=v20 + v12;
		v21=-v14;
		v21=_33(v20,v21,v14);
		;
		v0.m_angularImpulse=v21;
		$f.l=235;
		v21=v0.m_angularImpulse;
		v12=v21 - v13;
		$f.l=237;
		v21=v8 * v12;
		v3=v3 - v21;
		$f.l=238;
		v21=v9 * v12;
		v5=v5 + v21;
		$f.l=243;
		v22=v0.pool;
		v23=v22.$c.$it[32](v22);
		;
		$f.l=244;
		v22=v0.pool;
		v24=v22.$c.$it[32](v22);
		;
		$f.l=246;
		v25=v0.m_rA;
		_1df(v3,v25,v24);
		$f.l=247;
		v25=v0.m_rB;
		_1df(v5,v25,v23);
		$f.l=248;
		v25=_36(v23,v4);
		;
		v25=_2e(v25,v2);
		;
		v25=_2e(v25,v24);
		;
		$f.l=250;
		v22=v0.pool;
		v26=v22.$c.$it[32](v22);
		;
		$f.l=251;
		v27=v0.m_linearMass;
		_34(v27,v23,v26);
		$f.l=252;
		v25=_3a(v26);
		;
		$f.l=255;
		v22=v0.pool;
		v28=v22.$c.$it[32](v22);
		;
		$f.l=256;
		v25=v0.m_linearImpulse;
		v25=_28(v28,v25);
		;
		$f.l=257;
		v25=v0.m_linearImpulse;
		v25=_36(v25,v26);
		;
		$f.l=259;
		v21=v0.m_maxForce;
		v15=v10 * v21;
		$f.l=261;
		v25=v0.m_linearImpulse;
		v21=_22f(v25);
		;
		v20=v15 * v15;
		v29=(v21 != v21 || v20 != v20) ? -1 : (v21 > v20) - (v21 < v20);
		if(v29<=0) {$b=105; break;}
		$f.l=262;
		v25=v0.m_linearImpulse;
		v21=_53(v25);
		;
		$f.l=263;
		v25=v0.m_linearImpulse;
		v25=_35(v25,v15);
		;
	case 105:
		$f.l=266;
		v25=v0.m_linearImpulse;
		v25=_28(v26,v25);
		;
		v25=_2e(v25,v28);
		;
		$f.l=268;
		v25=_28(v24,v26);
		;
		v25=_35(v25,v6);
		;
		$f.l=269;
		v25=_2e(v2,v24);
		;
		$f.l=270;
		v25=v0.m_rA;
		v21=_2f(v25,v26);
		;
		v21=v8 * v21;
		v3=v3 - v21;
		$f.l=272;
		v25=_28(v24,v26);
		;
		v25=_35(v25,v7);
		;
		$f.l=273;
		v25=_36(v4,v24);
		;
		$f.l=274;
		v25=v0.m_rB;
		v21=_2f(v25,v26);
		;
		v21=v9 * v21;
		v5=v5 + v21;
		$f.l=279;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v21=v18.w;
		v29=(v21 != v21 || v3 != v3) ? -1 : (v21 > v3) - (v21 < v3);
		if(v29==0) {$b=148; break;}
		$f.l=280;
		v30=$g123;
		if(v30!=0) {$b=148; break;}
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v21=v18.w;
		v29=(v21 != v21 || v3 != v3) ? -1 : (v21 > v3) - (v21 < v3);
		if(v29!=0) {$b=148; break;}
		v31=new java/lang/AssertionError;
		_26(v31);
		throw v31;
	case 148:
		$f.l=282;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v18.w=v3;
		$f.l=285;
		v16=v1.velocities;
		v17=v0.m_indexB;
		v18=v16[v17];
		v18.w=v5;
		$f.l=287;
		v22=v0.pool;
		v22.$c.$it[43](v22,4);
		$f.l=288;
		return;
}
}
//org/jbox2d/dynamics/joints/FrictionJoint:solvePositionConstraints
function _2d2(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=292;
v0=a0;
v1=a1;
return 1;
}
//org/jbox2d/dynamics/joints/FrictionJoint:<clinit>
function _2d3(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=39;
		v0=vm.getClass(84);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g123=v1;
		return;
}
}
//org/jbox2d/dynamics/contacts/EdgeAndCircleContact:<init>
function _2d4(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=a1;
_19e(v0,v1);
$f.l=38;
return;
}
//org/jbox2d/dynamics/contacts/EdgeAndCircleContact:init
function _2d5(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=42;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		_19f(v0,v1,v2,v3,v4);
		$f.l=43;
		v5=$g124;
		if(v5!=0) {$b=17; break;}
		v6=v0.m_fixtureA;
		v7=_8e(v6);
		;
		v8=$g12;
		if(v7==v8) {$b=17; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 17:
		$f.l=44;
		v5=$g124;
		if(v5!=0) {$b=27; break;}
		v6=v0.m_fixtureB;
		v8=_8e(v6);
		;
		v7=$g9;
		if(v8==v7) {$b=27; break;}
		v9=new java/lang/AssertionError;
		_26(v9);
		throw v9;
	case 27:
		$f.l=45;
		return;
}
}
//org/jbox2d/dynamics/contacts/EdgeAndCircleContact:evaluate
function _2d6(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=v0.pool;
v5=v4.$c.$it[38](v4);
;
v6=v0.m_fixtureA;
v7=_23(v6);
;
v8=vm.cast(v7,44);
v6=v0.m_fixtureB;
v7=_23(v6);
;
v9=vm.cast(v7,41);
_5b(v5,v1,v8,v2,v9,v3);
$f.l=51;
return;
}
//org/jbox2d/dynamics/contacts/EdgeAndCircleContact:<clinit>
function _2d7(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=34;
		v0=vm.getClass(85);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g124=v1;
		return;
}
}
//cava/apple/foundation/NSObject:<init>
function _2d8(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
_7d(v0);
$f.l=37;
v1=newArray(0,1);
v2=_2(v0);
;
v2=_2d9(v2);
;
v1[0]=v2;
v3=_6b($str91,v1);
;
v0.nativePeer=v3;
$f.l=38;
return;
}
//cava/apple/foundation/NSObject:init
function _2da(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
v1=newArray(0,1);
v2=v0.nativePeer;
v1[0]=v2;
_b4($str92,v1);
$f.l=42;
return v0;
}
//cava/apple/foundation/NSObject:<init>
function _2db(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=a1;
_2dc(v0,v1,0);
return;
}
//cava/apple/foundation/NSObject:<init>
function _2dc(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=46;
v0=a0;
v1=a1;
v2=a2;
_7d(v0);
$f.l=47;
v0.nativePeer=v1;
$f.l=48;
v0.noOwner=v2;
$f.l=51;
return;
}
//cava/apple/foundation/NSObject:respondsToSelector
function _2dd(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=a0;
v1=a1;
v2=newArray(0,2);
v3=v0.nativePeer;
v2[0]=v3;
v3=v1.nativePeer;
v2[1]=v3;
v4=_1b3($str93,v2);
;
return v4;
}
//cava/apple/foundation/NSObject:performSelector
function _2de(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=58;
v0=a0;
v1=a1;
v2=newArray(0,2);
v3=v0.nativePeer;
v2[0]=v3;
v3=v1.nativePeer;
v2[1]=v3;
_b4($str94,v2);
$f.l=59;
return;
}
//cava/apple/foundation/NSObject:dispose
function _2df(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=63;
		v0=a0;
		v1=v0.nativePeer;
		if(v1==null) {$b=11; break;}
		$f.l=64;
		v2=newArray(0,1);
		v1=v0.nativePeer;
		v2[0]=v1;
		_b4($str95,v2);
		$f.l=65;
		v0.nativePeer=null;
	case 11:
		$f.l=67;
		return;
}
}
//cava/apple/foundation/NSObject:getObjectiveCName
function _2e0(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=70;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v2=_a(v0);
;
v2=_2e1(v2,46,95);
;
v2=_2e1(v2,36,95);
;
v1=_b(v1,v2);
;
v1=_b(v1,$str96);
;
v2=v1.$c.$vt[0](v1);
;
return v2;
}
//cava/apple/foundation/NSObject:getObjCClass
function _2e2(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=74;
v0=a0;
v1=_2(v0);
;
v1=_2d9(v1);
;
return v1;
}
//cava/apple/foundation/NSObject:getObjCClass
function _2d9(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=80;
v0=a0;
v1=newArray(0,1);
v1[0]=v0;
v2=_224($str97,v1);
;
return v2;
}
//cava/apple/foundation/NSObject:alloc
function _2e3(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v2=_1b6(v0);
;
v1=vm.cast(v2,86);
$f.l=85;
v3=newArray(0,1);
v4=_2d9(v0);
;
v3[0]=v4;
v5=_6b($str91,v3);
;
v1.nativePeer=v5;
$f.l=86;
return v1;
}
//org/jbox2d/dynamics/joints/RevoluteJointDef:<init>
function _146(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=115;
v0=a0;
_221(v0);
$f.l=116;
v1=$g67;
v0.type=v1;
$f.l=117;
v2=new org/jbox2d/common/Vec2;
_138(v2,0.0,0.0);
v0.localAnchorA=v2;
$f.l=118;
v2=new org/jbox2d/common/Vec2;
_138(v2,0.0,0.0);
v0.localAnchorB=v2;
$f.l=119;
v0.referenceAngle=0.0;
$f.l=120;
v0.lowerAngle=0.0;
$f.l=121;
v0.upperAngle=0.0;
$f.l=122;
v0.maxMotorTorque=0.0;
$f.l=123;
v0.motorSpeed=0.0;
$f.l=124;
v0.enableLimit=0;
$f.l=125;
v0.enableMotor=0;
$f.l=126;
return;
}
//java/lang/NumberFormatException:<init>
function _181(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
_1b8(v0,v1);
$f.l=35;
return;
}
//org/jbox2d/dynamics/joints/DistanceJoint:<init>
function _d8(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=95;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=83;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_u=v3;
$f.l=84;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rA=v3;
$f.l=85;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rB=v3;
$f.l=86;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=87;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=96;
v3=v2.localAnchorA;
v3=_70(v3);
;
v0.m_localAnchorA=v3;
$f.l=97;
v3=v2.localAnchorB;
v3=_70(v3);
;
v0.m_localAnchorB=v3;
$f.l=98;
v4=v2.length;
v0.m_length=v4;
$f.l=99;
v0.m_impulse=0.0;
$f.l=100;
v4=v2.frequencyHz;
v0.m_frequencyHz=v4;
$f.l=101;
v4=v2.dampingRatio;
v0.m_dampingRatio=v4;
$f.l=102;
v0.m_gamma=0.0;
$f.l=103;
v0.m_bias=0.0;
$f.l=104;
return;
}
//org/jbox2d/dynamics/joints/DistanceJoint:initVelocityConstraints
function _2e4(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=169;
		v0=a0;
		v1=a1;
		v21=v0.m_bodyA;
		v22=v21.m_islandIndex;
		v0.m_indexA=v22;
		$f.l=170;
		v21=v0.m_bodyB;
		v22=v21.m_islandIndex;
		v0.m_indexB=v22;
		$f.l=171;
		v23=v0.m_localCenterA;
		v21=v0.m_bodyA;
		v24=v21.m_sweep;
		v25=v24.localCenter;
		v25=_28(v23,v25);
		;
		$f.l=172;
		v25=v0.m_localCenterB;
		v21=v0.m_bodyB;
		v24=v21.m_sweep;
		v23=v24.localCenter;
		v25=_28(v25,v23);
		;
		$f.l=173;
		v21=v0.m_bodyA;
		v26=v21.m_invMass;
		v0.m_invMassA=v26;
		$f.l=174;
		v21=v0.m_bodyB;
		v26=v21.m_invMass;
		v0.m_invMassB=v26;
		$f.l=175;
		v21=v0.m_bodyA;
		v26=v21.m_invI;
		v0.m_invIA=v26;
		$f.l=176;
		v21=v0.m_bodyB;
		v26=v21.m_invI;
		v0.m_invIB=v26;
		$f.l=178;
		v27=v1.positions;
		v22=v0.m_indexA;
		v28=v27[v22];
		v2=v28.c;
		$f.l=179;
		v27=v1.positions;
		v22=v0.m_indexA;
		v28=v27[v22];
		v3=v28.a;
		$f.l=180;
		v29=v1.velocities;
		v22=v0.m_indexA;
		v30=v29[v22];
		v4=v30.v;
		$f.l=181;
		v29=v1.velocities;
		v22=v0.m_indexA;
		v30=v29[v22];
		v5=v30.w;
		$f.l=183;
		v27=v1.positions;
		v22=v0.m_indexB;
		v28=v27[v22];
		v6=v28.c;
		$f.l=184;
		v27=v1.positions;
		v22=v0.m_indexB;
		v28=v27[v22];
		v7=v28.a;
		$f.l=185;
		v29=v1.velocities;
		v22=v0.m_indexB;
		v30=v29[v22];
		v8=v30.v;
		$f.l=186;
		v29=v1.velocities;
		v22=v0.m_indexB;
		v30=v29[v22];
		v9=v30.w;
		$f.l=188;
		v31=v0.pool;
		v10=v31.$c.$it[39](v31);
		;
		$f.l=189;
		v31=v0.pool;
		v11=v31.$c.$it[39](v31);
		;
		$f.l=191;
		v32=_2c(v10,v3);
		;
		$f.l=192;
		v32=_2c(v11,v7);
		;
		$f.l=195;
		v25=v0.m_u;
		v23=v0.m_localAnchorA;
		v25=_28(v25,v23);
		;
		v23=v0.m_localCenterA;
		v25=_2e(v25,v23);
		;
		v23=v0.m_rA;
		_39(v10,v25,v23);
		$f.l=196;
		v25=v0.m_u;
		v23=v0.m_localAnchorB;
		v25=_28(v25,v23);
		;
		v23=v0.m_localCenterB;
		v25=_2e(v25,v23);
		;
		v23=v0.m_rB;
		_39(v11,v25,v23);
		$f.l=197;
		v25=v0.m_u;
		v25=_28(v25,v6);
		;
		v23=v0.m_rB;
		v25=_36(v25,v23);
		;
		v25=_2e(v25,v2);
		;
		v23=v0.m_rA;
		v25=_2e(v25,v23);
		;
		$f.l=199;
		v31=v0.pool;
		v31.$c.$it[30](v31,2);
		$f.l=202;
		v25=v0.m_u;
		v12=_258(v25);
		;
		$f.l=203;
		v33=(v12 != v12 || 0.005 != 0.005) ? -1 : (v12 > 0.005) - (v12 < 0.005);
		if(v33<=0) {$b=134; break;}
		$f.l=204;
		v25=v0.m_u;
		v26=v25.x;
		v34=1.0 / v12;
		v34=v26 * v34;
		v25.x=v34;
		$f.l=205;
		v25=v0.m_u;
		v34=v25.y;
		v26=1.0 / v12;
		v34=v34 * v26;
		v25.y=v34;
		{ $b=137; break; }
	case 134:
		$f.l=207;
		v25=v0.m_u;
		v25=_30(v25,0.0,0.0);
		;
	case 137:
		$f.l=211;
		v25=v0.m_rA;
		v23=v0.m_u;
		v13=_2f(v25,v23);
		;
		$f.l=212;
		v25=v0.m_rB;
		v23=v0.m_u;
		v14=_2f(v25,v23);
		;
		$f.l=213;
		v34=v0.m_invMassA;
		v26=v0.m_invIA;
		v26=v26 * v13;
		v26=v26 * v13;
		v34=v34 + v26;
		v26=v0.m_invMassB;
		v34=v34 + v26;
		v26=v0.m_invIB;
		v26=v26 * v14;
		v26=v26 * v14;
		v15=v34 + v26;
		$f.l=216;
		v35=v0;
		v33=(v15 != v15 || 0.0 != 0.0) ? -1 : (v15 > 0.0) - (v15 < 0.0);
		if(v33==0) {$b=163; break;}
		v34=1.0 / v15;
		{ $b=164; break; }
	case 163:
		v34=0.0;
	case 164:
		v0.m_mass=v34;
		$f.l=218;
		v34=v0.m_frequencyHz;
		v33=(v34 != v34 || 0.0 != 0.0) ? -1 : (v34 > 0.0) - (v34 < 0.0);
		if(v33<=0) {$b=222; break;}
		$f.l=219;
		v34=v0.m_length;
		v16=v12 - v34;
		$f.l=222;
		v34=v0.m_frequencyHz;
		v17=6.2831855 * v34;
		$f.l=225;
		v34=v0.m_mass;
		v34=2.0 * v34;
		v26=v0.m_dampingRatio;
		v34=v34 * v26;
		v18=v34 * v17;
		$f.l=228;
		v34=v0.m_mass;
		v34=v34 * v17;
		v19=v34 * v17;
		$f.l=231;
		v36=v1.step;
		v20=v36.dt;
		$f.l=232;
		v34=v20 * v19;
		v34=v18 + v34;
		v34=v20 * v34;
		v0.m_gamma=v34;
		$f.l=233;
		v35=v0;
		v34=v0.m_gamma;
		v33=(v34 != v34 || 0.0 != 0.0) ? -1 : (v34 > 0.0) - (v34 < 0.0);
		if(v33==0) {$b=201; break;}
		v34=v0.m_gamma;
		v34=1.0 / v34;
		{ $b=202; break; }
	case 201:
		v34=0.0;
	case 202:
		v0.m_gamma=v34;
		$f.l=234;
		v34=v16 * v20;
		v34=v34 * v19;
		v26=v0.m_gamma;
		v34=v34 * v26;
		v0.m_bias=v34;
		$f.l=236;
		v34=v0.m_gamma;
		v15=v15 + v34;
		$f.l=237;
		v35=v0;
		v33=(v15 != v15 || 0.0 != 0.0) ? -1 : (v15 > 0.0) - (v15 < 0.0);
		if(v33==0) {$b=218; break;}
		v34=1.0 / v15;
		{ $b=219; break; }
	case 218:
		v34=0.0;
	case 219:
		v0.m_mass=v34;
		$f.l=238;
		{ $b=226; break; }
	case 222:
		$f.l=239;
		v0.m_gamma=0.0;
		$f.l=240;
		v0.m_bias=0.0;
	case 226:
		$f.l=242;
		v36=v1.step;
		v37=v36.warmStarting;
		if(v37==0) {$b=294; break;}
		$f.l=245;
		v35=v0;
		v34=v0.m_impulse;
		v36=v1.step;
		v26=v36.dtRatio;
		v34=v34 * v26;
		v0.m_impulse=v34;
		$f.l=247;
		v31=v0.pool;
		v38=v31.$c.$it[32](v31);
		;
		$f.l=248;
		v25=v0.m_u;
		v25=_28(v38,v25);
		;
		v34=v0.m_impulse;
		v25=_35(v25,v34);
		;
		$f.l=250;
		v25=v4;
		v34=v4.x;
		v26=v0.m_invMassA;
		v39=v38.x;
		v39=v26 * v39;
		v39=v34 - v39;
		v4.x=v39;
		$f.l=251;
		v25=v4;
		v39=v4.y;
		v34=v0.m_invMassA;
		v26=v38.y;
		v34=v34 * v26;
		v39=v39 - v34;
		v4.y=v39;
		$f.l=252;
		v39=v0.m_invIA;
		v25=v0.m_rA;
		v34=_2f(v25,v38);
		;
		v39=v39 * v34;
		v5=v5 - v39;
		$f.l=254;
		v25=v8;
		v39=v8.x;
		v34=v0.m_invMassB;
		v26=v38.x;
		v34=v34 * v26;
		v39=v39 + v34;
		v8.x=v39;
		$f.l=255;
		v25=v8;
		v39=v8.y;
		v34=v0.m_invMassB;
		v26=v38.y;
		v34=v34 * v26;
		v39=v39 + v34;
		v8.y=v39;
		$f.l=256;
		v39=v0.m_invIB;
		v25=v0.m_rB;
		v34=_2f(v25,v38);
		;
		v39=v39 * v34;
		v9=v9 + v39;
		$f.l=258;
		v31=v0.pool;
		v31.$c.$it[43](v31,1);
		$f.l=259;
		{ $b=296; break; }
	case 294:
		$f.l=260;
		v0.m_impulse=0.0;
	case 296:
		$f.l=263;
		v29=v1.velocities;
		v22=v0.m_indexA;
		v30=v29[v22];
		v30.w=v5;
		$f.l=265;
		v29=v1.velocities;
		v22=v0.m_indexB;
		v30=v29[v22];
		v30.w=v9;
		$f.l=266;
		return;
}
}
//org/jbox2d/dynamics/joints/DistanceJoint:solveVelocityConstraints
function _2e5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22;
var $f=vm.frames[vm.fp++];
$f.l=270;
v0=a0;
v1=a1;
v12=v1.velocities;
v13=v0.m_indexA;
v14=v12[v13];
v2=v14.v;
$f.l=271;
v12=v1.velocities;
v13=v0.m_indexA;
v14=v12[v13];
v3=v14.w;
$f.l=272;
v12=v1.velocities;
v13=v0.m_indexB;
v14=v12[v13];
v4=v14.v;
$f.l=273;
v12=v1.velocities;
v13=v0.m_indexB;
v14=v12[v13];
v5=v14.w;
$f.l=275;
v15=v0.pool;
v6=v15.$c.$it[32](v15);
;
$f.l=276;
v15=v0.pool;
v7=v15.$c.$it[32](v15);
;
$f.l=279;
v16=v0.m_rA;
_1df(v3,v16,v6);
$f.l=280;
v16=_36(v6,v2);
;
$f.l=281;
v16=v0.m_rB;
_1df(v5,v16,v7);
$f.l=282;
v16=_36(v7,v4);
;
$f.l=283;
v16=v0.m_u;
v17=_2e(v7,v6);
;
v8=_4d(v16,v17);
;
$f.l=285;
v18=v0.m_mass;
v18=-v18;
v19=v0.m_bias;
v19=v8 + v19;
v20=v0.m_gamma;
v21=v0.m_impulse;
v21=v20 * v21;
v21=v19 + v21;
v9=v18 * v21;
$f.l=286;
v22=v0;
v21=v0.m_impulse;
v21=v21 + v9;
v0.m_impulse=v21;
$f.l=289;
v17=v0.m_u;
v21=v17.x;
v10=v9 * v21;
$f.l=290;
v17=v0.m_u;
v21=v17.y;
v11=v9 * v21;
$f.l=292;
v17=v2;
v21=v2.x;
v20=v0.m_invMassA;
v20=v20 * v10;
v21=v21 - v20;
v2.x=v21;
$f.l=293;
v17=v2;
v21=v2.y;
v20=v0.m_invMassA;
v20=v20 * v11;
v21=v21 - v20;
v2.y=v21;
$f.l=294;
v21=v0.m_invIA;
v17=v0.m_rA;
v20=v17.x;
v20=v20 * v11;
v17=v0.m_rA;
v19=v17.y;
v19=v19 * v10;
v20=v20 - v19;
v21=v21 * v20;
v3=v3 - v21;
$f.l=295;
v17=v4;
v21=v4.x;
v20=v0.m_invMassB;
v20=v20 * v10;
v21=v21 + v20;
v4.x=v21;
$f.l=296;
v17=v4;
v21=v4.y;
v20=v0.m_invMassB;
v20=v20 * v11;
v21=v21 + v20;
v4.y=v21;
$f.l=297;
v21=v0.m_invIB;
v17=v0.m_rB;
v20=v17.x;
v20=v20 * v11;
v17=v0.m_rB;
v19=v17.y;
v19=v19 * v10;
v20=v20 - v19;
v21=v21 * v20;
v5=v5 + v21;
$f.l=300;
v12=v1.velocities;
v13=v0.m_indexA;
v14=v12[v13];
v14.w=v3;
$f.l=302;
v12=v1.velocities;
v13=v0.m_indexB;
v14=v12[v13];
v14.w=v5;
$f.l=304;
v15=v0.pool;
v15.$c.$it[43](v15,2);
$f.l=305;
return;
}
//org/jbox2d/dynamics/joints/DistanceJoint:solvePositionConstraints
function _2e6(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=309;
		v0=a0;
		v1=a1;
		v16=v0.m_frequencyHz;
		v17=(v16 != v16 || 0.0 != 0.0) ? -1 : (v16 > 0.0) - (v16 < 0.0);
		if(v17<=0) {$b=8; break;}
		$f.l=310;
		return 1;
	case 8:
		$f.l=312;
		v18=v0.pool;
		v2=v18.$c.$it[39](v18);
		;
		$f.l=313;
		v18=v0.pool;
		v3=v18.$c.$it[39](v18);
		;
		$f.l=314;
		v18=v0.pool;
		v4=v18.$c.$it[32](v18);
		;
		$f.l=315;
		v18=v0.pool;
		v5=v18.$c.$it[32](v18);
		;
		$f.l=316;
		v18=v0.pool;
		v6=v18.$c.$it[32](v18);
		;
		$f.l=318;
		v19=v1.positions;
		v20=v0.m_indexA;
		v21=v19[v20];
		v7=v21.c;
		$f.l=319;
		v19=v1.positions;
		v20=v0.m_indexA;
		v21=v19[v20];
		v8=v21.a;
		$f.l=320;
		v19=v1.positions;
		v20=v0.m_indexB;
		v21=v19[v20];
		v9=v21.c;
		$f.l=321;
		v19=v1.positions;
		v20=v0.m_indexB;
		v21=v19[v20];
		v10=v21.a;
		$f.l=323;
		v22=_2c(v2,v8);
		;
		$f.l=324;
		v22=_2c(v3,v10);
		;
		$f.l=326;
		v23=v0.m_localAnchorA;
		v23=_28(v6,v23);
		;
		v24=v0.m_localCenterA;
		v24=_2e(v23,v24);
		;
		_39(v2,v24,v4);
		$f.l=327;
		v24=v0.m_localAnchorB;
		v24=_28(v6,v24);
		;
		v23=v0.m_localCenterB;
		v24=_2e(v24,v23);
		;
		_39(v3,v24,v5);
		$f.l=328;
		v24=_28(v6,v9);
		;
		v24=_36(v24,v5);
		;
		v24=_2e(v24,v7);
		;
		v24=_2e(v24,v4);
		;
		$f.l=331;
		v11=_53(v6);
		;
		$f.l=332;
		v16=v0.m_length;
		v12=v11 - v16;
		$f.l=333;
		v12=_33(v12,-0.2,0.2);
		;
		$f.l=335;
		v16=v0.m_mass;
		v16=-v16;
		v13=v16 * v12;
		$f.l=336;
		v16=v6.x;
		v14=v13 * v16;
		$f.l=337;
		v16=v6.y;
		v15=v13 * v16;
		$f.l=339;
		v24=v7;
		v16=v7.x;
		v25=v0.m_invMassA;
		v25=v25 * v14;
		v25=v16 - v25;
		v7.x=v25;
		$f.l=340;
		v24=v7;
		v25=v7.y;
		v16=v0.m_invMassA;
		v16=v16 * v15;
		v25=v25 - v16;
		v7.y=v25;
		$f.l=341;
		v25=v0.m_invIA;
		v16=v4.x;
		v16=v16 * v15;
		v26=v4.y;
		v26=v26 * v14;
		v26=v16 - v26;
		v26=v25 * v26;
		v8=v8 - v26;
		$f.l=342;
		v24=v9;
		v26=v9.x;
		v25=v0.m_invMassB;
		v25=v25 * v14;
		v26=v26 + v25;
		v9.x=v26;
		$f.l=343;
		v24=v9;
		v26=v9.y;
		v25=v0.m_invMassB;
		v25=v25 * v15;
		v26=v26 + v25;
		v9.y=v26;
		$f.l=344;
		v26=v0.m_invIB;
		v25=v5.x;
		v25=v25 * v15;
		v16=v5.y;
		v16=v16 * v14;
		v25=v25 - v16;
		v26=v26 * v25;
		v10=v10 + v26;
		$f.l=347;
		v19=v1.positions;
		v20=v0.m_indexA;
		v21=v19[v20];
		v21.a=v8;
		$f.l=349;
		v19=v1.positions;
		v20=v0.m_indexB;
		v21=v19[v20];
		v21.a=v10;
		$f.l=351;
		v18=v0.pool;
		v18.$c.$it[43](v18,3);
		$f.l=352;
		v18=v0.pool;
		v18.$c.$it[30](v18,2);
		$f.l=354;
		v26=_199(v12);
		;
		v17=(v26 != v26 || 0.005 != 0.005) ? 1 : (v26 > 0.005) - (v26 < 0.005);
		if(v17>=0) {$b=149; break;}
		v27=1;
		{ $b=150; break; }
	case 149:
		v27=0;
	case 150:
		return v27;
}
}
//org/jbox2d/dynamics/joints/WheelJoint:<init>
function _dd(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=100;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=64;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localAnchorA=v3;
$f.l=65;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localAnchorB=v3;
$f.l=66;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localXAxisA=v3;
$f.l=67;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localYAxisA=v3;
$f.l=80;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=81;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=87;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_ax=v3;
$f.l=88;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_ay=v3;
$f.l=226;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.rA=v3;
$f.l=227;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.rB=v3;
$f.l=228;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.d=v3;
$f.l=101;
v3=v0.m_localAnchorA;
v4=v2.localAnchorA;
v4=_28(v3,v4);
;
$f.l=102;
v4=v0.m_localAnchorB;
v3=v2.localAnchorB;
v4=_28(v4,v3);
;
$f.l=103;
v4=v0.m_localXAxisA;
v3=v2.localAxisA;
v4=_28(v4,v3);
;
$f.l=104;
v4=v0.m_localXAxisA;
v3=v0.m_localYAxisA;
_1df(1.0,v4,v3);
$f.l=107;
v0.m_motorMass=0.0;
$f.l=108;
v0.m_motorImpulse=0.0;
$f.l=110;
v5=v2.maxMotorTorque;
v0.m_maxMotorTorque=v5;
$f.l=111;
v5=v2.motorSpeed;
v0.m_motorSpeed=v5;
$f.l=112;
v6=v2.enableMotor;
v0.m_enableMotor=v6;
$f.l=114;
v5=v2.frequencyHz;
v0.m_frequencyHz=v5;
$f.l=115;
v5=v2.dampingRatio;
v0.m_dampingRatio=v5;
$f.l=116;
return;
}
//org/jbox2d/dynamics/joints/WheelJoint:initVelocityConstraints
function _2e7(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=232;
		v0=a0;
		v1=a1;
		v23=v0.m_bodyA;
		v24=v23.m_islandIndex;
		v0.m_indexA=v24;
		$f.l=233;
		v23=v0.m_bodyB;
		v24=v23.m_islandIndex;
		v0.m_indexB=v24;
		$f.l=234;
		v25=v0.m_localCenterA;
		v23=v0.m_bodyA;
		v26=v23.m_sweep;
		v27=v26.localCenter;
		v27=_28(v25,v27);
		;
		$f.l=235;
		v27=v0.m_localCenterB;
		v23=v0.m_bodyB;
		v26=v23.m_sweep;
		v25=v26.localCenter;
		v27=_28(v27,v25);
		;
		$f.l=236;
		v23=v0.m_bodyA;
		v28=v23.m_invMass;
		v0.m_invMassA=v28;
		$f.l=237;
		v23=v0.m_bodyB;
		v28=v23.m_invMass;
		v0.m_invMassB=v28;
		$f.l=238;
		v23=v0.m_bodyA;
		v28=v23.m_invI;
		v0.m_invIA=v28;
		$f.l=239;
		v23=v0.m_bodyB;
		v28=v23.m_invI;
		v0.m_invIB=v28;
		$f.l=241;
		v2=v0.m_invMassA;
		v3=v0.m_invMassB;
		$f.l=242;
		v4=v0.m_invIA;
		v5=v0.m_invIB;
		$f.l=244;
		v29=v1.positions;
		v24=v0.m_indexA;
		v30=v29[v24];
		v6=v30.c;
		$f.l=245;
		v29=v1.positions;
		v24=v0.m_indexA;
		v30=v29[v24];
		v7=v30.a;
		$f.l=246;
		v31=v1.velocities;
		v24=v0.m_indexA;
		v32=v31[v24];
		v8=v32.v;
		$f.l=247;
		v31=v1.velocities;
		v24=v0.m_indexA;
		v32=v31[v24];
		v9=v32.w;
		$f.l=249;
		v29=v1.positions;
		v24=v0.m_indexB;
		v30=v29[v24];
		v10=v30.c;
		$f.l=250;
		v29=v1.positions;
		v24=v0.m_indexB;
		v30=v29[v24];
		v11=v30.a;
		$f.l=251;
		v31=v1.velocities;
		v24=v0.m_indexB;
		v32=v31[v24];
		v12=v32.v;
		$f.l=252;
		v31=v1.velocities;
		v24=v0.m_indexB;
		v32=v31[v24];
		v13=v32.w;
		$f.l=254;
		v33=v0.pool;
		v14=v33.$c.$it[39](v33);
		;
		$f.l=255;
		v33=v0.pool;
		v15=v33.$c.$it[39](v33);
		;
		$f.l=256;
		v33=v0.pool;
		v16=v33.$c.$it[32](v33);
		;
		$f.l=258;
		v34=_2c(v14,v7);
		;
		$f.l=259;
		v34=_2c(v15,v11);
		;
		$f.l=262;
		v27=v0.m_localAnchorA;
		v27=_28(v16,v27);
		;
		v25=v0.m_localCenterA;
		v27=_2e(v27,v25);
		;
		v25=v0.rA;
		_39(v14,v27,v25);
		$f.l=263;
		v27=v0.m_localAnchorB;
		v27=_28(v16,v27);
		;
		v25=v0.m_localCenterB;
		v27=_2e(v27,v25);
		;
		v25=v0.rB;
		_39(v15,v27,v25);
		$f.l=264;
		v27=v0.d;
		v27=_28(v27,v10);
		;
		v25=v0.rB;
		v27=_36(v27,v25);
		;
		v27=_2e(v27,v6);
		;
		v25=v0.rA;
		v27=_2e(v27,v25);
		;
		$f.l=268;
		v27=v0.m_localYAxisA;
		v25=v0.m_ay;
		_2e8(v14,v27,v25);
		$f.l=269;
		v27=v0.d;
		v27=_28(v16,v27);
		;
		v25=v0.rA;
		v27=_36(v27,v25);
		;
		v25=v0.m_ay;
		v28=_2f(v27,v25);
		;
		v0.m_sAy=v28;
		$f.l=270;
		v27=v0.rB;
		v25=v0.m_ay;
		v28=_2f(v27,v25);
		;
		v0.m_sBy=v28;
		$f.l=272;
		v28=v2 + v3;
		v35=v0.m_sAy;
		v35=v4 * v35;
		v36=v0.m_sAy;
		v36=v35 * v36;
		v36=v28 + v36;
		v35=v0.m_sBy;
		v35=v5 * v35;
		v28=v0.m_sBy;
		v35=v35 * v28;
		v36=v36 + v35;
		v0.m_mass=v36;
		$f.l=274;
		v36=v0.m_mass;
		v37=(v36 != v36 || 0.0 != 0.0) ? -1 : (v36 > 0.0) - (v36 < 0.0);
		if(v37<=0) {$b=157; break;}
		$f.l=275;
		v36=v0.m_mass;
		v36=1.0 / v36;
		v0.m_mass=v36;
	case 157:
		$f.l=280;
		v0.m_springMass=0.0;
		$f.l=281;
		v0.m_bias=0.0;
		$f.l=282;
		v0.m_gamma=0.0;
		$f.l=283;
		v36=v0.m_frequencyHz;
		v37=(v36 != v36 || 0.0 != 0.0) ? -1 : (v36 > 0.0) - (v36 < 0.0);
		if(v37<=0) {$b=255; break;}
		$f.l=284;
		v27=v0.m_localXAxisA;
		v25=v0.m_ax;
		_2e8(v14,v27,v25);
		$f.l=285;
		v27=v0.d;
		v27=_28(v16,v27);
		;
		v25=v0.rA;
		v27=_36(v27,v25);
		;
		v25=v0.m_ax;
		v36=_2f(v27,v25);
		;
		v0.m_sAx=v36;
		$f.l=286;
		v27=v0.rB;
		v25=v0.m_ax;
		v36=_2f(v27,v25);
		;
		v0.m_sBx=v36;
		$f.l=288;
		v36=v2 + v3;
		v35=v0.m_sAx;
		v35=v4 * v35;
		v28=v0.m_sAx;
		v35=v35 * v28;
		v36=v36 + v35;
		v35=v0.m_sBx;
		v35=v5 * v35;
		v28=v0.m_sBx;
		v35=v35 * v28;
		v17=v36 + v35;
		$f.l=290;
		v37=(v17 != v17 || 0.0 != 0.0) ? -1 : (v17 > 0.0) - (v17 < 0.0);
		if(v37<=0) {$b=253; break;}
		$f.l=291;
		v36=1.0 / v17;
		v0.m_springMass=v36;
		$f.l=293;
		v27=v0.d;
		v25=v0.m_ax;
		v18=_4d(v27,v25);
		;
		$f.l=296;
		v36=v0.m_frequencyHz;
		v19=6.2831855 * v36;
		$f.l=299;
		v36=v0.m_springMass;
		v36=2.0 * v36;
		v35=v0.m_dampingRatio;
		v36=v36 * v35;
		v20=v36 * v19;
		$f.l=302;
		v36=v0.m_springMass;
		v36=v36 * v19;
		v21=v36 * v19;
		$f.l=305;
		v38=v1.step;
		v22=v38.dt;
		$f.l=306;
		v36=v22 * v21;
		v36=v20 + v36;
		v36=v22 * v36;
		v0.m_gamma=v36;
		$f.l=307;
		v36=v0.m_gamma;
		v37=(v36 != v36 || 0.0 != 0.0) ? -1 : (v36 > 0.0) - (v36 < 0.0);
		if(v37<=0) {$b=235; break;}
		$f.l=308;
		v36=v0.m_gamma;
		v36=1.0 / v36;
		v0.m_gamma=v36;
	case 235:
		$f.l=311;
		v36=v18 * v22;
		v36=v36 * v21;
		v35=v0.m_gamma;
		v36=v36 * v35;
		v0.m_bias=v36;
		$f.l=313;
		v36=v0.m_gamma;
		v36=v17 + v36;
		v0.m_springMass=v36;
		$f.l=314;
		v36=v0.m_springMass;
		v37=(v36 != v36 || 0.0 != 0.0) ? -1 : (v36 > 0.0) - (v36 < 0.0);
		if(v37<=0) {$b=253; break;}
		$f.l=315;
		v36=v0.m_springMass;
		v36=1.0 / v36;
		v0.m_springMass=v36;
	case 253:
		$f.l=318;
		{ $b=257; break; }
	case 255:
		$f.l=319;
		v0.m_springImpulse=0.0;
	case 257:
		$f.l=323;
		v39=v0.m_enableMotor;
		if(v39==0) {$b=272; break;}
		$f.l=324;
		v36=v4 + v5;
		v0.m_motorMass=v36;
		$f.l=325;
		v36=v0.m_motorMass;
		v37=(v36 != v36 || 0.0 != 0.0) ? -1 : (v36 > 0.0) - (v36 < 0.0);
		if(v37<=0) {$b=276; break;}
		$f.l=326;
		v36=v0.m_motorMass;
		v36=1.0 / v36;
		v0.m_motorMass=v36;
		{ $b=276; break; }
	case 272:
		$f.l=329;
		v0.m_motorMass=0.0;
		$f.l=330;
		v0.m_motorImpulse=0.0;
	case 276:
		$f.l=333;
		v38=v1.step;
		v39=v38.warmStarting;
		if(v39==0) {$b=391; break;}
		$f.l=334;
		v33=v0.pool;
		v40=v33.$c.$it[32](v33);
		;
		$f.l=336;
		v41=v0;
		v36=v0.m_impulse;
		v38=v1.step;
		v35=v38.dtRatio;
		v36=v36 * v35;
		v0.m_impulse=v36;
		$f.l=337;
		v41=v0;
		v36=v0.m_springImpulse;
		v38=v1.step;
		v35=v38.dtRatio;
		v36=v36 * v35;
		v0.m_springImpulse=v36;
		$f.l=338;
		v41=v0;
		v36=v0.m_motorImpulse;
		v38=v1.step;
		v35=v38.dtRatio;
		v36=v36 * v35;
		v0.m_motorImpulse=v36;
		$f.l=340;
		v36=v0.m_impulse;
		v27=v0.m_ay;
		v35=v27.x;
		v36=v36 * v35;
		v35=v0.m_springImpulse;
		v27=v0.m_ax;
		v28=v27.x;
		v35=v35 * v28;
		v36=v36 + v35;
		v40.x=v36;
		$f.l=341;
		v36=v0.m_impulse;
		v27=v0.m_ay;
		v35=v27.y;
		v36=v36 * v35;
		v35=v0.m_springImpulse;
		v27=v0.m_ax;
		v28=v27.y;
		v35=v35 * v28;
		v36=v36 + v35;
		v40.y=v36;
		$f.l=342;
		v36=v0.m_impulse;
		v35=v0.m_sAy;
		v36=v36 * v35;
		v35=v0.m_springImpulse;
		v28=v0.m_sAx;
		v35=v35 * v28;
		v36=v36 + v35;
		v35=v0.m_motorImpulse;
		v18=v36 + v35;
		$f.l=343;
		v36=v0.m_impulse;
		v35=v0.m_sBy;
		v36=v36 * v35;
		v35=v0.m_springImpulse;
		v28=v0.m_sBx;
		v35=v35 * v28;
		v36=v36 + v35;
		v35=v0.m_motorImpulse;
		v19=v36 + v35;
		$f.l=345;
		v27=v8;
		v36=v8.x;
		v35=v0.m_invMassA;
		v28=v40.x;
		v35=v35 * v28;
		v36=v36 - v35;
		v8.x=v36;
		$f.l=346;
		v27=v8;
		v36=v8.y;
		v35=v0.m_invMassA;
		v28=v40.y;
		v35=v35 * v28;
		v36=v36 - v35;
		v8.y=v36;
		$f.l=347;
		v36=v0.m_invIA;
		v36=v36 * v18;
		v9=v9 - v36;
		$f.l=349;
		v27=v12;
		v36=v12.x;
		v35=v0.m_invMassB;
		v28=v40.x;
		v35=v35 * v28;
		v36=v36 + v35;
		v12.x=v36;
		$f.l=350;
		v27=v12;
		v36=v12.y;
		v35=v0.m_invMassB;
		v28=v40.y;
		v35=v35 * v28;
		v36=v36 + v35;
		v12.y=v36;
		$f.l=351;
		v36=v0.m_invIB;
		v36=v36 * v19;
		v13=v13 + v36;
		$f.l=352;
		v33=v0.pool;
		v33.$c.$it[43](v33,1);
		$f.l=353;
		{ $b=397; break; }
	case 391:
		$f.l=354;
		v0.m_impulse=0.0;
		$f.l=355;
		v0.m_springImpulse=0.0;
		$f.l=356;
		v0.m_motorImpulse=0.0;
	case 397:
		$f.l=358;
		v33=v0.pool;
		v33.$c.$it[30](v33,2);
		$f.l=359;
		v33=v0.pool;
		v33.$c.$it[43](v33,1);
		$f.l=362;
		v31=v1.velocities;
		v24=v0.m_indexA;
		v32=v31[v24];
		v32.w=v9;
		$f.l=364;
		v31=v1.velocities;
		v24=v0.m_indexB;
		v32=v31[v24];
		v32.w=v13;
		$f.l=365;
		return;
}
}
//org/jbox2d/dynamics/joints/WheelJoint:solveVelocityConstraints
function _2e9(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27;
var $f=vm.frames[vm.fp++];
$f.l=369;
v0=a0;
v1=a1;
v2=v0.m_invMassA;
v3=v0.m_invMassB;
$f.l=370;
v4=v0.m_invIA;
v5=v0.m_invIB;
$f.l=372;
v16=v1.velocities;
v17=v0.m_indexA;
v18=v16[v17];
v6=v18.v;
$f.l=373;
v16=v1.velocities;
v17=v0.m_indexA;
v18=v16[v17];
v7=v18.w;
$f.l=374;
v16=v1.velocities;
v17=v0.m_indexB;
v18=v16[v17];
v8=v18.v;
$f.l=375;
v16=v1.velocities;
v17=v0.m_indexB;
v18=v16[v17];
v9=v18.w;
$f.l=377;
v19=v0.pool;
v10=v19.$c.$it[32](v19);
;
$f.l=378;
v19=v0.pool;
v11=v19.$c.$it[32](v19);
;
$f.l=382;
v20=v0.m_ax;
v21=_28(v10,v8);
;
v21=_2e(v21,v6);
;
v22=_4d(v20,v21);
;
v23=v0.m_sBx;
v23=v23 * v9;
v23=v22 + v23;
v22=v0.m_sAx;
v22=v22 * v7;
v12=v23 - v22;
$f.l=383;
v23=v0.m_springMass;
v23=-v23;
v22=v0.m_bias;
v22=v12 + v22;
v24=v0.m_gamma;
v25=v0.m_springImpulse;
v25=v24 * v25;
v25=v22 + v25;
v13=v23 * v25;
$f.l=384;
v26=v0;
v25=v0.m_springImpulse;
v25=v25 + v13;
v0.m_springImpulse=v25;
$f.l=386;
v21=v0.m_ax;
v25=v21.x;
v25=v13 * v25;
v11.x=v25;
$f.l=387;
v21=v0.m_ax;
v25=v21.y;
v25=v13 * v25;
v11.y=v25;
$f.l=388;
v25=v0.m_sAx;
v14=v13 * v25;
$f.l=389;
v25=v0.m_sBx;
v15=v13 * v25;
$f.l=391;
v21=v6;
v25=v6.x;
v24=v11.x;
v24=v2 * v24;
v25=v25 - v24;
v6.x=v25;
$f.l=392;
v21=v6;
v25=v6.y;
v24=v11.y;
v24=v2 * v24;
v25=v25 - v24;
v6.y=v25;
$f.l=393;
v25=v4 * v14;
v7=v7 - v25;
$f.l=395;
v21=v8;
v25=v8.x;
v24=v11.x;
v24=v3 * v24;
v25=v25 + v24;
v8.x=v25;
$f.l=396;
v21=v8;
v25=v8.y;
v24=v11.y;
v24=v3 * v24;
v25=v25 + v24;
v8.y=v25;
$f.l=397;
v25=v5 * v15;
v9=v9 + v25;
$f.l=402;
v25=v9 - v7;
v24=v0.m_motorSpeed;
v12=v25 - v24;
$f.l=403;
v25=v0.m_motorMass;
v25=-v25;
v13=v25 * v12;
$f.l=405;
v14=v0.m_motorImpulse;
$f.l=406;
v27=v1.step;
v25=v27.dt;
v24=v0.m_maxMotorTorque;
v15=v25 * v24;
$f.l=407;
v25=v0.m_motorImpulse;
v25=v25 + v13;
v24=-v15;
v25=_33(v25,v24,v15);
;
v0.m_motorImpulse=v25;
$f.l=408;
v25=v0.m_motorImpulse;
v13=v25 - v14;
$f.l=410;
v25=v4 * v13;
v7=v7 - v25;
$f.l=411;
v25=v5 * v13;
v9=v9 + v25;
$f.l=416;
v21=v0.m_ay;
v20=_28(v10,v8);
;
v20=_2e(v20,v6);
;
v25=_4d(v21,v20);
;
v24=v0.m_sBy;
v24=v24 * v9;
v25=v25 + v24;
v24=v0.m_sAy;
v24=v24 * v7;
v12=v25 - v24;
$f.l=417;
v25=v0.m_mass;
v25=-v25;
v13=v25 * v12;
$f.l=418;
v26=v0;
v25=v0.m_impulse;
v25=v25 + v13;
v0.m_impulse=v25;
$f.l=420;
v21=v0.m_ay;
v25=v21.x;
v25=v13 * v25;
v11.x=v25;
$f.l=421;
v21=v0.m_ay;
v25=v21.y;
v25=v13 * v25;
v11.y=v25;
$f.l=422;
v25=v0.m_sAy;
v14=v13 * v25;
$f.l=423;
v25=v0.m_sBy;
v15=v13 * v25;
$f.l=425;
v21=v6;
v25=v6.x;
v24=v11.x;
v24=v2 * v24;
v25=v25 - v24;
v6.x=v25;
$f.l=426;
v21=v6;
v25=v6.y;
v24=v11.y;
v24=v2 * v24;
v25=v25 - v24;
v6.y=v25;
$f.l=427;
v25=v4 * v14;
v7=v7 - v25;
$f.l=429;
v21=v8;
v25=v8.x;
v24=v11.x;
v24=v3 * v24;
v25=v25 + v24;
v8.x=v25;
$f.l=430;
v21=v8;
v25=v8.y;
v24=v11.y;
v24=v3 * v24;
v25=v25 + v24;
v8.y=v25;
$f.l=431;
v25=v5 * v15;
v9=v9 + v25;
$f.l=433;
v19=v0.pool;
v19.$c.$it[43](v19,2);
$f.l=436;
v16=v1.velocities;
v17=v0.m_indexA;
v18=v16[v17];
v18.w=v7;
$f.l=438;
v16=v1.velocities;
v17=v0.m_indexB;
v18=v16[v17];
v18.w=v9;
$f.l=439;
return;
}
//org/jbox2d/dynamics/joints/WheelJoint:solvePositionConstraints
function _2ea(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=443;
		v0=a0;
		v1=a1;
		v18=v1.positions;
		v19=v0.m_indexA;
		v20=v18[v19];
		v2=v20.c;
		$f.l=444;
		v18=v1.positions;
		v19=v0.m_indexA;
		v20=v18[v19];
		v3=v20.a;
		$f.l=445;
		v18=v1.positions;
		v19=v0.m_indexB;
		v20=v18[v19];
		v4=v20.c;
		$f.l=446;
		v18=v1.positions;
		v19=v0.m_indexB;
		v20=v18[v19];
		v5=v20.a;
		$f.l=448;
		v21=v0.pool;
		v6=v21.$c.$it[39](v21);
		;
		$f.l=449;
		v21=v0.pool;
		v7=v21.$c.$it[39](v21);
		;
		$f.l=450;
		v21=v0.pool;
		v8=v21.$c.$it[32](v21);
		;
		$f.l=452;
		v22=_2c(v6,v3);
		;
		$f.l=453;
		v22=_2c(v7,v5);
		;
		$f.l=455;
		v23=v0.m_localAnchorA;
		v23=_28(v8,v23);
		;
		v24=v0.m_localCenterA;
		v24=_2e(v23,v24);
		;
		v23=v0.rA;
		_2e8(v6,v24,v23);
		$f.l=456;
		v24=v0.m_localAnchorB;
		v24=_28(v8,v24);
		;
		v23=v0.m_localCenterB;
		v24=_2e(v24,v23);
		;
		v23=v0.rB;
		_2e8(v7,v24,v23);
		$f.l=457;
		v24=v0.d;
		v24=_28(v24,v4);
		;
		v24=_2e(v24,v2);
		;
		v23=v0.rB;
		v24=_36(v24,v23);
		;
		v23=v0.rA;
		v24=_2e(v24,v23);
		;
		$f.l=459;
		v21=v0.pool;
		v9=v21.$c.$it[32](v21);
		;
		$f.l=460;
		v24=v0.m_localYAxisA;
		_2e8(v6,v24,v9);
		$f.l=462;
		v24=v0.d;
		v24=_28(v8,v24);
		;
		v23=v0.rA;
		v24=_36(v24,v23);
		;
		v10=_2f(v24,v9);
		;
		$f.l=463;
		v24=v0.rB;
		v11=_2f(v24,v9);
		;
		$f.l=465;
		v24=v0.d;
		v12=_4d(v24,v9);
		;
		$f.l=467;
		v25=v0.m_invMassA;
		v26=v0.m_invMassB;
		v26=v25 + v26;
		v25=v0.m_invIA;
		v27=v0.m_sAy;
		v27=v25 * v27;
		v25=v0.m_sAy;
		v27=v27 * v25;
		v27=v26 + v27;
		v26=v0.m_invIB;
		v25=v0.m_sBy;
		v26=v26 * v25;
		v25=v0.m_sBy;
		v26=v26 * v25;
		v13=v27 + v26;
		$f.l=470;
		v28=(v13 != v13 || 0.0 != 0.0) ? -1 : (v13 > 0.0) - (v13 < 0.0);
		if(v28==0) {$b=98; break;}
		$f.l=471;
		v27=-v12;
		v14=v27 / v13;
		{ $b=100; break; }
	case 98:
		$f.l=473;
		v14=0.0;
	case 100:
		$f.l=476;
		v21=v0.pool;
		v15=v21.$c.$it[32](v21);
		;
		$f.l=477;
		v27=v9.x;
		v27=v14 * v27;
		v15.x=v27;
		$f.l=478;
		v27=v9.y;
		v27=v14 * v27;
		v15.y=v27;
		$f.l=479;
		v16=v14 * v10;
		$f.l=480;
		v17=v14 * v11;
		$f.l=482;
		v24=v2;
		v27=v2.x;
		v26=v0.m_invMassA;
		v25=v15.x;
		v26=v26 * v25;
		v27=v27 - v26;
		v2.x=v27;
		$f.l=483;
		v24=v2;
		v27=v2.y;
		v26=v0.m_invMassA;
		v25=v15.y;
		v26=v26 * v25;
		v27=v27 - v26;
		v2.y=v27;
		$f.l=484;
		v27=v0.m_invIA;
		v27=v27 * v16;
		v3=v3 - v27;
		$f.l=485;
		v24=v4;
		v27=v4.x;
		v26=v0.m_invMassB;
		v25=v15.x;
		v26=v26 * v25;
		v27=v27 + v26;
		v4.x=v27;
		$f.l=486;
		v24=v4;
		v27=v4.y;
		v26=v0.m_invMassB;
		v25=v15.y;
		v26=v26 * v25;
		v27=v27 + v26;
		v4.y=v27;
		$f.l=487;
		v27=v0.m_invIB;
		v27=v27 * v17;
		v5=v5 + v27;
		$f.l=489;
		v21=v0.pool;
		v21.$c.$it[43](v21,3);
		$f.l=490;
		v21=v0.pool;
		v21.$c.$it[30](v21,2);
		$f.l=492;
		v18=v1.positions;
		v19=v0.m_indexA;
		v20=v18[v19];
		v20.a=v3;
		$f.l=494;
		v18=v1.positions;
		v19=v0.m_indexB;
		v20=v18[v19];
		v20.a=v5;
		$f.l=496;
		v27=_199(v12);
		;
		v28=(v27 != v27 || 0.005 != 0.005) ? 1 : (v27 > 0.005) - (v27 < 0.005);
		if(v28>0) {$b=177; break;}
		v29=1;
		{ $b=178; break; }
	case 177:
		v29=0;
	case 178:
		return v29;
}
}
//org/jbox2d/dynamics/joints/RopeJoint:<init>
function _e1(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=43;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=21;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localAnchorA=v3;
$f.l=22;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localAnchorB=v3;
$f.l=30;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_u=v3;
$f.l=31;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rA=v3;
$f.l=32;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rB=v3;
$f.l=33;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=34;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=44;
v3=v0.m_localAnchorA;
v4=v2.localAnchorA;
v4=_28(v3,v4);
;
$f.l=45;
v4=v0.m_localAnchorB;
v3=v2.localAnchorB;
v4=_28(v4,v3);
;
$f.l=47;
v5=v2.maxLength;
v0.m_maxLength=v5;
$f.l=49;
v0.m_mass=0.0;
$f.l=50;
v0.m_impulse=0.0;
$f.l=51;
v6=$g105;
v0.m_state=v6;
$f.l=52;
v0.m_length=0.0;
$f.l=53;
return;
}
//org/jbox2d/dynamics/joints/RopeJoint:initVelocityConstraints
function _2eb(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=57;
		v0=a0;
		v1=a1;
		v19=v0.m_bodyA;
		v20=v19.m_islandIndex;
		v0.m_indexA=v20;
		$f.l=58;
		v19=v0.m_bodyB;
		v20=v19.m_islandIndex;
		v0.m_indexB=v20;
		$f.l=59;
		v21=v0.m_localCenterA;
		v19=v0.m_bodyA;
		v22=v19.m_sweep;
		v23=v22.localCenter;
		v23=_28(v21,v23);
		;
		$f.l=60;
		v23=v0.m_localCenterB;
		v19=v0.m_bodyB;
		v22=v19.m_sweep;
		v21=v22.localCenter;
		v23=_28(v23,v21);
		;
		$f.l=61;
		v19=v0.m_bodyA;
		v24=v19.m_invMass;
		v0.m_invMassA=v24;
		$f.l=62;
		v19=v0.m_bodyB;
		v24=v19.m_invMass;
		v0.m_invMassB=v24;
		$f.l=63;
		v19=v0.m_bodyA;
		v24=v19.m_invI;
		v0.m_invIA=v24;
		$f.l=64;
		v19=v0.m_bodyB;
		v24=v19.m_invI;
		v0.m_invIB=v24;
		$f.l=66;
		v25=v1.positions;
		v20=v0.m_indexA;
		v26=v25[v20];
		v2=v26.c;
		$f.l=67;
		v25=v1.positions;
		v20=v0.m_indexA;
		v26=v25[v20];
		v3=v26.a;
		$f.l=68;
		v27=v1.velocities;
		v20=v0.m_indexA;
		v28=v27[v20];
		v4=v28.v;
		$f.l=69;
		v27=v1.velocities;
		v20=v0.m_indexA;
		v28=v27[v20];
		v5=v28.w;
		$f.l=71;
		v25=v1.positions;
		v20=v0.m_indexB;
		v26=v25[v20];
		v6=v26.c;
		$f.l=72;
		v25=v1.positions;
		v20=v0.m_indexB;
		v26=v25[v20];
		v7=v26.a;
		$f.l=73;
		v27=v1.velocities;
		v20=v0.m_indexB;
		v28=v27[v20];
		v8=v28.v;
		$f.l=74;
		v27=v1.velocities;
		v20=v0.m_indexB;
		v28=v27[v20];
		v9=v28.w;
		$f.l=76;
		v29=v0.pool;
		v10=v29.$c.$it[39](v29);
		;
		$f.l=77;
		v29=v0.pool;
		v11=v29.$c.$it[39](v29);
		;
		$f.l=78;
		v29=v0.pool;
		v12=v29.$c.$it[32](v29);
		;
		$f.l=80;
		v30=_2c(v10,v3);
		;
		$f.l=81;
		v30=_2c(v11,v7);
		;
		$f.l=84;
		v23=v0.m_localAnchorA;
		v23=_28(v12,v23);
		;
		v21=v0.m_localCenterA;
		v23=_2e(v23,v21);
		;
		v21=v0.m_rA;
		_39(v10,v23,v21);
		$f.l=85;
		v23=v0.m_localAnchorB;
		v23=_28(v12,v23);
		;
		v21=v0.m_localCenterB;
		v23=_2e(v23,v21);
		;
		v21=v0.m_rB;
		_39(v11,v23,v21);
		$f.l=87;
		v23=v0.m_u;
		v23=_28(v23,v6);
		;
		v21=v0.m_rB;
		v23=_36(v23,v21);
		;
		v23=_2e(v23,v2);
		;
		v21=v0.m_rA;
		v23=_2e(v23,v21);
		;
		$f.l=89;
		v23=v0.m_u;
		v24=_258(v23);
		;
		v0.m_length=v24;
		$f.l=91;
		v24=v0.m_length;
		v31=v0.m_maxLength;
		v13=v24 - v31;
		$f.l=92;
		v32=(v13 != v13 || 0.0 != 0.0) ? -1 : (v13 > 0.0) - (v13 < 0.0);
		if(v32<=0) {$b=128; break;}
		$f.l=93;
		v33=$g108;
		v0.m_state=v33;
		{ $b=131; break; }
	case 128:
		$f.l=95;
		v33=$g105;
		v0.m_state=v33;
	case 131:
		$f.l=98;
		v31=v0.m_length;
		v32=(v31 != v31 || 0.005 != 0.005) ? -1 : (v31 > 0.005) - (v31 < 0.005);
		if(v32<=0) {$b=141; break;}
		$f.l=99;
		v23=v0.m_u;
		v31=v0.m_length;
		v31=1.0 / v31;
		v23=_35(v23,v31);
		;
		{ $b=150; break; }
	case 141:
		$f.l=101;
		v23=v0.m_u;
		_29(v23);
		$f.l=102;
		v0.m_mass=0.0;
		$f.l=103;
		v0.m_impulse=0.0;
		$f.l=104;
		return;
	case 150:
		$f.l=108;
		v23=v0.m_rA;
		v21=v0.m_u;
		v14=_2f(v23,v21);
		;
		$f.l=109;
		v23=v0.m_rB;
		v21=v0.m_u;
		v15=_2f(v23,v21);
		;
		$f.l=110;
		v31=v0.m_invMassA;
		v24=v0.m_invIA;
		v24=v24 * v14;
		v24=v24 * v14;
		v31=v31 + v24;
		v24=v0.m_invMassB;
		v31=v31 + v24;
		v24=v0.m_invIB;
		v24=v24 * v15;
		v24=v24 * v15;
		v16=v31 + v24;
		$f.l=112;
		v34=v0;
		v32=(v16 != v16 || 0.0 != 0.0) ? -1 : (v16 > 0.0) - (v16 < 0.0);
		if(v32==0) {$b=176; break;}
		v31=1.0 / v16;
		{ $b=177; break; }
	case 176:
		v31=0.0;
	case 177:
		v0.m_mass=v31;
		$f.l=114;
		v35=v1.step;
		v36=v35.warmStarting;
		if(v36==0) {$b=251; break;}
		$f.l=116;
		v34=v0;
		v31=v0.m_impulse;
		v35=v1.step;
		v24=v35.dtRatio;
		v31=v31 * v24;
		v0.m_impulse=v31;
		$f.l=118;
		v31=v0.m_impulse;
		v23=v0.m_u;
		v24=v23.x;
		v17=v31 * v24;
		$f.l=119;
		v31=v0.m_impulse;
		v23=v0.m_u;
		v24=v23.y;
		v18=v31 * v24;
		$f.l=120;
		v23=v4;
		v31=v4.x;
		v24=v0.m_invMassA;
		v24=v24 * v17;
		v31=v31 - v24;
		v4.x=v31;
		$f.l=121;
		v23=v4;
		v31=v4.y;
		v24=v0.m_invMassA;
		v24=v24 * v18;
		v31=v31 - v24;
		v4.y=v31;
		$f.l=122;
		v31=v0.m_invIA;
		v23=v0.m_rA;
		v24=v23.x;
		v24=v24 * v18;
		v23=v0.m_rA;
		v37=v23.y;
		v37=v37 * v17;
		v37=v24 - v37;
		v37=v31 * v37;
		v5=v5 - v37;
		$f.l=124;
		v23=v8;
		v37=v8.x;
		v31=v0.m_invMassB;
		v31=v31 * v17;
		v37=v37 + v31;
		v8.x=v37;
		$f.l=125;
		v23=v8;
		v37=v8.y;
		v31=v0.m_invMassB;
		v31=v31 * v18;
		v37=v37 + v31;
		v8.y=v37;
		$f.l=126;
		v37=v0.m_invIB;
		v23=v0.m_rB;
		v31=v23.x;
		v31=v31 * v18;
		v23=v0.m_rB;
		v24=v23.y;
		v24=v24 * v17;
		v31=v31 - v24;
		v37=v37 * v31;
		v9=v9 + v37;
		$f.l=127;
		{ $b=253; break; }
	case 251:
		$f.l=128;
		v0.m_impulse=0.0;
	case 253:
		$f.l=131;
		v29=v0.pool;
		v29.$c.$it[30](v29,2);
		$f.l=132;
		v29=v0.pool;
		v29.$c.$it[43](v29,1);
		$f.l=135;
		v27=v1.velocities;
		v20=v0.m_indexA;
		v28=v27[v20];
		v28.w=v5;
		$f.l=137;
		v27=v1.velocities;
		v20=v0.m_indexB;
		v28=v27[v20];
		v28.w=v9;
		$f.l=138;
		return;
}
}
//org/jbox2d/dynamics/joints/RopeJoint:solveVelocityConstraints
function _2ec(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=142;
		v0=a0;
		v1=a1;
		v15=v1.velocities;
		v16=v0.m_indexA;
		v17=v15[v16];
		v2=v17.v;
		$f.l=143;
		v15=v1.velocities;
		v16=v0.m_indexA;
		v17=v15[v16];
		v3=v17.w;
		$f.l=144;
		v15=v1.velocities;
		v16=v0.m_indexB;
		v17=v15[v16];
		v4=v17.v;
		$f.l=145;
		v15=v1.velocities;
		v16=v0.m_indexB;
		v17=v15[v16];
		v5=v17.w;
		$f.l=148;
		v18=v0.pool;
		v6=v18.$c.$it[32](v18);
		;
		$f.l=149;
		v18=v0.pool;
		v7=v18.$c.$it[32](v18);
		;
		$f.l=150;
		v18=v0.pool;
		v8=v18.$c.$it[32](v18);
		;
		$f.l=152;
		v19=v0.m_rA;
		_1df(v3,v19,v6);
		$f.l=153;
		v19=_36(v6,v2);
		;
		$f.l=154;
		v19=v0.m_rB;
		_1df(v5,v19,v7);
		$f.l=155;
		v19=_36(v7,v4);
		;
		$f.l=157;
		v20=v0.m_length;
		v21=v0.m_maxLength;
		v9=v20 - v21;
		$f.l=158;
		v19=v0.m_u;
		v22=_28(v8,v7);
		;
		v22=_2e(v22,v6);
		;
		v10=_4d(v19,v22);
		;
		$f.l=161;
		v23=(v9 != v9 || 0.0 != 0.0) ? 1 : (v9 > 0.0) - (v9 < 0.0);
		if(v23>=0) {$b=58; break;}
		$f.l=162;
		v24=v1.step;
		v21=v24.inv_dt;
		v21=v21 * v9;
		v10=v10 + v21;
	case 58:
		$f.l=165;
		v21=v0.m_mass;
		v21=-v21;
		v11=v21 * v10;
		$f.l=166;
		v12=v0.m_impulse;
		$f.l=167;
		v21=v0.m_impulse;
		v21=v21 + v11;
		v21=_3c(0.0,v21);
		;
		v0.m_impulse=v21;
		$f.l=168;
		v21=v0.m_impulse;
		v11=v21 - v12;
		$f.l=170;
		v22=v0.m_u;
		v21=v22.x;
		v13=v11 * v21;
		$f.l=171;
		v22=v0.m_u;
		v21=v22.y;
		v14=v11 * v21;
		$f.l=172;
		v22=v2;
		v21=v2.x;
		v20=v0.m_invMassA;
		v20=v20 * v13;
		v21=v21 - v20;
		v2.x=v21;
		$f.l=173;
		v22=v2;
		v21=v2.y;
		v20=v0.m_invMassA;
		v20=v20 * v14;
		v21=v21 - v20;
		v2.y=v21;
		$f.l=174;
		v21=v0.m_invIA;
		v22=v0.m_rA;
		v20=v22.x;
		v20=v20 * v14;
		v22=v0.m_rA;
		v25=v22.y;
		v25=v25 * v13;
		v25=v20 - v25;
		v25=v21 * v25;
		v3=v3 - v25;
		$f.l=175;
		v22=v4;
		v25=v4.x;
		v21=v0.m_invMassB;
		v21=v21 * v13;
		v25=v25 + v21;
		v4.x=v25;
		$f.l=176;
		v22=v4;
		v25=v4.y;
		v21=v0.m_invMassB;
		v21=v21 * v14;
		v25=v25 + v21;
		v4.y=v25;
		$f.l=177;
		v25=v0.m_invIB;
		v22=v0.m_rB;
		v21=v22.x;
		v21=v21 * v14;
		v22=v0.m_rB;
		v20=v22.y;
		v20=v20 * v13;
		v21=v21 - v20;
		v25=v25 * v21;
		v5=v5 + v25;
		$f.l=179;
		v18=v0.pool;
		v18.$c.$it[43](v18,3);
		$f.l=182;
		v15=v1.velocities;
		v16=v0.m_indexA;
		v17=v15[v16];
		v17.w=v3;
		$f.l=184;
		v15=v1.velocities;
		v16=v0.m_indexB;
		v17=v15[v16];
		v17.w=v5;
		$f.l=185;
		return;
}
}
//org/jbox2d/dynamics/joints/RopeJoint:solvePositionConstraints
function _2ed(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=189;
		v0=a0;
		v1=a1;
		v17=v1.positions;
		v18=v0.m_indexA;
		v19=v17[v18];
		v2=v19.c;
		$f.l=190;
		v17=v1.positions;
		v18=v0.m_indexA;
		v19=v17[v18];
		v3=v19.a;
		$f.l=191;
		v17=v1.positions;
		v18=v0.m_indexB;
		v19=v17[v18];
		v4=v19.c;
		$f.l=192;
		v17=v1.positions;
		v18=v0.m_indexB;
		v19=v17[v18];
		v5=v19.a;
		$f.l=194;
		v20=v0.pool;
		v6=v20.$c.$it[39](v20);
		;
		$f.l=195;
		v20=v0.pool;
		v7=v20.$c.$it[39](v20);
		;
		$f.l=196;
		v20=v0.pool;
		v8=v20.$c.$it[32](v20);
		;
		$f.l=197;
		v20=v0.pool;
		v9=v20.$c.$it[32](v20);
		;
		$f.l=198;
		v20=v0.pool;
		v10=v20.$c.$it[32](v20);
		;
		$f.l=199;
		v20=v0.pool;
		v11=v20.$c.$it[32](v20);
		;
		$f.l=201;
		v21=_2c(v6,v3);
		;
		$f.l=202;
		v21=_2c(v7,v5);
		;
		$f.l=205;
		v22=v0.m_localAnchorA;
		v22=_28(v11,v22);
		;
		v23=v0.m_localCenterA;
		v23=_2e(v22,v23);
		;
		_39(v6,v23,v9);
		$f.l=206;
		v23=v0.m_localAnchorB;
		v23=_28(v11,v23);
		;
		v22=v0.m_localCenterB;
		v23=_2e(v23,v22);
		;
		_39(v7,v23,v10);
		$f.l=207;
		v23=_28(v8,v4);
		;
		v23=_36(v23,v10);
		;
		v23=_2e(v23,v2);
		;
		v23=_2e(v23,v9);
		;
		$f.l=209;
		v12=_53(v8);
		;
		$f.l=210;
		v24=v0.m_maxLength;
		v13=v12 - v24;
		$f.l=212;
		v13=_33(v13,0.0,0.2);
		;
		$f.l=214;
		v24=v0.m_mass;
		v24=-v24;
		v14=v24 * v13;
		$f.l=215;
		v24=v8.x;
		v15=v14 * v24;
		$f.l=216;
		v24=v8.y;
		v16=v14 * v24;
		$f.l=218;
		v23=v2;
		v24=v2.x;
		v25=v0.m_invMassA;
		v25=v25 * v15;
		v25=v24 - v25;
		v2.x=v25;
		$f.l=219;
		v23=v2;
		v25=v2.y;
		v24=v0.m_invMassA;
		v24=v24 * v16;
		v25=v25 - v24;
		v2.y=v25;
		$f.l=220;
		v25=v0.m_invIA;
		v24=v9.x;
		v24=v24 * v16;
		v26=v9.y;
		v26=v26 * v15;
		v26=v24 - v26;
		v26=v25 * v26;
		v3=v3 - v26;
		$f.l=221;
		v23=v4;
		v26=v4.x;
		v25=v0.m_invMassB;
		v25=v25 * v15;
		v26=v26 + v25;
		v4.x=v26;
		$f.l=222;
		v23=v4;
		v26=v4.y;
		v25=v0.m_invMassB;
		v25=v25 * v16;
		v26=v26 + v25;
		v4.y=v26;
		$f.l=223;
		v26=v0.m_invIB;
		v25=v10.x;
		v25=v25 * v16;
		v24=v10.y;
		v24=v24 * v15;
		v25=v25 - v24;
		v26=v26 * v25;
		v5=v5 + v26;
		$f.l=225;
		v20=v0.pool;
		v20.$c.$it[30](v20,2);
		$f.l=226;
		v20=v0.pool;
		v20.$c.$it[43](v20,4);
		$f.l=229;
		v17=v1.positions;
		v18=v0.m_indexA;
		v19=v17[v18];
		v19.a=v3;
		$f.l=231;
		v17=v1.positions;
		v18=v0.m_indexB;
		v19=v17[v18];
		v19.a=v5;
		$f.l=233;
		v26=v0.m_maxLength;
		v26=v12 - v26;
		v27=(v26 != v26 || 0.005 != 0.005) ? 1 : (v26 > 0.005) - (v26 < 0.005);
		if(v27>=0) {$b=147; break;}
		v28=1;
		{ $b=148; break; }
	case 147:
		v28=0;
	case 148:
		return v28;
}
}
//org/jbox2d/dynamics/joints/WeldJoint:<init>
function _db(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
$f.l=86;
v0=a0;
v1=a1;
v2=a2;
_e2(v0,v1,v2);
$f.l=75;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rA=v3;
$f.l=76;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_rB=v3;
$f.l=77;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterA=v3;
$f.l=78;
v3=new org/jbox2d/common/Vec2;
_1a(v3);
v0.m_localCenterB=v3;
$f.l=83;
v4=new org/jbox2d/common/Mat33;
_25c(v4);
v0.m_mass=v4;
$f.l=87;
v3=new org/jbox2d/common/Vec2;
v5=v2.localAnchorA;
_25a(v3,v5);
v0.m_localAnchorA=v3;
$f.l=88;
v5=new org/jbox2d/common/Vec2;
v3=v2.localAnchorB;
_25a(v5,v3);
v0.m_localAnchorB=v5;
$f.l=89;
v6=v2.referenceAngle;
v0.m_referenceAngle=v6;
$f.l=90;
v6=v2.frequencyHz;
v0.m_frequencyHz=v6;
$f.l=91;
v6=v2.dampingRatio;
v0.m_dampingRatio=v6;
$f.l=93;
v7=new org/jbox2d/common/Vec3;
_25b(v7);
v0.m_impulse=v7;
$f.l=94;
v7=v0.m_impulse;
_260(v7);
$f.l=95;
return;
}
//org/jbox2d/dynamics/joints/WeldJoint:initVelocityConstraints
function _2ee(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=148;
		v0=a0;
		v1=a1;
		v23=v0.m_bodyA;
		v24=v23.m_islandIndex;
		v0.m_indexA=v24;
		$f.l=149;
		v23=v0.m_bodyB;
		v24=v23.m_islandIndex;
		v0.m_indexB=v24;
		$f.l=150;
		v25=v0.m_localCenterA;
		v23=v0.m_bodyA;
		v26=v23.m_sweep;
		v27=v26.localCenter;
		v27=_28(v25,v27);
		;
		$f.l=151;
		v27=v0.m_localCenterB;
		v23=v0.m_bodyB;
		v26=v23.m_sweep;
		v25=v26.localCenter;
		v27=_28(v27,v25);
		;
		$f.l=152;
		v23=v0.m_bodyA;
		v28=v23.m_invMass;
		v0.m_invMassA=v28;
		$f.l=153;
		v23=v0.m_bodyB;
		v28=v23.m_invMass;
		v0.m_invMassB=v28;
		$f.l=154;
		v23=v0.m_bodyA;
		v28=v23.m_invI;
		v0.m_invIA=v28;
		$f.l=155;
		v23=v0.m_bodyB;
		v28=v23.m_invI;
		v0.m_invIB=v28;
		$f.l=158;
		v29=v1.positions;
		v24=v0.m_indexA;
		v30=v29[v24];
		v2=v30.a;
		$f.l=159;
		v31=v1.velocities;
		v24=v0.m_indexA;
		v32=v31[v24];
		v3=v32.v;
		$f.l=160;
		v31=v1.velocities;
		v24=v0.m_indexA;
		v32=v31[v24];
		v4=v32.w;
		$f.l=163;
		v29=v1.positions;
		v24=v0.m_indexB;
		v30=v29[v24];
		v5=v30.a;
		$f.l=164;
		v31=v1.velocities;
		v24=v0.m_indexB;
		v32=v31[v24];
		v6=v32.v;
		$f.l=165;
		v31=v1.velocities;
		v24=v0.m_indexB;
		v32=v31[v24];
		v7=v32.w;
		$f.l=167;
		v33=v0.pool;
		v8=v33.$c.$it[39](v33);
		;
		$f.l=168;
		v33=v0.pool;
		v9=v33.$c.$it[39](v33);
		;
		$f.l=169;
		v33=v0.pool;
		v10=v33.$c.$it[32](v33);
		;
		$f.l=171;
		v34=_2c(v8,v2);
		;
		$f.l=172;
		v34=_2c(v9,v5);
		;
		$f.l=175;
		v27=v0.m_localAnchorA;
		v27=_28(v10,v27);
		;
		v25=v0.m_localCenterA;
		v27=_2e(v27,v25);
		;
		v25=v0.m_rA;
		_39(v8,v27,v25);
		$f.l=176;
		v27=v0.m_localAnchorB;
		v27=_28(v10,v27);
		;
		v25=v0.m_localCenterB;
		v27=_2e(v27,v25);
		;
		v25=v0.m_rB;
		_39(v9,v27,v25);
		$f.l=187;
		v11=v0.m_invMassA;
		v12=v0.m_invMassB;
		$f.l=188;
		v13=v0.m_invIA;
		v14=v0.m_invIB;
		$f.l=190;
		v33=v0.pool;
		v15=v33.$c.$it[34](v33);
		;
		$f.l=192;
		v35=v15.ex;
		v28=v11 + v12;
		v27=v0.m_rA;
		v36=v27.y;
		v27=v0.m_rA;
		v37=v27.y;
		v37=v36 * v37;
		v37=v37 * v13;
		v37=v28 + v37;
		v27=v0.m_rB;
		v36=v27.y;
		v27=v0.m_rB;
		v28=v27.y;
		v36=v36 * v28;
		v36=v36 * v14;
		v37=v37 + v36;
		v35.x=v37;
		$f.l=193;
		v35=v15.ey;
		v27=v0.m_rA;
		v37=v27.y;
		v37=-v37;
		v27=v0.m_rA;
		v36=v27.x;
		v37=v37 * v36;
		v37=v37 * v13;
		v27=v0.m_rB;
		v36=v27.y;
		v27=v0.m_rB;
		v28=v27.x;
		v36=v36 * v28;
		v36=v36 * v14;
		v37=v37 - v36;
		v35.x=v37;
		$f.l=194;
		v35=v15.ez;
		v27=v0.m_rA;
		v37=v27.y;
		v37=-v37;
		v37=v37 * v13;
		v27=v0.m_rB;
		v36=v27.y;
		v36=v36 * v14;
		v37=v37 - v36;
		v35.x=v37;
		$f.l=195;
		v35=v15.ex;
		v38=v15.ey;
		v37=v38.x;
		v35.y=v37;
		$f.l=196;
		v38=v15.ey;
		v37=v11 + v12;
		v27=v0.m_rA;
		v36=v27.x;
		v27=v0.m_rA;
		v28=v27.x;
		v36=v36 * v28;
		v36=v36 * v13;
		v37=v37 + v36;
		v27=v0.m_rB;
		v36=v27.x;
		v27=v0.m_rB;
		v28=v27.x;
		v36=v36 * v28;
		v36=v36 * v14;
		v37=v37 + v36;
		v38.y=v37;
		$f.l=197;
		v38=v15.ez;
		v27=v0.m_rA;
		v37=v27.x;
		v37=v37 * v13;
		v27=v0.m_rB;
		v36=v27.x;
		v36=v36 * v14;
		v37=v37 + v36;
		v38.y=v37;
		$f.l=198;
		v38=v15.ex;
		v35=v15.ez;
		v37=v35.x;
		v38.z=v37;
		$f.l=199;
		v38=v15.ey;
		v35=v15.ez;
		v37=v35.y;
		v38.z=v37;
		$f.l=200;
		v38=v15.ez;
		v37=v13 + v14;
		v38.z=v37;
		$f.l=202;
		v37=v0.m_frequencyHz;
		v39=(v37 != v37 || 0.0 != 0.0) ? -1 : (v37 > 0.0) - (v37 < 0.0);
		if(v39<=0) {$b=266; break;}
		$f.l=203;
		v40=v0.m_mass;
		_2ef(v15,v40);
		$f.l=205;
		v16=v13 + v14;
		$f.l=206;
		v39=(v16 != v16 || 0.0 != 0.0) ? -1 : (v16 > 0.0) - (v16 < 0.0);
		if(v39<=0) {$b=211; break;}
		v37=1.0 / v16;
		{ $b=212; break; }
	case 211:
		v37=0.0;
	case 212:
		v17=v37;
		$f.l=208;
		v37=v5 - v2;
		v36=v0.m_referenceAngle;
		v18=v37 - v36;
		$f.l=211;
		v37=v0.m_frequencyHz;
		v19=6.2831855 * v37;
		$f.l=214;
		v37=2.0 * v17;
		v36=v0.m_dampingRatio;
		v37=v37 * v36;
		v20=v37 * v19;
		$f.l=217;
		v37=v17 * v19;
		v21=v37 * v19;
		$f.l=220;
		v41=v1.step;
		v22=v41.dt;
		$f.l=221;
		v37=v22 * v21;
		v37=v20 + v37;
		v37=v22 * v37;
		v0.m_gamma=v37;
		$f.l=222;
		v42=v0;
		v37=v0.m_gamma;
		v39=(v37 != v37 || 0.0 != 0.0) ? -1 : (v37 > 0.0) - (v37 < 0.0);
		if(v39==0) {$b=244; break;}
		v37=v0.m_gamma;
		v37=1.0 / v37;
		{ $b=245; break; }
	case 244:
		v37=0.0;
	case 245:
		v0.m_gamma=v37;
		$f.l=223;
		v37=v18 * v22;
		v37=v37 * v21;
		v36=v0.m_gamma;
		v37=v37 * v36;
		v0.m_bias=v37;
		$f.l=225;
		v37=v0.m_gamma;
		v16=v16 + v37;
		$f.l=226;
		v40=v0.m_mass;
		v38=v40.ez;
		v39=(v16 != v16 || 0.0 != 0.0) ? -1 : (v16 > 0.0) - (v16 < 0.0);
		if(v39==0) {$b=262; break;}
		v37=1.0 / v16;
		{ $b=263; break; }
	case 262:
		v37=0.0;
	case 263:
		v38.z=v37;
		$f.l=227;
		{ $b=273; break; }
	case 266:
		$f.l=228;
		v40=v0.m_mass;
		_2f0(v15,v40);
		$f.l=229;
		v0.m_gamma=0.0;
		$f.l=230;
		v0.m_bias=0.0;
	case 273:
		$f.l=233;
		v41=v1.step;
		v43=v41.warmStarting;
		if(v43==0) {$b=340; break;}
		$f.l=234;
		v33=v0.pool;
		v44=v33.$c.$it[32](v33);
		;
		$f.l=236;
		v38=v0.m_impulse;
		v41=v1.step;
		v37=v41.dtRatio;
		v38=_25f(v38,v37);
		;
		$f.l=238;
		v38=v0.m_impulse;
		v37=v38.x;
		v38=v0.m_impulse;
		v36=v38.y;
		v27=_30(v44,v37,v36);
		;
		$f.l=240;
		v27=v3;
		v37=v3.x;
		v36=v44.x;
		v36=v11 * v36;
		v37=v37 - v36;
		v3.x=v37;
		$f.l=241;
		v27=v3;
		v37=v3.y;
		v36=v44.y;
		v36=v11 * v36;
		v37=v37 - v36;
		v3.y=v37;
		$f.l=242;
		v27=v0.m_rA;
		v37=_2f(v27,v44);
		;
		v38=v0.m_impulse;
		v36=v38.z;
		v37=v37 + v36;
		v37=v13 * v37;
		v4=v4 - v37;
		$f.l=244;
		v27=v6;
		v37=v6.x;
		v36=v44.x;
		v36=v12 * v36;
		v37=v37 + v36;
		v6.x=v37;
		$f.l=245;
		v27=v6;
		v37=v6.y;
		v36=v44.y;
		v36=v12 * v36;
		v37=v37 + v36;
		v6.y=v37;
		$f.l=246;
		v27=v0.m_rB;
		v37=_2f(v27,v44);
		;
		v38=v0.m_impulse;
		v36=v38.z;
		v37=v37 + v36;
		v37=v14 * v37;
		v7=v7 + v37;
		$f.l=247;
		v33=v0.pool;
		v33.$c.$it[43](v33,1);
		$f.l=248;
		{ $b=343; break; }
	case 340:
		$f.l=249;
		v38=v0.m_impulse;
		_260(v38);
	case 343:
		$f.l=253;
		v31=v1.velocities;
		v24=v0.m_indexA;
		v32=v31[v24];
		v32.w=v4;
		$f.l=255;
		v31=v1.velocities;
		v24=v0.m_indexB;
		v32=v31[v24];
		v32.w=v7;
		$f.l=257;
		v33=v0.pool;
		v33.$c.$it[43](v33,1);
		$f.l=258;
		v33=v0.pool;
		v33.$c.$it[30](v33,2);
		$f.l=259;
		v33=v0.pool;
		v33.$c.$it[41](v33,1);
		$f.l=260;
		return;
}
}
//org/jbox2d/dynamics/joints/WeldJoint:solveVelocityConstraints
function _2f1(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=264;
		v0=a0;
		v1=a1;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v2=v18.v;
		$f.l=265;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v3=v18.w;
		$f.l=266;
		v16=v1.velocities;
		v17=v0.m_indexB;
		v18=v16[v17];
		v4=v18.v;
		$f.l=267;
		v16=v1.velocities;
		v17=v0.m_indexB;
		v18=v16[v17];
		v5=v18.w;
		$f.l=269;
		v6=v0.m_invMassA;
		v7=v0.m_invMassB;
		$f.l=270;
		v8=v0.m_invIA;
		v9=v0.m_invIB;
		$f.l=272;
		v19=v0.pool;
		v10=v19.$c.$it[32](v19);
		;
		$f.l=273;
		v19=v0.pool;
		v11=v19.$c.$it[32](v19);
		;
		$f.l=274;
		v19=v0.pool;
		v12=v19.$c.$it[32](v19);
		;
		$f.l=275;
		v20=v0.m_frequencyHz;
		v21=(v20 != v20 || 0.0 != 0.0) ? -1 : (v20 > 0.0) - (v20 < 0.0);
		if(v21<=0) {$b=136; break;}
		$f.l=276;
		v13=v5 - v3;
		$f.l=278;
		v22=v0.m_mass;
		v23=v22.ez;
		v20=v23.z;
		v20=-v20;
		v24=v0.m_bias;
		v24=v13 + v24;
		v25=v0.m_gamma;
		v23=v0.m_impulse;
		v26=v23.z;
		v26=v25 * v26;
		v26=v24 + v26;
		v14=v20 * v26;
		$f.l=279;
		v23=v0.m_impulse;
		v26=v23.z;
		v26=v26 + v14;
		v23.z=v26;
		$f.l=281;
		v26=v8 * v14;
		v3=v3 - v26;
		$f.l=282;
		v26=v9 * v14;
		v5=v5 + v26;
		$f.l=284;
		v27=v0.m_rB;
		_1df(v5,v27,v10);
		$f.l=285;
		v27=v0.m_rA;
		_1df(v3,v27,v12);
		$f.l=286;
		v27=_36(v10,v4);
		;
		v27=_2e(v27,v2);
		;
		v27=_2e(v27,v12);
		;
		$f.l=288;
		v15=v11;
		$f.l=289;
		v22=v0.m_mass;
		_2f2(v22,v10,v15);
		$f.l=290;
		v27=_3a(v15);
		;
		$f.l=292;
		v23=v0.m_impulse;
		v26=v23.x;
		v25=v15.x;
		v26=v26 + v25;
		v23.x=v26;
		$f.l=293;
		v23=v0.m_impulse;
		v26=v23.y;
		v25=v15.y;
		v26=v26 + v25;
		v23.y=v26;
		$f.l=295;
		v27=v2;
		v26=v2.x;
		v25=v11.x;
		v25=v6 * v25;
		v26=v26 - v25;
		v2.x=v26;
		$f.l=296;
		v27=v2;
		v26=v2.y;
		v25=v11.y;
		v25=v6 * v25;
		v26=v26 - v25;
		v2.y=v26;
		$f.l=297;
		v27=v0.m_rA;
		v26=_2f(v27,v11);
		;
		v26=v8 * v26;
		v3=v3 - v26;
		$f.l=299;
		v27=v4;
		v26=v4.x;
		v25=v11.x;
		v25=v7 * v25;
		v26=v26 + v25;
		v4.x=v26;
		$f.l=300;
		v27=v4;
		v26=v4.y;
		v25=v11.y;
		v25=v7 * v25;
		v26=v26 + v25;
		v4.y=v26;
		$f.l=301;
		v27=v0.m_rB;
		v26=_2f(v27,v11);
		;
		v26=v9 * v26;
		v5=v5 + v26;
		$f.l=302;
		{ $b=215; break; }
	case 136:
		$f.l=303;
		v27=v0.m_rA;
		_1df(v3,v27,v12);
		$f.l=304;
		v27=v0.m_rB;
		_1df(v5,v27,v10);
		$f.l=305;
		v27=_36(v10,v4);
		;
		v27=_2e(v27,v2);
		;
		v27=_2e(v27,v12);
		;
		$f.l=306;
		v13=v5 - v3;
		$f.l=308;
		v19=v0.pool;
		v28=v19.$c.$it[28](v19);
		;
		$f.l=309;
		v26=v10.x;
		v25=v10.y;
		v23=_25e(v28,v26,v25,v13);
		;
		$f.l=311;
		v19=v0.pool;
		v29=v19.$c.$it[28](v19);
		;
		$f.l=312;
		v22=v0.m_mass;
		_2f3(v22,v28,v29);
		$f.l=313;
		v23=_263(v29);
		;
		$f.l=314;
		v23=v0.m_impulse;
		v23=_265(v23,v29);
		;
		$f.l=316;
		v26=v29.x;
		v25=v29.y;
		v27=_30(v11,v26,v25);
		;
		$f.l=318;
		v27=v2;
		v26=v2.x;
		v25=v11.x;
		v25=v6 * v25;
		v26=v26 - v25;
		v2.x=v26;
		$f.l=319;
		v27=v2;
		v26=v2.y;
		v25=v11.y;
		v25=v6 * v25;
		v26=v26 - v25;
		v2.y=v26;
		$f.l=320;
		v27=v0.m_rA;
		v26=_2f(v27,v11);
		;
		v25=v29.z;
		v26=v26 + v25;
		v26=v8 * v26;
		v3=v3 - v26;
		$f.l=322;
		v27=v4;
		v26=v4.x;
		v25=v11.x;
		v25=v7 * v25;
		v26=v26 + v25;
		v4.x=v26;
		$f.l=323;
		v27=v4;
		v26=v4.y;
		v25=v11.y;
		v25=v7 * v25;
		v26=v26 + v25;
		v4.y=v26;
		$f.l=324;
		v27=v0.m_rB;
		v26=_2f(v27,v11);
		;
		v25=v29.z;
		v26=v26 + v25;
		v26=v9 * v26;
		v5=v5 + v26;
		$f.l=326;
		v19=v0.pool;
		v19.$c.$it[36](v19,2);
	case 215:
		$f.l=330;
		v16=v1.velocities;
		v17=v0.m_indexA;
		v18=v16[v17];
		v18.w=v3;
		$f.l=332;
		v16=v1.velocities;
		v17=v0.m_indexB;
		v18=v16[v17];
		v18.w=v5;
		$f.l=334;
		v19=v0.pool;
		v19.$c.$it[43](v19,3);
		$f.l=335;
		return;
}
}
//org/jbox2d/dynamics/joints/WeldJoint:solvePositionConstraints
function _2f4(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=339;
		v0=a0;
		v1=a1;
		v23=v1.positions;
		v24=v0.m_indexA;
		v25=v23[v24];
		v2=v25.c;
		$f.l=340;
		v23=v1.positions;
		v24=v0.m_indexA;
		v25=v23[v24];
		v3=v25.a;
		$f.l=341;
		v23=v1.positions;
		v24=v0.m_indexB;
		v25=v23[v24];
		v4=v25.c;
		$f.l=342;
		v23=v1.positions;
		v24=v0.m_indexB;
		v25=v23[v24];
		v5=v25.a;
		$f.l=343;
		v26=v0.pool;
		v6=v26.$c.$it[39](v26);
		;
		$f.l=344;
		v26=v0.pool;
		v7=v26.$c.$it[39](v26);
		;
		$f.l=345;
		v26=v0.pool;
		v8=v26.$c.$it[32](v26);
		;
		$f.l=346;
		v26=v0.pool;
		v9=v26.$c.$it[32](v26);
		;
		$f.l=347;
		v26=v0.pool;
		v10=v26.$c.$it[32](v26);
		;
		$f.l=349;
		v27=_2c(v6,v3);
		;
		$f.l=350;
		v27=_2c(v7,v5);
		;
		$f.l=352;
		v11=v0.m_invMassA;
		v12=v0.m_invMassB;
		$f.l=353;
		v13=v0.m_invIA;
		v14=v0.m_invIB;
		$f.l=355;
		v28=v0.m_localAnchorA;
		v28=_28(v8,v28);
		;
		v29=v0.m_localCenterA;
		v29=_2e(v28,v29);
		;
		_39(v6,v29,v9);
		$f.l=356;
		v29=v0.m_localAnchorB;
		v29=_28(v8,v29);
		;
		v28=v0.m_localCenterB;
		v29=_2e(v29,v28);
		;
		_39(v7,v29,v10);
		$f.l=359;
		v26=v0.pool;
		v15=v26.$c.$it[34](v26);
		;
		$f.l=360;
		v26=v0.pool;
		v16=v26.$c.$it[32](v26);
		;
		$f.l=361;
		v26=v0.pool;
		v17=v26.$c.$it[32](v26);
		;
		$f.l=363;
		v30=v15.ex;
		v31=v11 + v12;
		v32=v9.y;
		v33=v9.y;
		v33=v32 * v33;
		v33=v33 * v13;
		v33=v31 + v33;
		v32=v10.y;
		v31=v10.y;
		v32=v32 * v31;
		v32=v32 * v14;
		v33=v33 + v32;
		v30.x=v33;
		$f.l=364;
		v30=v15.ey;
		v33=v9.y;
		v33=-v33;
		v32=v9.x;
		v33=v33 * v32;
		v33=v33 * v13;
		v32=v10.y;
		v31=v10.x;
		v32=v32 * v31;
		v32=v32 * v14;
		v33=v33 - v32;
		v30.x=v33;
		$f.l=365;
		v30=v15.ez;
		v33=v9.y;
		v33=-v33;
		v33=v33 * v13;
		v32=v10.y;
		v32=v32 * v14;
		v33=v33 - v32;
		v30.x=v33;
		$f.l=366;
		v30=v15.ex;
		v34=v15.ey;
		v33=v34.x;
		v30.y=v33;
		$f.l=367;
		v34=v15.ey;
		v33=v11 + v12;
		v32=v9.x;
		v31=v9.x;
		v32=v32 * v31;
		v32=v32 * v13;
		v33=v33 + v32;
		v32=v10.x;
		v31=v10.x;
		v32=v32 * v31;
		v32=v32 * v14;
		v33=v33 + v32;
		v34.y=v33;
		$f.l=368;
		v34=v15.ez;
		v33=v9.x;
		v33=v33 * v13;
		v32=v10.x;
		v32=v32 * v14;
		v33=v33 + v32;
		v34.y=v33;
		$f.l=369;
		v34=v15.ex;
		v30=v15.ez;
		v33=v30.x;
		v34.z=v33;
		$f.l=370;
		v34=v15.ey;
		v30=v15.ez;
		v33=v30.y;
		v34.z=v33;
		$f.l=371;
		v34=v15.ez;
		v33=v13 + v14;
		v34.z=v33;
		$f.l=372;
		v33=v0.m_frequencyHz;
		v35=(v33 != v33 || 0.0 != 0.0) ? -1 : (v33 > 0.0) - (v33 < 0.0);
		if(v35<=0) {$b=199; break;}
		$f.l=373;
		v29=_28(v16,v4);
		;
		v29=_36(v29,v10);
		;
		v29=_2e(v29,v2);
		;
		v29=_2e(v29,v9);
		;
		$f.l=375;
		v18=_258(v16);
		;
		$f.l=376;
		v19=0.0;
		$f.l=378;
		_266(v15,v16,v17);
		$f.l=379;
		v29=_3a(v17);
		;
		$f.l=381;
		v29=v2;
		v33=v2.x;
		v32=v17.x;
		v32=v11 * v32;
		v33=v33 - v32;
		v2.x=v33;
		$f.l=382;
		v29=v2;
		v33=v2.y;
		v32=v17.y;
		v32=v11 * v32;
		v33=v33 - v32;
		v2.y=v33;
		$f.l=383;
		v33=_2f(v9,v17);
		;
		v33=v13 * v33;
		v3=v3 - v33;
		$f.l=385;
		v29=v4;
		v33=v4.x;
		v32=v17.x;
		v32=v12 * v32;
		v33=v33 + v32;
		v4.x=v33;
		$f.l=386;
		v29=v4;
		v33=v4.y;
		v32=v17.y;
		v32=v12 * v32;
		v33=v33 + v32;
		v4.y=v33;
		$f.l=387;
		v33=_2f(v10,v17);
		;
		v33=v14 * v33;
		v5=v5 + v33;
		{ $b=273; break; }
	case 199:
		$f.l=389;
		v29=_28(v16,v4);
		;
		v29=_36(v29,v10);
		;
		v29=_2e(v29,v2);
		;
		v29=_2e(v29,v9);
		;
		$f.l=390;
		v33=v5 - v3;
		v32=v0.m_referenceAngle;
		v20=v33 - v32;
		$f.l=392;
		v18=_258(v16);
		;
		$f.l=393;
		v19=_199(v20);
		;
		$f.l=395;
		v26=v0.pool;
		v21=v26.$c.$it[28](v26);
		;
		$f.l=396;
		v26=v0.pool;
		v22=v26.$c.$it[28](v26);
		;
		$f.l=397;
		v33=v16.x;
		v32=v16.y;
		v34=_25e(v21,v33,v32,v20);
		;
		$f.l=399;
		_264(v15,v21,v22);
		$f.l=400;
		v34=_263(v22);
		;
		$f.l=401;
		v33=v22.x;
		v32=v22.y;
		v29=_30(v17,v33,v32);
		;
		$f.l=403;
		v29=v2;
		v33=v2.x;
		v32=v17.x;
		v32=v11 * v32;
		v33=v33 - v32;
		v2.x=v33;
		$f.l=404;
		v29=v2;
		v33=v2.y;
		v32=v17.y;
		v32=v11 * v32;
		v33=v33 - v32;
		v2.y=v33;
		$f.l=405;
		v33=_2f(v9,v17);
		;
		v32=v22.z;
		v33=v33 + v32;
		v33=v13 * v33;
		v3=v3 - v33;
		$f.l=407;
		v29=v4;
		v33=v4.x;
		v32=v17.x;
		v32=v12 * v32;
		v33=v33 + v32;
		v4.x=v33;
		$f.l=408;
		v29=v4;
		v33=v4.y;
		v32=v17.y;
		v32=v12 * v32;
		v33=v33 + v32;
		v4.y=v33;
		$f.l=409;
		v33=_2f(v10,v17);
		;
		v32=v22.z;
		v33=v33 + v32;
		v33=v14 * v33;
		v5=v5 + v33;
		$f.l=410;
		v26=v0.pool;
		v26.$c.$it[36](v26,2);
	case 273:
		$f.l=414;
		v23=v1.positions;
		v24=v0.m_indexA;
		v25=v23[v24];
		v25.a=v3;
		$f.l=416;
		v23=v1.positions;
		v24=v0.m_indexB;
		v25=v23[v24];
		v25.a=v5;
		$f.l=418;
		v26=v0.pool;
		v26.$c.$it[43](v26,5);
		$f.l=419;
		v26=v0.pool;
		v26.$c.$it[30](v26,2);
		$f.l=420;
		v26=v0.pool;
		v26.$c.$it[41](v26,1);
		$f.l=422;
		v35=(v18 != v18 || 0.005 != 0.005) ? 1 : (v18 > 0.005) - (v18 < 0.005);
		if(v35>0) {$b=299; break;}
		v35=(v19 != v19 || 0.03490659 != 0.03490659) ? 1 : (v19 > 0.03490659) - (v19 < 0.03490659);
		if(v35>0) {$b=299; break;}
		v36=1;
		{ $b=300; break; }
	case 299:
		v36=0;
	case 300:
		return v36;
}
}
//org/jbox2d/collision/shapes/CircleShape:<init>
function _13f(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=a0;
v1=$g9;
_73(v0,v1);
$f.l=45;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.m_p=v2;
$f.l=46;
v0.m_radius=0.0;
$f.l=47;
return;
}
//org/jbox2d/collision/shapes/CircleShape:clone
function _2f5(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=50;
v0=a0;
v1=new org/jbox2d/collision/shapes/CircleShape;
_13f(v1);
v2=v1;
$f.l=51;
v3=v2.m_p;
v4=v0.m_p;
v5=v4.x;
v3.x=v5;
$f.l=52;
v4=v2.m_p;
v3=v0.m_p;
v5=v3.y;
v4.y=v5;
$f.l=53;
v5=v0.m_radius;
v2.m_radius=v5;
$f.l=54;
return v2;
}
//org/jbox2d/collision/shapes/CircleShape:getChildCount
function _2f6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=58;
v0=a0;
return 1;
}
//org/jbox2d/collision/shapes/CircleShape:computeAABB
function _2f7(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
$f.l=171;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=v2.q;
$f.l=172;
v5=v2.p;
$f.l=173;
v8=v4.c;
v9=v0.m_p;
v10=v9.x;
v10=v8 * v10;
v8=v4.s;
v9=v0.m_p;
v11=v9.y;
v11=v8 * v11;
v11=v10 - v11;
v10=v5.x;
v6=v11 + v10;
$f.l=174;
v11=v4.s;
v9=v0.m_p;
v10=v9.x;
v11=v11 * v10;
v10=v4.c;
v9=v0.m_p;
v8=v9.y;
v10=v10 * v8;
v11=v11 + v10;
v10=v5.y;
v7=v11 + v10;
$f.l=176;
v9=v1.lowerBound;
v11=v0.m_radius;
v11=v6 - v11;
v9.x=v11;
$f.l=177;
v9=v1.lowerBound;
v11=v0.m_radius;
v11=v7 - v11;
v9.y=v11;
$f.l=178;
v9=v1.upperBound;
v11=v0.m_radius;
v11=v6 + v11;
v9.x=v11;
$f.l=179;
v9=v1.upperBound;
v11=v0.m_radius;
v11=v7 + v11;
v9.y=v11;
$f.l=180;
return;
}
//org/jbox2d/collision/shapes/CircleShape:computeMass
function _2f8(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=184;
v0=a0;
v1=a1;
v2=a2;
v3=v2 * 3.1415927;
v4=v0.m_radius;
v4=v3 * v4;
v3=v0.m_radius;
v4=v4 * v3;
v1.mass=v4;
$f.l=185;
v5=v1.center;
v6=v0.m_p;
v4=v6.x;
v5.x=v4;
$f.l=186;
v6=v1.center;
v5=v0.m_p;
v4=v5.y;
v6.y=v4;
$f.l=190;
v4=v1.mass;
v3=v0.m_radius;
v3=0.5 * v3;
v7=v0.m_radius;
v7=v3 * v7;
v6=v0.m_p;
v3=v6.x;
v6=v0.m_p;
v8=v6.x;
v8=v3 * v8;
v6=v0.m_p;
v3=v6.y;
v6=v0.m_p;
v9=v6.y;
v9=v3 * v9;
v9=v8 + v9;
v9=v7 + v9;
v9=v4 * v9;
v1.I=v9;
$f.l=191;
return;
}
//org/jbox2d/collision/shapes/CircleShape:clone
function _2f9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=39;
v0=a0;
v1=v0.$c.$vt[17](v0);
;
return v1;
}
//org/jbox2d/collision/shapes/CircleShape:<clinit>
function _2fa(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=39;
		v0=vm.getClass(41);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g125=v1;
		return;
}
}
//java/lang/StringBuilder:<init>
function _9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
_0(v0);
$f.l=43;
v1=newArray(40,16);
v0.value=v1;
$f.l=44;
return;
}
//java/lang/StringBuilder:<init>
function _239(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=51;
		v0=a0;
		v1=a1;
		_0(v0);
		$f.l=52;
		if(v1>=0) {$b=11; break;}
		$f.l=53;
		v2=new java/lang/NegativeArraySizeException;
		v3=_2fb(v1);
		;
		_2fc(v2,v3);
		throw v2;
	case 11:
		$f.l=55;
		v4=newArray(40,v1);
		v0.value=v4;
		$f.l=56;
		return;
}
}
//java/lang/StringBuilder:enlargeBuffer
function _2fd(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=70;
		v0=a0;
		v1=a1;
		v4=v0.value;
		v5=v4.len;
		v5=(v5 >> 1)|0;
		v4=v0.value;
		v6=v4.len;
		v6=(v5 + v6)|0;
		v2=(v6 + 2)|0;
		$f.l=71;
		if(v1<=v2) {$b=14; break;}
		v6=v1;
		{ $b=15; break; }
	case 14:
		v6=v2;
	case 15:
		v3=newArray(40,v6);
		$f.l=72;
		v4=v0.value;
		v6=v0.count;
		_15(v4,0,v3,0,v6);
		$f.l=73;
		v0.value=v3;
		$f.l=75;
		return;
}
}
//java/lang/StringBuilder:appendNull
function _2fe(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=78;
		v0=a0;
		v2=v0.count;
		v1=(v2 + 4)|0;
		$f.l=79;
		v3=v0.value;
		v2=v3.len;
		if(v1<=v2) {$b=10; break;}
		$f.l=80;
		_2fd(v0,v1);
	case 10:
		$f.l=82;
		v3=v0.value;
		v4=v0;
		v2=v0.count;
		v5=(v2 + 1)|0;
		v0.count=v5;
		v3[v2]=110;
		$f.l=83;
		v3=v0.value;
		v4=v0;
		v5=v0.count;
		v2=(v5 + 1)|0;
		v0.count=v2;
		v3[v5]=117;
		$f.l=84;
		v3=v0.value;
		v4=v0;
		v5=v0.count;
		v2=(v5 + 1)|0;
		v0.count=v2;
		v3[v5]=108;
		$f.l=85;
		v3=v0.value;
		v4=v0;
		v5=v0.count;
		v2=(v5 + 1)|0;
		v0.count=v2;
		v3[v5]=108;
		$f.l=86;
		return;
}
}
//java/lang/StringBuilder:append
function _23b(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=105;
		v0=a0;
		v1=a1;
		v2=v0.count;
		v3=v0.value;
		v4=v3.len;
		if(v2!=v4) {$b=11; break;}
		$f.l=106;
		v4=v0.count;
		v4=(v4 + 1)|0;
		_2fd(v0,v4);
	case 11:
		$f.l=108;
		v3=v0.value;
		v5=v0;
		v2=v0.count;
		v4=(v2 + 1)|0;
		v0.count=v4;
		v3[v2]=v1;
		$f.l=109;
		return v0;
}
}
//java/lang/StringBuilder:append
function _2ff(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=151;
v0=a0;
v1=a1;
v2=_300(v1);
;
v3=_b(v0,v2);
;
return v3;
}
//java/lang/StringBuilder:append
function _c(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=159;
v0=a0;
v1=a1;
v2=_2fb(v1);
;
v3=_b(v0,v2);
;
return v3;
}
//java/lang/StringBuilder:append
function _23d(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=175;
		v0=a0;
		v1=a1;
		if(v1!=null) {$b=8; break;}
		$f.l=176;
		_2fe(v0);
		$f.l=177;
		return v0;
	case 8:
		$f.l=179;
		v2=v1.$c.$vt[0](v1);
		;
		v3=_b(v0,v2);
		;
		return v3;
}
}
//java/lang/StringBuilder:append
function _b(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=188;
		v0=a0;
		v1=a1;
		if(v1!=null) {$b=8; break;}
		$f.l=189;
		_2fe(v0);
		$f.l=190;
		return v0;
	case 8:
		$f.l=192;
		v2=_187(v1);
		;
		$f.l=193;
		v4=v0.count;
		v3=(v4 + v2)|0;
		$f.l=194;
		v5=v0.value;
		v4=v5.len;
		if(v3<=v4) {$b=19; break;}
		$f.l=195;
		_2fd(v0,v3);
	case 19:
		$f.l=197;
		v5=v0.value;
		v4=v0.count;
		_301(v1,0,v2,v5,v4);
		$f.l=198;
		v0.count=v3;
		$f.l=199;
		return v0;
}
}
//java/lang/StringBuilder:charAt
function _302(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=214;
v0=a0;
v1=a1;
v2=v0.value;
v3=v2[v1];
return v3;
}
//java/lang/StringBuilder:length
function _303(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=405;
v0=a0;
v1=v0.count;
return v1;
}
//java/lang/StringBuilder:setLength
function _304(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=508;
		v0=a0;
		v1=a1;
		v2=v0.value;
		v3=v2.len;
		if(v1<=v3) {$b=8; break;}
		$f.l=509;
		_2fd(v0,v1);
	case 8:
		$f.l=522;
		v0.count=v1;
		$f.l=523;
		return;
}
}
//java/lang/StringBuilder:toString
function _305(vm,a0){
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
		return $str70;
	case 6:
		$f.l=540;
		v2=new java/lang/String;
		v3=v0.value;
		v1=v0.count;
		_306(v2,v3,0,v1);
		return v2;
}
}
//java/lang/Thread:<init>
function _307(vm,a0){
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
function _308(vm,a0,a1){
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
function _309(vm,a0,a1,a2){
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
function _30a(vm,a0,a1){
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
function _30b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=66;
v0=a0;
v1=newArray(0,1);
v1[0]=v0;
v2=_6c($str4,v1);
;
return v2;
}
//java/lang/Thread:currentThread
function _30c(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=70;
v0=newArray(0,0);
v1=_30d($str98,v0);
;
return v1;
}
//java/lang/Thread:getName
function _30e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=74;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/Thread:getStackTrace
function _30f(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=78;
		v0=a0;
		v2=newArray(0,1);
		v2[0]=v0;
		v3=_16($str99,v2);
		;
		v1=vm.cast(v3,87);
		$f.l=79;
		if(v1!=null) {$b=10; break;}
		v4=newArray(88,0);
		return v4;
	case 10:
		$f.l=80;
		v4=_310(v1);
		;
		return v4;
}
}
//java/lang/Thread:getPriority
function _311(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.priority;
return v1;
}
//java/lang/Thread:interrupt
function _312(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=88;
v0=a0;
return;
}
//java/lang/Thread:isAlive
function _313(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=91;
v0=a0;
v1=v0.alive;
return v1;
}
//java/lang/Thread:run
function _314(vm,a0){
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
		v1.$c.$it[14](v1);
	case 6:
		$f.l=98;
		return;
}
}
//java/lang/Thread:setPriority
function _315(vm,a0,a1){
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
function _316(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=105;
v0=a0;
v1=newArray(0,1);
v2=_b3(v0);
;
v1[0]=v2;
_b4($str100,v1);
$f.l=106;
return;
}
//java/lang/Thread:start
function _317(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=109;
v0=a0;
v1=newArray(0,2);
v2=v0.handle;
v1[0]=v2;
v1[1]=v0;
_b4($str101,v1);
$f.l=110;
return;
}
//java/lang/Thread:toString
function _318(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=113;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str102);
;
v2=v0.name;
v1=_b(v1,v2);
;
v2=v1.$c.$vt[0](v1);
;
return v2;
}
//java/lang/Thread:yield
function _319(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=118;
		$f.trap=1;
		_316(1);
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
		if(vm.is(vm.exception,89)) {$b=7; continue;}
	}
throw error;
}
}
//java/lang/Thread:threadProc
function _31a(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=123;
		$f.trap=0;
		v0=a0;
		v1=$g126;
		v2=v1;
		monitor(v1,false);
		$f.l=124;
		$f.trap=1;
		v1=$g126;
		v5=v1.$c.$vt[29](v1,v0);
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
		v7=newArray(0,0);
		_b4($str103,v7);
		$f.l=127;
		v0.alive=1;
		$f.l=129;
		$f.trap=3;
		_314(v0);
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
		v7=newArray(0,0);
		_b4($str104,v7);
		$f.l=135;
		v1=$g126;
		v2=v1;
		monitor(v1,false);
		$f.l=136;
		$f.trap=4;
		v1=$g126;
		v5=v1.$c.$vt[25](v1,v0);
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
		if(vm.is(vm.exception,87)) {$b=15; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,87)) {$b=15; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,87)) {$b=33; continue;}
	}
	if($f.trap==4){
		if(vm.is(vm.exception,87)) {$b=54; continue;}
	}
	if($f.trap==5){
		if(vm.is(vm.exception,87)) {$b=54; continue;}
	}
throw error;
}
}
//java/lang/Thread:setDaemon
function _31b(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=143;
v0=a0;
v1=a1;
return;
}
//java/lang/Thread:<clinit>
function _31c(vm){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=new java/util/ArrayList;
_1cf(v0);
$g126=v0;
$f.l=45;
v0=$g126;
v1=_30c();
;
v2=v0.$c.$vt[29](v0,v1);
;
$f.l=46;
return;
}
//org/jbox2d/common/Sweep:toString
function _31d(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str105);
;
v3=v0.localCenter;
v1=_23d(v1,v3);
;
v1=_b(v1,$str106);
;
v2=v1.$c.$vt[0](v1);
;
$f.l=48;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,v2);
;
v1=_b(v1,$str107);
;
v3=v0.c0;
v1=_23d(v1,v3);
;
v1=_b(v1,$str108);
;
v3=v0.c;
v1=_23d(v1,v3);
;
v1=_b(v1,$str106);
;
v2=v1.$c.$vt[0](v1);
;
$f.l=49;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,v2);
;
v1=_b(v1,$str109);
;
v4=v0.a0;
v1=_2ff(v1,v4);
;
v1=_b(v1,$str110);
;
v4=v0.a;
v1=_2ff(v1,v4);
;
v1=_b(v1,$str106);
;
v2=v1.$c.$vt[0](v1);
;
$f.l=50;
return v2;
}
//org/jbox2d/common/Sweep:<init>
function _8a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
_0(v0);
$f.l=54;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.localCenter=v1;
$f.l=55;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.c0=v1;
$f.l=56;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.c=v1;
$f.l=57;
return;
}
//org/jbox2d/common/Sweep:normalize
function _227(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v2=v0.a0;
v2=v2 / 6.2831855;
v3=_28a(v2);
;
v2=v3;
v1=6.2831855 * v2;
$f.l=61;
v4=v0;
v2=v0.a0;
v2=v2 - v1;
v0.a0=v2;
$f.l=62;
v4=v0;
v2=v0.a;
v2=v2 - v1;
v0.a=v2;
$f.l=63;
return;
}
//org/jbox2d/common/Sweep:set
function _120(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=66;
v0=a0;
v1=a1;
v2=v0.localCenter;
v3=v1.localCenter;
v3=_28(v2,v3);
;
$f.l=67;
v3=v0.c0;
v2=v1.c0;
v3=_28(v3,v2);
;
$f.l=68;
v3=v0.c;
v2=v1.c;
v3=_28(v3,v2);
;
$f.l=69;
v4=v1.a0;
v0.a0=v4;
$f.l=70;
v4=v1.a;
v0.a=v4;
$f.l=71;
return v0;
}
//org/jbox2d/common/Sweep:getTransform
function _229(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=81;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g127;
		if(v3!=0) {$b=10; break;}
		if(v1!=null) {$b=10; break;}
		v5=new java/lang/AssertionError;
		_26(v5);
		throw v5;
	case 10:
		$f.l=92;
		v6=v1.p;
		v7=1.0 - v2;
		v8=v0.c0;
		v9=v8.x;
		v9=v7 * v9;
		v8=v0.c;
		v7=v8.x;
		v7=v2 * v7;
		v9=v9 + v7;
		v6.x=v9;
		$f.l=93;
		v8=v1.p;
		v9=1.0 - v2;
		v6=v0.c0;
		v7=v6.y;
		v9=v9 * v7;
		v6=v0.c;
		v7=v6.y;
		v7=v2 * v7;
		v9=v9 + v7;
		v8.y=v9;
		$f.l=96;
		v10=v1.q;
		v9=1.0 - v2;
		v7=v0.a0;
		v9=v9 * v7;
		v7=v0.a;
		v7=v2 * v7;
		v9=v9 + v7;
		v10=_2c(v10,v9);
		;
		$f.l=100;
		v4=v1.q;
		$f.l=101;
		v8=v1.p;
		v9=v8.x;
		v7=v4.c;
		v6=v0.localCenter;
		v11=v6.x;
		v11=v7 * v11;
		v7=v4.s;
		v6=v0.localCenter;
		v12=v6.y;
		v12=v7 * v12;
		v12=v11 - v12;
		v12=v9 - v12;
		v8.x=v12;
		$f.l=102;
		v8=v1.p;
		v12=v8.y;
		v11=v4.s;
		v6=v0.localCenter;
		v9=v6.x;
		v11=v11 * v9;
		v9=v4.c;
		v6=v0.localCenter;
		v7=v6.y;
		v9=v9 * v7;
		v11=v11 + v9;
		v12=v12 - v11;
		v8.y=v12;
		$f.l=103;
		return;
}
}
//org/jbox2d/common/Sweep:advance
function _11d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=118;
v0=a0;
v1=a1;
v2=v0.c0;
v3=1.0 - v1;
v4=v0.c0;
v5=v4.x;
v5=v3 * v5;
v4=v0.c;
v3=v4.x;
v3=v1 * v3;
v5=v5 + v3;
v2.x=v5;
$f.l=119;
v4=v0.c0;
v5=1.0 - v1;
v2=v0.c0;
v3=v2.y;
v5=v5 * v3;
v2=v0.c;
v3=v2.y;
v3=v1 * v3;
v5=v5 + v3;
v4.y=v5;
$f.l=120;
v5=1.0 - v1;
v3=v0.a0;
v5=v5 * v3;
v3=v0.a;
v3=v1 * v3;
v5=v5 + v3;
v0.a0=v5;
$f.l=121;
return;
}
//org/jbox2d/common/Sweep:<clinit>
function _31e(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=33;
		v0=vm.getClass(90);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g127=v1;
		return;
}
}
//java/util/NumberComparator$Z:<init>
function _136(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=57;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$Z:compare
function _31f(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=60;
		v0=a0;
		v1=a1;
		v2=a2;
		v5=_c1(v1);
		;
		if(v5==0) {$b=8; break;}
		v6=1;
		{ $b=9; break; }
	case 8:
		v6=0;
	case 9:
		v3=v6;
		$f.l=61;
		v5=_c1(v2);
		;
		if(v5==0) {$b=15; break;}
		v6=1;
		{ $b=16; break; }
	case 15:
		v6=0;
	case 16:
		v4=v6;
		$f.l=62;
		v7=(v3 - v4)|0;
		return v7;
}
}
//java/util/NumberComparator$Z:compare
function _320(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=57;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,14);
v4=vm.cast(v2,14);
v5=_31f(v0,v3,v4);
;
return v5;
}
//java/util/NumberComparator$F:<init>
function _130(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$F:compare
function _321(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=37;
		v0=a0;
		v1=a1;
		v2=a2;
		v4=v1.$c.$vt[11](v1);
		;
		v5=v2.$c.$vt[11](v2);
		;
		v3=v4 - v5;
		$f.l=38;
		v6=(v3 != v3 || 0.0 != 0.0) ? -1 : (v3 > 0.0) - (v3 < 0.0);
		if(v6!=0) {$b=12; break;}
		v6=0;
		{ $b=17; break; }
	case 12:
		v6=(v3 != v3 || 0.0 != 0.0) ? 1 : (v3 > 0.0) - (v3 < 0.0);
		if(v6>=0) {$b=16; break;}
		v6=-1;
		{ $b=17; break; }
	case 16:
		v6=1;
	case 17:
		return v6;
}
}
//java/util/NumberComparator$F:compare
function _322(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,33);
v4=vm.cast(v2,33);
v5=_321(v0,v3,v4);
;
return v5;
}
//java/util/NumberComparator$I:<init>
function _131(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=20;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$I:compare
function _323(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=23;
v0=a0;
v1=a1;
v2=a2;
v3=v1.$c.$vt[13](v1);
;
v4=v2.$c.$vt[13](v2);
;
v4=(v3 - v4)|0;
return v4;
}
//java/util/NumberComparator$I:compare
function _324(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=20;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,34);
v4=vm.cast(v2,34);
v5=_323(v0,v3,v4);
;
return v5;
}
//java/util/NumberComparator$L:<init>
function _135(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=66;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$L:compare
function _325(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=69;
v0=a0;
v1=a1;
v2=a2;
v3=v1.$c.$vt[10](v1);
;
v4=v2.$c.$vt[10](v2);
;
v4=(v3 - v4)|0;
v5=v4|0;
return v5;
}
//java/util/NumberComparator$L:compare
function _326(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=66;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,35);
v4=vm.cast(v2,35);
v5=_325(v0,v3,v4);
;
return v5;
}
//java/util/AbstractMap:<init>
function _327(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=272;
v0=a0;
_0(v0);
$f.l=273;
return;
}
//java/util/AbstractMap:containsKey
function _328(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=296;
		v0=a0;
		v1=a1;
		v3=v0.$c.$vt[47](v0);
		;
		v2=v3.$c.$it[2](v3);
		;
		$f.l=297;
		if(v1==null) {$b=18; break;}
	case 7:
		$f.l=298;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=28; break;}
		$f.l=299;
		v5=v2.$c.$it[6](v2);
		;
		v6=vm.cast(v5,91);
		v5=v6.$c.$it[17](v6);
		;
		v4=v1.$c.$vt[1](v1,v5);
		;
		if(v4==0) {$b=7; break;}
		$f.l=300;
		return 1;
	case 18:
		$f.l=304;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=28; break;}
		$f.l=305;
		v5=v2.$c.$it[6](v2);
		;
		v6=vm.cast(v5,91);
		v5=v6.$c.$it[17](v6);
		;
		if(v5!=null) {$b=18; break;}
		$f.l=306;
		return 1;
	case 28:
		$f.l=310;
		return 0;
}
}
//java/util/AbstractMap:equals
function _329(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=361;
		$f.trap=0;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=9; break;}
		$f.l=362;
		$f.trap=0;
		return 1;
	case 9:
		$f.l=364;
		v8=vm.is(v1,92);
		if(v8==0) {$b=81; break;}
		$f.l=365;
		v2=vm.cast(v1,92);
		$f.l=366;
		v9=v0.$c.$vt[46](v0);
		;
		v10=v2.$c.$it[10](v2);
		;
		if(v9==v10) {$b=21; break;}
		$f.l=367;
		$f.trap=0;
		return 0;
	case 21:
		$f.l=371;
		$f.trap=1;
		v11=v0.$c.$vt[47](v0);
		;
		v3=v11.$c.$it[2](v11);
		;
	case 25:
		$f.l=372;
		$f.trap=1;
		v8=v3.$c.$it[9](v3);
		;
		if(v8==0) {$b=61; break;}
		$f.l=373;
		v12=v3.$c.$it[6](v3);
		;
		v4=vm.cast(v12,91);
		$f.l=374;
		v5=v4.$c.$it[17](v4);
		;
		$f.l=375;
		v6=v4.$c.$it[18](v4);
		;
		$f.l=376;
		v7=v2.$c.$it[11](v2,v5);
		;
		$f.l=377;
		if(v6!=null) {$b=49; break;}
		$f.l=378;
		if(v7!=null) {$b=44; break;}
		v8=v2.$c.$it[12](v2,v5);
		;
		if(v8!=0) {$b=58; break;}
	case 44:
		$f.l=379;
		v8=0;
		$f.trap=0;
		$f.trap=0;
		return v8;
	case 49:
		$f.l=381;
		$f.trap=2;
		v8=v6.$c.$vt[1](v6,v7);
		;
		if(v8!=0) {$b=58; break;}
		$f.l=382;
		v8=0;
		$f.trap=0;
		$f.trap=0;
		return v8;
	case 58:
		$f.l=384;
		$f.trap=3;
		{ $b=25; break; }
	case 61:
		$f.l=389;
		$f.trap=0;
		{ $b=78; break; }
	case 64:
		$f.l=385;
		$f.trap=0;
		v13=__caught;
		v14=v13;
		$f.l=386;
		$f.trap=0;
		return 0;
	case 71:
		$f.l=387;
		$f.trap=0;
		v15=__caught;
		v16=v15;
		$f.l=388;
		$f.trap=0;
		return 0;
	case 78:
		$f.l=390;
		$f.trap=0;
		return 1;
	case 81:
		$f.l=392;
		$f.trap=0;
		return 0;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,93)) {$b=64; continue;}
		if(vm.is(vm.exception,94)) {$b=71; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,93)) {$b=64; continue;}
		if(vm.is(vm.exception,94)) {$b=71; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,93)) {$b=64; continue;}
		if(vm.is(vm.exception,94)) {$b=71; continue;}
	}
throw error;
}
}
//java/util/AbstractMap:get
function _32a(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=404;
		v0=a0;
		v1=a1;
		v4=v0.$c.$vt[47](v0);
		;
		v2=v4.$c.$it[2](v4);
		;
		$f.l=405;
		if(v1==null) {$b=22; break;}
	case 7:
		$f.l=406;
		v5=v2.$c.$it[9](v2);
		;
		if(v5==0) {$b=36; break;}
		$f.l=407;
		v6=v2.$c.$it[6](v2);
		;
		v3=vm.cast(v6,91);
		$f.l=408;
		v6=v3.$c.$it[17](v3);
		;
		v5=v1.$c.$vt[1](v1,v6);
		;
		if(v5==0) {$b=20; break;}
		$f.l=409;
		v6=v3.$c.$it[18](v3);
		;
		return v6;
	case 20:
		$f.l=411;
		{ $b=7; break; }
	case 22:
		$f.l=413;
		v5=v2.$c.$it[9](v2);
		;
		if(v5==0) {$b=36; break;}
		$f.l=414;
		v6=v2.$c.$it[6](v2);
		;
		v3=vm.cast(v6,91);
		$f.l=415;
		v6=v3.$c.$it[17](v3);
		;
		if(v6!=null) {$b=34; break;}
		$f.l=416;
		v6=v3.$c.$it[18](v3);
		;
		return v6;
	case 34:
		$f.l=418;
		{ $b=22; break; }
	case 36:
		$f.l=420;
		return null;
}
}
//java/util/AbstractMap:hashCode
function _32b(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=432;
		v0=a0;
		v1=0;
		$f.l=433;
		v3=v0.$c.$vt[47](v0);
		;
		v2=v3.$c.$it[2](v3);
		;
	case 6:
		$f.l=434;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=15; break;}
		$f.l=435;
		v5=v2.$c.$it[6](v2);
		;
		v6=vm.cast(v5,91);
		v7=v6.$c.$it[19](v6);
		;
		v1=(v1 + v7)|0;
		{ $b=6; break; }
	case 15:
		$f.l=437;
		return v1;
}
}
//java/util/AbstractMap:isEmpty
function _32c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=448;
		v0=a0;
		v1=v0.$c.$vt[46](v0);
		;
		if(v1!=0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/util/AbstractMap:put
function _32d(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=518;
v0=a0;
v1=a1;
v2=a2;
v3=new java/lang/UnsupportedOperationException;
_17e(v3);
throw v3;
}
//java/util/AbstractMap:size
function _32e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=583;
v0=a0;
v1=v0.$c.$vt[47](v0);
;
v2=v1.$c.$it[3](v1);
;
return v2;
}
//java/util/AbstractMap:toString
function _32f(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=593;
		v0=a0;
		v6=v0.$c.$vt[45](v0);
		;
		if(v6==0) {$b=6; break;}
		$f.l=594;
		return $str111;
	case 6:
		$f.l=597;
		v7=new java/lang/StringBuffer;
		v8=v0.$c.$vt[46](v0);
		;
		v8=(v8 * 28)|0;
		_238(v7,v8);
		v1=v7;
		$f.l=598;
		v7=_23a(v1,123);
		;
		$f.l=599;
		v9=v0.$c.$vt[47](v0);
		;
		v2=v9.$c.$it[2](v9);
		;
	case 17:
		$f.l=600;
		v6=v2.$c.$it[9](v2);
		;
		if(v6==0) {$b=50; break;}
		$f.l=601;
		v10=v2.$c.$it[6](v2);
		;
		v3=vm.cast(v10,91);
		$f.l=602;
		v4=v3.$c.$it[17](v3);
		;
		$f.l=603;
		if(v4==v0) {$b=30; break;}
		$f.l=604;
		v7=_23c(v1,v4);
		;
		{ $b=32; break; }
	case 30:
		$f.l=606;
		v7=_23e(v1,$str112);
		;
	case 32:
		$f.l=608;
		v7=_23a(v1,61);
		;
		$f.l=609;
		v5=v3.$c.$it[18](v3);
		;
		$f.l=610;
		if(v5==v0) {$b=41; break;}
		$f.l=611;
		v7=_23c(v1,v5);
		;
		{ $b=43; break; }
	case 41:
		$f.l=613;
		v7=_23e(v1,$str112);
		;
	case 43:
		$f.l=615;
		v6=v2.$c.$it[9](v2);
		;
		if(v6==0) {$b=48; break;}
		$f.l=616;
		v7=_23e(v1,$str113);
		;
	case 48:
		$f.l=618;
		{ $b=17; break; }
	case 50:
		$f.l=619;
		v7=_23a(v1,125);
		;
		$f.l=620;
		v11=v1.$c.$vt[0](v1);
		;
		return v11;
}
}
//java/util/NumberComparator$S:<init>
function _132(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$S:compare
function _330(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=a1;
v2=a2;
v3=v1.$c.$vt[9](v1);
;
v4=v2.$c.$vt[9](v2);
;
v5=(v3 - v4)|0;
return v5;
}
//java/util/NumberComparator$S:compare
function _331(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,36);
v4=vm.cast(v2,36);
v5=_330(v0,v3,v4);
;
return v5;
}
//java/util/NumberComparator$B:<init>
function _133(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=50;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$B:compare
function _332(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=a1;
v2=a2;
v3=v1.$c.$vt[12](v1);
;
v4=v2.$c.$vt[12](v2);
;
v5=(v3 - v4)|0;
return v5;
}
//java/util/NumberComparator$B:compare
function _333(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=50;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,37);
v4=vm.cast(v2,37);
v5=_332(v0,v3,v4);
;
return v5;
}
//java/util/NumberComparator$D:<init>
function _12f(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$D:compare
function _334(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=29;
		v0=a0;
		v1=a1;
		v2=a2;
		v4=v1.$c.$vt[14](v1);
		;
		v5=v2.$c.$vt[14](v2);
		;
		v3=v4 - v5;
		$f.l=30;
		v6=(v3 != v3 || 0.0 != 0.0) ? -1 : (v3 > 0.0) - (v3 < 0.0);
		if(v6!=0) {$b=12; break;}
		v6=0;
		{ $b=17; break; }
	case 12:
		v6=(v3 != v3 || 0.0 != 0.0) ? 1 : (v3 > 0.0) - (v3 < 0.0);
		if(v6>=0) {$b=16; break;}
		v6=-1;
		{ $b=17; break; }
	case 16:
		v6=1;
	case 17:
		return v6;
}
}
//java/util/NumberComparator$D:compare
function _335(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,32);
v4=vm.cast(v2,32);
v5=_334(v0,v3,v4);
;
return v5;
}
//java/util/NumberComparator$C:<init>
function _134(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=73;
v0=a0;
_0(v0);
return;
}
//java/util/NumberComparator$C:compare
function _336(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=a1;
v2=a2;
v3=_c2(v1);
;
v4=_c2(v2);
;
v5=(v3 - v4)|0;
return v5;
}
//java/util/NumberComparator$C:compare
function _337(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=73;
v0=a0;
v1=a1;
v2=a2;
v3=vm.cast(v1,15);
v4=vm.cast(v2,15);
v5=_336(v0,v3,v4);
;
return v5;
}
//java/io/OutputStream:<init>
function _338(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=a0;
_0(v0);
$f.l=25;
return;
}
//java/io/OutputStream:flush
function _339(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
return;
}
//java/io/OutputStream:write
function _33a(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=46;
v0=a0;
v1=a1;
v2=v1.len;
v0.$c.$vt[27](v0,v1,0,v2);
$f.l=47;
return;
}
//java/io/OutputStream:write
function _33b(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=56;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=v2;
	case 6:
		v5=(v3 + v2)|0;
		if(v4>=v5) {$b=14; break;}
		$f.l=57;
		v6=v1[v4];
		v0.$c.$vt[22](v0,v6);
		$f.l=56;
		v4=(v4 + 1)|0;
		{ $b=6; break; }
	case 14:
		$f.l=59;
		return;
}
}
//java/util/MapEntry:<init>
function _33c(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=37;
v0.key=v1;
$f.l=38;
v0.value=v2;
$f.l=39;
return;
}
//java/util/MapEntry:equals
function _33d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=43;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=6; break;}
		$f.l=44;
		return 1;
	case 6:
		$f.l=46;
		v3=vm.is(v1,91);
		if(v3==0) {$b=39; break;}
		$f.l=47;
		v2=vm.cast(v1,91);
		$f.l=48;
		v4=v0.key;
		if(v4!=null) {$b=17; break;}
		v4=v2.$c.$it[17](v2);
		;
		if(v4!=null) {$b=36; break;}
		{ $b=23; break; }
	case 17:
		v4=v0.key;
		$f.l=49;
		v5=v2.$c.$it[17](v2);
		;
		$f.l=48;
		v3=v4.$c.$vt[1](v4,v5);
		;
		if(v3==0) {$b=36; break;}
	case 23:
		v5=v0.value;
		if(v5!=null) {$b=29; break;}
		$f.l=50;
		v5=v2.$c.$it[18](v2);
		;
		if(v5!=null) {$b=36; break;}
		{ $b=34; break; }
	case 29:
		v5=v0.value;
		$f.l=51;
		v4=v2.$c.$it[18](v2);
		;
		v3=v5.$c.$vt[1](v5,v4);
		;
		if(v3==0) {$b=36; break;}
	case 34:
		v3=1;
		{ $b=37; break; }
	case 36:
		v3=0;
	case 37:
		$f.l=48;
		return v3;
	case 39:
		$f.l=53;
		return 0;
}
}
//java/util/MapEntry:getKey
function _33e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=57;
v0=a0;
v1=v0.key;
return v1;
}
//java/util/MapEntry:getValue
function _33f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=61;
v0=a0;
v1=v0.value;
return v1;
}
//java/util/MapEntry:hashCode
function _340(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=66;
		v0=a0;
		v1=v0.key;
		if(v1!=null) {$b=6; break;}
		v2=0;
		{ $b=8; break; }
	case 6:
		v1=v0.key;
		v2=v1.$c.$vt[2](v1);
		;
	case 8:
		v1=v0.value;
		if(v1!=null) {$b=12; break;}
		v3=0;
		{ $b=15; break; }
	case 12:
		v1=v0.value;
		$f.l=67;
		v3=v1.$c.$vt[2](v1);
		;
	case 15:
		v3=(v2 ^ v3)|0;
		$f.l=66;
		return v3;
}
}
//java/util/MapEntry:toString
function _341(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=78;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v2=v0.key;
v1=_23d(v1,v2);
;
v1=_b(v1,$str114);
;
v2=v0.value;
v1=_23d(v1,v2);
;
v3=v1.$c.$vt[0](v1);
;
return v3;
}
//org/jbox2d/common/Vec3:<init>
function _25b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
_0(v0);
$f.l=37;
v1=0.0;
v0.z=v1;
v1=v1;
v0.y=v1;
v0.x=v1;
$f.l=38;
return;
}
//org/jbox2d/common/Vec3:<init>
function _342(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
_0(v0);
$f.l=41;
v0.x=v1;
$f.l=42;
v0.y=v2;
$f.l=43;
v0.z=v3;
$f.l=44;
return;
}
//org/jbox2d/common/Vec3:<init>
function _343(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=46;
v0=a0;
v1=a1;
_0(v0);
$f.l=47;
v2=v1.x;
v0.x=v2;
$f.l=48;
v2=v1.y;
v0.y=v2;
$f.l=49;
v2=v1.z;
v0.z=v2;
$f.l=50;
return;
}
//org/jbox2d/common/Vec3:set
function _262(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=a1;
v2=v1.x;
v0.x=v2;
$f.l=54;
v2=v1.y;
v0.y=v2;
$f.l=55;
v2=v1.z;
v0.z=v2;
$f.l=56;
return v0;
}
//org/jbox2d/common/Vec3:set
function _25e(vm,a0,a1,a2,a3){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v0.x=v1;
$f.l=61;
v0.y=v2;
$f.l=62;
v0.z=v3;
$f.l=63;
return v0;
}
//org/jbox2d/common/Vec3:addLocal
function _265(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=67;
v0=a0;
v1=a1;
v2=v0;
v3=v0.x;
v4=v1.x;
v4=v3 + v4;
v0.x=v4;
$f.l=68;
v2=v0;
v4=v0.y;
v3=v1.y;
v4=v4 + v3;
v0.y=v4;
$f.l=69;
v2=v0;
v4=v0.z;
v3=v1.z;
v4=v4 + v3;
v0.z=v4;
$f.l=70;
return v0;
}
//org/jbox2d/common/Vec3:subLocal
function _268(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=78;
v0=a0;
v1=a1;
v2=v0;
v3=v0.x;
v4=v1.x;
v4=v3 - v4;
v0.x=v4;
$f.l=79;
v2=v0;
v4=v0.y;
v3=v1.y;
v4=v4 - v3;
v0.y=v4;
$f.l=80;
v2=v0;
v4=v0.z;
v3=v1.z;
v4=v4 - v3;
v0.z=v4;
$f.l=81;
return v0;
}
//org/jbox2d/common/Vec3:mulLocal
function _25f(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=89;
v0=a0;
v1=a1;
v2=v0;
v3=v0.x;
v3=v3 * v1;
v0.x=v3;
$f.l=90;
v2=v0;
v3=v0.y;
v3=v3 * v1;
v0.y=v3;
$f.l=91;
v2=v0;
v3=v0.z;
v3=v3 * v1;
v0.z=v3;
$f.l=92;
return v0;
}
//org/jbox2d/common/Vec3:negateLocal
function _263(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=v0.x;
v1=-v1;
v0.x=v1;
$f.l=105;
v1=v0.y;
v1=-v1;
v0.y=v1;
$f.l=106;
v1=v0.z;
v1=-v1;
v0.z=v1;
$f.l=107;
return v0;
}
//org/jbox2d/common/Vec3:setZero
function _260(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=111;
v0=a0;
v0.x=0.0;
$f.l=112;
v0.y=0.0;
$f.l=113;
v0.z=0.0;
$f.l=114;
return;
}
//org/jbox2d/common/Vec3:clone
function _344(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=117;
v0=a0;
v1=new org/jbox2d/common/Vec3;
_343(v1,v0);
return v1;
}
//org/jbox2d/common/Vec3:toString
function _345(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=121;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str115);
;
v2=v0.x;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str116);
;
v2=v0.y;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str116);
;
v2=v0.z;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str117);
;
v3=v1.$c.$vt[0](v1);
;
return v3;
}
//org/jbox2d/common/Vec3:hashCode
function _346(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=126;
v0=a0;
v1=31;
$f.l=127;
v2=1;
$f.l=128;
v3=(31 * v2)|0;
v4=v0.x;
v5=_190(v4);
;
v2=(v3 + v5)|0;
$f.l=129;
v5=(31 * v2)|0;
v4=v0.y;
v3=_190(v4);
;
v2=(v5 + v3)|0;
$f.l=130;
v5=(31 * v2)|0;
v4=v0.z;
v3=_190(v4);
;
v2=(v5 + v3)|0;
$f.l=131;
return v2;
}
//org/jbox2d/common/Vec3:equals
function _347(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=136;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=5; break;}
		return 1;
	case 5:
		$f.l=137;
		if(v1!=null) {$b=8; break;}
		return 0;
	case 8:
		$f.l=138;
		v3=_2(v0);
		;
		v4=_2(v1);
		;
		if(v3==v4) {$b=13; break;}
		return 0;
	case 13:
		$f.l=139;
		v2=vm.cast(v1,95);
		$f.l=140;
		v5=v0.x;
		v6=_190(v5);
		;
		v5=v2.x;
		v7=_190(v5);
		;
		if(v6==v7) {$b=22; break;}
		return 0;
	case 22:
		$f.l=141;
		v5=v0.y;
		v7=_190(v5);
		;
		v5=v2.y;
		v6=_190(v5);
		;
		if(v7==v6) {$b=29; break;}
		return 0;
	case 29:
		$f.l=142;
		v5=v0.z;
		v7=_190(v5);
		;
		v5=v2.z;
		v6=_190(v5);
		;
		if(v7==v6) {$b=36; break;}
		return 0;
	case 36:
		$f.l=143;
		return 1;
}
}
//org/jbox2d/common/Vec3:dot
function _348(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=147;
v0=a0;
v1=a1;
v2=v0.x;
v3=v1.x;
v3=v2 * v3;
v2=v0.y;
v4=v1.y;
v4=v2 * v4;
v4=v3 + v4;
v3=v0.z;
v2=v1.z;
v3=v3 * v2;
v4=v4 + v3;
return v4;
}
//org/jbox2d/common/Vec3:crossToOutUnsafe
function _349(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=163;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g128;
		if(v3!=0) {$b=10; break;}
		if(v2!=v1) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=164;
		v3=$g128;
		if(v3!=0) {$b=17; break;}
		if(v2!=v0) {$b=17; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 17:
		$f.l=165;
		v5=v0.y;
		v6=v1.z;
		v6=v5 * v6;
		v5=v0.z;
		v7=v1.y;
		v7=v5 * v7;
		v7=v6 - v7;
		v2.x=v7;
		$f.l=166;
		v7=v0.z;
		v6=v1.x;
		v7=v7 * v6;
		v6=v0.x;
		v5=v1.z;
		v6=v6 * v5;
		v7=v7 - v6;
		v2.y=v7;
		$f.l=167;
		v7=v0.x;
		v6=v1.y;
		v7=v7 * v6;
		v6=v0.y;
		v5=v1.x;
		v6=v6 * v5;
		v7=v7 - v6;
		v2.z=v7;
		$f.l=168;
		return;
}
}
//org/jbox2d/common/Vec3:clone
function _34a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=_344(v0);
;
return v1;
}
//org/jbox2d/common/Vec3:<clinit>
function _34b(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=31;
		v0=vm.getClass(95);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g128=v1;
		return;
}
}
//org/jbox2d/common/Vec2:<init>
function _1a(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
_138(v0,0.0,0.0);
$f.l=38;
return;
}
//org/jbox2d/common/Vec2:<init>
function _138(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=41;
v0.x=v1;
$f.l=42;
v0.y=v2;
$f.l=43;
return;
}
//org/jbox2d/common/Vec2:<init>
function _25a(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=46;
v0=a0;
v1=a1;
v2=v1.x;
v3=v1.y;
_138(v0,v2,v3);
$f.l=47;
return;
}
//org/jbox2d/common/Vec2:setZero
function _29(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
v0.x=0.0;
$f.l=52;
v0.y=0.0;
$f.l=53;
return;
}
//org/jbox2d/common/Vec2:set
function _30(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=57;
v0=a0;
v1=a1;
v2=a2;
v0.x=v1;
$f.l=58;
v0.y=v2;
$f.l=59;
return v0;
}
//org/jbox2d/common/Vec2:set
function _28(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=64;
v0=a0;
v1=a1;
v2=v1.x;
v0.x=v2;
$f.l=65;
v2=v1.y;
v0.y=v2;
$f.l=66;
return v0;
}
//org/jbox2d/common/Vec2:sub
function _26c(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=78;
v0=a0;
v1=a1;
v2=new org/jbox2d/common/Vec2;
v3=v0.x;
v4=v1.x;
v4=v3 - v4;
v3=v0.y;
v5=v1.y;
v5=v3 - v5;
_138(v2,v4,v5);
return v2;
}
//org/jbox2d/common/Vec2:negateLocal
function _3a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=93;
v0=a0;
v1=v0.x;
v1=-v1;
v0.x=v1;
$f.l=94;
v1=v0.y;
v1=-v1;
v0.y=v1;
$f.l=95;
return v0;
}
//org/jbox2d/common/Vec2:addLocal
function _36(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=100;
v0=a0;
v1=a1;
v2=v0;
v3=v0.x;
v4=v1.x;
v4=v3 + v4;
v0.x=v4;
$f.l=101;
v2=v0;
v4=v0.y;
v3=v1.y;
v4=v4 + v3;
v0.y=v4;
$f.l=102;
return v0;
}
//org/jbox2d/common/Vec2:addLocal
function _267(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=107;
v0=a0;
v1=a1;
v2=a2;
v3=v0;
v4=v0.x;
v4=v4 + v1;
v0.x=v4;
$f.l=108;
v3=v0;
v4=v0.y;
v4=v4 + v2;
v0.y=v4;
$f.l=109;
return v0;
}
//org/jbox2d/common/Vec2:subLocal
function _2e(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=114;
v0=a0;
v1=a1;
v2=v0;
v3=v0.x;
v4=v1.x;
v4=v3 - v4;
v0.x=v4;
$f.l=115;
v2=v0;
v4=v0.y;
v3=v1.y;
v4=v4 - v3;
v0.y=v4;
$f.l=116;
return v0;
}
//org/jbox2d/common/Vec2:mulLocal
function _35(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=121;
v0=a0;
v1=a1;
v2=v0;
v3=v0.x;
v3=v3 * v1;
v0.x=v3;
$f.l=122;
v2=v0;
v3=v0.y;
v3=v3 * v1;
v0.y=v3;
$f.l=123;
return v0;
}
//org/jbox2d/common/Vec2:length
function _258(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=139;
v0=a0;
v1=v0.x;
v2=v0.x;
v2=v1 * v2;
v1=v0.y;
v3=v0.y;
v3=v1 * v3;
v3=v2 + v3;
v3=_198(v3);
;
return v3;
}
//org/jbox2d/common/Vec2:lengthSquared
function _22f(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=144;
v0=a0;
v1=v0.x;
v2=v0.x;
v2=v1 * v2;
v1=v0.y;
v3=v0.y;
v3=v1 * v3;
v3=v2 + v3;
return v3;
}
//org/jbox2d/common/Vec2:normalize
function _53(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=149;
		v0=a0;
		v1=_258(v0);
		;
		$f.l=150;
		v3=(v1 != v1 || 1.1920929E-7 != 1.1920929E-7) ? 1 : (v1 > 1.1920929E-7) - (v1 < 1.1920929E-7);
		if(v3>=0) {$b=8; break;}
		$f.l=151;
		return 0.0;
	case 8:
		$f.l=154;
		v2=1.0 / v1;
		$f.l=155;
		v4=v0;
		v5=v0.x;
		v5=v5 * v2;
		v0.x=v5;
		$f.l=156;
		v4=v0;
		v5=v0.y;
		v5=v5 * v2;
		v0.y=v5;
		$f.l=157;
		return v1;
}
}
//org/jbox2d/common/Vec2:isValid
function _1db(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=162;
		v0=a0;
		v1=v0.x;
		v2=_34c(v1);
		;
		if(v2!=0) {$b=16; break;}
		v1=v0.x;
		v2=_34d(v1);
		;
		if(v2!=0) {$b=16; break;}
		v1=v0.y;
		v2=_34c(v1);
		;
		if(v2!=0) {$b=16; break;}
		v1=v0.y;
		v2=_34d(v1);
		;
		if(v2!=0) {$b=16; break;}
		v2=1;
		{ $b=17; break; }
	case 16:
		v2=0;
	case 17:
		return v2;
}
}
//org/jbox2d/common/Vec2:clone
function _70(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=178;
v0=a0;
v1=new org/jbox2d/common/Vec2;
v2=v0.x;
v3=v0.y;
_138(v1,v2,v3);
return v1;
}
//org/jbox2d/common/Vec2:toString
function _34e(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=183;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str115);
;
v2=v0.x;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str116);
;
v2=v0.y;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str117);
;
v3=v1.$c.$vt[0](v1);
;
return v3;
}
//org/jbox2d/common/Vec2:dot
function _4d(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=200;
v0=a0;
v1=a1;
v2=v0.x;
v3=v1.x;
v3=v2 * v3;
v2=v0.y;
v4=v1.y;
v4=v2 * v4;
v4=v3 + v4;
return v4;
}
//org/jbox2d/common/Vec2:cross
function _2f(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=204;
v0=a0;
v1=a1;
v2=v0.x;
v3=v1.y;
v3=v2 * v3;
v2=v0.y;
v4=v1.x;
v4=v2 * v4;
v4=v3 - v4;
return v4;
}
//org/jbox2d/common/Vec2:crossToOutUnsafe
function _1fe(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=218;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g129;
		if(v3!=0) {$b=10; break;}
		if(v2!=v0) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=219;
		v5=v0.y;
		v5=v1 * v5;
		v2.x=v5;
		$f.l=220;
		v5=-v1;
		v6=v0.x;
		v6=v5 * v6;
		v2.y=v6;
		$f.l=221;
		return;
}
}
//org/jbox2d/common/Vec2:crossToOutUnsafe
function _1df(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=234;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g129;
		if(v3!=0) {$b=10; break;}
		if(v2!=v1) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=235;
		v5=-v0;
		v6=v1.y;
		v6=v5 * v6;
		v2.x=v6;
		$f.l=236;
		v6=v1.x;
		v6=v0 * v6;
		v2.y=v6;
		$f.l=237;
		return;
}
}
//org/jbox2d/common/Vec2:hashCode
function _34f(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=267;
v0=a0;
v1=31;
$f.l=268;
v2=1;
$f.l=269;
v3=(31 * v2)|0;
v4=v0.x;
v5=_190(v4);
;
v2=(v3 + v5)|0;
$f.l=270;
v5=(31 * v2)|0;
v4=v0.y;
v3=_190(v4);
;
v2=(v5 + v3)|0;
$f.l=271;
return v2;
}
//org/jbox2d/common/Vec2:equals
function _350(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=279;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=5; break;}
		return 1;
	case 5:
		$f.l=280;
		if(v1!=null) {$b=8; break;}
		return 0;
	case 8:
		$f.l=281;
		v3=_2(v0);
		;
		v4=_2(v1);
		;
		if(v3==v4) {$b=13; break;}
		return 0;
	case 13:
		$f.l=282;
		v2=vm.cast(v1,96);
		$f.l=283;
		v5=v0.x;
		v6=_190(v5);
		;
		v5=v2.x;
		v7=_190(v5);
		;
		if(v6==v7) {$b=22; break;}
		return 0;
	case 22:
		$f.l=284;
		v5=v0.y;
		v7=_190(v5);
		;
		v5=v2.y;
		v6=_190(v5);
		;
		if(v7==v6) {$b=29; break;}
		return 0;
	case 29:
		$f.l=285;
		return 1;
}
}
//org/jbox2d/common/Vec2:clone
function _351(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=_70(v0);
;
return v1;
}
//org/jbox2d/common/Vec2:<clinit>
function _352(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=31;
		v0=vm.getClass(96);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g129=v1;
		return;
}
}
//org/jbox2d/pooling/normal/DefaultWorldPool:<init>
function _ea(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20;
var $f=vm.frames[vm.fp++];
$f.l=112;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=67;
v3=new java/util/HashMap;
_246(v3);
v0.afloats=v3;
$f.l=68;
v3=new java/util/HashMap;
_246(v3);
v0.aints=v3;
$f.l=69;
v3=new java/util/HashMap;
_246(v3);
v0.avecs=v3;
$f.l=71;
v0.world=v0;
$f.l=73;
v5=new org/jbox2d/pooling/normal/DefaultWorldPool$1;
v4=$g21;
_353(v5,v0,v4);
v0.pcstack=v5;
$f.l=78;
v6=new org/jbox2d/pooling/normal/DefaultWorldPool$2;
v4=$g21;
_354(v6,v0,v4);
v0.ccstack=v6;
$f.l=83;
v7=new org/jbox2d/pooling/normal/DefaultWorldPool$3;
v4=$g21;
_355(v7,v0,v4);
v0.cpstack=v7;
$f.l=88;
v8=new org/jbox2d/pooling/normal/DefaultWorldPool$4;
v4=$g21;
_356(v8,v0,v4);
v0.ecstack=v8;
$f.l=93;
v9=new org/jbox2d/pooling/normal/DefaultWorldPool$5;
v4=$g21;
_357(v9,v0,v4);
v0.epstack=v9;
$f.l=98;
v10=new org/jbox2d/pooling/normal/DefaultWorldPool$6;
v4=$g21;
_358(v10,v0,v4);
v0.chcstack=v10;
$f.l=103;
v11=new org/jbox2d/pooling/normal/DefaultWorldPool$7;
v4=$g21;
_359(v11,v0,v4);
v0.chpstack=v11;
$f.l=113;
v12=new org/jbox2d/pooling/normal/DefaultWorldPool$8;
_2cd(v12,v0,v1,v2);
v0.vecs=v12;
$f.l=116;
v13=new org/jbox2d/pooling/normal/DefaultWorldPool$9;
_2ca(v13,v0,v1,v2);
v0.vec3s=v13;
$f.l=119;
v14=new org/jbox2d/pooling/normal/DefaultWorldPool$10;
_2b9(v14,v0,v1,v2);
v0.mats=v14;
$f.l=122;
v15=new org/jbox2d/pooling/normal/DefaultWorldPool$11;
_2b6(v15,v0,v1,v2);
v0.aabbs=v15;
$f.l=125;
v16=new org/jbox2d/pooling/normal/DefaultWorldPool$12;
_2b2(v16,v0,v1,v2);
v0.rots=v16;
$f.l=128;
v17=new org/jbox2d/pooling/normal/DefaultWorldPool$13;
_2af(v17,v0,v1,v2);
v0.mat33s=v17;
$f.l=132;
v18=new org/jbox2d/collision/Distance;
_22e(v18);
v0.dist=v18;
$f.l=133;
v19=new org/jbox2d/collision/Collision;
_40(v19,v0);
v0.collision=v19;
$f.l=134;
v20=new org/jbox2d/collision/TimeOfImpact;
_225(v20,v0);
v0.toi=v20;
$f.l=135;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getPolyContactStack
function _35a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=138;
v0=a0;
v1=v0.pcstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getCircleContactStack
function _35b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=142;
v0=a0;
v1=v0.ccstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getPolyCircleContactStack
function _35c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=146;
v0=a0;
v1=v0.cpstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getEdgeCircleContactStack
function _35d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=151;
v0=a0;
v1=v0.ecstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getEdgePolyContactStack
function _35e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=156;
v0=a0;
v1=v0.epstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getChainCircleContactStack
function _35f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=161;
v0=a0;
v1=v0.chcstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getChainPolyContactStack
function _360(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=166;
v0=a0;
v1=v0.chpstack;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:popVec2
function _361(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=170;
v0=a0;
v1=v0.vecs;
v2=_9b(v1);
;
v3=vm.cast(v2,96);
return v3;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:pushVec2
function _362(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=178;
v0=a0;
v1=a1;
v2=v0.vecs;
_9d(v2,v1);
$f.l=179;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:popVec3
function _363(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=182;
v0=a0;
v1=v0.vec3s;
v2=_9b(v1);
;
v3=vm.cast(v2,95);
return v3;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:pushVec3
function _364(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=190;
v0=a0;
v1=a1;
v2=v0.vec3s;
_9d(v2,v1);
$f.l=191;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:popMat22
function _365(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=194;
v0=a0;
v1=v0.mats;
v2=_9b(v1);
;
v3=vm.cast(v2,97);
return v3;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:pushMat22
function _366(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=202;
v0=a0;
v1=a1;
v2=v0.mats;
_9d(v2,v1);
$f.l=203;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:popMat33
function _367(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=206;
v0=a0;
v1=v0.mat33s;
v2=_9b(v1);
;
v3=vm.cast(v2,98);
return v3;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:pushMat33
function _368(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=210;
v0=a0;
v1=a1;
v2=v0.mat33s;
_9d(v2,v1);
$f.l=211;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:popRot
function _369(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=226;
v0=a0;
v1=v0.rots;
v2=_9b(v1);
;
v3=vm.cast(v2,99);
return v3;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:pushRot
function _36a(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=230;
v0=a0;
v1=a1;
v2=v0.rots;
_9d(v2,v1);
$f.l=231;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getCollision
function _36b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=234;
v0=a0;
v1=v0.collision;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getTimeOfImpact
function _36c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=238;
v0=a0;
v1=v0.toi;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getDistance
function _36d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=242;
v0=a0;
v1=v0.dist;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:getVec2Array
function _36e(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=264;
		v0=a0;
		v1=a1;
		v5=v0.avecs;
		v6=_a1(v1);
		;
		v7=v5.$c.$vt[44](v5,v6);
		;
		if(v7!=0) {$b=23; break;}
		$f.l=265;
		v2=newArray(38,v1);
		$f.l=266;
		v3=0;
	case 11:
		if(v3>=v1) {$b=19; break;}
		$f.l=267;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v2[v3]=v4;
		$f.l=266;
		v3=(v3 + 1)|0;
		{ $b=11; break; }
	case 19:
		$f.l=269;
		v5=v0.avecs;
		v6=_a1(v1);
		;
		v8=v5.$c.$vt[42](v5,v6,v2);
		;
	case 23:
		$f.l=272;
		v7=$g130;
		if(v7!=0) {$b=35; break;}
		v5=v0.avecs;
		v6=_a1(v1);
		;
		v8=v5.$c.$vt[43](v5,v6);
		;
		v9=vm.cast(v8,38);
		v10=v9.len;
		if(v10==v1) {$b=35; break;}
		v11=new java/lang/AssertionError;
		_9c(v11,$str118);
		throw v11;
	case 35:
		$f.l=273;
		v5=v0.avecs;
		v6=_a1(v1);
		;
		v8=v5.$c.$vt[43](v5,v6);
		;
		v9=vm.cast(v8,38);
		return v9;
}
}
//org/jbox2d/pooling/normal/DefaultWorldPool:access$000
function _36f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=58;
v0=a0;
v1=v0.world;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool:<clinit>
function _370(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=58;
		v0=vm.getClass(100);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g130=v1;
		return;
}
}
//java/io/Writer:write
function _371(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=81;
v0=a0;
v1=a1;
v2=_187(v1);
;
v0.$c.$vt[33](v0,v1,0,v2);
$f.l=82;
return;
}
//java/io/Writer:write
function _372(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=88;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		if(v3>=0) {$b=12; break;}
		$f.l=89;
		v7=new java/lang/StringIndexOutOfBoundsException;
		_27c(v7);
		throw v7;
	case 12:
		$f.l=91;
		v4=newArray(40,v3);
		$f.l=92;
		v8=(v2 + v3)|0;
		_301(v1,v2,v8,v4,0);
		$f.l=94;
		v9=v0.lock;
		v5=v9;
		monitor(v9,false);
		$f.l=95;
		$f.trap=1;
		v8=v4.len;
		v0.$c.$vt[35](v0,v4,0,v8);
		$f.l=96;
		monitor(v5,true);
		$f.trap=0;
		{ $b=36; break; }
	case 29:
		$f.trap=0;
		v10=__caught;
		$f.trap=2;
		v6=v10;
		monitor(v5,true);
		$f.trap=0;
		throw v6;
	case 36:
		$f.l=97;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,87)) {$b=29; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,87)) {$b=29; continue;}
	}
throw error;
}
}
//java/lang/Throwable:<init>
function _373(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=32;
v0=a0;
v1=vm.cast(null,101);
_374(v0,v1);
$f.l=33;
return;
}
//java/lang/Throwable:<init>
function _374(vm,a0,a1){
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
function _375(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=a1;
v2=a2;
_374(v0,v1);
$f.l=41;
v0.cause=v2;
$f.l=42;
return;
}
//java/lang/Throwable:<init>
function _376(vm,a0,a1){
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
		_375(v0,v3,v1);
		$f.l=46;
		return;
}
}
//java/lang/Throwable:getMessage
function _377(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=v0.detailMessage;
return v1;
}
//java/lang/Throwable:getLocalizedMessage
function _378(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=_377(v0);
;
return v1;
}
//java/lang/Throwable:getCause
function _379(vm,a0){
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
function _37a(vm,a0,a1){
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
		_16e(v2);
		throw v2;
	case 8:
		$f.l=64;
		v3=v0.cause;
		if(v3==v0) {$b=15; break;}
		$f.l=65;
		v4=new java/lang/IllegalStateException;
		_37b(v4);
		throw v4;
	case 15:
		$f.l=67;
		v0.cause=v1;
		$f.l=68;
		return v0;
}
}
//java/lang/Throwable:toString
function _37c(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=72;
		v0=a0;
		v1=_378(v0);
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
		v4=$str70;
		{ $b=17; break; }
	case 12:
		v5=new java/lang/StringBuilder;
		_9(v5);
		v5=_b(v5,$str119);
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
function _37d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=77;
v0=a0;
v1=$g56;
_37e(v0,v1);
$f.l=78;
return;
}
//java/lang/Throwable:printStackTrace
function _37e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=81;
v0=a0;
v1=a1;
v2=_37f(v0);
;
v1.$c.$vt[32](v1,v2);
$f.l=82;
v1.$c.$vt[21](v1);
$f.l=83;
return;
}
//java/lang/Throwable:printStackTrace
function _380(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=86;
v0=a0;
v1=a1;
v2=_37f(v0);
;
_381(v1,v2);
$f.l=87;
v1.$c.$vt[34](v1);
$f.l=88;
return;
}
//java/lang/Throwable:stackTraceString
function _37f(vm,a0){
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
		v3=_310(v0);
		;
		$f.l=95;
		v9=v0.$c.$vt[0](v0);
		;
		_382(v2,v9,v3,0);
		$f.l=98;
		v4=_379(v0);
		;
	case 12:
		$f.l=99;
		if(v4==null) {$b=58; break;}
		$f.l=101;
		v1=_b(v2,$str120);
		;
		$f.l=104;
		v5=v3;
		$f.l=105;
		v3=_310(v4);
		;
		$f.l=106;
		if(v5==null) {$b=24; break;}
		v10=v5.len;
		if(v10!=0) {$b=28; break;}
	case 24:
		$f.l=107;
		v9=v4.$c.$vt[0](v4);
		;
		_382(v2,v9,v3,0);
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
		_382(v2,v9,v3,v6);
	case 54:
		$f.l=123;
		v4=_379(v4);
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
function _382(vm,a0,a1,a2,a3){
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
		v4=$str106;
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
		v6=_b(v0,$str121);
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
		v6=_b(v0,$str122);
		;
		$f.l=145;
		v6=v0;
		v8=v2[v5];
		if(v8!=null) {$b=32; break;}
		v9=$str123;
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
		v6=_b(v0,$str124);
		;
		$f.l=150;
		v6=_c(v0,v3);
		;
		$f.l=151;
		v6=_b(v0,$str125);
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
function _310(vm,a0){
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
		v2=v1.$c.$vt[3](v1);
		;
		v1=vm.cast(v2,88);
		{ $b=9; break; }
	case 8:
		v1=newArray(88,0);
	case 9:
		return v1;
}
}
//java/lang/Throwable:setStackTrace
function _383(vm,a0,a1){
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
		v3=newArray(88,v2);
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
		v6=_b(v6,$str126);
		;
		v6=_c(v6,v2);
		;
		v6=_b(v6,$str127);
		;
		v7=v6.$c.$vt[0](v6);
		;
		_1bc(v5,v7);
		throw v5;
	case 25:
		$f.l=172;
		v0.stackTrace=v3;
		$f.l=173;
		return;
}
}
//java/lang/Throwable:addSuppressed
function _384(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=176;
v0=a0;
v1=a1;
return;
}
//java/util/AbstractList$SimpleListIterator:<init>
function _385(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=39;
v0=a0;
v1=a1;
v0.this$0=v1;
_0(v0);
$f.l=40;
v2=v0.this$0;
v3=v2.$c.$vt[23](v2);
;
v0.numLeft=v3;
$f.l=41;
v2=v0.this$0;
v3=v2.modCount;
v0.expectedModCount=v3;
$f.l=42;
v0.lastPosition=-1;
return;
}
//java/util/AbstractList$SimpleListIterator:hasNext
function _386(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=a0;
		v1=v0.numLeft;
		if(v1<=0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/util/AbstractList$SimpleListIterator:next
function _387(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=49;
		$f.trap=0;
		v0=a0;
		v3=v0.expectedModCount;
		v4=v0.this$0;
		v5=v4.modCount;
		if(v3==v5) {$b=12; break;}
		$f.l=50;
		v6=new java/util/ConcurrentModificationException;
		_243(v6);
		throw v6;
	case 12:
		$f.l=54;
		$f.trap=1;
		v4=v0.this$0;
		v5=v4.$c.$vt[23](v4);
		;
		v3=v0.numLeft;
		v1=(v5 - v3)|0;
		$f.l=55;
		v4=v0.this$0;
		v2=v4.$c.$vt[39](v4,v1);
		;
		$f.l=56;
		v0.lastPosition=v1;
		$f.l=57;
		v7=v0;
		v5=v0.numLeft;
		v5=(v5 - 1)|0;
		v0.numLeft=v5;
		$f.l=58;
		v8=v2;
		$f.trap=0;
		$f.trap=0;
		return v2;
	case 33:
		$f.l=59;
		$f.trap=0;
		v9=__caught;
		v10=v9;
		$f.l=60;
		v11=new java/util/NoSuchElementException;
		_245(v11);
		throw v11;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,102)) {$b=33; continue;}
	}
throw error;
}
}
//java/util/AbstractList$SimpleListIterator:remove
function _388(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=65;
		$f.trap=0;
		v0=a0;
		v2=v0.lastPosition;
		if(v2!=-1) {$b=10; break;}
		$f.l=66;
		v3=new java/lang/IllegalStateException;
		_37b(v3);
		throw v3;
	case 10:
		$f.l=68;
		v2=v0.expectedModCount;
		v4=v0.this$0;
		v5=v4.modCount;
		if(v2==v5) {$b=19; break;}
		$f.l=69;
		v6=new java/util/ConcurrentModificationException;
		_243(v6);
		throw v6;
	case 19:
		$f.l=73;
		$f.trap=1;
		v5=v0.lastPosition;
		v4=v0.this$0;
		v2=v4.$c.$vt[23](v4);
		;
		v7=v0.numLeft;
		v7=(v2 - v7)|0;
		if(v5!=v7) {$b=32; break;}
		$f.l=74;
		v8=v0;
		v7=v0.numLeft;
		v7=(v7 - 1)|0;
		v0.numLeft=v7;
	case 32:
		$f.l=76;
		v4=v0.this$0;
		v7=v0.lastPosition;
		v9=v4.$c.$vt[38](v4,v7);
		;
		$f.l=79;
		$f.trap=0;
		{ $b=47; break; }
	case 39:
		$f.l=77;
		$f.trap=0;
		v10=__caught;
		v1=v10;
		$f.l=78;
		v6=new java/util/ConcurrentModificationException;
		_243(v6);
		throw v6;
	case 47:
		$f.l=81;
		v4=v0.this$0;
		v7=v4.modCount;
		v0.expectedModCount=v7;
		$f.l=82;
		v0.lastPosition=-1;
		$f.l=83;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,102)) {$b=39; continue;}
	}
throw error;
}
}
//java/util/AbstractList$SimpleListIterator:<init>
function _389(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=39;
v0=a0;
v1=a1;
v2=a2;
_385(v0,v1);
return;
}
//org/jbox2d/dynamics/WorldRayCastWrapper:<init>
function _f3(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=1550;
v0=a0;
_0(v0);
$f.l=1553;
v1=new org/jbox2d/collision/RayCastOutput;
_21d(v1);
v0.output=v1;
$f.l=1554;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.temp=v2;
$f.l=1555;
v2=new org/jbox2d/common/Vec2;
_1a(v2);
v0.point=v2;
return;
}
//org/jbox2d/common/Mat33:<init>
function _25c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=41;
v0=a0;
_0(v0);
$f.l=42;
v1=new org/jbox2d/common/Vec3;
_25b(v1);
v0.ex=v1;
$f.l=43;
v1=new org/jbox2d/common/Vec3;
_25b(v1);
v0.ey=v1;
$f.l=44;
v1=new org/jbox2d/common/Vec3;
_25b(v1);
v0.ez=v1;
$f.l=45;
return;
}
//org/jbox2d/common/Mat33:<init>
function _38a(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
_0(v0);
$f.l=48;
v4=_344(v1);
;
v0.ex=v4;
$f.l=49;
v4=_344(v2);
;
v0.ey=v4;
$f.l=50;
v4=_344(v3);
;
v0.ez=v4;
$f.l=51;
return;
}
//org/jbox2d/common/Mat33:mul22ToOutUnsafe
function _2f2(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=76;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g131;
		if(v3!=0) {$b=10; break;}
		if(v1!=v2) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=77;
		v5=v0.ex;
		v6=v5.y;
		v7=v1.x;
		v7=v6 * v7;
		v5=v0.ey;
		v6=v5.y;
		v8=v1.y;
		v8=v6 * v8;
		v8=v7 + v8;
		v2.y=v8;
		$f.l=78;
		v5=v0.ex;
		v8=v5.x;
		v7=v1.x;
		v8=v8 * v7;
		v5=v0.ey;
		v7=v5.x;
		v6=v1.y;
		v7=v7 * v6;
		v8=v8 + v7;
		v2.x=v8;
		$f.l=79;
		return;
}
}
//org/jbox2d/common/Mat33:mulToOutUnsafe
function _2f3(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=90;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g131;
		if(v3!=0) {$b=10; break;}
		if(v2!=v1) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=91;
		v5=v1.x;
		v6=v0.ex;
		v7=v6.x;
		v7=v5 * v7;
		v5=v1.y;
		v6=v0.ey;
		v8=v6.x;
		v8=v5 * v8;
		v8=v7 + v8;
		v7=v1.z;
		v6=v0.ez;
		v5=v6.x;
		v7=v7 * v5;
		v8=v8 + v7;
		v2.x=v8;
		$f.l=92;
		v8=v1.x;
		v6=v0.ex;
		v7=v6.y;
		v8=v8 * v7;
		v7=v1.y;
		v6=v0.ey;
		v5=v6.y;
		v7=v7 * v5;
		v8=v8 + v7;
		v7=v1.z;
		v6=v0.ez;
		v5=v6.y;
		v7=v7 * v5;
		v8=v8 + v7;
		v2.y=v8;
		$f.l=93;
		v8=v1.x;
		v6=v0.ex;
		v7=v6.z;
		v8=v8 * v7;
		v7=v1.y;
		v6=v0.ey;
		v5=v6.z;
		v7=v7 * v5;
		v8=v8 + v7;
		v7=v1.z;
		v6=v0.ez;
		v5=v6.z;
		v7=v7 * v5;
		v8=v8 + v7;
		v2.z=v8;
		$f.l=94;
		return;
}
}
//org/jbox2d/common/Mat33:solve22ToOut
function _266(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=117;
		v0=a0;
		v1=a1;
		v2=a2;
		v8=v0.ex;
		v3=v8.x;
		v8=v0.ey;
		v4=v8.x;
		v8=v0.ex;
		v5=v8.y;
		v8=v0.ey;
		v6=v8.y;
		$f.l=118;
		v9=v3 * v6;
		v10=v4 * v5;
		v7=v9 - v10;
		$f.l=119;
		v11=(v7 != v7 || 0.0 != 0.0) ? -1 : (v7 > 0.0) - (v7 < 0.0);
		if(v11==0) {$b=21; break;}
		$f.l=120;
		v7=1.0 / v7;
	case 21:
		$f.l=122;
		v10=v1.x;
		v10=v6 * v10;
		v9=v1.y;
		v9=v4 * v9;
		v10=v10 - v9;
		v10=v7 * v10;
		v2.x=v10;
		$f.l=123;
		v10=v1.y;
		v10=v3 * v10;
		v9=v1.x;
		v9=v5 * v9;
		v10=v10 - v9;
		v10=v7 * v10;
		v2.y=v10;
		$f.l=124;
		return;
}
}
//org/jbox2d/common/Mat33:solve33ToOut
function _264(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=148;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g131;
		if(v3!=0) {$b=10; break;}
		if(v1!=v2) {$b=10; break;}
		v8=new java/lang/AssertionError;
		_26(v8);
		throw v8;
	case 10:
		$f.l=149;
		v9=v0.ey;
		v10=v0.ez;
		_349(v9,v10,v2);
		$f.l=150;
		v10=v0.ex;
		v4=_348(v10,v2);
		;
		$f.l=151;
		v11=(v4 != v4 || 0.0 != 0.0) ? -1 : (v4 > 0.0) - (v4 < 0.0);
		if(v11==0) {$b=22; break;}
		$f.l=152;
		v4=1.0 / v4;
	case 22:
		$f.l=154;
		v10=v0.ey;
		v9=v0.ez;
		_349(v10,v9,v2);
		$f.l=155;
		v12=_348(v1,v2);
		;
		v5=v4 * v12;
		$f.l=156;
		v10=v0.ez;
		_349(v1,v10,v2);
		$f.l=157;
		v10=v0.ex;
		v12=_348(v10,v2);
		;
		v6=v4 * v12;
		$f.l=158;
		v10=v0.ey;
		_349(v10,v1,v2);
		$f.l=159;
		v10=v0.ex;
		v12=_348(v10,v2);
		;
		v7=v4 * v12;
		$f.l=160;
		v2.x=v5;
		$f.l=161;
		v2.y=v6;
		$f.l=162;
		v2.z=v7;
		$f.l=163;
		return;
}
}
//org/jbox2d/common/Mat33:getInverse22
function _2ef(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=166;
		v0=a0;
		v1=a1;
		v7=v0.ex;
		v2=v7.x;
		v7=v0.ey;
		v3=v7.x;
		v7=v0.ex;
		v4=v7.y;
		v7=v0.ey;
		v5=v7.y;
		$f.l=167;
		v8=v2 * v5;
		v9=v3 * v4;
		v6=v8 - v9;
		$f.l=168;
		v10=(v6 != v6 || 0.0 != 0.0) ? -1 : (v6 > 0.0) - (v6 < 0.0);
		if(v10==0) {$b=20; break;}
		$f.l=169;
		v6=1.0 / v6;
	case 20:
		$f.l=172;
		v7=v1.ex;
		v9=v6 * v5;
		v7.x=v9;
		$f.l=173;
		v7=v1.ey;
		v9=-v6;
		v9=v9 * v3;
		v7.x=v9;
		$f.l=174;
		v7=v1.ex;
		v7.z=0.0;
		$f.l=175;
		v7=v1.ex;
		v9=-v6;
		v9=v9 * v4;
		v7.y=v9;
		$f.l=176;
		v7=v1.ey;
		v9=v6 * v2;
		v7.y=v9;
		$f.l=177;
		v7=v1.ey;
		v7.z=0.0;
		$f.l=178;
		v7=v1.ez;
		v7.x=0.0;
		$f.l=179;
		v7=v1.ez;
		v7.y=0.0;
		$f.l=180;
		v7=v1.ez;
		v7.z=0.0;
		$f.l=181;
		return;
}
}
//org/jbox2d/common/Mat33:getSymInverse33
function _2f0(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=185;
		v0=a0;
		v1=a1;
		v12=v0.ey;
		v13=v12.y;
		v12=v0.ez;
		v14=v12.z;
		v14=v13 * v14;
		v12=v0.ey;
		v13=v12.z;
		v12=v0.ez;
		v15=v12.y;
		v15=v13 * v15;
		v2=v14 - v15;
		$f.l=186;
		v12=v0.ey;
		v15=v12.z;
		v12=v0.ez;
		v14=v12.x;
		v15=v15 * v14;
		v12=v0.ey;
		v14=v12.x;
		v12=v0.ez;
		v13=v12.z;
		v14=v14 * v13;
		v3=v15 - v14;
		$f.l=187;
		v12=v0.ey;
		v15=v12.x;
		v12=v0.ez;
		v14=v12.y;
		v15=v15 * v14;
		v12=v0.ey;
		v14=v12.y;
		v12=v0.ez;
		v13=v12.x;
		v14=v14 * v13;
		v4=v15 - v14;
		$f.l=188;
		v12=v0.ex;
		v15=v12.x;
		v15=v15 * v2;
		v12=v0.ex;
		v14=v12.y;
		v14=v14 * v3;
		v15=v15 + v14;
		v12=v0.ex;
		v14=v12.z;
		v14=v14 * v4;
		v5=v15 + v14;
		$f.l=189;
		v16=(v5 != v5 || 0.0 != 0.0) ? -1 : (v5 > 0.0) - (v5 < 0.0);
		if(v16==0) {$b=55; break;}
		$f.l=190;
		v5=1.0 / v5;
	case 55:
		$f.l=193;
		v12=v0.ex;
		v6=v12.x;
		v12=v0.ey;
		v7=v12.x;
		v12=v0.ez;
		v8=v12.x;
		$f.l=194;
		v12=v0.ey;
		v9=v12.y;
		v12=v0.ez;
		v10=v12.y;
		$f.l=195;
		v12=v0.ez;
		v11=v12.z;
		$f.l=197;
		v12=v1.ex;
		v15=v9 * v11;
		v14=v10 * v10;
		v15=v15 - v14;
		v15=v5 * v15;
		v12.x=v15;
		$f.l=198;
		v12=v1.ex;
		v15=v8 * v10;
		v14=v7 * v11;
		v15=v15 - v14;
		v15=v5 * v15;
		v12.y=v15;
		$f.l=199;
		v12=v1.ex;
		v15=v7 * v10;
		v14=v8 * v9;
		v15=v15 - v14;
		v15=v5 * v15;
		v12.z=v15;
		$f.l=201;
		v12=v1.ey;
		v17=v1.ex;
		v15=v17.y;
		v12.x=v15;
		$f.l=202;
		v17=v1.ey;
		v15=v6 * v11;
		v14=v8 * v8;
		v15=v15 - v14;
		v15=v5 * v15;
		v17.y=v15;
		$f.l=203;
		v17=v1.ey;
		v15=v8 * v7;
		v14=v6 * v10;
		v15=v15 - v14;
		v15=v5 * v15;
		v17.z=v15;
		$f.l=205;
		v17=v1.ez;
		v12=v1.ex;
		v15=v12.z;
		v17.x=v15;
		$f.l=206;
		v17=v1.ez;
		v12=v1.ey;
		v15=v12.z;
		v17.y=v15;
		$f.l=207;
		v17=v1.ez;
		v15=v6 * v9;
		v14=v7 * v7;
		v15=v15 - v14;
		v15=v5 * v15;
		v17.z=v15;
		$f.l=208;
		return;
}
}
//org/jbox2d/common/Mat33:hashCode
function _38b(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=212;
		v0=a0;
		v1=31;
		$f.l=213;
		v2=1;
		$f.l=214;
		v3=(31 * v2)|0;
		v4=v0.ex;
		if(v4!=null) {$b=11; break;}
		v5=0;
		{ $b=13; break; }
	case 11:
		v4=v0.ex;
		v5=v4.$c.$vt[2](v4);
		;
	case 13:
		v2=(v3 + v5)|0;
		$f.l=215;
		v5=(31 * v2)|0;
		v4=v0.ey;
		if(v4!=null) {$b=20; break;}
		v3=0;
		{ $b=22; break; }
	case 20:
		v4=v0.ey;
		v3=v4.$c.$vt[2](v4);
		;
	case 22:
		v2=(v5 + v3)|0;
		$f.l=216;
		v5=(31 * v2)|0;
		v4=v0.ez;
		if(v4!=null) {$b=29; break;}
		v3=0;
		{ $b=31; break; }
	case 29:
		v4=v0.ez;
		v3=v4.$c.$vt[2](v4);
		;
	case 31:
		v2=(v5 + v3)|0;
		$f.l=217;
		return v2;
}
}
//org/jbox2d/common/Mat33:equals
function _38c(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=222;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=5; break;}
		return 1;
	case 5:
		$f.l=223;
		if(v1!=null) {$b=8; break;}
		return 0;
	case 8:
		$f.l=224;
		v3=_2(v0);
		;
		v4=_2(v1);
		;
		if(v3==v4) {$b=13; break;}
		return 0;
	case 13:
		$f.l=225;
		v2=vm.cast(v1,98);
		$f.l=226;
		v5=v0.ex;
		if(v5!=null) {$b=22; break;}
		$f.l=227;
		v5=v2.ex;
		if(v5==null) {$b=28; break;}
		return 0;
	case 22:
		$f.l=228;
		v5=v0.ex;
		v6=v2.ex;
		v7=v5.$c.$vt[1](v5,v6);
		;
		if(v7!=0) {$b=28; break;}
		return 0;
	case 28:
		$f.l=229;
		v6=v0.ey;
		if(v6!=null) {$b=35; break;}
		$f.l=230;
		v6=v2.ey;
		if(v6==null) {$b=41; break;}
		return 0;
	case 35:
		$f.l=231;
		v6=v0.ey;
		v5=v2.ey;
		v7=v6.$c.$vt[1](v6,v5);
		;
		if(v7!=0) {$b=41; break;}
		return 0;
	case 41:
		$f.l=232;
		v6=v0.ez;
		if(v6!=null) {$b=48; break;}
		$f.l=233;
		v6=v2.ez;
		if(v6==null) {$b=54; break;}
		return 0;
	case 48:
		$f.l=234;
		v6=v0.ez;
		v5=v2.ez;
		v7=v6.$c.$vt[1](v6,v5);
		;
		if(v7!=0) {$b=54; break;}
		return 0;
	case 54:
		$f.l=235;
		return 1;
}
}
//org/jbox2d/common/Mat33:<clinit>
function _38d(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=33;
		v0=vm.getClass(98);
		v2=_3f(v0);
		;
		if(v2!=0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		$g131=v2;
		$f.l=36;
		v3=new org/jbox2d/common/Mat33;
		v1=new org/jbox2d/common/Vec3;
		_342(v1,1.0,0.0,0.0);
		v4=new org/jbox2d/common/Vec3;
		_342(v4,0.0,1.0,0.0);
		v5=new org/jbox2d/common/Vec3;
		_342(v5,0.0,0.0,1.0);
		_38a(v3,v1,v4,v5);
		$g132=v3;
		return;
}
}
//java/util/HashMap$Entry:<init>
function _38e(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=a0;
v1=a1;
v2=a2;
_33c(v0,v1,null);
$f.l=69;
v0.origKeyHash=v2;
$f.l=70;
return;
}
//org/jbox2d/collision/broadphase/DynamicTree:<init>
function _ec(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=60;
		v0=a0;
		_0(v0);
		$f.l=57;
		v2=newArray(38,4);
		v0.drawVecs=v2;
		$f.l=58;
		v3=new org/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;
		_82(v3,v0,10);
		v0.nodeStack=v3;
		$f.l=187;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.r=v4;
		$f.l=188;
		v5=new org/jbox2d/collision/AABB;
		_8c(v5);
		v0.aabb=v5;
		$f.l=189;
		v6=new org/jbox2d/collision/RayCastInput;
		_a3(v6);
		v0.subInput=v6;
		$f.l=500;
		v5=new org/jbox2d/collision/AABB;
		_8c(v5);
		v0.combinedAABB=v5;
		$f.l=862;
		v7=new org/jbox2d/common/Color3f;
		_f0(v7);
		v0.color=v7;
		$f.l=863;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v0.textVec=v4;
		$f.l=61;
		v0.m_root=null;
		$f.l=62;
		v0.m_nodeCount=0;
		$f.l=63;
		v0.m_nodeCapacity=16;
		$f.l=64;
		v8=newArray(8,16);
		v0.m_nodes=v8;
		$f.l=67;
		v9=v0.m_nodeCapacity;
		v1=(v9 - 1)|0;
	case 46:
		if(v1<0) {$b=71; break;}
		$f.l=68;
		v8=v0.m_nodes;
		v10=new org/jbox2d/collision/broadphase/DynamicTreeNode;
		_24b(v10,v1);
		v8[v1]=v10;
		$f.l=69;
		v8=v0.m_nodes;
		v10=v8[v1];
		v9=v0.m_nodeCapacity;
		v9=(v9 - 1)|0;
		if(v1!=v9) {$b=60; break;}
		v11=null;
		{ $b=63; break; }
	case 60:
		v8=v0.m_nodes;
		v9=(v1 + 1)|0;
		v11=v8[v9];
	case 63:
		v10.parent=v11;
		$f.l=70;
		v8=v0.m_nodes;
		v11=v8[v1];
		v11.height=-1;
		$f.l=67;
		v1=(v1 + -1)|0;
		{ $b=46; break; }
	case 71:
		$f.l=72;
		v0.m_freeList=0;
		$f.l=74;
		v0.m_insertionCount=0;
		$f.l=76;
		v1=0;
	case 77:
		v2=v0.drawVecs;
		v9=v2.len;
		if(v1>=v9) {$b=88; break;}
		$f.l=77;
		v2=v0.drawVecs;
		v4=new org/jbox2d/common/Vec2;
		_1a(v4);
		v2[v1]=v4;
		$f.l=76;
		v1=(v1 + 1)|0;
		{ $b=77; break; }
	case 88:
		$f.l=79;
		return;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:createProxy
function _38f(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
$f.l=83;
v0=a0;
v1=a1;
v2=a2;
v3=_390(v0);
;
$f.l=84;
v4=v3.id;
$f.l=86;
v5=v3.aabb;
$f.l=87;
v6=v5.lowerBound;
v7=v1.lowerBound;
v8=v7.x;
v8=v8 - 0.1;
v6.x=v8;
$f.l=88;
v7=v5.lowerBound;
v6=v1.lowerBound;
v8=v6.y;
v8=v8 - 0.1;
v7.y=v8;
$f.l=89;
v7=v5.upperBound;
v6=v1.upperBound;
v8=v6.x;
v8=v8 + 0.1;
v7.x=v8;
$f.l=90;
v7=v5.upperBound;
v6=v1.upperBound;
v8=v6.y;
v8=v8 + 0.1;
v7.y=v8;
$f.l=91;
v3.userData=v2;
$f.l=93;
_391(v0,v4);
$f.l=95;
return v4;
}
//org/jbox2d/collision/broadphase/DynamicTree:moveProxy
function _392(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=110;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=$g133;
		if(v4!=0) {$b=13; break;}
		if(0>v1) {$b=10; break;}
		v11=v0.m_nodeCapacity;
		if(v1<v11) {$b=13; break;}
	case 10:
		v12=new java/lang/AssertionError;
		_26(v12);
		throw v12;
	case 13:
		$f.l=111;
		v13=v0.m_nodes;
		v5=v13[v1];
		$f.l=112;
		v4=$g133;
		if(v4!=0) {$b=24; break;}
		v4=_24a(v5);
		;
		if(v4!=0) {$b=24; break;}
		v12=new java/lang/AssertionError;
		_26(v12);
		throw v12;
	case 24:
		$f.l=114;
		v6=v5.aabb;
		$f.l=116;
		v14=v6.lowerBound;
		v15=v14.x;
		v14=v2.lowerBound;
		v16=v14.x;
		v17=(v15 != v15 || v16 != v16) ? -1 : (v15 > v16) - (v15 < v16);
		if(v17<=0) {$b=53; break;}
		v14=v6.lowerBound;
		v16=v14.y;
		v14=v2.lowerBound;
		v15=v14.y;
		v17=(v16 != v16 || v15 != v15) ? -1 : (v16 > v15) - (v16 < v15);
		if(v17<=0) {$b=53; break;}
		v14=v2.upperBound;
		v16=v14.x;
		v14=v6.upperBound;
		v15=v14.x;
		v17=(v16 != v16 || v15 != v15) ? -1 : (v16 > v15) - (v16 < v15);
		if(v17<=0) {$b=53; break;}
		v14=v2.upperBound;
		v16=v14.y;
		v14=v6.upperBound;
		v15=v14.y;
		v17=(v16 != v16 || v15 != v15) ? -1 : (v16 > v15) - (v16 < v15);
		if(v17<=0) {$b=53; break;}
		$f.l=118;
		return 0;
	case 53:
		$f.l=121;
		_393(v0,v5);
		$f.l=124;
		v7=v6.lowerBound;
		$f.l=125;
		v8=v6.upperBound;
		$f.l=126;
		v14=v2.lowerBound;
		v16=v14.x;
		v16=v16 - 0.1;
		v7.x=v16;
		$f.l=127;
		v14=v2.lowerBound;
		v16=v14.y;
		v16=v16 - 0.1;
		v7.y=v16;
		$f.l=128;
		v14=v2.upperBound;
		v16=v14.x;
		v16=v16 + 0.1;
		v8.x=v16;
		$f.l=129;
		v14=v2.upperBound;
		v16=v14.y;
		v16=v16 + 0.1;
		v8.y=v16;
		$f.l=132;
		v16=v3.x;
		v9=v16 * 2.0;
		$f.l=133;
		v16=v3.y;
		v10=v16 * 2.0;
		$f.l=134;
		v17=(v9 != v9 || 0.0 != 0.0) ? 1 : (v9 > 0.0) - (v9 < 0.0);
		if(v17>=0) {$b=94; break;}
		$f.l=135;
		v14=v7;
		v16=v7.x;
		v16=v16 + v9;
		v7.x=v16;
		{ $b=99; break; }
	case 94:
		$f.l=137;
		v14=v8;
		v16=v8.x;
		v16=v16 + v9;
		v8.x=v16;
	case 99:
		$f.l=140;
		v17=(v10 != v10 || 0.0 != 0.0) ? 1 : (v10 > 0.0) - (v10 < 0.0);
		if(v17>=0) {$b=108; break;}
		$f.l=141;
		v14=v7;
		v16=v7.y;
		v16=v16 + v10;
		v7.y=v16;
		{ $b=113; break; }
	case 108:
		$f.l=143;
		v14=v8;
		v16=v8.y;
		v16=v16 + v10;
		v8.y=v16;
	case 113:
		$f.l=146;
		_391(v0,v1);
		$f.l=147;
		return 1;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:getUserData
function _394(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=152;
		v0=a0;
		v1=a1;
		v2=$g133;
		if(v2!=0) {$b=11; break;}
		if(0>v1) {$b=8; break;}
		v3=v0.m_nodeCapacity;
		if(v1<v3) {$b=11; break;}
	case 8:
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 11:
		$f.l=153;
		v5=v0.m_nodes;
		v6=v5[v1];
		v7=v6.userData;
		return v7;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:getFatAABB
function _395(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=158;
		v0=a0;
		v1=a1;
		v2=$g133;
		if(v2!=0) {$b=11; break;}
		if(0>v1) {$b=8; break;}
		v3=v0.m_nodeCapacity;
		if(v1<v3) {$b=11; break;}
	case 8:
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 11:
		$f.l=159;
		v5=v0.m_nodes;
		v6=v5[v1];
		v7=v6.aabb;
		return v7;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:query
function _396(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=164;
		v0=a0;
		v1=a1;
		v2=a2;
		v5=v0.nodeStack;
		_83(v5);
		$f.l=165;
		v5=v0.nodeStack;
		v6=v0.m_root;
		_85(v5,v6);
	case 10:
		$f.l=167;
		v5=v0.nodeStack;
		v7=_86(v5);
		;
		if(v7<=0) {$b=47; break;}
		$f.l=168;
		v5=v0.nodeStack;
		v3=_84(v5);
		;
		$f.l=169;
		if(v3!=null) {$b=21; break;}
		$f.l=170;
		{ $b=10; break; }
	case 21:
		$f.l=173;
		v8=v3.aabb;
		v9=_251(v8,v2);
		;
		if(v9==0) {$b=45; break;}
		$f.l=174;
		v6=v3.child1;
		if(v6!=null) {$b=37; break;}
		$f.l=175;
		v7=v3.id;
		v4=v1.$c.$it[13](v1,v7);
		;
		$f.l=176;
		if(v4!=0) {$b=35; break;}
		$f.l=177;
		return;
	case 35:
		$f.l=179;
		{ $b=45; break; }
	case 37:
		$f.l=180;
		v5=v0.nodeStack;
		v6=v3.child1;
		_85(v5,v6);
		$f.l=181;
		v5=v0.nodeStack;
		v6=v3.child2;
		_85(v5,v6);
	case 45:
		$f.l=184;
		{ $b=10; break; }
	case 47:
		$f.l=185;
		return;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:allocateNode
function _390(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=454;
		v0=a0;
		v3=v0.m_freeList;
		if(v3!=-1) {$b=60; break;}
		$f.l=455;
		v4=$g133;
		if(v4!=0) {$b=13; break;}
		v3=v0.m_nodeCount;
		v5=v0.m_nodeCapacity;
		if(v3==v5) {$b=13; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 13:
		$f.l=457;
		v1=v0.m_nodes;
		$f.l=458;
		v7=v0;
		v5=v0.m_nodeCapacity;
		v5=(v5 * 2)|0;
		v0.m_nodeCapacity=v5;
		$f.l=459;
		v5=v0.m_nodeCapacity;
		v8=newArray(8,v5);
		v0.m_nodes=v8;
		$f.l=460;
		v8=v0.m_nodes;
		v5=v1.len;
		_15(v1,0,v8,0,v5);
		$f.l=463;
		v5=v0.m_nodeCapacity;
		v2=(v5 - 1)|0;
	case 31:
		v5=v0.m_nodeCount;
		if(v2<v5) {$b=57; break;}
		$f.l=464;
		v8=v0.m_nodes;
		v9=new org/jbox2d/collision/broadphase/DynamicTreeNode;
		_24b(v9,v2);
		v8[v2]=v9;
		$f.l=465;
		v8=v0.m_nodes;
		v9=v8[v2];
		v5=v0.m_nodeCapacity;
		v5=(v5 - 1)|0;
		if(v2!=v5) {$b=46; break;}
		v10=null;
		{ $b=49; break; }
	case 46:
		v8=v0.m_nodes;
		v5=(v2 + 1)|0;
		v10=v8[v5];
	case 49:
		v9.parent=v10;
		$f.l=466;
		v8=v0.m_nodes;
		v10=v8[v2];
		v10.height=-1;
		$f.l=463;
		v2=(v2 + -1)|0;
		{ $b=31; break; }
	case 57:
		$f.l=468;
		v5=v0.m_nodeCount;
		v0.m_freeList=v5;
	case 60:
		$f.l=470;
		v11=v0.m_freeList;
		$f.l=471;
		v8=v0.m_nodes;
		v12=v8[v11];
		$f.l=472;
		v7=v0;
		v10=v12.parent;
		if(v10==null) {$b=72; break;}
		v10=v12.parent;
		v5=v10.id;
		{ $b=73; break; }
	case 72:
		v5=-1;
	case 73:
		v0.m_freeList=v5;
		$f.l=474;
		v12.parent=null;
		$f.l=475;
		v12.child1=null;
		$f.l=476;
		v12.child2=null;
		$f.l=477;
		v12.height=0;
		$f.l=478;
		v12.userData=null;
		$f.l=479;
		v7=v0;
		v5=v0.m_nodeCount;
		v5=(v5 + 1)|0;
		v0.m_nodeCount=v5;
		$f.l=480;
		return v12;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:freeNode
function _397(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=487;
		v0=a0;
		v1=a1;
		v2=$g133;
		if(v2!=0) {$b=9; break;}
		if(v1!=null) {$b=9; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 9:
		$f.l=488;
		v2=$g133;
		if(v2!=0) {$b=17; break;}
		v4=v0.m_nodeCount;
		if(0<v4) {$b=17; break;}
		v3=new java/lang/AssertionError;
		_26(v3);
		throw v3;
	case 17:
		$f.l=489;
		v5=v1;
		v4=v0.m_freeList;
		if(v4==-1) {$b=25; break;}
		v6=v0.m_nodes;
		v4=v0.m_freeList;
		v7=v6[v4];
		{ $b=26; break; }
	case 25:
		v7=null;
	case 26:
		v1.parent=v7;
		$f.l=490;
		v1.height=-1;
		$f.l=491;
		v4=v1.id;
		v0.m_freeList=v4;
		$f.l=492;
		v8=v0;
		v4=v0.m_nodeCount;
		v4=(v4 - 1)|0;
		v0.m_nodeCount=v4;
		$f.l=493;
		return;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:insertLeaf
function _391(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=503;
		v0=a0;
		v1=a1;
		v2=v0;
		v17=v0.m_insertionCount;
		v17=(v17 + 1)|0;
		v0.m_insertionCount=v17;
		$f.l=505;
		v18=v0.m_nodes;
		v3=v18[v1];
		$f.l=506;
		v19=v0.m_root;
		if(v19!=null) {$b=20; break;}
		$f.l=507;
		v0.m_root=v3;
		$f.l=508;
		v19=v0.m_root;
		v19.parent=null;
		$f.l=509;
		return;
	case 20:
		$f.l=513;
		v4=v3.aabb;
		$f.l=514;
		v5=v0.m_root;
	case 24:
		$f.l=515;
		v19=v5.child1;
		if(v19==null) {$b=115; break;}
		$f.l=516;
		v6=v5;
		$f.l=517;
		v7=v6.child1;
		$f.l=518;
		v8=v6.child2;
		$f.l=520;
		v20=v6.aabb;
		v9=_250(v20);
		;
		$f.l=522;
		v20=v0.combinedAABB;
		v21=v6.aabb;
		_24f(v20,v21,v4);
		$f.l=523;
		v21=v0.combinedAABB;
		v10=_250(v21);
		;
		$f.l=526;
		v11=2.0 * v10;
		$f.l=529;
		v22=v10 - v9;
		v12=2.0 * v22;
		$f.l=533;
		v23=_24a(v7);
		;
		if(v23==0) {$b=60; break;}
		$f.l=534;
		v21=v0.combinedAABB;
		v20=v7.aabb;
		_24f(v21,v4,v20);
		$f.l=535;
		v21=v0.combinedAABB;
		v22=_250(v21);
		;
		v13=v22 + v12;
		{ $b=73; break; }
	case 60:
		$f.l=537;
		v21=v0.combinedAABB;
		v20=v7.aabb;
		_24f(v21,v4,v20);
		$f.l=538;
		v21=v7.aabb;
		v14=_250(v21);
		;
		$f.l=539;
		v21=v0.combinedAABB;
		v15=_250(v21);
		;
		$f.l=540;
		v22=v15 - v14;
		v13=v22 + v12;
	case 73:
		$f.l=545;
		v23=_24a(v8);
		;
		if(v23==0) {$b=85; break;}
		$f.l=546;
		v21=v0.combinedAABB;
		v20=v8.aabb;
		_24f(v21,v4,v20);
		$f.l=547;
		v21=v0.combinedAABB;
		v22=_250(v21);
		;
		v14=v22 + v12;
		{ $b=98; break; }
	case 85:
		$f.l=549;
		v21=v0.combinedAABB;
		v20=v8.aabb;
		_24f(v21,v4,v20);
		$f.l=550;
		v21=v8.aabb;
		v15=_250(v21);
		;
		$f.l=551;
		v21=v0.combinedAABB;
		v16=_250(v21);
		;
		$f.l=552;
		v22=v16 - v15;
		v14=v22 + v12;
	case 98:
		$f.l=556;
		v24=(v11 != v11 || v13 != v13) ? 1 : (v11 > v13) - (v11 < v13);
		if(v24>=0) {$b=105; break;}
		v24=(v11 != v11 || v14 != v14) ? 1 : (v11 > v14) - (v11 < v14);
		if(v24>=0) {$b=105; break;}
		$f.l=557;
		{ $b=115; break; }
	case 105:
		$f.l=561;
		v24=(v13 != v13 || v14 != v14) ? 1 : (v13 > v14) - (v13 < v14);
		if(v24>=0) {$b=111; break;}
		$f.l=562;
		v5=v7;
		{ $b=113; break; }
	case 111:
		$f.l=564;
		v5=v8;
	case 113:
		$f.l=566;
		{ $b=24; break; }
	case 115:
		$f.l=568;
		v6=v5;
		$f.l=569;
		v18=v0.m_nodes;
		v17=v6.id;
		v19=v18[v17];
		v7=v19.parent;
		$f.l=570;
		v8=_390(v0);
		;
		$f.l=571;
		v8.parent=v7;
		$f.l=572;
		v8.userData=null;
		$f.l=573;
		v21=v8.aabb;
		v20=v6.aabb;
		_24f(v21,v4,v20);
		$f.l=574;
		v17=v6.height;
		v17=(v17 + 1)|0;
		v8.height=v17;
		$f.l=576;
		if(v7==null) {$b=155; break;}
		$f.l=578;
		v19=v7.child1;
		if(v19!=v6) {$b=144; break;}
		$f.l=579;
		v7.child1=v8;
		{ $b=146; break; }
	case 144:
		$f.l=581;
		v7.child2=v8;
	case 146:
		$f.l=584;
		v8.child1=v6;
		$f.l=585;
		v8.child2=v3;
		$f.l=586;
		v6.parent=v8;
		$f.l=587;
		v3.parent=v8;
		{ $b=165; break; }
	case 155:
		$f.l=590;
		v8.child1=v6;
		$f.l=591;
		v8.child2=v3;
		$f.l=592;
		v6.parent=v8;
		$f.l=593;
		v3.parent=v8;
		$f.l=594;
		v0.m_root=v8;
	case 165:
		$f.l=598;
		v5=v3.parent;
	case 167:
		$f.l=599;
		if(v5==null) {$b=204; break;}
		$f.l=600;
		v5=_398(v0,v5);
		;
		$f.l=602;
		v25=v5.child1;
		$f.l=603;
		v26=v5.child2;
		$f.l=605;
		v23=$g133;
		if(v23!=0) {$b=182; break;}
		if(v25!=null) {$b=182; break;}
		v27=new java/lang/AssertionError;
		_26(v27);
		throw v27;
	case 182:
		$f.l=606;
		v23=$g133;
		if(v23!=0) {$b=189; break;}
		if(v26!=null) {$b=189; break;}
		v27=new java/lang/AssertionError;
		_26(v27);
		throw v27;
	case 189:
		$f.l=608;
		v17=v25.height;
		v28=v26.height;
		v28=_22(v17,v28);
		;
		v28=(1 + v28)|0;
		v5.height=v28;
		$f.l=609;
		v21=v5.aabb;
		v20=v25.aabb;
		v29=v26.aabb;
		_24f(v21,v20,v29);
		$f.l=611;
		v5=v5.parent;
		$f.l=612;
		{ $b=167; break; }
	case 204:
		$f.l=615;
		return;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:removeLeaf
function _393(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=618;
		v0=a0;
		v1=a1;
		v8=v0.m_root;
		if(v1!=v8) {$b=9; break;}
		$f.l=619;
		v0.m_root=null;
		$f.l=620;
		return;
	case 9:
		$f.l=623;
		v2=v1.parent;
		$f.l=624;
		v3=v2.parent;
		$f.l=626;
		v8=v2.child1;
		if(v8!=v1) {$b=19; break;}
		$f.l=627;
		v4=v2.child2;
		{ $b=21; break; }
	case 19:
		$f.l=629;
		v4=v2.child1;
	case 21:
		$f.l=632;
		if(v3==null) {$b=62; break;}
		$f.l=634;
		v8=v3.child1;
		if(v8!=v2) {$b=29; break;}
		$f.l=635;
		v3.child1=v4;
		{ $b=31; break; }
	case 29:
		$f.l=637;
		v3.child2=v4;
	case 31:
		$f.l=639;
		v4.parent=v3;
		$f.l=640;
		_397(v0,v2);
		$f.l=643;
		v5=v3;
	case 37:
		$f.l=644;
		if(v5==null) {$b=60; break;}
		$f.l=645;
		v5=_398(v0,v5);
		;
		$f.l=647;
		v6=v5.child1;
		$f.l=648;
		v7=v5.child2;
		$f.l=650;
		v9=v5.aabb;
		v10=v6.aabb;
		v11=v7.aabb;
		_24f(v9,v10,v11);
		$f.l=651;
		v12=v6.height;
		v13=v7.height;
		v13=_22(v12,v13);
		;
		v13=(1 + v13)|0;
		v5.height=v13;
		$f.l=653;
		v5=v5.parent;
		$f.l=654;
		{ $b=37; break; }
	case 60:
		$f.l=655;
		{ $b=68; break; }
	case 62:
		$f.l=656;
		v0.m_root=v4;
		$f.l=657;
		v4.parent=null;
		$f.l=658;
		_397(v0,v2);
	case 68:
		$f.l=662;
		return;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:balance
function _398(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=667;
		v0=a0;
		v1=a1;
		v2=$g133;
		if(v2!=0) {$b=9; break;}
		if(v1!=null) {$b=9; break;}
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 9:
		$f.l=669;
		v3=v1;
		$f.l=670;
		v2=_24a(v3);
		;
		if(v2!=0) {$b=16; break;}
		v14=v3.height;
		if(v14>=2) {$b=18; break;}
	case 16:
		$f.l=671;
		return v1;
	case 18:
		$f.l=674;
		v4=v3.child1;
		$f.l=675;
		v5=v3.child2;
		$f.l=676;
		v2=$g133;
		if(v2!=0) {$b=33; break;}
		v14=v4.id;
		if(0>v14) {$b=30; break;}
		v14=v4.id;
		v15=v0.m_nodeCapacity;
		if(v14<v15) {$b=33; break;}
	case 30:
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 33:
		$f.l=677;
		v2=$g133;
		if(v2!=0) {$b=44; break;}
		v15=v5.id;
		if(0>v15) {$b=41; break;}
		v15=v5.id;
		v14=v0.m_nodeCapacity;
		if(v15<v14) {$b=44; break;}
	case 41:
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 44:
		$f.l=679;
		v6=v4;
		$f.l=680;
		v7=v5;
		$f.l=682;
		v15=v7.height;
		v14=v6.height;
		v8=(v15 - v14)|0;
		$f.l=685;
		if(v8<=1) {$b=194; break;}
		$f.l=686;
		v9=v7.child1;
		$f.l=687;
		v10=v7.child2;
		$f.l=688;
		v11=v9;
		$f.l=689;
		v12=v10;
		$f.l=690;
		v2=$g133;
		if(v2!=0) {$b=69; break;}
		if(v11!=null) {$b=69; break;}
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 69:
		$f.l=691;
		v2=$g133;
		if(v2!=0) {$b=76; break;}
		if(v12!=null) {$b=76; break;}
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 76:
		$f.l=692;
		v2=$g133;
		if(v2!=0) {$b=87; break;}
		v15=v9.id;
		if(0>v15) {$b=84; break;}
		v15=v9.id;
		v14=v0.m_nodeCapacity;
		if(v15<v14) {$b=87; break;}
	case 84:
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 87:
		$f.l=693;
		v2=$g133;
		if(v2!=0) {$b=98; break;}
		v15=v10.id;
		if(0>v15) {$b=95; break;}
		v15=v10.id;
		v14=v0.m_nodeCapacity;
		if(v15<v14) {$b=98; break;}
	case 95:
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 98:
		$f.l=696;
		v7.child1=v1;
		$f.l=697;
		v16=v3.parent;
		v7.parent=v16;
		$f.l=698;
		v3.parent=v5;
		$f.l=701;
		v16=v7.parent;
		if(v16==null) {$b=129; break;}
		$f.l=702;
		v16=v7.parent;
		v16=v16.child1;
		if(v16!=v1) {$b=116; break;}
		$f.l=703;
		v16=v7.parent;
		v16.child1=v5;
		{ $b=131; break; }
	case 116:
		$f.l=705;
		v2=$g133;
		if(v2!=0) {$b=125; break;}
		v16=v7.parent;
		v16=v16.child2;
		if(v16==v1) {$b=125; break;}
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 125:
		$f.l=706;
		v16=v7.parent;
		v16.child2=v5;
		{ $b=131; break; }
	case 129:
		$f.l=709;
		v0.m_root=v5;
	case 131:
		$f.l=713;
		v15=v11.height;
		v14=v12.height;
		if(v15<=v14) {$b=164; break;}
		$f.l=714;
		v7.child2=v9;
		$f.l=715;
		v3.child2=v10;
		$f.l=716;
		v12.parent=v1;
		$f.l=717;
		v17=v3.aabb;
		v18=v6.aabb;
		v19=v12.aabb;
		_24f(v17,v18,v19);
		$f.l=718;
		v19=v7.aabb;
		v18=v3.aabb;
		v17=v11.aabb;
		_24f(v19,v18,v17);
		$f.l=720;
		v15=v6.height;
		v14=v12.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v3.height=v15;
		$f.l=721;
		v15=v3.height;
		v14=v11.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v7.height=v15;
		{ $b=192; break; }
	case 164:
		$f.l=723;
		v7.child2=v10;
		$f.l=724;
		v3.child2=v9;
		$f.l=725;
		v11.parent=v1;
		$f.l=726;
		v19=v3.aabb;
		v18=v6.aabb;
		v17=v11.aabb;
		_24f(v19,v18,v17);
		$f.l=727;
		v19=v7.aabb;
		v18=v3.aabb;
		v17=v12.aabb;
		_24f(v19,v18,v17);
		$f.l=729;
		v15=v6.height;
		v14=v11.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v3.height=v15;
		$f.l=730;
		v15=v3.height;
		v14=v12.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v7.height=v15;
	case 192:
		$f.l=733;
		return v5;
	case 194:
		$f.l=737;
		if(v8>=-1) {$b=322; break;}
		$f.l=738;
		v9=v6.child1;
		$f.l=739;
		v10=v6.child2;
		$f.l=740;
		v11=v9;
		$f.l=741;
		v12=v10;
		$f.l=742;
		v2=$g133;
		if(v2!=0) {$b=215; break;}
		v15=v9.id;
		if(0>v15) {$b=212; break;}
		v15=v9.id;
		v14=v0.m_nodeCapacity;
		if(v15<v14) {$b=215; break;}
	case 212:
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 215:
		$f.l=743;
		v2=$g133;
		if(v2!=0) {$b=226; break;}
		v15=v10.id;
		if(0>v15) {$b=223; break;}
		v15=v10.id;
		v14=v0.m_nodeCapacity;
		if(v15<v14) {$b=226; break;}
	case 223:
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 226:
		$f.l=746;
		v6.child1=v1;
		$f.l=747;
		v16=v3.parent;
		v6.parent=v16;
		$f.l=748;
		v3.parent=v4;
		$f.l=751;
		v16=v6.parent;
		if(v16==null) {$b=257; break;}
		$f.l=752;
		v16=v6.parent;
		v16=v16.child1;
		if(v16!=v1) {$b=244; break;}
		$f.l=753;
		v16=v6.parent;
		v16.child1=v4;
		{ $b=259; break; }
	case 244:
		$f.l=755;
		v2=$g133;
		if(v2!=0) {$b=253; break;}
		v16=v6.parent;
		v16=v16.child2;
		if(v16==v1) {$b=253; break;}
		v13=new java/lang/AssertionError;
		_26(v13);
		throw v13;
	case 253:
		$f.l=756;
		v16=v6.parent;
		v16.child2=v4;
		{ $b=259; break; }
	case 257:
		$f.l=759;
		v0.m_root=v4;
	case 259:
		$f.l=763;
		v15=v11.height;
		v14=v12.height;
		if(v15<=v14) {$b=292; break;}
		$f.l=764;
		v6.child2=v9;
		$f.l=765;
		v3.child1=v10;
		$f.l=766;
		v12.parent=v1;
		$f.l=767;
		v19=v3.aabb;
		v18=v7.aabb;
		v17=v12.aabb;
		_24f(v19,v18,v17);
		$f.l=768;
		v19=v6.aabb;
		v18=v3.aabb;
		v17=v11.aabb;
		_24f(v19,v18,v17);
		$f.l=770;
		v15=v7.height;
		v14=v12.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v3.height=v15;
		$f.l=771;
		v15=v3.height;
		v14=v11.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v6.height=v15;
		{ $b=320; break; }
	case 292:
		$f.l=773;
		v6.child2=v10;
		$f.l=774;
		v3.child1=v9;
		$f.l=775;
		v11.parent=v1;
		$f.l=776;
		v19=v3.aabb;
		v18=v7.aabb;
		v17=v11.aabb;
		_24f(v19,v18,v17);
		$f.l=777;
		v19=v6.aabb;
		v18=v3.aabb;
		v17=v12.aabb;
		_24f(v19,v18,v17);
		$f.l=779;
		v15=v7.height;
		v14=v11.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v3.height=v15;
		$f.l=780;
		v15=v3.height;
		v14=v12.height;
		v15=_22(v15,v14);
		;
		v15=(1 + v15)|0;
		v6.height=v15;
	case 320:
		$f.l=783;
		return v4;
	case 322:
		$f.l=786;
		return v1;
}
}
//org/jbox2d/collision/broadphase/DynamicTree:<clinit>
function _399(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=vm.getClass(9);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g133=v1;
		return;
}
}
//java/lang/Enum:<init>
function _39a(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=14;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=15;
v0.name=v1;
$f.l=16;
v0.ordinal=v2;
$f.l=17;
return;
}
//java/lang/Enum:clone
function _39b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=20;
v0=a0;
v1=new java/lang/CloneNotSupportedException;
_39c(v1);
throw v1;
}
//java/lang/Enum:equals
function _39d(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=35;
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
//java/lang/Enum:hashCode
function _39e(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=39;
v0=a0;
v1=v0.ordinal;
return v1;
}
//java/lang/Enum:toString
function _39f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=43;
v0=a0;
v1=v0.name;
return v1;
}
//java/lang/Enum:compareTo
function _3a0(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=47;
v0=a0;
v1=a1;
v2=v0.ordinal;
v3=v1.ordinal;
v3=(v2 - v3)|0;
return v3;
}
//java/lang/Enum:ordinal
function _4f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=55;
v0=a0;
v1=v0.ordinal;
return v1;
}
//java/lang/Enum:compareTo
function _3a1(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=8;
v0=a0;
v1=a1;
v2=vm.cast(v1,103);
v3=_3a0(v0,v2);
;
return v3;
}
//org/jbox2d/collision/ContactID:getKey
function _3a2(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=63;
v0=a0;
v1=v0.indexA;
v2=(v1 << 24)|0;
v1=v0.indexB;
v3=(v1 << 16)|0;
v3=(v2 | v3)|0;
v1=v0.typeA;
v2=(v1 << 8)|0;
v3=(v3 | v2)|0;
v1=v0.typeB;
v3=(v3 | v1)|0;
return v3;
}
//org/jbox2d/collision/ContactID:isEqual
function _1a4(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=67;
		v0=a0;
		v1=a1;
		v2=_3a2(v0);
		;
		v3=_3a2(v1);
		;
		if(v2!=v3) {$b=8; break;}
		v4=1;
		{ $b=9; break; }
	case 8:
		v4=0;
	case 9:
		return v4;
}
}
//org/jbox2d/collision/ContactID:<init>
function _45(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=70;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/ContactID:set
function _59(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=77;
v0=a0;
v1=a1;
v2=v1.indexA;
v0.indexA=v2;
$f.l=78;
v2=v1.indexB;
v0.indexB=v2;
$f.l=79;
v2=v1.typeA;
v0.typeA=v2;
$f.l=80;
v2=v1.typeB;
v0.typeB=v2;
$f.l=81;
return;
}
//org/jbox2d/collision/ContactID:flip
function _5a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.indexA;
$f.l=85;
v2=v0.indexB;
v0.indexA=v2;
$f.l=86;
v0.indexB=v1;
$f.l=87;
v1=v0.typeA;
$f.l=88;
v2=v0.typeB;
v0.typeA=v2;
$f.l=89;
v0.typeB=v1;
$f.l=90;
return;
}
//org/jbox2d/collision/ContactID:zero
function _51(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=96;
v0=a0;
v0.indexA=0;
$f.l=97;
v0.indexB=0;
$f.l=98;
v0.typeA=0;
$f.l=99;
v0.typeB=0;
$f.l=100;
return;
}
//org/jbox2d/collision/ContactID:compareTo
function _3a3(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=a1;
v2=_3a2(v0);
;
v3=_3a2(v1);
;
v3=(v2 - v3)|0;
return v3;
}
//org/jbox2d/collision/ContactID:compareTo
function _3a4(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
v1=a1;
v2=vm.cast(v1,104);
v3=_3a3(v0,v2);
;
return v3;
}
//org/jbox2d/dynamics/WorldQueryWrapper:<init>
function _f2(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=1539;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/dynamics/WorldQueryWrapper:treeCallback
function _3a5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
$f.l=1541;
v0=a0;
v1=a1;
v3=v0.broadPhase;
v4=_3a6(v3,v1);
;
v2=vm.cast(v4,105);
$f.l=1542;
v5=v0.callback;
v6=v2.fixture;
v7=v5.$c.$it[53](v5,v6);
;
return v7;
}
//org/jbox2d/dynamics/ContactManager:<init>
function _f8(vm,a0,a1,a2){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=50;
v0.m_contactList=null;
$f.l=51;
v0.m_contactCount=0;
$f.l=52;
v3=new org/jbox2d/callbacks/ContactFilter;
_19c(v3);
v0.m_contactFilter=v3;
$f.l=53;
v0.m_contactListener=null;
$f.l=54;
v4=new org/jbox2d/collision/broadphase/BroadPhase;
_3a7(v4,v2);
v0.m_broadPhase=v4;
$f.l=55;
v0.pool=v1;
$f.l=56;
return;
}
//org/jbox2d/dynamics/ContactManager:addPair
function _3a8(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=65;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=vm.cast(v1,105);
		$f.l=66;
		v4=vm.cast(v2,105);
		$f.l=68;
		v5=v3.fixture;
		$f.l=69;
		v6=v4.fixture;
		$f.l=71;
		v7=v3.childIndex;
		$f.l=72;
		v8=v4.childIndex;
		$f.l=74;
		v9=_24(v5);
		;
		$f.l=75;
		v10=_24(v6);
		;
		$f.l=78;
		if(v9!=v10) {$b=23; break;}
		$f.l=79;
		return;
	case 23:
		$f.l=85;
		v11=_105(v10);
		;
	case 25:
		$f.l=86;
		if(v11==null) {$b=59; break;}
		$f.l=87;
		v16=v11.other;
		if(v16!=v9) {$b=56; break;}
		$f.l=88;
		v17=v11.contact;
		v12=_fe(v17);
		;
		$f.l=89;
		v17=v11.contact;
		v13=_ff(v17);
		;
		$f.l=90;
		v17=v11.contact;
		v14=_11e(v17);
		;
		$f.l=91;
		v17=v11.contact;
		v15=_11f(v17);
		;
		$f.l=93;
		if(v12!=v5) {$b=49; break;}
		if(v14!=v7) {$b=49; break;}
		if(v13!=v6) {$b=49; break;}
		if(v15!=v8) {$b=49; break;}
		$f.l=95;
		return;
	case 49:
		$f.l=98;
		if(v12!=v6) {$b=56; break;}
		if(v14!=v8) {$b=56; break;}
		if(v13!=v5) {$b=56; break;}
		if(v15!=v7) {$b=56; break;}
		$f.l=100;
		return;
	case 56:
		$f.l=104;
		v11=v11.next;
		{ $b=25; break; }
	case 59:
		$f.l=108;
		v18=_1e5(v10,v9);
		;
		if(v18!=0) {$b=64; break;}
		$f.l=109;
		return;
	case 64:
		$f.l=113;
		v19=v0.m_contactFilter;
		if(v19==null) {$b=72; break;}
		v19=v0.m_contactFilter;
		v18=_19d(v19,v5,v6);
		;
		if(v18!=0) {$b=72; break;}
		$f.l=114;
		return;
	case 72:
		$f.l=118;
		v20=v0.pool;
		v21=_fc(v20,v5,v7,v6,v8);
		;
		$f.l=119;
		if(v21!=null) {$b=79; break;}
		$f.l=120;
		return;
	case 79:
		$f.l=124;
		v5=_fe(v21);
		;
		$f.l=125;
		v6=_ff(v21);
		;
		$f.l=126;
		v7=_11e(v21);
		;
		$f.l=127;
		v8=_11f(v21);
		;
		$f.l=128;
		v9=_24(v5);
		;
		$f.l=129;
		v10=_24(v6);
		;
		$f.l=132;
		v21.m_prev=null;
		$f.l=133;
		v17=v0.m_contactList;
		v21.m_next=v17;
		$f.l=134;
		v17=v0.m_contactList;
		if(v17==null) {$b=102; break;}
		$f.l=135;
		v17=v0.m_contactList;
		v17.m_prev=v21;
	case 102:
		$f.l=137;
		v0.m_contactList=v21;
		$f.l=142;
		v22=v21.m_nodeA;
		v22.contact=v21;
		$f.l=143;
		v22=v21.m_nodeA;
		v22.other=v10;
		$f.l=145;
		v22=v21.m_nodeA;
		v22.prev=null;
		$f.l=146;
		v22=v21.m_nodeA;
		v23=v9.m_contactList;
		v22.next=v23;
		$f.l=147;
		v23=v9.m_contactList;
		if(v23==null) {$b=124; break;}
		$f.l=148;
		v23=v9.m_contactList;
		v22=v21.m_nodeA;
		v23.prev=v22;
	case 124:
		$f.l=150;
		v23=v21.m_nodeA;
		v9.m_contactList=v23;
		$f.l=153;
		v23=v21.m_nodeB;
		v23.contact=v21;
		$f.l=154;
		v23=v21.m_nodeB;
		v23.other=v9;
		$f.l=156;
		v23=v21.m_nodeB;
		v23.prev=null;
		$f.l=157;
		v23=v21.m_nodeB;
		v22=v10.m_contactList;
		v23.next=v22;
		$f.l=158;
		v23=v10.m_contactList;
		if(v23==null) {$b=147; break;}
		$f.l=159;
		v23=v10.m_contactList;
		v22=v21.m_nodeB;
		v23.prev=v22;
	case 147:
		$f.l=161;
		v23=v21.m_nodeB;
		v10.m_contactList=v23;
		$f.l=164;
		v18=_8f(v5);
		;
		if(v18!=0) {$b=159; break;}
		v18=_8f(v6);
		;
		if(v18!=0) {$b=159; break;}
		$f.l=165;
		_100(v9,1);
		$f.l=166;
		_100(v10,1);
	case 159:
		$f.l=169;
		v24=v0;
		v25=v0.m_contactCount;
		v25=(v25 + 1)|0;
		v0.m_contactCount=v25;
		$f.l=170;
		return;
}
}
//org/jbox2d/dynamics/ContactManager:findNewContacts
function _109(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=173;
v0=a0;
v1=v0.m_broadPhase;
_3a9(v1,v0);
$f.l=174;
return;
}
//org/jbox2d/dynamics/ContactManager:destroy
function _3aa(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=177;
		v0=a0;
		v1=a1;
		v2=_fe(v1);
		;
		$f.l=178;
		v3=_ff(v1);
		;
		$f.l=179;
		v4=_24(v2);
		;
		$f.l=180;
		v5=_24(v3);
		;
		$f.l=182;
		v6=v0.m_contactListener;
		if(v6==null) {$b=18; break;}
		v7=_117(v1);
		;
		if(v7==0) {$b=18; break;}
		$f.l=183;
		v6=v0.m_contactListener;
		v6.$c.$it[49](v6,v1);
	case 18:
		$f.l=187;
		v8=v1.m_prev;
		if(v8==null) {$b=25; break;}
		$f.l=188;
		v8=v1.m_prev;
		v9=v1.m_next;
		v8.m_next=v9;
	case 25:
		$f.l=191;
		v9=v1.m_next;
		if(v9==null) {$b=32; break;}
		$f.l=192;
		v9=v1.m_next;
		v8=v1.m_prev;
		v9.m_prev=v8;
	case 32:
		$f.l=195;
		v9=v0.m_contactList;
		if(v1!=v9) {$b=38; break;}
		$f.l=196;
		v9=v1.m_next;
		v0.m_contactList=v9;
	case 38:
		$f.l=200;
		v10=v1.m_nodeA;
		v10=v10.prev;
		if(v10==null) {$b=48; break;}
		$f.l=201;
		v10=v1.m_nodeA;
		v10=v10.prev;
		v11=v1.m_nodeA;
		v11=v11.next;
		v10.next=v11;
	case 48:
		$f.l=204;
		v11=v1.m_nodeA;
		v11=v11.next;
		if(v11==null) {$b=58; break;}
		$f.l=205;
		v11=v1.m_nodeA;
		v11=v11.next;
		v10=v1.m_nodeA;
		v10=v10.prev;
		v11.prev=v10;
	case 58:
		$f.l=208;
		v11=v1.m_nodeA;
		v10=v4.m_contactList;
		if(v11!=v10) {$b=66; break;}
		$f.l=209;
		v11=v1.m_nodeA;
		v11=v11.next;
		v4.m_contactList=v11;
	case 66:
		$f.l=213;
		v11=v1.m_nodeB;
		v11=v11.prev;
		if(v11==null) {$b=76; break;}
		$f.l=214;
		v11=v1.m_nodeB;
		v11=v11.prev;
		v10=v1.m_nodeB;
		v10=v10.next;
		v11.next=v10;
	case 76:
		$f.l=217;
		v11=v1.m_nodeB;
		v11=v11.next;
		if(v11==null) {$b=86; break;}
		$f.l=218;
		v11=v1.m_nodeB;
		v11=v11.next;
		v10=v1.m_nodeB;
		v10=v10.prev;
		v11.prev=v10;
	case 86:
		$f.l=221;
		v11=v1.m_nodeB;
		v10=v5.m_contactList;
		if(v11!=v10) {$b=94; break;}
		$f.l=222;
		v11=v1.m_nodeB;
		v11=v11.next;
		v5.m_contactList=v11;
	case 94:
		$f.l=226;
		v12=v0.pool;
		_fd(v12,v1);
		$f.l=227;
		v13=v0;
		v14=v0.m_contactCount;
		v14=(v14 - 1)|0;
		v0.m_contactCount=v14;
		$f.l=228;
		return;
}
}
//org/jbox2d/dynamics/ContactManager:collide
function _10a(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=236;
		v0=a0;
		v1=v0.m_contactList;
	case 3:
		$f.l=237;
		if(v1==null) {$b=106; break;}
		$f.l=238;
		v2=_fe(v1);
		;
		$f.l=239;
		v3=_ff(v1);
		;
		$f.l=240;
		v4=_11e(v1);
		;
		$f.l=241;
		v5=_11f(v1);
		;
		$f.l=242;
		v6=_24(v2);
		;
		$f.l=243;
		v7=_24(v3);
		;
		$f.l=246;
		v14=v1.m_flags;
		v14=(v14 & 8)|0;
		if(v14!=8) {$b=51; break;}
		$f.l=248;
		v15=_1e5(v7,v6);
		;
		if(v15!=0) {$b=32; break;}
		$f.l=249;
		v8=v1;
		$f.l=250;
		v1=_1a2(v8);
		;
		$f.l=251;
		_3aa(v0,v8);
		$f.l=252;
		{ $b=3; break; }
	case 32:
		$f.l=256;
		v16=v0.m_contactFilter;
		if(v16==null) {$b=46; break;}
		v16=v0.m_contactFilter;
		v15=_19d(v16,v2,v3);
		;
		if(v15!=0) {$b=46; break;}
		$f.l=257;
		v8=v1;
		$f.l=258;
		v1=_1a2(v8);
		;
		$f.l=259;
		_3aa(v0,v8);
		$f.l=260;
		{ $b=3; break; }
	case 46:
		$f.l=264;
		v17=v1;
		v14=v1.m_flags;
		v14=(v14 & -9)|0;
		v1.m_flags=v14;
	case 51:
		$f.l=267;
		v15=_111(v6);
		;
		if(v15==0) {$b=59; break;}
		v18=v6.m_type;
		v19=$g37;
		if(v18==v19) {$b=59; break;}
		v15=1;
		{ $b=60; break; }
	case 59:
		v15=0;
	case 60:
		v20=v15;
		$f.l=268;
		v15=_111(v7);
		;
		if(v15==0) {$b=69; break;}
		v19=v7.m_type;
		v18=$g37;
		if(v19==v18) {$b=69; break;}
		v15=1;
		{ $b=70; break; }
	case 69:
		v15=0;
	case 70:
		v9=v15;
		$f.l=271;
		if(v20!=0) {$b=78; break;}
		if(v9!=0) {$b=78; break;}
		$f.l=272;
		v1=_1a2(v1);
		;
		$f.l=273;
		{ $b=3; break; }
	case 78:
		$f.l=276;
		v21=v2.m_proxies;
		v22=v21[v4];
		v10=v22.proxyId;
		$f.l=277;
		v21=v3.m_proxies;
		v22=v21[v5];
		v11=v22.proxyId;
		$f.l=278;
		v23=v0.m_broadPhase;
		v12=_3ab(v23,v10,v11);
		;
		$f.l=281;
		if(v12!=0) {$b=99; break;}
		$f.l=282;
		v13=v1;
		$f.l=283;
		v1=_1a2(v13);
		;
		$f.l=284;
		_3aa(v0,v13);
		$f.l=285;
		{ $b=3; break; }
	case 99:
		$f.l=289;
		v24=v0.m_contactListener;
		_123(v1,v24);
		$f.l=290;
		v1=_1a2(v1);
		;
		$f.l=291;
		{ $b=3; break; }
	case 106:
		$f.l=292;
		return;
}
}
//org/jbox2d/collision/broadphase/BroadPhase:<init>
function _3a7(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=61;
		v0=a0;
		v1=a1;
		_0(v0);
		$f.l=62;
		v0.m_proxyCount=0;
		$f.l=64;
		v0.m_pairCapacity=16;
		$f.l=65;
		v0.m_pairCount=0;
		$f.l=66;
		v4=v0.m_pairCapacity;
		v5=newArray(106,v4);
		v0.m_pairBuffer=v5;
		$f.l=67;
		v2=0;
	case 16:
		v4=v0.m_pairCapacity;
		if(v2>=v4) {$b=26; break;}
		$f.l=68;
		v5=v0.m_pairBuffer;
		v3=new org/jbox2d/collision/broadphase/Pair;
		_3ac(v3);
		v5[v2]=v3;
		$f.l=67;
		v2=(v2 + 1)|0;
		{ $b=16; break; }
	case 26:
		$f.l=71;
		v0.m_moveCapacity=16;
		$f.l=72;
		v0.m_moveCount=0;
		$f.l=73;
		v4=v0.m_moveCapacity;
		v6=newArray(6,v4);
		v0.m_moveBuffer=v6;
		$f.l=75;
		v0.m_tree=v1;
		$f.l=76;
		v0.m_queryProxyId=-1;
		$f.l=77;
		return;
}
}
//org/jbox2d/collision/broadphase/BroadPhase:createProxy
function _96(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=87;
v0=a0;
v1=a1;
v2=a2;
v4=v0.m_tree;
v3=v4.$c.$it[25](v4,v1,v2);
;
$f.l=88;
v5=v0;
v6=v0.m_proxyCount;
v6=(v6 + 1)|0;
v0.m_proxyCount=v6;
$f.l=89;
_3ad(v0,v3);
$f.l=90;
return v3;
}
//org/jbox2d/collision/broadphase/BroadPhase:moveProxy
function _98(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=109;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v5=v0.m_tree;
		v4=v5.$c.$it[24](v5,v1,v2,v3);
		;
		$f.l=110;
		if(v4==0) {$b=11; break;}
		$f.l=111;
		_3ad(v0,v1);
	case 11:
		$f.l=113;
		return;
}
}
//org/jbox2d/collision/broadphase/BroadPhase:getUserData
function _3a6(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=120;
v0=a0;
v1=a1;
v2=v0.m_tree;
v3=v2.$c.$it[22](v2,v1);
;
return v3;
}
//org/jbox2d/collision/broadphase/BroadPhase:testOverlap
function _3ab(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=129;
		v0=a0;
		v1=a1;
		v2=a2;
		v5=v0.m_tree;
		v3=v5.$c.$it[21](v5,v1);
		;
		$f.l=130;
		v5=v0.m_tree;
		v4=v5.$c.$it[21](v5,v2);
		;
		$f.l=131;
		v6=v4.lowerBound;
		v7=v6.x;
		v6=v3.upperBound;
		v8=v6.x;
		v8=v7 - v8;
		v9=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v9>0) {$b=24; break;}
		v6=v4.lowerBound;
		v8=v6.y;
		v6=v3.upperBound;
		v7=v6.y;
		v8=v8 - v7;
		v9=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v9<=0) {$b=26; break;}
	case 24:
		$f.l=132;
		return 0;
	case 26:
		$f.l=135;
		v6=v3.lowerBound;
		v8=v6.x;
		v6=v4.upperBound;
		v7=v6.x;
		v8=v8 - v7;
		v9=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v9>0) {$b=41; break;}
		v6=v3.lowerBound;
		v8=v6.y;
		v6=v4.upperBound;
		v7=v6.y;
		v8=v8 - v7;
		v9=(v8 != v8 || 0.0 != 0.0) ? -1 : (v8 > 0.0) - (v8 < 0.0);
		if(v9<=0) {$b=43; break;}
	case 41:
		$f.l=136;
		return 0;
	case 43:
		$f.l=139;
		return 1;
}
}
//org/jbox2d/collision/broadphase/BroadPhase:updatePairs
function _3a9(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=163;
		v0=a0;
		v1=a1;
		v0.m_pairCount=0;
		$f.l=166;
		v2=0;
	case 6:
		v7=v0.m_moveCount;
		if(v2>=v7) {$b=27; break;}
		$f.l=167;
		v8=v0.m_moveBuffer;
		v7=v8[v2];
		v0.m_queryProxyId=v7;
		$f.l=168;
		v7=v0.m_queryProxyId;
		if(v7!=-1) {$b=17; break;}
		$f.l=169;
		{ $b=24; break; }
	case 17:
		$f.l=174;
		v9=v0.m_tree;
		v7=v0.m_queryProxyId;
		v3=v9.$c.$it[21](v9,v7);
		;
		$f.l=178;
		v9=v0.m_tree;
		v9.$c.$it[23](v9,v0,v3);
	case 24:
		$f.l=166;
		v2=(v2 + 1)|0;
		{ $b=6; break; }
	case 27:
		$f.l=183;
		v0.m_moveCount=0;
		$f.l=186;
		v10=v0.m_pairBuffer;
		v7=v0.m_pairCount;
		_1ec(v10,0,v7);
		$f.l=189;
		v2=0;
	case 35:
		$f.l=190;
		v7=v0.m_pairCount;
		if(v2>=v7) {$b=74; break;}
		$f.l=191;
		v10=v0.m_pairBuffer;
		v11=v10[v2];
		$f.l=192;
		v9=v0.m_tree;
		v7=v11.proxyIdA;
		v4=v9.$c.$it[22](v9,v7);
		;
		$f.l=193;
		v9=v0.m_tree;
		v7=v11.proxyIdB;
		v5=v9.$c.$it[22](v9,v7);
		;
		$f.l=196;
		v1.$c.$it[20](v1,v4,v5);
		$f.l=197;
		v2=(v2 + 1)|0;
	case 53:
		$f.l=200;
		v7=v0.m_pairCount;
		if(v2>=v7) {$b=72; break;}
		$f.l=201;
		v10=v0.m_pairBuffer;
		v6=v10[v2];
		$f.l=202;
		v7=v6.proxyIdA;
		v12=v11.proxyIdA;
		if(v7!=v12) {$b=72; break;}
		v12=v6.proxyIdB;
		v7=v11.proxyIdB;
		if(v12==v7) {$b=68; break;}
		$f.l=203;
		{ $b=72; break; }
	case 68:
		$f.l=206;
		v2=(v2 + 1)|0;
		$f.l=207;
		{ $b=53; break; }
	case 72:
		$f.l=208;
		{ $b=35; break; }
	case 74:
		$f.l=212;
		return;
}
}
//org/jbox2d/collision/broadphase/BroadPhase:bufferMove
function _3ad(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=256;
		v0=a0;
		v1=a1;
		v3=v0.m_moveCount;
		v4=v0.m_moveCapacity;
		if(v3!=v4) {$b=21; break;}
		$f.l=257;
		v2=v0.m_moveBuffer;
		$f.l=258;
		v5=v0;
		v4=v0.m_moveCapacity;
		v4=(v4 * 2)|0;
		v0.m_moveCapacity=v4;
		$f.l=259;
		v4=v0.m_moveCapacity;
		v6=newArray(6,v4);
		v0.m_moveBuffer=v6;
		$f.l=260;
		v6=v0.m_moveBuffer;
		v4=v2.len;
		_15(v2,0,v6,0,v4);
	case 21:
		$f.l=263;
		v6=v0.m_moveBuffer;
		v4=v0.m_moveCount;
		v6[v4]=v1;
		$f.l=264;
		v5=v0;
		v4=v0.m_moveCount;
		v4=(v4 + 1)|0;
		v0.m_moveCount=v4;
		$f.l=265;
		return;
}
}
//org/jbox2d/collision/broadphase/BroadPhase:treeCallback
function _3ae(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=281;
		v0=a0;
		v1=a1;
		v4=v0.m_queryProxyId;
		if(v1!=v4) {$b=7; break;}
		$f.l=283;
		return 1;
	case 7:
		$f.l=287;
		v4=v0.m_pairCount;
		v5=v0.m_pairCapacity;
		if(v4!=v5) {$b=38; break;}
		$f.l=288;
		v2=v0.m_pairBuffer;
		$f.l=289;
		v6=v0;
		v5=v0.m_pairCapacity;
		v5=(v5 * 2)|0;
		v0.m_pairCapacity=v5;
		$f.l=290;
		v5=v0.m_pairCapacity;
		v7=newArray(106,v5);
		v0.m_pairBuffer=v7;
		$f.l=291;
		v7=v0.m_pairBuffer;
		v5=v2.len;
		_15(v2,0,v7,0,v5);
		$f.l=292;
		v3=v2.len;
	case 28:
		v5=v0.m_pairCapacity;
		if(v3>=v5) {$b=38; break;}
		$f.l=293;
		v7=v0.m_pairBuffer;
		v8=new org/jbox2d/collision/broadphase/Pair;
		_3ac(v8);
		v7[v3]=v8;
		$f.l=292;
		v3=(v3 + 1)|0;
		{ $b=28; break; }
	case 38:
		$f.l=297;
		v5=v0.m_queryProxyId;
		if(v1>=v5) {$b=53; break;}
		$f.l=299;
		v7=v0.m_pairBuffer;
		v5=v0.m_pairCount;
		v8=v7[v5];
		v8.proxyIdA=v1;
		$f.l=300;
		v7=v0.m_pairBuffer;
		v5=v0.m_pairCount;
		v8=v7[v5];
		v5=v0.m_queryProxyId;
		v8.proxyIdB=v5;
		{ $b=64; break; }
	case 53:
		$f.l=303;
		v7=v0.m_pairBuffer;
		v5=v0.m_pairCount;
		v8=v7[v5];
		v5=v0.m_queryProxyId;
		v8.proxyIdA=v5;
		$f.l=304;
		v7=v0.m_pairBuffer;
		v5=v0.m_pairCount;
		v8=v7[v5];
		v8.proxyIdB=v1;
	case 64:
		$f.l=307;
		v6=v0;
		v5=v0.m_pairCount;
		v5=(v5 + 1)|0;
		v0.m_pairCount=v5;
		$f.l=308;
		return 1;
}
}
//org/jbox2d/common/Mat22:toString
function _3af(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=39;
v0=a0;
v1=$str70;
$f.l=40;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,v1);
;
v2=_b(v2,$str69);
;
v3=v0.ex;
v4=v3.x;
v2=_2ff(v2,v4);
;
v2=_b(v2,$str116);
;
v3=v0.ey;
v4=v3.x;
v2=_2ff(v2,v4);
;
v2=_b(v2,$str128);
;
v1=v2.$c.$vt[0](v2);
;
$f.l=41;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,v1);
;
v2=_b(v2,$str69);
;
v3=v0.ex;
v4=v3.y;
v2=_2ff(v2,v4);
;
v2=_b(v2,$str116);
;
v3=v0.ey;
v4=v3.y;
v2=_2ff(v2,v4);
;
v2=_b(v2,$str87);
;
v1=v2.$c.$vt[0](v2);
;
$f.l=42;
return v1;
}
//org/jbox2d/common/Mat22:<init>
function _235(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=49;
v0=a0;
_0(v0);
$f.l=50;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.ex=v1;
$f.l=51;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.ey=v1;
$f.l=52;
return;
}
//org/jbox2d/common/Mat22:<init>
function _3b0(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=a1;
v2=a2;
_0(v0);
$f.l=61;
v3=_70(v1);
;
v0.ex=v3;
$f.l=62;
v3=_70(v2);
;
v0.ey=v3;
$f.l=63;
return;
}
//org/jbox2d/common/Mat22:clone
function _3b1(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=new org/jbox2d/common/Mat22;
v2=v0.ex;
v3=v0.ey;
_3b0(v1,v2,v3);
return v1;
}
//org/jbox2d/common/Mat22:setZero
function _27(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=134;
v0=a0;
v1=v0.ex;
v1.x=0.0;
$f.l=135;
v1=v0.ey;
v1.x=0.0;
$f.l=136;
v1=v0.ex;
v1.y=0.0;
$f.l=137;
v1=v0.ey;
v1.y=0.0;
$f.l=138;
return;
}
//org/jbox2d/common/Mat22:invertToOut
function _31(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=191;
v0=a0;
v1=a1;
v7=v0.ex;
v2=v7.x;
v7=v0.ey;
v3=v7.x;
v7=v0.ex;
v4=v7.y;
v7=v0.ey;
v5=v7.y;
$f.l=192;
v8=v2 * v5;
v9=v3 * v4;
v6=v8 - v9;
$f.l=194;
v6=1.0 / v6;
$f.l=195;
v7=v1.ex;
v9=v6 * v5;
v7.x=v9;
$f.l=196;
v7=v1.ey;
v9=-v6;
v9=v9 * v3;
v7.x=v9;
$f.l=197;
v7=v1.ex;
v9=-v6;
v9=v9 * v4;
v7.y=v9;
$f.l=198;
v7=v1.ey;
v9=v6 * v2;
v7.y=v9;
$f.l=199;
return;
}
//org/jbox2d/common/Mat22:solveToOut
function _26a(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=424;
		v0=a0;
		v1=a1;
		v2=a2;
		v9=v0.ex;
		v3=v9.x;
		v9=v0.ey;
		v4=v9.x;
		v9=v0.ex;
		v5=v9.y;
		v9=v0.ey;
		v6=v9.y;
		$f.l=425;
		v10=v3 * v6;
		v11=v4 * v5;
		v7=v10 - v11;
		$f.l=426;
		v12=(v7 != v7 || 0.0 != 0.0) ? -1 : (v7 > 0.0) - (v7 < 0.0);
		if(v12==0) {$b=21; break;}
		$f.l=427;
		v7=1.0 / v7;
	case 21:
		$f.l=429;
		v11=v1.y;
		v11=v3 * v11;
		v10=v1.x;
		v10=v5 * v10;
		v11=v11 - v10;
		v8=v7 * v11;
		$f.l=430;
		v11=v1.x;
		v11=v6 * v11;
		v10=v1.y;
		v10=v4 * v10;
		v11=v11 - v10;
		v11=v7 * v11;
		v2.x=v11;
		$f.l=431;
		v2.y=v8;
		$f.l=432;
		return;
}
}
//org/jbox2d/common/Mat22:mulToOutUnsafe
function _34(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=446;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g134;
		if(v3!=0) {$b=10; break;}
		if(v1!=v2) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=447;
		v5=v0.ex;
		v6=v5.x;
		v7=v1.x;
		v7=v6 * v7;
		v5=v0.ey;
		v6=v5.x;
		v8=v1.y;
		v8=v6 * v8;
		v8=v7 + v8;
		v2.x=v8;
		$f.l=448;
		v5=v0.ex;
		v8=v5.y;
		v7=v1.x;
		v8=v8 * v7;
		v5=v0.ey;
		v7=v5.y;
		v6=v1.y;
		v7=v7 * v6;
		v8=v8 + v7;
		v2.y=v8;
		$f.l=449;
		return;
}
}
//org/jbox2d/common/Mat22:hashCode
function _3b2(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=561;
		v0=a0;
		v1=31;
		$f.l=562;
		v2=1;
		$f.l=563;
		v3=(31 * v2)|0;
		v4=v0.ex;
		if(v4!=null) {$b=11; break;}
		v5=0;
		{ $b=13; break; }
	case 11:
		v4=v0.ex;
		v5=v4.$c.$vt[2](v4);
		;
	case 13:
		v2=(v3 + v5)|0;
		$f.l=564;
		v5=(31 * v2)|0;
		v4=v0.ey;
		if(v4!=null) {$b=20; break;}
		v3=0;
		{ $b=22; break; }
	case 20:
		v4=v0.ey;
		v3=v4.$c.$vt[2](v4);
		;
	case 22:
		v2=(v5 + v3)|0;
		$f.l=565;
		return v2;
}
}
//org/jbox2d/common/Mat22:equals
function _3b3(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=570;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=5; break;}
		return 1;
	case 5:
		$f.l=571;
		if(v1!=null) {$b=8; break;}
		return 0;
	case 8:
		$f.l=572;
		v3=_2(v0);
		;
		v4=_2(v1);
		;
		if(v3==v4) {$b=13; break;}
		return 0;
	case 13:
		$f.l=573;
		v2=vm.cast(v1,97);
		$f.l=574;
		v5=v0.ex;
		if(v5!=null) {$b=22; break;}
		$f.l=575;
		v5=v2.ex;
		if(v5==null) {$b=28; break;}
		return 0;
	case 22:
		$f.l=576;
		v5=v0.ex;
		v6=v2.ex;
		v7=v5.$c.$vt[1](v5,v6);
		;
		if(v7!=0) {$b=28; break;}
		return 0;
	case 28:
		$f.l=577;
		v6=v0.ey;
		if(v6!=null) {$b=35; break;}
		$f.l=578;
		v6=v2.ey;
		if(v6==null) {$b=41; break;}
		return 0;
	case 35:
		$f.l=579;
		v6=v0.ey;
		v5=v2.ey;
		v7=v6.$c.$vt[1](v6,v5);
		;
		if(v7!=0) {$b=41; break;}
		return 0;
	case 41:
		$f.l=580;
		return 1;
}
}
//org/jbox2d/common/Mat22:clone
function _3b4(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=_3b1(v0);
;
return v1;
}
//org/jbox2d/common/Mat22:<clinit>
function _3b5(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=31;
		v0=vm.getClass(97);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g134=v1;
		return;
}
}
//java/lang/Number:<init>
function _3b6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=23;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/broadphase/Pair:<init>
function _3ac(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
_0(v0);
return;
}
//org/jbox2d/collision/broadphase/Pair:compareTo
function _3b7(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=36;
		v0=a0;
		v1=a1;
		v2=v0.proxyIdA;
		v3=v1.proxyIdA;
		if(v2>=v3) {$b=8; break;}
		$f.l=37;
		return -1;
	case 8:
		$f.l=40;
		v3=v0.proxyIdA;
		v2=v1.proxyIdA;
		if(v3!=v2) {$b=25; break;}
		$f.l=41;
		v3=v0.proxyIdB;
		v2=v1.proxyIdB;
		if(v3>=v2) {$b=18; break;}
		v4=-1;
		{ $b=24; break; }
	case 18:
		v3=v0.proxyIdB;
		v2=v1.proxyIdB;
		if(v3!=v2) {$b=23; break;}
		v4=0;
		{ $b=24; break; }
	case 23:
		v4=1;
	case 24:
		return v4;
	case 25:
		$f.l=44;
		return 1;
}
}
//org/jbox2d/collision/broadphase/Pair:compareTo
function _3b8(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
v2=vm.cast(v1,107);
v3=_3b7(v0,v2);
;
return v3;
}
//java/lang/StackTraceElement:<init>
function _3b9(vm,a0,a1,a2,a3,a4){
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
function _3ba(vm,a0,a1,a2,a3,a4){
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
		_3b9(v0,v3,v4,v1,v2);
		$f.l=42;
		if(v1==null) {$b=10; break;}
		if(v2!=null) {$b=14; break;}
	case 10:
		$f.l=43;
		v5=new java/lang/NullPointerException;
		_1bc(v5,$str129);
		throw v5;
	case 14:
		$f.l=45;
		return;
}
}
//java/lang/StackTraceElement:getFileName
function _3bb(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=v0.fileName;
return v1;
}
//java/lang/StackTraceElement:getLineNumber
function _3bc(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=v0.lineNumber;
return v1;
}
//java/lang/StackTraceElement:getClassName
function _3bd(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
v1=v0.declaringClass;
return v1;
}
//java/lang/StackTraceElement:getMethodName
function _3be(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=v0.methodName;
return v1;
}
//java/lang/StackTraceElement:toString
function _3bf(vm,a0){
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
		v1=_23b(v2,46);
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
		v1=_23b(v2,40);
		;
		v4=v0.lineNumber;
		v1=_c(v1,v4);
		;
		v1=_23b(v1,41);
		;
	case 30:
		$f.l=78;
		v3=v2.$c.$vt[0](v2);
		;
		return v3;
}
}
//java/lang/StackTraceElement:equals
function _3c0(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=82;
		v0=a0;
		v1=a1;
		v3=vm.is(v1,108);
		if(v3!=0) {$b=7; break;}
		$f.l=83;
		return 0;
	case 7:
		$f.l=85;
		v2=vm.cast(v1,108);
		$f.l=86;
		v4=v0.fileName;
		v5=v2.fileName;
		v3=_3c1(v4,v5);
		;
		if(v3==0) {$b=29; break;}
		v6=v0.lineNumber;
		v7=v2.lineNumber;
		if(v6!=v7) {$b=29; break;}
		v5=v0.declaringClass;
		v4=v2.declaringClass;
		$f.l=88;
		v3=_3c1(v5,v4);
		;
		if(v3==0) {$b=29; break;}
		v5=v0.methodName;
		v4=v2.methodName;
		$f.l=89;
		v3=_3c1(v5,v4);
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
function _3c2(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=93;
v0=a0;
v1=v0.fileName;
v2=_3c3(v1);
;
v3=v0.lineNumber;
v3=(v2 ^ v3)|0;
v1=v0.declaringClass;
v2=_3c3(v1);
;
v3=(v3 ^ v2)|0;
v1=v0.methodName;
$f.l=94;
v2=_3c3(v1);
;
v3=(v3 ^ v2)|0;
$f.l=93;
return v3;
}
//java/lang/StackTraceElement:equals
function _3c1(vm,a0,a1){
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
function _3c3(vm,a0){
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
//org/jbox2d/pooling/normal/MutableStack:<init>
function _3c4(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
_0(v0);
$f.l=35;
v0.index=0;
$f.l=36;
v0.stack=null;
$f.l=37;
v0.index=0;
$f.l=38;
_3c5(v0,v1);
$f.l=39;
return;
}
//org/jbox2d/pooling/normal/MutableStack:extendStack
function _3c5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=42;
		v0=a0;
		v1=a1;
		v2=newArray(0,v1);
		$f.l=43;
		v4=v0.stack;
		if(v4==null) {$b=11; break;}
		$f.l=44;
		v4=v0.stack;
		v5=v0.size;
		_15(v4,0,v2,0,v5);
	case 11:
		$f.l=46;
		v3=0;
	case 13:
		v5=v2.len;
		if(v3>=v5) {$b=21; break;}
		$f.l=47;
		v6=v0.$c.$vt[8](v0);
		;
		v2[v3]=v6;
		$f.l=46;
		v3=(v3 + 1)|0;
		{ $b=13; break; }
	case 21:
		$f.l=49;
		v0.stack=v2;
		$f.l=50;
		v5=v2.len;
		v0.size=v5;
		$f.l=51;
		return;
}
}
//org/jbox2d/pooling/normal/MutableStack:pop
function _3c6(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=55;
		v0=a0;
		v1=v0.index;
		v2=v0.size;
		if(v1<v2) {$b=9; break;}
		$f.l=56;
		v2=v0.size;
		v2=(v2 * 2)|0;
		_3c5(v0,v2);
	case 9:
		$f.l=58;
		v3=v0.stack;
		v4=v0;
		v1=v0.index;
		v2=(v1 + 1)|0;
		v0.index=v2;
		v5=v3[v1];
		return v5;
}
}
//org/jbox2d/pooling/normal/MutableStack:push
function _3c7(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=62;
		v0=a0;
		v1=a1;
		v2=$g135;
		if(v2!=0) {$b=10; break;}
		v3=v0.index;
		if(v3>0) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=63;
		v5=v0.stack;
		v6=v0;
		v3=v0.index;
		v3=(v3 - 1)|0;
		v0.index=v3;
		v5[v3]=v1;
		$f.l=64;
		return;
}
}
//org/jbox2d/pooling/normal/MutableStack:<clinit>
function _3c8(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=28;
		v0=vm.getClass(109);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g135=v1;
		return;
}
}
//org/jbox2d/common/Transform:<init>
function _1c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=a0;
_0(v0);
$f.l=45;
v1=new org/jbox2d/common/Vec2;
_1a(v1);
v0.p=v1;
$f.l=46;
v2=new org/jbox2d/common/Rot;
_2b4(v2);
v0.q=v2;
$f.l=47;
return;
}
//org/jbox2d/common/Transform:set
function _4a(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=63;
v0=a0;
v1=a1;
v2=v0.p;
v3=v1.p;
v3=_28(v2,v3);
;
$f.l=64;
v4=v0.q;
v5=v1.q;
v5=_3c9(v4,v5);
;
$f.l=65;
return v0;
}
//org/jbox2d/common/Transform:mulToOut
function _58(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
$f.l=90;
v0=a0;
v1=a1;
v2=a2;
v4=v0.q;
v5=v4.s;
v6=v1.x;
v6=v5 * v6;
v4=v0.q;
v5=v4.c;
v7=v1.y;
v7=v5 * v7;
v7=v6 + v7;
v8=v0.p;
v6=v8.y;
v3=v7 + v6;
$f.l=91;
v4=v0.q;
v7=v4.c;
v6=v1.x;
v7=v7 * v6;
v4=v0.q;
v6=v4.s;
v5=v1.y;
v6=v6 * v5;
v7=v7 - v6;
v8=v0.p;
v6=v8.x;
v7=v7 + v6;
v2.x=v7;
$f.l=92;
v2.y=v3;
$f.l=93;
return;
}
//org/jbox2d/common/Transform:mulToOutUnsafe
function _5c(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=96;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g136;
		if(v3!=0) {$b=10; break;}
		if(v1!=v2) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=97;
		v5=v0.q;
		v6=v5.c;
		v7=v1.x;
		v7=v6 * v7;
		v5=v0.q;
		v6=v5.s;
		v8=v1.y;
		v8=v6 * v8;
		v8=v7 - v8;
		v9=v0.p;
		v7=v9.x;
		v8=v8 + v7;
		v2.x=v8;
		$f.l=98;
		v5=v0.q;
		v8=v5.s;
		v7=v1.x;
		v8=v8 * v7;
		v5=v0.q;
		v7=v5.c;
		v6=v1.y;
		v7=v7 * v6;
		v8=v8 + v7;
		v9=v0.p;
		v7=v9.y;
		v8=v8 + v7;
		v2.y=v8;
		$f.l=99;
		return;
}
}
//org/jbox2d/common/Transform:mulTransToOut
function _1e2(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
$f.l=108;
v0=a0;
v1=a1;
v2=a2;
v6=v1.x;
v7=v0.p;
v8=v7.x;
v3=v6 - v8;
$f.l=109;
v8=v1.y;
v7=v0.p;
v6=v7.y;
v4=v8 - v6;
$f.l=110;
v9=v0.q;
v8=v9.s;
v8=-v8;
v8=v8 * v3;
v9=v0.q;
v6=v9.c;
v6=v6 * v4;
v5=v8 + v6;
$f.l=111;
v9=v0.q;
v8=v9.c;
v8=v8 * v3;
v9=v0.q;
v6=v9.s;
v6=v6 * v4;
v8=v8 + v6;
v2.x=v8;
$f.l=112;
v2.y=v5;
$f.l=113;
return;
}
//org/jbox2d/common/Transform:mulTransToOutUnsafe
function _5d(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=116;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g136;
		if(v3!=0) {$b=10; break;}
		if(v1!=v2) {$b=10; break;}
		v6=new java/lang/AssertionError;
		_26(v6);
		throw v6;
	case 10:
		$f.l=117;
		v7=v1.x;
		v8=v0.p;
		v9=v8.x;
		v4=v7 - v9;
		$f.l=118;
		v9=v1.y;
		v8=v0.p;
		v7=v8.y;
		v5=v9 - v7;
		$f.l=119;
		v10=v0.q;
		v9=v10.c;
		v9=v9 * v4;
		v10=v0.q;
		v7=v10.s;
		v7=v7 * v5;
		v9=v9 + v7;
		v2.x=v9;
		$f.l=120;
		v10=v0.q;
		v9=v10.s;
		v9=-v9;
		v9=v9 * v4;
		v10=v0.q;
		v7=v10.c;
		v7=v7 * v5;
		v9=v9 + v7;
		v2.y=v9;
		$f.l=121;
		return;
}
}
//org/jbox2d/common/Transform:mulTransToOutUnsafe
function _24c(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=165;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=$g136;
		if(v3!=0) {$b=10; break;}
		if(v2!=v0) {$b=10; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 10:
		$f.l=166;
		v3=$g136;
		if(v3!=0) {$b=17; break;}
		if(v2!=v1) {$b=17; break;}
		v4=new java/lang/AssertionError;
		_26(v4);
		throw v4;
	case 17:
		$f.l=167;
		v5=v0.q;
		v6=v1.q;
		v7=v2.q;
		_3ca(v5,v6,v7);
		$f.l=168;
		v8=$g137;
		v9=v1.p;
		v9=_28(v8,v9);
		;
		v8=v0.p;
		v9=_2e(v9,v8);
		;
		$f.l=169;
		v7=v0.q;
		v9=$g137;
		v8=v2.p;
		_230(v7,v9,v8);
		$f.l=170;
		return;
}
}
//org/jbox2d/common/Transform:toString
function _3cb(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=174;
v0=a0;
v1=$str130;
$f.l=175;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,v1);
;
v2=_b(v2,$str131);
;
v3=v0.p;
v2=_23d(v2,v3);
;
v2=_b(v2,$str106);
;
v1=v2.$c.$vt[0](v2);
;
$f.l=176;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,v1);
;
v2=_b(v2,$str132);
;
v4=v0.q;
v2=_23d(v2,v4);
;
v2=_b(v2,$str106);
;
v1=v2.$c.$vt[0](v2);
;
$f.l=177;
return v1;
}
//org/jbox2d/common/Transform:<clinit>
function _3cc(vm){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=34;
		v0=vm.getClass(110);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g136=v1;
		$f.l=146;
		v2=new org/jbox2d/common/Vec2;
		_1a(v2);
		$g137=v2;
		return;
}
}
//cava/apple/foundation/NSString:<init>
function _3cd(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=37;
v0=a0;
v1=a1;
_2d8(v0);
$f.l=38;
v2=_9f(v1);
;
v3=_187(v1);
;
v4=_3ce(v0,v2,v3);
;
$f.l=39;
return;
}
//cava/apple/foundation/NSString:initWithCharacters
function _3ce(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=46;
v0=a0;
v1=a1;
v2=a2;
v3=newArray(0,3);
v4=v0.nativePeer;
v3[0]=v4;
v3[1]=v1;
v5=_a1(v2);
;
v3[2]=v5;
v4=_6b($str133,v3);
;
v0.nativePeer=v4;
$f.l=47;
return v0;
}
//cava/apple/foundation/NSString:createJavaString
function _3cf(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=51;
v0=a0;
v3=newArray(0,1);
v3[0]=v0;
v1=_14a($str134,v3);
;
$f.l=52;
v2=newArray(40,v1);
$f.l=53;
v3=newArray(0,2);
v3[0]=v0;
v3[1]=v2;
_b4($str135,v3);
$f.l=54;
v4=new java/lang/String;
_15b(v4,v2);
return v4;
}
//cava/apple/foundation/NSString:toString
function _3d0(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=59;
v0=a0;
v1=v0.nativePeer;
v2=_3cf(v1);
;
return v2;
}
//org/jbox2d/common/Rot:<init>
function _2b4(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
_0(v0);
$f.l=39;
v1=_3d1(v0);
;
$f.l=40;
return;
}
//org/jbox2d/common/Rot:toString
function _3d2(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=new java/lang/StringBuilder;
_9(v1);
v1=_b(v1,$str136);
;
v2=v0.s;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str137);
;
v2=v0.c;
v1=_2ff(v1,v2);
;
v1=_b(v1,$str117);
;
v3=v1.$c.$vt[0](v1);
;
return v3;
}
//org/jbox2d/common/Rot:set
function _2c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=a1;
v2=_1e3(v1);
;
v0.s=v2;
$f.l=61;
v2=_1e4(v1);
;
v0.c=v2;
$f.l=62;
return v0;
}
//org/jbox2d/common/Rot:set
function _3c9(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=66;
v0=a0;
v1=a1;
v2=v1.s;
v0.s=v2;
$f.l=67;
v2=v1.c;
v0.c=v2;
$f.l=68;
return v0;
}
//org/jbox2d/common/Rot:setIdentity
function _3d1(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=72;
v0=a0;
v0.s=0.0;
$f.l=73;
v0.c=1.0;
$f.l=74;
return v0;
}
//org/jbox2d/common/Rot:clone
function _3d3(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=91;
v0=a0;
v1=new org/jbox2d/common/Rot;
_2b4(v1);
v2=v1;
$f.l=92;
v3=v0.s;
v2.s=v3;
$f.l=93;
v3=v0.c;
v2.c=v3;
$f.l=94;
return v2;
}
//org/jbox2d/common/Rot:mulTransUnsafe
function _3ca(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=125;
v0=a0;
v1=a1;
v2=a2;
v3=v0.c;
v4=v1.s;
v4=v3 * v4;
v3=v0.s;
v5=v1.c;
v5=v3 * v5;
v5=v4 - v5;
v2.s=v5;
$f.l=126;
v5=v0.c;
v4=v1.c;
v5=v5 * v4;
v4=v0.s;
v3=v1.s;
v4=v4 * v3;
v5=v5 + v4;
v2.c=v5;
$f.l=127;
return;
}
//org/jbox2d/common/Rot:mulToOut
function _2e8(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=130;
v0=a0;
v1=a1;
v2=a2;
v4=v0.s;
v5=v1.x;
v5=v4 * v5;
v4=v0.c;
v6=v1.y;
v6=v4 * v6;
v3=v5 + v6;
$f.l=131;
v6=v0.c;
v5=v1.x;
v6=v6 * v5;
v5=v0.s;
v4=v1.y;
v5=v5 * v4;
v6=v6 - v5;
v2.x=v6;
$f.l=132;
v2.y=v3;
$f.l=133;
return;
}
//org/jbox2d/common/Rot:mulToOutUnsafe
function _39(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=136;
v0=a0;
v1=a1;
v2=a2;
v3=v0.c;
v4=v1.x;
v4=v3 * v4;
v3=v0.s;
v5=v1.y;
v5=v3 * v5;
v5=v4 - v5;
v2.x=v5;
$f.l=137;
v5=v0.s;
v4=v1.x;
v5=v5 * v4;
v4=v0.c;
v3=v1.y;
v4=v4 * v3;
v5=v5 + v4;
v2.y=v5;
$f.l=138;
return;
}
//org/jbox2d/common/Rot:mulTransUnsafe
function _230(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=147;
v0=a0;
v1=a1;
v2=a2;
v3=v0.c;
v4=v1.x;
v4=v3 * v4;
v3=v0.s;
v5=v1.y;
v5=v3 * v5;
v5=v4 + v5;
v2.x=v5;
$f.l=148;
v5=v0.s;
v5=-v5;
v4=v1.x;
v5=v5 * v4;
v4=v0.c;
v3=v1.y;
v4=v4 * v3;
v5=v5 + v4;
v2.y=v5;
$f.l=149;
return;
}
//org/jbox2d/common/Rot:clone
function _3d4(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=33;
v0=a0;
v1=_3d3(v0);
;
return v1;
}
//org/jbox2d/common/Rot:<clinit>
function _3d5(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=33;
		v0=vm.getClass(99);
		v1=_3f(v0);
		;
		if(v1!=0) {$b=6; break;}
		v1=1;
		{ $b=7; break; }
	case 6:
		v1=0;
	case 7:
		$g138=v1;
		return;
}
}
//org/jbox2d/dynamics/BodyType:<init>
function _3d6(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=39;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/dynamics/BodyType:<clinit>
function _3d7(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=new org/jbox2d/dynamics/BodyType;
_3d6(v0,$str138,0);
$g37=v0;
v0=new org/jbox2d/dynamics/BodyType;
_3d6(v0,$str139,1);
$g54=v0;
v0=new org/jbox2d/dynamics/BodyType;
_3d6(v0,$str140,2);
$g38=v0;
$f.l=39;
v1=newArray(111,3);
v0=$g37;
v1[0]=v0;
v0=$g54;
v1[1]=v0;
v0=$g38;
v1[2]=v0;
$g139=v1;
return;
}
//org/jbox2d/collision/ContactID$Type:<init>
function _3d8(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/collision/ContactID$Type:<clinit>
function _3d9(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=new org/jbox2d/collision/ContactID$Type;
_3d8(v0,$str141,0);
$g1=v0;
v0=new org/jbox2d/collision/ContactID$Type;
_3d8(v0,$str142,1);
$g2=v0;
$f.l=53;
v1=newArray(112,2);
v0=$g1;
v1[0]=v0;
v0=$g2;
v1[1]=v0;
$g140=v1;
return;
}
//org/jbox2d/collision/TimeOfImpact$TOIOutputState:<init>
function _3da(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=67;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/collision/TimeOfImpact$TOIOutputState:<clinit>
function _3db(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=new org/jbox2d/collision/TimeOfImpact$TOIOutputState;
_3da(v0,$str143,0);
$g82=v0;
v0=new org/jbox2d/collision/TimeOfImpact$TOIOutputState;
_3da(v0,$str144,1);
$g86=v0;
v0=new org/jbox2d/collision/TimeOfImpact$TOIOutputState;
_3da(v0,$str145,2);
$g84=v0;
v0=new org/jbox2d/collision/TimeOfImpact$TOIOutputState;
_3da(v0,$str146,3);
$g39=v0;
v0=new org/jbox2d/collision/TimeOfImpact$TOIOutputState;
_3da(v0,$str147,4);
$g85=v0;
$f.l=67;
v1=newArray(113,5);
v0=$g82;
v1[0]=v0;
v0=$g86;
v1[1]=v0;
v0=$g84;
v1[2]=v0;
v0=$g39;
v1[3]=v0;
v0=$g85;
v1[4]=v0;
$g141=v1;
return;
}
//org/jbox2d/dynamics/joints/LimitState:<init>
function _3dc(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/dynamics/joints/LimitState:<clinit>
function _3dd(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=new org/jbox2d/dynamics/joints/LimitState;
_3dc(v0,$str148,0);
$g105=v0;
v0=new org/jbox2d/dynamics/joints/LimitState;
_3dc(v0,$str149,1);
$g107=v0;
v0=new org/jbox2d/dynamics/joints/LimitState;
_3dc(v0,$str150,2);
$g108=v0;
v0=new org/jbox2d/dynamics/joints/LimitState;
_3dc(v0,$str151,3);
$g106=v0;
$f.l=26;
v1=newArray(114,4);
v0=$g105;
v1[0]=v0;
v0=$g107;
v1[1]=v0;
v0=$g108;
v1[2]=v0;
v0=$g106;
v1[3]=v0;
$g142=v1;
return;
}
//java/util/AbstractCollection:<init>
function _3de(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
_0(v0);
$f.l=35;
return;
}
//java/util/AbstractCollection:add
function _3df(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=38;
v0=a0;
v1=a1;
v2=new java/lang/UnsupportedOperationException;
_17e(v2);
throw v2;
}
//java/util/AbstractCollection:contains
function _3e0(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=125;
		v0=a0;
		v1=a1;
		v2=v0.$c.$vt[24](v0);
		;
		$f.l=126;
		if(v1==null) {$b=15; break;}
	case 6:
		$f.l=127;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=23; break;}
		$f.l=128;
		v4=v2.$c.$it[6](v2);
		;
		v3=v1.$c.$vt[1](v1,v4);
		;
		if(v3==0) {$b=6; break;}
		$f.l=129;
		return 1;
	case 15:
		$f.l=133;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=23; break;}
		$f.l=134;
		v4=v2.$c.$it[6](v2);
		;
		if(v4!=null) {$b=15; break;}
		$f.l=135;
		return 1;
	case 23:
		$f.l=139;
		return 0;
}
}
//java/util/AbstractCollection:containsAll
function _3e1(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=163;
		v0=a0;
		v1=a1;
		v2=v1.$c.$it[2](v1);
		;
	case 4:
		$f.l=164;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=13; break;}
		$f.l=165;
		v4=v2.$c.$it[6](v2);
		;
		v3=v0.$c.$vt[26](v0,v4);
		;
		if(v3!=0) {$b=4; break;}
		$f.l=166;
		return 0;
	case 13:
		$f.l=169;
		return 1;
}
}
//java/util/AbstractCollection:isEmpty
function _3e2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=182;
		v0=a0;
		v1=v0.$c.$vt[23](v0);
		;
		if(v1!=0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/util/AbstractCollection:remove
function _3e3(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=223;
		v0=a0;
		v1=a1;
		v2=v0.$c.$vt[24](v0);
		;
		$f.l=224;
		if(v1==null) {$b=17; break;}
	case 6:
		$f.l=225;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=27; break;}
		$f.l=226;
		v4=v2.$c.$it[6](v2);
		;
		v3=v1.$c.$vt[1](v1,v4);
		;
		if(v3==0) {$b=6; break;}
		$f.l=227;
		v2.$c.$it[15](v2);
		$f.l=228;
		return 1;
	case 17:
		$f.l=232;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=27; break;}
		$f.l=233;
		v4=v2.$c.$it[6](v2);
		;
		if(v4!=null) {$b=17; break;}
		$f.l=234;
		v2.$c.$it[15](v2);
		$f.l=235;
		return 1;
	case 27:
		$f.l=239;
		return 0;
}
}
//java/util/AbstractCollection:toString
function _3e4(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=345;
		v0=a0;
		v4=v0.$c.$vt[30](v0);
		;
		if(v4==0) {$b=6; break;}
		$f.l=346;
		return $str152;
	case 6:
		$f.l=349;
		v5=new java/lang/StringBuffer;
		v6=v0.$c.$vt[23](v0);
		;
		v6=(v6 * 16)|0;
		_238(v5,v6);
		v1=v5;
		$f.l=350;
		v5=_23a(v1,91);
		;
		$f.l=351;
		v2=v0.$c.$vt[24](v0);
		;
	case 16:
		$f.l=352;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=35; break;}
		$f.l=353;
		v3=v2.$c.$it[6](v2);
		;
		$f.l=354;
		if(v3==v0) {$b=26; break;}
		$f.l=355;
		v5=_23c(v1,v3);
		;
		{ $b=28; break; }
	case 26:
		$f.l=357;
		v5=_23e(v1,$str153);
		;
	case 28:
		$f.l=359;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=33; break;}
		$f.l=360;
		v5=_23e(v1,$str113);
		;
	case 33:
		$f.l=362;
		{ $b=16; break; }
	case 35:
		$f.l=363;
		v5=_23a(v1,93);
		;
		$f.l=364;
		v7=v1.$c.$vt[0](v1);
		;
		return v7;
}
}
//java/util/AbstractCollection:toArray
function _3e5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=397;
		v0=a0;
		v1=a1;
		v2=v1;
		$f.l=398;
		v5=v0.$c.$vt[23](v0);
		;
		v6=v2.len;
		if(v5<=v6) {$b=11; break;}
		$f.l=399;
		v6=v0.$c.$vt[23](v0);
		;
		v2=newArray(0,v6);
	case 11:
		$f.l=401;
		v3=v0.$c.$vt[24](v0);
		;
		$f.l=402;
		v4=0;
	case 15:
		v6=v2.len;
		if(v4>=v6) {$b=23; break;}
		$f.l=403;
		v7=v3.$c.$it[6](v3);
		;
		v2[v4]=v7;
		$f.l=402;
		v4=(v4 + 1)|0;
		{ $b=15; break; }
	case 23:
		$f.l=405;
		v8=vm.cast(v2,0);
		return v8;
}
}
//java/lang/Exception:<init>
function _3e6(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
_373(v0);
$f.l=22;
return;
}
//java/lang/Exception:<init>
function _3e7(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=25;
v0=a0;
v1=a1;
_374(v0,v1);
$f.l=26;
return;
}
//java/util/HashMap$EntryIterator:<init>
function _3e8(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=154;
v0=a0;
v1=a1;
_240(v0,v1);
$f.l=155;
return;
}
//java/util/HashMap$EntryIterator:next
function _3e9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=158;
v0=a0;
_244(v0);
$f.l=159;
v1=v0.currentEntry;
return v1;
}
//java/util/HashMap$EntryIterator:next
function _3ea(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=151;
v0=a0;
v1=_3e9(v0);
;
return v1;
}
//java/io/ConsolePrintStream$1:<init>
function _3eb(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=33;
v0=a0;
_338(v0);
return;
}
//java/io/ConsolePrintStream$1:write
function _3ec(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=a1;
return;
}
//org/jbox2d/collision/Type:values
function _254(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=309;
v0=$g143;
v1=v0.$c.$vt[3](v0);
;
v0=vm.cast(v1,115);
return v0;
}
//org/jbox2d/collision/Type:<init>
function _3ed(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=309;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/collision/Type:<clinit>
function _3ee(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=310;
v0=new org/jbox2d/collision/Type;
_3ed(v0,$str154,0);
$g96=v0;
v0=new org/jbox2d/collision/Type;
_3ed(v0,$str155,1);
$g98=v0;
v0=new org/jbox2d/collision/Type;
_3ed(v0,$str156,2);
$g97=v0;
$f.l=309;
v1=newArray(115,3);
v0=$g96;
v1[0]=v0;
v0=$g98;
v1[1]=v0;
v0=$g97;
v1[2]=v0;
$g143=v1;
return;
}
//org/jbox2d/collision/Collision$EPAxis$Type:<init>
function _3ef(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=1045;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/collision/Collision$EPAxis$Type:<clinit>
function _3f0(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1046;
v0=new org/jbox2d/collision/Collision$EPAxis$Type;
_3ef(v0,$str143,0);
$g101=v0;
v0=new org/jbox2d/collision/Collision$EPAxis$Type;
_3ef(v0,$str157,1);
$g102=v0;
v0=new org/jbox2d/collision/Collision$EPAxis$Type;
_3ef(v0,$str158,2);
$g103=v0;
$f.l=1045;
v1=newArray(116,3);
v0=$g101;
v1[0]=v0;
v0=$g102;
v1[1]=v0;
v0=$g103;
v1[2]=v0;
$g144=v1;
return;
}
//java/io/FilterOutputStream:<init>
function _3f1(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=45;
v0=a0;
v1=a1;
_338(v0);
$f.l=46;
v0.out=v1;
$f.l=47;
return;
}
//java/io/FilterOutputStream:flush
function _3f2(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=82;
v0=a0;
v1=v0.out;
v1.$c.$vt[21](v1);
$f.l=83;
return;
}
//java/io/FilterOutputStream:write
function _3f3(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=104;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v5=v1.len;
		_1e7(v5,v2,v3);
		$f.l=105;
		v4=0;
	case 9:
		if(v4>=v3) {$b=17; break;}
		$f.l=108;
		v5=(v2 + v4)|0;
		v6=v1[v5];
		v0.$c.$vt[22](v0,v6);
		$f.l=105;
		v4=(v4 + 1)|0;
		{ $b=9; break; }
	case 17:
		$f.l=110;
		return;
}
}
//java/io/FilterOutputStream:write
function _3f4(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=123;
v0=a0;
v1=a1;
v2=v0.out;
v2.$c.$vt[22](v2,v1);
$f.l=124;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$5:<init>
function _357(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=94;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$5:newInstance
function _3f5(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=95;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/EdgeAndPolygonContact;
v2=v0.this$0;
v3=_36f(v2);
;
_27e(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$5:newInstance
function _3f6(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=94;
v0=a0;
v1=_3f5(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$6:<init>
function _358(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=99;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$6:newInstance
function _3f7(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=100;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/ChainAndCircleContact;
v2=v0.this$0;
v3=_36f(v2);
;
_2ab(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$6:newInstance
function _3f8(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=99;
v0=a0;
v1=_3f7(v0);
;
return v1;
}
//org/jbox2d/collision/Manifold$ManifoldType:values
function _220(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=$g145;
v1=v0.$c.$vt[3](v0);
;
v0=vm.cast(v1,117);
return v0;
}
//org/jbox2d/collision/Manifold$ManifoldType:<init>
function _3f9(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=53;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/collision/Manifold$ManifoldType:<clinit>
function _3fa(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=54;
v0=new org/jbox2d/collision/Manifold$ManifoldType;
_3f9(v0,$str159,0);
$g3=v0;
v0=new org/jbox2d/collision/Manifold$ManifoldType;
_3f9(v0,$str155,1);
$g4=v0;
v0=new org/jbox2d/collision/Manifold$ManifoldType;
_3f9(v0,$str156,2);
$g6=v0;
$f.l=53;
v1=newArray(117,3);
v0=$g3;
v1[0]=v0;
v0=$g4;
v1[1]=v0;
v0=$g6;
v1[2]=v0;
$g145=v1;
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$7:<init>
function _359(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$7:newInstance
function _3fb(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=105;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/ChainAndPolygonContact;
v2=v0.this$0;
v3=_36f(v2);
;
_2a3(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$7:newInstance
function _3fc(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=104;
v0=a0;
v1=_3fb(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$1:<init>
function _353(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=74;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$1:newInstance
function _3fd(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=75;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/PolygonContact;
v2=v0.this$0;
v3=_36f(v2);
;
_279(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$1:newInstance
function _3fe(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=74;
v0=a0;
v1=_3fd(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$2:<init>
function _354(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=79;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$2:newInstance
function _3ff(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=80;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/CircleContact;
v2=v0.this$0;
v3=_36f(v2);
;
_2a8(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$2:newInstance
function _400(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=79;
v0=a0;
v1=_3ff(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$3:<init>
function _355(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$3:newInstance
function _401(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=85;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/PolygonAndCircleContact;
v2=v0.this$0;
v3=_36f(v2);
;
_297(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$3:newInstance
function _402(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=_401(v0);
;
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$4:<init>
function _356(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=89;
v0=a0;
v1=a1;
v2=a2;
v0.this$0=v1;
_3c4(v0,v2);
return;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$4:newInstance
function _403(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=90;
v0=a0;
v1=new org/jbox2d/dynamics/contacts/EdgeAndCircleContact;
v2=v0.this$0;
v3=_36f(v2);
;
_2d4(v1,v3);
return v1;
}
//org/jbox2d/pooling/normal/DefaultWorldPool$4:newInstance
function _404(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=89;
v0=a0;
v1=_403(v0);
;
return v1;
}
//org/jbox2d/dynamics/joints/JointType:values
function _21b(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=$g146;
v1=v0.$c.$vt[3](v0);
;
v0=vm.cast(v1,118);
return v0;
}
//org/jbox2d/dynamics/joints/JointType:<init>
function _405(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/dynamics/joints/JointType:<clinit>
function _406(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str143,0);
$g75=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str160,1);
$g67=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str161,2);
$g66=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str162,3);
$g65=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str163,4);
$g72=v0;
$f.l=28;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str164,5);
$g64=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str165,6);
$g71=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str166,7);
$g70=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str167,8);
$g68=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str168,9);
$g69=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str169,10);
$g74=v0;
v0=new org/jbox2d/dynamics/joints/JointType;
_405(v0,$str170,11);
$g73=v0;
$f.l=26;
v1=newArray(118,12);
v0=$g75;
v1[0]=v0;
v0=$g67;
v1[1]=v0;
v0=$g66;
v1[2]=v0;
v0=$g65;
v1[3]=v0;
v0=$g72;
v1[4]=v0;
v0=$g64;
v1[5]=v0;
v0=$g71;
v1[6]=v0;
v0=$g70;
v1[7]=v0;
v0=$g68;
v1[8]=v0;
v0=$g69;
v1[9]=v0;
v0=$g74;
v1[10]=v0;
v0=$g73;
v1[11]=v0;
$g146=v1;
return;
}
//java/lang/Error:<init>
function _407(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=a0;
_373(v0);
$f.l=28;
return;
}
//java/lang/Error:<init>
function _408(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
v1=a1;
_374(v0,v1);
$f.l=36;
return;
}
//org/jbox2d/collision/shapes/ShapeType:values
function _7b(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=$g147;
v1=v0.$c.$vt[3](v0);
;
v0=vm.cast(v1,119);
return v0;
}
//org/jbox2d/collision/shapes/ShapeType:<init>
function _409(vm,a0,a1,a2){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=30;
v0=a0;
v1=a1;
v2=a2;
_39a(v0,v1,v2);
return;
}
//org/jbox2d/collision/shapes/ShapeType:<clinit>
function _40a(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=new org/jbox2d/collision/shapes/ShapeType;
_409(v0,$str171,0);
$g9=v0;
v0=new org/jbox2d/collision/shapes/ShapeType;
_409(v0,$str172,1);
$g12=v0;
v0=new org/jbox2d/collision/shapes/ShapeType;
_409(v0,$str173,2);
$g10=v0;
v0=new org/jbox2d/collision/shapes/ShapeType;
_409(v0,$str174,3);
$g11=v0;
$f.l=30;
v1=newArray(119,4);
v0=$g9;
v1[0]=v0;
v0=$g12;
v1[1]=v0;
v0=$g10;
v1[2]=v0;
v0=$g11;
v1[3]=v0;
$g147=v1;
return;
}
//java/io/PrintWriter:flush
function _40b(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=146;
		$f.trap=0;
		v0=a0;
		$f.trap=1;
		v2=v0.out;
		v2.$c.$vt[34](v2);
		$f.l=149;
		$f.trap=0;
		{ $b=16; break; }
	case 10:
		$f.l=147;
		$f.trap=0;
		v3=__caught;
		v1=v3;
		$f.l=148;
		v0.error=1;
	case 16:
		$f.l=150;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,120)) {$b=10; continue;}
	}
throw error;
}
}
//java/io/PrintWriter:print
function _381(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=171;
		v0=a0;
		v1=a1;
		v2=v0;
		if(v1!=null) {$b=7; break;}
		v3=$str175;
		{ $b=8; break; }
	case 7:
		v3=v1;
	case 8:
		v0.$c.$vt[36](v0,v3);
		$f.l=172;
		return;
}
}
//java/io/PrintWriter:write
function _40c(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=452;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		$f.trap=1;
		v5=v0.out;
		v5.$c.$vt[35](v5,v1,v2,v3);
		$f.l=455;
		$f.trap=0;
		{ $b=19; break; }
	case 13:
		$f.l=453;
		$f.trap=0;
		v6=__caught;
		v4=v6;
		$f.l=454;
		v0.error=1;
	case 19:
		$f.l=456;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,120)) {$b=13; continue;}
	}
throw error;
}
}
//java/io/PrintWriter:write
function _40d(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=470;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		$f.trap=1;
		v5=v0.out;
		v5.$c.$vt[33](v5,v1,v2,v3);
		$f.l=473;
		$f.trap=0;
		{ $b=19; break; }
	case 13:
		$f.l=471;
		$f.trap=0;
		v6=__caught;
		v4=v6;
		$f.l=472;
		v0.error=1;
	case 19:
		$f.l=474;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,120)) {$b=13; continue;}
	}
throw error;
}
}
//java/io/PrintWriter:write
function _40e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=492;
v0=a0;
v1=a1;
v2=_187(v1);
;
v0.$c.$vt[33](v0,v1,0,v2);
$f.l=493;
return;
}
//java/io/PrintWriter:<clinit>
function _40f(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=271;
v0=newArray(40,2);
v0[0]=13;
v0[1]=10;
$g148=v0;
return;
}
//java/lang/NoSuchMethodError:<init>
function _1cc(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=23;
v0=a0;
_407(v0);
return;
}
//java/lang/String:<init>
function _410(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=73;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=_411(v1,v2,v3,$str176);
;
_15b(v0,v4);
$f.l=74;
return;
}
//java/lang/String:bytesToChars
function _411(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=102;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=newArray(40,v2);
		$f.l=103;
		v5=(v1 + v2)|0;
		$f.l=104;
		v6=v1;
		$f.l=105;
		v7=0;
	case 12:
		$f.l=106;
		if(v6>=v5) {$b=95; break;}
		$f.l=107;
		v9=v6;
		v6=(v6 + 1)|0;
		v8=v0[v9];
		$f.l=108;
		if(v8>=128) {$b=26; break;}
		$f.l=109;
		v9=v7;
		v7=(v7 + 1)|0;
		v12=v8&0xffff;
		v4[v9]=v12;
		{ $b=93; break; }
	case 26:
		$f.l=110;
		if(v8>=224) {$b=43; break;}
		$f.l=111;
		if(v6>=v5) {$b=95; break;}
		$f.l=112;
		v13=v7;
		v7=(v7 + 1)|0;
		v14=(v8 & 63)|0;
		v15=(v14 << 6)|0;
		v9=v6;
		v6=(v6 + 1)|0;
		v14=v0[v9];
		v14=(v14 & 127)|0;
		v15=(v15 | v14)|0;
		v12=v15&0xffff;
		v4[v13]=v12;
		{ $b=93; break; }
	case 43:
		$f.l=116;
		if(v8>=240) {$b=67; break;}
		$f.l=117;
		v15=(v6 + 1)|0;
		if(v15>=v5) {$b=95; break;}
		$f.l=118;
		v16=(v6 + 1)|0;
		v10=v0[v6];
		$f.l=119;
		v15=v7;
		v7=(v7 + 1)|0;
		v14=(v8 & 31)|0;
		v13=(v14 << 12)|0;
		v14=(v10 & 127)|0;
		v9=(v14 << 6)|0;
		v13=(v13 | v9)|0;
		v6=(v16 + 1)|0;
		v14=v0[v16];
		v14=(v14 & 127)|0;
		v13=(v13 | v14)|0;
		v12=v13&0xffff;
		v4[v15]=v12;
		$f.l=120;
		{ $b=93; break; }
	case 67:
		$f.l=123;
		v15=(v6 + 2)|0;
		if(v15>=v5) {$b=95; break;}
		$f.l=124;
		v16=(v6 + 1)|0;
		v10=v0[v6];
		$f.l=125;
		v17=(v16 + 1)|0;
		v11=v0[v16];
		$f.l=126;
		v15=v7;
		v7=(v7 + 1)|0;
		v14=(v8 & 15)|0;
		v13=(v14 << 18)|0;
		v14=(v10 & 127)|0;
		v9=(v14 << 12)|0;
		v13=(v13 | v9)|0;
		v14=(v11 & 127)|0;
		v9=(v14 << 6)|0;
		v13=(v13 | v9)|0;
		v6=(v17 + 1)|0;
		v14=v0[v17];
		v14=(v14 & 127)|0;
		v13=(v13 | v14)|0;
		v12=v13&0xffff;
		v4[v15]=v12;
	case 93:
		$f.l=130;
		{ $b=12; break; }
	case 95:
		$f.l=131;
		return v4;
}
}
//java/lang/String:<init>
function _15b(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=141;
v0=a0;
v1=a1;
_0(v0);
$f.l=37;
v0.hashCode=0;
$f.l=142;
v0.value=v1;
$f.l=143;
v0.offset=0;
$f.l=144;
v2=v1.len;
v0.count=v2;
$f.l=145;
return;
}
//java/lang/String:failedBoundsCheck
function _412(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=148;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=new java/lang/StringIndexOutOfBoundsException;
_27d(v4,v3);
throw v4;
}
//java/lang/String:<init>
function _306(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=162;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		_0(v0);
		$f.l=37;
		v0.hashCode=0;
		$f.l=163;
		v4=(v2 | v3)|0;
		if(v4<0) {$b=14; break;}
		v4=v1.len;
		v4=(v4 - v2)|0;
		if(v3<=v4) {$b=18; break;}
	case 14:
		$f.l=164;
		v4=v1.len;
		v5=_412(v0,v4,v2,v3);
		;
		throw v5;
	case 18:
		$f.l=166;
		v0.offset=0;
		$f.l=167;
		v6=newArray(40,v3);
		v0.value=v6;
		$f.l=168;
		v0.count=v3;
		$f.l=169;
		v6=v0.value;
		v4=v0.count;
		_15(v1,v2,v6,0,v4);
		$f.l=170;
		return;
}
}
//java/lang/String:<init>
function _413(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=172;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		_0(v0);
		$f.l=37;
		v0.hashCode=0;
		$f.l=173;
		v4=(v1 | v2)|0;
		if(v4<0) {$b=14; break;}
		v4=v3.len;
		v4=(v4 - v1)|0;
		if(v2<=v4) {$b=18; break;}
	case 14:
		$f.l=174;
		v4=v3.len;
		v5=_412(v0,v4,v1,v2);
		;
		throw v5;
	case 18:
		$f.l=176;
		v0.offset=v1;
		$f.l=177;
		v0.value=v3;
		$f.l=178;
		v0.count=v2;
		$f.l=179;
		return;
}
}
//java/lang/String:charAt
function _183(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=212;
v0=a0;
v1=a1;
v2=v0.value;
v3=v0.offset;
v3=(v3 + v1)|0;
v4=v2[v3];
return v4;
}
//java/lang/String:compareTo
function _1f8(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=244;
		v0=a0;
		v1=a1;
		if(v1!=v0) {$b=6; break;}
		$f.l=245;
		return 0;
	case 6:
		$f.l=247;
		v6=_187(v1);
		;
		v7=_187(v0);
		;
		v2=_189(v6,v7);
		;
		$f.l=248;
		v3=0;
	case 12:
		if(v3>=v2) {$b=31; break;}
		$f.l=249;
		v8=v0.value;
		v7=v0.offset;
		v7=(v7 + v3)|0;
		v4=v8[v7];
		$f.l=250;
		v8=v1.value;
		v7=v1.offset;
		v7=(v7 + v3)|0;
		v5=v8[v7];
		$f.l=251;
		if(v4==v5) {$b=28; break;}
		$f.l=252;
		v7=(v4 - v5)|0;
		return v7;
	case 28:
		$f.l=248;
		v3=(v3 + 1)|0;
		{ $b=12; break; }
	case 31:
		$f.l=255;
		v7=_187(v0);
		;
		v6=_187(v1);
		;
		v7=(v7 - v6)|0;
		return v7;
}
}
//java/lang/String:equals
function _414(vm,a0,a1){
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
		if(v4==vm.getClass(101)) {$b=12; break;}
	case 10:
		$f.l=301;
		return 0;
	case 12:
		$f.l=303;
		v2=vm.cast(v1,101);
		$f.l=304;
		v5=_187(v2);
		;
		v6=_187(v0);
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
//java/lang/String:equalsIgnoreCase
function _211(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=327;
		v0=a0;
		v1=a1;
		if(v1==null) {$b=7; break;}
		v10=v1.count;
		v11=v0.count;
		if(v10==v11) {$b=9; break;}
	case 7:
		$f.l=328;
		return 0;
	case 9:
		$f.l=331;
		v2=v0.value;
		$f.l=332;
		v3=v1.value;
		$f.l=333;
		v4=v0.offset;
		$f.l=334;
		v5=v1.offset;
		$f.l=335;
		v6=v0.count;
		$f.l=336;
		v7=0;
	case 21:
		if(v7>=v6) {$b=49; break;}
		$f.l=337;
		v11=v4;
		v4=(v4 + 1)|0;
		v8=v2[v11];
		$f.l=338;
		v11=v5;
		v5=(v5 + 1)|0;
		v9=v3[v11];
		$f.l=339;
		if(v8==v9) {$b=46; break;}
		$f.l=340;
		if(v8<65) {$b=37; break;}
		if(v8>90) {$b=37; break;}
		$f.l=341;
		v8=(v8 + -65)|0;
	case 37:
		$f.l=343;
		if(v9<65) {$b=42; break;}
		if(v9>90) {$b=42; break;}
		$f.l=344;
		v9=(v9 + -65)|0;
	case 42:
		$f.l=346;
		if(v8==v9) {$b=46; break;}
		$f.l=347;
		return 0;
	case 46:
		$f.l=336;
		v7=(v7 + 1)|0;
		{ $b=21; break; }
	case 49:
		$f.l=351;
		return 1;
}
}
//java/lang/String:getBytes
function _415(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
try{$f.l=360;
$f.trap=0;
v0=a0;
$f.trap=1;
v2=_416(v0,$str176);
;
$f.trap=0;
$f.trap=0;
return v2;
case 9:
	$f.l=361;
	$f.trap=0;
	v3=__caught;
	v1=v3;
	$f.l=363;
	$f.trap=0;
	return null;
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,121)) {$b=9; continue;}
	}
throw error;
}
}
//java/lang/String:getBytes
function _416(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=372;
		v0=a0;
		v1=a1;
		v2=0;
		$f.l=373;
		v3=0;
	case 6:
		v7=v0.count;
		if(v3>=v7) {$b=34; break;}
		$f.l=374;
		v8=v0.value;
		v7=v0.offset;
		v7=(v7 + v3)|0;
		v9=v8[v7];
		v4=(v9 & 255)|0;
		$f.l=375;
		if(v4>127) {$b=19; break;}
		$f.l=376;
		v2=(v2 + 1)|0;
		{ $b=31; break; }
	case 19:
		$f.l=377;
		if(v4>2047) {$b=24; break;}
		$f.l=378;
		v2=(v2 + 2)|0;
		{ $b=31; break; }
	case 24:
		$f.l=379;
		if(v4>65535) {$b=29; break;}
		$f.l=380;
		v2=(v2 + 3)|0;
		{ $b=31; break; }
	case 29:
		$f.l=382;
		v2=(v2 + 4)|0;
	case 31:
		$f.l=373;
		v3=(v3 + 1)|0;
		{ $b=6; break; }
	case 34:
		$f.l=385;
		v10=newArray(52,v2);
		$f.l=386;
		v4=0;
		$f.l=387;
		v5=0;
	case 40:
		v7=v0.count;
		if(v5>=v7) {$b=122; break;}
		$f.l=388;
		v8=v0.value;
		v7=v0.offset;
		v7=(v7 + v5)|0;
		v9=v8[v7];
		v6=(v9 & 255)|0;
		$f.l=389;
		if(v6>127) {$b=56; break;}
		$f.l=390;
		v7=v4;
		v4=(v4 + 1)|0;
		v11=v6&0xff;
		v10[v7]=v11;
		{ $b=119; break; }
	case 56:
		$f.l=391;
		if(v6>2047) {$b=71; break;}
		$f.l=392;
		v12=(v4 + 1)|0;
		v9=(v6 >> 6)|0;
		v9=(192 | v9)|0;
		v11=v9&0xff;
		v10[v4]=v11;
		$f.l=393;
		v4=(v12 + 1)|0;
		v9=(v6 & 63)|0;
		v9=(128 | v9)|0;
		v11=v9&0xff;
		v10[v12]=v11;
		{ $b=119; break; }
	case 71:
		$f.l=394;
		if(v6>65535) {$b=93; break;}
		$f.l=395;
		v12=(v4 + 1)|0;
		v9=(v6 >> 12)|0;
		v9=(224 | v9)|0;
		v11=v9&0xff;
		v10[v4]=v11;
		$f.l=396;
		v13=(v12 + 1)|0;
		v9=(v6 >> 6)|0;
		v9=(v9 & 63)|0;
		v9=(128 | v9)|0;
		v11=v9&0xff;
		v10[v12]=v11;
		$f.l=397;
		v4=(v13 + 1)|0;
		v9=(v6 & 63)|0;
		v9=(128 | v9)|0;
		v11=v9&0xff;
		v10[v13]=v11;
		{ $b=119; break; }
	case 93:
		$f.l=399;
		v13=(v4 + 1)|0;
		v9=(v6 >> 18)|0;
		v9=(240 | v9)|0;
		v11=v9&0xff;
		v10[v4]=v11;
		$f.l=400;
		v12=(v13 + 1)|0;
		v9=(v6 >> 12)|0;
		v9=(v9 & 63)|0;
		v9=(128 | v9)|0;
		v11=v9&0xff;
		v10[v13]=v11;
		$f.l=401;
		v13=(v12 + 1)|0;
		v9=(v6 >> 6)|0;
		v9=(v9 & 63)|0;
		v9=(128 | v9)|0;
		v11=v9&0xff;
		v10[v12]=v11;
		$f.l=402;
		v4=(v13 + 1)|0;
		v9=(v6 & 63)|0;
		v9=(128 | v9)|0;
		v11=v9&0xff;
		v10[v13]=v11;
	case 119:
		$f.l=387;
		v5=(v5 + 1)|0;
		{ $b=40; break; }
	case 122:
		$f.l=405;
		return v10;
}
}
//java/lang/String:getChars
function _301(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=417;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=v1;
	case 7:
		if(v5>=v2) {$b=19; break;}
		$f.l=418;
		v6=v0.value;
		v7=v0.offset;
		v7=(v7 + v5)|0;
		v8=v6[v7];
		v3[v4]=v8;
		$f.l=419;
		v4=(v4 + 1)|0;
		$f.l=417;
		v5=(v5 + 1)|0;
		{ $b=7; break; }
	case 19:
		$f.l=421;
		return;
}
}
//java/lang/String:hashCode
function _417(vm,a0){
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
//java/lang/String:indexOf
function _184(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=446;
v0=a0;
v1=a1;
v2=_418(v0,v1,0);
;
return v2;
}
//java/lang/String:indexOf
function _418(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=464;
		v0=a0;
		v1=a1;
		v2=a2;
		v4=v0.offset;
		v3=(v4 + v2)|0;
	case 6:
		v4=v0.count;
		v5=v0.offset;
		v5=(v4 + v5)|0;
		if(v3>=v5) {$b=21; break;}
		$f.l=465;
		v6=v0.value;
		v7=v6[v3];
		if(v7!=v1) {$b=18; break;}
		$f.l=466;
		v5=v0.offset;
		v5=(v3 - v5)|0;
		return v5;
	case 18:
		$f.l=464;
		v3=(v3 + 1)|0;
		{ $b=6; break; }
	case 21:
		$f.l=469;
		return -1;
}
}
//java/lang/String:lastIndexOf
function _1c5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=579;
		v0=a0;
		v1=a1;
		v3=v0.count;
		v4=v0.offset;
		v4=(v3 + v4)|0;
		v2=(v4 - 1)|0;
	case 7:
		v4=v0.offset;
		if(v2<=v4) {$b=20; break;}
		$f.l=580;
		v5=v0.value;
		v6=v5[v2];
		if(v6!=v1) {$b=17; break;}
		$f.l=581;
		v4=v0.offset;
		v4=(v2 - v4)|0;
		return v4;
	case 17:
		$f.l=579;
		v2=(v2 + -1)|0;
		{ $b=7; break; }
	case 20:
		$f.l=584;
		return -1;
}
}
//java/lang/String:length
function _187(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=673;
v0=a0;
v1=v0.count;
return v1;
}
//java/lang/String:regionMatches
function _419(vm,a0,a1,a2,a3,a4){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=689;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		if(v2!=null) {$b=11; break;}
		$f.l=690;
		v10=new java/lang/NullPointerException;
		_1bc(v10,$str177);
		throw v10;
	case 11:
		$f.l=692;
		if(v3<0) {$b=16; break;}
		v11=v2.count;
		v11=(v11 - v3)|0;
		if(v11>=v4) {$b=18; break;}
	case 16:
		$f.l=693;
		return 0;
	case 18:
		$f.l=695;
		if(v1<0) {$b=23; break;}
		v11=v0.count;
		v11=(v11 - v1)|0;
		if(v11>=v4) {$b=25; break;}
	case 23:
		$f.l=696;
		return 0;
	case 25:
		$f.l=698;
		if(v4>0) {$b=29; break;}
		$f.l=699;
		return 1;
	case 29:
		$f.l=701;
		v11=v0.offset;
		v5=(v11 + v1)|0;
		v11=v2.offset;
		v6=(v11 + v3)|0;
		$f.l=702;
		v7=v0.value;
		$f.l=703;
		v8=v2.value;
		$f.l=704;
		v9=0;
	case 40:
		if(v9>=v4) {$b=52; break;}
		$f.l=705;
		v11=(v5 + v9)|0;
		v12=v7[v11];
		v11=(v6 + v9)|0;
		v13=v8[v11];
		if(v12==v13) {$b=49; break;}
		$f.l=706;
		return 0;
	case 49:
		$f.l=704;
		v9=(v9 + 1)|0;
		{ $b=40; break; }
	case 52:
		$f.l=709;
		return 1;
}
}
//java/lang/String:regionMatches
function _18b(vm,a0,a1,a2,a3,a4,a5){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=732;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=a4;
		v5=a5;
		if(v1!=0) {$b=11; break;}
		$f.l=733;
		v10=_419(v0,v2,v3,v4,v5);
		;
		return v10;
	case 11:
		$f.l=735;
		if(v3!=null) {$b=17; break;}
		$f.l=736;
		v11=new java/lang/NullPointerException;
		_1bc(v11,$str177);
		throw v11;
	case 17:
		$f.l=738;
		if(v2<0) {$b=22; break;}
		v12=v0.count;
		v12=(v12 - v2)|0;
		if(v5<=v12) {$b=24; break;}
	case 22:
		$f.l=739;
		return 0;
	case 24:
		$f.l=741;
		if(v4<0) {$b=29; break;}
		v12=v3.count;
		v12=(v12 - v4)|0;
		if(v5<=v12) {$b=31; break;}
	case 29:
		$f.l=742;
		return 0;
	case 31:
		$f.l=744;
		v12=v0.offset;
		v2=(v2 + v12)|0;
		$f.l=745;
		v12=v3.offset;
		v4=(v4 + v12)|0;
		$f.l=746;
		v6=(v2 + v5)|0;
		$f.l=747;
		v7=v3.value;
	case 41:
		$f.l=748;
		if(v2>=v6) {$b=61; break;}
		$f.l=749;
		v13=v0.value;
		v12=v2;
		v2=(v2 + 1)|0;
		v8=v13[v12];
		$f.l=750;
		v12=v4;
		v4=(v4 + 1)|0;
		v9=v7[v12];
		$f.l=751;
		if(v8==v9) {$b=59; break;}
		v14=_41a(v0,v8);
		;
		v15=_41a(v0,v9);
		;
		if(v14==v15) {$b=59; break;}
		$f.l=752;
		return 0;
	case 59:
		$f.l=754;
		{ $b=41; break; }
	case 61:
		$f.l=755;
		return 1;
}
}
//java/lang/String:foldCase
function _41a(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=763;
		v0=a0;
		v1=a1;
		if(v1>=128) {$b=13; break;}
		$f.l=764;
		if(65>v1) {$b=11; break;}
		if(v1>90) {$b=11; break;}
		$f.l=765;
		v2=(v1 + 32)|0;
		v3=v2&0xffff;
		return v3;
	case 11:
		$f.l=767;
		return v1;
	case 13:
		$f.l=769;
		v3=_15c(v1);
		;
		v3=_158(v3);
		;
		return v3;
}
}
//java/lang/String:replace
function _2e1(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=787;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=v0.value;
		$f.l=788;
		v4=v0.offset;
		$f.l=789;
		v5=v0.count;
		$f.l=791;
		v6=v4;
		$f.l=792;
		v7=(v4 + v5)|0;
		$f.l=793;
		v8=0;
	case 15:
		$f.l=794;
		if(v6>=v7) {$b=39; break;}
		$f.l=795;
		v10=v3[v6];
		if(v10!=v1) {$b=36; break;}
		$f.l=796;
		if(v8!=0) {$b=34; break;}
		$f.l=797;
		v9=newArray(40,v5);
		$f.l=798;
		_15(v3,v4,v9,0,v5);
		$f.l=799;
		v3=v9;
		$f.l=800;
		v6=(v6 - v4)|0;
		$f.l=801;
		v7=(v7 - v4)|0;
		$f.l=802;
		v8=1;
	case 34:
		$f.l=804;
		v3[v6]=v2;
	case 36:
		$f.l=806;
		v6=(v6 + 1)|0;
		{ $b=15; break; }
	case 39:
		$f.l=809;
		if(v8==0) {$b=44; break;}
		v11=new java/lang/String;
		_15b(v11,v3);
		{ $b=45; break; }
	case 44:
		v11=v0;
	case 45:
		return v11;
}
}
//java/lang/String:substring
function _1c6(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=843;
		v0=a0;
		v1=a1;
		if(v1!=0) {$b=6; break;}
		$f.l=844;
		return v0;
	case 6:
		$f.l=846;
		if(v1<0) {$b=19; break;}
		v2=v0.count;
		if(v1>v2) {$b=19; break;}
		$f.l=848;
		v3=new java/lang/String;
		v4=v0.value;
		v2=v0.offset;
		v2=(v2 + v1)|0;
		v5=v0.count;
		v5=(v5 - v1)|0;
		_306(v3,v4,v2,v5);
		return v3;
	case 19:
		$f.l=850;
		v6=new java/lang/ArrayIndexOutOfBoundsException;
		_1e8(v6,v1);
		throw v6;
}
}
//java/lang/String:substring
function _186(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=861;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v1!=0) {$b=9; break;}
		v3=v0.count;
		if(v2!=v3) {$b=9; break;}
		$f.l=862;
		return v0;
	case 9:
		$f.l=866;
		if(v1<0) {$b=22; break;}
		if(v1>v2) {$b=22; break;}
		v3=v0.count;
		if(v2>v3) {$b=22; break;}
		$f.l=868;
		v4=new java/lang/String;
		v5=v0.value;
		v3=v0.offset;
		v3=(v3 + v1)|0;
		v6=(v2 - v1)|0;
		_306(v4,v5,v3,v6);
		return v4;
	case 22:
		$f.l=870;
		v7=new java/lang/ArrayIndexOutOfBoundsException;
		_1e8(v7,v1);
		throw v7;
}
}
//java/lang/String:toString
function _41b(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=918;
v0=a0;
return v0;
}
//java/lang/String:trim
function _18d(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=964;
		v0=a0;
		v1=v0.offset;
		v4=v0.offset;
		v5=v0.count;
		v5=(v4 + v5)|0;
		v2=(v5 - 1)|0;
		$f.l=965;
		v3=v2;
	case 9:
		$f.l=966;
		if(v1>v3) {$b=17; break;}
		v6=v0.value;
		v7=v6[v1];
		if(v7>32) {$b=17; break;}
		$f.l=967;
		v1=(v1 + 1)|0;
		{ $b=9; break; }
	case 17:
		$f.l=969;
		if(v3<v1) {$b=25; break;}
		v6=v0.value;
		v7=v6[v3];
		if(v7>32) {$b=25; break;}
		$f.l=970;
		v3=(v3 + -1)|0;
		{ $b=17; break; }
	case 25:
		$f.l=972;
		v5=v0.offset;
		if(v1!=v5) {$b=31; break;}
		if(v3!=v2) {$b=31; break;}
		$f.l=973;
		return v0;
	case 31:
		$f.l=976;
		v8=new java/lang/String;
		v6=v0.value;
		v5=(v3 - v1)|0;
		v5=(v5 + 1)|0;
		_306(v8,v6,v1,v5);
		return v8;
}
}
//java/lang/String:valueOf
function _178(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=990;
v0=a0;
v1=new java/lang/String;
v3=newArray(40,1);
v3[0]=v0;
_413(v1,0,1,v3);
v2=v1;
$f.l=991;
v2.hashCode=v0;
$f.l=992;
return v2;
}
//java/lang/String:valueOf
function _2c9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=1034;
v0=a0;
v1=_2fb(v0);
;
return v1;
}
//java/lang/String:compareTo
function _41c(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=a0;
v1=a1;
v2=vm.cast(v1,101);
v3=_1f8(v0,v2);
;
return v3;
}
//java/lang/String:<clinit>
function _41d(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=new java/util/ArrayList;
_1cf(v0);
$g149=v0;
$f.l=41;
v1=newArray(40,0);
$g150=v1;
return;
}
//java/lang/CloneNotSupportedException:<init>
function _39c(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=32;
v0=a0;
_3e6(v0);
$f.l=33;
return;
}
//java/lang/LinkageError:<init>
function _295(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=46;
v0=a0;
v1=a1;
_408(v0,v1);
$f.l=47;
return;
}
//java/io/PrintStream:<init>
function _41e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=49;
		v0=a0;
		v1=a1;
		_3f1(v0,v1);
		$f.l=50;
		if(v1!=null) {$b=10; break;}
		$f.l=51;
		v2=new java/lang/NullPointerException;
		_1bc(v2,$str178);
		throw v2;
	case 10:
		$f.l=53;
		return;
}
}
//java/io/PrintStream:flush
function _41f(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=241;
		$f.trap=0;
		v0=a0;
		v2=v0.out;
		if(v2==null) {$b=18; break;}
		$f.l=243;
		$f.trap=1;
		v2=v0.out;
		v2.$c.$vt[21](v2);
		$f.l=244;
		$f.trap=0;
		$f.trap=0;
		return;
	case 14:
		$f.l=245;
		$f.trap=0;
		v3=__caught;
		v1=v3;
	case 18:
		$f.l=249;
		_420(v0);
		$f.l=250;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,120)) {$b=14; continue;}
	}
throw error;
}
}
//java/io/PrintStream:print
function _421(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=321;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v3=v0.out;
		if(v3!=null) {$b=12; break;}
		$f.l=322;
		_420(v0);
		$f.l=323;
		$f.trap=0;
		return;
	case 12:
		$f.l=325;
		if(v1!=null) {$b=19; break;}
		$f.l=326;
		v0.$c.$vt[32](v0,$str175);
		$f.l=327;
		$f.trap=0;
		return;
	case 19:
		$f.l=331;
		$f.trap=1;
		v4=v0.encoding;
		if(v4!=null) {$b=27; break;}
		$f.l=332;
		v5=_415(v1);
		;
		_33a(v0,v5);
		{ $b=31; break; }
	case 27:
		$f.l=334;
		v4=v0.encoding;
		v5=_416(v1,v4);
		;
		_33a(v0,v5);
	case 31:
		$f.l=338;
		$f.trap=0;
		{ $b=40; break; }
	case 34:
		$f.l=336;
		$f.trap=0;
		v6=__caught;
		v2=v6;
		$f.l=337;
		_420(v0);
	case 40:
		$f.l=339;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,120)) {$b=34; continue;}
	}
throw error;
}
}
//java/io/PrintStream:setError
function _420(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=432;
v0=a0;
v0.ioError=1;
$f.l=433;
return;
}
//java/io/PrintStream:write
function _422(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=457;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v4=v0;
		v5=v0;
		monitor(v0,false);
		$f.l=458;
		$f.trap=1;
		v8=v0.out;
		if(v8!=null) {$b=21; break;}
		$f.l=459;
		_420(v0);
		$f.l=460;
		monitor(v5,true);
		$f.trap=0;
		$f.trap=0;
		return;
	case 21:
		$f.l=463;
		$f.trap=2;
		v8=v0.out;
		v8.$c.$vt[27](v8,v1,v2,v3);
		$f.l=464;
		v9=v0.autoFlush;
		if(v9==0) {$b=30; break;}
		$f.l=465;
		v0.$c.$vt[21](v0);
	case 30:
		$f.l=469;
		$f.trap=3;
		{ $b=39; break; }
	case 33:
		$f.l=467;
		$f.trap=3;
		v10=__caught;
		v6=v10;
		$f.l=468;
		_420(v0);
	case 39:
		$f.l=470;
		monitor(v5,true);
		$f.trap=0;
		{ $b=50; break; }
	case 43:
		$f.trap=0;
		v11=__caught;
		$f.trap=4;
		v7=v11;
		monitor(v5,true);
		$f.trap=0;
		throw v7;
	case 50:
		$f.l=471;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,87)) {$b=43; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,120)) {$b=33; continue;}
		if(vm.is(vm.exception,87)) {$b=43; continue;}
	}
	if($f.trap==3){
		if(vm.is(vm.exception,87)) {$b=43; continue;}
	}
	if($f.trap==4){
		if(vm.is(vm.exception,87)) {$b=43; continue;}
	}
throw error;
}
}
//java/io/PrintStream:write
function _423(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=487;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v4=v0.out;
		if(v4!=null) {$b=12; break;}
		$f.l=488;
		_420(v0);
		$f.l=489;
		$f.trap=0;
		return;
	case 12:
		$f.l=492;
		$f.trap=1;
		v4=v0.out;
		v4.$c.$vt[22](v4,v1);
		$f.l=493;
		v2=(v1 & 255)|0;
		$f.l=495;
		if(v2==10) {$b=21; break;}
		if(v2!=21) {$b=23; break;}
	case 21:
		v5=1;
		{ $b=24; break; }
	case 23:
		v5=0;
	case 24:
		v3=v5;
		$f.l=496;
		v5=v0.autoFlush;
		if(v5==0) {$b=31; break;}
		if(v3==0) {$b=31; break;}
		$f.l=497;
		v0.$c.$vt[21](v0);
	case 31:
		$f.l=501;
		$f.trap=0;
		{ $b=40; break; }
	case 34:
		$f.l=499;
		$f.trap=0;
		v6=__caught;
		v7=v6;
		$f.l=500;
		_420(v0);
	case 40:
		$f.l=502;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,120)) {$b=34; continue;}
	}
throw error;
}
}
//java/util/AbstractList:<init>
function _424(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=376;
v0=a0;
_3de(v0);
$f.l=377;
return;
}
//java/util/AbstractList:add
function _425(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=404;
v0=a0;
v1=a1;
v2=a2;
v3=new java/lang/UnsupportedOperationException;
_17e(v3);
throw v3;
}
//java/util/AbstractList:add
function _426(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=425;
v0=a0;
v1=a1;
v2=v0.$c.$vt[23](v0);
;
v0.$c.$vt[41](v0,v2,v1);
$f.l=426;
return 1;
}
//java/util/AbstractList:equals
function _427(vm,a0,a1){
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
		v7=vm.is(v1,122);
		if(v7==0) {$b=38; break;}
		$f.l=486;
		v2=vm.cast(v1,122);
		$f.l=487;
		v8=v2.$c.$it[3](v2);
		;
		v9=v0.$c.$vt[23](v0);
		;
		if(v8==v9) {$b=17; break;}
		$f.l=488;
		return 0;
	case 17:
		$f.l=491;
		v3=v0.$c.$vt[24](v0);
		;
		v4=v2.$c.$it[2](v2);
		;
	case 20:
		$f.l=492;
		v7=v3.$c.$it[9](v3);
		;
		if(v7==0) {$b=36; break;}
		$f.l=493;
		v5=v3.$c.$it[6](v3);
		;
		v6=v4.$c.$it[6](v4);
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
function _428(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=524;
		v0=a0;
		v1=1;
		$f.l=525;
		v2=v0.$c.$vt[24](v0);
		;
	case 5:
		$f.l=526;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=19; break;}
		$f.l=527;
		v3=v2.$c.$it[6](v2);
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
//java/util/AbstractList:indexOf
function _429(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=543;
		v0=a0;
		v1=a1;
		v2=_42a(v0);
		;
		$f.l=544;
		if(v1==null) {$b=16; break;}
	case 6:
		$f.l=545;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=25; break;}
		$f.l=546;
		v4=v2.$c.$it[6](v2);
		;
		v3=v1.$c.$vt[1](v1,v4);
		;
		if(v3==0) {$b=6; break;}
		$f.l=547;
		v5=v2.$c.$it[16](v2);
		;
		return v5;
	case 16:
		$f.l=551;
		v3=v2.$c.$it[9](v2);
		;
		if(v3==0) {$b=25; break;}
		$f.l=552;
		v4=v2.$c.$it[6](v2);
		;
		if(v4!=null) {$b=16; break;}
		$f.l=553;
		v5=v2.$c.$it[16](v2);
		;
		return v5;
	case 25:
		$f.l=557;
		return -1;
}
}
//java/util/AbstractList:iterator
function _42b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=569;
v0=a0;
v1=new java/util/AbstractList$SimpleListIterator;
_389(v1,v0,null);
return v1;
}
//java/util/AbstractList:listIterator
function _42a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=607;
v0=a0;
v1=_42c(v0,0);
;
return v1;
}
//java/util/AbstractList:listIterator
function _42c(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=623;
v0=a0;
v1=a1;
v2=new java/util/AbstractList$FullListIterator;
_42d(v2,v0,v1);
return v2;
}
//java/util/AbstractList:remove
function _42e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=638;
v0=a0;
v1=a1;
v2=new java/lang/UnsupportedOperationException;
_17e(v2);
throw v2;
}
//java/util/AbstractList:toArray
function _42f(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=774;
		v0=a0;
		v1=a1;
		v2=v1;
		$f.l=775;
		v4=v0.$c.$vt[23](v0);
		;
		v5=v2.len;
		if(v4<=v5) {$b=11; break;}
		$f.l=776;
		v5=v0.$c.$vt[23](v0);
		;
		v2=newArray(0,v5);
	case 11:
		$f.l=778;
		v3=0;
	case 13:
		v5=v2.len;
		if(v3>=v5) {$b=21; break;}
		$f.l=779;
		v6=v0.$c.$vt[39](v0,v3);
		;
		v2[v3]=v6;
		$f.l=778;
		v3=(v3 + 1)|0;
		{ $b=13; break; }
	case 21:
		$f.l=781;
		v7=vm.cast(v2,0);
		return v7;
}
}
//java/lang/AssertionError:<init>
function _26(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
_407(v0);
$f.l=22;
return;
}
//java/lang/AssertionError:<init>
function _9c(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=a0;
v1=a1;
_407(v0);
$f.l=27;
return;
}
//java/lang/RuntimeException:<init>
function _430(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
_3e6(v0);
$f.l=22;
return;
}
//java/lang/RuntimeException:<init>
function _1d6(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=25;
v0=a0;
v1=a1;
_3e7(v0,v1);
$f.l=26;
return;
}
//java/lang/IllegalStateException:<init>
function _37b(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=a0;
_430(v0);
return;
}
//java/util/AbstractList$FullListIterator:<init>
function _42d(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=88;
		v0=a0;
		v1=a1;
		v2=a2;
		v0.this$0=v1;
		_389(v0,v1,null);
		$f.l=89;
		if(v2<0) {$b=10; break;}
		v3=v0.numLeft;
		if(v2<=v3) {$b=14; break;}
	case 10:
		$f.l=90;
		v4=new java/lang/IndexOutOfBoundsException;
		_167(v4);
		throw v4;
	case 14:
		$f.l=92;
		v5=v0;
		v3=v0.numLeft;
		v3=(v3 - v2)|0;
		v0.numLeft=v3;
		$f.l=93;
		return;
}
}
//java/util/AbstractList$FullListIterator:previousIndex
function _431(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=134;
v0=a0;
v1=v0.this$0;
v2=v1.$c.$vt[23](v1);
;
v3=v0.numLeft;
v3=(v2 - v3)|0;
v3=(v3 - 1)|0;
return v3;
}
//java/lang/NullPointerException:<init>
function _166(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=a0;
_430(v0);
$f.l=28;
return;
}
//java/lang/NullPointerException:<init>
function _1bc(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
v1=a1;
_1d6(v0,v1);
$f.l=36;
return;
}
//java/lang/NegativeArraySizeException:<init>
function _237(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=23;
v0=a0;
_430(v0);
$f.l=24;
return;
}
//java/lang/NegativeArraySizeException:<init>
function _2fc(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
_1d6(v0,v1);
$f.l=32;
return;
}
//java/util/ConcurrentModificationException:<init>
function _243(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
_430(v0);
$f.l=37;
return;
}
//java/lang/ClassNotFoundException:<init>
function _1a9(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
_1d6(v0,v1);
$f.l=35;
return;
}
//java/util/NoSuchElementException:<init>
function _245(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
_430(v0);
$f.l=22;
return;
}
//java/lang/ClassCastException:<init>
function _c4(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
_1d6(v0,v1);
$f.l=35;
return;
}
//java/lang/UnsupportedOperationException:<init>
function _17e(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=a0;
_430(v0);
$f.l=25;
return;
}
//java/lang/IndexOutOfBoundsException:<init>
function _167(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=27;
v0=a0;
_430(v0);
$f.l=28;
return;
}
//java/lang/IndexOutOfBoundsException:<init>
function _1eb(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=35;
v0=a0;
v1=a1;
_1d6(v0,v1);
$f.l=36;
return;
}
//java/lang/IllegalArgumentException:<init>
function _16e(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=26;
v0=a0;
_430(v0);
$f.l=27;
return;
}
//java/lang/IllegalArgumentException:<init>
function _1b8(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
v1=a1;
_1d6(v0,v1);
$f.l=35;
return;
}
//java/io/ConsolePrintStream:<init>
function _20a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=40;
v0=a0;
v1=$g151;
_41e(v0,v1);
$f.l=32;
v2=new java/lang/StringBuilder;
_9(v2);
v0.buffer=v2;
$f.l=41;
return;
}
//java/io/ConsolePrintStream:printImpl
function _432(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
v1=a1;
v3=newArray(0,1);
v2=new cava/apple/foundation/NSString;
v4=v1.$c.$vt[0](v1);
;
_3cd(v2,v4);
v5=_7e(v2);
;
v3[0]=v5;
_b4($str179,v3);
$f.l=30;
return;
}
//java/io/ConsolePrintStream:print
function _433(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=47;
		$f.trap=0;
		v0=a0;
		v1=a1;
		v2=v0;
		v3=v0;
		monitor(v0,false);
		$f.l=48;
		$f.trap=1;
		v5=v0.buffer;
		v5=_b(v5,v1);
		;
		$f.l=49;
		monitor(v3,true);
		$f.trap=0;
		{ $b=23; break; }
	case 16:
		$f.trap=0;
		v6=__caught;
		$f.trap=2;
		v4=v6;
		monitor(v3,true);
		$f.trap=0;
		throw v4;
	case 23:
		$f.l=50;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,87)) {$b=16; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,87)) {$b=16; continue;}
	}
throw error;
}
}
//java/io/ConsolePrintStream:flush
function _434(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=63;
		$f.trap=0;
		v0=a0;
		v1=v0;
		v2=v0;
		monitor(v0,false);
		$f.l=64;
		$f.trap=1;
		v4=v0.buffer;
		v5=_303(v4);
		;
		if(v5<=0) {$b=15; break;}
		$f.l=65;
		v4=v0.buffer;
		_432(v0,v4);
	case 15:
		$f.l=66;
		v4=v0.buffer;
		_304(v4,0);
		$f.l=67;
		monitor(v2,true);
		$f.trap=0;
		{ $b=29; break; }
	case 22:
		$f.trap=0;
		v6=__caught;
		$f.trap=2;
		v3=v6;
		monitor(v2,true);
		$f.trap=0;
		throw v3;
	case 29:
		$f.l=68;
		$f.trap=0;
		return;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,87)) {$b=22; continue;}
	}
	if($f.trap==2){
		if(vm.is(vm.exception,87)) {$b=22; continue;}
	}
throw error;
}
}
//java/io/ConsolePrintStream:<clinit>
function _435(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=33;
v0=new java/io/ConsolePrintStream$1;
_3eb(v0);
$g151=v0;
return;
}
//java/util/HashMap:newElementArray
function _436(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=252;
v0=a0;
v1=a1;
v2=newArray(123,v1);
return v2;
}
//java/util/HashMap:<init>
function _246(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=259;
v0=a0;
_437(v0,16);
$f.l=260;
return;
}
//java/util/HashMap:<init>
function _437(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=271;
v0=a0;
v1=a1;
_438(v0,v1,0.75);
$f.l=272;
return;
}
//java/util/HashMap:calculateCapacity
function _439(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=283;
		v0=a0;
		if(v0<1073741824) {$b=5; break;}
		$f.l=284;
		return 1073741824;
	case 5:
		$f.l=286;
		if(v0!=0) {$b=9; break;}
		$f.l=287;
		return 16;
	case 9:
		$f.l=289;
		v0=(v0 - 1)|0;
		$f.l=290;
		v1=(v0 >> 1)|0;
		v0=(v0 | v1)|0;
		$f.l=291;
		v1=(v0 >> 2)|0;
		v0=(v0 | v1)|0;
		$f.l=292;
		v1=(v0 >> 4)|0;
		v0=(v0 | v1)|0;
		$f.l=293;
		v1=(v0 >> 8)|0;
		v0=(v0 | v1)|0;
		$f.l=294;
		v1=(v0 >> 16)|0;
		v0=(v0 | v1)|0;
		$f.l=295;
		v1=(v0 + 1)|0;
		return v1;
}
}
//java/util/HashMap:<init>
function _438(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=310;
		v0=a0;
		v1=a1;
		v2=a2;
		_327(v0);
		$f.l=42;
		v0.modCount=0;
		$f.l=311;
		if(v1<0) {$b=23; break;}
		v3=(v2 != v2 || 0.0 != 0.0) ? -1 : (v2 > 0.0) - (v2 < 0.0);
		if(v3<=0) {$b=23; break;}
		$f.l=312;
		v1=_439(v1);
		;
		$f.l=313;
		v0.elementCount=0;
		$f.l=314;
		v4=_436(v0,v1);
		;
		v0.elementData=v4;
		$f.l=315;
		v0.loadFactor=v2;
		$f.l=316;
		_43a(v0);
		{ $b=27; break; }
	case 23:
		$f.l=318;
		v5=new java/lang/IllegalArgumentException;
		_16e(v5);
		throw v5;
	case 27:
		$f.l=320;
		return;
}
}
//java/util/HashMap:computeThreshold
function _43a(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=353;
v0=a0;
v1=v0.elementData;
v2=v1.len;
v3=v2;
v4=v0.loadFactor;
v4=v3 * v4;
v2=v4|0;
v0.threshold=v2;
$f.l=354;
return;
}
//java/util/HashMap:containsKey
function _43b(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=366;
		v0=a0;
		v1=a1;
		v2=_43c(v0,v1);
		;
		$f.l=367;
		if(v2==null) {$b=8; break;}
		v3=1;
		{ $b=9; break; }
	case 8:
		v3=0;
	case 9:
		return v3;
}
}
//java/util/HashMap:entrySet
function _43d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=413;
v0=a0;
v1=new java/util/HashMap$HashMapEntrySet;
_43e(v1,v0);
return v1;
}
//java/util/HashMap:get
function _43f(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=426;
		v0=a0;
		v1=a1;
		v2=_43c(v0,v1);
		;
		$f.l=427;
		if(v2==null) {$b=9; break;}
		$f.l=428;
		v3=v2.value;
		return v3;
	case 9:
		$f.l=430;
		return null;
}
}
//java/util/HashMap:getEntry
function _43c(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=435;
		v0=a0;
		v1=a1;
		if(v1!=null) {$b=7; break;}
		$f.l=436;
		v2=_440(v0);
		;
		{ $b=16; break; }
	case 7:
		$f.l=438;
		v3=_441(v1);
		;
		$f.l=439;
		v5=v0.elementData;
		v6=v5.len;
		v6=(v6 - 1)|0;
		v4=(v3 & v6)|0;
		$f.l=440;
		v2=_442(v0,v1,v4,v3);
		;
	case 16:
		$f.l=442;
		return v2;
}
}
//java/util/HashMap:findNonNullKeyEntry
function _442(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=446;
		v0=a0;
		v1=a1;
		v2=a2;
		v3=a3;
		v5=v0.elementData;
		v4=v5[v2];
	case 7:
		$f.l=447;
		if(v4==null) {$b=18; break;}
		v6=v4.origKeyHash;
		if(v6!=v3) {$b=15; break;}
		v7=v4.key;
		$f.l=448;
		v8=_443(v1,v7);
		;
		if(v8!=0) {$b=18; break;}
	case 15:
		$f.l=449;
		v4=v4.next;
		{ $b=7; break; }
	case 18:
		$f.l=451;
		return v4;
}
}
//java/util/HashMap:findNullKeyEntry
function _440(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=455;
		v0=a0;
		v2=v0.elementData;
		v1=v2[0];
	case 4:
		$f.l=456;
		if(v1==null) {$b=11; break;}
		v3=v1.key;
		if(v3==null) {$b=11; break;}
		$f.l=457;
		v1=v1.next;
		{ $b=4; break; }
	case 11:
		$f.l=458;
		return v1;
}
}
//java/util/HashMap:isEmpty
function _444(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=470;
		v0=a0;
		v1=v0.elementCount;
		if(v1!=0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/util/HashMap:put
function _445(vm,a0,a1,a2){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=526;
v0=a0;
v1=a1;
v2=a2;
v3=_446(v0,v1,v2);
;
return v3;
}
//java/util/HashMap:putImpl
function _446(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=531;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v1!=null) {$b=26; break;}
		$f.l=532;
		v3=_440(v0);
		;
		$f.l=533;
		if(v3!=null) {$b=53; break;}
		$f.l=534;
		v6=v0;
		v7=v0.modCount;
		v7=(v7 + 1)|0;
		v0.modCount=v7;
		$f.l=535;
		v3=_447(v0,null,0,0);
		;
		$f.l=536;
		v6=v0;
		v7=v0.elementCount;
		v7=(v7 + 1)|0;
		v0.elementCount=v7;
		v8=v0.threshold;
		if(v7<=v8) {$b=53; break;}
		$f.l=537;
		_448(v0);
		{ $b=53; break; }
	case 26:
		$f.l=541;
		v4=_441(v1);
		;
		$f.l=542;
		v9=v0.elementData;
		v8=v9.len;
		v8=(v8 - 1)|0;
		v5=(v4 & v8)|0;
		$f.l=543;
		v3=_442(v0,v1,v5,v4);
		;
		$f.l=544;
		if(v3!=null) {$b=53; break;}
		$f.l=545;
		v6=v0;
		v8=v0.modCount;
		v8=(v8 + 1)|0;
		v0.modCount=v8;
		$f.l=546;
		v3=_447(v0,v1,v5,v4);
		;
		$f.l=547;
		v6=v0;
		v8=v0.elementCount;
		v8=(v8 + 1)|0;
		v0.elementCount=v8;
		v7=v0.threshold;
		if(v8<=v7) {$b=53; break;}
		$f.l=548;
		_448(v0);
	case 53:
		$f.l=553;
		v10=v3.value;
		$f.l=554;
		v3.value=v2;
		$f.l=555;
		return v10;
}
}
//java/util/HashMap:createHashedEntry
function _447(vm,a0,a1,a2,a3){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=566;
v0=a0;
v1=a1;
v2=a2;
v3=a3;
v4=new java/util/HashMap$Entry;
_38e(v4,v1,v3);
v5=v4;
$f.l=567;
v6=v0.elementData;
v4=v6[v2];
v5.next=v4;
$f.l=568;
v6=v0.elementData;
v6[v2]=v5;
$f.l=569;
return v5;
}
//java/util/HashMap:rehash
function _449(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=602;
		v0=a0;
		v1=a1;
		if(v1!=0) {$b=6; break;}
		v8=1;
		{ $b=7; break; }
	case 6:
		v8=(v1 << 1)|0;
	case 7:
		v2=_439(v8);
		;
		$f.l=604;
		v3=_436(v0,v2);
		;
		$f.l=605;
		v4=0;
	case 12:
		v9=v0.elementData;
		v8=v9.len;
		if(v4>=v8) {$b=41; break;}
		$f.l=606;
		v9=v0.elementData;
		v5=v9[v4];
		$f.l=607;
		v9=v0.elementData;
		v9[v4]=null;
	case 21:
		$f.l=608;
		if(v5==null) {$b=38; break;}
		$f.l=609;
		v8=v5.origKeyHash;
		v10=(v2 - 1)|0;
		v6=(v8 & v10)|0;
		$f.l=610;
		v7=v5.next;
		$f.l=611;
		v11=v3[v6];
		v5.next=v11;
		$f.l=612;
		v3[v6]=v5;
		$f.l=613;
		v5=v7;
		$f.l=614;
		{ $b=21; break; }
	case 38:
		$f.l=605;
		v4=(v4 + 1)|0;
		{ $b=12; break; }
	case 41:
		$f.l=616;
		v0.elementData=v3;
		$f.l=617;
		_43a(v0);
		$f.l=618;
		return;
}
}
//java/util/HashMap:rehash
function _448(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=621;
v0=a0;
v1=v0.elementData;
v2=v1.len;
_449(v0,v2);
$f.l=622;
return;
}
//java/util/HashMap:removeEntry
function _44a(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=646;
		v0=a0;
		v1=a1;
		v4=v1.origKeyHash;
		v5=v0.elementData;
		v6=v5.len;
		v6=(v6 - 1)|0;
		v2=(v4 & v6)|0;
		$f.l=647;
		v5=v0.elementData;
		v3=v5[v2];
		$f.l=648;
		if(v3!=v1) {$b=18; break;}
		$f.l=649;
		v5=v0.elementData;
		v7=v1.next;
		v5[v2]=v7;
		{ $b=27; break; }
	case 18:
		$f.l=651;
		v7=v3.next;
		if(v7==v1) {$b=24; break;}
		$f.l=652;
		v3=v3.next;
		{ $b=18; break; }
	case 24:
		$f.l=654;
		v7=v1.next;
		v3.next=v7;
	case 27:
		$f.l=657;
		v8=v0;
		v6=v0.modCount;
		v6=(v6 + 1)|0;
		v0.modCount=v6;
		$f.l=658;
		v8=v0;
		v6=v0.elementCount;
		v6=(v6 - 1)|0;
		v0.elementCount=v6;
		$f.l=659;
		return;
}
}
//java/util/HashMap:size
function _44b(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=700;
v0=a0;
v1=v0.elementCount;
return v1;
}
//java/util/HashMap:computeHashCode
function _441(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=754;
v0=a0;
v1=v0.$c.$vt[2](v0);
;
return v1;
}
//java/util/HashMap:areEqualKeys
function _443(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=758;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=6; break;}
		$f.l=759;
		return 1;
	case 6:
		$f.l=760;
		v2=v0.$c.$vt[1](v0,v1);
		;
		return v2;
}
}
//java/lang/Float:<init>
function _44c(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=125;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=126;
v0.value=v1;
$f.l=127;
return;
}
//java/lang/Float:<init>
function _44d(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=134;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=135;
v2=v1;
v0.value=v2;
$f.l=136;
return;
}
//java/lang/Float:<init>
function _44e(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=147;
v0=a0;
v1=a1;
v2=_44f(v1);
;
_44c(v0,v2);
$f.l=148;
return;
}
//java/lang/Float:compareTo
function _450(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=169;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=_451(v2,v3);
;
return v4;
}
//java/lang/Float:byteValue
function _452(vm,a0){
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
function _453(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=179;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Float:equals
function _454(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=197;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,33);
		if(v2==0) {$b=14; break;}
		v3=v0.value;
		$f.l=198;
		v4=_190(v3);
		;
		v5=vm.cast(v1,33);
		v3=v5.value;
		v6=_190(v3);
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
function _190(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=209;
v0=a0;
v1=0;
$f.l=210;
v2=newArray(0,3);
$f.l=222;
v3=_bf(v0);
;
v2[0]=v3;
v4=_a1(v1);
;
v2[1]=v4;
v4=_a1(v1);
;
v2[2]=v4;
$f.l=210;
_b4($str180,v2);
$f.l=223;
return v1;
}
//java/lang/Float:floatToRawIntBits
function _192(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=233;
v0=a0;
v1=0;
$f.l=234;
v2=newArray(0,2);
$f.l=241;
v3=_bf(v0);
;
v2[0]=v3;
v4=_a1(v1);
;
v2[1]=v4;
$f.l=234;
_b4($str181,v2);
$f.l=242;
return v1;
}
//java/lang/Float:floatValue
function _455(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=252;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Float:hashCode
function _456(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=257;
v0=a0;
v1=v0.value;
v2=_190(v1);
;
return v2;
}
//java/lang/Float:intBitsToFloat
function _193(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=266;
v0=a0;
v1=0.0;
$f.l=267;
v2=newArray(0,2);
$f.l=274;
v3=_a1(v0);
;
v2[0]=v3;
v4=_bf(v1);
;
v2[1]=v4;
$f.l=267;
_b4($str182,v2);
$f.l=275;
return v1;
}
//java/lang/Float:intValue
function _457(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=280;
v0=a0;
v1=v0.value;
v2=v1|0;
return v2;
}
//java/lang/Float:isInfinite
function _458(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=290;
v0=a0;
v1=v0.value;
v2=_34d(v1);
;
return v2;
}
//java/lang/Float:isInfinite
function _34d(vm,a0){
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
function _459(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=311;
v0=a0;
v1=v0.value;
v2=_34c(v1);
;
return v2;
}
//java/lang/Float:isNaN
function _34c(vm,a0){
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
function _45a(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=328;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Float:parseFloat
function _44f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=342;
v0=a0;
v1=_18f(v0);
;
return v1;
}
//java/lang/Float:shortValue
function _45b(vm,a0){
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
function _45c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=352;
v0=a0;
v1=v0.value;
v2=_300(v1);
;
return v2;
}
//java/lang/Float:toString
function _300(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=363;
v0=a0;
v1=v0;
v2=_45d(v1);
;
return v2;
}
//java/lang/Float:valueOf
function _45e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=377;
v0=a0;
v1=_44f(v0);
;
v2=_bf(v1);
;
return v2;
}
//java/lang/Float:compare
function _451(vm,a0,a1){
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
		v5=_34c(v0);
		;
		if(v5==0) {$b=29; break;}
		$f.l=410;
		v5=_34c(v1);
		;
		if(v5==0) {$b=27; break;}
		$f.l=411;
		return 0;
	case 27:
		$f.l=413;
		return 1;
	case 29:
		$f.l=414;
		v5=_34c(v1);
		;
		if(v5==0) {$b=34; break;}
		$f.l=415;
		return -1;
	case 34:
		$f.l=419;
		v2=_192(v0);
		;
		$f.l=420;
		v3=_192(v1);
		;
		$f.l=424;
		v6=(v2 >> 31)|0;
		v7=(v3 >> 31)|0;
		v7=(v6 - v7)|0;
		return v7;
}
}
//java/lang/Float:valueOf
function _bf(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=435;
v0=a0;
v1=new java/lang/Float;
_44c(v1,v0);
return v1;
}
//java/lang/Float:toHexString
function _45f(vm,a0){
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
		return $str45;
	case 6:
		$f.l=452;
		v9=(v0 != v0 || Infinity != Infinity) ? -1 : (v0 > Infinity) - (v0 < Infinity);
		if(v9!=0) {$b=11; break;}
		$f.l=453;
		return $str44;
	case 11:
		$f.l=455;
		v9=(v0 != v0 || -Infinity != -Infinity) ? -1 : (v0 > -Infinity) - (v0 < -Infinity);
		if(v9!=0) {$b=16; break;}
		$f.l=456;
		return $str183;
	case 16:
		$f.l=459;
		v1=_190(v0);
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
		v12=$str184;
		{ $b=39; break; }
	case 38:
		v12=$str185;
	case 39:
		return v12;
	case 40:
		$f.l=472;
		v13=new java/lang/StringBuilder;
		_239(v13,10);
		v5=v13;
		$f.l=473;
		if(v2==0) {$b=49; break;}
		$f.l=474;
		v13=_b(v5,$str186);
		;
		{ $b=51; break; }
	case 49:
		$f.l=476;
		v13=_b(v5,$str187);
		;
	case 51:
		$f.l=479;
		if(v3!=0) {$b=88; break;}
		$f.l=480;
		v13=_b(v5,$str188);
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
		v7=_460(v4);
		;
		$f.l=493;
		if(v4==0) {$b=82; break;}
		v10=_187(v7);
		;
		if(v6<=v10) {$b=82; break;}
		$f.l=494;
		v10=_187(v7);
		;
		v8=(v6 - v10)|0;
	case 75:
		$f.l=495;
		v10=v8;
		v8=(v8 + -1)|0;
		if(v10==0) {$b=82; break;}
		$f.l=496;
		v13=_23b(v5,48);
		;
		{ $b=75; break; }
	case 82:
		$f.l=499;
		v13=_b(v5,v7);
		;
		$f.l=500;
		v13=_b(v5,$str189);
		;
		$f.l=501;
		{ $b=124; break; }
	case 88:
		$f.l=502;
		v13=_b(v5,$str190);
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
		v7=_460(v4);
		;
		$f.l=515;
		if(v4==0) {$b=117; break;}
		v10=_187(v7);
		;
		if(v6<=v10) {$b=117; break;}
		$f.l=516;
		v10=_187(v7);
		;
		v8=(v6 - v10)|0;
	case 110:
		$f.l=517;
		v10=v8;
		v8=(v8 + -1)|0;
		if(v10==0) {$b=117; break;}
		$f.l=518;
		v13=_23b(v5,48);
		;
		{ $b=110; break; }
	case 117:
		$f.l=521;
		v13=_b(v5,v7);
		;
		$f.l=522;
		v13=_23b(v5,112);
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
function _461(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
v1=a1;
v2=vm.cast(v1,33);
v3=_450(v0,v2);
;
return v3;
}
//java/lang/Float:<clinit>
function _462(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=107;
v0=vm.getClass(70);
$f.l=108;
v0=_13(v0);
;
$g33=v0;
$f.l=107;
return;
}
//java/lang/Long:<init>
function _463(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=63;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=64;
v0.value=v1;
$f.l=65;
return;
}
//java/lang/Long:<init>
function _464(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=a1;
v2=_465(v1);
;
_463(v0,v2);
$f.l=77;
return;
}
//java/lang/Long:byteValue
function _466(vm,a0){
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
function _467(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=97;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=_468(v2,v3);
;
return v4;
}
//java/lang/Long:compare
function _468(vm,a0,a1){
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
function _469(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=112;
v0=a0;
v1=new java/lang/NumberFormatException;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,$str191);
;
v2=_b(v2,v0);
;
v2=_b(v2,$str43);
;
v3=v2.$c.$vt[0](v2);
;
_181(v1,v3);
throw v1;
}
//java/lang/Long:decode
function _46a(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=128;
		v0=a0;
		v1=_187(v0);
		;
		v2=0;
		$f.l=129;
		if(v1!=0) {$b=9; break;}
		$f.l=130;
		v7=_469(v0);
		;
		throw v7;
	case 9:
		$f.l=132;
		v3=_183(v0,v2);
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
		v7=_469(v0);
		;
		throw v7;
	case 24:
		$f.l=138;
		v2=(v2 + 1)|0;
		v3=_183(v0,v2);
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
		v9=_b3(0);
		;
		return v9;
	case 37:
		$f.l=146;
		v10=_183(v0,v2);
		;
		v3=v10;
		if(v10==120) {$b=42; break;}
		if(v3!=88) {$b=52; break;}
	case 42:
		$f.l=147;
		if(v2!=v1) {$b=47; break;}
		$f.l=148;
		v7=_469(v0);
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
		v7=_469(v0);
		;
		throw v7;
	case 62:
		$f.l=159;
		v2=(v2 + 1)|0;
		$f.l=160;
		v5=16;
	case 66:
		$f.l=163;
		v6=_46b(v0,v2,v5,v4);
		;
		$f.l=164;
		v9=_b3(v6);
		;
		return v9;
}
}
//java/lang/Long:doubleValue
function _46c(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=169;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Long:equals
function _46d(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=183;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,35);
		if(v2==0) {$b=12; break;}
		v3=vm.cast(v1,35);
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
function _46e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=188;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Long:getLong
function _46f(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=201;
		$f.trap=0;
		v0=a0;
		if(v0==null) {$b=7; break;}
		v3=_187(v0);
		;
		if(v3!=0) {$b=10; break;}
	case 7:
		$f.l=202;
		$f.trap=0;
		return null;
	case 10:
		$f.l=204;
		v1=_208(v0);
		;
		$f.l=205;
		if(v1!=null) {$b=17; break;}
		$f.l=206;
		$f.trap=0;
		return null;
	case 17:
		$f.l=209;
		$f.trap=1;
		v4=_46a(v1);
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
		if(vm.is(vm.exception,46)) {$b=23; continue;}
	}
throw error;
}
}
//java/lang/Long:getLong
function _470(vm,a0,a1){
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
		v4=_187(v0);
		;
		if(v4!=0) {$b=12; break;}
	case 8:
		$f.l=229;
		v5=_b3(v1);
		;
		$f.trap=0;
		return v5;
	case 12:
		$f.l=231;
		v2=_208(v0);
		;
		$f.l=232;
		if(v2!=null) {$b=20; break;}
		$f.l=233;
		v5=_b3(v1);
		;
		$f.trap=0;
		return v5;
	case 20:
		$f.l=236;
		$f.trap=1;
		v5=_46a(v2);
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
		v5=_b3(v1);
		;
		$f.trap=0;
		return v5;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,46)) {$b=26; continue;}
	}
throw error;
}
}
//java/lang/Long:getLong
function _471(vm,a0,a1){
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
		v4=_187(v0);
		;
		if(v4!=0) {$b=11; break;}
	case 8:
		$f.l=256;
		$f.trap=0;
		return v1;
	case 11:
		$f.l=258;
		v2=_208(v0);
		;
		$f.l=259;
		if(v2!=null) {$b=18; break;}
		$f.l=260;
		$f.trap=0;
		return v1;
	case 18:
		$f.l=263;
		$f.trap=1;
		v5=_46a(v2);
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
		if(vm.is(vm.exception,46)) {$b=24; continue;}
	}
throw error;
}
}
//java/lang/Long:hashCode
function _472(vm,a0){
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
function _473(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=276;
v0=a0;
v1=v0.value;
v2=v1|0;
return v2;
}
//java/lang/Long:longValue
function _474(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=286;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Long:parseLong
function _465(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=299;
v0=a0;
v1=_475(v0,10);
;
return v1;
}
//java/lang/Long:parseLong
function _475(vm,a0,a1){
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
		v2=_b(v2,$str192);
		;
		v2=_c(v2,v1);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_181(v6,v7);
		throw v6;
	case 14:
		$f.l=318;
		if(v0!=null) {$b=19; break;}
		$f.l=319;
		v6=_469(v0);
		;
		throw v6;
	case 19:
		$f.l=321;
		v3=_187(v0);
		;
		v4=0;
		$f.l=322;
		if(v3!=0) {$b=27; break;}
		$f.l=323;
		v6=_469(v0);
		;
		throw v6;
	case 27:
		$f.l=325;
		v8=_183(v0,v4);
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
		v6=_469(v0);
		;
		throw v6;
	case 41:
		$f.l=330;
		v10=_46b(v0,v4,v1,v5);
		;
		return v10;
}
}
//java/lang/Long:parse
function _46b(vm,a0,a1,a2,a3){
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
		v7=_187(v0);
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
		v12=_183(v0,v7);
		;
		v8=_14e(v12,v2);
		;
		$f.l=338;
		if(v8!=-1) {$b=25; break;}
		$f.l=339;
		v13=_469(v0);
		;
		throw v13;
	case 25:
		$f.l=341;
		v11=(v4 > v5) - (v4 < v5);
		if(v11<=0) {$b=31; break;}
		$f.l=342;
		v13=_469(v0);
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
		v13=_469(v0);
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
		v13=_469(v0);
		;
		throw v13;
	case 56:
		$f.l=356;
		return v5;
}
}
//java/lang/Long:shortValue
function _476(vm,a0){
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
function _477(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=372;
v0=a0;
v1=_478(v0,2);
;
return v1;
}
//java/lang/Long:toHexString
function _479(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=384;
v0=a0;
v1=_478(v0,16);
;
return v1;
}
//java/lang/Long:toOctalString
function _47a(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=395;
v0=a0;
v1=_478(v0,8);
;
return v1;
}
//java/lang/Long:toString
function _47b(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=400;
v0=a0;
v1=v0.value;
v2=_47c(v1);
;
return v2;
}
//java/lang/Long:toString
function _47c(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=412;
v0=a0;
v1=_478(v0,10);
;
return v1;
}
//java/lang/Long:toString
function _478(vm,a0,a1){
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
		v2=_b(v2,$str193);
		;
		v2=_c(v2,v1);
		;
		v2=_b(v2,$str194);
		;
		v10=v2.$c.$vt[0](v2);
		;
		_1b8(v9,v10);
		throw v9;
	case 15:
		$f.l=439;
		v11=(v0 > 0) - (v0 < 0);
		if(v11!=0) {$b=20; break;}
		$f.l=440;
		return $str195;
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
		v14=newArray(40,v4);
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
		_306(v10,v14,0,v4);
		return v10;
}
}
//java/lang/Long:valueOf
function _47d(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=485;
v0=a0;
v1=_465(v0);
;
v2=_b3(v1);
;
return v2;
}
//java/lang/Long:valueOf
function _47e(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=502;
v0=a0;
v1=a1;
v2=_475(v0,v1);
;
v3=_b3(v2);
;
return v3;
}
//java/lang/Long:highestOneBit
function _47f(vm,a0){
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
function _480(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=537;
v0=a0;
v1=-v0;
v1=(v0 & v1)|0;
return v1;
}
//java/lang/Long:numberOfLeadingZeros
function _481(vm,a0){
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
function _482(vm,a0){
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
		v2=_483(v1);
		;
		{ $b=12; break; }
	case 7:
		v3=(v0 >>> 32)|0;
		v2=v3|0;
		$f.l=595;
		v2=_483(v2);
		;
		v2=(32 + v2)|0;
	case 12:
		$f.l=594;
		return v2;
}
}
//java/lang/Long:bitCount
function _484(vm,a0){
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
function _485(vm,a0,a1){
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
function _486(vm,a0,a1){
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
function _487(vm,a0){
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
function _488(vm,a0){
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
function _489(vm,a0){
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
function _b3(vm,a0){
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
		_463(v2,v0);
		{ $b=13; break; }
	case 9:
		v3=$g152;
		v4=v0|0;
		v4=(v4 + 128)|0;
		v2=v3[v4];
	case 13:
		return v2;
}
}
//java/lang/Long:compareTo
function _48a(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,35);
v3=_467(v0,v2);
;
return v3;
}
//java/lang/Long:<clinit>
function _48b(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=45;
		v0=vm.getClass(124);
		$f.l=46;
		v0=_13(v0);
		;
		$g31=v0;
		$f.l=725;
		v2=newArray(125,256);
		$g152=v2;
		$f.l=728;
		v1=-128;
	case 10:
		if(v1>=128) {$b=21; break;}
		$f.l=729;
		v2=$g152;
		v3=(v1 + 128)|0;
		v4=new java/lang/Long;
		v5=Math.floor(v1);
		_463(v4,v5);
		v2[v3]=v4;
		$f.l=728;
		v1=(v1 + 1)|0;
		{ $b=10; break; }
	case 21:
		$f.l=731;
		return;
}
}
//java/lang/Short:<init>
function _48c(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=32;
v0.value=v1;
$f.l=33;
return;
}
//java/lang/Short:valueOf
function _be(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=new java/lang/Short;
_48c(v1,v0);
return v1;
}
//java/lang/Short:compareTo
function _48d(vm,a0,a1){
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
function _48e(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=44;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,36);
		if(v2==0) {$b=11; break;}
		v3=vm.cast(v1,36);
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
function _48f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Short:toString
function _490(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=52;
v0=a0;
v1=v0.value;
v2=_491(v1);
;
return v2;
}
//java/lang/Short:toString
function _492(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
v1=a1;
v2=Math.floor(v0);
v3=_478(v2,v1);
;
return v3;
}
//java/lang/Short:toString
function _491(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=_492(v0,10);
;
return v1;
}
//java/lang/Short:byteValue
function _493(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=64;
v0=a0;
v1=v0.value;
v2=v1&0xff;
return v2;
}
//java/lang/Short:shortValue
function _494(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Short:intValue
function _495(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=72;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Short:longValue
function _496(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Short:floatValue
function _497(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=80;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Short:doubleValue
function _498(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Short:compareTo
function _499(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,36);
v3=_48d(v0,v2);
;
return v3;
}
//java/lang/Short:<clinit>
function _49a(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=vm.getClass(54);
v0=v0.componentType;
$g29=v0;
return;
}
//java/lang/Byte:<init>
function _49b(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=31;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=32;
v0.value=v1;
$f.l=33;
return;
}
//java/lang/Byte:valueOf
function _bb(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=36;
v0=a0;
v1=new java/lang/Byte;
_49b(v1,v0);
return v1;
}
//java/lang/Byte:equals
function _49c(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=40;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,37);
		if(v2==0) {$b=11; break;}
		v3=vm.cast(v1,37);
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
function _49d(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=44;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Byte:toString
function _49e(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=48;
v0=a0;
v1=v0.value;
v2=_49f(v1);
;
return v2;
}
//java/lang/Byte:compareTo
function _4a0(vm,a0,a1){
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
function _4a1(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=56;
v0=a0;
v1=a1;
v2=Math.floor(v0);
v3=_478(v2,v1);
;
return v3;
}
//java/lang/Byte:toString
function _49f(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=60;
v0=a0;
v1=_4a1(v0,10);
;
return v1;
}
//java/lang/Byte:parseByte
function _4a2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=64;
v0=a0;
v1=_188(v0);
;
v2=v1&0xff;
return v2;
}
//java/lang/Byte:byteValue
function _4a3(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=68;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Byte:shortValue
function _4a4(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=72;
v0=a0;
v1=v0.value;
v2=v1&0xffff;
return v2;
}
//java/lang/Byte:intValue
function _4a5(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=76;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Byte:longValue
function _4a6(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=80;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Byte:floatValue
function _4a7(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=84;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Byte:doubleValue
function _4a8(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=88;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Byte:toUnsignedInt
function _4a9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=92;
v0=a0;
v1=(v0 & 255)|0;
return v1;
}
//java/lang/Byte:compareTo
function _4aa(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,37);
v3=_4a0(v0,v2);
;
return v3;
}
//java/lang/Byte:<clinit>
function _4ab(vm){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=24;
v0=vm.getClass(52);
v0=v0.componentType;
$g26=v0;
return;
}
//java/lang/Integer:<init>
function _128(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=77;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=78;
v0.value=v1;
$f.l=79;
return;
}
//java/lang/Integer:<init>
function _4ac(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=91;
v0=a0;
v1=a1;
v2=_188(v1);
;
_128(v0,v2);
$f.l=92;
return;
}
//java/lang/Integer:byteValue
function _4ad(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=96;
v0=a0;
v1=v0.value;
v2=v1&0xff;
return v2;
}
//java/lang/Integer:compareTo
function _4ae(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=113;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v3=_4af(v2,v3);
;
return v3;
}
//java/lang/Integer:compare
function _4af(vm,a0,a1){
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
function _4b0(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=126;
v0=a0;
v1=new java/lang/NumberFormatException;
v2=new java/lang/StringBuilder;
_9(v2);
v2=_b(v2,$str196);
;
v2=_b(v2,v0);
;
v2=_b(v2,$str43);
;
v3=v2.$c.$vt[0](v2);
;
_181(v1,v3);
throw v1;
}
//java/lang/Integer:decode
function _4b1(vm,a0){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=143;
		v0=a0;
		v1=_187(v0);
		;
		v2=0;
		$f.l=144;
		if(v1!=0) {$b=9; break;}
		$f.l=145;
		v7=_4b0(v0);
		;
		throw v7;
	case 9:
		$f.l=147;
		v3=_183(v0,v2);
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
		v7=_4b0(v0);
		;
		throw v7;
	case 24:
		$f.l=153;
		v2=(v2 + 1)|0;
		v3=_183(v0,v2);
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
		v9=_a1(0);
		;
		return v9;
	case 37:
		$f.l=161;
		v10=_183(v0,v2);
		;
		v3=v10;
		if(v10==120) {$b=42; break;}
		if(v3!=88) {$b=51; break;}
	case 42:
		$f.l=162;
		v2=(v2 + 1)|0;
		if(v2!=v1) {$b=48; break;}
		$f.l=163;
		v7=_4b0(v0);
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
		v7=_4b0(v0);
		;
		throw v7;
	case 62:
		$f.l=173;
		v5=16;
	case 64:
		$f.l=176;
		v6=_4b2(v0,v2,v5,v4);
		;
		$f.l=177;
		v9=_a1(v6);
		;
		return v9;
}
}
//java/lang/Integer:doubleValue
function _4b3(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=182;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Integer:equals
function _4b4(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=197;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,34);
		if(v2==0) {$b=11; break;}
		v3=vm.cast(v1,34);
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
function _4b5(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=202;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Integer:getInteger
function _4b6(vm,a0){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=217;
		$f.trap=0;
		v0=a0;
		if(v0==null) {$b=7; break;}
		v3=_187(v0);
		;
		if(v3!=0) {$b=10; break;}
	case 7:
		$f.l=218;
		$f.trap=0;
		return null;
	case 10:
		$f.l=220;
		v1=_208(v0);
		;
		$f.l=221;
		if(v1!=null) {$b=17; break;}
		$f.l=222;
		$f.trap=0;
		return null;
	case 17:
		$f.l=225;
		$f.trap=1;
		v4=_4b1(v1);
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
		if(vm.is(vm.exception,46)) {$b=23; continue;}
	}
throw error;
}
}
//java/lang/Integer:getInteger
function _4b7(vm,a0,a1){
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
		v4=_187(v0);
		;
		if(v4!=0) {$b=12; break;}
	case 8:
		$f.l=247;
		v5=_a1(v1);
		;
		$f.trap=0;
		return v5;
	case 12:
		$f.l=249;
		v2=_208(v0);
		;
		$f.l=250;
		if(v2!=null) {$b=20; break;}
		$f.l=251;
		v5=_a1(v1);
		;
		$f.trap=0;
		return v5;
	case 20:
		$f.l=254;
		$f.trap=1;
		v5=_4b1(v2);
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
		v5=_a1(v1);
		;
		$f.trap=0;
		return v5;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,46)) {$b=26; continue;}
	}
throw error;
}
}
//java/lang/Integer:getInteger
function _4b8(vm,a0,a1){
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
		v4=_187(v0);
		;
		if(v4!=0) {$b=11; break;}
	case 8:
		$f.l=276;
		$f.trap=0;
		return v1;
	case 11:
		$f.l=278;
		v2=_208(v0);
		;
		$f.l=279;
		if(v2!=null) {$b=18; break;}
		$f.l=280;
		$f.trap=0;
		return v1;
	case 18:
		$f.l=283;
		$f.trap=1;
		v5=_4b1(v2);
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
		if(vm.is(vm.exception,46)) {$b=24; continue;}
	}
throw error;
}
}
//java/lang/Integer:hashCode
function _4b9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=291;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Integer:intValue
function _4ba(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=301;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Integer:longValue
function _4bb(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=306;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Integer:parseInt
function _188(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=320;
v0=a0;
v1=_4bc(v0,10);
;
return v1;
}
//java/lang/Integer:parseInt
function _4bc(vm,a0,a1){
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
		v2=_b(v2,$str192);
		;
		v2=_c(v2,v1);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_181(v6,v7);
		throw v6;
	case 14:
		$f.l=342;
		if(v0!=null) {$b=19; break;}
		$f.l=343;
		v6=_4b0(v0);
		;
		throw v6;
	case 19:
		$f.l=345;
		v3=_187(v0);
		;
		v4=0;
		$f.l=346;
		if(v3!=0) {$b=27; break;}
		$f.l=347;
		v6=_4b0(v0);
		;
		throw v6;
	case 27:
		$f.l=349;
		v8=_183(v0,v4);
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
		v6=_4b0(v0);
		;
		throw v6;
	case 41:
		$f.l=354;
		v10=_4b2(v0,v4,v1,v5);
		;
		return v10;
}
}
//java/lang/Integer:parse
function _4b2(vm,a0,a1,a2,a3){
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
		v6=_187(v0);
		;
	case 9:
		$f.l=360;
		if(v1>=v6) {$b=38; break;}
		$f.l=361;
		v9=v1;
		v1=(v1 + 1)|0;
		v10=_183(v0,v9);
		;
		v7=_14e(v10,v2);
		;
		$f.l=362;
		if(v7!=-1) {$b=21; break;}
		$f.l=363;
		v11=_4b0(v0);
		;
		throw v11;
	case 21:
		$f.l=365;
		if(v4<=v5) {$b=26; break;}
		$f.l=366;
		v11=_4b0(v0);
		;
		throw v11;
	case 26:
		$f.l=368;
		v9=(v5 * v2)|0;
		v8=(v9 - v7)|0;
		$f.l=369;
		if(v8<=v5) {$b=34; break;}
		$f.l=370;
		v11=_4b0(v0);
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
		v11=_4b0(v0);
		;
		throw v11;
	case 47:
		$f.l=380;
		return v5;
}
}
//java/lang/Integer:shortValue
function _4bd(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=385;
v0=a0;
v1=v0.value;
v2=v1&0xffff;
return v2;
}
//java/lang/Integer:toBinaryString
function _4be(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=397;
v0=a0;
v1=Math.floor(v0);
v1=(v1 & 4294967295)|0;
v2=_478(v1,2);
;
return v2;
}
//java/lang/Integer:toHexString
function _460(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=410;
v0=a0;
v1=Math.floor(v0);
v1=(v1 & 4294967295)|0;
v2=_478(v1,16);
;
return v2;
}
//java/lang/Integer:toOctalString
function _4bf(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=422;
v0=a0;
v1=Math.floor(v0);
v1=(v1 & 4294967295)|0;
v2=_478(v1,8);
;
return v2;
}
//java/lang/Integer:toString
function _4c0(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=427;
v0=a0;
v1=v0.value;
v2=_2fb(v1);
;
return v2;
}
//java/lang/Integer:toString
function _2fb(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=440;
v0=a0;
v1=_4c1(v0,10);
;
return v1;
}
//java/lang/Integer:toString
function _4c1(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=463;
v0=a0;
v1=a1;
v2=Math.floor(v0);
v3=_478(v2,v1);
;
return v3;
}
//java/lang/Integer:valueOf
function _4c2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=478;
v0=a0;
v1=_188(v0);
;
v2=_a1(v1);
;
return v2;
}
//java/lang/Integer:valueOf
function _4c3(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=498;
v0=a0;
v1=a1;
v2=_4bc(v0,v1);
;
v3=_a1(v2);
;
return v3;
}
//java/lang/Integer:highestOneBit
function _4c4(vm,a0){
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
function _4c5(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=534;
v0=a0;
v1=-v0;
v1=(v0 & v1)|0;
return v1;
}
//java/lang/Integer:numberOfLeadingZeros
function _4c6(vm,a0){
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
function _483(vm,a0){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=581;
v0=a0;
v1=$g153;
v2=-v0;
v2=(v0 & v2)|0;
v2=(v2 * 72416175)|0;
v2=(v2 >>> 26)|0;
v3=v1[v2];
return v3;
}
//java/lang/Integer:bitCount
function _4c7(vm,a0){
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
function _4c8(vm,a0,a1){
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
function _4c9(vm,a0,a1){
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
function _4ca(vm,a0){
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
function _4cb(vm,a0){
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
function _4cc(vm,a0){
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
function _a1(vm,a0){
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
		_128(v1,v0);
		{ $b=10; break; }
	case 7:
		v2=$g154;
		v3=(v0 + 128)|0;
		v1=v2[v3];
	case 10:
		return v1;
}
}
//java/lang/Integer:compareTo
function _4cd(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=21;
v0=a0;
v1=a1;
v2=vm.cast(v1,34);
v3=_4ae(v0,v2);
;
return v3;
}
//java/lang/Integer:<clinit>
function _4ce(vm){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=54;
		v1=newArray(52,64);
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
		$g153=v1;
		$f.l=65;
		v2=vm.getClass(6);
		$f.l=66;
		v2=_13(v2);
		;
		$g30=v2;
		$f.l=701;
		v3=newArray(126,256);
		$g154=v3;
		$f.l=704;
		v0=-128;
	case 77:
		if(v0>=128) {$b=87; break;}
		$f.l=705;
		v3=$g154;
		v4=(v0 + 128)|0;
		v5=new java/lang/Integer;
		_128(v5,v0);
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
function _4cf(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=126;
v0=a0;
v1=a1;
_3b6(v0);
$f.l=127;
v0.value=v1;
$f.l=128;
return;
}
//java/lang/Double:<init>
function _4d0(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=139;
v0=a0;
v1=a1;
v2=_4d1(v1);
;
_4cf(v0,v2);
$f.l=140;
return;
}
//java/lang/Double:compareTo
function _4d2(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=162;
v0=a0;
v1=a1;
v2=v0.value;
v3=v1.value;
v4=_4d3(v2,v3);
;
return v4;
}
//java/lang/Double:byteValue
function _4d4(vm,a0){
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
function _18e(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=178;
v0=a0;
v1=0;
$f.l=179;
v2=newArray(0,2);
$f.l=186;
v3=_b9(v0);
;
v2[0]=v3;
v4=_b3(v1);
;
v2[1]=v4;
$f.l=179;
_b4($str197,v2);
$f.l=187;
return v1;
}
//java/lang/Double:doubleToRawLongBits
function _4d5(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=197;
v0=a0;
v1=0;
$f.l=198;
v2=newArray(0,2);
$f.l=205;
v3=_b9(v0);
;
v2[0]=v3;
v4=_b3(v1);
;
v2[1]=v4;
$f.l=198;
_b4($str198,v2);
$f.l=206;
return v1;
}
//java/lang/Double:doubleValue
function _4d6(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=216;
v0=a0;
v1=v0.value;
return v1;
}
//java/lang/Double:equals
function _4d7(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=234;
		v0=a0;
		v1=a1;
		v2=vm.is(v1,32);
		if(v2==0) {$b=15; break;}
		v3=v0.value;
		$f.l=235;
		v4=_18e(v3);
		;
		v5=vm.cast(v1,32);
		v3=v5.value;
		v6=_18e(v3);
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
function _4d8(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=240;
v0=a0;
v1=v0.value;
v2=v1;
return v2;
}
//java/lang/Double:hashCode
function _4d9(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=245;
v0=a0;
v2=v0.value;
v1=_18e(v2);
;
$f.l=246;
v3=(v1 >>> 32)|0;
v3=(v1 ^ v3)|0;
v4=v3|0;
return v4;
}
//java/lang/Double:intValue
function _4da(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=251;
v0=a0;
v1=v0.value;
v2=v1|0;
return v2;
}
//java/lang/Double:isInfinite
function _4db(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=261;
v0=a0;
v1=v0.value;
v2=_4dc(v1);
;
return v2;
}
//java/lang/Double:isInfinite
function _4dc(vm,a0){
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
function _4dd(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=282;
v0=a0;
v1=v0.value;
v2=_4de(v1);
;
return v2;
}
//java/lang/Double:isNaN
function _4de(vm,a0){
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
function _4df(vm,a0){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
$f.l=303;
v0=a0;
v1=0.0;
$f.l=304;
v2=newArray(0,2);
$f.l=311;
v3=_b3(v0);
;
v2[0]=v3;
v4=_b9(v1);
;
v2[1]=v4;
$f.l=304;
_b4($str199,v2);
$f.l=312;
return v1;
}
//java/lang/Double:longValue
function _4e0(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=317;
v0=a0;
v1=v0.value;
v2=Math.floor(v1);
return v2;
}
//java/lang/Double:parseDouble
function _4d1(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=329;
v0=a0;
v1=_18c(v0);
;
return v1;
}
//java/lang/Double:shortValue
function _4e1(vm,a0){
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
function _4e2(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=339;
v0=a0;
v1=v0.value;
v2=_45d(v1);
;
return v2;
}
//java/lang/Double:toString
function _45d(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
$f.l=352;
v0=a0;
v1=$g155;
v2=_80(v1);
;
$f.l=353;
v4=newArray(0,2);
v4[0]=v2;
v5=_b9(v0);
;
v4[1]=v5;
v3=_14a($str200,v4);
;
$f.l=354;
v6=new java/lang/String;
v1=$g155;
_410(v6,v1,0,v3);
return v6;
}
//java/lang/Double:valueOf
function _4e3(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=368;
v0=a0;
v1=_4d1(v0);
;
v2=_b9(v1);
;
return v2;
}
//java/lang/Double:compare
function _4d3(vm,a0,a1){
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
		v5=_4de(v0);
		;
		if(v5==0) {$b=29; break;}
		$f.l=400;
		v5=_4de(v1);
		;
		if(v5==0) {$b=27; break;}
		$f.l=401;
		return 0;
	case 27:
		$f.l=403;
		return 1;
	case 29:
		$f.l=404;
		v5=_4de(v1);
		;
		if(v5==0) {$b=34; break;}
		$f.l=405;
		return -1;
	case 34:
		$f.l=409;
		v2=_4d5(v0);
		;
		$f.l=410;
		v3=_4d5(v1);
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
function _b9(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=424;
v0=a0;
v1=new java/lang/Double;
_4cf(v1,v0);
return v1;
}
//java/lang/Double:toHexString
function _4e4(vm,a0){
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
		return $str45;
	case 6:
		$f.l=441;
		v9=(v0 != v0 || Infinity != Infinity) ? -1 : (v0 > Infinity) - (v0 < Infinity);
		if(v9!=0) {$b=11; break;}
		$f.l=442;
		return $str44;
	case 11:
		$f.l=444;
		v9=(v0 != v0 || -Infinity != -Infinity) ? -1 : (v0 > -Infinity) - (v0 < -Infinity);
		if(v9!=0) {$b=16; break;}
		$f.l=445;
		return $str183;
	case 16:
		$f.l=448;
		v1=_18e(v0);
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
		v12=$str184;
		{ $b=41; break; }
	case 40:
		v12=$str185;
	case 41:
		return v12;
	case 42:
		$f.l=460;
		v13=new java/lang/StringBuilder;
		_239(v13,10);
		v5=v13;
		$f.l=461;
		if(v2==0) {$b=51; break;}
		$f.l=462;
		v13=_b(v5,$str186);
		;
		{ $b=53; break; }
	case 51:
		$f.l=464;
		v13=_b(v5,$str187);
		;
	case 53:
		$f.l=467;
		v9=(v3 > 0) - (v3 < 0);
		if(v9!=0) {$b=94; break;}
		$f.l=468;
		v13=_b(v5,$str188);
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
		v7=_479(v4);
		;
		$f.l=481;
		v9=(v4 > 0) - (v4 < 0);
		if(v9==0) {$b=88; break;}
		v14=_187(v7);
		;
		if(v6<=v14) {$b=88; break;}
		$f.l=482;
		v14=_187(v7);
		;
		v8=(v6 - v14)|0;
	case 81:
		$f.l=483;
		v14=v8;
		v8=(v8 + -1)|0;
		if(v14==0) {$b=88; break;}
		$f.l=484;
		v13=_23b(v5,48);
		;
		{ $b=81; break; }
	case 88:
		$f.l=487;
		v13=_b(v5,v7);
		;
		$f.l=488;
		v13=_b(v5,$str201);
		;
		$f.l=489;
		{ $b=134; break; }
	case 94:
		$f.l=490;
		v13=_b(v5,$str190);
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
		v7=_479(v4);
		;
		$f.l=503;
		v9=(v4 > 0) - (v4 < 0);
		if(v9==0) {$b=126; break;}
		v14=_187(v7);
		;
		if(v6<=v14) {$b=126; break;}
		$f.l=504;
		v14=_187(v7);
		;
		v8=(v6 - v14)|0;
	case 119:
		$f.l=505;
		v14=v8;
		v8=(v8 + -1)|0;
		if(v14==0) {$b=126; break;}
		$f.l=506;
		v13=_23b(v5,48);
		;
		{ $b=119; break; }
	case 126:
		$f.l=510;
		v13=_b(v5,v7);
		;
		$f.l=511;
		v13=_23b(v5,112);
		;
		$f.l=513;
		v10=(v3 - 1023)|0;
		v12=_47c(v10);
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
function _4e5(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
$f.l=29;
v0=a0;
v1=a1;
v2=vm.cast(v1,32);
v3=_4d2(v0,v2);
;
return v3;
}
//java/lang/Double:<clinit>
function _4e6(vm){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=107;
v0=vm.getClass(127);
$f.l=108;
v0=_13(v0);
;
$g32=v0;
$f.l=349;
v1=newArray(52,21);
$g155=v1;
return;
}
//java/util/AbstractSet:<init>
function _4e7(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=34;
v0=a0;
_3de(v0);
$f.l=35;
return;
}
//java/util/AbstractSet:equals
function _4e8(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)try{switch($b){
	case -1:
		$f.l=50;
		$f.trap=0;
		v0=a0;
		v1=a1;
		if(v0!=v1) {$b=9; break;}
		$f.l=51;
		$f.trap=0;
		return 1;
	case 9:
		$f.l=53;
		v4=vm.is(v1,128);
		if(v4==0) {$b=41; break;}
		$f.l=54;
		v2=vm.cast(v1,128);
		$f.l=57;
		$f.trap=1;
		v5=v0.$c.$vt[23](v0);
		;
		v6=v2.$c.$it[3](v2);
		;
		if(v5!=v6) {$b=23; break;}
		v4=_3e1(v0,v2);
		;
		if(v4==0) {$b=23; break;}
		v4=1;
		{ $b=24; break; }
	case 23:
		v4=0;
	case 24:
		$f.trap=0;
		$f.trap=0;
		return v4;
	case 27:
		$f.l=58;
		$f.trap=0;
		v7=__caught;
		v3=v7;
		$f.l=59;
		$f.trap=0;
		return 0;
	case 34:
		$f.l=60;
		$f.trap=0;
		v8=__caught;
		v9=v8;
		$f.l=61;
		$f.trap=0;
		return 0;
	case 41:
		$f.l=64;
		$f.trap=0;
		return 0;
}
}catch(error){if($f.trap==1){
		if(vm.is(vm.exception,93)) {$b=27; continue;}
		if(vm.is(vm.exception,94)) {$b=34; continue;}
	}
throw error;
}
}
//java/util/AbstractSet:hashCode
function _4e9(vm,a0){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=77;
		v0=a0;
		v1=0;
		$f.l=78;
		v2=v0.$c.$vt[24](v0);
		;
	case 5:
		$f.l=79;
		v4=v2.$c.$it[9](v2);
		;
		if(v4==0) {$b=19; break;}
		$f.l=80;
		v3=v2.$c.$it[6](v2);
		;
		$f.l=81;
		v5=v1;
		if(v3!=null) {$b=15; break;}
		v6=0;
		{ $b=16; break; }
	case 15:
		v6=v3.$c.$vt[2](v3);
		;
	case 16:
		v1=(v5 + v6)|0;
		$f.l=82;
		{ $b=5; break; }
	case 19:
		$f.l=83;
		return v1;
}
}
//java/util/ArrayList:<init>
function _1cf(vm,a0){
var v0;
var $f=vm.frames[vm.fp++];
$f.l=42;
v0=a0;
_4ea(v0,10);
$f.l=43;
return;
}
//java/util/ArrayList:<init>
function _4ea(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=59;
		v0=a0;
		v1=a1;
		_424(v0);
		$f.l=60;
		if(v1>=0) {$b=10; break;}
		$f.l=61;
		v3=new java/lang/IllegalArgumentException;
		_16e(v3);
		throw v3;
	case 10:
		$f.l=63;
		v2=0;
		v0.size=v2;
		v0.firstIndex=v2;
		$f.l=64;
		v4=_4eb(v0,v1);
		;
		v0.array=v4;
		$f.l=65;
		return;
}
}
//java/util/ArrayList:newElementArray
function _4eb(vm,a0,a1){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=103;
v0=a0;
v1=a1;
v2=newArray(0,v1);
v2=vm.cast(v2,0);
return v2;
}
//java/util/ArrayList:add
function _4ec(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=121;
		v0=a0;
		v1=a1;
		v2=a2;
		if(v1<0) {$b=7; break;}
		v5=v0.size;
		if(v1<=v5) {$b=19; break;}
	case 7:
		$f.l=122;
		v6=new java/lang/IndexOutOfBoundsException;
		v3=new java/lang/StringBuilder;
		_9(v3);
		v3=_b(v3,$str70);
		;
		v3=_c(v3,v1);
		;
		v3=_b(v3,$str71);
		;
		v5=v0.size;
		v3=_c(v3,v5);
		;
		v7=v3.$c.$vt[0](v3);
		;
		_1eb(v6,v7);
		throw v6;
	case 19:
		$f.l=124;
		if(v1!=0) {$b=34; break;}
		$f.l=125;
		v5=v0.firstIndex;
		if(v5!=0) {$b=26; break;}
		$f.l=126;
		_4ed(v0,1);
	case 26:
		$f.l=128;
		v8=v0.array;
		v9=v0;
		v5=v0.firstIndex;
		v5=(v5 - 1)|0;
		v0.firstIndex=v5;
		v8[v5]=v2;
		{ $b=98; break; }
	case 34:
		$f.l=129;
		v5=v0.size;
		if(v1!=v5) {$b=53; break;}
		$f.l=130;
		v5=v0.firstIndex;
		v10=v0.size;
		v10=(v5 + v10)|0;
		v8=v0.array;
		v5=v8.len;
		if(v10!=v5) {$b=46; break;}
		$f.l=131;
		_4ee(v0,1);
	case 46:
		$f.l=133;
		v8=v0.array;
		v10=v0.firstIndex;
		v5=v0.size;
		v10=(v10 + v5)|0;
		v8[v10]=v2;
		{ $b=98; break; }
	case 53:
		$f.l=135;
		v10=v0.size;
		v8=v0.array;
		v5=v8.len;
		if(v10!=v5) {$b=61; break;}
		$f.l=136;
		_4ef(v0,v1,1);
		{ $b=93; break; }
	case 61:
		$f.l=137;
		v10=v0.firstIndex;
		v5=v0.size;
		v10=(v10 + v5)|0;
		v8=v0.array;
		v5=v8.len;
		if(v10==v5) {$b=73; break;}
		v10=v0.firstIndex;
		if(v10<=0) {$b=83; break;}
		v10=v0.size;
		v10=(v10 / 2)|0;
		if(v1>=v10) {$b=83; break;}
	case 73:
		$f.l=139;
		v8=v0.array;
		v10=v0.firstIndex;
		v11=v0.array;
		v9=v0;
		v5=v0.firstIndex;
		v5=(v5 - 1)|0;
		v0.firstIndex=v5;
		_15(v8,v10,v11,v5,v1);
		{ $b=93; break; }
	case 83:
		$f.l=142;
		v10=v0.firstIndex;
		v4=(v1 + v10)|0;
		$f.l=143;
		v11=v0.array;
		v8=v0.array;
		v10=(v4 + 1)|0;
		v5=v0.size;
		v5=(v5 - v1)|0;
		_15(v11,v4,v8,v10,v5);
	case 93:
		$f.l=146;
		v11=v0.array;
		v10=v0.firstIndex;
		v10=(v1 + v10)|0;
		v11[v10]=v2;
	case 98:
		$f.l=149;
		v9=v0;
		v10=v0.size;
		v10=(v10 + 1)|0;
		v0.size=v10;
		$f.l=150;
		v9=v0;
		v10=v0.modCount;
		v10=(v10 + 1)|0;
		v0.modCount=v10;
		$f.l=151;
		return;
}
}
//java/util/ArrayList:add
function _4f0(vm,a0,a1){
var v0,v1,v2,v3,v4,v5;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=162;
		v0=a0;
		v1=a1;
		v2=v0.firstIndex;
		v3=v0.size;
		v3=(v2 + v3)|0;
		v4=v0.array;
		v2=v4.len;
		if(v3!=v2) {$b=11; break;}
		$f.l=163;
		_4ee(v0,1);
	case 11:
		$f.l=165;
		v4=v0.array;
		v3=v0.firstIndex;
		v2=v0.size;
		v3=(v3 + v2)|0;
		v4[v3]=v1;
		$f.l=166;
		v5=v0;
		v3=v0.size;
		v3=(v3 + 1)|0;
		v0.size=v3;
		$f.l=167;
		v5=v0;
		v3=v0.modCount;
		v3=(v3 + 1)|0;
		v0.modCount=v3;
		$f.l=168;
		return 1;
}
}
//java/util/ArrayList:contains
function _4f1(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=288;
		v0=a0;
		v1=a1;
		v4=v0.firstIndex;
		v5=v0.size;
		v2=(v4 + v5)|0;
		$f.l=289;
		if(v1==null) {$b=22; break;}
		$f.l=290;
		v3=v0.firstIndex;
	case 10:
		if(v3>=v2) {$b=21; break;}
		$f.l=291;
		v6=v0.array;
		v7=v6[v3];
		v8=v1.$c.$vt[1](v1,v7);
		;
		if(v8==0) {$b=18; break;}
		$f.l=292;
		return 1;
	case 18:
		$f.l=290;
		v3=(v3 + 1)|0;
		{ $b=10; break; }
	case 21:
		{ $b=34; break; }
	case 22:
		$f.l=296;
		v3=v0.firstIndex;
	case 24:
		if(v3>=v2) {$b=34; break;}
		$f.l=297;
		v6=v0.array;
		v7=v6[v3];
		if(v7!=null) {$b=31; break;}
		$f.l=298;
		return 1;
	case 31:
		$f.l=296;
		v3=(v3 + 1)|0;
		{ $b=24; break; }
	case 34:
		$f.l=302;
		return 0;
}
}
//java/util/ArrayList:get
function _4f2(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=327;
		v0=a0;
		v1=a1;
		if(v1<0) {$b=6; break;}
		v3=v0.size;
		if(v1<v3) {$b=18; break;}
	case 6:
		$f.l=328;
		v4=new java/lang/IndexOutOfBoundsException;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v2=_b(v2,$str70);
		;
		v2=_c(v2,v1);
		;
		v2=_b(v2,$str71);
		;
		v3=v0.size;
		v2=_c(v2,v3);
		;
		v5=v2.$c.$vt[0](v2);
		;
		_1eb(v4,v5);
		throw v4;
	case 18:
		$f.l=330;
		v6=v0.array;
		v3=v0.firstIndex;
		v3=(v3 + v1)|0;
		v7=v6[v3];
		return v7;
}
}
//java/util/ArrayList:growAtEnd
function _4ee(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=334;
		v0=a0;
		v1=a1;
		v4=v0.array;
		v5=v4.len;
		v6=v0.size;
		v6=(v5 - v6)|0;
		if(v6<v1) {$b=33; break;}
		$f.l=337;
		v6=v0.size;
		if(v6==0) {$b=30; break;}
		$f.l=338;
		v4=v0.array;
		v6=v0.firstIndex;
		v7=v0.array;
		v5=v0.size;
		_15(v4,v6,v7,0,v5);
		$f.l=339;
		v6=v0.size;
		v5=v0.firstIndex;
		if(v6>=v5) {$b=23; break;}
		v6=v0.firstIndex;
		{ $b=24; break; }
	case 23:
		v6=v0.size;
	case 24:
		v2=v6;
		$f.l=342;
		v7=v0.array;
		v4=v0.array;
		v6=v4.len;
		_1e9(v7,v2,v6,null);
	case 30:
		$f.l=344;
		v0.firstIndex=0;
		{ $b=60; break; }
	case 33:
		$f.l=348;
		v6=v0.size;
		v2=(v6 / 2)|0;
		$f.l=349;
		if(v1<=v2) {$b=40; break;}
		$f.l=350;
		v2=v1;
	case 40:
		$f.l=352;
		if(v2>=12) {$b=44; break;}
		$f.l=353;
		v2=12;
	case 44:
		$f.l=355;
		v6=v0.size;
		v6=(v6 + v2)|0;
		v3=_4eb(v0,v6);
		;
		$f.l=356;
		v6=v0.size;
		if(v6==0) {$b=58; break;}
		$f.l=357;
		v7=v0.array;
		v6=v0.firstIndex;
		v5=v0.size;
		_15(v7,v6,v3,0,v5);
		$f.l=358;
		v0.firstIndex=0;
	case 58:
		$f.l=360;
		v0.array=v3;
	case 60:
		$f.l=362;
		return;
}
}
//java/util/ArrayList:growAtFront
function _4ed(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=365;
		v0=a0;
		v1=a1;
		v5=v0.array;
		v6=v5.len;
		v7=v0.size;
		v7=(v6 - v7)|0;
		if(v7<v1) {$b=40; break;}
		$f.l=366;
		v5=v0.array;
		v7=v5.len;
		v6=v0.size;
		v2=(v7 - v6)|0;
		$f.l=369;
		v7=v0.size;
		if(v7==0) {$b=36; break;}
		$f.l=370;
		v5=v0.array;
		v7=v0.firstIndex;
		v8=v0.array;
		v6=v0.size;
		_15(v5,v7,v8,v2,v6);
		$f.l=371;
		v7=v0.firstIndex;
		v6=v0.size;
		v3=(v7 + v6)|0;
		$f.l=372;
		if(v3<=v2) {$b=30; break;}
		v7=v2;
		{ $b=31; break; }
	case 30:
		v7=v3;
	case 31:
		v4=v7;
		$f.l=373;
		v8=v0.array;
		v7=v0.firstIndex;
		_1e9(v8,v7,v4,null);
	case 36:
		$f.l=375;
		v0.firstIndex=v2;
		$f.l=376;
		{ $b=70; break; }
	case 40:
		$f.l=377;
		v7=v0.size;
		v2=(v7 / 2)|0;
		$f.l=378;
		if(v1<=v2) {$b=47; break;}
		$f.l=379;
		v2=v1;
	case 47:
		$f.l=381;
		if(v2>=12) {$b=51; break;}
		$f.l=382;
		v2=12;
	case 51:
		$f.l=384;
		v7=v0.size;
		v7=(v7 + v2)|0;
		v9=_4eb(v0,v7);
		;
		$f.l=385;
		v7=v0.size;
		if(v7==0) {$b=63; break;}
		$f.l=386;
		v8=v0.array;
		v7=v0.firstIndex;
		v6=v0.size;
		_15(v8,v7,v9,v2,v6);
	case 63:
		$f.l=388;
		v7=v9.len;
		v6=v0.size;
		v7=(v7 - v6)|0;
		v0.firstIndex=v7;
		$f.l=389;
		v0.array=v9;
	case 70:
		$f.l=391;
		return;
}
}
//java/util/ArrayList:growForInsert
function _4ef(vm,a0,a1,a2){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=397;
		v0=a0;
		v1=a1;
		v2=a2;
		v6=v0.size;
		v3=(v6 / 2)|0;
		$f.l=398;
		if(v2<=v3) {$b=10; break;}
		$f.l=399;
		v3=v2;
	case 10:
		$f.l=401;
		if(v3>=12) {$b=14; break;}
		$f.l=402;
		v3=12;
	case 14:
		$f.l=404;
		v6=v0.size;
		v6=(v6 + v3)|0;
		v4=_4eb(v0,v6);
		;
		$f.l=407;
		v5=(v3 - v2)|0;
		$f.l=410;
		v7=v0.array;
		v6=v0.firstIndex;
		v6=(v1 + v6)|0;
		v8=(v5 + v1)|0;
		v8=(v8 + v2)|0;
		v9=v0.size;
		v9=(v9 - v1)|0;
		_15(v7,v6,v4,v8,v9);
		$f.l=413;
		v7=v0.array;
		v9=v0.firstIndex;
		_15(v7,v9,v4,v5,v1);
		$f.l=414;
		v0.firstIndex=v5;
		$f.l=415;
		v0.array=v4;
		$f.l=416;
		return;
}
}
//java/util/ArrayList:indexOf
function _4f3(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=421;
		v0=a0;
		v1=a1;
		v4=v0.firstIndex;
		v5=v0.size;
		v2=(v4 + v5)|0;
		$f.l=422;
		if(v1==null) {$b=24; break;}
		$f.l=423;
		v3=v0.firstIndex;
	case 10:
		if(v3>=v2) {$b=23; break;}
		$f.l=424;
		v6=v0.array;
		v7=v6[v3];
		v8=v1.$c.$vt[1](v1,v7);
		;
		if(v8==0) {$b=20; break;}
		$f.l=425;
		v5=v0.firstIndex;
		v5=(v3 - v5)|0;
		return v5;
	case 20:
		$f.l=423;
		v3=(v3 + 1)|0;
		{ $b=10; break; }
	case 23:
		{ $b=38; break; }
	case 24:
		$f.l=429;
		v3=v0.firstIndex;
	case 26:
		if(v3>=v2) {$b=38; break;}
		$f.l=430;
		v6=v0.array;
		v7=v6[v3];
		if(v7!=null) {$b=35; break;}
		$f.l=431;
		v5=v0.firstIndex;
		v5=(v3 - v5)|0;
		return v5;
	case 35:
		$f.l=429;
		v3=(v3 + 1)|0;
		{ $b=26; break; }
	case 38:
		$f.l=435;
		return -1;
}
}
//java/util/ArrayList:isEmpty
function _4f4(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=440;
		v0=a0;
		v1=v0.size;
		if(v1!=0) {$b=6; break;}
		v2=1;
		{ $b=7; break; }
	case 6:
		v2=0;
	case 7:
		return v2;
}
}
//java/util/ArrayList:remove
function _4f5(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=474;
		v0=a0;
		v1=a1;
		if(v1<0) {$b=6; break;}
		v5=v0.size;
		if(v1<v5) {$b=18; break;}
	case 6:
		$f.l=475;
		v6=new java/lang/IndexOutOfBoundsException;
		v2=new java/lang/StringBuilder;
		_9(v2);
		v2=_b(v2,$str70);
		;
		v2=_c(v2,v1);
		;
		v2=_b(v2,$str71);
		;
		v5=v0.size;
		v2=_c(v2,v5);
		;
		v7=v2.$c.$vt[0](v2);
		;
		_1eb(v6,v7);
		throw v6;
	case 18:
		$f.l=477;
		if(v1!=0) {$b=32; break;}
		$f.l=478;
		v8=v0.array;
		v5=v0.firstIndex;
		v3=v8[v5];
		$f.l=479;
		v8=v0.array;
		v9=v0;
		v5=v0.firstIndex;
		v10=(v5 + 1)|0;
		v0.firstIndex=v10;
		v8[v5]=null;
		{ $b=89; break; }
	case 32:
		$f.l=480;
		v10=v0.size;
		v10=(v10 - 1)|0;
		if(v1!=v10) {$b=49; break;}
		$f.l=481;
		v10=v0.firstIndex;
		v5=v0.size;
		v10=(v10 + v5)|0;
		v4=(v10 - 1)|0;
		$f.l=482;
		v8=v0.array;
		v3=v8[v4];
		$f.l=483;
		v8=v0.array;
		v8[v4]=null;
		$f.l=484;
		{ $b=89; break; }
	case 49:
		$f.l=485;
		v10=v0.firstIndex;
		v4=(v10 + v1)|0;
		$f.l=486;
		v8=v0.array;
		v3=v8[v4];
		$f.l=487;
		v10=v0.size;
		v10=(v10 / 2)|0;
		if(v1>=v10) {$b=74; break;}
		$f.l=488;
		v8=v0.array;
		v10=v0.firstIndex;
		v11=v0.array;
		v5=v0.firstIndex;
		v5=(v5 + 1)|0;
		_15(v8,v10,v11,v5,v1);
		$f.l=490;
		v11=v0.array;
		v9=v0;
		v10=v0.firstIndex;
		v5=(v10 + 1)|0;
		v0.firstIndex=v5;
		v11[v10]=null;
		{ $b=89; break; }
	case 74:
		$f.l=492;
		v11=v0.array;
		v10=(v4 + 1)|0;
		v8=v0.array;
		v5=v0.size;
		v5=(v5 - v1)|0;
		v5=(v5 - 1)|0;
		_15(v11,v10,v8,v4,v5);
		$f.l=494;
		v11=v0.array;
		v10=v0.firstIndex;
		v5=v0.size;
		v10=(v10 + v5)|0;
		v10=(v10 - 1)|0;
		v11[v10]=null;
	case 89:
		$f.l=497;
		v9=v0;
		v10=v0.size;
		v10=(v10 - 1)|0;
		v0.size=v10;
		$f.l=501;
		v10=v0.size;
		if(v10!=0) {$b=99; break;}
		$f.l=502;
		v0.firstIndex=0;
	case 99:
		$f.l=505;
		v9=v0;
		v10=v0.modCount;
		v10=(v10 + 1)|0;
		v0.modCount=v10;
		$f.l=506;
		return v3;
}
}
//java/util/ArrayList:remove
function _4f6(vm,a0,a1){
var v0,v1,v2,v3;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=511;
		v0=a0;
		v1=a1;
		v2=v0.$c.$vt[40](v0,v1);
		;
		$f.l=512;
		if(v2<0) {$b=10; break;}
		$f.l=513;
		v3=v0.$c.$vt[38](v0,v2);
		;
		$f.l=514;
		return 1;
	case 10:
		$f.l=516;
		return 0;
}
}
//java/util/ArrayList:size
function _4f7(vm,a0){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=590;
v0=a0;
v1=v0.size;
return v1;
}
//java/util/ArrayList:toArray
function _4f8(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=624;
		v0=a0;
		v1=a1;
		v2=v1;
		$f.l=625;
		v3=v0.size;
		v4=v2.len;
		if(v3<=v4) {$b=12; break;}
		$f.l=626;
		v5=new java/lang/RuntimeException;
		_1d6(v5,$str202);
		throw v5;
	case 12:
		$f.l=628;
		v6=v0.array;
		v4=v0.firstIndex;
		v3=v0.size;
		_15(v6,v4,v2,0,v3);
		$f.l=629;
		v4=v0.size;
		v3=v2.len;
		if(v4>=v3) {$b=24; break;}
		$f.l=632;
		v4=v0.size;
		v2[v4]=null;
	case 24:
		$f.l=634;
		v6=vm.cast(v2,0);
		return v6;
}
}
//java/util/HashMap$HashMapEntrySet:<init>
function _43e(vm,a0,a1){
var v0,v1;
var $f=vm.frames[vm.fp++];
$f.l=190;
v0=a0;
v1=a1;
_4e7(v0);
$f.l=191;
v0.associatedMap=v1;
$f.l=192;
return;
}
//java/util/HashMap$HashMapEntrySet:size
function _4f9(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=200;
v0=a0;
v1=v0.associatedMap;
v2=v1.elementCount;
return v2;
}
//java/util/HashMap$HashMapEntrySet:remove
function _4fa(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=210;
		v0=a0;
		v1=a1;
		v4=vm.is(v1,91);
		if(v4==0) {$b=19; break;}
		$f.l=211;
		v2=vm.cast(v1,91);
		$f.l=212;
		v5=v0.associatedMap;
		v6=v2.$c.$it[17](v2);
		;
		v3=_43c(v5,v6);
		;
		$f.l=213;
		v4=_4fb(v3,v2);
		;
		if(v4==0) {$b=19; break;}
		$f.l=214;
		v5=v0.associatedMap;
		_44a(v5,v3);
		$f.l=215;
		return 1;
	case 19:
		$f.l=218;
		return 0;
}
}
//java/util/HashMap$HashMapEntrySet:contains
function _4fc(vm,a0,a1){
var v0,v1,v2,v3,v4,v5,v6;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=223;
		v0=a0;
		v1=a1;
		v4=vm.is(v1,91);
		if(v4==0) {$b=14; break;}
		$f.l=224;
		v2=vm.cast(v1,91);
		$f.l=225;
		v5=v0.associatedMap;
		v6=v2.$c.$it[17](v2);
		;
		v3=_43c(v5,v6);
		;
		$f.l=226;
		v4=_4fb(v3,v2);
		;
		return v4;
	case 14:
		$f.l=228;
		return 0;
}
}
//java/util/HashMap$HashMapEntrySet:valuesEq
function _4fb(vm,a0,a1){
var v0,v1,v2,v3,v4;
var $f=vm.frames[vm.fp++];
var $b=-1;
while(1)switch($b){
	case -1:
		$f.l=232;
		v0=a0;
		v1=a1;
		if(v0==null) {$b=17; break;}
		v2=v0.value;
		if(v2!=null) {$b=10; break;}
		$f.l=234;
		v2=v1.$c.$it[18](v1);
		;
		if(v2!=null) {$b=17; break;}
		{ $b=15; break; }
	case 10:
		v2=v0.value;
		$f.l=235;
		v3=v1.$c.$it[18](v1);
		;
		v4=_443(v2,v3);
		;
		if(v4==0) {$b=17; break;}
	case 15:
		v4=1;
		{ $b=18; break; }
	case 17:
		v4=0;
	case 18:
		$f.l=232;
		return v4;
}
}
//java/util/HashMap$HashMapEntrySet:iterator
function _4fd(vm,a0){
var v0,v1,v2;
var $f=vm.frames[vm.fp++];
$f.l=240;
v0=a0;
v1=new java/util/HashMap$EntryIterator;
v2=v0.associatedMap;
_3e8(v1,v2);
return v1;
}
var vm={fp:0,frames:[{trap:0},{trap:0}]};
_1da(vm);
