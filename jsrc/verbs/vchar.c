/* Copyright 1990-2008, Jsoftware Inc.  All rights reserved.               */
/* Licensed use only. Any other use is in violation of copyright.          */
/*                                                                         */
/* Verbs: Character Functions  u&(a.&i.) and u&.(a.&i.)                    */

#include "j.h"


static APFX(maxC, UC,UC,UC, MAX,, return EVOK;)
static APFX(minC, UC,UC,UC, MIN,, return EVOK;)

static AIFX(ltC,  B, UC,UC, <  )
static AIFX(leC,  B, UC,UC, <= )
static AIFX(geC,  B, UC,UC, >= )
static AIFX(gtC,  B, UC,UC, >  )

 A jtcharfn2(J jt,A a,A w,A self){A z;B b;C c;I an,ar,*as,m,n,wn,wr,*ws,zn,zt;V*v;VF ado=0;
 v=FAV(self); c=ID(v->fgh[0]);
 if(CUNDER==v->id)switch(c){
  case CMAX:  zt=LIT; ado=(VF)maxC; break;
  case CMIN:  zt=LIT; ado=(VF)minC; break;
// not used   this was never detected as special  case CAT:   z=VAV(v->fgh[0])->fgh[0]; v=VAV(z); if(CAMP==v->id&&256==jti0(jt,v->fgh[0])&&CSTILE==ID(v->fgh[1]));
  default: ASSERTSYS(ado,"charfn2 ado");
 }else switch(c){
  case CEQ:   return eq(a,w);
  case CNE:   return ne(a,w);
  case CLT:   zt=B01; ado=(VF)ltC;  break;
  case CLE:   zt=B01; ado=(VF)leC;  break;
  case CGE:   zt=B01; ado=(VF)geC;  break;
  case CGT:   zt=B01; ado=(VF)gtC;  break;
  default: ASSERTSYS(ado,"charfn2 ado");
 }
 
 an=AN(a); ar=AR(a); as=AS(a);
 wn=AN(w); wr=AR(w); ws=AS(w);
 ASSERTAGREE(as,ws,MIN(ar,wr))
 b=ar<=wr; zn=b?wn:an; m=b?an:wn; I r=b?wr:ar; I *s=b?ws:as; I rs=b?ar:wr; PROD(n,r-rs,s+rs);
 GA(z,zt,zn,r,s); if(!zn)return z;
 n^=-b; n=(n==~1)?1:n;  // encode b flag in sign of n
 ((AHDR2FN*)ado)(n,m,CAV(a),CAV(w),CAV(z),jt);
 return z;
}
