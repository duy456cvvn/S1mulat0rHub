--[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
local i=string.byte;local k=string.char;local e=string.sub;local p=table.concat;local a=table.insert;local n=math.ldexp;local q=getfenv or function()return _ENV end;local a=setmetatable;local l=select;local g=unpack or table.unpack;local j=tonumber;local function m(h)local b,c,d="","",{}local f=256;local g={}for a=0,f-1 do g[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())d[1]=b;while a<#h do local a=i()if g[a]then c=g[a]else c=b..e(b,1,1)end;g[f]=b..e(c,1,1)d[#d+1],b,f=c,c,f+1 end;return table.concat(d)end;local j=m('21O21C27521C21G27622F22922L22D21C21J27622O22K22922B22D23D22C21D2751024221A26F25C23521C21M27622K22N22922C21V21W21U22H22M22F27E27623C21W21W21S23B22D21W21C23027622G28C21S21V1A1V1V21U22921Z1U22F22H21W22G21X22A21X21V22D21U22B22N22M21W22D2981U29622L1V22C21X22114151622B21Y21Y22M1V22R1122L21X27I21W1021U23C2901V22L2292832941V21V22B28521S21W1V23A28X22M22D21V21V22R22H29T29V22N21U1U22K21X22927O21C2681121325225D27V22Z28K28M28O28Q28S28U28W28Y29029229429629829A21W29C22N29E29G29I29K29M29O29Q29S29U22929W29Y2A02A22A421U2A62A822H2AA1V23627I22C22D22S22G21U22N21Z2AJ2AL2BS2AN2AT24W23E25B1C2662B02B228D2B428R28T28V28X28Z29129329529729929B29D29F29H29J29L29N29P29R2CE2BT29Z22A2A12A32992BY2A72A92AB23622N22028622F2CD2BR21W2AN2AP2AR21C21H27621S28529821C21N27621X22M21V21X21S22N22H21U29922C2762751P2761Y2E32752AT21C1G2132EF21C21E21C1M2EF2DX27O21F27727X2752EW2EZ27621P21C27O2EJ2762782751Y2152F62FE2751G2EL2FE2DX1Y2752EY21I2EQ2FE2EY2FP2762ES2EQ27O27O2FA2751O2FE2F82FI2FG2EP2EF2ES1M1X2762FD27O27F21G2F021C2GB21C2G22772EI2GH2EM2FH2FE27O2FK2FM21C21K2FP2EX2FS2FT2GV2FE2FY21C2G02F72EK2FF2EN2G52GY2G82761L2FE21L2F32752HC2H42F92GL2GP2762GO2FW2DW2GI2GS2GF2762GW2GX2ER2GZ2FX2EF2H32GI2H52H51Y2HE27O2742762GU2752ES2AT1W2HT276');local a=bit32 or require('bit');local d=a and a.bxor or function(a,b)local c,d=1,0 while a>0 and b>0 do local f,e=a%2,b%2 if f~=e then d=d+c end a,b,c=(a-f)/2,(b-e)/2,c*2 end if a<b then a=b end while a>0 do local b=a%2 if b>0 then d=d+c end a,c=(a-b)/2,c*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,e,c,b=i(j,a,a+3);f=d(f,48)e=d(e,48)c=d(c,48)b=d(b,48)a=a+4;return(b*16777216)+(c*65536)+(e*256)+f;end;local function h()local b=d(i(j,a,a),48);a=a+1;return b;end;local function f()local b,c=i(j,a,a+2);b=d(b,48)c=d(c,48)a=a+2;return(c*256)+b;end;local function m()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return n(b,a-1023)*(e+(d/(2^52)));end;local n=b;local function o(b)local c;if(not b)then b=n();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(i(e(c,a,a)),48))end return p(b);end;local a=b;local function k(...)return{...},l('#',...)end local function n()local i={};local d={};local a={};local j={i,d,nil,a};local a=b()local e={}for c=1,a do local b=h();local a;if(b==2)then a=(h()~=0);elseif(b==1)then a=m();elseif(b==0)then a=o();end;e[c]=a;end;for a=1,b()do d[a-1]=n();end;j[3]=h();for j=1,b()do local a=h();if(c(a,1,1)==0)then local d=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(d==0)then a[3]=f();a[4]=f();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=e[a[2]]end if(c(g,2,2)==1)then a[3]=e[a[3]]end if(c(g,3,3)==1)then a[4]=e[a[4]]end i[j]=a;end end;return j;end;local function o(a,b,h)local c=a[1];local b=a[2];local a=a[3];return function(...)local e=c;local b=b;local d=a;local i=k local b=1;local f=-1;local m={};local k={...};local j=l('#',...)-1;local a={};local c={};for a=0,j do if(a>=d)then m[a-d]=k[a+1];else c[a]=k[a+1];end;end;local a=j-d+1 local a;local d;while true do a=e[b];d=a[1];if d<=12 then if d<=5 then if d<=2 then if d<=0 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;elseif d>1 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;else c[a[2]]=c[a[3]][a[4]];end;elseif d<=3 then c[a[2]]();elseif d>4 then local b=a[2]local d,a=i(c[b](g(c,b+1,a[3])))f=a+b-1 local a=0;for b=b,f do a=a+1;c[b]=d[a];end;else local j;local m,l;local k;local d;c[a[2]]=h[a[3]];b=b+1;a=e[b];d=a[2];k=c[a[3]];c[d+1]=k;c[d]=k[a[4]];b=b+1;a=e[b];c[a[2]]=a[3];b=b+1;a=e[b];d=a[2]m,l=i(c[d](g(c,d+1,a[3])))f=l+d-1 j=0;for a=d,f do j=j+1;c[a]=m[j];end;b=b+1;a=e[b];d=a[2]c[d]=c[d](g(c,d+1,f))b=b+1;a=e[b];c[a[2]]();b=b+1;a=e[b];b=a[3];end;elseif d<=8 then if d<=6 then local j;local m,l;local k;local d;c[a[2]]=h[a[3]];b=b+1;a=e[b];d=a[2];k=c[a[3]];c[d+1]=k;c[d]=k[a[4]];b=b+1;a=e[b];c[a[2]]=a[3];b=b+1;a=e[b];d=a[2]m,l=i(c[d](g(c,d+1,a[3])))f=l+d-1 j=0;for a=d,f do j=j+1;c[a]=m[j];end;b=b+1;a=e[b];d=a[2]c[d]=c[d](g(c,d+1,f))b=b+1;a=e[b];c[a[2]]();b=b+1;a=e[b];b=a[3];elseif d>7 then local a=a[2]c[a](c[a+1])else c[a[2]]();end;elseif d<=10 then if d>9 then b=a[3];else c[a[2]]=a[3];end;elseif d==11 then c[a[2]]=h[a[3]];else c[a[2]]=h[a[3]];end;elseif d<=19 then if d<=15 then if d<=13 then local a=a[2]c[a](c[a+1])elseif d>14 then local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];else local a=a[2]c[a]=c[a](g(c,a+1,f))end;elseif d<=17 then if d==16 then do return end;else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif d>18 then c[a[2]]=a[3];else b=a[3];end;elseif d<=22 then if d<=20 then local a=a[2]c[a]=c[a](g(c,a+1,f))elseif d>21 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;else local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];end;elseif d<=24 then if d>23 then do return end;else c[a[2]]=c[a[3]][a[4]];end;elseif d>25 then local b=a[2]local d,a=i(c[b](g(c,b+1,a[3])))f=a+b-1 local a=0;for b=b,f do a=a+1;c[b]=d[a];end;else local j;local m,l;local k;local d;c[a[2]]=h[a[3]];b=b+1;a=e[b];d=a[2];k=c[a[3]];c[d+1]=k;c[d]=k[a[4]];b=b+1;a=e[b];c[a[2]]=a[3];b=b+1;a=e[b];d=a[2]m,l=i(c[d](g(c,d+1,a[3])))f=l+d-1 j=0;for a=d,f do j=j+1;c[a]=m[j];end;b=b+1;a=e[b];d=a[2]c[d]=c[d](g(c,d+1,f))b=b+1;a=e[b];c[a[2]]();b=b+1;a=e[b];b=a[3];end;b=b+1;end;end;end;return o(n(),{},q())();
