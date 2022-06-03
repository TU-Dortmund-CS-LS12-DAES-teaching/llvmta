; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.long_double_bits = type { %struct.uqwords }
%struct.uqwords = type { %union.udwords, %union.udwords }
%union.udwords = type { i64 }
%struct.anon = type { i32, i32 }

@__const.__floatdidf.low = private unnamed_addr constant { double } { double 0x4330000000000000 }, align 8
@__const.__floatundidf.high = private unnamed_addr constant { double } { double 0x4530000000000000 }, align 8
@__const.__floatundidf.low = private unnamed_addr constant { double } { double 0x4330000000000000 }, align 8
@.str = private unnamed_addr constant [37 x i8] c"../libraries/builtinsfloat/negvdi2.c\00", align 1
@__func__.__negvdi2 = private unnamed_addr constant [10 x i8] c"__negvdi2\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"../libraries/builtinsfloat/negvsi2.c\00", align 1
@__func__.__negvsi2 = private unnamed_addr constant [10 x i8] c"__negvsi2\00", align 1

@__aeabi_dadd = dso_local alias void (...), bitcast (double (double, double)* @__adddf3 to void (...)*)
@__aeabi_fadd = dso_local alias void (...), bitcast (float (float, float)* @__addsf3 to void (...)*)
@__aeabi_dcmpun = dso_local alias void (...), bitcast (i32 (double, double)* @__unorddf2 to void (...)*)
@__aeabi_fcmpun = dso_local alias void (...), bitcast (i32 (float, float)* @__unordsf2 to void (...)*)
@__aeabi_ddiv = dso_local alias void (...), bitcast (double (double, double)* @__divdf3 to void (...)*)
@__aeabi_fdiv = dso_local alias void (...), bitcast (float (float, float)* @__divsf3 to void (...)*)
@__aeabi_h2f = dso_local alias void (...), bitcast (float (i16)* @__extendhfsf2 to void (...)*)
@__aeabi_f2d = dso_local alias void (...), bitcast (double (float)* @__extendsfdf2 to void (...)*)
@__aeabi_d2lz = dso_local alias void (...), bitcast (i64 (double)* @__fixdfdi to void (...)*)
@__aeabi_d2iz = dso_local alias void (...), bitcast (i32 (double)* @__fixdfsi to void (...)*)
@__aeabi_f2lz = dso_local alias void (...), bitcast (i64 (float)* @__fixsfdi to void (...)*)
@__aeabi_f2iz = dso_local alias void (...), bitcast (i32 (float)* @__fixsfsi to void (...)*)
@__aeabi_d2ulz = dso_local alias void (...), bitcast (i64 (double)* @__fixunsdfdi to void (...)*)
@__aeabi_d2uiz = dso_local alias void (...), bitcast (i32 (double)* @__fixunsdfsi to void (...)*)
@__aeabi_f2ulz = dso_local alias void (...), bitcast (i64 (float)* @__fixunssfdi to void (...)*)
@__aeabi_f2uiz = dso_local alias void (...), bitcast (i32 (float)* @__fixunssfsi to void (...)*)
@__aeabi_l2d = dso_local alias void (...), bitcast (double (i64)* @__floatdidf to void (...)*)
@__aeabi_l2f = dso_local alias void (...), bitcast (float (i64)* @__floatdisf to void (...)*)
@__aeabi_i2d = dso_local alias void (...), bitcast (double (i32)* @__floatsidf to void (...)*)
@__aeabi_i2f = dso_local alias void (...), bitcast (float (i32)* @__floatsisf to void (...)*)
@__aeabi_ul2d = dso_local alias void (...), bitcast (double (i64)* @__floatundidf to void (...)*)
@__aeabi_ul2f = dso_local alias void (...), bitcast (float (i64)* @__floatundisf to void (...)*)
@__aeabi_ui2d = dso_local alias void (...), bitcast (double (i32)* @__floatunsidf to void (...)*)
@__aeabi_ui2f = dso_local alias void (...), bitcast (float (i32)* @__floatunsisf to void (...)*)
@__aeabi_dmul = dso_local alias void (...), bitcast (double (double, double)* @__muldf3 to void (...)*)
@__aeabi_lmul = dso_local alias void (...), bitcast (i64 (i64, i64)* @__muldi3 to void (...)*)
@__aeabi_fmul = dso_local alias void (...), bitcast (float (float, float)* @__mulsf3 to void (...)*)
@__aeabi_dneg = dso_local alias void (...), bitcast (double (double)* @__negdf2 to void (...)*)
@__aeabi_fneg = dso_local alias void (...), bitcast (float (float)* @__negsf2 to void (...)*)
@__aeabi_dsub = dso_local alias void (...), bitcast (double (double, double)* @__subdf3 to void (...)*)
@__aeabi_fsub = dso_local alias void (...), bitcast (float (float, float)* @__subsf3 to void (...)*)
@__aeabi_d2h = dso_local alias void (...), bitcast (i16 (double)* @__truncdfhf2 to void (...)*)
@__aeabi_d2f = dso_local alias void (...), bitcast (float (double)* @__truncdfsf2 to void (...)*)
@__aeabi_f2h = dso_local alias void (...), bitcast (i16 (float)* @__truncsfhf2 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__adddf3(double %a, double %b) #0 !dbg !178 {
entry:
  %call = call arm_aapcs_vfpcc double @__addXf3__(double %a, double %b) #4, !dbg !180
  ret double %call, !dbg !181
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @__addXf3__(double %a, double %b) #0 !dbg !182 {
entry:
  %aSignificand = alloca i64, align 8
  %bSignificand = alloca i64, align 8
  %call = call arm_aapcs_vfpcc i64 @toRep(double %a) #4, !dbg !184
  %call1 = call arm_aapcs_vfpcc i64 @toRep(double %b) #4, !dbg !185
  %and = and i64 %call, 9223372036854775807, !dbg !186
  %and2 = and i64 %call1, 9223372036854775807, !dbg !187
  %sub = add nsw i64 %and, -1, !dbg !188
  %cmp = icmp ugt i64 %sub, 9218868437227405310, !dbg !189
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !190

lor.lhs.false:                                    ; preds = %entry
  %sub3 = add nsw i64 %and2, -1, !dbg !191
  %cmp4 = icmp ugt i64 %sub3, 9218868437227405310, !dbg !192
  br i1 %cmp4, label %if.then, label %if.end38, !dbg !193

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cmp5 = icmp ugt i64 %and, 9218868437227405312, !dbg !194
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !195

if.then6:                                         ; preds = %if.then
  %call7 = call arm_aapcs_vfpcc i64 @toRep(double %a) #4, !dbg !196
  %or = or i64 %call7, 2251799813685248, !dbg !197
  %call8 = call arm_aapcs_vfpcc double @fromRep(i64 %or) #4, !dbg !198
  br label %return, !dbg !199

if.end:                                           ; preds = %if.then
  %cmp9 = icmp ugt i64 %and2, 9218868437227405312, !dbg !200
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !201

if.then10:                                        ; preds = %if.end
  %call11 = call arm_aapcs_vfpcc i64 @toRep(double %b) #4, !dbg !202
  %or12 = or i64 %call11, 2251799813685248, !dbg !203
  %call13 = call arm_aapcs_vfpcc double @fromRep(i64 %or12) #4, !dbg !204
  br label %return, !dbg !205

if.end14:                                         ; preds = %if.end
  %cmp15 = icmp eq i64 %and, 9218868437227405312, !dbg !206
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !207

if.then16:                                        ; preds = %if.end14
  %call17 = call arm_aapcs_vfpcc i64 @toRep(double %a) #4, !dbg !208
  %call18 = call arm_aapcs_vfpcc i64 @toRep(double %b) #4, !dbg !209
  %xor = xor i64 %call17, %call18, !dbg !210
  %cmp19 = icmp eq i64 %xor, -9223372036854775808, !dbg !211
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !212

if.then20:                                        ; preds = %if.then16
  %call21 = call arm_aapcs_vfpcc double @fromRep(i64 9221120237041090560) #4, !dbg !213
  br label %return, !dbg !214

if.else:                                          ; preds = %if.then16
  br label %return, !dbg !215

if.end22:                                         ; preds = %if.end14
  %cmp23 = icmp eq i64 %and2, 9218868437227405312, !dbg !216
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !217

if.then24:                                        ; preds = %if.end22
  br label %return, !dbg !218

if.end25:                                         ; preds = %if.end22
  %tobool = icmp eq i64 %and, 0, !dbg !219
  br i1 %tobool, label %if.then26, label %if.end34, !dbg !220

if.then26:                                        ; preds = %if.end25
  %tobool27 = icmp eq i64 %and2, 0, !dbg !221
  br i1 %tobool27, label %if.then28, label %if.else33, !dbg !222

if.then28:                                        ; preds = %if.then26
  %call29 = call arm_aapcs_vfpcc i64 @toRep(double %a) #4, !dbg !223
  %call30 = call arm_aapcs_vfpcc i64 @toRep(double %b) #4, !dbg !224
  %and31 = and i64 %call29, %call30, !dbg !225
  %call32 = call arm_aapcs_vfpcc double @fromRep(i64 %and31) #4, !dbg !226
  br label %return, !dbg !227

if.else33:                                        ; preds = %if.then26
  br label %return, !dbg !228

if.end34:                                         ; preds = %if.end25
  %tobool35 = icmp eq i64 %and2, 0, !dbg !229
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !230

if.then36:                                        ; preds = %if.end34
  br label %return, !dbg !231

if.end37:                                         ; preds = %if.end34
  br label %if.end38, !dbg !232

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %cmp39 = icmp ugt i64 %and2, %and, !dbg !233
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !234

if.then40:                                        ; preds = %if.end38
  br label %if.end41, !dbg !235

if.end41:                                         ; preds = %if.then40, %if.end38
  %bRep.0 = phi i64 [ %call, %if.then40 ], [ %call1, %if.end38 ], !dbg !236
  %aRep.0 = phi i64 [ %call1, %if.then40 ], [ %call, %if.end38 ], !dbg !236
  %shr = lshr i64 %aRep.0, 52, !dbg !237
  %0 = trunc i64 %shr to i32, !dbg !238
  %conv = and i32 %0, 2047, !dbg !238
  %shr43 = lshr i64 %bRep.0, 52, !dbg !239
  %1 = trunc i64 %shr43 to i32, !dbg !240
  %conv45 = and i32 %1, 2047, !dbg !240
  %and46 = and i64 %aRep.0, 4503599627370495, !dbg !241
  store i64 %and46, i64* %aSignificand, align 8, !dbg !242
  %and47 = and i64 %bRep.0, 4503599627370495, !dbg !243
  store i64 %and47, i64* %bSignificand, align 8, !dbg !244
  %cmp48 = icmp eq i32 %conv, 0, !dbg !245
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !246

if.then50:                                        ; preds = %if.end41
  %call51 = call arm_aapcs_vfpcc i32 @normalize(i64* nonnull %aSignificand) #4, !dbg !247
  br label %if.end52, !dbg !248

if.end52:                                         ; preds = %if.then50, %if.end41
  %aExponent.0 = phi i32 [ %call51, %if.then50 ], [ %conv, %if.end41 ], !dbg !236
  %cmp53 = icmp eq i32 %conv45, 0, !dbg !249
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !250

if.then55:                                        ; preds = %if.end52
  %call56 = call arm_aapcs_vfpcc i32 @normalize(i64* nonnull %bSignificand) #4, !dbg !251
  br label %if.end57, !dbg !252

if.end57:                                         ; preds = %if.then55, %if.end52
  %bExponent.0 = phi i32 [ %call56, %if.then55 ], [ %conv45, %if.end52 ], !dbg !236
  %and58 = and i64 %aRep.0, -9223372036854775808, !dbg !253
  %xor59 = xor i64 %aRep.0, %bRep.0, !dbg !254
  %tobool61 = icmp slt i64 %xor59, 0, !dbg !255
  %2 = load i64, i64* %aSignificand, align 8, !dbg !256
  %or62 = shl i64 %2, 3, !dbg !257
  %shl = or i64 %or62, 36028797018963968, !dbg !257
  store i64 %shl, i64* %aSignificand, align 8, !dbg !258
  %3 = load i64, i64* %bSignificand, align 8, !dbg !259
  %or63 = shl i64 %3, 3, !dbg !260
  %shl64 = or i64 %or63, 36028797018963968, !dbg !260
  store i64 %shl64, i64* %bSignificand, align 8, !dbg !261
  %sub65 = sub nsw i32 %aExponent.0, %bExponent.0, !dbg !262
  %tobool66 = icmp eq i32 %sub65, 0, !dbg !263
  br i1 %tobool66, label %if.end82, label %if.then67, !dbg !263

if.then67:                                        ; preds = %if.end57
  %cmp68 = icmp ult i32 %sub65, 64, !dbg !264
  br i1 %cmp68, label %if.then70, label %if.else80, !dbg !265

if.then70:                                        ; preds = %if.then67
  %4 = load i64, i64* %bSignificand, align 8, !dbg !266
  %sub71 = sub i32 64, %sub65, !dbg !267
  %sh_prom = zext i32 %sub71 to i64, !dbg !268
  %shl72 = shl i64 %4, %sh_prom, !dbg !268
  %tobool73 = icmp ne i64 %shl72, 0, !dbg !266
  %sh_prom75 = zext i32 %sub65 to i64, !dbg !269
  %shr76 = lshr i64 %4, %sh_prom75, !dbg !269
  %conv78 = zext i1 %tobool73 to i64, !dbg !270
  %or79 = or i64 %shr76, %conv78, !dbg !271
  br label %if.end81, !dbg !272

if.else80:                                        ; preds = %if.then67
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then70
  %storemerge = phi i64 [ 1, %if.else80 ], [ %or79, %if.then70 ], !dbg !236
  store i64 %storemerge, i64* %bSignificand, align 8, !dbg !236
  br label %if.end82, !dbg !273

if.end82:                                         ; preds = %if.end57, %if.end81
  br i1 %tobool61, label %if.then84, label %if.else101, !dbg !274

if.then84:                                        ; preds = %if.end82
  %5 = load i64, i64* %bSignificand, align 8, !dbg !275
  %6 = load i64, i64* %aSignificand, align 8, !dbg !276
  %sub85 = sub i64 %6, %5, !dbg !276
  store i64 %sub85, i64* %aSignificand, align 8, !dbg !276
  %cmp86 = icmp eq i64 %sub85, 0, !dbg !277
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !278

if.then88:                                        ; preds = %if.then84
  %call89 = call arm_aapcs_vfpcc double @fromRep(i64 0) #4, !dbg !279
  br label %return, !dbg !280

if.end90:                                         ; preds = %if.then84
  %7 = load i64, i64* %aSignificand, align 8, !dbg !281
  %cmp91 = icmp ult i64 %7, 36028797018963968, !dbg !282
  br i1 %cmp91, label %if.then93, label %if.end100, !dbg !281

if.then93:                                        ; preds = %if.end90
  %8 = load i64, i64* %aSignificand, align 8, !dbg !283
  %call94 = call arm_aapcs_vfpcc i32 @rep_clz(i64 %8) #4, !dbg !284
  %call95 = call arm_aapcs_vfpcc i32 @rep_clz(i64 36028797018963968) #4, !dbg !285
  %sub96 = sub nsw i32 %call94, %call95, !dbg !286
  %9 = load i64, i64* %aSignificand, align 8, !dbg !287
  %sh_prom97 = zext i32 %sub96 to i64, !dbg !287
  %shl98 = shl i64 %9, %sh_prom97, !dbg !287
  store i64 %shl98, i64* %aSignificand, align 8, !dbg !287
  %sub99 = sub nsw i32 %aExponent.0, %sub96, !dbg !288
  br label %if.end100, !dbg !289

if.end100:                                        ; preds = %if.then93, %if.end90
  %aExponent.1 = phi i32 [ %sub99, %if.then93 ], [ %aExponent.0, %if.end90 ], !dbg !236
  br label %if.end115, !dbg !290

if.else101:                                       ; preds = %if.end82
  %10 = load i64, i64* %bSignificand, align 8, !dbg !291
  %11 = load i64, i64* %aSignificand, align 8, !dbg !292
  %add = add i64 %11, %10, !dbg !292
  store i64 %add, i64* %aSignificand, align 8, !dbg !292
  %and102 = and i64 %add, 72057594037927936, !dbg !293
  %tobool103 = icmp eq i64 %and102, 0, !dbg !293
  br i1 %tobool103, label %if.end114, label %if.then104, !dbg !294

if.then104:                                       ; preds = %if.else101
  %12 = load i64, i64* %aSignificand, align 8, !dbg !295
  %and106 = and i64 %12, 1, !dbg !296
  %shr109 = lshr i64 %12, 1, !dbg !297
  %or112 = or i64 %shr109, %and106, !dbg !298
  store i64 %or112, i64* %aSignificand, align 8, !dbg !299
  %add113 = add nsw i32 %aExponent.0, 1, !dbg !300
  br label %if.end114, !dbg !301

if.end114:                                        ; preds = %if.else101, %if.then104
  %aExponent.2 = phi i32 [ %add113, %if.then104 ], [ %aExponent.0, %if.else101 ], !dbg !236
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end100
  %aExponent.3 = phi i32 [ %aExponent.1, %if.end100 ], [ %aExponent.2, %if.end114 ], !dbg !236
  %cmp116 = icmp sgt i32 %aExponent.3, 2046, !dbg !302
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !303

if.then118:                                       ; preds = %if.end115
  %or119 = or i64 %and58, 9218868437227405312, !dbg !304
  %call120 = call arm_aapcs_vfpcc double @fromRep(i64 %or119) #4, !dbg !305
  br label %return, !dbg !306

if.end121:                                        ; preds = %if.end115
  %cmp122 = icmp slt i32 %aExponent.3, 1, !dbg !307
  br i1 %cmp122, label %if.then124, label %if.end138, !dbg !308

if.then124:                                       ; preds = %if.end121
  %sub126 = sub nsw i32 1, %aExponent.3, !dbg !309
  %13 = load i64, i64* %aSignificand, align 8, !dbg !310
  %sub128 = add i32 %aExponent.3, 63, !dbg !311
  %sh_prom129 = zext i32 %sub128 to i64, !dbg !312
  %shl130 = shl i64 %13, %sh_prom129, !dbg !312
  %tobool131 = icmp ne i64 %shl130, 0, !dbg !310
  %sh_prom133 = zext i32 %sub126 to i64, !dbg !313
  %shr134 = lshr i64 %13, %sh_prom133, !dbg !313
  %conv136 = zext i1 %tobool131 to i64, !dbg !314
  %or137 = or i64 %shr134, %conv136, !dbg !315
  store i64 %or137, i64* %aSignificand, align 8, !dbg !316
  br label %if.end138, !dbg !317

if.end138:                                        ; preds = %if.then124, %if.end121
  %aExponent.4 = phi i32 [ 0, %if.then124 ], [ %aExponent.3, %if.end121 ], !dbg !236
  %14 = load i64, i64* %aSignificand, align 8, !dbg !318
  %15 = trunc i64 %14 to i32, !dbg !318
  %conv140 = and i32 %15, 7, !dbg !318
  %shr141 = lshr i64 %14, 3, !dbg !319
  %and142 = and i64 %shr141, 4503599627370495, !dbg !320
  %conv1431 = zext i32 %aExponent.4 to i64, !dbg !321
  %shl144 = shl i64 %conv1431, 52, !dbg !322
  %or145 = or i64 %and142, %shl144, !dbg !323
  %or146 = or i64 %or145, %and58, !dbg !324
  %cmp147 = icmp ugt i32 %conv140, 4, !dbg !325
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !326

if.then149:                                       ; preds = %if.end138
  %inc = add i64 %or146, 1, !dbg !327
  br label %if.end150, !dbg !328

if.end150:                                        ; preds = %if.then149, %if.end138
  %result.0 = phi i64 [ %inc, %if.then149 ], [ %or146, %if.end138 ], !dbg !236
  %cmp151 = icmp eq i32 %conv140, 4, !dbg !329
  br i1 %cmp151, label %if.then153, label %if.end156, !dbg !330

if.then153:                                       ; preds = %if.end150
  %and154 = and i64 %result.0, 1, !dbg !331
  %add155 = add i64 %result.0, %and154, !dbg !332
  br label %if.end156, !dbg !333

if.end156:                                        ; preds = %if.then153, %if.end150
  %result.1 = phi i64 [ %add155, %if.then153 ], [ %result.0, %if.end150 ], !dbg !236
  %call157 = call arm_aapcs_vfpcc double @fromRep(i64 %result.1) #4, !dbg !334
  br label %return, !dbg !335

return:                                           ; preds = %if.end156, %if.then118, %if.then88, %if.then36, %if.else33, %if.then28, %if.then24, %if.else, %if.then20, %if.then10, %if.then6
  %retval.0 = phi double [ %call8, %if.then6 ], [ %call13, %if.then10 ], [ %call21, %if.then20 ], [ %a, %if.else ], [ %b, %if.then24 ], [ %call89, %if.then88 ], [ %call120, %if.then118 ], [ %call157, %if.end156 ], [ %a, %if.then36 ], [ %b, %if.else33 ], [ %call32, %if.then28 ], !dbg !236
  ret double %retval.0, !dbg !336
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep(double %x) #0 !dbg !337 {
entry:
  %.cast = bitcast double %x to i64, !dbg !339
  ret i64 %.cast, !dbg !340
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep(i64 %x) #0 !dbg !341 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !342
  ret double %.cast, !dbg !343
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @normalize(i64* %significand) #0 !dbg !344 {
entry:
  %0 = load i64, i64* %significand, align 8, !dbg !345
  %call = call arm_aapcs_vfpcc i32 @rep_clz(i64 %0) #4, !dbg !346
  %call1 = call arm_aapcs_vfpcc i32 @rep_clz(i64 4503599627370496) #4, !dbg !347
  %sub = sub nsw i32 %call, %call1, !dbg !348
  %1 = load i64, i64* %significand, align 8, !dbg !349
  %sh_prom = zext i32 %sub to i64, !dbg !349
  %shl = shl i64 %1, %sh_prom, !dbg !349
  store i64 %shl, i64* %significand, align 8, !dbg !349
  %sub2 = sub nsw i32 1, %sub, !dbg !350
  ret i32 %sub2, !dbg !351
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @rep_clz(i64 %a) #0 !dbg !352 {
entry:
  %tobool = icmp ugt i64 %a, 4294967295, !dbg !353
  br i1 %tobool, label %if.then, label %if.else, !dbg !354

if.then:                                          ; preds = %entry
  %shr = lshr i64 %a, 32, !dbg !355
  %conv = trunc i64 %shr to i32, !dbg !356
  %0 = call i32 @llvm.ctlz.i32(i32 %conv, i1 false), !dbg !357, !range !358
  br label %return, !dbg !359

if.else:                                          ; preds = %entry
  %conv2 = trunc i64 %a to i32, !dbg !360
  %1 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 false), !dbg !361, !range !358
  %add = add nuw nsw i32 %1, 32, !dbg !362
  br label %return, !dbg !363

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %add, %if.else ], !dbg !364
  ret i32 %retval.0, !dbg !365
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__addsf3(float %a, float %b) #0 !dbg !366 {
entry:
  %call = call arm_aapcs_vfpcc float @__addXf3__.1(float %a, float %b) #4, !dbg !367
  ret float %call, !dbg !368
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @__addXf3__.1(float %a, float %b) #0 !dbg !369 {
entry:
  %aSignificand = alloca i32, align 4
  %bSignificand = alloca i32, align 4
  %call = call arm_aapcs_vfpcc i32 @toRep.2(float %a) #4, !dbg !370
  %call1 = call arm_aapcs_vfpcc i32 @toRep.2(float %b) #4, !dbg !371
  %and = and i32 %call, 2147483647, !dbg !372
  %and2 = and i32 %call1, 2147483647, !dbg !373
  %sub = add nsw i32 %and, -1, !dbg !374
  %cmp = icmp ugt i32 %sub, 2139095038, !dbg !375
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !376

lor.lhs.false:                                    ; preds = %entry
  %sub3 = add nsw i32 %and2, -1, !dbg !377
  %cmp4 = icmp ugt i32 %sub3, 2139095038, !dbg !378
  br i1 %cmp4, label %if.then, label %if.end38, !dbg !379

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cmp5 = icmp ugt i32 %and, 2139095040, !dbg !380
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !381

if.then6:                                         ; preds = %if.then
  %call7 = call arm_aapcs_vfpcc i32 @toRep.2(float %a) #4, !dbg !382
  %or = or i32 %call7, 4194304, !dbg !383
  %call8 = call arm_aapcs_vfpcc float @fromRep.3(i32 %or) #4, !dbg !384
  br label %return, !dbg !385

if.end:                                           ; preds = %if.then
  %cmp9 = icmp ugt i32 %and2, 2139095040, !dbg !386
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !387

if.then10:                                        ; preds = %if.end
  %call11 = call arm_aapcs_vfpcc i32 @toRep.2(float %b) #4, !dbg !388
  %or12 = or i32 %call11, 4194304, !dbg !389
  %call13 = call arm_aapcs_vfpcc float @fromRep.3(i32 %or12) #4, !dbg !390
  br label %return, !dbg !391

if.end14:                                         ; preds = %if.end
  %cmp15 = icmp eq i32 %and, 2139095040, !dbg !392
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !393

if.then16:                                        ; preds = %if.end14
  %call17 = call arm_aapcs_vfpcc i32 @toRep.2(float %a) #4, !dbg !394
  %call18 = call arm_aapcs_vfpcc i32 @toRep.2(float %b) #4, !dbg !395
  %xor = xor i32 %call17, %call18, !dbg !396
  %cmp19 = icmp eq i32 %xor, -2147483648, !dbg !397
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !398

if.then20:                                        ; preds = %if.then16
  %call21 = call arm_aapcs_vfpcc float @fromRep.3(i32 2143289344) #4, !dbg !399
  br label %return, !dbg !400

if.else:                                          ; preds = %if.then16
  br label %return, !dbg !401

if.end22:                                         ; preds = %if.end14
  %cmp23 = icmp eq i32 %and2, 2139095040, !dbg !402
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !403

if.then24:                                        ; preds = %if.end22
  br label %return, !dbg !404

if.end25:                                         ; preds = %if.end22
  %tobool = icmp eq i32 %and, 0, !dbg !405
  br i1 %tobool, label %if.then26, label %if.end34, !dbg !406

if.then26:                                        ; preds = %if.end25
  %tobool27 = icmp eq i32 %and2, 0, !dbg !407
  br i1 %tobool27, label %if.then28, label %if.else33, !dbg !408

if.then28:                                        ; preds = %if.then26
  %call29 = call arm_aapcs_vfpcc i32 @toRep.2(float %a) #4, !dbg !409
  %call30 = call arm_aapcs_vfpcc i32 @toRep.2(float %b) #4, !dbg !410
  %and31 = and i32 %call29, %call30, !dbg !411
  %call32 = call arm_aapcs_vfpcc float @fromRep.3(i32 %and31) #4, !dbg !412
  br label %return, !dbg !413

if.else33:                                        ; preds = %if.then26
  br label %return, !dbg !414

if.end34:                                         ; preds = %if.end25
  %tobool35 = icmp eq i32 %and2, 0, !dbg !415
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !416

if.then36:                                        ; preds = %if.end34
  br label %return, !dbg !417

if.end37:                                         ; preds = %if.end34
  br label %if.end38, !dbg !418

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %cmp39 = icmp ugt i32 %and2, %and, !dbg !419
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !420

if.then40:                                        ; preds = %if.end38
  br label %if.end41, !dbg !421

if.end41:                                         ; preds = %if.then40, %if.end38
  %bRep.0 = phi i32 [ %call, %if.then40 ], [ %call1, %if.end38 ], !dbg !422
  %aRep.0 = phi i32 [ %call1, %if.then40 ], [ %call, %if.end38 ], !dbg !422
  %shr = lshr i32 %aRep.0, 23, !dbg !423
  %and42 = and i32 %shr, 255, !dbg !424
  %shr43 = lshr i32 %bRep.0, 23, !dbg !425
  %and44 = and i32 %shr43, 255, !dbg !426
  %and45 = and i32 %aRep.0, 8388607, !dbg !427
  store i32 %and45, i32* %aSignificand, align 4, !dbg !428
  %and46 = and i32 %bRep.0, 8388607, !dbg !429
  store i32 %and46, i32* %bSignificand, align 4, !dbg !430
  %cmp47 = icmp eq i32 %and42, 0, !dbg !431
  br i1 %cmp47, label %if.then48, label %if.end50, !dbg !432

if.then48:                                        ; preds = %if.end41
  %call49 = call arm_aapcs_vfpcc i32 @normalize.4(i32* nonnull %aSignificand) #4, !dbg !433
  br label %if.end50, !dbg !434

if.end50:                                         ; preds = %if.then48, %if.end41
  %aExponent.0 = phi i32 [ %call49, %if.then48 ], [ %and42, %if.end41 ], !dbg !422
  %cmp51 = icmp eq i32 %and44, 0, !dbg !435
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !436

if.then52:                                        ; preds = %if.end50
  %call53 = call arm_aapcs_vfpcc i32 @normalize.4(i32* nonnull %bSignificand) #4, !dbg !437
  br label %if.end54, !dbg !438

if.end54:                                         ; preds = %if.then52, %if.end50
  %bExponent.0 = phi i32 [ %call53, %if.then52 ], [ %and44, %if.end50 ], !dbg !422
  %and55 = and i32 %aRep.0, -2147483648, !dbg !439
  %xor56 = xor i32 %aRep.0, %bRep.0, !dbg !440
  %tobool58 = icmp slt i32 %xor56, 0, !dbg !441
  %0 = load i32, i32* %aSignificand, align 4, !dbg !442
  %or59 = shl i32 %0, 3, !dbg !443
  %shl = or i32 %or59, 67108864, !dbg !443
  store i32 %shl, i32* %aSignificand, align 4, !dbg !444
  %1 = load i32, i32* %bSignificand, align 4, !dbg !445
  %or60 = shl i32 %1, 3, !dbg !446
  %shl61 = or i32 %or60, 67108864, !dbg !446
  store i32 %shl61, i32* %bSignificand, align 4, !dbg !447
  %sub62 = sub nsw i32 %aExponent.0, %bExponent.0, !dbg !448
  %tobool63 = icmp eq i32 %sub62, 0, !dbg !449
  br i1 %tobool63, label %if.end76, label %if.then64, !dbg !449

if.then64:                                        ; preds = %if.end54
  %cmp65 = icmp ult i32 %sub62, 32, !dbg !450
  br i1 %cmp65, label %if.then66, label %if.else74, !dbg !451

if.then66:                                        ; preds = %if.then64
  %2 = load i32, i32* %bSignificand, align 4, !dbg !452
  %sub67 = sub i32 32, %sub62, !dbg !453
  %shl68 = shl i32 %2, %sub67, !dbg !454
  %tobool69 = icmp ne i32 %shl68, 0, !dbg !452
  %shr71 = lshr i32 %2, %sub62, !dbg !455
  %conv = zext i1 %tobool69 to i32, !dbg !456
  %or73 = or i32 %shr71, %conv, !dbg !457
  br label %if.end75, !dbg !458

if.else74:                                        ; preds = %if.then64
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then66
  %storemerge = phi i32 [ 1, %if.else74 ], [ %or73, %if.then66 ], !dbg !422
  store i32 %storemerge, i32* %bSignificand, align 4, !dbg !422
  br label %if.end76, !dbg !459

if.end76:                                         ; preds = %if.end54, %if.end75
  br i1 %tobool58, label %if.then78, label %if.else94, !dbg !460

if.then78:                                        ; preds = %if.end76
  %3 = load i32, i32* %bSignificand, align 4, !dbg !461
  %4 = load i32, i32* %aSignificand, align 4, !dbg !462
  %sub79 = sub i32 %4, %3, !dbg !462
  store i32 %sub79, i32* %aSignificand, align 4, !dbg !462
  %cmp80 = icmp eq i32 %sub79, 0, !dbg !463
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !464

if.then82:                                        ; preds = %if.then78
  %call83 = call arm_aapcs_vfpcc float @fromRep.3(i32 0) #4, !dbg !465
  br label %return, !dbg !466

if.end84:                                         ; preds = %if.then78
  %5 = load i32, i32* %aSignificand, align 4, !dbg !467
  %cmp85 = icmp ult i32 %5, 67108864, !dbg !468
  br i1 %cmp85, label %if.then87, label %if.end93, !dbg !467

if.then87:                                        ; preds = %if.end84
  %6 = load i32, i32* %aSignificand, align 4, !dbg !469
  %call88 = call arm_aapcs_vfpcc i32 @rep_clz.5(i32 %6) #4, !dbg !470
  %call89 = call arm_aapcs_vfpcc i32 @rep_clz.5(i32 67108864) #4, !dbg !471
  %sub90 = sub nsw i32 %call88, %call89, !dbg !472
  %7 = load i32, i32* %aSignificand, align 4, !dbg !473
  %shl91 = shl i32 %7, %sub90, !dbg !473
  store i32 %shl91, i32* %aSignificand, align 4, !dbg !473
  %sub92 = sub nsw i32 %aExponent.0, %sub90, !dbg !474
  br label %if.end93, !dbg !475

if.end93:                                         ; preds = %if.then87, %if.end84
  %aExponent.1 = phi i32 [ %sub92, %if.then87 ], [ %aExponent.0, %if.end84 ], !dbg !422
  br label %if.end108, !dbg !476

if.else94:                                        ; preds = %if.end76
  %8 = load i32, i32* %bSignificand, align 4, !dbg !477
  %9 = load i32, i32* %aSignificand, align 4, !dbg !478
  %add = add i32 %9, %8, !dbg !478
  store i32 %add, i32* %aSignificand, align 4, !dbg !478
  %and95 = and i32 %add, 134217728, !dbg !479
  %tobool96 = icmp eq i32 %and95, 0, !dbg !479
  br i1 %tobool96, label %if.end107, label %if.then97, !dbg !480

if.then97:                                        ; preds = %if.else94
  %10 = load i32, i32* %aSignificand, align 4, !dbg !481
  %and99 = and i32 %10, 1, !dbg !482
  %shr102 = lshr i32 %10, 1, !dbg !483
  %or105 = or i32 %shr102, %and99, !dbg !484
  store i32 %or105, i32* %aSignificand, align 4, !dbg !485
  %add106 = add nsw i32 %aExponent.0, 1, !dbg !486
  br label %if.end107, !dbg !487

if.end107:                                        ; preds = %if.else94, %if.then97
  %aExponent.2 = phi i32 [ %add106, %if.then97 ], [ %aExponent.0, %if.else94 ], !dbg !422
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end93
  %aExponent.3 = phi i32 [ %aExponent.1, %if.end93 ], [ %aExponent.2, %if.end107 ], !dbg !422
  %cmp109 = icmp sgt i32 %aExponent.3, 254, !dbg !488
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !489

if.then111:                                       ; preds = %if.end108
  %or112 = or i32 %and55, 2139095040, !dbg !490
  %call113 = call arm_aapcs_vfpcc float @fromRep.3(i32 %or112) #4, !dbg !491
  br label %return, !dbg !492

if.end114:                                        ; preds = %if.end108
  %cmp115 = icmp slt i32 %aExponent.3, 1, !dbg !493
  br i1 %cmp115, label %if.then117, label %if.end129, !dbg !494

if.then117:                                       ; preds = %if.end114
  %sub119 = sub nsw i32 1, %aExponent.3, !dbg !495
  %11 = load i32, i32* %aSignificand, align 4, !dbg !496
  %sub121 = add i32 %aExponent.3, 31, !dbg !497
  %shl122 = shl i32 %11, %sub121, !dbg !498
  %tobool123 = icmp ne i32 %shl122, 0, !dbg !496
  %shr125 = lshr i32 %11, %sub119, !dbg !499
  %conv127 = zext i1 %tobool123 to i32, !dbg !500
  %or128 = or i32 %shr125, %conv127, !dbg !501
  store i32 %or128, i32* %aSignificand, align 4, !dbg !502
  br label %if.end129, !dbg !503

if.end129:                                        ; preds = %if.then117, %if.end114
  %aExponent.4 = phi i32 [ 0, %if.then117 ], [ %aExponent.3, %if.end114 ], !dbg !422
  %12 = load i32, i32* %aSignificand, align 4, !dbg !504
  %and130 = and i32 %12, 7, !dbg !505
  %shr131 = lshr i32 %12, 3, !dbg !506
  %and132 = and i32 %shr131, 8388607, !dbg !507
  %shl133 = shl i32 %aExponent.4, 23, !dbg !508
  %or134 = or i32 %and132, %shl133, !dbg !509
  %or135 = or i32 %or134, %and55, !dbg !510
  %cmp136 = icmp ugt i32 %and130, 4, !dbg !511
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !512

if.then138:                                       ; preds = %if.end129
  %inc = add i32 %or135, 1, !dbg !513
  br label %if.end139, !dbg !514

if.end139:                                        ; preds = %if.then138, %if.end129
  %result.0 = phi i32 [ %inc, %if.then138 ], [ %or135, %if.end129 ], !dbg !422
  %cmp140 = icmp eq i32 %and130, 4, !dbg !515
  br i1 %cmp140, label %if.then142, label %if.end145, !dbg !516

if.then142:                                       ; preds = %if.end139
  %and143 = and i32 %result.0, 1, !dbg !517
  %add144 = add i32 %result.0, %and143, !dbg !518
  br label %if.end145, !dbg !519

if.end145:                                        ; preds = %if.then142, %if.end139
  %result.1 = phi i32 [ %add144, %if.then142 ], [ %result.0, %if.end139 ], !dbg !422
  %call146 = call arm_aapcs_vfpcc float @fromRep.3(i32 %result.1) #4, !dbg !520
  br label %return, !dbg !521

return:                                           ; preds = %if.end145, %if.then111, %if.then82, %if.then36, %if.else33, %if.then28, %if.then24, %if.else, %if.then20, %if.then10, %if.then6
  %retval.0 = phi float [ %call8, %if.then6 ], [ %call13, %if.then10 ], [ %call21, %if.then20 ], [ %a, %if.else ], [ %b, %if.then24 ], [ %call83, %if.then82 ], [ %call113, %if.then111 ], [ %call146, %if.end145 ], [ %a, %if.then36 ], [ %b, %if.else33 ], [ %call32, %if.then28 ], !dbg !422
  ret float %retval.0, !dbg !522
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.2(float %x) #0 !dbg !523 {
entry:
  %.cast = bitcast float %x to i32, !dbg !524
  ret i32 %.cast, !dbg !525
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.3(i32 %x) #0 !dbg !526 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !527
  ret float %.cast, !dbg !528
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @normalize.4(i32* %significand) #0 !dbg !529 {
entry:
  %0 = load i32, i32* %significand, align 4, !dbg !530
  %call = call arm_aapcs_vfpcc i32 @rep_clz.5(i32 %0) #4, !dbg !531
  %call1 = call arm_aapcs_vfpcc i32 @rep_clz.5(i32 8388608) #4, !dbg !532
  %sub = sub nsw i32 %call, %call1, !dbg !533
  %1 = load i32, i32* %significand, align 4, !dbg !534
  %shl = shl i32 %1, %sub, !dbg !534
  store i32 %shl, i32* %significand, align 4, !dbg !534
  %sub2 = sub nsw i32 1, %sub, !dbg !535
  ret i32 %sub2, !dbg !536
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @rep_clz.5(i32 %a) #0 !dbg !537 {
entry:
  %0 = call i32 @llvm.ctlz.i32(i32 %a, i1 false), !dbg !538, !range !358
  ret i32 %0, !dbg !539
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ledf2(double %a, double %b) #0 !dbg !540 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.6(double %a) #4, !dbg !541
  %call1 = call arm_aapcs_vfpcc i64 @toRep.6(double %b) #4, !dbg !542
  %and = and i64 %call, 9223372036854775807, !dbg !543
  %and2 = and i64 %call1, 9223372036854775807, !dbg !544
  %cmp = icmp ugt i64 %and, 9218868437227405312, !dbg !545
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !546

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp ugt i64 %and2, 9218868437227405312, !dbg !547
  br i1 %cmp3, label %if.then, label %if.end, !dbg !548

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !549

if.end:                                           ; preds = %lor.lhs.false
  %or = or i64 %and, %and2, !dbg !550
  %cmp4 = icmp eq i64 %or, 0, !dbg !551
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !552

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !553

if.end6:                                          ; preds = %if.end
  %and7 = and i64 %call, %call1, !dbg !554
  %cmp8 = icmp sgt i64 %and7, -1, !dbg !555
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !556

if.then9:                                         ; preds = %if.end6
  %cmp10 = icmp slt i64 %call, %call1, !dbg !557
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !558

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !559

if.else:                                          ; preds = %if.then9
  %cmp12 = icmp eq i64 %call, %call1, !dbg !560
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !561

if.then13:                                        ; preds = %if.else
  br label %return, !dbg !562

if.else14:                                        ; preds = %if.else
  br label %return, !dbg !563

if.else15:                                        ; preds = %if.end6
  %cmp16 = icmp sgt i64 %call, %call1, !dbg !564
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !565

if.then17:                                        ; preds = %if.else15
  br label %return, !dbg !566

if.else18:                                        ; preds = %if.else15
  %cmp19 = icmp eq i64 %call, %call1, !dbg !567
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !568

if.then20:                                        ; preds = %if.else18
  br label %return, !dbg !569

if.else21:                                        ; preds = %if.else18
  br label %return, !dbg !570

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then5 ], [ -1, %if.then11 ], [ 0, %if.then13 ], [ 1, %if.else14 ], [ -1, %if.then17 ], [ 0, %if.then20 ], [ 1, %if.else21 ], !dbg !571
  ret i32 %retval.0, !dbg !572
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.6(double %x) #0 !dbg !573 {
entry:
  %.cast = bitcast double %x to i64, !dbg !574
  ret i64 %.cast, !dbg !575
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__gedf2(double %a, double %b) #0 !dbg !576 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.6(double %a) #4, !dbg !577
  %call1 = call arm_aapcs_vfpcc i64 @toRep.6(double %b) #4, !dbg !578
  %and = and i64 %call, 9223372036854775807, !dbg !579
  %and2 = and i64 %call1, 9223372036854775807, !dbg !580
  %cmp = icmp ugt i64 %and, 9218868437227405312, !dbg !581
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !582

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp ugt i64 %and2, 9218868437227405312, !dbg !583
  br i1 %cmp3, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !585

if.end:                                           ; preds = %lor.lhs.false
  %or = or i64 %and, %and2, !dbg !586
  %cmp4 = icmp eq i64 %or, 0, !dbg !587
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !588

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !589

if.end6:                                          ; preds = %if.end
  %and7 = and i64 %call, %call1, !dbg !590
  %cmp8 = icmp sgt i64 %and7, -1, !dbg !591
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !592

if.then9:                                         ; preds = %if.end6
  %cmp10 = icmp slt i64 %call, %call1, !dbg !593
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !594

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !595

if.else:                                          ; preds = %if.then9
  %cmp12 = icmp eq i64 %call, %call1, !dbg !596
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !597

if.then13:                                        ; preds = %if.else
  br label %return, !dbg !598

if.else14:                                        ; preds = %if.else
  br label %return, !dbg !599

if.else15:                                        ; preds = %if.end6
  %cmp16 = icmp sgt i64 %call, %call1, !dbg !600
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !601

if.then17:                                        ; preds = %if.else15
  br label %return, !dbg !602

if.else18:                                        ; preds = %if.else15
  %cmp19 = icmp eq i64 %call, %call1, !dbg !603
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !604

if.then20:                                        ; preds = %if.else18
  br label %return, !dbg !605

if.else21:                                        ; preds = %if.else18
  br label %return, !dbg !606

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then5 ], [ -1, %if.then11 ], [ 0, %if.then13 ], [ 1, %if.else14 ], [ -1, %if.then17 ], [ 0, %if.then20 ], [ 1, %if.else21 ], !dbg !607
  ret i32 %retval.0, !dbg !608
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__unorddf2(double %a, double %b) #0 !dbg !609 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.6(double %a) #4, !dbg !610
  %and = and i64 %call, 9223372036854775807, !dbg !611
  %call1 = call arm_aapcs_vfpcc i64 @toRep.6(double %b) #4, !dbg !612
  %cmp = icmp ugt i64 %and, 9218868437227405312, !dbg !613
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !614

lor.rhs:                                          ; preds = %entry
  %and2 = and i64 %call1, 9223372036854775807, !dbg !615
  %cmp3 = icmp ugt i64 %and2, 9218868437227405312, !dbg !616
  %phitmp = zext i1 %cmp3 to i32, !dbg !614
  br label %lor.end, !dbg !614

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %0, !dbg !617
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__eqdf2(double %a, double %b) #0 !dbg !618 {
entry:
  %call = call arm_aapcscc i32 @__ledf2(double %a, double %b) #4, !dbg !619
  ret i32 %call, !dbg !620
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ltdf2(double %a, double %b) #0 !dbg !621 {
entry:
  %call = call arm_aapcscc i32 @__ledf2(double %a, double %b) #4, !dbg !622
  ret i32 %call, !dbg !623
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__nedf2(double %a, double %b) #0 !dbg !624 {
entry:
  %call = call arm_aapcscc i32 @__ledf2(double %a, double %b) #4, !dbg !625
  ret i32 %call, !dbg !626
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__gtdf2(double %a, double %b) #0 !dbg !627 {
entry:
  %call = call arm_aapcscc i32 @__gedf2(double %a, double %b) #4, !dbg !628
  ret i32 %call, !dbg !629
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__lesf2(float %a, float %b) #0 !dbg !630 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.7(float %a) #4, !dbg !631
  %call1 = call arm_aapcs_vfpcc i32 @toRep.7(float %b) #4, !dbg !632
  %and = and i32 %call, 2147483647, !dbg !633
  %and2 = and i32 %call1, 2147483647, !dbg !634
  %cmp = icmp ugt i32 %and, 2139095040, !dbg !635
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !636

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp ugt i32 %and2, 2139095040, !dbg !637
  br i1 %cmp3, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !639

if.end:                                           ; preds = %lor.lhs.false
  %or = or i32 %and, %and2, !dbg !640
  %cmp4 = icmp eq i32 %or, 0, !dbg !641
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !642

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !643

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %call, %call1, !dbg !644
  %cmp8 = icmp sgt i32 %and7, -1, !dbg !645
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !646

if.then9:                                         ; preds = %if.end6
  %cmp10 = icmp slt i32 %call, %call1, !dbg !647
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !648

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !649

if.else:                                          ; preds = %if.then9
  %cmp12 = icmp eq i32 %call, %call1, !dbg !650
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !651

if.then13:                                        ; preds = %if.else
  br label %return, !dbg !652

if.else14:                                        ; preds = %if.else
  br label %return, !dbg !653

if.else15:                                        ; preds = %if.end6
  %cmp16 = icmp sgt i32 %call, %call1, !dbg !654
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !655

if.then17:                                        ; preds = %if.else15
  br label %return, !dbg !656

if.else18:                                        ; preds = %if.else15
  %cmp19 = icmp eq i32 %call, %call1, !dbg !657
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !658

if.then20:                                        ; preds = %if.else18
  br label %return, !dbg !659

if.else21:                                        ; preds = %if.else18
  br label %return, !dbg !660

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then5 ], [ -1, %if.then11 ], [ 0, %if.then13 ], [ 1, %if.else14 ], [ -1, %if.then17 ], [ 0, %if.then20 ], [ 1, %if.else21 ], !dbg !661
  ret i32 %retval.0, !dbg !662
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.7(float %x) #0 !dbg !663 {
entry:
  %.cast = bitcast float %x to i32, !dbg !664
  ret i32 %.cast, !dbg !665
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__gesf2(float %a, float %b) #0 !dbg !666 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.7(float %a) #4, !dbg !667
  %call1 = call arm_aapcs_vfpcc i32 @toRep.7(float %b) #4, !dbg !668
  %and = and i32 %call, 2147483647, !dbg !669
  %and2 = and i32 %call1, 2147483647, !dbg !670
  %cmp = icmp ugt i32 %and, 2139095040, !dbg !671
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !672

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp ugt i32 %and2, 2139095040, !dbg !673
  br i1 %cmp3, label %if.then, label %if.end, !dbg !674

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !675

if.end:                                           ; preds = %lor.lhs.false
  %or = or i32 %and, %and2, !dbg !676
  %cmp4 = icmp eq i32 %or, 0, !dbg !677
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !678

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !679

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %call, %call1, !dbg !680
  %cmp8 = icmp sgt i32 %and7, -1, !dbg !681
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !682

if.then9:                                         ; preds = %if.end6
  %cmp10 = icmp slt i32 %call, %call1, !dbg !683
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !684

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !685

if.else:                                          ; preds = %if.then9
  %cmp12 = icmp eq i32 %call, %call1, !dbg !686
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !687

if.then13:                                        ; preds = %if.else
  br label %return, !dbg !688

if.else14:                                        ; preds = %if.else
  br label %return, !dbg !689

if.else15:                                        ; preds = %if.end6
  %cmp16 = icmp sgt i32 %call, %call1, !dbg !690
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !691

if.then17:                                        ; preds = %if.else15
  br label %return, !dbg !692

if.else18:                                        ; preds = %if.else15
  %cmp19 = icmp eq i32 %call, %call1, !dbg !693
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !694

if.then20:                                        ; preds = %if.else18
  br label %return, !dbg !695

if.else21:                                        ; preds = %if.else18
  br label %return, !dbg !696

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then5 ], [ -1, %if.then11 ], [ 0, %if.then13 ], [ 1, %if.else14 ], [ -1, %if.then17 ], [ 0, %if.then20 ], [ 1, %if.else21 ], !dbg !697
  ret i32 %retval.0, !dbg !698
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__unordsf2(float %a, float %b) #0 !dbg !699 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.7(float %a) #4, !dbg !700
  %and = and i32 %call, 2147483647, !dbg !701
  %call1 = call arm_aapcs_vfpcc i32 @toRep.7(float %b) #4, !dbg !702
  %cmp = icmp ugt i32 %and, 2139095040, !dbg !703
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !704

lor.rhs:                                          ; preds = %entry
  %and2 = and i32 %call1, 2147483647, !dbg !705
  %cmp3 = icmp ugt i32 %and2, 2139095040, !dbg !706
  %phitmp = zext i1 %cmp3 to i32, !dbg !704
  br label %lor.end, !dbg !704

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %0, !dbg !707
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__eqsf2(float %a, float %b) #0 !dbg !708 {
entry:
  %call = call arm_aapcscc i32 @__lesf2(float %a, float %b) #4, !dbg !709
  ret i32 %call, !dbg !710
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ltsf2(float %a, float %b) #0 !dbg !711 {
entry:
  %call = call arm_aapcscc i32 @__lesf2(float %a, float %b) #4, !dbg !712
  ret i32 %call, !dbg !713
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__nesf2(float %a, float %b) #0 !dbg !714 {
entry:
  %call = call arm_aapcscc i32 @__lesf2(float %a, float %b) #4, !dbg !715
  ret i32 %call, !dbg !716
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__gtsf2(float %a, float %b) #0 !dbg !717 {
entry:
  %call = call arm_aapcscc i32 @__gesf2(float %a, float %b) #4, !dbg !718
  ret i32 %call, !dbg !719
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__divdf3(double %a, double %b) #0 !dbg !720 {
entry:
  %aSignificand = alloca i64, align 8
  %bSignificand = alloca i64, align 8
  %quotient = alloca i64, align 8
  %quotientLo = alloca i64, align 8
  %call = call arm_aapcs_vfpcc i64 @toRep.8(double %a) #4, !dbg !721
  %shr = lshr i64 %call, 52, !dbg !722
  %0 = trunc i64 %shr to i32, !dbg !721
  %conv = and i32 %0, 2047, !dbg !721
  %call1 = call arm_aapcs_vfpcc i64 @toRep.8(double %b) #4, !dbg !723
  %shr2 = lshr i64 %call1, 52, !dbg !724
  %1 = trunc i64 %shr2 to i32, !dbg !723
  %conv4 = and i32 %1, 2047, !dbg !723
  %call5 = call arm_aapcs_vfpcc i64 @toRep.8(double %a) #4, !dbg !725
  %call6 = call arm_aapcs_vfpcc i64 @toRep.8(double %b) #4, !dbg !726
  %xor = xor i64 %call5, %call6, !dbg !727
  %and7 = and i64 %xor, -9223372036854775808, !dbg !728
  %call8 = call arm_aapcs_vfpcc i64 @toRep.8(double %a) #4, !dbg !729
  %and9 = and i64 %call8, 4503599627370495, !dbg !730
  store i64 %and9, i64* %aSignificand, align 8, !dbg !731
  %call10 = call arm_aapcs_vfpcc i64 @toRep.8(double %b) #4, !dbg !732
  %and11 = and i64 %call10, 4503599627370495, !dbg !733
  store i64 %and11, i64* %bSignificand, align 8, !dbg !734
  %sub = add nsw i32 %conv, -1, !dbg !735
  %cmp = icmp ugt i32 %sub, 2045, !dbg !736
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !737

lor.lhs.false:                                    ; preds = %entry
  %sub13 = add nsw i32 %conv4, -1, !dbg !738
  %cmp14 = icmp ugt i32 %sub13, 2045, !dbg !739
  br i1 %cmp14, label %if.then, label %if.end70, !dbg !740

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call16 = call arm_aapcs_vfpcc i64 @toRep.8(double %a) #4, !dbg !741
  %and17 = and i64 %call16, 9223372036854775807, !dbg !742
  %call18 = call arm_aapcs_vfpcc i64 @toRep.8(double %b) #4, !dbg !743
  %and19 = and i64 %call18, 9223372036854775807, !dbg !744
  %cmp20 = icmp ugt i64 %and17, 9218868437227405312, !dbg !745
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !746

if.then22:                                        ; preds = %if.then
  %call23 = call arm_aapcs_vfpcc i64 @toRep.8(double %a) #4, !dbg !747
  %or = or i64 %call23, 2251799813685248, !dbg !748
  %call24 = call arm_aapcs_vfpcc double @fromRep.9(i64 %or) #4, !dbg !749
  br label %return, !dbg !750

if.end:                                           ; preds = %if.then
  %cmp25 = icmp ugt i64 %and19, 9218868437227405312, !dbg !751
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !752

if.then27:                                        ; preds = %if.end
  %call28 = call arm_aapcs_vfpcc i64 @toRep.8(double %b) #4, !dbg !753
  %or29 = or i64 %call28, 2251799813685248, !dbg !754
  %call30 = call arm_aapcs_vfpcc double @fromRep.9(i64 %or29) #4, !dbg !755
  br label %return, !dbg !756

if.end31:                                         ; preds = %if.end
  %cmp32 = icmp eq i64 %and17, 9218868437227405312, !dbg !757
  br i1 %cmp32, label %if.then34, label %if.end41, !dbg !758

if.then34:                                        ; preds = %if.end31
  %cmp35 = icmp eq i64 %and19, 9218868437227405312, !dbg !759
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !760

if.then37:                                        ; preds = %if.then34
  %call38 = call arm_aapcs_vfpcc double @fromRep.9(i64 9221120237041090560) #4, !dbg !761
  br label %return, !dbg !762

if.else:                                          ; preds = %if.then34
  %or39 = or i64 %and17, %and7, !dbg !763
  %call40 = call arm_aapcs_vfpcc double @fromRep.9(i64 %or39) #4, !dbg !764
  br label %return, !dbg !765

if.end41:                                         ; preds = %if.end31
  %cmp42 = icmp eq i64 %and19, 9218868437227405312, !dbg !766
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !767

if.then44:                                        ; preds = %if.end41
  %call45 = call arm_aapcs_vfpcc double @fromRep.9(i64 %and7) #4, !dbg !768
  br label %return, !dbg !769

if.end46:                                         ; preds = %if.end41
  %tobool = icmp eq i64 %and17, 0, !dbg !770
  br i1 %tobool, label %if.then47, label %if.end53, !dbg !771

if.then47:                                        ; preds = %if.end46
  %tobool48 = icmp eq i64 %and19, 0, !dbg !772
  br i1 %tobool48, label %if.then49, label %if.else51, !dbg !773

if.then49:                                        ; preds = %if.then47
  %call50 = call arm_aapcs_vfpcc double @fromRep.9(i64 9221120237041090560) #4, !dbg !774
  br label %return, !dbg !775

if.else51:                                        ; preds = %if.then47
  %call52 = call arm_aapcs_vfpcc double @fromRep.9(i64 %and7) #4, !dbg !776
  br label %return, !dbg !777

if.end53:                                         ; preds = %if.end46
  %tobool54 = icmp eq i64 %and19, 0, !dbg !778
  br i1 %tobool54, label %if.then55, label %if.end58, !dbg !779

if.then55:                                        ; preds = %if.end53
  %or56 = or i64 %and7, 9218868437227405312, !dbg !780
  %call57 = call arm_aapcs_vfpcc double @fromRep.9(i64 %or56) #4, !dbg !781
  br label %return, !dbg !782

if.end58:                                         ; preds = %if.end53
  %cmp59 = icmp ult i64 %and17, 4503599627370496, !dbg !783
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !784

if.then61:                                        ; preds = %if.end58
  %call62 = call arm_aapcs_vfpcc i32 @normalize.10(i64* nonnull %aSignificand) #4, !dbg !785
  br label %if.end63, !dbg !786

if.end63:                                         ; preds = %if.then61, %if.end58
  %scale.0 = phi i32 [ %call62, %if.then61 ], [ 0, %if.end58 ], !dbg !787
  %cmp64 = icmp ult i64 %and19, 4503599627370496, !dbg !788
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !789

if.then66:                                        ; preds = %if.end63
  %call67 = call arm_aapcs_vfpcc i32 @normalize.10(i64* nonnull %bSignificand) #4, !dbg !790
  %sub68 = sub nsw i32 %scale.0, %call67, !dbg !791
  br label %if.end69, !dbg !792

if.end69:                                         ; preds = %if.then66, %if.end63
  %scale.1 = phi i32 [ %sub68, %if.then66 ], [ %scale.0, %if.end63 ], !dbg !787
  br label %if.end70, !dbg !793

if.end70:                                         ; preds = %if.end69, %lor.lhs.false
  %scale.2 = phi i32 [ %scale.1, %if.end69 ], [ 0, %lor.lhs.false ], !dbg !787
  %2 = load i64, i64* %aSignificand, align 8, !dbg !794
  %or71 = or i64 %2, 4503599627370496, !dbg !794
  store i64 %or71, i64* %aSignificand, align 8, !dbg !794
  %3 = load i64, i64* %bSignificand, align 8, !dbg !795
  %or72 = or i64 %3, 4503599627370496, !dbg !795
  store i64 %or72, i64* %bSignificand, align 8, !dbg !795
  %sub73 = sub nsw i32 %conv, %conv4, !dbg !796
  %add74 = add i32 %sub73, %scale.2, !dbg !797
  %shr75 = lshr i64 %or72, 21, !dbg !798
  %conv76 = trunc i64 %shr75 to i32, !dbg !799
  %sub77 = sub i32 1963258675, %conv76, !dbg !800
  %conv78 = zext i32 %sub77 to i64, !dbg !801
  %conv79 = and i64 %shr75, 4294967295, !dbg !802
  %mul = mul nuw i64 %conv79, %conv78, !dbg !803
  %shr80 = lshr i64 %mul, 32, !dbg !804
  %4 = trunc i64 %shr80 to i32, !dbg !805
  %conv82 = sub i32 0, %4, !dbg !805
  %conv83 = zext i32 %sub77 to i64, !dbg !806
  %conv84 = zext i32 %conv82 to i64, !dbg !807
  %mul85 = mul nuw i64 %conv83, %conv84, !dbg !808
  %shr86 = lshr i64 %mul85, 31, !dbg !809
  %conv88 = and i64 %shr86, 4294967295, !dbg !810
  %conv89 = and i64 %shr75, 4294967295, !dbg !811
  %mul90 = mul nuw i64 %conv88, %conv89, !dbg !812
  %shr91 = lshr i64 %mul90, 32, !dbg !813
  %5 = trunc i64 %shr91 to i32, !dbg !814
  %conv93 = sub i32 0, %5, !dbg !814
  %conv94 = and i64 %shr86, 4294967295, !dbg !815
  %conv95 = zext i32 %conv93 to i64, !dbg !816
  %mul96 = mul nuw i64 %conv94, %conv95, !dbg !817
  %shr97 = lshr i64 %mul96, 31, !dbg !818
  %conv99 = and i64 %shr97, 4294967295, !dbg !819
  %conv100 = and i64 %shr75, 4294967295, !dbg !820
  %mul101 = mul nuw i64 %conv99, %conv100, !dbg !821
  %shr102 = lshr i64 %mul101, 32, !dbg !822
  %6 = trunc i64 %shr102 to i32, !dbg !823
  %conv104 = sub i32 0, %6, !dbg !823
  %conv105 = and i64 %shr97, 4294967295, !dbg !824
  %conv106 = zext i32 %conv104 to i64, !dbg !825
  %mul107 = mul nuw i64 %conv105, %conv106, !dbg !826
  %shr108 = lshr i64 %mul107, 31, !dbg !827
  %conv109 = trunc i64 %shr108 to i32, !dbg !824
  %dec = add i32 %conv109, -1, !dbg !828
  %7 = load i64, i64* %bSignificand, align 8, !dbg !829
  %.tr = trunc i64 %7 to i32, !dbg !829
  %conv110 = shl i32 %.tr, 11, !dbg !829
  %conv111 = zext i32 %dec to i64, !dbg !830
  %conv112 = and i64 %shr75, 4294967295, !dbg !831
  %mul113 = mul nuw i64 %conv112, %conv111, !dbg !832
  %conv114 = zext i32 %dec to i64, !dbg !833
  %conv115 = zext i32 %conv110 to i64, !dbg !834
  %mul116 = mul nuw i64 %conv114, %conv115, !dbg !835
  %shr117 = lshr i64 %mul116, 32, !dbg !836
  %add118 = add i64 %mul113, %shr117, !dbg !837
  %sub119 = sub i64 0, %add118, !dbg !838
  %shr120 = lshr i64 %sub119, 32, !dbg !839
  %conv123 = zext i32 %dec to i64, !dbg !840
  %mul125 = mul nuw i64 %shr120, %conv123, !dbg !841
  %conv126 = zext i32 %dec to i64, !dbg !842
  %conv127 = and i64 %sub119, 4294967295, !dbg !843
  %mul128 = mul nuw i64 %conv127, %conv126, !dbg !844
  %shr129 = lshr i64 %mul128, 32, !dbg !845
  %add130 = add i64 %mul125, %shr129, !dbg !846
  %sub131 = add i64 %add130, -2, !dbg !847
  %8 = load i64, i64* %aSignificand, align 8, !dbg !848
  %shl132 = shl i64 %8, 2, !dbg !849
  call arm_aapcs_vfpcc void @wideMultiply(i64 %shl132, i64 %sub131, i64* nonnull %quotient, i64* nonnull %quotientLo) #4, !dbg !850
  %9 = load i64, i64* %quotient, align 8, !dbg !851
  %cmp133 = icmp ult i64 %9, 9007199254740992, !dbg !852
  br i1 %cmp133, label %if.then135, label %if.else140, !dbg !851

if.then135:                                       ; preds = %if.end70
  %10 = load i64, i64* %aSignificand, align 8, !dbg !853
  %shl136 = shl i64 %10, 53, !dbg !854
  %11 = load i64, i64* %quotient, align 8, !dbg !855
  %12 = load i64, i64* %bSignificand, align 8, !dbg !856
  %mul137 = mul i64 %11, %12, !dbg !857
  %sub138 = sub i64 %shl136, %mul137, !dbg !858
  %dec139 = add nsw i32 %add74, -1, !dbg !859
  br label %if.end145, !dbg !860

if.else140:                                       ; preds = %if.end70
  %13 = load i64, i64* %quotient, align 8, !dbg !861
  %shr141 = lshr i64 %13, 1, !dbg !861
  store i64 %shr141, i64* %quotient, align 8, !dbg !861
  %14 = load i64, i64* %aSignificand, align 8, !dbg !862
  %shl142 = shl i64 %14, 52, !dbg !863
  %15 = load i64, i64* %bSignificand, align 8, !dbg !864
  %mul143 = mul i64 %shr141, %15, !dbg !865
  %sub144 = sub i64 %shl142, %mul143, !dbg !866
  br label %if.end145

if.end145:                                        ; preds = %if.else140, %if.then135
  %quotientExponent.0 = phi i32 [ %dec139, %if.then135 ], [ %add74, %if.else140 ], !dbg !787
  %residual.0 = phi i64 [ %sub138, %if.then135 ], [ %sub144, %if.else140 ], !dbg !787
  %add146 = add nsw i32 %quotientExponent.0, 1023, !dbg !867
  %cmp147 = icmp sgt i32 %add146, 2046, !dbg !868
  br i1 %cmp147, label %if.then149, label %if.else152, !dbg !869

if.then149:                                       ; preds = %if.end145
  %or150 = or i64 %and7, 9218868437227405312, !dbg !870
  %call151 = call arm_aapcs_vfpcc double @fromRep.9(i64 %or150) #4, !dbg !871
  br label %return, !dbg !872

if.else152:                                       ; preds = %if.end145
  %cmp153 = icmp slt i32 %add146, 1, !dbg !873
  br i1 %cmp153, label %if.then155, label %if.else157, !dbg !874

if.then155:                                       ; preds = %if.else152
  %call156 = call arm_aapcs_vfpcc double @fromRep.9(i64 %and7) #4, !dbg !875
  br label %return, !dbg !876

if.else157:                                       ; preds = %if.else152
  %shl158 = shl i64 %residual.0, 1, !dbg !877
  %16 = load i64, i64* %bSignificand, align 8, !dbg !878
  %cmp159 = icmp ugt i64 %shl158, %16, !dbg !879
  %17 = load i64, i64* %quotient, align 8, !dbg !880
  %and161 = and i64 %17, 4503599627370495, !dbg !881
  %conv1621 = zext i32 %add146 to i64, !dbg !882
  %shl163 = shl i64 %conv1621, 52, !dbg !883
  %or164 = or i64 %and161, %shl163, !dbg !884
  %conv166 = zext i1 %cmp159 to i64, !dbg !885
  %add167 = add i64 %or164, %conv166, !dbg !886
  %or168 = or i64 %add167, %and7, !dbg !887
  %call169 = call arm_aapcs_vfpcc double @fromRep.9(i64 %or168) #4, !dbg !888
  br label %return, !dbg !889

return:                                           ; preds = %if.else157, %if.then155, %if.then149, %if.then55, %if.else51, %if.then49, %if.then44, %if.else, %if.then37, %if.then27, %if.then22
  %retval.0 = phi double [ %call24, %if.then22 ], [ %call30, %if.then27 ], [ %call38, %if.then37 ], [ %call40, %if.else ], [ %call45, %if.then44 ], [ %call151, %if.then149 ], [ %call156, %if.then155 ], [ %call169, %if.else157 ], [ %call57, %if.then55 ], [ %call52, %if.else51 ], [ %call50, %if.then49 ], !dbg !787
  ret double %retval.0, !dbg !890
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.8(double %x) #0 !dbg !891 {
entry:
  %.cast = bitcast double %x to i64, !dbg !892
  ret i64 %.cast, !dbg !893
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep.9(i64 %x) #0 !dbg !894 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !895
  ret double %.cast, !dbg !896
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @normalize.10(i64* %significand) #0 !dbg !897 {
entry:
  %0 = load i64, i64* %significand, align 8, !dbg !898
  %call = call arm_aapcs_vfpcc i32 @rep_clz.11(i64 %0) #4, !dbg !899
  %call1 = call arm_aapcs_vfpcc i32 @rep_clz.11(i64 4503599627370496) #4, !dbg !900
  %sub = sub nsw i32 %call, %call1, !dbg !901
  %1 = load i64, i64* %significand, align 8, !dbg !902
  %sh_prom = zext i32 %sub to i64, !dbg !902
  %shl = shl i64 %1, %sh_prom, !dbg !902
  store i64 %shl, i64* %significand, align 8, !dbg !902
  %sub2 = sub nsw i32 1, %sub, !dbg !903
  ret i32 %sub2, !dbg !904
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideMultiply(i64 %a, i64 %b, i64* %hi, i64* %lo) #0 !dbg !905 {
entry:
  %and = and i64 %a, 4294967295, !dbg !906
  %and1 = and i64 %b, 4294967295, !dbg !907
  %mul = mul nuw i64 %and, %and1, !dbg !908
  %and2 = and i64 %a, 4294967295, !dbg !909
  %shr = lshr i64 %b, 32, !dbg !910
  %mul3 = mul nuw i64 %and2, %shr, !dbg !911
  %shr4 = lshr i64 %a, 32, !dbg !912
  %and5 = and i64 %b, 4294967295, !dbg !913
  %mul6 = mul nuw i64 %shr4, %and5, !dbg !914
  %shr7 = lshr i64 %a, 32, !dbg !915
  %shr8 = lshr i64 %b, 32, !dbg !916
  %mul9 = mul nuw i64 %shr7, %shr8, !dbg !917
  %and10 = and i64 %mul, 4294967295, !dbg !918
  %shr11 = lshr i64 %mul, 32, !dbg !919
  %and12 = and i64 %mul3, 4294967295, !dbg !920
  %add = add nuw nsw i64 %shr11, %and12, !dbg !921
  %and13 = and i64 %mul6, 4294967295, !dbg !922
  %add14 = add nuw nsw i64 %add, %and13, !dbg !923
  %shl = shl i64 %add14, 32, !dbg !924
  %add15 = or i64 %and10, %shl, !dbg !925
  store i64 %add15, i64* %lo, align 8, !dbg !926
  %shr16 = lshr i64 %mul3, 32, !dbg !927
  %shr17 = lshr i64 %mul6, 32, !dbg !928
  %add18 = add nuw nsw i64 %shr16, %shr17, !dbg !929
  %shr19 = lshr i64 %add14, 32, !dbg !930
  %add20 = add nuw nsw i64 %add18, %shr19, !dbg !931
  %add21 = add i64 %add20, %mul9, !dbg !932
  store i64 %add21, i64* %hi, align 8, !dbg !933
  ret void, !dbg !934
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @rep_clz.11(i64 %a) #0 !dbg !935 {
entry:
  %tobool = icmp ugt i64 %a, 4294967295, !dbg !936
  br i1 %tobool, label %if.then, label %if.else, !dbg !937

if.then:                                          ; preds = %entry
  %shr = lshr i64 %a, 32, !dbg !938
  %conv = trunc i64 %shr to i32, !dbg !939
  %0 = call i32 @llvm.ctlz.i32(i32 %conv, i1 false), !dbg !940, !range !358
  br label %return, !dbg !941

if.else:                                          ; preds = %entry
  %conv2 = trunc i64 %a to i32, !dbg !942
  %1 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 false), !dbg !943, !range !358
  %add = add nuw nsw i32 %1, 32, !dbg !944
  br label %return, !dbg !945

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %add, %if.else ], !dbg !946
  ret i32 %retval.0, !dbg !947
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__divsf3(float %a, float %b) #0 !dbg !948 {
entry:
  %aSignificand = alloca i32, align 4
  %bSignificand = alloca i32, align 4
  %call = call arm_aapcs_vfpcc i32 @toRep.12(float %a) #4, !dbg !949
  %shr = lshr i32 %call, 23, !dbg !950
  %and = and i32 %shr, 255, !dbg !951
  %call1 = call arm_aapcs_vfpcc i32 @toRep.12(float %b) #4, !dbg !952
  %shr2 = lshr i32 %call1, 23, !dbg !953
  %and3 = and i32 %shr2, 255, !dbg !954
  %call4 = call arm_aapcs_vfpcc i32 @toRep.12(float %a) #4, !dbg !955
  %call5 = call arm_aapcs_vfpcc i32 @toRep.12(float %b) #4, !dbg !956
  %xor = xor i32 %call4, %call5, !dbg !957
  %and6 = and i32 %xor, -2147483648, !dbg !958
  %call7 = call arm_aapcs_vfpcc i32 @toRep.12(float %a) #4, !dbg !959
  %and8 = and i32 %call7, 8388607, !dbg !960
  store i32 %and8, i32* %aSignificand, align 4, !dbg !961
  %call9 = call arm_aapcs_vfpcc i32 @toRep.12(float %b) #4, !dbg !962
  %and10 = and i32 %call9, 8388607, !dbg !963
  store i32 %and10, i32* %bSignificand, align 4, !dbg !964
  %sub = add nsw i32 %and, -1, !dbg !965
  %cmp = icmp ugt i32 %sub, 253, !dbg !966
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !967

lor.lhs.false:                                    ; preds = %entry
  %sub11 = add nsw i32 %and3, -1, !dbg !968
  %cmp12 = icmp ugt i32 %sub11, 253, !dbg !969
  br i1 %cmp12, label %if.then, label %if.end60, !dbg !970

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call13 = call arm_aapcs_vfpcc i32 @toRep.12(float %a) #4, !dbg !971
  %and14 = and i32 %call13, 2147483647, !dbg !972
  %call15 = call arm_aapcs_vfpcc i32 @toRep.12(float %b) #4, !dbg !973
  %and16 = and i32 %call15, 2147483647, !dbg !974
  %cmp17 = icmp ugt i32 %and14, 2139095040, !dbg !975
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !976

if.then18:                                        ; preds = %if.then
  %call19 = call arm_aapcs_vfpcc i32 @toRep.12(float %a) #4, !dbg !977
  %or = or i32 %call19, 4194304, !dbg !978
  %call20 = call arm_aapcs_vfpcc float @fromRep.13(i32 %or) #4, !dbg !979
  br label %return, !dbg !980

if.end:                                           ; preds = %if.then
  %cmp21 = icmp ugt i32 %and16, 2139095040, !dbg !981
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !982

if.then22:                                        ; preds = %if.end
  %call23 = call arm_aapcs_vfpcc i32 @toRep.12(float %b) #4, !dbg !983
  %or24 = or i32 %call23, 4194304, !dbg !984
  %call25 = call arm_aapcs_vfpcc float @fromRep.13(i32 %or24) #4, !dbg !985
  br label %return, !dbg !986

if.end26:                                         ; preds = %if.end
  %cmp27 = icmp eq i32 %and14, 2139095040, !dbg !987
  br i1 %cmp27, label %if.then28, label %if.end34, !dbg !988

if.then28:                                        ; preds = %if.end26
  %cmp29 = icmp eq i32 %and16, 2139095040, !dbg !989
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !990

if.then30:                                        ; preds = %if.then28
  %call31 = call arm_aapcs_vfpcc float @fromRep.13(i32 2143289344) #4, !dbg !991
  br label %return, !dbg !992

if.else:                                          ; preds = %if.then28
  %or32 = or i32 %and14, %and6, !dbg !993
  %call33 = call arm_aapcs_vfpcc float @fromRep.13(i32 %or32) #4, !dbg !994
  br label %return, !dbg !995

if.end34:                                         ; preds = %if.end26
  %cmp35 = icmp eq i32 %and16, 2139095040, !dbg !996
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !997

if.then36:                                        ; preds = %if.end34
  %call37 = call arm_aapcs_vfpcc float @fromRep.13(i32 %and6) #4, !dbg !998
  br label %return, !dbg !999

if.end38:                                         ; preds = %if.end34
  %tobool = icmp eq i32 %and14, 0, !dbg !1000
  br i1 %tobool, label %if.then39, label %if.end45, !dbg !1001

if.then39:                                        ; preds = %if.end38
  %tobool40 = icmp eq i32 %and16, 0, !dbg !1002
  br i1 %tobool40, label %if.then41, label %if.else43, !dbg !1003

if.then41:                                        ; preds = %if.then39
  %call42 = call arm_aapcs_vfpcc float @fromRep.13(i32 2143289344) #4, !dbg !1004
  br label %return, !dbg !1005

if.else43:                                        ; preds = %if.then39
  %call44 = call arm_aapcs_vfpcc float @fromRep.13(i32 %and6) #4, !dbg !1006
  br label %return, !dbg !1007

if.end45:                                         ; preds = %if.end38
  %tobool46 = icmp eq i32 %and16, 0, !dbg !1008
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !1009

if.then47:                                        ; preds = %if.end45
  %or48 = or i32 %and6, 2139095040, !dbg !1010
  %call49 = call arm_aapcs_vfpcc float @fromRep.13(i32 %or48) #4, !dbg !1011
  br label %return, !dbg !1012

if.end50:                                         ; preds = %if.end45
  %cmp51 = icmp ult i32 %and14, 8388608, !dbg !1013
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !1014

if.then52:                                        ; preds = %if.end50
  %call53 = call arm_aapcs_vfpcc i32 @normalize.14(i32* nonnull %aSignificand) #4, !dbg !1015
  br label %if.end54, !dbg !1016

if.end54:                                         ; preds = %if.then52, %if.end50
  %scale.0 = phi i32 [ %call53, %if.then52 ], [ 0, %if.end50 ], !dbg !1017
  %cmp55 = icmp ult i32 %and16, 8388608, !dbg !1018
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !1019

if.then56:                                        ; preds = %if.end54
  %call57 = call arm_aapcs_vfpcc i32 @normalize.14(i32* nonnull %bSignificand) #4, !dbg !1020
  %sub58 = sub nsw i32 %scale.0, %call57, !dbg !1021
  br label %if.end59, !dbg !1022

if.end59:                                         ; preds = %if.then56, %if.end54
  %scale.1 = phi i32 [ %sub58, %if.then56 ], [ %scale.0, %if.end54 ], !dbg !1017
  br label %if.end60, !dbg !1023

if.end60:                                         ; preds = %if.end59, %lor.lhs.false
  %scale.2 = phi i32 [ %scale.1, %if.end59 ], [ 0, %lor.lhs.false ], !dbg !1017
  %0 = load i32, i32* %aSignificand, align 4, !dbg !1024
  %or61 = or i32 %0, 8388608, !dbg !1024
  store i32 %or61, i32* %aSignificand, align 4, !dbg !1024
  %1 = load i32, i32* %bSignificand, align 4, !dbg !1025
  %or62 = or i32 %1, 8388608, !dbg !1025
  store i32 %or62, i32* %bSignificand, align 4, !dbg !1025
  %sub63 = sub nsw i32 %and, %and3, !dbg !1026
  %add64 = add i32 %sub63, %scale.2, !dbg !1027
  %shl = shl i32 %or62, 8, !dbg !1028
  %sub65 = sub i32 1963258675, %shl, !dbg !1029
  %conv = zext i32 %sub65 to i64, !dbg !1030
  %conv66 = zext i32 %shl to i64, !dbg !1031
  %mul = mul nuw i64 %conv, %conv66, !dbg !1032
  %shr67 = lshr i64 %mul, 32, !dbg !1033
  %2 = trunc i64 %shr67 to i32, !dbg !1034
  %conv69 = sub i32 0, %2, !dbg !1034
  %conv70 = zext i32 %sub65 to i64, !dbg !1035
  %conv71 = zext i32 %conv69 to i64, !dbg !1036
  %mul72 = mul nuw i64 %conv70, %conv71, !dbg !1037
  %shr73 = lshr i64 %mul72, 31, !dbg !1038
  %conv75 = and i64 %shr73, 4294967295, !dbg !1039
  %conv76 = zext i32 %shl to i64, !dbg !1040
  %mul77 = mul nuw i64 %conv75, %conv76, !dbg !1041
  %shr78 = lshr i64 %mul77, 32, !dbg !1042
  %3 = trunc i64 %shr78 to i32, !dbg !1043
  %conv80 = sub i32 0, %3, !dbg !1043
  %conv81 = and i64 %shr73, 4294967295, !dbg !1044
  %conv82 = zext i32 %conv80 to i64, !dbg !1045
  %mul83 = mul nuw i64 %conv81, %conv82, !dbg !1046
  %shr84 = lshr i64 %mul83, 31, !dbg !1047
  %conv86 = and i64 %shr84, 4294967295, !dbg !1048
  %conv87 = zext i32 %shl to i64, !dbg !1049
  %mul88 = mul nuw i64 %conv86, %conv87, !dbg !1050
  %shr89 = lshr i64 %mul88, 32, !dbg !1051
  %4 = trunc i64 %shr89 to i32, !dbg !1052
  %conv91 = sub i32 0, %4, !dbg !1052
  %conv92 = and i64 %shr84, 4294967295, !dbg !1053
  %conv93 = zext i32 %conv91 to i64, !dbg !1054
  %mul94 = mul nuw i64 %conv92, %conv93, !dbg !1055
  %shr95 = lshr i64 %mul94, 31, !dbg !1056
  %conv96 = trunc i64 %shr95 to i32, !dbg !1053
  %sub97 = add i32 %conv96, -2, !dbg !1057
  %conv98 = zext i32 %sub97 to i64, !dbg !1058
  %5 = load i32, i32* %aSignificand, align 4, !dbg !1059
  %shl99 = shl i32 %5, 1, !dbg !1060
  %conv100 = zext i32 %shl99 to i64, !dbg !1061
  %mul101 = mul nuw i64 %conv98, %conv100, !dbg !1062
  %shr102 = lshr i64 %mul101, 32, !dbg !1063
  %conv103 = trunc i64 %shr102 to i32, !dbg !1058
  %cmp104 = icmp ult i32 %conv103, 16777216, !dbg !1064
  br i1 %cmp104, label %if.then106, label %if.else110, !dbg !1065

if.then106:                                       ; preds = %if.end60
  %6 = load i32, i32* %aSignificand, align 4, !dbg !1066
  %shl107 = shl i32 %6, 24, !dbg !1067
  %7 = load i32, i32* %bSignificand, align 4, !dbg !1068
  %mul108 = mul i32 %7, %conv103, !dbg !1069
  %sub109 = sub i32 %shl107, %mul108, !dbg !1070
  %dec = add nsw i32 %add64, -1, !dbg !1071
  br label %if.end115, !dbg !1072

if.else110:                                       ; preds = %if.end60
  %shr1111 = lshr i64 %mul101, 33, !dbg !1073
  %shr111 = trunc i64 %shr1111 to i32, !dbg !1073
  %8 = load i32, i32* %aSignificand, align 4, !dbg !1074
  %shl112 = shl i32 %8, 23, !dbg !1075
  %9 = load i32, i32* %bSignificand, align 4, !dbg !1076
  %mul113 = mul i32 %9, %shr111, !dbg !1077
  %sub114 = sub i32 %shl112, %mul113, !dbg !1078
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then106
  %quotientExponent.0 = phi i32 [ %dec, %if.then106 ], [ %add64, %if.else110 ], !dbg !1017
  %quotient.0 = phi i32 [ %conv103, %if.then106 ], [ %shr111, %if.else110 ], !dbg !1017
  %residual.0 = phi i32 [ %sub109, %if.then106 ], [ %sub114, %if.else110 ], !dbg !1017
  %add116 = add nsw i32 %quotientExponent.0, 127, !dbg !1079
  %cmp117 = icmp sgt i32 %add116, 254, !dbg !1080
  br i1 %cmp117, label %if.then119, label %if.else122, !dbg !1081

if.then119:                                       ; preds = %if.end115
  %or120 = or i32 %and6, 2139095040, !dbg !1082
  %call121 = call arm_aapcs_vfpcc float @fromRep.13(i32 %or120) #4, !dbg !1083
  br label %return, !dbg !1084

if.else122:                                       ; preds = %if.end115
  %cmp123 = icmp slt i32 %add116, 1, !dbg !1085
  br i1 %cmp123, label %if.then125, label %if.else127, !dbg !1086

if.then125:                                       ; preds = %if.else122
  %call126 = call arm_aapcs_vfpcc float @fromRep.13(i32 %and6) #4, !dbg !1087
  br label %return, !dbg !1088

if.else127:                                       ; preds = %if.else122
  %shl128 = shl i32 %residual.0, 1, !dbg !1089
  %10 = load i32, i32* %bSignificand, align 4, !dbg !1090
  %cmp129 = icmp ugt i32 %shl128, %10, !dbg !1091
  %and131 = and i32 %quotient.0, 8388607, !dbg !1092
  %shl132 = shl i32 %add116, 23, !dbg !1093
  %or133 = or i32 %and131, %shl132, !dbg !1094
  %conv135 = zext i1 %cmp129 to i32, !dbg !1095
  %add136 = add i32 %or133, %conv135, !dbg !1096
  %or137 = or i32 %add136, %and6, !dbg !1097
  %call138 = call arm_aapcs_vfpcc float @fromRep.13(i32 %or137) #4, !dbg !1098
  br label %return, !dbg !1099

return:                                           ; preds = %if.else127, %if.then125, %if.then119, %if.then47, %if.else43, %if.then41, %if.then36, %if.else, %if.then30, %if.then22, %if.then18
  %retval.0 = phi float [ %call20, %if.then18 ], [ %call25, %if.then22 ], [ %call31, %if.then30 ], [ %call33, %if.else ], [ %call37, %if.then36 ], [ %call121, %if.then119 ], [ %call126, %if.then125 ], [ %call138, %if.else127 ], [ %call49, %if.then47 ], [ %call44, %if.else43 ], [ %call42, %if.then41 ], !dbg !1017
  ret float %retval.0, !dbg !1100
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.12(float %x) #0 !dbg !1101 {
entry:
  %.cast = bitcast float %x to i32, !dbg !1102
  ret i32 %.cast, !dbg !1103
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.13(i32 %x) #0 !dbg !1104 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !1105
  ret float %.cast, !dbg !1106
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @normalize.14(i32* %significand) #0 !dbg !1107 {
entry:
  %0 = load i32, i32* %significand, align 4, !dbg !1108
  %call = call arm_aapcs_vfpcc i32 @rep_clz.15(i32 %0) #4, !dbg !1109
  %call1 = call arm_aapcs_vfpcc i32 @rep_clz.15(i32 8388608) #4, !dbg !1110
  %sub = sub nsw i32 %call, %call1, !dbg !1111
  %1 = load i32, i32* %significand, align 4, !dbg !1112
  %shl = shl i32 %1, %sub, !dbg !1112
  store i32 %shl, i32* %significand, align 4, !dbg !1112
  %sub2 = sub nsw i32 1, %sub, !dbg !1113
  ret i32 %sub2, !dbg !1114
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @rep_clz.15(i32 %a) #0 !dbg !1115 {
entry:
  %0 = call i32 @llvm.ctlz.i32(i32 %a, i1 false), !dbg !1116, !range !358
  ret i32 %0, !dbg !1117
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__extendhfsf2(i16 zeroext %a) #0 !dbg !1118 {
entry:
  %call = call arm_aapcs_vfpcc float @__extendXfYf2__(i16 zeroext %a) #4, !dbg !1119
  ret float %call, !dbg !1120
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @__extendXfYf2__(i16 zeroext %a) #0 !dbg !1121 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i16 @srcToRep(i16 zeroext %a) #4, !dbg !1123
  %0 = and i16 %call, 32767, !dbg !1124
  %1 = and i16 %call, -32768, !dbg !1125
  %sub = add nsw i16 %0, -1024, !dbg !1126
  %cmp = icmp ult i16 %sub, 30720, !dbg !1127
  br i1 %cmp, label %if.then, label %if.else, !dbg !1128

if.then:                                          ; preds = %entry
  %conv9 = zext i16 %0 to i32, !dbg !1129
  %shl = shl nuw nsw i32 %conv9, 13, !dbg !1130
  %add = add nuw nsw i32 %shl, 939524096, !dbg !1131
  br label %if.end34, !dbg !1132

if.else:                                          ; preds = %entry
  %cmp11 = icmp ugt i16 %0, 31743, !dbg !1133
  br i1 %cmp11, label %if.then13, label %if.else21, !dbg !1134

if.then13:                                        ; preds = %if.else
  %shl161 = zext i16 %call to i32, !dbg !1135
  %or = shl nuw nsw i32 %shl161, 13, !dbg !1135
  %or20 = or i32 %or, 2139095040, !dbg !1135
  br label %if.end33, !dbg !1136

if.else21:                                        ; preds = %if.else
  %tobool = icmp eq i16 %0, 0, !dbg !1137
  br i1 %tobool, label %if.else32, label %if.then22, !dbg !1137

if.then22:                                        ; preds = %if.else21
  %conv23 = zext i16 %0 to i32, !dbg !1138
  %2 = call i32 @llvm.ctlz.i32(i32 %conv23, i1 false), !dbg !1139, !range !1140
  %conv25 = zext i16 %0 to i32, !dbg !1141
  %add26 = add nsw i32 %2, -8, !dbg !1142
  %shl27 = shl i32 %conv25, %add26, !dbg !1143
  %xor = xor i32 %shl27, 8388608, !dbg !1144
  %add29 = shl nuw nsw i32 %2, 23, !dbg !1145
  %shl30 = sub nuw nsw i32 1124073472, %add29, !dbg !1145
  %or31 = or i32 %xor, %shl30, !dbg !1146
  br label %if.end, !dbg !1147

if.else32:                                        ; preds = %if.else21
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then22
  %absResult.0 = phi i32 [ %or31, %if.then22 ], [ 0, %if.else32 ], !dbg !1148
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then13
  %absResult.1 = phi i32 [ %or20, %if.then13 ], [ %absResult.0, %if.end ], !dbg !1148
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then
  %absResult.2 = phi i32 [ %add, %if.then ], [ %absResult.1, %if.end33 ], !dbg !1148
  %conv35 = zext i16 %1 to i32, !dbg !1149
  %shl36 = shl nuw i32 %conv35, 16, !dbg !1150
  %or37 = or i32 %absResult.2, %shl36, !dbg !1151
  %call38 = call arm_aapcs_vfpcc float @dstFromRep(i32 %or37) #4, !dbg !1152
  ret float %call38, !dbg !1153
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc zeroext i16 @srcToRep(i16 zeroext %x) #0 !dbg !1154 {
entry:
  ret i16 %x, !dbg !1156
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @dstFromRep(i32 %x) #0 !dbg !1157 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !1158
  ret float %.cast, !dbg !1159
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__gnu_h2f_ieee(i16 zeroext %a) #0 !dbg !1160 {
entry:
  %call = call arm_aapcscc float @__extendhfsf2(i16 zeroext %a) #4, !dbg !1161
  ret float %call, !dbg !1162
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__extendsfdf2(float %a) #0 !dbg !1163 {
entry:
  %call = call arm_aapcs_vfpcc double @__extendXfYf2__.16(float %a) #4, !dbg !1164
  ret double %call, !dbg !1165
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @__extendXfYf2__.16(float %a) #0 !dbg !1166 {
entry:
  %call = call arm_aapcs_vfpcc i32 @srcToRep.17(float %a) #4, !dbg !1167
  %and = and i32 %call, 2147483647, !dbg !1168
  %and1 = and i32 %call, -2147483648, !dbg !1169
  %sub = add nsw i32 %and, -8388608, !dbg !1170
  %cmp = icmp ult i32 %sub, 2130706432, !dbg !1171
  br i1 %cmp, label %if.then, label %if.else, !dbg !1172

if.then:                                          ; preds = %entry
  %conv = zext i32 %and to i64, !dbg !1173
  %shl = shl nuw nsw i64 %conv, 29, !dbg !1174
  %add = add nuw nsw i64 %shl, 4035225266123964416, !dbg !1175
  br label %if.end25, !dbg !1176

if.else:                                          ; preds = %entry
  %cmp2 = icmp ugt i32 %and, 2139095039, !dbg !1177
  br i1 %cmp2, label %if.then4, label %if.else12, !dbg !1178

if.then4:                                         ; preds = %if.else
  %shl71 = zext i32 %call to i64, !dbg !1179
  %or = shl nuw nsw i64 %shl71, 29, !dbg !1179
  %or11 = or i64 %or, 9218868437227405312, !dbg !1179
  br label %if.end24, !dbg !1180

if.else12:                                        ; preds = %if.else
  %tobool = icmp eq i32 %and, 0, !dbg !1181
  br i1 %tobool, label %if.else23, label %if.then13, !dbg !1181

if.then13:                                        ; preds = %if.else12
  %0 = call i32 @llvm.ctlz.i32(i32 %and, i1 false), !dbg !1182, !range !1183
  %conv15 = zext i32 %and to i64, !dbg !1184
  %add16 = add nuw nsw i32 %0, 21, !dbg !1185
  %sh_prom = zext i32 %add16 to i64, !dbg !1186
  %shl17 = shl i64 %conv15, %sh_prom, !dbg !1186
  %xor = xor i64 %shl17, 4503599627370496, !dbg !1187
  %add19 = sub nuw nsw i32 905, %0, !dbg !1188
  %conv20 = zext i32 %add19 to i64, !dbg !1189
  %shl21 = shl nuw nsw i64 %conv20, 52, !dbg !1190
  %or22 = or i64 %xor, %shl21, !dbg !1191
  br label %if.end, !dbg !1192

if.else23:                                        ; preds = %if.else12
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then13
  %absResult.0 = phi i64 [ %or22, %if.then13 ], [ 0, %if.else23 ], !dbg !1193
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then4
  %absResult.1 = phi i64 [ %or11, %if.then4 ], [ %absResult.0, %if.end ], !dbg !1193
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %absResult.2 = phi i64 [ %add, %if.then ], [ %absResult.1, %if.end24 ], !dbg !1193
  %conv26 = zext i32 %and1 to i64, !dbg !1194
  %shl27 = shl nuw i64 %conv26, 32, !dbg !1195
  %or28 = or i64 %absResult.2, %shl27, !dbg !1196
  %call29 = call arm_aapcs_vfpcc double @dstFromRep.18(i64 %or28) #4, !dbg !1197
  ret double %call29, !dbg !1198
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @srcToRep.17(float %x) #0 !dbg !1199 {
entry:
  %.cast = bitcast float %x to i32, !dbg !1200
  ret i32 %.cast, !dbg !1201
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @dstFromRep.18(i64 %x) #0 !dbg !1202 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !1203
  ret double %.cast, !dbg !1204
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__fixdfdi(double %a) #0 !dbg !1205 {
entry:
  %cmp = fcmp olt double %a, 0.000000e+00, !dbg !1206
  br i1 %cmp, label %if.then, label %if.end, !dbg !1207

if.then:                                          ; preds = %entry
  %sub = fsub double -0.000000e+00, %a, !dbg !1208
  %call = call arm_aapcscc i64 @__fixunsdfdi(double %sub) #4, !dbg !1209
  %sub1 = sub i64 0, %call, !dbg !1210
  br label %return, !dbg !1211

if.end:                                           ; preds = %entry
  %call2 = call arm_aapcscc i64 @__fixunsdfdi(double %a) #4, !dbg !1212
  br label %return, !dbg !1213

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub1, %if.then ], [ %call2, %if.end ], !dbg !1214
  ret i64 %retval.0, !dbg !1215
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__fixdfsi(double %a) #0 !dbg !1216 {
entry:
  %call = call arm_aapcs_vfpcc i32 @__fixint(double %a) #4, !dbg !1217
  ret i32 %call, !dbg !1218
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @__fixint(double %a) #0 !dbg !1219 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.19(double %a) #4, !dbg !1221
  %tobool = icmp slt i64 %call, 0, !dbg !1222
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1222
  %and = lshr i64 %call, 52, !dbg !1223
  %0 = trunc i64 %and to i32, !dbg !1224
  %1 = and i32 %0, 2047, !dbg !1224
  %conv = add nsw i32 %1, -1023, !dbg !1224
  %and2 = and i64 %call, 4503599627370495, !dbg !1225
  %or = or i64 %and2, 4503599627370496, !dbg !1226
  %cmp = icmp slt i32 %conv, 0, !dbg !1227
  br i1 %cmp, label %if.then, label %if.end, !dbg !1228

if.then:                                          ; preds = %entry
  br label %return, !dbg !1229

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i32 %conv, 31, !dbg !1230
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1231

if.then6:                                         ; preds = %if.end
  %cond9 = select i1 %tobool, i32 -2147483648, i32 2147483647, !dbg !1232
  br label %return, !dbg !1233

if.end10:                                         ; preds = %if.end
  br i1 true, label %if.then13, label %if.else, !dbg !1234

if.then13:                                        ; preds = %if.end10
  %sub15 = sub nsw i32 1075, %1, !dbg !1235
  %sh_prom = zext i32 %sub15 to i64, !dbg !1236
  %shr16 = lshr i64 %or, %sh_prom, !dbg !1236
  %2 = trunc i64 %shr16 to i32, !dbg !1237
  %conv17 = mul i32 %cond, %2, !dbg !1237
  br label %return, !dbg !1238

if.else:                                          ; preds = %if.end10
  br label %return, !dbg !1239

return:                                           ; preds = %if.else, %if.then13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond9, %if.then6 ], [ %conv17, %if.then13 ], [ undef, %if.else ], !dbg !1240
  ret i32 %retval.0, !dbg !1241
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.19(double %x) #0 !dbg !1242 {
entry:
  %.cast = bitcast double %x to i64, !dbg !1243
  ret i64 %.cast, !dbg !1244
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__fixsfdi(float %a) #0 !dbg !1245 {
entry:
  %cmp = fcmp olt float %a, 0.000000e+00, !dbg !1246
  br i1 %cmp, label %if.then, label %if.end, !dbg !1247

if.then:                                          ; preds = %entry
  %sub = fsub float -0.000000e+00, %a, !dbg !1248
  %call = call arm_aapcscc i64 @__fixunssfdi(float %sub) #4, !dbg !1249
  %sub1 = sub i64 0, %call, !dbg !1250
  br label %return, !dbg !1251

if.end:                                           ; preds = %entry
  %call2 = call arm_aapcscc i64 @__fixunssfdi(float %a) #4, !dbg !1252
  br label %return, !dbg !1253

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub1, %if.then ], [ %call2, %if.end ], !dbg !1254
  ret i64 %retval.0, !dbg !1255
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__fixsfsi(float %a) #0 !dbg !1256 {
entry:
  %call = call arm_aapcs_vfpcc i32 @__fixint.20(float %a) #4, !dbg !1257
  ret i32 %call, !dbg !1258
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @__fixint.20(float %a) #0 !dbg !1259 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.21(float %a) #4, !dbg !1260
  %tobool = icmp slt i32 %call, 0, !dbg !1261
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1261
  %and = lshr i32 %call, 23, !dbg !1262
  %shr = and i32 %and, 255, !dbg !1262
  %sub = add nsw i32 %shr, -127, !dbg !1263
  %and2 = and i32 %call, 8388607, !dbg !1264
  %or = or i32 %and2, 8388608, !dbg !1265
  %cmp = icmp slt i32 %sub, 0, !dbg !1266
  br i1 %cmp, label %if.then, label %if.end, !dbg !1267

if.then:                                          ; preds = %entry
  br label %return, !dbg !1268

if.end:                                           ; preds = %entry
  %cmp3 = icmp ugt i32 %sub, 31, !dbg !1269
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1270

if.then4:                                         ; preds = %if.end
  %cond6 = select i1 %tobool, i32 -2147483648, i32 2147483647, !dbg !1271
  br label %return, !dbg !1272

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp slt i32 %sub, 23, !dbg !1273
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1274

if.then9:                                         ; preds = %if.end7
  %sub10 = sub nsw i32 150, %shr, !dbg !1275
  %shr11 = lshr i32 %or, %sub10, !dbg !1276
  %mul = mul i32 %cond, %shr11, !dbg !1277
  br label %return, !dbg !1278

if.else:                                          ; preds = %if.end7
  %sub12 = add nsw i32 %shr, -150, !dbg !1279
  %shl = shl i32 %or, %sub12, !dbg !1280
  %mul13 = mul nsw i32 %cond, %shl, !dbg !1281
  br label %return, !dbg !1282

return:                                           ; preds = %if.else, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond6, %if.then4 ], [ %mul, %if.then9 ], [ %mul13, %if.else ], !dbg !1283
  ret i32 %retval.0, !dbg !1284
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.21(float %x) #0 !dbg !1285 {
entry:
  %.cast = bitcast float %x to i32, !dbg !1286
  ret i32 %.cast, !dbg !1287
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__fixunsdfdi(double %a) #0 !dbg !1288 {
entry:
  %cmp = fcmp ugt double %a, 0.000000e+00, !dbg !1289
  br i1 %cmp, label %if.end, label %if.then, !dbg !1290

if.then:                                          ; preds = %entry
  br label %return, !dbg !1291

if.end:                                           ; preds = %entry
  %div = fmul double %a, 0x3DF0000000000000, !dbg !1292
  %conv = fptoui double %div to i32, !dbg !1293
  %conv1 = uitofp i32 %conv to double, !dbg !1294
  %mul = fmul double %conv1, 0x41F0000000000000, !dbg !1295
  %sub = fsub double %a, %mul, !dbg !1296
  %conv2 = fptoui double %sub to i32, !dbg !1297
  %conv3 = zext i32 %conv to i64, !dbg !1298
  %shl = shl nuw i64 %conv3, 32, !dbg !1299
  %conv4 = zext i32 %conv2 to i64, !dbg !1300
  %or = or i64 %shl, %conv4, !dbg !1301
  br label %return, !dbg !1302

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %or, %if.end ], !dbg !1303
  ret i64 %retval.0, !dbg !1304
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__fixunsdfsi(double %a) #0 !dbg !1305 {
entry:
  %call = call arm_aapcs_vfpcc i32 @__fixuint(double %a) #4, !dbg !1306
  ret i32 %call, !dbg !1307
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @__fixuint(double %a) #0 !dbg !1308 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.24(double %a) #4, !dbg !1310
  %tobool = icmp slt i64 %call, 0, !dbg !1311
  %and = lshr i64 %call, 52, !dbg !1312
  %0 = trunc i64 %and to i32, !dbg !1313
  %1 = and i32 %0, 2047, !dbg !1313
  %conv = add nsw i32 %1, -1023, !dbg !1313
  %and2 = and i64 %call, 4503599627370495, !dbg !1314
  %or = or i64 %and2, 4503599627370496, !dbg !1315
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1316

lor.lhs.false:                                    ; preds = %entry
  %cmp4 = icmp slt i32 %conv, 0, !dbg !1317
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1318

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1319

if.end:                                           ; preds = %lor.lhs.false
  %cmp6 = icmp ugt i32 %conv, 31, !dbg !1320
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1321

if.then8:                                         ; preds = %if.end
  br label %return, !dbg !1322

if.end9:                                          ; preds = %if.end
  br i1 true, label %if.then12, label %if.else, !dbg !1323

if.then12:                                        ; preds = %if.end9
  %sub13 = sub nsw i32 1075, %1, !dbg !1324
  %sh_prom = zext i32 %sub13 to i64, !dbg !1325
  %shr14 = lshr i64 %or, %sh_prom, !dbg !1325
  %conv15 = trunc i64 %shr14 to i32, !dbg !1326
  br label %return, !dbg !1327

if.else:                                          ; preds = %if.end9
  br label %return, !dbg !1328

return:                                           ; preds = %if.else, %if.then12, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then8 ], [ %conv15, %if.then12 ], [ undef, %if.else ], !dbg !1329
  ret i32 %retval.0, !dbg !1330
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.24(double %x) #0 !dbg !1331 {
entry:
  %.cast = bitcast double %x to i64, !dbg !1332
  ret i64 %.cast, !dbg !1333
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__fixunssfdi(float %a) #0 !dbg !1334 {
entry:
  %cmp = fcmp ugt float %a, 0.000000e+00, !dbg !1335
  br i1 %cmp, label %if.end, label %if.then, !dbg !1336

if.then:                                          ; preds = %entry
  br label %return, !dbg !1337

if.end:                                           ; preds = %entry
  %conv = fpext float %a to double, !dbg !1338
  %div = fmul double %conv, 0x3DF0000000000000, !dbg !1339
  %conv1 = fptoui double %div to i32, !dbg !1340
  %conv2 = uitofp i32 %conv1 to double, !dbg !1341
  %mul = fmul double %conv2, 0x41F0000000000000, !dbg !1342
  %sub = fsub double %conv, %mul, !dbg !1343
  %conv3 = fptoui double %sub to i32, !dbg !1344
  %conv4 = zext i32 %conv1 to i64, !dbg !1345
  %shl = shl nuw i64 %conv4, 32, !dbg !1346
  %conv5 = zext i32 %conv3 to i64, !dbg !1347
  %or = or i64 %shl, %conv5, !dbg !1348
  br label %return, !dbg !1349

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %or, %if.end ], !dbg !1350
  ret i64 %retval.0, !dbg !1351
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__fixunssfsi(float %a) #0 !dbg !1352 {
entry:
  %call = call arm_aapcs_vfpcc i32 @__fixuint.27(float %a) #4, !dbg !1353
  ret i32 %call, !dbg !1354
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @__fixuint.27(float %a) #0 !dbg !1355 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.28(float %a) #4, !dbg !1356
  %tobool = icmp slt i32 %call, 0, !dbg !1357
  %and = lshr i32 %call, 23, !dbg !1358
  %shr = and i32 %and, 255, !dbg !1358
  %sub = add nsw i32 %shr, -127, !dbg !1359
  %and2 = and i32 %call, 8388607, !dbg !1360
  %or = or i32 %and2, 8388608, !dbg !1361
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1362

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp slt i32 %sub, 0, !dbg !1363
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1364

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1365

if.end:                                           ; preds = %lor.lhs.false
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1366
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1367

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !1368

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp slt i32 %sub, 23, !dbg !1369
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1370

if.then8:                                         ; preds = %if.end6
  %sub9 = sub nsw i32 150, %shr, !dbg !1371
  %shr10 = lshr i32 %or, %sub9, !dbg !1372
  br label %return, !dbg !1373

if.else:                                          ; preds = %if.end6
  %sub11 = add nsw i32 %shr, -150, !dbg !1374
  %shl = shl i32 %or, %sub11, !dbg !1375
  br label %return, !dbg !1376

return:                                           ; preds = %if.else, %if.then8, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then5 ], [ %shr10, %if.then8 ], [ %shl, %if.else ], !dbg !1377
  ret i32 %retval.0, !dbg !1378
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.28(float %x) #0 !dbg !1379 {
entry:
  %.cast = bitcast float %x to i32, !dbg !1380
  ret i32 %.cast, !dbg !1381
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__fixunsxfdi(double %a) #0 !dbg !1382 {
entry:
  %fb = alloca %union.long_double_bits, align 8
  %f = bitcast %union.long_double_bits* %fb to double*, !dbg !1383
  store double %a, double* %f, align 8, !dbg !1384
  %high = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 1, !dbg !1385
  %low = bitcast %union.udwords* %high to i32*, !dbg !1386
  %0 = load i32, i32* %low, align 8, !dbg !1386
  %and = and i32 %0, 32767, !dbg !1387
  %sub = add nsw i32 %and, -16383, !dbg !1388
  %cmp = icmp slt i32 %sub, 0, !dbg !1389
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1390

lor.lhs.false:                                    ; preds = %entry
  %high2 = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 1, !dbg !1391
  %low4 = bitcast %union.udwords* %high2 to i32*, !dbg !1392
  %1 = load i32, i32* %low4, align 8, !dbg !1392
  %and5 = and i32 %1, 32768, !dbg !1393
  %tobool = icmp eq i32 %and5, 0, !dbg !1393
  br i1 %tobool, label %if.end, label %if.then, !dbg !1394

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1395

if.end:                                           ; preds = %lor.lhs.false
  %cmp6 = icmp ugt i32 %sub, 64, !dbg !1396
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1397

if.then7:                                         ; preds = %if.end
  br label %return, !dbg !1398

if.end8:                                          ; preds = %if.end
  %all = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 0, i32 0, !dbg !1399
  %2 = load i64, i64* %all, align 8, !dbg !1399
  %sub11 = sub nsw i32 16446, %and, !dbg !1400
  %sh_prom = zext i32 %sub11 to i64, !dbg !1401
  %shr = lshr i64 %2, %sh_prom, !dbg !1401
  br label %return, !dbg !1402

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ -1, %if.then7 ], [ %shr, %if.end8 ], !dbg !1403
  ret i64 %retval.0, !dbg !1404
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__fixunsxfsi(double %a) #0 !dbg !1405 {
entry:
  %fb = alloca %union.long_double_bits, align 8
  %f = bitcast %union.long_double_bits* %fb to double*, !dbg !1406
  store double %a, double* %f, align 8, !dbg !1407
  %high = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 1, !dbg !1408
  %low = bitcast %union.udwords* %high to i32*, !dbg !1409
  %0 = load i32, i32* %low, align 8, !dbg !1409
  %and = and i32 %0, 32767, !dbg !1410
  %sub = add nsw i32 %and, -16383, !dbg !1411
  %cmp = icmp slt i32 %sub, 0, !dbg !1412
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1413

lor.lhs.false:                                    ; preds = %entry
  %high2 = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 1, !dbg !1414
  %low4 = bitcast %union.udwords* %high2 to i32*, !dbg !1415
  %1 = load i32, i32* %low4, align 8, !dbg !1415
  %and5 = and i32 %1, 32768, !dbg !1416
  %tobool = icmp eq i32 %and5, 0, !dbg !1416
  br i1 %tobool, label %if.end, label %if.then, !dbg !1417

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1418

if.end:                                           ; preds = %lor.lhs.false
  %cmp6 = icmp ugt i32 %sub, 32, !dbg !1419
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1420

if.then7:                                         ; preds = %if.end
  br label %return, !dbg !1421

if.end8:                                          ; preds = %if.end
  %s11 = bitcast %union.long_double_bits* %fb to %struct.anon*, !dbg !1422
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !1423
  %2 = load i32, i32* %high12, align 4, !dbg !1423
  %sub13 = sub nsw i32 16414, %and, !dbg !1424
  %shr = lshr i32 %2, %sub13, !dbg !1425
  br label %return, !dbg !1426

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then7 ], [ %shr, %if.end8 ], !dbg !1427
  ret i32 %retval.0, !dbg !1428
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__fixxfdi(double %a) #0 !dbg !1429 {
entry:
  %fb = alloca %union.long_double_bits, align 8
  %f = bitcast %union.long_double_bits* %fb to double*, !dbg !1430
  store double %a, double* %f, align 8, !dbg !1431
  %high = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 1, !dbg !1432
  %low = bitcast %union.udwords* %high to i32*, !dbg !1433
  %0 = load i32, i32* %low, align 8, !dbg !1433
  %and = and i32 %0, 32767, !dbg !1434
  %sub = add nsw i32 %and, -16383, !dbg !1435
  %cmp = icmp slt i32 %sub, 0, !dbg !1436
  br i1 %cmp, label %if.then, label %if.end, !dbg !1437

if.then:                                          ; preds = %entry
  br label %return, !dbg !1438

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i32 %sub, 63, !dbg !1439
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1440

if.then2:                                         ; preds = %if.end
  %cmp3 = fcmp ogt double %a, 0.000000e+00, !dbg !1441
  %cond = select i1 %cmp3, i64 9223372036854775807, i64 -9223372036854775808, !dbg !1442
  br label %return, !dbg !1443

if.end4:                                          ; preds = %if.end
  %high7 = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 1, !dbg !1444
  %low9 = bitcast %union.udwords* %high7 to i32*, !dbg !1445
  %1 = load i32, i32* %low9, align 8, !dbg !1445
  %and10 = lshr i32 %1, 15, !dbg !1446
  %shr = and i32 %and10, 1, !dbg !1446
  %sub11 = sub nsw i32 0, %shr, !dbg !1447
  %conv = sext i32 %sub11 to i64, !dbg !1447
  %all = getelementptr inbounds %union.long_double_bits, %union.long_double_bits* %fb, i32 0, i32 0, i32 0, i32 0, !dbg !1448
  %2 = load i64, i64* %all, align 8, !dbg !1448
  %sub14 = sub nsw i32 16446, %and, !dbg !1449
  %sh_prom = zext i32 %sub14 to i64, !dbg !1450
  %shr15 = lshr i64 %2, %sh_prom, !dbg !1450
  %xor = xor i64 %shr15, %conv, !dbg !1451
  %sub16 = sub nsw i64 %xor, %conv, !dbg !1452
  br label %return, !dbg !1453

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %cond, %if.then2 ], [ %sub16, %if.end4 ], !dbg !1454
  ret i64 %retval.0, !dbg !1455
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__floatdidf(i64 %a) #0 !dbg !1456 {
entry:
  %low = alloca %union.udwords, align 8
  %0 = getelementptr inbounds %union.udwords, %union.udwords* %low, i32 0, i32 0, !dbg !1457
  store i64 4841369599423283200, i64* %0, align 8, !dbg !1457
  %1 = lshr i64 %a, 32, !dbg !1458
  %conv = trunc i64 %1 to i32, !dbg !1459
  %conv1 = sitofp i32 %conv to double, !dbg !1459
  %mul = fmul double %conv1, 0x41F0000000000000, !dbg !1460
  %and = and i64 %a, 4294967295, !dbg !1461
  %x = getelementptr inbounds %union.udwords, %union.udwords* %low, i32 0, i32 0, !dbg !1462
  %2 = load i64, i64* %x, align 8, !dbg !1463
  %or = or i64 %2, %and, !dbg !1463
  store i64 %or, i64* %x, align 8, !dbg !1463
  %sub = fadd double %mul, 0xC330000000000000, !dbg !1464
  %.cast = bitcast i64 %or to double, !dbg !1465
  %add = fadd double %sub, %.cast, !dbg !1466
  ret double %add, !dbg !1467
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__floatdisf(i64 %a) #0 !dbg !1468 {
entry:
  %cmp = icmp eq i64 %a, 0, !dbg !1469
  br i1 %cmp, label %if.then, label %if.end, !dbg !1470

if.then:                                          ; preds = %entry
  br label %return, !dbg !1471

if.end:                                           ; preds = %entry
  %shr = ashr i64 %a, 63, !dbg !1472
  %xor = xor i64 %shr, %a, !dbg !1473
  %sub = sub nsw i64 %xor, %shr, !dbg !1474
  %0 = call i64 @llvm.ctlz.i64(i64 %sub, i1 false), !dbg !1475, !range !1476
  %cast = trunc i64 %0 to i32, !dbg !1475
  %sub2 = sub nsw i32 63, %cast, !dbg !1477
  %cmp3 = icmp ult i32 %cast, 40, !dbg !1478
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1479

if.then4:                                         ; preds = %if.end
  %sub1 = sub nsw i32 64, %cast, !dbg !1480
  switch i32 %sub1, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb5
  ], !dbg !1481

sw.bb:                                            ; preds = %if.then4
  %shl = shl i64 %sub, 1, !dbg !1482
  br label %sw.epilog, !dbg !1483

sw.bb5:                                           ; preds = %if.then4
  br label %sw.epilog, !dbg !1484

sw.default:                                       ; preds = %if.then4
  %sub6 = sub nsw i32 38, %cast, !dbg !1485
  %sh_prom = zext i32 %sub6 to i64, !dbg !1486
  %shr7 = lshr i64 %sub, %sh_prom, !dbg !1486
  %sub8 = add nuw nsw i32 %cast, 26, !dbg !1487
  %sh_prom9 = zext i32 %sub8 to i64, !dbg !1488
  %shr10 = lshr i64 -1, %sh_prom9, !dbg !1488
  %and = and i64 %sub, %shr10, !dbg !1489
  %cmp11 = icmp ne i64 %and, 0, !dbg !1490
  %conv12 = zext i1 %cmp11 to i64, !dbg !1491
  %or = or i64 %shr7, %conv12, !dbg !1492
  br label %sw.epilog, !dbg !1493

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %a.addr.0 = phi i64 [ %or, %sw.default ], [ %sub, %sw.bb5 ], [ %shl, %sw.bb ], !dbg !1494
  %and13 = lshr i64 %a.addr.0, 2, !dbg !1495
  %conv16 = and i64 %and13, 1, !dbg !1496
  %or17 = or i64 %a.addr.0, %conv16, !dbg !1497
  %inc = add nsw i64 %or17, 1, !dbg !1498
  %shr18 = ashr i64 %inc, 2, !dbg !1499
  %and19 = and i64 %inc, 67108864, !dbg !1500
  %tobool = icmp eq i64 %and19, 0, !dbg !1500
  %extract.t3 = trunc i64 %shr18 to i32, !dbg !1501
  br i1 %tobool, label %if.end23, label %if.then20, !dbg !1501

if.then20:                                        ; preds = %sw.epilog
  %1 = lshr i64 %shr18, 1, !dbg !1502
  %inc22 = sub nsw i32 64, %cast, !dbg !1503
  %extract.t2 = trunc i64 %1 to i32, !dbg !1504
  br label %if.end23, !dbg !1504

if.end23:                                         ; preds = %sw.epilog, %if.then20
  %e.0 = phi i32 [ %inc22, %if.then20 ], [ %sub2, %sw.epilog ], !dbg !1494
  %a.addr.1.off0 = phi i32 [ %extract.t2, %if.then20 ], [ %extract.t3, %sw.epilog ]
  br label %if.end27, !dbg !1505

if.else:                                          ; preds = %if.end
  %sub24 = add nsw i32 %cast, -40, !dbg !1506
  %sh_prom25 = zext i32 %sub24 to i64, !dbg !1507
  %shl26 = shl i64 %sub, %sh_prom25, !dbg !1507
  %extract.t1 = trunc i64 %shl26 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end23
  %e.1 = phi i32 [ %e.0, %if.end23 ], [ %sub2, %if.else ], !dbg !1494
  %a.addr.2.off0 = phi i32 [ %a.addr.1.off0, %if.end23 ], [ %extract.t1, %if.else ]
  %conv28 = trunc i64 %shr to i32, !dbg !1508
  %and29 = and i32 %conv28, -2147483648, !dbg !1509
  %add = shl nsw i32 %e.1, 23, !dbg !1510
  %shl30 = add i32 %add, 1065353216, !dbg !1510
  %or31 = or i32 %and29, %shl30, !dbg !1511
  %and33 = and i32 %a.addr.2.off0, 8388607, !dbg !1512
  %or34 = or i32 %or31, %and33, !dbg !1513
  %.cast = bitcast i32 %or34 to float, !dbg !1514
  br label %return, !dbg !1515

return:                                           ; preds = %if.end27, %if.then
  %retval.0 = phi float [ 0.000000e+00, %if.then ], [ %.cast, %if.end27 ], !dbg !1494
  ret float %retval.0, !dbg !1516
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__floatdixf(i64 %a) #0 !dbg !1517 {
entry:
  %cmp = icmp eq i64 %a, 0, !dbg !1518
  br i1 %cmp, label %if.then, label %if.end, !dbg !1519

if.then:                                          ; preds = %entry
  br label %return, !dbg !1520

if.end:                                           ; preds = %entry
  %0 = icmp slt i64 %a, 0, !dbg !1521
  %1 = sub nsw i64 0, %a, !dbg !1521
  %sub = select i1 %0, i64 %1, i64 %a, !dbg !1521
  %2 = call i64 @llvm.ctlz.i64(i64 %sub, i1 false), !dbg !1522, !range !1476
  %shl = shl i64 %sub, %2, !dbg !1523
  %.cast = bitcast i64 %shl to double, !dbg !1524
  br label %return, !dbg !1525

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi double [ 0.000000e+00, %if.then ], [ %.cast, %if.end ], !dbg !1526
  ret double %retval.0, !dbg !1527
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__floatsidf(i32 %a) #0 !dbg !1528 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1529
  br i1 %cmp, label %if.then, label %if.end, !dbg !1530

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc double @fromRep.29(i64 0) #4, !dbg !1531
  br label %return, !dbg !1532

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %a, 0, !dbg !1533
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1534

if.then2:                                         ; preds = %if.end
  %sub = sub nsw i32 0, %a, !dbg !1535
  br label %if.end3, !dbg !1536

if.end3:                                          ; preds = %if.then2, %if.end
  %sign.0 = phi i64 [ -9223372036854775808, %if.then2 ], [ 0, %if.end ], !dbg !1537
  %a.addr.0 = phi i32 [ %sub, %if.then2 ], [ %a, %if.end ]
  %0 = call i32 @llvm.ctlz.i32(i32 %a.addr.0, i1 false), !dbg !1538, !range !358
  %sub5 = add nuw nsw i32 %0, 21, !dbg !1539
  %conv = zext i32 %a.addr.0 to i64, !dbg !1540
  %sh_prom = zext i32 %sub5 to i64, !dbg !1541
  %shl = shl i64 %conv, %sh_prom, !dbg !1541
  %xor = xor i64 %shl, 4503599627370496, !dbg !1542
  %add = sub nuw nsw i32 1054, %0, !dbg !1543
  %conv6 = zext i32 %add to i64, !dbg !1544
  %shl7 = shl nuw nsw i64 %conv6, 52, !dbg !1545
  %add8 = add i64 %xor, %shl7, !dbg !1546
  %or = or i64 %add8, %sign.0, !dbg !1547
  %call9 = call arm_aapcs_vfpcc double @fromRep.29(i64 %or) #4, !dbg !1548
  br label %return, !dbg !1549

return:                                           ; preds = %if.end3, %if.then
  %retval.0 = phi double [ %call, %if.then ], [ %call9, %if.end3 ], !dbg !1537
  ret double %retval.0, !dbg !1550
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep.29(i64 %x) #0 !dbg !1551 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !1552
  ret double %.cast, !dbg !1553
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__floatsisf(i32 %a) #0 !dbg !1554 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1555
  br i1 %cmp, label %if.then, label %if.end, !dbg !1556

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc float @fromRep.30(i32 0) #4, !dbg !1557
  br label %return, !dbg !1558

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %a, 0, !dbg !1559
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1560

if.then2:                                         ; preds = %if.end
  %sub = sub nsw i32 0, %a, !dbg !1561
  br label %if.end3, !dbg !1562

if.end3:                                          ; preds = %if.then2, %if.end
  %sign.0 = phi i32 [ -2147483648, %if.then2 ], [ 0, %if.end ], !dbg !1563
  %a.addr.0 = phi i32 [ %sub, %if.then2 ], [ %a, %if.end ]
  %0 = call i32 @llvm.ctlz.i32(i32 %a.addr.0, i1 false), !dbg !1564, !range !358
  %cmp5 = icmp ult i32 %a.addr.0, 16777216, !dbg !1565
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !1566

if.then6:                                         ; preds = %if.end3
  %sub7 = add nsw i32 %0, -8, !dbg !1567
  %shl = shl i32 %a.addr.0, %sub7, !dbg !1568
  %xor = xor i32 %shl, 8388608, !dbg !1569
  br label %if.end19, !dbg !1570

if.else:                                          ; preds = %if.end3
  %sub9 = sub nsw i32 8, %0, !dbg !1571
  %shr = lshr i32 %a.addr.0, %sub9, !dbg !1572
  %xor10 = xor i32 %shr, 8388608, !dbg !1573
  %sub11 = add nuw nsw i32 %0, 24, !dbg !1574
  %shl12 = shl i32 %a.addr.0, %sub11, !dbg !1575
  %cmp13 = icmp ugt i32 %shl12, -2147483648, !dbg !1576
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1577

if.then14:                                        ; preds = %if.else
  %inc = add i32 %xor10, 1, !dbg !1578
  br label %if.end15, !dbg !1579

if.end15:                                         ; preds = %if.then14, %if.else
  %result.0 = phi i32 [ %inc, %if.then14 ], [ %xor10, %if.else ], !dbg !1563
  %cmp16 = icmp eq i32 %shl12, -2147483648, !dbg !1580
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1581

if.then17:                                        ; preds = %if.end15
  %and = and i32 %result.0, 1, !dbg !1582
  %add = add i32 %result.0, %and, !dbg !1583
  br label %if.end18, !dbg !1584

if.end18:                                         ; preds = %if.then17, %if.end15
  %result.1 = phi i32 [ %add, %if.then17 ], [ %result.0, %if.end15 ], !dbg !1563
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then6
  %result.2 = phi i32 [ %xor, %if.then6 ], [ %result.1, %if.end18 ], !dbg !1563
  %add20 = shl nuw nsw i32 %0, 23, !dbg !1585
  %shl21 = sub nuw nsw i32 1325400064, %add20, !dbg !1585
  %add22 = add i32 %result.2, %shl21, !dbg !1586
  %or = or i32 %add22, %sign.0, !dbg !1587
  %call23 = call arm_aapcs_vfpcc float @fromRep.30(i32 %or) #4, !dbg !1588
  br label %return, !dbg !1589

return:                                           ; preds = %if.end19, %if.then
  %retval.0 = phi float [ %call, %if.then ], [ %call23, %if.end19 ], !dbg !1563
  ret float %retval.0, !dbg !1590
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.30(i32 %x) #0 !dbg !1591 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !1592
  ret float %.cast, !dbg !1593
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__floatundidf(i64 %a) #0 !dbg !1594 {
entry:
  %high = alloca %union.udwords, align 8
  %low = alloca %union.udwords, align 8
  %0 = getelementptr inbounds %union.udwords, %union.udwords* %high, i32 0, i32 0, !dbg !1595
  store i64 4985484787499139072, i64* %0, align 8, !dbg !1595
  %1 = getelementptr inbounds %union.udwords, %union.udwords* %low, i32 0, i32 0, !dbg !1596
  store i64 4841369599423283200, i64* %1, align 8, !dbg !1596
  %shr = lshr i64 %a, 32, !dbg !1597
  %x = getelementptr inbounds %union.udwords, %union.udwords* %high, i32 0, i32 0, !dbg !1598
  %or = or i64 %shr, 4985484787499139072, !dbg !1599
  store i64 %or, i64* %x, align 8, !dbg !1599
  %and = and i64 %a, 4294967295, !dbg !1600
  %x1 = getelementptr inbounds %union.udwords, %union.udwords* %low, i32 0, i32 0, !dbg !1601
  %2 = load i64, i64* %x1, align 8, !dbg !1602
  %or2 = or i64 %2, %and, !dbg !1602
  store i64 %or2, i64* %x1, align 8, !dbg !1602
  %d = bitcast %union.udwords* %high to double*, !dbg !1603
  %3 = load double, double* %d, align 8, !dbg !1603
  %sub = fadd double %3, 0xC530000000100000, !dbg !1604
  %.cast = bitcast i64 %or2 to double, !dbg !1605
  %add = fadd double %sub, %.cast, !dbg !1606
  ret double %add, !dbg !1607
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__floatundisf(i64 %a) #0 !dbg !1608 {
entry:
  %cmp = icmp eq i64 %a, 0, !dbg !1609
  br i1 %cmp, label %if.then, label %if.end, !dbg !1610

if.then:                                          ; preds = %entry
  br label %return, !dbg !1611

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.ctlz.i64(i64 %a, i1 false), !dbg !1612, !range !1476
  %cast = trunc i64 %0 to i32, !dbg !1612
  %sub1 = sub nsw i32 63, %cast, !dbg !1613
  %cmp2 = icmp ult i32 %cast, 40, !dbg !1614
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1615

if.then3:                                         ; preds = %if.end
  %sub = sub nsw i32 64, %cast, !dbg !1616
  switch i32 %sub, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb4
  ], !dbg !1617

sw.bb:                                            ; preds = %if.then3
  %shl = shl i64 %a, 1, !dbg !1618
  br label %sw.epilog, !dbg !1619

sw.bb4:                                           ; preds = %if.then3
  br label %sw.epilog, !dbg !1620

sw.default:                                       ; preds = %if.then3
  %sub5 = sub nsw i32 38, %cast, !dbg !1621
  %sh_prom = zext i32 %sub5 to i64, !dbg !1622
  %shr = lshr i64 %a, %sh_prom, !dbg !1622
  %sub6 = add nuw nsw i32 %cast, 26, !dbg !1623
  %sh_prom7 = zext i32 %sub6 to i64, !dbg !1624
  %shr8 = lshr i64 -1, %sh_prom7, !dbg !1624
  %and = and i64 %shr8, %a, !dbg !1625
  %cmp9 = icmp ne i64 %and, 0, !dbg !1626
  %conv10 = zext i1 %cmp9 to i64, !dbg !1627
  %or = or i64 %shr, %conv10, !dbg !1628
  br label %sw.epilog, !dbg !1629

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %a.addr.0 = phi i64 [ %or, %sw.default ], [ %a, %sw.bb4 ], [ %shl, %sw.bb ]
  %and11 = lshr i64 %a.addr.0, 2, !dbg !1630
  %conv14 = and i64 %and11, 1, !dbg !1631
  %or15 = or i64 %a.addr.0, %conv14, !dbg !1632
  %inc = add i64 %or15, 1, !dbg !1633
  %shr16 = lshr i64 %inc, 2, !dbg !1634
  %and17 = and i64 %inc, 67108864, !dbg !1635
  %tobool = icmp eq i64 %and17, 0, !dbg !1635
  %extract.t3 = trunc i64 %shr16 to i32, !dbg !1636
  br i1 %tobool, label %if.end21, label %if.then18, !dbg !1636

if.then18:                                        ; preds = %sw.epilog
  %shr19 = lshr i64 %inc, 3, !dbg !1637
  %inc20 = sub nsw i32 64, %cast, !dbg !1638
  %extract.t2 = trunc i64 %shr19 to i32, !dbg !1639
  br label %if.end21, !dbg !1639

if.end21:                                         ; preds = %sw.epilog, %if.then18
  %e.0 = phi i32 [ %inc20, %if.then18 ], [ %sub1, %sw.epilog ], !dbg !1640
  %a.addr.1.off0 = phi i32 [ %extract.t2, %if.then18 ], [ %extract.t3, %sw.epilog ]
  br label %if.end25, !dbg !1641

if.else:                                          ; preds = %if.end
  %sub22 = add nsw i32 %cast, -40, !dbg !1642
  %sh_prom23 = zext i32 %sub22 to i64, !dbg !1643
  %shl24 = shl i64 %a, %sh_prom23, !dbg !1643
  %extract.t1 = trunc i64 %shl24 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end21
  %e.1 = phi i32 [ %e.0, %if.end21 ], [ %sub1, %if.else ], !dbg !1640
  %a.addr.2.off0 = phi i32 [ %a.addr.1.off0, %if.end21 ], [ %extract.t1, %if.else ]
  %add = shl nsw i32 %e.1, 23, !dbg !1644
  %shl26 = add i32 %add, 1065353216, !dbg !1644
  %and28 = and i32 %a.addr.2.off0, 8388607, !dbg !1645
  %or29 = or i32 %shl26, %and28, !dbg !1646
  %.cast = bitcast i32 %or29 to float, !dbg !1647
  br label %return, !dbg !1648

return:                                           ; preds = %if.end25, %if.then
  %retval.0 = phi float [ 0.000000e+00, %if.then ], [ %.cast, %if.end25 ], !dbg !1640
  ret float %retval.0, !dbg !1649
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__floatundixf(i64 %a) #0 !dbg !1650 {
entry:
  %cmp = icmp eq i64 %a, 0, !dbg !1651
  br i1 %cmp, label %if.then, label %if.end, !dbg !1652

if.then:                                          ; preds = %entry
  br label %return, !dbg !1653

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.ctlz.i64(i64 %a, i1 false), !dbg !1654, !range !1476
  %shl = shl i64 %a, %0, !dbg !1655
  %.cast = bitcast i64 %shl to double, !dbg !1656
  br label %return, !dbg !1657

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi double [ 0.000000e+00, %if.then ], [ %.cast, %if.end ], !dbg !1658
  ret double %retval.0, !dbg !1659
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__floatunsidf(i32 %a) #0 !dbg !1660 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1661
  br i1 %cmp, label %if.then, label %if.end, !dbg !1662

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc double @fromRep.31(i64 0) #4, !dbg !1663
  br label %return, !dbg !1664

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.ctlz.i32(i32 %a, i1 false), !dbg !1665, !range !358
  %sub1 = add nuw nsw i32 %0, 21, !dbg !1666
  %conv = zext i32 %a to i64, !dbg !1667
  %sh_prom = zext i32 %sub1 to i64, !dbg !1668
  %shl = shl i64 %conv, %sh_prom, !dbg !1668
  %xor = xor i64 %shl, 4503599627370496, !dbg !1669
  %add = sub nuw nsw i32 1054, %0, !dbg !1670
  %conv2 = zext i32 %add to i64, !dbg !1671
  %shl3 = shl nuw nsw i64 %conv2, 52, !dbg !1672
  %add4 = add i64 %xor, %shl3, !dbg !1673
  %call5 = call arm_aapcs_vfpcc double @fromRep.31(i64 %add4) #4, !dbg !1674
  br label %return, !dbg !1675

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi double [ %call, %if.then ], [ %call5, %if.end ], !dbg !1676
  ret double %retval.0, !dbg !1677
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep.31(i64 %x) #0 !dbg !1678 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !1679
  ret double %.cast, !dbg !1680
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__floatunsisf(i32 %a) #0 !dbg !1681 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1682
  br i1 %cmp, label %if.then, label %if.end, !dbg !1683

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc float @fromRep.32(i32 0) #4, !dbg !1684
  br label %return, !dbg !1685

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.ctlz.i32(i32 %a, i1 false), !dbg !1686, !range !358
  %cmp1 = icmp ult i32 %a, 16777216, !dbg !1687
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1688

if.then2:                                         ; preds = %if.end
  %sub3 = add nsw i32 %0, -8, !dbg !1689
  %shl = shl i32 %a, %sub3, !dbg !1690
  %xor = xor i32 %shl, 8388608, !dbg !1691
  br label %if.end15, !dbg !1692

if.else:                                          ; preds = %if.end
  %sub5 = sub nsw i32 8, %0, !dbg !1693
  %shr = lshr i32 %a, %sub5, !dbg !1694
  %xor6 = xor i32 %shr, 8388608, !dbg !1695
  %sub7 = add nuw nsw i32 %0, 24, !dbg !1696
  %shl8 = shl i32 %a, %sub7, !dbg !1697
  %cmp9 = icmp ugt i32 %shl8, -2147483648, !dbg !1698
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1699

if.then10:                                        ; preds = %if.else
  %inc = add i32 %xor6, 1, !dbg !1700
  br label %if.end11, !dbg !1701

if.end11:                                         ; preds = %if.then10, %if.else
  %result.0 = phi i32 [ %inc, %if.then10 ], [ %xor6, %if.else ], !dbg !1702
  %cmp12 = icmp eq i32 %shl8, -2147483648, !dbg !1703
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1704

if.then13:                                        ; preds = %if.end11
  %and = and i32 %result.0, 1, !dbg !1705
  %add = add i32 %result.0, %and, !dbg !1706
  br label %if.end14, !dbg !1707

if.end14:                                         ; preds = %if.then13, %if.end11
  %result.1 = phi i32 [ %add, %if.then13 ], [ %result.0, %if.end11 ], !dbg !1702
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %result.2 = phi i32 [ %xor, %if.then2 ], [ %result.1, %if.end14 ], !dbg !1702
  %add16 = shl nuw nsw i32 %0, 23, !dbg !1708
  %shl17 = sub nuw nsw i32 1325400064, %add16, !dbg !1708
  %add18 = add i32 %result.2, %shl17, !dbg !1709
  %call19 = call arm_aapcs_vfpcc float @fromRep.32(i32 %add18) #4, !dbg !1710
  br label %return, !dbg !1711

return:                                           ; preds = %if.end15, %if.then
  %retval.0 = phi float [ %call, %if.then ], [ %call19, %if.end15 ], !dbg !1702
  ret float %retval.0, !dbg !1712
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.32(i32 %x) #0 !dbg !1713 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !1714
  ret float %.cast, !dbg !1715
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* %file, i32 %line, i8* %function) #3 !dbg !1716 {
entry:
  unreachable, !dbg !1717
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__muldf3(double %a, double %b) #0 !dbg !1718 {
entry:
  %call = call arm_aapcs_vfpcc double @__mulXf3__(double %a, double %b) #4, !dbg !1719
  ret double %call, !dbg !1720
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @__mulXf3__(double %a, double %b) #0 !dbg !1721 {
entry:
  %aSignificand = alloca i64, align 8
  %bSignificand = alloca i64, align 8
  %productHi = alloca i64, align 8
  %productLo = alloca i64, align 8
  %call = call arm_aapcs_vfpcc i64 @toRep.33(double %a) #4, !dbg !1723
  %shr = lshr i64 %call, 52, !dbg !1724
  %0 = trunc i64 %shr to i32, !dbg !1723
  %conv = and i32 %0, 2047, !dbg !1723
  %call1 = call arm_aapcs_vfpcc i64 @toRep.33(double %b) #4, !dbg !1725
  %shr2 = lshr i64 %call1, 52, !dbg !1726
  %1 = trunc i64 %shr2 to i32, !dbg !1725
  %conv4 = and i32 %1, 2047, !dbg !1725
  %call5 = call arm_aapcs_vfpcc i64 @toRep.33(double %a) #4, !dbg !1727
  %call6 = call arm_aapcs_vfpcc i64 @toRep.33(double %b) #4, !dbg !1728
  %xor = xor i64 %call5, %call6, !dbg !1729
  %and7 = and i64 %xor, -9223372036854775808, !dbg !1730
  %call8 = call arm_aapcs_vfpcc i64 @toRep.33(double %a) #4, !dbg !1731
  %and9 = and i64 %call8, 4503599627370495, !dbg !1732
  store i64 %and9, i64* %aSignificand, align 8, !dbg !1733
  %call10 = call arm_aapcs_vfpcc i64 @toRep.33(double %b) #4, !dbg !1734
  %and11 = and i64 %call10, 4503599627370495, !dbg !1735
  store i64 %and11, i64* %bSignificand, align 8, !dbg !1736
  %sub = add nsw i32 %conv, -1, !dbg !1737
  %cmp = icmp ugt i32 %sub, 2045, !dbg !1738
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1739

lor.lhs.false:                                    ; preds = %entry
  %sub13 = add nsw i32 %conv4, -1, !dbg !1740
  %cmp14 = icmp ugt i32 %sub13, 2045, !dbg !1741
  br i1 %cmp14, label %if.then, label %if.end69, !dbg !1742

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call16 = call arm_aapcs_vfpcc i64 @toRep.33(double %a) #4, !dbg !1743
  %and17 = and i64 %call16, 9223372036854775807, !dbg !1744
  %call18 = call arm_aapcs_vfpcc i64 @toRep.33(double %b) #4, !dbg !1745
  %and19 = and i64 %call18, 9223372036854775807, !dbg !1746
  %cmp20 = icmp ugt i64 %and17, 9218868437227405312, !dbg !1747
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !1748

if.then22:                                        ; preds = %if.then
  %call23 = call arm_aapcs_vfpcc i64 @toRep.33(double %a) #4, !dbg !1749
  %or = or i64 %call23, 2251799813685248, !dbg !1750
  %call24 = call arm_aapcs_vfpcc double @fromRep.34(i64 %or) #4, !dbg !1751
  br label %return, !dbg !1752

if.end:                                           ; preds = %if.then
  %cmp25 = icmp ugt i64 %and19, 9218868437227405312, !dbg !1753
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !1754

if.then27:                                        ; preds = %if.end
  %call28 = call arm_aapcs_vfpcc i64 @toRep.33(double %b) #4, !dbg !1755
  %or29 = or i64 %call28, 2251799813685248, !dbg !1756
  %call30 = call arm_aapcs_vfpcc double @fromRep.34(i64 %or29) #4, !dbg !1757
  br label %return, !dbg !1758

if.end31:                                         ; preds = %if.end
  %cmp32 = icmp eq i64 %and17, 9218868437227405312, !dbg !1759
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !1760

if.then34:                                        ; preds = %if.end31
  %tobool = icmp eq i64 %and19, 0, !dbg !1761
  br i1 %tobool, label %if.else, label %if.then35, !dbg !1761

if.then35:                                        ; preds = %if.then34
  %or36 = or i64 %and17, %and7, !dbg !1762
  %call37 = call arm_aapcs_vfpcc double @fromRep.34(i64 %or36) #4, !dbg !1763
  br label %return, !dbg !1764

if.else:                                          ; preds = %if.then34
  %call38 = call arm_aapcs_vfpcc double @fromRep.34(i64 9221120237041090560) #4, !dbg !1765
  br label %return, !dbg !1766

if.end39:                                         ; preds = %if.end31
  %cmp40 = icmp eq i64 %and19, 9218868437227405312, !dbg !1767
  br i1 %cmp40, label %if.then42, label %if.end49, !dbg !1768

if.then42:                                        ; preds = %if.end39
  %tobool43 = icmp eq i64 %and17, 0, !dbg !1769
  br i1 %tobool43, label %if.else47, label %if.then44, !dbg !1769

if.then44:                                        ; preds = %if.then42
  %or45 = or i64 %and19, %and7, !dbg !1770
  %call46 = call arm_aapcs_vfpcc double @fromRep.34(i64 %or45) #4, !dbg !1771
  br label %return, !dbg !1772

if.else47:                                        ; preds = %if.then42
  %call48 = call arm_aapcs_vfpcc double @fromRep.34(i64 9221120237041090560) #4, !dbg !1773
  br label %return, !dbg !1774

if.end49:                                         ; preds = %if.end39
  %tobool50 = icmp eq i64 %and17, 0, !dbg !1775
  br i1 %tobool50, label %if.then51, label %if.end53, !dbg !1776

if.then51:                                        ; preds = %if.end49
  %call52 = call arm_aapcs_vfpcc double @fromRep.34(i64 %and7) #4, !dbg !1777
  br label %return, !dbg !1778

if.end53:                                         ; preds = %if.end49
  %tobool54 = icmp eq i64 %and19, 0, !dbg !1779
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !1780

if.then55:                                        ; preds = %if.end53
  %call56 = call arm_aapcs_vfpcc double @fromRep.34(i64 %and7) #4, !dbg !1781
  br label %return, !dbg !1782

if.end57:                                         ; preds = %if.end53
  %cmp58 = icmp ult i64 %and17, 4503599627370496, !dbg !1783
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !1784

if.then60:                                        ; preds = %if.end57
  %call61 = call arm_aapcs_vfpcc i32 @normalize.35(i64* nonnull %aSignificand) #4, !dbg !1785
  br label %if.end62, !dbg !1786

if.end62:                                         ; preds = %if.then60, %if.end57
  %scale.0 = phi i32 [ %call61, %if.then60 ], [ 0, %if.end57 ], !dbg !1787
  %cmp63 = icmp ult i64 %and19, 4503599627370496, !dbg !1788
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !1789

if.then65:                                        ; preds = %if.end62
  %call66 = call arm_aapcs_vfpcc i32 @normalize.35(i64* nonnull %bSignificand) #4, !dbg !1790
  %add67 = add nsw i32 %scale.0, %call66, !dbg !1791
  br label %if.end68, !dbg !1792

if.end68:                                         ; preds = %if.then65, %if.end62
  %scale.1 = phi i32 [ %add67, %if.then65 ], [ %scale.0, %if.end62 ], !dbg !1787
  br label %if.end69, !dbg !1793

if.end69:                                         ; preds = %if.end68, %lor.lhs.false
  %scale.2 = phi i32 [ %scale.1, %if.end68 ], [ 0, %lor.lhs.false ], !dbg !1787
  %2 = load i64, i64* %aSignificand, align 8, !dbg !1794
  %or70 = or i64 %2, 4503599627370496, !dbg !1794
  store i64 %or70, i64* %aSignificand, align 8, !dbg !1794
  %3 = load i64, i64* %bSignificand, align 8, !dbg !1795
  %or71 = or i64 %3, 4503599627370496, !dbg !1795
  store i64 %or71, i64* %bSignificand, align 8, !dbg !1795
  %shl = shl i64 %or71, 11, !dbg !1796
  call arm_aapcs_vfpcc void @wideMultiply.36(i64 %or70, i64 %shl, i64* nonnull %productHi, i64* nonnull %productLo) #4, !dbg !1797
  %add72 = add nuw nsw i32 %conv, %conv4, !dbg !1798
  %sub73 = add nsw i32 %add72, -1023, !dbg !1799
  %add74 = add i32 %sub73, %scale.2, !dbg !1800
  %4 = load i64, i64* %productHi, align 8, !dbg !1801
  %and75 = and i64 %4, 4503599627370496, !dbg !1802
  %tobool76 = icmp eq i64 %and75, 0, !dbg !1802
  br i1 %tobool76, label %if.else78, label %if.then77, !dbg !1801

if.then77:                                        ; preds = %if.end69
  %inc = add nsw i32 %add74, 1, !dbg !1803
  br label %if.end79, !dbg !1804

if.else78:                                        ; preds = %if.end69
  call arm_aapcs_vfpcc void @wideLeftShift(i64* nonnull %productHi, i64* nonnull %productLo, i32 1) #4, !dbg !1805
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  %productExponent.0 = phi i32 [ %inc, %if.then77 ], [ %add74, %if.else78 ], !dbg !1787
  %cmp80 = icmp sgt i32 %productExponent.0, 2046, !dbg !1806
  br i1 %cmp80, label %if.then82, label %if.end85, !dbg !1807

if.then82:                                        ; preds = %if.end79
  %or83 = or i64 %and7, 9218868437227405312, !dbg !1808
  %call84 = call arm_aapcs_vfpcc double @fromRep.34(i64 %or83) #4, !dbg !1809
  br label %return, !dbg !1810

if.end85:                                         ; preds = %if.end79
  %cmp86 = icmp slt i32 %productExponent.0, 1, !dbg !1811
  br i1 %cmp86, label %if.then88, label %if.else97, !dbg !1812

if.then88:                                        ; preds = %if.end85
  %sub90 = sub i32 1, %productExponent.0, !dbg !1813
  %cmp92 = icmp ugt i32 %sub90, 63, !dbg !1814
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !1815

if.then94:                                        ; preds = %if.then88
  %call95 = call arm_aapcs_vfpcc double @fromRep.34(i64 %and7) #4, !dbg !1816
  br label %return, !dbg !1817

if.end96:                                         ; preds = %if.then88
  call arm_aapcs_vfpcc void @wideRightShiftWithSticky(i64* nonnull %productHi, i64* nonnull %productLo, i32 %sub90) #4, !dbg !1818
  br label %if.end102, !dbg !1819

if.else97:                                        ; preds = %if.end85
  %5 = load i64, i64* %productHi, align 8, !dbg !1820
  %and98 = and i64 %5, 4503599627370495, !dbg !1820
  %conv991 = zext i32 %productExponent.0 to i64, !dbg !1821
  %shl100 = shl i64 %conv991, 52, !dbg !1822
  %or101 = or i64 %and98, %shl100, !dbg !1823
  store i64 %or101, i64* %productHi, align 8, !dbg !1823
  br label %if.end102

if.end102:                                        ; preds = %if.else97, %if.end96
  %6 = load i64, i64* %productHi, align 8, !dbg !1824
  %or103 = or i64 %6, %and7, !dbg !1824
  store i64 %or103, i64* %productHi, align 8, !dbg !1824
  %7 = load i64, i64* %productLo, align 8, !dbg !1825
  %cmp104 = icmp ugt i64 %7, -9223372036854775808, !dbg !1826
  br i1 %cmp104, label %if.then106, label %if.end108, !dbg !1825

if.then106:                                       ; preds = %if.end102
  %8 = load i64, i64* %productHi, align 8, !dbg !1827
  %inc107 = add i64 %8, 1, !dbg !1827
  store i64 %inc107, i64* %productHi, align 8, !dbg !1827
  br label %if.end108, !dbg !1828

if.end108:                                        ; preds = %if.then106, %if.end102
  %9 = load i64, i64* %productLo, align 8, !dbg !1829
  %cmp109 = icmp eq i64 %9, -9223372036854775808, !dbg !1830
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !1829

if.then111:                                       ; preds = %if.end108
  %10 = load i64, i64* %productHi, align 8, !dbg !1831
  %and112 = and i64 %10, 1, !dbg !1832
  %add113 = add i64 %10, %and112, !dbg !1833
  store i64 %add113, i64* %productHi, align 8, !dbg !1833
  br label %if.end114, !dbg !1834

if.end114:                                        ; preds = %if.then111, %if.end108
  %11 = load i64, i64* %productHi, align 8, !dbg !1835
  %call115 = call arm_aapcs_vfpcc double @fromRep.34(i64 %11) #4, !dbg !1836
  br label %return, !dbg !1837

return:                                           ; preds = %if.end114, %if.then94, %if.then82, %if.then55, %if.then51, %if.else47, %if.then44, %if.else, %if.then35, %if.then27, %if.then22
  %retval.0 = phi double [ %call24, %if.then22 ], [ %call30, %if.then27 ], [ %call37, %if.then35 ], [ %call38, %if.else ], [ %call46, %if.then44 ], [ %call48, %if.else47 ], [ %call84, %if.then82 ], [ %call95, %if.then94 ], [ %call115, %if.end114 ], [ %call56, %if.then55 ], [ %call52, %if.then51 ], !dbg !1787
  ret double %retval.0, !dbg !1838
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.33(double %x) #0 !dbg !1839 {
entry:
  %.cast = bitcast double %x to i64, !dbg !1840
  ret i64 %.cast, !dbg !1841
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep.34(i64 %x) #0 !dbg !1842 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !1843
  ret double %.cast, !dbg !1844
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @normalize.35(i64* %significand) #0 !dbg !1845 {
entry:
  %0 = load i64, i64* %significand, align 8, !dbg !1846
  %call = call arm_aapcs_vfpcc i32 @rep_clz.37(i64 %0) #4, !dbg !1847
  %call1 = call arm_aapcs_vfpcc i32 @rep_clz.37(i64 4503599627370496) #4, !dbg !1848
  %sub = sub nsw i32 %call, %call1, !dbg !1849
  %1 = load i64, i64* %significand, align 8, !dbg !1850
  %sh_prom = zext i32 %sub to i64, !dbg !1850
  %shl = shl i64 %1, %sh_prom, !dbg !1850
  store i64 %shl, i64* %significand, align 8, !dbg !1850
  %sub2 = sub nsw i32 1, %sub, !dbg !1851
  ret i32 %sub2, !dbg !1852
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideMultiply.36(i64 %a, i64 %b, i64* %hi, i64* %lo) #0 !dbg !1853 {
entry:
  %and = and i64 %a, 4294967295, !dbg !1854
  %and1 = and i64 %b, 4294967295, !dbg !1855
  %mul = mul nuw i64 %and, %and1, !dbg !1856
  %and2 = and i64 %a, 4294967295, !dbg !1857
  %shr = lshr i64 %b, 32, !dbg !1858
  %mul3 = mul nuw i64 %and2, %shr, !dbg !1859
  %shr4 = lshr i64 %a, 32, !dbg !1860
  %and5 = and i64 %b, 4294967295, !dbg !1861
  %mul6 = mul nuw i64 %shr4, %and5, !dbg !1862
  %shr7 = lshr i64 %a, 32, !dbg !1863
  %shr8 = lshr i64 %b, 32, !dbg !1864
  %mul9 = mul nuw i64 %shr7, %shr8, !dbg !1865
  %and10 = and i64 %mul, 4294967295, !dbg !1866
  %shr11 = lshr i64 %mul, 32, !dbg !1867
  %and12 = and i64 %mul3, 4294967295, !dbg !1868
  %add = add nuw nsw i64 %shr11, %and12, !dbg !1869
  %and13 = and i64 %mul6, 4294967295, !dbg !1870
  %add14 = add nuw nsw i64 %add, %and13, !dbg !1871
  %shl = shl i64 %add14, 32, !dbg !1872
  %add15 = or i64 %and10, %shl, !dbg !1873
  store i64 %add15, i64* %lo, align 8, !dbg !1874
  %shr16 = lshr i64 %mul3, 32, !dbg !1875
  %shr17 = lshr i64 %mul6, 32, !dbg !1876
  %add18 = add nuw nsw i64 %shr16, %shr17, !dbg !1877
  %shr19 = lshr i64 %add14, 32, !dbg !1878
  %add20 = add nuw nsw i64 %add18, %shr19, !dbg !1879
  %add21 = add i64 %add20, %mul9, !dbg !1880
  store i64 %add21, i64* %hi, align 8, !dbg !1881
  ret void, !dbg !1882
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideLeftShift(i64* %hi, i64* %lo, i32 %count) #0 !dbg !1883 {
entry:
  %0 = load i64, i64* %hi, align 8, !dbg !1884
  %sh_prom = zext i32 %count to i64, !dbg !1885
  %shl = shl i64 %0, %sh_prom, !dbg !1885
  %1 = load i64, i64* %lo, align 8, !dbg !1886
  %sub = sub i32 64, %count, !dbg !1887
  %sh_prom1 = zext i32 %sub to i64, !dbg !1888
  %shr = lshr i64 %1, %sh_prom1, !dbg !1888
  %or = or i64 %shl, %shr, !dbg !1889
  store i64 %or, i64* %hi, align 8, !dbg !1890
  %2 = load i64, i64* %lo, align 8, !dbg !1891
  %sh_prom2 = zext i32 %count to i64, !dbg !1892
  %shl3 = shl i64 %2, %sh_prom2, !dbg !1892
  store i64 %shl3, i64* %lo, align 8, !dbg !1893
  ret void, !dbg !1894
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideRightShiftWithSticky(i64* %hi, i64* %lo, i32 %count) #0 !dbg !1895 {
entry:
  %cmp = icmp ult i32 %count, 64, !dbg !1896
  br i1 %cmp, label %if.then, label %if.else, !dbg !1897

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lo, align 8, !dbg !1898
  %sub = sub i32 64, %count, !dbg !1899
  %sh_prom = zext i32 %sub to i64, !dbg !1900
  %shl = shl i64 %0, %sh_prom, !dbg !1900
  %tobool = icmp ne i64 %shl, 0, !dbg !1898
  %1 = load i64, i64* %hi, align 8, !dbg !1901
  %sub1 = sub i32 64, %count, !dbg !1902
  %sh_prom2 = zext i32 %sub1 to i64, !dbg !1903
  %shl3 = shl i64 %1, %sh_prom2, !dbg !1903
  %2 = load i64, i64* %lo, align 8, !dbg !1904
  %sh_prom4 = zext i32 %count to i64, !dbg !1905
  %shr = lshr i64 %2, %sh_prom4, !dbg !1905
  %or = or i64 %shl3, %shr, !dbg !1906
  %conv = zext i1 %tobool to i64, !dbg !1907
  %or6 = or i64 %or, %conv, !dbg !1908
  store i64 %or6, i64* %lo, align 8, !dbg !1909
  %3 = load i64, i64* %hi, align 8, !dbg !1910
  %sh_prom7 = zext i32 %count to i64, !dbg !1911
  %shr8 = lshr i64 %3, %sh_prom7, !dbg !1911
  br label %if.end32, !dbg !1912

if.else:                                          ; preds = %entry
  %cmp9 = icmp ult i32 %count, 128, !dbg !1913
  br i1 %cmp9, label %if.then11, label %if.else25, !dbg !1914

if.then11:                                        ; preds = %if.else
  %4 = load i64, i64* %hi, align 8, !dbg !1915
  %sub13 = sub i32 128, %count, !dbg !1916
  %sh_prom14 = zext i32 %sub13 to i64, !dbg !1917
  %shl15 = shl i64 %4, %sh_prom14, !dbg !1917
  %5 = load i64, i64* %lo, align 8, !dbg !1918
  %or16 = or i64 %shl15, %5, !dbg !1919
  %tobool17 = icmp ne i64 %or16, 0, !dbg !1915
  %6 = load i64, i64* %hi, align 8, !dbg !1920
  %sub19 = add i32 %count, -64, !dbg !1921
  %sh_prom20 = zext i32 %sub19 to i64, !dbg !1922
  %shr21 = lshr i64 %6, %sh_prom20, !dbg !1922
  %conv23 = zext i1 %tobool17 to i64, !dbg !1923
  %or24 = or i64 %shr21, %conv23, !dbg !1924
  br label %if.end, !dbg !1925

if.else25:                                        ; preds = %if.else
  %7 = load i64, i64* %hi, align 8, !dbg !1926
  %8 = load i64, i64* %lo, align 8, !dbg !1927
  %or27 = or i64 %7, %8, !dbg !1928
  %tobool28 = icmp ne i64 %or27, 0, !dbg !1926
  %conv31 = zext i1 %tobool28 to i64, !dbg !1929
  br label %if.end

if.end:                                           ; preds = %if.else25, %if.then11
  %storemerge1 = phi i64 [ %or24, %if.then11 ], [ %conv31, %if.else25 ], !dbg !1930
  store i64 %storemerge1, i64* %lo, align 8, !dbg !1930
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then
  %storemerge = phi i64 [ 0, %if.end ], [ %shr8, %if.then ], !dbg !1930
  store i64 %storemerge, i64* %hi, align 8, !dbg !1930
  ret void, !dbg !1931
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @rep_clz.37(i64 %a) #0 !dbg !1932 {
entry:
  %tobool = icmp ugt i64 %a, 4294967295, !dbg !1933
  br i1 %tobool, label %if.then, label %if.else, !dbg !1934

if.then:                                          ; preds = %entry
  %shr = lshr i64 %a, 32, !dbg !1935
  %conv = trunc i64 %shr to i32, !dbg !1936
  %0 = call i32 @llvm.ctlz.i32(i32 %conv, i1 false), !dbg !1937, !range !358
  br label %return, !dbg !1938

if.else:                                          ; preds = %entry
  %conv2 = trunc i64 %a to i32, !dbg !1939
  %1 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 false), !dbg !1940, !range !358
  %add = add nuw nsw i32 %1, 32, !dbg !1941
  br label %return, !dbg !1942

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %add, %if.else ], !dbg !1943
  ret i32 %retval.0, !dbg !1944
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__muldi3(i64 %a, i64 %b) #0 !dbg !1945 {
entry:
  %x = alloca %union.udwords, align 8
  %y = alloca %union.udwords, align 8
  %r = alloca %union.udwords, align 8
  %all = getelementptr inbounds %union.udwords, %union.udwords* %x, i32 0, i32 0, !dbg !1946
  store i64 %a, i64* %all, align 8, !dbg !1947
  %all1 = getelementptr inbounds %union.udwords, %union.udwords* %y, i32 0, i32 0, !dbg !1948
  store i64 %b, i64* %all1, align 8, !dbg !1949
  %low = bitcast %union.udwords* %x to i32*, !dbg !1950
  %0 = load i32, i32* %low, align 8, !dbg !1950
  %low3 = bitcast %union.udwords* %y to i32*, !dbg !1951
  %1 = load i32, i32* %low3, align 8, !dbg !1951
  %call = call arm_aapcs_vfpcc i64 @__muldsi3(i32 %0, i32 %1) #4, !dbg !1952
  %all4 = getelementptr inbounds %union.udwords, %union.udwords* %r, i32 0, i32 0, !dbg !1953
  store i64 %call, i64* %all4, align 8, !dbg !1954
  %s5 = bitcast %union.udwords* %x to %struct.anon*, !dbg !1955
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1956
  %2 = load i32, i32* %high, align 4, !dbg !1956
  %low7 = bitcast %union.udwords* %y to i32*, !dbg !1957
  %3 = load i32, i32* %low7, align 8, !dbg !1957
  %mul = mul i32 %2, %3, !dbg !1958
  %low9 = bitcast %union.udwords* %x to i32*, !dbg !1959
  %4 = load i32, i32* %low9, align 8, !dbg !1959
  %s10 = bitcast %union.udwords* %y to %struct.anon*, !dbg !1960
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1961
  %5 = load i32, i32* %high11, align 4, !dbg !1961
  %mul12 = mul i32 %4, %5, !dbg !1962
  %add = add i32 %mul, %mul12, !dbg !1963
  %s13 = bitcast %union.udwords* %r to %struct.anon*, !dbg !1964
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !1965
  %6 = load i32, i32* %high14, align 4, !dbg !1966
  %add15 = add i32 %6, %add, !dbg !1966
  store i32 %add15, i32* %high14, align 4, !dbg !1966
  %all16 = getelementptr inbounds %union.udwords, %union.udwords* %r, i32 0, i32 0, !dbg !1967
  %7 = load i64, i64* %all16, align 8, !dbg !1967
  ret i64 %7, !dbg !1968
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @__muldsi3(i32 %a, i32 %b) #0 !dbg !1969 {
entry:
  %r = alloca %union.udwords, align 8
  %and = and i32 %a, 65535, !dbg !1970
  %and1 = and i32 %b, 65535, !dbg !1971
  %mul = mul nuw i32 %and, %and1, !dbg !1972
  %shr = lshr i32 %mul, 16, !dbg !1973
  %low5 = bitcast %union.udwords* %r to i32*, !dbg !1974
  %and6 = and i32 %mul, 65535, !dbg !1975
  store i32 %and6, i32* %low5, align 8, !dbg !1975
  %shr7 = lshr i32 %a, 16, !dbg !1976
  %and8 = and i32 %b, 65535, !dbg !1977
  %mul9 = mul nuw i32 %shr7, %and8, !dbg !1978
  %add = add i32 %shr, %mul9, !dbg !1979
  %shl = shl i32 %add, 16, !dbg !1980
  %low12 = bitcast %union.udwords* %r to i32*, !dbg !1981
  %0 = load i32, i32* %low12, align 8, !dbg !1982
  %add13 = add i32 %0, %shl, !dbg !1982
  store i32 %add13, i32* %low12, align 8, !dbg !1982
  %shr14 = lshr i32 %add, 16, !dbg !1983
  %s15 = bitcast %union.udwords* %r to %struct.anon*, !dbg !1984
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s15, i32 0, i32 1, !dbg !1985
  store i32 %shr14, i32* %high, align 4, !dbg !1986
  %shr18 = lshr i32 %add13, 16, !dbg !1987
  %low20 = bitcast %union.udwords* %r to i32*, !dbg !1988
  %1 = load i32, i32* %low20, align 8, !dbg !1989
  %and21 = and i32 %1, 65535, !dbg !1989
  store i32 %and21, i32* %low20, align 8, !dbg !1989
  %shr22 = lshr i32 %b, 16, !dbg !1990
  %and23 = and i32 %a, 65535, !dbg !1991
  %mul24 = mul nuw i32 %shr22, %and23, !dbg !1992
  %add25 = add i32 %shr18, %mul24, !dbg !1993
  %shl27 = shl i32 %add25, 16, !dbg !1994
  %low29 = bitcast %union.udwords* %r to i32*, !dbg !1995
  %2 = load i32, i32* %low29, align 8, !dbg !1996
  %add30 = add i32 %2, %shl27, !dbg !1996
  store i32 %add30, i32* %low29, align 8, !dbg !1996
  %shr31 = lshr i32 %add25, 16, !dbg !1997
  %s32 = bitcast %union.udwords* %r to %struct.anon*, !dbg !1998
  %high33 = getelementptr inbounds %struct.anon, %struct.anon* %s32, i32 0, i32 1, !dbg !1999
  %3 = load i32, i32* %high33, align 4, !dbg !2000
  %add34 = add i32 %3, %shr31, !dbg !2000
  store i32 %add34, i32* %high33, align 4, !dbg !2000
  %shr35 = lshr i32 %a, 16, !dbg !2001
  %shr36 = lshr i32 %b, 16, !dbg !2002
  %mul37 = mul nuw i32 %shr35, %shr36, !dbg !2003
  %s38 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2004
  %high39 = getelementptr inbounds %struct.anon, %struct.anon* %s38, i32 0, i32 1, !dbg !2005
  %4 = load i32, i32* %high39, align 4, !dbg !2006
  %add40 = add i32 %4, %mul37, !dbg !2006
  store i32 %add40, i32* %high39, align 4, !dbg !2006
  %all = getelementptr inbounds %union.udwords, %union.udwords* %r, i32 0, i32 0, !dbg !2007
  %5 = load i64, i64* %all, align 8, !dbg !2007
  ret i64 %5, !dbg !2008
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulodi4(i64 %a, i64 %b, i32* %overflow) #0 !dbg !2009 {
entry:
  store i32 0, i32* %overflow, align 4, !dbg !2010
  %mul = mul nsw i64 %a, %b, !dbg !2011
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !2012
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2013

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !2014
  br i1 %cmp1, label %if.end, label %land.lhs.true, !dbg !2015

land.lhs.true:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !2016
  br i1 %cmp2, label %if.end, label %if.then3, !dbg !2017

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, i32* %overflow, align 4, !dbg !2018
  br label %if.end, !dbg !2019

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then3
  br label %return, !dbg !2020

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !2021
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2022

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !2023
  br i1 %cmp7, label %if.end11, label %land.lhs.true8, !dbg !2024

land.lhs.true8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !2025
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !2026

if.then10:                                        ; preds = %land.lhs.true8
  store i32 1, i32* %overflow, align 4, !dbg !2027
  br label %if.end11, !dbg !2028

if.end11:                                         ; preds = %land.lhs.true8, %if.then6, %if.then10
  br label %return, !dbg !2029

if.end12:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !2030
  %xor = xor i64 %shr, %a, !dbg !2031
  %sub = sub nsw i64 %xor, %shr, !dbg !2032
  %shr13 = ashr i64 %b, 63, !dbg !2033
  %xor14 = xor i64 %shr13, %b, !dbg !2034
  %sub15 = sub nsw i64 %xor14, %shr13, !dbg !2035
  %cmp16 = icmp slt i64 %sub, 2, !dbg !2036
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !2037

lor.lhs.false:                                    ; preds = %if.end12
  %cmp17 = icmp slt i64 %sub15, 2, !dbg !2038
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2039

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  br label %return, !dbg !2040

if.end19:                                         ; preds = %lor.lhs.false
  %cmp20 = icmp eq i64 %shr, %shr13, !dbg !2041
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !2042

if.then21:                                        ; preds = %if.end19
  %div = sdiv i64 9223372036854775807, %sub15, !dbg !2043
  %cmp22 = icmp sgt i64 %sub, %div, !dbg !2044
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2045

if.then23:                                        ; preds = %if.then21
  store i32 1, i32* %overflow, align 4, !dbg !2046
  br label %if.end24, !dbg !2047

if.end24:                                         ; preds = %if.then23, %if.then21
  br label %if.end30, !dbg !2048

if.else:                                          ; preds = %if.end19
  %sub25 = sub nsw i64 0, %sub15, !dbg !2049
  %div26 = sdiv i64 -9223372036854775808, %sub25, !dbg !2050
  %cmp27 = icmp sgt i64 %sub, %div26, !dbg !2051
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2052

if.then28:                                        ; preds = %if.else
  store i32 1, i32* %overflow, align 4, !dbg !2053
  br label %if.end29, !dbg !2054

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  br label %return, !dbg !2055

return:                                           ; preds = %if.end30, %if.then18, %if.end11, %if.end
  ret i64 %mul, !dbg !2056
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulosi4(i32 %a, i32 %b, i32* %overflow) #0 !dbg !2057 {
entry:
  store i32 0, i32* %overflow, align 4, !dbg !2058
  %mul = mul nsw i32 %a, %b, !dbg !2059
  %cmp = icmp eq i32 %a, -2147483648, !dbg !2060
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2061

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !2062
  br i1 %cmp1, label %if.end, label %land.lhs.true, !dbg !2063

land.lhs.true:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !2064
  br i1 %cmp2, label %if.end, label %if.then3, !dbg !2065

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, i32* %overflow, align 4, !dbg !2066
  br label %if.end, !dbg !2067

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then3
  br label %return, !dbg !2068

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !2069
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2070

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !2071
  br i1 %cmp7, label %if.end11, label %land.lhs.true8, !dbg !2072

land.lhs.true8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !2073
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !2074

if.then10:                                        ; preds = %land.lhs.true8
  store i32 1, i32* %overflow, align 4, !dbg !2075
  br label %if.end11, !dbg !2076

if.end11:                                         ; preds = %land.lhs.true8, %if.then6, %if.then10
  br label %return, !dbg !2077

if.end12:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !2078
  %xor = xor i32 %shr, %a, !dbg !2079
  %sub = sub nsw i32 %xor, %shr, !dbg !2080
  %shr13 = ashr i32 %b, 31, !dbg !2081
  %xor14 = xor i32 %shr13, %b, !dbg !2082
  %sub15 = sub nsw i32 %xor14, %shr13, !dbg !2083
  %cmp16 = icmp slt i32 %sub, 2, !dbg !2084
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !2085

lor.lhs.false:                                    ; preds = %if.end12
  %cmp17 = icmp slt i32 %sub15, 2, !dbg !2086
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2087

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  br label %return, !dbg !2088

if.end19:                                         ; preds = %lor.lhs.false
  %cmp20 = icmp eq i32 %shr, %shr13, !dbg !2089
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !2090

if.then21:                                        ; preds = %if.end19
  %div = sdiv i32 2147483647, %sub15, !dbg !2091
  %cmp22 = icmp sgt i32 %sub, %div, !dbg !2092
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2093

if.then23:                                        ; preds = %if.then21
  store i32 1, i32* %overflow, align 4, !dbg !2094
  br label %if.end24, !dbg !2095

if.end24:                                         ; preds = %if.then23, %if.then21
  br label %if.end30, !dbg !2096

if.else:                                          ; preds = %if.end19
  %sub25 = sub nsw i32 0, %sub15, !dbg !2097
  %div26 = sdiv i32 -2147483648, %sub25, !dbg !2098
  %cmp27 = icmp sgt i32 %sub, %div26, !dbg !2099
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2100

if.then28:                                        ; preds = %if.else
  store i32 1, i32* %overflow, align 4, !dbg !2101
  br label %if.end29, !dbg !2102

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  br label %return, !dbg !2103

return:                                           ; preds = %if.end30, %if.then18, %if.end11, %if.end
  ret i32 %mul, !dbg !2104
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__mulsf3(float %a, float %b) #0 !dbg !2105 {
entry:
  %call = call arm_aapcs_vfpcc float @__mulXf3__.38(float %a, float %b) #4, !dbg !2106
  ret float %call, !dbg !2107
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @__mulXf3__.38(float %a, float %b) #0 !dbg !2108 {
entry:
  %aSignificand = alloca i32, align 4
  %bSignificand = alloca i32, align 4
  %productHi = alloca i32, align 4
  %productLo = alloca i32, align 4
  %call = call arm_aapcs_vfpcc i32 @toRep.39(float %a) #4, !dbg !2109
  %shr = lshr i32 %call, 23, !dbg !2110
  %and = and i32 %shr, 255, !dbg !2111
  %call1 = call arm_aapcs_vfpcc i32 @toRep.39(float %b) #4, !dbg !2112
  %shr2 = lshr i32 %call1, 23, !dbg !2113
  %and3 = and i32 %shr2, 255, !dbg !2114
  %call4 = call arm_aapcs_vfpcc i32 @toRep.39(float %a) #4, !dbg !2115
  %call5 = call arm_aapcs_vfpcc i32 @toRep.39(float %b) #4, !dbg !2116
  %xor = xor i32 %call4, %call5, !dbg !2117
  %and6 = and i32 %xor, -2147483648, !dbg !2118
  %call7 = call arm_aapcs_vfpcc i32 @toRep.39(float %a) #4, !dbg !2119
  %and8 = and i32 %call7, 8388607, !dbg !2120
  store i32 %and8, i32* %aSignificand, align 4, !dbg !2121
  %call9 = call arm_aapcs_vfpcc i32 @toRep.39(float %b) #4, !dbg !2122
  %and10 = and i32 %call9, 8388607, !dbg !2123
  store i32 %and10, i32* %bSignificand, align 4, !dbg !2124
  %sub = add nsw i32 %and, -1, !dbg !2125
  %cmp = icmp ugt i32 %sub, 253, !dbg !2126
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2127

lor.lhs.false:                                    ; preds = %entry
  %sub11 = add nsw i32 %and3, -1, !dbg !2128
  %cmp12 = icmp ugt i32 %sub11, 253, !dbg !2129
  br i1 %cmp12, label %if.then, label %if.end60, !dbg !2130

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call13 = call arm_aapcs_vfpcc i32 @toRep.39(float %a) #4, !dbg !2131
  %and14 = and i32 %call13, 2147483647, !dbg !2132
  %call15 = call arm_aapcs_vfpcc i32 @toRep.39(float %b) #4, !dbg !2133
  %and16 = and i32 %call15, 2147483647, !dbg !2134
  %cmp17 = icmp ugt i32 %and14, 2139095040, !dbg !2135
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !2136

if.then18:                                        ; preds = %if.then
  %call19 = call arm_aapcs_vfpcc i32 @toRep.39(float %a) #4, !dbg !2137
  %or = or i32 %call19, 4194304, !dbg !2138
  %call20 = call arm_aapcs_vfpcc float @fromRep.40(i32 %or) #4, !dbg !2139
  br label %return, !dbg !2140

if.end:                                           ; preds = %if.then
  %cmp21 = icmp ugt i32 %and16, 2139095040, !dbg !2141
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !2142

if.then22:                                        ; preds = %if.end
  %call23 = call arm_aapcs_vfpcc i32 @toRep.39(float %b) #4, !dbg !2143
  %or24 = or i32 %call23, 4194304, !dbg !2144
  %call25 = call arm_aapcs_vfpcc float @fromRep.40(i32 %or24) #4, !dbg !2145
  br label %return, !dbg !2146

if.end26:                                         ; preds = %if.end
  %cmp27 = icmp eq i32 %and14, 2139095040, !dbg !2147
  br i1 %cmp27, label %if.then28, label %if.end33, !dbg !2148

if.then28:                                        ; preds = %if.end26
  %tobool = icmp eq i32 %and16, 0, !dbg !2149
  br i1 %tobool, label %if.else, label %if.then29, !dbg !2149

if.then29:                                        ; preds = %if.then28
  %or30 = or i32 %and14, %and6, !dbg !2150
  %call31 = call arm_aapcs_vfpcc float @fromRep.40(i32 %or30) #4, !dbg !2151
  br label %return, !dbg !2152

if.else:                                          ; preds = %if.then28
  %call32 = call arm_aapcs_vfpcc float @fromRep.40(i32 2143289344) #4, !dbg !2153
  br label %return, !dbg !2154

if.end33:                                         ; preds = %if.end26
  %cmp34 = icmp eq i32 %and16, 2139095040, !dbg !2155
  br i1 %cmp34, label %if.then35, label %if.end42, !dbg !2156

if.then35:                                        ; preds = %if.end33
  %tobool36 = icmp eq i32 %and14, 0, !dbg !2157
  br i1 %tobool36, label %if.else40, label %if.then37, !dbg !2157

if.then37:                                        ; preds = %if.then35
  %or38 = or i32 %and16, %and6, !dbg !2158
  %call39 = call arm_aapcs_vfpcc float @fromRep.40(i32 %or38) #4, !dbg !2159
  br label %return, !dbg !2160

if.else40:                                        ; preds = %if.then35
  %call41 = call arm_aapcs_vfpcc float @fromRep.40(i32 2143289344) #4, !dbg !2161
  br label %return, !dbg !2162

if.end42:                                         ; preds = %if.end33
  %tobool43 = icmp eq i32 %and14, 0, !dbg !2163
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !2164

if.then44:                                        ; preds = %if.end42
  %call45 = call arm_aapcs_vfpcc float @fromRep.40(i32 %and6) #4, !dbg !2165
  br label %return, !dbg !2166

if.end46:                                         ; preds = %if.end42
  %tobool47 = icmp eq i32 %and16, 0, !dbg !2167
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !2168

if.then48:                                        ; preds = %if.end46
  %call49 = call arm_aapcs_vfpcc float @fromRep.40(i32 %and6) #4, !dbg !2169
  br label %return, !dbg !2170

if.end50:                                         ; preds = %if.end46
  %cmp51 = icmp ult i32 %and14, 8388608, !dbg !2171
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !2172

if.then52:                                        ; preds = %if.end50
  %call53 = call arm_aapcs_vfpcc i32 @normalize.41(i32* nonnull %aSignificand) #4, !dbg !2173
  br label %if.end54, !dbg !2174

if.end54:                                         ; preds = %if.then52, %if.end50
  %scale.0 = phi i32 [ %call53, %if.then52 ], [ 0, %if.end50 ], !dbg !2175
  %cmp55 = icmp ult i32 %and16, 8388608, !dbg !2176
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !2177

if.then56:                                        ; preds = %if.end54
  %call57 = call arm_aapcs_vfpcc i32 @normalize.41(i32* nonnull %bSignificand) #4, !dbg !2178
  %add58 = add nsw i32 %scale.0, %call57, !dbg !2179
  br label %if.end59, !dbg !2180

if.end59:                                         ; preds = %if.then56, %if.end54
  %scale.1 = phi i32 [ %add58, %if.then56 ], [ %scale.0, %if.end54 ], !dbg !2175
  br label %if.end60, !dbg !2181

if.end60:                                         ; preds = %if.end59, %lor.lhs.false
  %scale.2 = phi i32 [ %scale.1, %if.end59 ], [ 0, %lor.lhs.false ], !dbg !2175
  %0 = load i32, i32* %aSignificand, align 4, !dbg !2182
  %or61 = or i32 %0, 8388608, !dbg !2182
  store i32 %or61, i32* %aSignificand, align 4, !dbg !2182
  %1 = load i32, i32* %bSignificand, align 4, !dbg !2183
  %or62 = or i32 %1, 8388608, !dbg !2183
  store i32 %or62, i32* %bSignificand, align 4, !dbg !2183
  %shl = shl i32 %or62, 8, !dbg !2184
  call arm_aapcs_vfpcc void @wideMultiply.42(i32 %or61, i32 %shl, i32* nonnull %productHi, i32* nonnull %productLo) #4, !dbg !2185
  %add63 = add nuw nsw i32 %and, %and3, !dbg !2186
  %sub64 = add nsw i32 %add63, -127, !dbg !2187
  %add65 = add i32 %sub64, %scale.2, !dbg !2188
  %2 = load i32, i32* %productHi, align 4, !dbg !2189
  %and66 = and i32 %2, 8388608, !dbg !2190
  %tobool67 = icmp eq i32 %and66, 0, !dbg !2190
  br i1 %tobool67, label %if.else69, label %if.then68, !dbg !2189

if.then68:                                        ; preds = %if.end60
  %inc = add nsw i32 %add65, 1, !dbg !2191
  br label %if.end70, !dbg !2192

if.else69:                                        ; preds = %if.end60
  call arm_aapcs_vfpcc void @wideLeftShift.43(i32* nonnull %productHi, i32* nonnull %productLo, i32 1) #4, !dbg !2193
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  %productExponent.0 = phi i32 [ %inc, %if.then68 ], [ %add65, %if.else69 ], !dbg !2175
  %cmp71 = icmp sgt i32 %productExponent.0, 254, !dbg !2194
  br i1 %cmp71, label %if.then72, label %if.end75, !dbg !2195

if.then72:                                        ; preds = %if.end70
  %or73 = or i32 %and6, 2139095040, !dbg !2196
  %call74 = call arm_aapcs_vfpcc float @fromRep.40(i32 %or73) #4, !dbg !2197
  br label %return, !dbg !2198

if.end75:                                         ; preds = %if.end70
  %cmp76 = icmp slt i32 %productExponent.0, 1, !dbg !2199
  br i1 %cmp76, label %if.then77, label %if.else83, !dbg !2200

if.then77:                                        ; preds = %if.end75
  %sub78 = sub i32 1, %productExponent.0, !dbg !2201
  %cmp79 = icmp ugt i32 %sub78, 31, !dbg !2202
  br i1 %cmp79, label %if.then80, label %if.end82, !dbg !2203

if.then80:                                        ; preds = %if.then77
  %call81 = call arm_aapcs_vfpcc float @fromRep.40(i32 %and6) #4, !dbg !2204
  br label %return, !dbg !2205

if.end82:                                         ; preds = %if.then77
  call arm_aapcs_vfpcc void @wideRightShiftWithSticky.44(i32* nonnull %productHi, i32* nonnull %productLo, i32 %sub78) #4, !dbg !2206
  br label %if.end87, !dbg !2207

if.else83:                                        ; preds = %if.end75
  %3 = load i32, i32* %productHi, align 4, !dbg !2208
  %and84 = and i32 %3, 8388607, !dbg !2208
  %shl85 = shl i32 %productExponent.0, 23, !dbg !2209
  %or86 = or i32 %and84, %shl85, !dbg !2210
  store i32 %or86, i32* %productHi, align 4, !dbg !2210
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.end82
  %4 = load i32, i32* %productHi, align 4, !dbg !2211
  %or88 = or i32 %4, %and6, !dbg !2211
  store i32 %or88, i32* %productHi, align 4, !dbg !2211
  %5 = load i32, i32* %productLo, align 4, !dbg !2212
  %cmp89 = icmp ugt i32 %5, -2147483648, !dbg !2213
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !2212

if.then90:                                        ; preds = %if.end87
  %6 = load i32, i32* %productHi, align 4, !dbg !2214
  %inc91 = add i32 %6, 1, !dbg !2214
  store i32 %inc91, i32* %productHi, align 4, !dbg !2214
  br label %if.end92, !dbg !2215

if.end92:                                         ; preds = %if.then90, %if.end87
  %7 = load i32, i32* %productLo, align 4, !dbg !2216
  %cmp93 = icmp eq i32 %7, -2147483648, !dbg !2217
  br i1 %cmp93, label %if.then94, label %if.end97, !dbg !2216

if.then94:                                        ; preds = %if.end92
  %8 = load i32, i32* %productHi, align 4, !dbg !2218
  %and95 = and i32 %8, 1, !dbg !2219
  %add96 = add i32 %8, %and95, !dbg !2220
  store i32 %add96, i32* %productHi, align 4, !dbg !2220
  br label %if.end97, !dbg !2221

if.end97:                                         ; preds = %if.then94, %if.end92
  %9 = load i32, i32* %productHi, align 4, !dbg !2222
  %call98 = call arm_aapcs_vfpcc float @fromRep.40(i32 %9) #4, !dbg !2223
  br label %return, !dbg !2224

return:                                           ; preds = %if.end97, %if.then80, %if.then72, %if.then48, %if.then44, %if.else40, %if.then37, %if.else, %if.then29, %if.then22, %if.then18
  %retval.0 = phi float [ %call20, %if.then18 ], [ %call25, %if.then22 ], [ %call31, %if.then29 ], [ %call32, %if.else ], [ %call39, %if.then37 ], [ %call41, %if.else40 ], [ %call74, %if.then72 ], [ %call81, %if.then80 ], [ %call98, %if.end97 ], [ %call49, %if.then48 ], [ %call45, %if.then44 ], !dbg !2175
  ret float %retval.0, !dbg !2225
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.39(float %x) #0 !dbg !2226 {
entry:
  %.cast = bitcast float %x to i32, !dbg !2227
  ret i32 %.cast, !dbg !2228
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.40(i32 %x) #0 !dbg !2229 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !2230
  ret float %.cast, !dbg !2231
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @normalize.41(i32* %significand) #0 !dbg !2232 {
entry:
  %0 = load i32, i32* %significand, align 4, !dbg !2233
  %call = call arm_aapcs_vfpcc i32 @rep_clz.45(i32 %0) #4, !dbg !2234
  %call1 = call arm_aapcs_vfpcc i32 @rep_clz.45(i32 8388608) #4, !dbg !2235
  %sub = sub nsw i32 %call, %call1, !dbg !2236
  %1 = load i32, i32* %significand, align 4, !dbg !2237
  %shl = shl i32 %1, %sub, !dbg !2237
  store i32 %shl, i32* %significand, align 4, !dbg !2237
  %sub2 = sub nsw i32 1, %sub, !dbg !2238
  ret i32 %sub2, !dbg !2239
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideMultiply.42(i32 %a, i32 %b, i32* %hi, i32* %lo) #0 !dbg !2240 {
entry:
  %conv = zext i32 %a to i64, !dbg !2241
  %conv1 = zext i32 %b to i64, !dbg !2242
  %mul = mul nuw i64 %conv, %conv1, !dbg !2243
  %shr = lshr i64 %mul, 32, !dbg !2244
  %conv2 = trunc i64 %shr to i32, !dbg !2245
  store i32 %conv2, i32* %hi, align 4, !dbg !2246
  %conv3 = trunc i64 %mul to i32, !dbg !2247
  store i32 %conv3, i32* %lo, align 4, !dbg !2248
  ret void, !dbg !2249
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideLeftShift.43(i32* %hi, i32* %lo, i32 %count) #0 !dbg !2250 {
entry:
  %0 = load i32, i32* %hi, align 4, !dbg !2251
  %shl = shl i32 %0, %count, !dbg !2252
  %1 = load i32, i32* %lo, align 4, !dbg !2253
  %sub = sub i32 32, %count, !dbg !2254
  %shr = lshr i32 %1, %sub, !dbg !2255
  %or = or i32 %shl, %shr, !dbg !2256
  store i32 %or, i32* %hi, align 4, !dbg !2257
  %2 = load i32, i32* %lo, align 4, !dbg !2258
  %shl1 = shl i32 %2, %count, !dbg !2259
  store i32 %shl1, i32* %lo, align 4, !dbg !2260
  ret void, !dbg !2261
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc void @wideRightShiftWithSticky.44(i32* %hi, i32* %lo, i32 %count) #0 !dbg !2262 {
entry:
  %cmp = icmp ult i32 %count, 32, !dbg !2263
  br i1 %cmp, label %if.then, label %if.else, !dbg !2264

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %lo, align 4, !dbg !2265
  %sub = sub i32 32, %count, !dbg !2266
  %shl = shl i32 %0, %sub, !dbg !2267
  %tobool = icmp ne i32 %shl, 0, !dbg !2265
  %1 = load i32, i32* %hi, align 4, !dbg !2268
  %sub1 = sub i32 32, %count, !dbg !2269
  %shl2 = shl i32 %1, %sub1, !dbg !2270
  %2 = load i32, i32* %lo, align 4, !dbg !2271
  %shr = lshr i32 %2, %count, !dbg !2272
  %or = or i32 %shl2, %shr, !dbg !2273
  %conv = zext i1 %tobool to i32, !dbg !2274
  %or4 = or i32 %or, %conv, !dbg !2275
  store i32 %or4, i32* %lo, align 4, !dbg !2276
  %3 = load i32, i32* %hi, align 4, !dbg !2277
  %shr5 = lshr i32 %3, %count, !dbg !2278
  br label %if.end27, !dbg !2279

if.else:                                          ; preds = %entry
  %cmp6 = icmp ult i32 %count, 64, !dbg !2280
  br i1 %cmp6, label %if.then8, label %if.else20, !dbg !2281

if.then8:                                         ; preds = %if.else
  %4 = load i32, i32* %hi, align 4, !dbg !2282
  %sub10 = sub i32 64, %count, !dbg !2283
  %shl11 = shl i32 %4, %sub10, !dbg !2284
  %5 = load i32, i32* %lo, align 4, !dbg !2285
  %or12 = or i32 %shl11, %5, !dbg !2286
  %tobool13 = icmp ne i32 %or12, 0, !dbg !2282
  %sub15 = add i32 %count, -32, !dbg !2287
  %shr16 = lshr i32 %4, %sub15, !dbg !2288
  %conv18 = zext i1 %tobool13 to i32, !dbg !2289
  %or19 = or i32 %shr16, %conv18, !dbg !2290
  br label %if.end, !dbg !2291

if.else20:                                        ; preds = %if.else
  %6 = load i32, i32* %hi, align 4, !dbg !2292
  %7 = load i32, i32* %lo, align 4, !dbg !2293
  %or22 = or i32 %6, %7, !dbg !2294
  %tobool23 = icmp ne i32 %or22, 0, !dbg !2292
  %conv26 = zext i1 %tobool23 to i32, !dbg !2295
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then8
  %storemerge1 = phi i32 [ %or19, %if.then8 ], [ %conv26, %if.else20 ], !dbg !2296
  store i32 %storemerge1, i32* %lo, align 4, !dbg !2296
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then
  %storemerge = phi i32 [ 0, %if.end ], [ %shr5, %if.then ], !dbg !2296
  store i32 %storemerge, i32* %hi, align 4, !dbg !2296
  ret void, !dbg !2297
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @rep_clz.45(i32 %a) #0 !dbg !2298 {
entry:
  %0 = call i32 @llvm.ctlz.i32(i32 %a, i1 false), !dbg !2299, !range !358
  ret i32 %0, !dbg !2300
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__negdf2(double %a) #0 !dbg !2301 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.46(double %a) #4, !dbg !2302
  %xor = xor i64 %call, -9223372036854775808, !dbg !2303
  %call1 = call arm_aapcs_vfpcc double @fromRep.47(i64 %xor) #4, !dbg !2304
  ret double %call1, !dbg !2305
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.46(double %x) #0 !dbg !2306 {
entry:
  %.cast = bitcast double %x to i64, !dbg !2307
  ret i64 %.cast, !dbg !2308
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep.47(i64 %x) #0 !dbg !2309 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !2310
  ret double %.cast, !dbg !2311
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__negdi2(i64 %a) #0 !dbg !2312 {
entry:
  %sub = sub nsw i64 0, %a, !dbg !2313
  ret i64 %sub, !dbg !2314
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__negsf2(float %a) #0 !dbg !2315 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.48(float %a) #4, !dbg !2316
  %xor = xor i32 %call, -2147483648, !dbg !2317
  %call1 = call arm_aapcs_vfpcc float @fromRep.49(i32 %xor) #4, !dbg !2318
  ret float %call1, !dbg !2319
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.48(float %x) #0 !dbg !2320 {
entry:
  %.cast = bitcast float %x to i32, !dbg !2321
  ret i32 %.cast, !dbg !2322
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.49(i32 %x) #0 !dbg !2323 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !2324
  ret float %.cast, !dbg !2325
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__negvdi2(i64 %a) #0 !dbg !2326 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !2327
  br i1 %cmp, label %if.then, label %if.end, !dbg !2328

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__negvdi2, i32 0, i32 0)) #5, !dbg !2329
  unreachable, !dbg !2329

if.end:                                           ; preds = %entry
  %sub = sub nsw i64 0, %a, !dbg !2330
  ret i64 %sub, !dbg !2331
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__negvsi2(i32 %a) #0 !dbg !2332 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !2333
  br i1 %cmp, label %if.then, label %if.end, !dbg !2334

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__negvsi2, i32 0, i32 0)) #5, !dbg !2335
  unreachable, !dbg !2335

if.end:                                           ; preds = %entry
  %sub = sub nsw i32 0, %a, !dbg !2336
  ret i32 %sub, !dbg !2337
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__powidf2(double %a, i32 %b) #0 !dbg !2338 {
entry:
  br label %while.body, !dbg !2339

while.body:                                       ; preds = %if.end4, %entry
  %r.0 = phi double [ 1.000000e+00, %entry ], [ %r.1, %if.end4 ], !dbg !2340
  %b.addr.0 = phi i32 [ %b, %entry ], [ %div, %if.end4 ]
  %a.addr.0 = phi double [ %a, %entry ], [ %mul5, %if.end4 ]
  %and = and i32 %b.addr.0, 1, !dbg !2341
  %tobool = icmp eq i32 %and, 0, !dbg !2341
  br i1 %tobool, label %if.end, label %if.then, !dbg !2342

if.then:                                          ; preds = %while.body
  %mul = fmul double %r.0, %a.addr.0, !dbg !2343
  br label %if.end, !dbg !2344

if.end:                                           ; preds = %while.body, %if.then
  %r.1 = phi double [ %mul, %if.then ], [ %r.0, %while.body ], !dbg !2340
  %b.addr.0.off = add i32 %b.addr.0, 1, !dbg !2345
  %0 = icmp ult i32 %b.addr.0.off, 3, !dbg !2345
  br i1 %0, label %if.then3, label %if.end4, !dbg !2346

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !2347

if.end4:                                          ; preds = %if.end
  %div = sdiv i32 %b.addr.0, 2, !dbg !2348
  %mul5 = fmul double %a.addr.0, %a.addr.0, !dbg !2349
  br label %while.body, !dbg !2339, !llvm.loop !2350

while.end:                                        ; preds = %if.then3
  %tobool6 = icmp slt i32 %b, 0, !dbg !2352
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !2352

cond.true:                                        ; preds = %while.end
  %div7 = fdiv double 1.000000e+00, %r.1, !dbg !2353
  br label %cond.end, !dbg !2352

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !2352

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div7, %cond.true ], [ %r.1, %cond.false ], !dbg !2352
  ret double %cond, !dbg !2354
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__powisf2(float %a, i32 %b) #0 !dbg !2355 {
entry:
  br label %while.body, !dbg !2356

while.body:                                       ; preds = %if.end4, %entry
  %r.0 = phi float [ 1.000000e+00, %entry ], [ %r.1, %if.end4 ], !dbg !2357
  %b.addr.0 = phi i32 [ %b, %entry ], [ %div, %if.end4 ]
  %a.addr.0 = phi float [ %a, %entry ], [ %mul5, %if.end4 ]
  %and = and i32 %b.addr.0, 1, !dbg !2358
  %tobool = icmp eq i32 %and, 0, !dbg !2358
  br i1 %tobool, label %if.end, label %if.then, !dbg !2359

if.then:                                          ; preds = %while.body
  %mul = fmul float %r.0, %a.addr.0, !dbg !2360
  br label %if.end, !dbg !2361

if.end:                                           ; preds = %while.body, %if.then
  %r.1 = phi float [ %mul, %if.then ], [ %r.0, %while.body ], !dbg !2357
  %b.addr.0.off = add i32 %b.addr.0, 1, !dbg !2362
  %0 = icmp ult i32 %b.addr.0.off, 3, !dbg !2362
  br i1 %0, label %if.then3, label %if.end4, !dbg !2363

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !2364

if.end4:                                          ; preds = %if.end
  %div = sdiv i32 %b.addr.0, 2, !dbg !2365
  %mul5 = fmul float %a.addr.0, %a.addr.0, !dbg !2366
  br label %while.body, !dbg !2356, !llvm.loop !2367

while.end:                                        ; preds = %if.then3
  %tobool6 = icmp slt i32 %b, 0, !dbg !2369
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !2369

cond.true:                                        ; preds = %while.end
  %div7 = fdiv float 1.000000e+00, %r.1, !dbg !2370
  br label %cond.end, !dbg !2369

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !2369

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %div7, %cond.true ], [ %r.1, %cond.false ], !dbg !2369
  ret float %cond, !dbg !2371
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__powixf2(double %a, i32 %b) #0 !dbg !2372 {
entry:
  br label %while.body, !dbg !2373

while.body:                                       ; preds = %if.end4, %entry
  %r.0 = phi double [ 1.000000e+00, %entry ], [ %r.1, %if.end4 ], !dbg !2374
  %b.addr.0 = phi i32 [ %b, %entry ], [ %div, %if.end4 ]
  %a.addr.0 = phi double [ %a, %entry ], [ %mul5, %if.end4 ]
  %and = and i32 %b.addr.0, 1, !dbg !2375
  %tobool = icmp eq i32 %and, 0, !dbg !2375
  br i1 %tobool, label %if.end, label %if.then, !dbg !2376

if.then:                                          ; preds = %while.body
  %mul = fmul double %r.0, %a.addr.0, !dbg !2377
  br label %if.end, !dbg !2378

if.end:                                           ; preds = %while.body, %if.then
  %r.1 = phi double [ %mul, %if.then ], [ %r.0, %while.body ], !dbg !2374
  %b.addr.0.off = add i32 %b.addr.0, 1, !dbg !2379
  %0 = icmp ult i32 %b.addr.0.off, 3, !dbg !2379
  br i1 %0, label %if.then3, label %if.end4, !dbg !2380

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !2381

if.end4:                                          ; preds = %if.end
  %div = sdiv i32 %b.addr.0, 2, !dbg !2382
  %mul5 = fmul double %a.addr.0, %a.addr.0, !dbg !2383
  br label %while.body, !dbg !2373, !llvm.loop !2384

while.end:                                        ; preds = %if.then3
  %tobool6 = icmp slt i32 %b, 0, !dbg !2386
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !2386

cond.true:                                        ; preds = %while.end
  %div7 = fdiv double 1.000000e+00, %r.1, !dbg !2387
  br label %cond.end, !dbg !2386

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !2386

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div7, %cond.true ], [ %r.1, %cond.false ], !dbg !2386
  ret double %cond, !dbg !2388
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc double @__subdf3(double %a, double %b) #0 !dbg !2389 {
entry:
  %call = call arm_aapcs_vfpcc i64 @toRep.51(double %b) #4, !dbg !2390
  %xor = xor i64 %call, -9223372036854775808, !dbg !2391
  %call1 = call arm_aapcs_vfpcc double @fromRep.52(i64 %xor) #4, !dbg !2392
  %call2 = call arm_aapcscc double @__adddf3(double %a, double %call1) #4, !dbg !2393
  ret double %call2, !dbg !2394
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @toRep.51(double %x) #0 !dbg !2395 {
entry:
  %.cast = bitcast double %x to i64, !dbg !2396
  ret i64 %.cast, !dbg !2397
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fromRep.52(i64 %x) #0 !dbg !2398 {
entry:
  %.cast = bitcast i64 %x to double, !dbg !2399
  ret double %.cast, !dbg !2400
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__subsf3(float %a, float %b) #0 !dbg !2401 {
entry:
  %call = call arm_aapcs_vfpcc i32 @toRep.53(float %b) #4, !dbg !2402
  %xor = xor i32 %call, -2147483648, !dbg !2403
  %call1 = call arm_aapcs_vfpcc float @fromRep.54(i32 %xor) #4, !dbg !2404
  %call2 = call arm_aapcscc float @__addsf3(float %a, float %call1) #4, !dbg !2405
  ret float %call2, !dbg !2406
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @toRep.53(float %x) #0 !dbg !2407 {
entry:
  %.cast = bitcast float %x to i32, !dbg !2408
  ret i32 %.cast, !dbg !2409
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @fromRep.54(i32 %x) #0 !dbg !2410 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !2411
  ret float %.cast, !dbg !2412
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc zeroext i16 @__truncdfhf2(double %a) #0 !dbg !2413 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i16 @__truncXfYf2__(double %a) #4, !dbg !2414
  ret i16 %call, !dbg !2415
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc zeroext i16 @__truncXfYf2__(double %a) #0 !dbg !2416 {
entry:
  %call = call arm_aapcs_vfpcc i64 @srcToRep.55(double %a) #4, !dbg !2418
  %and = and i64 %call, 9223372036854775807, !dbg !2419
  %sub = add nsw i64 %and, -4544132024016830464, !dbg !2420
  %sub2 = add nsw i64 %and, -4679240012837945344, !dbg !2421
  %cmp = icmp ult i64 %sub, %sub2, !dbg !2422
  br i1 %cmp, label %if.then, label %if.else18, !dbg !2423

if.then:                                          ; preds = %entry
  %shr = lshr i64 %call, 42, !dbg !2424
  %conv = trunc i64 %shr to i16, !dbg !2425
  %conv31 = add i16 %conv, 16384, !dbg !2426
  %and6 = and i64 %call, 4398046511103, !dbg !2427
  %cmp7 = icmp ugt i64 %and6, 2199023255552, !dbg !2428
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !2429

if.then9:                                         ; preds = %if.then
  %inc = add i16 %conv, 16385, !dbg !2430
  br label %if.end17, !dbg !2431

if.else:                                          ; preds = %if.then
  %cmp10 = icmp eq i64 %and6, 2199023255552, !dbg !2432
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !2433

if.then12:                                        ; preds = %if.else
  %0 = and i16 %conv31, 1, !dbg !2434
  %add = add i16 %conv31, %0, !dbg !2435
  br label %if.end, !dbg !2436

if.end:                                           ; preds = %if.then12, %if.else
  %absResult.0 = phi i16 [ %add, %if.then12 ], [ %conv31, %if.else ], !dbg !2437
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  %absResult.1 = phi i16 [ %inc, %if.then9 ], [ %absResult.0, %if.end ], !dbg !2437
  br label %if.end73, !dbg !2438

if.else18:                                        ; preds = %entry
  %cmp19 = icmp ugt i64 %and, 9218868437227405312, !dbg !2439
  br i1 %cmp19, label %if.then21, label %if.else30, !dbg !2440

if.then21:                                        ; preds = %if.else18
  %and24 = lshr i64 %call, 42, !dbg !2441
  %1 = trunc i64 %and24 to i16, !dbg !2442
  %2 = and i16 %1, 511, !dbg !2442
  %conv29 = or i16 %2, 32256, !dbg !2442
  br label %if.end72, !dbg !2443

if.else30:                                        ; preds = %if.else18
  %cmp31 = icmp ugt i64 %and, 4679240012837945343, !dbg !2444
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !2445

if.then33:                                        ; preds = %if.else30
  br label %if.end71, !dbg !2446

if.else34:                                        ; preds = %if.else30
  %shr35 = lshr i64 %and, 52, !dbg !2447
  %conv36 = trunc i64 %shr35 to i32, !dbg !2448
  %and39 = and i64 %call, 4503599627370495, !dbg !2449
  %or40 = or i64 %and39, 4503599627370496, !dbg !2450
  %cmp41 = icmp ult i32 %conv36, 957, !dbg !2451
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !2452

if.then43:                                        ; preds = %if.else34
  br label %if.end70, !dbg !2453

if.else44:                                        ; preds = %if.else34
  %add38 = sub nsw i32 1009, %conv36, !dbg !2454
  %sub45 = add nsw i32 %conv36, -945, !dbg !2455
  %sh_prom = zext i32 %sub45 to i64, !dbg !2456
  %shl = shl i64 %or40, %sh_prom, !dbg !2456
  %tobool = icmp ne i64 %shl, 0, !dbg !2457
  %sh_prom46 = zext i32 %add38 to i64, !dbg !2458
  %shr47 = lshr i64 %or40, %sh_prom46, !dbg !2458
  %conv49 = zext i1 %tobool to i64, !dbg !2459
  %shr51 = lshr i64 %shr47, 42, !dbg !2460
  %conv52 = trunc i64 %shr51 to i16, !dbg !2461
  %shr47.masked = and i64 %shr47, 4398046511103, !dbg !2462
  %and54 = or i64 %shr47.masked, %conv49, !dbg !2462
  %cmp55 = icmp ugt i64 %and54, 2199023255552, !dbg !2463
  br i1 %cmp55, label %if.then57, label %if.else59, !dbg !2464

if.then57:                                        ; preds = %if.else44
  %inc58 = add i16 %conv52, 1, !dbg !2465
  br label %if.end69, !dbg !2466

if.else59:                                        ; preds = %if.else44
  %cmp60 = icmp eq i64 %and54, 2199023255552, !dbg !2467
  br i1 %cmp60, label %if.then62, label %if.end68, !dbg !2468

if.then62:                                        ; preds = %if.else59
  %3 = trunc i64 %shr51 to i16, !dbg !2469
  %and64 = and i16 %3, 1, !dbg !2470
  %4 = trunc i64 %shr51 to i16, !dbg !2471
  %add66 = add i16 %and64, %4, !dbg !2471
  br label %if.end68, !dbg !2472

if.end68:                                         ; preds = %if.then62, %if.else59
  %absResult.2 = phi i16 [ %add66, %if.then62 ], [ %conv52, %if.else59 ], !dbg !2437
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then57
  %absResult.3 = phi i16 [ %inc58, %if.then57 ], [ %absResult.2, %if.end68 ], !dbg !2437
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then43
  %absResult.4 = phi i16 [ 0, %if.then43 ], [ %absResult.3, %if.end69 ], !dbg !2437
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then33
  %absResult.5 = phi i16 [ 31744, %if.then33 ], [ %absResult.4, %if.end70 ], !dbg !2437
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then21
  %absResult.6 = phi i16 [ %conv29, %if.then21 ], [ %absResult.5, %if.end71 ], !dbg !2437
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end17
  %absResult.7 = phi i16 [ %absResult.1, %if.end17 ], [ %absResult.6, %if.end72 ], !dbg !2437
  %and1 = lshr i64 %call, 48, !dbg !2473
  %5 = trunc i64 %and1 to i16, !dbg !2474
  %6 = and i16 %5, -32768, !dbg !2474
  %conv77 = or i16 %absResult.7, %6, !dbg !2474
  %call78 = call arm_aapcs_vfpcc zeroext i16 @dstFromRep.56(i16 zeroext %conv77) #4, !dbg !2475
  ret i16 %call78, !dbg !2476
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @srcToRep.55(double %x) #0 !dbg !2477 {
entry:
  %.cast = bitcast double %x to i64, !dbg !2479
  ret i64 %.cast, !dbg !2480
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc zeroext i16 @dstFromRep.56(i16 zeroext %x) #0 !dbg !2481 {
entry:
  ret i16 %x, !dbg !2482
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc float @__truncdfsf2(double %a) #0 !dbg !2483 {
entry:
  %call = call arm_aapcs_vfpcc float @__truncXfYf2__.57(double %a) #4, !dbg !2484
  ret float %call, !dbg !2485
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @__truncXfYf2__.57(double %a) #0 !dbg !2486 {
entry:
  %call = call arm_aapcs_vfpcc i64 @srcToRep.58(double %a) #4, !dbg !2487
  %and = and i64 %call, 9223372036854775807, !dbg !2488
  %sub = add nsw i64 %and, -4039728865751334912, !dbg !2489
  %sub2 = add nsw i64 %and, -5183643171103440896, !dbg !2490
  %cmp = icmp ult i64 %sub, %sub2, !dbg !2491
  br i1 %cmp, label %if.then, label %if.else13, !dbg !2492

if.then:                                          ; preds = %entry
  %shr = lshr i64 %call, 29, !dbg !2493
  %conv = trunc i64 %shr to i32, !dbg !2494
  %sub3 = add i32 %conv, 1073741824, !dbg !2495
  %and4 = and i64 %call, 536870911, !dbg !2496
  %cmp5 = icmp ugt i64 %and4, 268435456, !dbg !2497
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !2498

if.then7:                                         ; preds = %if.then
  %inc = add i32 %conv, 1073741825, !dbg !2499
  br label %if.end12, !dbg !2500

if.else:                                          ; preds = %if.then
  %cmp8 = icmp eq i64 %and4, 268435456, !dbg !2501
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !2502

if.then10:                                        ; preds = %if.else
  %and11 = and i32 %sub3, 1, !dbg !2503
  %add = add i32 %sub3, %and11, !dbg !2504
  br label %if.end, !dbg !2505

if.end:                                           ; preds = %if.then10, %if.else
  %absResult.0 = phi i32 [ %add, %if.then10 ], [ %sub3, %if.else ], !dbg !2506
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7
  %absResult.1 = phi i32 [ %inc, %if.then7 ], [ %absResult.0, %if.end ], !dbg !2506
  br label %if.end63, !dbg !2507

if.else13:                                        ; preds = %entry
  %cmp14 = icmp ugt i64 %and, 9218868437227405312, !dbg !2508
  br i1 %cmp14, label %if.then16, label %if.else23, !dbg !2509

if.then16:                                        ; preds = %if.else13
  %and17 = lshr i64 %call, 29, !dbg !2510
  %0 = trunc i64 %and17 to i32, !dbg !2511
  %1 = and i32 %0, 4194303, !dbg !2511
  %conv22 = or i32 %1, 2143289344, !dbg !2511
  br label %if.end62, !dbg !2512

if.else23:                                        ; preds = %if.else13
  %cmp24 = icmp ugt i64 %and, 5183643171103440895, !dbg !2513
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !2514

if.then26:                                        ; preds = %if.else23
  br label %if.end61, !dbg !2515

if.else27:                                        ; preds = %if.else23
  %shr28 = lshr i64 %and, 52, !dbg !2516
  %conv29 = trunc i64 %shr28 to i32, !dbg !2517
  %and32 = and i64 %call, 4503599627370495, !dbg !2518
  %or33 = or i64 %and32, 4503599627370496, !dbg !2519
  %cmp34 = icmp ult i32 %conv29, 845, !dbg !2520
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !2521

if.then36:                                        ; preds = %if.else27
  br label %if.end60, !dbg !2522

if.else37:                                        ; preds = %if.else27
  %add31 = sub nsw i32 897, %conv29, !dbg !2523
  %sub38 = add nsw i32 %conv29, -833, !dbg !2524
  %sh_prom = zext i32 %sub38 to i64, !dbg !2525
  %shl = shl i64 %or33, %sh_prom, !dbg !2525
  %tobool = icmp ne i64 %shl, 0, !dbg !2526
  %sh_prom39 = zext i32 %add31 to i64, !dbg !2527
  %shr40 = lshr i64 %or33, %sh_prom39, !dbg !2527
  %conv42 = zext i1 %tobool to i64, !dbg !2528
  %shr44 = lshr i64 %shr40, 29, !dbg !2529
  %conv45 = trunc i64 %shr44 to i32, !dbg !2530
  %shr40.masked = and i64 %shr40, 536870911, !dbg !2531
  %and47 = or i64 %shr40.masked, %conv42, !dbg !2531
  %cmp48 = icmp ugt i64 %and47, 268435456, !dbg !2532
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !2533

if.then50:                                        ; preds = %if.else37
  %inc51 = add i32 %conv45, 1, !dbg !2534
  br label %if.end59, !dbg !2535

if.else52:                                        ; preds = %if.else37
  %cmp53 = icmp eq i64 %and47, 268435456, !dbg !2536
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !2537

if.then55:                                        ; preds = %if.else52
  %and56 = and i32 %conv45, 1, !dbg !2538
  %add57 = add i32 %and56, %conv45, !dbg !2539
  br label %if.end58, !dbg !2540

if.end58:                                         ; preds = %if.then55, %if.else52
  %absResult.2 = phi i32 [ %add57, %if.then55 ], [ %conv45, %if.else52 ], !dbg !2506
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then50
  %absResult.3 = phi i32 [ %inc51, %if.then50 ], [ %absResult.2, %if.end58 ], !dbg !2506
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then36
  %absResult.4 = phi i32 [ 0, %if.then36 ], [ %absResult.3, %if.end59 ], !dbg !2506
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then26
  %absResult.5 = phi i32 [ 2139095040, %if.then26 ], [ %absResult.4, %if.end60 ], !dbg !2506
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then16
  %absResult.6 = phi i32 [ %conv22, %if.then16 ], [ %absResult.5, %if.end61 ], !dbg !2506
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end12
  %absResult.7 = phi i32 [ %absResult.1, %if.end12 ], [ %absResult.6, %if.end62 ], !dbg !2506
  %and1 = lshr i64 %call, 32, !dbg !2541
  %2 = trunc i64 %and1 to i32, !dbg !2542
  %3 = and i32 %2, -2147483648, !dbg !2542
  %conv67 = or i32 %absResult.7, %3, !dbg !2542
  %call68 = call arm_aapcs_vfpcc float @dstFromRep.59(i32 %conv67) #4, !dbg !2543
  ret float %call68, !dbg !2544
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i64 @srcToRep.58(double %x) #0 !dbg !2545 {
entry:
  %.cast = bitcast double %x to i64, !dbg !2546
  ret i64 %.cast, !dbg !2547
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @dstFromRep.59(i32 %x) #0 !dbg !2548 {
entry:
  %.cast = bitcast i32 %x to float, !dbg !2549
  ret float %.cast, !dbg !2550
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc zeroext i16 @__truncsfhf2(float %a) #0 !dbg !2551 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i16 @__truncXfYf2__.60(float %a) #4, !dbg !2552
  ret i16 %call, !dbg !2553
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc zeroext i16 @__truncXfYf2__.60(float %a) #0 !dbg !2554 {
entry:
  %call = call arm_aapcs_vfpcc i32 @srcToRep.61(float %a) #4, !dbg !2555
  %and = and i32 %call, 2147483647, !dbg !2556
  %sub = add nsw i32 %and, -947912704, !dbg !2557
  %sub2 = add nsw i32 %and, -1199570944, !dbg !2558
  %cmp = icmp ult i32 %sub, %sub2, !dbg !2559
  br i1 %cmp, label %if.then, label %if.else18, !dbg !2560

if.then:                                          ; preds = %entry
  %shr = lshr i32 %call, 13, !dbg !2561
  %conv3 = and i32 %shr, 65535, !dbg !2562
  %sub4 = add nuw nsw i32 %conv3, -114688, !dbg !2562
  %and6 = and i32 %call, 8191, !dbg !2563
  %cmp7 = icmp ugt i32 %and6, 4096, !dbg !2564
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !2565

if.then9:                                         ; preds = %if.then
  %inc = add nuw nsw i32 %conv3, -114687, !dbg !2566
  br label %if.end17, !dbg !2567

if.else:                                          ; preds = %if.then
  %cmp10 = icmp eq i32 %and6, 4096, !dbg !2568
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !2569

if.then12:                                        ; preds = %if.else
  %and14 = and i32 %sub4, 1, !dbg !2570
  %conv15 = and i32 %sub4, 65535, !dbg !2571
  %add = add nuw nsw i32 %conv15, %and14, !dbg !2571
  br label %if.end, !dbg !2572

if.end:                                           ; preds = %if.then12, %if.else
  %absResult.0 = phi i32 [ %add, %if.then12 ], [ %sub4, %if.else ], !dbg !2573
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  %absResult.1 = phi i32 [ %inc, %if.then9 ], [ %absResult.0, %if.end ], !dbg !2573
  br label %if.end71, !dbg !2574

if.else18:                                        ; preds = %entry
  %cmp19 = icmp ugt i32 %and, 2139095040, !dbg !2575
  br i1 %cmp19, label %if.then21, label %if.else30, !dbg !2576

if.then21:                                        ; preds = %if.else18
  %and24 = lshr i32 %call, 13, !dbg !2577
  %shr25 = and i32 %and24, 511, !dbg !2577
  %or28 = or i32 %shr25, 32256, !dbg !2578
  br label %if.end70, !dbg !2579

if.else30:                                        ; preds = %if.else18
  %cmp31 = icmp ugt i32 %and, 1199570943, !dbg !2580
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !2581

if.then33:                                        ; preds = %if.else30
  br label %if.end69, !dbg !2582

if.else34:                                        ; preds = %if.else30
  %shr35 = lshr i32 %and, 23, !dbg !2583
  %and38 = and i32 %call, 8388607, !dbg !2584
  %or39 = or i32 %and38, 8388608, !dbg !2585
  %cmp40 = icmp ult i32 %and, 754974720, !dbg !2586
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !2587

if.then42:                                        ; preds = %if.else34
  br label %if.end68, !dbg !2588

if.else43:                                        ; preds = %if.else34
  %add37 = sub nsw i32 113, %shr35, !dbg !2589
  %sub44 = add nsw i32 %shr35, -81, !dbg !2590
  %shl = shl i32 %or39, %sub44, !dbg !2591
  %tobool = icmp ne i32 %shl, 0, !dbg !2592
  %shr45 = lshr i32 %or39, %add37, !dbg !2593
  %conv47 = zext i1 %tobool to i32, !dbg !2594
  %shr49 = lshr i32 %shr45, 13, !dbg !2595
  %shr45.masked = and i32 %shr45, 8191, !dbg !2596
  %and52 = or i32 %shr45.masked, %conv47, !dbg !2596
  %cmp53 = icmp ugt i32 %and52, 4096, !dbg !2597
  br i1 %cmp53, label %if.then55, label %if.else57, !dbg !2598

if.then55:                                        ; preds = %if.else43
  %inc56 = add nuw nsw i32 %shr49, 1, !dbg !2599
  br label %if.end67, !dbg !2600

if.else57:                                        ; preds = %if.else43
  %cmp58 = icmp eq i32 %and52, 4096, !dbg !2601
  br i1 %cmp58, label %if.then60, label %if.end66, !dbg !2602

if.then60:                                        ; preds = %if.else57
  %and62 = and i32 %shr49, 1, !dbg !2603
  %conv63 = and i32 %shr49, 65535, !dbg !2604
  %add64 = add nuw nsw i32 %conv63, %and62, !dbg !2604
  br label %if.end66, !dbg !2605

if.end66:                                         ; preds = %if.then60, %if.else57
  %absResult.2 = phi i32 [ %add64, %if.then60 ], [ %shr49, %if.else57 ], !dbg !2573
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then55
  %absResult.3 = phi i32 [ %inc56, %if.then55 ], [ %absResult.2, %if.end66 ], !dbg !2573
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then42
  %absResult.4 = phi i32 [ 0, %if.then42 ], [ %absResult.3, %if.end67 ], !dbg !2573
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then33
  %absResult.5 = phi i32 [ 31744, %if.then33 ], [ %absResult.4, %if.end68 ], !dbg !2573
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then21
  %absResult.6 = phi i32 [ %or28, %if.then21 ], [ %absResult.5, %if.end69 ], !dbg !2573
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end17
  %absResult.7 = phi i32 [ %absResult.1, %if.end17 ], [ %absResult.6, %if.end70 ], !dbg !2573
  %and1 = lshr i32 %call, 16, !dbg !2606
  %shr73 = and i32 %and1, 32768, !dbg !2606
  %or74 = or i32 %absResult.7, %shr73, !dbg !2607
  %conv75 = trunc i32 %or74 to i16, !dbg !2608
  %call76 = call arm_aapcs_vfpcc zeroext i16 @dstFromRep.62(i16 zeroext %conv75) #4, !dbg !2609
  ret i16 %call76, !dbg !2610
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc i32 @srcToRep.61(float %x) #0 !dbg !2611 {
entry:
  %.cast = bitcast float %x to i32, !dbg !2612
  ret i32 %.cast, !dbg !2613
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc zeroext i16 @dstFromRep.62(i16 zeroext %x) #0 !dbg !2614 {
entry:
  ret i16 %x, !dbg !2615
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc zeroext i16 @__gnu_f2h_ieee(float %a) #0 !dbg !2616 {
entry:
  %call = call arm_aapcscc zeroext i16 @__truncsfhf2(float %a) #4, !dbg !2617
  ret i16 %call, !dbg !2618
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin noreturn }

!llvm.dbg.cu = !{!0, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171}
!llvm.ident = !{!173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173, !173}
!llvm.module.flags = !{!174, !175, !176, !177}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "../libraries/builtinsfloat/adddf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!4 = !DIFile(filename: "../libraries/builtinsfloat/addsf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!6 = !DIFile(filename: "../libraries/builtinsfloat/addtf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!8 = !DIFile(filename: "../libraries/builtinsfloat/comparedf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!10 = !DIFile(filename: "../libraries/builtinsfloat/comparesf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!12 = !DIFile(filename: "../libraries/builtinsfloat/comparetf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!14 = !DIFile(filename: "../libraries/builtinsfloat/divdf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!16 = !DIFile(filename: "../libraries/builtinsfloat/divsf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!18 = !DIFile(filename: "../libraries/builtinsfloat/divtf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!20 = !DIFile(filename: "../libraries/builtinsfloat/extenddftf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!22 = !DIFile(filename: "../libraries/builtinsfloat/extendhfsf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!24 = !DIFile(filename: "../libraries/builtinsfloat/extendsfdf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!26 = !DIFile(filename: "../libraries/builtinsfloat/extendsftf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!28 = !DIFile(filename: "../libraries/builtinsfloat/fixdfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!30 = !DIFile(filename: "../libraries/builtinsfloat/fixdfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!32 = !DIFile(filename: "../libraries/builtinsfloat/fixdfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!34 = !DIFile(filename: "../libraries/builtinsfloat/fixsfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!36 = !DIFile(filename: "../libraries/builtinsfloat/fixsfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!38 = !DIFile(filename: "../libraries/builtinsfloat/fixsfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!40 = !DIFile(filename: "../libraries/builtinsfloat/fixtfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!42 = !DIFile(filename: "../libraries/builtinsfloat/fixtfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!44 = !DIFile(filename: "../libraries/builtinsfloat/fixtfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!46 = !DIFile(filename: "../libraries/builtinsfloat/fixunsdfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!48 = !DIFile(filename: "../libraries/builtinsfloat/fixunsdfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!50 = !DIFile(filename: "../libraries/builtinsfloat/fixunsdfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!52 = !DIFile(filename: "../libraries/builtinsfloat/fixunssfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!54 = !DIFile(filename: "../libraries/builtinsfloat/fixunssfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!56 = !DIFile(filename: "../libraries/builtinsfloat/fixunssfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!58 = !DIFile(filename: "../libraries/builtinsfloat/fixunstfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!60 = !DIFile(filename: "../libraries/builtinsfloat/fixunstfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!62 = !DIFile(filename: "../libraries/builtinsfloat/fixunstfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!64 = !DIFile(filename: "../libraries/builtinsfloat/fixunsxfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!66 = !DIFile(filename: "../libraries/builtinsfloat/fixunsxfsi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!68 = !DIFile(filename: "../libraries/builtinsfloat/fixunsxfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!70 = !DIFile(filename: "../libraries/builtinsfloat/fixxfdi.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!72 = !DIFile(filename: "../libraries/builtinsfloat/fixxfti.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!74 = !DIFile(filename: "../libraries/builtinsfloat/floatdidf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!76 = !DIFile(filename: "../libraries/builtinsfloat/floatdisf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!78 = !DIFile(filename: "../libraries/builtinsfloat/floatditf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!80 = !DIFile(filename: "../libraries/builtinsfloat/floatdixf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!82 = !DIFile(filename: "../libraries/builtinsfloat/floatsidf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!84 = !DIFile(filename: "../libraries/builtinsfloat/floatsisf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!86 = !DIFile(filename: "../libraries/builtinsfloat/floatsitf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!88 = !DIFile(filename: "../libraries/builtinsfloat/floattidf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!90 = !DIFile(filename: "../libraries/builtinsfloat/floattisf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!92 = !DIFile(filename: "../libraries/builtinsfloat/floattitf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!94 = !DIFile(filename: "../libraries/builtinsfloat/floattixf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!96 = !DIFile(filename: "../libraries/builtinsfloat/floatundidf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!98 = !DIFile(filename: "../libraries/builtinsfloat/floatundisf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!100 = !DIFile(filename: "../libraries/builtinsfloat/floatunditf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!102 = !DIFile(filename: "../libraries/builtinsfloat/floatundixf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!104 = !DIFile(filename: "../libraries/builtinsfloat/floatunsidf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!106 = !DIFile(filename: "../libraries/builtinsfloat/floatunsisf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!108 = !DIFile(filename: "../libraries/builtinsfloat/floatunsitf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!110 = !DIFile(filename: "../libraries/builtinsfloat/floatuntidf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!112 = !DIFile(filename: "../libraries/builtinsfloat/floatuntisf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!114 = !DIFile(filename: "../libraries/builtinsfloat/floatuntitf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!116 = !DIFile(filename: "../libraries/builtinsfloat/floatuntixf.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!118 = !DIFile(filename: "../libraries/builtinsfloat/int_util.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!120 = !DIFile(filename: "../libraries/builtinsfloat/muldf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!122 = !DIFile(filename: "../libraries/builtinsfloat/muldi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!124 = !DIFile(filename: "../libraries/builtinsfloat/mulodi4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!126 = !DIFile(filename: "../libraries/builtinsfloat/mulosi4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!128 = !DIFile(filename: "../libraries/builtinsfloat/muloti4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!130 = !DIFile(filename: "../libraries/builtinsfloat/mulsf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!132 = !DIFile(filename: "../libraries/builtinsfloat/multf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!134 = !DIFile(filename: "../libraries/builtinsfloat/multi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!136 = !DIFile(filename: "../libraries/builtinsfloat/negdf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!138 = !DIFile(filename: "../libraries/builtinsfloat/negdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!140 = !DIFile(filename: "../libraries/builtinsfloat/negsf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!142 = !DIFile(filename: "../libraries/builtinsfloat/negti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!144 = !DIFile(filename: "../libraries/builtinsfloat/negvdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!146 = !DIFile(filename: "../libraries/builtinsfloat/negvsi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!148 = !DIFile(filename: "../libraries/builtinsfloat/negvti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!150 = !DIFile(filename: "../libraries/builtinsfloat/powidf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!152 = !DIFile(filename: "../libraries/builtinsfloat/powisf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!154 = !DIFile(filename: "../libraries/builtinsfloat/powitf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!156 = !DIFile(filename: "../libraries/builtinsfloat/powixf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!158 = !DIFile(filename: "../libraries/builtinsfloat/subdf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!160 = !DIFile(filename: "../libraries/builtinsfloat/subsf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!162 = !DIFile(filename: "../libraries/builtinsfloat/subtf3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!164 = !DIFile(filename: "../libraries/builtinsfloat/truncdfhf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!166 = !DIFile(filename: "../libraries/builtinsfloat/truncdfsf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!168 = !DIFile(filename: "../libraries/builtinsfloat/truncsfhf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!170 = !DIFile(filename: "../libraries/builtinsfloat/trunctfdf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!172 = !DIFile(filename: "../libraries/builtinsfloat/trunctfsf2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!173 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
!174 = !{i32 2, !"Dwarf Version", i32 4}
!175 = !{i32 2, !"Debug Info Version", i32 3}
!176 = !{i32 1, !"wchar_size", i32 4}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = distinct !DISubprogram(name: "__adddf3", scope: !1, file: !1, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!179 = !DISubroutineType(types: !2)
!180 = !DILocation(line: 21, column: 12, scope: !178)
!181 = !DILocation(line: 21, column: 5, scope: !178)
!182 = distinct !DISubprogram(name: "__addXf3__", scope: !183, file: !183, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!183 = !DIFile(filename: "../libraries/builtinsfloat/fp_add_impl.inc", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!184 = !DILocation(line: 18, column: 18, scope: !182)
!185 = !DILocation(line: 19, column: 18, scope: !182)
!186 = !DILocation(line: 20, column: 29, scope: !182)
!187 = !DILocation(line: 21, column: 29, scope: !182)
!188 = !DILocation(line: 24, column: 14, scope: !182)
!189 = !DILocation(line: 24, column: 25, scope: !182)
!190 = !DILocation(line: 24, column: 46, scope: !182)
!191 = !DILocation(line: 25, column: 14, scope: !182)
!192 = !DILocation(line: 25, column: 25, scope: !182)
!193 = !DILocation(line: 24, column: 9, scope: !182)
!194 = !DILocation(line: 27, column: 18, scope: !182)
!195 = !DILocation(line: 27, column: 13, scope: !182)
!196 = !DILocation(line: 27, column: 43, scope: !182)
!197 = !DILocation(line: 27, column: 52, scope: !182)
!198 = !DILocation(line: 27, column: 35, scope: !182)
!199 = !DILocation(line: 27, column: 28, scope: !182)
!200 = !DILocation(line: 29, column: 18, scope: !182)
!201 = !DILocation(line: 29, column: 13, scope: !182)
!202 = !DILocation(line: 29, column: 43, scope: !182)
!203 = !DILocation(line: 29, column: 52, scope: !182)
!204 = !DILocation(line: 29, column: 35, scope: !182)
!205 = !DILocation(line: 29, column: 28, scope: !182)
!206 = !DILocation(line: 31, column: 18, scope: !182)
!207 = !DILocation(line: 31, column: 13, scope: !182)
!208 = !DILocation(line: 33, column: 18, scope: !182)
!209 = !DILocation(line: 33, column: 29, scope: !182)
!210 = !DILocation(line: 33, column: 27, scope: !182)
!211 = !DILocation(line: 33, column: 39, scope: !182)
!212 = !DILocation(line: 33, column: 17, scope: !182)
!213 = !DILocation(line: 33, column: 58, scope: !182)
!214 = !DILocation(line: 33, column: 51, scope: !182)
!215 = !DILocation(line: 35, column: 18, scope: !182)
!216 = !DILocation(line: 39, column: 18, scope: !182)
!217 = !DILocation(line: 39, column: 13, scope: !182)
!218 = !DILocation(line: 39, column: 29, scope: !182)
!219 = !DILocation(line: 42, column: 14, scope: !182)
!220 = !DILocation(line: 42, column: 13, scope: !182)
!221 = !DILocation(line: 44, column: 18, scope: !182)
!222 = !DILocation(line: 44, column: 17, scope: !182)
!223 = !DILocation(line: 44, column: 39, scope: !182)
!224 = !DILocation(line: 44, column: 50, scope: !182)
!225 = !DILocation(line: 44, column: 48, scope: !182)
!226 = !DILocation(line: 44, column: 31, scope: !182)
!227 = !DILocation(line: 44, column: 24, scope: !182)
!228 = !DILocation(line: 45, column: 18, scope: !182)
!229 = !DILocation(line: 49, column: 14, scope: !182)
!230 = !DILocation(line: 49, column: 13, scope: !182)
!231 = !DILocation(line: 49, column: 20, scope: !182)
!232 = !DILocation(line: 50, column: 5, scope: !182)
!233 = !DILocation(line: 53, column: 14, scope: !182)
!234 = !DILocation(line: 53, column: 9, scope: !182)
!235 = !DILocation(line: 57, column: 5, scope: !182)
!236 = !DILocation(line: 0, scope: !182)
!237 = !DILocation(line: 60, column: 26, scope: !182)
!238 = !DILocation(line: 60, column: 21, scope: !182)
!239 = !DILocation(line: 61, column: 26, scope: !182)
!240 = !DILocation(line: 61, column: 21, scope: !182)
!241 = !DILocation(line: 62, column: 31, scope: !182)
!242 = !DILocation(line: 62, column: 11, scope: !182)
!243 = !DILocation(line: 63, column: 31, scope: !182)
!244 = !DILocation(line: 63, column: 11, scope: !182)
!245 = !DILocation(line: 66, column: 19, scope: !182)
!246 = !DILocation(line: 66, column: 9, scope: !182)
!247 = !DILocation(line: 66, column: 37, scope: !182)
!248 = !DILocation(line: 66, column: 25, scope: !182)
!249 = !DILocation(line: 67, column: 19, scope: !182)
!250 = !DILocation(line: 67, column: 9, scope: !182)
!251 = !DILocation(line: 67, column: 37, scope: !182)
!252 = !DILocation(line: 67, column: 25, scope: !182)
!253 = !DILocation(line: 71, column: 35, scope: !182)
!254 = !DILocation(line: 72, column: 36, scope: !182)
!255 = !DILocation(line: 72, column: 30, scope: !182)
!256 = !DILocation(line: 78, column: 21, scope: !182)
!257 = !DILocation(line: 78, column: 49, scope: !182)
!258 = !DILocation(line: 78, column: 18, scope: !182)
!259 = !DILocation(line: 79, column: 21, scope: !182)
!260 = !DILocation(line: 79, column: 49, scope: !182)
!261 = !DILocation(line: 79, column: 18, scope: !182)
!262 = !DILocation(line: 83, column: 42, scope: !182)
!263 = !DILocation(line: 84, column: 9, scope: !182)
!264 = !DILocation(line: 85, column: 19, scope: !182)
!265 = !DILocation(line: 85, column: 13, scope: !182)
!266 = !DILocation(line: 86, column: 33, scope: !182)
!267 = !DILocation(line: 86, column: 60, scope: !182)
!268 = !DILocation(line: 86, column: 46, scope: !182)
!269 = !DILocation(line: 87, column: 41, scope: !182)
!270 = !DILocation(line: 87, column: 52, scope: !182)
!271 = !DILocation(line: 87, column: 50, scope: !182)
!272 = !DILocation(line: 88, column: 9, scope: !182)
!273 = !DILocation(line: 91, column: 5, scope: !182)
!274 = !DILocation(line: 92, column: 9, scope: !182)
!275 = !DILocation(line: 93, column: 25, scope: !182)
!276 = !DILocation(line: 93, column: 22, scope: !182)
!277 = !DILocation(line: 95, column: 26, scope: !182)
!278 = !DILocation(line: 95, column: 13, scope: !182)
!279 = !DILocation(line: 95, column: 39, scope: !182)
!280 = !DILocation(line: 95, column: 32, scope: !182)
!281 = !DILocation(line: 99, column: 13, scope: !182)
!282 = !DILocation(line: 99, column: 26, scope: !182)
!283 = !DILocation(line: 100, column: 39, scope: !182)
!284 = !DILocation(line: 100, column: 31, scope: !182)
!285 = !DILocation(line: 100, column: 55, scope: !182)
!286 = !DILocation(line: 100, column: 53, scope: !182)
!287 = !DILocation(line: 101, column: 26, scope: !182)
!288 = !DILocation(line: 102, column: 23, scope: !182)
!289 = !DILocation(line: 103, column: 9, scope: !182)
!290 = !DILocation(line: 104, column: 5, scope: !182)
!291 = !DILocation(line: 106, column: 25, scope: !182)
!292 = !DILocation(line: 106, column: 22, scope: !182)
!293 = !DILocation(line: 110, column: 26, scope: !182)
!294 = !DILocation(line: 110, column: 13, scope: !182)
!295 = !DILocation(line: 111, column: 33, scope: !182)
!296 = !DILocation(line: 111, column: 46, scope: !182)
!297 = !DILocation(line: 112, column: 41, scope: !182)
!298 = !DILocation(line: 112, column: 46, scope: !182)
!299 = !DILocation(line: 112, column: 26, scope: !182)
!300 = !DILocation(line: 113, column: 23, scope: !182)
!301 = !DILocation(line: 114, column: 9, scope: !182)
!302 = !DILocation(line: 118, column: 19, scope: !182)
!303 = !DILocation(line: 118, column: 9, scope: !182)
!304 = !DILocation(line: 118, column: 57, scope: !182)
!305 = !DILocation(line: 118, column: 42, scope: !182)
!306 = !DILocation(line: 118, column: 35, scope: !182)
!307 = !DILocation(line: 120, column: 19, scope: !182)
!308 = !DILocation(line: 120, column: 9, scope: !182)
!309 = !DILocation(line: 123, column: 29, scope: !182)
!310 = !DILocation(line: 124, column: 29, scope: !182)
!311 = !DILocation(line: 124, column: 56, scope: !182)
!312 = !DILocation(line: 124, column: 42, scope: !182)
!313 = !DILocation(line: 125, column: 37, scope: !182)
!314 = !DILocation(line: 125, column: 48, scope: !182)
!315 = !DILocation(line: 125, column: 46, scope: !182)
!316 = !DILocation(line: 125, column: 22, scope: !182)
!317 = !DILocation(line: 127, column: 5, scope: !182)
!318 = !DILocation(line: 130, column: 34, scope: !182)
!319 = !DILocation(line: 133, column: 33, scope: !182)
!320 = !DILocation(line: 133, column: 38, scope: !182)
!321 = !DILocation(line: 136, column: 15, scope: !182)
!322 = !DILocation(line: 136, column: 32, scope: !182)
!323 = !DILocation(line: 136, column: 12, scope: !182)
!324 = !DILocation(line: 137, column: 12, scope: !182)
!325 = !DILocation(line: 141, column: 26, scope: !182)
!326 = !DILocation(line: 141, column: 9, scope: !182)
!327 = !DILocation(line: 141, column: 39, scope: !182)
!328 = !DILocation(line: 141, column: 33, scope: !182)
!329 = !DILocation(line: 142, column: 26, scope: !182)
!330 = !DILocation(line: 142, column: 9, scope: !182)
!331 = !DILocation(line: 142, column: 51, scope: !182)
!332 = !DILocation(line: 142, column: 41, scope: !182)
!333 = !DILocation(line: 142, column: 34, scope: !182)
!334 = !DILocation(line: 143, column: 12, scope: !182)
!335 = !DILocation(line: 143, column: 5, scope: !182)
!336 = !DILocation(line: 144, column: 1, scope: !182)
!337 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!338 = !DIFile(filename: "../libraries/builtinsfloat/fp_lib.h", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!339 = !DILocation(line: 233, column: 16, scope: !337)
!340 = !DILocation(line: 233, column: 5, scope: !337)
!341 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!342 = !DILocation(line: 238, column: 16, scope: !341)
!343 = !DILocation(line: 238, column: 5, scope: !341)
!344 = distinct !DISubprogram(name: "normalize", scope: !338, file: !338, line: 241, type: !179, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!345 = !DILocation(line: 242, column: 31, scope: !344)
!346 = !DILocation(line: 242, column: 23, scope: !344)
!347 = !DILocation(line: 242, column: 47, scope: !344)
!348 = !DILocation(line: 242, column: 45, scope: !344)
!349 = !DILocation(line: 243, column: 18, scope: !344)
!350 = !DILocation(line: 244, column: 14, scope: !344)
!351 = !DILocation(line: 244, column: 5, scope: !344)
!352 = distinct !DISubprogram(name: "rep_clz", scope: !338, file: !338, line: 69, type: !179, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!353 = !DILocation(line: 73, column: 11, scope: !352)
!354 = !DILocation(line: 73, column: 9, scope: !352)
!355 = !DILocation(line: 74, column: 32, scope: !352)
!356 = !DILocation(line: 74, column: 30, scope: !352)
!357 = !DILocation(line: 74, column: 16, scope: !352)
!358 = !{i32 0, i32 33}
!359 = !DILocation(line: 74, column: 9, scope: !352)
!360 = !DILocation(line: 76, column: 35, scope: !352)
!361 = !DILocation(line: 76, column: 21, scope: !352)
!362 = !DILocation(line: 76, column: 19, scope: !352)
!363 = !DILocation(line: 76, column: 9, scope: !352)
!364 = !DILocation(line: 0, scope: !352)
!365 = !DILocation(line: 78, column: 1, scope: !352)
!366 = distinct !DISubprogram(name: "__addsf3", scope: !4, file: !4, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!367 = !DILocation(line: 21, column: 12, scope: !366)
!368 = !DILocation(line: 21, column: 5, scope: !366)
!369 = distinct !DISubprogram(name: "__addXf3__", scope: !183, file: !183, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!370 = !DILocation(line: 18, column: 18, scope: !369)
!371 = !DILocation(line: 19, column: 18, scope: !369)
!372 = !DILocation(line: 20, column: 29, scope: !369)
!373 = !DILocation(line: 21, column: 29, scope: !369)
!374 = !DILocation(line: 24, column: 14, scope: !369)
!375 = !DILocation(line: 24, column: 25, scope: !369)
!376 = !DILocation(line: 24, column: 46, scope: !369)
!377 = !DILocation(line: 25, column: 14, scope: !369)
!378 = !DILocation(line: 25, column: 25, scope: !369)
!379 = !DILocation(line: 24, column: 9, scope: !369)
!380 = !DILocation(line: 27, column: 18, scope: !369)
!381 = !DILocation(line: 27, column: 13, scope: !369)
!382 = !DILocation(line: 27, column: 43, scope: !369)
!383 = !DILocation(line: 27, column: 52, scope: !369)
!384 = !DILocation(line: 27, column: 35, scope: !369)
!385 = !DILocation(line: 27, column: 28, scope: !369)
!386 = !DILocation(line: 29, column: 18, scope: !369)
!387 = !DILocation(line: 29, column: 13, scope: !369)
!388 = !DILocation(line: 29, column: 43, scope: !369)
!389 = !DILocation(line: 29, column: 52, scope: !369)
!390 = !DILocation(line: 29, column: 35, scope: !369)
!391 = !DILocation(line: 29, column: 28, scope: !369)
!392 = !DILocation(line: 31, column: 18, scope: !369)
!393 = !DILocation(line: 31, column: 13, scope: !369)
!394 = !DILocation(line: 33, column: 18, scope: !369)
!395 = !DILocation(line: 33, column: 29, scope: !369)
!396 = !DILocation(line: 33, column: 27, scope: !369)
!397 = !DILocation(line: 33, column: 39, scope: !369)
!398 = !DILocation(line: 33, column: 17, scope: !369)
!399 = !DILocation(line: 33, column: 58, scope: !369)
!400 = !DILocation(line: 33, column: 51, scope: !369)
!401 = !DILocation(line: 35, column: 18, scope: !369)
!402 = !DILocation(line: 39, column: 18, scope: !369)
!403 = !DILocation(line: 39, column: 13, scope: !369)
!404 = !DILocation(line: 39, column: 29, scope: !369)
!405 = !DILocation(line: 42, column: 14, scope: !369)
!406 = !DILocation(line: 42, column: 13, scope: !369)
!407 = !DILocation(line: 44, column: 18, scope: !369)
!408 = !DILocation(line: 44, column: 17, scope: !369)
!409 = !DILocation(line: 44, column: 39, scope: !369)
!410 = !DILocation(line: 44, column: 50, scope: !369)
!411 = !DILocation(line: 44, column: 48, scope: !369)
!412 = !DILocation(line: 44, column: 31, scope: !369)
!413 = !DILocation(line: 44, column: 24, scope: !369)
!414 = !DILocation(line: 45, column: 18, scope: !369)
!415 = !DILocation(line: 49, column: 14, scope: !369)
!416 = !DILocation(line: 49, column: 13, scope: !369)
!417 = !DILocation(line: 49, column: 20, scope: !369)
!418 = !DILocation(line: 50, column: 5, scope: !369)
!419 = !DILocation(line: 53, column: 14, scope: !369)
!420 = !DILocation(line: 53, column: 9, scope: !369)
!421 = !DILocation(line: 57, column: 5, scope: !369)
!422 = !DILocation(line: 0, scope: !369)
!423 = !DILocation(line: 60, column: 26, scope: !369)
!424 = !DILocation(line: 60, column: 45, scope: !369)
!425 = !DILocation(line: 61, column: 26, scope: !369)
!426 = !DILocation(line: 61, column: 45, scope: !369)
!427 = !DILocation(line: 62, column: 31, scope: !369)
!428 = !DILocation(line: 62, column: 11, scope: !369)
!429 = !DILocation(line: 63, column: 31, scope: !369)
!430 = !DILocation(line: 63, column: 11, scope: !369)
!431 = !DILocation(line: 66, column: 19, scope: !369)
!432 = !DILocation(line: 66, column: 9, scope: !369)
!433 = !DILocation(line: 66, column: 37, scope: !369)
!434 = !DILocation(line: 66, column: 25, scope: !369)
!435 = !DILocation(line: 67, column: 19, scope: !369)
!436 = !DILocation(line: 67, column: 9, scope: !369)
!437 = !DILocation(line: 67, column: 37, scope: !369)
!438 = !DILocation(line: 67, column: 25, scope: !369)
!439 = !DILocation(line: 71, column: 35, scope: !369)
!440 = !DILocation(line: 72, column: 36, scope: !369)
!441 = !DILocation(line: 72, column: 30, scope: !369)
!442 = !DILocation(line: 78, column: 21, scope: !369)
!443 = !DILocation(line: 78, column: 49, scope: !369)
!444 = !DILocation(line: 78, column: 18, scope: !369)
!445 = !DILocation(line: 79, column: 21, scope: !369)
!446 = !DILocation(line: 79, column: 49, scope: !369)
!447 = !DILocation(line: 79, column: 18, scope: !369)
!448 = !DILocation(line: 83, column: 42, scope: !369)
!449 = !DILocation(line: 84, column: 9, scope: !369)
!450 = !DILocation(line: 85, column: 19, scope: !369)
!451 = !DILocation(line: 85, column: 13, scope: !369)
!452 = !DILocation(line: 86, column: 33, scope: !369)
!453 = !DILocation(line: 86, column: 60, scope: !369)
!454 = !DILocation(line: 86, column: 46, scope: !369)
!455 = !DILocation(line: 87, column: 41, scope: !369)
!456 = !DILocation(line: 87, column: 52, scope: !369)
!457 = !DILocation(line: 87, column: 50, scope: !369)
!458 = !DILocation(line: 88, column: 9, scope: !369)
!459 = !DILocation(line: 91, column: 5, scope: !369)
!460 = !DILocation(line: 92, column: 9, scope: !369)
!461 = !DILocation(line: 93, column: 25, scope: !369)
!462 = !DILocation(line: 93, column: 22, scope: !369)
!463 = !DILocation(line: 95, column: 26, scope: !369)
!464 = !DILocation(line: 95, column: 13, scope: !369)
!465 = !DILocation(line: 95, column: 39, scope: !369)
!466 = !DILocation(line: 95, column: 32, scope: !369)
!467 = !DILocation(line: 99, column: 13, scope: !369)
!468 = !DILocation(line: 99, column: 26, scope: !369)
!469 = !DILocation(line: 100, column: 39, scope: !369)
!470 = !DILocation(line: 100, column: 31, scope: !369)
!471 = !DILocation(line: 100, column: 55, scope: !369)
!472 = !DILocation(line: 100, column: 53, scope: !369)
!473 = !DILocation(line: 101, column: 26, scope: !369)
!474 = !DILocation(line: 102, column: 23, scope: !369)
!475 = !DILocation(line: 103, column: 9, scope: !369)
!476 = !DILocation(line: 104, column: 5, scope: !369)
!477 = !DILocation(line: 106, column: 25, scope: !369)
!478 = !DILocation(line: 106, column: 22, scope: !369)
!479 = !DILocation(line: 110, column: 26, scope: !369)
!480 = !DILocation(line: 110, column: 13, scope: !369)
!481 = !DILocation(line: 111, column: 33, scope: !369)
!482 = !DILocation(line: 111, column: 46, scope: !369)
!483 = !DILocation(line: 112, column: 41, scope: !369)
!484 = !DILocation(line: 112, column: 46, scope: !369)
!485 = !DILocation(line: 112, column: 26, scope: !369)
!486 = !DILocation(line: 113, column: 23, scope: !369)
!487 = !DILocation(line: 114, column: 9, scope: !369)
!488 = !DILocation(line: 118, column: 19, scope: !369)
!489 = !DILocation(line: 118, column: 9, scope: !369)
!490 = !DILocation(line: 118, column: 57, scope: !369)
!491 = !DILocation(line: 118, column: 42, scope: !369)
!492 = !DILocation(line: 118, column: 35, scope: !369)
!493 = !DILocation(line: 120, column: 19, scope: !369)
!494 = !DILocation(line: 120, column: 9, scope: !369)
!495 = !DILocation(line: 123, column: 29, scope: !369)
!496 = !DILocation(line: 124, column: 29, scope: !369)
!497 = !DILocation(line: 124, column: 56, scope: !369)
!498 = !DILocation(line: 124, column: 42, scope: !369)
!499 = !DILocation(line: 125, column: 37, scope: !369)
!500 = !DILocation(line: 125, column: 48, scope: !369)
!501 = !DILocation(line: 125, column: 46, scope: !369)
!502 = !DILocation(line: 125, column: 22, scope: !369)
!503 = !DILocation(line: 127, column: 5, scope: !369)
!504 = !DILocation(line: 130, column: 34, scope: !369)
!505 = !DILocation(line: 130, column: 47, scope: !369)
!506 = !DILocation(line: 133, column: 33, scope: !369)
!507 = !DILocation(line: 133, column: 38, scope: !369)
!508 = !DILocation(line: 136, column: 32, scope: !369)
!509 = !DILocation(line: 136, column: 12, scope: !369)
!510 = !DILocation(line: 137, column: 12, scope: !369)
!511 = !DILocation(line: 141, column: 26, scope: !369)
!512 = !DILocation(line: 141, column: 9, scope: !369)
!513 = !DILocation(line: 141, column: 39, scope: !369)
!514 = !DILocation(line: 141, column: 33, scope: !369)
!515 = !DILocation(line: 142, column: 26, scope: !369)
!516 = !DILocation(line: 142, column: 9, scope: !369)
!517 = !DILocation(line: 142, column: 51, scope: !369)
!518 = !DILocation(line: 142, column: 41, scope: !369)
!519 = !DILocation(line: 142, column: 34, scope: !369)
!520 = !DILocation(line: 143, column: 12, scope: !369)
!521 = !DILocation(line: 143, column: 5, scope: !369)
!522 = !DILocation(line: 144, column: 1, scope: !369)
!523 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!524 = !DILocation(line: 233, column: 16, scope: !523)
!525 = !DILocation(line: 233, column: 5, scope: !523)
!526 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!527 = !DILocation(line: 238, column: 16, scope: !526)
!528 = !DILocation(line: 238, column: 5, scope: !526)
!529 = distinct !DISubprogram(name: "normalize", scope: !338, file: !338, line: 241, type: !179, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!530 = !DILocation(line: 242, column: 31, scope: !529)
!531 = !DILocation(line: 242, column: 23, scope: !529)
!532 = !DILocation(line: 242, column: 47, scope: !529)
!533 = !DILocation(line: 242, column: 45, scope: !529)
!534 = !DILocation(line: 243, column: 18, scope: !529)
!535 = !DILocation(line: 244, column: 14, scope: !529)
!536 = !DILocation(line: 244, column: 5, scope: !529)
!537 = distinct !DISubprogram(name: "rep_clz", scope: !338, file: !338, line: 49, type: !179, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!538 = !DILocation(line: 50, column: 12, scope: !537)
!539 = !DILocation(line: 50, column: 5, scope: !537)
!540 = distinct !DISubprogram(name: "__ledf2", scope: !8, file: !8, line: 51, type: !179, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!541 = !DILocation(line: 53, column: 25, scope: !540)
!542 = !DILocation(line: 54, column: 25, scope: !540)
!543 = !DILocation(line: 55, column: 29, scope: !540)
!544 = !DILocation(line: 56, column: 29, scope: !540)
!545 = !DILocation(line: 59, column: 14, scope: !540)
!546 = !DILocation(line: 59, column: 23, scope: !540)
!547 = !DILocation(line: 59, column: 31, scope: !540)
!548 = !DILocation(line: 59, column: 9, scope: !540)
!549 = !DILocation(line: 59, column: 41, scope: !540)
!550 = !DILocation(line: 62, column: 15, scope: !540)
!551 = !DILocation(line: 62, column: 23, scope: !540)
!552 = !DILocation(line: 62, column: 9, scope: !540)
!553 = !DILocation(line: 62, column: 29, scope: !540)
!554 = !DILocation(line: 66, column: 15, scope: !540)
!555 = !DILocation(line: 66, column: 23, scope: !540)
!556 = !DILocation(line: 66, column: 9, scope: !540)
!557 = !DILocation(line: 67, column: 18, scope: !540)
!558 = !DILocation(line: 67, column: 13, scope: !540)
!559 = !DILocation(line: 67, column: 26, scope: !540)
!560 = !DILocation(line: 68, column: 23, scope: !540)
!561 = !DILocation(line: 68, column: 18, scope: !540)
!562 = !DILocation(line: 68, column: 32, scope: !540)
!563 = !DILocation(line: 69, column: 14, scope: !540)
!564 = !DILocation(line: 77, column: 18, scope: !540)
!565 = !DILocation(line: 77, column: 13, scope: !540)
!566 = !DILocation(line: 77, column: 26, scope: !540)
!567 = !DILocation(line: 78, column: 23, scope: !540)
!568 = !DILocation(line: 78, column: 18, scope: !540)
!569 = !DILocation(line: 78, column: 32, scope: !540)
!570 = !DILocation(line: 79, column: 14, scope: !540)
!571 = !DILocation(line: 0, scope: !540)
!572 = !DILocation(line: 81, column: 1, scope: !540)
!573 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!574 = !DILocation(line: 233, column: 16, scope: !573)
!575 = !DILocation(line: 233, column: 5, scope: !573)
!576 = distinct !DISubprogram(name: "__gedf2", scope: !8, file: !8, line: 96, type: !179, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!577 = !DILocation(line: 98, column: 25, scope: !576)
!578 = !DILocation(line: 99, column: 25, scope: !576)
!579 = !DILocation(line: 100, column: 29, scope: !576)
!580 = !DILocation(line: 101, column: 29, scope: !576)
!581 = !DILocation(line: 103, column: 14, scope: !576)
!582 = !DILocation(line: 103, column: 23, scope: !576)
!583 = !DILocation(line: 103, column: 31, scope: !576)
!584 = !DILocation(line: 103, column: 9, scope: !576)
!585 = !DILocation(line: 103, column: 41, scope: !576)
!586 = !DILocation(line: 104, column: 15, scope: !576)
!587 = !DILocation(line: 104, column: 23, scope: !576)
!588 = !DILocation(line: 104, column: 9, scope: !576)
!589 = !DILocation(line: 104, column: 29, scope: !576)
!590 = !DILocation(line: 105, column: 15, scope: !576)
!591 = !DILocation(line: 105, column: 23, scope: !576)
!592 = !DILocation(line: 105, column: 9, scope: !576)
!593 = !DILocation(line: 106, column: 18, scope: !576)
!594 = !DILocation(line: 106, column: 13, scope: !576)
!595 = !DILocation(line: 106, column: 26, scope: !576)
!596 = !DILocation(line: 107, column: 23, scope: !576)
!597 = !DILocation(line: 107, column: 18, scope: !576)
!598 = !DILocation(line: 107, column: 32, scope: !576)
!599 = !DILocation(line: 108, column: 14, scope: !576)
!600 = !DILocation(line: 110, column: 18, scope: !576)
!601 = !DILocation(line: 110, column: 13, scope: !576)
!602 = !DILocation(line: 110, column: 26, scope: !576)
!603 = !DILocation(line: 111, column: 23, scope: !576)
!604 = !DILocation(line: 111, column: 18, scope: !576)
!605 = !DILocation(line: 111, column: 32, scope: !576)
!606 = !DILocation(line: 112, column: 14, scope: !576)
!607 = !DILocation(line: 0, scope: !576)
!608 = !DILocation(line: 114, column: 1, scope: !576)
!609 = distinct !DISubprogram(name: "__unorddf2", scope: !8, file: !8, line: 119, type: !179, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!610 = !DILocation(line: 120, column: 24, scope: !609)
!611 = !DILocation(line: 120, column: 33, scope: !609)
!612 = !DILocation(line: 121, column: 24, scope: !609)
!613 = !DILocation(line: 122, column: 17, scope: !609)
!614 = !DILocation(line: 122, column: 26, scope: !609)
!615 = !DILocation(line: 121, column: 33, scope: !609)
!616 = !DILocation(line: 122, column: 34, scope: !609)
!617 = !DILocation(line: 122, column: 5, scope: !609)
!618 = distinct !DISubprogram(name: "__eqdf2", scope: !8, file: !8, line: 128, type: !179, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!619 = !DILocation(line: 129, column: 12, scope: !618)
!620 = !DILocation(line: 129, column: 5, scope: !618)
!621 = distinct !DISubprogram(name: "__ltdf2", scope: !8, file: !8, line: 133, type: !179, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!622 = !DILocation(line: 134, column: 12, scope: !621)
!623 = !DILocation(line: 134, column: 5, scope: !621)
!624 = distinct !DISubprogram(name: "__nedf2", scope: !8, file: !8, line: 138, type: !179, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!625 = !DILocation(line: 139, column: 12, scope: !624)
!626 = !DILocation(line: 139, column: 5, scope: !624)
!627 = distinct !DISubprogram(name: "__gtdf2", scope: !8, file: !8, line: 143, type: !179, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!628 = !DILocation(line: 144, column: 12, scope: !627)
!629 = !DILocation(line: 144, column: 5, scope: !627)
!630 = distinct !DISubprogram(name: "__lesf2", scope: !10, file: !10, line: 51, type: !179, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!631 = !DILocation(line: 53, column: 25, scope: !630)
!632 = !DILocation(line: 54, column: 25, scope: !630)
!633 = !DILocation(line: 55, column: 29, scope: !630)
!634 = !DILocation(line: 56, column: 29, scope: !630)
!635 = !DILocation(line: 59, column: 14, scope: !630)
!636 = !DILocation(line: 59, column: 23, scope: !630)
!637 = !DILocation(line: 59, column: 31, scope: !630)
!638 = !DILocation(line: 59, column: 9, scope: !630)
!639 = !DILocation(line: 59, column: 41, scope: !630)
!640 = !DILocation(line: 62, column: 15, scope: !630)
!641 = !DILocation(line: 62, column: 23, scope: !630)
!642 = !DILocation(line: 62, column: 9, scope: !630)
!643 = !DILocation(line: 62, column: 29, scope: !630)
!644 = !DILocation(line: 66, column: 15, scope: !630)
!645 = !DILocation(line: 66, column: 23, scope: !630)
!646 = !DILocation(line: 66, column: 9, scope: !630)
!647 = !DILocation(line: 67, column: 18, scope: !630)
!648 = !DILocation(line: 67, column: 13, scope: !630)
!649 = !DILocation(line: 67, column: 26, scope: !630)
!650 = !DILocation(line: 68, column: 23, scope: !630)
!651 = !DILocation(line: 68, column: 18, scope: !630)
!652 = !DILocation(line: 68, column: 32, scope: !630)
!653 = !DILocation(line: 69, column: 14, scope: !630)
!654 = !DILocation(line: 77, column: 18, scope: !630)
!655 = !DILocation(line: 77, column: 13, scope: !630)
!656 = !DILocation(line: 77, column: 26, scope: !630)
!657 = !DILocation(line: 78, column: 23, scope: !630)
!658 = !DILocation(line: 78, column: 18, scope: !630)
!659 = !DILocation(line: 78, column: 32, scope: !630)
!660 = !DILocation(line: 79, column: 14, scope: !630)
!661 = !DILocation(line: 0, scope: !630)
!662 = !DILocation(line: 81, column: 1, scope: !630)
!663 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !2)
!664 = !DILocation(line: 233, column: 16, scope: !663)
!665 = !DILocation(line: 233, column: 5, scope: !663)
!666 = distinct !DISubprogram(name: "__gesf2", scope: !10, file: !10, line: 96, type: !179, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!667 = !DILocation(line: 98, column: 25, scope: !666)
!668 = !DILocation(line: 99, column: 25, scope: !666)
!669 = !DILocation(line: 100, column: 29, scope: !666)
!670 = !DILocation(line: 101, column: 29, scope: !666)
!671 = !DILocation(line: 103, column: 14, scope: !666)
!672 = !DILocation(line: 103, column: 23, scope: !666)
!673 = !DILocation(line: 103, column: 31, scope: !666)
!674 = !DILocation(line: 103, column: 9, scope: !666)
!675 = !DILocation(line: 103, column: 41, scope: !666)
!676 = !DILocation(line: 104, column: 15, scope: !666)
!677 = !DILocation(line: 104, column: 23, scope: !666)
!678 = !DILocation(line: 104, column: 9, scope: !666)
!679 = !DILocation(line: 104, column: 29, scope: !666)
!680 = !DILocation(line: 105, column: 15, scope: !666)
!681 = !DILocation(line: 105, column: 23, scope: !666)
!682 = !DILocation(line: 105, column: 9, scope: !666)
!683 = !DILocation(line: 106, column: 18, scope: !666)
!684 = !DILocation(line: 106, column: 13, scope: !666)
!685 = !DILocation(line: 106, column: 26, scope: !666)
!686 = !DILocation(line: 107, column: 23, scope: !666)
!687 = !DILocation(line: 107, column: 18, scope: !666)
!688 = !DILocation(line: 107, column: 32, scope: !666)
!689 = !DILocation(line: 108, column: 14, scope: !666)
!690 = !DILocation(line: 110, column: 18, scope: !666)
!691 = !DILocation(line: 110, column: 13, scope: !666)
!692 = !DILocation(line: 110, column: 26, scope: !666)
!693 = !DILocation(line: 111, column: 23, scope: !666)
!694 = !DILocation(line: 111, column: 18, scope: !666)
!695 = !DILocation(line: 111, column: 32, scope: !666)
!696 = !DILocation(line: 112, column: 14, scope: !666)
!697 = !DILocation(line: 0, scope: !666)
!698 = !DILocation(line: 114, column: 1, scope: !666)
!699 = distinct !DISubprogram(name: "__unordsf2", scope: !10, file: !10, line: 119, type: !179, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!700 = !DILocation(line: 120, column: 24, scope: !699)
!701 = !DILocation(line: 120, column: 33, scope: !699)
!702 = !DILocation(line: 121, column: 24, scope: !699)
!703 = !DILocation(line: 122, column: 17, scope: !699)
!704 = !DILocation(line: 122, column: 26, scope: !699)
!705 = !DILocation(line: 121, column: 33, scope: !699)
!706 = !DILocation(line: 122, column: 34, scope: !699)
!707 = !DILocation(line: 122, column: 5, scope: !699)
!708 = distinct !DISubprogram(name: "__eqsf2", scope: !10, file: !10, line: 128, type: !179, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!709 = !DILocation(line: 129, column: 12, scope: !708)
!710 = !DILocation(line: 129, column: 5, scope: !708)
!711 = distinct !DISubprogram(name: "__ltsf2", scope: !10, file: !10, line: 133, type: !179, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!712 = !DILocation(line: 134, column: 12, scope: !711)
!713 = !DILocation(line: 134, column: 5, scope: !711)
!714 = distinct !DISubprogram(name: "__nesf2", scope: !10, file: !10, line: 138, type: !179, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!715 = !DILocation(line: 139, column: 12, scope: !714)
!716 = !DILocation(line: 139, column: 5, scope: !714)
!717 = distinct !DISubprogram(name: "__gtsf2", scope: !10, file: !10, line: 143, type: !179, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!718 = !DILocation(line: 144, column: 12, scope: !717)
!719 = !DILocation(line: 144, column: 5, scope: !717)
!720 = distinct !DISubprogram(name: "__divdf3", scope: !14, file: !14, line: 25, type: !179, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!721 = !DILocation(line: 27, column: 36, scope: !720)
!722 = !DILocation(line: 27, column: 45, scope: !720)
!723 = !DILocation(line: 28, column: 36, scope: !720)
!724 = !DILocation(line: 28, column: 45, scope: !720)
!725 = !DILocation(line: 29, column: 33, scope: !720)
!726 = !DILocation(line: 29, column: 44, scope: !720)
!727 = !DILocation(line: 29, column: 42, scope: !720)
!728 = !DILocation(line: 29, column: 54, scope: !720)
!729 = !DILocation(line: 31, column: 26, scope: !720)
!730 = !DILocation(line: 31, column: 35, scope: !720)
!731 = !DILocation(line: 31, column: 11, scope: !720)
!732 = !DILocation(line: 32, column: 26, scope: !720)
!733 = !DILocation(line: 32, column: 35, scope: !720)
!734 = !DILocation(line: 32, column: 11, scope: !720)
!735 = !DILocation(line: 36, column: 18, scope: !720)
!736 = !DILocation(line: 36, column: 22, scope: !720)
!737 = !DILocation(line: 36, column: 40, scope: !720)
!738 = !DILocation(line: 36, column: 52, scope: !720)
!739 = !DILocation(line: 36, column: 56, scope: !720)
!740 = !DILocation(line: 36, column: 9, scope: !720)
!741 = !DILocation(line: 38, column: 28, scope: !720)
!742 = !DILocation(line: 38, column: 37, scope: !720)
!743 = !DILocation(line: 39, column: 28, scope: !720)
!744 = !DILocation(line: 39, column: 37, scope: !720)
!745 = !DILocation(line: 42, column: 18, scope: !720)
!746 = !DILocation(line: 42, column: 13, scope: !720)
!747 = !DILocation(line: 42, column: 43, scope: !720)
!748 = !DILocation(line: 42, column: 52, scope: !720)
!749 = !DILocation(line: 42, column: 35, scope: !720)
!750 = !DILocation(line: 42, column: 28, scope: !720)
!751 = !DILocation(line: 44, column: 18, scope: !720)
!752 = !DILocation(line: 44, column: 13, scope: !720)
!753 = !DILocation(line: 44, column: 43, scope: !720)
!754 = !DILocation(line: 44, column: 52, scope: !720)
!755 = !DILocation(line: 44, column: 35, scope: !720)
!756 = !DILocation(line: 44, column: 28, scope: !720)
!757 = !DILocation(line: 46, column: 18, scope: !720)
!758 = !DILocation(line: 46, column: 13, scope: !720)
!759 = !DILocation(line: 48, column: 22, scope: !720)
!760 = !DILocation(line: 48, column: 17, scope: !720)
!761 = !DILocation(line: 48, column: 40, scope: !720)
!762 = !DILocation(line: 48, column: 33, scope: !720)
!763 = !DILocation(line: 50, column: 38, scope: !720)
!764 = !DILocation(line: 50, column: 25, scope: !720)
!765 = !DILocation(line: 50, column: 18, scope: !720)
!766 = !DILocation(line: 54, column: 18, scope: !720)
!767 = !DILocation(line: 54, column: 13, scope: !720)
!768 = !DILocation(line: 54, column: 36, scope: !720)
!769 = !DILocation(line: 54, column: 29, scope: !720)
!770 = !DILocation(line: 56, column: 14, scope: !720)
!771 = !DILocation(line: 56, column: 13, scope: !720)
!772 = !DILocation(line: 58, column: 18, scope: !720)
!773 = !DILocation(line: 58, column: 17, scope: !720)
!774 = !DILocation(line: 58, column: 31, scope: !720)
!775 = !DILocation(line: 58, column: 24, scope: !720)
!776 = !DILocation(line: 60, column: 25, scope: !720)
!777 = !DILocation(line: 60, column: 18, scope: !720)
!778 = !DILocation(line: 63, column: 14, scope: !720)
!779 = !DILocation(line: 63, column: 13, scope: !720)
!780 = !DILocation(line: 63, column: 42, scope: !720)
!781 = !DILocation(line: 63, column: 27, scope: !720)
!782 = !DILocation(line: 63, column: 20, scope: !720)
!783 = !DILocation(line: 68, column: 18, scope: !720)
!784 = !DILocation(line: 68, column: 13, scope: !720)
!785 = !DILocation(line: 68, column: 42, scope: !720)
!786 = !DILocation(line: 68, column: 33, scope: !720)
!787 = !DILocation(line: 0, scope: !720)
!788 = !DILocation(line: 69, column: 18, scope: !720)
!789 = !DILocation(line: 69, column: 13, scope: !720)
!790 = !DILocation(line: 69, column: 42, scope: !720)
!791 = !DILocation(line: 69, column: 39, scope: !720)
!792 = !DILocation(line: 69, column: 33, scope: !720)
!793 = !DILocation(line: 70, column: 5, scope: !720)
!794 = !DILocation(line: 75, column: 18, scope: !720)
!795 = !DILocation(line: 76, column: 18, scope: !720)
!796 = !DILocation(line: 77, column: 38, scope: !720)
!797 = !DILocation(line: 77, column: 50, scope: !720)
!798 = !DILocation(line: 83, column: 40, scope: !720)
!799 = !DILocation(line: 83, column: 27, scope: !720)
!800 = !DILocation(line: 84, column: 45, scope: !720)
!801 = !DILocation(line: 94, column: 22, scope: !720)
!802 = !DILocation(line: 94, column: 42, scope: !720)
!803 = !DILocation(line: 94, column: 40, scope: !720)
!804 = !DILocation(line: 94, column: 47, scope: !720)
!805 = !DILocation(line: 94, column: 20, scope: !720)
!806 = !DILocation(line: 95, column: 15, scope: !720)
!807 = !DILocation(line: 95, column: 35, scope: !720)
!808 = !DILocation(line: 95, column: 33, scope: !720)
!809 = !DILocation(line: 95, column: 48, scope: !720)
!810 = !DILocation(line: 96, column: 22, scope: !720)
!811 = !DILocation(line: 96, column: 42, scope: !720)
!812 = !DILocation(line: 96, column: 40, scope: !720)
!813 = !DILocation(line: 96, column: 47, scope: !720)
!814 = !DILocation(line: 96, column: 20, scope: !720)
!815 = !DILocation(line: 97, column: 15, scope: !720)
!816 = !DILocation(line: 97, column: 35, scope: !720)
!817 = !DILocation(line: 97, column: 33, scope: !720)
!818 = !DILocation(line: 97, column: 48, scope: !720)
!819 = !DILocation(line: 98, column: 22, scope: !720)
!820 = !DILocation(line: 98, column: 42, scope: !720)
!821 = !DILocation(line: 98, column: 40, scope: !720)
!822 = !DILocation(line: 98, column: 47, scope: !720)
!823 = !DILocation(line: 98, column: 20, scope: !720)
!824 = !DILocation(line: 99, column: 15, scope: !720)
!825 = !DILocation(line: 99, column: 35, scope: !720)
!826 = !DILocation(line: 99, column: 33, scope: !720)
!827 = !DILocation(line: 99, column: 48, scope: !720)
!828 = !DILocation(line: 105, column: 12, scope: !720)
!829 = !DILocation(line: 109, column: 29, scope: !720)
!830 = !DILocation(line: 111, column: 20, scope: !720)
!831 = !DILocation(line: 111, column: 38, scope: !720)
!832 = !DILocation(line: 111, column: 37, scope: !720)
!833 = !DILocation(line: 111, column: 46, scope: !720)
!834 = !DILocation(line: 111, column: 64, scope: !720)
!835 = !DILocation(line: 111, column: 63, scope: !720)
!836 = !DILocation(line: 111, column: 71, scope: !720)
!837 = !DILocation(line: 111, column: 43, scope: !720)
!838 = !DILocation(line: 111, column: 18, scope: !720)
!839 = !DILocation(line: 112, column: 31, scope: !720)
!840 = !DILocation(line: 114, column: 18, scope: !720)
!841 = !DILocation(line: 114, column: 35, scope: !720)
!842 = !DILocation(line: 114, column: 43, scope: !720)
!843 = !DILocation(line: 114, column: 61, scope: !720)
!844 = !DILocation(line: 114, column: 60, scope: !720)
!845 = !DILocation(line: 114, column: 65, scope: !720)
!846 = !DILocation(line: 114, column: 40, scope: !720)
!847 = !DILocation(line: 121, column: 16, scope: !720)
!848 = !DILocation(line: 136, column: 18, scope: !720)
!849 = !DILocation(line: 136, column: 31, scope: !720)
!850 = !DILocation(line: 136, column: 5, scope: !720)
!851 = !DILocation(line: 152, column: 9, scope: !720)
!852 = !DILocation(line: 152, column: 18, scope: !720)
!853 = !DILocation(line: 153, column: 21, scope: !720)
!854 = !DILocation(line: 153, column: 34, scope: !720)
!855 = !DILocation(line: 153, column: 43, scope: !720)
!856 = !DILocation(line: 153, column: 54, scope: !720)
!857 = !DILocation(line: 153, column: 52, scope: !720)
!858 = !DILocation(line: 153, column: 41, scope: !720)
!859 = !DILocation(line: 154, column: 25, scope: !720)
!860 = !DILocation(line: 155, column: 5, scope: !720)
!861 = !DILocation(line: 156, column: 18, scope: !720)
!862 = !DILocation(line: 157, column: 21, scope: !720)
!863 = !DILocation(line: 157, column: 34, scope: !720)
!864 = !DILocation(line: 157, column: 54, scope: !720)
!865 = !DILocation(line: 157, column: 52, scope: !720)
!866 = !DILocation(line: 157, column: 41, scope: !720)
!867 = !DILocation(line: 160, column: 50, scope: !720)
!868 = !DILocation(line: 162, column: 25, scope: !720)
!869 = !DILocation(line: 162, column: 9, scope: !720)
!870 = !DILocation(line: 164, column: 31, scope: !720)
!871 = !DILocation(line: 164, column: 16, scope: !720)
!872 = !DILocation(line: 164, column: 9, scope: !720)
!873 = !DILocation(line: 167, column: 30, scope: !720)
!874 = !DILocation(line: 167, column: 14, scope: !720)
!875 = !DILocation(line: 170, column: 16, scope: !720)
!876 = !DILocation(line: 170, column: 9, scope: !720)
!877 = !DILocation(line: 174, column: 38, scope: !720)
!878 = !DILocation(line: 174, column: 46, scope: !720)
!879 = !DILocation(line: 174, column: 44, scope: !720)
!880 = !DILocation(line: 176, column: 27, scope: !720)
!881 = !DILocation(line: 176, column: 36, scope: !720)
!882 = !DILocation(line: 178, column: 22, scope: !720)
!883 = !DILocation(line: 178, column: 45, scope: !720)
!884 = !DILocation(line: 178, column: 19, scope: !720)
!885 = !DILocation(line: 180, column: 22, scope: !720)
!886 = !DILocation(line: 180, column: 19, scope: !720)
!887 = !DILocation(line: 182, column: 49, scope: !720)
!888 = !DILocation(line: 182, column: 31, scope: !720)
!889 = !DILocation(line: 183, column: 9, scope: !720)
!890 = !DILocation(line: 185, column: 1, scope: !720)
!891 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !2)
!892 = !DILocation(line: 233, column: 16, scope: !891)
!893 = !DILocation(line: 233, column: 5, scope: !891)
!894 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !2)
!895 = !DILocation(line: 238, column: 16, scope: !894)
!896 = !DILocation(line: 238, column: 5, scope: !894)
!897 = distinct !DISubprogram(name: "normalize", scope: !338, file: !338, line: 241, type: !179, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !2)
!898 = !DILocation(line: 242, column: 31, scope: !897)
!899 = !DILocation(line: 242, column: 23, scope: !897)
!900 = !DILocation(line: 242, column: 47, scope: !897)
!901 = !DILocation(line: 242, column: 45, scope: !897)
!902 = !DILocation(line: 243, column: 18, scope: !897)
!903 = !DILocation(line: 244, column: 14, scope: !897)
!904 = !DILocation(line: 244, column: 5, scope: !897)
!905 = distinct !DISubprogram(name: "wideMultiply", scope: !338, file: !338, line: 86, type: !179, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !2)
!906 = !DILocation(line: 88, column: 28, scope: !905)
!907 = !DILocation(line: 88, column: 40, scope: !905)
!908 = !DILocation(line: 88, column: 38, scope: !905)
!909 = !DILocation(line: 89, column: 28, scope: !905)
!910 = !DILocation(line: 89, column: 40, scope: !905)
!911 = !DILocation(line: 89, column: 38, scope: !905)
!912 = !DILocation(line: 90, column: 28, scope: !905)
!913 = !DILocation(line: 90, column: 40, scope: !905)
!914 = !DILocation(line: 90, column: 38, scope: !905)
!915 = !DILocation(line: 91, column: 28, scope: !905)
!916 = !DILocation(line: 91, column: 40, scope: !905)
!917 = !DILocation(line: 91, column: 38, scope: !905)
!918 = !DILocation(line: 93, column: 25, scope: !905)
!919 = !DILocation(line: 94, column: 25, scope: !905)
!920 = !DILocation(line: 94, column: 41, scope: !905)
!921 = !DILocation(line: 94, column: 39, scope: !905)
!922 = !DILocation(line: 94, column: 57, scope: !905)
!923 = !DILocation(line: 94, column: 55, scope: !905)
!924 = !DILocation(line: 95, column: 20, scope: !905)
!925 = !DILocation(line: 95, column: 14, scope: !905)
!926 = !DILocation(line: 95, column: 9, scope: !905)
!927 = !DILocation(line: 97, column: 11, scope: !905)
!928 = !DILocation(line: 97, column: 27, scope: !905)
!929 = !DILocation(line: 97, column: 25, scope: !905)
!930 = !DILocation(line: 97, column: 43, scope: !905)
!931 = !DILocation(line: 97, column: 41, scope: !905)
!932 = !DILocation(line: 97, column: 54, scope: !905)
!933 = !DILocation(line: 97, column: 9, scope: !905)
!934 = !DILocation(line: 98, column: 1, scope: !905)
!935 = distinct !DISubprogram(name: "rep_clz", scope: !338, file: !338, line: 69, type: !179, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !2)
!936 = !DILocation(line: 73, column: 11, scope: !935)
!937 = !DILocation(line: 73, column: 9, scope: !935)
!938 = !DILocation(line: 74, column: 32, scope: !935)
!939 = !DILocation(line: 74, column: 30, scope: !935)
!940 = !DILocation(line: 74, column: 16, scope: !935)
!941 = !DILocation(line: 74, column: 9, scope: !935)
!942 = !DILocation(line: 76, column: 35, scope: !935)
!943 = !DILocation(line: 76, column: 21, scope: !935)
!944 = !DILocation(line: 76, column: 19, scope: !935)
!945 = !DILocation(line: 76, column: 9, scope: !935)
!946 = !DILocation(line: 0, scope: !935)
!947 = !DILocation(line: 78, column: 1, scope: !935)
!948 = distinct !DISubprogram(name: "__divsf3", scope: !16, file: !16, line: 25, type: !179, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!949 = !DILocation(line: 27, column: 36, scope: !948)
!950 = !DILocation(line: 27, column: 45, scope: !948)
!951 = !DILocation(line: 27, column: 64, scope: !948)
!952 = !DILocation(line: 28, column: 36, scope: !948)
!953 = !DILocation(line: 28, column: 45, scope: !948)
!954 = !DILocation(line: 28, column: 64, scope: !948)
!955 = !DILocation(line: 29, column: 33, scope: !948)
!956 = !DILocation(line: 29, column: 44, scope: !948)
!957 = !DILocation(line: 29, column: 42, scope: !948)
!958 = !DILocation(line: 29, column: 54, scope: !948)
!959 = !DILocation(line: 31, column: 26, scope: !948)
!960 = !DILocation(line: 31, column: 35, scope: !948)
!961 = !DILocation(line: 31, column: 11, scope: !948)
!962 = !DILocation(line: 32, column: 26, scope: !948)
!963 = !DILocation(line: 32, column: 35, scope: !948)
!964 = !DILocation(line: 32, column: 11, scope: !948)
!965 = !DILocation(line: 36, column: 18, scope: !948)
!966 = !DILocation(line: 36, column: 22, scope: !948)
!967 = !DILocation(line: 36, column: 40, scope: !948)
!968 = !DILocation(line: 36, column: 52, scope: !948)
!969 = !DILocation(line: 36, column: 56, scope: !948)
!970 = !DILocation(line: 36, column: 9, scope: !948)
!971 = !DILocation(line: 38, column: 28, scope: !948)
!972 = !DILocation(line: 38, column: 37, scope: !948)
!973 = !DILocation(line: 39, column: 28, scope: !948)
!974 = !DILocation(line: 39, column: 37, scope: !948)
!975 = !DILocation(line: 42, column: 18, scope: !948)
!976 = !DILocation(line: 42, column: 13, scope: !948)
!977 = !DILocation(line: 42, column: 43, scope: !948)
!978 = !DILocation(line: 42, column: 52, scope: !948)
!979 = !DILocation(line: 42, column: 35, scope: !948)
!980 = !DILocation(line: 42, column: 28, scope: !948)
!981 = !DILocation(line: 44, column: 18, scope: !948)
!982 = !DILocation(line: 44, column: 13, scope: !948)
!983 = !DILocation(line: 44, column: 43, scope: !948)
!984 = !DILocation(line: 44, column: 52, scope: !948)
!985 = !DILocation(line: 44, column: 35, scope: !948)
!986 = !DILocation(line: 44, column: 28, scope: !948)
!987 = !DILocation(line: 46, column: 18, scope: !948)
!988 = !DILocation(line: 46, column: 13, scope: !948)
!989 = !DILocation(line: 48, column: 22, scope: !948)
!990 = !DILocation(line: 48, column: 17, scope: !948)
!991 = !DILocation(line: 48, column: 40, scope: !948)
!992 = !DILocation(line: 48, column: 33, scope: !948)
!993 = !DILocation(line: 50, column: 38, scope: !948)
!994 = !DILocation(line: 50, column: 25, scope: !948)
!995 = !DILocation(line: 50, column: 18, scope: !948)
!996 = !DILocation(line: 54, column: 18, scope: !948)
!997 = !DILocation(line: 54, column: 13, scope: !948)
!998 = !DILocation(line: 54, column: 36, scope: !948)
!999 = !DILocation(line: 54, column: 29, scope: !948)
!1000 = !DILocation(line: 56, column: 14, scope: !948)
!1001 = !DILocation(line: 56, column: 13, scope: !948)
!1002 = !DILocation(line: 58, column: 18, scope: !948)
!1003 = !DILocation(line: 58, column: 17, scope: !948)
!1004 = !DILocation(line: 58, column: 31, scope: !948)
!1005 = !DILocation(line: 58, column: 24, scope: !948)
!1006 = !DILocation(line: 60, column: 25, scope: !948)
!1007 = !DILocation(line: 60, column: 18, scope: !948)
!1008 = !DILocation(line: 63, column: 14, scope: !948)
!1009 = !DILocation(line: 63, column: 13, scope: !948)
!1010 = !DILocation(line: 63, column: 42, scope: !948)
!1011 = !DILocation(line: 63, column: 27, scope: !948)
!1012 = !DILocation(line: 63, column: 20, scope: !948)
!1013 = !DILocation(line: 68, column: 18, scope: !948)
!1014 = !DILocation(line: 68, column: 13, scope: !948)
!1015 = !DILocation(line: 68, column: 42, scope: !948)
!1016 = !DILocation(line: 68, column: 33, scope: !948)
!1017 = !DILocation(line: 0, scope: !948)
!1018 = !DILocation(line: 69, column: 18, scope: !948)
!1019 = !DILocation(line: 69, column: 13, scope: !948)
!1020 = !DILocation(line: 69, column: 42, scope: !948)
!1021 = !DILocation(line: 69, column: 39, scope: !948)
!1022 = !DILocation(line: 69, column: 33, scope: !948)
!1023 = !DILocation(line: 70, column: 5, scope: !948)
!1024 = !DILocation(line: 75, column: 18, scope: !948)
!1025 = !DILocation(line: 76, column: 18, scope: !948)
!1026 = !DILocation(line: 77, column: 38, scope: !948)
!1027 = !DILocation(line: 77, column: 50, scope: !948)
!1028 = !DILocation(line: 83, column: 34, scope: !948)
!1029 = !DILocation(line: 84, column: 48, scope: !948)
!1030 = !DILocation(line: 94, column: 20, scope: !948)
!1031 = !DILocation(line: 94, column: 43, scope: !948)
!1032 = !DILocation(line: 94, column: 41, scope: !948)
!1033 = !DILocation(line: 94, column: 48, scope: !948)
!1034 = !DILocation(line: 94, column: 18, scope: !948)
!1035 = !DILocation(line: 95, column: 18, scope: !948)
!1036 = !DILocation(line: 95, column: 41, scope: !948)
!1037 = !DILocation(line: 95, column: 39, scope: !948)
!1038 = !DILocation(line: 95, column: 52, scope: !948)
!1039 = !DILocation(line: 96, column: 20, scope: !948)
!1040 = !DILocation(line: 96, column: 43, scope: !948)
!1041 = !DILocation(line: 96, column: 41, scope: !948)
!1042 = !DILocation(line: 96, column: 48, scope: !948)
!1043 = !DILocation(line: 96, column: 18, scope: !948)
!1044 = !DILocation(line: 97, column: 18, scope: !948)
!1045 = !DILocation(line: 97, column: 41, scope: !948)
!1046 = !DILocation(line: 97, column: 39, scope: !948)
!1047 = !DILocation(line: 97, column: 52, scope: !948)
!1048 = !DILocation(line: 98, column: 20, scope: !948)
!1049 = !DILocation(line: 98, column: 43, scope: !948)
!1050 = !DILocation(line: 98, column: 41, scope: !948)
!1051 = !DILocation(line: 98, column: 48, scope: !948)
!1052 = !DILocation(line: 98, column: 18, scope: !948)
!1053 = !DILocation(line: 99, column: 18, scope: !948)
!1054 = !DILocation(line: 99, column: 41, scope: !948)
!1055 = !DILocation(line: 99, column: 39, scope: !948)
!1056 = !DILocation(line: 99, column: 52, scope: !948)
!1057 = !DILocation(line: 107, column: 16, scope: !948)
!1058 = !DILocation(line: 121, column: 22, scope: !948)
!1059 = !DILocation(line: 121, column: 44, scope: !948)
!1060 = !DILocation(line: 121, column: 57, scope: !948)
!1061 = !DILocation(line: 121, column: 43, scope: !948)
!1062 = !DILocation(line: 121, column: 42, scope: !948)
!1063 = !DILocation(line: 121, column: 63, scope: !948)
!1064 = !DILocation(line: 137, column: 18, scope: !948)
!1065 = !DILocation(line: 137, column: 9, scope: !948)
!1066 = !DILocation(line: 138, column: 21, scope: !948)
!1067 = !DILocation(line: 138, column: 34, scope: !948)
!1068 = !DILocation(line: 138, column: 54, scope: !948)
!1069 = !DILocation(line: 138, column: 52, scope: !948)
!1070 = !DILocation(line: 138, column: 41, scope: !948)
!1071 = !DILocation(line: 139, column: 25, scope: !948)
!1072 = !DILocation(line: 140, column: 5, scope: !948)
!1073 = !DILocation(line: 141, column: 18, scope: !948)
!1074 = !DILocation(line: 142, column: 21, scope: !948)
!1075 = !DILocation(line: 142, column: 34, scope: !948)
!1076 = !DILocation(line: 142, column: 54, scope: !948)
!1077 = !DILocation(line: 142, column: 52, scope: !948)
!1078 = !DILocation(line: 142, column: 41, scope: !948)
!1079 = !DILocation(line: 145, column: 50, scope: !948)
!1080 = !DILocation(line: 147, column: 25, scope: !948)
!1081 = !DILocation(line: 147, column: 9, scope: !948)
!1082 = !DILocation(line: 149, column: 31, scope: !948)
!1083 = !DILocation(line: 149, column: 16, scope: !948)
!1084 = !DILocation(line: 149, column: 9, scope: !948)
!1085 = !DILocation(line: 152, column: 30, scope: !948)
!1086 = !DILocation(line: 152, column: 14, scope: !948)
!1087 = !DILocation(line: 155, column: 16, scope: !948)
!1088 = !DILocation(line: 155, column: 9, scope: !948)
!1089 = !DILocation(line: 159, column: 38, scope: !948)
!1090 = !DILocation(line: 159, column: 46, scope: !948)
!1091 = !DILocation(line: 159, column: 44, scope: !948)
!1092 = !DILocation(line: 161, column: 36, scope: !948)
!1093 = !DILocation(line: 163, column: 45, scope: !948)
!1094 = !DILocation(line: 163, column: 19, scope: !948)
!1095 = !DILocation(line: 165, column: 22, scope: !948)
!1096 = !DILocation(line: 165, column: 19, scope: !948)
!1097 = !DILocation(line: 167, column: 34, scope: !948)
!1098 = !DILocation(line: 167, column: 16, scope: !948)
!1099 = !DILocation(line: 167, column: 9, scope: !948)
!1100 = !DILocation(line: 169, column: 1, scope: !948)
!1101 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!1102 = !DILocation(line: 233, column: 16, scope: !1101)
!1103 = !DILocation(line: 233, column: 5, scope: !1101)
!1104 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!1105 = !DILocation(line: 238, column: 16, scope: !1104)
!1106 = !DILocation(line: 238, column: 5, scope: !1104)
!1107 = distinct !DISubprogram(name: "normalize", scope: !338, file: !338, line: 241, type: !179, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!1108 = !DILocation(line: 242, column: 31, scope: !1107)
!1109 = !DILocation(line: 242, column: 23, scope: !1107)
!1110 = !DILocation(line: 242, column: 47, scope: !1107)
!1111 = !DILocation(line: 242, column: 45, scope: !1107)
!1112 = !DILocation(line: 243, column: 18, scope: !1107)
!1113 = !DILocation(line: 244, column: 14, scope: !1107)
!1114 = !DILocation(line: 244, column: 5, scope: !1107)
!1115 = distinct !DISubprogram(name: "rep_clz", scope: !338, file: !338, line: 49, type: !179, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!1116 = !DILocation(line: 50, column: 12, scope: !1115)
!1117 = !DILocation(line: 50, column: 5, scope: !1115)
!1118 = distinct !DISubprogram(name: "__extendhfsf2", scope: !22, file: !22, line: 19, type: !179, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !2)
!1119 = !DILocation(line: 20, column: 12, scope: !1118)
!1120 = !DILocation(line: 20, column: 5, scope: !1118)
!1121 = distinct !DISubprogram(name: "__extendXfYf2__", scope: !1122, file: !1122, line: 41, type: !179, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !2)
!1122 = !DIFile(filename: "../libraries/builtinsfloat/fp_extend_impl.inc", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!1123 = !DILocation(line: 64, column: 28, scope: !1121)
!1124 = !DILocation(line: 65, column: 33, scope: !1121)
!1125 = !DILocation(line: 66, column: 33, scope: !1121)
!1126 = !DILocation(line: 71, column: 26, scope: !1121)
!1127 = !DILocation(line: 71, column: 42, scope: !1121)
!1128 = !DILocation(line: 71, column: 9, scope: !1121)
!1129 = !DILocation(line: 75, column: 21, scope: !1121)
!1130 = !DILocation(line: 75, column: 37, scope: !1121)
!1131 = !DILocation(line: 76, column: 19, scope: !1121)
!1132 = !DILocation(line: 77, column: 5, scope: !1121)
!1133 = !DILocation(line: 79, column: 19, scope: !1121)
!1134 = !DILocation(line: 79, column: 14, scope: !1121)
!1135 = !DILocation(line: 86, column: 19, scope: !1121)
!1136 = !DILocation(line: 87, column: 5, scope: !1121)
!1137 = !DILocation(line: 89, column: 14, scope: !1121)
!1138 = !DILocation(line: 93, column: 41, scope: !1121)
!1139 = !DILocation(line: 93, column: 27, scope: !1121)
!1140 = !{i32 17, i32 33}
!1141 = !DILocation(line: 94, column: 21, scope: !1121)
!1142 = !DILocation(line: 94, column: 65, scope: !1121)
!1143 = !DILocation(line: 94, column: 37, scope: !1121)
!1144 = !DILocation(line: 95, column: 19, scope: !1121)
!1145 = !DILocation(line: 97, column: 48, scope: !1121)
!1146 = !DILocation(line: 97, column: 19, scope: !1121)
!1147 = !DILocation(line: 98, column: 5, scope: !1121)
!1148 = !DILocation(line: 0, scope: !1121)
!1149 = !DILocation(line: 106, column: 42, scope: !1121)
!1150 = !DILocation(line: 106, column: 58, scope: !1121)
!1151 = !DILocation(line: 106, column: 40, scope: !1121)
!1152 = !DILocation(line: 107, column: 12, scope: !1121)
!1153 = !DILocation(line: 107, column: 5, scope: !1121)
!1154 = distinct !DISubprogram(name: "srcToRep", scope: !1155, file: !1155, line: 78, type: !179, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !2)
!1155 = !DIFile(filename: "../libraries/builtinsfloat/fp_extend.h", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!1156 = !DILocation(line: 80, column: 5, scope: !1154)
!1157 = distinct !DISubprogram(name: "dstFromRep", scope: !1155, file: !1155, line: 83, type: !179, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !2)
!1158 = !DILocation(line: 85, column: 16, scope: !1157)
!1159 = !DILocation(line: 85, column: 5, scope: !1157)
!1160 = distinct !DISubprogram(name: "__gnu_h2f_ieee", scope: !22, file: !22, line: 23, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !2)
!1161 = !DILocation(line: 24, column: 12, scope: !1160)
!1162 = !DILocation(line: 24, column: 5, scope: !1160)
!1163 = distinct !DISubprogram(name: "__extendsfdf2", scope: !24, file: !24, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1164 = !DILocation(line: 18, column: 12, scope: !1163)
!1165 = !DILocation(line: 18, column: 5, scope: !1163)
!1166 = distinct !DISubprogram(name: "__extendXfYf2__", scope: !1122, file: !1122, line: 41, type: !179, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1167 = !DILocation(line: 64, column: 28, scope: !1166)
!1168 = !DILocation(line: 65, column: 33, scope: !1166)
!1169 = !DILocation(line: 66, column: 33, scope: !1166)
!1170 = !DILocation(line: 71, column: 26, scope: !1166)
!1171 = !DILocation(line: 71, column: 42, scope: !1166)
!1172 = !DILocation(line: 71, column: 9, scope: !1166)
!1173 = !DILocation(line: 75, column: 21, scope: !1166)
!1174 = !DILocation(line: 75, column: 37, scope: !1166)
!1175 = !DILocation(line: 76, column: 19, scope: !1166)
!1176 = !DILocation(line: 77, column: 5, scope: !1166)
!1177 = !DILocation(line: 79, column: 19, scope: !1166)
!1178 = !DILocation(line: 79, column: 14, scope: !1166)
!1179 = !DILocation(line: 86, column: 19, scope: !1166)
!1180 = !DILocation(line: 87, column: 5, scope: !1166)
!1181 = !DILocation(line: 89, column: 14, scope: !1166)
!1182 = !DILocation(line: 93, column: 27, scope: !1166)
!1183 = !{i32 1, i32 33}
!1184 = !DILocation(line: 94, column: 21, scope: !1166)
!1185 = !DILocation(line: 94, column: 65, scope: !1166)
!1186 = !DILocation(line: 94, column: 37, scope: !1166)
!1187 = !DILocation(line: 95, column: 19, scope: !1166)
!1188 = !DILocation(line: 96, column: 68, scope: !1166)
!1189 = !DILocation(line: 97, column: 22, scope: !1166)
!1190 = !DILocation(line: 97, column: 48, scope: !1166)
!1191 = !DILocation(line: 97, column: 19, scope: !1166)
!1192 = !DILocation(line: 98, column: 5, scope: !1166)
!1193 = !DILocation(line: 0, scope: !1166)
!1194 = !DILocation(line: 106, column: 42, scope: !1166)
!1195 = !DILocation(line: 106, column: 58, scope: !1166)
!1196 = !DILocation(line: 106, column: 40, scope: !1166)
!1197 = !DILocation(line: 107, column: 12, scope: !1166)
!1198 = !DILocation(line: 107, column: 5, scope: !1166)
!1199 = distinct !DISubprogram(name: "srcToRep", scope: !1155, file: !1155, line: 78, type: !179, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1200 = !DILocation(line: 80, column: 16, scope: !1199)
!1201 = !DILocation(line: 80, column: 5, scope: !1199)
!1202 = distinct !DISubprogram(name: "dstFromRep", scope: !1155, file: !1155, line: 83, type: !179, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1203 = !DILocation(line: 85, column: 16, scope: !1202)
!1204 = !DILocation(line: 85, column: 5, scope: !1202)
!1205 = distinct !DISubprogram(name: "__fixdfdi", scope: !28, file: !28, line: 23, type: !179, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !2)
!1206 = !DILocation(line: 25, column: 11, scope: !1205)
!1207 = !DILocation(line: 25, column: 9, scope: !1205)
!1208 = !DILocation(line: 26, column: 30, scope: !1205)
!1209 = !DILocation(line: 26, column: 17, scope: !1205)
!1210 = !DILocation(line: 26, column: 16, scope: !1205)
!1211 = !DILocation(line: 26, column: 9, scope: !1205)
!1212 = !DILocation(line: 28, column: 12, scope: !1205)
!1213 = !DILocation(line: 28, column: 5, scope: !1205)
!1214 = !DILocation(line: 0, scope: !1205)
!1215 = !DILocation(line: 29, column: 1, scope: !1205)
!1216 = distinct !DISubprogram(name: "__fixdfsi", scope: !30, file: !30, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !2)
!1217 = !DILocation(line: 21, column: 12, scope: !1216)
!1218 = !DILocation(line: 21, column: 5, scope: !1216)
!1219 = distinct !DISubprogram(name: "__fixint", scope: !1220, file: !1220, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !29, retainedNodes: !2)
!1220 = !DIFile(filename: "../libraries/builtinsfloat/fp_fixint_impl.inc", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!1221 = !DILocation(line: 21, column: 24, scope: !1219)
!1222 = !DILocation(line: 23, column: 27, scope: !1219)
!1223 = !DILocation(line: 24, column: 32, scope: !1219)
!1224 = !DILocation(line: 24, column: 26, scope: !1219)
!1225 = !DILocation(line: 25, column: 37, scope: !1219)
!1226 = !DILocation(line: 25, column: 56, scope: !1219)
!1227 = !DILocation(line: 28, column: 18, scope: !1219)
!1228 = !DILocation(line: 28, column: 9, scope: !1219)
!1229 = !DILocation(line: 29, column: 9, scope: !1219)
!1230 = !DILocation(line: 32, column: 28, scope: !1219)
!1231 = !DILocation(line: 32, column: 9, scope: !1219)
!1232 = !DILocation(line: 33, column: 16, scope: !1219)
!1233 = !DILocation(line: 33, column: 9, scope: !1219)
!1234 = !DILocation(line: 37, column: 9, scope: !1219)
!1235 = !DILocation(line: 38, column: 56, scope: !1219)
!1236 = !DILocation(line: 38, column: 36, scope: !1219)
!1237 = !DILocation(line: 38, column: 16, scope: !1219)
!1238 = !DILocation(line: 38, column: 9, scope: !1219)
!1239 = !DILocation(line: 40, column: 9, scope: !1219)
!1240 = !DILocation(line: 0, scope: !1219)
!1241 = !DILocation(line: 41, column: 1, scope: !1219)
!1242 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !29, retainedNodes: !2)
!1243 = !DILocation(line: 233, column: 16, scope: !1242)
!1244 = !DILocation(line: 233, column: 5, scope: !1242)
!1245 = distinct !DISubprogram(name: "__fixsfdi", scope: !34, file: !34, line: 24, type: !179, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !2)
!1246 = !DILocation(line: 26, column: 11, scope: !1245)
!1247 = !DILocation(line: 26, column: 9, scope: !1245)
!1248 = !DILocation(line: 27, column: 30, scope: !1245)
!1249 = !DILocation(line: 27, column: 17, scope: !1245)
!1250 = !DILocation(line: 27, column: 16, scope: !1245)
!1251 = !DILocation(line: 27, column: 9, scope: !1245)
!1252 = !DILocation(line: 29, column: 12, scope: !1245)
!1253 = !DILocation(line: 29, column: 5, scope: !1245)
!1254 = !DILocation(line: 0, scope: !1245)
!1255 = !DILocation(line: 30, column: 1, scope: !1245)
!1256 = distinct !DISubprogram(name: "__fixsfsi", scope: !36, file: !36, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1257 = !DILocation(line: 21, column: 12, scope: !1256)
!1258 = !DILocation(line: 21, column: 5, scope: !1256)
!1259 = distinct !DISubprogram(name: "__fixint", scope: !1220, file: !1220, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1260 = !DILocation(line: 21, column: 24, scope: !1259)
!1261 = !DILocation(line: 23, column: 27, scope: !1259)
!1262 = !DILocation(line: 24, column: 32, scope: !1259)
!1263 = !DILocation(line: 24, column: 52, scope: !1259)
!1264 = !DILocation(line: 25, column: 37, scope: !1259)
!1265 = !DILocation(line: 25, column: 56, scope: !1259)
!1266 = !DILocation(line: 28, column: 18, scope: !1259)
!1267 = !DILocation(line: 28, column: 9, scope: !1259)
!1268 = !DILocation(line: 29, column: 9, scope: !1259)
!1269 = !DILocation(line: 32, column: 28, scope: !1259)
!1270 = !DILocation(line: 32, column: 9, scope: !1259)
!1271 = !DILocation(line: 33, column: 16, scope: !1259)
!1272 = !DILocation(line: 33, column: 9, scope: !1259)
!1273 = !DILocation(line: 37, column: 18, scope: !1259)
!1274 = !DILocation(line: 37, column: 9, scope: !1259)
!1275 = !DILocation(line: 38, column: 56, scope: !1259)
!1276 = !DILocation(line: 38, column: 36, scope: !1259)
!1277 = !DILocation(line: 38, column: 21, scope: !1259)
!1278 = !DILocation(line: 38, column: 9, scope: !1259)
!1279 = !DILocation(line: 40, column: 59, scope: !1259)
!1280 = !DILocation(line: 40, column: 46, scope: !1259)
!1281 = !DILocation(line: 40, column: 21, scope: !1259)
!1282 = !DILocation(line: 40, column: 9, scope: !1259)
!1283 = !DILocation(line: 0, scope: !1259)
!1284 = !DILocation(line: 41, column: 1, scope: !1259)
!1285 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1286 = !DILocation(line: 233, column: 16, scope: !1285)
!1287 = !DILocation(line: 233, column: 5, scope: !1285)
!1288 = distinct !DISubprogram(name: "__fixunsdfdi", scope: !46, file: !46, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !2)
!1289 = !DILocation(line: 24, column: 11, scope: !1288)
!1290 = !DILocation(line: 24, column: 9, scope: !1288)
!1291 = !DILocation(line: 24, column: 19, scope: !1288)
!1292 = !DILocation(line: 25, column: 21, scope: !1288)
!1293 = !DILocation(line: 25, column: 19, scope: !1288)
!1294 = !DILocation(line: 26, column: 22, scope: !1288)
!1295 = !DILocation(line: 26, column: 35, scope: !1288)
!1296 = !DILocation(line: 26, column: 20, scope: !1288)
!1297 = !DILocation(line: 26, column: 18, scope: !1288)
!1298 = !DILocation(line: 27, column: 13, scope: !1288)
!1299 = !DILocation(line: 27, column: 26, scope: !1288)
!1300 = !DILocation(line: 27, column: 35, scope: !1288)
!1301 = !DILocation(line: 27, column: 33, scope: !1288)
!1302 = !DILocation(line: 27, column: 5, scope: !1288)
!1303 = !DILocation(line: 0, scope: !1288)
!1304 = !DILocation(line: 28, column: 1, scope: !1288)
!1305 = distinct !DISubprogram(name: "__fixunsdfsi", scope: !48, file: !48, line: 19, type: !179, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !2)
!1306 = !DILocation(line: 20, column: 12, scope: !1305)
!1307 = !DILocation(line: 20, column: 5, scope: !1305)
!1308 = distinct !DISubprogram(name: "__fixuint", scope: !1309, file: !1309, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !2)
!1309 = !DIFile(filename: "../libraries/builtinsfloat/fp_fixuint_impl.inc", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!1310 = !DILocation(line: 19, column: 24, scope: !1308)
!1311 = !DILocation(line: 21, column: 22, scope: !1308)
!1312 = !DILocation(line: 22, column: 32, scope: !1308)
!1313 = !DILocation(line: 22, column: 26, scope: !1308)
!1314 = !DILocation(line: 23, column: 37, scope: !1308)
!1315 = !DILocation(line: 23, column: 56, scope: !1308)
!1316 = !DILocation(line: 26, column: 20, scope: !1308)
!1317 = !DILocation(line: 26, column: 32, scope: !1308)
!1318 = !DILocation(line: 26, column: 9, scope: !1308)
!1319 = !DILocation(line: 27, column: 9, scope: !1308)
!1320 = !DILocation(line: 30, column: 28, scope: !1308)
!1321 = !DILocation(line: 30, column: 9, scope: !1308)
!1322 = !DILocation(line: 31, column: 9, scope: !1308)
!1323 = !DILocation(line: 35, column: 9, scope: !1308)
!1324 = !DILocation(line: 36, column: 48, scope: !1308)
!1325 = !DILocation(line: 36, column: 28, scope: !1308)
!1326 = !DILocation(line: 36, column: 16, scope: !1308)
!1327 = !DILocation(line: 36, column: 9, scope: !1308)
!1328 = !DILocation(line: 38, column: 9, scope: !1308)
!1329 = !DILocation(line: 0, scope: !1308)
!1330 = !DILocation(line: 39, column: 1, scope: !1308)
!1331 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !2)
!1332 = !DILocation(line: 233, column: 16, scope: !1331)
!1333 = !DILocation(line: 233, column: 5, scope: !1331)
!1334 = distinct !DISubprogram(name: "__fixunssfdi", scope: !52, file: !52, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !2)
!1335 = !DILocation(line: 24, column: 11, scope: !1334)
!1336 = !DILocation(line: 24, column: 9, scope: !1334)
!1337 = !DILocation(line: 24, column: 20, scope: !1334)
!1338 = !DILocation(line: 25, column: 17, scope: !1334)
!1339 = !DILocation(line: 26, column: 22, scope: !1334)
!1340 = !DILocation(line: 26, column: 19, scope: !1334)
!1341 = !DILocation(line: 27, column: 23, scope: !1334)
!1342 = !DILocation(line: 27, column: 36, scope: !1334)
!1343 = !DILocation(line: 27, column: 21, scope: !1334)
!1344 = !DILocation(line: 27, column: 18, scope: !1334)
!1345 = !DILocation(line: 28, column: 13, scope: !1334)
!1346 = !DILocation(line: 28, column: 26, scope: !1334)
!1347 = !DILocation(line: 28, column: 35, scope: !1334)
!1348 = !DILocation(line: 28, column: 33, scope: !1334)
!1349 = !DILocation(line: 28, column: 5, scope: !1334)
!1350 = !DILocation(line: 0, scope: !1334)
!1351 = !DILocation(line: 29, column: 1, scope: !1334)
!1352 = distinct !DISubprogram(name: "__fixunssfsi", scope: !54, file: !54, line: 23, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !2)
!1353 = !DILocation(line: 24, column: 12, scope: !1352)
!1354 = !DILocation(line: 24, column: 5, scope: !1352)
!1355 = distinct !DISubprogram(name: "__fixuint", scope: !1309, file: !1309, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !2)
!1356 = !DILocation(line: 19, column: 24, scope: !1355)
!1357 = !DILocation(line: 21, column: 22, scope: !1355)
!1358 = !DILocation(line: 22, column: 32, scope: !1355)
!1359 = !DILocation(line: 22, column: 52, scope: !1355)
!1360 = !DILocation(line: 23, column: 37, scope: !1355)
!1361 = !DILocation(line: 23, column: 56, scope: !1355)
!1362 = !DILocation(line: 26, column: 20, scope: !1355)
!1363 = !DILocation(line: 26, column: 32, scope: !1355)
!1364 = !DILocation(line: 26, column: 9, scope: !1355)
!1365 = !DILocation(line: 27, column: 9, scope: !1355)
!1366 = !DILocation(line: 30, column: 28, scope: !1355)
!1367 = !DILocation(line: 30, column: 9, scope: !1355)
!1368 = !DILocation(line: 31, column: 9, scope: !1355)
!1369 = !DILocation(line: 35, column: 18, scope: !1355)
!1370 = !DILocation(line: 35, column: 9, scope: !1355)
!1371 = !DILocation(line: 36, column: 48, scope: !1355)
!1372 = !DILocation(line: 36, column: 28, scope: !1355)
!1373 = !DILocation(line: 36, column: 9, scope: !1355)
!1374 = !DILocation(line: 38, column: 52, scope: !1355)
!1375 = !DILocation(line: 38, column: 39, scope: !1355)
!1376 = !DILocation(line: 38, column: 9, scope: !1355)
!1377 = !DILocation(line: 0, scope: !1355)
!1378 = !DILocation(line: 39, column: 1, scope: !1355)
!1379 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !2)
!1380 = !DILocation(line: 233, column: 16, scope: !1379)
!1381 = !DILocation(line: 233, column: 5, scope: !1379)
!1382 = distinct !DISubprogram(name: "__fixunsxfdi", scope: !64, file: !64, line: 34, type: !179, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !2)
!1383 = !DILocation(line: 37, column: 8, scope: !1382)
!1384 = !DILocation(line: 37, column: 10, scope: !1382)
!1385 = !DILocation(line: 38, column: 19, scope: !1382)
!1386 = !DILocation(line: 38, column: 26, scope: !1382)
!1387 = !DILocation(line: 38, column: 30, scope: !1382)
!1388 = !DILocation(line: 38, column: 44, scope: !1382)
!1389 = !DILocation(line: 39, column: 11, scope: !1382)
!1390 = !DILocation(line: 39, column: 15, scope: !1382)
!1391 = !DILocation(line: 39, column: 24, scope: !1382)
!1392 = !DILocation(line: 39, column: 31, scope: !1382)
!1393 = !DILocation(line: 39, column: 35, scope: !1382)
!1394 = !DILocation(line: 39, column: 9, scope: !1382)
!1395 = !DILocation(line: 40, column: 9, scope: !1382)
!1396 = !DILocation(line: 41, column: 21, scope: !1382)
!1397 = !DILocation(line: 41, column: 9, scope: !1382)
!1398 = !DILocation(line: 42, column: 9, scope: !1382)
!1399 = !DILocation(line: 43, column: 21, scope: !1382)
!1400 = !DILocation(line: 43, column: 32, scope: !1382)
!1401 = !DILocation(line: 43, column: 25, scope: !1382)
!1402 = !DILocation(line: 43, column: 5, scope: !1382)
!1403 = !DILocation(line: 0, scope: !1382)
!1404 = !DILocation(line: 44, column: 1, scope: !1382)
!1405 = distinct !DISubprogram(name: "__fixunsxfsi", scope: !66, file: !66, line: 33, type: !179, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !2)
!1406 = !DILocation(line: 36, column: 8, scope: !1405)
!1407 = !DILocation(line: 36, column: 10, scope: !1405)
!1408 = !DILocation(line: 37, column: 19, scope: !1405)
!1409 = !DILocation(line: 37, column: 26, scope: !1405)
!1410 = !DILocation(line: 37, column: 30, scope: !1405)
!1411 = !DILocation(line: 37, column: 44, scope: !1405)
!1412 = !DILocation(line: 38, column: 11, scope: !1405)
!1413 = !DILocation(line: 38, column: 15, scope: !1405)
!1414 = !DILocation(line: 38, column: 24, scope: !1405)
!1415 = !DILocation(line: 38, column: 31, scope: !1405)
!1416 = !DILocation(line: 38, column: 35, scope: !1405)
!1417 = !DILocation(line: 38, column: 9, scope: !1405)
!1418 = !DILocation(line: 39, column: 9, scope: !1405)
!1419 = !DILocation(line: 40, column: 21, scope: !1405)
!1420 = !DILocation(line: 40, column: 9, scope: !1405)
!1421 = !DILocation(line: 41, column: 9, scope: !1405)
!1422 = !DILocation(line: 42, column: 21, scope: !1405)
!1423 = !DILocation(line: 42, column: 23, scope: !1405)
!1424 = !DILocation(line: 42, column: 35, scope: !1405)
!1425 = !DILocation(line: 42, column: 28, scope: !1405)
!1426 = !DILocation(line: 42, column: 5, scope: !1405)
!1427 = !DILocation(line: 0, scope: !1405)
!1428 = !DILocation(line: 43, column: 1, scope: !1405)
!1429 = distinct !DISubprogram(name: "__fixxfdi", scope: !70, file: !70, line: 31, type: !179, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !2)
!1430 = !DILocation(line: 36, column: 8, scope: !1429)
!1431 = !DILocation(line: 36, column: 10, scope: !1429)
!1432 = !DILocation(line: 37, column: 19, scope: !1429)
!1433 = !DILocation(line: 37, column: 26, scope: !1429)
!1434 = !DILocation(line: 37, column: 30, scope: !1429)
!1435 = !DILocation(line: 37, column: 44, scope: !1429)
!1436 = !DILocation(line: 38, column: 11, scope: !1429)
!1437 = !DILocation(line: 38, column: 9, scope: !1429)
!1438 = !DILocation(line: 39, column: 9, scope: !1429)
!1439 = !DILocation(line: 40, column: 21, scope: !1429)
!1440 = !DILocation(line: 40, column: 9, scope: !1429)
!1441 = !DILocation(line: 41, column: 18, scope: !1429)
!1442 = !DILocation(line: 41, column: 16, scope: !1429)
!1443 = !DILocation(line: 41, column: 9, scope: !1429)
!1444 = !DILocation(line: 42, column: 32, scope: !1429)
!1445 = !DILocation(line: 42, column: 39, scope: !1429)
!1446 = !DILocation(line: 42, column: 57, scope: !1429)
!1447 = !DILocation(line: 42, column: 16, scope: !1429)
!1448 = !DILocation(line: 43, column: 25, scope: !1429)
!1449 = !DILocation(line: 44, column: 26, scope: !1429)
!1450 = !DILocation(line: 44, column: 19, scope: !1429)
!1451 = !DILocation(line: 45, column: 15, scope: !1429)
!1452 = !DILocation(line: 45, column: 20, scope: !1429)
!1453 = !DILocation(line: 45, column: 5, scope: !1429)
!1454 = !DILocation(line: 0, scope: !1429)
!1455 = !DILocation(line: 46, column: 1, scope: !1429)
!1456 = distinct !DISubprogram(name: "__floatdidf", scope: !74, file: !74, line: 33, type: !179, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !2)
!1457 = !DILocation(line: 38, column: 36, scope: !1456)
!1458 = !DILocation(line: 40, column: 37, scope: !1456)
!1459 = !DILocation(line: 40, column: 25, scope: !1456)
!1460 = !DILocation(line: 40, column: 44, scope: !1456)
!1461 = !DILocation(line: 41, column: 16, scope: !1456)
!1462 = !DILocation(line: 41, column: 9, scope: !1456)
!1463 = !DILocation(line: 41, column: 11, scope: !1456)
!1464 = !DILocation(line: 43, column: 33, scope: !1456)
!1465 = !DILocation(line: 43, column: 49, scope: !1456)
!1466 = !DILocation(line: 43, column: 43, scope: !1456)
!1467 = !DILocation(line: 44, column: 5, scope: !1456)
!1468 = distinct !DISubprogram(name: "__floatdisf", scope: !76, file: !76, line: 28, type: !179, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !2)
!1469 = !DILocation(line: 30, column: 11, scope: !1468)
!1470 = !DILocation(line: 30, column: 9, scope: !1468)
!1471 = !DILocation(line: 31, column: 9, scope: !1468)
!1472 = !DILocation(line: 33, column: 24, scope: !1468)
!1473 = !DILocation(line: 34, column: 12, scope: !1468)
!1474 = !DILocation(line: 34, column: 17, scope: !1468)
!1475 = !DILocation(line: 35, column: 18, scope: !1468)
!1476 = !{i64 0, i64 65}
!1477 = !DILocation(line: 36, column: 16, scope: !1468)
!1478 = !DILocation(line: 37, column: 12, scope: !1468)
!1479 = !DILocation(line: 37, column: 9, scope: !1468)
!1480 = !DILocation(line: 35, column: 16, scope: !1468)
!1481 = !DILocation(line: 47, column: 9, scope: !1468)
!1482 = !DILocation(line: 50, column: 15, scope: !1468)
!1483 = !DILocation(line: 51, column: 13, scope: !1468)
!1484 = !DILocation(line: 53, column: 13, scope: !1468)
!1485 = !DILocation(line: 55, column: 35, scope: !1468)
!1486 = !DILocation(line: 55, column: 28, scope: !1468)
!1487 = !DILocation(line: 56, column: 62, scope: !1468)
!1488 = !DILocation(line: 56, column: 37, scope: !1468)
!1489 = !DILocation(line: 56, column: 21, scope: !1468)
!1490 = !DILocation(line: 56, column: 70, scope: !1468)
!1491 = !DILocation(line: 56, column: 17, scope: !1468)
!1492 = !DILocation(line: 55, column: 56, scope: !1468)
!1493 = !DILocation(line: 57, column: 9, scope: !1468)
!1494 = !DILocation(line: 0, scope: !1468)
!1495 = !DILocation(line: 59, column: 22, scope: !1468)
!1496 = !DILocation(line: 59, column: 14, scope: !1468)
!1497 = !DILocation(line: 59, column: 11, scope: !1468)
!1498 = !DILocation(line: 60, column: 9, scope: !1468)
!1499 = !DILocation(line: 61, column: 11, scope: !1468)
!1500 = !DILocation(line: 63, column: 15, scope: !1468)
!1501 = !DILocation(line: 63, column: 13, scope: !1468)
!1502 = !DILocation(line: 65, column: 15, scope: !1468)
!1503 = !DILocation(line: 66, column: 13, scope: !1468)
!1504 = !DILocation(line: 67, column: 9, scope: !1468)
!1505 = !DILocation(line: 69, column: 5, scope: !1468)
!1506 = !DILocation(line: 72, column: 29, scope: !1468)
!1507 = !DILocation(line: 72, column: 11, scope: !1468)
!1508 = !DILocation(line: 76, column: 13, scope: !1468)
!1509 = !DILocation(line: 76, column: 23, scope: !1468)
!1510 = !DILocation(line: 77, column: 23, scope: !1468)
!1511 = !DILocation(line: 76, column: 37, scope: !1468)
!1512 = !DILocation(line: 78, column: 23, scope: !1468)
!1513 = !DILocation(line: 77, column: 36, scope: !1468)
!1514 = !DILocation(line: 79, column: 15, scope: !1468)
!1515 = !DILocation(line: 79, column: 5, scope: !1468)
!1516 = !DILocation(line: 80, column: 1, scope: !1468)
!1517 = distinct !DISubprogram(name: "__floatdixf", scope: !80, file: !80, line: 30, type: !179, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !2)
!1518 = !DILocation(line: 32, column: 11, scope: !1517)
!1519 = !DILocation(line: 32, column: 9, scope: !1517)
!1520 = !DILocation(line: 33, column: 9, scope: !1517)
!1521 = !DILocation(line: 36, column: 17, scope: !1517)
!1522 = !DILocation(line: 37, column: 15, scope: !1517)
!1523 = !DILocation(line: 42, column: 22, scope: !1517)
!1524 = !DILocation(line: 43, column: 15, scope: !1517)
!1525 = !DILocation(line: 43, column: 5, scope: !1517)
!1526 = !DILocation(line: 0, scope: !1517)
!1527 = !DILocation(line: 44, column: 1, scope: !1517)
!1528 = distinct !DISubprogram(name: "__floatsidf", scope: !82, file: !82, line: 24, type: !179, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !2)
!1529 = !DILocation(line: 29, column: 11, scope: !1528)
!1530 = !DILocation(line: 29, column: 9, scope: !1528)
!1531 = !DILocation(line: 30, column: 16, scope: !1528)
!1532 = !DILocation(line: 30, column: 9, scope: !1528)
!1533 = !DILocation(line: 34, column: 11, scope: !1528)
!1534 = !DILocation(line: 34, column: 9, scope: !1528)
!1535 = !DILocation(line: 36, column: 13, scope: !1528)
!1536 = !DILocation(line: 37, column: 5, scope: !1528)
!1537 = !DILocation(line: 0, scope: !1528)
!1538 = !DILocation(line: 40, column: 41, scope: !1528)
!1539 = !DILocation(line: 46, column: 39, scope: !1528)
!1540 = !DILocation(line: 47, column: 14, scope: !1528)
!1541 = !DILocation(line: 47, column: 37, scope: !1528)
!1542 = !DILocation(line: 47, column: 46, scope: !1528)
!1543 = !DILocation(line: 50, column: 32, scope: !1528)
!1544 = !DILocation(line: 50, column: 15, scope: !1528)
!1545 = !DILocation(line: 50, column: 48, scope: !1528)
!1546 = !DILocation(line: 50, column: 12, scope: !1528)
!1547 = !DILocation(line: 52, column: 27, scope: !1528)
!1548 = !DILocation(line: 52, column: 12, scope: !1528)
!1549 = !DILocation(line: 52, column: 5, scope: !1528)
!1550 = !DILocation(line: 53, column: 1, scope: !1528)
!1551 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !81, retainedNodes: !2)
!1552 = !DILocation(line: 238, column: 16, scope: !1551)
!1553 = !DILocation(line: 238, column: 5, scope: !1551)
!1554 = distinct !DISubprogram(name: "__floatsisf", scope: !84, file: !84, line: 24, type: !179, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !2)
!1555 = !DILocation(line: 29, column: 11, scope: !1554)
!1556 = !DILocation(line: 29, column: 9, scope: !1554)
!1557 = !DILocation(line: 30, column: 16, scope: !1554)
!1558 = !DILocation(line: 30, column: 9, scope: !1554)
!1559 = !DILocation(line: 34, column: 11, scope: !1554)
!1560 = !DILocation(line: 34, column: 9, scope: !1554)
!1561 = !DILocation(line: 36, column: 13, scope: !1554)
!1562 = !DILocation(line: 37, column: 5, scope: !1554)
!1563 = !DILocation(line: 0, scope: !1554)
!1564 = !DILocation(line: 40, column: 41, scope: !1554)
!1565 = !DILocation(line: 44, column: 18, scope: !1554)
!1566 = !DILocation(line: 44, column: 9, scope: !1554)
!1567 = !DILocation(line: 45, column: 43, scope: !1554)
!1568 = !DILocation(line: 46, column: 27, scope: !1554)
!1569 = !DILocation(line: 46, column: 36, scope: !1554)
!1570 = !DILocation(line: 47, column: 5, scope: !1554)
!1571 = !DILocation(line: 48, column: 36, scope: !1554)
!1572 = !DILocation(line: 49, column: 27, scope: !1554)
!1573 = !DILocation(line: 49, column: 36, scope: !1554)
!1574 = !DILocation(line: 50, column: 46, scope: !1554)
!1575 = !DILocation(line: 50, column: 32, scope: !1554)
!1576 = !DILocation(line: 51, column: 19, scope: !1554)
!1577 = !DILocation(line: 51, column: 13, scope: !1554)
!1578 = !DILocation(line: 51, column: 36, scope: !1554)
!1579 = !DILocation(line: 51, column: 30, scope: !1554)
!1580 = !DILocation(line: 52, column: 19, scope: !1554)
!1581 = !DILocation(line: 52, column: 13, scope: !1554)
!1582 = !DILocation(line: 52, column: 48, scope: !1554)
!1583 = !DILocation(line: 52, column: 38, scope: !1554)
!1584 = !DILocation(line: 52, column: 31, scope: !1554)
!1585 = !DILocation(line: 56, column: 48, scope: !1554)
!1586 = !DILocation(line: 56, column: 12, scope: !1554)
!1587 = !DILocation(line: 58, column: 27, scope: !1554)
!1588 = !DILocation(line: 58, column: 12, scope: !1554)
!1589 = !DILocation(line: 58, column: 5, scope: !1554)
!1590 = !DILocation(line: 59, column: 1, scope: !1554)
!1591 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !2)
!1592 = !DILocation(line: 238, column: 16, scope: !1591)
!1593 = !DILocation(line: 238, column: 5, scope: !1591)
!1594 = distinct !DISubprogram(name: "__floatundidf", scope: !96, file: !96, line: 33, type: !179, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !2)
!1595 = !DILocation(line: 39, column: 37, scope: !1594)
!1596 = !DILocation(line: 40, column: 37, scope: !1594)
!1597 = !DILocation(line: 42, column: 17, scope: !1594)
!1598 = !DILocation(line: 42, column: 10, scope: !1594)
!1599 = !DILocation(line: 42, column: 12, scope: !1594)
!1600 = !DILocation(line: 43, column: 16, scope: !1594)
!1601 = !DILocation(line: 43, column: 9, scope: !1594)
!1602 = !DILocation(line: 43, column: 11, scope: !1594)
!1603 = !DILocation(line: 45, column: 33, scope: !1594)
!1604 = !DILocation(line: 45, column: 35, scope: !1594)
!1605 = !DILocation(line: 45, column: 63, scope: !1594)
!1606 = !DILocation(line: 45, column: 57, scope: !1594)
!1607 = !DILocation(line: 46, column: 5, scope: !1594)
!1608 = distinct !DISubprogram(name: "__floatundisf", scope: !98, file: !98, line: 28, type: !179, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !2)
!1609 = !DILocation(line: 30, column: 11, scope: !1608)
!1610 = !DILocation(line: 30, column: 9, scope: !1608)
!1611 = !DILocation(line: 31, column: 9, scope: !1608)
!1612 = !DILocation(line: 33, column: 18, scope: !1608)
!1613 = !DILocation(line: 34, column: 16, scope: !1608)
!1614 = !DILocation(line: 35, column: 12, scope: !1608)
!1615 = !DILocation(line: 35, column: 9, scope: !1608)
!1616 = !DILocation(line: 33, column: 16, scope: !1608)
!1617 = !DILocation(line: 45, column: 9, scope: !1608)
!1618 = !DILocation(line: 48, column: 15, scope: !1608)
!1619 = !DILocation(line: 49, column: 13, scope: !1608)
!1620 = !DILocation(line: 51, column: 13, scope: !1608)
!1621 = !DILocation(line: 53, column: 27, scope: !1608)
!1622 = !DILocation(line: 53, column: 20, scope: !1608)
!1623 = !DILocation(line: 54, column: 62, scope: !1608)
!1624 = !DILocation(line: 54, column: 37, scope: !1608)
!1625 = !DILocation(line: 54, column: 21, scope: !1608)
!1626 = !DILocation(line: 54, column: 70, scope: !1608)
!1627 = !DILocation(line: 54, column: 17, scope: !1608)
!1628 = !DILocation(line: 53, column: 48, scope: !1608)
!1629 = !DILocation(line: 55, column: 9, scope: !1608)
!1630 = !DILocation(line: 57, column: 22, scope: !1608)
!1631 = !DILocation(line: 57, column: 14, scope: !1608)
!1632 = !DILocation(line: 57, column: 11, scope: !1608)
!1633 = !DILocation(line: 58, column: 9, scope: !1608)
!1634 = !DILocation(line: 59, column: 11, scope: !1608)
!1635 = !DILocation(line: 61, column: 15, scope: !1608)
!1636 = !DILocation(line: 61, column: 13, scope: !1608)
!1637 = !DILocation(line: 63, column: 15, scope: !1608)
!1638 = !DILocation(line: 64, column: 13, scope: !1608)
!1639 = !DILocation(line: 65, column: 9, scope: !1608)
!1640 = !DILocation(line: 0, scope: !1608)
!1641 = !DILocation(line: 67, column: 5, scope: !1608)
!1642 = !DILocation(line: 70, column: 29, scope: !1608)
!1643 = !DILocation(line: 70, column: 11, scope: !1608)
!1644 = !DILocation(line: 74, column: 23, scope: !1608)
!1645 = !DILocation(line: 75, column: 23, scope: !1608)
!1646 = !DILocation(line: 74, column: 36, scope: !1608)
!1647 = !DILocation(line: 76, column: 15, scope: !1608)
!1648 = !DILocation(line: 76, column: 5, scope: !1608)
!1649 = !DILocation(line: 77, column: 1, scope: !1608)
!1650 = distinct !DISubprogram(name: "__floatundixf", scope: !102, file: !102, line: 29, type: !179, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !2)
!1651 = !DILocation(line: 31, column: 11, scope: !1650)
!1652 = !DILocation(line: 31, column: 9, scope: !1650)
!1653 = !DILocation(line: 32, column: 9, scope: !1650)
!1654 = !DILocation(line: 34, column: 15, scope: !1650)
!1655 = !DILocation(line: 38, column: 22, scope: !1650)
!1656 = !DILocation(line: 39, column: 15, scope: !1650)
!1657 = !DILocation(line: 39, column: 5, scope: !1650)
!1658 = !DILocation(line: 0, scope: !1650)
!1659 = !DILocation(line: 40, column: 1, scope: !1650)
!1660 = distinct !DISubprogram(name: "__floatunsidf", scope: !104, file: !104, line: 24, type: !179, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !2)
!1661 = !DILocation(line: 29, column: 11, scope: !1660)
!1662 = !DILocation(line: 29, column: 9, scope: !1660)
!1663 = !DILocation(line: 29, column: 24, scope: !1660)
!1664 = !DILocation(line: 29, column: 17, scope: !1660)
!1665 = !DILocation(line: 32, column: 41, scope: !1660)
!1666 = !DILocation(line: 36, column: 39, scope: !1660)
!1667 = !DILocation(line: 37, column: 14, scope: !1660)
!1668 = !DILocation(line: 37, column: 23, scope: !1660)
!1669 = !DILocation(line: 37, column: 32, scope: !1660)
!1670 = !DILocation(line: 40, column: 32, scope: !1660)
!1671 = !DILocation(line: 40, column: 15, scope: !1660)
!1672 = !DILocation(line: 40, column: 48, scope: !1660)
!1673 = !DILocation(line: 40, column: 12, scope: !1660)
!1674 = !DILocation(line: 41, column: 12, scope: !1660)
!1675 = !DILocation(line: 41, column: 5, scope: !1660)
!1676 = !DILocation(line: 0, scope: !1660)
!1677 = !DILocation(line: 42, column: 1, scope: !1660)
!1678 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !2)
!1679 = !DILocation(line: 238, column: 16, scope: !1678)
!1680 = !DILocation(line: 238, column: 5, scope: !1678)
!1681 = distinct !DISubprogram(name: "__floatunsisf", scope: !106, file: !106, line: 24, type: !179, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !2)
!1682 = !DILocation(line: 29, column: 11, scope: !1681)
!1683 = !DILocation(line: 29, column: 9, scope: !1681)
!1684 = !DILocation(line: 29, column: 24, scope: !1681)
!1685 = !DILocation(line: 29, column: 17, scope: !1681)
!1686 = !DILocation(line: 32, column: 41, scope: !1681)
!1687 = !DILocation(line: 36, column: 18, scope: !1681)
!1688 = !DILocation(line: 36, column: 9, scope: !1681)
!1689 = !DILocation(line: 37, column: 43, scope: !1681)
!1690 = !DILocation(line: 38, column: 27, scope: !1681)
!1691 = !DILocation(line: 38, column: 36, scope: !1681)
!1692 = !DILocation(line: 39, column: 5, scope: !1681)
!1693 = !DILocation(line: 40, column: 36, scope: !1681)
!1694 = !DILocation(line: 41, column: 27, scope: !1681)
!1695 = !DILocation(line: 41, column: 36, scope: !1681)
!1696 = !DILocation(line: 42, column: 46, scope: !1681)
!1697 = !DILocation(line: 42, column: 32, scope: !1681)
!1698 = !DILocation(line: 43, column: 19, scope: !1681)
!1699 = !DILocation(line: 43, column: 13, scope: !1681)
!1700 = !DILocation(line: 43, column: 36, scope: !1681)
!1701 = !DILocation(line: 43, column: 30, scope: !1681)
!1702 = !DILocation(line: 0, scope: !1681)
!1703 = !DILocation(line: 44, column: 19, scope: !1681)
!1704 = !DILocation(line: 44, column: 13, scope: !1681)
!1705 = !DILocation(line: 44, column: 48, scope: !1681)
!1706 = !DILocation(line: 44, column: 38, scope: !1681)
!1707 = !DILocation(line: 44, column: 31, scope: !1681)
!1708 = !DILocation(line: 48, column: 48, scope: !1681)
!1709 = !DILocation(line: 48, column: 12, scope: !1681)
!1710 = !DILocation(line: 49, column: 12, scope: !1681)
!1711 = !DILocation(line: 49, column: 5, scope: !1681)
!1712 = !DILocation(line: 50, column: 1, scope: !1681)
!1713 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !2)
!1714 = !DILocation(line: 238, column: 16, scope: !1713)
!1715 = !DILocation(line: 238, column: 5, scope: !1713)
!1716 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !118, file: !118, line: 57, type: !179, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !2)
!1717 = !DILocation(line: 59, column: 1, scope: !1716)
!1718 = distinct !DISubprogram(name: "__muldf3", scope: !120, file: !120, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1719 = !DILocation(line: 21, column: 12, scope: !1718)
!1720 = !DILocation(line: 21, column: 5, scope: !1718)
!1721 = distinct !DISubprogram(name: "__mulXf3__", scope: !1722, file: !1722, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1722 = !DIFile(filename: "../libraries/builtinsfloat/fp_mul_impl.inc", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!1723 = !DILocation(line: 18, column: 36, scope: !1721)
!1724 = !DILocation(line: 18, column: 45, scope: !1721)
!1725 = !DILocation(line: 19, column: 36, scope: !1721)
!1726 = !DILocation(line: 19, column: 45, scope: !1721)
!1727 = !DILocation(line: 20, column: 32, scope: !1721)
!1728 = !DILocation(line: 20, column: 43, scope: !1721)
!1729 = !DILocation(line: 20, column: 41, scope: !1721)
!1730 = !DILocation(line: 20, column: 53, scope: !1721)
!1731 = !DILocation(line: 22, column: 26, scope: !1721)
!1732 = !DILocation(line: 22, column: 35, scope: !1721)
!1733 = !DILocation(line: 22, column: 11, scope: !1721)
!1734 = !DILocation(line: 23, column: 26, scope: !1721)
!1735 = !DILocation(line: 23, column: 35, scope: !1721)
!1736 = !DILocation(line: 23, column: 11, scope: !1721)
!1737 = !DILocation(line: 27, column: 18, scope: !1721)
!1738 = !DILocation(line: 27, column: 22, scope: !1721)
!1739 = !DILocation(line: 27, column: 40, scope: !1721)
!1740 = !DILocation(line: 27, column: 52, scope: !1721)
!1741 = !DILocation(line: 27, column: 56, scope: !1721)
!1742 = !DILocation(line: 27, column: 9, scope: !1721)
!1743 = !DILocation(line: 29, column: 28, scope: !1721)
!1744 = !DILocation(line: 29, column: 37, scope: !1721)
!1745 = !DILocation(line: 30, column: 28, scope: !1721)
!1746 = !DILocation(line: 30, column: 37, scope: !1721)
!1747 = !DILocation(line: 33, column: 18, scope: !1721)
!1748 = !DILocation(line: 33, column: 13, scope: !1721)
!1749 = !DILocation(line: 33, column: 43, scope: !1721)
!1750 = !DILocation(line: 33, column: 52, scope: !1721)
!1751 = !DILocation(line: 33, column: 35, scope: !1721)
!1752 = !DILocation(line: 33, column: 28, scope: !1721)
!1753 = !DILocation(line: 35, column: 18, scope: !1721)
!1754 = !DILocation(line: 35, column: 13, scope: !1721)
!1755 = !DILocation(line: 35, column: 43, scope: !1721)
!1756 = !DILocation(line: 35, column: 52, scope: !1721)
!1757 = !DILocation(line: 35, column: 35, scope: !1721)
!1758 = !DILocation(line: 35, column: 28, scope: !1721)
!1759 = !DILocation(line: 37, column: 18, scope: !1721)
!1760 = !DILocation(line: 37, column: 13, scope: !1721)
!1761 = !DILocation(line: 39, column: 17, scope: !1721)
!1762 = !DILocation(line: 39, column: 43, scope: !1721)
!1763 = !DILocation(line: 39, column: 30, scope: !1721)
!1764 = !DILocation(line: 39, column: 23, scope: !1721)
!1765 = !DILocation(line: 41, column: 25, scope: !1721)
!1766 = !DILocation(line: 41, column: 18, scope: !1721)
!1767 = !DILocation(line: 44, column: 18, scope: !1721)
!1768 = !DILocation(line: 44, column: 13, scope: !1721)
!1769 = !DILocation(line: 46, column: 17, scope: !1721)
!1770 = !DILocation(line: 46, column: 43, scope: !1721)
!1771 = !DILocation(line: 46, column: 30, scope: !1721)
!1772 = !DILocation(line: 46, column: 23, scope: !1721)
!1773 = !DILocation(line: 48, column: 25, scope: !1721)
!1774 = !DILocation(line: 48, column: 18, scope: !1721)
!1775 = !DILocation(line: 52, column: 14, scope: !1721)
!1776 = !DILocation(line: 52, column: 13, scope: !1721)
!1777 = !DILocation(line: 52, column: 27, scope: !1721)
!1778 = !DILocation(line: 52, column: 20, scope: !1721)
!1779 = !DILocation(line: 54, column: 14, scope: !1721)
!1780 = !DILocation(line: 54, column: 13, scope: !1721)
!1781 = !DILocation(line: 54, column: 27, scope: !1721)
!1782 = !DILocation(line: 54, column: 20, scope: !1721)
!1783 = !DILocation(line: 59, column: 18, scope: !1721)
!1784 = !DILocation(line: 59, column: 13, scope: !1721)
!1785 = !DILocation(line: 59, column: 42, scope: !1721)
!1786 = !DILocation(line: 59, column: 33, scope: !1721)
!1787 = !DILocation(line: 0, scope: !1721)
!1788 = !DILocation(line: 60, column: 18, scope: !1721)
!1789 = !DILocation(line: 60, column: 13, scope: !1721)
!1790 = !DILocation(line: 60, column: 42, scope: !1721)
!1791 = !DILocation(line: 60, column: 39, scope: !1721)
!1792 = !DILocation(line: 60, column: 33, scope: !1721)
!1793 = !DILocation(line: 61, column: 5, scope: !1721)
!1794 = !DILocation(line: 66, column: 18, scope: !1721)
!1795 = !DILocation(line: 67, column: 18, scope: !1721)
!1796 = !DILocation(line: 75, column: 45, scope: !1721)
!1797 = !DILocation(line: 75, column: 5, scope: !1721)
!1798 = !DILocation(line: 78, column: 37, scope: !1721)
!1799 = !DILocation(line: 78, column: 49, scope: !1721)
!1800 = !DILocation(line: 78, column: 64, scope: !1721)
!1801 = !DILocation(line: 81, column: 9, scope: !1721)
!1802 = !DILocation(line: 81, column: 19, scope: !1721)
!1803 = !DILocation(line: 81, column: 49, scope: !1721)
!1804 = !DILocation(line: 81, column: 34, scope: !1721)
!1805 = !DILocation(line: 82, column: 10, scope: !1721)
!1806 = !DILocation(line: 85, column: 25, scope: !1721)
!1807 = !DILocation(line: 85, column: 9, scope: !1721)
!1808 = !DILocation(line: 85, column: 63, scope: !1721)
!1809 = !DILocation(line: 85, column: 48, scope: !1721)
!1810 = !DILocation(line: 85, column: 41, scope: !1721)
!1811 = !DILocation(line: 87, column: 25, scope: !1721)
!1812 = !DILocation(line: 87, column: 9, scope: !1721)
!1813 = !DILocation(line: 94, column: 45, scope: !1721)
!1814 = !DILocation(line: 95, column: 19, scope: !1721)
!1815 = !DILocation(line: 95, column: 13, scope: !1721)
!1816 = !DILocation(line: 95, column: 40, scope: !1721)
!1817 = !DILocation(line: 95, column: 33, scope: !1721)
!1818 = !DILocation(line: 99, column: 9, scope: !1721)
!1819 = !DILocation(line: 100, column: 5, scope: !1721)
!1820 = !DILocation(line: 103, column: 19, scope: !1721)
!1821 = !DILocation(line: 104, column: 22, scope: !1721)
!1822 = !DILocation(line: 104, column: 45, scope: !1721)
!1823 = !DILocation(line: 104, column: 19, scope: !1721)
!1824 = !DILocation(line: 108, column: 15, scope: !1721)
!1825 = !DILocation(line: 113, column: 9, scope: !1721)
!1826 = !DILocation(line: 113, column: 19, scope: !1721)
!1827 = !DILocation(line: 113, column: 39, scope: !1721)
!1828 = !DILocation(line: 113, column: 30, scope: !1721)
!1829 = !DILocation(line: 114, column: 9, scope: !1721)
!1830 = !DILocation(line: 114, column: 19, scope: !1721)
!1831 = !DILocation(line: 114, column: 44, scope: !1721)
!1832 = !DILocation(line: 114, column: 54, scope: !1721)
!1833 = !DILocation(line: 114, column: 41, scope: !1721)
!1834 = !DILocation(line: 114, column: 31, scope: !1721)
!1835 = !DILocation(line: 115, column: 20, scope: !1721)
!1836 = !DILocation(line: 115, column: 12, scope: !1721)
!1837 = !DILocation(line: 115, column: 5, scope: !1721)
!1838 = !DILocation(line: 116, column: 1, scope: !1721)
!1839 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1840 = !DILocation(line: 233, column: 16, scope: !1839)
!1841 = !DILocation(line: 233, column: 5, scope: !1839)
!1842 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1843 = !DILocation(line: 238, column: 16, scope: !1842)
!1844 = !DILocation(line: 238, column: 5, scope: !1842)
!1845 = distinct !DISubprogram(name: "normalize", scope: !338, file: !338, line: 241, type: !179, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1846 = !DILocation(line: 242, column: 31, scope: !1845)
!1847 = !DILocation(line: 242, column: 23, scope: !1845)
!1848 = !DILocation(line: 242, column: 47, scope: !1845)
!1849 = !DILocation(line: 242, column: 45, scope: !1845)
!1850 = !DILocation(line: 243, column: 18, scope: !1845)
!1851 = !DILocation(line: 244, column: 14, scope: !1845)
!1852 = !DILocation(line: 244, column: 5, scope: !1845)
!1853 = distinct !DISubprogram(name: "wideMultiply", scope: !338, file: !338, line: 86, type: !179, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1854 = !DILocation(line: 88, column: 28, scope: !1853)
!1855 = !DILocation(line: 88, column: 40, scope: !1853)
!1856 = !DILocation(line: 88, column: 38, scope: !1853)
!1857 = !DILocation(line: 89, column: 28, scope: !1853)
!1858 = !DILocation(line: 89, column: 40, scope: !1853)
!1859 = !DILocation(line: 89, column: 38, scope: !1853)
!1860 = !DILocation(line: 90, column: 28, scope: !1853)
!1861 = !DILocation(line: 90, column: 40, scope: !1853)
!1862 = !DILocation(line: 90, column: 38, scope: !1853)
!1863 = !DILocation(line: 91, column: 28, scope: !1853)
!1864 = !DILocation(line: 91, column: 40, scope: !1853)
!1865 = !DILocation(line: 91, column: 38, scope: !1853)
!1866 = !DILocation(line: 93, column: 25, scope: !1853)
!1867 = !DILocation(line: 94, column: 25, scope: !1853)
!1868 = !DILocation(line: 94, column: 41, scope: !1853)
!1869 = !DILocation(line: 94, column: 39, scope: !1853)
!1870 = !DILocation(line: 94, column: 57, scope: !1853)
!1871 = !DILocation(line: 94, column: 55, scope: !1853)
!1872 = !DILocation(line: 95, column: 20, scope: !1853)
!1873 = !DILocation(line: 95, column: 14, scope: !1853)
!1874 = !DILocation(line: 95, column: 9, scope: !1853)
!1875 = !DILocation(line: 97, column: 11, scope: !1853)
!1876 = !DILocation(line: 97, column: 27, scope: !1853)
!1877 = !DILocation(line: 97, column: 25, scope: !1853)
!1878 = !DILocation(line: 97, column: 43, scope: !1853)
!1879 = !DILocation(line: 97, column: 41, scope: !1853)
!1880 = !DILocation(line: 97, column: 54, scope: !1853)
!1881 = !DILocation(line: 97, column: 9, scope: !1853)
!1882 = !DILocation(line: 98, column: 1, scope: !1853)
!1883 = distinct !DISubprogram(name: "wideLeftShift", scope: !338, file: !338, line: 247, type: !179, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1884 = !DILocation(line: 248, column: 11, scope: !1883)
!1885 = !DILocation(line: 248, column: 15, scope: !1883)
!1886 = !DILocation(line: 248, column: 26, scope: !1883)
!1887 = !DILocation(line: 248, column: 44, scope: !1883)
!1888 = !DILocation(line: 248, column: 30, scope: !1883)
!1889 = !DILocation(line: 248, column: 24, scope: !1883)
!1890 = !DILocation(line: 248, column: 9, scope: !1883)
!1891 = !DILocation(line: 249, column: 11, scope: !1883)
!1892 = !DILocation(line: 249, column: 15, scope: !1883)
!1893 = !DILocation(line: 249, column: 9, scope: !1883)
!1894 = !DILocation(line: 250, column: 1, scope: !1883)
!1895 = distinct !DISubprogram(name: "wideRightShiftWithSticky", scope: !338, file: !338, line: 252, type: !179, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1896 = !DILocation(line: 253, column: 15, scope: !1895)
!1897 = !DILocation(line: 253, column: 9, scope: !1895)
!1898 = !DILocation(line: 254, column: 29, scope: !1895)
!1899 = !DILocation(line: 254, column: 47, scope: !1895)
!1900 = !DILocation(line: 254, column: 33, scope: !1895)
!1901 = !DILocation(line: 255, column: 15, scope: !1895)
!1902 = !DILocation(line: 255, column: 33, scope: !1895)
!1903 = !DILocation(line: 255, column: 19, scope: !1895)
!1904 = !DILocation(line: 255, column: 44, scope: !1895)
!1905 = !DILocation(line: 255, column: 48, scope: !1895)
!1906 = !DILocation(line: 255, column: 42, scope: !1895)
!1907 = !DILocation(line: 255, column: 59, scope: !1895)
!1908 = !DILocation(line: 255, column: 57, scope: !1895)
!1909 = !DILocation(line: 255, column: 13, scope: !1895)
!1910 = !DILocation(line: 256, column: 15, scope: !1895)
!1911 = !DILocation(line: 256, column: 19, scope: !1895)
!1912 = !DILocation(line: 257, column: 5, scope: !1895)
!1913 = !DILocation(line: 258, column: 20, scope: !1895)
!1914 = !DILocation(line: 258, column: 14, scope: !1895)
!1915 = !DILocation(line: 259, column: 29, scope: !1895)
!1916 = !DILocation(line: 259, column: 49, scope: !1895)
!1917 = !DILocation(line: 259, column: 33, scope: !1895)
!1918 = !DILocation(line: 259, column: 60, scope: !1895)
!1919 = !DILocation(line: 259, column: 58, scope: !1895)
!1920 = !DILocation(line: 260, column: 15, scope: !1895)
!1921 = !DILocation(line: 260, column: 29, scope: !1895)
!1922 = !DILocation(line: 260, column: 19, scope: !1895)
!1923 = !DILocation(line: 260, column: 44, scope: !1895)
!1924 = !DILocation(line: 260, column: 42, scope: !1895)
!1925 = !DILocation(line: 262, column: 5, scope: !1895)
!1926 = !DILocation(line: 263, column: 29, scope: !1895)
!1927 = !DILocation(line: 263, column: 35, scope: !1895)
!1928 = !DILocation(line: 263, column: 33, scope: !1895)
!1929 = !DILocation(line: 264, column: 15, scope: !1895)
!1930 = !DILocation(line: 0, scope: !1895)
!1931 = !DILocation(line: 267, column: 1, scope: !1895)
!1932 = distinct !DISubprogram(name: "rep_clz", scope: !338, file: !338, line: 69, type: !179, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !2)
!1933 = !DILocation(line: 73, column: 11, scope: !1932)
!1934 = !DILocation(line: 73, column: 9, scope: !1932)
!1935 = !DILocation(line: 74, column: 32, scope: !1932)
!1936 = !DILocation(line: 74, column: 30, scope: !1932)
!1937 = !DILocation(line: 74, column: 16, scope: !1932)
!1938 = !DILocation(line: 74, column: 9, scope: !1932)
!1939 = !DILocation(line: 76, column: 35, scope: !1932)
!1940 = !DILocation(line: 76, column: 21, scope: !1932)
!1941 = !DILocation(line: 76, column: 19, scope: !1932)
!1942 = !DILocation(line: 76, column: 9, scope: !1932)
!1943 = !DILocation(line: 0, scope: !1932)
!1944 = !DILocation(line: 78, column: 1, scope: !1932)
!1945 = distinct !DISubprogram(name: "__muldi3", scope: !122, file: !122, line: 46, type: !179, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !2)
!1946 = !DILocation(line: 49, column: 7, scope: !1945)
!1947 = !DILocation(line: 49, column: 11, scope: !1945)
!1948 = !DILocation(line: 51, column: 7, scope: !1945)
!1949 = !DILocation(line: 51, column: 11, scope: !1945)
!1950 = !DILocation(line: 53, column: 27, scope: !1945)
!1951 = !DILocation(line: 53, column: 36, scope: !1945)
!1952 = !DILocation(line: 53, column: 13, scope: !1945)
!1953 = !DILocation(line: 53, column: 7, scope: !1945)
!1954 = !DILocation(line: 53, column: 11, scope: !1945)
!1955 = !DILocation(line: 54, column: 19, scope: !1945)
!1956 = !DILocation(line: 54, column: 21, scope: !1945)
!1957 = !DILocation(line: 54, column: 32, scope: !1945)
!1958 = !DILocation(line: 54, column: 26, scope: !1945)
!1959 = !DILocation(line: 54, column: 42, scope: !1945)
!1960 = !DILocation(line: 54, column: 50, scope: !1945)
!1961 = !DILocation(line: 54, column: 52, scope: !1945)
!1962 = !DILocation(line: 54, column: 46, scope: !1945)
!1963 = !DILocation(line: 54, column: 36, scope: !1945)
!1964 = !DILocation(line: 54, column: 7, scope: !1945)
!1965 = !DILocation(line: 54, column: 9, scope: !1945)
!1966 = !DILocation(line: 54, column: 14, scope: !1945)
!1967 = !DILocation(line: 55, column: 14, scope: !1945)
!1968 = !DILocation(line: 55, column: 5, scope: !1945)
!1969 = distinct !DISubprogram(name: "__muldsi3", scope: !122, file: !122, line: 21, type: !179, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !2)
!1970 = !DILocation(line: 26, column: 18, scope: !1969)
!1971 = !DILocation(line: 26, column: 37, scope: !1969)
!1972 = !DILocation(line: 26, column: 32, scope: !1969)
!1973 = !DILocation(line: 27, column: 24, scope: !1969)
!1974 = !DILocation(line: 28, column: 9, scope: !1969)
!1975 = !DILocation(line: 28, column: 13, scope: !1969)
!1976 = !DILocation(line: 29, column: 13, scope: !1969)
!1977 = !DILocation(line: 29, column: 37, scope: !1969)
!1978 = !DILocation(line: 29, column: 32, scope: !1969)
!1979 = !DILocation(line: 29, column: 7, scope: !1969)
!1980 = !DILocation(line: 30, column: 33, scope: !1969)
!1981 = !DILocation(line: 30, column: 9, scope: !1969)
!1982 = !DILocation(line: 30, column: 13, scope: !1969)
!1983 = !DILocation(line: 31, column: 18, scope: !1969)
!1984 = !DILocation(line: 31, column: 7, scope: !1969)
!1985 = !DILocation(line: 31, column: 9, scope: !1969)
!1986 = !DILocation(line: 31, column: 14, scope: !1969)
!1987 = !DILocation(line: 32, column: 17, scope: !1969)
!1988 = !DILocation(line: 33, column: 9, scope: !1969)
!1989 = !DILocation(line: 33, column: 13, scope: !1969)
!1990 = !DILocation(line: 34, column: 13, scope: !1969)
!1991 = !DILocation(line: 34, column: 37, scope: !1969)
!1992 = !DILocation(line: 34, column: 32, scope: !1969)
!1993 = !DILocation(line: 34, column: 7, scope: !1969)
!1994 = !DILocation(line: 35, column: 33, scope: !1969)
!1995 = !DILocation(line: 35, column: 9, scope: !1969)
!1996 = !DILocation(line: 35, column: 13, scope: !1969)
!1997 = !DILocation(line: 36, column: 19, scope: !1969)
!1998 = !DILocation(line: 36, column: 7, scope: !1969)
!1999 = !DILocation(line: 36, column: 9, scope: !1969)
!2000 = !DILocation(line: 36, column: 14, scope: !1969)
!2001 = !DILocation(line: 37, column: 20, scope: !1969)
!2002 = !DILocation(line: 37, column: 44, scope: !1969)
!2003 = !DILocation(line: 37, column: 39, scope: !1969)
!2004 = !DILocation(line: 37, column: 7, scope: !1969)
!2005 = !DILocation(line: 37, column: 9, scope: !1969)
!2006 = !DILocation(line: 37, column: 14, scope: !1969)
!2007 = !DILocation(line: 38, column: 14, scope: !1969)
!2008 = !DILocation(line: 38, column: 5, scope: !1969)
!2009 = distinct !DISubprogram(name: "__mulodi4", scope: !124, file: !124, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !2)
!2010 = !DILocation(line: 27, column: 15, scope: !2009)
!2011 = !DILocation(line: 28, column: 23, scope: !2009)
!2012 = !DILocation(line: 29, column: 11, scope: !2009)
!2013 = !DILocation(line: 29, column: 9, scope: !2009)
!2014 = !DILocation(line: 31, column: 15, scope: !2009)
!2015 = !DILocation(line: 31, column: 20, scope: !2009)
!2016 = !DILocation(line: 31, column: 25, scope: !2009)
!2017 = !DILocation(line: 31, column: 13, scope: !2009)
!2018 = !DILocation(line: 32, column: 16, scope: !2009)
!2019 = !DILocation(line: 32, column: 6, scope: !2009)
!2020 = !DILocation(line: 33, column: 2, scope: !2009)
!2021 = !DILocation(line: 35, column: 11, scope: !2009)
!2022 = !DILocation(line: 35, column: 9, scope: !2009)
!2023 = !DILocation(line: 37, column: 15, scope: !2009)
!2024 = !DILocation(line: 37, column: 20, scope: !2009)
!2025 = !DILocation(line: 37, column: 25, scope: !2009)
!2026 = !DILocation(line: 37, column: 13, scope: !2009)
!2027 = !DILocation(line: 38, column: 16, scope: !2009)
!2028 = !DILocation(line: 38, column: 6, scope: !2009)
!2029 = !DILocation(line: 39, column: 9, scope: !2009)
!2030 = !DILocation(line: 41, column: 19, scope: !2009)
!2031 = !DILocation(line: 42, column: 23, scope: !2009)
!2032 = !DILocation(line: 42, column: 29, scope: !2009)
!2033 = !DILocation(line: 43, column: 19, scope: !2009)
!2034 = !DILocation(line: 44, column: 23, scope: !2009)
!2035 = !DILocation(line: 44, column: 29, scope: !2009)
!2036 = !DILocation(line: 45, column: 15, scope: !2009)
!2037 = !DILocation(line: 45, column: 19, scope: !2009)
!2038 = !DILocation(line: 45, column: 28, scope: !2009)
!2039 = !DILocation(line: 45, column: 9, scope: !2009)
!2040 = !DILocation(line: 46, column: 9, scope: !2009)
!2041 = !DILocation(line: 47, column: 12, scope: !2009)
!2042 = !DILocation(line: 47, column: 9, scope: !2009)
!2043 = !DILocation(line: 49, column: 25, scope: !2009)
!2044 = !DILocation(line: 49, column: 19, scope: !2009)
!2045 = !DILocation(line: 49, column: 13, scope: !2009)
!2046 = !DILocation(line: 50, column: 23, scope: !2009)
!2047 = !DILocation(line: 50, column: 13, scope: !2009)
!2048 = !DILocation(line: 51, column: 5, scope: !2009)
!2049 = !DILocation(line: 54, column: 27, scope: !2009)
!2050 = !DILocation(line: 54, column: 25, scope: !2009)
!2051 = !DILocation(line: 54, column: 19, scope: !2009)
!2052 = !DILocation(line: 54, column: 13, scope: !2009)
!2053 = !DILocation(line: 55, column: 23, scope: !2009)
!2054 = !DILocation(line: 55, column: 13, scope: !2009)
!2055 = !DILocation(line: 57, column: 5, scope: !2009)
!2056 = !DILocation(line: 58, column: 1, scope: !2009)
!2057 = distinct !DISubprogram(name: "__mulosi4", scope: !126, file: !126, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !2)
!2058 = !DILocation(line: 27, column: 15, scope: !2057)
!2059 = !DILocation(line: 28, column: 23, scope: !2057)
!2060 = !DILocation(line: 29, column: 11, scope: !2057)
!2061 = !DILocation(line: 29, column: 9, scope: !2057)
!2062 = !DILocation(line: 31, column: 15, scope: !2057)
!2063 = !DILocation(line: 31, column: 20, scope: !2057)
!2064 = !DILocation(line: 31, column: 25, scope: !2057)
!2065 = !DILocation(line: 31, column: 13, scope: !2057)
!2066 = !DILocation(line: 32, column: 16, scope: !2057)
!2067 = !DILocation(line: 32, column: 6, scope: !2057)
!2068 = !DILocation(line: 33, column: 2, scope: !2057)
!2069 = !DILocation(line: 35, column: 11, scope: !2057)
!2070 = !DILocation(line: 35, column: 9, scope: !2057)
!2071 = !DILocation(line: 37, column: 15, scope: !2057)
!2072 = !DILocation(line: 37, column: 20, scope: !2057)
!2073 = !DILocation(line: 37, column: 25, scope: !2057)
!2074 = !DILocation(line: 37, column: 13, scope: !2057)
!2075 = !DILocation(line: 38, column: 16, scope: !2057)
!2076 = !DILocation(line: 38, column: 6, scope: !2057)
!2077 = !DILocation(line: 39, column: 9, scope: !2057)
!2078 = !DILocation(line: 41, column: 19, scope: !2057)
!2079 = !DILocation(line: 42, column: 23, scope: !2057)
!2080 = !DILocation(line: 42, column: 29, scope: !2057)
!2081 = !DILocation(line: 43, column: 19, scope: !2057)
!2082 = !DILocation(line: 44, column: 23, scope: !2057)
!2083 = !DILocation(line: 44, column: 29, scope: !2057)
!2084 = !DILocation(line: 45, column: 15, scope: !2057)
!2085 = !DILocation(line: 45, column: 19, scope: !2057)
!2086 = !DILocation(line: 45, column: 28, scope: !2057)
!2087 = !DILocation(line: 45, column: 9, scope: !2057)
!2088 = !DILocation(line: 46, column: 9, scope: !2057)
!2089 = !DILocation(line: 47, column: 12, scope: !2057)
!2090 = !DILocation(line: 47, column: 9, scope: !2057)
!2091 = !DILocation(line: 49, column: 25, scope: !2057)
!2092 = !DILocation(line: 49, column: 19, scope: !2057)
!2093 = !DILocation(line: 49, column: 13, scope: !2057)
!2094 = !DILocation(line: 50, column: 23, scope: !2057)
!2095 = !DILocation(line: 50, column: 13, scope: !2057)
!2096 = !DILocation(line: 51, column: 5, scope: !2057)
!2097 = !DILocation(line: 54, column: 27, scope: !2057)
!2098 = !DILocation(line: 54, column: 25, scope: !2057)
!2099 = !DILocation(line: 54, column: 19, scope: !2057)
!2100 = !DILocation(line: 54, column: 13, scope: !2057)
!2101 = !DILocation(line: 55, column: 23, scope: !2057)
!2102 = !DILocation(line: 55, column: 13, scope: !2057)
!2103 = !DILocation(line: 57, column: 5, scope: !2057)
!2104 = !DILocation(line: 58, column: 1, scope: !2057)
!2105 = distinct !DISubprogram(name: "__mulsf3", scope: !130, file: !130, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2106 = !DILocation(line: 21, column: 12, scope: !2105)
!2107 = !DILocation(line: 21, column: 5, scope: !2105)
!2108 = distinct !DISubprogram(name: "__mulXf3__", scope: !1722, file: !1722, line: 17, type: !179, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2109 = !DILocation(line: 18, column: 36, scope: !2108)
!2110 = !DILocation(line: 18, column: 45, scope: !2108)
!2111 = !DILocation(line: 18, column: 64, scope: !2108)
!2112 = !DILocation(line: 19, column: 36, scope: !2108)
!2113 = !DILocation(line: 19, column: 45, scope: !2108)
!2114 = !DILocation(line: 19, column: 64, scope: !2108)
!2115 = !DILocation(line: 20, column: 32, scope: !2108)
!2116 = !DILocation(line: 20, column: 43, scope: !2108)
!2117 = !DILocation(line: 20, column: 41, scope: !2108)
!2118 = !DILocation(line: 20, column: 53, scope: !2108)
!2119 = !DILocation(line: 22, column: 26, scope: !2108)
!2120 = !DILocation(line: 22, column: 35, scope: !2108)
!2121 = !DILocation(line: 22, column: 11, scope: !2108)
!2122 = !DILocation(line: 23, column: 26, scope: !2108)
!2123 = !DILocation(line: 23, column: 35, scope: !2108)
!2124 = !DILocation(line: 23, column: 11, scope: !2108)
!2125 = !DILocation(line: 27, column: 18, scope: !2108)
!2126 = !DILocation(line: 27, column: 22, scope: !2108)
!2127 = !DILocation(line: 27, column: 40, scope: !2108)
!2128 = !DILocation(line: 27, column: 52, scope: !2108)
!2129 = !DILocation(line: 27, column: 56, scope: !2108)
!2130 = !DILocation(line: 27, column: 9, scope: !2108)
!2131 = !DILocation(line: 29, column: 28, scope: !2108)
!2132 = !DILocation(line: 29, column: 37, scope: !2108)
!2133 = !DILocation(line: 30, column: 28, scope: !2108)
!2134 = !DILocation(line: 30, column: 37, scope: !2108)
!2135 = !DILocation(line: 33, column: 18, scope: !2108)
!2136 = !DILocation(line: 33, column: 13, scope: !2108)
!2137 = !DILocation(line: 33, column: 43, scope: !2108)
!2138 = !DILocation(line: 33, column: 52, scope: !2108)
!2139 = !DILocation(line: 33, column: 35, scope: !2108)
!2140 = !DILocation(line: 33, column: 28, scope: !2108)
!2141 = !DILocation(line: 35, column: 18, scope: !2108)
!2142 = !DILocation(line: 35, column: 13, scope: !2108)
!2143 = !DILocation(line: 35, column: 43, scope: !2108)
!2144 = !DILocation(line: 35, column: 52, scope: !2108)
!2145 = !DILocation(line: 35, column: 35, scope: !2108)
!2146 = !DILocation(line: 35, column: 28, scope: !2108)
!2147 = !DILocation(line: 37, column: 18, scope: !2108)
!2148 = !DILocation(line: 37, column: 13, scope: !2108)
!2149 = !DILocation(line: 39, column: 17, scope: !2108)
!2150 = !DILocation(line: 39, column: 43, scope: !2108)
!2151 = !DILocation(line: 39, column: 30, scope: !2108)
!2152 = !DILocation(line: 39, column: 23, scope: !2108)
!2153 = !DILocation(line: 41, column: 25, scope: !2108)
!2154 = !DILocation(line: 41, column: 18, scope: !2108)
!2155 = !DILocation(line: 44, column: 18, scope: !2108)
!2156 = !DILocation(line: 44, column: 13, scope: !2108)
!2157 = !DILocation(line: 46, column: 17, scope: !2108)
!2158 = !DILocation(line: 46, column: 43, scope: !2108)
!2159 = !DILocation(line: 46, column: 30, scope: !2108)
!2160 = !DILocation(line: 46, column: 23, scope: !2108)
!2161 = !DILocation(line: 48, column: 25, scope: !2108)
!2162 = !DILocation(line: 48, column: 18, scope: !2108)
!2163 = !DILocation(line: 52, column: 14, scope: !2108)
!2164 = !DILocation(line: 52, column: 13, scope: !2108)
!2165 = !DILocation(line: 52, column: 27, scope: !2108)
!2166 = !DILocation(line: 52, column: 20, scope: !2108)
!2167 = !DILocation(line: 54, column: 14, scope: !2108)
!2168 = !DILocation(line: 54, column: 13, scope: !2108)
!2169 = !DILocation(line: 54, column: 27, scope: !2108)
!2170 = !DILocation(line: 54, column: 20, scope: !2108)
!2171 = !DILocation(line: 59, column: 18, scope: !2108)
!2172 = !DILocation(line: 59, column: 13, scope: !2108)
!2173 = !DILocation(line: 59, column: 42, scope: !2108)
!2174 = !DILocation(line: 59, column: 33, scope: !2108)
!2175 = !DILocation(line: 0, scope: !2108)
!2176 = !DILocation(line: 60, column: 18, scope: !2108)
!2177 = !DILocation(line: 60, column: 13, scope: !2108)
!2178 = !DILocation(line: 60, column: 42, scope: !2108)
!2179 = !DILocation(line: 60, column: 39, scope: !2108)
!2180 = !DILocation(line: 60, column: 33, scope: !2108)
!2181 = !DILocation(line: 61, column: 5, scope: !2108)
!2182 = !DILocation(line: 66, column: 18, scope: !2108)
!2183 = !DILocation(line: 67, column: 18, scope: !2108)
!2184 = !DILocation(line: 75, column: 45, scope: !2108)
!2185 = !DILocation(line: 75, column: 5, scope: !2108)
!2186 = !DILocation(line: 78, column: 37, scope: !2108)
!2187 = !DILocation(line: 78, column: 49, scope: !2108)
!2188 = !DILocation(line: 78, column: 64, scope: !2108)
!2189 = !DILocation(line: 81, column: 9, scope: !2108)
!2190 = !DILocation(line: 81, column: 19, scope: !2108)
!2191 = !DILocation(line: 81, column: 49, scope: !2108)
!2192 = !DILocation(line: 81, column: 34, scope: !2108)
!2193 = !DILocation(line: 82, column: 10, scope: !2108)
!2194 = !DILocation(line: 85, column: 25, scope: !2108)
!2195 = !DILocation(line: 85, column: 9, scope: !2108)
!2196 = !DILocation(line: 85, column: 63, scope: !2108)
!2197 = !DILocation(line: 85, column: 48, scope: !2108)
!2198 = !DILocation(line: 85, column: 41, scope: !2108)
!2199 = !DILocation(line: 87, column: 25, scope: !2108)
!2200 = !DILocation(line: 87, column: 9, scope: !2108)
!2201 = !DILocation(line: 94, column: 45, scope: !2108)
!2202 = !DILocation(line: 95, column: 19, scope: !2108)
!2203 = !DILocation(line: 95, column: 13, scope: !2108)
!2204 = !DILocation(line: 95, column: 40, scope: !2108)
!2205 = !DILocation(line: 95, column: 33, scope: !2108)
!2206 = !DILocation(line: 99, column: 9, scope: !2108)
!2207 = !DILocation(line: 100, column: 5, scope: !2108)
!2208 = !DILocation(line: 103, column: 19, scope: !2108)
!2209 = !DILocation(line: 104, column: 45, scope: !2108)
!2210 = !DILocation(line: 104, column: 19, scope: !2108)
!2211 = !DILocation(line: 108, column: 15, scope: !2108)
!2212 = !DILocation(line: 113, column: 9, scope: !2108)
!2213 = !DILocation(line: 113, column: 19, scope: !2108)
!2214 = !DILocation(line: 113, column: 39, scope: !2108)
!2215 = !DILocation(line: 113, column: 30, scope: !2108)
!2216 = !DILocation(line: 114, column: 9, scope: !2108)
!2217 = !DILocation(line: 114, column: 19, scope: !2108)
!2218 = !DILocation(line: 114, column: 44, scope: !2108)
!2219 = !DILocation(line: 114, column: 54, scope: !2108)
!2220 = !DILocation(line: 114, column: 41, scope: !2108)
!2221 = !DILocation(line: 114, column: 31, scope: !2108)
!2222 = !DILocation(line: 115, column: 20, scope: !2108)
!2223 = !DILocation(line: 115, column: 12, scope: !2108)
!2224 = !DILocation(line: 115, column: 5, scope: !2108)
!2225 = !DILocation(line: 116, column: 1, scope: !2108)
!2226 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2227 = !DILocation(line: 233, column: 16, scope: !2226)
!2228 = !DILocation(line: 233, column: 5, scope: !2226)
!2229 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2230 = !DILocation(line: 238, column: 16, scope: !2229)
!2231 = !DILocation(line: 238, column: 5, scope: !2229)
!2232 = distinct !DISubprogram(name: "normalize", scope: !338, file: !338, line: 241, type: !179, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2233 = !DILocation(line: 242, column: 31, scope: !2232)
!2234 = !DILocation(line: 242, column: 23, scope: !2232)
!2235 = !DILocation(line: 242, column: 47, scope: !2232)
!2236 = !DILocation(line: 242, column: 45, scope: !2232)
!2237 = !DILocation(line: 243, column: 18, scope: !2232)
!2238 = !DILocation(line: 244, column: 14, scope: !2232)
!2239 = !DILocation(line: 244, column: 5, scope: !2232)
!2240 = distinct !DISubprogram(name: "wideMultiply", scope: !338, file: !338, line: 54, type: !179, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2241 = !DILocation(line: 55, column: 30, scope: !2240)
!2242 = !DILocation(line: 55, column: 42, scope: !2240)
!2243 = !DILocation(line: 55, column: 41, scope: !2240)
!2244 = !DILocation(line: 56, column: 19, scope: !2240)
!2245 = !DILocation(line: 56, column: 11, scope: !2240)
!2246 = !DILocation(line: 56, column: 9, scope: !2240)
!2247 = !DILocation(line: 57, column: 11, scope: !2240)
!2248 = !DILocation(line: 57, column: 9, scope: !2240)
!2249 = !DILocation(line: 58, column: 1, scope: !2240)
!2250 = distinct !DISubprogram(name: "wideLeftShift", scope: !338, file: !338, line: 247, type: !179, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2251 = !DILocation(line: 248, column: 11, scope: !2250)
!2252 = !DILocation(line: 248, column: 15, scope: !2250)
!2253 = !DILocation(line: 248, column: 26, scope: !2250)
!2254 = !DILocation(line: 248, column: 44, scope: !2250)
!2255 = !DILocation(line: 248, column: 30, scope: !2250)
!2256 = !DILocation(line: 248, column: 24, scope: !2250)
!2257 = !DILocation(line: 248, column: 9, scope: !2250)
!2258 = !DILocation(line: 249, column: 11, scope: !2250)
!2259 = !DILocation(line: 249, column: 15, scope: !2250)
!2260 = !DILocation(line: 249, column: 9, scope: !2250)
!2261 = !DILocation(line: 250, column: 1, scope: !2250)
!2262 = distinct !DISubprogram(name: "wideRightShiftWithSticky", scope: !338, file: !338, line: 252, type: !179, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2263 = !DILocation(line: 253, column: 15, scope: !2262)
!2264 = !DILocation(line: 253, column: 9, scope: !2262)
!2265 = !DILocation(line: 254, column: 29, scope: !2262)
!2266 = !DILocation(line: 254, column: 47, scope: !2262)
!2267 = !DILocation(line: 254, column: 33, scope: !2262)
!2268 = !DILocation(line: 255, column: 15, scope: !2262)
!2269 = !DILocation(line: 255, column: 33, scope: !2262)
!2270 = !DILocation(line: 255, column: 19, scope: !2262)
!2271 = !DILocation(line: 255, column: 44, scope: !2262)
!2272 = !DILocation(line: 255, column: 48, scope: !2262)
!2273 = !DILocation(line: 255, column: 42, scope: !2262)
!2274 = !DILocation(line: 255, column: 59, scope: !2262)
!2275 = !DILocation(line: 255, column: 57, scope: !2262)
!2276 = !DILocation(line: 255, column: 13, scope: !2262)
!2277 = !DILocation(line: 256, column: 15, scope: !2262)
!2278 = !DILocation(line: 256, column: 19, scope: !2262)
!2279 = !DILocation(line: 257, column: 5, scope: !2262)
!2280 = !DILocation(line: 258, column: 20, scope: !2262)
!2281 = !DILocation(line: 258, column: 14, scope: !2262)
!2282 = !DILocation(line: 259, column: 29, scope: !2262)
!2283 = !DILocation(line: 259, column: 49, scope: !2262)
!2284 = !DILocation(line: 259, column: 33, scope: !2262)
!2285 = !DILocation(line: 259, column: 60, scope: !2262)
!2286 = !DILocation(line: 259, column: 58, scope: !2262)
!2287 = !DILocation(line: 260, column: 29, scope: !2262)
!2288 = !DILocation(line: 260, column: 19, scope: !2262)
!2289 = !DILocation(line: 260, column: 44, scope: !2262)
!2290 = !DILocation(line: 260, column: 42, scope: !2262)
!2291 = !DILocation(line: 262, column: 5, scope: !2262)
!2292 = !DILocation(line: 263, column: 29, scope: !2262)
!2293 = !DILocation(line: 263, column: 35, scope: !2262)
!2294 = !DILocation(line: 263, column: 33, scope: !2262)
!2295 = !DILocation(line: 264, column: 15, scope: !2262)
!2296 = !DILocation(line: 0, scope: !2262)
!2297 = !DILocation(line: 267, column: 1, scope: !2262)
!2298 = distinct !DISubprogram(name: "rep_clz", scope: !338, file: !338, line: 49, type: !179, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !2)
!2299 = !DILocation(line: 50, column: 12, scope: !2298)
!2300 = !DILocation(line: 50, column: 5, scope: !2298)
!2301 = distinct !DISubprogram(name: "__negdf2", scope: !136, file: !136, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !135, retainedNodes: !2)
!2302 = !DILocation(line: 21, column: 20, scope: !2301)
!2303 = !DILocation(line: 21, column: 29, scope: !2301)
!2304 = !DILocation(line: 21, column: 12, scope: !2301)
!2305 = !DILocation(line: 21, column: 5, scope: !2301)
!2306 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !135, retainedNodes: !2)
!2307 = !DILocation(line: 233, column: 16, scope: !2306)
!2308 = !DILocation(line: 233, column: 5, scope: !2306)
!2309 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !135, retainedNodes: !2)
!2310 = !DILocation(line: 238, column: 16, scope: !2309)
!2311 = !DILocation(line: 238, column: 5, scope: !2309)
!2312 = distinct !DISubprogram(name: "__negdi2", scope: !138, file: !138, line: 20, type: !179, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !137, retainedNodes: !2)
!2313 = !DILocation(line: 25, column: 12, scope: !2312)
!2314 = !DILocation(line: 25, column: 5, scope: !2312)
!2315 = distinct !DISubprogram(name: "__negsf2", scope: !140, file: !140, line: 20, type: !179, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !2)
!2316 = !DILocation(line: 21, column: 20, scope: !2315)
!2317 = !DILocation(line: 21, column: 29, scope: !2315)
!2318 = !DILocation(line: 21, column: 12, scope: !2315)
!2319 = !DILocation(line: 21, column: 5, scope: !2315)
!2320 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !2)
!2321 = !DILocation(line: 233, column: 16, scope: !2320)
!2322 = !DILocation(line: 233, column: 5, scope: !2320)
!2323 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !2)
!2324 = !DILocation(line: 238, column: 16, scope: !2323)
!2325 = !DILocation(line: 238, column: 5, scope: !2323)
!2326 = distinct !DISubprogram(name: "__negvdi2", scope: !144, file: !144, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !2)
!2327 = !DILocation(line: 25, column: 11, scope: !2326)
!2328 = !DILocation(line: 25, column: 9, scope: !2326)
!2329 = !DILocation(line: 26, column: 9, scope: !2326)
!2330 = !DILocation(line: 27, column: 12, scope: !2326)
!2331 = !DILocation(line: 27, column: 5, scope: !2326)
!2332 = distinct !DISubprogram(name: "__negvsi2", scope: !146, file: !146, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !2)
!2333 = !DILocation(line: 25, column: 11, scope: !2332)
!2334 = !DILocation(line: 25, column: 9, scope: !2332)
!2335 = !DILocation(line: 26, column: 9, scope: !2332)
!2336 = !DILocation(line: 27, column: 12, scope: !2332)
!2337 = !DILocation(line: 27, column: 5, scope: !2332)
!2338 = distinct !DISubprogram(name: "__powidf2", scope: !150, file: !150, line: 20, type: !179, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !149, retainedNodes: !2)
!2339 = !DILocation(line: 24, column: 5, scope: !2338)
!2340 = !DILocation(line: 0, scope: !2338)
!2341 = !DILocation(line: 26, column: 15, scope: !2338)
!2342 = !DILocation(line: 26, column: 13, scope: !2338)
!2343 = !DILocation(line: 27, column: 15, scope: !2338)
!2344 = !DILocation(line: 27, column: 13, scope: !2338)
!2345 = !DILocation(line: 29, column: 15, scope: !2338)
!2346 = !DILocation(line: 29, column: 13, scope: !2338)
!2347 = !DILocation(line: 30, column: 13, scope: !2338)
!2348 = !DILocation(line: 28, column: 11, scope: !2338)
!2349 = !DILocation(line: 31, column: 11, scope: !2338)
!2350 = distinct !{!2350, !2339, !2351}
!2351 = !DILocation(line: 32, column: 5, scope: !2338)
!2352 = !DILocation(line: 33, column: 12, scope: !2338)
!2353 = !DILocation(line: 33, column: 21, scope: !2338)
!2354 = !DILocation(line: 33, column: 5, scope: !2338)
!2355 = distinct !DISubprogram(name: "__powisf2", scope: !152, file: !152, line: 20, type: !179, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !151, retainedNodes: !2)
!2356 = !DILocation(line: 24, column: 5, scope: !2355)
!2357 = !DILocation(line: 0, scope: !2355)
!2358 = !DILocation(line: 26, column: 15, scope: !2355)
!2359 = !DILocation(line: 26, column: 13, scope: !2355)
!2360 = !DILocation(line: 27, column: 15, scope: !2355)
!2361 = !DILocation(line: 27, column: 13, scope: !2355)
!2362 = !DILocation(line: 29, column: 15, scope: !2355)
!2363 = !DILocation(line: 29, column: 13, scope: !2355)
!2364 = !DILocation(line: 30, column: 13, scope: !2355)
!2365 = !DILocation(line: 28, column: 11, scope: !2355)
!2366 = !DILocation(line: 31, column: 11, scope: !2355)
!2367 = distinct !{!2367, !2356, !2368}
!2368 = !DILocation(line: 32, column: 5, scope: !2355)
!2369 = !DILocation(line: 33, column: 12, scope: !2355)
!2370 = !DILocation(line: 33, column: 21, scope: !2355)
!2371 = !DILocation(line: 33, column: 5, scope: !2355)
!2372 = distinct !DISubprogram(name: "__powixf2", scope: !156, file: !156, line: 22, type: !179, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !155, retainedNodes: !2)
!2373 = !DILocation(line: 26, column: 5, scope: !2372)
!2374 = !DILocation(line: 0, scope: !2372)
!2375 = !DILocation(line: 28, column: 15, scope: !2372)
!2376 = !DILocation(line: 28, column: 13, scope: !2372)
!2377 = !DILocation(line: 29, column: 15, scope: !2372)
!2378 = !DILocation(line: 29, column: 13, scope: !2372)
!2379 = !DILocation(line: 31, column: 15, scope: !2372)
!2380 = !DILocation(line: 31, column: 13, scope: !2372)
!2381 = !DILocation(line: 32, column: 13, scope: !2372)
!2382 = !DILocation(line: 30, column: 11, scope: !2372)
!2383 = !DILocation(line: 33, column: 11, scope: !2372)
!2384 = distinct !{!2384, !2373, !2385}
!2385 = !DILocation(line: 34, column: 5, scope: !2372)
!2386 = !DILocation(line: 35, column: 12, scope: !2372)
!2387 = !DILocation(line: 35, column: 21, scope: !2372)
!2388 = !DILocation(line: 35, column: 5, scope: !2372)
!2389 = distinct !DISubprogram(name: "__subdf3", scope: !158, file: !158, line: 22, type: !179, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !157, retainedNodes: !2)
!2390 = !DILocation(line: 23, column: 32, scope: !2389)
!2391 = !DILocation(line: 23, column: 41, scope: !2389)
!2392 = !DILocation(line: 23, column: 24, scope: !2389)
!2393 = !DILocation(line: 23, column: 12, scope: !2389)
!2394 = !DILocation(line: 23, column: 5, scope: !2389)
!2395 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !157, retainedNodes: !2)
!2396 = !DILocation(line: 233, column: 16, scope: !2395)
!2397 = !DILocation(line: 233, column: 5, scope: !2395)
!2398 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !157, retainedNodes: !2)
!2399 = !DILocation(line: 238, column: 16, scope: !2398)
!2400 = !DILocation(line: 238, column: 5, scope: !2398)
!2401 = distinct !DISubprogram(name: "__subsf3", scope: !160, file: !160, line: 22, type: !179, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !159, retainedNodes: !2)
!2402 = !DILocation(line: 23, column: 32, scope: !2401)
!2403 = !DILocation(line: 23, column: 41, scope: !2401)
!2404 = !DILocation(line: 23, column: 24, scope: !2401)
!2405 = !DILocation(line: 23, column: 12, scope: !2401)
!2406 = !DILocation(line: 23, column: 5, scope: !2401)
!2407 = distinct !DISubprogram(name: "toRep", scope: !338, file: !338, line: 231, type: !179, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !159, retainedNodes: !2)
!2408 = !DILocation(line: 233, column: 16, scope: !2407)
!2409 = !DILocation(line: 233, column: 5, scope: !2407)
!2410 = distinct !DISubprogram(name: "fromRep", scope: !338, file: !338, line: 236, type: !179, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !159, retainedNodes: !2)
!2411 = !DILocation(line: 238, column: 16, scope: !2410)
!2412 = !DILocation(line: 238, column: 5, scope: !2410)
!2413 = distinct !DISubprogram(name: "__truncdfhf2", scope: !164, file: !164, line: 16, type: !179, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !163, retainedNodes: !2)
!2414 = !DILocation(line: 17, column: 12, scope: !2413)
!2415 = !DILocation(line: 17, column: 5, scope: !2413)
!2416 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !2417, file: !2417, line: 42, type: !179, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !163, retainedNodes: !2)
!2417 = !DIFile(filename: "../libraries/builtinsfloat/fp_trunc_impl.inc", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!2418 = !DILocation(line: 74, column: 28, scope: !2416)
!2419 = !DILocation(line: 75, column: 33, scope: !2416)
!2420 = !DILocation(line: 79, column: 14, scope: !2416)
!2421 = !DILocation(line: 79, column: 33, scope: !2416)
!2422 = !DILocation(line: 79, column: 26, scope: !2416)
!2423 = !DILocation(line: 79, column: 9, scope: !2416)
!2424 = !DILocation(line: 83, column: 26, scope: !2416)
!2425 = !DILocation(line: 83, column: 21, scope: !2416)
!2426 = !DILocation(line: 84, column: 19, scope: !2416)
!2427 = !DILocation(line: 86, column: 42, scope: !2416)
!2428 = !DILocation(line: 88, column: 23, scope: !2416)
!2429 = !DILocation(line: 88, column: 13, scope: !2416)
!2430 = !DILocation(line: 89, column: 22, scope: !2416)
!2431 = !DILocation(line: 89, column: 13, scope: !2416)
!2432 = !DILocation(line: 91, column: 28, scope: !2416)
!2433 = !DILocation(line: 91, column: 18, scope: !2416)
!2434 = !DILocation(line: 92, column: 36, scope: !2416)
!2435 = !DILocation(line: 92, column: 23, scope: !2416)
!2436 = !DILocation(line: 92, column: 13, scope: !2416)
!2437 = !DILocation(line: 0, scope: !2416)
!2438 = !DILocation(line: 93, column: 5, scope: !2416)
!2439 = !DILocation(line: 94, column: 19, scope: !2416)
!2440 = !DILocation(line: 94, column: 14, scope: !2416)
!2441 = !DILocation(line: 100, column: 43, scope: !2416)
!2442 = !DILocation(line: 100, column: 19, scope: !2416)
!2443 = !DILocation(line: 101, column: 5, scope: !2416)
!2444 = !DILocation(line: 102, column: 19, scope: !2416)
!2445 = !DILocation(line: 102, column: 14, scope: !2416)
!2446 = !DILocation(line: 105, column: 5, scope: !2416)
!2447 = !DILocation(line: 110, column: 31, scope: !2416)
!2448 = !DILocation(line: 110, column: 26, scope: !2416)
!2449 = !DILocation(line: 113, column: 45, scope: !2416)
!2450 = !DILocation(line: 113, column: 67, scope: !2416)
!2451 = !DILocation(line: 116, column: 19, scope: !2416)
!2452 = !DILocation(line: 116, column: 13, scope: !2416)
!2453 = !DILocation(line: 118, column: 9, scope: !2416)
!2454 = !DILocation(line: 111, column: 58, scope: !2416)
!2455 = !DILocation(line: 119, column: 57, scope: !2416)
!2456 = !DILocation(line: 119, column: 45, scope: !2416)
!2457 = !DILocation(line: 119, column: 33, scope: !2416)
!2458 = !DILocation(line: 120, column: 61, scope: !2416)
!2459 = !DILocation(line: 120, column: 72, scope: !2416)
!2460 = !DILocation(line: 121, column: 49, scope: !2416)
!2461 = !DILocation(line: 121, column: 25, scope: !2416)
!2462 = !DILocation(line: 122, column: 65, scope: !2416)
!2463 = !DILocation(line: 124, column: 27, scope: !2416)
!2464 = !DILocation(line: 124, column: 17, scope: !2416)
!2465 = !DILocation(line: 125, column: 26, scope: !2416)
!2466 = !DILocation(line: 125, column: 17, scope: !2416)
!2467 = !DILocation(line: 127, column: 32, scope: !2416)
!2468 = !DILocation(line: 127, column: 22, scope: !2416)
!2469 = !DILocation(line: 128, column: 30, scope: !2416)
!2470 = !DILocation(line: 128, column: 40, scope: !2416)
!2471 = !DILocation(line: 128, column: 27, scope: !2416)
!2472 = !DILocation(line: 128, column: 17, scope: !2416)
!2473 = !DILocation(line: 133, column: 47, scope: !2416)
!2474 = !DILocation(line: 133, column: 30, scope: !2416)
!2475 = !DILocation(line: 134, column: 12, scope: !2416)
!2476 = !DILocation(line: 134, column: 5, scope: !2416)
!2477 = distinct !DISubprogram(name: "srcToRep", scope: !2478, file: !2478, line: 66, type: !179, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !163, retainedNodes: !2)
!2478 = !DIFile(filename: "../libraries/builtinsfloat/fp_trunc.h", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.qwfv6Eg4hB")
!2479 = !DILocation(line: 68, column: 16, scope: !2477)
!2480 = !DILocation(line: 68, column: 5, scope: !2477)
!2481 = distinct !DISubprogram(name: "dstFromRep", scope: !2478, file: !2478, line: 71, type: !179, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !163, retainedNodes: !2)
!2482 = !DILocation(line: 73, column: 5, scope: !2481)
!2483 = distinct !DISubprogram(name: "__truncdfsf2", scope: !166, file: !166, line: 16, type: !179, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !165, retainedNodes: !2)
!2484 = !DILocation(line: 17, column: 12, scope: !2483)
!2485 = !DILocation(line: 17, column: 5, scope: !2483)
!2486 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !2417, file: !2417, line: 42, type: !179, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !165, retainedNodes: !2)
!2487 = !DILocation(line: 74, column: 28, scope: !2486)
!2488 = !DILocation(line: 75, column: 33, scope: !2486)
!2489 = !DILocation(line: 79, column: 14, scope: !2486)
!2490 = !DILocation(line: 79, column: 33, scope: !2486)
!2491 = !DILocation(line: 79, column: 26, scope: !2486)
!2492 = !DILocation(line: 79, column: 9, scope: !2486)
!2493 = !DILocation(line: 83, column: 26, scope: !2486)
!2494 = !DILocation(line: 83, column: 21, scope: !2486)
!2495 = !DILocation(line: 84, column: 19, scope: !2486)
!2496 = !DILocation(line: 86, column: 42, scope: !2486)
!2497 = !DILocation(line: 88, column: 23, scope: !2486)
!2498 = !DILocation(line: 88, column: 13, scope: !2486)
!2499 = !DILocation(line: 89, column: 22, scope: !2486)
!2500 = !DILocation(line: 89, column: 13, scope: !2486)
!2501 = !DILocation(line: 91, column: 28, scope: !2486)
!2502 = !DILocation(line: 91, column: 18, scope: !2486)
!2503 = !DILocation(line: 92, column: 36, scope: !2486)
!2504 = !DILocation(line: 92, column: 23, scope: !2486)
!2505 = !DILocation(line: 92, column: 13, scope: !2486)
!2506 = !DILocation(line: 0, scope: !2486)
!2507 = !DILocation(line: 93, column: 5, scope: !2486)
!2508 = !DILocation(line: 94, column: 19, scope: !2486)
!2509 = !DILocation(line: 94, column: 14, scope: !2486)
!2510 = !DILocation(line: 100, column: 43, scope: !2486)
!2511 = !DILocation(line: 100, column: 19, scope: !2486)
!2512 = !DILocation(line: 101, column: 5, scope: !2486)
!2513 = !DILocation(line: 102, column: 19, scope: !2486)
!2514 = !DILocation(line: 102, column: 14, scope: !2486)
!2515 = !DILocation(line: 105, column: 5, scope: !2486)
!2516 = !DILocation(line: 110, column: 31, scope: !2486)
!2517 = !DILocation(line: 110, column: 26, scope: !2486)
!2518 = !DILocation(line: 113, column: 45, scope: !2486)
!2519 = !DILocation(line: 113, column: 67, scope: !2486)
!2520 = !DILocation(line: 116, column: 19, scope: !2486)
!2521 = !DILocation(line: 116, column: 13, scope: !2486)
!2522 = !DILocation(line: 118, column: 9, scope: !2486)
!2523 = !DILocation(line: 111, column: 58, scope: !2486)
!2524 = !DILocation(line: 119, column: 57, scope: !2486)
!2525 = !DILocation(line: 119, column: 45, scope: !2486)
!2526 = !DILocation(line: 119, column: 33, scope: !2486)
!2527 = !DILocation(line: 120, column: 61, scope: !2486)
!2528 = !DILocation(line: 120, column: 72, scope: !2486)
!2529 = !DILocation(line: 121, column: 49, scope: !2486)
!2530 = !DILocation(line: 121, column: 25, scope: !2486)
!2531 = !DILocation(line: 122, column: 65, scope: !2486)
!2532 = !DILocation(line: 124, column: 27, scope: !2486)
!2533 = !DILocation(line: 124, column: 17, scope: !2486)
!2534 = !DILocation(line: 125, column: 26, scope: !2486)
!2535 = !DILocation(line: 125, column: 17, scope: !2486)
!2536 = !DILocation(line: 127, column: 32, scope: !2486)
!2537 = !DILocation(line: 127, column: 22, scope: !2486)
!2538 = !DILocation(line: 128, column: 40, scope: !2486)
!2539 = !DILocation(line: 128, column: 27, scope: !2486)
!2540 = !DILocation(line: 128, column: 17, scope: !2486)
!2541 = !DILocation(line: 133, column: 47, scope: !2486)
!2542 = !DILocation(line: 133, column: 30, scope: !2486)
!2543 = !DILocation(line: 134, column: 12, scope: !2486)
!2544 = !DILocation(line: 134, column: 5, scope: !2486)
!2545 = distinct !DISubprogram(name: "srcToRep", scope: !2478, file: !2478, line: 66, type: !179, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !165, retainedNodes: !2)
!2546 = !DILocation(line: 68, column: 16, scope: !2545)
!2547 = !DILocation(line: 68, column: 5, scope: !2545)
!2548 = distinct !DISubprogram(name: "dstFromRep", scope: !2478, file: !2478, line: 71, type: !179, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !165, retainedNodes: !2)
!2549 = !DILocation(line: 73, column: 16, scope: !2548)
!2550 = !DILocation(line: 73, column: 5, scope: !2548)
!2551 = distinct !DISubprogram(name: "__truncsfhf2", scope: !168, file: !168, line: 18, type: !179, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !167, retainedNodes: !2)
!2552 = !DILocation(line: 19, column: 12, scope: !2551)
!2553 = !DILocation(line: 19, column: 5, scope: !2551)
!2554 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !2417, file: !2417, line: 42, type: !179, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !167, retainedNodes: !2)
!2555 = !DILocation(line: 74, column: 28, scope: !2554)
!2556 = !DILocation(line: 75, column: 33, scope: !2554)
!2557 = !DILocation(line: 79, column: 14, scope: !2554)
!2558 = !DILocation(line: 79, column: 33, scope: !2554)
!2559 = !DILocation(line: 79, column: 26, scope: !2554)
!2560 = !DILocation(line: 79, column: 9, scope: !2554)
!2561 = !DILocation(line: 83, column: 26, scope: !2554)
!2562 = !DILocation(line: 84, column: 19, scope: !2554)
!2563 = !DILocation(line: 86, column: 42, scope: !2554)
!2564 = !DILocation(line: 88, column: 23, scope: !2554)
!2565 = !DILocation(line: 88, column: 13, scope: !2554)
!2566 = !DILocation(line: 89, column: 22, scope: !2554)
!2567 = !DILocation(line: 89, column: 13, scope: !2554)
!2568 = !DILocation(line: 91, column: 28, scope: !2554)
!2569 = !DILocation(line: 91, column: 18, scope: !2554)
!2570 = !DILocation(line: 92, column: 36, scope: !2554)
!2571 = !DILocation(line: 92, column: 23, scope: !2554)
!2572 = !DILocation(line: 92, column: 13, scope: !2554)
!2573 = !DILocation(line: 0, scope: !2554)
!2574 = !DILocation(line: 93, column: 5, scope: !2554)
!2575 = !DILocation(line: 94, column: 19, scope: !2554)
!2576 = !DILocation(line: 94, column: 14, scope: !2554)
!2577 = !DILocation(line: 100, column: 43, scope: !2554)
!2578 = !DILocation(line: 100, column: 19, scope: !2554)
!2579 = !DILocation(line: 101, column: 5, scope: !2554)
!2580 = !DILocation(line: 102, column: 19, scope: !2554)
!2581 = !DILocation(line: 102, column: 14, scope: !2554)
!2582 = !DILocation(line: 105, column: 5, scope: !2554)
!2583 = !DILocation(line: 110, column: 31, scope: !2554)
!2584 = !DILocation(line: 113, column: 45, scope: !2554)
!2585 = !DILocation(line: 113, column: 67, scope: !2554)
!2586 = !DILocation(line: 116, column: 19, scope: !2554)
!2587 = !DILocation(line: 116, column: 13, scope: !2554)
!2588 = !DILocation(line: 118, column: 9, scope: !2554)
!2589 = !DILocation(line: 111, column: 58, scope: !2554)
!2590 = !DILocation(line: 119, column: 57, scope: !2554)
!2591 = !DILocation(line: 119, column: 45, scope: !2554)
!2592 = !DILocation(line: 119, column: 33, scope: !2554)
!2593 = !DILocation(line: 120, column: 61, scope: !2554)
!2594 = !DILocation(line: 120, column: 72, scope: !2554)
!2595 = !DILocation(line: 121, column: 49, scope: !2554)
!2596 = !DILocation(line: 122, column: 65, scope: !2554)
!2597 = !DILocation(line: 124, column: 27, scope: !2554)
!2598 = !DILocation(line: 124, column: 17, scope: !2554)
!2599 = !DILocation(line: 125, column: 26, scope: !2554)
!2600 = !DILocation(line: 125, column: 17, scope: !2554)
!2601 = !DILocation(line: 127, column: 32, scope: !2554)
!2602 = !DILocation(line: 127, column: 22, scope: !2554)
!2603 = !DILocation(line: 128, column: 40, scope: !2554)
!2604 = !DILocation(line: 128, column: 27, scope: !2554)
!2605 = !DILocation(line: 128, column: 17, scope: !2554)
!2606 = !DILocation(line: 133, column: 47, scope: !2554)
!2607 = !DILocation(line: 133, column: 40, scope: !2554)
!2608 = !DILocation(line: 133, column: 30, scope: !2554)
!2609 = !DILocation(line: 134, column: 12, scope: !2554)
!2610 = !DILocation(line: 134, column: 5, scope: !2554)
!2611 = distinct !DISubprogram(name: "srcToRep", scope: !2478, file: !2478, line: 66, type: !179, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !167, retainedNodes: !2)
!2612 = !DILocation(line: 68, column: 16, scope: !2611)
!2613 = !DILocation(line: 68, column: 5, scope: !2611)
!2614 = distinct !DISubprogram(name: "dstFromRep", scope: !2478, file: !2478, line: 71, type: !179, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !167, retainedNodes: !2)
!2615 = !DILocation(line: 73, column: 5, scope: !2614)
!2616 = distinct !DISubprogram(name: "__gnu_f2h_ieee", scope: !168, file: !168, line: 22, type: !179, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !167, retainedNodes: !2)
!2617 = !DILocation(line: 23, column: 12, scope: !2616)
!2618 = !DILocation(line: 23, column: 5, scope: !2616)
