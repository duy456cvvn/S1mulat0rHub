--[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
local h=string.byte;local k=string.char;local e=string.sub;local o=table.concat;local a=table.insert;local m=math.ldexp;local r=getfenv or function()return _ENV end;local p=setmetatable;local n=select;local f=unpack or table.unpack;local j=tonumber;local function l(h)local b,c,g="","",{}local f=256;local d={}for a=0,f-1 do d[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())g[1]=b;while a<#h do local a=i()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[f]=b..e(c,1,1)g[#g+1],b,f=c,c,f+1 end;return table.concat(g)end;local i=l('25024627524524C27524626Y26X26V26Q26D26A26C27326W26P24524227926P26V26Z26R24524127926626A26A26E25T26R26A24525327927227W26E26D24S25525526E26V27F26R26S27I25426T26X26Z25526C26V26925524V27025H24U25F26525S24I24524B27925X26C26R26V26A26R25H26R26T26A27326X26W27L27926326V27I29F27526327326D26T24524027925H26Y27326Q26R26C24524527926O26A26D29Z27926Z27I24727927925U25Y2A527526Z26V26M2A92AA25Y192AD29R27525U27P26V26P27R2AO24625E26X26P26P26Y27R24E27926527326Y26Y25225Z2B724523N27925W29U26W26Q2B92B725225E27326A26V26W25225A2622AS25B24523R27926226R26P25225X26B26A2BJ2B825A26Y2BU2BW27925E26E2BL2BN2BP2B92BH2522B52BB27827525H28C26Z2522BF27D2AU2BE2C426A29D2452B32CO26R2CJ25T28D24524F29S2D32BI26629426Y24523K29S2CQ2522DC26V2C726S29326V27125227O27Q2BV2D12462DK2B82BA2DE23Z27925G26R2572D526D2C62BR25E26C26X2BK25H26T27H26E26A2BV23M2BY2AS2B92622C729H26N26S26R25225D26X26C2712BV2432E229426Q26N27S2912EW26R25T26B2732D729S2EF26R2D32F92FB27M2AF29I29E2A02752FA2A42CN24626726W26E2C425W2C02BP2F527525X29D26W29926A2462482AA2792AJ2752442AA23V2G929S2GA2GG2462GB2462GD2792GF2GJ25H2GI27523Q2792452GN24625L25T29Q27925V26W26V26S2B129K24626929I2812F027528C27326C2A42FJ2462DS27R2FR27Z26A29826C26827326T27R2D82752EV2EX26D28C2HU2AE2462AG26E2H127529B2BO26W2A42G82752HO25U26R29O2DA2BP2A32H826027P27R2HJ2IN26E27R23T27926S2DP26B2932A326B2522C926G2J226V2J42J325226R26M26E27B26D29C29E2HN2IO2EE2EG28124D2AB2AR2AT2BM2IA27727925S2HG29729X26829X2GL25927923O25W2GK2K52GT24X2K52GX2K32K52GB25224R2KC2GM24624024Y2K527T2A92A924224Z2792KM2462KP2792582K52KB2A92FN2G12KG2A923O2752KO2K22GC2462HD2462522L82GD29R2L42KT24627T2G92GD27M2GD2LC2KH2GD2B32LO2GD2GD2D82LS2KH2FR2KH2L02GS2462A02HJ2462K82A92KE2KI2L92462JM24W25T2M92M624624A2KT2KQ2752MG2LB2M92G925G2LI2MA2G92B32GB2LG2D82902752LG2782LA2LO2782782LF2752MI2LJ2AA2782MI2LN2752N42G72MN2462NF2492NH2JM2782GU2792902AV2792G82N92792NK2DV2792GU2HW2AA2JM2GU2A92402552K52EK2A92LL2MK2462O82MJ2792GD2AJ2GR2L52NY2GV2GX2GZ2D02BE2BG26Q2DZ2H82HA2BN2452LA2HF2HH2H82HL2JS2IE2802HQ2HS2I22O02HY2712I026V2I22L02I52I72462I92BP2IC2792IF2IH2HU2BH2IK2HI2792IN27Q2H825V26N2IH2452IU2752IW2712IY28026D2J12J82Q82J62J92JB2JD2JF2P22462D527Q2JJ2732EH2452JM2AP2JO26R2JQ2FZ2FR2JU2932P52JZ2AA2562K22K42KN2NY2MG2KA2R12K62LB2KF2R22LE2KK2A92KS2KO2OB2KS2KU2752K12L32R62M025X2L22462LG2L62MZ2L82N22LD2M92LG27M2NU2L82LM2NH2LT2462LR2RW2LV2RW2LY2GD2M02OJ2762LH27925A2K52M829R2F02MC23S2M923Y2K52MI2RI2462SP2RF2SG2K62LC2NR2752MQ27T2LA2792MU2L72462MX2T62N12792N32NI2RX2N72MR2G92NB2KH2TC2782G82TK2462NK2LO2NM2462NO2752NQ2GG2NT2GG2NW2GG2NZ2GG2O22K52O52O72K92OE2752OD2SS2OG2CO2M12TT2GW2792ON2N92BZ26P2C326A25Z2OT2HB2OW2792OY2PR2752P12HN2P42JX2HT2HV2792P92PB2PD2A626V2I62AV2PI2IB2452ID2QG2802IG2II2PP26W2IL2IQ2IO2QF2BZ2A225E2DA2CZ2Q02462Q22Q42J02J52J72QA2J82JA2JC26X2JE2CZ2JH2QI2EF2QK2JL2JN2AG2JP2CG2JG2JT2JV2QW26C2GL2QZ2MZ2R62GB23Q2R42R02KG2752M82RA2KI2RC2MR2R22SS2RH2OB2RK2RQ2RM2AA2RO2R22L32OJ2HJ2LG2GD2RV2LP2TE2LH2S02KH2S22LW2LQ2S32KH2S82XG2SA2M22GG2GB2M32AA2SH2M72KF2SK2MB24624W2SN29R2SU2MH2U82ST2K52SS2XY2WU2MO2AA2T12MS2AA2NX2RQ2752T82RT2TD2XF2NF2N62Y82XJ2TI2ND2TD2TL2NH2NJ2NL2TD2TT2462TV2G92TX2G92TZ2G92U12G92U32O42O62A92OD2OA2792UA2OB2UC2462OI2R72BX2762OM2H02N92H32H52B12UU2H92UQ2OX29I2OZ2HJ2UW2PL2UY2HR2V02FC2HX2EW2PA2I127R2PE2V72PG2VA2PK2P326A2VG2PO26Q2PQ2IM2VM2VL2IS2G024625I2C92PX2OZ2QN24626226X26T2DL310X26V310Z310A24625X27226V28N29A29X2452TT26626B2AG26W26X29V25G26X26X26A25I311E2812AV25X25S28N27Q2GL2512WS2R22K72U72WN2WT2R82KG2LE2612K52742GB2SS312F2X52K52RN2RP2RR2SF2YL2KH2XF2S42YS2RZ2GG2LL2TJ2RW2S62XG2XQ2S42XS2SC2R72XW2792IU2XZ2M92SL2Y32ME29R31382Y82SS313F2KB2Y12WU2O42M92YS2B32MY2AA29R2B32YW29R29R2TM275313V2TO2NH313Z2GU2LO2T22462BX2NO29R2BX27T2U52A923P2U72SS314E2SV2L82OH2M1313Q2UG2752ON2O02CP27P2CT29W2UP2OV31042VM2UX2HP2UZ2I22N93117310Z2A431113113311526Y3154311H2O0311C311E2PC29629Y2MI2752602EW2AG26Y314T2PY2P8310C2V42HM2PL2JI2W92QL2FR25V2702G5315P245315J2FS26W26826X2712JW2HR2QX27923X31242R72WQ3127312J3125312A2WW2KJ2KL2KG2X12YB2OB23W2KX2X62KR312M2XB2TB2OJ2A92F02LG2A02SZ312K312X2KG27T2LO2R2312Z2R22D82XD312O2XM2MA2RY2TD2LK2LH2YW2S42JM317I2MI2LO2A02GD313Q2MA2GL2SE2F02RS314J2UD2SD2S52GV314X2PU314Z2P531093153310Y29X31562BY31143116318D29Y315R2HZ310E2QF2QH297315X2812N92982BH2E62QF2QU316B2JY26C2Z82K22652M12LO2AA2GD317G31342RW319627927M312N2KD31712KH31742YI2GI317U2NH2R229R317B316P2LW2A92NX2M431972LH317Y2R72O02P02VM318C3118318E2QM318G3159315B318K291311D311F315H318O31072P62V1310B318M2PC315U2IE315W2JK28Z2BE2BP310P2AT25I318E2W62WH2QV2JX29X2Z62K22AV319G317M319C2SE31B72LH319F31702KG31732SE31762KZ31782R2317A319H312Z2UC2O0312O317M27M319Y2GB3165314N2GY2H02O025Z2C426X2DX26V314V281318727R31A3315531A62753158318I31A431AA2G131AC315G311H3189315131AI2462V3318N2W7318Q31AP313Q25W31AS2AS26R31AV2HH31AX275318Y2WJ2GL23L316G2WP2WR3128316L2WV2U7240312D2A92DG312G2OB31DG316K2XT2OK2X9312P3181319Q3172319N2U431DS2RD312P312W2YE2XG2B3317K31BO2S1317831322XO2GD317Q2SE2GD3165317X2GG2A0318031BP2ZM2ZO2GB2FR31A13188310631503108315227931A92A431012HG2FQ31EN31ES311A315E31AD315C2V2315S31CP315V2W831CS31AR2PP31AU31AW2WG31D12WI31B031912AA2DG2MZ24W3195312V31DW31DL31FN3198316Z31DY2GX2T32SB2XU2GV31BP314H312A2Y12LF314A2R731442MR31FR2T72TG2AA27T2D82YW27T27T312Z31GF31G92LO2B327T2LY2N52GG2B32782ZE2K52D82O92Y931GU31832R731BU31C631AF31EO31AH310V31EY2ZS310V29327O26D26V31C32HJ2OU2HC2US310231EW310L31EY318L310D31AL318O31AO2WA310V318U26Q318W2QT31FF316C2WK2AA2VT23O312I31B52WW319J313431BH31G831DX2TS2RU2WS31IA2M82S42F031DD2KH2SN31DH27931IK312J2LE2AA2NK2UC2XA2KH2N9317T2K52NX3136319W27527M2M4316F2GL314B2K22BX2T531DY2B3313T312P27831E231852782YW31JB2TD31GK318531E831G92B331EB2JM2XJ2D82JM31GS2GD2BX31GV2SS31JX2Y929R314K31842NK27631H131CK31EP31C731ER318J2A431H72AV2722DD2C931C42UR2HE31HI31H231EY2VL2PU3157318H315A318J31EZ31CH311G31CF31CN31F431HO31CQ2QJ2QL31CT31CV31FB31CZ31FD24631D231FG2GL2OB31I2312931DQ319I2SE31I72XT31I9312O2NO2XE31ID317H2KF31IG2WX2KH31JU316S27931LW2SS2WY2KB31IP2NV2KH2R2317G31IV2SE319T2AA31IZ2OF319D31BP283313931J62LV2KF2T52782M831JJ2D824025Y2MR31MG31852SS31MT2M831J62JM23O31J831G527531JJ31G82TI2MT2TD31JI318529031JL2B3313X31JO314031LY31GA27931JT2U42O631FR31JY31LE31LX313Y2K631EI2792AV310V26526R26N2G2314U2HJ28G2BH310I311R2B026R2SB2N925C29N2732H631O82472GX2YA2WU31LS2GI2KB319M313Y31MR31LP31BH2SS31EF2SS31D52RL2LZ2792Y42XP2YB31GW31NQ31402AJ31232ZM2RQ2F031FW317M2AA31I62OK312Q2XT2M431OV31IO31FP2MD2KH31PI29R31OU2K631P62G923O314E31PA2YE31OH312J2A02L0316I31LP2FN31NT27525M2K225B2M1312N2GX31LH2A0319J319V31772GJ2L82G931GV319Q27531BE2XT31BG31LL2LB29031FU2RQ312W2XJ312W31OH31IZ2LO31EF31E027531GC31GP31MD24M31N32TD2JM31R731852MI2NQ26431G9319H2462WM31FP2YL2F031GX31R031IX312P27T2VD2T431R631R827831RA31R831RD2KI31RF31GX312531RJ2M42TA31RN29031EF2NK23O2602MR2TT24031RF31JC31GV31RI31FY27931S42NA2MA2T525231S82K531SA31SC27T2ZQ31S031852A031SI31RJ2M031SM2792TA31SP31SR2A931ST2MR2LG31SX2B331BR2K631T131SN2F031T631EC31T927T314E2GC25Z31852T331T52SI31SR2GD31TL2OC2OF31TP2B32NR31TS2M731TU2462BD31SB2MR31FJ2GM31TZ31NI31U231QR2MA2GD31U631SU24631D531TO31852NX31UD31SQ31UF314031U727T2SP31UL2B331BO31UO31U431UH2MR2E131UV317L2NE31SO31TT31UQ31TW316U31V331112YP318531U331V82RQ31UI316F31V331EB24I31V62M731QM27923U2AA31P92KX31VP31QB31VP2F02GF31RO2F02SN31W02462IU2LG319P31BC313Z2832LO313Z27431SF31NA2WT31RJ31TR2M931J931Q4246');local a=bit32 or require('bit');local d=a and a.bxor or function(a,b)local c,d=1,0 while a>0 and b>0 do local f,e=a%2,b%2 if f~=e then d=d+c end a,b,c=(a-f)/2,(b-e)/2,c*2 end if a<b then a=b end while a>0 do local b=a%2 if b>0 then d=d+c end a,c=(a-b)/2,c*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,e,c,b=h(i,a,a+3);f=d(f,150)e=d(e,150)c=d(c,150)b=d(b,150)a=a+4;return(b*16777216)+(c*65536)+(e*256)+f;end;local function j()local b=d(h(i,a,a),150);a=a+1;return b;end;local function g()local c,b=h(i,a,a+2);c=d(c,150)b=d(b,150)a=a+2;return(b*256)+c;end;local function s()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return m(b,a-1023)*(e+(d/(2^52)));end;local l=b;local function m(b)local c;if(not b)then b=l();if(b==0)then return'';end;end;c=e(i,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),150))end return o(b);end;local a=b;local function k(...)return{...},n('#',...)end local function q()local i={};local e={};local a={};local h={i,e,nil,a};local a=b()local d={}for c=1,a do local b=j();local a;if(b==2)then a=(j()~=0);elseif(b==1)then a=s();elseif(b==3)then a=m();end;d[c]=a;end;h[3]=j();for a=1,b()do e[a-1]=q();end;for h=1,b()do local a=j();if(c(a,1,1)==0)then local e=c(a,2,3);local f=c(a,4,6);local a={g(),g(),nil,nil};if(e==0)then a[3]=g();a[4]=g();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=g();end;if(c(f,1,1)==1)then a[2]=d[a[2]]end if(c(f,2,2)==1)then a[3]=d[a[3]]end if(c(f,3,3)==1)then a[4]=d[a[4]]end i[h]=a;end end;return h;end;local function l(a,j,g)local b=a[1];local c=a[2];local a=a[3];return function(...)local d=b;local m=c;local e=a;local i=k local b=1;local h=-1;local q={};local k={...};local o=n('#',...)-1;local n={};local c={};for a=0,o do if(a>=e)then q[a-e]=k[a+1];else c[a]=k[a+1];end;end;local a=o-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=43 then if e<=21 then if e<=10 then if e<=4 then if e<=1 then if e>0 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];else c[a[2]]=c[a[3]];end;elseif e<=2 then local g;local e;c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];for a=a[2],a[3]do c[a]=nil;end;b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];elseif e==3 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;else c[a[2]]();end;elseif e<=7 then if e<=5 then g[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=j[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];b=a[3];elseif e>6 then local h;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];do return end;end;elseif e<=8 then for a=a[2],a[3]do c[a]=nil;end;elseif e>9 then local b=a[2]c[b](f(c,b+1,a[3]))else local b=a[2]c[b]=c[b](f(c,b+1,a[3]))end;elseif e<=15 then if e<=12 then if e==11 then if c[a[2]]then b=b+1;else b=a[3];end;else if(c[a[2]]~=c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=13 then local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];elseif e>14 then local e;local j;local k,m;local l;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];l=c[a[3]];c[e+1]=l;c[e]=l[a[4]];b=b+1;a=d[b];e=a[2]k,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=k[j];end;b=b+1;a=d[b];e=a[2]k={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=k[j];end b=b+1;a=d[b];b=a[3];else c[a[2]][a[3]]=a[4];end;elseif e<=18 then if e<=16 then local h;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];elseif e>17 then local g;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))end;elseif e<=19 then g[a[3]]=c[a[2]];elseif e==20 then c[a[2]]=l(m[a[3]],nil,g);else for a=a[2],a[3]do c[a]=nil;end;end;elseif e<=32 then if e<=26 then if e<=23 then if e==22 then c[a[2]][a[3]]=c[a[4]];else local d=a[2]local e={c[d](f(c,d+1,h))};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end end;elseif e<=24 then c[a[2]]=a[3];elseif e==25 then local e;local j;local l,m;local k;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];else c[a[2]]=j[a[3]];end;elseif e<=29 then if e<=27 then local a=a[2]local d,b=i(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;elseif e>28 then j[a[3]]=c[a[2]];else if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=30 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;elseif e==31 then local a=a[2]c[a]=c[a]()else c[a[2]]=j[a[3]];end;elseif e<=37 then if e<=34 then if e>33 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];else local a=a[2]c[a]=c[a](f(c,a+1,h))end;elseif e<=35 then c[a[2]]=(a[3]~=0);elseif e==36 then if not c[a[2]]then b=b+1;else b=a[3];end;else b=a[3];end;elseif e<=40 then if e<=38 then local e;local j;local l,m;local k;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];elseif e>39 then g[a[3]]=c[a[2]];else c[a[2]][a[3]]=c[a[4]];end;elseif e<=41 then local k;local m,l;local j;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]m,l=i(c[e](f(c,e+1,a[3])))h=l+e-1 k=0;for a=e,h do k=k+1;c[a]=m[k];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))elseif e>42 then local a=a[2]c[a](c[a+1])else c[a[2]][a[3]]=a[4];end;elseif e<=65 then if e<=54 then if e<=48 then if e<=45 then if e>44 then c[a[2]]={};else c[a[2]]=c[a[3]];end;elseif e<=46 then do return end;elseif e==47 then local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;else local i=m[a[3]];local h;local e={};h=p({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==44 then e[f-1]={c,a[3]};else e[f-1]={j,a[3]};end;n[#n+1]=e;end;c[a[2]]=l(i,h,g);end;elseif e<=51 then if e<=49 then local a=a[2]c[a]=c[a]()elseif e>50 then local h;local e;c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=j[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e<=52 then local h;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];elseif e==53 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))end;elseif e<=59 then if e<=56 then if e>55 then local e;local j;local l,m;local k;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];else b=a[3];end;elseif e<=57 then local b=a[2]c[b](f(c,b+1,a[3]))elseif e==58 then c[a[2]]=g[a[3]];else c[a[2]]=(a[3]~=0);end;elseif e<=62 then if e<=60 then local b=a[2]local d,a=i(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;elseif e==61 then c[a[2]]=c[a[3]][a[4]];else local e;local j;local l,m;local k;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];end;elseif e<=63 then j[a[3]]=c[a[2]];elseif e==64 then if(c[a[2]]~=c[a[4]])then b=b+1;else b=a[3];end;else c[a[2]]=l(m[a[3]],nil,g);end;elseif e<=76 then if e<=70 then if e<=67 then if e>66 then local e;local j;local l,m;local k;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];else c[a[2]]=g[a[3]];end;elseif e<=68 then local e;local j;local k,m;local l;local e;c[a[2]]();b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];l=c[a[3]];c[e+1]=l;c[e]=l[a[4]];b=b+1;a=d[b];e=a[2]k,m=i(c[e](c[e+1]))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=k[j];end;b=b+1;a=d[b];e=a[2]k={c[e](f(c,e+1,h))};j=0;for a=e,a[4]do j=j+1;c[a]=k[j];end b=b+1;a=d[b];b=a[3];elseif e==69 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else local b=a[2]local d,a=i(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=73 then if e<=71 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;elseif e>72 then c[a[2]]();else local a=a[2]local d,b=i(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=74 then local i=m[a[3]];local h;local e={};h=p({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==44 then e[f-1]={c,a[3]};else e[f-1]={j,a[3]};end;n[#n+1]=e;end;c[a[2]]=l(i,h,g);elseif e>75 then local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];do return end;end;elseif e<=82 then if e<=79 then if e<=77 then local a=a[2]c[a]=c[a](f(c,a+1,h))elseif e>78 then if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=a[3];end;elseif e<=80 then local b=a[2]local e={c[b](f(c,b+1,h))};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end elseif e>81 then local h;local e;c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=j[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;end;elseif e<=85 then if e<=83 then do return end;elseif e>84 then c[a[2]]=c[a[3]][a[4]];else c[a[2]]={};end;elseif e<=86 then local h;local e;c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=j[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))elseif e==87 then local a=a[2]c[a](c[a+1])else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];end;b=b+1;end;end;end;return l(q(),{},r())();
