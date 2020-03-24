--[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
local h=string.byte;local k=string.char;local e=string.sub;local m=table.concat;local a=table.insert;local l=math.ldexp;local r=getfenv or function()return _ENV end;local p=setmetatable;local n=select;local g=unpack or table.unpack;local i=tonumber;local function o(h)local b,c,g="","",{}local f=256;local d={}for a=0,f-1 do d[a]=k(a)end;local a=1;local function j()local b=i(e(h,a,a),36)a=a+1;local c=i(e(h,a,a+b-1),36)a=a+b;return c end;b=k(j())g[1]=b;while a<#h do local a=j()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[f]=b..e(c,1,1)g[#g+1],b,f=c,c,f+1 end;return table.concat(g)end;local i=o('22H22727522621X2752271Z1W21A21721O21N21P2121X21422622327921421A1Y2162262202791721N21N21R1821621N22623227921327W21R21O23922O22O21R21A27F21621927I22P2181W1Y22O21P21A21K22O23A2111S23B1Q141923F27727927Z21N1S21621P21L21221827R27T2751V1Z21A21I29421O22621W279131W21821A1Z29C29E29422621Z290280121W21M21O27R21U2791C21P21621A21N21629321821N2121W1X27L2791221A27I2262212791R1W2142141Z27R21Y279142121Z1Z2331E21M28N2262252791G1829T2792B121N1W2932AY2242262262AU275141X29M2102B02AY27S2AN21R2AO1W1Z29H21V2BS2BP2AZ2BU2BW2262242791D1W21J22622I2791S21N21A1X2172331127P21623322V111W2331S28C29822U22622K2CC2CE21P2AC27J2CQ2CE2CG2331921A21P1Y2262222791T2A621721I2DB2752332792B42B62B82DH22721N21321P1W21K2AG27521K2AJ21N2B527927521Z1F2DA27928C21221P29H27M27527O27Q28Z27529129329529729927929Q29F2E92EF2272912EN29G29I29K29M29O2ET21P2BI2A32132D721A2AB29S29U2751721M1Y2CF1W21221722622N27U2FB2FD2FF1T1W1W21N1V2D72812AM2751C1928N27Q2E02E122Z1F2G027924F2342BR2751P2162AB1W21P23G2C42791X21621K22521H22W21L25S26E1F22723Z22526B22622B24025K24R1G26O22523E23B2531G2392622302E42CW27521P21921J28D2A02AC21728922O23I23H23G2HN23G22523G2HT2HU2702G72FU2271C2BV2GD2HR2E122724V1W2E42742HD2HF2HH2802FF2HL23H23D23J23F23G23J23J23C23A22525X25Y2IR2IR25A2342IP2IS2IR2462G722M2DC21621R1Z2972A72162172CD2GD21A21427R2HY1B27P2JC27R278275192E82A929421L2942C52E12261027922L2762272262792FI2JZ2272G02JX2K32K02DI2JY2K02B52FU2K027T2K02K02232G02KF2272KI29K2K322L23B2K727923321S2KR2KC23I2K3112K32752KM2752KZ2K02KP2K32JS22722L2DB2B52EB2JT2K42KO2JY2DO2K62KC2KS2752B52B527T2K627M2F82E12LC2LF2DJ2LF2B52BJ2LM2272L82DK2792C52LD227172KO2KQ2AM2HY23322W2272MB2272LP2E22272LS2792AM29U2B52LW2MG2782FU2AM2M82K02DB2L22M72K32KT2MF2272DB29J23322A2N22AM2BY2LW27T2N42272NB2MH2272A22NF27T21T2L92MJ2KU2752K62AU2K22NM2272782J12K92NU2NY2JX2K629J2HC2NT2BY22J2JW2752A22CB2I42782A22B52O12272I92O422722G2O72NH22722F2LL2OM2A22O02752NL22E2OL2KU2OV2NP2752FI2OY2E12A22FI2OE2OT22722D2OW22722C2OL2FI22B2OL2J12MC2752J12J12MI2272CW2N72I42J12CW2MP2PJ2272J12292NE2OZ2J12282E12O62HY2792CB29A2E12742ML2752OK2LZ2792OO2JK2E12OV29J2I42P92BY2I42PC2A22I42PF2NL2I42N72NO2E12PX2NS2O72PX2K02212CB2K02OK2KB2KL2G02R52R72792KK2MY2L42L92KQ2KG27923J2352K32PT2272O62JY2PU2762G02B72B92752BB2BD2162BQ2LD2DX2122DZ2I422725B2G72DO2E72EP2LD2ED2JJ29V2922JP2EK2G82272EZ29H2QG2ES29D2EO29H2QJ22729L29N29P2SO29S2LZ1C2F328N2F62F02LS2FA2FC2BM2FF2262NW2272DD2J42J62A82J92BC28N2JD2E52BK2BM2182102EQ2JM2A52EI2JQ2T327921A21M2BC2A02BF2I422622O2JW2BY2RH2P02JY2K52KA2OP2RH2LK2K322R2L02RA2752UF2L52RG2UG2N12UC2MF2KX2K022P2UG2MY2US2UK2L72JW2LB2KL2S42R62L52LH2OL2UD2PY2LX2NG2LQ2MK2S42LU2RM2LN2272QD2B52M22RP2M12V027922V2M92N82KS1D2VQ2PM29U2QA2N22MO2V72MR2N22N22R02N32UH2272W32MY2VO2K02N12AM2ND23329U2MG2BY2K627T2PI2NG27T2PM2AU2QP2E127T2AU2RM2WM2272NL2LW29U27T2QV2NY2Q42MJ2782R12R32OG2RL2W52742KH2G02AM2XB2792UV2RF2KR2752RJ2K32FI2NW2RO2UG2TA2DL2752RT2Q71R2BT2FO2C32S02DY2TK2272S92EA27N2CK2F12751O2GD21021O2CS27R2SR2912SZ2AX2172A52AF2L81621O1E2DV2272C22AL27U2CF2172AS2YT2FV2FX2Y62SM2802TS2SH2Q72SK2EV2752ST2EY2SW2F02SY2T02F52A82F02NS2T52FL2172FN2FP2FR2CZ2VJ22622T2U42XI2272K22R62OZ2ZV2LW2UO2KD2272ME2K82W531052XH2U62NE2KU310223J2K329J2RH2MY310G2W522U2VP2K02M22W32RH2K62KH2V52W42NX2VF2AM2LW2VF2Q72LF2VJ2UG2M52E12302N02M82WC2VB22L2MN2VG2E122Y2VX2LF2212KX2AM311631062MY311L310B2N22DB27822L2PL310U2V72WU2WH2752WO2S42WR2LV2752WU2WW31242NG2KU2NJ2ZW311W2NG29J2K22AM29J2WJ2X62O62R62MY312K2W52XD310K310M2UG2XK2R62XN2M32S42JT2G4310L312X2XO31062K62JZ2RS2B82LS2RW2152D72D92XZ2S22G427524V2G72SB2Y62Z62ZC2SQ2EW2SU2EZ2RU2271D2F52102CS2TO2QS2272JM2CG2TQ27F2YH1Z2172C5226313Y2FN21021A314B314B2D521P21M2S22EQ2EH2SG2982T92J22TD29N2TF2JA2TI27R2LS1V2B22182F32A02TP2JN2TS294313F2272G62YQ314A21A2Y11E21P2DS21K2JT2GR2NP2UL310622N1A2X8315I3100310C2X8311I2K32342UT2G0315U2UW310N2JW2US2LU2U12LF2V32K32DO31012K3310X2UA27T31682K029U316D311D2M4312X2UX2UD2K02X62L12G02X62L6310A312T2LF2782MY2B52L5312P2SR22L29J2B531672M02B5311Y2V02WP2792VD2V72VF31262VL2B52X02DB3106316I317I2NT2C52L82VA2QY2752C5316X317M311V2LW317N22731772DB3179317R2W42RM317X2J12LW27M2C52X027M317T2VA317O2752DB317Q2V0318C2L12NT2NT2DB31742W42DB317727T31812W427T2RM318N2WV2VZ2W42X029U2M6275311C31652AM318E2NG318H2AM318J311Q2OP2WG2NT29U318T311C2RM2MG2JX2NF2AM2X0318V2K32M6317T2RN312W2752U32NP23E319V310R2LF2NX2RH2C52K63114316331122LT2V12LF31A12G0316G2DB31A62W1275311F315Z2MP23F2KR316C2M0316E31AA2VF316I2L831872792AU2K62AM2QG27927M319B2V72MX22729J2WI317Y317A31AR2I422Q2W429U316531802RI318F318Y312931BK27M31B831272NS22531AR317J31BE2DB31BG318M2OM2XJ31BK2J131BM2W431BO2NT2PM2K431AR2G42NC2VB2WA2M831B62CW311B2NG2XO2212Q92VL2U6311631822RB31BF311731C431B72L92AM27T2OA2MF31CL27M31CN316I31CQ31BW31CS2DO2I923931832L03132279');local a=bit32 or require('bit');local d=a and a.bxor or function(a,b)local c,d=1,0 while a>0 and b>0 do local f,e=a%2,b%2 if f~=e then d=d+c end a,b,c=(a-f)/2,(b-e)/2,c*2 end if a<b then a=b end while a>0 do local b=a%2 if b>0 then d=d+c end a,c=(a-b)/2,c*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,e,c,b=h(i,a,a+3);f=d(f,79)e=d(e,79)c=d(c,79)b=d(b,79)a=a+4;return(b*16777216)+(c*65536)+(e*256)+f;end;local function j()local b=d(h(i,a,a),79);a=a+1;return b;end;local function f()local c,b=h(i,a,a+2);c=d(c,79)b=d(b,79)a=a+2;return(b*256)+c;end;local function t()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return l(b,a-1023)*(e+(d/(2^52)));end;local l=b;local function q(b)local c;if(not b)then b=l();if(b==0)then return'';end;end;c=e(i,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),79))end return m(b);end;local a=b;local function s(...)return{...},n('#',...)end local function o()local h={};local d={};local a={};local i={h,d,nil,a};local a=b()local e={}for c=1,a do local b=j();local a;if(b==3)then a=(j()~=0);elseif(b==2)then a=t();elseif(b==1)then a=q();end;e[c]=a;end;for a=1,b()do d[a-1]=o();end;i[3]=j();for i=1,b()do local a=j();if(c(a,1,1)==0)then local d=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(d==0)then a[3]=f();a[4]=f();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=e[a[2]]end if(c(g,2,2)==1)then a[3]=e[a[3]]end if(c(g,3,3)==1)then a[4]=e[a[4]]end h[i]=a;end end;return i;end;local function l(a,k,f)local c=a[1];local b=a[2];local a=a[3];return function(...)local d=c;local m=b;local e=a;local j=s local b=1;local h=-1;local q={};local o={...};local i=n('#',...)-1;local n={};local c={};for a=0,i do if(a>=e)then q[a-e]=o[a+1];else c[a]=o[a+1];end;end;local a=i-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=36 then if e<=17 then if e<=8 then if e<=3 then if e<=1 then if e==0 then c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=l(m[a[3]],nil,f);end;elseif e==2 then b=a[3];else local a=a[2]c[a]=c[a]()end;elseif e<=5 then if e>4 then local e;local i;local l,m;local k;local e;c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=j(c[e](c[e+1]))h=m+e-1 i=0;for a=e,h do i=i+1;c[a]=l[i];end;b=b+1;a=d[b];e=a[2]l={c[e](g(c,e+1,h))};i=0;for a=e,a[4]do i=i+1;c[a]=l[i];end b=b+1;a=d[b];b=a[3];else c[a[2]]=c[a[3]][a[4]];end;elseif e<=6 then c[a[2]]=a[3];elseif e==7 then local b=a[2]c[b](g(c,b+1,a[3]))else local h;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))end;elseif e<=12 then if e<=10 then if e>9 then local a=a[2]c[a]=c[a](c[a+1])else local b=a[2]c[b]=c[b](g(c,b+1,a[3]))end;elseif e==11 then local h;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];b=a[3];else c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=14 then if e==13 then local a=a[2]c[a]=c[a]()else local b=a[2]local d,a=j(c[b](g(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=15 then c[a[2]]=c[a[3]][a[4]];elseif e==16 then c[a[2]]();else local h;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];end;elseif e<=26 then if e<=21 then if e<=19 then if e==18 then for a=a[2],a[3]do c[a]=nil;end;else c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e==20 then do return end;else local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;end;elseif e<=23 then if e>22 then c[a[2]][a[3]]=a[4];else local h=m[a[3]];local g;local e={};g=p({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==35 then e[f-1]={c,a[3]};else e[f-1]={k,a[3]};end;n[#n+1]=e;end;c[a[2]]=l(h,g,f);end;elseif e<=24 then c[a[2]]=c[a[3]];elseif e==25 then local a=a[2]c[a]=c[a](g(c,a+1,h))else do return end;end;elseif e<=31 then if e<=28 then if e>27 then local b=a[2]c[b](g(c,b+1,a[3]))else local a=a[2]local d,b=j(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=29 then local h;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))elseif e==30 then local e;local i;local k,m;local l;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];l=c[a[3]];c[e+1]=l;c[e]=l[a[4]];b=b+1;a=d[b];e=a[2]k,m=j(c[e](c[e+1]))h=m+e-1 i=0;for a=e,h do i=i+1;c[a]=k[i];end;b=b+1;a=d[b];e=a[2]k={c[e](g(c,e+1,h))};i=0;for a=e,a[4]do i=i+1;c[a]=k[i];end b=b+1;a=d[b];b=a[3];else c[a[2]]=a[3];end;elseif e<=33 then if e==32 then local a=a[2]c[a]=c[a](g(c,a+1,h))else if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=34 then k[a[3]]=c[a[2]];elseif e>35 then for a=a[2],a[3]do c[a]=nil;end;else c[a[2]]=c[a[3]];end;elseif e<=55 then if e<=45 then if e<=40 then if e<=38 then if e>37 then if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;else local b=a[2]c[b]=c[b](g(c,b+1,a[3]))end;elseif e>39 then local a=a[2]local d,b=j(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;else local f;local e;e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if(c[a[2]]~=c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=42 then if e>41 then local a=a[2]c[a]=c[a](c[a+1])else k[a[3]]=c[a[2]];end;elseif e<=43 then c[a[2]]=k[a[3]];elseif e>44 then local h;local e;e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];else c[a[2]]=k[a[3]];end;elseif e<=50 then if e<=47 then if e==46 then local h;local e;c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=k[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=l(m[a[3]],nil,f);end;elseif e<=48 then if not c[a[2]]then b=b+1;else b=a[3];end;elseif e==49 then if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]();end;elseif e<=52 then if e==51 then local a=a[2]c[a](c[a+1])else local f;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];for a=a[2],a[3]do c[a]=nil;end;b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=53 then local k;local l,m;local i;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=j(c[e](g(c,e+1,a[3])))h=m+e-1 k=0;for a=e,h do k=k+1;c[a]=l[k];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,h))b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e==54 then local b=a[2]local e={c[b](g(c,b+1,h))};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;end;elseif e<=64 then if e<=59 then if e<=57 then if e==56 then c[a[2]]=f[a[3]];else local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];end;elseif e>58 then if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;else local a=a[2]c[a](c[a+1])end;elseif e<=61 then if e>60 then c[a[2]][a[3]]=c[a[4]];else c[a[2]]=f[a[3]];end;elseif e<=62 then c[a[2]][a[3]]=a[4];elseif e==63 then local h=m[a[3]];local g;local e={};g=p({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==35 then e[f-1]={c,a[3]};else e[f-1]={k,a[3]};end;n[#n+1]=e;end;c[a[2]]=l(h,g,f);else local b=a[2]local d,a=j(c[b](g(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=69 then if e<=66 then if e>65 then local f;local e;e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;else if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=67 then local d=a[2]local e={c[d](g(c,d+1,h))};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end elseif e==68 then local e;local i;local l,m;local k;local e;c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=j(c[e](c[e+1]))h=m+e-1 i=0;for a=e,h do i=i+1;c[a]=l[i];end;b=b+1;a=d[b];e=a[2]l={c[e](g(c,e+1,h))};i=0;for a=e,a[4]do i=i+1;c[a]=l[i];end b=b+1;a=d[b];b=a[3];else c[a[2]][a[3]]=c[a[4]];end;elseif e<=71 then if e==70 then if(c[a[2]]~=c[a[4]])then b=b+1;else b=a[3];end;else local h;local e;e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=72 then local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];elseif e>73 then if(c[a[2]]~=c[a[4]])then b=b+1;else b=a[3];end;else b=a[3];end;b=b+1;end;end;end;return l(o(),{},r())();
