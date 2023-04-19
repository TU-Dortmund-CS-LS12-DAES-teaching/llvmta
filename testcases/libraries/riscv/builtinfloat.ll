; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"

%union.anon.0 = type { double }
%union.anon.0.0 = type { float }
%union.anon = type { i16 }
%union.long_double_bits = type { fp128 }
%struct.uqwords = type { %union.udwords, %union.udwords }
%union.udwords = type { i64 }
%struct.anon = type { i32, i32 }
%union.float_bits = type { i32 }

@__const.__floatdidf.low = private unnamed_addr constant { double } { double 0x4330000000000000 }, align 8
@__const.__floatundidf.high = private unnamed_addr constant { double } { double 0x4530000000000000 }, align 8
@__const.__floatundidf.low = private unnamed_addr constant { double } { double 0x4330000000000000 }, align 8
@.str = private unnamed_addr constant [13 x i8] c"../negvdi2.c\00", align 1
@__func__.__negvdi2 = private unnamed_addr constant [10 x i8] c"__negvdi2\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"../negvsi2.c\00", align 1
@__func__.__negvsi2 = private unnamed_addr constant [10 x i8] c"__negvsi2\00", align 1

@__cmpdf2 = dso_local alias void (...), bitcast (i32 (double, double)* @__ledf2 to void (...)*)
@__cmpsf2 = dso_local alias void (...), bitcast (i32 (float, float)* @__lesf2 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local double @__adddf3(double noundef %a, double noundef %b) #0 !dbg !135 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !138
  %1 = load double, double* %b.addr, align 8, !dbg !139
  %call = call double @__addXf3__(double noundef %0, double noundef %1) #4, !dbg !140
  ret double %call, !dbg !141
}

; Function Attrs: noinline nounwind
define internal double @__addXf3__(double noundef %a, double noundef %b) #0 !dbg !142 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aRep = alloca i64, align 8
  %bRep = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  %temp = alloca i64, align 8
  %aExponent = alloca i32, align 4
  %bExponent = alloca i32, align 4
  %aSignificand = alloca i64, align 8
  %bSignificand = alloca i64, align 8
  %resultSign = alloca i64, align 8
  %subtraction = alloca i8, align 1
  %align = alloca i32, align 4
  %sticky = alloca i8, align 1
  %shift = alloca i32, align 4
  %sticky105 = alloca i8, align 1
  %shift125 = alloca i32, align 4
  %sticky127 = alloca i8, align 1
  %roundGuardSticky = alloca i32, align 4
  %result = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !144
  %call = call i64 @toRep(double noundef %0) #4, !dbg !145
  store i64 %call, i64* %aRep, align 8, !dbg !146
  %1 = load double, double* %b.addr, align 8, !dbg !147
  %call1 = call i64 @toRep(double noundef %1) #4, !dbg !148
  store i64 %call1, i64* %bRep, align 8, !dbg !149
  %2 = load i64, i64* %aRep, align 8, !dbg !150
  %and = and i64 %2, 9223372036854775807, !dbg !151
  store i64 %and, i64* %aAbs, align 8, !dbg !152
  %3 = load i64, i64* %bRep, align 8, !dbg !153
  %and2 = and i64 %3, 9223372036854775807, !dbg !154
  store i64 %and2, i64* %bAbs, align 8, !dbg !155
  %4 = load i64, i64* %aAbs, align 8, !dbg !156
  %sub = sub i64 %4, 1, !dbg !157
  %cmp = icmp uge i64 %sub, 9218868437227405311, !dbg !158
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !159

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %bAbs, align 8, !dbg !160
  %sub3 = sub i64 %5, 1, !dbg !161
  %cmp4 = icmp uge i64 %sub3, 9218868437227405311, !dbg !162
  br i1 %cmp4, label %if.then, label %if.end38, !dbg !156

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, i64* %aAbs, align 8, !dbg !163
  %cmp5 = icmp ugt i64 %6, 9218868437227405312, !dbg !164
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !163

if.then6:                                         ; preds = %if.then
  %7 = load double, double* %a.addr, align 8, !dbg !165
  %call7 = call i64 @toRep(double noundef %7) #4, !dbg !166
  %or = or i64 %call7, 2251799813685248, !dbg !167
  %call8 = call double @fromRep(i64 noundef %or) #4, !dbg !168
  store double %call8, double* %retval, align 8, !dbg !169
  br label %return, !dbg !169

if.end:                                           ; preds = %if.then
  %8 = load i64, i64* %bAbs, align 8, !dbg !170
  %cmp9 = icmp ugt i64 %8, 9218868437227405312, !dbg !171
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !170

if.then10:                                        ; preds = %if.end
  %9 = load double, double* %b.addr, align 8, !dbg !172
  %call11 = call i64 @toRep(double noundef %9) #4, !dbg !173
  %or12 = or i64 %call11, 2251799813685248, !dbg !174
  %call13 = call double @fromRep(i64 noundef %or12) #4, !dbg !175
  store double %call13, double* %retval, align 8, !dbg !176
  br label %return, !dbg !176

if.end14:                                         ; preds = %if.end
  %10 = load i64, i64* %aAbs, align 8, !dbg !177
  %cmp15 = icmp eq i64 %10, 9218868437227405312, !dbg !178
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !177

if.then16:                                        ; preds = %if.end14
  %11 = load double, double* %a.addr, align 8, !dbg !179
  %call17 = call i64 @toRep(double noundef %11) #4, !dbg !180
  %12 = load double, double* %b.addr, align 8, !dbg !181
  %call18 = call i64 @toRep(double noundef %12) #4, !dbg !182
  %xor = xor i64 %call17, %call18, !dbg !183
  %cmp19 = icmp eq i64 %xor, -9223372036854775808, !dbg !184
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !185

if.then20:                                        ; preds = %if.then16
  %call21 = call double @fromRep(i64 noundef 9221120237041090560) #4, !dbg !186
  store double %call21, double* %retval, align 8, !dbg !187
  br label %return, !dbg !187

if.else:                                          ; preds = %if.then16
  %13 = load double, double* %a.addr, align 8, !dbg !188
  store double %13, double* %retval, align 8, !dbg !189
  br label %return, !dbg !189

if.end22:                                         ; preds = %if.end14
  %14 = load i64, i64* %bAbs, align 8, !dbg !190
  %cmp23 = icmp eq i64 %14, 9218868437227405312, !dbg !191
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !190

if.then24:                                        ; preds = %if.end22
  %15 = load double, double* %b.addr, align 8, !dbg !192
  store double %15, double* %retval, align 8, !dbg !193
  br label %return, !dbg !193

if.end25:                                         ; preds = %if.end22
  %16 = load i64, i64* %aAbs, align 8, !dbg !194
  %tobool = icmp ne i64 %16, 0, !dbg !194
  br i1 %tobool, label %if.end34, label %if.then26, !dbg !195

if.then26:                                        ; preds = %if.end25
  %17 = load i64, i64* %bAbs, align 8, !dbg !196
  %tobool27 = icmp ne i64 %17, 0, !dbg !196
  br i1 %tobool27, label %if.else33, label %if.then28, !dbg !197

if.then28:                                        ; preds = %if.then26
  %18 = load double, double* %a.addr, align 8, !dbg !198
  %call29 = call i64 @toRep(double noundef %18) #4, !dbg !199
  %19 = load double, double* %b.addr, align 8, !dbg !200
  %call30 = call i64 @toRep(double noundef %19) #4, !dbg !201
  %and31 = and i64 %call29, %call30, !dbg !202
  %call32 = call double @fromRep(i64 noundef %and31) #4, !dbg !203
  store double %call32, double* %retval, align 8, !dbg !204
  br label %return, !dbg !204

if.else33:                                        ; preds = %if.then26
  %20 = load double, double* %b.addr, align 8, !dbg !205
  store double %20, double* %retval, align 8, !dbg !206
  br label %return, !dbg !206

if.end34:                                         ; preds = %if.end25
  %21 = load i64, i64* %bAbs, align 8, !dbg !207
  %tobool35 = icmp ne i64 %21, 0, !dbg !207
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !208

if.then36:                                        ; preds = %if.end34
  %22 = load double, double* %a.addr, align 8, !dbg !209
  store double %22, double* %retval, align 8, !dbg !210
  br label %return, !dbg !210

if.end37:                                         ; preds = %if.end34
  br label %if.end38, !dbg !211

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %23 = load i64, i64* %bAbs, align 8, !dbg !212
  %24 = load i64, i64* %aAbs, align 8, !dbg !213
  %cmp39 = icmp ugt i64 %23, %24, !dbg !214
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !212

if.then40:                                        ; preds = %if.end38
  %25 = load i64, i64* %aRep, align 8, !dbg !215
  store i64 %25, i64* %temp, align 8, !dbg !216
  %26 = load i64, i64* %bRep, align 8, !dbg !217
  store i64 %26, i64* %aRep, align 8, !dbg !218
  %27 = load i64, i64* %temp, align 8, !dbg !219
  store i64 %27, i64* %bRep, align 8, !dbg !220
  br label %if.end41, !dbg !221

if.end41:                                         ; preds = %if.then40, %if.end38
  %28 = load i64, i64* %aRep, align 8, !dbg !222
  %shr = lshr i64 %28, 52, !dbg !223
  %and42 = and i64 %shr, 2047, !dbg !224
  %conv = trunc i64 %and42 to i32, !dbg !222
  store i32 %conv, i32* %aExponent, align 4, !dbg !225
  %29 = load i64, i64* %bRep, align 8, !dbg !226
  %shr43 = lshr i64 %29, 52, !dbg !227
  %and44 = and i64 %shr43, 2047, !dbg !228
  %conv45 = trunc i64 %and44 to i32, !dbg !226
  store i32 %conv45, i32* %bExponent, align 4, !dbg !229
  %30 = load i64, i64* %aRep, align 8, !dbg !230
  %and46 = and i64 %30, 4503599627370495, !dbg !231
  store i64 %and46, i64* %aSignificand, align 8, !dbg !232
  %31 = load i64, i64* %bRep, align 8, !dbg !233
  %and47 = and i64 %31, 4503599627370495, !dbg !234
  store i64 %and47, i64* %bSignificand, align 8, !dbg !235
  %32 = load i32, i32* %aExponent, align 4, !dbg !236
  %cmp48 = icmp eq i32 %32, 0, !dbg !237
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !236

if.then50:                                        ; preds = %if.end41
  %call51 = call i32 @normalize(i64* noundef %aSignificand) #4, !dbg !238
  store i32 %call51, i32* %aExponent, align 4, !dbg !239
  br label %if.end52, !dbg !240

if.end52:                                         ; preds = %if.then50, %if.end41
  %33 = load i32, i32* %bExponent, align 4, !dbg !241
  %cmp53 = icmp eq i32 %33, 0, !dbg !242
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !241

if.then55:                                        ; preds = %if.end52
  %call56 = call i32 @normalize(i64* noundef %bSignificand) #4, !dbg !243
  store i32 %call56, i32* %bExponent, align 4, !dbg !244
  br label %if.end57, !dbg !245

if.end57:                                         ; preds = %if.then55, %if.end52
  %34 = load i64, i64* %aRep, align 8, !dbg !246
  %and58 = and i64 %34, -9223372036854775808, !dbg !247
  store i64 %and58, i64* %resultSign, align 8, !dbg !248
  %35 = load i64, i64* %aRep, align 8, !dbg !249
  %36 = load i64, i64* %bRep, align 8, !dbg !250
  %xor59 = xor i64 %35, %36, !dbg !251
  %and60 = and i64 %xor59, -9223372036854775808, !dbg !252
  %tobool61 = icmp ne i64 %and60, 0, !dbg !253
  %frombool = zext i1 %tobool61 to i8, !dbg !254
  store i8 %frombool, i8* %subtraction, align 1, !dbg !254
  %37 = load i64, i64* %aSignificand, align 8, !dbg !255
  %or62 = or i64 %37, 4503599627370496, !dbg !256
  %shl = shl i64 %or62, 3, !dbg !257
  store i64 %shl, i64* %aSignificand, align 8, !dbg !258
  %38 = load i64, i64* %bSignificand, align 8, !dbg !259
  %or63 = or i64 %38, 4503599627370496, !dbg !260
  %shl64 = shl i64 %or63, 3, !dbg !261
  store i64 %shl64, i64* %bSignificand, align 8, !dbg !262
  %39 = load i32, i32* %aExponent, align 4, !dbg !263
  %40 = load i32, i32* %bExponent, align 4, !dbg !264
  %sub65 = sub nsw i32 %39, %40, !dbg !265
  store i32 %sub65, i32* %align, align 4, !dbg !266
  %41 = load i32, i32* %align, align 4, !dbg !267
  %tobool66 = icmp ne i32 %41, 0, !dbg !267
  br i1 %tobool66, label %if.then67, label %if.end82, !dbg !267

if.then67:                                        ; preds = %if.end57
  %42 = load i32, i32* %align, align 4, !dbg !268
  %cmp68 = icmp ult i32 %42, 64, !dbg !269
  br i1 %cmp68, label %if.then70, label %if.else80, !dbg !268

if.then70:                                        ; preds = %if.then67
  %43 = load i64, i64* %bSignificand, align 8, !dbg !270
  %44 = load i32, i32* %align, align 4, !dbg !271
  %sub71 = sub i32 64, %44, !dbg !272
  %sh_prom = zext i32 %sub71 to i64, !dbg !273
  %shl72 = shl i64 %43, %sh_prom, !dbg !273
  %tobool73 = icmp ne i64 %shl72, 0, !dbg !270
  %frombool74 = zext i1 %tobool73 to i8, !dbg !274
  store i8 %frombool74, i8* %sticky, align 1, !dbg !274
  %45 = load i64, i64* %bSignificand, align 8, !dbg !275
  %46 = load i32, i32* %align, align 4, !dbg !276
  %sh_prom75 = zext i32 %46 to i64, !dbg !277
  %shr76 = lshr i64 %45, %sh_prom75, !dbg !277
  %47 = load i8, i8* %sticky, align 1, !dbg !278
  %tobool77 = trunc i8 %47 to i1, !dbg !278
  %conv78 = zext i1 %tobool77 to i64, !dbg !278
  %or79 = or i64 %shr76, %conv78, !dbg !279
  store i64 %or79, i64* %bSignificand, align 8, !dbg !280
  br label %if.end81, !dbg !281

if.else80:                                        ; preds = %if.then67
  store i64 1, i64* %bSignificand, align 8, !dbg !282
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then70
  br label %if.end82, !dbg !283

if.end82:                                         ; preds = %if.end81, %if.end57
  %48 = load i8, i8* %subtraction, align 1, !dbg !284
  %tobool83 = trunc i8 %48 to i1, !dbg !284
  br i1 %tobool83, label %if.then84, label %if.else101, !dbg !284

if.then84:                                        ; preds = %if.end82
  %49 = load i64, i64* %bSignificand, align 8, !dbg !285
  %50 = load i64, i64* %aSignificand, align 8, !dbg !286
  %sub85 = sub i64 %50, %49, !dbg !286
  store i64 %sub85, i64* %aSignificand, align 8, !dbg !286
  %51 = load i64, i64* %aSignificand, align 8, !dbg !287
  %cmp86 = icmp eq i64 %51, 0, !dbg !288
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !287

if.then88:                                        ; preds = %if.then84
  %call89 = call double @fromRep(i64 noundef 0) #4, !dbg !289
  store double %call89, double* %retval, align 8, !dbg !290
  br label %return, !dbg !290

if.end90:                                         ; preds = %if.then84
  %52 = load i64, i64* %aSignificand, align 8, !dbg !291
  %cmp91 = icmp ult i64 %52, 36028797018963968, !dbg !292
  br i1 %cmp91, label %if.then93, label %if.end100, !dbg !291

if.then93:                                        ; preds = %if.end90
  %53 = load i64, i64* %aSignificand, align 8, !dbg !293
  %call94 = call i32 @rep_clz(i64 noundef %53) #4, !dbg !294
  %call95 = call i32 @rep_clz(i64 noundef 36028797018963968) #4, !dbg !295
  %sub96 = sub nsw i32 %call94, %call95, !dbg !296
  store i32 %sub96, i32* %shift, align 4, !dbg !297
  %54 = load i32, i32* %shift, align 4, !dbg !298
  %55 = load i64, i64* %aSignificand, align 8, !dbg !299
  %sh_prom97 = zext i32 %54 to i64, !dbg !299
  %shl98 = shl i64 %55, %sh_prom97, !dbg !299
  store i64 %shl98, i64* %aSignificand, align 8, !dbg !299
  %56 = load i32, i32* %shift, align 4, !dbg !300
  %57 = load i32, i32* %aExponent, align 4, !dbg !301
  %sub99 = sub nsw i32 %57, %56, !dbg !301
  store i32 %sub99, i32* %aExponent, align 4, !dbg !301
  br label %if.end100, !dbg !302

if.end100:                                        ; preds = %if.then93, %if.end90
  br label %if.end115, !dbg !303

if.else101:                                       ; preds = %if.end82
  %58 = load i64, i64* %bSignificand, align 8, !dbg !304
  %59 = load i64, i64* %aSignificand, align 8, !dbg !305
  %add = add i64 %59, %58, !dbg !305
  store i64 %add, i64* %aSignificand, align 8, !dbg !305
  %60 = load i64, i64* %aSignificand, align 8, !dbg !306
  %and102 = and i64 %60, 72057594037927936, !dbg !307
  %tobool103 = icmp ne i64 %and102, 0, !dbg !307
  br i1 %tobool103, label %if.then104, label %if.end114, !dbg !306

if.then104:                                       ; preds = %if.else101
  %61 = load i64, i64* %aSignificand, align 8, !dbg !308
  %and106 = and i64 %61, 1, !dbg !309
  %tobool107 = icmp ne i64 %and106, 0, !dbg !308
  %frombool108 = zext i1 %tobool107 to i8, !dbg !310
  store i8 %frombool108, i8* %sticky105, align 1, !dbg !310
  %62 = load i64, i64* %aSignificand, align 8, !dbg !311
  %shr109 = lshr i64 %62, 1, !dbg !312
  %63 = load i8, i8* %sticky105, align 1, !dbg !313
  %tobool110 = trunc i8 %63 to i1, !dbg !313
  %conv111 = zext i1 %tobool110 to i64, !dbg !313
  %or112 = or i64 %shr109, %conv111, !dbg !314
  store i64 %or112, i64* %aSignificand, align 8, !dbg !315
  %64 = load i32, i32* %aExponent, align 4, !dbg !316
  %add113 = add nsw i32 %64, 1, !dbg !316
  store i32 %add113, i32* %aExponent, align 4, !dbg !316
  br label %if.end114, !dbg !317

if.end114:                                        ; preds = %if.then104, %if.else101
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end100
  %65 = load i32, i32* %aExponent, align 4, !dbg !318
  %cmp116 = icmp sge i32 %65, 2047, !dbg !319
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !318

if.then118:                                       ; preds = %if.end115
  %66 = load i64, i64* %resultSign, align 8, !dbg !320
  %or119 = or i64 9218868437227405312, %66, !dbg !321
  %call120 = call double @fromRep(i64 noundef %or119) #4, !dbg !322
  store double %call120, double* %retval, align 8, !dbg !323
  br label %return, !dbg !323

if.end121:                                        ; preds = %if.end115
  %67 = load i32, i32* %aExponent, align 4, !dbg !324
  %cmp122 = icmp sle i32 %67, 0, !dbg !325
  br i1 %cmp122, label %if.then124, label %if.end138, !dbg !324

if.then124:                                       ; preds = %if.end121
  %68 = load i32, i32* %aExponent, align 4, !dbg !326
  %sub126 = sub nsw i32 1, %68, !dbg !327
  store i32 %sub126, i32* %shift125, align 4, !dbg !328
  %69 = load i64, i64* %aSignificand, align 8, !dbg !329
  %70 = load i32, i32* %shift125, align 4, !dbg !330
  %sub128 = sub i32 64, %70, !dbg !331
  %sh_prom129 = zext i32 %sub128 to i64, !dbg !332
  %shl130 = shl i64 %69, %sh_prom129, !dbg !332
  %tobool131 = icmp ne i64 %shl130, 0, !dbg !329
  %frombool132 = zext i1 %tobool131 to i8, !dbg !333
  store i8 %frombool132, i8* %sticky127, align 1, !dbg !333
  %71 = load i64, i64* %aSignificand, align 8, !dbg !334
  %72 = load i32, i32* %shift125, align 4, !dbg !335
  %sh_prom133 = zext i32 %72 to i64, !dbg !336
  %shr134 = lshr i64 %71, %sh_prom133, !dbg !336
  %73 = load i8, i8* %sticky127, align 1, !dbg !337
  %tobool135 = trunc i8 %73 to i1, !dbg !337
  %conv136 = zext i1 %tobool135 to i64, !dbg !337
  %or137 = or i64 %shr134, %conv136, !dbg !338
  store i64 %or137, i64* %aSignificand, align 8, !dbg !339
  store i32 0, i32* %aExponent, align 4, !dbg !340
  br label %if.end138, !dbg !341

if.end138:                                        ; preds = %if.then124, %if.end121
  %74 = load i64, i64* %aSignificand, align 8, !dbg !342
  %and139 = and i64 %74, 7, !dbg !343
  %conv140 = trunc i64 %and139 to i32, !dbg !342
  store i32 %conv140, i32* %roundGuardSticky, align 4, !dbg !344
  %75 = load i64, i64* %aSignificand, align 8, !dbg !345
  %shr141 = lshr i64 %75, 3, !dbg !346
  %and142 = and i64 %shr141, 4503599627370495, !dbg !347
  store i64 %and142, i64* %result, align 8, !dbg !348
  %76 = load i32, i32* %aExponent, align 4, !dbg !349
  %conv143 = sext i32 %76 to i64, !dbg !350
  %shl144 = shl i64 %conv143, 52, !dbg !351
  %77 = load i64, i64* %result, align 8, !dbg !352
  %or145 = or i64 %77, %shl144, !dbg !352
  store i64 %or145, i64* %result, align 8, !dbg !352
  %78 = load i64, i64* %resultSign, align 8, !dbg !353
  %79 = load i64, i64* %result, align 8, !dbg !354
  %or146 = or i64 %79, %78, !dbg !354
  store i64 %or146, i64* %result, align 8, !dbg !354
  %80 = load i32, i32* %roundGuardSticky, align 4, !dbg !355
  %cmp147 = icmp sgt i32 %80, 4, !dbg !356
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !355

if.then149:                                       ; preds = %if.end138
  %81 = load i64, i64* %result, align 8, !dbg !357
  %inc = add i64 %81, 1, !dbg !357
  store i64 %inc, i64* %result, align 8, !dbg !357
  br label %if.end150, !dbg !358

if.end150:                                        ; preds = %if.then149, %if.end138
  %82 = load i32, i32* %roundGuardSticky, align 4, !dbg !359
  %cmp151 = icmp eq i32 %82, 4, !dbg !360
  br i1 %cmp151, label %if.then153, label %if.end156, !dbg !359

if.then153:                                       ; preds = %if.end150
  %83 = load i64, i64* %result, align 8, !dbg !361
  %and154 = and i64 %83, 1, !dbg !362
  %84 = load i64, i64* %result, align 8, !dbg !363
  %add155 = add i64 %84, %and154, !dbg !363
  store i64 %add155, i64* %result, align 8, !dbg !363
  br label %if.end156, !dbg !364

if.end156:                                        ; preds = %if.then153, %if.end150
  %85 = load i64, i64* %result, align 8, !dbg !365
  %call157 = call double @fromRep(i64 noundef %85) #4, !dbg !366
  store double %call157, double* %retval, align 8, !dbg !367
  br label %return, !dbg !367

return:                                           ; preds = %if.end156, %if.then118, %if.then88, %if.then36, %if.else33, %if.then28, %if.then24, %if.else, %if.then20, %if.then10, %if.then6
  %86 = load double, double* %retval, align 8, !dbg !368
  ret double %86, !dbg !368
}

; Function Attrs: noinline nounwind
define internal i64 @toRep(double noundef %x) #0 !dbg !369 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !371
  %0 = load double, double* %x.addr, align 8, !dbg !372
  store double %0, double* %f, align 8, !dbg !371
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !373
  %1 = load i64, i64* %i, align 8, !dbg !373
  ret i64 %1, !dbg !374
}

; Function Attrs: noinline nounwind
define internal double @fromRep(i64 noundef %x) #0 !dbg !375 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !376
  %0 = load i64, i64* %x.addr, align 8, !dbg !377
  store i64 %0, i64* %i, align 8, !dbg !376
  %f = bitcast %union.anon.0* %rep to double*, !dbg !378
  %1 = load double, double* %f, align 8, !dbg !378
  ret double %1, !dbg !379
}

; Function Attrs: noinline nounwind
define internal i32 @normalize(i64* noundef %significand) #0 !dbg !380 {
entry:
  %significand.addr = alloca i64*, align 4
  %shift = alloca i32, align 4
  store i64* %significand, i64** %significand.addr, align 4
  %0 = load i64*, i64** %significand.addr, align 4, !dbg !381
  %1 = load i64, i64* %0, align 8, !dbg !382
  %call = call i32 @rep_clz(i64 noundef %1) #4, !dbg !383
  %call1 = call i32 @rep_clz(i64 noundef 4503599627370496) #4, !dbg !384
  %sub = sub nsw i32 %call, %call1, !dbg !385
  store i32 %sub, i32* %shift, align 4, !dbg !386
  %2 = load i32, i32* %shift, align 4, !dbg !387
  %3 = load i64*, i64** %significand.addr, align 4, !dbg !388
  %4 = load i64, i64* %3, align 8, !dbg !389
  %sh_prom = zext i32 %2 to i64, !dbg !389
  %shl = shl i64 %4, %sh_prom, !dbg !389
  store i64 %shl, i64* %3, align 8, !dbg !389
  %5 = load i32, i32* %shift, align 4, !dbg !390
  %sub2 = sub nsw i32 1, %5, !dbg !391
  ret i32 %sub2, !dbg !392
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz(i64 noundef %a) #0 !dbg !393 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !394
  %and = and i64 %0, -4294967296, !dbg !395
  %tobool = icmp ne i64 %and, 0, !dbg !395
  br i1 %tobool, label %if.then, label %if.else, !dbg !394

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !396
  %shr = lshr i64 %1, 32, !dbg !397
  %conv = trunc i64 %shr to i32, !dbg !396
  %2 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true), !dbg !398
  store i32 %2, i32* %retval, align 4, !dbg !399
  br label %return, !dbg !399

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %a.addr, align 8, !dbg !400
  %and1 = and i64 %3, 4294967295, !dbg !401
  %conv2 = trunc i64 %and1 to i32, !dbg !400
  %4 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 true), !dbg !402
  %add = add nsw i32 32, %4, !dbg !403
  store i32 %add, i32* %retval, align 4, !dbg !404
  br label %return, !dbg !404

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !405
  ret i32 %5, !dbg !405
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local float @__addsf3(float noundef %a, float noundef %b) #0 !dbg !406 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !407
  %1 = load float, float* %b.addr, align 4, !dbg !408
  %call = call float @__addXf3__.1(float noundef %0, float noundef %1) #4, !dbg !409
  ret float %call, !dbg !410
}

; Function Attrs: noinline nounwind
define internal float @__addXf3__.1(float noundef %a, float noundef %b) #0 !dbg !411 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aRep = alloca i32, align 4
  %bRep = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  %temp = alloca i32, align 4
  %aExponent = alloca i32, align 4
  %bExponent = alloca i32, align 4
  %aSignificand = alloca i32, align 4
  %bSignificand = alloca i32, align 4
  %resultSign = alloca i32, align 4
  %subtraction = alloca i8, align 1
  %align = alloca i32, align 4
  %sticky = alloca i8, align 1
  %shift = alloca i32, align 4
  %sticky98 = alloca i8, align 1
  %shift118 = alloca i32, align 4
  %sticky120 = alloca i8, align 1
  %roundGuardSticky = alloca i32, align 4
  %result = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !412
  %call = call i32 @toRep.2(float noundef %0) #4, !dbg !413
  store i32 %call, i32* %aRep, align 4, !dbg !414
  %1 = load float, float* %b.addr, align 4, !dbg !415
  %call1 = call i32 @toRep.2(float noundef %1) #4, !dbg !416
  store i32 %call1, i32* %bRep, align 4, !dbg !417
  %2 = load i32, i32* %aRep, align 4, !dbg !418
  %and = and i32 %2, 2147483647, !dbg !419
  store i32 %and, i32* %aAbs, align 4, !dbg !420
  %3 = load i32, i32* %bRep, align 4, !dbg !421
  %and2 = and i32 %3, 2147483647, !dbg !422
  store i32 %and2, i32* %bAbs, align 4, !dbg !423
  %4 = load i32, i32* %aAbs, align 4, !dbg !424
  %sub = sub i32 %4, 1, !dbg !425
  %cmp = icmp uge i32 %sub, 2139095039, !dbg !426
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !427

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %bAbs, align 4, !dbg !428
  %sub3 = sub i32 %5, 1, !dbg !429
  %cmp4 = icmp uge i32 %sub3, 2139095039, !dbg !430
  br i1 %cmp4, label %if.then, label %if.end38, !dbg !424

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %aAbs, align 4, !dbg !431
  %cmp5 = icmp ugt i32 %6, 2139095040, !dbg !432
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !431

if.then6:                                         ; preds = %if.then
  %7 = load float, float* %a.addr, align 4, !dbg !433
  %call7 = call i32 @toRep.2(float noundef %7) #4, !dbg !434
  %or = or i32 %call7, 4194304, !dbg !435
  %call8 = call float @fromRep.3(i32 noundef %or) #4, !dbg !436
  store float %call8, float* %retval, align 4, !dbg !437
  br label %return, !dbg !437

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %bAbs, align 4, !dbg !438
  %cmp9 = icmp ugt i32 %8, 2139095040, !dbg !439
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !438

if.then10:                                        ; preds = %if.end
  %9 = load float, float* %b.addr, align 4, !dbg !440
  %call11 = call i32 @toRep.2(float noundef %9) #4, !dbg !441
  %or12 = or i32 %call11, 4194304, !dbg !442
  %call13 = call float @fromRep.3(i32 noundef %or12) #4, !dbg !443
  store float %call13, float* %retval, align 4, !dbg !444
  br label %return, !dbg !444

if.end14:                                         ; preds = %if.end
  %10 = load i32, i32* %aAbs, align 4, !dbg !445
  %cmp15 = icmp eq i32 %10, 2139095040, !dbg !446
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !445

if.then16:                                        ; preds = %if.end14
  %11 = load float, float* %a.addr, align 4, !dbg !447
  %call17 = call i32 @toRep.2(float noundef %11) #4, !dbg !448
  %12 = load float, float* %b.addr, align 4, !dbg !449
  %call18 = call i32 @toRep.2(float noundef %12) #4, !dbg !450
  %xor = xor i32 %call17, %call18, !dbg !451
  %cmp19 = icmp eq i32 %xor, -2147483648, !dbg !452
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !453

if.then20:                                        ; preds = %if.then16
  %call21 = call float @fromRep.3(i32 noundef 2143289344) #4, !dbg !454
  store float %call21, float* %retval, align 4, !dbg !455
  br label %return, !dbg !455

if.else:                                          ; preds = %if.then16
  %13 = load float, float* %a.addr, align 4, !dbg !456
  store float %13, float* %retval, align 4, !dbg !457
  br label %return, !dbg !457

if.end22:                                         ; preds = %if.end14
  %14 = load i32, i32* %bAbs, align 4, !dbg !458
  %cmp23 = icmp eq i32 %14, 2139095040, !dbg !459
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !458

if.then24:                                        ; preds = %if.end22
  %15 = load float, float* %b.addr, align 4, !dbg !460
  store float %15, float* %retval, align 4, !dbg !461
  br label %return, !dbg !461

if.end25:                                         ; preds = %if.end22
  %16 = load i32, i32* %aAbs, align 4, !dbg !462
  %tobool = icmp ne i32 %16, 0, !dbg !462
  br i1 %tobool, label %if.end34, label %if.then26, !dbg !463

if.then26:                                        ; preds = %if.end25
  %17 = load i32, i32* %bAbs, align 4, !dbg !464
  %tobool27 = icmp ne i32 %17, 0, !dbg !464
  br i1 %tobool27, label %if.else33, label %if.then28, !dbg !465

if.then28:                                        ; preds = %if.then26
  %18 = load float, float* %a.addr, align 4, !dbg !466
  %call29 = call i32 @toRep.2(float noundef %18) #4, !dbg !467
  %19 = load float, float* %b.addr, align 4, !dbg !468
  %call30 = call i32 @toRep.2(float noundef %19) #4, !dbg !469
  %and31 = and i32 %call29, %call30, !dbg !470
  %call32 = call float @fromRep.3(i32 noundef %and31) #4, !dbg !471
  store float %call32, float* %retval, align 4, !dbg !472
  br label %return, !dbg !472

if.else33:                                        ; preds = %if.then26
  %20 = load float, float* %b.addr, align 4, !dbg !473
  store float %20, float* %retval, align 4, !dbg !474
  br label %return, !dbg !474

if.end34:                                         ; preds = %if.end25
  %21 = load i32, i32* %bAbs, align 4, !dbg !475
  %tobool35 = icmp ne i32 %21, 0, !dbg !475
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !476

if.then36:                                        ; preds = %if.end34
  %22 = load float, float* %a.addr, align 4, !dbg !477
  store float %22, float* %retval, align 4, !dbg !478
  br label %return, !dbg !478

if.end37:                                         ; preds = %if.end34
  br label %if.end38, !dbg !479

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %23 = load i32, i32* %bAbs, align 4, !dbg !480
  %24 = load i32, i32* %aAbs, align 4, !dbg !481
  %cmp39 = icmp ugt i32 %23, %24, !dbg !482
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !480

if.then40:                                        ; preds = %if.end38
  %25 = load i32, i32* %aRep, align 4, !dbg !483
  store i32 %25, i32* %temp, align 4, !dbg !484
  %26 = load i32, i32* %bRep, align 4, !dbg !485
  store i32 %26, i32* %aRep, align 4, !dbg !486
  %27 = load i32, i32* %temp, align 4, !dbg !487
  store i32 %27, i32* %bRep, align 4, !dbg !488
  br label %if.end41, !dbg !489

if.end41:                                         ; preds = %if.then40, %if.end38
  %28 = load i32, i32* %aRep, align 4, !dbg !490
  %shr = lshr i32 %28, 23, !dbg !491
  %and42 = and i32 %shr, 255, !dbg !492
  store i32 %and42, i32* %aExponent, align 4, !dbg !493
  %29 = load i32, i32* %bRep, align 4, !dbg !494
  %shr43 = lshr i32 %29, 23, !dbg !495
  %and44 = and i32 %shr43, 255, !dbg !496
  store i32 %and44, i32* %bExponent, align 4, !dbg !497
  %30 = load i32, i32* %aRep, align 4, !dbg !498
  %and45 = and i32 %30, 8388607, !dbg !499
  store i32 %and45, i32* %aSignificand, align 4, !dbg !500
  %31 = load i32, i32* %bRep, align 4, !dbg !501
  %and46 = and i32 %31, 8388607, !dbg !502
  store i32 %and46, i32* %bSignificand, align 4, !dbg !503
  %32 = load i32, i32* %aExponent, align 4, !dbg !504
  %cmp47 = icmp eq i32 %32, 0, !dbg !505
  br i1 %cmp47, label %if.then48, label %if.end50, !dbg !504

if.then48:                                        ; preds = %if.end41
  %call49 = call i32 @normalize.4(i32* noundef %aSignificand) #4, !dbg !506
  store i32 %call49, i32* %aExponent, align 4, !dbg !507
  br label %if.end50, !dbg !508

if.end50:                                         ; preds = %if.then48, %if.end41
  %33 = load i32, i32* %bExponent, align 4, !dbg !509
  %cmp51 = icmp eq i32 %33, 0, !dbg !510
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !509

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @normalize.4(i32* noundef %bSignificand) #4, !dbg !511
  store i32 %call53, i32* %bExponent, align 4, !dbg !512
  br label %if.end54, !dbg !513

if.end54:                                         ; preds = %if.then52, %if.end50
  %34 = load i32, i32* %aRep, align 4, !dbg !514
  %and55 = and i32 %34, -2147483648, !dbg !515
  store i32 %and55, i32* %resultSign, align 4, !dbg !516
  %35 = load i32, i32* %aRep, align 4, !dbg !517
  %36 = load i32, i32* %bRep, align 4, !dbg !518
  %xor56 = xor i32 %35, %36, !dbg !519
  %and57 = and i32 %xor56, -2147483648, !dbg !520
  %tobool58 = icmp ne i32 %and57, 0, !dbg !521
  %frombool = zext i1 %tobool58 to i8, !dbg !522
  store i8 %frombool, i8* %subtraction, align 1, !dbg !522
  %37 = load i32, i32* %aSignificand, align 4, !dbg !523
  %or59 = or i32 %37, 8388608, !dbg !524
  %shl = shl i32 %or59, 3, !dbg !525
  store i32 %shl, i32* %aSignificand, align 4, !dbg !526
  %38 = load i32, i32* %bSignificand, align 4, !dbg !527
  %or60 = or i32 %38, 8388608, !dbg !528
  %shl61 = shl i32 %or60, 3, !dbg !529
  store i32 %shl61, i32* %bSignificand, align 4, !dbg !530
  %39 = load i32, i32* %aExponent, align 4, !dbg !531
  %40 = load i32, i32* %bExponent, align 4, !dbg !532
  %sub62 = sub nsw i32 %39, %40, !dbg !533
  store i32 %sub62, i32* %align, align 4, !dbg !534
  %41 = load i32, i32* %align, align 4, !dbg !535
  %tobool63 = icmp ne i32 %41, 0, !dbg !535
  br i1 %tobool63, label %if.then64, label %if.end76, !dbg !535

if.then64:                                        ; preds = %if.end54
  %42 = load i32, i32* %align, align 4, !dbg !536
  %cmp65 = icmp ult i32 %42, 32, !dbg !537
  br i1 %cmp65, label %if.then66, label %if.else74, !dbg !536

if.then66:                                        ; preds = %if.then64
  %43 = load i32, i32* %bSignificand, align 4, !dbg !538
  %44 = load i32, i32* %align, align 4, !dbg !539
  %sub67 = sub i32 32, %44, !dbg !540
  %shl68 = shl i32 %43, %sub67, !dbg !541
  %tobool69 = icmp ne i32 %shl68, 0, !dbg !538
  %frombool70 = zext i1 %tobool69 to i8, !dbg !542
  store i8 %frombool70, i8* %sticky, align 1, !dbg !542
  %45 = load i32, i32* %bSignificand, align 4, !dbg !543
  %46 = load i32, i32* %align, align 4, !dbg !544
  %shr71 = lshr i32 %45, %46, !dbg !545
  %47 = load i8, i8* %sticky, align 1, !dbg !546
  %tobool72 = trunc i8 %47 to i1, !dbg !546
  %conv = zext i1 %tobool72 to i32, !dbg !546
  %or73 = or i32 %shr71, %conv, !dbg !547
  store i32 %or73, i32* %bSignificand, align 4, !dbg !548
  br label %if.end75, !dbg !549

if.else74:                                        ; preds = %if.then64
  store i32 1, i32* %bSignificand, align 4, !dbg !550
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then66
  br label %if.end76, !dbg !551

if.end76:                                         ; preds = %if.end75, %if.end54
  %48 = load i8, i8* %subtraction, align 1, !dbg !552
  %tobool77 = trunc i8 %48 to i1, !dbg !552
  br i1 %tobool77, label %if.then78, label %if.else94, !dbg !552

if.then78:                                        ; preds = %if.end76
  %49 = load i32, i32* %bSignificand, align 4, !dbg !553
  %50 = load i32, i32* %aSignificand, align 4, !dbg !554
  %sub79 = sub i32 %50, %49, !dbg !554
  store i32 %sub79, i32* %aSignificand, align 4, !dbg !554
  %51 = load i32, i32* %aSignificand, align 4, !dbg !555
  %cmp80 = icmp eq i32 %51, 0, !dbg !556
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !555

if.then82:                                        ; preds = %if.then78
  %call83 = call float @fromRep.3(i32 noundef 0) #4, !dbg !557
  store float %call83, float* %retval, align 4, !dbg !558
  br label %return, !dbg !558

if.end84:                                         ; preds = %if.then78
  %52 = load i32, i32* %aSignificand, align 4, !dbg !559
  %cmp85 = icmp ult i32 %52, 67108864, !dbg !560
  br i1 %cmp85, label %if.then87, label %if.end93, !dbg !559

if.then87:                                        ; preds = %if.end84
  %53 = load i32, i32* %aSignificand, align 4, !dbg !561
  %call88 = call i32 @rep_clz.5(i32 noundef %53) #4, !dbg !562
  %call89 = call i32 @rep_clz.5(i32 noundef 67108864) #4, !dbg !563
  %sub90 = sub nsw i32 %call88, %call89, !dbg !564
  store i32 %sub90, i32* %shift, align 4, !dbg !565
  %54 = load i32, i32* %shift, align 4, !dbg !566
  %55 = load i32, i32* %aSignificand, align 4, !dbg !567
  %shl91 = shl i32 %55, %54, !dbg !567
  store i32 %shl91, i32* %aSignificand, align 4, !dbg !567
  %56 = load i32, i32* %shift, align 4, !dbg !568
  %57 = load i32, i32* %aExponent, align 4, !dbg !569
  %sub92 = sub nsw i32 %57, %56, !dbg !569
  store i32 %sub92, i32* %aExponent, align 4, !dbg !569
  br label %if.end93, !dbg !570

if.end93:                                         ; preds = %if.then87, %if.end84
  br label %if.end108, !dbg !571

if.else94:                                        ; preds = %if.end76
  %58 = load i32, i32* %bSignificand, align 4, !dbg !572
  %59 = load i32, i32* %aSignificand, align 4, !dbg !573
  %add = add i32 %59, %58, !dbg !573
  store i32 %add, i32* %aSignificand, align 4, !dbg !573
  %60 = load i32, i32* %aSignificand, align 4, !dbg !574
  %and95 = and i32 %60, 134217728, !dbg !575
  %tobool96 = icmp ne i32 %and95, 0, !dbg !575
  br i1 %tobool96, label %if.then97, label %if.end107, !dbg !574

if.then97:                                        ; preds = %if.else94
  %61 = load i32, i32* %aSignificand, align 4, !dbg !576
  %and99 = and i32 %61, 1, !dbg !577
  %tobool100 = icmp ne i32 %and99, 0, !dbg !576
  %frombool101 = zext i1 %tobool100 to i8, !dbg !578
  store i8 %frombool101, i8* %sticky98, align 1, !dbg !578
  %62 = load i32, i32* %aSignificand, align 4, !dbg !579
  %shr102 = lshr i32 %62, 1, !dbg !580
  %63 = load i8, i8* %sticky98, align 1, !dbg !581
  %tobool103 = trunc i8 %63 to i1, !dbg !581
  %conv104 = zext i1 %tobool103 to i32, !dbg !581
  %or105 = or i32 %shr102, %conv104, !dbg !582
  store i32 %or105, i32* %aSignificand, align 4, !dbg !583
  %64 = load i32, i32* %aExponent, align 4, !dbg !584
  %add106 = add nsw i32 %64, 1, !dbg !584
  store i32 %add106, i32* %aExponent, align 4, !dbg !584
  br label %if.end107, !dbg !585

if.end107:                                        ; preds = %if.then97, %if.else94
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end93
  %65 = load i32, i32* %aExponent, align 4, !dbg !586
  %cmp109 = icmp sge i32 %65, 255, !dbg !587
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !586

if.then111:                                       ; preds = %if.end108
  %66 = load i32, i32* %resultSign, align 4, !dbg !588
  %or112 = or i32 2139095040, %66, !dbg !589
  %call113 = call float @fromRep.3(i32 noundef %or112) #4, !dbg !590
  store float %call113, float* %retval, align 4, !dbg !591
  br label %return, !dbg !591

if.end114:                                        ; preds = %if.end108
  %67 = load i32, i32* %aExponent, align 4, !dbg !592
  %cmp115 = icmp sle i32 %67, 0, !dbg !593
  br i1 %cmp115, label %if.then117, label %if.end129, !dbg !592

if.then117:                                       ; preds = %if.end114
  %68 = load i32, i32* %aExponent, align 4, !dbg !594
  %sub119 = sub nsw i32 1, %68, !dbg !595
  store i32 %sub119, i32* %shift118, align 4, !dbg !596
  %69 = load i32, i32* %aSignificand, align 4, !dbg !597
  %70 = load i32, i32* %shift118, align 4, !dbg !598
  %sub121 = sub i32 32, %70, !dbg !599
  %shl122 = shl i32 %69, %sub121, !dbg !600
  %tobool123 = icmp ne i32 %shl122, 0, !dbg !597
  %frombool124 = zext i1 %tobool123 to i8, !dbg !601
  store i8 %frombool124, i8* %sticky120, align 1, !dbg !601
  %71 = load i32, i32* %aSignificand, align 4, !dbg !602
  %72 = load i32, i32* %shift118, align 4, !dbg !603
  %shr125 = lshr i32 %71, %72, !dbg !604
  %73 = load i8, i8* %sticky120, align 1, !dbg !605
  %tobool126 = trunc i8 %73 to i1, !dbg !605
  %conv127 = zext i1 %tobool126 to i32, !dbg !605
  %or128 = or i32 %shr125, %conv127, !dbg !606
  store i32 %or128, i32* %aSignificand, align 4, !dbg !607
  store i32 0, i32* %aExponent, align 4, !dbg !608
  br label %if.end129, !dbg !609

if.end129:                                        ; preds = %if.then117, %if.end114
  %74 = load i32, i32* %aSignificand, align 4, !dbg !610
  %and130 = and i32 %74, 7, !dbg !611
  store i32 %and130, i32* %roundGuardSticky, align 4, !dbg !612
  %75 = load i32, i32* %aSignificand, align 4, !dbg !613
  %shr131 = lshr i32 %75, 3, !dbg !614
  %and132 = and i32 %shr131, 8388607, !dbg !615
  store i32 %and132, i32* %result, align 4, !dbg !616
  %76 = load i32, i32* %aExponent, align 4, !dbg !617
  %shl133 = shl i32 %76, 23, !dbg !618
  %77 = load i32, i32* %result, align 4, !dbg !619
  %or134 = or i32 %77, %shl133, !dbg !619
  store i32 %or134, i32* %result, align 4, !dbg !619
  %78 = load i32, i32* %resultSign, align 4, !dbg !620
  %79 = load i32, i32* %result, align 4, !dbg !621
  %or135 = or i32 %79, %78, !dbg !621
  store i32 %or135, i32* %result, align 4, !dbg !621
  %80 = load i32, i32* %roundGuardSticky, align 4, !dbg !622
  %cmp136 = icmp sgt i32 %80, 4, !dbg !623
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !622

if.then138:                                       ; preds = %if.end129
  %81 = load i32, i32* %result, align 4, !dbg !624
  %inc = add i32 %81, 1, !dbg !624
  store i32 %inc, i32* %result, align 4, !dbg !624
  br label %if.end139, !dbg !625

if.end139:                                        ; preds = %if.then138, %if.end129
  %82 = load i32, i32* %roundGuardSticky, align 4, !dbg !626
  %cmp140 = icmp eq i32 %82, 4, !dbg !627
  br i1 %cmp140, label %if.then142, label %if.end145, !dbg !626

if.then142:                                       ; preds = %if.end139
  %83 = load i32, i32* %result, align 4, !dbg !628
  %and143 = and i32 %83, 1, !dbg !629
  %84 = load i32, i32* %result, align 4, !dbg !630
  %add144 = add i32 %84, %and143, !dbg !630
  store i32 %add144, i32* %result, align 4, !dbg !630
  br label %if.end145, !dbg !631

if.end145:                                        ; preds = %if.then142, %if.end139
  %85 = load i32, i32* %result, align 4, !dbg !632
  %call146 = call float @fromRep.3(i32 noundef %85) #4, !dbg !633
  store float %call146, float* %retval, align 4, !dbg !634
  br label %return, !dbg !634

return:                                           ; preds = %if.end145, %if.then111, %if.then82, %if.then36, %if.else33, %if.then28, %if.then24, %if.else, %if.then20, %if.then10, %if.then6
  %86 = load float, float* %retval, align 4, !dbg !635
  ret float %86, !dbg !635
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.2(float noundef %x) #0 !dbg !636 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !637
  %0 = load float, float* %x.addr, align 4, !dbg !638
  store float %0, float* %f, align 4, !dbg !637
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !639
  %1 = load i32, i32* %i, align 4, !dbg !639
  ret i32 %1, !dbg !640
}

; Function Attrs: noinline nounwind
define internal float @fromRep.3(i32 noundef %x) #0 !dbg !641 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !642
  %0 = load i32, i32* %x.addr, align 4, !dbg !643
  store i32 %0, i32* %i, align 4, !dbg !642
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !644
  %1 = load float, float* %f, align 4, !dbg !644
  ret float %1, !dbg !645
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.4(i32* noundef %significand) #0 !dbg !646 {
entry:
  %significand.addr = alloca i32*, align 4
  %shift = alloca i32, align 4
  store i32* %significand, i32** %significand.addr, align 4
  %0 = load i32*, i32** %significand.addr, align 4, !dbg !647
  %1 = load i32, i32* %0, align 4, !dbg !648
  %call = call i32 @rep_clz.5(i32 noundef %1) #4, !dbg !649
  %call1 = call i32 @rep_clz.5(i32 noundef 8388608) #4, !dbg !650
  %sub = sub nsw i32 %call, %call1, !dbg !651
  store i32 %sub, i32* %shift, align 4, !dbg !652
  %2 = load i32, i32* %shift, align 4, !dbg !653
  %3 = load i32*, i32** %significand.addr, align 4, !dbg !654
  %4 = load i32, i32* %3, align 4, !dbg !655
  %shl = shl i32 %4, %2, !dbg !655
  store i32 %shl, i32* %3, align 4, !dbg !655
  %5 = load i32, i32* %shift, align 4, !dbg !656
  %sub2 = sub nsw i32 1, %5, !dbg !657
  ret i32 %sub2, !dbg !658
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.5(i32 noundef %a) #0 !dbg !659 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !660
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !661
  ret i32 %1, !dbg !662
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ledf2(double noundef %a, double noundef %b) #0 !dbg !663 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aInt = alloca i64, align 8
  %bInt = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !664
  %call = call i64 @toRep.6(double noundef %0) #4, !dbg !665
  store i64 %call, i64* %aInt, align 8, !dbg !666
  %1 = load double, double* %b.addr, align 8, !dbg !667
  %call1 = call i64 @toRep.6(double noundef %1) #4, !dbg !668
  store i64 %call1, i64* %bInt, align 8, !dbg !669
  %2 = load i64, i64* %aInt, align 8, !dbg !670
  %and = and i64 %2, 9223372036854775807, !dbg !671
  store i64 %and, i64* %aAbs, align 8, !dbg !672
  %3 = load i64, i64* %bInt, align 8, !dbg !673
  %and2 = and i64 %3, 9223372036854775807, !dbg !674
  store i64 %and2, i64* %bAbs, align 8, !dbg !675
  %4 = load i64, i64* %aAbs, align 8, !dbg !676
  %cmp = icmp ugt i64 %4, 9218868437227405312, !dbg !677
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !678

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %bAbs, align 8, !dbg !679
  %cmp3 = icmp ugt i64 %5, 9218868437227405312, !dbg !680
  br i1 %cmp3, label %if.then, label %if.end, !dbg !676

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !681
  br label %return, !dbg !681

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %aAbs, align 8, !dbg !682
  %7 = load i64, i64* %bAbs, align 8, !dbg !683
  %or = or i64 %6, %7, !dbg !684
  %cmp4 = icmp eq i64 %or, 0, !dbg !685
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !686

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !687
  br label %return, !dbg !687

if.end6:                                          ; preds = %if.end
  %8 = load i64, i64* %aInt, align 8, !dbg !688
  %9 = load i64, i64* %bInt, align 8, !dbg !689
  %and7 = and i64 %8, %9, !dbg !690
  %cmp8 = icmp sge i64 %and7, 0, !dbg !691
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !692

if.then9:                                         ; preds = %if.end6
  %10 = load i64, i64* %aInt, align 8, !dbg !693
  %11 = load i64, i64* %bInt, align 8, !dbg !694
  %cmp10 = icmp slt i64 %10, %11, !dbg !695
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !693

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !696
  br label %return, !dbg !696

if.else:                                          ; preds = %if.then9
  %12 = load i64, i64* %aInt, align 8, !dbg !697
  %13 = load i64, i64* %bInt, align 8, !dbg !698
  %cmp12 = icmp eq i64 %12, %13, !dbg !699
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !697

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !701
  br label %return, !dbg !701

if.else15:                                        ; preds = %if.end6
  %14 = load i64, i64* %aInt, align 8, !dbg !702
  %15 = load i64, i64* %bInt, align 8, !dbg !703
  %cmp16 = icmp sgt i64 %14, %15, !dbg !704
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !702

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.else18:                                        ; preds = %if.else15
  %16 = load i64, i64* %aInt, align 8, !dbg !706
  %17 = load i64, i64* %bInt, align 8, !dbg !707
  %cmp19 = icmp eq i64 %16, %17, !dbg !708
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !706

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !709
  br label %return, !dbg !709

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !710
  br label %return, !dbg !710

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !711
  ret i32 %18, !dbg !711
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.6(double noundef %x) #0 !dbg !712 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !713
  %0 = load double, double* %x.addr, align 8, !dbg !714
  store double %0, double* %f, align 8, !dbg !713
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !715
  %1 = load i64, i64* %i, align 8, !dbg !715
  ret i64 %1, !dbg !716
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gedf2(double noundef %a, double noundef %b) #0 !dbg !717 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aInt = alloca i64, align 8
  %bInt = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !718
  %call = call i64 @toRep.6(double noundef %0) #4, !dbg !719
  store i64 %call, i64* %aInt, align 8, !dbg !720
  %1 = load double, double* %b.addr, align 8, !dbg !721
  %call1 = call i64 @toRep.6(double noundef %1) #4, !dbg !722
  store i64 %call1, i64* %bInt, align 8, !dbg !723
  %2 = load i64, i64* %aInt, align 8, !dbg !724
  %and = and i64 %2, 9223372036854775807, !dbg !725
  store i64 %and, i64* %aAbs, align 8, !dbg !726
  %3 = load i64, i64* %bInt, align 8, !dbg !727
  %and2 = and i64 %3, 9223372036854775807, !dbg !728
  store i64 %and2, i64* %bAbs, align 8, !dbg !729
  %4 = load i64, i64* %aAbs, align 8, !dbg !730
  %cmp = icmp ugt i64 %4, 9218868437227405312, !dbg !731
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !732

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %bAbs, align 8, !dbg !733
  %cmp3 = icmp ugt i64 %5, 9218868437227405312, !dbg !734
  br i1 %cmp3, label %if.then, label %if.end, !dbg !730

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %aAbs, align 8, !dbg !736
  %7 = load i64, i64* %bAbs, align 8, !dbg !737
  %or = or i64 %6, %7, !dbg !738
  %cmp4 = icmp eq i64 %or, 0, !dbg !739
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !740

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !741
  br label %return, !dbg !741

if.end6:                                          ; preds = %if.end
  %8 = load i64, i64* %aInt, align 8, !dbg !742
  %9 = load i64, i64* %bInt, align 8, !dbg !743
  %and7 = and i64 %8, %9, !dbg !744
  %cmp8 = icmp sge i64 %and7, 0, !dbg !745
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !746

if.then9:                                         ; preds = %if.end6
  %10 = load i64, i64* %aInt, align 8, !dbg !747
  %11 = load i64, i64* %bInt, align 8, !dbg !748
  %cmp10 = icmp slt i64 %10, %11, !dbg !749
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !747

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.else:                                          ; preds = %if.then9
  %12 = load i64, i64* %aInt, align 8, !dbg !751
  %13 = load i64, i64* %bInt, align 8, !dbg !752
  %cmp12 = icmp eq i64 %12, %13, !dbg !753
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !751

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !754
  br label %return, !dbg !754

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.else15:                                        ; preds = %if.end6
  %14 = load i64, i64* %aInt, align 8, !dbg !756
  %15 = load i64, i64* %bInt, align 8, !dbg !757
  %cmp16 = icmp sgt i64 %14, %15, !dbg !758
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !756

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !759
  br label %return, !dbg !759

if.else18:                                        ; preds = %if.else15
  %16 = load i64, i64* %aInt, align 8, !dbg !760
  %17 = load i64, i64* %bInt, align 8, !dbg !761
  %cmp19 = icmp eq i64 %16, %17, !dbg !762
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !760

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !763
  br label %return, !dbg !763

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !764
  br label %return, !dbg !764

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !765
  ret i32 %18, !dbg !765
}

; Function Attrs: noinline nounwind
define dso_local i32 @__unorddf2(double noundef %a, double noundef %b) #0 !dbg !766 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !767
  %call = call i64 @toRep.6(double noundef %0) #4, !dbg !768
  %and = and i64 %call, 9223372036854775807, !dbg !769
  store i64 %and, i64* %aAbs, align 8, !dbg !770
  %1 = load double, double* %b.addr, align 8, !dbg !771
  %call1 = call i64 @toRep.6(double noundef %1) #4, !dbg !772
  %and2 = and i64 %call1, 9223372036854775807, !dbg !773
  store i64 %and2, i64* %bAbs, align 8, !dbg !774
  %2 = load i64, i64* %aAbs, align 8, !dbg !775
  %cmp = icmp ugt i64 %2, 9218868437227405312, !dbg !776
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !777

lor.rhs:                                          ; preds = %entry
  %3 = load i64, i64* %bAbs, align 8, !dbg !778
  %cmp3 = icmp ugt i64 %3, 9218868437227405312, !dbg !779
  br label %lor.end, !dbg !777

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !777
  ret i32 %lor.ext, !dbg !780
}

; Function Attrs: noinline nounwind
define dso_local i32 @__eqdf2(double noundef %a, double noundef %b) #0 !dbg !781 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !782
  %1 = load double, double* %b.addr, align 8, !dbg !783
  %call = call i32 @__ledf2(double noundef %0, double noundef %1) #4, !dbg !784
  ret i32 %call, !dbg !785
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ltdf2(double noundef %a, double noundef %b) #0 !dbg !786 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !787
  %1 = load double, double* %b.addr, align 8, !dbg !788
  %call = call i32 @__ledf2(double noundef %0, double noundef %1) #4, !dbg !789
  ret i32 %call, !dbg !790
}

; Function Attrs: noinline nounwind
define dso_local i32 @__nedf2(double noundef %a, double noundef %b) #0 !dbg !791 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !792
  %1 = load double, double* %b.addr, align 8, !dbg !793
  %call = call i32 @__ledf2(double noundef %0, double noundef %1) #4, !dbg !794
  ret i32 %call, !dbg !795
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gtdf2(double noundef %a, double noundef %b) #0 !dbg !796 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !797
  %1 = load double, double* %b.addr, align 8, !dbg !798
  %call = call i32 @__gedf2(double noundef %0, double noundef %1) #4, !dbg !799
  ret i32 %call, !dbg !800
}

; Function Attrs: noinline nounwind
define dso_local i32 @__lesf2(float noundef %a, float noundef %b) #0 !dbg !801 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aInt = alloca i32, align 4
  %bInt = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !802
  %call = call i32 @toRep.7(float noundef %0) #4, !dbg !803
  store i32 %call, i32* %aInt, align 4, !dbg !804
  %1 = load float, float* %b.addr, align 4, !dbg !805
  %call1 = call i32 @toRep.7(float noundef %1) #4, !dbg !806
  store i32 %call1, i32* %bInt, align 4, !dbg !807
  %2 = load i32, i32* %aInt, align 4, !dbg !808
  %and = and i32 %2, 2147483647, !dbg !809
  store i32 %and, i32* %aAbs, align 4, !dbg !810
  %3 = load i32, i32* %bInt, align 4, !dbg !811
  %and2 = and i32 %3, 2147483647, !dbg !812
  store i32 %and2, i32* %bAbs, align 4, !dbg !813
  %4 = load i32, i32* %aAbs, align 4, !dbg !814
  %cmp = icmp ugt i32 %4, 2139095040, !dbg !815
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !816

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %bAbs, align 4, !dbg !817
  %cmp3 = icmp ugt i32 %5, 2139095040, !dbg !818
  br i1 %cmp3, label %if.then, label %if.end, !dbg !814

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !819
  br label %return, !dbg !819

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %aAbs, align 4, !dbg !820
  %7 = load i32, i32* %bAbs, align 4, !dbg !821
  %or = or i32 %6, %7, !dbg !822
  %cmp4 = icmp eq i32 %or, 0, !dbg !823
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !824

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !825
  br label %return, !dbg !825

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %aInt, align 4, !dbg !826
  %9 = load i32, i32* %bInt, align 4, !dbg !827
  %and7 = and i32 %8, %9, !dbg !828
  %cmp8 = icmp sge i32 %and7, 0, !dbg !829
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !830

if.then9:                                         ; preds = %if.end6
  %10 = load i32, i32* %aInt, align 4, !dbg !831
  %11 = load i32, i32* %bInt, align 4, !dbg !832
  %cmp10 = icmp slt i32 %10, %11, !dbg !833
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !831

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !834
  br label %return, !dbg !834

if.else:                                          ; preds = %if.then9
  %12 = load i32, i32* %aInt, align 4, !dbg !835
  %13 = load i32, i32* %bInt, align 4, !dbg !836
  %cmp12 = icmp eq i32 %12, %13, !dbg !837
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !835

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !838
  br label %return, !dbg !838

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !839
  br label %return, !dbg !839

if.else15:                                        ; preds = %if.end6
  %14 = load i32, i32* %aInt, align 4, !dbg !840
  %15 = load i32, i32* %bInt, align 4, !dbg !841
  %cmp16 = icmp sgt i32 %14, %15, !dbg !842
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !840

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !843
  br label %return, !dbg !843

if.else18:                                        ; preds = %if.else15
  %16 = load i32, i32* %aInt, align 4, !dbg !844
  %17 = load i32, i32* %bInt, align 4, !dbg !845
  %cmp19 = icmp eq i32 %16, %17, !dbg !846
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !844

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !848
  br label %return, !dbg !848

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !849
  ret i32 %18, !dbg !849
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.7(float noundef %x) #0 !dbg !850 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !851
  %0 = load float, float* %x.addr, align 4, !dbg !852
  store float %0, float* %f, align 4, !dbg !851
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !853
  %1 = load i32, i32* %i, align 4, !dbg !853
  ret i32 %1, !dbg !854
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gesf2(float noundef %a, float noundef %b) #0 !dbg !855 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aInt = alloca i32, align 4
  %bInt = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !856
  %call = call i32 @toRep.7(float noundef %0) #4, !dbg !857
  store i32 %call, i32* %aInt, align 4, !dbg !858
  %1 = load float, float* %b.addr, align 4, !dbg !859
  %call1 = call i32 @toRep.7(float noundef %1) #4, !dbg !860
  store i32 %call1, i32* %bInt, align 4, !dbg !861
  %2 = load i32, i32* %aInt, align 4, !dbg !862
  %and = and i32 %2, 2147483647, !dbg !863
  store i32 %and, i32* %aAbs, align 4, !dbg !864
  %3 = load i32, i32* %bInt, align 4, !dbg !865
  %and2 = and i32 %3, 2147483647, !dbg !866
  store i32 %and2, i32* %bAbs, align 4, !dbg !867
  %4 = load i32, i32* %aAbs, align 4, !dbg !868
  %cmp = icmp ugt i32 %4, 2139095040, !dbg !869
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !870

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %bAbs, align 4, !dbg !871
  %cmp3 = icmp ugt i32 %5, 2139095040, !dbg !872
  br i1 %cmp3, label %if.then, label %if.end, !dbg !868

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !873
  br label %return, !dbg !873

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %aAbs, align 4, !dbg !874
  %7 = load i32, i32* %bAbs, align 4, !dbg !875
  %or = or i32 %6, %7, !dbg !876
  %cmp4 = icmp eq i32 %or, 0, !dbg !877
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !878

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !879
  br label %return, !dbg !879

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %aInt, align 4, !dbg !880
  %9 = load i32, i32* %bInt, align 4, !dbg !881
  %and7 = and i32 %8, %9, !dbg !882
  %cmp8 = icmp sge i32 %and7, 0, !dbg !883
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !884

if.then9:                                         ; preds = %if.end6
  %10 = load i32, i32* %aInt, align 4, !dbg !885
  %11 = load i32, i32* %bInt, align 4, !dbg !886
  %cmp10 = icmp slt i32 %10, %11, !dbg !887
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !885

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !888
  br label %return, !dbg !888

if.else:                                          ; preds = %if.then9
  %12 = load i32, i32* %aInt, align 4, !dbg !889
  %13 = load i32, i32* %bInt, align 4, !dbg !890
  %cmp12 = icmp eq i32 %12, %13, !dbg !891
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !889

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !892
  br label %return, !dbg !892

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

if.else15:                                        ; preds = %if.end6
  %14 = load i32, i32* %aInt, align 4, !dbg !894
  %15 = load i32, i32* %bInt, align 4, !dbg !895
  %cmp16 = icmp sgt i32 %14, %15, !dbg !896
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !894

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !897
  br label %return, !dbg !897

if.else18:                                        ; preds = %if.else15
  %16 = load i32, i32* %aInt, align 4, !dbg !898
  %17 = load i32, i32* %bInt, align 4, !dbg !899
  %cmp19 = icmp eq i32 %16, %17, !dbg !900
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !898

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !901
  br label %return, !dbg !901

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !902
  br label %return, !dbg !902

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !903
  ret i32 %18, !dbg !903
}

; Function Attrs: noinline nounwind
define dso_local i32 @__unordsf2(float noundef %a, float noundef %b) #0 !dbg !904 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !905
  %call = call i32 @toRep.7(float noundef %0) #4, !dbg !906
  %and = and i32 %call, 2147483647, !dbg !907
  store i32 %and, i32* %aAbs, align 4, !dbg !908
  %1 = load float, float* %b.addr, align 4, !dbg !909
  %call1 = call i32 @toRep.7(float noundef %1) #4, !dbg !910
  %and2 = and i32 %call1, 2147483647, !dbg !911
  store i32 %and2, i32* %bAbs, align 4, !dbg !912
  %2 = load i32, i32* %aAbs, align 4, !dbg !913
  %cmp = icmp ugt i32 %2, 2139095040, !dbg !914
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !915

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %bAbs, align 4, !dbg !916
  %cmp3 = icmp ugt i32 %3, 2139095040, !dbg !917
  br label %lor.end, !dbg !915

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !915
  ret i32 %lor.ext, !dbg !918
}

; Function Attrs: noinline nounwind
define dso_local i32 @__eqsf2(float noundef %a, float noundef %b) #0 !dbg !919 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !920
  %1 = load float, float* %b.addr, align 4, !dbg !921
  %call = call i32 @__lesf2(float noundef %0, float noundef %1) #4, !dbg !922
  ret i32 %call, !dbg !923
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ltsf2(float noundef %a, float noundef %b) #0 !dbg !924 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !925
  %1 = load float, float* %b.addr, align 4, !dbg !926
  %call = call i32 @__lesf2(float noundef %0, float noundef %1) #4, !dbg !927
  ret i32 %call, !dbg !928
}

; Function Attrs: noinline nounwind
define dso_local i32 @__nesf2(float noundef %a, float noundef %b) #0 !dbg !929 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !930
  %1 = load float, float* %b.addr, align 4, !dbg !931
  %call = call i32 @__lesf2(float noundef %0, float noundef %1) #4, !dbg !932
  ret i32 %call, !dbg !933
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gtsf2(float noundef %a, float noundef %b) #0 !dbg !934 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !935
  %1 = load float, float* %b.addr, align 4, !dbg !936
  %call = call i32 @__gesf2(float noundef %0, float noundef %1) #4, !dbg !937
  ret i32 %call, !dbg !938
}

; Function Attrs: noinline nounwind
define dso_local double @__divdf3(double noundef %a, double noundef %b) #0 !dbg !939 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aExponent = alloca i32, align 4
  %bExponent = alloca i32, align 4
  %quotientSign = alloca i64, align 8
  %aSignificand = alloca i64, align 8
  %bSignificand = alloca i64, align 8
  %scale = alloca i32, align 4
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  %quotientExponent = alloca i32, align 4
  %q31b = alloca i32, align 4
  %recip32 = alloca i32, align 4
  %correction32 = alloca i32, align 4
  %q63blo = alloca i32, align 4
  %correction = alloca i64, align 8
  %reciprocal = alloca i64, align 8
  %cHi = alloca i32, align 4
  %cLo = alloca i32, align 4
  %quotient = alloca i64, align 8
  %quotientLo = alloca i64, align 8
  %residual = alloca i64, align 8
  %writtenExponent = alloca i32, align 4
  %round = alloca i8, align 1
  %absResult = alloca i64, align 8
  %result = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !940
  %call = call i64 @toRep.8(double noundef %0) #4, !dbg !941
  %shr = lshr i64 %call, 52, !dbg !942
  %and = and i64 %shr, 2047, !dbg !943
  %conv = trunc i64 %and to i32, !dbg !941
  store i32 %conv, i32* %aExponent, align 4, !dbg !944
  %1 = load double, double* %b.addr, align 8, !dbg !945
  %call1 = call i64 @toRep.8(double noundef %1) #4, !dbg !946
  %shr2 = lshr i64 %call1, 52, !dbg !947
  %and3 = and i64 %shr2, 2047, !dbg !948
  %conv4 = trunc i64 %and3 to i32, !dbg !946
  store i32 %conv4, i32* %bExponent, align 4, !dbg !949
  %2 = load double, double* %a.addr, align 8, !dbg !950
  %call5 = call i64 @toRep.8(double noundef %2) #4, !dbg !951
  %3 = load double, double* %b.addr, align 8, !dbg !952
  %call6 = call i64 @toRep.8(double noundef %3) #4, !dbg !953
  %xor = xor i64 %call5, %call6, !dbg !954
  %and7 = and i64 %xor, -9223372036854775808, !dbg !955
  store i64 %and7, i64* %quotientSign, align 8, !dbg !956
  %4 = load double, double* %a.addr, align 8, !dbg !957
  %call8 = call i64 @toRep.8(double noundef %4) #4, !dbg !958
  %and9 = and i64 %call8, 4503599627370495, !dbg !959
  store i64 %and9, i64* %aSignificand, align 8, !dbg !960
  %5 = load double, double* %b.addr, align 8, !dbg !961
  %call10 = call i64 @toRep.8(double noundef %5) #4, !dbg !962
  %and11 = and i64 %call10, 4503599627370495, !dbg !963
  store i64 %and11, i64* %bSignificand, align 8, !dbg !964
  store i32 0, i32* %scale, align 4, !dbg !965
  %6 = load i32, i32* %aExponent, align 4, !dbg !966
  %sub = sub i32 %6, 1, !dbg !967
  %cmp = icmp uge i32 %sub, 2046, !dbg !968
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !969

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !970
  %sub13 = sub i32 %7, 1, !dbg !971
  %cmp14 = icmp uge i32 %sub13, 2046, !dbg !972
  br i1 %cmp14, label %if.then, label %if.end70, !dbg !966

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load double, double* %a.addr, align 8, !dbg !973
  %call16 = call i64 @toRep.8(double noundef %8) #4, !dbg !974
  %and17 = and i64 %call16, 9223372036854775807, !dbg !975
  store i64 %and17, i64* %aAbs, align 8, !dbg !976
  %9 = load double, double* %b.addr, align 8, !dbg !977
  %call18 = call i64 @toRep.8(double noundef %9) #4, !dbg !978
  %and19 = and i64 %call18, 9223372036854775807, !dbg !979
  store i64 %and19, i64* %bAbs, align 8, !dbg !980
  %10 = load i64, i64* %aAbs, align 8, !dbg !981
  %cmp20 = icmp ugt i64 %10, 9218868437227405312, !dbg !982
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !981

if.then22:                                        ; preds = %if.then
  %11 = load double, double* %a.addr, align 8, !dbg !983
  %call23 = call i64 @toRep.8(double noundef %11) #4, !dbg !984
  %or = or i64 %call23, 2251799813685248, !dbg !985
  %call24 = call double @fromRep.9(i64 noundef %or) #4, !dbg !986
  store double %call24, double* %retval, align 8, !dbg !987
  br label %return, !dbg !987

if.end:                                           ; preds = %if.then
  %12 = load i64, i64* %bAbs, align 8, !dbg !988
  %cmp25 = icmp ugt i64 %12, 9218868437227405312, !dbg !989
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !988

if.then27:                                        ; preds = %if.end
  %13 = load double, double* %b.addr, align 8, !dbg !990
  %call28 = call i64 @toRep.8(double noundef %13) #4, !dbg !991
  %or29 = or i64 %call28, 2251799813685248, !dbg !992
  %call30 = call double @fromRep.9(i64 noundef %or29) #4, !dbg !993
  store double %call30, double* %retval, align 8, !dbg !994
  br label %return, !dbg !994

if.end31:                                         ; preds = %if.end
  %14 = load i64, i64* %aAbs, align 8, !dbg !995
  %cmp32 = icmp eq i64 %14, 9218868437227405312, !dbg !996
  br i1 %cmp32, label %if.then34, label %if.end41, !dbg !995

if.then34:                                        ; preds = %if.end31
  %15 = load i64, i64* %bAbs, align 8, !dbg !997
  %cmp35 = icmp eq i64 %15, 9218868437227405312, !dbg !998
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !997

if.then37:                                        ; preds = %if.then34
  %call38 = call double @fromRep.9(i64 noundef 9221120237041090560) #4, !dbg !999
  store double %call38, double* %retval, align 8, !dbg !1000
  br label %return, !dbg !1000

if.else:                                          ; preds = %if.then34
  %16 = load i64, i64* %aAbs, align 8, !dbg !1001
  %17 = load i64, i64* %quotientSign, align 8, !dbg !1002
  %or39 = or i64 %16, %17, !dbg !1003
  %call40 = call double @fromRep.9(i64 noundef %or39) #4, !dbg !1004
  store double %call40, double* %retval, align 8, !dbg !1005
  br label %return, !dbg !1005

if.end41:                                         ; preds = %if.end31
  %18 = load i64, i64* %bAbs, align 8, !dbg !1006
  %cmp42 = icmp eq i64 %18, 9218868437227405312, !dbg !1007
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1006

if.then44:                                        ; preds = %if.end41
  %19 = load i64, i64* %quotientSign, align 8, !dbg !1008
  %call45 = call double @fromRep.9(i64 noundef %19) #4, !dbg !1009
  store double %call45, double* %retval, align 8, !dbg !1010
  br label %return, !dbg !1010

if.end46:                                         ; preds = %if.end41
  %20 = load i64, i64* %aAbs, align 8, !dbg !1011
  %tobool = icmp ne i64 %20, 0, !dbg !1011
  br i1 %tobool, label %if.end53, label %if.then47, !dbg !1012

if.then47:                                        ; preds = %if.end46
  %21 = load i64, i64* %bAbs, align 8, !dbg !1013
  %tobool48 = icmp ne i64 %21, 0, !dbg !1013
  br i1 %tobool48, label %if.else51, label %if.then49, !dbg !1014

if.then49:                                        ; preds = %if.then47
  %call50 = call double @fromRep.9(i64 noundef 9221120237041090560) #4, !dbg !1015
  store double %call50, double* %retval, align 8, !dbg !1016
  br label %return, !dbg !1016

if.else51:                                        ; preds = %if.then47
  %22 = load i64, i64* %quotientSign, align 8, !dbg !1017
  %call52 = call double @fromRep.9(i64 noundef %22) #4, !dbg !1018
  store double %call52, double* %retval, align 8, !dbg !1019
  br label %return, !dbg !1019

if.end53:                                         ; preds = %if.end46
  %23 = load i64, i64* %bAbs, align 8, !dbg !1020
  %tobool54 = icmp ne i64 %23, 0, !dbg !1020
  br i1 %tobool54, label %if.end58, label %if.then55, !dbg !1021

if.then55:                                        ; preds = %if.end53
  %24 = load i64, i64* %quotientSign, align 8, !dbg !1022
  %or56 = or i64 9218868437227405312, %24, !dbg !1023
  %call57 = call double @fromRep.9(i64 noundef %or56) #4, !dbg !1024
  store double %call57, double* %retval, align 8, !dbg !1025
  br label %return, !dbg !1025

if.end58:                                         ; preds = %if.end53
  %25 = load i64, i64* %aAbs, align 8, !dbg !1026
  %cmp59 = icmp ult i64 %25, 4503599627370496, !dbg !1027
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !1026

if.then61:                                        ; preds = %if.end58
  %call62 = call i32 @normalize.10(i64* noundef %aSignificand) #4, !dbg !1028
  %26 = load i32, i32* %scale, align 4, !dbg !1029
  %add = add nsw i32 %26, %call62, !dbg !1029
  store i32 %add, i32* %scale, align 4, !dbg !1029
  br label %if.end63, !dbg !1030

if.end63:                                         ; preds = %if.then61, %if.end58
  %27 = load i64, i64* %bAbs, align 8, !dbg !1031
  %cmp64 = icmp ult i64 %27, 4503599627370496, !dbg !1032
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !1031

if.then66:                                        ; preds = %if.end63
  %call67 = call i32 @normalize.10(i64* noundef %bSignificand) #4, !dbg !1033
  %28 = load i32, i32* %scale, align 4, !dbg !1034
  %sub68 = sub nsw i32 %28, %call67, !dbg !1034
  store i32 %sub68, i32* %scale, align 4, !dbg !1034
  br label %if.end69, !dbg !1035

if.end69:                                         ; preds = %if.then66, %if.end63
  br label %if.end70, !dbg !1036

if.end70:                                         ; preds = %if.end69, %lor.lhs.false
  %29 = load i64, i64* %aSignificand, align 8, !dbg !1037
  %or71 = or i64 %29, 4503599627370496, !dbg !1037
  store i64 %or71, i64* %aSignificand, align 8, !dbg !1037
  %30 = load i64, i64* %bSignificand, align 8, !dbg !1038
  %or72 = or i64 %30, 4503599627370496, !dbg !1038
  store i64 %or72, i64* %bSignificand, align 8, !dbg !1038
  %31 = load i32, i32* %aExponent, align 4, !dbg !1039
  %32 = load i32, i32* %bExponent, align 4, !dbg !1040
  %sub73 = sub i32 %31, %32, !dbg !1041
  %33 = load i32, i32* %scale, align 4, !dbg !1042
  %add74 = add i32 %sub73, %33, !dbg !1043
  store i32 %add74, i32* %quotientExponent, align 4, !dbg !1044
  %34 = load i64, i64* %bSignificand, align 8, !dbg !1045
  %shr75 = lshr i64 %34, 21, !dbg !1046
  %conv76 = trunc i64 %shr75 to i32, !dbg !1045
  store i32 %conv76, i32* %q31b, align 4, !dbg !1047
  %35 = load i32, i32* %q31b, align 4, !dbg !1048
  %sub77 = sub i32 1963258675, %35, !dbg !1049
  store i32 %sub77, i32* %recip32, align 4, !dbg !1050
  %36 = load i32, i32* %recip32, align 4, !dbg !1051
  %conv78 = zext i32 %36 to i64, !dbg !1052
  %37 = load i32, i32* %q31b, align 4, !dbg !1053
  %conv79 = zext i32 %37 to i64, !dbg !1053
  %mul = mul i64 %conv78, %conv79, !dbg !1054
  %shr80 = lshr i64 %mul, 32, !dbg !1055
  %sub81 = sub i64 0, %shr80, !dbg !1056
  %conv82 = trunc i64 %sub81 to i32, !dbg !1056
  store i32 %conv82, i32* %correction32, align 4, !dbg !1057
  %38 = load i32, i32* %recip32, align 4, !dbg !1058
  %conv83 = zext i32 %38 to i64, !dbg !1059
  %39 = load i32, i32* %correction32, align 4, !dbg !1060
  %conv84 = zext i32 %39 to i64, !dbg !1060
  %mul85 = mul i64 %conv83, %conv84, !dbg !1061
  %shr86 = lshr i64 %mul85, 31, !dbg !1062
  %conv87 = trunc i64 %shr86 to i32, !dbg !1059
  store i32 %conv87, i32* %recip32, align 4, !dbg !1063
  %40 = load i32, i32* %recip32, align 4, !dbg !1064
  %conv88 = zext i32 %40 to i64, !dbg !1065
  %41 = load i32, i32* %q31b, align 4, !dbg !1066
  %conv89 = zext i32 %41 to i64, !dbg !1066
  %mul90 = mul i64 %conv88, %conv89, !dbg !1067
  %shr91 = lshr i64 %mul90, 32, !dbg !1068
  %sub92 = sub i64 0, %shr91, !dbg !1069
  %conv93 = trunc i64 %sub92 to i32, !dbg !1069
  store i32 %conv93, i32* %correction32, align 4, !dbg !1070
  %42 = load i32, i32* %recip32, align 4, !dbg !1071
  %conv94 = zext i32 %42 to i64, !dbg !1072
  %43 = load i32, i32* %correction32, align 4, !dbg !1073
  %conv95 = zext i32 %43 to i64, !dbg !1073
  %mul96 = mul i64 %conv94, %conv95, !dbg !1074
  %shr97 = lshr i64 %mul96, 31, !dbg !1075
  %conv98 = trunc i64 %shr97 to i32, !dbg !1072
  store i32 %conv98, i32* %recip32, align 4, !dbg !1076
  %44 = load i32, i32* %recip32, align 4, !dbg !1077
  %conv99 = zext i32 %44 to i64, !dbg !1078
  %45 = load i32, i32* %q31b, align 4, !dbg !1079
  %conv100 = zext i32 %45 to i64, !dbg !1079
  %mul101 = mul i64 %conv99, %conv100, !dbg !1080
  %shr102 = lshr i64 %mul101, 32, !dbg !1081
  %sub103 = sub i64 0, %shr102, !dbg !1082
  %conv104 = trunc i64 %sub103 to i32, !dbg !1082
  store i32 %conv104, i32* %correction32, align 4, !dbg !1083
  %46 = load i32, i32* %recip32, align 4, !dbg !1084
  %conv105 = zext i32 %46 to i64, !dbg !1085
  %47 = load i32, i32* %correction32, align 4, !dbg !1086
  %conv106 = zext i32 %47 to i64, !dbg !1086
  %mul107 = mul i64 %conv105, %conv106, !dbg !1087
  %shr108 = lshr i64 %mul107, 31, !dbg !1088
  %conv109 = trunc i64 %shr108 to i32, !dbg !1085
  store i32 %conv109, i32* %recip32, align 4, !dbg !1089
  %48 = load i32, i32* %recip32, align 4, !dbg !1090
  %dec = add i32 %48, -1, !dbg !1090
  store i32 %dec, i32* %recip32, align 4, !dbg !1090
  %49 = load i64, i64* %bSignificand, align 8, !dbg !1091
  %shl = shl i64 %49, 11, !dbg !1092
  %conv110 = trunc i64 %shl to i32, !dbg !1091
  store i32 %conv110, i32* %q63blo, align 4, !dbg !1093
  %50 = load i32, i32* %recip32, align 4, !dbg !1094
  %conv111 = zext i32 %50 to i64, !dbg !1095
  %51 = load i32, i32* %q31b, align 4, !dbg !1096
  %conv112 = zext i32 %51 to i64, !dbg !1096
  %mul113 = mul i64 %conv111, %conv112, !dbg !1097
  %52 = load i32, i32* %recip32, align 4, !dbg !1098
  %conv114 = zext i32 %52 to i64, !dbg !1099
  %53 = load i32, i32* %q63blo, align 4, !dbg !1100
  %conv115 = zext i32 %53 to i64, !dbg !1100
  %mul116 = mul i64 %conv114, %conv115, !dbg !1101
  %shr117 = lshr i64 %mul116, 32, !dbg !1102
  %add118 = add i64 %mul113, %shr117, !dbg !1103
  %sub119 = sub i64 0, %add118, !dbg !1104
  store i64 %sub119, i64* %correction, align 8, !dbg !1105
  %54 = load i64, i64* %correction, align 8, !dbg !1106
  %shr120 = lshr i64 %54, 32, !dbg !1107
  %conv121 = trunc i64 %shr120 to i32, !dbg !1106
  store i32 %conv121, i32* %cHi, align 4, !dbg !1108
  %55 = load i64, i64* %correction, align 8, !dbg !1109
  %conv122 = trunc i64 %55 to i32, !dbg !1109
  store i32 %conv122, i32* %cLo, align 4, !dbg !1110
  %56 = load i32, i32* %recip32, align 4, !dbg !1111
  %conv123 = zext i32 %56 to i64, !dbg !1112
  %57 = load i32, i32* %cHi, align 4, !dbg !1113
  %conv124 = zext i32 %57 to i64, !dbg !1113
  %mul125 = mul i64 %conv123, %conv124, !dbg !1114
  %58 = load i32, i32* %recip32, align 4, !dbg !1115
  %conv126 = zext i32 %58 to i64, !dbg !1116
  %59 = load i32, i32* %cLo, align 4, !dbg !1117
  %conv127 = zext i32 %59 to i64, !dbg !1117
  %mul128 = mul i64 %conv126, %conv127, !dbg !1118
  %shr129 = lshr i64 %mul128, 32, !dbg !1119
  %add130 = add i64 %mul125, %shr129, !dbg !1120
  store i64 %add130, i64* %reciprocal, align 8, !dbg !1121
  %60 = load i64, i64* %reciprocal, align 8, !dbg !1122
  %sub131 = sub i64 %60, 2, !dbg !1122
  store i64 %sub131, i64* %reciprocal, align 8, !dbg !1122
  %61 = load i64, i64* %aSignificand, align 8, !dbg !1123
  %shl132 = shl i64 %61, 2, !dbg !1124
  %62 = load i64, i64* %reciprocal, align 8, !dbg !1125
  call void @wideMultiply(i64 noundef %shl132, i64 noundef %62, i64* noundef %quotient, i64* noundef %quotientLo) #4, !dbg !1126
  %63 = load i64, i64* %quotient, align 8, !dbg !1127
  %cmp133 = icmp ult i64 %63, 9007199254740992, !dbg !1128
  br i1 %cmp133, label %if.then135, label %if.else140, !dbg !1127

if.then135:                                       ; preds = %if.end70
  %64 = load i64, i64* %aSignificand, align 8, !dbg !1129
  %shl136 = shl i64 %64, 53, !dbg !1130
  %65 = load i64, i64* %quotient, align 8, !dbg !1131
  %66 = load i64, i64* %bSignificand, align 8, !dbg !1132
  %mul137 = mul i64 %65, %66, !dbg !1133
  %sub138 = sub i64 %shl136, %mul137, !dbg !1134
  store i64 %sub138, i64* %residual, align 8, !dbg !1135
  %67 = load i32, i32* %quotientExponent, align 4, !dbg !1136
  %dec139 = add nsw i32 %67, -1, !dbg !1136
  store i32 %dec139, i32* %quotientExponent, align 4, !dbg !1136
  br label %if.end145, !dbg !1137

if.else140:                                       ; preds = %if.end70
  %68 = load i64, i64* %quotient, align 8, !dbg !1138
  %shr141 = lshr i64 %68, 1, !dbg !1138
  store i64 %shr141, i64* %quotient, align 8, !dbg !1138
  %69 = load i64, i64* %aSignificand, align 8, !dbg !1139
  %shl142 = shl i64 %69, 52, !dbg !1140
  %70 = load i64, i64* %quotient, align 8, !dbg !1141
  %71 = load i64, i64* %bSignificand, align 8, !dbg !1142
  %mul143 = mul i64 %70, %71, !dbg !1143
  %sub144 = sub i64 %shl142, %mul143, !dbg !1144
  store i64 %sub144, i64* %residual, align 8, !dbg !1145
  br label %if.end145

if.end145:                                        ; preds = %if.else140, %if.then135
  %72 = load i32, i32* %quotientExponent, align 4, !dbg !1146
  %add146 = add nsw i32 %72, 1023, !dbg !1147
  store i32 %add146, i32* %writtenExponent, align 4, !dbg !1148
  %73 = load i32, i32* %writtenExponent, align 4, !dbg !1149
  %cmp147 = icmp sge i32 %73, 2047, !dbg !1150
  br i1 %cmp147, label %if.then149, label %if.else152, !dbg !1149

if.then149:                                       ; preds = %if.end145
  %74 = load i64, i64* %quotientSign, align 8, !dbg !1151
  %or150 = or i64 9218868437227405312, %74, !dbg !1152
  %call151 = call double @fromRep.9(i64 noundef %or150) #4, !dbg !1153
  store double %call151, double* %retval, align 8, !dbg !1154
  br label %return, !dbg !1154

if.else152:                                       ; preds = %if.end145
  %75 = load i32, i32* %writtenExponent, align 4, !dbg !1155
  %cmp153 = icmp slt i32 %75, 1, !dbg !1156
  br i1 %cmp153, label %if.then155, label %if.else157, !dbg !1155

if.then155:                                       ; preds = %if.else152
  %76 = load i64, i64* %quotientSign, align 8, !dbg !1157
  %call156 = call double @fromRep.9(i64 noundef %76) #4, !dbg !1158
  store double %call156, double* %retval, align 8, !dbg !1159
  br label %return, !dbg !1159

if.else157:                                       ; preds = %if.else152
  %77 = load i64, i64* %residual, align 8, !dbg !1160
  %shl158 = shl i64 %77, 1, !dbg !1161
  %78 = load i64, i64* %bSignificand, align 8, !dbg !1162
  %cmp159 = icmp ugt i64 %shl158, %78, !dbg !1163
  %frombool = zext i1 %cmp159 to i8, !dbg !1164
  store i8 %frombool, i8* %round, align 1, !dbg !1164
  %79 = load i64, i64* %quotient, align 8, !dbg !1165
  %and161 = and i64 %79, 4503599627370495, !dbg !1166
  store i64 %and161, i64* %absResult, align 8, !dbg !1167
  %80 = load i32, i32* %writtenExponent, align 4, !dbg !1168
  %conv162 = sext i32 %80 to i64, !dbg !1169
  %shl163 = shl i64 %conv162, 52, !dbg !1170
  %81 = load i64, i64* %absResult, align 8, !dbg !1171
  %or164 = or i64 %81, %shl163, !dbg !1171
  store i64 %or164, i64* %absResult, align 8, !dbg !1171
  %82 = load i8, i8* %round, align 1, !dbg !1172
  %tobool165 = trunc i8 %82 to i1, !dbg !1172
  %conv166 = zext i1 %tobool165 to i64, !dbg !1172
  %83 = load i64, i64* %absResult, align 8, !dbg !1173
  %add167 = add i64 %83, %conv166, !dbg !1173
  store i64 %add167, i64* %absResult, align 8, !dbg !1173
  %84 = load i64, i64* %absResult, align 8, !dbg !1174
  %85 = load i64, i64* %quotientSign, align 8, !dbg !1175
  %or168 = or i64 %84, %85, !dbg !1176
  %call169 = call double @fromRep.9(i64 noundef %or168) #4, !dbg !1177
  store double %call169, double* %result, align 8, !dbg !1178
  %86 = load double, double* %result, align 8, !dbg !1179
  store double %86, double* %retval, align 8, !dbg !1180
  br label %return, !dbg !1180

return:                                           ; preds = %if.else157, %if.then155, %if.then149, %if.then55, %if.else51, %if.then49, %if.then44, %if.else, %if.then37, %if.then27, %if.then22
  %87 = load double, double* %retval, align 8, !dbg !1181
  ret double %87, !dbg !1181
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.8(double noundef %x) #0 !dbg !1182 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1183
  %0 = load double, double* %x.addr, align 8, !dbg !1184
  store double %0, double* %f, align 8, !dbg !1183
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1185
  %1 = load i64, i64* %i, align 8, !dbg !1185
  ret i64 %1, !dbg !1186
}

; Function Attrs: noinline nounwind
define internal double @fromRep.9(i64 noundef %x) #0 !dbg !1187 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1188
  %0 = load i64, i64* %x.addr, align 8, !dbg !1189
  store i64 %0, i64* %i, align 8, !dbg !1188
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1190
  %1 = load double, double* %f, align 8, !dbg !1190
  ret double %1, !dbg !1191
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.10(i64* noundef %significand) #0 !dbg !1192 {
entry:
  %significand.addr = alloca i64*, align 4
  %shift = alloca i32, align 4
  store i64* %significand, i64** %significand.addr, align 4
  %0 = load i64*, i64** %significand.addr, align 4, !dbg !1193
  %1 = load i64, i64* %0, align 8, !dbg !1194
  %call = call i32 @rep_clz.11(i64 noundef %1) #4, !dbg !1195
  %call1 = call i32 @rep_clz.11(i64 noundef 4503599627370496) #4, !dbg !1196
  %sub = sub nsw i32 %call, %call1, !dbg !1197
  store i32 %sub, i32* %shift, align 4, !dbg !1198
  %2 = load i32, i32* %shift, align 4, !dbg !1199
  %3 = load i64*, i64** %significand.addr, align 4, !dbg !1200
  %4 = load i64, i64* %3, align 8, !dbg !1201
  %sh_prom = zext i32 %2 to i64, !dbg !1201
  %shl = shl i64 %4, %sh_prom, !dbg !1201
  store i64 %shl, i64* %3, align 8, !dbg !1201
  %5 = load i32, i32* %shift, align 4, !dbg !1202
  %sub2 = sub nsw i32 1, %5, !dbg !1203
  ret i32 %sub2, !dbg !1204
}

; Function Attrs: noinline nounwind
define internal void @wideMultiply(i64 noundef %a, i64 noundef %b, i64* noundef %hi, i64* noundef %lo) #0 !dbg !1205 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %hi.addr = alloca i64*, align 4
  %lo.addr = alloca i64*, align 4
  %plolo = alloca i64, align 8
  %plohi = alloca i64, align 8
  %philo = alloca i64, align 8
  %phihi = alloca i64, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %hi, i64** %hi.addr, align 4
  store i64* %lo, i64** %lo.addr, align 4
  %0 = load i64, i64* %a.addr, align 8, !dbg !1206
  %and = and i64 %0, 4294967295, !dbg !1206
  %1 = load i64, i64* %b.addr, align 8, !dbg !1207
  %and1 = and i64 %1, 4294967295, !dbg !1207
  %mul = mul i64 %and, %and1, !dbg !1208
  store i64 %mul, i64* %plolo, align 8, !dbg !1209
  %2 = load i64, i64* %a.addr, align 8, !dbg !1210
  %and2 = and i64 %2, 4294967295, !dbg !1210
  %3 = load i64, i64* %b.addr, align 8, !dbg !1211
  %shr = lshr i64 %3, 32, !dbg !1211
  %mul3 = mul i64 %and2, %shr, !dbg !1212
  store i64 %mul3, i64* %plohi, align 8, !dbg !1213
  %4 = load i64, i64* %a.addr, align 8, !dbg !1214
  %shr4 = lshr i64 %4, 32, !dbg !1214
  %5 = load i64, i64* %b.addr, align 8, !dbg !1215
  %and5 = and i64 %5, 4294967295, !dbg !1215
  %mul6 = mul i64 %shr4, %and5, !dbg !1216
  store i64 %mul6, i64* %philo, align 8, !dbg !1217
  %6 = load i64, i64* %a.addr, align 8, !dbg !1218
  %shr7 = lshr i64 %6, 32, !dbg !1218
  %7 = load i64, i64* %b.addr, align 8, !dbg !1219
  %shr8 = lshr i64 %7, 32, !dbg !1219
  %mul9 = mul i64 %shr7, %shr8, !dbg !1220
  store i64 %mul9, i64* %phihi, align 8, !dbg !1221
  %8 = load i64, i64* %plolo, align 8, !dbg !1222
  %and10 = and i64 %8, 4294967295, !dbg !1222
  store i64 %and10, i64* %r0, align 8, !dbg !1223
  %9 = load i64, i64* %plolo, align 8, !dbg !1224
  %shr11 = lshr i64 %9, 32, !dbg !1224
  %10 = load i64, i64* %plohi, align 8, !dbg !1225
  %and12 = and i64 %10, 4294967295, !dbg !1225
  %add = add i64 %shr11, %and12, !dbg !1226
  %11 = load i64, i64* %philo, align 8, !dbg !1227
  %and13 = and i64 %11, 4294967295, !dbg !1227
  %add14 = add i64 %add, %and13, !dbg !1228
  store i64 %add14, i64* %r1, align 8, !dbg !1229
  %12 = load i64, i64* %r0, align 8, !dbg !1230
  %13 = load i64, i64* %r1, align 8, !dbg !1231
  %shl = shl i64 %13, 32, !dbg !1232
  %add15 = add i64 %12, %shl, !dbg !1233
  %14 = load i64*, i64** %lo.addr, align 4, !dbg !1234
  store i64 %add15, i64* %14, align 8, !dbg !1235
  %15 = load i64, i64* %plohi, align 8, !dbg !1236
  %shr16 = lshr i64 %15, 32, !dbg !1236
  %16 = load i64, i64* %philo, align 8, !dbg !1237
  %shr17 = lshr i64 %16, 32, !dbg !1237
  %add18 = add i64 %shr16, %shr17, !dbg !1238
  %17 = load i64, i64* %r1, align 8, !dbg !1239
  %shr19 = lshr i64 %17, 32, !dbg !1239
  %add20 = add i64 %add18, %shr19, !dbg !1240
  %18 = load i64, i64* %phihi, align 8, !dbg !1241
  %add21 = add i64 %add20, %18, !dbg !1242
  %19 = load i64*, i64** %hi.addr, align 4, !dbg !1243
  store i64 %add21, i64* %19, align 8, !dbg !1244
  ret void, !dbg !1245
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.11(i64 noundef %a) #0 !dbg !1246 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !1247
  %and = and i64 %0, -4294967296, !dbg !1248
  %tobool = icmp ne i64 %and, 0, !dbg !1248
  br i1 %tobool, label %if.then, label %if.else, !dbg !1247

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !1249
  %shr = lshr i64 %1, 32, !dbg !1250
  %conv = trunc i64 %shr to i32, !dbg !1249
  %2 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true), !dbg !1251
  store i32 %2, i32* %retval, align 4, !dbg !1252
  br label %return, !dbg !1252

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %a.addr, align 8, !dbg !1253
  %and1 = and i64 %3, 4294967295, !dbg !1254
  %conv2 = trunc i64 %and1 to i32, !dbg !1253
  %4 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 true), !dbg !1255
  %add = add nsw i32 32, %4, !dbg !1256
  store i32 %add, i32* %retval, align 4, !dbg !1257
  br label %return, !dbg !1257

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !1258
  ret i32 %5, !dbg !1258
}

; Function Attrs: noinline nounwind
define dso_local float @__divsf3(float noundef %a, float noundef %b) #0 !dbg !1259 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aExponent = alloca i32, align 4
  %bExponent = alloca i32, align 4
  %quotientSign = alloca i32, align 4
  %aSignificand = alloca i32, align 4
  %bSignificand = alloca i32, align 4
  %scale = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  %quotientExponent = alloca i32, align 4
  %q31b = alloca i32, align 4
  %reciprocal = alloca i32, align 4
  %correction = alloca i32, align 4
  %quotient = alloca i32, align 4
  %residual = alloca i32, align 4
  %writtenExponent = alloca i32, align 4
  %round = alloca i8, align 1
  %absResult = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1260
  %call = call i32 @toRep.12(float noundef %0) #4, !dbg !1261
  %shr = lshr i32 %call, 23, !dbg !1262
  %and = and i32 %shr, 255, !dbg !1263
  store i32 %and, i32* %aExponent, align 4, !dbg !1264
  %1 = load float, float* %b.addr, align 4, !dbg !1265
  %call1 = call i32 @toRep.12(float noundef %1) #4, !dbg !1266
  %shr2 = lshr i32 %call1, 23, !dbg !1267
  %and3 = and i32 %shr2, 255, !dbg !1268
  store i32 %and3, i32* %bExponent, align 4, !dbg !1269
  %2 = load float, float* %a.addr, align 4, !dbg !1270
  %call4 = call i32 @toRep.12(float noundef %2) #4, !dbg !1271
  %3 = load float, float* %b.addr, align 4, !dbg !1272
  %call5 = call i32 @toRep.12(float noundef %3) #4, !dbg !1273
  %xor = xor i32 %call4, %call5, !dbg !1274
  %and6 = and i32 %xor, -2147483648, !dbg !1275
  store i32 %and6, i32* %quotientSign, align 4, !dbg !1276
  %4 = load float, float* %a.addr, align 4, !dbg !1277
  %call7 = call i32 @toRep.12(float noundef %4) #4, !dbg !1278
  %and8 = and i32 %call7, 8388607, !dbg !1279
  store i32 %and8, i32* %aSignificand, align 4, !dbg !1280
  %5 = load float, float* %b.addr, align 4, !dbg !1281
  %call9 = call i32 @toRep.12(float noundef %5) #4, !dbg !1282
  %and10 = and i32 %call9, 8388607, !dbg !1283
  store i32 %and10, i32* %bSignificand, align 4, !dbg !1284
  store i32 0, i32* %scale, align 4, !dbg !1285
  %6 = load i32, i32* %aExponent, align 4, !dbg !1286
  %sub = sub i32 %6, 1, !dbg !1287
  %cmp = icmp uge i32 %sub, 254, !dbg !1288
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1289

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !1290
  %sub11 = sub i32 %7, 1, !dbg !1291
  %cmp12 = icmp uge i32 %sub11, 254, !dbg !1292
  br i1 %cmp12, label %if.then, label %if.end60, !dbg !1286

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load float, float* %a.addr, align 4, !dbg !1293
  %call13 = call i32 @toRep.12(float noundef %8) #4, !dbg !1294
  %and14 = and i32 %call13, 2147483647, !dbg !1295
  store i32 %and14, i32* %aAbs, align 4, !dbg !1296
  %9 = load float, float* %b.addr, align 4, !dbg !1297
  %call15 = call i32 @toRep.12(float noundef %9) #4, !dbg !1298
  %and16 = and i32 %call15, 2147483647, !dbg !1299
  store i32 %and16, i32* %bAbs, align 4, !dbg !1300
  %10 = load i32, i32* %aAbs, align 4, !dbg !1301
  %cmp17 = icmp ugt i32 %10, 2139095040, !dbg !1302
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !1301

if.then18:                                        ; preds = %if.then
  %11 = load float, float* %a.addr, align 4, !dbg !1303
  %call19 = call i32 @toRep.12(float noundef %11) #4, !dbg !1304
  %or = or i32 %call19, 4194304, !dbg !1305
  %call20 = call float @fromRep.13(i32 noundef %or) #4, !dbg !1306
  store float %call20, float* %retval, align 4, !dbg !1307
  br label %return, !dbg !1307

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %bAbs, align 4, !dbg !1308
  %cmp21 = icmp ugt i32 %12, 2139095040, !dbg !1309
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !1308

if.then22:                                        ; preds = %if.end
  %13 = load float, float* %b.addr, align 4, !dbg !1310
  %call23 = call i32 @toRep.12(float noundef %13) #4, !dbg !1311
  %or24 = or i32 %call23, 4194304, !dbg !1312
  %call25 = call float @fromRep.13(i32 noundef %or24) #4, !dbg !1313
  store float %call25, float* %retval, align 4, !dbg !1314
  br label %return, !dbg !1314

if.end26:                                         ; preds = %if.end
  %14 = load i32, i32* %aAbs, align 4, !dbg !1315
  %cmp27 = icmp eq i32 %14, 2139095040, !dbg !1316
  br i1 %cmp27, label %if.then28, label %if.end34, !dbg !1315

if.then28:                                        ; preds = %if.end26
  %15 = load i32, i32* %bAbs, align 4, !dbg !1317
  %cmp29 = icmp eq i32 %15, 2139095040, !dbg !1318
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !1317

if.then30:                                        ; preds = %if.then28
  %call31 = call float @fromRep.13(i32 noundef 2143289344) #4, !dbg !1319
  store float %call31, float* %retval, align 4, !dbg !1320
  br label %return, !dbg !1320

if.else:                                          ; preds = %if.then28
  %16 = load i32, i32* %aAbs, align 4, !dbg !1321
  %17 = load i32, i32* %quotientSign, align 4, !dbg !1322
  %or32 = or i32 %16, %17, !dbg !1323
  %call33 = call float @fromRep.13(i32 noundef %or32) #4, !dbg !1324
  store float %call33, float* %retval, align 4, !dbg !1325
  br label %return, !dbg !1325

if.end34:                                         ; preds = %if.end26
  %18 = load i32, i32* %bAbs, align 4, !dbg !1326
  %cmp35 = icmp eq i32 %18, 2139095040, !dbg !1327
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !1326

if.then36:                                        ; preds = %if.end34
  %19 = load i32, i32* %quotientSign, align 4, !dbg !1328
  %call37 = call float @fromRep.13(i32 noundef %19) #4, !dbg !1329
  store float %call37, float* %retval, align 4, !dbg !1330
  br label %return, !dbg !1330

if.end38:                                         ; preds = %if.end34
  %20 = load i32, i32* %aAbs, align 4, !dbg !1331
  %tobool = icmp ne i32 %20, 0, !dbg !1331
  br i1 %tobool, label %if.end45, label %if.then39, !dbg !1332

if.then39:                                        ; preds = %if.end38
  %21 = load i32, i32* %bAbs, align 4, !dbg !1333
  %tobool40 = icmp ne i32 %21, 0, !dbg !1333
  br i1 %tobool40, label %if.else43, label %if.then41, !dbg !1334

if.then41:                                        ; preds = %if.then39
  %call42 = call float @fromRep.13(i32 noundef 2143289344) #4, !dbg !1335
  store float %call42, float* %retval, align 4, !dbg !1336
  br label %return, !dbg !1336

if.else43:                                        ; preds = %if.then39
  %22 = load i32, i32* %quotientSign, align 4, !dbg !1337
  %call44 = call float @fromRep.13(i32 noundef %22) #4, !dbg !1338
  store float %call44, float* %retval, align 4, !dbg !1339
  br label %return, !dbg !1339

if.end45:                                         ; preds = %if.end38
  %23 = load i32, i32* %bAbs, align 4, !dbg !1340
  %tobool46 = icmp ne i32 %23, 0, !dbg !1340
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !1341

if.then47:                                        ; preds = %if.end45
  %24 = load i32, i32* %quotientSign, align 4, !dbg !1342
  %or48 = or i32 2139095040, %24, !dbg !1343
  %call49 = call float @fromRep.13(i32 noundef %or48) #4, !dbg !1344
  store float %call49, float* %retval, align 4, !dbg !1345
  br label %return, !dbg !1345

if.end50:                                         ; preds = %if.end45
  %25 = load i32, i32* %aAbs, align 4, !dbg !1346
  %cmp51 = icmp ult i32 %25, 8388608, !dbg !1347
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !1346

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @normalize.14(i32* noundef %aSignificand) #4, !dbg !1348
  %26 = load i32, i32* %scale, align 4, !dbg !1349
  %add = add nsw i32 %26, %call53, !dbg !1349
  store i32 %add, i32* %scale, align 4, !dbg !1349
  br label %if.end54, !dbg !1350

if.end54:                                         ; preds = %if.then52, %if.end50
  %27 = load i32, i32* %bAbs, align 4, !dbg !1351
  %cmp55 = icmp ult i32 %27, 8388608, !dbg !1352
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !1351

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @normalize.14(i32* noundef %bSignificand) #4, !dbg !1353
  %28 = load i32, i32* %scale, align 4, !dbg !1354
  %sub58 = sub nsw i32 %28, %call57, !dbg !1354
  store i32 %sub58, i32* %scale, align 4, !dbg !1354
  br label %if.end59, !dbg !1355

if.end59:                                         ; preds = %if.then56, %if.end54
  br label %if.end60, !dbg !1356

if.end60:                                         ; preds = %if.end59, %lor.lhs.false
  %29 = load i32, i32* %aSignificand, align 4, !dbg !1357
  %or61 = or i32 %29, 8388608, !dbg !1357
  store i32 %or61, i32* %aSignificand, align 4, !dbg !1357
  %30 = load i32, i32* %bSignificand, align 4, !dbg !1358
  %or62 = or i32 %30, 8388608, !dbg !1358
  store i32 %or62, i32* %bSignificand, align 4, !dbg !1358
  %31 = load i32, i32* %aExponent, align 4, !dbg !1359
  %32 = load i32, i32* %bExponent, align 4, !dbg !1360
  %sub63 = sub i32 %31, %32, !dbg !1361
  %33 = load i32, i32* %scale, align 4, !dbg !1362
  %add64 = add i32 %sub63, %33, !dbg !1363
  store i32 %add64, i32* %quotientExponent, align 4, !dbg !1364
  %34 = load i32, i32* %bSignificand, align 4, !dbg !1365
  %shl = shl i32 %34, 8, !dbg !1366
  store i32 %shl, i32* %q31b, align 4, !dbg !1367
  %35 = load i32, i32* %q31b, align 4, !dbg !1368
  %sub65 = sub i32 1963258675, %35, !dbg !1369
  store i32 %sub65, i32* %reciprocal, align 4, !dbg !1370
  %36 = load i32, i32* %reciprocal, align 4, !dbg !1371
  %conv = zext i32 %36 to i64, !dbg !1372
  %37 = load i32, i32* %q31b, align 4, !dbg !1373
  %conv66 = zext i32 %37 to i64, !dbg !1373
  %mul = mul i64 %conv, %conv66, !dbg !1374
  %shr67 = lshr i64 %mul, 32, !dbg !1375
  %sub68 = sub i64 0, %shr67, !dbg !1376
  %conv69 = trunc i64 %sub68 to i32, !dbg !1376
  store i32 %conv69, i32* %correction, align 4, !dbg !1377
  %38 = load i32, i32* %reciprocal, align 4, !dbg !1378
  %conv70 = zext i32 %38 to i64, !dbg !1379
  %39 = load i32, i32* %correction, align 4, !dbg !1380
  %conv71 = zext i32 %39 to i64, !dbg !1380
  %mul72 = mul i64 %conv70, %conv71, !dbg !1381
  %shr73 = lshr i64 %mul72, 31, !dbg !1382
  %conv74 = trunc i64 %shr73 to i32, !dbg !1379
  store i32 %conv74, i32* %reciprocal, align 4, !dbg !1383
  %40 = load i32, i32* %reciprocal, align 4, !dbg !1384
  %conv75 = zext i32 %40 to i64, !dbg !1385
  %41 = load i32, i32* %q31b, align 4, !dbg !1386
  %conv76 = zext i32 %41 to i64, !dbg !1386
  %mul77 = mul i64 %conv75, %conv76, !dbg !1387
  %shr78 = lshr i64 %mul77, 32, !dbg !1388
  %sub79 = sub i64 0, %shr78, !dbg !1389
  %conv80 = trunc i64 %sub79 to i32, !dbg !1389
  store i32 %conv80, i32* %correction, align 4, !dbg !1390
  %42 = load i32, i32* %reciprocal, align 4, !dbg !1391
  %conv81 = zext i32 %42 to i64, !dbg !1392
  %43 = load i32, i32* %correction, align 4, !dbg !1393
  %conv82 = zext i32 %43 to i64, !dbg !1393
  %mul83 = mul i64 %conv81, %conv82, !dbg !1394
  %shr84 = lshr i64 %mul83, 31, !dbg !1395
  %conv85 = trunc i64 %shr84 to i32, !dbg !1392
  store i32 %conv85, i32* %reciprocal, align 4, !dbg !1396
  %44 = load i32, i32* %reciprocal, align 4, !dbg !1397
  %conv86 = zext i32 %44 to i64, !dbg !1398
  %45 = load i32, i32* %q31b, align 4, !dbg !1399
  %conv87 = zext i32 %45 to i64, !dbg !1399
  %mul88 = mul i64 %conv86, %conv87, !dbg !1400
  %shr89 = lshr i64 %mul88, 32, !dbg !1401
  %sub90 = sub i64 0, %shr89, !dbg !1402
  %conv91 = trunc i64 %sub90 to i32, !dbg !1402
  store i32 %conv91, i32* %correction, align 4, !dbg !1403
  %46 = load i32, i32* %reciprocal, align 4, !dbg !1404
  %conv92 = zext i32 %46 to i64, !dbg !1405
  %47 = load i32, i32* %correction, align 4, !dbg !1406
  %conv93 = zext i32 %47 to i64, !dbg !1406
  %mul94 = mul i64 %conv92, %conv93, !dbg !1407
  %shr95 = lshr i64 %mul94, 31, !dbg !1408
  %conv96 = trunc i64 %shr95 to i32, !dbg !1405
  store i32 %conv96, i32* %reciprocal, align 4, !dbg !1409
  %48 = load i32, i32* %reciprocal, align 4, !dbg !1410
  %sub97 = sub i32 %48, 2, !dbg !1410
  store i32 %sub97, i32* %reciprocal, align 4, !dbg !1410
  %49 = load i32, i32* %reciprocal, align 4, !dbg !1411
  %conv98 = zext i32 %49 to i64, !dbg !1412
  %50 = load i32, i32* %aSignificand, align 4, !dbg !1413
  %shl99 = shl i32 %50, 1, !dbg !1414
  %conv100 = zext i32 %shl99 to i64, !dbg !1415
  %mul101 = mul i64 %conv98, %conv100, !dbg !1416
  %shr102 = lshr i64 %mul101, 32, !dbg !1417
  %conv103 = trunc i64 %shr102 to i32, !dbg !1412
  store i32 %conv103, i32* %quotient, align 4, !dbg !1418
  %51 = load i32, i32* %quotient, align 4, !dbg !1419
  %cmp104 = icmp ult i32 %51, 16777216, !dbg !1420
  br i1 %cmp104, label %if.then106, label %if.else110, !dbg !1419

if.then106:                                       ; preds = %if.end60
  %52 = load i32, i32* %aSignificand, align 4, !dbg !1421
  %shl107 = shl i32 %52, 24, !dbg !1422
  %53 = load i32, i32* %quotient, align 4, !dbg !1423
  %54 = load i32, i32* %bSignificand, align 4, !dbg !1424
  %mul108 = mul i32 %53, %54, !dbg !1425
  %sub109 = sub i32 %shl107, %mul108, !dbg !1426
  store i32 %sub109, i32* %residual, align 4, !dbg !1427
  %55 = load i32, i32* %quotientExponent, align 4, !dbg !1428
  %dec = add nsw i32 %55, -1, !dbg !1428
  store i32 %dec, i32* %quotientExponent, align 4, !dbg !1428
  br label %if.end115, !dbg !1429

if.else110:                                       ; preds = %if.end60
  %56 = load i32, i32* %quotient, align 4, !dbg !1430
  %shr111 = lshr i32 %56, 1, !dbg !1430
  store i32 %shr111, i32* %quotient, align 4, !dbg !1430
  %57 = load i32, i32* %aSignificand, align 4, !dbg !1431
  %shl112 = shl i32 %57, 23, !dbg !1432
  %58 = load i32, i32* %quotient, align 4, !dbg !1433
  %59 = load i32, i32* %bSignificand, align 4, !dbg !1434
  %mul113 = mul i32 %58, %59, !dbg !1435
  %sub114 = sub i32 %shl112, %mul113, !dbg !1436
  store i32 %sub114, i32* %residual, align 4, !dbg !1437
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then106
  %60 = load i32, i32* %quotientExponent, align 4, !dbg !1438
  %add116 = add nsw i32 %60, 127, !dbg !1439
  store i32 %add116, i32* %writtenExponent, align 4, !dbg !1440
  %61 = load i32, i32* %writtenExponent, align 4, !dbg !1441
  %cmp117 = icmp sge i32 %61, 255, !dbg !1442
  br i1 %cmp117, label %if.then119, label %if.else122, !dbg !1441

if.then119:                                       ; preds = %if.end115
  %62 = load i32, i32* %quotientSign, align 4, !dbg !1443
  %or120 = or i32 2139095040, %62, !dbg !1444
  %call121 = call float @fromRep.13(i32 noundef %or120) #4, !dbg !1445
  store float %call121, float* %retval, align 4, !dbg !1446
  br label %return, !dbg !1446

if.else122:                                       ; preds = %if.end115
  %63 = load i32, i32* %writtenExponent, align 4, !dbg !1447
  %cmp123 = icmp slt i32 %63, 1, !dbg !1448
  br i1 %cmp123, label %if.then125, label %if.else127, !dbg !1447

if.then125:                                       ; preds = %if.else122
  %64 = load i32, i32* %quotientSign, align 4, !dbg !1449
  %call126 = call float @fromRep.13(i32 noundef %64) #4, !dbg !1450
  store float %call126, float* %retval, align 4, !dbg !1451
  br label %return, !dbg !1451

if.else127:                                       ; preds = %if.else122
  %65 = load i32, i32* %residual, align 4, !dbg !1452
  %shl128 = shl i32 %65, 1, !dbg !1453
  %66 = load i32, i32* %bSignificand, align 4, !dbg !1454
  %cmp129 = icmp ugt i32 %shl128, %66, !dbg !1455
  %frombool = zext i1 %cmp129 to i8, !dbg !1456
  store i8 %frombool, i8* %round, align 1, !dbg !1456
  %67 = load i32, i32* %quotient, align 4, !dbg !1457
  %and131 = and i32 %67, 8388607, !dbg !1458
  store i32 %and131, i32* %absResult, align 4, !dbg !1459
  %68 = load i32, i32* %writtenExponent, align 4, !dbg !1460
  %shl132 = shl i32 %68, 23, !dbg !1461
  %69 = load i32, i32* %absResult, align 4, !dbg !1462
  %or133 = or i32 %69, %shl132, !dbg !1462
  store i32 %or133, i32* %absResult, align 4, !dbg !1462
  %70 = load i8, i8* %round, align 1, !dbg !1463
  %tobool134 = trunc i8 %70 to i1, !dbg !1463
  %conv135 = zext i1 %tobool134 to i32, !dbg !1463
  %71 = load i32, i32* %absResult, align 4, !dbg !1464
  %add136 = add i32 %71, %conv135, !dbg !1464
  store i32 %add136, i32* %absResult, align 4, !dbg !1464
  %72 = load i32, i32* %absResult, align 4, !dbg !1465
  %73 = load i32, i32* %quotientSign, align 4, !dbg !1466
  %or137 = or i32 %72, %73, !dbg !1467
  %call138 = call float @fromRep.13(i32 noundef %or137) #4, !dbg !1468
  store float %call138, float* %retval, align 4, !dbg !1469
  br label %return, !dbg !1469

return:                                           ; preds = %if.else127, %if.then125, %if.then119, %if.then47, %if.else43, %if.then41, %if.then36, %if.else, %if.then30, %if.then22, %if.then18
  %74 = load float, float* %retval, align 4, !dbg !1470
  ret float %74, !dbg !1470
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.12(float noundef %x) #0 !dbg !1471 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1472
  %0 = load float, float* %x.addr, align 4, !dbg !1473
  store float %0, float* %f, align 4, !dbg !1472
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1474
  %1 = load i32, i32* %i, align 4, !dbg !1474
  ret i32 %1, !dbg !1475
}

; Function Attrs: noinline nounwind
define internal float @fromRep.13(i32 noundef %x) #0 !dbg !1476 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1477
  %0 = load i32, i32* %x.addr, align 4, !dbg !1478
  store i32 %0, i32* %i, align 4, !dbg !1477
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1479
  %1 = load float, float* %f, align 4, !dbg !1479
  ret float %1, !dbg !1480
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.14(i32* noundef %significand) #0 !dbg !1481 {
entry:
  %significand.addr = alloca i32*, align 4
  %shift = alloca i32, align 4
  store i32* %significand, i32** %significand.addr, align 4
  %0 = load i32*, i32** %significand.addr, align 4, !dbg !1482
  %1 = load i32, i32* %0, align 4, !dbg !1483
  %call = call i32 @rep_clz.15(i32 noundef %1) #4, !dbg !1484
  %call1 = call i32 @rep_clz.15(i32 noundef 8388608) #4, !dbg !1485
  %sub = sub nsw i32 %call, %call1, !dbg !1486
  store i32 %sub, i32* %shift, align 4, !dbg !1487
  %2 = load i32, i32* %shift, align 4, !dbg !1488
  %3 = load i32*, i32** %significand.addr, align 4, !dbg !1489
  %4 = load i32, i32* %3, align 4, !dbg !1490
  %shl = shl i32 %4, %2, !dbg !1490
  store i32 %shl, i32* %3, align 4, !dbg !1490
  %5 = load i32, i32* %shift, align 4, !dbg !1491
  %sub2 = sub nsw i32 1, %5, !dbg !1492
  ret i32 %sub2, !dbg !1493
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.15(i32 noundef %a) #0 !dbg !1494 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !1495
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !1496
  ret i32 %1, !dbg !1497
}

; Function Attrs: noinline nounwind
define dso_local float @__extendhfsf2(i16 noundef zeroext %a) #0 !dbg !1498 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2, !dbg !1499
  %call = call float @__extendXfYf2__(i16 noundef zeroext %0) #4, !dbg !1500
  ret float %call, !dbg !1501
}

; Function Attrs: noinline nounwind
define internal float @__extendXfYf2__(i16 noundef zeroext %a) #0 !dbg !1502 {
entry:
  %a.addr = alloca i16, align 2
  %srcBits = alloca i32, align 4
  %srcExpBits = alloca i32, align 4
  %srcInfExp = alloca i32, align 4
  %srcExpBias = alloca i32, align 4
  %srcMinNormal = alloca i16, align 2
  %srcInfinity = alloca i16, align 2
  %srcSignMask = alloca i16, align 2
  %srcAbsMask = alloca i16, align 2
  %srcQNaN = alloca i16, align 2
  %srcNaNCode = alloca i16, align 2
  %dstBits = alloca i32, align 4
  %dstExpBits = alloca i32, align 4
  %dstInfExp = alloca i32, align 4
  %dstExpBias = alloca i32, align 4
  %dstMinNormal = alloca i32, align 4
  %aRep = alloca i16, align 2
  %aAbs = alloca i16, align 2
  %sign = alloca i16, align 2
  %absResult = alloca i32, align 4
  %scale = alloca i32, align 4
  %resultExponent = alloca i32, align 4
  %result = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i32 16, i32* %srcBits, align 4, !dbg !1504
  store i32 5, i32* %srcExpBits, align 4, !dbg !1505
  store i32 31, i32* %srcInfExp, align 4, !dbg !1506
  store i32 15, i32* %srcExpBias, align 4, !dbg !1507
  store i16 1024, i16* %srcMinNormal, align 2, !dbg !1508
  store i16 31744, i16* %srcInfinity, align 2, !dbg !1509
  store i16 -32768, i16* %srcSignMask, align 2, !dbg !1510
  store i16 32767, i16* %srcAbsMask, align 2, !dbg !1511
  store i16 512, i16* %srcQNaN, align 2, !dbg !1512
  store i16 511, i16* %srcNaNCode, align 2, !dbg !1513
  store i32 32, i32* %dstBits, align 4, !dbg !1514
  store i32 8, i32* %dstExpBits, align 4, !dbg !1515
  store i32 255, i32* %dstInfExp, align 4, !dbg !1516
  store i32 127, i32* %dstExpBias, align 4, !dbg !1517
  store i32 8388608, i32* %dstMinNormal, align 4, !dbg !1518
  %0 = load i16, i16* %a.addr, align 2, !dbg !1519
  %call = call zeroext i16 @srcToRep(i16 noundef zeroext %0) #4, !dbg !1520
  store i16 %call, i16* %aRep, align 2, !dbg !1521
  %1 = load i16, i16* %aRep, align 2, !dbg !1522
  %conv = zext i16 %1 to i32, !dbg !1522
  %and = and i32 %conv, 32767, !dbg !1523
  %conv1 = trunc i32 %and to i16, !dbg !1522
  store i16 %conv1, i16* %aAbs, align 2, !dbg !1524
  %2 = load i16, i16* %aRep, align 2, !dbg !1525
  %conv2 = zext i16 %2 to i32, !dbg !1525
  %and3 = and i32 %conv2, 32768, !dbg !1526
  %conv4 = trunc i32 %and3 to i16, !dbg !1525
  store i16 %conv4, i16* %sign, align 2, !dbg !1527
  %3 = load i16, i16* %aAbs, align 2, !dbg !1528
  %conv5 = zext i16 %3 to i32, !dbg !1528
  %sub = sub nsw i32 %conv5, 1024, !dbg !1529
  %conv6 = trunc i32 %sub to i16, !dbg !1530
  %conv7 = zext i16 %conv6 to i32, !dbg !1530
  %cmp = icmp slt i32 %conv7, 30720, !dbg !1531
  br i1 %cmp, label %if.then, label %if.else, !dbg !1530

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %aAbs, align 2, !dbg !1532
  %conv9 = zext i16 %4 to i32, !dbg !1533
  %shl = shl i32 %conv9, 13, !dbg !1534
  store i32 %shl, i32* %absResult, align 4, !dbg !1535
  %5 = load i32, i32* %absResult, align 4, !dbg !1536
  %add = add i32 %5, 939524096, !dbg !1536
  store i32 %add, i32* %absResult, align 4, !dbg !1536
  br label %if.end34, !dbg !1537

if.else:                                          ; preds = %entry
  %6 = load i16, i16* %aAbs, align 2, !dbg !1538
  %conv10 = zext i16 %6 to i32, !dbg !1538
  %cmp11 = icmp sge i32 %conv10, 31744, !dbg !1539
  br i1 %cmp11, label %if.then13, label %if.else21, !dbg !1538

if.then13:                                        ; preds = %if.else
  store i32 2139095040, i32* %absResult, align 4, !dbg !1540
  %7 = load i16, i16* %aAbs, align 2, !dbg !1541
  %conv14 = zext i16 %7 to i32, !dbg !1541
  %and15 = and i32 %conv14, 512, !dbg !1542
  %shl16 = shl i32 %and15, 13, !dbg !1543
  %8 = load i32, i32* %absResult, align 4, !dbg !1544
  %or = or i32 %8, %shl16, !dbg !1544
  store i32 %or, i32* %absResult, align 4, !dbg !1544
  %9 = load i16, i16* %aAbs, align 2, !dbg !1545
  %conv17 = zext i16 %9 to i32, !dbg !1545
  %and18 = and i32 %conv17, 511, !dbg !1546
  %shl19 = shl i32 %and18, 13, !dbg !1547
  %10 = load i32, i32* %absResult, align 4, !dbg !1548
  %or20 = or i32 %10, %shl19, !dbg !1548
  store i32 %or20, i32* %absResult, align 4, !dbg !1548
  br label %if.end33, !dbg !1549

if.else21:                                        ; preds = %if.else
  %11 = load i16, i16* %aAbs, align 2, !dbg !1550
  %tobool = icmp ne i16 %11, 0, !dbg !1550
  br i1 %tobool, label %if.then22, label %if.else32, !dbg !1550

if.then22:                                        ; preds = %if.else21
  %12 = load i16, i16* %aAbs, align 2, !dbg !1551
  %conv23 = zext i16 %12 to i32, !dbg !1551
  %13 = call i32 @llvm.ctlz.i32(i32 %conv23, i1 true), !dbg !1552
  %sub24 = sub nsw i32 %13, 21, !dbg !1553
  store i32 %sub24, i32* %scale, align 4, !dbg !1554
  %14 = load i16, i16* %aAbs, align 2, !dbg !1555
  %conv25 = zext i16 %14 to i32, !dbg !1556
  %15 = load i32, i32* %scale, align 4, !dbg !1557
  %add26 = add nsw i32 13, %15, !dbg !1558
  %shl27 = shl i32 %conv25, %add26, !dbg !1559
  store i32 %shl27, i32* %absResult, align 4, !dbg !1560
  %16 = load i32, i32* %absResult, align 4, !dbg !1561
  %xor = xor i32 %16, 8388608, !dbg !1561
  store i32 %xor, i32* %absResult, align 4, !dbg !1561
  %17 = load i32, i32* %scale, align 4, !dbg !1562
  %sub28 = sub nsw i32 112, %17, !dbg !1563
  %add29 = add nsw i32 %sub28, 1, !dbg !1564
  store i32 %add29, i32* %resultExponent, align 4, !dbg !1565
  %18 = load i32, i32* %resultExponent, align 4, !dbg !1566
  %shl30 = shl i32 %18, 23, !dbg !1567
  %19 = load i32, i32* %absResult, align 4, !dbg !1568
  %or31 = or i32 %19, %shl30, !dbg !1568
  store i32 %or31, i32* %absResult, align 4, !dbg !1568
  br label %if.end, !dbg !1569

if.else32:                                        ; preds = %if.else21
  store i32 0, i32* %absResult, align 4, !dbg !1570
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then13
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then
  %20 = load i32, i32* %absResult, align 4, !dbg !1571
  %21 = load i16, i16* %sign, align 2, !dbg !1572
  %conv35 = zext i16 %21 to i32, !dbg !1573
  %shl36 = shl i32 %conv35, 16, !dbg !1574
  %or37 = or i32 %20, %shl36, !dbg !1575
  store i32 %or37, i32* %result, align 4, !dbg !1576
  %22 = load i32, i32* %result, align 4, !dbg !1577
  %call38 = call float @dstFromRep(i32 noundef %22) #4, !dbg !1578
  ret float %call38, !dbg !1579
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @srcToRep(i16 noundef zeroext %x) #0 !dbg !1580 {
entry:
  %x.addr = alloca i16, align 2
  %rep = alloca %union.anon, align 2
  store i16 %x, i16* %x.addr, align 2
  %f = bitcast %union.anon* %rep to i16*, !dbg !1582
  %0 = load i16, i16* %x.addr, align 2, !dbg !1583
  store i16 %0, i16* %f, align 2, !dbg !1582
  %i = bitcast %union.anon* %rep to i16*, !dbg !1584
  %1 = load i16, i16* %i, align 2, !dbg !1584
  ret i16 %1, !dbg !1585
}

; Function Attrs: noinline nounwind
define internal float @dstFromRep(i32 noundef %x) #0 !dbg !1586 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1587
  %0 = load i32, i32* %x.addr, align 4, !dbg !1588
  store i32 %0, i32* %i, align 4, !dbg !1587
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1589
  %1 = load float, float* %f, align 4, !dbg !1589
  ret float %1, !dbg !1590
}

; Function Attrs: noinline nounwind
define dso_local float @__gnu_h2f_ieee(i16 noundef zeroext %a) #0 !dbg !1591 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2, !dbg !1592
  %call = call float @__extendhfsf2(i16 noundef zeroext %0) #4, !dbg !1593
  ret float %call, !dbg !1594
}

; Function Attrs: noinline nounwind
define dso_local double @__extendsfdf2(float noundef %a) #0 !dbg !1595 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1596
  %call = call double @__extendXfYf2__.16(float noundef %0) #4, !dbg !1597
  ret double %call, !dbg !1598
}

; Function Attrs: noinline nounwind
define internal double @__extendXfYf2__.16(float noundef %a) #0 !dbg !1599 {
entry:
  %a.addr = alloca float, align 4
  %srcBits = alloca i32, align 4
  %srcExpBits = alloca i32, align 4
  %srcInfExp = alloca i32, align 4
  %srcExpBias = alloca i32, align 4
  %srcMinNormal = alloca i32, align 4
  %srcInfinity = alloca i32, align 4
  %srcSignMask = alloca i32, align 4
  %srcAbsMask = alloca i32, align 4
  %srcQNaN = alloca i32, align 4
  %srcNaNCode = alloca i32, align 4
  %dstBits = alloca i32, align 4
  %dstExpBits = alloca i32, align 4
  %dstInfExp = alloca i32, align 4
  %dstExpBias = alloca i32, align 4
  %dstMinNormal = alloca i64, align 8
  %aRep = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %sign = alloca i32, align 4
  %absResult = alloca i64, align 8
  %scale = alloca i32, align 4
  %resultExponent = alloca i32, align 4
  %result = alloca i64, align 8
  store float %a, float* %a.addr, align 4
  store i32 32, i32* %srcBits, align 4, !dbg !1600
  store i32 8, i32* %srcExpBits, align 4, !dbg !1601
  store i32 255, i32* %srcInfExp, align 4, !dbg !1602
  store i32 127, i32* %srcExpBias, align 4, !dbg !1603
  store i32 8388608, i32* %srcMinNormal, align 4, !dbg !1604
  store i32 2139095040, i32* %srcInfinity, align 4, !dbg !1605
  store i32 -2147483648, i32* %srcSignMask, align 4, !dbg !1606
  store i32 2147483647, i32* %srcAbsMask, align 4, !dbg !1607
  store i32 4194304, i32* %srcQNaN, align 4, !dbg !1608
  store i32 4194303, i32* %srcNaNCode, align 4, !dbg !1609
  store i32 64, i32* %dstBits, align 4, !dbg !1610
  store i32 11, i32* %dstExpBits, align 4, !dbg !1611
  store i32 2047, i32* %dstInfExp, align 4, !dbg !1612
  store i32 1023, i32* %dstExpBias, align 4, !dbg !1613
  store i64 4503599627370496, i64* %dstMinNormal, align 8, !dbg !1614
  %0 = load float, float* %a.addr, align 4, !dbg !1615
  %call = call i32 @srcToRep.17(float noundef %0) #4, !dbg !1616
  store i32 %call, i32* %aRep, align 4, !dbg !1617
  %1 = load i32, i32* %aRep, align 4, !dbg !1618
  %and = and i32 %1, 2147483647, !dbg !1619
  store i32 %and, i32* %aAbs, align 4, !dbg !1620
  %2 = load i32, i32* %aRep, align 4, !dbg !1621
  %and1 = and i32 %2, -2147483648, !dbg !1622
  store i32 %and1, i32* %sign, align 4, !dbg !1623
  %3 = load i32, i32* %aAbs, align 4, !dbg !1624
  %sub = sub i32 %3, 8388608, !dbg !1625
  %cmp = icmp ult i32 %sub, 2130706432, !dbg !1626
  br i1 %cmp, label %if.then, label %if.else, !dbg !1627

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %aAbs, align 4, !dbg !1628
  %conv = zext i32 %4 to i64, !dbg !1629
  %shl = shl i64 %conv, 29, !dbg !1630
  store i64 %shl, i64* %absResult, align 8, !dbg !1631
  %5 = load i64, i64* %absResult, align 8, !dbg !1632
  %add = add i64 %5, 4035225266123964416, !dbg !1632
  store i64 %add, i64* %absResult, align 8, !dbg !1632
  br label %if.end25, !dbg !1633

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %aAbs, align 4, !dbg !1634
  %cmp2 = icmp uge i32 %6, 2139095040, !dbg !1635
  br i1 %cmp2, label %if.then4, label %if.else12, !dbg !1634

if.then4:                                         ; preds = %if.else
  store i64 9218868437227405312, i64* %absResult, align 8, !dbg !1636
  %7 = load i32, i32* %aAbs, align 4, !dbg !1637
  %and5 = and i32 %7, 4194304, !dbg !1638
  %conv6 = zext i32 %and5 to i64, !dbg !1639
  %shl7 = shl i64 %conv6, 29, !dbg !1640
  %8 = load i64, i64* %absResult, align 8, !dbg !1641
  %or = or i64 %8, %shl7, !dbg !1641
  store i64 %or, i64* %absResult, align 8, !dbg !1641
  %9 = load i32, i32* %aAbs, align 4, !dbg !1642
  %and8 = and i32 %9, 4194303, !dbg !1643
  %conv9 = zext i32 %and8 to i64, !dbg !1644
  %shl10 = shl i64 %conv9, 29, !dbg !1645
  %10 = load i64, i64* %absResult, align 8, !dbg !1646
  %or11 = or i64 %10, %shl10, !dbg !1646
  store i64 %or11, i64* %absResult, align 8, !dbg !1646
  br label %if.end24, !dbg !1647

if.else12:                                        ; preds = %if.else
  %11 = load i32, i32* %aAbs, align 4, !dbg !1648
  %tobool = icmp ne i32 %11, 0, !dbg !1648
  br i1 %tobool, label %if.then13, label %if.else23, !dbg !1648

if.then13:                                        ; preds = %if.else12
  %12 = load i32, i32* %aAbs, align 4, !dbg !1649
  %13 = call i32 @llvm.ctlz.i32(i32 %12, i1 true), !dbg !1650
  %sub14 = sub nsw i32 %13, 8, !dbg !1651
  store i32 %sub14, i32* %scale, align 4, !dbg !1652
  %14 = load i32, i32* %aAbs, align 4, !dbg !1653
  %conv15 = zext i32 %14 to i64, !dbg !1654
  %15 = load i32, i32* %scale, align 4, !dbg !1655
  %add16 = add nsw i32 29, %15, !dbg !1656
  %sh_prom = zext i32 %add16 to i64, !dbg !1657
  %shl17 = shl i64 %conv15, %sh_prom, !dbg !1657
  store i64 %shl17, i64* %absResult, align 8, !dbg !1658
  %16 = load i64, i64* %absResult, align 8, !dbg !1659
  %xor = xor i64 %16, 4503599627370496, !dbg !1659
  store i64 %xor, i64* %absResult, align 8, !dbg !1659
  %17 = load i32, i32* %scale, align 4, !dbg !1660
  %sub18 = sub nsw i32 896, %17, !dbg !1661
  %add19 = add nsw i32 %sub18, 1, !dbg !1662
  store i32 %add19, i32* %resultExponent, align 4, !dbg !1663
  %18 = load i32, i32* %resultExponent, align 4, !dbg !1664
  %conv20 = sext i32 %18 to i64, !dbg !1665
  %shl21 = shl i64 %conv20, 52, !dbg !1666
  %19 = load i64, i64* %absResult, align 8, !dbg !1667
  %or22 = or i64 %19, %shl21, !dbg !1667
  store i64 %or22, i64* %absResult, align 8, !dbg !1667
  br label %if.end, !dbg !1668

if.else23:                                        ; preds = %if.else12
  store i64 0, i64* %absResult, align 8, !dbg !1669
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then13
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %20 = load i64, i64* %absResult, align 8, !dbg !1670
  %21 = load i32, i32* %sign, align 4, !dbg !1671
  %conv26 = zext i32 %21 to i64, !dbg !1672
  %shl27 = shl i64 %conv26, 32, !dbg !1673
  %or28 = or i64 %20, %shl27, !dbg !1674
  store i64 %or28, i64* %result, align 8, !dbg !1675
  %22 = load i64, i64* %result, align 8, !dbg !1676
  %call29 = call double @dstFromRep.18(i64 noundef %22) #4, !dbg !1677
  ret double %call29, !dbg !1678
}

; Function Attrs: noinline nounwind
define internal i32 @srcToRep.17(float noundef %x) #0 !dbg !1679 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1680
  %0 = load float, float* %x.addr, align 4, !dbg !1681
  store float %0, float* %f, align 4, !dbg !1680
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1682
  %1 = load i32, i32* %i, align 4, !dbg !1682
  ret i32 %1, !dbg !1683
}

; Function Attrs: noinline nounwind
define internal double @dstFromRep.18(i64 noundef %x) #0 !dbg !1684 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1685
  %0 = load i64, i64* %x.addr, align 8, !dbg !1686
  store i64 %0, i64* %i, align 8, !dbg !1685
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1687
  %1 = load double, double* %f, align 8, !dbg !1687
  ret double %1, !dbg !1688
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixdfdi(double noundef %a) #0 !dbg !1689 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1690
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !1691
  br i1 %cmp, label %if.then, label %if.end, !dbg !1690

if.then:                                          ; preds = %entry
  %1 = load double, double* %a.addr, align 8, !dbg !1692
  %fneg = fneg double %1, !dbg !1693
  %call = call i64 @__fixunsdfdi(double noundef %fneg) #4, !dbg !1694
  %sub = sub i64 0, %call, !dbg !1695
  store i64 %sub, i64* %retval, align 8, !dbg !1696
  br label %return, !dbg !1696

if.end:                                           ; preds = %entry
  %2 = load double, double* %a.addr, align 8, !dbg !1697
  %call1 = call i64 @__fixunsdfdi(double noundef %2) #4, !dbg !1698
  store i64 %call1, i64* %retval, align 8, !dbg !1699
  br label %return, !dbg !1699

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !1700
  ret i64 %3, !dbg !1700
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixdfsi(double noundef %a) #0 !dbg !1701 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1702
  %call = call i32 @__fixint(double noundef %0) #4, !dbg !1703
  ret i32 %call, !dbg !1704
}

; Function Attrs: noinline nounwind
define internal i32 @__fixint(double noundef %a) #0 !dbg !1705 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %fixint_max = alloca i32, align 4
  %fixint_min = alloca i32, align 4
  %aRep = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %significand = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  store i32 2147483647, i32* %fixint_max, align 4, !dbg !1707
  store i32 -2147483648, i32* %fixint_min, align 4, !dbg !1708
  %0 = load double, double* %a.addr, align 8, !dbg !1709
  %call = call i64 @toRep.19(double noundef %0) #4, !dbg !1710
  store i64 %call, i64* %aRep, align 8, !dbg !1711
  %1 = load i64, i64* %aRep, align 8, !dbg !1712
  %and = and i64 %1, 9223372036854775807, !dbg !1713
  store i64 %and, i64* %aAbs, align 8, !dbg !1714
  %2 = load i64, i64* %aRep, align 8, !dbg !1715
  %and1 = and i64 %2, -9223372036854775808, !dbg !1716
  %tobool = icmp ne i64 %and1, 0, !dbg !1715
  %3 = zext i1 %tobool to i64, !dbg !1715
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1715
  store i32 %cond, i32* %sign, align 4, !dbg !1717
  %4 = load i64, i64* %aAbs, align 8, !dbg !1718
  %shr = lshr i64 %4, 52, !dbg !1719
  %sub = sub i64 %shr, 1023, !dbg !1720
  %conv = trunc i64 %sub to i32, !dbg !1721
  store i32 %conv, i32* %exponent, align 4, !dbg !1722
  %5 = load i64, i64* %aAbs, align 8, !dbg !1723
  %and2 = and i64 %5, 4503599627370495, !dbg !1724
  %or = or i64 %and2, 4503599627370496, !dbg !1725
  store i64 %or, i64* %significand, align 8, !dbg !1726
  %6 = load i32, i32* %exponent, align 4, !dbg !1727
  %cmp = icmp slt i32 %6, 0, !dbg !1728
  br i1 %cmp, label %if.then, label %if.end, !dbg !1727

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1729
  br label %return, !dbg !1729

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1730
  %cmp4 = icmp uge i32 %7, 32, !dbg !1731
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1732

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %sign, align 4, !dbg !1733
  %cmp7 = icmp eq i32 %8, 1, !dbg !1734
  %9 = zext i1 %cmp7 to i64, !dbg !1733
  %cond9 = select i1 %cmp7, i32 2147483647, i32 -2147483648, !dbg !1733
  store i32 %cond9, i32* %retval, align 4, !dbg !1735
  br label %return, !dbg !1735

if.end10:                                         ; preds = %if.end
  %10 = load i32, i32* %exponent, align 4, !dbg !1736
  %cmp11 = icmp slt i32 %10, 52, !dbg !1737
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1736

if.then13:                                        ; preds = %if.end10
  %11 = load i32, i32* %sign, align 4, !dbg !1738
  %conv14 = sext i32 %11 to i64, !dbg !1738
  %12 = load i64, i64* %significand, align 8, !dbg !1739
  %13 = load i32, i32* %exponent, align 4, !dbg !1740
  %sub15 = sub nsw i32 52, %13, !dbg !1741
  %sh_prom = zext i32 %sub15 to i64, !dbg !1742
  %shr16 = lshr i64 %12, %sh_prom, !dbg !1742
  %mul = mul i64 %conv14, %shr16, !dbg !1743
  %conv17 = trunc i64 %mul to i32, !dbg !1738
  store i32 %conv17, i32* %retval, align 4, !dbg !1744
  br label %return, !dbg !1744

if.else:                                          ; preds = %if.end10
  %14 = load i32, i32* %sign, align 4, !dbg !1745
  %15 = load i64, i64* %significand, align 8, !dbg !1746
  %conv18 = trunc i64 %15 to i32, !dbg !1747
  %16 = load i32, i32* %exponent, align 4, !dbg !1748
  %sub19 = sub nsw i32 %16, 52, !dbg !1749
  %shl = shl i32 %conv18, %sub19, !dbg !1750
  %mul20 = mul nsw i32 %14, %shl, !dbg !1751
  store i32 %mul20, i32* %retval, align 4, !dbg !1752
  br label %return, !dbg !1752

return:                                           ; preds = %if.else, %if.then13, %if.then6, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1753
  ret i32 %17, !dbg !1753
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.19(double noundef %x) #0 !dbg !1754 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1755
  %0 = load double, double* %x.addr, align 8, !dbg !1756
  store double %0, double* %f, align 8, !dbg !1755
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1757
  %1 = load i64, i64* %i, align 8, !dbg !1757
  ret i64 %1, !dbg !1758
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixsfdi(float noundef %a) #0 !dbg !1759 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1760
  %cmp = fcmp olt float %0, 0.000000e+00, !dbg !1761
  br i1 %cmp, label %if.then, label %if.end, !dbg !1760

if.then:                                          ; preds = %entry
  %1 = load float, float* %a.addr, align 4, !dbg !1762
  %fneg = fneg float %1, !dbg !1763
  %call = call i64 @__fixunssfdi(float noundef %fneg) #4, !dbg !1764
  %sub = sub i64 0, %call, !dbg !1765
  store i64 %sub, i64* %retval, align 8, !dbg !1766
  br label %return, !dbg !1766

if.end:                                           ; preds = %entry
  %2 = load float, float* %a.addr, align 4, !dbg !1767
  %call1 = call i64 @__fixunssfdi(float noundef %2) #4, !dbg !1768
  store i64 %call1, i64* %retval, align 8, !dbg !1769
  br label %return, !dbg !1769

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !1770
  ret i64 %3, !dbg !1770
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixsfsi(float noundef %a) #0 !dbg !1771 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1772
  %call = call i32 @__fixint.20(float noundef %0) #4, !dbg !1773
  ret i32 %call, !dbg !1774
}

; Function Attrs: noinline nounwind
define internal i32 @__fixint.20(float noundef %a) #0 !dbg !1775 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %fixint_max = alloca i32, align 4
  %fixint_min = alloca i32, align 4
  %aRep = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %significand = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store i32 2147483647, i32* %fixint_max, align 4, !dbg !1776
  store i32 -2147483648, i32* %fixint_min, align 4, !dbg !1777
  %0 = load float, float* %a.addr, align 4, !dbg !1778
  %call = call i32 @toRep.21(float noundef %0) #4, !dbg !1779
  store i32 %call, i32* %aRep, align 4, !dbg !1780
  %1 = load i32, i32* %aRep, align 4, !dbg !1781
  %and = and i32 %1, 2147483647, !dbg !1782
  store i32 %and, i32* %aAbs, align 4, !dbg !1783
  %2 = load i32, i32* %aRep, align 4, !dbg !1784
  %and1 = and i32 %2, -2147483648, !dbg !1785
  %tobool = icmp ne i32 %and1, 0, !dbg !1784
  %3 = zext i1 %tobool to i64, !dbg !1784
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1784
  store i32 %cond, i32* %sign, align 4, !dbg !1786
  %4 = load i32, i32* %aAbs, align 4, !dbg !1787
  %shr = lshr i32 %4, 23, !dbg !1788
  %sub = sub i32 %shr, 127, !dbg !1789
  store i32 %sub, i32* %exponent, align 4, !dbg !1790
  %5 = load i32, i32* %aAbs, align 4, !dbg !1791
  %and2 = and i32 %5, 8388607, !dbg !1792
  %or = or i32 %and2, 8388608, !dbg !1793
  store i32 %or, i32* %significand, align 4, !dbg !1794
  %6 = load i32, i32* %exponent, align 4, !dbg !1795
  %cmp = icmp slt i32 %6, 0, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end, !dbg !1795

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1797
  br label %return, !dbg !1797

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1798
  %cmp3 = icmp uge i32 %7, 32, !dbg !1799
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1800

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %sign, align 4, !dbg !1801
  %cmp5 = icmp eq i32 %8, 1, !dbg !1802
  %9 = zext i1 %cmp5 to i64, !dbg !1801
  %cond6 = select i1 %cmp5, i32 2147483647, i32 -2147483648, !dbg !1801
  store i32 %cond6, i32* %retval, align 4, !dbg !1803
  br label %return, !dbg !1803

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %exponent, align 4, !dbg !1804
  %cmp8 = icmp slt i32 %10, 23, !dbg !1805
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1804

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* %sign, align 4, !dbg !1806
  %12 = load i32, i32* %significand, align 4, !dbg !1807
  %13 = load i32, i32* %exponent, align 4, !dbg !1808
  %sub10 = sub nsw i32 23, %13, !dbg !1809
  %shr11 = lshr i32 %12, %sub10, !dbg !1810
  %mul = mul i32 %11, %shr11, !dbg !1811
  store i32 %mul, i32* %retval, align 4, !dbg !1812
  br label %return, !dbg !1812

if.else:                                          ; preds = %if.end7
  %14 = load i32, i32* %sign, align 4, !dbg !1813
  %15 = load i32, i32* %significand, align 4, !dbg !1814
  %16 = load i32, i32* %exponent, align 4, !dbg !1815
  %sub12 = sub nsw i32 %16, 23, !dbg !1816
  %shl = shl i32 %15, %sub12, !dbg !1817
  %mul13 = mul nsw i32 %14, %shl, !dbg !1818
  store i32 %mul13, i32* %retval, align 4, !dbg !1819
  br label %return, !dbg !1819

return:                                           ; preds = %if.else, %if.then9, %if.then4, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1820
  ret i32 %17, !dbg !1820
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.21(float noundef %x) #0 !dbg !1821 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1822
  %0 = load float, float* %x.addr, align 4, !dbg !1823
  store float %0, float* %f, align 4, !dbg !1822
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1824
  %1 = load i32, i32* %i, align 4, !dbg !1824
  ret i32 %1, !dbg !1825
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixunsdfdi(double noundef %a) #0 !dbg !1826 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca double, align 8
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1827
  %cmp = fcmp ole double %0, 0.000000e+00, !dbg !1828
  br i1 %cmp, label %if.then, label %if.end, !dbg !1827

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1829
  br label %return, !dbg !1829

if.end:                                           ; preds = %entry
  %1 = load double, double* %a.addr, align 8, !dbg !1830
  %div = fdiv double %1, 0x41F0000000000000, !dbg !1831
  %conv = fptoui double %div to i32, !dbg !1830
  store i32 %conv, i32* %high, align 4, !dbg !1832
  %2 = load double, double* %a.addr, align 8, !dbg !1833
  %3 = load i32, i32* %high, align 4, !dbg !1834
  %conv1 = uitofp i32 %3 to double, !dbg !1835
  %neg = fneg double %conv1, !dbg !1836
  %4 = call double @llvm.fmuladd.f64(double %neg, double 0x41F0000000000000, double %2), !dbg !1836
  %conv2 = fptoui double %4 to i32, !dbg !1833
  store i32 %conv2, i32* %low, align 4, !dbg !1837
  %5 = load i32, i32* %high, align 4, !dbg !1838
  %conv3 = zext i32 %5 to i64, !dbg !1839
  %shl = shl i64 %conv3, 32, !dbg !1840
  %6 = load i32, i32* %low, align 4, !dbg !1841
  %conv4 = zext i32 %6 to i64, !dbg !1841
  %or = or i64 %shl, %conv4, !dbg !1842
  store i64 %or, i64* %retval, align 8, !dbg !1843
  br label %return, !dbg !1843

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !1844
  ret i64 %7, !dbg !1844
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define dso_local i32 @__fixunsdfsi(double noundef %a) #0 !dbg !1845 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1846
  %call = call i32 @__fixuint(double noundef %0) #4, !dbg !1847
  ret i32 %call, !dbg !1848
}

; Function Attrs: noinline nounwind
define internal i32 @__fixuint(double noundef %a) #0 !dbg !1849 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %aRep = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %significand = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1851
  %call = call i64 @toRep.24(double noundef %0) #4, !dbg !1852
  store i64 %call, i64* %aRep, align 8, !dbg !1853
  %1 = load i64, i64* %aRep, align 8, !dbg !1854
  %and = and i64 %1, 9223372036854775807, !dbg !1855
  store i64 %and, i64* %aAbs, align 8, !dbg !1856
  %2 = load i64, i64* %aRep, align 8, !dbg !1857
  %and1 = and i64 %2, -9223372036854775808, !dbg !1858
  %tobool = icmp ne i64 %and1, 0, !dbg !1857
  %3 = zext i1 %tobool to i64, !dbg !1857
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1857
  store i32 %cond, i32* %sign, align 4, !dbg !1859
  %4 = load i64, i64* %aAbs, align 8, !dbg !1860
  %shr = lshr i64 %4, 52, !dbg !1861
  %sub = sub i64 %shr, 1023, !dbg !1862
  %conv = trunc i64 %sub to i32, !dbg !1863
  store i32 %conv, i32* %exponent, align 4, !dbg !1864
  %5 = load i64, i64* %aAbs, align 8, !dbg !1865
  %and2 = and i64 %5, 4503599627370495, !dbg !1866
  %or = or i64 %and2, 4503599627370496, !dbg !1867
  store i64 %or, i64* %significand, align 8, !dbg !1868
  %6 = load i32, i32* %sign, align 4, !dbg !1869
  %cmp = icmp eq i32 %6, -1, !dbg !1870
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1871

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1872
  %cmp4 = icmp slt i32 %7, 0, !dbg !1873
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1869

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1874
  br label %return, !dbg !1874

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %exponent, align 4, !dbg !1875
  %cmp6 = icmp uge i32 %8, 32, !dbg !1876
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1877

if.then8:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1878
  br label %return, !dbg !1878

if.end9:                                          ; preds = %if.end
  %9 = load i32, i32* %exponent, align 4, !dbg !1879
  %cmp10 = icmp slt i32 %9, 52, !dbg !1880
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1879

if.then12:                                        ; preds = %if.end9
  %10 = load i64, i64* %significand, align 8, !dbg !1881
  %11 = load i32, i32* %exponent, align 4, !dbg !1882
  %sub13 = sub nsw i32 52, %11, !dbg !1883
  %sh_prom = zext i32 %sub13 to i64, !dbg !1884
  %shr14 = lshr i64 %10, %sh_prom, !dbg !1884
  %conv15 = trunc i64 %shr14 to i32, !dbg !1881
  store i32 %conv15, i32* %retval, align 4, !dbg !1885
  br label %return, !dbg !1885

if.else:                                          ; preds = %if.end9
  %12 = load i64, i64* %significand, align 8, !dbg !1886
  %conv16 = trunc i64 %12 to i32, !dbg !1887
  %13 = load i32, i32* %exponent, align 4, !dbg !1888
  %sub17 = sub nsw i32 %13, 52, !dbg !1889
  %shl = shl i32 %conv16, %sub17, !dbg !1890
  store i32 %shl, i32* %retval, align 4, !dbg !1891
  br label %return, !dbg !1891

return:                                           ; preds = %if.else, %if.then12, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1892
  ret i32 %14, !dbg !1892
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.24(double noundef %x) #0 !dbg !1893 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1894
  %0 = load double, double* %x.addr, align 8, !dbg !1895
  store double %0, double* %f, align 8, !dbg !1894
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1896
  %1 = load i64, i64* %i, align 8, !dbg !1896
  ret i64 %1, !dbg !1897
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixunssfdi(float noundef %a) #0 !dbg !1898 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca float, align 4
  %da = alloca double, align 8
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1899
  %cmp = fcmp ole float %0, 0.000000e+00, !dbg !1900
  br i1 %cmp, label %if.then, label %if.end, !dbg !1899

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1901
  br label %return, !dbg !1901

if.end:                                           ; preds = %entry
  %1 = load float, float* %a.addr, align 4, !dbg !1902
  %conv = fpext float %1 to double, !dbg !1902
  store double %conv, double* %da, align 8, !dbg !1903
  %2 = load double, double* %da, align 8, !dbg !1904
  %div = fdiv double %2, 0x41F0000000000000, !dbg !1905
  %conv1 = fptoui double %div to i32, !dbg !1904
  store i32 %conv1, i32* %high, align 4, !dbg !1906
  %3 = load double, double* %da, align 8, !dbg !1907
  %4 = load i32, i32* %high, align 4, !dbg !1908
  %conv2 = uitofp i32 %4 to double, !dbg !1909
  %neg = fneg double %conv2, !dbg !1910
  %5 = call double @llvm.fmuladd.f64(double %neg, double 0x41F0000000000000, double %3), !dbg !1910
  %conv3 = fptoui double %5 to i32, !dbg !1907
  store i32 %conv3, i32* %low, align 4, !dbg !1911
  %6 = load i32, i32* %high, align 4, !dbg !1912
  %conv4 = zext i32 %6 to i64, !dbg !1913
  %shl = shl i64 %conv4, 32, !dbg !1914
  %7 = load i32, i32* %low, align 4, !dbg !1915
  %conv5 = zext i32 %7 to i64, !dbg !1915
  %or = or i64 %shl, %conv5, !dbg !1916
  store i64 %or, i64* %retval, align 8, !dbg !1917
  br label %return, !dbg !1917

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval, align 8, !dbg !1918
  ret i64 %8, !dbg !1918
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixunssfsi(float noundef %a) #0 !dbg !1919 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1920
  %call = call i32 @__fixuint.27(float noundef %0) #4, !dbg !1921
  ret i32 %call, !dbg !1922
}

; Function Attrs: noinline nounwind
define internal i32 @__fixuint.27(float noundef %a) #0 !dbg !1923 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %aRep = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %significand = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1924
  %call = call i32 @toRep.28(float noundef %0) #4, !dbg !1925
  store i32 %call, i32* %aRep, align 4, !dbg !1926
  %1 = load i32, i32* %aRep, align 4, !dbg !1927
  %and = and i32 %1, 2147483647, !dbg !1928
  store i32 %and, i32* %aAbs, align 4, !dbg !1929
  %2 = load i32, i32* %aRep, align 4, !dbg !1930
  %and1 = and i32 %2, -2147483648, !dbg !1931
  %tobool = icmp ne i32 %and1, 0, !dbg !1930
  %3 = zext i1 %tobool to i64, !dbg !1930
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1930
  store i32 %cond, i32* %sign, align 4, !dbg !1932
  %4 = load i32, i32* %aAbs, align 4, !dbg !1933
  %shr = lshr i32 %4, 23, !dbg !1934
  %sub = sub i32 %shr, 127, !dbg !1935
  store i32 %sub, i32* %exponent, align 4, !dbg !1936
  %5 = load i32, i32* %aAbs, align 4, !dbg !1937
  %and2 = and i32 %5, 8388607, !dbg !1938
  %or = or i32 %and2, 8388608, !dbg !1939
  store i32 %or, i32* %significand, align 4, !dbg !1940
  %6 = load i32, i32* %sign, align 4, !dbg !1941
  %cmp = icmp eq i32 %6, -1, !dbg !1942
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1943

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1944
  %cmp3 = icmp slt i32 %7, 0, !dbg !1945
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1941

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1946
  br label %return, !dbg !1946

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %exponent, align 4, !dbg !1947
  %cmp4 = icmp uge i32 %8, 32, !dbg !1948
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1949

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1950
  br label %return, !dbg !1950

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %exponent, align 4, !dbg !1951
  %cmp7 = icmp slt i32 %9, 23, !dbg !1952
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1951

if.then8:                                         ; preds = %if.end6
  %10 = load i32, i32* %significand, align 4, !dbg !1953
  %11 = load i32, i32* %exponent, align 4, !dbg !1954
  %sub9 = sub nsw i32 23, %11, !dbg !1955
  %shr10 = lshr i32 %10, %sub9, !dbg !1956
  store i32 %shr10, i32* %retval, align 4, !dbg !1957
  br label %return, !dbg !1957

if.else:                                          ; preds = %if.end6
  %12 = load i32, i32* %significand, align 4, !dbg !1958
  %13 = load i32, i32* %exponent, align 4, !dbg !1959
  %sub11 = sub nsw i32 %13, 23, !dbg !1960
  %shl = shl i32 %12, %sub11, !dbg !1961
  store i32 %shl, i32* %retval, align 4, !dbg !1962
  br label %return, !dbg !1962

return:                                           ; preds = %if.else, %if.then8, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1963
  ret i32 %14, !dbg !1963
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.28(float noundef %x) #0 !dbg !1964 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1965
  %0 = load float, float* %x.addr, align 4, !dbg !1966
  store float %0, float* %f, align 4, !dbg !1965
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1967
  %1 = load i32, i32* %i, align 4, !dbg !1967
  ret i32 %1, !dbg !1968
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixunsxfdi(fp128 noundef %a) #0 !dbg !1969 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca fp128, align 16
  %fb = alloca %union.long_double_bits, align 16
  %e = alloca i32, align 4
  store fp128 %a, fp128* %a.addr, align 16
  %0 = load fp128, fp128* %a.addr, align 16, !dbg !1970
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !1971
  store fp128 %0, fp128* %f, align 16, !dbg !1972
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !1973
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !1974
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !1975
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !1976
  %1 = load i32, i32* %low, align 8, !dbg !1976
  %and = and i32 %1, 32767, !dbg !1977
  %sub = sub i32 %and, 16383, !dbg !1978
  store i32 %sub, i32* %e, align 4, !dbg !1979
  %2 = load i32, i32* %e, align 4, !dbg !1980
  %cmp = icmp slt i32 %2, 0, !dbg !1981
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1982

lor.lhs.false:                                    ; preds = %entry
  %u1 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !1983
  %high2 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u1, i32 0, i32 1, !dbg !1984
  %s3 = bitcast %union.udwords* %high2 to %struct.anon*, !dbg !1985
  %low4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 0, !dbg !1986
  %3 = load i32, i32* %low4, align 8, !dbg !1986
  %and5 = and i32 %3, 32768, !dbg !1987
  %tobool = icmp ne i32 %and5, 0, !dbg !1987
  br i1 %tobool, label %if.then, label %if.end, !dbg !1980

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval, align 8, !dbg !1988
  br label %return, !dbg !1988

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %e, align 4, !dbg !1989
  %cmp6 = icmp ugt i32 %4, 64, !dbg !1990
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1991

if.then7:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !1992
  br label %return, !dbg !1992

if.end8:                                          ; preds = %if.end
  %u9 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !1993
  %low10 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u9, i32 0, i32 0, !dbg !1994
  %all = bitcast %union.udwords* %low10 to i64*, !dbg !1995
  %5 = load i64, i64* %all, align 16, !dbg !1995
  %6 = load i32, i32* %e, align 4, !dbg !1996
  %sub11 = sub nsw i32 63, %6, !dbg !1997
  %sh_prom = zext i32 %sub11 to i64, !dbg !1998
  %shr = lshr i64 %5, %sh_prom, !dbg !1998
  store i64 %shr, i64* %retval, align 8, !dbg !1999
  br label %return, !dbg !1999

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !2000
  ret i64 %7, !dbg !2000
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixunsxfsi(fp128 noundef %a) #0 !dbg !2001 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca fp128, align 16
  %fb = alloca %union.long_double_bits, align 16
  %e = alloca i32, align 4
  store fp128 %a, fp128* %a.addr, align 16
  %0 = load fp128, fp128* %a.addr, align 16, !dbg !2002
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2003
  store fp128 %0, fp128* %f, align 16, !dbg !2004
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2005
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2006
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !2007
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2008
  %1 = load i32, i32* %low, align 8, !dbg !2008
  %and = and i32 %1, 32767, !dbg !2009
  %sub = sub i32 %and, 16383, !dbg !2010
  store i32 %sub, i32* %e, align 4, !dbg !2011
  %2 = load i32, i32* %e, align 4, !dbg !2012
  %cmp = icmp slt i32 %2, 0, !dbg !2013
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2014

lor.lhs.false:                                    ; preds = %entry
  %u1 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2015
  %high2 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u1, i32 0, i32 1, !dbg !2016
  %s3 = bitcast %union.udwords* %high2 to %struct.anon*, !dbg !2017
  %low4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 0, !dbg !2018
  %3 = load i32, i32* %low4, align 8, !dbg !2018
  %and5 = and i32 %3, 32768, !dbg !2019
  %tobool = icmp ne i32 %and5, 0, !dbg !2019
  br i1 %tobool, label %if.then, label %if.end, !dbg !2012

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2020
  br label %return, !dbg !2020

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %e, align 4, !dbg !2021
  %cmp6 = icmp ugt i32 %4, 32, !dbg !2022
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2023

if.then7:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !2024
  br label %return, !dbg !2024

if.end8:                                          ; preds = %if.end
  %u9 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2025
  %low10 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u9, i32 0, i32 0, !dbg !2026
  %s11 = bitcast %union.udwords* %low10 to %struct.anon*, !dbg !2027
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !2028
  %5 = load i32, i32* %high12, align 4, !dbg !2028
  %6 = load i32, i32* %e, align 4, !dbg !2029
  %sub13 = sub nsw i32 31, %6, !dbg !2030
  %shr = lshr i32 %5, %sub13, !dbg !2031
  store i32 %shr, i32* %retval, align 4, !dbg !2032
  br label %return, !dbg !2032

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2033
  ret i32 %7, !dbg !2033
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixxfdi(fp128 noundef %a) #0 !dbg !2034 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca fp128, align 16
  %di_max = alloca i64, align 8
  %di_min = alloca i64, align 8
  %fb = alloca %union.long_double_bits, align 16
  %e = alloca i32, align 4
  %s5 = alloca i64, align 8
  %r = alloca i64, align 8
  store fp128 %a, fp128* %a.addr, align 16
  store i64 9223372036854775807, i64* %di_max, align 8, !dbg !2035
  store i64 -9223372036854775808, i64* %di_min, align 8, !dbg !2036
  %0 = load fp128, fp128* %a.addr, align 16, !dbg !2037
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2038
  store fp128 %0, fp128* %f, align 16, !dbg !2039
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2040
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2041
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !2042
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2043
  %1 = load i32, i32* %low, align 8, !dbg !2043
  %and = and i32 %1, 32767, !dbg !2044
  %sub = sub i32 %and, 16383, !dbg !2045
  store i32 %sub, i32* %e, align 4, !dbg !2046
  %2 = load i32, i32* %e, align 4, !dbg !2047
  %cmp = icmp slt i32 %2, 0, !dbg !2048
  br i1 %cmp, label %if.then, label %if.end, !dbg !2047

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2049
  br label %return, !dbg !2049

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %e, align 4, !dbg !2050
  %cmp1 = icmp uge i32 %3, 64, !dbg !2051
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2052

if.then2:                                         ; preds = %if.end
  %4 = load fp128, fp128* %a.addr, align 16, !dbg !2053
  %cmp3 = fcmp ogt fp128 %4, 0xL00000000000000000000000000000000, !dbg !2054
  %5 = zext i1 %cmp3 to i64, !dbg !2053
  %cond = select i1 %cmp3, i64 9223372036854775807, i64 -9223372036854775808, !dbg !2053
  store i64 %cond, i64* %retval, align 8, !dbg !2055
  br label %return, !dbg !2055

if.end4:                                          ; preds = %if.end
  %u6 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2056
  %high7 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u6, i32 0, i32 1, !dbg !2057
  %s8 = bitcast %union.udwords* %high7 to %struct.anon*, !dbg !2058
  %low9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 0, !dbg !2059
  %6 = load i32, i32* %low9, align 8, !dbg !2059
  %and10 = and i32 %6, 32768, !dbg !2060
  %shr = lshr i32 %and10, 15, !dbg !2061
  %sub11 = sub nsw i32 0, %shr, !dbg !2062
  %conv = sext i32 %sub11 to i64, !dbg !2062
  store i64 %conv, i64* %s5, align 8, !dbg !2063
  %u12 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2064
  %low13 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u12, i32 0, i32 0, !dbg !2065
  %all = bitcast %union.udwords* %low13 to i64*, !dbg !2066
  %7 = load i64, i64* %all, align 16, !dbg !2066
  store i64 %7, i64* %r, align 8, !dbg !2067
  %8 = load i64, i64* %r, align 8, !dbg !2068
  %9 = load i32, i32* %e, align 4, !dbg !2069
  %sub14 = sub nsw i32 63, %9, !dbg !2070
  %sh_prom = zext i32 %sub14 to i64, !dbg !2071
  %shr15 = lshr i64 %8, %sh_prom, !dbg !2071
  store i64 %shr15, i64* %r, align 8, !dbg !2072
  %10 = load i64, i64* %r, align 8, !dbg !2073
  %11 = load i64, i64* %s5, align 8, !dbg !2074
  %xor = xor i64 %10, %11, !dbg !2075
  %12 = load i64, i64* %s5, align 8, !dbg !2076
  %sub16 = sub nsw i64 %xor, %12, !dbg !2077
  store i64 %sub16, i64* %retval, align 8, !dbg !2078
  br label %return, !dbg !2078

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !2079
  ret i64 %13, !dbg !2079
}

; Function Attrs: noinline nounwind
define dso_local double @__floatdidf(i64 noundef %a) #0 !dbg !2080 {
entry:
  %a.addr = alloca i64, align 8
  %low = alloca %union.udwords, align 8
  %high = alloca double, align 8
  %result = alloca double, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = bitcast %union.udwords* %low to i8*, !dbg !2081
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %0, i8* align 8 bitcast ({ double }* @__const.__floatdidf.low to i8*), i32 8, i1 false), !dbg !2081
  %1 = load i64, i64* %a.addr, align 8, !dbg !2082
  %shr = ashr i64 %1, 32, !dbg !2083
  %conv = trunc i64 %shr to i32, !dbg !2084
  %conv1 = sitofp i32 %conv to double, !dbg !2084
  %mul = fmul double %conv1, 0x41F0000000000000, !dbg !2085
  store double %mul, double* %high, align 8, !dbg !2086
  %2 = load i64, i64* %a.addr, align 8, !dbg !2087
  %and = and i64 %2, 4294967295, !dbg !2088
  %x = bitcast %union.udwords* %low to i64*, !dbg !2089
  %3 = load i64, i64* %x, align 8, !dbg !2090
  %or = or i64 %3, %and, !dbg !2090
  store i64 %or, i64* %x, align 8, !dbg !2090
  %4 = load double, double* %high, align 8, !dbg !2091
  %sub = fsub double %4, 0x4330000000000000, !dbg !2092
  %d = bitcast %union.udwords* %low to double*, !dbg !2093
  %5 = load double, double* %d, align 8, !dbg !2093
  %add = fadd double %sub, %5, !dbg !2094
  store double %add, double* %result, align 8, !dbg !2095
  %6 = load double, double* %result, align 8, !dbg !2096
  ret double %6, !dbg !2097
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local float @__floatdisf(i64 noundef %a) #0 !dbg !2098 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %s = alloca i64, align 8
  %sd = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.float_bits, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2099
  %cmp = icmp eq i64 %0, 0, !dbg !2100
  br i1 %cmp, label %if.then, label %if.end, !dbg !2099

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4, !dbg !2101
  br label %return, !dbg !2101

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2102
  %1 = load i64, i64* %a.addr, align 8, !dbg !2103
  %shr = ashr i64 %1, 63, !dbg !2104
  store i64 %shr, i64* %s, align 8, !dbg !2105
  %2 = load i64, i64* %a.addr, align 8, !dbg !2106
  %3 = load i64, i64* %s, align 8, !dbg !2107
  %xor = xor i64 %2, %3, !dbg !2108
  %4 = load i64, i64* %s, align 8, !dbg !2109
  %sub = sub nsw i64 %xor, %4, !dbg !2110
  store i64 %sub, i64* %a.addr, align 8, !dbg !2111
  %5 = load i64, i64* %a.addr, align 8, !dbg !2112
  %6 = call i64 @llvm.ctlz.i64(i64 %5, i1 true), !dbg !2113
  %cast = trunc i64 %6 to i32, !dbg !2113
  %sub1 = sub i32 64, %cast, !dbg !2114
  store i32 %sub1, i32* %sd, align 4, !dbg !2115
  %7 = load i32, i32* %sd, align 4, !dbg !2116
  %sub2 = sub nsw i32 %7, 1, !dbg !2117
  store i32 %sub2, i32* %e, align 4, !dbg !2118
  %8 = load i32, i32* %sd, align 4, !dbg !2119
  %cmp3 = icmp sgt i32 %8, 24, !dbg !2120
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2119

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %sd, align 4, !dbg !2121
  switch i32 %9, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb5
  ], !dbg !2122

sw.bb:                                            ; preds = %if.then4
  %10 = load i64, i64* %a.addr, align 8, !dbg !2123
  %shl = shl i64 %10, 1, !dbg !2123
  store i64 %shl, i64* %a.addr, align 8, !dbg !2123
  br label %sw.epilog, !dbg !2124

sw.bb5:                                           ; preds = %if.then4
  br label %sw.epilog, !dbg !2125

sw.default:                                       ; preds = %if.then4
  %11 = load i64, i64* %a.addr, align 8, !dbg !2126
  %12 = load i32, i32* %sd, align 4, !dbg !2127
  %sub6 = sub nsw i32 %12, 26, !dbg !2128
  %sh_prom = zext i32 %sub6 to i64, !dbg !2129
  %shr7 = lshr i64 %11, %sh_prom, !dbg !2129
  %13 = load i64, i64* %a.addr, align 8, !dbg !2130
  %14 = load i32, i32* %sd, align 4, !dbg !2131
  %sub8 = sub i32 90, %14, !dbg !2132
  %sh_prom9 = zext i32 %sub8 to i64, !dbg !2133
  %shr10 = lshr i64 -1, %sh_prom9, !dbg !2133
  %and = and i64 %13, %shr10, !dbg !2134
  %cmp11 = icmp ne i64 %and, 0, !dbg !2135
  %conv = zext i1 %cmp11 to i32, !dbg !2135
  %conv12 = sext i32 %conv to i64, !dbg !2136
  %or = or i64 %shr7, %conv12, !dbg !2137
  store i64 %or, i64* %a.addr, align 8, !dbg !2138
  br label %sw.epilog, !dbg !2139

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %15 = load i64, i64* %a.addr, align 8, !dbg !2140
  %and13 = and i64 %15, 4, !dbg !2141
  %cmp14 = icmp ne i64 %and13, 0, !dbg !2142
  %conv15 = zext i1 %cmp14 to i32, !dbg !2142
  %conv16 = sext i32 %conv15 to i64, !dbg !2143
  %16 = load i64, i64* %a.addr, align 8, !dbg !2144
  %or17 = or i64 %16, %conv16, !dbg !2144
  store i64 %or17, i64* %a.addr, align 8, !dbg !2144
  %17 = load i64, i64* %a.addr, align 8, !dbg !2145
  %inc = add nsw i64 %17, 1, !dbg !2145
  store i64 %inc, i64* %a.addr, align 8, !dbg !2145
  %18 = load i64, i64* %a.addr, align 8, !dbg !2146
  %shr18 = ashr i64 %18, 2, !dbg !2146
  store i64 %shr18, i64* %a.addr, align 8, !dbg !2146
  %19 = load i64, i64* %a.addr, align 8, !dbg !2147
  %and19 = and i64 %19, 16777216, !dbg !2148
  %tobool = icmp ne i64 %and19, 0, !dbg !2148
  br i1 %tobool, label %if.then20, label %if.end23, !dbg !2147

if.then20:                                        ; preds = %sw.epilog
  %20 = load i64, i64* %a.addr, align 8, !dbg !2149
  %shr21 = ashr i64 %20, 1, !dbg !2149
  store i64 %shr21, i64* %a.addr, align 8, !dbg !2149
  %21 = load i32, i32* %e, align 4, !dbg !2150
  %inc22 = add nsw i32 %21, 1, !dbg !2150
  store i32 %inc22, i32* %e, align 4, !dbg !2150
  br label %if.end23, !dbg !2151

if.end23:                                         ; preds = %if.then20, %sw.epilog
  br label %if.end27, !dbg !2152

if.else:                                          ; preds = %if.end
  %22 = load i32, i32* %sd, align 4, !dbg !2153
  %sub24 = sub nsw i32 24, %22, !dbg !2154
  %23 = load i64, i64* %a.addr, align 8, !dbg !2155
  %sh_prom25 = zext i32 %sub24 to i64, !dbg !2155
  %shl26 = shl i64 %23, %sh_prom25, !dbg !2155
  store i64 %shl26, i64* %a.addr, align 8, !dbg !2155
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end23
  %24 = load i64, i64* %s, align 8, !dbg !2156
  %conv28 = trunc i64 %24 to i32, !dbg !2157
  %and29 = and i32 %conv28, -2147483648, !dbg !2158
  %25 = load i32, i32* %e, align 4, !dbg !2159
  %add = add nsw i32 %25, 127, !dbg !2160
  %shl30 = shl i32 %add, 23, !dbg !2161
  %or31 = or i32 %and29, %shl30, !dbg !2162
  %26 = load i64, i64* %a.addr, align 8, !dbg !2163
  %conv32 = trunc i64 %26 to i32, !dbg !2164
  %and33 = and i32 %conv32, 8388607, !dbg !2165
  %or34 = or i32 %or31, %and33, !dbg !2166
  %u = bitcast %union.float_bits* %fb to i32*, !dbg !2167
  store i32 %or34, i32* %u, align 4, !dbg !2168
  %f = bitcast %union.float_bits* %fb to float*, !dbg !2169
  %27 = load float, float* %f, align 4, !dbg !2169
  store float %27, float* %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

return:                                           ; preds = %if.end27, %if.then
  %28 = load float, float* %retval, align 4, !dbg !2171
  ret float %28, !dbg !2171
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local fp128 @__floatdixf(i64 noundef %a) #0 !dbg !2172 {
entry:
  %retval = alloca fp128, align 16
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %s = alloca i64, align 8
  %clz = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.long_double_bits, align 16
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2173
  %cmp = icmp eq i64 %0, 0, !dbg !2174
  br i1 %cmp, label %if.then, label %if.end, !dbg !2173

if.then:                                          ; preds = %entry
  store fp128 0xL00000000000000000000000000000000, fp128* %retval, align 16, !dbg !2175
  br label %return, !dbg !2175

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2176
  %1 = load i64, i64* %a.addr, align 8, !dbg !2177
  %shr = ashr i64 %1, 63, !dbg !2178
  store i64 %shr, i64* %s, align 8, !dbg !2179
  %2 = load i64, i64* %a.addr, align 8, !dbg !2180
  %3 = load i64, i64* %s, align 8, !dbg !2181
  %xor = xor i64 %2, %3, !dbg !2182
  %4 = load i64, i64* %s, align 8, !dbg !2183
  %sub = sub nsw i64 %xor, %4, !dbg !2184
  store i64 %sub, i64* %a.addr, align 8, !dbg !2185
  %5 = load i64, i64* %a.addr, align 8, !dbg !2186
  %6 = call i64 @llvm.ctlz.i64(i64 %5, i1 true), !dbg !2187
  %cast = trunc i64 %6 to i32, !dbg !2187
  store i32 %cast, i32* %clz, align 4, !dbg !2188
  %7 = load i32, i32* %clz, align 4, !dbg !2189
  %sub1 = sub i32 63, %7, !dbg !2190
  store i32 %sub1, i32* %e, align 4, !dbg !2191
  %8 = load i64, i64* %s, align 8, !dbg !2192
  %conv = trunc i64 %8 to i32, !dbg !2193
  %and = and i32 %conv, 32768, !dbg !2194
  %9 = load i32, i32* %e, align 4, !dbg !2195
  %add = add nsw i32 %9, 16383, !dbg !2196
  %or = or i32 %and, %add, !dbg !2197
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2198
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2199
  %s2 = bitcast %union.udwords* %high to %struct.anon*, !dbg !2200
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !2201
  store i32 %or, i32* %low, align 8, !dbg !2202
  %10 = load i64, i64* %a.addr, align 8, !dbg !2203
  %11 = load i32, i32* %clz, align 4, !dbg !2204
  %sh_prom = zext i32 %11 to i64, !dbg !2205
  %shl = shl i64 %10, %sh_prom, !dbg !2205
  %u3 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2206
  %low4 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u3, i32 0, i32 0, !dbg !2207
  %all = bitcast %union.udwords* %low4 to i64*, !dbg !2208
  store i64 %shl, i64* %all, align 16, !dbg !2209
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2210
  %12 = load fp128, fp128* %f, align 16, !dbg !2210
  store fp128 %12, fp128* %retval, align 16, !dbg !2211
  br label %return, !dbg !2211

return:                                           ; preds = %if.end, %if.then
  %13 = load fp128, fp128* %retval, align 16, !dbg !2212
  ret fp128 %13, !dbg !2212
}

; Function Attrs: noinline nounwind
define dso_local double @__floatsidf(i32 noundef %a) #0 !dbg !2213 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca i32, align 4
  %aWidth = alloca i32, align 4
  %sign = alloca i64, align 8
  %exponent = alloca i32, align 4
  %result = alloca i64, align 8
  %shift = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %aWidth, align 4, !dbg !2214
  %0 = load i32, i32* %a.addr, align 4, !dbg !2215
  %cmp = icmp eq i32 %0, 0, !dbg !2216
  br i1 %cmp, label %if.then, label %if.end, !dbg !2215

if.then:                                          ; preds = %entry
  %call = call double @fromRep.29(i64 noundef 0) #4, !dbg !2217
  store double %call, double* %retval, align 8, !dbg !2218
  br label %return, !dbg !2218

if.end:                                           ; preds = %entry
  store i64 0, i64* %sign, align 8, !dbg !2219
  %1 = load i32, i32* %a.addr, align 4, !dbg !2220
  %cmp1 = icmp slt i32 %1, 0, !dbg !2221
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2220

if.then2:                                         ; preds = %if.end
  store i64 -9223372036854775808, i64* %sign, align 8, !dbg !2222
  %2 = load i32, i32* %a.addr, align 4, !dbg !2223
  %sub = sub nsw i32 0, %2, !dbg !2224
  store i32 %sub, i32* %a.addr, align 4, !dbg !2225
  br label %if.end3, !dbg !2226

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %a.addr, align 4, !dbg !2227
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 true), !dbg !2228
  %sub4 = sub nsw i32 31, %4, !dbg !2229
  store i32 %sub4, i32* %exponent, align 4, !dbg !2230
  %5 = load i32, i32* %exponent, align 4, !dbg !2231
  %sub5 = sub nsw i32 52, %5, !dbg !2232
  store i32 %sub5, i32* %shift, align 4, !dbg !2233
  %6 = load i32, i32* %a.addr, align 4, !dbg !2234
  %conv = zext i32 %6 to i64, !dbg !2235
  %7 = load i32, i32* %shift, align 4, !dbg !2236
  %sh_prom = zext i32 %7 to i64, !dbg !2237
  %shl = shl i64 %conv, %sh_prom, !dbg !2237
  %xor = xor i64 %shl, 4503599627370496, !dbg !2238
  store i64 %xor, i64* %result, align 8, !dbg !2239
  %8 = load i32, i32* %exponent, align 4, !dbg !2240
  %add = add nsw i32 %8, 1023, !dbg !2241
  %conv6 = sext i32 %add to i64, !dbg !2242
  %shl7 = shl i64 %conv6, 52, !dbg !2243
  %9 = load i64, i64* %result, align 8, !dbg !2244
  %add8 = add i64 %9, %shl7, !dbg !2244
  store i64 %add8, i64* %result, align 8, !dbg !2244
  %10 = load i64, i64* %result, align 8, !dbg !2245
  %11 = load i64, i64* %sign, align 8, !dbg !2246
  %or = or i64 %10, %11, !dbg !2247
  %call9 = call double @fromRep.29(i64 noundef %or) #4, !dbg !2248
  store double %call9, double* %retval, align 8, !dbg !2249
  br label %return, !dbg !2249

return:                                           ; preds = %if.end3, %if.then
  %12 = load double, double* %retval, align 8, !dbg !2250
  ret double %12, !dbg !2250
}

; Function Attrs: noinline nounwind
define internal double @fromRep.29(i64 noundef %x) #0 !dbg !2251 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2252
  %0 = load i64, i64* %x.addr, align 8, !dbg !2253
  store i64 %0, i64* %i, align 8, !dbg !2252
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2254
  %1 = load double, double* %f, align 8, !dbg !2254
  ret double %1, !dbg !2255
}

; Function Attrs: noinline nounwind
define dso_local float @__floatsisf(i32 noundef %a) #0 !dbg !2256 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i32, align 4
  %aWidth = alloca i32, align 4
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %result = alloca i32, align 4
  %shift = alloca i32, align 4
  %shift8 = alloca i32, align 4
  %round = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %aWidth, align 4, !dbg !2257
  %0 = load i32, i32* %a.addr, align 4, !dbg !2258
  %cmp = icmp eq i32 %0, 0, !dbg !2259
  br i1 %cmp, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %entry
  %call = call float @fromRep.30(i32 noundef 0) #4, !dbg !2260
  store float %call, float* %retval, align 4, !dbg !2261
  br label %return, !dbg !2261

if.end:                                           ; preds = %entry
  store i32 0, i32* %sign, align 4, !dbg !2262
  %1 = load i32, i32* %a.addr, align 4, !dbg !2263
  %cmp1 = icmp slt i32 %1, 0, !dbg !2264
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2263

if.then2:                                         ; preds = %if.end
  store i32 -2147483648, i32* %sign, align 4, !dbg !2265
  %2 = load i32, i32* %a.addr, align 4, !dbg !2266
  %sub = sub nsw i32 0, %2, !dbg !2267
  store i32 %sub, i32* %a.addr, align 4, !dbg !2268
  br label %if.end3, !dbg !2269

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %a.addr, align 4, !dbg !2270
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 true), !dbg !2271
  %sub4 = sub nsw i32 31, %4, !dbg !2272
  store i32 %sub4, i32* %exponent, align 4, !dbg !2273
  %5 = load i32, i32* %exponent, align 4, !dbg !2274
  %cmp5 = icmp sle i32 %5, 23, !dbg !2275
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2274

if.then6:                                         ; preds = %if.end3
  %6 = load i32, i32* %exponent, align 4, !dbg !2276
  %sub7 = sub nsw i32 23, %6, !dbg !2277
  store i32 %sub7, i32* %shift, align 4, !dbg !2278
  %7 = load i32, i32* %a.addr, align 4, !dbg !2279
  %8 = load i32, i32* %shift, align 4, !dbg !2280
  %shl = shl i32 %7, %8, !dbg !2281
  %xor = xor i32 %shl, 8388608, !dbg !2282
  store i32 %xor, i32* %result, align 4, !dbg !2283
  br label %if.end19, !dbg !2284

if.else:                                          ; preds = %if.end3
  %9 = load i32, i32* %exponent, align 4, !dbg !2285
  %sub9 = sub nsw i32 %9, 23, !dbg !2286
  store i32 %sub9, i32* %shift8, align 4, !dbg !2287
  %10 = load i32, i32* %a.addr, align 4, !dbg !2288
  %11 = load i32, i32* %shift8, align 4, !dbg !2289
  %shr = lshr i32 %10, %11, !dbg !2290
  %xor10 = xor i32 %shr, 8388608, !dbg !2291
  store i32 %xor10, i32* %result, align 4, !dbg !2292
  %12 = load i32, i32* %a.addr, align 4, !dbg !2293
  %13 = load i32, i32* %shift8, align 4, !dbg !2294
  %sub11 = sub i32 32, %13, !dbg !2295
  %shl12 = shl i32 %12, %sub11, !dbg !2296
  store i32 %shl12, i32* %round, align 4, !dbg !2297
  %14 = load i32, i32* %round, align 4, !dbg !2298
  %cmp13 = icmp ugt i32 %14, -2147483648, !dbg !2299
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2298

if.then14:                                        ; preds = %if.else
  %15 = load i32, i32* %result, align 4, !dbg !2300
  %inc = add i32 %15, 1, !dbg !2300
  store i32 %inc, i32* %result, align 4, !dbg !2300
  br label %if.end15, !dbg !2301

if.end15:                                         ; preds = %if.then14, %if.else
  %16 = load i32, i32* %round, align 4, !dbg !2302
  %cmp16 = icmp eq i32 %16, -2147483648, !dbg !2303
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2302

if.then17:                                        ; preds = %if.end15
  %17 = load i32, i32* %result, align 4, !dbg !2304
  %and = and i32 %17, 1, !dbg !2305
  %18 = load i32, i32* %result, align 4, !dbg !2306
  %add = add i32 %18, %and, !dbg !2306
  store i32 %add, i32* %result, align 4, !dbg !2306
  br label %if.end18, !dbg !2307

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then6
  %19 = load i32, i32* %exponent, align 4, !dbg !2308
  %add20 = add nsw i32 %19, 127, !dbg !2309
  %shl21 = shl i32 %add20, 23, !dbg !2310
  %20 = load i32, i32* %result, align 4, !dbg !2311
  %add22 = add i32 %20, %shl21, !dbg !2311
  store i32 %add22, i32* %result, align 4, !dbg !2311
  %21 = load i32, i32* %result, align 4, !dbg !2312
  %22 = load i32, i32* %sign, align 4, !dbg !2313
  %or = or i32 %21, %22, !dbg !2314
  %call23 = call float @fromRep.30(i32 noundef %or) #4, !dbg !2315
  store float %call23, float* %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

return:                                           ; preds = %if.end19, %if.then
  %23 = load float, float* %retval, align 4, !dbg !2317
  ret float %23, !dbg !2317
}

; Function Attrs: noinline nounwind
define internal float @fromRep.30(i32 noundef %x) #0 !dbg !2318 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !2319
  %0 = load i32, i32* %x.addr, align 4, !dbg !2320
  store i32 %0, i32* %i, align 4, !dbg !2319
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !2321
  %1 = load float, float* %f, align 4, !dbg !2321
  ret float %1, !dbg !2322
}

; Function Attrs: noinline nounwind
define dso_local double @__floatundidf(i64 noundef %a) #0 !dbg !2323 {
entry:
  %a.addr = alloca i64, align 8
  %high = alloca %union.udwords, align 8
  %low = alloca %union.udwords, align 8
  %result = alloca double, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = bitcast %union.udwords* %high to i8*, !dbg !2324
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %0, i8* align 8 bitcast ({ double }* @__const.__floatundidf.high to i8*), i32 8, i1 false), !dbg !2324
  %1 = bitcast %union.udwords* %low to i8*, !dbg !2325
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %1, i8* align 8 bitcast ({ double }* @__const.__floatundidf.low to i8*), i32 8, i1 false), !dbg !2325
  %2 = load i64, i64* %a.addr, align 8, !dbg !2326
  %shr = lshr i64 %2, 32, !dbg !2327
  %x = bitcast %union.udwords* %high to i64*, !dbg !2328
  %3 = load i64, i64* %x, align 8, !dbg !2329
  %or = or i64 %3, %shr, !dbg !2329
  store i64 %or, i64* %x, align 8, !dbg !2329
  %4 = load i64, i64* %a.addr, align 8, !dbg !2330
  %and = and i64 %4, 4294967295, !dbg !2331
  %x1 = bitcast %union.udwords* %low to i64*, !dbg !2332
  %5 = load i64, i64* %x1, align 8, !dbg !2333
  %or2 = or i64 %5, %and, !dbg !2333
  store i64 %or2, i64* %x1, align 8, !dbg !2333
  %d = bitcast %union.udwords* %high to double*, !dbg !2334
  %6 = load double, double* %d, align 8, !dbg !2334
  %sub = fsub double %6, 0x4530000000100000, !dbg !2335
  %d3 = bitcast %union.udwords* %low to double*, !dbg !2336
  %7 = load double, double* %d3, align 8, !dbg !2336
  %add = fadd double %sub, %7, !dbg !2337
  store double %add, double* %result, align 8, !dbg !2338
  %8 = load double, double* %result, align 8, !dbg !2339
  ret double %8, !dbg !2340
}

; Function Attrs: noinline nounwind
define dso_local float @__floatundisf(i64 noundef %a) #0 !dbg !2341 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %sd = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.float_bits, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2342
  %cmp = icmp eq i64 %0, 0, !dbg !2343
  br i1 %cmp, label %if.then, label %if.end, !dbg !2342

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4, !dbg !2344
  br label %return, !dbg !2344

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2345
  %1 = load i64, i64* %a.addr, align 8, !dbg !2346
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2347
  %cast = trunc i64 %2 to i32, !dbg !2347
  %sub = sub i32 64, %cast, !dbg !2348
  store i32 %sub, i32* %sd, align 4, !dbg !2349
  %3 = load i32, i32* %sd, align 4, !dbg !2350
  %sub1 = sub nsw i32 %3, 1, !dbg !2351
  store i32 %sub1, i32* %e, align 4, !dbg !2352
  %4 = load i32, i32* %sd, align 4, !dbg !2353
  %cmp2 = icmp sgt i32 %4, 24, !dbg !2354
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2353

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %sd, align 4, !dbg !2355
  switch i32 %5, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb4
  ], !dbg !2356

sw.bb:                                            ; preds = %if.then3
  %6 = load i64, i64* %a.addr, align 8, !dbg !2357
  %shl = shl i64 %6, 1, !dbg !2357
  store i64 %shl, i64* %a.addr, align 8, !dbg !2357
  br label %sw.epilog, !dbg !2358

sw.bb4:                                           ; preds = %if.then3
  br label %sw.epilog, !dbg !2359

sw.default:                                       ; preds = %if.then3
  %7 = load i64, i64* %a.addr, align 8, !dbg !2360
  %8 = load i32, i32* %sd, align 4, !dbg !2361
  %sub5 = sub nsw i32 %8, 26, !dbg !2362
  %sh_prom = zext i32 %sub5 to i64, !dbg !2363
  %shr = lshr i64 %7, %sh_prom, !dbg !2363
  %9 = load i64, i64* %a.addr, align 8, !dbg !2364
  %10 = load i32, i32* %sd, align 4, !dbg !2365
  %sub6 = sub i32 90, %10, !dbg !2366
  %sh_prom7 = zext i32 %sub6 to i64, !dbg !2367
  %shr8 = lshr i64 -1, %sh_prom7, !dbg !2367
  %and = and i64 %9, %shr8, !dbg !2368
  %cmp9 = icmp ne i64 %and, 0, !dbg !2369
  %conv = zext i1 %cmp9 to i32, !dbg !2369
  %conv10 = sext i32 %conv to i64, !dbg !2370
  %or = or i64 %shr, %conv10, !dbg !2371
  store i64 %or, i64* %a.addr, align 8, !dbg !2372
  br label %sw.epilog, !dbg !2373

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %11 = load i64, i64* %a.addr, align 8, !dbg !2374
  %and11 = and i64 %11, 4, !dbg !2375
  %cmp12 = icmp ne i64 %and11, 0, !dbg !2376
  %conv13 = zext i1 %cmp12 to i32, !dbg !2376
  %conv14 = sext i32 %conv13 to i64, !dbg !2377
  %12 = load i64, i64* %a.addr, align 8, !dbg !2378
  %or15 = or i64 %12, %conv14, !dbg !2378
  store i64 %or15, i64* %a.addr, align 8, !dbg !2378
  %13 = load i64, i64* %a.addr, align 8, !dbg !2379
  %inc = add i64 %13, 1, !dbg !2379
  store i64 %inc, i64* %a.addr, align 8, !dbg !2379
  %14 = load i64, i64* %a.addr, align 8, !dbg !2380
  %shr16 = lshr i64 %14, 2, !dbg !2380
  store i64 %shr16, i64* %a.addr, align 8, !dbg !2380
  %15 = load i64, i64* %a.addr, align 8, !dbg !2381
  %and17 = and i64 %15, 16777216, !dbg !2382
  %tobool = icmp ne i64 %and17, 0, !dbg !2382
  br i1 %tobool, label %if.then18, label %if.end21, !dbg !2381

if.then18:                                        ; preds = %sw.epilog
  %16 = load i64, i64* %a.addr, align 8, !dbg !2383
  %shr19 = lshr i64 %16, 1, !dbg !2383
  store i64 %shr19, i64* %a.addr, align 8, !dbg !2383
  %17 = load i32, i32* %e, align 4, !dbg !2384
  %inc20 = add nsw i32 %17, 1, !dbg !2384
  store i32 %inc20, i32* %e, align 4, !dbg !2384
  br label %if.end21, !dbg !2385

if.end21:                                         ; preds = %if.then18, %sw.epilog
  br label %if.end25, !dbg !2386

if.else:                                          ; preds = %if.end
  %18 = load i32, i32* %sd, align 4, !dbg !2387
  %sub22 = sub nsw i32 24, %18, !dbg !2388
  %19 = load i64, i64* %a.addr, align 8, !dbg !2389
  %sh_prom23 = zext i32 %sub22 to i64, !dbg !2389
  %shl24 = shl i64 %19, %sh_prom23, !dbg !2389
  store i64 %shl24, i64* %a.addr, align 8, !dbg !2389
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end21
  %20 = load i32, i32* %e, align 4, !dbg !2390
  %add = add nsw i32 %20, 127, !dbg !2391
  %shl26 = shl i32 %add, 23, !dbg !2392
  %21 = load i64, i64* %a.addr, align 8, !dbg !2393
  %conv27 = trunc i64 %21 to i32, !dbg !2394
  %and28 = and i32 %conv27, 8388607, !dbg !2395
  %or29 = or i32 %shl26, %and28, !dbg !2396
  %u = bitcast %union.float_bits* %fb to i32*, !dbg !2397
  store i32 %or29, i32* %u, align 4, !dbg !2398
  %f = bitcast %union.float_bits* %fb to float*, !dbg !2399
  %22 = load float, float* %f, align 4, !dbg !2399
  store float %22, float* %retval, align 4, !dbg !2400
  br label %return, !dbg !2400

return:                                           ; preds = %if.end25, %if.then
  %23 = load float, float* %retval, align 4, !dbg !2401
  ret float %23, !dbg !2401
}

; Function Attrs: noinline nounwind
define dso_local fp128 @__floatundixf(i64 noundef %a) #0 !dbg !2402 {
entry:
  %retval = alloca fp128, align 16
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %clz = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.long_double_bits, align 16
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2403
  %cmp = icmp eq i64 %0, 0, !dbg !2404
  br i1 %cmp, label %if.then, label %if.end, !dbg !2403

if.then:                                          ; preds = %entry
  store fp128 0xL00000000000000000000000000000000, fp128* %retval, align 16, !dbg !2405
  br label %return, !dbg !2405

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2406
  %1 = load i64, i64* %a.addr, align 8, !dbg !2407
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2408
  %cast = trunc i64 %2 to i32, !dbg !2408
  store i32 %cast, i32* %clz, align 4, !dbg !2409
  %3 = load i32, i32* %clz, align 4, !dbg !2410
  %sub = sub i32 63, %3, !dbg !2411
  store i32 %sub, i32* %e, align 4, !dbg !2412
  %4 = load i32, i32* %e, align 4, !dbg !2413
  %add = add nsw i32 %4, 16383, !dbg !2414
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2415
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2416
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !2417
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2418
  store i32 %add, i32* %low, align 8, !dbg !2419
  %5 = load i64, i64* %a.addr, align 8, !dbg !2420
  %6 = load i32, i32* %clz, align 4, !dbg !2421
  %sh_prom = zext i32 %6 to i64, !dbg !2422
  %shl = shl i64 %5, %sh_prom, !dbg !2422
  %u1 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2423
  %low2 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u1, i32 0, i32 0, !dbg !2424
  %all = bitcast %union.udwords* %low2 to i64*, !dbg !2425
  store i64 %shl, i64* %all, align 16, !dbg !2426
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2427
  %7 = load fp128, fp128* %f, align 16, !dbg !2427
  store fp128 %7, fp128* %retval, align 16, !dbg !2428
  br label %return, !dbg !2428

return:                                           ; preds = %if.end, %if.then
  %8 = load fp128, fp128* %retval, align 16, !dbg !2429
  ret fp128 %8, !dbg !2429
}

; Function Attrs: noinline nounwind
define dso_local double @__floatunsidf(i32 noundef %a) #0 !dbg !2430 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca i32, align 4
  %aWidth = alloca i32, align 4
  %exponent = alloca i32, align 4
  %result = alloca i64, align 8
  %shift = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %aWidth, align 4, !dbg !2431
  %0 = load i32, i32* %a.addr, align 4, !dbg !2432
  %cmp = icmp eq i32 %0, 0, !dbg !2433
  br i1 %cmp, label %if.then, label %if.end, !dbg !2432

if.then:                                          ; preds = %entry
  %call = call double @fromRep.31(i64 noundef 0) #4, !dbg !2434
  store double %call, double* %retval, align 8, !dbg !2435
  br label %return, !dbg !2435

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !2436
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true), !dbg !2437
  %sub = sub nsw i32 31, %2, !dbg !2438
  store i32 %sub, i32* %exponent, align 4, !dbg !2439
  %3 = load i32, i32* %exponent, align 4, !dbg !2440
  %sub1 = sub nsw i32 52, %3, !dbg !2441
  store i32 %sub1, i32* %shift, align 4, !dbg !2442
  %4 = load i32, i32* %a.addr, align 4, !dbg !2443
  %conv = zext i32 %4 to i64, !dbg !2444
  %5 = load i32, i32* %shift, align 4, !dbg !2445
  %sh_prom = zext i32 %5 to i64, !dbg !2446
  %shl = shl i64 %conv, %sh_prom, !dbg !2446
  %xor = xor i64 %shl, 4503599627370496, !dbg !2447
  store i64 %xor, i64* %result, align 8, !dbg !2448
  %6 = load i32, i32* %exponent, align 4, !dbg !2449
  %add = add nsw i32 %6, 1023, !dbg !2450
  %conv2 = sext i32 %add to i64, !dbg !2451
  %shl3 = shl i64 %conv2, 52, !dbg !2452
  %7 = load i64, i64* %result, align 8, !dbg !2453
  %add4 = add i64 %7, %shl3, !dbg !2453
  store i64 %add4, i64* %result, align 8, !dbg !2453
  %8 = load i64, i64* %result, align 8, !dbg !2454
  %call5 = call double @fromRep.31(i64 noundef %8) #4, !dbg !2455
  store double %call5, double* %retval, align 8, !dbg !2456
  br label %return, !dbg !2456

return:                                           ; preds = %if.end, %if.then
  %9 = load double, double* %retval, align 8, !dbg !2457
  ret double %9, !dbg !2457
}

; Function Attrs: noinline nounwind
define internal double @fromRep.31(i64 noundef %x) #0 !dbg !2458 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2459
  %0 = load i64, i64* %x.addr, align 8, !dbg !2460
  store i64 %0, i64* %i, align 8, !dbg !2459
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2461
  %1 = load double, double* %f, align 8, !dbg !2461
  ret double %1, !dbg !2462
}

; Function Attrs: noinline nounwind
define dso_local float @__floatunsisf(i32 noundef %a) #0 !dbg !2463 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i32, align 4
  %aWidth = alloca i32, align 4
  %exponent = alloca i32, align 4
  %result = alloca i32, align 4
  %shift = alloca i32, align 4
  %shift4 = alloca i32, align 4
  %round = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %aWidth, align 4, !dbg !2464
  %0 = load i32, i32* %a.addr, align 4, !dbg !2465
  %cmp = icmp eq i32 %0, 0, !dbg !2466
  br i1 %cmp, label %if.then, label %if.end, !dbg !2465

if.then:                                          ; preds = %entry
  %call = call float @fromRep.32(i32 noundef 0) #4, !dbg !2467
  store float %call, float* %retval, align 4, !dbg !2468
  br label %return, !dbg !2468

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !2469
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true), !dbg !2470
  %sub = sub nsw i32 31, %2, !dbg !2471
  store i32 %sub, i32* %exponent, align 4, !dbg !2472
  %3 = load i32, i32* %exponent, align 4, !dbg !2473
  %cmp1 = icmp sle i32 %3, 23, !dbg !2474
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2473

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %exponent, align 4, !dbg !2475
  %sub3 = sub nsw i32 23, %4, !dbg !2476
  store i32 %sub3, i32* %shift, align 4, !dbg !2477
  %5 = load i32, i32* %a.addr, align 4, !dbg !2478
  %6 = load i32, i32* %shift, align 4, !dbg !2479
  %shl = shl i32 %5, %6, !dbg !2480
  %xor = xor i32 %shl, 8388608, !dbg !2481
  store i32 %xor, i32* %result, align 4, !dbg !2482
  br label %if.end15, !dbg !2483

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %exponent, align 4, !dbg !2484
  %sub5 = sub nsw i32 %7, 23, !dbg !2485
  store i32 %sub5, i32* %shift4, align 4, !dbg !2486
  %8 = load i32, i32* %a.addr, align 4, !dbg !2487
  %9 = load i32, i32* %shift4, align 4, !dbg !2488
  %shr = lshr i32 %8, %9, !dbg !2489
  %xor6 = xor i32 %shr, 8388608, !dbg !2490
  store i32 %xor6, i32* %result, align 4, !dbg !2491
  %10 = load i32, i32* %a.addr, align 4, !dbg !2492
  %11 = load i32, i32* %shift4, align 4, !dbg !2493
  %sub7 = sub i32 32, %11, !dbg !2494
  %shl8 = shl i32 %10, %sub7, !dbg !2495
  store i32 %shl8, i32* %round, align 4, !dbg !2496
  %12 = load i32, i32* %round, align 4, !dbg !2497
  %cmp9 = icmp ugt i32 %12, -2147483648, !dbg !2498
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2497

if.then10:                                        ; preds = %if.else
  %13 = load i32, i32* %result, align 4, !dbg !2499
  %inc = add i32 %13, 1, !dbg !2499
  store i32 %inc, i32* %result, align 4, !dbg !2499
  br label %if.end11, !dbg !2500

if.end11:                                         ; preds = %if.then10, %if.else
  %14 = load i32, i32* %round, align 4, !dbg !2501
  %cmp12 = icmp eq i32 %14, -2147483648, !dbg !2502
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2501

if.then13:                                        ; preds = %if.end11
  %15 = load i32, i32* %result, align 4, !dbg !2503
  %and = and i32 %15, 1, !dbg !2504
  %16 = load i32, i32* %result, align 4, !dbg !2505
  %add = add i32 %16, %and, !dbg !2505
  store i32 %add, i32* %result, align 4, !dbg !2505
  br label %if.end14, !dbg !2506

if.end14:                                         ; preds = %if.then13, %if.end11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %17 = load i32, i32* %exponent, align 4, !dbg !2507
  %add16 = add nsw i32 %17, 127, !dbg !2508
  %shl17 = shl i32 %add16, 23, !dbg !2509
  %18 = load i32, i32* %result, align 4, !dbg !2510
  %add18 = add i32 %18, %shl17, !dbg !2510
  store i32 %add18, i32* %result, align 4, !dbg !2510
  %19 = load i32, i32* %result, align 4, !dbg !2511
  %call19 = call float @fromRep.32(i32 noundef %19) #4, !dbg !2512
  store float %call19, float* %retval, align 4, !dbg !2513
  br label %return, !dbg !2513

return:                                           ; preds = %if.end15, %if.then
  %20 = load float, float* %retval, align 4, !dbg !2514
  ret float %20, !dbg !2514
}

; Function Attrs: noinline nounwind
define internal float @fromRep.32(i32 noundef %x) #0 !dbg !2515 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !2516
  %0 = load i32, i32* %x.addr, align 4, !dbg !2517
  store i32 %0, i32* %i, align 4, !dbg !2516
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !2518
  %1 = load float, float* %f, align 4, !dbg !2518
  ret float %1, !dbg !2519
}

; Function Attrs: noinline nounwind
define dso_local double @__muldf3(double noundef %a, double noundef %b) #0 !dbg !2520 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !2521
  %1 = load double, double* %b.addr, align 8, !dbg !2522
  %call = call double @__mulXf3__(double noundef %0, double noundef %1) #4, !dbg !2523
  ret double %call, !dbg !2524
}

; Function Attrs: noinline nounwind
define internal double @__mulXf3__(double noundef %a, double noundef %b) #0 !dbg !2525 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aExponent = alloca i32, align 4
  %bExponent = alloca i32, align 4
  %productSign = alloca i64, align 8
  %aSignificand = alloca i64, align 8
  %bSignificand = alloca i64, align 8
  %scale = alloca i32, align 4
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  %productHi = alloca i64, align 8
  %productLo = alloca i64, align 8
  %productExponent = alloca i32, align 4
  %shift = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !2527
  %call = call i64 @toRep.33(double noundef %0) #4, !dbg !2528
  %shr = lshr i64 %call, 52, !dbg !2529
  %and = and i64 %shr, 2047, !dbg !2530
  %conv = trunc i64 %and to i32, !dbg !2528
  store i32 %conv, i32* %aExponent, align 4, !dbg !2531
  %1 = load double, double* %b.addr, align 8, !dbg !2532
  %call1 = call i64 @toRep.33(double noundef %1) #4, !dbg !2533
  %shr2 = lshr i64 %call1, 52, !dbg !2534
  %and3 = and i64 %shr2, 2047, !dbg !2535
  %conv4 = trunc i64 %and3 to i32, !dbg !2533
  store i32 %conv4, i32* %bExponent, align 4, !dbg !2536
  %2 = load double, double* %a.addr, align 8, !dbg !2537
  %call5 = call i64 @toRep.33(double noundef %2) #4, !dbg !2538
  %3 = load double, double* %b.addr, align 8, !dbg !2539
  %call6 = call i64 @toRep.33(double noundef %3) #4, !dbg !2540
  %xor = xor i64 %call5, %call6, !dbg !2541
  %and7 = and i64 %xor, -9223372036854775808, !dbg !2542
  store i64 %and7, i64* %productSign, align 8, !dbg !2543
  %4 = load double, double* %a.addr, align 8, !dbg !2544
  %call8 = call i64 @toRep.33(double noundef %4) #4, !dbg !2545
  %and9 = and i64 %call8, 4503599627370495, !dbg !2546
  store i64 %and9, i64* %aSignificand, align 8, !dbg !2547
  %5 = load double, double* %b.addr, align 8, !dbg !2548
  %call10 = call i64 @toRep.33(double noundef %5) #4, !dbg !2549
  %and11 = and i64 %call10, 4503599627370495, !dbg !2550
  store i64 %and11, i64* %bSignificand, align 8, !dbg !2551
  store i32 0, i32* %scale, align 4, !dbg !2552
  %6 = load i32, i32* %aExponent, align 4, !dbg !2553
  %sub = sub i32 %6, 1, !dbg !2554
  %cmp = icmp uge i32 %sub, 2046, !dbg !2555
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2556

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !2557
  %sub13 = sub i32 %7, 1, !dbg !2558
  %cmp14 = icmp uge i32 %sub13, 2046, !dbg !2559
  br i1 %cmp14, label %if.then, label %if.end69, !dbg !2553

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load double, double* %a.addr, align 8, !dbg !2560
  %call16 = call i64 @toRep.33(double noundef %8) #4, !dbg !2561
  %and17 = and i64 %call16, 9223372036854775807, !dbg !2562
  store i64 %and17, i64* %aAbs, align 8, !dbg !2563
  %9 = load double, double* %b.addr, align 8, !dbg !2564
  %call18 = call i64 @toRep.33(double noundef %9) #4, !dbg !2565
  %and19 = and i64 %call18, 9223372036854775807, !dbg !2566
  store i64 %and19, i64* %bAbs, align 8, !dbg !2567
  %10 = load i64, i64* %aAbs, align 8, !dbg !2568
  %cmp20 = icmp ugt i64 %10, 9218868437227405312, !dbg !2569
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !2568

if.then22:                                        ; preds = %if.then
  %11 = load double, double* %a.addr, align 8, !dbg !2570
  %call23 = call i64 @toRep.33(double noundef %11) #4, !dbg !2571
  %or = or i64 %call23, 2251799813685248, !dbg !2572
  %call24 = call double @fromRep.34(i64 noundef %or) #4, !dbg !2573
  store double %call24, double* %retval, align 8, !dbg !2574
  br label %return, !dbg !2574

if.end:                                           ; preds = %if.then
  %12 = load i64, i64* %bAbs, align 8, !dbg !2575
  %cmp25 = icmp ugt i64 %12, 9218868437227405312, !dbg !2576
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !2575

if.then27:                                        ; preds = %if.end
  %13 = load double, double* %b.addr, align 8, !dbg !2577
  %call28 = call i64 @toRep.33(double noundef %13) #4, !dbg !2578
  %or29 = or i64 %call28, 2251799813685248, !dbg !2579
  %call30 = call double @fromRep.34(i64 noundef %or29) #4, !dbg !2580
  store double %call30, double* %retval, align 8, !dbg !2581
  br label %return, !dbg !2581

if.end31:                                         ; preds = %if.end
  %14 = load i64, i64* %aAbs, align 8, !dbg !2582
  %cmp32 = icmp eq i64 %14, 9218868437227405312, !dbg !2583
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !2582

if.then34:                                        ; preds = %if.end31
  %15 = load i64, i64* %bAbs, align 8, !dbg !2584
  %tobool = icmp ne i64 %15, 0, !dbg !2584
  br i1 %tobool, label %if.then35, label %if.else, !dbg !2584

if.then35:                                        ; preds = %if.then34
  %16 = load i64, i64* %aAbs, align 8, !dbg !2585
  %17 = load i64, i64* %productSign, align 8, !dbg !2586
  %or36 = or i64 %16, %17, !dbg !2587
  %call37 = call double @fromRep.34(i64 noundef %or36) #4, !dbg !2588
  store double %call37, double* %retval, align 8, !dbg !2589
  br label %return, !dbg !2589

if.else:                                          ; preds = %if.then34
  %call38 = call double @fromRep.34(i64 noundef 9221120237041090560) #4, !dbg !2590
  store double %call38, double* %retval, align 8, !dbg !2591
  br label %return, !dbg !2591

if.end39:                                         ; preds = %if.end31
  %18 = load i64, i64* %bAbs, align 8, !dbg !2592
  %cmp40 = icmp eq i64 %18, 9218868437227405312, !dbg !2593
  br i1 %cmp40, label %if.then42, label %if.end49, !dbg !2592

if.then42:                                        ; preds = %if.end39
  %19 = load i64, i64* %aAbs, align 8, !dbg !2594
  %tobool43 = icmp ne i64 %19, 0, !dbg !2594
  br i1 %tobool43, label %if.then44, label %if.else47, !dbg !2594

if.then44:                                        ; preds = %if.then42
  %20 = load i64, i64* %bAbs, align 8, !dbg !2595
  %21 = load i64, i64* %productSign, align 8, !dbg !2596
  %or45 = or i64 %20, %21, !dbg !2597
  %call46 = call double @fromRep.34(i64 noundef %or45) #4, !dbg !2598
  store double %call46, double* %retval, align 8, !dbg !2599
  br label %return, !dbg !2599

if.else47:                                        ; preds = %if.then42
  %call48 = call double @fromRep.34(i64 noundef 9221120237041090560) #4, !dbg !2600
  store double %call48, double* %retval, align 8, !dbg !2601
  br label %return, !dbg !2601

if.end49:                                         ; preds = %if.end39
  %22 = load i64, i64* %aAbs, align 8, !dbg !2602
  %tobool50 = icmp ne i64 %22, 0, !dbg !2602
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !2603

if.then51:                                        ; preds = %if.end49
  %23 = load i64, i64* %productSign, align 8, !dbg !2604
  %call52 = call double @fromRep.34(i64 noundef %23) #4, !dbg !2605
  store double %call52, double* %retval, align 8, !dbg !2606
  br label %return, !dbg !2606

if.end53:                                         ; preds = %if.end49
  %24 = load i64, i64* %bAbs, align 8, !dbg !2607
  %tobool54 = icmp ne i64 %24, 0, !dbg !2607
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !2608

if.then55:                                        ; preds = %if.end53
  %25 = load i64, i64* %productSign, align 8, !dbg !2609
  %call56 = call double @fromRep.34(i64 noundef %25) #4, !dbg !2610
  store double %call56, double* %retval, align 8, !dbg !2611
  br label %return, !dbg !2611

if.end57:                                         ; preds = %if.end53
  %26 = load i64, i64* %aAbs, align 8, !dbg !2612
  %cmp58 = icmp ult i64 %26, 4503599627370496, !dbg !2613
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !2612

if.then60:                                        ; preds = %if.end57
  %call61 = call i32 @normalize.35(i64* noundef %aSignificand) #4, !dbg !2614
  %27 = load i32, i32* %scale, align 4, !dbg !2615
  %add = add nsw i32 %27, %call61, !dbg !2615
  store i32 %add, i32* %scale, align 4, !dbg !2615
  br label %if.end62, !dbg !2616

if.end62:                                         ; preds = %if.then60, %if.end57
  %28 = load i64, i64* %bAbs, align 8, !dbg !2617
  %cmp63 = icmp ult i64 %28, 4503599627370496, !dbg !2618
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !2617

if.then65:                                        ; preds = %if.end62
  %call66 = call i32 @normalize.35(i64* noundef %bSignificand) #4, !dbg !2619
  %29 = load i32, i32* %scale, align 4, !dbg !2620
  %add67 = add nsw i32 %29, %call66, !dbg !2620
  store i32 %add67, i32* %scale, align 4, !dbg !2620
  br label %if.end68, !dbg !2621

if.end68:                                         ; preds = %if.then65, %if.end62
  br label %if.end69, !dbg !2622

if.end69:                                         ; preds = %if.end68, %lor.lhs.false
  %30 = load i64, i64* %aSignificand, align 8, !dbg !2623
  %or70 = or i64 %30, 4503599627370496, !dbg !2623
  store i64 %or70, i64* %aSignificand, align 8, !dbg !2623
  %31 = load i64, i64* %bSignificand, align 8, !dbg !2624
  %or71 = or i64 %31, 4503599627370496, !dbg !2624
  store i64 %or71, i64* %bSignificand, align 8, !dbg !2624
  %32 = load i64, i64* %aSignificand, align 8, !dbg !2625
  %33 = load i64, i64* %bSignificand, align 8, !dbg !2626
  %shl = shl i64 %33, 11, !dbg !2627
  call void @wideMultiply.36(i64 noundef %32, i64 noundef %shl, i64* noundef %productHi, i64* noundef %productLo) #4, !dbg !2628
  %34 = load i32, i32* %aExponent, align 4, !dbg !2629
  %35 = load i32, i32* %bExponent, align 4, !dbg !2630
  %add72 = add i32 %34, %35, !dbg !2631
  %sub73 = sub i32 %add72, 1023, !dbg !2632
  %36 = load i32, i32* %scale, align 4, !dbg !2633
  %add74 = add i32 %sub73, %36, !dbg !2634
  store i32 %add74, i32* %productExponent, align 4, !dbg !2635
  %37 = load i64, i64* %productHi, align 8, !dbg !2636
  %and75 = and i64 %37, 4503599627370496, !dbg !2637
  %tobool76 = icmp ne i64 %and75, 0, !dbg !2637
  br i1 %tobool76, label %if.then77, label %if.else78, !dbg !2636

if.then77:                                        ; preds = %if.end69
  %38 = load i32, i32* %productExponent, align 4, !dbg !2638
  %inc = add nsw i32 %38, 1, !dbg !2638
  store i32 %inc, i32* %productExponent, align 4, !dbg !2638
  br label %if.end79, !dbg !2639

if.else78:                                        ; preds = %if.end69
  call void @wideLeftShift(i64* noundef %productHi, i64* noundef %productLo, i32 noundef 1) #4, !dbg !2640
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  %39 = load i32, i32* %productExponent, align 4, !dbg !2641
  %cmp80 = icmp sge i32 %39, 2047, !dbg !2642
  br i1 %cmp80, label %if.then82, label %if.end85, !dbg !2641

if.then82:                                        ; preds = %if.end79
  %40 = load i64, i64* %productSign, align 8, !dbg !2643
  %or83 = or i64 9218868437227405312, %40, !dbg !2644
  %call84 = call double @fromRep.34(i64 noundef %or83) #4, !dbg !2645
  store double %call84, double* %retval, align 8, !dbg !2646
  br label %return, !dbg !2646

if.end85:                                         ; preds = %if.end79
  %41 = load i32, i32* %productExponent, align 4, !dbg !2647
  %cmp86 = icmp sle i32 %41, 0, !dbg !2648
  br i1 %cmp86, label %if.then88, label %if.else97, !dbg !2647

if.then88:                                        ; preds = %if.end85
  %42 = load i32, i32* %productExponent, align 4, !dbg !2649
  %conv89 = zext i32 %42 to i64, !dbg !2650
  %sub90 = sub i64 1, %conv89, !dbg !2651
  %conv91 = trunc i64 %sub90 to i32, !dbg !2652
  store i32 %conv91, i32* %shift, align 4, !dbg !2653
  %43 = load i32, i32* %shift, align 4, !dbg !2654
  %cmp92 = icmp uge i32 %43, 64, !dbg !2655
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !2654

if.then94:                                        ; preds = %if.then88
  %44 = load i64, i64* %productSign, align 8, !dbg !2656
  %call95 = call double @fromRep.34(i64 noundef %44) #4, !dbg !2657
  store double %call95, double* %retval, align 8, !dbg !2658
  br label %return, !dbg !2658

if.end96:                                         ; preds = %if.then88
  %45 = load i32, i32* %shift, align 4, !dbg !2659
  call void @wideRightShiftWithSticky(i64* noundef %productHi, i64* noundef %productLo, i32 noundef %45) #4, !dbg !2660
  br label %if.end102, !dbg !2661

if.else97:                                        ; preds = %if.end85
  %46 = load i64, i64* %productHi, align 8, !dbg !2662
  %and98 = and i64 %46, 4503599627370495, !dbg !2662
  store i64 %and98, i64* %productHi, align 8, !dbg !2662
  %47 = load i32, i32* %productExponent, align 4, !dbg !2663
  %conv99 = sext i32 %47 to i64, !dbg !2664
  %shl100 = shl i64 %conv99, 52, !dbg !2665
  %48 = load i64, i64* %productHi, align 8, !dbg !2666
  %or101 = or i64 %48, %shl100, !dbg !2666
  store i64 %or101, i64* %productHi, align 8, !dbg !2666
  br label %if.end102

if.end102:                                        ; preds = %if.else97, %if.end96
  %49 = load i64, i64* %productSign, align 8, !dbg !2667
  %50 = load i64, i64* %productHi, align 8, !dbg !2668
  %or103 = or i64 %50, %49, !dbg !2668
  store i64 %or103, i64* %productHi, align 8, !dbg !2668
  %51 = load i64, i64* %productLo, align 8, !dbg !2669
  %cmp104 = icmp ugt i64 %51, -9223372036854775808, !dbg !2670
  br i1 %cmp104, label %if.then106, label %if.end108, !dbg !2669

if.then106:                                       ; preds = %if.end102
  %52 = load i64, i64* %productHi, align 8, !dbg !2671
  %inc107 = add i64 %52, 1, !dbg !2671
  store i64 %inc107, i64* %productHi, align 8, !dbg !2671
  br label %if.end108, !dbg !2672

if.end108:                                        ; preds = %if.then106, %if.end102
  %53 = load i64, i64* %productLo, align 8, !dbg !2673
  %cmp109 = icmp eq i64 %53, -9223372036854775808, !dbg !2674
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !2673

if.then111:                                       ; preds = %if.end108
  %54 = load i64, i64* %productHi, align 8, !dbg !2675
  %and112 = and i64 %54, 1, !dbg !2676
  %55 = load i64, i64* %productHi, align 8, !dbg !2677
  %add113 = add i64 %55, %and112, !dbg !2677
  store i64 %add113, i64* %productHi, align 8, !dbg !2677
  br label %if.end114, !dbg !2678

if.end114:                                        ; preds = %if.then111, %if.end108
  %56 = load i64, i64* %productHi, align 8, !dbg !2679
  %call115 = call double @fromRep.34(i64 noundef %56) #4, !dbg !2680
  store double %call115, double* %retval, align 8, !dbg !2681
  br label %return, !dbg !2681

return:                                           ; preds = %if.end114, %if.then94, %if.then82, %if.then55, %if.then51, %if.else47, %if.then44, %if.else, %if.then35, %if.then27, %if.then22
  %57 = load double, double* %retval, align 8, !dbg !2682
  ret double %57, !dbg !2682
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.33(double noundef %x) #0 !dbg !2683 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2684
  %0 = load double, double* %x.addr, align 8, !dbg !2685
  store double %0, double* %f, align 8, !dbg !2684
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2686
  %1 = load i64, i64* %i, align 8, !dbg !2686
  ret i64 %1, !dbg !2687
}

; Function Attrs: noinline nounwind
define internal double @fromRep.34(i64 noundef %x) #0 !dbg !2688 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2689
  %0 = load i64, i64* %x.addr, align 8, !dbg !2690
  store i64 %0, i64* %i, align 8, !dbg !2689
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2691
  %1 = load double, double* %f, align 8, !dbg !2691
  ret double %1, !dbg !2692
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.35(i64* noundef %significand) #0 !dbg !2693 {
entry:
  %significand.addr = alloca i64*, align 4
  %shift = alloca i32, align 4
  store i64* %significand, i64** %significand.addr, align 4
  %0 = load i64*, i64** %significand.addr, align 4, !dbg !2694
  %1 = load i64, i64* %0, align 8, !dbg !2695
  %call = call i32 @rep_clz.37(i64 noundef %1) #4, !dbg !2696
  %call1 = call i32 @rep_clz.37(i64 noundef 4503599627370496) #4, !dbg !2697
  %sub = sub nsw i32 %call, %call1, !dbg !2698
  store i32 %sub, i32* %shift, align 4, !dbg !2699
  %2 = load i32, i32* %shift, align 4, !dbg !2700
  %3 = load i64*, i64** %significand.addr, align 4, !dbg !2701
  %4 = load i64, i64* %3, align 8, !dbg !2702
  %sh_prom = zext i32 %2 to i64, !dbg !2702
  %shl = shl i64 %4, %sh_prom, !dbg !2702
  store i64 %shl, i64* %3, align 8, !dbg !2702
  %5 = load i32, i32* %shift, align 4, !dbg !2703
  %sub2 = sub nsw i32 1, %5, !dbg !2704
  ret i32 %sub2, !dbg !2705
}

; Function Attrs: noinline nounwind
define internal void @wideMultiply.36(i64 noundef %a, i64 noundef %b, i64* noundef %hi, i64* noundef %lo) #0 !dbg !2706 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %hi.addr = alloca i64*, align 4
  %lo.addr = alloca i64*, align 4
  %plolo = alloca i64, align 8
  %plohi = alloca i64, align 8
  %philo = alloca i64, align 8
  %phihi = alloca i64, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %hi, i64** %hi.addr, align 4
  store i64* %lo, i64** %lo.addr, align 4
  %0 = load i64, i64* %a.addr, align 8, !dbg !2707
  %and = and i64 %0, 4294967295, !dbg !2707
  %1 = load i64, i64* %b.addr, align 8, !dbg !2708
  %and1 = and i64 %1, 4294967295, !dbg !2708
  %mul = mul i64 %and, %and1, !dbg !2709
  store i64 %mul, i64* %plolo, align 8, !dbg !2710
  %2 = load i64, i64* %a.addr, align 8, !dbg !2711
  %and2 = and i64 %2, 4294967295, !dbg !2711
  %3 = load i64, i64* %b.addr, align 8, !dbg !2712
  %shr = lshr i64 %3, 32, !dbg !2712
  %mul3 = mul i64 %and2, %shr, !dbg !2713
  store i64 %mul3, i64* %plohi, align 8, !dbg !2714
  %4 = load i64, i64* %a.addr, align 8, !dbg !2715
  %shr4 = lshr i64 %4, 32, !dbg !2715
  %5 = load i64, i64* %b.addr, align 8, !dbg !2716
  %and5 = and i64 %5, 4294967295, !dbg !2716
  %mul6 = mul i64 %shr4, %and5, !dbg !2717
  store i64 %mul6, i64* %philo, align 8, !dbg !2718
  %6 = load i64, i64* %a.addr, align 8, !dbg !2719
  %shr7 = lshr i64 %6, 32, !dbg !2719
  %7 = load i64, i64* %b.addr, align 8, !dbg !2720
  %shr8 = lshr i64 %7, 32, !dbg !2720
  %mul9 = mul i64 %shr7, %shr8, !dbg !2721
  store i64 %mul9, i64* %phihi, align 8, !dbg !2722
  %8 = load i64, i64* %plolo, align 8, !dbg !2723
  %and10 = and i64 %8, 4294967295, !dbg !2723
  store i64 %and10, i64* %r0, align 8, !dbg !2724
  %9 = load i64, i64* %plolo, align 8, !dbg !2725
  %shr11 = lshr i64 %9, 32, !dbg !2725
  %10 = load i64, i64* %plohi, align 8, !dbg !2726
  %and12 = and i64 %10, 4294967295, !dbg !2726
  %add = add i64 %shr11, %and12, !dbg !2727
  %11 = load i64, i64* %philo, align 8, !dbg !2728
  %and13 = and i64 %11, 4294967295, !dbg !2728
  %add14 = add i64 %add, %and13, !dbg !2729
  store i64 %add14, i64* %r1, align 8, !dbg !2730
  %12 = load i64, i64* %r0, align 8, !dbg !2731
  %13 = load i64, i64* %r1, align 8, !dbg !2732
  %shl = shl i64 %13, 32, !dbg !2733
  %add15 = add i64 %12, %shl, !dbg !2734
  %14 = load i64*, i64** %lo.addr, align 4, !dbg !2735
  store i64 %add15, i64* %14, align 8, !dbg !2736
  %15 = load i64, i64* %plohi, align 8, !dbg !2737
  %shr16 = lshr i64 %15, 32, !dbg !2737
  %16 = load i64, i64* %philo, align 8, !dbg !2738
  %shr17 = lshr i64 %16, 32, !dbg !2738
  %add18 = add i64 %shr16, %shr17, !dbg !2739
  %17 = load i64, i64* %r1, align 8, !dbg !2740
  %shr19 = lshr i64 %17, 32, !dbg !2740
  %add20 = add i64 %add18, %shr19, !dbg !2741
  %18 = load i64, i64* %phihi, align 8, !dbg !2742
  %add21 = add i64 %add20, %18, !dbg !2743
  %19 = load i64*, i64** %hi.addr, align 4, !dbg !2744
  store i64 %add21, i64* %19, align 8, !dbg !2745
  ret void, !dbg !2746
}

; Function Attrs: noinline nounwind
define internal void @wideLeftShift(i64* noundef %hi, i64* noundef %lo, i32 noundef %count) #0 !dbg !2747 {
entry:
  %hi.addr = alloca i64*, align 4
  %lo.addr = alloca i64*, align 4
  %count.addr = alloca i32, align 4
  store i64* %hi, i64** %hi.addr, align 4
  store i64* %lo, i64** %lo.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i64*, i64** %hi.addr, align 4, !dbg !2748
  %1 = load i64, i64* %0, align 8, !dbg !2749
  %2 = load i32, i32* %count.addr, align 4, !dbg !2750
  %sh_prom = zext i32 %2 to i64, !dbg !2751
  %shl = shl i64 %1, %sh_prom, !dbg !2751
  %3 = load i64*, i64** %lo.addr, align 4, !dbg !2752
  %4 = load i64, i64* %3, align 8, !dbg !2753
  %5 = load i32, i32* %count.addr, align 4, !dbg !2754
  %sub = sub i32 64, %5, !dbg !2755
  %sh_prom1 = zext i32 %sub to i64, !dbg !2756
  %shr = lshr i64 %4, %sh_prom1, !dbg !2756
  %or = or i64 %shl, %shr, !dbg !2757
  %6 = load i64*, i64** %hi.addr, align 4, !dbg !2758
  store i64 %or, i64* %6, align 8, !dbg !2759
  %7 = load i64*, i64** %lo.addr, align 4, !dbg !2760
  %8 = load i64, i64* %7, align 8, !dbg !2761
  %9 = load i32, i32* %count.addr, align 4, !dbg !2762
  %sh_prom2 = zext i32 %9 to i64, !dbg !2763
  %shl3 = shl i64 %8, %sh_prom2, !dbg !2763
  %10 = load i64*, i64** %lo.addr, align 4, !dbg !2764
  store i64 %shl3, i64* %10, align 8, !dbg !2765
  ret void, !dbg !2766
}

; Function Attrs: noinline nounwind
define internal void @wideRightShiftWithSticky(i64* noundef %hi, i64* noundef %lo, i32 noundef %count) #0 !dbg !2767 {
entry:
  %hi.addr = alloca i64*, align 4
  %lo.addr = alloca i64*, align 4
  %count.addr = alloca i32, align 4
  %sticky = alloca i8, align 1
  %sticky12 = alloca i8, align 1
  %sticky26 = alloca i8, align 1
  store i64* %hi, i64** %hi.addr, align 4
  store i64* %lo, i64** %lo.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4, !dbg !2768
  %cmp = icmp ult i32 %0, 64, !dbg !2769
  br i1 %cmp, label %if.then, label %if.else, !dbg !2768

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %lo.addr, align 4, !dbg !2770
  %2 = load i64, i64* %1, align 8, !dbg !2771
  %3 = load i32, i32* %count.addr, align 4, !dbg !2772
  %sub = sub i32 64, %3, !dbg !2773
  %sh_prom = zext i32 %sub to i64, !dbg !2774
  %shl = shl i64 %2, %sh_prom, !dbg !2774
  %tobool = icmp ne i64 %shl, 0, !dbg !2771
  %frombool = zext i1 %tobool to i8, !dbg !2775
  store i8 %frombool, i8* %sticky, align 1, !dbg !2775
  %4 = load i64*, i64** %hi.addr, align 4, !dbg !2776
  %5 = load i64, i64* %4, align 8, !dbg !2777
  %6 = load i32, i32* %count.addr, align 4, !dbg !2778
  %sub1 = sub i32 64, %6, !dbg !2779
  %sh_prom2 = zext i32 %sub1 to i64, !dbg !2780
  %shl3 = shl i64 %5, %sh_prom2, !dbg !2780
  %7 = load i64*, i64** %lo.addr, align 4, !dbg !2781
  %8 = load i64, i64* %7, align 8, !dbg !2782
  %9 = load i32, i32* %count.addr, align 4, !dbg !2783
  %sh_prom4 = zext i32 %9 to i64, !dbg !2784
  %shr = lshr i64 %8, %sh_prom4, !dbg !2784
  %or = or i64 %shl3, %shr, !dbg !2785
  %10 = load i8, i8* %sticky, align 1, !dbg !2786
  %tobool5 = trunc i8 %10 to i1, !dbg !2786
  %conv = zext i1 %tobool5 to i64, !dbg !2786
  %or6 = or i64 %or, %conv, !dbg !2787
  %11 = load i64*, i64** %lo.addr, align 4, !dbg !2788
  store i64 %or6, i64* %11, align 8, !dbg !2789
  %12 = load i64*, i64** %hi.addr, align 4, !dbg !2790
  %13 = load i64, i64* %12, align 8, !dbg !2791
  %14 = load i32, i32* %count.addr, align 4, !dbg !2792
  %sh_prom7 = zext i32 %14 to i64, !dbg !2793
  %shr8 = lshr i64 %13, %sh_prom7, !dbg !2793
  %15 = load i64*, i64** %hi.addr, align 4, !dbg !2794
  store i64 %shr8, i64* %15, align 8, !dbg !2795
  br label %if.end32, !dbg !2796

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %count.addr, align 4, !dbg !2797
  %cmp9 = icmp ult i32 %16, 128, !dbg !2798
  br i1 %cmp9, label %if.then11, label %if.else25, !dbg !2797

if.then11:                                        ; preds = %if.else
  %17 = load i64*, i64** %hi.addr, align 4, !dbg !2799
  %18 = load i64, i64* %17, align 8, !dbg !2800
  %19 = load i32, i32* %count.addr, align 4, !dbg !2801
  %sub13 = sub i32 128, %19, !dbg !2802
  %sh_prom14 = zext i32 %sub13 to i64, !dbg !2803
  %shl15 = shl i64 %18, %sh_prom14, !dbg !2803
  %20 = load i64*, i64** %lo.addr, align 4, !dbg !2804
  %21 = load i64, i64* %20, align 8, !dbg !2805
  %or16 = or i64 %shl15, %21, !dbg !2806
  %tobool17 = icmp ne i64 %or16, 0, !dbg !2800
  %frombool18 = zext i1 %tobool17 to i8, !dbg !2807
  store i8 %frombool18, i8* %sticky12, align 1, !dbg !2807
  %22 = load i64*, i64** %hi.addr, align 4, !dbg !2808
  %23 = load i64, i64* %22, align 8, !dbg !2809
  %24 = load i32, i32* %count.addr, align 4, !dbg !2810
  %sub19 = sub i32 %24, 64, !dbg !2811
  %sh_prom20 = zext i32 %sub19 to i64, !dbg !2812
  %shr21 = lshr i64 %23, %sh_prom20, !dbg !2812
  %25 = load i8, i8* %sticky12, align 1, !dbg !2813
  %tobool22 = trunc i8 %25 to i1, !dbg !2813
  %conv23 = zext i1 %tobool22 to i64, !dbg !2813
  %or24 = or i64 %shr21, %conv23, !dbg !2814
  %26 = load i64*, i64** %lo.addr, align 4, !dbg !2815
  store i64 %or24, i64* %26, align 8, !dbg !2816
  %27 = load i64*, i64** %hi.addr, align 4, !dbg !2817
  store i64 0, i64* %27, align 8, !dbg !2818
  br label %if.end, !dbg !2819

if.else25:                                        ; preds = %if.else
  %28 = load i64*, i64** %hi.addr, align 4, !dbg !2820
  %29 = load i64, i64* %28, align 8, !dbg !2821
  %30 = load i64*, i64** %lo.addr, align 4, !dbg !2822
  %31 = load i64, i64* %30, align 8, !dbg !2823
  %or27 = or i64 %29, %31, !dbg !2824
  %tobool28 = icmp ne i64 %or27, 0, !dbg !2821
  %frombool29 = zext i1 %tobool28 to i8, !dbg !2825
  store i8 %frombool29, i8* %sticky26, align 1, !dbg !2825
  %32 = load i8, i8* %sticky26, align 1, !dbg !2826
  %tobool30 = trunc i8 %32 to i1, !dbg !2826
  %conv31 = zext i1 %tobool30 to i64, !dbg !2826
  %33 = load i64*, i64** %lo.addr, align 4, !dbg !2827
  store i64 %conv31, i64* %33, align 8, !dbg !2828
  %34 = load i64*, i64** %hi.addr, align 4, !dbg !2829
  store i64 0, i64* %34, align 8, !dbg !2830
  br label %if.end

if.end:                                           ; preds = %if.else25, %if.then11
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then
  ret void, !dbg !2831
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.37(i64 noundef %a) #0 !dbg !2832 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2833
  %and = and i64 %0, -4294967296, !dbg !2834
  %tobool = icmp ne i64 %and, 0, !dbg !2834
  br i1 %tobool, label %if.then, label %if.else, !dbg !2833

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !2835
  %shr = lshr i64 %1, 32, !dbg !2836
  %conv = trunc i64 %shr to i32, !dbg !2835
  %2 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true), !dbg !2837
  store i32 %2, i32* %retval, align 4, !dbg !2838
  br label %return, !dbg !2838

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %a.addr, align 8, !dbg !2839
  %and1 = and i64 %3, 4294967295, !dbg !2840
  %conv2 = trunc i64 %and1 to i32, !dbg !2839
  %4 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 true), !dbg !2841
  %add = add nsw i32 32, %4, !dbg !2842
  store i32 %add, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2844
  ret i32 %5, !dbg !2844
}

; Function Attrs: noinline nounwind
define dso_local i64 @__muldi3(i64 noundef %a, i64 noundef %b) #0 !dbg !2845 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %x = alloca %union.udwords, align 8
  %y = alloca %union.udwords, align 8
  %r = alloca %union.udwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2846
  %all = bitcast %union.udwords* %x to i64*, !dbg !2847
  store i64 %0, i64* %all, align 8, !dbg !2848
  %1 = load i64, i64* %b.addr, align 8, !dbg !2849
  %all1 = bitcast %union.udwords* %y to i64*, !dbg !2850
  store i64 %1, i64* %all1, align 8, !dbg !2851
  %s = bitcast %union.udwords* %x to %struct.anon*, !dbg !2852
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2853
  %2 = load i32, i32* %low, align 8, !dbg !2853
  %s2 = bitcast %union.udwords* %y to %struct.anon*, !dbg !2854
  %low3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !2855
  %3 = load i32, i32* %low3, align 8, !dbg !2855
  %call = call i64 @__muldsi3(i32 noundef %2, i32 noundef %3) #4, !dbg !2856
  %all4 = bitcast %union.udwords* %r to i64*, !dbg !2857
  store i64 %call, i64* %all4, align 8, !dbg !2858
  %s5 = bitcast %union.udwords* %x to %struct.anon*, !dbg !2859
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !2860
  %4 = load i32, i32* %high, align 4, !dbg !2860
  %s6 = bitcast %union.udwords* %y to %struct.anon*, !dbg !2861
  %low7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 0, !dbg !2862
  %5 = load i32, i32* %low7, align 8, !dbg !2862
  %mul = mul i32 %4, %5, !dbg !2863
  %s8 = bitcast %union.udwords* %x to %struct.anon*, !dbg !2864
  %low9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 0, !dbg !2865
  %6 = load i32, i32* %low9, align 8, !dbg !2865
  %s10 = bitcast %union.udwords* %y to %struct.anon*, !dbg !2866
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !2867
  %7 = load i32, i32* %high11, align 4, !dbg !2867
  %mul12 = mul i32 %6, %7, !dbg !2868
  %add = add i32 %mul, %mul12, !dbg !2869
  %s13 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2870
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !2871
  %8 = load i32, i32* %high14, align 4, !dbg !2872
  %add15 = add i32 %8, %add, !dbg !2872
  store i32 %add15, i32* %high14, align 4, !dbg !2872
  %all16 = bitcast %union.udwords* %r to i64*, !dbg !2873
  %9 = load i64, i64* %all16, align 8, !dbg !2873
  ret i64 %9, !dbg !2874
}

; Function Attrs: noinline nounwind
define internal i64 @__muldsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !2875 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %r = alloca %union.udwords, align 8
  %bits_in_word_2 = alloca i32, align 4
  %lower_mask = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 16, i32* %bits_in_word_2, align 4, !dbg !2876
  store i32 65535, i32* %lower_mask, align 4, !dbg !2877
  %0 = load i32, i32* %a.addr, align 4, !dbg !2878
  %and = and i32 %0, 65535, !dbg !2879
  %1 = load i32, i32* %b.addr, align 4, !dbg !2880
  %and1 = and i32 %1, 65535, !dbg !2881
  %mul = mul i32 %and, %and1, !dbg !2882
  %s = bitcast %union.udwords* %r to %struct.anon*, !dbg !2883
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2884
  store i32 %mul, i32* %low, align 8, !dbg !2885
  %s2 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2886
  %low3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !2887
  %2 = load i32, i32* %low3, align 8, !dbg !2887
  %shr = lshr i32 %2, 16, !dbg !2888
  store i32 %shr, i32* %t, align 4, !dbg !2889
  %s4 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2890
  %low5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 0, !dbg !2891
  %3 = load i32, i32* %low5, align 8, !dbg !2892
  %and6 = and i32 %3, 65535, !dbg !2892
  store i32 %and6, i32* %low5, align 8, !dbg !2892
  %4 = load i32, i32* %a.addr, align 4, !dbg !2893
  %shr7 = lshr i32 %4, 16, !dbg !2894
  %5 = load i32, i32* %b.addr, align 4, !dbg !2895
  %and8 = and i32 %5, 65535, !dbg !2896
  %mul9 = mul i32 %shr7, %and8, !dbg !2897
  %6 = load i32, i32* %t, align 4, !dbg !2898
  %add = add i32 %6, %mul9, !dbg !2898
  store i32 %add, i32* %t, align 4, !dbg !2898
  %7 = load i32, i32* %t, align 4, !dbg !2899
  %and10 = and i32 %7, 65535, !dbg !2900
  %shl = shl i32 %and10, 16, !dbg !2901
  %s11 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2902
  %low12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 0, !dbg !2903
  %8 = load i32, i32* %low12, align 8, !dbg !2904
  %add13 = add i32 %8, %shl, !dbg !2904
  store i32 %add13, i32* %low12, align 8, !dbg !2904
  %9 = load i32, i32* %t, align 4, !dbg !2905
  %shr14 = lshr i32 %9, 16, !dbg !2906
  %s15 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2907
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s15, i32 0, i32 1, !dbg !2908
  store i32 %shr14, i32* %high, align 4, !dbg !2909
  %s16 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2910
  %low17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 0, !dbg !2911
  %10 = load i32, i32* %low17, align 8, !dbg !2911
  %shr18 = lshr i32 %10, 16, !dbg !2912
  store i32 %shr18, i32* %t, align 4, !dbg !2913
  %s19 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2914
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %s19, i32 0, i32 0, !dbg !2915
  %11 = load i32, i32* %low20, align 8, !dbg !2916
  %and21 = and i32 %11, 65535, !dbg !2916
  store i32 %and21, i32* %low20, align 8, !dbg !2916
  %12 = load i32, i32* %b.addr, align 4, !dbg !2917
  %shr22 = lshr i32 %12, 16, !dbg !2918
  %13 = load i32, i32* %a.addr, align 4, !dbg !2919
  %and23 = and i32 %13, 65535, !dbg !2920
  %mul24 = mul i32 %shr22, %and23, !dbg !2921
  %14 = load i32, i32* %t, align 4, !dbg !2922
  %add25 = add i32 %14, %mul24, !dbg !2922
  store i32 %add25, i32* %t, align 4, !dbg !2922
  %15 = load i32, i32* %t, align 4, !dbg !2923
  %and26 = and i32 %15, 65535, !dbg !2924
  %shl27 = shl i32 %and26, 16, !dbg !2925
  %s28 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2926
  %low29 = getelementptr inbounds %struct.anon, %struct.anon* %s28, i32 0, i32 0, !dbg !2927
  %16 = load i32, i32* %low29, align 8, !dbg !2928
  %add30 = add i32 %16, %shl27, !dbg !2928
  store i32 %add30, i32* %low29, align 8, !dbg !2928
  %17 = load i32, i32* %t, align 4, !dbg !2929
  %shr31 = lshr i32 %17, 16, !dbg !2930
  %s32 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2931
  %high33 = getelementptr inbounds %struct.anon, %struct.anon* %s32, i32 0, i32 1, !dbg !2932
  %18 = load i32, i32* %high33, align 4, !dbg !2933
  %add34 = add i32 %18, %shr31, !dbg !2933
  store i32 %add34, i32* %high33, align 4, !dbg !2933
  %19 = load i32, i32* %a.addr, align 4, !dbg !2934
  %shr35 = lshr i32 %19, 16, !dbg !2935
  %20 = load i32, i32* %b.addr, align 4, !dbg !2936
  %shr36 = lshr i32 %20, 16, !dbg !2937
  %mul37 = mul i32 %shr35, %shr36, !dbg !2938
  %s38 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2939
  %high39 = getelementptr inbounds %struct.anon, %struct.anon* %s38, i32 0, i32 1, !dbg !2940
  %21 = load i32, i32* %high39, align 4, !dbg !2941
  %add40 = add i32 %21, %mul37, !dbg !2941
  store i32 %add40, i32* %high39, align 4, !dbg !2941
  %all = bitcast %union.udwords* %r to i64*, !dbg !2942
  %22 = load i64, i64* %all, align 8, !dbg !2942
  ret i64 %22, !dbg !2943
}

; Function Attrs: noinline nounwind
define dso_local i64 @__mulodi4(i64 noundef %a, i64 noundef %b, i32* noundef %overflow) #0 !dbg !2944 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %overflow.addr = alloca i32*, align 4
  %N = alloca i32, align 4
  %MIN = alloca i64, align 8
  %MAX = alloca i64, align 8
  %result = alloca i64, align 8
  %sa = alloca i64, align 8
  %abs_a = alloca i64, align 8
  %sb = alloca i64, align 8
  %abs_b = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i32* %overflow, i32** %overflow.addr, align 4
  store i32 64, i32* %N, align 4, !dbg !2945
  store i64 -9223372036854775808, i64* %MIN, align 8, !dbg !2946
  store i64 9223372036854775807, i64* %MAX, align 8, !dbg !2947
  %0 = load i32*, i32** %overflow.addr, align 4, !dbg !2948
  store i32 0, i32* %0, align 4, !dbg !2949
  %1 = load i64, i64* %a.addr, align 8, !dbg !2950
  %2 = load i64, i64* %b.addr, align 8, !dbg !2951
  %mul = mul nsw i64 %1, %2, !dbg !2952
  store i64 %mul, i64* %result, align 8, !dbg !2953
  %3 = load i64, i64* %a.addr, align 8, !dbg !2954
  %cmp = icmp eq i64 %3, -9223372036854775808, !dbg !2955
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2954

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %b.addr, align 8, !dbg !2956
  %cmp1 = icmp ne i64 %4, 0, !dbg !2957
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2958

land.lhs.true:                                    ; preds = %if.then
  %5 = load i64, i64* %b.addr, align 8, !dbg !2959
  %cmp2 = icmp ne i64 %5, 1, !dbg !2960
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2956

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32*, i32** %overflow.addr, align 4, !dbg !2961
  store i32 1, i32* %6, align 4, !dbg !2962
  br label %if.end, !dbg !2963

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %7 = load i64, i64* %result, align 8, !dbg !2964
  store i64 %7, i64* %retval, align 8, !dbg !2965
  br label %return, !dbg !2965

if.end4:                                          ; preds = %entry
  %8 = load i64, i64* %b.addr, align 8, !dbg !2966
  %cmp5 = icmp eq i64 %8, -9223372036854775808, !dbg !2967
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2966

if.then6:                                         ; preds = %if.end4
  %9 = load i64, i64* %a.addr, align 8, !dbg !2968
  %cmp7 = icmp ne i64 %9, 0, !dbg !2969
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2970

land.lhs.true8:                                   ; preds = %if.then6
  %10 = load i64, i64* %a.addr, align 8, !dbg !2971
  %cmp9 = icmp ne i64 %10, 1, !dbg !2972
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2968

if.then10:                                        ; preds = %land.lhs.true8
  %11 = load i32*, i32** %overflow.addr, align 4, !dbg !2973
  store i32 1, i32* %11, align 4, !dbg !2974
  br label %if.end11, !dbg !2975

if.end11:                                         ; preds = %if.then10, %land.lhs.true8, %if.then6
  %12 = load i64, i64* %result, align 8, !dbg !2976
  store i64 %12, i64* %retval, align 8, !dbg !2977
  br label %return, !dbg !2977

if.end12:                                         ; preds = %if.end4
  %13 = load i64, i64* %a.addr, align 8, !dbg !2978
  %shr = ashr i64 %13, 63, !dbg !2979
  store i64 %shr, i64* %sa, align 8, !dbg !2980
  %14 = load i64, i64* %a.addr, align 8, !dbg !2981
  %15 = load i64, i64* %sa, align 8, !dbg !2982
  %xor = xor i64 %14, %15, !dbg !2983
  %16 = load i64, i64* %sa, align 8, !dbg !2984
  %sub = sub nsw i64 %xor, %16, !dbg !2985
  store i64 %sub, i64* %abs_a, align 8, !dbg !2986
  %17 = load i64, i64* %b.addr, align 8, !dbg !2987
  %shr13 = ashr i64 %17, 63, !dbg !2988
  store i64 %shr13, i64* %sb, align 8, !dbg !2989
  %18 = load i64, i64* %b.addr, align 8, !dbg !2990
  %19 = load i64, i64* %sb, align 8, !dbg !2991
  %xor14 = xor i64 %18, %19, !dbg !2992
  %20 = load i64, i64* %sb, align 8, !dbg !2993
  %sub15 = sub nsw i64 %xor14, %20, !dbg !2994
  store i64 %sub15, i64* %abs_b, align 8, !dbg !2995
  %21 = load i64, i64* %abs_a, align 8, !dbg !2996
  %cmp16 = icmp slt i64 %21, 2, !dbg !2997
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !2998

lor.lhs.false:                                    ; preds = %if.end12
  %22 = load i64, i64* %abs_b, align 8, !dbg !2999
  %cmp17 = icmp slt i64 %22, 2, !dbg !3000
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2996

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  %23 = load i64, i64* %result, align 8, !dbg !3001
  store i64 %23, i64* %retval, align 8, !dbg !3002
  br label %return, !dbg !3002

if.end19:                                         ; preds = %lor.lhs.false
  %24 = load i64, i64* %sa, align 8, !dbg !3003
  %25 = load i64, i64* %sb, align 8, !dbg !3004
  %cmp20 = icmp eq i64 %24, %25, !dbg !3005
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !3003

if.then21:                                        ; preds = %if.end19
  %26 = load i64, i64* %abs_a, align 8, !dbg !3006
  %27 = load i64, i64* %abs_b, align 8, !dbg !3007
  %div = sdiv i64 9223372036854775807, %27, !dbg !3008
  %cmp22 = icmp sgt i64 %26, %div, !dbg !3009
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3006

if.then23:                                        ; preds = %if.then21
  %28 = load i32*, i32** %overflow.addr, align 4, !dbg !3010
  store i32 1, i32* %28, align 4, !dbg !3011
  br label %if.end24, !dbg !3012

if.end24:                                         ; preds = %if.then23, %if.then21
  br label %if.end30, !dbg !3013

if.else:                                          ; preds = %if.end19
  %29 = load i64, i64* %abs_a, align 8, !dbg !3014
  %30 = load i64, i64* %abs_b, align 8, !dbg !3015
  %sub25 = sub nsw i64 0, %30, !dbg !3016
  %div26 = sdiv i64 -9223372036854775808, %sub25, !dbg !3017
  %cmp27 = icmp sgt i64 %29, %div26, !dbg !3018
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3014

if.then28:                                        ; preds = %if.else
  %31 = load i32*, i32** %overflow.addr, align 4, !dbg !3019
  store i32 1, i32* %31, align 4, !dbg !3020
  br label %if.end29, !dbg !3021

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  %32 = load i64, i64* %result, align 8, !dbg !3022
  store i64 %32, i64* %retval, align 8, !dbg !3023
  br label %return, !dbg !3023

return:                                           ; preds = %if.end30, %if.then18, %if.end11, %if.end
  %33 = load i64, i64* %retval, align 8, !dbg !3024
  ret i64 %33, !dbg !3024
}

; Function Attrs: noinline nounwind
define dso_local i32 @__mulosi4(i32 noundef %a, i32 noundef %b, i32* noundef %overflow) #0 !dbg !3025 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %overflow.addr = alloca i32*, align 4
  %N = alloca i32, align 4
  %MIN = alloca i32, align 4
  %MAX = alloca i32, align 4
  %result = alloca i32, align 4
  %sa = alloca i32, align 4
  %abs_a = alloca i32, align 4
  %sb = alloca i32, align 4
  %abs_b = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %overflow, i32** %overflow.addr, align 4
  store i32 32, i32* %N, align 4, !dbg !3026
  store i32 -2147483648, i32* %MIN, align 4, !dbg !3027
  store i32 2147483647, i32* %MAX, align 4, !dbg !3028
  %0 = load i32*, i32** %overflow.addr, align 4, !dbg !3029
  store i32 0, i32* %0, align 4, !dbg !3030
  %1 = load i32, i32* %a.addr, align 4, !dbg !3031
  %2 = load i32, i32* %b.addr, align 4, !dbg !3032
  %mul = mul nsw i32 %1, %2, !dbg !3033
  store i32 %mul, i32* %result, align 4, !dbg !3034
  %3 = load i32, i32* %a.addr, align 4, !dbg !3035
  %cmp = icmp eq i32 %3, -2147483648, !dbg !3036
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3035

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %b.addr, align 4, !dbg !3037
  %cmp1 = icmp ne i32 %4, 0, !dbg !3038
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !3039

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %b.addr, align 4, !dbg !3040
  %cmp2 = icmp ne i32 %5, 1, !dbg !3041
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3037

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32*, i32** %overflow.addr, align 4, !dbg !3042
  store i32 1, i32* %6, align 4, !dbg !3043
  br label %if.end, !dbg !3044

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %7 = load i32, i32* %result, align 4, !dbg !3045
  store i32 %7, i32* %retval, align 4, !dbg !3046
  br label %return, !dbg !3046

if.end4:                                          ; preds = %entry
  %8 = load i32, i32* %b.addr, align 4, !dbg !3047
  %cmp5 = icmp eq i32 %8, -2147483648, !dbg !3048
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !3047

if.then6:                                         ; preds = %if.end4
  %9 = load i32, i32* %a.addr, align 4, !dbg !3049
  %cmp7 = icmp ne i32 %9, 0, !dbg !3050
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3051

land.lhs.true8:                                   ; preds = %if.then6
  %10 = load i32, i32* %a.addr, align 4, !dbg !3052
  %cmp9 = icmp ne i32 %10, 1, !dbg !3053
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3049

if.then10:                                        ; preds = %land.lhs.true8
  %11 = load i32*, i32** %overflow.addr, align 4, !dbg !3054
  store i32 1, i32* %11, align 4, !dbg !3055
  br label %if.end11, !dbg !3056

if.end11:                                         ; preds = %if.then10, %land.lhs.true8, %if.then6
  %12 = load i32, i32* %result, align 4, !dbg !3057
  store i32 %12, i32* %retval, align 4, !dbg !3058
  br label %return, !dbg !3058

if.end12:                                         ; preds = %if.end4
  %13 = load i32, i32* %a.addr, align 4, !dbg !3059
  %shr = ashr i32 %13, 31, !dbg !3060
  store i32 %shr, i32* %sa, align 4, !dbg !3061
  %14 = load i32, i32* %a.addr, align 4, !dbg !3062
  %15 = load i32, i32* %sa, align 4, !dbg !3063
  %xor = xor i32 %14, %15, !dbg !3064
  %16 = load i32, i32* %sa, align 4, !dbg !3065
  %sub = sub nsw i32 %xor, %16, !dbg !3066
  store i32 %sub, i32* %abs_a, align 4, !dbg !3067
  %17 = load i32, i32* %b.addr, align 4, !dbg !3068
  %shr13 = ashr i32 %17, 31, !dbg !3069
  store i32 %shr13, i32* %sb, align 4, !dbg !3070
  %18 = load i32, i32* %b.addr, align 4, !dbg !3071
  %19 = load i32, i32* %sb, align 4, !dbg !3072
  %xor14 = xor i32 %18, %19, !dbg !3073
  %20 = load i32, i32* %sb, align 4, !dbg !3074
  %sub15 = sub nsw i32 %xor14, %20, !dbg !3075
  store i32 %sub15, i32* %abs_b, align 4, !dbg !3076
  %21 = load i32, i32* %abs_a, align 4, !dbg !3077
  %cmp16 = icmp slt i32 %21, 2, !dbg !3078
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !3079

lor.lhs.false:                                    ; preds = %if.end12
  %22 = load i32, i32* %abs_b, align 4, !dbg !3080
  %cmp17 = icmp slt i32 %22, 2, !dbg !3081
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3077

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  %23 = load i32, i32* %result, align 4, !dbg !3082
  store i32 %23, i32* %retval, align 4, !dbg !3083
  br label %return, !dbg !3083

if.end19:                                         ; preds = %lor.lhs.false
  %24 = load i32, i32* %sa, align 4, !dbg !3084
  %25 = load i32, i32* %sb, align 4, !dbg !3085
  %cmp20 = icmp eq i32 %24, %25, !dbg !3086
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !3084

if.then21:                                        ; preds = %if.end19
  %26 = load i32, i32* %abs_a, align 4, !dbg !3087
  %27 = load i32, i32* %abs_b, align 4, !dbg !3088
  %div = sdiv i32 2147483647, %27, !dbg !3089
  %cmp22 = icmp sgt i32 %26, %div, !dbg !3090
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3087

if.then23:                                        ; preds = %if.then21
  %28 = load i32*, i32** %overflow.addr, align 4, !dbg !3091
  store i32 1, i32* %28, align 4, !dbg !3092
  br label %if.end24, !dbg !3093

if.end24:                                         ; preds = %if.then23, %if.then21
  br label %if.end30, !dbg !3094

if.else:                                          ; preds = %if.end19
  %29 = load i32, i32* %abs_a, align 4, !dbg !3095
  %30 = load i32, i32* %abs_b, align 4, !dbg !3096
  %sub25 = sub nsw i32 0, %30, !dbg !3097
  %div26 = sdiv i32 -2147483648, %sub25, !dbg !3098
  %cmp27 = icmp sgt i32 %29, %div26, !dbg !3099
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3095

if.then28:                                        ; preds = %if.else
  %31 = load i32*, i32** %overflow.addr, align 4, !dbg !3100
  store i32 1, i32* %31, align 4, !dbg !3101
  br label %if.end29, !dbg !3102

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  %32 = load i32, i32* %result, align 4, !dbg !3103
  store i32 %32, i32* %retval, align 4, !dbg !3104
  br label %return, !dbg !3104

return:                                           ; preds = %if.end30, %if.then18, %if.end11, %if.end
  %33 = load i32, i32* %retval, align 4, !dbg !3105
  ret i32 %33, !dbg !3105
}

; Function Attrs: noinline nounwind
define dso_local float @__mulsf3(float noundef %a, float noundef %b) #0 !dbg !3106 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3107
  %1 = load float, float* %b.addr, align 4, !dbg !3108
  %call = call float @__mulXf3__.38(float noundef %0, float noundef %1) #4, !dbg !3109
  ret float %call, !dbg !3110
}

; Function Attrs: noinline nounwind
define internal float @__mulXf3__.38(float noundef %a, float noundef %b) #0 !dbg !3111 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aExponent = alloca i32, align 4
  %bExponent = alloca i32, align 4
  %productSign = alloca i32, align 4
  %aSignificand = alloca i32, align 4
  %bSignificand = alloca i32, align 4
  %scale = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  %productHi = alloca i32, align 4
  %productLo = alloca i32, align 4
  %productExponent = alloca i32, align 4
  %shift = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3112
  %call = call i32 @toRep.39(float noundef %0) #4, !dbg !3113
  %shr = lshr i32 %call, 23, !dbg !3114
  %and = and i32 %shr, 255, !dbg !3115
  store i32 %and, i32* %aExponent, align 4, !dbg !3116
  %1 = load float, float* %b.addr, align 4, !dbg !3117
  %call1 = call i32 @toRep.39(float noundef %1) #4, !dbg !3118
  %shr2 = lshr i32 %call1, 23, !dbg !3119
  %and3 = and i32 %shr2, 255, !dbg !3120
  store i32 %and3, i32* %bExponent, align 4, !dbg !3121
  %2 = load float, float* %a.addr, align 4, !dbg !3122
  %call4 = call i32 @toRep.39(float noundef %2) #4, !dbg !3123
  %3 = load float, float* %b.addr, align 4, !dbg !3124
  %call5 = call i32 @toRep.39(float noundef %3) #4, !dbg !3125
  %xor = xor i32 %call4, %call5, !dbg !3126
  %and6 = and i32 %xor, -2147483648, !dbg !3127
  store i32 %and6, i32* %productSign, align 4, !dbg !3128
  %4 = load float, float* %a.addr, align 4, !dbg !3129
  %call7 = call i32 @toRep.39(float noundef %4) #4, !dbg !3130
  %and8 = and i32 %call7, 8388607, !dbg !3131
  store i32 %and8, i32* %aSignificand, align 4, !dbg !3132
  %5 = load float, float* %b.addr, align 4, !dbg !3133
  %call9 = call i32 @toRep.39(float noundef %5) #4, !dbg !3134
  %and10 = and i32 %call9, 8388607, !dbg !3135
  store i32 %and10, i32* %bSignificand, align 4, !dbg !3136
  store i32 0, i32* %scale, align 4, !dbg !3137
  %6 = load i32, i32* %aExponent, align 4, !dbg !3138
  %sub = sub i32 %6, 1, !dbg !3139
  %cmp = icmp uge i32 %sub, 254, !dbg !3140
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3141

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !3142
  %sub11 = sub i32 %7, 1, !dbg !3143
  %cmp12 = icmp uge i32 %sub11, 254, !dbg !3144
  br i1 %cmp12, label %if.then, label %if.end60, !dbg !3138

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load float, float* %a.addr, align 4, !dbg !3145
  %call13 = call i32 @toRep.39(float noundef %8) #4, !dbg !3146
  %and14 = and i32 %call13, 2147483647, !dbg !3147
  store i32 %and14, i32* %aAbs, align 4, !dbg !3148
  %9 = load float, float* %b.addr, align 4, !dbg !3149
  %call15 = call i32 @toRep.39(float noundef %9) #4, !dbg !3150
  %and16 = and i32 %call15, 2147483647, !dbg !3151
  store i32 %and16, i32* %bAbs, align 4, !dbg !3152
  %10 = load i32, i32* %aAbs, align 4, !dbg !3153
  %cmp17 = icmp ugt i32 %10, 2139095040, !dbg !3154
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !3153

if.then18:                                        ; preds = %if.then
  %11 = load float, float* %a.addr, align 4, !dbg !3155
  %call19 = call i32 @toRep.39(float noundef %11) #4, !dbg !3156
  %or = or i32 %call19, 4194304, !dbg !3157
  %call20 = call float @fromRep.40(i32 noundef %or) #4, !dbg !3158
  store float %call20, float* %retval, align 4, !dbg !3159
  br label %return, !dbg !3159

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %bAbs, align 4, !dbg !3160
  %cmp21 = icmp ugt i32 %12, 2139095040, !dbg !3161
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !3160

if.then22:                                        ; preds = %if.end
  %13 = load float, float* %b.addr, align 4, !dbg !3162
  %call23 = call i32 @toRep.39(float noundef %13) #4, !dbg !3163
  %or24 = or i32 %call23, 4194304, !dbg !3164
  %call25 = call float @fromRep.40(i32 noundef %or24) #4, !dbg !3165
  store float %call25, float* %retval, align 4, !dbg !3166
  br label %return, !dbg !3166

if.end26:                                         ; preds = %if.end
  %14 = load i32, i32* %aAbs, align 4, !dbg !3167
  %cmp27 = icmp eq i32 %14, 2139095040, !dbg !3168
  br i1 %cmp27, label %if.then28, label %if.end33, !dbg !3167

if.then28:                                        ; preds = %if.end26
  %15 = load i32, i32* %bAbs, align 4, !dbg !3169
  %tobool = icmp ne i32 %15, 0, !dbg !3169
  br i1 %tobool, label %if.then29, label %if.else, !dbg !3169

if.then29:                                        ; preds = %if.then28
  %16 = load i32, i32* %aAbs, align 4, !dbg !3170
  %17 = load i32, i32* %productSign, align 4, !dbg !3171
  %or30 = or i32 %16, %17, !dbg !3172
  %call31 = call float @fromRep.40(i32 noundef %or30) #4, !dbg !3173
  store float %call31, float* %retval, align 4, !dbg !3174
  br label %return, !dbg !3174

if.else:                                          ; preds = %if.then28
  %call32 = call float @fromRep.40(i32 noundef 2143289344) #4, !dbg !3175
  store float %call32, float* %retval, align 4, !dbg !3176
  br label %return, !dbg !3176

if.end33:                                         ; preds = %if.end26
  %18 = load i32, i32* %bAbs, align 4, !dbg !3177
  %cmp34 = icmp eq i32 %18, 2139095040, !dbg !3178
  br i1 %cmp34, label %if.then35, label %if.end42, !dbg !3177

if.then35:                                        ; preds = %if.end33
  %19 = load i32, i32* %aAbs, align 4, !dbg !3179
  %tobool36 = icmp ne i32 %19, 0, !dbg !3179
  br i1 %tobool36, label %if.then37, label %if.else40, !dbg !3179

if.then37:                                        ; preds = %if.then35
  %20 = load i32, i32* %bAbs, align 4, !dbg !3180
  %21 = load i32, i32* %productSign, align 4, !dbg !3181
  %or38 = or i32 %20, %21, !dbg !3182
  %call39 = call float @fromRep.40(i32 noundef %or38) #4, !dbg !3183
  store float %call39, float* %retval, align 4, !dbg !3184
  br label %return, !dbg !3184

if.else40:                                        ; preds = %if.then35
  %call41 = call float @fromRep.40(i32 noundef 2143289344) #4, !dbg !3185
  store float %call41, float* %retval, align 4, !dbg !3186
  br label %return, !dbg !3186

if.end42:                                         ; preds = %if.end33
  %22 = load i32, i32* %aAbs, align 4, !dbg !3187
  %tobool43 = icmp ne i32 %22, 0, !dbg !3187
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !3188

if.then44:                                        ; preds = %if.end42
  %23 = load i32, i32* %productSign, align 4, !dbg !3189
  %call45 = call float @fromRep.40(i32 noundef %23) #4, !dbg !3190
  store float %call45, float* %retval, align 4, !dbg !3191
  br label %return, !dbg !3191

if.end46:                                         ; preds = %if.end42
  %24 = load i32, i32* %bAbs, align 4, !dbg !3192
  %tobool47 = icmp ne i32 %24, 0, !dbg !3192
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !3193

if.then48:                                        ; preds = %if.end46
  %25 = load i32, i32* %productSign, align 4, !dbg !3194
  %call49 = call float @fromRep.40(i32 noundef %25) #4, !dbg !3195
  store float %call49, float* %retval, align 4, !dbg !3196
  br label %return, !dbg !3196

if.end50:                                         ; preds = %if.end46
  %26 = load i32, i32* %aAbs, align 4, !dbg !3197
  %cmp51 = icmp ult i32 %26, 8388608, !dbg !3198
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !3197

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @normalize.41(i32* noundef %aSignificand) #4, !dbg !3199
  %27 = load i32, i32* %scale, align 4, !dbg !3200
  %add = add nsw i32 %27, %call53, !dbg !3200
  store i32 %add, i32* %scale, align 4, !dbg !3200
  br label %if.end54, !dbg !3201

if.end54:                                         ; preds = %if.then52, %if.end50
  %28 = load i32, i32* %bAbs, align 4, !dbg !3202
  %cmp55 = icmp ult i32 %28, 8388608, !dbg !3203
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !3202

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @normalize.41(i32* noundef %bSignificand) #4, !dbg !3204
  %29 = load i32, i32* %scale, align 4, !dbg !3205
  %add58 = add nsw i32 %29, %call57, !dbg !3205
  store i32 %add58, i32* %scale, align 4, !dbg !3205
  br label %if.end59, !dbg !3206

if.end59:                                         ; preds = %if.then56, %if.end54
  br label %if.end60, !dbg !3207

if.end60:                                         ; preds = %if.end59, %lor.lhs.false
  %30 = load i32, i32* %aSignificand, align 4, !dbg !3208
  %or61 = or i32 %30, 8388608, !dbg !3208
  store i32 %or61, i32* %aSignificand, align 4, !dbg !3208
  %31 = load i32, i32* %bSignificand, align 4, !dbg !3209
  %or62 = or i32 %31, 8388608, !dbg !3209
  store i32 %or62, i32* %bSignificand, align 4, !dbg !3209
  %32 = load i32, i32* %aSignificand, align 4, !dbg !3210
  %33 = load i32, i32* %bSignificand, align 4, !dbg !3211
  %shl = shl i32 %33, 8, !dbg !3212
  call void @wideMultiply.42(i32 noundef %32, i32 noundef %shl, i32* noundef %productHi, i32* noundef %productLo) #4, !dbg !3213
  %34 = load i32, i32* %aExponent, align 4, !dbg !3214
  %35 = load i32, i32* %bExponent, align 4, !dbg !3215
  %add63 = add i32 %34, %35, !dbg !3216
  %sub64 = sub i32 %add63, 127, !dbg !3217
  %36 = load i32, i32* %scale, align 4, !dbg !3218
  %add65 = add i32 %sub64, %36, !dbg !3219
  store i32 %add65, i32* %productExponent, align 4, !dbg !3220
  %37 = load i32, i32* %productHi, align 4, !dbg !3221
  %and66 = and i32 %37, 8388608, !dbg !3222
  %tobool67 = icmp ne i32 %and66, 0, !dbg !3222
  br i1 %tobool67, label %if.then68, label %if.else69, !dbg !3221

if.then68:                                        ; preds = %if.end60
  %38 = load i32, i32* %productExponent, align 4, !dbg !3223
  %inc = add nsw i32 %38, 1, !dbg !3223
  store i32 %inc, i32* %productExponent, align 4, !dbg !3223
  br label %if.end70, !dbg !3224

if.else69:                                        ; preds = %if.end60
  call void @wideLeftShift.43(i32* noundef %productHi, i32* noundef %productLo, i32 noundef 1) #4, !dbg !3225
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  %39 = load i32, i32* %productExponent, align 4, !dbg !3226
  %cmp71 = icmp sge i32 %39, 255, !dbg !3227
  br i1 %cmp71, label %if.then72, label %if.end75, !dbg !3226

if.then72:                                        ; preds = %if.end70
  %40 = load i32, i32* %productSign, align 4, !dbg !3228
  %or73 = or i32 2139095040, %40, !dbg !3229
  %call74 = call float @fromRep.40(i32 noundef %or73) #4, !dbg !3230
  store float %call74, float* %retval, align 4, !dbg !3231
  br label %return, !dbg !3231

if.end75:                                         ; preds = %if.end70
  %41 = load i32, i32* %productExponent, align 4, !dbg !3232
  %cmp76 = icmp sle i32 %41, 0, !dbg !3233
  br i1 %cmp76, label %if.then77, label %if.else83, !dbg !3232

if.then77:                                        ; preds = %if.end75
  %42 = load i32, i32* %productExponent, align 4, !dbg !3234
  %sub78 = sub i32 1, %42, !dbg !3235
  store i32 %sub78, i32* %shift, align 4, !dbg !3236
  %43 = load i32, i32* %shift, align 4, !dbg !3237
  %cmp79 = icmp uge i32 %43, 32, !dbg !3238
  br i1 %cmp79, label %if.then80, label %if.end82, !dbg !3237

if.then80:                                        ; preds = %if.then77
  %44 = load i32, i32* %productSign, align 4, !dbg !3239
  %call81 = call float @fromRep.40(i32 noundef %44) #4, !dbg !3240
  store float %call81, float* %retval, align 4, !dbg !3241
  br label %return, !dbg !3241

if.end82:                                         ; preds = %if.then77
  %45 = load i32, i32* %shift, align 4, !dbg !3242
  call void @wideRightShiftWithSticky.44(i32* noundef %productHi, i32* noundef %productLo, i32 noundef %45) #4, !dbg !3243
  br label %if.end87, !dbg !3244

if.else83:                                        ; preds = %if.end75
  %46 = load i32, i32* %productHi, align 4, !dbg !3245
  %and84 = and i32 %46, 8388607, !dbg !3245
  store i32 %and84, i32* %productHi, align 4, !dbg !3245
  %47 = load i32, i32* %productExponent, align 4, !dbg !3246
  %shl85 = shl i32 %47, 23, !dbg !3247
  %48 = load i32, i32* %productHi, align 4, !dbg !3248
  %or86 = or i32 %48, %shl85, !dbg !3248
  store i32 %or86, i32* %productHi, align 4, !dbg !3248
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.end82
  %49 = load i32, i32* %productSign, align 4, !dbg !3249
  %50 = load i32, i32* %productHi, align 4, !dbg !3250
  %or88 = or i32 %50, %49, !dbg !3250
  store i32 %or88, i32* %productHi, align 4, !dbg !3250
  %51 = load i32, i32* %productLo, align 4, !dbg !3251
  %cmp89 = icmp ugt i32 %51, -2147483648, !dbg !3252
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !3251

if.then90:                                        ; preds = %if.end87
  %52 = load i32, i32* %productHi, align 4, !dbg !3253
  %inc91 = add i32 %52, 1, !dbg !3253
  store i32 %inc91, i32* %productHi, align 4, !dbg !3253
  br label %if.end92, !dbg !3254

if.end92:                                         ; preds = %if.then90, %if.end87
  %53 = load i32, i32* %productLo, align 4, !dbg !3255
  %cmp93 = icmp eq i32 %53, -2147483648, !dbg !3256
  br i1 %cmp93, label %if.then94, label %if.end97, !dbg !3255

if.then94:                                        ; preds = %if.end92
  %54 = load i32, i32* %productHi, align 4, !dbg !3257
  %and95 = and i32 %54, 1, !dbg !3258
  %55 = load i32, i32* %productHi, align 4, !dbg !3259
  %add96 = add i32 %55, %and95, !dbg !3259
  store i32 %add96, i32* %productHi, align 4, !dbg !3259
  br label %if.end97, !dbg !3260

if.end97:                                         ; preds = %if.then94, %if.end92
  %56 = load i32, i32* %productHi, align 4, !dbg !3261
  %call98 = call float @fromRep.40(i32 noundef %56) #4, !dbg !3262
  store float %call98, float* %retval, align 4, !dbg !3263
  br label %return, !dbg !3263

return:                                           ; preds = %if.end97, %if.then80, %if.then72, %if.then48, %if.then44, %if.else40, %if.then37, %if.else, %if.then29, %if.then22, %if.then18
  %57 = load float, float* %retval, align 4, !dbg !3264
  ret float %57, !dbg !3264
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.39(float noundef %x) #0 !dbg !3265 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3266
  %0 = load float, float* %x.addr, align 4, !dbg !3267
  store float %0, float* %f, align 4, !dbg !3266
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3268
  %1 = load i32, i32* %i, align 4, !dbg !3268
  ret i32 %1, !dbg !3269
}

; Function Attrs: noinline nounwind
define internal float @fromRep.40(i32 noundef %x) #0 !dbg !3270 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3271
  %0 = load i32, i32* %x.addr, align 4, !dbg !3272
  store i32 %0, i32* %i, align 4, !dbg !3271
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3273
  %1 = load float, float* %f, align 4, !dbg !3273
  ret float %1, !dbg !3274
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.41(i32* noundef %significand) #0 !dbg !3275 {
entry:
  %significand.addr = alloca i32*, align 4
  %shift = alloca i32, align 4
  store i32* %significand, i32** %significand.addr, align 4
  %0 = load i32*, i32** %significand.addr, align 4, !dbg !3276
  %1 = load i32, i32* %0, align 4, !dbg !3277
  %call = call i32 @rep_clz.45(i32 noundef %1) #4, !dbg !3278
  %call1 = call i32 @rep_clz.45(i32 noundef 8388608) #4, !dbg !3279
  %sub = sub nsw i32 %call, %call1, !dbg !3280
  store i32 %sub, i32* %shift, align 4, !dbg !3281
  %2 = load i32, i32* %shift, align 4, !dbg !3282
  %3 = load i32*, i32** %significand.addr, align 4, !dbg !3283
  %4 = load i32, i32* %3, align 4, !dbg !3284
  %shl = shl i32 %4, %2, !dbg !3284
  store i32 %shl, i32* %3, align 4, !dbg !3284
  %5 = load i32, i32* %shift, align 4, !dbg !3285
  %sub2 = sub nsw i32 1, %5, !dbg !3286
  ret i32 %sub2, !dbg !3287
}

; Function Attrs: noinline nounwind
define internal void @wideMultiply.42(i32 noundef %a, i32 noundef %b, i32* noundef %hi, i32* noundef %lo) #0 !dbg !3288 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %hi.addr = alloca i32*, align 4
  %lo.addr = alloca i32*, align 4
  %product = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %hi, i32** %hi.addr, align 4
  store i32* %lo, i32** %lo.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !3289
  %conv = zext i32 %0 to i64, !dbg !3290
  %1 = load i32, i32* %b.addr, align 4, !dbg !3291
  %conv1 = zext i32 %1 to i64, !dbg !3291
  %mul = mul i64 %conv, %conv1, !dbg !3292
  store i64 %mul, i64* %product, align 8, !dbg !3293
  %2 = load i64, i64* %product, align 8, !dbg !3294
  %shr = lshr i64 %2, 32, !dbg !3295
  %conv2 = trunc i64 %shr to i32, !dbg !3294
  %3 = load i32*, i32** %hi.addr, align 4, !dbg !3296
  store i32 %conv2, i32* %3, align 4, !dbg !3297
  %4 = load i64, i64* %product, align 8, !dbg !3298
  %conv3 = trunc i64 %4 to i32, !dbg !3298
  %5 = load i32*, i32** %lo.addr, align 4, !dbg !3299
  store i32 %conv3, i32* %5, align 4, !dbg !3300
  ret void, !dbg !3301
}

; Function Attrs: noinline nounwind
define internal void @wideLeftShift.43(i32* noundef %hi, i32* noundef %lo, i32 noundef %count) #0 !dbg !3302 {
entry:
  %hi.addr = alloca i32*, align 4
  %lo.addr = alloca i32*, align 4
  %count.addr = alloca i32, align 4
  store i32* %hi, i32** %hi.addr, align 4
  store i32* %lo, i32** %lo.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32*, i32** %hi.addr, align 4, !dbg !3303
  %1 = load i32, i32* %0, align 4, !dbg !3304
  %2 = load i32, i32* %count.addr, align 4, !dbg !3305
  %shl = shl i32 %1, %2, !dbg !3306
  %3 = load i32*, i32** %lo.addr, align 4, !dbg !3307
  %4 = load i32, i32* %3, align 4, !dbg !3308
  %5 = load i32, i32* %count.addr, align 4, !dbg !3309
  %sub = sub i32 32, %5, !dbg !3310
  %shr = lshr i32 %4, %sub, !dbg !3311
  %or = or i32 %shl, %shr, !dbg !3312
  %6 = load i32*, i32** %hi.addr, align 4, !dbg !3313
  store i32 %or, i32* %6, align 4, !dbg !3314
  %7 = load i32*, i32** %lo.addr, align 4, !dbg !3315
  %8 = load i32, i32* %7, align 4, !dbg !3316
  %9 = load i32, i32* %count.addr, align 4, !dbg !3317
  %shl1 = shl i32 %8, %9, !dbg !3318
  %10 = load i32*, i32** %lo.addr, align 4, !dbg !3319
  store i32 %shl1, i32* %10, align 4, !dbg !3320
  ret void, !dbg !3321
}

; Function Attrs: noinline nounwind
define internal void @wideRightShiftWithSticky.44(i32* noundef %hi, i32* noundef %lo, i32 noundef %count) #0 !dbg !3322 {
entry:
  %hi.addr = alloca i32*, align 4
  %lo.addr = alloca i32*, align 4
  %count.addr = alloca i32, align 4
  %sticky = alloca i8, align 1
  %sticky9 = alloca i8, align 1
  %sticky21 = alloca i8, align 1
  store i32* %hi, i32** %hi.addr, align 4
  store i32* %lo, i32** %lo.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4, !dbg !3323
  %cmp = icmp ult i32 %0, 32, !dbg !3324
  br i1 %cmp, label %if.then, label %if.else, !dbg !3323

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %lo.addr, align 4, !dbg !3325
  %2 = load i32, i32* %1, align 4, !dbg !3326
  %3 = load i32, i32* %count.addr, align 4, !dbg !3327
  %sub = sub i32 32, %3, !dbg !3328
  %shl = shl i32 %2, %sub, !dbg !3329
  %tobool = icmp ne i32 %shl, 0, !dbg !3326
  %frombool = zext i1 %tobool to i8, !dbg !3330
  store i8 %frombool, i8* %sticky, align 1, !dbg !3330
  %4 = load i32*, i32** %hi.addr, align 4, !dbg !3331
  %5 = load i32, i32* %4, align 4, !dbg !3332
  %6 = load i32, i32* %count.addr, align 4, !dbg !3333
  %sub1 = sub i32 32, %6, !dbg !3334
  %shl2 = shl i32 %5, %sub1, !dbg !3335
  %7 = load i32*, i32** %lo.addr, align 4, !dbg !3336
  %8 = load i32, i32* %7, align 4, !dbg !3337
  %9 = load i32, i32* %count.addr, align 4, !dbg !3338
  %shr = lshr i32 %8, %9, !dbg !3339
  %or = or i32 %shl2, %shr, !dbg !3340
  %10 = load i8, i8* %sticky, align 1, !dbg !3341
  %tobool3 = trunc i8 %10 to i1, !dbg !3341
  %conv = zext i1 %tobool3 to i32, !dbg !3341
  %or4 = or i32 %or, %conv, !dbg !3342
  %11 = load i32*, i32** %lo.addr, align 4, !dbg !3343
  store i32 %or4, i32* %11, align 4, !dbg !3344
  %12 = load i32*, i32** %hi.addr, align 4, !dbg !3345
  %13 = load i32, i32* %12, align 4, !dbg !3346
  %14 = load i32, i32* %count.addr, align 4, !dbg !3347
  %shr5 = lshr i32 %13, %14, !dbg !3348
  %15 = load i32*, i32** %hi.addr, align 4, !dbg !3349
  store i32 %shr5, i32* %15, align 4, !dbg !3350
  br label %if.end27, !dbg !3351

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %count.addr, align 4, !dbg !3352
  %cmp6 = icmp ult i32 %16, 64, !dbg !3353
  br i1 %cmp6, label %if.then8, label %if.else20, !dbg !3352

if.then8:                                         ; preds = %if.else
  %17 = load i32*, i32** %hi.addr, align 4, !dbg !3354
  %18 = load i32, i32* %17, align 4, !dbg !3355
  %19 = load i32, i32* %count.addr, align 4, !dbg !3356
  %sub10 = sub i32 64, %19, !dbg !3357
  %shl11 = shl i32 %18, %sub10, !dbg !3358
  %20 = load i32*, i32** %lo.addr, align 4, !dbg !3359
  %21 = load i32, i32* %20, align 4, !dbg !3360
  %or12 = or i32 %shl11, %21, !dbg !3361
  %tobool13 = icmp ne i32 %or12, 0, !dbg !3355
  %frombool14 = zext i1 %tobool13 to i8, !dbg !3362
  store i8 %frombool14, i8* %sticky9, align 1, !dbg !3362
  %22 = load i32*, i32** %hi.addr, align 4, !dbg !3363
  %23 = load i32, i32* %22, align 4, !dbg !3364
  %24 = load i32, i32* %count.addr, align 4, !dbg !3365
  %sub15 = sub i32 %24, 32, !dbg !3366
  %shr16 = lshr i32 %23, %sub15, !dbg !3367
  %25 = load i8, i8* %sticky9, align 1, !dbg !3368
  %tobool17 = trunc i8 %25 to i1, !dbg !3368
  %conv18 = zext i1 %tobool17 to i32, !dbg !3368
  %or19 = or i32 %shr16, %conv18, !dbg !3369
  %26 = load i32*, i32** %lo.addr, align 4, !dbg !3370
  store i32 %or19, i32* %26, align 4, !dbg !3371
  %27 = load i32*, i32** %hi.addr, align 4, !dbg !3372
  store i32 0, i32* %27, align 4, !dbg !3373
  br label %if.end, !dbg !3374

if.else20:                                        ; preds = %if.else
  %28 = load i32*, i32** %hi.addr, align 4, !dbg !3375
  %29 = load i32, i32* %28, align 4, !dbg !3376
  %30 = load i32*, i32** %lo.addr, align 4, !dbg !3377
  %31 = load i32, i32* %30, align 4, !dbg !3378
  %or22 = or i32 %29, %31, !dbg !3379
  %tobool23 = icmp ne i32 %or22, 0, !dbg !3376
  %frombool24 = zext i1 %tobool23 to i8, !dbg !3380
  store i8 %frombool24, i8* %sticky21, align 1, !dbg !3380
  %32 = load i8, i8* %sticky21, align 1, !dbg !3381
  %tobool25 = trunc i8 %32 to i1, !dbg !3381
  %conv26 = zext i1 %tobool25 to i32, !dbg !3381
  %33 = load i32*, i32** %lo.addr, align 4, !dbg !3382
  store i32 %conv26, i32* %33, align 4, !dbg !3383
  %34 = load i32*, i32** %hi.addr, align 4, !dbg !3384
  store i32 0, i32* %34, align 4, !dbg !3385
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then8
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then
  ret void, !dbg !3386
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.45(i32 noundef %a) #0 !dbg !3387 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !3388
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !3389
  ret i32 %1, !dbg !3390
}

; Function Attrs: noinline nounwind
define dso_local double @__negdf2(double noundef %a) #0 !dbg !3391 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3392
  %call = call i64 @toRep.46(double noundef %0) #4, !dbg !3393
  %xor = xor i64 %call, -9223372036854775808, !dbg !3394
  %call1 = call double @fromRep.47(i64 noundef %xor) #4, !dbg !3395
  ret double %call1, !dbg !3396
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.46(double noundef %x) #0 !dbg !3397 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3398
  %0 = load double, double* %x.addr, align 8, !dbg !3399
  store double %0, double* %f, align 8, !dbg !3398
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3400
  %1 = load i64, i64* %i, align 8, !dbg !3400
  ret i64 %1, !dbg !3401
}

; Function Attrs: noinline nounwind
define internal double @fromRep.47(i64 noundef %x) #0 !dbg !3402 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3403
  %0 = load i64, i64* %x.addr, align 8, !dbg !3404
  store i64 %0, i64* %i, align 8, !dbg !3403
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3405
  %1 = load double, double* %f, align 8, !dbg !3405
  ret double %1, !dbg !3406
}

; Function Attrs: noinline nounwind
define dso_local i64 @__negdi2(i64 noundef %a) #0 !dbg !3407 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !3408
  %sub = sub nsw i64 0, %0, !dbg !3409
  ret i64 %sub, !dbg !3410
}

; Function Attrs: noinline nounwind
define dso_local float @__negsf2(float noundef %a) #0 !dbg !3411 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3412
  %call = call i32 @toRep.48(float noundef %0) #4, !dbg !3413
  %xor = xor i32 %call, -2147483648, !dbg !3414
  %call1 = call float @fromRep.49(i32 noundef %xor) #4, !dbg !3415
  ret float %call1, !dbg !3416
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.48(float noundef %x) #0 !dbg !3417 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3418
  %0 = load float, float* %x.addr, align 4, !dbg !3419
  store float %0, float* %f, align 4, !dbg !3418
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3420
  %1 = load i32, i32* %i, align 4, !dbg !3420
  ret i32 %1, !dbg !3421
}

; Function Attrs: noinline nounwind
define internal float @fromRep.49(i32 noundef %x) #0 !dbg !3422 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3423
  %0 = load i32, i32* %x.addr, align 4, !dbg !3424
  store i32 %0, i32* %i, align 4, !dbg !3423
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3425
  %1 = load float, float* %f, align 4, !dbg !3425
  ret float %1, !dbg !3426
}

; Function Attrs: noinline nounwind
define dso_local i64 @__negvdi2(i64 noundef %a) #0 !dbg !3427 {
entry:
  %a.addr = alloca i64, align 8
  %MIN = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 -9223372036854775808, i64* %MIN, align 8, !dbg !3428
  %0 = load i64, i64* %a.addr, align 8, !dbg !3429
  %cmp = icmp eq i64 %0, -9223372036854775808, !dbg !3430
  br i1 %cmp, label %if.then, label %if.end, !dbg !3429

if.then:                                          ; preds = %entry
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__negvdi2, i32 0, i32 0)) #5, !dbg !3431
  unreachable, !dbg !3431

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !3432
  %sub = sub nsw i64 0, %1, !dbg !3433
  ret i64 %sub, !dbg !3434
}

; Function Attrs: noreturn
declare dso_local void @compilerrt_abort_impl(i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind
define dso_local i32 @__negvsi2(i32 noundef %a) #0 !dbg !3435 {
entry:
  %a.addr = alloca i32, align 4
  %MIN = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 -2147483648, i32* %MIN, align 4, !dbg !3436
  %0 = load i32, i32* %a.addr, align 4, !dbg !3437
  %cmp = icmp eq i32 %0, -2147483648, !dbg !3438
  br i1 %cmp, label %if.then, label %if.end, !dbg !3437

if.then:                                          ; preds = %entry
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__negvsi2, i32 0, i32 0)) #5, !dbg !3439
  unreachable, !dbg !3439

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !3440
  %sub = sub nsw i32 0, %1, !dbg !3441
  ret i32 %sub, !dbg !3442
}

; Function Attrs: noinline nounwind
define dso_local double @__powidf2(double noundef %a, i32 noundef %b) #0 !dbg !3443 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca i32, align 4
  %recip = alloca i32, align 4
  %r = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4, !dbg !3444
  %cmp = icmp slt i32 %0, 0, !dbg !3445
  %conv = zext i1 %cmp to i32, !dbg !3445
  store i32 %conv, i32* %recip, align 4, !dbg !3446
  store double 1.000000e+00, double* %r, align 8, !dbg !3447
  br label %while.body, !dbg !3448

while.body:                                       ; preds = %if.end4, %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !3449
  %and = and i32 %1, 1, !dbg !3450
  %tobool = icmp ne i32 %and, 0, !dbg !3450
  br i1 %tobool, label %if.then, label %if.end, !dbg !3449

if.then:                                          ; preds = %while.body
  %2 = load double, double* %a.addr, align 8, !dbg !3451
  %3 = load double, double* %r, align 8, !dbg !3452
  %mul = fmul double %3, %2, !dbg !3452
  store double %mul, double* %r, align 8, !dbg !3452
  br label %if.end, !dbg !3453

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, i32* %b.addr, align 4, !dbg !3454
  %div = sdiv i32 %4, 2, !dbg !3454
  store i32 %div, i32* %b.addr, align 4, !dbg !3454
  %5 = load i32, i32* %b.addr, align 4, !dbg !3455
  %cmp1 = icmp eq i32 %5, 0, !dbg !3456
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3455

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !3457

if.end4:                                          ; preds = %if.end
  %6 = load double, double* %a.addr, align 8, !dbg !3458
  %7 = load double, double* %a.addr, align 8, !dbg !3459
  %mul5 = fmul double %7, %6, !dbg !3459
  store double %mul5, double* %a.addr, align 8, !dbg !3459
  br label %while.body, !dbg !3448, !llvm.loop !3460

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %recip, align 4, !dbg !3462
  %tobool6 = icmp ne i32 %8, 0, !dbg !3462
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !3462

cond.true:                                        ; preds = %while.end
  %9 = load double, double* %r, align 8, !dbg !3463
  %div7 = fdiv double 1.000000e+00, %9, !dbg !3464
  br label %cond.end, !dbg !3462

cond.false:                                       ; preds = %while.end
  %10 = load double, double* %r, align 8, !dbg !3465
  br label %cond.end, !dbg !3462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div7, %cond.true ], [ %10, %cond.false ], !dbg !3462
  ret double %cond, !dbg !3466
}

; Function Attrs: noinline nounwind
define dso_local float @__powisf2(float noundef %a, i32 noundef %b) #0 !dbg !3467 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca i32, align 4
  %recip = alloca i32, align 4
  %r = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4, !dbg !3468
  %cmp = icmp slt i32 %0, 0, !dbg !3469
  %conv = zext i1 %cmp to i32, !dbg !3469
  store i32 %conv, i32* %recip, align 4, !dbg !3470
  store float 1.000000e+00, float* %r, align 4, !dbg !3471
  br label %while.body, !dbg !3472

while.body:                                       ; preds = %if.end4, %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !3473
  %and = and i32 %1, 1, !dbg !3474
  %tobool = icmp ne i32 %and, 0, !dbg !3474
  br i1 %tobool, label %if.then, label %if.end, !dbg !3473

if.then:                                          ; preds = %while.body
  %2 = load float, float* %a.addr, align 4, !dbg !3475
  %3 = load float, float* %r, align 4, !dbg !3476
  %mul = fmul float %3, %2, !dbg !3476
  store float %mul, float* %r, align 4, !dbg !3476
  br label %if.end, !dbg !3477

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, i32* %b.addr, align 4, !dbg !3478
  %div = sdiv i32 %4, 2, !dbg !3478
  store i32 %div, i32* %b.addr, align 4, !dbg !3478
  %5 = load i32, i32* %b.addr, align 4, !dbg !3479
  %cmp1 = icmp eq i32 %5, 0, !dbg !3480
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3479

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !3481

if.end4:                                          ; preds = %if.end
  %6 = load float, float* %a.addr, align 4, !dbg !3482
  %7 = load float, float* %a.addr, align 4, !dbg !3483
  %mul5 = fmul float %7, %6, !dbg !3483
  store float %mul5, float* %a.addr, align 4, !dbg !3483
  br label %while.body, !dbg !3472, !llvm.loop !3484

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %recip, align 4, !dbg !3486
  %tobool6 = icmp ne i32 %8, 0, !dbg !3486
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !3486

cond.true:                                        ; preds = %while.end
  %9 = load float, float* %r, align 4, !dbg !3487
  %div7 = fdiv float 1.000000e+00, %9, !dbg !3488
  br label %cond.end, !dbg !3486

cond.false:                                       ; preds = %while.end
  %10 = load float, float* %r, align 4, !dbg !3489
  br label %cond.end, !dbg !3486

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %div7, %cond.true ], [ %10, %cond.false ], !dbg !3486
  ret float %cond, !dbg !3490
}

; Function Attrs: noinline nounwind
define dso_local fp128 @__powixf2(fp128 noundef %a, i32 noundef %b) #0 !dbg !3491 {
entry:
  %a.addr = alloca fp128, align 16
  %b.addr = alloca i32, align 4
  %recip = alloca i32, align 4
  %r = alloca fp128, align 16
  store fp128 %a, fp128* %a.addr, align 16
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4, !dbg !3492
  %cmp = icmp slt i32 %0, 0, !dbg !3493
  %conv = zext i1 %cmp to i32, !dbg !3493
  store i32 %conv, i32* %recip, align 4, !dbg !3494
  store fp128 0xL00000000000000003FFF000000000000, fp128* %r, align 16, !dbg !3495
  br label %while.body, !dbg !3496

while.body:                                       ; preds = %if.end4, %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !3497
  %and = and i32 %1, 1, !dbg !3498
  %tobool = icmp ne i32 %and, 0, !dbg !3498
  br i1 %tobool, label %if.then, label %if.end, !dbg !3497

if.then:                                          ; preds = %while.body
  %2 = load fp128, fp128* %a.addr, align 16, !dbg !3499
  %3 = load fp128, fp128* %r, align 16, !dbg !3500
  %mul = fmul fp128 %3, %2, !dbg !3500
  store fp128 %mul, fp128* %r, align 16, !dbg !3500
  br label %if.end, !dbg !3501

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, i32* %b.addr, align 4, !dbg !3502
  %div = sdiv i32 %4, 2, !dbg !3502
  store i32 %div, i32* %b.addr, align 4, !dbg !3502
  %5 = load i32, i32* %b.addr, align 4, !dbg !3503
  %cmp1 = icmp eq i32 %5, 0, !dbg !3504
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3503

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !3505

if.end4:                                          ; preds = %if.end
  %6 = load fp128, fp128* %a.addr, align 16, !dbg !3506
  %7 = load fp128, fp128* %a.addr, align 16, !dbg !3507
  %mul5 = fmul fp128 %7, %6, !dbg !3507
  store fp128 %mul5, fp128* %a.addr, align 16, !dbg !3507
  br label %while.body, !dbg !3496, !llvm.loop !3508

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %recip, align 4, !dbg !3510
  %tobool6 = icmp ne i32 %8, 0, !dbg !3510
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !3510

cond.true:                                        ; preds = %while.end
  %9 = load fp128, fp128* %r, align 16, !dbg !3511
  %div7 = fdiv fp128 0xL00000000000000003FFF000000000000, %9, !dbg !3512
  br label %cond.end, !dbg !3510

cond.false:                                       ; preds = %while.end
  %10 = load fp128, fp128* %r, align 16, !dbg !3513
  br label %cond.end, !dbg !3510

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi fp128 [ %div7, %cond.true ], [ %10, %cond.false ], !dbg !3510
  ret fp128 %cond, !dbg !3514
}

; Function Attrs: noinline nounwind
define dso_local double @__subdf3(double noundef %a, double noundef %b) #0 !dbg !3515 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3516
  %1 = load double, double* %b.addr, align 8, !dbg !3517
  %call = call i64 @toRep.51(double noundef %1) #4, !dbg !3518
  %xor = xor i64 %call, -9223372036854775808, !dbg !3519
  %call1 = call double @fromRep.52(i64 noundef %xor) #4, !dbg !3520
  %call2 = call double @__adddf3(double noundef %0, double noundef %call1) #4, !dbg !3521
  ret double %call2, !dbg !3522
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.51(double noundef %x) #0 !dbg !3523 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3524
  %0 = load double, double* %x.addr, align 8, !dbg !3525
  store double %0, double* %f, align 8, !dbg !3524
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3526
  %1 = load i64, i64* %i, align 8, !dbg !3526
  ret i64 %1, !dbg !3527
}

; Function Attrs: noinline nounwind
define internal double @fromRep.52(i64 noundef %x) #0 !dbg !3528 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3529
  %0 = load i64, i64* %x.addr, align 8, !dbg !3530
  store i64 %0, i64* %i, align 8, !dbg !3529
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3531
  %1 = load double, double* %f, align 8, !dbg !3531
  ret double %1, !dbg !3532
}

; Function Attrs: noinline nounwind
define dso_local float @__subsf3(float noundef %a, float noundef %b) #0 !dbg !3533 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3534
  %1 = load float, float* %b.addr, align 4, !dbg !3535
  %call = call i32 @toRep.53(float noundef %1) #4, !dbg !3536
  %xor = xor i32 %call, -2147483648, !dbg !3537
  %call1 = call float @fromRep.54(i32 noundef %xor) #4, !dbg !3538
  %call2 = call float @__addsf3(float noundef %0, float noundef %call1) #4, !dbg !3539
  ret float %call2, !dbg !3540
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.53(float noundef %x) #0 !dbg !3541 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3542
  %0 = load float, float* %x.addr, align 4, !dbg !3543
  store float %0, float* %f, align 4, !dbg !3542
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3544
  %1 = load i32, i32* %i, align 4, !dbg !3544
  ret i32 %1, !dbg !3545
}

; Function Attrs: noinline nounwind
define internal float @fromRep.54(i32 noundef %x) #0 !dbg !3546 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3547
  %0 = load i32, i32* %x.addr, align 4, !dbg !3548
  store i32 %0, i32* %i, align 4, !dbg !3547
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3549
  %1 = load float, float* %f, align 4, !dbg !3549
  ret float %1, !dbg !3550
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @__truncdfhf2(double noundef %a) #0 !dbg !3551 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3552
  %call = call zeroext i16 @__truncXfYf2__(double noundef %0) #4, !dbg !3553
  ret i16 %call, !dbg !3554
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @__truncXfYf2__(double noundef %a) #0 !dbg !3555 {
entry:
  %a.addr = alloca double, align 8
  %srcBits = alloca i32, align 4
  %srcExpBits = alloca i32, align 4
  %srcInfExp = alloca i32, align 4
  %srcExpBias = alloca i32, align 4
  %srcMinNormal = alloca i64, align 8
  %srcSignificandMask = alloca i64, align 8
  %srcInfinity = alloca i64, align 8
  %srcSignMask = alloca i64, align 8
  %srcAbsMask = alloca i64, align 8
  %roundMask = alloca i64, align 8
  %halfway = alloca i64, align 8
  %srcQNaN = alloca i64, align 8
  %srcNaNCode = alloca i64, align 8
  %dstBits = alloca i32, align 4
  %dstExpBits = alloca i32, align 4
  %dstInfExp = alloca i32, align 4
  %dstExpBias = alloca i32, align 4
  %underflowExponent = alloca i32, align 4
  %overflowExponent = alloca i32, align 4
  %underflow = alloca i64, align 8
  %overflow = alloca i64, align 8
  %dstQNaN = alloca i16, align 2
  %dstNaNCode = alloca i16, align 2
  %aRep = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %sign = alloca i64, align 8
  %absResult = alloca i16, align 2
  %roundBits = alloca i64, align 8
  %aExp = alloca i32, align 4
  %shift = alloca i32, align 4
  %significand = alloca i64, align 8
  %sticky = alloca i8, align 1
  %denormalizedSignificand = alloca i64, align 8
  %roundBits53 = alloca i64, align 8
  %result = alloca i16, align 2
  store double %a, double* %a.addr, align 8
  store i32 64, i32* %srcBits, align 4, !dbg !3557
  store i32 11, i32* %srcExpBits, align 4, !dbg !3558
  store i32 2047, i32* %srcInfExp, align 4, !dbg !3559
  store i32 1023, i32* %srcExpBias, align 4, !dbg !3560
  store i64 4503599627370496, i64* %srcMinNormal, align 8, !dbg !3561
  store i64 4503599627370495, i64* %srcSignificandMask, align 8, !dbg !3562
  store i64 9218868437227405312, i64* %srcInfinity, align 8, !dbg !3563
  store i64 -9223372036854775808, i64* %srcSignMask, align 8, !dbg !3564
  store i64 9223372036854775807, i64* %srcAbsMask, align 8, !dbg !3565
  store i64 4398046511103, i64* %roundMask, align 8, !dbg !3566
  store i64 2199023255552, i64* %halfway, align 8, !dbg !3567
  store i64 2251799813685248, i64* %srcQNaN, align 8, !dbg !3568
  store i64 2251799813685247, i64* %srcNaNCode, align 8, !dbg !3569
  store i32 16, i32* %dstBits, align 4, !dbg !3570
  store i32 5, i32* %dstExpBits, align 4, !dbg !3571
  store i32 31, i32* %dstInfExp, align 4, !dbg !3572
  store i32 15, i32* %dstExpBias, align 4, !dbg !3573
  store i32 1009, i32* %underflowExponent, align 4, !dbg !3574
  store i32 1039, i32* %overflowExponent, align 4, !dbg !3575
  store i64 4544132024016830464, i64* %underflow, align 8, !dbg !3576
  store i64 4679240012837945344, i64* %overflow, align 8, !dbg !3577
  store i16 512, i16* %dstQNaN, align 2, !dbg !3578
  store i16 511, i16* %dstNaNCode, align 2, !dbg !3579
  %0 = load double, double* %a.addr, align 8, !dbg !3580
  %call = call i64 @srcToRep.55(double noundef %0) #4, !dbg !3581
  store i64 %call, i64* %aRep, align 8, !dbg !3582
  %1 = load i64, i64* %aRep, align 8, !dbg !3583
  %and = and i64 %1, 9223372036854775807, !dbg !3584
  store i64 %and, i64* %aAbs, align 8, !dbg !3585
  %2 = load i64, i64* %aRep, align 8, !dbg !3586
  %and1 = and i64 %2, -9223372036854775808, !dbg !3587
  store i64 %and1, i64* %sign, align 8, !dbg !3588
  %3 = load i64, i64* %aAbs, align 8, !dbg !3589
  %sub = sub i64 %3, 4544132024016830464, !dbg !3590
  %4 = load i64, i64* %aAbs, align 8, !dbg !3591
  %sub2 = sub i64 %4, 4679240012837945344, !dbg !3592
  %cmp = icmp ult i64 %sub, %sub2, !dbg !3593
  br i1 %cmp, label %if.then, label %if.else18, !dbg !3589

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %aAbs, align 8, !dbg !3594
  %shr = lshr i64 %5, 42, !dbg !3595
  %conv = trunc i64 %shr to i16, !dbg !3594
  store i16 %conv, i16* %absResult, align 2, !dbg !3596
  %6 = load i16, i16* %absResult, align 2, !dbg !3597
  %conv3 = zext i16 %6 to i32, !dbg !3597
  %sub4 = sub nsw i32 %conv3, 1032192, !dbg !3597
  %conv5 = trunc i32 %sub4 to i16, !dbg !3597
  store i16 %conv5, i16* %absResult, align 2, !dbg !3597
  %7 = load i64, i64* %aAbs, align 8, !dbg !3598
  %and6 = and i64 %7, 4398046511103, !dbg !3599
  store i64 %and6, i64* %roundBits, align 8, !dbg !3600
  %8 = load i64, i64* %roundBits, align 8, !dbg !3601
  %cmp7 = icmp ugt i64 %8, 2199023255552, !dbg !3602
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !3601

if.then9:                                         ; preds = %if.then
  %9 = load i16, i16* %absResult, align 2, !dbg !3603
  %inc = add i16 %9, 1, !dbg !3603
  store i16 %inc, i16* %absResult, align 2, !dbg !3603
  br label %if.end17, !dbg !3604

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %roundBits, align 8, !dbg !3605
  %cmp10 = icmp eq i64 %10, 2199023255552, !dbg !3606
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !3605

if.then12:                                        ; preds = %if.else
  %11 = load i16, i16* %absResult, align 2, !dbg !3607
  %conv13 = zext i16 %11 to i32, !dbg !3607
  %and14 = and i32 %conv13, 1, !dbg !3608
  %12 = load i16, i16* %absResult, align 2, !dbg !3609
  %conv15 = zext i16 %12 to i32, !dbg !3609
  %add = add nsw i32 %conv15, %and14, !dbg !3609
  %conv16 = trunc i32 %add to i16, !dbg !3609
  store i16 %conv16, i16* %absResult, align 2, !dbg !3609
  br label %if.end, !dbg !3610

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end73, !dbg !3611

if.else18:                                        ; preds = %entry
  %13 = load i64, i64* %aAbs, align 8, !dbg !3612
  %cmp19 = icmp ugt i64 %13, 9218868437227405312, !dbg !3613
  br i1 %cmp19, label %if.then21, label %if.else30, !dbg !3612

if.then21:                                        ; preds = %if.else18
  store i16 31744, i16* %absResult, align 2, !dbg !3614
  %14 = load i16, i16* %absResult, align 2, !dbg !3615
  %conv22 = zext i16 %14 to i32, !dbg !3615
  %or = or i32 %conv22, 512, !dbg !3615
  %conv23 = trunc i32 %or to i16, !dbg !3615
  store i16 %conv23, i16* %absResult, align 2, !dbg !3615
  %15 = load i64, i64* %aAbs, align 8, !dbg !3616
  %and24 = and i64 %15, 2251799813685247, !dbg !3617
  %shr25 = lshr i64 %and24, 42, !dbg !3618
  %and26 = and i64 %shr25, 511, !dbg !3619
  %16 = load i16, i16* %absResult, align 2, !dbg !3620
  %conv27 = zext i16 %16 to i64, !dbg !3620
  %or28 = or i64 %conv27, %and26, !dbg !3620
  %conv29 = trunc i64 %or28 to i16, !dbg !3620
  store i16 %conv29, i16* %absResult, align 2, !dbg !3620
  br label %if.end72, !dbg !3621

if.else30:                                        ; preds = %if.else18
  %17 = load i64, i64* %aAbs, align 8, !dbg !3622
  %cmp31 = icmp uge i64 %17, 4679240012837945344, !dbg !3623
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !3622

if.then33:                                        ; preds = %if.else30
  store i16 31744, i16* %absResult, align 2, !dbg !3624
  br label %if.end71, !dbg !3625

if.else34:                                        ; preds = %if.else30
  %18 = load i64, i64* %aAbs, align 8, !dbg !3626
  %shr35 = lshr i64 %18, 52, !dbg !3627
  %conv36 = trunc i64 %shr35 to i32, !dbg !3626
  store i32 %conv36, i32* %aExp, align 4, !dbg !3628
  %19 = load i32, i32* %aExp, align 4, !dbg !3629
  %sub37 = sub nsw i32 1008, %19, !dbg !3630
  %add38 = add nsw i32 %sub37, 1, !dbg !3631
  store i32 %add38, i32* %shift, align 4, !dbg !3632
  %20 = load i64, i64* %aRep, align 8, !dbg !3633
  %and39 = and i64 %20, 4503599627370495, !dbg !3634
  %or40 = or i64 %and39, 4503599627370496, !dbg !3635
  store i64 %or40, i64* %significand, align 8, !dbg !3636
  %21 = load i32, i32* %shift, align 4, !dbg !3637
  %cmp41 = icmp sgt i32 %21, 52, !dbg !3638
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !3637

if.then43:                                        ; preds = %if.else34
  store i16 0, i16* %absResult, align 2, !dbg !3639
  br label %if.end70, !dbg !3640

if.else44:                                        ; preds = %if.else34
  %22 = load i64, i64* %significand, align 8, !dbg !3641
  %23 = load i32, i32* %shift, align 4, !dbg !3642
  %sub45 = sub nsw i32 64, %23, !dbg !3643
  %sh_prom = zext i32 %sub45 to i64, !dbg !3644
  %shl = shl i64 %22, %sh_prom, !dbg !3644
  %tobool = icmp ne i64 %shl, 0, !dbg !3641
  %frombool = zext i1 %tobool to i8, !dbg !3645
  store i8 %frombool, i8* %sticky, align 1, !dbg !3645
  %24 = load i64, i64* %significand, align 8, !dbg !3646
  %25 = load i32, i32* %shift, align 4, !dbg !3647
  %sh_prom46 = zext i32 %25 to i64, !dbg !3648
  %shr47 = lshr i64 %24, %sh_prom46, !dbg !3648
  %26 = load i8, i8* %sticky, align 1, !dbg !3649
  %tobool48 = trunc i8 %26 to i1, !dbg !3649
  %conv49 = zext i1 %tobool48 to i64, !dbg !3649
  %or50 = or i64 %shr47, %conv49, !dbg !3650
  store i64 %or50, i64* %denormalizedSignificand, align 8, !dbg !3651
  %27 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3652
  %shr51 = lshr i64 %27, 42, !dbg !3653
  %conv52 = trunc i64 %shr51 to i16, !dbg !3652
  store i16 %conv52, i16* %absResult, align 2, !dbg !3654
  %28 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3655
  %and54 = and i64 %28, 4398046511103, !dbg !3656
  store i64 %and54, i64* %roundBits53, align 8, !dbg !3657
  %29 = load i64, i64* %roundBits53, align 8, !dbg !3658
  %cmp55 = icmp ugt i64 %29, 2199023255552, !dbg !3659
  br i1 %cmp55, label %if.then57, label %if.else59, !dbg !3658

if.then57:                                        ; preds = %if.else44
  %30 = load i16, i16* %absResult, align 2, !dbg !3660
  %inc58 = add i16 %30, 1, !dbg !3660
  store i16 %inc58, i16* %absResult, align 2, !dbg !3660
  br label %if.end69, !dbg !3661

if.else59:                                        ; preds = %if.else44
  %31 = load i64, i64* %roundBits53, align 8, !dbg !3662
  %cmp60 = icmp eq i64 %31, 2199023255552, !dbg !3663
  br i1 %cmp60, label %if.then62, label %if.end68, !dbg !3662

if.then62:                                        ; preds = %if.else59
  %32 = load i16, i16* %absResult, align 2, !dbg !3664
  %conv63 = zext i16 %32 to i32, !dbg !3664
  %and64 = and i32 %conv63, 1, !dbg !3665
  %33 = load i16, i16* %absResult, align 2, !dbg !3666
  %conv65 = zext i16 %33 to i32, !dbg !3666
  %add66 = add nsw i32 %conv65, %and64, !dbg !3666
  %conv67 = trunc i32 %add66 to i16, !dbg !3666
  store i16 %conv67, i16* %absResult, align 2, !dbg !3666
  br label %if.end68, !dbg !3667

if.end68:                                         ; preds = %if.then62, %if.else59
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then57
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then43
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then33
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then21
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end17
  %34 = load i16, i16* %absResult, align 2, !dbg !3668
  %conv74 = zext i16 %34 to i64, !dbg !3668
  %35 = load i64, i64* %sign, align 8, !dbg !3669
  %shr75 = lshr i64 %35, 48, !dbg !3670
  %or76 = or i64 %conv74, %shr75, !dbg !3671
  %conv77 = trunc i64 %or76 to i16, !dbg !3668
  store i16 %conv77, i16* %result, align 2, !dbg !3672
  %36 = load i16, i16* %result, align 2, !dbg !3673
  %call78 = call zeroext i16 @dstFromRep.56(i16 noundef zeroext %36) #4, !dbg !3674
  ret i16 %call78, !dbg !3675
}

; Function Attrs: noinline nounwind
define internal i64 @srcToRep.55(double noundef %x) #0 !dbg !3676 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3678
  %0 = load double, double* %x.addr, align 8, !dbg !3679
  store double %0, double* %f, align 8, !dbg !3678
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3680
  %1 = load i64, i64* %i, align 8, !dbg !3680
  ret i64 %1, !dbg !3681
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @dstFromRep.56(i16 noundef zeroext %x) #0 !dbg !3682 {
entry:
  %x.addr = alloca i16, align 2
  %rep = alloca %union.anon, align 2
  store i16 %x, i16* %x.addr, align 2
  %i = bitcast %union.anon* %rep to i16*, !dbg !3683
  %0 = load i16, i16* %x.addr, align 2, !dbg !3684
  store i16 %0, i16* %i, align 2, !dbg !3683
  %f = bitcast %union.anon* %rep to i16*, !dbg !3685
  %1 = load i16, i16* %f, align 2, !dbg !3685
  ret i16 %1, !dbg !3686
}

; Function Attrs: noinline nounwind
define dso_local float @__truncdfsf2(double noundef %a) #0 !dbg !3687 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3688
  %call = call float @__truncXfYf2__.57(double noundef %0) #4, !dbg !3689
  ret float %call, !dbg !3690
}

; Function Attrs: noinline nounwind
define internal float @__truncXfYf2__.57(double noundef %a) #0 !dbg !3691 {
entry:
  %a.addr = alloca double, align 8
  %srcBits = alloca i32, align 4
  %srcExpBits = alloca i32, align 4
  %srcInfExp = alloca i32, align 4
  %srcExpBias = alloca i32, align 4
  %srcMinNormal = alloca i64, align 8
  %srcSignificandMask = alloca i64, align 8
  %srcInfinity = alloca i64, align 8
  %srcSignMask = alloca i64, align 8
  %srcAbsMask = alloca i64, align 8
  %roundMask = alloca i64, align 8
  %halfway = alloca i64, align 8
  %srcQNaN = alloca i64, align 8
  %srcNaNCode = alloca i64, align 8
  %dstBits = alloca i32, align 4
  %dstExpBits = alloca i32, align 4
  %dstInfExp = alloca i32, align 4
  %dstExpBias = alloca i32, align 4
  %underflowExponent = alloca i32, align 4
  %overflowExponent = alloca i32, align 4
  %underflow = alloca i64, align 8
  %overflow = alloca i64, align 8
  %dstQNaN = alloca i32, align 4
  %dstNaNCode = alloca i32, align 4
  %aRep = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %sign = alloca i64, align 8
  %absResult = alloca i32, align 4
  %roundBits = alloca i64, align 8
  %aExp = alloca i32, align 4
  %shift = alloca i32, align 4
  %significand = alloca i64, align 8
  %sticky = alloca i8, align 1
  %denormalizedSignificand = alloca i64, align 8
  %roundBits46 = alloca i64, align 8
  %result = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store i32 64, i32* %srcBits, align 4, !dbg !3692
  store i32 11, i32* %srcExpBits, align 4, !dbg !3693
  store i32 2047, i32* %srcInfExp, align 4, !dbg !3694
  store i32 1023, i32* %srcExpBias, align 4, !dbg !3695
  store i64 4503599627370496, i64* %srcMinNormal, align 8, !dbg !3696
  store i64 4503599627370495, i64* %srcSignificandMask, align 8, !dbg !3697
  store i64 9218868437227405312, i64* %srcInfinity, align 8, !dbg !3698
  store i64 -9223372036854775808, i64* %srcSignMask, align 8, !dbg !3699
  store i64 9223372036854775807, i64* %srcAbsMask, align 8, !dbg !3700
  store i64 536870911, i64* %roundMask, align 8, !dbg !3701
  store i64 268435456, i64* %halfway, align 8, !dbg !3702
  store i64 2251799813685248, i64* %srcQNaN, align 8, !dbg !3703
  store i64 2251799813685247, i64* %srcNaNCode, align 8, !dbg !3704
  store i32 32, i32* %dstBits, align 4, !dbg !3705
  store i32 8, i32* %dstExpBits, align 4, !dbg !3706
  store i32 255, i32* %dstInfExp, align 4, !dbg !3707
  store i32 127, i32* %dstExpBias, align 4, !dbg !3708
  store i32 897, i32* %underflowExponent, align 4, !dbg !3709
  store i32 1151, i32* %overflowExponent, align 4, !dbg !3710
  store i64 4039728865751334912, i64* %underflow, align 8, !dbg !3711
  store i64 5183643171103440896, i64* %overflow, align 8, !dbg !3712
  store i32 4194304, i32* %dstQNaN, align 4, !dbg !3713
  store i32 4194303, i32* %dstNaNCode, align 4, !dbg !3714
  %0 = load double, double* %a.addr, align 8, !dbg !3715
  %call = call i64 @srcToRep.58(double noundef %0) #4, !dbg !3716
  store i64 %call, i64* %aRep, align 8, !dbg !3717
  %1 = load i64, i64* %aRep, align 8, !dbg !3718
  %and = and i64 %1, 9223372036854775807, !dbg !3719
  store i64 %and, i64* %aAbs, align 8, !dbg !3720
  %2 = load i64, i64* %aRep, align 8, !dbg !3721
  %and1 = and i64 %2, -9223372036854775808, !dbg !3722
  store i64 %and1, i64* %sign, align 8, !dbg !3723
  %3 = load i64, i64* %aAbs, align 8, !dbg !3724
  %sub = sub i64 %3, 4039728865751334912, !dbg !3725
  %4 = load i64, i64* %aAbs, align 8, !dbg !3726
  %sub2 = sub i64 %4, 5183643171103440896, !dbg !3727
  %cmp = icmp ult i64 %sub, %sub2, !dbg !3728
  br i1 %cmp, label %if.then, label %if.else13, !dbg !3724

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %aAbs, align 8, !dbg !3729
  %shr = lshr i64 %5, 29, !dbg !3730
  %conv = trunc i64 %shr to i32, !dbg !3729
  store i32 %conv, i32* %absResult, align 4, !dbg !3731
  %6 = load i32, i32* %absResult, align 4, !dbg !3732
  %sub3 = sub i32 %6, -1073741824, !dbg !3732
  store i32 %sub3, i32* %absResult, align 4, !dbg !3732
  %7 = load i64, i64* %aAbs, align 8, !dbg !3733
  %and4 = and i64 %7, 536870911, !dbg !3734
  store i64 %and4, i64* %roundBits, align 8, !dbg !3735
  %8 = load i64, i64* %roundBits, align 8, !dbg !3736
  %cmp5 = icmp ugt i64 %8, 268435456, !dbg !3737
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !3736

if.then7:                                         ; preds = %if.then
  %9 = load i32, i32* %absResult, align 4, !dbg !3738
  %inc = add i32 %9, 1, !dbg !3738
  store i32 %inc, i32* %absResult, align 4, !dbg !3738
  br label %if.end12, !dbg !3739

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %roundBits, align 8, !dbg !3740
  %cmp8 = icmp eq i64 %10, 268435456, !dbg !3741
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !3740

if.then10:                                        ; preds = %if.else
  %11 = load i32, i32* %absResult, align 4, !dbg !3742
  %and11 = and i32 %11, 1, !dbg !3743
  %12 = load i32, i32* %absResult, align 4, !dbg !3744
  %add = add i32 %12, %and11, !dbg !3744
  store i32 %add, i32* %absResult, align 4, !dbg !3744
  br label %if.end, !dbg !3745

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7
  br label %if.end63, !dbg !3746

if.else13:                                        ; preds = %entry
  %13 = load i64, i64* %aAbs, align 8, !dbg !3747
  %cmp14 = icmp ugt i64 %13, 9218868437227405312, !dbg !3748
  br i1 %cmp14, label %if.then16, label %if.else23, !dbg !3747

if.then16:                                        ; preds = %if.else13
  store i32 2139095040, i32* %absResult, align 4, !dbg !3749
  %14 = load i32, i32* %absResult, align 4, !dbg !3750
  %or = or i32 %14, 4194304, !dbg !3750
  store i32 %or, i32* %absResult, align 4, !dbg !3750
  %15 = load i64, i64* %aAbs, align 8, !dbg !3751
  %and17 = and i64 %15, 2251799813685247, !dbg !3752
  %shr18 = lshr i64 %and17, 29, !dbg !3753
  %and19 = and i64 %shr18, 4194303, !dbg !3754
  %16 = load i32, i32* %absResult, align 4, !dbg !3755
  %conv20 = zext i32 %16 to i64, !dbg !3755
  %or21 = or i64 %conv20, %and19, !dbg !3755
  %conv22 = trunc i64 %or21 to i32, !dbg !3755
  store i32 %conv22, i32* %absResult, align 4, !dbg !3755
  br label %if.end62, !dbg !3756

if.else23:                                        ; preds = %if.else13
  %17 = load i64, i64* %aAbs, align 8, !dbg !3757
  %cmp24 = icmp uge i64 %17, 5183643171103440896, !dbg !3758
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !3757

if.then26:                                        ; preds = %if.else23
  store i32 2139095040, i32* %absResult, align 4, !dbg !3759
  br label %if.end61, !dbg !3760

if.else27:                                        ; preds = %if.else23
  %18 = load i64, i64* %aAbs, align 8, !dbg !3761
  %shr28 = lshr i64 %18, 52, !dbg !3762
  %conv29 = trunc i64 %shr28 to i32, !dbg !3761
  store i32 %conv29, i32* %aExp, align 4, !dbg !3763
  %19 = load i32, i32* %aExp, align 4, !dbg !3764
  %sub30 = sub nsw i32 896, %19, !dbg !3765
  %add31 = add nsw i32 %sub30, 1, !dbg !3766
  store i32 %add31, i32* %shift, align 4, !dbg !3767
  %20 = load i64, i64* %aRep, align 8, !dbg !3768
  %and32 = and i64 %20, 4503599627370495, !dbg !3769
  %or33 = or i64 %and32, 4503599627370496, !dbg !3770
  store i64 %or33, i64* %significand, align 8, !dbg !3771
  %21 = load i32, i32* %shift, align 4, !dbg !3772
  %cmp34 = icmp sgt i32 %21, 52, !dbg !3773
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !3772

if.then36:                                        ; preds = %if.else27
  store i32 0, i32* %absResult, align 4, !dbg !3774
  br label %if.end60, !dbg !3775

if.else37:                                        ; preds = %if.else27
  %22 = load i64, i64* %significand, align 8, !dbg !3776
  %23 = load i32, i32* %shift, align 4, !dbg !3777
  %sub38 = sub nsw i32 64, %23, !dbg !3778
  %sh_prom = zext i32 %sub38 to i64, !dbg !3779
  %shl = shl i64 %22, %sh_prom, !dbg !3779
  %tobool = icmp ne i64 %shl, 0, !dbg !3776
  %frombool = zext i1 %tobool to i8, !dbg !3780
  store i8 %frombool, i8* %sticky, align 1, !dbg !3780
  %24 = load i64, i64* %significand, align 8, !dbg !3781
  %25 = load i32, i32* %shift, align 4, !dbg !3782
  %sh_prom39 = zext i32 %25 to i64, !dbg !3783
  %shr40 = lshr i64 %24, %sh_prom39, !dbg !3783
  %26 = load i8, i8* %sticky, align 1, !dbg !3784
  %tobool41 = trunc i8 %26 to i1, !dbg !3784
  %conv42 = zext i1 %tobool41 to i64, !dbg !3784
  %or43 = or i64 %shr40, %conv42, !dbg !3785
  store i64 %or43, i64* %denormalizedSignificand, align 8, !dbg !3786
  %27 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3787
  %shr44 = lshr i64 %27, 29, !dbg !3788
  %conv45 = trunc i64 %shr44 to i32, !dbg !3787
  store i32 %conv45, i32* %absResult, align 4, !dbg !3789
  %28 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3790
  %and47 = and i64 %28, 536870911, !dbg !3791
  store i64 %and47, i64* %roundBits46, align 8, !dbg !3792
  %29 = load i64, i64* %roundBits46, align 8, !dbg !3793
  %cmp48 = icmp ugt i64 %29, 268435456, !dbg !3794
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !3793

if.then50:                                        ; preds = %if.else37
  %30 = load i32, i32* %absResult, align 4, !dbg !3795
  %inc51 = add i32 %30, 1, !dbg !3795
  store i32 %inc51, i32* %absResult, align 4, !dbg !3795
  br label %if.end59, !dbg !3796

if.else52:                                        ; preds = %if.else37
  %31 = load i64, i64* %roundBits46, align 8, !dbg !3797
  %cmp53 = icmp eq i64 %31, 268435456, !dbg !3798
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !3797

if.then55:                                        ; preds = %if.else52
  %32 = load i32, i32* %absResult, align 4, !dbg !3799
  %and56 = and i32 %32, 1, !dbg !3800
  %33 = load i32, i32* %absResult, align 4, !dbg !3801
  %add57 = add i32 %33, %and56, !dbg !3801
  store i32 %add57, i32* %absResult, align 4, !dbg !3801
  br label %if.end58, !dbg !3802

if.end58:                                         ; preds = %if.then55, %if.else52
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then50
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then36
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then26
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then16
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end12
  %34 = load i32, i32* %absResult, align 4, !dbg !3803
  %conv64 = zext i32 %34 to i64, !dbg !3803
  %35 = load i64, i64* %sign, align 8, !dbg !3804
  %shr65 = lshr i64 %35, 32, !dbg !3805
  %or66 = or i64 %conv64, %shr65, !dbg !3806
  %conv67 = trunc i64 %or66 to i32, !dbg !3803
  store i32 %conv67, i32* %result, align 4, !dbg !3807
  %36 = load i32, i32* %result, align 4, !dbg !3808
  %call68 = call float @dstFromRep.59(i32 noundef %36) #4, !dbg !3809
  ret float %call68, !dbg !3810
}

; Function Attrs: noinline nounwind
define internal i64 @srcToRep.58(double noundef %x) #0 !dbg !3811 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3812
  %0 = load double, double* %x.addr, align 8, !dbg !3813
  store double %0, double* %f, align 8, !dbg !3812
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3814
  %1 = load i64, i64* %i, align 8, !dbg !3814
  ret i64 %1, !dbg !3815
}

; Function Attrs: noinline nounwind
define internal float @dstFromRep.59(i32 noundef %x) #0 !dbg !3816 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3817
  %0 = load i32, i32* %x.addr, align 4, !dbg !3818
  store i32 %0, i32* %i, align 4, !dbg !3817
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3819
  %1 = load float, float* %f, align 4, !dbg !3819
  ret float %1, !dbg !3820
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @__truncsfhf2(float noundef %a) #0 !dbg !3821 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3822
  %call = call zeroext i16 @__truncXfYf2__.60(float noundef %0) #4, !dbg !3823
  ret i16 %call, !dbg !3824
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @__truncXfYf2__.60(float noundef %a) #0 !dbg !3825 {
entry:
  %a.addr = alloca float, align 4
  %srcBits = alloca i32, align 4
  %srcExpBits = alloca i32, align 4
  %srcInfExp = alloca i32, align 4
  %srcExpBias = alloca i32, align 4
  %srcMinNormal = alloca i32, align 4
  %srcSignificandMask = alloca i32, align 4
  %srcInfinity = alloca i32, align 4
  %srcSignMask = alloca i32, align 4
  %srcAbsMask = alloca i32, align 4
  %roundMask = alloca i32, align 4
  %halfway = alloca i32, align 4
  %srcQNaN = alloca i32, align 4
  %srcNaNCode = alloca i32, align 4
  %dstBits = alloca i32, align 4
  %dstExpBits = alloca i32, align 4
  %dstInfExp = alloca i32, align 4
  %dstExpBias = alloca i32, align 4
  %underflowExponent = alloca i32, align 4
  %overflowExponent = alloca i32, align 4
  %underflow = alloca i32, align 4
  %overflow = alloca i32, align 4
  %dstQNaN = alloca i16, align 2
  %dstNaNCode = alloca i16, align 2
  %aRep = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %sign = alloca i32, align 4
  %absResult = alloca i16, align 2
  %roundBits = alloca i32, align 4
  %aExp = alloca i32, align 4
  %shift = alloca i32, align 4
  %significand = alloca i32, align 4
  %sticky = alloca i8, align 1
  %denormalizedSignificand = alloca i32, align 4
  %roundBits51 = alloca i32, align 4
  %result = alloca i16, align 2
  store float %a, float* %a.addr, align 4
  store i32 32, i32* %srcBits, align 4, !dbg !3826
  store i32 8, i32* %srcExpBits, align 4, !dbg !3827
  store i32 255, i32* %srcInfExp, align 4, !dbg !3828
  store i32 127, i32* %srcExpBias, align 4, !dbg !3829
  store i32 8388608, i32* %srcMinNormal, align 4, !dbg !3830
  store i32 8388607, i32* %srcSignificandMask, align 4, !dbg !3831
  store i32 2139095040, i32* %srcInfinity, align 4, !dbg !3832
  store i32 -2147483648, i32* %srcSignMask, align 4, !dbg !3833
  store i32 2147483647, i32* %srcAbsMask, align 4, !dbg !3834
  store i32 8191, i32* %roundMask, align 4, !dbg !3835
  store i32 4096, i32* %halfway, align 4, !dbg !3836
  store i32 4194304, i32* %srcQNaN, align 4, !dbg !3837
  store i32 4194303, i32* %srcNaNCode, align 4, !dbg !3838
  store i32 16, i32* %dstBits, align 4, !dbg !3839
  store i32 5, i32* %dstExpBits, align 4, !dbg !3840
  store i32 31, i32* %dstInfExp, align 4, !dbg !3841
  store i32 15, i32* %dstExpBias, align 4, !dbg !3842
  store i32 113, i32* %underflowExponent, align 4, !dbg !3843
  store i32 143, i32* %overflowExponent, align 4, !dbg !3844
  store i32 947912704, i32* %underflow, align 4, !dbg !3845
  store i32 1199570944, i32* %overflow, align 4, !dbg !3846
  store i16 512, i16* %dstQNaN, align 2, !dbg !3847
  store i16 511, i16* %dstNaNCode, align 2, !dbg !3848
  %0 = load float, float* %a.addr, align 4, !dbg !3849
  %call = call i32 @srcToRep.61(float noundef %0) #4, !dbg !3850
  store i32 %call, i32* %aRep, align 4, !dbg !3851
  %1 = load i32, i32* %aRep, align 4, !dbg !3852
  %and = and i32 %1, 2147483647, !dbg !3853
  store i32 %and, i32* %aAbs, align 4, !dbg !3854
  %2 = load i32, i32* %aRep, align 4, !dbg !3855
  %and1 = and i32 %2, -2147483648, !dbg !3856
  store i32 %and1, i32* %sign, align 4, !dbg !3857
  %3 = load i32, i32* %aAbs, align 4, !dbg !3858
  %sub = sub i32 %3, 947912704, !dbg !3859
  %4 = load i32, i32* %aAbs, align 4, !dbg !3860
  %sub2 = sub i32 %4, 1199570944, !dbg !3861
  %cmp = icmp ult i32 %sub, %sub2, !dbg !3862
  br i1 %cmp, label %if.then, label %if.else18, !dbg !3858

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %aAbs, align 4, !dbg !3863
  %shr = lshr i32 %5, 13, !dbg !3864
  %conv = trunc i32 %shr to i16, !dbg !3863
  store i16 %conv, i16* %absResult, align 2, !dbg !3865
  %6 = load i16, i16* %absResult, align 2, !dbg !3866
  %conv3 = zext i16 %6 to i32, !dbg !3866
  %sub4 = sub nsw i32 %conv3, 114688, !dbg !3866
  %conv5 = trunc i32 %sub4 to i16, !dbg !3866
  store i16 %conv5, i16* %absResult, align 2, !dbg !3866
  %7 = load i32, i32* %aAbs, align 4, !dbg !3867
  %and6 = and i32 %7, 8191, !dbg !3868
  store i32 %and6, i32* %roundBits, align 4, !dbg !3869
  %8 = load i32, i32* %roundBits, align 4, !dbg !3870
  %cmp7 = icmp ugt i32 %8, 4096, !dbg !3871
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !3870

if.then9:                                         ; preds = %if.then
  %9 = load i16, i16* %absResult, align 2, !dbg !3872
  %inc = add i16 %9, 1, !dbg !3872
  store i16 %inc, i16* %absResult, align 2, !dbg !3872
  br label %if.end17, !dbg !3873

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %roundBits, align 4, !dbg !3874
  %cmp10 = icmp eq i32 %10, 4096, !dbg !3875
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !3874

if.then12:                                        ; preds = %if.else
  %11 = load i16, i16* %absResult, align 2, !dbg !3876
  %conv13 = zext i16 %11 to i32, !dbg !3876
  %and14 = and i32 %conv13, 1, !dbg !3877
  %12 = load i16, i16* %absResult, align 2, !dbg !3878
  %conv15 = zext i16 %12 to i32, !dbg !3878
  %add = add nsw i32 %conv15, %and14, !dbg !3878
  %conv16 = trunc i32 %add to i16, !dbg !3878
  store i16 %conv16, i16* %absResult, align 2, !dbg !3878
  br label %if.end, !dbg !3879

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end71, !dbg !3880

if.else18:                                        ; preds = %entry
  %13 = load i32, i32* %aAbs, align 4, !dbg !3881
  %cmp19 = icmp ugt i32 %13, 2139095040, !dbg !3882
  br i1 %cmp19, label %if.then21, label %if.else30, !dbg !3881

if.then21:                                        ; preds = %if.else18
  store i16 31744, i16* %absResult, align 2, !dbg !3883
  %14 = load i16, i16* %absResult, align 2, !dbg !3884
  %conv22 = zext i16 %14 to i32, !dbg !3884
  %or = or i32 %conv22, 512, !dbg !3884
  %conv23 = trunc i32 %or to i16, !dbg !3884
  store i16 %conv23, i16* %absResult, align 2, !dbg !3884
  %15 = load i32, i32* %aAbs, align 4, !dbg !3885
  %and24 = and i32 %15, 4194303, !dbg !3886
  %shr25 = lshr i32 %and24, 13, !dbg !3887
  %and26 = and i32 %shr25, 511, !dbg !3888
  %16 = load i16, i16* %absResult, align 2, !dbg !3889
  %conv27 = zext i16 %16 to i32, !dbg !3889
  %or28 = or i32 %conv27, %and26, !dbg !3889
  %conv29 = trunc i32 %or28 to i16, !dbg !3889
  store i16 %conv29, i16* %absResult, align 2, !dbg !3889
  br label %if.end70, !dbg !3890

if.else30:                                        ; preds = %if.else18
  %17 = load i32, i32* %aAbs, align 4, !dbg !3891
  %cmp31 = icmp uge i32 %17, 1199570944, !dbg !3892
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !3891

if.then33:                                        ; preds = %if.else30
  store i16 31744, i16* %absResult, align 2, !dbg !3893
  br label %if.end69, !dbg !3894

if.else34:                                        ; preds = %if.else30
  %18 = load i32, i32* %aAbs, align 4, !dbg !3895
  %shr35 = lshr i32 %18, 23, !dbg !3896
  store i32 %shr35, i32* %aExp, align 4, !dbg !3897
  %19 = load i32, i32* %aExp, align 4, !dbg !3898
  %sub36 = sub nsw i32 112, %19, !dbg !3899
  %add37 = add nsw i32 %sub36, 1, !dbg !3900
  store i32 %add37, i32* %shift, align 4, !dbg !3901
  %20 = load i32, i32* %aRep, align 4, !dbg !3902
  %and38 = and i32 %20, 8388607, !dbg !3903
  %or39 = or i32 %and38, 8388608, !dbg !3904
  store i32 %or39, i32* %significand, align 4, !dbg !3905
  %21 = load i32, i32* %shift, align 4, !dbg !3906
  %cmp40 = icmp sgt i32 %21, 23, !dbg !3907
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !3906

if.then42:                                        ; preds = %if.else34
  store i16 0, i16* %absResult, align 2, !dbg !3908
  br label %if.end68, !dbg !3909

if.else43:                                        ; preds = %if.else34
  %22 = load i32, i32* %significand, align 4, !dbg !3910
  %23 = load i32, i32* %shift, align 4, !dbg !3911
  %sub44 = sub nsw i32 32, %23, !dbg !3912
  %shl = shl i32 %22, %sub44, !dbg !3913
  %tobool = icmp ne i32 %shl, 0, !dbg !3910
  %frombool = zext i1 %tobool to i8, !dbg !3914
  store i8 %frombool, i8* %sticky, align 1, !dbg !3914
  %24 = load i32, i32* %significand, align 4, !dbg !3915
  %25 = load i32, i32* %shift, align 4, !dbg !3916
  %shr45 = lshr i32 %24, %25, !dbg !3917
  %26 = load i8, i8* %sticky, align 1, !dbg !3918
  %tobool46 = trunc i8 %26 to i1, !dbg !3918
  %conv47 = zext i1 %tobool46 to i32, !dbg !3918
  %or48 = or i32 %shr45, %conv47, !dbg !3919
  store i32 %or48, i32* %denormalizedSignificand, align 4, !dbg !3920
  %27 = load i32, i32* %denormalizedSignificand, align 4, !dbg !3921
  %shr49 = lshr i32 %27, 13, !dbg !3922
  %conv50 = trunc i32 %shr49 to i16, !dbg !3921
  store i16 %conv50, i16* %absResult, align 2, !dbg !3923
  %28 = load i32, i32* %denormalizedSignificand, align 4, !dbg !3924
  %and52 = and i32 %28, 8191, !dbg !3925
  store i32 %and52, i32* %roundBits51, align 4, !dbg !3926
  %29 = load i32, i32* %roundBits51, align 4, !dbg !3927
  %cmp53 = icmp ugt i32 %29, 4096, !dbg !3928
  br i1 %cmp53, label %if.then55, label %if.else57, !dbg !3927

if.then55:                                        ; preds = %if.else43
  %30 = load i16, i16* %absResult, align 2, !dbg !3929
  %inc56 = add i16 %30, 1, !dbg !3929
  store i16 %inc56, i16* %absResult, align 2, !dbg !3929
  br label %if.end67, !dbg !3930

if.else57:                                        ; preds = %if.else43
  %31 = load i32, i32* %roundBits51, align 4, !dbg !3931
  %cmp58 = icmp eq i32 %31, 4096, !dbg !3932
  br i1 %cmp58, label %if.then60, label %if.end66, !dbg !3931

if.then60:                                        ; preds = %if.else57
  %32 = load i16, i16* %absResult, align 2, !dbg !3933
  %conv61 = zext i16 %32 to i32, !dbg !3933
  %and62 = and i32 %conv61, 1, !dbg !3934
  %33 = load i16, i16* %absResult, align 2, !dbg !3935
  %conv63 = zext i16 %33 to i32, !dbg !3935
  %add64 = add nsw i32 %conv63, %and62, !dbg !3935
  %conv65 = trunc i32 %add64 to i16, !dbg !3935
  store i16 %conv65, i16* %absResult, align 2, !dbg !3935
  br label %if.end66, !dbg !3936

if.end66:                                         ; preds = %if.then60, %if.else57
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then55
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then42
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then33
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then21
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end17
  %34 = load i16, i16* %absResult, align 2, !dbg !3937
  %conv72 = zext i16 %34 to i32, !dbg !3937
  %35 = load i32, i32* %sign, align 4, !dbg !3938
  %shr73 = lshr i32 %35, 16, !dbg !3939
  %or74 = or i32 %conv72, %shr73, !dbg !3940
  %conv75 = trunc i32 %or74 to i16, !dbg !3937
  store i16 %conv75, i16* %result, align 2, !dbg !3941
  %36 = load i16, i16* %result, align 2, !dbg !3942
  %call76 = call zeroext i16 @dstFromRep.62(i16 noundef zeroext %36) #4, !dbg !3943
  ret i16 %call76, !dbg !3944
}

; Function Attrs: noinline nounwind
define internal i32 @srcToRep.61(float noundef %x) #0 !dbg !3945 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3946
  %0 = load float, float* %x.addr, align 4, !dbg !3947
  store float %0, float* %f, align 4, !dbg !3946
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3948
  %1 = load i32, i32* %i, align 4, !dbg !3948
  ret i32 %1, !dbg !3949
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @dstFromRep.62(i16 noundef zeroext %x) #0 !dbg !3950 {
entry:
  %x.addr = alloca i16, align 2
  %rep = alloca %union.anon, align 2
  store i16 %x, i16* %x.addr, align 2
  %i = bitcast %union.anon* %rep to i16*, !dbg !3951
  %0 = load i16, i16* %x.addr, align 2, !dbg !3952
  store i16 %0, i16* %i, align 2, !dbg !3951
  %f = bitcast %union.anon* %rep to i16*, !dbg !3953
  %1 = load i16, i16* %f, align 2, !dbg !3953
  ret i16 %1, !dbg !3954
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @__gnu_f2h_ieee(float noundef %a) #0 !dbg !3955 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3956
  %call = call zeroext i16 @__truncsfhf2(float noundef %0) #4, !dbg !3957
  ret i16 %call, !dbg !3958
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.ident = !{!128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128, !128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../adddf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e0251d85d8b9298f4b7d7bde89c2da14")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../addsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "374fec2ce14c515fea2743927d345a52")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "../comparedf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "fbd12646cae0afa4f38a456b06356d8d")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "../comparesf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "0ebe6266ac9f076b05c337420b1e2170")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../divdf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "261cc11321bc9c6e7119a2df54ff0ff8")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "../divsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7d3063a03b9dc025d09812aef44ed398")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../extendhfsf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "a5a10e040b7849d52a32e736bcb3c397")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../extendsfdf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "4e1f23973b36a8543e6f218ddda73a81")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../fixdfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "47e708860fdf5a8df241e5320d28d108")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../fixdfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "ab025b47eaba5eab57a20c4f7d364472")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../fixdfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e8cfbed86a48d8d385e0ba3358daa4fe")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../fixsfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "cc8fccc6df63f71c2ce1c1c99dec5510")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../fixsfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "42c849690580d6639a7796e4fd09df10")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../fixsfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "f9344e0ca2da9525f9b706daff202bea")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../fixunsdfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "bb698dc308993ca2bb4ab90619c828c7")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../fixunsdfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "029e294e42ede4179ebf70d7b8cdcbce")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../fixunsdfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "caef2e593a4fabc6c1231bd68a82d55c")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../fixunssfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "6b0da526a1e4fbc8a0b0f9991405e5aa")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../fixunssfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "48b21aad953f9cc2c9112be544031b21")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../fixunssfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "2059b01af49f2fb00e9ef512708a78bb")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../fixunsxfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "c5b8c82f82ec230f86bab25cdd51241f")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../fixunsxfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "3a4bc679da33f33545955f1d5f9295a3")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../fixunsxfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "c81feece3aea6f34d7045357bee719f0")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../fixxfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "1d3e33c056b8d764ec90c9c4bccde967")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../fixxfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "538dbc97aba965b3c18c60b96c1718fd")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../floatdidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "589757f5bf5948f8d680d68ea09b8b28")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../floatdisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "d490cd79b8654d77c2b677080ad7dccc")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../floatdixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "8b1a0058f785628324b5f9e560c1f2f7")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../floatsidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "74d68f8d7666958b02fc991a96f5d18b")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../floatsisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e8269d7393de437d1985e43b852d1b4c")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../floattidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "02001cec56eeadee7fe6f3cc8807cedb")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../floattisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "f78b4a675b5ede3cf4565e9926770440")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../floattixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "363950fc75fc38684746712d53c0b081")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../floatundidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "332ecea9fc06121bb9792813051cd121")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../floatundisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7ab0c7414b7105a5334add4b33b95292")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../floatundixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "55601cdc8ffb7b6458d917ea4861681f")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../floatunsidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7abcd27bee360e384bfcbe8b4e29e4b5")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../floatunsisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "25377c9e1088361533bcc87d26a579aa")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../floatuntidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "daaa5863596bd264231583dd4e935351")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../floatuntisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "3c8eb24382036e5bf69269c87c968665")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../floatuntixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "af14ea06c35eff6221145fef129eb14b")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../muldf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e1094ad6f1ac68776663659720a263c1")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../muldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "df26ca90afd732d72d44a32b26ef9ff6")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../mulodi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "548e26a16754ea0a5e8b99fd257e0228")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../mulosi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "5df5fe6423348eb23592c3af73d99ba1")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../muloti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "705b62b6400093f8c368f9a43e940021")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../mulsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "2f401fa14324cdf3806a6e0a75176873")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../multi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e3a762d0cee613ddcbe257a7e3f59bd6")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../negdf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "856367fb8d9ed2d14100b66d78c0cb6a")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../negdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "338e7f5aee6d443286451453d2d8b2ee")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../negsf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "9ce93f6a4d6a5fd6bd4a2c8b1cec4f7d")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../negti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "28b6572c640233aee02ab6cc80df25ad")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../negvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "814179687c8ab9c02d6c16d74f3c8cc7")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../negvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "25551377cb1882de433decba0bed328a")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../negvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "a07c33be4dee71901c4ea0f33edfbfe4")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../powidf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "b63b11bd01652aa60af60c7ccb3ffe0d")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../powisf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "9b2ba22fb17e1bd7a8c91a47073af5eb")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../powitf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "a5822c6b584193a485d39742a1bd03ad")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../powixf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "053c772639acd49f8c4cdf3eb9bb7bee")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../subdf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "b385478a5e4c00397ac82ee5b0b51f57")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../subsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "c3a6b2693ea97bea2331c4555d4efe2d")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../truncdfhf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "d933e46dfe952b3d2808f5620f0aeefa")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../truncdfsf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "70a3f09e6c98a39d709dbf03acedc251")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../truncsfhf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "770788bf3f7b6a834415d81367cf4d39")
!128 = !{!"clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)"}
!129 = !{i32 7, !"Dwarf Version", i32 5}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 4}
!132 = !{i32 1, !"target-abi", !"ilp32"}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{i32 1, !"SmallDataLimit", i32 8}
!135 = distinct !DISubprogram(name: "__adddf3", scope: !1, file: !1, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !137)
!136 = !DISubroutineType(types: !137)
!137 = !{}
!138 = !DILocation(line: 21, column: 23, scope: !135)
!139 = !DILocation(line: 21, column: 26, scope: !135)
!140 = !DILocation(line: 21, column: 12, scope: !135)
!141 = !DILocation(line: 21, column: 5, scope: !135)
!142 = distinct !DISubprogram(name: "__addXf3__", scope: !143, file: !143, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !137)
!143 = !DIFile(filename: "../fp_add_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "5bd22e4da10823e89bdeb8c5b297f4f4")
!144 = !DILocation(line: 18, column: 24, scope: !142)
!145 = !DILocation(line: 18, column: 18, scope: !142)
!146 = !DILocation(line: 18, column: 11, scope: !142)
!147 = !DILocation(line: 19, column: 24, scope: !142)
!148 = !DILocation(line: 19, column: 18, scope: !142)
!149 = !DILocation(line: 19, column: 11, scope: !142)
!150 = !DILocation(line: 20, column: 24, scope: !142)
!151 = !DILocation(line: 20, column: 29, scope: !142)
!152 = !DILocation(line: 20, column: 17, scope: !142)
!153 = !DILocation(line: 21, column: 24, scope: !142)
!154 = !DILocation(line: 21, column: 29, scope: !142)
!155 = !DILocation(line: 21, column: 17, scope: !142)
!156 = !DILocation(line: 24, column: 9, scope: !142)
!157 = !DILocation(line: 24, column: 14, scope: !142)
!158 = !DILocation(line: 24, column: 25, scope: !142)
!159 = !DILocation(line: 24, column: 46, scope: !142)
!160 = !DILocation(line: 25, column: 9, scope: !142)
!161 = !DILocation(line: 25, column: 14, scope: !142)
!162 = !DILocation(line: 25, column: 25, scope: !142)
!163 = !DILocation(line: 27, column: 13, scope: !142)
!164 = !DILocation(line: 27, column: 18, scope: !142)
!165 = !DILocation(line: 27, column: 49, scope: !142)
!166 = !DILocation(line: 27, column: 43, scope: !142)
!167 = !DILocation(line: 27, column: 52, scope: !142)
!168 = !DILocation(line: 27, column: 35, scope: !142)
!169 = !DILocation(line: 27, column: 28, scope: !142)
!170 = !DILocation(line: 29, column: 13, scope: !142)
!171 = !DILocation(line: 29, column: 18, scope: !142)
!172 = !DILocation(line: 29, column: 49, scope: !142)
!173 = !DILocation(line: 29, column: 43, scope: !142)
!174 = !DILocation(line: 29, column: 52, scope: !142)
!175 = !DILocation(line: 29, column: 35, scope: !142)
!176 = !DILocation(line: 29, column: 28, scope: !142)
!177 = !DILocation(line: 31, column: 13, scope: !142)
!178 = !DILocation(line: 31, column: 18, scope: !142)
!179 = !DILocation(line: 33, column: 24, scope: !142)
!180 = !DILocation(line: 33, column: 18, scope: !142)
!181 = !DILocation(line: 33, column: 35, scope: !142)
!182 = !DILocation(line: 33, column: 29, scope: !142)
!183 = !DILocation(line: 33, column: 27, scope: !142)
!184 = !DILocation(line: 33, column: 39, scope: !142)
!185 = !DILocation(line: 33, column: 17, scope: !142)
!186 = !DILocation(line: 33, column: 58, scope: !142)
!187 = !DILocation(line: 33, column: 51, scope: !142)
!188 = !DILocation(line: 35, column: 25, scope: !142)
!189 = !DILocation(line: 35, column: 18, scope: !142)
!190 = !DILocation(line: 39, column: 13, scope: !142)
!191 = !DILocation(line: 39, column: 18, scope: !142)
!192 = !DILocation(line: 39, column: 36, scope: !142)
!193 = !DILocation(line: 39, column: 29, scope: !142)
!194 = !DILocation(line: 42, column: 14, scope: !142)
!195 = !DILocation(line: 42, column: 13, scope: !142)
!196 = !DILocation(line: 44, column: 18, scope: !142)
!197 = !DILocation(line: 44, column: 17, scope: !142)
!198 = !DILocation(line: 44, column: 45, scope: !142)
!199 = !DILocation(line: 44, column: 39, scope: !142)
!200 = !DILocation(line: 44, column: 56, scope: !142)
!201 = !DILocation(line: 44, column: 50, scope: !142)
!202 = !DILocation(line: 44, column: 48, scope: !142)
!203 = !DILocation(line: 44, column: 31, scope: !142)
!204 = !DILocation(line: 44, column: 24, scope: !142)
!205 = !DILocation(line: 45, column: 25, scope: !142)
!206 = !DILocation(line: 45, column: 18, scope: !142)
!207 = !DILocation(line: 49, column: 14, scope: !142)
!208 = !DILocation(line: 49, column: 13, scope: !142)
!209 = !DILocation(line: 49, column: 27, scope: !142)
!210 = !DILocation(line: 49, column: 20, scope: !142)
!211 = !DILocation(line: 50, column: 5, scope: !142)
!212 = !DILocation(line: 53, column: 9, scope: !142)
!213 = !DILocation(line: 53, column: 16, scope: !142)
!214 = !DILocation(line: 53, column: 14, scope: !142)
!215 = !DILocation(line: 54, column: 28, scope: !142)
!216 = !DILocation(line: 54, column: 21, scope: !142)
!217 = !DILocation(line: 55, column: 16, scope: !142)
!218 = !DILocation(line: 55, column: 14, scope: !142)
!219 = !DILocation(line: 56, column: 16, scope: !142)
!220 = !DILocation(line: 56, column: 14, scope: !142)
!221 = !DILocation(line: 57, column: 5, scope: !142)
!222 = !DILocation(line: 60, column: 21, scope: !142)
!223 = !DILocation(line: 60, column: 26, scope: !142)
!224 = !DILocation(line: 60, column: 45, scope: !142)
!225 = !DILocation(line: 60, column: 9, scope: !142)
!226 = !DILocation(line: 61, column: 21, scope: !142)
!227 = !DILocation(line: 61, column: 26, scope: !142)
!228 = !DILocation(line: 61, column: 45, scope: !142)
!229 = !DILocation(line: 61, column: 9, scope: !142)
!230 = !DILocation(line: 62, column: 26, scope: !142)
!231 = !DILocation(line: 62, column: 31, scope: !142)
!232 = !DILocation(line: 62, column: 11, scope: !142)
!233 = !DILocation(line: 63, column: 26, scope: !142)
!234 = !DILocation(line: 63, column: 31, scope: !142)
!235 = !DILocation(line: 63, column: 11, scope: !142)
!236 = !DILocation(line: 66, column: 9, scope: !142)
!237 = !DILocation(line: 66, column: 19, scope: !142)
!238 = !DILocation(line: 66, column: 37, scope: !142)
!239 = !DILocation(line: 66, column: 35, scope: !142)
!240 = !DILocation(line: 66, column: 25, scope: !142)
!241 = !DILocation(line: 67, column: 9, scope: !142)
!242 = !DILocation(line: 67, column: 19, scope: !142)
!243 = !DILocation(line: 67, column: 37, scope: !142)
!244 = !DILocation(line: 67, column: 35, scope: !142)
!245 = !DILocation(line: 67, column: 25, scope: !142)
!246 = !DILocation(line: 71, column: 30, scope: !142)
!247 = !DILocation(line: 71, column: 35, scope: !142)
!248 = !DILocation(line: 71, column: 17, scope: !142)
!249 = !DILocation(line: 72, column: 31, scope: !142)
!250 = !DILocation(line: 72, column: 38, scope: !142)
!251 = !DILocation(line: 72, column: 36, scope: !142)
!252 = !DILocation(line: 72, column: 44, scope: !142)
!253 = !DILocation(line: 72, column: 30, scope: !142)
!254 = !DILocation(line: 72, column: 16, scope: !142)
!255 = !DILocation(line: 78, column: 21, scope: !142)
!256 = !DILocation(line: 78, column: 34, scope: !142)
!257 = !DILocation(line: 78, column: 49, scope: !142)
!258 = !DILocation(line: 78, column: 18, scope: !142)
!259 = !DILocation(line: 79, column: 21, scope: !142)
!260 = !DILocation(line: 79, column: 34, scope: !142)
!261 = !DILocation(line: 79, column: 49, scope: !142)
!262 = !DILocation(line: 79, column: 18, scope: !142)
!263 = !DILocation(line: 83, column: 32, scope: !142)
!264 = !DILocation(line: 83, column: 44, scope: !142)
!265 = !DILocation(line: 83, column: 42, scope: !142)
!266 = !DILocation(line: 83, column: 24, scope: !142)
!267 = !DILocation(line: 84, column: 9, scope: !142)
!268 = !DILocation(line: 85, column: 13, scope: !142)
!269 = !DILocation(line: 85, column: 19, scope: !142)
!270 = !DILocation(line: 86, column: 33, scope: !142)
!271 = !DILocation(line: 86, column: 62, scope: !142)
!272 = !DILocation(line: 86, column: 60, scope: !142)
!273 = !DILocation(line: 86, column: 46, scope: !142)
!274 = !DILocation(line: 86, column: 24, scope: !142)
!275 = !DILocation(line: 87, column: 28, scope: !142)
!276 = !DILocation(line: 87, column: 44, scope: !142)
!277 = !DILocation(line: 87, column: 41, scope: !142)
!278 = !DILocation(line: 87, column: 52, scope: !142)
!279 = !DILocation(line: 87, column: 50, scope: !142)
!280 = !DILocation(line: 87, column: 26, scope: !142)
!281 = !DILocation(line: 88, column: 9, scope: !142)
!282 = !DILocation(line: 89, column: 26, scope: !142)
!283 = !DILocation(line: 91, column: 5, scope: !142)
!284 = !DILocation(line: 92, column: 9, scope: !142)
!285 = !DILocation(line: 93, column: 25, scope: !142)
!286 = !DILocation(line: 93, column: 22, scope: !142)
!287 = !DILocation(line: 95, column: 13, scope: !142)
!288 = !DILocation(line: 95, column: 26, scope: !142)
!289 = !DILocation(line: 95, column: 39, scope: !142)
!290 = !DILocation(line: 95, column: 32, scope: !142)
!291 = !DILocation(line: 99, column: 13, scope: !142)
!292 = !DILocation(line: 99, column: 26, scope: !142)
!293 = !DILocation(line: 100, column: 39, scope: !142)
!294 = !DILocation(line: 100, column: 31, scope: !142)
!295 = !DILocation(line: 100, column: 55, scope: !142)
!296 = !DILocation(line: 100, column: 53, scope: !142)
!297 = !DILocation(line: 100, column: 23, scope: !142)
!298 = !DILocation(line: 101, column: 30, scope: !142)
!299 = !DILocation(line: 101, column: 26, scope: !142)
!300 = !DILocation(line: 102, column: 26, scope: !142)
!301 = !DILocation(line: 102, column: 23, scope: !142)
!302 = !DILocation(line: 103, column: 9, scope: !142)
!303 = !DILocation(line: 104, column: 5, scope: !142)
!304 = !DILocation(line: 106, column: 25, scope: !142)
!305 = !DILocation(line: 106, column: 22, scope: !142)
!306 = !DILocation(line: 110, column: 13, scope: !142)
!307 = !DILocation(line: 110, column: 26, scope: !142)
!308 = !DILocation(line: 111, column: 33, scope: !142)
!309 = !DILocation(line: 111, column: 46, scope: !142)
!310 = !DILocation(line: 111, column: 24, scope: !142)
!311 = !DILocation(line: 112, column: 28, scope: !142)
!312 = !DILocation(line: 112, column: 41, scope: !142)
!313 = !DILocation(line: 112, column: 48, scope: !142)
!314 = !DILocation(line: 112, column: 46, scope: !142)
!315 = !DILocation(line: 112, column: 26, scope: !142)
!316 = !DILocation(line: 113, column: 23, scope: !142)
!317 = !DILocation(line: 114, column: 9, scope: !142)
!318 = !DILocation(line: 118, column: 9, scope: !142)
!319 = !DILocation(line: 118, column: 19, scope: !142)
!320 = !DILocation(line: 118, column: 59, scope: !142)
!321 = !DILocation(line: 118, column: 57, scope: !142)
!322 = !DILocation(line: 118, column: 42, scope: !142)
!323 = !DILocation(line: 118, column: 35, scope: !142)
!324 = !DILocation(line: 120, column: 9, scope: !142)
!325 = !DILocation(line: 120, column: 19, scope: !142)
!326 = !DILocation(line: 123, column: 31, scope: !142)
!327 = !DILocation(line: 123, column: 29, scope: !142)
!328 = !DILocation(line: 123, column: 19, scope: !142)
!329 = !DILocation(line: 124, column: 29, scope: !142)
!330 = !DILocation(line: 124, column: 58, scope: !142)
!331 = !DILocation(line: 124, column: 56, scope: !142)
!332 = !DILocation(line: 124, column: 42, scope: !142)
!333 = !DILocation(line: 124, column: 20, scope: !142)
!334 = !DILocation(line: 125, column: 24, scope: !142)
!335 = !DILocation(line: 125, column: 40, scope: !142)
!336 = !DILocation(line: 125, column: 37, scope: !142)
!337 = !DILocation(line: 125, column: 48, scope: !142)
!338 = !DILocation(line: 125, column: 46, scope: !142)
!339 = !DILocation(line: 125, column: 22, scope: !142)
!340 = !DILocation(line: 126, column: 19, scope: !142)
!341 = !DILocation(line: 127, column: 5, scope: !142)
!342 = !DILocation(line: 130, column: 34, scope: !142)
!343 = !DILocation(line: 130, column: 47, scope: !142)
!344 = !DILocation(line: 130, column: 15, scope: !142)
!345 = !DILocation(line: 133, column: 20, scope: !142)
!346 = !DILocation(line: 133, column: 33, scope: !142)
!347 = !DILocation(line: 133, column: 38, scope: !142)
!348 = !DILocation(line: 133, column: 11, scope: !142)
!349 = !DILocation(line: 136, column: 22, scope: !142)
!350 = !DILocation(line: 136, column: 15, scope: !142)
!351 = !DILocation(line: 136, column: 32, scope: !142)
!352 = !DILocation(line: 136, column: 12, scope: !142)
!353 = !DILocation(line: 137, column: 15, scope: !142)
!354 = !DILocation(line: 137, column: 12, scope: !142)
!355 = !DILocation(line: 141, column: 9, scope: !142)
!356 = !DILocation(line: 141, column: 26, scope: !142)
!357 = !DILocation(line: 141, column: 39, scope: !142)
!358 = !DILocation(line: 141, column: 33, scope: !142)
!359 = !DILocation(line: 142, column: 9, scope: !142)
!360 = !DILocation(line: 142, column: 26, scope: !142)
!361 = !DILocation(line: 142, column: 44, scope: !142)
!362 = !DILocation(line: 142, column: 51, scope: !142)
!363 = !DILocation(line: 142, column: 41, scope: !142)
!364 = !DILocation(line: 142, column: 34, scope: !142)
!365 = !DILocation(line: 143, column: 20, scope: !142)
!366 = !DILocation(line: 143, column: 12, scope: !142)
!367 = !DILocation(line: 143, column: 5, scope: !142)
!368 = !DILocation(line: 144, column: 1, scope: !142)
!369 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !137)
!370 = !DIFile(filename: "../fp_lib.h", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7dc3444b56426ce9030559b28a9f87ee")
!371 = !DILocation(line: 232, column: 44, scope: !369)
!372 = !DILocation(line: 232, column: 50, scope: !369)
!373 = !DILocation(line: 233, column: 16, scope: !369)
!374 = !DILocation(line: 233, column: 5, scope: !369)
!375 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !137)
!376 = !DILocation(line: 237, column: 44, scope: !375)
!377 = !DILocation(line: 237, column: 50, scope: !375)
!378 = !DILocation(line: 238, column: 16, scope: !375)
!379 = !DILocation(line: 238, column: 5, scope: !375)
!380 = distinct !DISubprogram(name: "normalize", scope: !370, file: !370, line: 241, type: !136, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !137)
!381 = !DILocation(line: 242, column: 32, scope: !380)
!382 = !DILocation(line: 242, column: 31, scope: !380)
!383 = !DILocation(line: 242, column: 23, scope: !380)
!384 = !DILocation(line: 242, column: 47, scope: !380)
!385 = !DILocation(line: 242, column: 45, scope: !380)
!386 = !DILocation(line: 242, column: 15, scope: !380)
!387 = !DILocation(line: 243, column: 22, scope: !380)
!388 = !DILocation(line: 243, column: 6, scope: !380)
!389 = !DILocation(line: 243, column: 18, scope: !380)
!390 = !DILocation(line: 244, column: 16, scope: !380)
!391 = !DILocation(line: 244, column: 14, scope: !380)
!392 = !DILocation(line: 244, column: 5, scope: !380)
!393 = distinct !DISubprogram(name: "rep_clz", scope: !370, file: !370, line: 69, type: !136, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !137)
!394 = !DILocation(line: 73, column: 9, scope: !393)
!395 = !DILocation(line: 73, column: 11, scope: !393)
!396 = !DILocation(line: 74, column: 30, scope: !393)
!397 = !DILocation(line: 74, column: 32, scope: !393)
!398 = !DILocation(line: 74, column: 16, scope: !393)
!399 = !DILocation(line: 74, column: 9, scope: !393)
!400 = !DILocation(line: 76, column: 35, scope: !393)
!401 = !DILocation(line: 76, column: 37, scope: !393)
!402 = !DILocation(line: 76, column: 21, scope: !393)
!403 = !DILocation(line: 76, column: 19, scope: !393)
!404 = !DILocation(line: 76, column: 9, scope: !393)
!405 = !DILocation(line: 78, column: 1, scope: !393)
!406 = distinct !DISubprogram(name: "__addsf3", scope: !3, file: !3, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!407 = !DILocation(line: 21, column: 23, scope: !406)
!408 = !DILocation(line: 21, column: 26, scope: !406)
!409 = !DILocation(line: 21, column: 12, scope: !406)
!410 = !DILocation(line: 21, column: 5, scope: !406)
!411 = distinct !DISubprogram(name: "__addXf3__", scope: !143, file: !143, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!412 = !DILocation(line: 18, column: 24, scope: !411)
!413 = !DILocation(line: 18, column: 18, scope: !411)
!414 = !DILocation(line: 18, column: 11, scope: !411)
!415 = !DILocation(line: 19, column: 24, scope: !411)
!416 = !DILocation(line: 19, column: 18, scope: !411)
!417 = !DILocation(line: 19, column: 11, scope: !411)
!418 = !DILocation(line: 20, column: 24, scope: !411)
!419 = !DILocation(line: 20, column: 29, scope: !411)
!420 = !DILocation(line: 20, column: 17, scope: !411)
!421 = !DILocation(line: 21, column: 24, scope: !411)
!422 = !DILocation(line: 21, column: 29, scope: !411)
!423 = !DILocation(line: 21, column: 17, scope: !411)
!424 = !DILocation(line: 24, column: 9, scope: !411)
!425 = !DILocation(line: 24, column: 14, scope: !411)
!426 = !DILocation(line: 24, column: 25, scope: !411)
!427 = !DILocation(line: 24, column: 46, scope: !411)
!428 = !DILocation(line: 25, column: 9, scope: !411)
!429 = !DILocation(line: 25, column: 14, scope: !411)
!430 = !DILocation(line: 25, column: 25, scope: !411)
!431 = !DILocation(line: 27, column: 13, scope: !411)
!432 = !DILocation(line: 27, column: 18, scope: !411)
!433 = !DILocation(line: 27, column: 49, scope: !411)
!434 = !DILocation(line: 27, column: 43, scope: !411)
!435 = !DILocation(line: 27, column: 52, scope: !411)
!436 = !DILocation(line: 27, column: 35, scope: !411)
!437 = !DILocation(line: 27, column: 28, scope: !411)
!438 = !DILocation(line: 29, column: 13, scope: !411)
!439 = !DILocation(line: 29, column: 18, scope: !411)
!440 = !DILocation(line: 29, column: 49, scope: !411)
!441 = !DILocation(line: 29, column: 43, scope: !411)
!442 = !DILocation(line: 29, column: 52, scope: !411)
!443 = !DILocation(line: 29, column: 35, scope: !411)
!444 = !DILocation(line: 29, column: 28, scope: !411)
!445 = !DILocation(line: 31, column: 13, scope: !411)
!446 = !DILocation(line: 31, column: 18, scope: !411)
!447 = !DILocation(line: 33, column: 24, scope: !411)
!448 = !DILocation(line: 33, column: 18, scope: !411)
!449 = !DILocation(line: 33, column: 35, scope: !411)
!450 = !DILocation(line: 33, column: 29, scope: !411)
!451 = !DILocation(line: 33, column: 27, scope: !411)
!452 = !DILocation(line: 33, column: 39, scope: !411)
!453 = !DILocation(line: 33, column: 17, scope: !411)
!454 = !DILocation(line: 33, column: 58, scope: !411)
!455 = !DILocation(line: 33, column: 51, scope: !411)
!456 = !DILocation(line: 35, column: 25, scope: !411)
!457 = !DILocation(line: 35, column: 18, scope: !411)
!458 = !DILocation(line: 39, column: 13, scope: !411)
!459 = !DILocation(line: 39, column: 18, scope: !411)
!460 = !DILocation(line: 39, column: 36, scope: !411)
!461 = !DILocation(line: 39, column: 29, scope: !411)
!462 = !DILocation(line: 42, column: 14, scope: !411)
!463 = !DILocation(line: 42, column: 13, scope: !411)
!464 = !DILocation(line: 44, column: 18, scope: !411)
!465 = !DILocation(line: 44, column: 17, scope: !411)
!466 = !DILocation(line: 44, column: 45, scope: !411)
!467 = !DILocation(line: 44, column: 39, scope: !411)
!468 = !DILocation(line: 44, column: 56, scope: !411)
!469 = !DILocation(line: 44, column: 50, scope: !411)
!470 = !DILocation(line: 44, column: 48, scope: !411)
!471 = !DILocation(line: 44, column: 31, scope: !411)
!472 = !DILocation(line: 44, column: 24, scope: !411)
!473 = !DILocation(line: 45, column: 25, scope: !411)
!474 = !DILocation(line: 45, column: 18, scope: !411)
!475 = !DILocation(line: 49, column: 14, scope: !411)
!476 = !DILocation(line: 49, column: 13, scope: !411)
!477 = !DILocation(line: 49, column: 27, scope: !411)
!478 = !DILocation(line: 49, column: 20, scope: !411)
!479 = !DILocation(line: 50, column: 5, scope: !411)
!480 = !DILocation(line: 53, column: 9, scope: !411)
!481 = !DILocation(line: 53, column: 16, scope: !411)
!482 = !DILocation(line: 53, column: 14, scope: !411)
!483 = !DILocation(line: 54, column: 28, scope: !411)
!484 = !DILocation(line: 54, column: 21, scope: !411)
!485 = !DILocation(line: 55, column: 16, scope: !411)
!486 = !DILocation(line: 55, column: 14, scope: !411)
!487 = !DILocation(line: 56, column: 16, scope: !411)
!488 = !DILocation(line: 56, column: 14, scope: !411)
!489 = !DILocation(line: 57, column: 5, scope: !411)
!490 = !DILocation(line: 60, column: 21, scope: !411)
!491 = !DILocation(line: 60, column: 26, scope: !411)
!492 = !DILocation(line: 60, column: 45, scope: !411)
!493 = !DILocation(line: 60, column: 9, scope: !411)
!494 = !DILocation(line: 61, column: 21, scope: !411)
!495 = !DILocation(line: 61, column: 26, scope: !411)
!496 = !DILocation(line: 61, column: 45, scope: !411)
!497 = !DILocation(line: 61, column: 9, scope: !411)
!498 = !DILocation(line: 62, column: 26, scope: !411)
!499 = !DILocation(line: 62, column: 31, scope: !411)
!500 = !DILocation(line: 62, column: 11, scope: !411)
!501 = !DILocation(line: 63, column: 26, scope: !411)
!502 = !DILocation(line: 63, column: 31, scope: !411)
!503 = !DILocation(line: 63, column: 11, scope: !411)
!504 = !DILocation(line: 66, column: 9, scope: !411)
!505 = !DILocation(line: 66, column: 19, scope: !411)
!506 = !DILocation(line: 66, column: 37, scope: !411)
!507 = !DILocation(line: 66, column: 35, scope: !411)
!508 = !DILocation(line: 66, column: 25, scope: !411)
!509 = !DILocation(line: 67, column: 9, scope: !411)
!510 = !DILocation(line: 67, column: 19, scope: !411)
!511 = !DILocation(line: 67, column: 37, scope: !411)
!512 = !DILocation(line: 67, column: 35, scope: !411)
!513 = !DILocation(line: 67, column: 25, scope: !411)
!514 = !DILocation(line: 71, column: 30, scope: !411)
!515 = !DILocation(line: 71, column: 35, scope: !411)
!516 = !DILocation(line: 71, column: 17, scope: !411)
!517 = !DILocation(line: 72, column: 31, scope: !411)
!518 = !DILocation(line: 72, column: 38, scope: !411)
!519 = !DILocation(line: 72, column: 36, scope: !411)
!520 = !DILocation(line: 72, column: 44, scope: !411)
!521 = !DILocation(line: 72, column: 30, scope: !411)
!522 = !DILocation(line: 72, column: 16, scope: !411)
!523 = !DILocation(line: 78, column: 21, scope: !411)
!524 = !DILocation(line: 78, column: 34, scope: !411)
!525 = !DILocation(line: 78, column: 49, scope: !411)
!526 = !DILocation(line: 78, column: 18, scope: !411)
!527 = !DILocation(line: 79, column: 21, scope: !411)
!528 = !DILocation(line: 79, column: 34, scope: !411)
!529 = !DILocation(line: 79, column: 49, scope: !411)
!530 = !DILocation(line: 79, column: 18, scope: !411)
!531 = !DILocation(line: 83, column: 32, scope: !411)
!532 = !DILocation(line: 83, column: 44, scope: !411)
!533 = !DILocation(line: 83, column: 42, scope: !411)
!534 = !DILocation(line: 83, column: 24, scope: !411)
!535 = !DILocation(line: 84, column: 9, scope: !411)
!536 = !DILocation(line: 85, column: 13, scope: !411)
!537 = !DILocation(line: 85, column: 19, scope: !411)
!538 = !DILocation(line: 86, column: 33, scope: !411)
!539 = !DILocation(line: 86, column: 62, scope: !411)
!540 = !DILocation(line: 86, column: 60, scope: !411)
!541 = !DILocation(line: 86, column: 46, scope: !411)
!542 = !DILocation(line: 86, column: 24, scope: !411)
!543 = !DILocation(line: 87, column: 28, scope: !411)
!544 = !DILocation(line: 87, column: 44, scope: !411)
!545 = !DILocation(line: 87, column: 41, scope: !411)
!546 = !DILocation(line: 87, column: 52, scope: !411)
!547 = !DILocation(line: 87, column: 50, scope: !411)
!548 = !DILocation(line: 87, column: 26, scope: !411)
!549 = !DILocation(line: 88, column: 9, scope: !411)
!550 = !DILocation(line: 89, column: 26, scope: !411)
!551 = !DILocation(line: 91, column: 5, scope: !411)
!552 = !DILocation(line: 92, column: 9, scope: !411)
!553 = !DILocation(line: 93, column: 25, scope: !411)
!554 = !DILocation(line: 93, column: 22, scope: !411)
!555 = !DILocation(line: 95, column: 13, scope: !411)
!556 = !DILocation(line: 95, column: 26, scope: !411)
!557 = !DILocation(line: 95, column: 39, scope: !411)
!558 = !DILocation(line: 95, column: 32, scope: !411)
!559 = !DILocation(line: 99, column: 13, scope: !411)
!560 = !DILocation(line: 99, column: 26, scope: !411)
!561 = !DILocation(line: 100, column: 39, scope: !411)
!562 = !DILocation(line: 100, column: 31, scope: !411)
!563 = !DILocation(line: 100, column: 55, scope: !411)
!564 = !DILocation(line: 100, column: 53, scope: !411)
!565 = !DILocation(line: 100, column: 23, scope: !411)
!566 = !DILocation(line: 101, column: 30, scope: !411)
!567 = !DILocation(line: 101, column: 26, scope: !411)
!568 = !DILocation(line: 102, column: 26, scope: !411)
!569 = !DILocation(line: 102, column: 23, scope: !411)
!570 = !DILocation(line: 103, column: 9, scope: !411)
!571 = !DILocation(line: 104, column: 5, scope: !411)
!572 = !DILocation(line: 106, column: 25, scope: !411)
!573 = !DILocation(line: 106, column: 22, scope: !411)
!574 = !DILocation(line: 110, column: 13, scope: !411)
!575 = !DILocation(line: 110, column: 26, scope: !411)
!576 = !DILocation(line: 111, column: 33, scope: !411)
!577 = !DILocation(line: 111, column: 46, scope: !411)
!578 = !DILocation(line: 111, column: 24, scope: !411)
!579 = !DILocation(line: 112, column: 28, scope: !411)
!580 = !DILocation(line: 112, column: 41, scope: !411)
!581 = !DILocation(line: 112, column: 48, scope: !411)
!582 = !DILocation(line: 112, column: 46, scope: !411)
!583 = !DILocation(line: 112, column: 26, scope: !411)
!584 = !DILocation(line: 113, column: 23, scope: !411)
!585 = !DILocation(line: 114, column: 9, scope: !411)
!586 = !DILocation(line: 118, column: 9, scope: !411)
!587 = !DILocation(line: 118, column: 19, scope: !411)
!588 = !DILocation(line: 118, column: 59, scope: !411)
!589 = !DILocation(line: 118, column: 57, scope: !411)
!590 = !DILocation(line: 118, column: 42, scope: !411)
!591 = !DILocation(line: 118, column: 35, scope: !411)
!592 = !DILocation(line: 120, column: 9, scope: !411)
!593 = !DILocation(line: 120, column: 19, scope: !411)
!594 = !DILocation(line: 123, column: 31, scope: !411)
!595 = !DILocation(line: 123, column: 29, scope: !411)
!596 = !DILocation(line: 123, column: 19, scope: !411)
!597 = !DILocation(line: 124, column: 29, scope: !411)
!598 = !DILocation(line: 124, column: 58, scope: !411)
!599 = !DILocation(line: 124, column: 56, scope: !411)
!600 = !DILocation(line: 124, column: 42, scope: !411)
!601 = !DILocation(line: 124, column: 20, scope: !411)
!602 = !DILocation(line: 125, column: 24, scope: !411)
!603 = !DILocation(line: 125, column: 40, scope: !411)
!604 = !DILocation(line: 125, column: 37, scope: !411)
!605 = !DILocation(line: 125, column: 48, scope: !411)
!606 = !DILocation(line: 125, column: 46, scope: !411)
!607 = !DILocation(line: 125, column: 22, scope: !411)
!608 = !DILocation(line: 126, column: 19, scope: !411)
!609 = !DILocation(line: 127, column: 5, scope: !411)
!610 = !DILocation(line: 130, column: 34, scope: !411)
!611 = !DILocation(line: 130, column: 47, scope: !411)
!612 = !DILocation(line: 130, column: 15, scope: !411)
!613 = !DILocation(line: 133, column: 20, scope: !411)
!614 = !DILocation(line: 133, column: 33, scope: !411)
!615 = !DILocation(line: 133, column: 38, scope: !411)
!616 = !DILocation(line: 133, column: 11, scope: !411)
!617 = !DILocation(line: 136, column: 22, scope: !411)
!618 = !DILocation(line: 136, column: 32, scope: !411)
!619 = !DILocation(line: 136, column: 12, scope: !411)
!620 = !DILocation(line: 137, column: 15, scope: !411)
!621 = !DILocation(line: 137, column: 12, scope: !411)
!622 = !DILocation(line: 141, column: 9, scope: !411)
!623 = !DILocation(line: 141, column: 26, scope: !411)
!624 = !DILocation(line: 141, column: 39, scope: !411)
!625 = !DILocation(line: 141, column: 33, scope: !411)
!626 = !DILocation(line: 142, column: 9, scope: !411)
!627 = !DILocation(line: 142, column: 26, scope: !411)
!628 = !DILocation(line: 142, column: 44, scope: !411)
!629 = !DILocation(line: 142, column: 51, scope: !411)
!630 = !DILocation(line: 142, column: 41, scope: !411)
!631 = !DILocation(line: 142, column: 34, scope: !411)
!632 = !DILocation(line: 143, column: 20, scope: !411)
!633 = !DILocation(line: 143, column: 12, scope: !411)
!634 = !DILocation(line: 143, column: 5, scope: !411)
!635 = !DILocation(line: 144, column: 1, scope: !411)
!636 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!637 = !DILocation(line: 232, column: 44, scope: !636)
!638 = !DILocation(line: 232, column: 50, scope: !636)
!639 = !DILocation(line: 233, column: 16, scope: !636)
!640 = !DILocation(line: 233, column: 5, scope: !636)
!641 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!642 = !DILocation(line: 237, column: 44, scope: !641)
!643 = !DILocation(line: 237, column: 50, scope: !641)
!644 = !DILocation(line: 238, column: 16, scope: !641)
!645 = !DILocation(line: 238, column: 5, scope: !641)
!646 = distinct !DISubprogram(name: "normalize", scope: !370, file: !370, line: 241, type: !136, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!647 = !DILocation(line: 242, column: 32, scope: !646)
!648 = !DILocation(line: 242, column: 31, scope: !646)
!649 = !DILocation(line: 242, column: 23, scope: !646)
!650 = !DILocation(line: 242, column: 47, scope: !646)
!651 = !DILocation(line: 242, column: 45, scope: !646)
!652 = !DILocation(line: 242, column: 15, scope: !646)
!653 = !DILocation(line: 243, column: 22, scope: !646)
!654 = !DILocation(line: 243, column: 6, scope: !646)
!655 = !DILocation(line: 243, column: 18, scope: !646)
!656 = !DILocation(line: 244, column: 16, scope: !646)
!657 = !DILocation(line: 244, column: 14, scope: !646)
!658 = !DILocation(line: 244, column: 5, scope: !646)
!659 = distinct !DISubprogram(name: "rep_clz", scope: !370, file: !370, line: 49, type: !136, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!660 = !DILocation(line: 50, column: 26, scope: !659)
!661 = !DILocation(line: 50, column: 12, scope: !659)
!662 = !DILocation(line: 50, column: 5, scope: !659)
!663 = distinct !DISubprogram(name: "__ledf2", scope: !5, file: !5, line: 51, type: !136, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!664 = !DILocation(line: 53, column: 31, scope: !663)
!665 = !DILocation(line: 53, column: 25, scope: !663)
!666 = !DILocation(line: 53, column: 18, scope: !663)
!667 = !DILocation(line: 54, column: 31, scope: !663)
!668 = !DILocation(line: 54, column: 25, scope: !663)
!669 = !DILocation(line: 54, column: 18, scope: !663)
!670 = !DILocation(line: 55, column: 24, scope: !663)
!671 = !DILocation(line: 55, column: 29, scope: !663)
!672 = !DILocation(line: 55, column: 17, scope: !663)
!673 = !DILocation(line: 56, column: 24, scope: !663)
!674 = !DILocation(line: 56, column: 29, scope: !663)
!675 = !DILocation(line: 56, column: 17, scope: !663)
!676 = !DILocation(line: 59, column: 9, scope: !663)
!677 = !DILocation(line: 59, column: 14, scope: !663)
!678 = !DILocation(line: 59, column: 23, scope: !663)
!679 = !DILocation(line: 59, column: 26, scope: !663)
!680 = !DILocation(line: 59, column: 31, scope: !663)
!681 = !DILocation(line: 59, column: 41, scope: !663)
!682 = !DILocation(line: 62, column: 10, scope: !663)
!683 = !DILocation(line: 62, column: 17, scope: !663)
!684 = !DILocation(line: 62, column: 15, scope: !663)
!685 = !DILocation(line: 62, column: 23, scope: !663)
!686 = !DILocation(line: 62, column: 9, scope: !663)
!687 = !DILocation(line: 62, column: 29, scope: !663)
!688 = !DILocation(line: 66, column: 10, scope: !663)
!689 = !DILocation(line: 66, column: 17, scope: !663)
!690 = !DILocation(line: 66, column: 15, scope: !663)
!691 = !DILocation(line: 66, column: 23, scope: !663)
!692 = !DILocation(line: 66, column: 9, scope: !663)
!693 = !DILocation(line: 67, column: 13, scope: !663)
!694 = !DILocation(line: 67, column: 20, scope: !663)
!695 = !DILocation(line: 67, column: 18, scope: !663)
!696 = !DILocation(line: 67, column: 26, scope: !663)
!697 = !DILocation(line: 68, column: 18, scope: !663)
!698 = !DILocation(line: 68, column: 26, scope: !663)
!699 = !DILocation(line: 68, column: 23, scope: !663)
!700 = !DILocation(line: 68, column: 32, scope: !663)
!701 = !DILocation(line: 69, column: 14, scope: !663)
!702 = !DILocation(line: 77, column: 13, scope: !663)
!703 = !DILocation(line: 77, column: 20, scope: !663)
!704 = !DILocation(line: 77, column: 18, scope: !663)
!705 = !DILocation(line: 77, column: 26, scope: !663)
!706 = !DILocation(line: 78, column: 18, scope: !663)
!707 = !DILocation(line: 78, column: 26, scope: !663)
!708 = !DILocation(line: 78, column: 23, scope: !663)
!709 = !DILocation(line: 78, column: 32, scope: !663)
!710 = !DILocation(line: 79, column: 14, scope: !663)
!711 = !DILocation(line: 81, column: 1, scope: !663)
!712 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, retainedNodes: !137)
!713 = !DILocation(line: 232, column: 44, scope: !712)
!714 = !DILocation(line: 232, column: 50, scope: !712)
!715 = !DILocation(line: 233, column: 16, scope: !712)
!716 = !DILocation(line: 233, column: 5, scope: !712)
!717 = distinct !DISubprogram(name: "__gedf2", scope: !5, file: !5, line: 96, type: !136, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!718 = !DILocation(line: 98, column: 31, scope: !717)
!719 = !DILocation(line: 98, column: 25, scope: !717)
!720 = !DILocation(line: 98, column: 18, scope: !717)
!721 = !DILocation(line: 99, column: 31, scope: !717)
!722 = !DILocation(line: 99, column: 25, scope: !717)
!723 = !DILocation(line: 99, column: 18, scope: !717)
!724 = !DILocation(line: 100, column: 24, scope: !717)
!725 = !DILocation(line: 100, column: 29, scope: !717)
!726 = !DILocation(line: 100, column: 17, scope: !717)
!727 = !DILocation(line: 101, column: 24, scope: !717)
!728 = !DILocation(line: 101, column: 29, scope: !717)
!729 = !DILocation(line: 101, column: 17, scope: !717)
!730 = !DILocation(line: 103, column: 9, scope: !717)
!731 = !DILocation(line: 103, column: 14, scope: !717)
!732 = !DILocation(line: 103, column: 23, scope: !717)
!733 = !DILocation(line: 103, column: 26, scope: !717)
!734 = !DILocation(line: 103, column: 31, scope: !717)
!735 = !DILocation(line: 103, column: 41, scope: !717)
!736 = !DILocation(line: 104, column: 10, scope: !717)
!737 = !DILocation(line: 104, column: 17, scope: !717)
!738 = !DILocation(line: 104, column: 15, scope: !717)
!739 = !DILocation(line: 104, column: 23, scope: !717)
!740 = !DILocation(line: 104, column: 9, scope: !717)
!741 = !DILocation(line: 104, column: 29, scope: !717)
!742 = !DILocation(line: 105, column: 10, scope: !717)
!743 = !DILocation(line: 105, column: 17, scope: !717)
!744 = !DILocation(line: 105, column: 15, scope: !717)
!745 = !DILocation(line: 105, column: 23, scope: !717)
!746 = !DILocation(line: 105, column: 9, scope: !717)
!747 = !DILocation(line: 106, column: 13, scope: !717)
!748 = !DILocation(line: 106, column: 20, scope: !717)
!749 = !DILocation(line: 106, column: 18, scope: !717)
!750 = !DILocation(line: 106, column: 26, scope: !717)
!751 = !DILocation(line: 107, column: 18, scope: !717)
!752 = !DILocation(line: 107, column: 26, scope: !717)
!753 = !DILocation(line: 107, column: 23, scope: !717)
!754 = !DILocation(line: 107, column: 32, scope: !717)
!755 = !DILocation(line: 108, column: 14, scope: !717)
!756 = !DILocation(line: 110, column: 13, scope: !717)
!757 = !DILocation(line: 110, column: 20, scope: !717)
!758 = !DILocation(line: 110, column: 18, scope: !717)
!759 = !DILocation(line: 110, column: 26, scope: !717)
!760 = !DILocation(line: 111, column: 18, scope: !717)
!761 = !DILocation(line: 111, column: 26, scope: !717)
!762 = !DILocation(line: 111, column: 23, scope: !717)
!763 = !DILocation(line: 111, column: 32, scope: !717)
!764 = !DILocation(line: 112, column: 14, scope: !717)
!765 = !DILocation(line: 114, column: 1, scope: !717)
!766 = distinct !DISubprogram(name: "__unorddf2", scope: !5, file: !5, line: 119, type: !136, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!767 = !DILocation(line: 120, column: 30, scope: !766)
!768 = !DILocation(line: 120, column: 24, scope: !766)
!769 = !DILocation(line: 120, column: 33, scope: !766)
!770 = !DILocation(line: 120, column: 17, scope: !766)
!771 = !DILocation(line: 121, column: 30, scope: !766)
!772 = !DILocation(line: 121, column: 24, scope: !766)
!773 = !DILocation(line: 121, column: 33, scope: !766)
!774 = !DILocation(line: 121, column: 17, scope: !766)
!775 = !DILocation(line: 122, column: 12, scope: !766)
!776 = !DILocation(line: 122, column: 17, scope: !766)
!777 = !DILocation(line: 122, column: 26, scope: !766)
!778 = !DILocation(line: 122, column: 29, scope: !766)
!779 = !DILocation(line: 122, column: 34, scope: !766)
!780 = !DILocation(line: 122, column: 5, scope: !766)
!781 = distinct !DISubprogram(name: "__eqdf2", scope: !5, file: !5, line: 128, type: !136, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!782 = !DILocation(line: 129, column: 20, scope: !781)
!783 = !DILocation(line: 129, column: 23, scope: !781)
!784 = !DILocation(line: 129, column: 12, scope: !781)
!785 = !DILocation(line: 129, column: 5, scope: !781)
!786 = distinct !DISubprogram(name: "__ltdf2", scope: !5, file: !5, line: 133, type: !136, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!787 = !DILocation(line: 134, column: 20, scope: !786)
!788 = !DILocation(line: 134, column: 23, scope: !786)
!789 = !DILocation(line: 134, column: 12, scope: !786)
!790 = !DILocation(line: 134, column: 5, scope: !786)
!791 = distinct !DISubprogram(name: "__nedf2", scope: !5, file: !5, line: 138, type: !136, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!792 = !DILocation(line: 139, column: 20, scope: !791)
!793 = !DILocation(line: 139, column: 23, scope: !791)
!794 = !DILocation(line: 139, column: 12, scope: !791)
!795 = !DILocation(line: 139, column: 5, scope: !791)
!796 = distinct !DISubprogram(name: "__gtdf2", scope: !5, file: !5, line: 143, type: !136, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !137)
!797 = !DILocation(line: 144, column: 20, scope: !796)
!798 = !DILocation(line: 144, column: 23, scope: !796)
!799 = !DILocation(line: 144, column: 12, scope: !796)
!800 = !DILocation(line: 144, column: 5, scope: !796)
!801 = distinct !DISubprogram(name: "__lesf2", scope: !7, file: !7, line: 51, type: !136, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!802 = !DILocation(line: 53, column: 31, scope: !801)
!803 = !DILocation(line: 53, column: 25, scope: !801)
!804 = !DILocation(line: 53, column: 18, scope: !801)
!805 = !DILocation(line: 54, column: 31, scope: !801)
!806 = !DILocation(line: 54, column: 25, scope: !801)
!807 = !DILocation(line: 54, column: 18, scope: !801)
!808 = !DILocation(line: 55, column: 24, scope: !801)
!809 = !DILocation(line: 55, column: 29, scope: !801)
!810 = !DILocation(line: 55, column: 17, scope: !801)
!811 = !DILocation(line: 56, column: 24, scope: !801)
!812 = !DILocation(line: 56, column: 29, scope: !801)
!813 = !DILocation(line: 56, column: 17, scope: !801)
!814 = !DILocation(line: 59, column: 9, scope: !801)
!815 = !DILocation(line: 59, column: 14, scope: !801)
!816 = !DILocation(line: 59, column: 23, scope: !801)
!817 = !DILocation(line: 59, column: 26, scope: !801)
!818 = !DILocation(line: 59, column: 31, scope: !801)
!819 = !DILocation(line: 59, column: 41, scope: !801)
!820 = !DILocation(line: 62, column: 10, scope: !801)
!821 = !DILocation(line: 62, column: 17, scope: !801)
!822 = !DILocation(line: 62, column: 15, scope: !801)
!823 = !DILocation(line: 62, column: 23, scope: !801)
!824 = !DILocation(line: 62, column: 9, scope: !801)
!825 = !DILocation(line: 62, column: 29, scope: !801)
!826 = !DILocation(line: 66, column: 10, scope: !801)
!827 = !DILocation(line: 66, column: 17, scope: !801)
!828 = !DILocation(line: 66, column: 15, scope: !801)
!829 = !DILocation(line: 66, column: 23, scope: !801)
!830 = !DILocation(line: 66, column: 9, scope: !801)
!831 = !DILocation(line: 67, column: 13, scope: !801)
!832 = !DILocation(line: 67, column: 20, scope: !801)
!833 = !DILocation(line: 67, column: 18, scope: !801)
!834 = !DILocation(line: 67, column: 26, scope: !801)
!835 = !DILocation(line: 68, column: 18, scope: !801)
!836 = !DILocation(line: 68, column: 26, scope: !801)
!837 = !DILocation(line: 68, column: 23, scope: !801)
!838 = !DILocation(line: 68, column: 32, scope: !801)
!839 = !DILocation(line: 69, column: 14, scope: !801)
!840 = !DILocation(line: 77, column: 13, scope: !801)
!841 = !DILocation(line: 77, column: 20, scope: !801)
!842 = !DILocation(line: 77, column: 18, scope: !801)
!843 = !DILocation(line: 77, column: 26, scope: !801)
!844 = !DILocation(line: 78, column: 18, scope: !801)
!845 = !DILocation(line: 78, column: 26, scope: !801)
!846 = !DILocation(line: 78, column: 23, scope: !801)
!847 = !DILocation(line: 78, column: 32, scope: !801)
!848 = !DILocation(line: 79, column: 14, scope: !801)
!849 = !DILocation(line: 81, column: 1, scope: !801)
!850 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, retainedNodes: !137)
!851 = !DILocation(line: 232, column: 44, scope: !850)
!852 = !DILocation(line: 232, column: 50, scope: !850)
!853 = !DILocation(line: 233, column: 16, scope: !850)
!854 = !DILocation(line: 233, column: 5, scope: !850)
!855 = distinct !DISubprogram(name: "__gesf2", scope: !7, file: !7, line: 96, type: !136, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!856 = !DILocation(line: 98, column: 31, scope: !855)
!857 = !DILocation(line: 98, column: 25, scope: !855)
!858 = !DILocation(line: 98, column: 18, scope: !855)
!859 = !DILocation(line: 99, column: 31, scope: !855)
!860 = !DILocation(line: 99, column: 25, scope: !855)
!861 = !DILocation(line: 99, column: 18, scope: !855)
!862 = !DILocation(line: 100, column: 24, scope: !855)
!863 = !DILocation(line: 100, column: 29, scope: !855)
!864 = !DILocation(line: 100, column: 17, scope: !855)
!865 = !DILocation(line: 101, column: 24, scope: !855)
!866 = !DILocation(line: 101, column: 29, scope: !855)
!867 = !DILocation(line: 101, column: 17, scope: !855)
!868 = !DILocation(line: 103, column: 9, scope: !855)
!869 = !DILocation(line: 103, column: 14, scope: !855)
!870 = !DILocation(line: 103, column: 23, scope: !855)
!871 = !DILocation(line: 103, column: 26, scope: !855)
!872 = !DILocation(line: 103, column: 31, scope: !855)
!873 = !DILocation(line: 103, column: 41, scope: !855)
!874 = !DILocation(line: 104, column: 10, scope: !855)
!875 = !DILocation(line: 104, column: 17, scope: !855)
!876 = !DILocation(line: 104, column: 15, scope: !855)
!877 = !DILocation(line: 104, column: 23, scope: !855)
!878 = !DILocation(line: 104, column: 9, scope: !855)
!879 = !DILocation(line: 104, column: 29, scope: !855)
!880 = !DILocation(line: 105, column: 10, scope: !855)
!881 = !DILocation(line: 105, column: 17, scope: !855)
!882 = !DILocation(line: 105, column: 15, scope: !855)
!883 = !DILocation(line: 105, column: 23, scope: !855)
!884 = !DILocation(line: 105, column: 9, scope: !855)
!885 = !DILocation(line: 106, column: 13, scope: !855)
!886 = !DILocation(line: 106, column: 20, scope: !855)
!887 = !DILocation(line: 106, column: 18, scope: !855)
!888 = !DILocation(line: 106, column: 26, scope: !855)
!889 = !DILocation(line: 107, column: 18, scope: !855)
!890 = !DILocation(line: 107, column: 26, scope: !855)
!891 = !DILocation(line: 107, column: 23, scope: !855)
!892 = !DILocation(line: 107, column: 32, scope: !855)
!893 = !DILocation(line: 108, column: 14, scope: !855)
!894 = !DILocation(line: 110, column: 13, scope: !855)
!895 = !DILocation(line: 110, column: 20, scope: !855)
!896 = !DILocation(line: 110, column: 18, scope: !855)
!897 = !DILocation(line: 110, column: 26, scope: !855)
!898 = !DILocation(line: 111, column: 18, scope: !855)
!899 = !DILocation(line: 111, column: 26, scope: !855)
!900 = !DILocation(line: 111, column: 23, scope: !855)
!901 = !DILocation(line: 111, column: 32, scope: !855)
!902 = !DILocation(line: 112, column: 14, scope: !855)
!903 = !DILocation(line: 114, column: 1, scope: !855)
!904 = distinct !DISubprogram(name: "__unordsf2", scope: !7, file: !7, line: 119, type: !136, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!905 = !DILocation(line: 120, column: 30, scope: !904)
!906 = !DILocation(line: 120, column: 24, scope: !904)
!907 = !DILocation(line: 120, column: 33, scope: !904)
!908 = !DILocation(line: 120, column: 17, scope: !904)
!909 = !DILocation(line: 121, column: 30, scope: !904)
!910 = !DILocation(line: 121, column: 24, scope: !904)
!911 = !DILocation(line: 121, column: 33, scope: !904)
!912 = !DILocation(line: 121, column: 17, scope: !904)
!913 = !DILocation(line: 122, column: 12, scope: !904)
!914 = !DILocation(line: 122, column: 17, scope: !904)
!915 = !DILocation(line: 122, column: 26, scope: !904)
!916 = !DILocation(line: 122, column: 29, scope: !904)
!917 = !DILocation(line: 122, column: 34, scope: !904)
!918 = !DILocation(line: 122, column: 5, scope: !904)
!919 = distinct !DISubprogram(name: "__eqsf2", scope: !7, file: !7, line: 128, type: !136, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!920 = !DILocation(line: 129, column: 20, scope: !919)
!921 = !DILocation(line: 129, column: 23, scope: !919)
!922 = !DILocation(line: 129, column: 12, scope: !919)
!923 = !DILocation(line: 129, column: 5, scope: !919)
!924 = distinct !DISubprogram(name: "__ltsf2", scope: !7, file: !7, line: 133, type: !136, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!925 = !DILocation(line: 134, column: 20, scope: !924)
!926 = !DILocation(line: 134, column: 23, scope: !924)
!927 = !DILocation(line: 134, column: 12, scope: !924)
!928 = !DILocation(line: 134, column: 5, scope: !924)
!929 = distinct !DISubprogram(name: "__nesf2", scope: !7, file: !7, line: 138, type: !136, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!930 = !DILocation(line: 139, column: 20, scope: !929)
!931 = !DILocation(line: 139, column: 23, scope: !929)
!932 = !DILocation(line: 139, column: 12, scope: !929)
!933 = !DILocation(line: 139, column: 5, scope: !929)
!934 = distinct !DISubprogram(name: "__gtsf2", scope: !7, file: !7, line: 143, type: !136, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !137)
!935 = !DILocation(line: 144, column: 20, scope: !934)
!936 = !DILocation(line: 144, column: 23, scope: !934)
!937 = !DILocation(line: 144, column: 12, scope: !934)
!938 = !DILocation(line: 144, column: 5, scope: !934)
!939 = distinct !DISubprogram(name: "__divdf3", scope: !9, file: !9, line: 25, type: !136, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !137)
!940 = !DILocation(line: 27, column: 42, scope: !939)
!941 = !DILocation(line: 27, column: 36, scope: !939)
!942 = !DILocation(line: 27, column: 45, scope: !939)
!943 = !DILocation(line: 27, column: 64, scope: !939)
!944 = !DILocation(line: 27, column: 24, scope: !939)
!945 = !DILocation(line: 28, column: 42, scope: !939)
!946 = !DILocation(line: 28, column: 36, scope: !939)
!947 = !DILocation(line: 28, column: 45, scope: !939)
!948 = !DILocation(line: 28, column: 64, scope: !939)
!949 = !DILocation(line: 28, column: 24, scope: !939)
!950 = !DILocation(line: 29, column: 39, scope: !939)
!951 = !DILocation(line: 29, column: 33, scope: !939)
!952 = !DILocation(line: 29, column: 50, scope: !939)
!953 = !DILocation(line: 29, column: 44, scope: !939)
!954 = !DILocation(line: 29, column: 42, scope: !939)
!955 = !DILocation(line: 29, column: 54, scope: !939)
!956 = !DILocation(line: 29, column: 17, scope: !939)
!957 = !DILocation(line: 31, column: 32, scope: !939)
!958 = !DILocation(line: 31, column: 26, scope: !939)
!959 = !DILocation(line: 31, column: 35, scope: !939)
!960 = !DILocation(line: 31, column: 11, scope: !939)
!961 = !DILocation(line: 32, column: 32, scope: !939)
!962 = !DILocation(line: 32, column: 26, scope: !939)
!963 = !DILocation(line: 32, column: 35, scope: !939)
!964 = !DILocation(line: 32, column: 11, scope: !939)
!965 = !DILocation(line: 33, column: 9, scope: !939)
!966 = !DILocation(line: 36, column: 9, scope: !939)
!967 = !DILocation(line: 36, column: 18, scope: !939)
!968 = !DILocation(line: 36, column: 22, scope: !939)
!969 = !DILocation(line: 36, column: 40, scope: !939)
!970 = !DILocation(line: 36, column: 43, scope: !939)
!971 = !DILocation(line: 36, column: 52, scope: !939)
!972 = !DILocation(line: 36, column: 56, scope: !939)
!973 = !DILocation(line: 38, column: 34, scope: !939)
!974 = !DILocation(line: 38, column: 28, scope: !939)
!975 = !DILocation(line: 38, column: 37, scope: !939)
!976 = !DILocation(line: 38, column: 21, scope: !939)
!977 = !DILocation(line: 39, column: 34, scope: !939)
!978 = !DILocation(line: 39, column: 28, scope: !939)
!979 = !DILocation(line: 39, column: 37, scope: !939)
!980 = !DILocation(line: 39, column: 21, scope: !939)
!981 = !DILocation(line: 42, column: 13, scope: !939)
!982 = !DILocation(line: 42, column: 18, scope: !939)
!983 = !DILocation(line: 42, column: 49, scope: !939)
!984 = !DILocation(line: 42, column: 43, scope: !939)
!985 = !DILocation(line: 42, column: 52, scope: !939)
!986 = !DILocation(line: 42, column: 35, scope: !939)
!987 = !DILocation(line: 42, column: 28, scope: !939)
!988 = !DILocation(line: 44, column: 13, scope: !939)
!989 = !DILocation(line: 44, column: 18, scope: !939)
!990 = !DILocation(line: 44, column: 49, scope: !939)
!991 = !DILocation(line: 44, column: 43, scope: !939)
!992 = !DILocation(line: 44, column: 52, scope: !939)
!993 = !DILocation(line: 44, column: 35, scope: !939)
!994 = !DILocation(line: 44, column: 28, scope: !939)
!995 = !DILocation(line: 46, column: 13, scope: !939)
!996 = !DILocation(line: 46, column: 18, scope: !939)
!997 = !DILocation(line: 48, column: 17, scope: !939)
!998 = !DILocation(line: 48, column: 22, scope: !939)
!999 = !DILocation(line: 48, column: 40, scope: !939)
!1000 = !DILocation(line: 48, column: 33, scope: !939)
!1001 = !DILocation(line: 50, column: 33, scope: !939)
!1002 = !DILocation(line: 50, column: 40, scope: !939)
!1003 = !DILocation(line: 50, column: 38, scope: !939)
!1004 = !DILocation(line: 50, column: 25, scope: !939)
!1005 = !DILocation(line: 50, column: 18, scope: !939)
!1006 = !DILocation(line: 54, column: 13, scope: !939)
!1007 = !DILocation(line: 54, column: 18, scope: !939)
!1008 = !DILocation(line: 54, column: 44, scope: !939)
!1009 = !DILocation(line: 54, column: 36, scope: !939)
!1010 = !DILocation(line: 54, column: 29, scope: !939)
!1011 = !DILocation(line: 56, column: 14, scope: !939)
!1012 = !DILocation(line: 56, column: 13, scope: !939)
!1013 = !DILocation(line: 58, column: 18, scope: !939)
!1014 = !DILocation(line: 58, column: 17, scope: !939)
!1015 = !DILocation(line: 58, column: 31, scope: !939)
!1016 = !DILocation(line: 58, column: 24, scope: !939)
!1017 = !DILocation(line: 60, column: 33, scope: !939)
!1018 = !DILocation(line: 60, column: 25, scope: !939)
!1019 = !DILocation(line: 60, column: 18, scope: !939)
!1020 = !DILocation(line: 63, column: 14, scope: !939)
!1021 = !DILocation(line: 63, column: 13, scope: !939)
!1022 = !DILocation(line: 63, column: 44, scope: !939)
!1023 = !DILocation(line: 63, column: 42, scope: !939)
!1024 = !DILocation(line: 63, column: 27, scope: !939)
!1025 = !DILocation(line: 63, column: 20, scope: !939)
!1026 = !DILocation(line: 68, column: 13, scope: !939)
!1027 = !DILocation(line: 68, column: 18, scope: !939)
!1028 = !DILocation(line: 68, column: 42, scope: !939)
!1029 = !DILocation(line: 68, column: 39, scope: !939)
!1030 = !DILocation(line: 68, column: 33, scope: !939)
!1031 = !DILocation(line: 69, column: 13, scope: !939)
!1032 = !DILocation(line: 69, column: 18, scope: !939)
!1033 = !DILocation(line: 69, column: 42, scope: !939)
!1034 = !DILocation(line: 69, column: 39, scope: !939)
!1035 = !DILocation(line: 69, column: 33, scope: !939)
!1036 = !DILocation(line: 70, column: 5, scope: !939)
!1037 = !DILocation(line: 75, column: 18, scope: !939)
!1038 = !DILocation(line: 76, column: 18, scope: !939)
!1039 = !DILocation(line: 77, column: 28, scope: !939)
!1040 = !DILocation(line: 77, column: 40, scope: !939)
!1041 = !DILocation(line: 77, column: 38, scope: !939)
!1042 = !DILocation(line: 77, column: 52, scope: !939)
!1043 = !DILocation(line: 77, column: 50, scope: !939)
!1044 = !DILocation(line: 77, column: 9, scope: !939)
!1045 = !DILocation(line: 83, column: 27, scope: !939)
!1046 = !DILocation(line: 83, column: 40, scope: !939)
!1047 = !DILocation(line: 83, column: 20, scope: !939)
!1048 = !DILocation(line: 84, column: 47, scope: !939)
!1049 = !DILocation(line: 84, column: 45, scope: !939)
!1050 = !DILocation(line: 84, column: 14, scope: !939)
!1051 = !DILocation(line: 94, column: 32, scope: !939)
!1052 = !DILocation(line: 94, column: 22, scope: !939)
!1053 = !DILocation(line: 94, column: 42, scope: !939)
!1054 = !DILocation(line: 94, column: 40, scope: !939)
!1055 = !DILocation(line: 94, column: 47, scope: !939)
!1056 = !DILocation(line: 94, column: 20, scope: !939)
!1057 = !DILocation(line: 94, column: 18, scope: !939)
!1058 = !DILocation(line: 95, column: 25, scope: !939)
!1059 = !DILocation(line: 95, column: 15, scope: !939)
!1060 = !DILocation(line: 95, column: 35, scope: !939)
!1061 = !DILocation(line: 95, column: 33, scope: !939)
!1062 = !DILocation(line: 95, column: 48, scope: !939)
!1063 = !DILocation(line: 95, column: 13, scope: !939)
!1064 = !DILocation(line: 96, column: 32, scope: !939)
!1065 = !DILocation(line: 96, column: 22, scope: !939)
!1066 = !DILocation(line: 96, column: 42, scope: !939)
!1067 = !DILocation(line: 96, column: 40, scope: !939)
!1068 = !DILocation(line: 96, column: 47, scope: !939)
!1069 = !DILocation(line: 96, column: 20, scope: !939)
!1070 = !DILocation(line: 96, column: 18, scope: !939)
!1071 = !DILocation(line: 97, column: 25, scope: !939)
!1072 = !DILocation(line: 97, column: 15, scope: !939)
!1073 = !DILocation(line: 97, column: 35, scope: !939)
!1074 = !DILocation(line: 97, column: 33, scope: !939)
!1075 = !DILocation(line: 97, column: 48, scope: !939)
!1076 = !DILocation(line: 97, column: 13, scope: !939)
!1077 = !DILocation(line: 98, column: 32, scope: !939)
!1078 = !DILocation(line: 98, column: 22, scope: !939)
!1079 = !DILocation(line: 98, column: 42, scope: !939)
!1080 = !DILocation(line: 98, column: 40, scope: !939)
!1081 = !DILocation(line: 98, column: 47, scope: !939)
!1082 = !DILocation(line: 98, column: 20, scope: !939)
!1083 = !DILocation(line: 98, column: 18, scope: !939)
!1084 = !DILocation(line: 99, column: 25, scope: !939)
!1085 = !DILocation(line: 99, column: 15, scope: !939)
!1086 = !DILocation(line: 99, column: 35, scope: !939)
!1087 = !DILocation(line: 99, column: 33, scope: !939)
!1088 = !DILocation(line: 99, column: 48, scope: !939)
!1089 = !DILocation(line: 99, column: 13, scope: !939)
!1090 = !DILocation(line: 105, column: 12, scope: !939)
!1091 = !DILocation(line: 109, column: 29, scope: !939)
!1092 = !DILocation(line: 109, column: 42, scope: !939)
!1093 = !DILocation(line: 109, column: 20, scope: !939)
!1094 = !DILocation(line: 111, column: 30, scope: !939)
!1095 = !DILocation(line: 111, column: 20, scope: !939)
!1096 = !DILocation(line: 111, column: 38, scope: !939)
!1097 = !DILocation(line: 111, column: 37, scope: !939)
!1098 = !DILocation(line: 111, column: 56, scope: !939)
!1099 = !DILocation(line: 111, column: 46, scope: !939)
!1100 = !DILocation(line: 111, column: 64, scope: !939)
!1101 = !DILocation(line: 111, column: 63, scope: !939)
!1102 = !DILocation(line: 111, column: 71, scope: !939)
!1103 = !DILocation(line: 111, column: 43, scope: !939)
!1104 = !DILocation(line: 111, column: 18, scope: !939)
!1105 = !DILocation(line: 111, column: 16, scope: !939)
!1106 = !DILocation(line: 112, column: 20, scope: !939)
!1107 = !DILocation(line: 112, column: 31, scope: !939)
!1108 = !DILocation(line: 112, column: 14, scope: !939)
!1109 = !DILocation(line: 113, column: 20, scope: !939)
!1110 = !DILocation(line: 113, column: 14, scope: !939)
!1111 = !DILocation(line: 114, column: 28, scope: !939)
!1112 = !DILocation(line: 114, column: 18, scope: !939)
!1113 = !DILocation(line: 114, column: 36, scope: !939)
!1114 = !DILocation(line: 114, column: 35, scope: !939)
!1115 = !DILocation(line: 114, column: 53, scope: !939)
!1116 = !DILocation(line: 114, column: 43, scope: !939)
!1117 = !DILocation(line: 114, column: 61, scope: !939)
!1118 = !DILocation(line: 114, column: 60, scope: !939)
!1119 = !DILocation(line: 114, column: 65, scope: !939)
!1120 = !DILocation(line: 114, column: 40, scope: !939)
!1121 = !DILocation(line: 114, column: 16, scope: !939)
!1122 = !DILocation(line: 121, column: 16, scope: !939)
!1123 = !DILocation(line: 136, column: 18, scope: !939)
!1124 = !DILocation(line: 136, column: 31, scope: !939)
!1125 = !DILocation(line: 136, column: 37, scope: !939)
!1126 = !DILocation(line: 136, column: 5, scope: !939)
!1127 = !DILocation(line: 152, column: 9, scope: !939)
!1128 = !DILocation(line: 152, column: 18, scope: !939)
!1129 = !DILocation(line: 153, column: 21, scope: !939)
!1130 = !DILocation(line: 153, column: 34, scope: !939)
!1131 = !DILocation(line: 153, column: 43, scope: !939)
!1132 = !DILocation(line: 153, column: 54, scope: !939)
!1133 = !DILocation(line: 153, column: 52, scope: !939)
!1134 = !DILocation(line: 153, column: 41, scope: !939)
!1135 = !DILocation(line: 153, column: 18, scope: !939)
!1136 = !DILocation(line: 154, column: 25, scope: !939)
!1137 = !DILocation(line: 155, column: 5, scope: !939)
!1138 = !DILocation(line: 156, column: 18, scope: !939)
!1139 = !DILocation(line: 157, column: 21, scope: !939)
!1140 = !DILocation(line: 157, column: 34, scope: !939)
!1141 = !DILocation(line: 157, column: 43, scope: !939)
!1142 = !DILocation(line: 157, column: 54, scope: !939)
!1143 = !DILocation(line: 157, column: 52, scope: !939)
!1144 = !DILocation(line: 157, column: 41, scope: !939)
!1145 = !DILocation(line: 157, column: 18, scope: !939)
!1146 = !DILocation(line: 160, column: 33, scope: !939)
!1147 = !DILocation(line: 160, column: 50, scope: !939)
!1148 = !DILocation(line: 160, column: 15, scope: !939)
!1149 = !DILocation(line: 162, column: 9, scope: !939)
!1150 = !DILocation(line: 162, column: 25, scope: !939)
!1151 = !DILocation(line: 164, column: 33, scope: !939)
!1152 = !DILocation(line: 164, column: 31, scope: !939)
!1153 = !DILocation(line: 164, column: 16, scope: !939)
!1154 = !DILocation(line: 164, column: 9, scope: !939)
!1155 = !DILocation(line: 167, column: 14, scope: !939)
!1156 = !DILocation(line: 167, column: 30, scope: !939)
!1157 = !DILocation(line: 170, column: 24, scope: !939)
!1158 = !DILocation(line: 170, column: 16, scope: !939)
!1159 = !DILocation(line: 170, column: 9, scope: !939)
!1160 = !DILocation(line: 174, column: 29, scope: !939)
!1161 = !DILocation(line: 174, column: 38, scope: !939)
!1162 = !DILocation(line: 174, column: 46, scope: !939)
!1163 = !DILocation(line: 174, column: 44, scope: !939)
!1164 = !DILocation(line: 174, column: 20, scope: !939)
!1165 = !DILocation(line: 176, column: 27, scope: !939)
!1166 = !DILocation(line: 176, column: 36, scope: !939)
!1167 = !DILocation(line: 176, column: 15, scope: !939)
!1168 = !DILocation(line: 178, column: 29, scope: !939)
!1169 = !DILocation(line: 178, column: 22, scope: !939)
!1170 = !DILocation(line: 178, column: 45, scope: !939)
!1171 = !DILocation(line: 178, column: 19, scope: !939)
!1172 = !DILocation(line: 180, column: 22, scope: !939)
!1173 = !DILocation(line: 180, column: 19, scope: !939)
!1174 = !DILocation(line: 182, column: 39, scope: !939)
!1175 = !DILocation(line: 182, column: 51, scope: !939)
!1176 = !DILocation(line: 182, column: 49, scope: !939)
!1177 = !DILocation(line: 182, column: 31, scope: !939)
!1178 = !DILocation(line: 182, column: 22, scope: !939)
!1179 = !DILocation(line: 183, column: 16, scope: !939)
!1180 = !DILocation(line: 183, column: 9, scope: !939)
!1181 = !DILocation(line: 185, column: 1, scope: !939)
!1182 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !137)
!1183 = !DILocation(line: 232, column: 44, scope: !1182)
!1184 = !DILocation(line: 232, column: 50, scope: !1182)
!1185 = !DILocation(line: 233, column: 16, scope: !1182)
!1186 = !DILocation(line: 233, column: 5, scope: !1182)
!1187 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !137)
!1188 = !DILocation(line: 237, column: 44, scope: !1187)
!1189 = !DILocation(line: 237, column: 50, scope: !1187)
!1190 = !DILocation(line: 238, column: 16, scope: !1187)
!1191 = !DILocation(line: 238, column: 5, scope: !1187)
!1192 = distinct !DISubprogram(name: "normalize", scope: !370, file: !370, line: 241, type: !136, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !137)
!1193 = !DILocation(line: 242, column: 32, scope: !1192)
!1194 = !DILocation(line: 242, column: 31, scope: !1192)
!1195 = !DILocation(line: 242, column: 23, scope: !1192)
!1196 = !DILocation(line: 242, column: 47, scope: !1192)
!1197 = !DILocation(line: 242, column: 45, scope: !1192)
!1198 = !DILocation(line: 242, column: 15, scope: !1192)
!1199 = !DILocation(line: 243, column: 22, scope: !1192)
!1200 = !DILocation(line: 243, column: 6, scope: !1192)
!1201 = !DILocation(line: 243, column: 18, scope: !1192)
!1202 = !DILocation(line: 244, column: 16, scope: !1192)
!1203 = !DILocation(line: 244, column: 14, scope: !1192)
!1204 = !DILocation(line: 244, column: 5, scope: !1192)
!1205 = distinct !DISubprogram(name: "wideMultiply", scope: !370, file: !370, line: 86, type: !136, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !137)
!1206 = !DILocation(line: 88, column: 28, scope: !1205)
!1207 = !DILocation(line: 88, column: 40, scope: !1205)
!1208 = !DILocation(line: 88, column: 38, scope: !1205)
!1209 = !DILocation(line: 88, column: 20, scope: !1205)
!1210 = !DILocation(line: 89, column: 28, scope: !1205)
!1211 = !DILocation(line: 89, column: 40, scope: !1205)
!1212 = !DILocation(line: 89, column: 38, scope: !1205)
!1213 = !DILocation(line: 89, column: 20, scope: !1205)
!1214 = !DILocation(line: 90, column: 28, scope: !1205)
!1215 = !DILocation(line: 90, column: 40, scope: !1205)
!1216 = !DILocation(line: 90, column: 38, scope: !1205)
!1217 = !DILocation(line: 90, column: 20, scope: !1205)
!1218 = !DILocation(line: 91, column: 28, scope: !1205)
!1219 = !DILocation(line: 91, column: 40, scope: !1205)
!1220 = !DILocation(line: 91, column: 38, scope: !1205)
!1221 = !DILocation(line: 91, column: 20, scope: !1205)
!1222 = !DILocation(line: 93, column: 25, scope: !1205)
!1223 = !DILocation(line: 93, column: 20, scope: !1205)
!1224 = !DILocation(line: 94, column: 25, scope: !1205)
!1225 = !DILocation(line: 94, column: 41, scope: !1205)
!1226 = !DILocation(line: 94, column: 39, scope: !1205)
!1227 = !DILocation(line: 94, column: 57, scope: !1205)
!1228 = !DILocation(line: 94, column: 55, scope: !1205)
!1229 = !DILocation(line: 94, column: 20, scope: !1205)
!1230 = !DILocation(line: 95, column: 11, scope: !1205)
!1231 = !DILocation(line: 95, column: 17, scope: !1205)
!1232 = !DILocation(line: 95, column: 20, scope: !1205)
!1233 = !DILocation(line: 95, column: 14, scope: !1205)
!1234 = !DILocation(line: 95, column: 6, scope: !1205)
!1235 = !DILocation(line: 95, column: 9, scope: !1205)
!1236 = !DILocation(line: 97, column: 11, scope: !1205)
!1237 = !DILocation(line: 97, column: 27, scope: !1205)
!1238 = !DILocation(line: 97, column: 25, scope: !1205)
!1239 = !DILocation(line: 97, column: 43, scope: !1205)
!1240 = !DILocation(line: 97, column: 41, scope: !1205)
!1241 = !DILocation(line: 97, column: 56, scope: !1205)
!1242 = !DILocation(line: 97, column: 54, scope: !1205)
!1243 = !DILocation(line: 97, column: 6, scope: !1205)
!1244 = !DILocation(line: 97, column: 9, scope: !1205)
!1245 = !DILocation(line: 98, column: 1, scope: !1205)
!1246 = distinct !DISubprogram(name: "rep_clz", scope: !370, file: !370, line: 69, type: !136, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !137)
!1247 = !DILocation(line: 73, column: 9, scope: !1246)
!1248 = !DILocation(line: 73, column: 11, scope: !1246)
!1249 = !DILocation(line: 74, column: 30, scope: !1246)
!1250 = !DILocation(line: 74, column: 32, scope: !1246)
!1251 = !DILocation(line: 74, column: 16, scope: !1246)
!1252 = !DILocation(line: 74, column: 9, scope: !1246)
!1253 = !DILocation(line: 76, column: 35, scope: !1246)
!1254 = !DILocation(line: 76, column: 37, scope: !1246)
!1255 = !DILocation(line: 76, column: 21, scope: !1246)
!1256 = !DILocation(line: 76, column: 19, scope: !1246)
!1257 = !DILocation(line: 76, column: 9, scope: !1246)
!1258 = !DILocation(line: 78, column: 1, scope: !1246)
!1259 = distinct !DISubprogram(name: "__divsf3", scope: !11, file: !11, line: 25, type: !136, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !137)
!1260 = !DILocation(line: 27, column: 42, scope: !1259)
!1261 = !DILocation(line: 27, column: 36, scope: !1259)
!1262 = !DILocation(line: 27, column: 45, scope: !1259)
!1263 = !DILocation(line: 27, column: 64, scope: !1259)
!1264 = !DILocation(line: 27, column: 24, scope: !1259)
!1265 = !DILocation(line: 28, column: 42, scope: !1259)
!1266 = !DILocation(line: 28, column: 36, scope: !1259)
!1267 = !DILocation(line: 28, column: 45, scope: !1259)
!1268 = !DILocation(line: 28, column: 64, scope: !1259)
!1269 = !DILocation(line: 28, column: 24, scope: !1259)
!1270 = !DILocation(line: 29, column: 39, scope: !1259)
!1271 = !DILocation(line: 29, column: 33, scope: !1259)
!1272 = !DILocation(line: 29, column: 50, scope: !1259)
!1273 = !DILocation(line: 29, column: 44, scope: !1259)
!1274 = !DILocation(line: 29, column: 42, scope: !1259)
!1275 = !DILocation(line: 29, column: 54, scope: !1259)
!1276 = !DILocation(line: 29, column: 17, scope: !1259)
!1277 = !DILocation(line: 31, column: 32, scope: !1259)
!1278 = !DILocation(line: 31, column: 26, scope: !1259)
!1279 = !DILocation(line: 31, column: 35, scope: !1259)
!1280 = !DILocation(line: 31, column: 11, scope: !1259)
!1281 = !DILocation(line: 32, column: 32, scope: !1259)
!1282 = !DILocation(line: 32, column: 26, scope: !1259)
!1283 = !DILocation(line: 32, column: 35, scope: !1259)
!1284 = !DILocation(line: 32, column: 11, scope: !1259)
!1285 = !DILocation(line: 33, column: 9, scope: !1259)
!1286 = !DILocation(line: 36, column: 9, scope: !1259)
!1287 = !DILocation(line: 36, column: 18, scope: !1259)
!1288 = !DILocation(line: 36, column: 22, scope: !1259)
!1289 = !DILocation(line: 36, column: 40, scope: !1259)
!1290 = !DILocation(line: 36, column: 43, scope: !1259)
!1291 = !DILocation(line: 36, column: 52, scope: !1259)
!1292 = !DILocation(line: 36, column: 56, scope: !1259)
!1293 = !DILocation(line: 38, column: 34, scope: !1259)
!1294 = !DILocation(line: 38, column: 28, scope: !1259)
!1295 = !DILocation(line: 38, column: 37, scope: !1259)
!1296 = !DILocation(line: 38, column: 21, scope: !1259)
!1297 = !DILocation(line: 39, column: 34, scope: !1259)
!1298 = !DILocation(line: 39, column: 28, scope: !1259)
!1299 = !DILocation(line: 39, column: 37, scope: !1259)
!1300 = !DILocation(line: 39, column: 21, scope: !1259)
!1301 = !DILocation(line: 42, column: 13, scope: !1259)
!1302 = !DILocation(line: 42, column: 18, scope: !1259)
!1303 = !DILocation(line: 42, column: 49, scope: !1259)
!1304 = !DILocation(line: 42, column: 43, scope: !1259)
!1305 = !DILocation(line: 42, column: 52, scope: !1259)
!1306 = !DILocation(line: 42, column: 35, scope: !1259)
!1307 = !DILocation(line: 42, column: 28, scope: !1259)
!1308 = !DILocation(line: 44, column: 13, scope: !1259)
!1309 = !DILocation(line: 44, column: 18, scope: !1259)
!1310 = !DILocation(line: 44, column: 49, scope: !1259)
!1311 = !DILocation(line: 44, column: 43, scope: !1259)
!1312 = !DILocation(line: 44, column: 52, scope: !1259)
!1313 = !DILocation(line: 44, column: 35, scope: !1259)
!1314 = !DILocation(line: 44, column: 28, scope: !1259)
!1315 = !DILocation(line: 46, column: 13, scope: !1259)
!1316 = !DILocation(line: 46, column: 18, scope: !1259)
!1317 = !DILocation(line: 48, column: 17, scope: !1259)
!1318 = !DILocation(line: 48, column: 22, scope: !1259)
!1319 = !DILocation(line: 48, column: 40, scope: !1259)
!1320 = !DILocation(line: 48, column: 33, scope: !1259)
!1321 = !DILocation(line: 50, column: 33, scope: !1259)
!1322 = !DILocation(line: 50, column: 40, scope: !1259)
!1323 = !DILocation(line: 50, column: 38, scope: !1259)
!1324 = !DILocation(line: 50, column: 25, scope: !1259)
!1325 = !DILocation(line: 50, column: 18, scope: !1259)
!1326 = !DILocation(line: 54, column: 13, scope: !1259)
!1327 = !DILocation(line: 54, column: 18, scope: !1259)
!1328 = !DILocation(line: 54, column: 44, scope: !1259)
!1329 = !DILocation(line: 54, column: 36, scope: !1259)
!1330 = !DILocation(line: 54, column: 29, scope: !1259)
!1331 = !DILocation(line: 56, column: 14, scope: !1259)
!1332 = !DILocation(line: 56, column: 13, scope: !1259)
!1333 = !DILocation(line: 58, column: 18, scope: !1259)
!1334 = !DILocation(line: 58, column: 17, scope: !1259)
!1335 = !DILocation(line: 58, column: 31, scope: !1259)
!1336 = !DILocation(line: 58, column: 24, scope: !1259)
!1337 = !DILocation(line: 60, column: 33, scope: !1259)
!1338 = !DILocation(line: 60, column: 25, scope: !1259)
!1339 = !DILocation(line: 60, column: 18, scope: !1259)
!1340 = !DILocation(line: 63, column: 14, scope: !1259)
!1341 = !DILocation(line: 63, column: 13, scope: !1259)
!1342 = !DILocation(line: 63, column: 44, scope: !1259)
!1343 = !DILocation(line: 63, column: 42, scope: !1259)
!1344 = !DILocation(line: 63, column: 27, scope: !1259)
!1345 = !DILocation(line: 63, column: 20, scope: !1259)
!1346 = !DILocation(line: 68, column: 13, scope: !1259)
!1347 = !DILocation(line: 68, column: 18, scope: !1259)
!1348 = !DILocation(line: 68, column: 42, scope: !1259)
!1349 = !DILocation(line: 68, column: 39, scope: !1259)
!1350 = !DILocation(line: 68, column: 33, scope: !1259)
!1351 = !DILocation(line: 69, column: 13, scope: !1259)
!1352 = !DILocation(line: 69, column: 18, scope: !1259)
!1353 = !DILocation(line: 69, column: 42, scope: !1259)
!1354 = !DILocation(line: 69, column: 39, scope: !1259)
!1355 = !DILocation(line: 69, column: 33, scope: !1259)
!1356 = !DILocation(line: 70, column: 5, scope: !1259)
!1357 = !DILocation(line: 75, column: 18, scope: !1259)
!1358 = !DILocation(line: 76, column: 18, scope: !1259)
!1359 = !DILocation(line: 77, column: 28, scope: !1259)
!1360 = !DILocation(line: 77, column: 40, scope: !1259)
!1361 = !DILocation(line: 77, column: 38, scope: !1259)
!1362 = !DILocation(line: 77, column: 52, scope: !1259)
!1363 = !DILocation(line: 77, column: 50, scope: !1259)
!1364 = !DILocation(line: 77, column: 9, scope: !1259)
!1365 = !DILocation(line: 83, column: 21, scope: !1259)
!1366 = !DILocation(line: 83, column: 34, scope: !1259)
!1367 = !DILocation(line: 83, column: 14, scope: !1259)
!1368 = !DILocation(line: 84, column: 50, scope: !1259)
!1369 = !DILocation(line: 84, column: 48, scope: !1259)
!1370 = !DILocation(line: 84, column: 14, scope: !1259)
!1371 = !DILocation(line: 94, column: 30, scope: !1259)
!1372 = !DILocation(line: 94, column: 20, scope: !1259)
!1373 = !DILocation(line: 94, column: 43, scope: !1259)
!1374 = !DILocation(line: 94, column: 41, scope: !1259)
!1375 = !DILocation(line: 94, column: 48, scope: !1259)
!1376 = !DILocation(line: 94, column: 18, scope: !1259)
!1377 = !DILocation(line: 94, column: 16, scope: !1259)
!1378 = !DILocation(line: 95, column: 28, scope: !1259)
!1379 = !DILocation(line: 95, column: 18, scope: !1259)
!1380 = !DILocation(line: 95, column: 41, scope: !1259)
!1381 = !DILocation(line: 95, column: 39, scope: !1259)
!1382 = !DILocation(line: 95, column: 52, scope: !1259)
!1383 = !DILocation(line: 95, column: 16, scope: !1259)
!1384 = !DILocation(line: 96, column: 30, scope: !1259)
!1385 = !DILocation(line: 96, column: 20, scope: !1259)
!1386 = !DILocation(line: 96, column: 43, scope: !1259)
!1387 = !DILocation(line: 96, column: 41, scope: !1259)
!1388 = !DILocation(line: 96, column: 48, scope: !1259)
!1389 = !DILocation(line: 96, column: 18, scope: !1259)
!1390 = !DILocation(line: 96, column: 16, scope: !1259)
!1391 = !DILocation(line: 97, column: 28, scope: !1259)
!1392 = !DILocation(line: 97, column: 18, scope: !1259)
!1393 = !DILocation(line: 97, column: 41, scope: !1259)
!1394 = !DILocation(line: 97, column: 39, scope: !1259)
!1395 = !DILocation(line: 97, column: 52, scope: !1259)
!1396 = !DILocation(line: 97, column: 16, scope: !1259)
!1397 = !DILocation(line: 98, column: 30, scope: !1259)
!1398 = !DILocation(line: 98, column: 20, scope: !1259)
!1399 = !DILocation(line: 98, column: 43, scope: !1259)
!1400 = !DILocation(line: 98, column: 41, scope: !1259)
!1401 = !DILocation(line: 98, column: 48, scope: !1259)
!1402 = !DILocation(line: 98, column: 18, scope: !1259)
!1403 = !DILocation(line: 98, column: 16, scope: !1259)
!1404 = !DILocation(line: 99, column: 28, scope: !1259)
!1405 = !DILocation(line: 99, column: 18, scope: !1259)
!1406 = !DILocation(line: 99, column: 41, scope: !1259)
!1407 = !DILocation(line: 99, column: 39, scope: !1259)
!1408 = !DILocation(line: 99, column: 52, scope: !1259)
!1409 = !DILocation(line: 99, column: 16, scope: !1259)
!1410 = !DILocation(line: 107, column: 16, scope: !1259)
!1411 = !DILocation(line: 121, column: 32, scope: !1259)
!1412 = !DILocation(line: 121, column: 22, scope: !1259)
!1413 = !DILocation(line: 121, column: 44, scope: !1259)
!1414 = !DILocation(line: 121, column: 57, scope: !1259)
!1415 = !DILocation(line: 121, column: 43, scope: !1259)
!1416 = !DILocation(line: 121, column: 42, scope: !1259)
!1417 = !DILocation(line: 121, column: 63, scope: !1259)
!1418 = !DILocation(line: 121, column: 11, scope: !1259)
!1419 = !DILocation(line: 137, column: 9, scope: !1259)
!1420 = !DILocation(line: 137, column: 18, scope: !1259)
!1421 = !DILocation(line: 138, column: 21, scope: !1259)
!1422 = !DILocation(line: 138, column: 34, scope: !1259)
!1423 = !DILocation(line: 138, column: 43, scope: !1259)
!1424 = !DILocation(line: 138, column: 54, scope: !1259)
!1425 = !DILocation(line: 138, column: 52, scope: !1259)
!1426 = !DILocation(line: 138, column: 41, scope: !1259)
!1427 = !DILocation(line: 138, column: 18, scope: !1259)
!1428 = !DILocation(line: 139, column: 25, scope: !1259)
!1429 = !DILocation(line: 140, column: 5, scope: !1259)
!1430 = !DILocation(line: 141, column: 18, scope: !1259)
!1431 = !DILocation(line: 142, column: 21, scope: !1259)
!1432 = !DILocation(line: 142, column: 34, scope: !1259)
!1433 = !DILocation(line: 142, column: 43, scope: !1259)
!1434 = !DILocation(line: 142, column: 54, scope: !1259)
!1435 = !DILocation(line: 142, column: 52, scope: !1259)
!1436 = !DILocation(line: 142, column: 41, scope: !1259)
!1437 = !DILocation(line: 142, column: 18, scope: !1259)
!1438 = !DILocation(line: 145, column: 33, scope: !1259)
!1439 = !DILocation(line: 145, column: 50, scope: !1259)
!1440 = !DILocation(line: 145, column: 15, scope: !1259)
!1441 = !DILocation(line: 147, column: 9, scope: !1259)
!1442 = !DILocation(line: 147, column: 25, scope: !1259)
!1443 = !DILocation(line: 149, column: 33, scope: !1259)
!1444 = !DILocation(line: 149, column: 31, scope: !1259)
!1445 = !DILocation(line: 149, column: 16, scope: !1259)
!1446 = !DILocation(line: 149, column: 9, scope: !1259)
!1447 = !DILocation(line: 152, column: 14, scope: !1259)
!1448 = !DILocation(line: 152, column: 30, scope: !1259)
!1449 = !DILocation(line: 155, column: 24, scope: !1259)
!1450 = !DILocation(line: 155, column: 16, scope: !1259)
!1451 = !DILocation(line: 155, column: 9, scope: !1259)
!1452 = !DILocation(line: 159, column: 29, scope: !1259)
!1453 = !DILocation(line: 159, column: 38, scope: !1259)
!1454 = !DILocation(line: 159, column: 46, scope: !1259)
!1455 = !DILocation(line: 159, column: 44, scope: !1259)
!1456 = !DILocation(line: 159, column: 20, scope: !1259)
!1457 = !DILocation(line: 161, column: 27, scope: !1259)
!1458 = !DILocation(line: 161, column: 36, scope: !1259)
!1459 = !DILocation(line: 161, column: 15, scope: !1259)
!1460 = !DILocation(line: 163, column: 29, scope: !1259)
!1461 = !DILocation(line: 163, column: 45, scope: !1259)
!1462 = !DILocation(line: 163, column: 19, scope: !1259)
!1463 = !DILocation(line: 165, column: 22, scope: !1259)
!1464 = !DILocation(line: 165, column: 19, scope: !1259)
!1465 = !DILocation(line: 167, column: 24, scope: !1259)
!1466 = !DILocation(line: 167, column: 36, scope: !1259)
!1467 = !DILocation(line: 167, column: 34, scope: !1259)
!1468 = !DILocation(line: 167, column: 16, scope: !1259)
!1469 = !DILocation(line: 167, column: 9, scope: !1259)
!1470 = !DILocation(line: 169, column: 1, scope: !1259)
!1471 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !137)
!1472 = !DILocation(line: 232, column: 44, scope: !1471)
!1473 = !DILocation(line: 232, column: 50, scope: !1471)
!1474 = !DILocation(line: 233, column: 16, scope: !1471)
!1475 = !DILocation(line: 233, column: 5, scope: !1471)
!1476 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !137)
!1477 = !DILocation(line: 237, column: 44, scope: !1476)
!1478 = !DILocation(line: 237, column: 50, scope: !1476)
!1479 = !DILocation(line: 238, column: 16, scope: !1476)
!1480 = !DILocation(line: 238, column: 5, scope: !1476)
!1481 = distinct !DISubprogram(name: "normalize", scope: !370, file: !370, line: 241, type: !136, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !137)
!1482 = !DILocation(line: 242, column: 32, scope: !1481)
!1483 = !DILocation(line: 242, column: 31, scope: !1481)
!1484 = !DILocation(line: 242, column: 23, scope: !1481)
!1485 = !DILocation(line: 242, column: 47, scope: !1481)
!1486 = !DILocation(line: 242, column: 45, scope: !1481)
!1487 = !DILocation(line: 242, column: 15, scope: !1481)
!1488 = !DILocation(line: 243, column: 22, scope: !1481)
!1489 = !DILocation(line: 243, column: 6, scope: !1481)
!1490 = !DILocation(line: 243, column: 18, scope: !1481)
!1491 = !DILocation(line: 244, column: 16, scope: !1481)
!1492 = !DILocation(line: 244, column: 14, scope: !1481)
!1493 = !DILocation(line: 244, column: 5, scope: !1481)
!1494 = distinct !DISubprogram(name: "rep_clz", scope: !370, file: !370, line: 49, type: !136, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !137)
!1495 = !DILocation(line: 50, column: 26, scope: !1494)
!1496 = !DILocation(line: 50, column: 12, scope: !1494)
!1497 = !DILocation(line: 50, column: 5, scope: !1494)
!1498 = distinct !DISubprogram(name: "__extendhfsf2", scope: !13, file: !13, line: 19, type: !136, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !137)
!1499 = !DILocation(line: 20, column: 28, scope: !1498)
!1500 = !DILocation(line: 20, column: 12, scope: !1498)
!1501 = !DILocation(line: 20, column: 5, scope: !1498)
!1502 = distinct !DISubprogram(name: "__extendXfYf2__", scope: !1503, file: !1503, line: 41, type: !136, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !137)
!1503 = !DIFile(filename: "../fp_extend_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "782f110678e58d1f3d0cad0e8fd5cc59")
!1504 = !DILocation(line: 44, column: 15, scope: !1502)
!1505 = !DILocation(line: 45, column: 15, scope: !1502)
!1506 = !DILocation(line: 46, column: 15, scope: !1502)
!1507 = !DILocation(line: 47, column: 15, scope: !1502)
!1508 = !DILocation(line: 49, column: 21, scope: !1502)
!1509 = !DILocation(line: 50, column: 21, scope: !1502)
!1510 = !DILocation(line: 51, column: 21, scope: !1502)
!1511 = !DILocation(line: 52, column: 21, scope: !1502)
!1512 = !DILocation(line: 53, column: 21, scope: !1502)
!1513 = !DILocation(line: 54, column: 21, scope: !1502)
!1514 = !DILocation(line: 56, column: 15, scope: !1502)
!1515 = !DILocation(line: 57, column: 15, scope: !1502)
!1516 = !DILocation(line: 58, column: 15, scope: !1502)
!1517 = !DILocation(line: 59, column: 15, scope: !1502)
!1518 = !DILocation(line: 61, column: 21, scope: !1502)
!1519 = !DILocation(line: 64, column: 37, scope: !1502)
!1520 = !DILocation(line: 64, column: 28, scope: !1502)
!1521 = !DILocation(line: 64, column: 21, scope: !1502)
!1522 = !DILocation(line: 65, column: 28, scope: !1502)
!1523 = !DILocation(line: 65, column: 33, scope: !1502)
!1524 = !DILocation(line: 65, column: 21, scope: !1502)
!1525 = !DILocation(line: 66, column: 28, scope: !1502)
!1526 = !DILocation(line: 66, column: 33, scope: !1502)
!1527 = !DILocation(line: 66, column: 21, scope: !1502)
!1528 = !DILocation(line: 71, column: 21, scope: !1502)
!1529 = !DILocation(line: 71, column: 26, scope: !1502)
!1530 = !DILocation(line: 71, column: 9, scope: !1502)
!1531 = !DILocation(line: 71, column: 42, scope: !1502)
!1532 = !DILocation(line: 75, column: 32, scope: !1502)
!1533 = !DILocation(line: 75, column: 21, scope: !1502)
!1534 = !DILocation(line: 75, column: 37, scope: !1502)
!1535 = !DILocation(line: 75, column: 19, scope: !1502)
!1536 = !DILocation(line: 76, column: 19, scope: !1502)
!1537 = !DILocation(line: 77, column: 5, scope: !1502)
!1538 = !DILocation(line: 79, column: 14, scope: !1502)
!1539 = !DILocation(line: 79, column: 19, scope: !1502)
!1540 = !DILocation(line: 84, column: 19, scope: !1502)
!1541 = !DILocation(line: 85, column: 34, scope: !1502)
!1542 = !DILocation(line: 85, column: 39, scope: !1502)
!1543 = !DILocation(line: 85, column: 50, scope: !1502)
!1544 = !DILocation(line: 85, column: 19, scope: !1502)
!1545 = !DILocation(line: 86, column: 34, scope: !1502)
!1546 = !DILocation(line: 86, column: 39, scope: !1502)
!1547 = !DILocation(line: 86, column: 53, scope: !1502)
!1548 = !DILocation(line: 86, column: 19, scope: !1502)
!1549 = !DILocation(line: 87, column: 5, scope: !1502)
!1550 = !DILocation(line: 89, column: 14, scope: !1502)
!1551 = !DILocation(line: 93, column: 41, scope: !1502)
!1552 = !DILocation(line: 93, column: 27, scope: !1502)
!1553 = !DILocation(line: 93, column: 47, scope: !1502)
!1554 = !DILocation(line: 93, column: 19, scope: !1502)
!1555 = !DILocation(line: 94, column: 32, scope: !1502)
!1556 = !DILocation(line: 94, column: 21, scope: !1502)
!1557 = !DILocation(line: 94, column: 67, scope: !1502)
!1558 = !DILocation(line: 94, column: 65, scope: !1502)
!1559 = !DILocation(line: 94, column: 37, scope: !1502)
!1560 = !DILocation(line: 94, column: 19, scope: !1502)
!1561 = !DILocation(line: 95, column: 19, scope: !1502)
!1562 = !DILocation(line: 96, column: 62, scope: !1502)
!1563 = !DILocation(line: 96, column: 60, scope: !1502)
!1564 = !DILocation(line: 96, column: 68, scope: !1502)
!1565 = !DILocation(line: 96, column: 19, scope: !1502)
!1566 = !DILocation(line: 97, column: 33, scope: !1502)
!1567 = !DILocation(line: 97, column: 48, scope: !1502)
!1568 = !DILocation(line: 97, column: 19, scope: !1502)
!1569 = !DILocation(line: 98, column: 5, scope: !1502)
!1570 = !DILocation(line: 102, column: 19, scope: !1502)
!1571 = !DILocation(line: 106, column: 30, scope: !1502)
!1572 = !DILocation(line: 106, column: 53, scope: !1502)
!1573 = !DILocation(line: 106, column: 42, scope: !1502)
!1574 = !DILocation(line: 106, column: 58, scope: !1502)
!1575 = !DILocation(line: 106, column: 40, scope: !1502)
!1576 = !DILocation(line: 106, column: 21, scope: !1502)
!1577 = !DILocation(line: 107, column: 23, scope: !1502)
!1578 = !DILocation(line: 107, column: 12, scope: !1502)
!1579 = !DILocation(line: 107, column: 5, scope: !1502)
!1580 = distinct !DISubprogram(name: "srcToRep", scope: !1581, file: !1581, line: 78, type: !136, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !137)
!1581 = !DIFile(filename: "../fp_extend.h", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "d4932a0fd0790103e1f317fdc8091d48")
!1582 = !DILocation(line: 79, column: 49, scope: !1580)
!1583 = !DILocation(line: 79, column: 55, scope: !1580)
!1584 = !DILocation(line: 80, column: 16, scope: !1580)
!1585 = !DILocation(line: 80, column: 5, scope: !1580)
!1586 = distinct !DISubprogram(name: "dstFromRep", scope: !1581, file: !1581, line: 83, type: !136, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !137)
!1587 = !DILocation(line: 84, column: 49, scope: !1586)
!1588 = !DILocation(line: 84, column: 55, scope: !1586)
!1589 = !DILocation(line: 85, column: 16, scope: !1586)
!1590 = !DILocation(line: 85, column: 5, scope: !1586)
!1591 = distinct !DISubprogram(name: "__gnu_h2f_ieee", scope: !13, file: !13, line: 23, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !137)
!1592 = !DILocation(line: 24, column: 26, scope: !1591)
!1593 = !DILocation(line: 24, column: 12, scope: !1591)
!1594 = !DILocation(line: 24, column: 5, scope: !1591)
!1595 = distinct !DISubprogram(name: "__extendsfdf2", scope: !15, file: !15, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !137)
!1596 = !DILocation(line: 18, column: 28, scope: !1595)
!1597 = !DILocation(line: 18, column: 12, scope: !1595)
!1598 = !DILocation(line: 18, column: 5, scope: !1595)
!1599 = distinct !DISubprogram(name: "__extendXfYf2__", scope: !1503, file: !1503, line: 41, type: !136, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!1600 = !DILocation(line: 44, column: 15, scope: !1599)
!1601 = !DILocation(line: 45, column: 15, scope: !1599)
!1602 = !DILocation(line: 46, column: 15, scope: !1599)
!1603 = !DILocation(line: 47, column: 15, scope: !1599)
!1604 = !DILocation(line: 49, column: 21, scope: !1599)
!1605 = !DILocation(line: 50, column: 21, scope: !1599)
!1606 = !DILocation(line: 51, column: 21, scope: !1599)
!1607 = !DILocation(line: 52, column: 21, scope: !1599)
!1608 = !DILocation(line: 53, column: 21, scope: !1599)
!1609 = !DILocation(line: 54, column: 21, scope: !1599)
!1610 = !DILocation(line: 56, column: 15, scope: !1599)
!1611 = !DILocation(line: 57, column: 15, scope: !1599)
!1612 = !DILocation(line: 58, column: 15, scope: !1599)
!1613 = !DILocation(line: 59, column: 15, scope: !1599)
!1614 = !DILocation(line: 61, column: 21, scope: !1599)
!1615 = !DILocation(line: 64, column: 37, scope: !1599)
!1616 = !DILocation(line: 64, column: 28, scope: !1599)
!1617 = !DILocation(line: 64, column: 21, scope: !1599)
!1618 = !DILocation(line: 65, column: 28, scope: !1599)
!1619 = !DILocation(line: 65, column: 33, scope: !1599)
!1620 = !DILocation(line: 65, column: 21, scope: !1599)
!1621 = !DILocation(line: 66, column: 28, scope: !1599)
!1622 = !DILocation(line: 66, column: 33, scope: !1599)
!1623 = !DILocation(line: 66, column: 21, scope: !1599)
!1624 = !DILocation(line: 71, column: 21, scope: !1599)
!1625 = !DILocation(line: 71, column: 26, scope: !1599)
!1626 = !DILocation(line: 71, column: 42, scope: !1599)
!1627 = !DILocation(line: 71, column: 9, scope: !1599)
!1628 = !DILocation(line: 75, column: 32, scope: !1599)
!1629 = !DILocation(line: 75, column: 21, scope: !1599)
!1630 = !DILocation(line: 75, column: 37, scope: !1599)
!1631 = !DILocation(line: 75, column: 19, scope: !1599)
!1632 = !DILocation(line: 76, column: 19, scope: !1599)
!1633 = !DILocation(line: 77, column: 5, scope: !1599)
!1634 = !DILocation(line: 79, column: 14, scope: !1599)
!1635 = !DILocation(line: 79, column: 19, scope: !1599)
!1636 = !DILocation(line: 84, column: 19, scope: !1599)
!1637 = !DILocation(line: 85, column: 34, scope: !1599)
!1638 = !DILocation(line: 85, column: 39, scope: !1599)
!1639 = !DILocation(line: 85, column: 22, scope: !1599)
!1640 = !DILocation(line: 85, column: 50, scope: !1599)
!1641 = !DILocation(line: 85, column: 19, scope: !1599)
!1642 = !DILocation(line: 86, column: 34, scope: !1599)
!1643 = !DILocation(line: 86, column: 39, scope: !1599)
!1644 = !DILocation(line: 86, column: 22, scope: !1599)
!1645 = !DILocation(line: 86, column: 53, scope: !1599)
!1646 = !DILocation(line: 86, column: 19, scope: !1599)
!1647 = !DILocation(line: 87, column: 5, scope: !1599)
!1648 = !DILocation(line: 89, column: 14, scope: !1599)
!1649 = !DILocation(line: 93, column: 41, scope: !1599)
!1650 = !DILocation(line: 93, column: 27, scope: !1599)
!1651 = !DILocation(line: 93, column: 47, scope: !1599)
!1652 = !DILocation(line: 93, column: 19, scope: !1599)
!1653 = !DILocation(line: 94, column: 32, scope: !1599)
!1654 = !DILocation(line: 94, column: 21, scope: !1599)
!1655 = !DILocation(line: 94, column: 67, scope: !1599)
!1656 = !DILocation(line: 94, column: 65, scope: !1599)
!1657 = !DILocation(line: 94, column: 37, scope: !1599)
!1658 = !DILocation(line: 94, column: 19, scope: !1599)
!1659 = !DILocation(line: 95, column: 19, scope: !1599)
!1660 = !DILocation(line: 96, column: 62, scope: !1599)
!1661 = !DILocation(line: 96, column: 60, scope: !1599)
!1662 = !DILocation(line: 96, column: 68, scope: !1599)
!1663 = !DILocation(line: 96, column: 19, scope: !1599)
!1664 = !DILocation(line: 97, column: 33, scope: !1599)
!1665 = !DILocation(line: 97, column: 22, scope: !1599)
!1666 = !DILocation(line: 97, column: 48, scope: !1599)
!1667 = !DILocation(line: 97, column: 19, scope: !1599)
!1668 = !DILocation(line: 98, column: 5, scope: !1599)
!1669 = !DILocation(line: 102, column: 19, scope: !1599)
!1670 = !DILocation(line: 106, column: 30, scope: !1599)
!1671 = !DILocation(line: 106, column: 53, scope: !1599)
!1672 = !DILocation(line: 106, column: 42, scope: !1599)
!1673 = !DILocation(line: 106, column: 58, scope: !1599)
!1674 = !DILocation(line: 106, column: 40, scope: !1599)
!1675 = !DILocation(line: 106, column: 21, scope: !1599)
!1676 = !DILocation(line: 107, column: 23, scope: !1599)
!1677 = !DILocation(line: 107, column: 12, scope: !1599)
!1678 = !DILocation(line: 107, column: 5, scope: !1599)
!1679 = distinct !DISubprogram(name: "srcToRep", scope: !1581, file: !1581, line: 78, type: !136, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!1680 = !DILocation(line: 79, column: 49, scope: !1679)
!1681 = !DILocation(line: 79, column: 55, scope: !1679)
!1682 = !DILocation(line: 80, column: 16, scope: !1679)
!1683 = !DILocation(line: 80, column: 5, scope: !1679)
!1684 = distinct !DISubprogram(name: "dstFromRep", scope: !1581, file: !1581, line: 83, type: !136, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!1685 = !DILocation(line: 84, column: 49, scope: !1684)
!1686 = !DILocation(line: 84, column: 55, scope: !1684)
!1687 = !DILocation(line: 85, column: 16, scope: !1684)
!1688 = !DILocation(line: 85, column: 5, scope: !1684)
!1689 = distinct !DISubprogram(name: "__fixdfdi", scope: !17, file: !17, line: 23, type: !136, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !137)
!1690 = !DILocation(line: 25, column: 9, scope: !1689)
!1691 = !DILocation(line: 25, column: 11, scope: !1689)
!1692 = !DILocation(line: 26, column: 31, scope: !1689)
!1693 = !DILocation(line: 26, column: 30, scope: !1689)
!1694 = !DILocation(line: 26, column: 17, scope: !1689)
!1695 = !DILocation(line: 26, column: 16, scope: !1689)
!1696 = !DILocation(line: 26, column: 9, scope: !1689)
!1697 = !DILocation(line: 28, column: 25, scope: !1689)
!1698 = !DILocation(line: 28, column: 12, scope: !1689)
!1699 = !DILocation(line: 28, column: 5, scope: !1689)
!1700 = !DILocation(line: 29, column: 1, scope: !1689)
!1701 = distinct !DISubprogram(name: "__fixdfsi", scope: !19, file: !19, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !137)
!1702 = !DILocation(line: 21, column: 21, scope: !1701)
!1703 = !DILocation(line: 21, column: 12, scope: !1701)
!1704 = !DILocation(line: 21, column: 5, scope: !1701)
!1705 = distinct !DISubprogram(name: "__fixint", scope: !1706, file: !1706, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !137)
!1706 = !DIFile(filename: "../fp_fixint_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "89ea1a0185caa3a064d6051520736960")
!1707 = !DILocation(line: 18, column: 20, scope: !1705)
!1708 = !DILocation(line: 19, column: 20, scope: !1705)
!1709 = !DILocation(line: 21, column: 30, scope: !1705)
!1710 = !DILocation(line: 21, column: 24, scope: !1705)
!1711 = !DILocation(line: 21, column: 17, scope: !1705)
!1712 = !DILocation(line: 22, column: 24, scope: !1705)
!1713 = !DILocation(line: 22, column: 29, scope: !1705)
!1714 = !DILocation(line: 22, column: 17, scope: !1705)
!1715 = !DILocation(line: 23, column: 27, scope: !1705)
!1716 = !DILocation(line: 23, column: 32, scope: !1705)
!1717 = !DILocation(line: 23, column: 20, scope: !1705)
!1718 = !DILocation(line: 24, column: 27, scope: !1705)
!1719 = !DILocation(line: 24, column: 32, scope: !1705)
!1720 = !DILocation(line: 24, column: 52, scope: !1705)
!1721 = !DILocation(line: 24, column: 26, scope: !1705)
!1722 = !DILocation(line: 24, column: 15, scope: !1705)
!1723 = !DILocation(line: 25, column: 32, scope: !1705)
!1724 = !DILocation(line: 25, column: 37, scope: !1705)
!1725 = !DILocation(line: 25, column: 56, scope: !1705)
!1726 = !DILocation(line: 25, column: 17, scope: !1705)
!1727 = !DILocation(line: 28, column: 9, scope: !1705)
!1728 = !DILocation(line: 28, column: 18, scope: !1705)
!1729 = !DILocation(line: 29, column: 9, scope: !1705)
!1730 = !DILocation(line: 32, column: 19, scope: !1705)
!1731 = !DILocation(line: 32, column: 28, scope: !1705)
!1732 = !DILocation(line: 32, column: 9, scope: !1705)
!1733 = !DILocation(line: 33, column: 16, scope: !1705)
!1734 = !DILocation(line: 33, column: 21, scope: !1705)
!1735 = !DILocation(line: 33, column: 9, scope: !1705)
!1736 = !DILocation(line: 37, column: 9, scope: !1705)
!1737 = !DILocation(line: 37, column: 18, scope: !1705)
!1738 = !DILocation(line: 38, column: 16, scope: !1705)
!1739 = !DILocation(line: 38, column: 24, scope: !1705)
!1740 = !DILocation(line: 38, column: 58, scope: !1705)
!1741 = !DILocation(line: 38, column: 56, scope: !1705)
!1742 = !DILocation(line: 38, column: 36, scope: !1705)
!1743 = !DILocation(line: 38, column: 21, scope: !1705)
!1744 = !DILocation(line: 38, column: 9, scope: !1705)
!1745 = !DILocation(line: 40, column: 16, scope: !1705)
!1746 = !DILocation(line: 40, column: 34, scope: !1705)
!1747 = !DILocation(line: 40, column: 24, scope: !1705)
!1748 = !DILocation(line: 40, column: 50, scope: !1705)
!1749 = !DILocation(line: 40, column: 59, scope: !1705)
!1750 = !DILocation(line: 40, column: 46, scope: !1705)
!1751 = !DILocation(line: 40, column: 21, scope: !1705)
!1752 = !DILocation(line: 40, column: 9, scope: !1705)
!1753 = !DILocation(line: 41, column: 1, scope: !1705)
!1754 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !137)
!1755 = !DILocation(line: 232, column: 44, scope: !1754)
!1756 = !DILocation(line: 232, column: 50, scope: !1754)
!1757 = !DILocation(line: 233, column: 16, scope: !1754)
!1758 = !DILocation(line: 233, column: 5, scope: !1754)
!1759 = distinct !DISubprogram(name: "__fixsfdi", scope: !23, file: !23, line: 24, type: !136, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !137)
!1760 = !DILocation(line: 26, column: 9, scope: !1759)
!1761 = !DILocation(line: 26, column: 11, scope: !1759)
!1762 = !DILocation(line: 27, column: 31, scope: !1759)
!1763 = !DILocation(line: 27, column: 30, scope: !1759)
!1764 = !DILocation(line: 27, column: 17, scope: !1759)
!1765 = !DILocation(line: 27, column: 16, scope: !1759)
!1766 = !DILocation(line: 27, column: 9, scope: !1759)
!1767 = !DILocation(line: 29, column: 25, scope: !1759)
!1768 = !DILocation(line: 29, column: 12, scope: !1759)
!1769 = !DILocation(line: 29, column: 5, scope: !1759)
!1770 = !DILocation(line: 30, column: 1, scope: !1759)
!1771 = distinct !DISubprogram(name: "__fixsfsi", scope: !25, file: !25, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !137)
!1772 = !DILocation(line: 21, column: 21, scope: !1771)
!1773 = !DILocation(line: 21, column: 12, scope: !1771)
!1774 = !DILocation(line: 21, column: 5, scope: !1771)
!1775 = distinct !DISubprogram(name: "__fixint", scope: !1706, file: !1706, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !137)
!1776 = !DILocation(line: 18, column: 20, scope: !1775)
!1777 = !DILocation(line: 19, column: 20, scope: !1775)
!1778 = !DILocation(line: 21, column: 30, scope: !1775)
!1779 = !DILocation(line: 21, column: 24, scope: !1775)
!1780 = !DILocation(line: 21, column: 17, scope: !1775)
!1781 = !DILocation(line: 22, column: 24, scope: !1775)
!1782 = !DILocation(line: 22, column: 29, scope: !1775)
!1783 = !DILocation(line: 22, column: 17, scope: !1775)
!1784 = !DILocation(line: 23, column: 27, scope: !1775)
!1785 = !DILocation(line: 23, column: 32, scope: !1775)
!1786 = !DILocation(line: 23, column: 20, scope: !1775)
!1787 = !DILocation(line: 24, column: 27, scope: !1775)
!1788 = !DILocation(line: 24, column: 32, scope: !1775)
!1789 = !DILocation(line: 24, column: 52, scope: !1775)
!1790 = !DILocation(line: 24, column: 15, scope: !1775)
!1791 = !DILocation(line: 25, column: 32, scope: !1775)
!1792 = !DILocation(line: 25, column: 37, scope: !1775)
!1793 = !DILocation(line: 25, column: 56, scope: !1775)
!1794 = !DILocation(line: 25, column: 17, scope: !1775)
!1795 = !DILocation(line: 28, column: 9, scope: !1775)
!1796 = !DILocation(line: 28, column: 18, scope: !1775)
!1797 = !DILocation(line: 29, column: 9, scope: !1775)
!1798 = !DILocation(line: 32, column: 19, scope: !1775)
!1799 = !DILocation(line: 32, column: 28, scope: !1775)
!1800 = !DILocation(line: 32, column: 9, scope: !1775)
!1801 = !DILocation(line: 33, column: 16, scope: !1775)
!1802 = !DILocation(line: 33, column: 21, scope: !1775)
!1803 = !DILocation(line: 33, column: 9, scope: !1775)
!1804 = !DILocation(line: 37, column: 9, scope: !1775)
!1805 = !DILocation(line: 37, column: 18, scope: !1775)
!1806 = !DILocation(line: 38, column: 16, scope: !1775)
!1807 = !DILocation(line: 38, column: 24, scope: !1775)
!1808 = !DILocation(line: 38, column: 58, scope: !1775)
!1809 = !DILocation(line: 38, column: 56, scope: !1775)
!1810 = !DILocation(line: 38, column: 36, scope: !1775)
!1811 = !DILocation(line: 38, column: 21, scope: !1775)
!1812 = !DILocation(line: 38, column: 9, scope: !1775)
!1813 = !DILocation(line: 40, column: 16, scope: !1775)
!1814 = !DILocation(line: 40, column: 34, scope: !1775)
!1815 = !DILocation(line: 40, column: 50, scope: !1775)
!1816 = !DILocation(line: 40, column: 59, scope: !1775)
!1817 = !DILocation(line: 40, column: 46, scope: !1775)
!1818 = !DILocation(line: 40, column: 21, scope: !1775)
!1819 = !DILocation(line: 40, column: 9, scope: !1775)
!1820 = !DILocation(line: 41, column: 1, scope: !1775)
!1821 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !137)
!1822 = !DILocation(line: 232, column: 44, scope: !1821)
!1823 = !DILocation(line: 232, column: 50, scope: !1821)
!1824 = !DILocation(line: 233, column: 16, scope: !1821)
!1825 = !DILocation(line: 233, column: 5, scope: !1821)
!1826 = distinct !DISubprogram(name: "__fixunsdfdi", scope: !29, file: !29, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !137)
!1827 = !DILocation(line: 24, column: 9, scope: !1826)
!1828 = !DILocation(line: 24, column: 11, scope: !1826)
!1829 = !DILocation(line: 24, column: 19, scope: !1826)
!1830 = !DILocation(line: 25, column: 19, scope: !1826)
!1831 = !DILocation(line: 25, column: 21, scope: !1826)
!1832 = !DILocation(line: 25, column: 12, scope: !1826)
!1833 = !DILocation(line: 26, column: 18, scope: !1826)
!1834 = !DILocation(line: 26, column: 30, scope: !1826)
!1835 = !DILocation(line: 26, column: 22, scope: !1826)
!1836 = !DILocation(line: 26, column: 20, scope: !1826)
!1837 = !DILocation(line: 26, column: 12, scope: !1826)
!1838 = !DILocation(line: 27, column: 21, scope: !1826)
!1839 = !DILocation(line: 27, column: 13, scope: !1826)
!1840 = !DILocation(line: 27, column: 26, scope: !1826)
!1841 = !DILocation(line: 27, column: 35, scope: !1826)
!1842 = !DILocation(line: 27, column: 33, scope: !1826)
!1843 = !DILocation(line: 27, column: 5, scope: !1826)
!1844 = !DILocation(line: 28, column: 1, scope: !1826)
!1845 = distinct !DISubprogram(name: "__fixunsdfsi", scope: !31, file: !31, line: 19, type: !136, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !137)
!1846 = !DILocation(line: 20, column: 22, scope: !1845)
!1847 = !DILocation(line: 20, column: 12, scope: !1845)
!1848 = !DILocation(line: 20, column: 5, scope: !1845)
!1849 = distinct !DISubprogram(name: "__fixuint", scope: !1850, file: !1850, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !137)
!1850 = !DIFile(filename: "../fp_fixuint_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "6bc5369d617a52303e78f0c14245c5a2")
!1851 = !DILocation(line: 19, column: 30, scope: !1849)
!1852 = !DILocation(line: 19, column: 24, scope: !1849)
!1853 = !DILocation(line: 19, column: 17, scope: !1849)
!1854 = !DILocation(line: 20, column: 24, scope: !1849)
!1855 = !DILocation(line: 20, column: 29, scope: !1849)
!1856 = !DILocation(line: 20, column: 17, scope: !1849)
!1857 = !DILocation(line: 21, column: 22, scope: !1849)
!1858 = !DILocation(line: 21, column: 27, scope: !1849)
!1859 = !DILocation(line: 21, column: 15, scope: !1849)
!1860 = !DILocation(line: 22, column: 27, scope: !1849)
!1861 = !DILocation(line: 22, column: 32, scope: !1849)
!1862 = !DILocation(line: 22, column: 52, scope: !1849)
!1863 = !DILocation(line: 22, column: 26, scope: !1849)
!1864 = !DILocation(line: 22, column: 15, scope: !1849)
!1865 = !DILocation(line: 23, column: 32, scope: !1849)
!1866 = !DILocation(line: 23, column: 37, scope: !1849)
!1867 = !DILocation(line: 23, column: 56, scope: !1849)
!1868 = !DILocation(line: 23, column: 17, scope: !1849)
!1869 = !DILocation(line: 26, column: 9, scope: !1849)
!1870 = !DILocation(line: 26, column: 14, scope: !1849)
!1871 = !DILocation(line: 26, column: 20, scope: !1849)
!1872 = !DILocation(line: 26, column: 23, scope: !1849)
!1873 = !DILocation(line: 26, column: 32, scope: !1849)
!1874 = !DILocation(line: 27, column: 9, scope: !1849)
!1875 = !DILocation(line: 30, column: 19, scope: !1849)
!1876 = !DILocation(line: 30, column: 28, scope: !1849)
!1877 = !DILocation(line: 30, column: 9, scope: !1849)
!1878 = !DILocation(line: 31, column: 9, scope: !1849)
!1879 = !DILocation(line: 35, column: 9, scope: !1849)
!1880 = !DILocation(line: 35, column: 18, scope: !1849)
!1881 = !DILocation(line: 36, column: 16, scope: !1849)
!1882 = !DILocation(line: 36, column: 50, scope: !1849)
!1883 = !DILocation(line: 36, column: 48, scope: !1849)
!1884 = !DILocation(line: 36, column: 28, scope: !1849)
!1885 = !DILocation(line: 36, column: 9, scope: !1849)
!1886 = !DILocation(line: 38, column: 27, scope: !1849)
!1887 = !DILocation(line: 38, column: 16, scope: !1849)
!1888 = !DILocation(line: 38, column: 43, scope: !1849)
!1889 = !DILocation(line: 38, column: 52, scope: !1849)
!1890 = !DILocation(line: 38, column: 39, scope: !1849)
!1891 = !DILocation(line: 38, column: 9, scope: !1849)
!1892 = !DILocation(line: 39, column: 1, scope: !1849)
!1893 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !137)
!1894 = !DILocation(line: 232, column: 44, scope: !1893)
!1895 = !DILocation(line: 232, column: 50, scope: !1893)
!1896 = !DILocation(line: 233, column: 16, scope: !1893)
!1897 = !DILocation(line: 233, column: 5, scope: !1893)
!1898 = distinct !DISubprogram(name: "__fixunssfdi", scope: !35, file: !35, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !137)
!1899 = !DILocation(line: 24, column: 9, scope: !1898)
!1900 = !DILocation(line: 24, column: 11, scope: !1898)
!1901 = !DILocation(line: 24, column: 20, scope: !1898)
!1902 = !DILocation(line: 25, column: 17, scope: !1898)
!1903 = !DILocation(line: 25, column: 12, scope: !1898)
!1904 = !DILocation(line: 26, column: 19, scope: !1898)
!1905 = !DILocation(line: 26, column: 22, scope: !1898)
!1906 = !DILocation(line: 26, column: 12, scope: !1898)
!1907 = !DILocation(line: 27, column: 18, scope: !1898)
!1908 = !DILocation(line: 27, column: 31, scope: !1898)
!1909 = !DILocation(line: 27, column: 23, scope: !1898)
!1910 = !DILocation(line: 27, column: 21, scope: !1898)
!1911 = !DILocation(line: 27, column: 12, scope: !1898)
!1912 = !DILocation(line: 28, column: 21, scope: !1898)
!1913 = !DILocation(line: 28, column: 13, scope: !1898)
!1914 = !DILocation(line: 28, column: 26, scope: !1898)
!1915 = !DILocation(line: 28, column: 35, scope: !1898)
!1916 = !DILocation(line: 28, column: 33, scope: !1898)
!1917 = !DILocation(line: 28, column: 5, scope: !1898)
!1918 = !DILocation(line: 29, column: 1, scope: !1898)
!1919 = distinct !DISubprogram(name: "__fixunssfsi", scope: !37, file: !37, line: 23, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !137)
!1920 = !DILocation(line: 24, column: 22, scope: !1919)
!1921 = !DILocation(line: 24, column: 12, scope: !1919)
!1922 = !DILocation(line: 24, column: 5, scope: !1919)
!1923 = distinct !DISubprogram(name: "__fixuint", scope: !1850, file: !1850, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !137)
!1924 = !DILocation(line: 19, column: 30, scope: !1923)
!1925 = !DILocation(line: 19, column: 24, scope: !1923)
!1926 = !DILocation(line: 19, column: 17, scope: !1923)
!1927 = !DILocation(line: 20, column: 24, scope: !1923)
!1928 = !DILocation(line: 20, column: 29, scope: !1923)
!1929 = !DILocation(line: 20, column: 17, scope: !1923)
!1930 = !DILocation(line: 21, column: 22, scope: !1923)
!1931 = !DILocation(line: 21, column: 27, scope: !1923)
!1932 = !DILocation(line: 21, column: 15, scope: !1923)
!1933 = !DILocation(line: 22, column: 27, scope: !1923)
!1934 = !DILocation(line: 22, column: 32, scope: !1923)
!1935 = !DILocation(line: 22, column: 52, scope: !1923)
!1936 = !DILocation(line: 22, column: 15, scope: !1923)
!1937 = !DILocation(line: 23, column: 32, scope: !1923)
!1938 = !DILocation(line: 23, column: 37, scope: !1923)
!1939 = !DILocation(line: 23, column: 56, scope: !1923)
!1940 = !DILocation(line: 23, column: 17, scope: !1923)
!1941 = !DILocation(line: 26, column: 9, scope: !1923)
!1942 = !DILocation(line: 26, column: 14, scope: !1923)
!1943 = !DILocation(line: 26, column: 20, scope: !1923)
!1944 = !DILocation(line: 26, column: 23, scope: !1923)
!1945 = !DILocation(line: 26, column: 32, scope: !1923)
!1946 = !DILocation(line: 27, column: 9, scope: !1923)
!1947 = !DILocation(line: 30, column: 19, scope: !1923)
!1948 = !DILocation(line: 30, column: 28, scope: !1923)
!1949 = !DILocation(line: 30, column: 9, scope: !1923)
!1950 = !DILocation(line: 31, column: 9, scope: !1923)
!1951 = !DILocation(line: 35, column: 9, scope: !1923)
!1952 = !DILocation(line: 35, column: 18, scope: !1923)
!1953 = !DILocation(line: 36, column: 16, scope: !1923)
!1954 = !DILocation(line: 36, column: 50, scope: !1923)
!1955 = !DILocation(line: 36, column: 48, scope: !1923)
!1956 = !DILocation(line: 36, column: 28, scope: !1923)
!1957 = !DILocation(line: 36, column: 9, scope: !1923)
!1958 = !DILocation(line: 38, column: 27, scope: !1923)
!1959 = !DILocation(line: 38, column: 43, scope: !1923)
!1960 = !DILocation(line: 38, column: 52, scope: !1923)
!1961 = !DILocation(line: 38, column: 39, scope: !1923)
!1962 = !DILocation(line: 38, column: 9, scope: !1923)
!1963 = !DILocation(line: 39, column: 1, scope: !1923)
!1964 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !137)
!1965 = !DILocation(line: 232, column: 44, scope: !1964)
!1966 = !DILocation(line: 232, column: 50, scope: !1964)
!1967 = !DILocation(line: 233, column: 16, scope: !1964)
!1968 = !DILocation(line: 233, column: 5, scope: !1964)
!1969 = distinct !DISubprogram(name: "__fixunsxfdi", scope: !41, file: !41, line: 34, type: !136, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !137)
!1970 = !DILocation(line: 37, column: 12, scope: !1969)
!1971 = !DILocation(line: 37, column: 8, scope: !1969)
!1972 = !DILocation(line: 37, column: 10, scope: !1969)
!1973 = !DILocation(line: 38, column: 17, scope: !1969)
!1974 = !DILocation(line: 38, column: 19, scope: !1969)
!1975 = !DILocation(line: 38, column: 24, scope: !1969)
!1976 = !DILocation(line: 38, column: 26, scope: !1969)
!1977 = !DILocation(line: 38, column: 30, scope: !1969)
!1978 = !DILocation(line: 38, column: 44, scope: !1969)
!1979 = !DILocation(line: 38, column: 9, scope: !1969)
!1980 = !DILocation(line: 39, column: 9, scope: !1969)
!1981 = !DILocation(line: 39, column: 11, scope: !1969)
!1982 = !DILocation(line: 39, column: 15, scope: !1969)
!1983 = !DILocation(line: 39, column: 22, scope: !1969)
!1984 = !DILocation(line: 39, column: 24, scope: !1969)
!1985 = !DILocation(line: 39, column: 29, scope: !1969)
!1986 = !DILocation(line: 39, column: 31, scope: !1969)
!1987 = !DILocation(line: 39, column: 35, scope: !1969)
!1988 = !DILocation(line: 40, column: 9, scope: !1969)
!1989 = !DILocation(line: 41, column: 19, scope: !1969)
!1990 = !DILocation(line: 41, column: 21, scope: !1969)
!1991 = !DILocation(line: 41, column: 9, scope: !1969)
!1992 = !DILocation(line: 42, column: 9, scope: !1969)
!1993 = !DILocation(line: 43, column: 15, scope: !1969)
!1994 = !DILocation(line: 43, column: 17, scope: !1969)
!1995 = !DILocation(line: 43, column: 21, scope: !1969)
!1996 = !DILocation(line: 43, column: 34, scope: !1969)
!1997 = !DILocation(line: 43, column: 32, scope: !1969)
!1998 = !DILocation(line: 43, column: 25, scope: !1969)
!1999 = !DILocation(line: 43, column: 5, scope: !1969)
!2000 = !DILocation(line: 44, column: 1, scope: !1969)
!2001 = distinct !DISubprogram(name: "__fixunsxfsi", scope: !43, file: !43, line: 33, type: !136, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !137)
!2002 = !DILocation(line: 36, column: 12, scope: !2001)
!2003 = !DILocation(line: 36, column: 8, scope: !2001)
!2004 = !DILocation(line: 36, column: 10, scope: !2001)
!2005 = !DILocation(line: 37, column: 17, scope: !2001)
!2006 = !DILocation(line: 37, column: 19, scope: !2001)
!2007 = !DILocation(line: 37, column: 24, scope: !2001)
!2008 = !DILocation(line: 37, column: 26, scope: !2001)
!2009 = !DILocation(line: 37, column: 30, scope: !2001)
!2010 = !DILocation(line: 37, column: 44, scope: !2001)
!2011 = !DILocation(line: 37, column: 9, scope: !2001)
!2012 = !DILocation(line: 38, column: 9, scope: !2001)
!2013 = !DILocation(line: 38, column: 11, scope: !2001)
!2014 = !DILocation(line: 38, column: 15, scope: !2001)
!2015 = !DILocation(line: 38, column: 22, scope: !2001)
!2016 = !DILocation(line: 38, column: 24, scope: !2001)
!2017 = !DILocation(line: 38, column: 29, scope: !2001)
!2018 = !DILocation(line: 38, column: 31, scope: !2001)
!2019 = !DILocation(line: 38, column: 35, scope: !2001)
!2020 = !DILocation(line: 39, column: 9, scope: !2001)
!2021 = !DILocation(line: 40, column: 19, scope: !2001)
!2022 = !DILocation(line: 40, column: 21, scope: !2001)
!2023 = !DILocation(line: 40, column: 9, scope: !2001)
!2024 = !DILocation(line: 41, column: 9, scope: !2001)
!2025 = !DILocation(line: 42, column: 15, scope: !2001)
!2026 = !DILocation(line: 42, column: 17, scope: !2001)
!2027 = !DILocation(line: 42, column: 21, scope: !2001)
!2028 = !DILocation(line: 42, column: 23, scope: !2001)
!2029 = !DILocation(line: 42, column: 37, scope: !2001)
!2030 = !DILocation(line: 42, column: 35, scope: !2001)
!2031 = !DILocation(line: 42, column: 28, scope: !2001)
!2032 = !DILocation(line: 42, column: 5, scope: !2001)
!2033 = !DILocation(line: 43, column: 1, scope: !2001)
!2034 = distinct !DISubprogram(name: "__fixxfdi", scope: !47, file: !47, line: 31, type: !136, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !137)
!2035 = !DILocation(line: 33, column: 18, scope: !2034)
!2036 = !DILocation(line: 34, column: 18, scope: !2034)
!2037 = !DILocation(line: 36, column: 12, scope: !2034)
!2038 = !DILocation(line: 36, column: 8, scope: !2034)
!2039 = !DILocation(line: 36, column: 10, scope: !2034)
!2040 = !DILocation(line: 37, column: 17, scope: !2034)
!2041 = !DILocation(line: 37, column: 19, scope: !2034)
!2042 = !DILocation(line: 37, column: 24, scope: !2034)
!2043 = !DILocation(line: 37, column: 26, scope: !2034)
!2044 = !DILocation(line: 37, column: 30, scope: !2034)
!2045 = !DILocation(line: 37, column: 44, scope: !2034)
!2046 = !DILocation(line: 37, column: 9, scope: !2034)
!2047 = !DILocation(line: 38, column: 9, scope: !2034)
!2048 = !DILocation(line: 38, column: 11, scope: !2034)
!2049 = !DILocation(line: 39, column: 9, scope: !2034)
!2050 = !DILocation(line: 40, column: 19, scope: !2034)
!2051 = !DILocation(line: 40, column: 21, scope: !2034)
!2052 = !DILocation(line: 40, column: 9, scope: !2034)
!2053 = !DILocation(line: 41, column: 16, scope: !2034)
!2054 = !DILocation(line: 41, column: 18, scope: !2034)
!2055 = !DILocation(line: 41, column: 9, scope: !2034)
!2056 = !DILocation(line: 42, column: 30, scope: !2034)
!2057 = !DILocation(line: 42, column: 32, scope: !2034)
!2058 = !DILocation(line: 42, column: 37, scope: !2034)
!2059 = !DILocation(line: 42, column: 39, scope: !2034)
!2060 = !DILocation(line: 42, column: 43, scope: !2034)
!2061 = !DILocation(line: 42, column: 57, scope: !2034)
!2062 = !DILocation(line: 42, column: 16, scope: !2034)
!2063 = !DILocation(line: 42, column: 12, scope: !2034)
!2064 = !DILocation(line: 43, column: 19, scope: !2034)
!2065 = !DILocation(line: 43, column: 21, scope: !2034)
!2066 = !DILocation(line: 43, column: 25, scope: !2034)
!2067 = !DILocation(line: 43, column: 12, scope: !2034)
!2068 = !DILocation(line: 44, column: 17, scope: !2034)
!2069 = !DILocation(line: 44, column: 28, scope: !2034)
!2070 = !DILocation(line: 44, column: 26, scope: !2034)
!2071 = !DILocation(line: 44, column: 19, scope: !2034)
!2072 = !DILocation(line: 44, column: 7, scope: !2034)
!2073 = !DILocation(line: 45, column: 13, scope: !2034)
!2074 = !DILocation(line: 45, column: 17, scope: !2034)
!2075 = !DILocation(line: 45, column: 15, scope: !2034)
!2076 = !DILocation(line: 45, column: 22, scope: !2034)
!2077 = !DILocation(line: 45, column: 20, scope: !2034)
!2078 = !DILocation(line: 45, column: 5, scope: !2034)
!2079 = !DILocation(line: 46, column: 1, scope: !2034)
!2080 = distinct !DISubprogram(name: "__floatdidf", scope: !51, file: !51, line: 33, type: !136, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !137)
!2081 = !DILocation(line: 38, column: 36, scope: !2080)
!2082 = !DILocation(line: 40, column: 35, scope: !2080)
!2083 = !DILocation(line: 40, column: 37, scope: !2080)
!2084 = !DILocation(line: 40, column: 25, scope: !2080)
!2085 = !DILocation(line: 40, column: 44, scope: !2080)
!2086 = !DILocation(line: 40, column: 18, scope: !2080)
!2087 = !DILocation(line: 41, column: 14, scope: !2080)
!2088 = !DILocation(line: 41, column: 16, scope: !2080)
!2089 = !DILocation(line: 41, column: 9, scope: !2080)
!2090 = !DILocation(line: 41, column: 11, scope: !2080)
!2091 = !DILocation(line: 43, column: 28, scope: !2080)
!2092 = !DILocation(line: 43, column: 33, scope: !2080)
!2093 = !DILocation(line: 43, column: 49, scope: !2080)
!2094 = !DILocation(line: 43, column: 43, scope: !2080)
!2095 = !DILocation(line: 43, column: 18, scope: !2080)
!2096 = !DILocation(line: 44, column: 12, scope: !2080)
!2097 = !DILocation(line: 44, column: 5, scope: !2080)
!2098 = distinct !DISubprogram(name: "__floatdisf", scope: !53, file: !53, line: 28, type: !136, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !137)
!2099 = !DILocation(line: 30, column: 9, scope: !2098)
!2100 = !DILocation(line: 30, column: 11, scope: !2098)
!2101 = !DILocation(line: 31, column: 9, scope: !2098)
!2102 = !DILocation(line: 32, column: 20, scope: !2098)
!2103 = !DILocation(line: 33, column: 22, scope: !2098)
!2104 = !DILocation(line: 33, column: 24, scope: !2098)
!2105 = !DILocation(line: 33, column: 18, scope: !2098)
!2106 = !DILocation(line: 34, column: 10, scope: !2098)
!2107 = !DILocation(line: 34, column: 14, scope: !2098)
!2108 = !DILocation(line: 34, column: 12, scope: !2098)
!2109 = !DILocation(line: 34, column: 19, scope: !2098)
!2110 = !DILocation(line: 34, column: 17, scope: !2098)
!2111 = !DILocation(line: 34, column: 7, scope: !2098)
!2112 = !DILocation(line: 35, column: 34, scope: !2098)
!2113 = !DILocation(line: 35, column: 18, scope: !2098)
!2114 = !DILocation(line: 35, column: 16, scope: !2098)
!2115 = !DILocation(line: 35, column: 9, scope: !2098)
!2116 = !DILocation(line: 36, column: 13, scope: !2098)
!2117 = !DILocation(line: 36, column: 16, scope: !2098)
!2118 = !DILocation(line: 36, column: 9, scope: !2098)
!2119 = !DILocation(line: 37, column: 9, scope: !2098)
!2120 = !DILocation(line: 37, column: 12, scope: !2098)
!2121 = !DILocation(line: 47, column: 17, scope: !2098)
!2122 = !DILocation(line: 47, column: 9, scope: !2098)
!2123 = !DILocation(line: 50, column: 15, scope: !2098)
!2124 = !DILocation(line: 51, column: 13, scope: !2098)
!2125 = !DILocation(line: 53, column: 13, scope: !2098)
!2126 = !DILocation(line: 55, column: 26, scope: !2098)
!2127 = !DILocation(line: 55, column: 32, scope: !2098)
!2128 = !DILocation(line: 55, column: 35, scope: !2098)
!2129 = !DILocation(line: 55, column: 28, scope: !2098)
!2130 = !DILocation(line: 56, column: 19, scope: !2098)
!2131 = !DILocation(line: 56, column: 64, scope: !2098)
!2132 = !DILocation(line: 56, column: 62, scope: !2098)
!2133 = !DILocation(line: 56, column: 37, scope: !2098)
!2134 = !DILocation(line: 56, column: 21, scope: !2098)
!2135 = !DILocation(line: 56, column: 70, scope: !2098)
!2136 = !DILocation(line: 56, column: 17, scope: !2098)
!2137 = !DILocation(line: 55, column: 56, scope: !2098)
!2138 = !DILocation(line: 55, column: 15, scope: !2098)
!2139 = !DILocation(line: 57, column: 9, scope: !2098)
!2140 = !DILocation(line: 59, column: 15, scope: !2098)
!2141 = !DILocation(line: 59, column: 17, scope: !2098)
!2142 = !DILocation(line: 59, column: 22, scope: !2098)
!2143 = !DILocation(line: 59, column: 14, scope: !2098)
!2144 = !DILocation(line: 59, column: 11, scope: !2098)
!2145 = !DILocation(line: 60, column: 9, scope: !2098)
!2146 = !DILocation(line: 61, column: 11, scope: !2098)
!2147 = !DILocation(line: 63, column: 13, scope: !2098)
!2148 = !DILocation(line: 63, column: 15, scope: !2098)
!2149 = !DILocation(line: 65, column: 15, scope: !2098)
!2150 = !DILocation(line: 66, column: 13, scope: !2098)
!2151 = !DILocation(line: 67, column: 9, scope: !2098)
!2152 = !DILocation(line: 69, column: 5, scope: !2098)
!2153 = !DILocation(line: 72, column: 31, scope: !2098)
!2154 = !DILocation(line: 72, column: 29, scope: !2098)
!2155 = !DILocation(line: 72, column: 11, scope: !2098)
!2156 = !DILocation(line: 76, column: 21, scope: !2098)
!2157 = !DILocation(line: 76, column: 13, scope: !2098)
!2158 = !DILocation(line: 76, column: 23, scope: !2098)
!2159 = !DILocation(line: 77, column: 14, scope: !2098)
!2160 = !DILocation(line: 77, column: 16, scope: !2098)
!2161 = !DILocation(line: 77, column: 23, scope: !2098)
!2162 = !DILocation(line: 76, column: 37, scope: !2098)
!2163 = !DILocation(line: 78, column: 21, scope: !2098)
!2164 = !DILocation(line: 78, column: 13, scope: !2098)
!2165 = !DILocation(line: 78, column: 23, scope: !2098)
!2166 = !DILocation(line: 77, column: 36, scope: !2098)
!2167 = !DILocation(line: 76, column: 8, scope: !2098)
!2168 = !DILocation(line: 76, column: 10, scope: !2098)
!2169 = !DILocation(line: 79, column: 15, scope: !2098)
!2170 = !DILocation(line: 79, column: 5, scope: !2098)
!2171 = !DILocation(line: 80, column: 1, scope: !2098)
!2172 = distinct !DISubprogram(name: "__floatdixf", scope: !55, file: !55, line: 30, type: !136, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !137)
!2173 = !DILocation(line: 32, column: 9, scope: !2172)
!2174 = !DILocation(line: 32, column: 11, scope: !2172)
!2175 = !DILocation(line: 33, column: 9, scope: !2172)
!2176 = !DILocation(line: 34, column: 20, scope: !2172)
!2177 = !DILocation(line: 35, column: 22, scope: !2172)
!2178 = !DILocation(line: 35, column: 24, scope: !2172)
!2179 = !DILocation(line: 35, column: 18, scope: !2172)
!2180 = !DILocation(line: 36, column: 10, scope: !2172)
!2181 = !DILocation(line: 36, column: 14, scope: !2172)
!2182 = !DILocation(line: 36, column: 12, scope: !2172)
!2183 = !DILocation(line: 36, column: 19, scope: !2172)
!2184 = !DILocation(line: 36, column: 17, scope: !2172)
!2185 = !DILocation(line: 36, column: 7, scope: !2172)
!2186 = !DILocation(line: 37, column: 31, scope: !2172)
!2187 = !DILocation(line: 37, column: 15, scope: !2172)
!2188 = !DILocation(line: 37, column: 9, scope: !2172)
!2189 = !DILocation(line: 38, column: 23, scope: !2172)
!2190 = !DILocation(line: 38, column: 21, scope: !2172)
!2191 = !DILocation(line: 38, column: 9, scope: !2172)
!2192 = !DILocation(line: 40, column: 32, scope: !2172)
!2193 = !DILocation(line: 40, column: 24, scope: !2172)
!2194 = !DILocation(line: 40, column: 34, scope: !2172)
!2195 = !DILocation(line: 41, column: 10, scope: !2172)
!2196 = !DILocation(line: 41, column: 12, scope: !2172)
!2197 = !DILocation(line: 40, column: 48, scope: !2172)
!2198 = !DILocation(line: 40, column: 8, scope: !2172)
!2199 = !DILocation(line: 40, column: 10, scope: !2172)
!2200 = !DILocation(line: 40, column: 15, scope: !2172)
!2201 = !DILocation(line: 40, column: 17, scope: !2172)
!2202 = !DILocation(line: 40, column: 21, scope: !2172)
!2203 = !DILocation(line: 42, column: 20, scope: !2172)
!2204 = !DILocation(line: 42, column: 25, scope: !2172)
!2205 = !DILocation(line: 42, column: 22, scope: !2172)
!2206 = !DILocation(line: 42, column: 8, scope: !2172)
!2207 = !DILocation(line: 42, column: 10, scope: !2172)
!2208 = !DILocation(line: 42, column: 14, scope: !2172)
!2209 = !DILocation(line: 42, column: 18, scope: !2172)
!2210 = !DILocation(line: 43, column: 15, scope: !2172)
!2211 = !DILocation(line: 43, column: 5, scope: !2172)
!2212 = !DILocation(line: 44, column: 1, scope: !2172)
!2213 = distinct !DISubprogram(name: "__floatsidf", scope: !57, file: !57, line: 24, type: !136, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !137)
!2214 = !DILocation(line: 26, column: 15, scope: !2213)
!2215 = !DILocation(line: 29, column: 9, scope: !2213)
!2216 = !DILocation(line: 29, column: 11, scope: !2213)
!2217 = !DILocation(line: 30, column: 16, scope: !2213)
!2218 = !DILocation(line: 30, column: 9, scope: !2213)
!2219 = !DILocation(line: 33, column: 11, scope: !2213)
!2220 = !DILocation(line: 34, column: 9, scope: !2213)
!2221 = !DILocation(line: 34, column: 11, scope: !2213)
!2222 = !DILocation(line: 35, column: 14, scope: !2213)
!2223 = !DILocation(line: 36, column: 14, scope: !2213)
!2224 = !DILocation(line: 36, column: 13, scope: !2213)
!2225 = !DILocation(line: 36, column: 11, scope: !2213)
!2226 = !DILocation(line: 37, column: 5, scope: !2213)
!2227 = !DILocation(line: 40, column: 55, scope: !2213)
!2228 = !DILocation(line: 40, column: 41, scope: !2213)
!2229 = !DILocation(line: 40, column: 39, scope: !2213)
!2230 = !DILocation(line: 40, column: 15, scope: !2213)
!2231 = !DILocation(line: 46, column: 41, scope: !2213)
!2232 = !DILocation(line: 46, column: 39, scope: !2213)
!2233 = !DILocation(line: 46, column: 15, scope: !2213)
!2234 = !DILocation(line: 47, column: 35, scope: !2213)
!2235 = !DILocation(line: 47, column: 14, scope: !2213)
!2236 = !DILocation(line: 47, column: 40, scope: !2213)
!2237 = !DILocation(line: 47, column: 37, scope: !2213)
!2238 = !DILocation(line: 47, column: 46, scope: !2213)
!2239 = !DILocation(line: 47, column: 12, scope: !2213)
!2240 = !DILocation(line: 50, column: 23, scope: !2213)
!2241 = !DILocation(line: 50, column: 32, scope: !2213)
!2242 = !DILocation(line: 50, column: 15, scope: !2213)
!2243 = !DILocation(line: 50, column: 48, scope: !2213)
!2244 = !DILocation(line: 50, column: 12, scope: !2213)
!2245 = !DILocation(line: 52, column: 20, scope: !2213)
!2246 = !DILocation(line: 52, column: 29, scope: !2213)
!2247 = !DILocation(line: 52, column: 27, scope: !2213)
!2248 = !DILocation(line: 52, column: 12, scope: !2213)
!2249 = !DILocation(line: 52, column: 5, scope: !2213)
!2250 = !DILocation(line: 53, column: 1, scope: !2213)
!2251 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !137)
!2252 = !DILocation(line: 237, column: 44, scope: !2251)
!2253 = !DILocation(line: 237, column: 50, scope: !2251)
!2254 = !DILocation(line: 238, column: 16, scope: !2251)
!2255 = !DILocation(line: 238, column: 5, scope: !2251)
!2256 = distinct !DISubprogram(name: "__floatsisf", scope: !59, file: !59, line: 24, type: !136, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !137)
!2257 = !DILocation(line: 26, column: 15, scope: !2256)
!2258 = !DILocation(line: 29, column: 9, scope: !2256)
!2259 = !DILocation(line: 29, column: 11, scope: !2256)
!2260 = !DILocation(line: 30, column: 16, scope: !2256)
!2261 = !DILocation(line: 30, column: 9, scope: !2256)
!2262 = !DILocation(line: 33, column: 11, scope: !2256)
!2263 = !DILocation(line: 34, column: 9, scope: !2256)
!2264 = !DILocation(line: 34, column: 11, scope: !2256)
!2265 = !DILocation(line: 35, column: 14, scope: !2256)
!2266 = !DILocation(line: 36, column: 14, scope: !2256)
!2267 = !DILocation(line: 36, column: 13, scope: !2256)
!2268 = !DILocation(line: 36, column: 11, scope: !2256)
!2269 = !DILocation(line: 37, column: 5, scope: !2256)
!2270 = !DILocation(line: 40, column: 55, scope: !2256)
!2271 = !DILocation(line: 40, column: 41, scope: !2256)
!2272 = !DILocation(line: 40, column: 39, scope: !2256)
!2273 = !DILocation(line: 40, column: 15, scope: !2256)
!2274 = !DILocation(line: 44, column: 9, scope: !2256)
!2275 = !DILocation(line: 44, column: 18, scope: !2256)
!2276 = !DILocation(line: 45, column: 45, scope: !2256)
!2277 = !DILocation(line: 45, column: 43, scope: !2256)
!2278 = !DILocation(line: 45, column: 19, scope: !2256)
!2279 = !DILocation(line: 46, column: 25, scope: !2256)
!2280 = !DILocation(line: 46, column: 30, scope: !2256)
!2281 = !DILocation(line: 46, column: 27, scope: !2256)
!2282 = !DILocation(line: 46, column: 36, scope: !2256)
!2283 = !DILocation(line: 46, column: 16, scope: !2256)
!2284 = !DILocation(line: 47, column: 5, scope: !2256)
!2285 = !DILocation(line: 48, column: 27, scope: !2256)
!2286 = !DILocation(line: 48, column: 36, scope: !2256)
!2287 = !DILocation(line: 48, column: 19, scope: !2256)
!2288 = !DILocation(line: 49, column: 25, scope: !2256)
!2289 = !DILocation(line: 49, column: 30, scope: !2256)
!2290 = !DILocation(line: 49, column: 27, scope: !2256)
!2291 = !DILocation(line: 49, column: 36, scope: !2256)
!2292 = !DILocation(line: 49, column: 16, scope: !2256)
!2293 = !DILocation(line: 50, column: 30, scope: !2256)
!2294 = !DILocation(line: 50, column: 48, scope: !2256)
!2295 = !DILocation(line: 50, column: 46, scope: !2256)
!2296 = !DILocation(line: 50, column: 32, scope: !2256)
!2297 = !DILocation(line: 50, column: 15, scope: !2256)
!2298 = !DILocation(line: 51, column: 13, scope: !2256)
!2299 = !DILocation(line: 51, column: 19, scope: !2256)
!2300 = !DILocation(line: 51, column: 36, scope: !2256)
!2301 = !DILocation(line: 51, column: 30, scope: !2256)
!2302 = !DILocation(line: 52, column: 13, scope: !2256)
!2303 = !DILocation(line: 52, column: 19, scope: !2256)
!2304 = !DILocation(line: 52, column: 41, scope: !2256)
!2305 = !DILocation(line: 52, column: 48, scope: !2256)
!2306 = !DILocation(line: 52, column: 38, scope: !2256)
!2307 = !DILocation(line: 52, column: 31, scope: !2256)
!2308 = !DILocation(line: 56, column: 23, scope: !2256)
!2309 = !DILocation(line: 56, column: 32, scope: !2256)
!2310 = !DILocation(line: 56, column: 48, scope: !2256)
!2311 = !DILocation(line: 56, column: 12, scope: !2256)
!2312 = !DILocation(line: 58, column: 20, scope: !2256)
!2313 = !DILocation(line: 58, column: 29, scope: !2256)
!2314 = !DILocation(line: 58, column: 27, scope: !2256)
!2315 = !DILocation(line: 58, column: 12, scope: !2256)
!2316 = !DILocation(line: 58, column: 5, scope: !2256)
!2317 = !DILocation(line: 59, column: 1, scope: !2256)
!2318 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !58, retainedNodes: !137)
!2319 = !DILocation(line: 237, column: 44, scope: !2318)
!2320 = !DILocation(line: 237, column: 50, scope: !2318)
!2321 = !DILocation(line: 238, column: 16, scope: !2318)
!2322 = !DILocation(line: 238, column: 5, scope: !2318)
!2323 = distinct !DISubprogram(name: "__floatundidf", scope: !67, file: !67, line: 33, type: !136, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !137)
!2324 = !DILocation(line: 39, column: 37, scope: !2323)
!2325 = !DILocation(line: 40, column: 37, scope: !2323)
!2326 = !DILocation(line: 42, column: 15, scope: !2323)
!2327 = !DILocation(line: 42, column: 17, scope: !2323)
!2328 = !DILocation(line: 42, column: 10, scope: !2323)
!2329 = !DILocation(line: 42, column: 12, scope: !2323)
!2330 = !DILocation(line: 43, column: 14, scope: !2323)
!2331 = !DILocation(line: 43, column: 16, scope: !2323)
!2332 = !DILocation(line: 43, column: 9, scope: !2323)
!2333 = !DILocation(line: 43, column: 11, scope: !2323)
!2334 = !DILocation(line: 45, column: 33, scope: !2323)
!2335 = !DILocation(line: 45, column: 35, scope: !2323)
!2336 = !DILocation(line: 45, column: 63, scope: !2323)
!2337 = !DILocation(line: 45, column: 57, scope: !2323)
!2338 = !DILocation(line: 45, column: 18, scope: !2323)
!2339 = !DILocation(line: 46, column: 12, scope: !2323)
!2340 = !DILocation(line: 46, column: 5, scope: !2323)
!2341 = distinct !DISubprogram(name: "__floatundisf", scope: !69, file: !69, line: 28, type: !136, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !137)
!2342 = !DILocation(line: 30, column: 9, scope: !2341)
!2343 = !DILocation(line: 30, column: 11, scope: !2341)
!2344 = !DILocation(line: 31, column: 9, scope: !2341)
!2345 = !DILocation(line: 32, column: 20, scope: !2341)
!2346 = !DILocation(line: 33, column: 34, scope: !2341)
!2347 = !DILocation(line: 33, column: 18, scope: !2341)
!2348 = !DILocation(line: 33, column: 16, scope: !2341)
!2349 = !DILocation(line: 33, column: 9, scope: !2341)
!2350 = !DILocation(line: 34, column: 13, scope: !2341)
!2351 = !DILocation(line: 34, column: 16, scope: !2341)
!2352 = !DILocation(line: 34, column: 9, scope: !2341)
!2353 = !DILocation(line: 35, column: 9, scope: !2341)
!2354 = !DILocation(line: 35, column: 12, scope: !2341)
!2355 = !DILocation(line: 45, column: 17, scope: !2341)
!2356 = !DILocation(line: 45, column: 9, scope: !2341)
!2357 = !DILocation(line: 48, column: 15, scope: !2341)
!2358 = !DILocation(line: 49, column: 13, scope: !2341)
!2359 = !DILocation(line: 51, column: 13, scope: !2341)
!2360 = !DILocation(line: 53, column: 18, scope: !2341)
!2361 = !DILocation(line: 53, column: 24, scope: !2341)
!2362 = !DILocation(line: 53, column: 27, scope: !2341)
!2363 = !DILocation(line: 53, column: 20, scope: !2341)
!2364 = !DILocation(line: 54, column: 19, scope: !2341)
!2365 = !DILocation(line: 54, column: 64, scope: !2341)
!2366 = !DILocation(line: 54, column: 62, scope: !2341)
!2367 = !DILocation(line: 54, column: 37, scope: !2341)
!2368 = !DILocation(line: 54, column: 21, scope: !2341)
!2369 = !DILocation(line: 54, column: 70, scope: !2341)
!2370 = !DILocation(line: 54, column: 17, scope: !2341)
!2371 = !DILocation(line: 53, column: 48, scope: !2341)
!2372 = !DILocation(line: 53, column: 15, scope: !2341)
!2373 = !DILocation(line: 55, column: 9, scope: !2341)
!2374 = !DILocation(line: 57, column: 15, scope: !2341)
!2375 = !DILocation(line: 57, column: 17, scope: !2341)
!2376 = !DILocation(line: 57, column: 22, scope: !2341)
!2377 = !DILocation(line: 57, column: 14, scope: !2341)
!2378 = !DILocation(line: 57, column: 11, scope: !2341)
!2379 = !DILocation(line: 58, column: 9, scope: !2341)
!2380 = !DILocation(line: 59, column: 11, scope: !2341)
!2381 = !DILocation(line: 61, column: 13, scope: !2341)
!2382 = !DILocation(line: 61, column: 15, scope: !2341)
!2383 = !DILocation(line: 63, column: 15, scope: !2341)
!2384 = !DILocation(line: 64, column: 13, scope: !2341)
!2385 = !DILocation(line: 65, column: 9, scope: !2341)
!2386 = !DILocation(line: 67, column: 5, scope: !2341)
!2387 = !DILocation(line: 70, column: 31, scope: !2341)
!2388 = !DILocation(line: 70, column: 29, scope: !2341)
!2389 = !DILocation(line: 70, column: 11, scope: !2341)
!2390 = !DILocation(line: 74, column: 14, scope: !2341)
!2391 = !DILocation(line: 74, column: 16, scope: !2341)
!2392 = !DILocation(line: 74, column: 23, scope: !2341)
!2393 = !DILocation(line: 75, column: 21, scope: !2341)
!2394 = !DILocation(line: 75, column: 13, scope: !2341)
!2395 = !DILocation(line: 75, column: 23, scope: !2341)
!2396 = !DILocation(line: 74, column: 36, scope: !2341)
!2397 = !DILocation(line: 74, column: 8, scope: !2341)
!2398 = !DILocation(line: 74, column: 10, scope: !2341)
!2399 = !DILocation(line: 76, column: 15, scope: !2341)
!2400 = !DILocation(line: 76, column: 5, scope: !2341)
!2401 = !DILocation(line: 77, column: 1, scope: !2341)
!2402 = distinct !DISubprogram(name: "__floatundixf", scope: !71, file: !71, line: 29, type: !136, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !137)
!2403 = !DILocation(line: 31, column: 9, scope: !2402)
!2404 = !DILocation(line: 31, column: 11, scope: !2402)
!2405 = !DILocation(line: 32, column: 9, scope: !2402)
!2406 = !DILocation(line: 33, column: 20, scope: !2402)
!2407 = !DILocation(line: 34, column: 31, scope: !2402)
!2408 = !DILocation(line: 34, column: 15, scope: !2402)
!2409 = !DILocation(line: 34, column: 9, scope: !2402)
!2410 = !DILocation(line: 35, column: 23, scope: !2402)
!2411 = !DILocation(line: 35, column: 21, scope: !2402)
!2412 = !DILocation(line: 35, column: 9, scope: !2402)
!2413 = !DILocation(line: 37, column: 24, scope: !2402)
!2414 = !DILocation(line: 37, column: 26, scope: !2402)
!2415 = !DILocation(line: 37, column: 8, scope: !2402)
!2416 = !DILocation(line: 37, column: 10, scope: !2402)
!2417 = !DILocation(line: 37, column: 15, scope: !2402)
!2418 = !DILocation(line: 37, column: 17, scope: !2402)
!2419 = !DILocation(line: 37, column: 21, scope: !2402)
!2420 = !DILocation(line: 38, column: 20, scope: !2402)
!2421 = !DILocation(line: 38, column: 25, scope: !2402)
!2422 = !DILocation(line: 38, column: 22, scope: !2402)
!2423 = !DILocation(line: 38, column: 8, scope: !2402)
!2424 = !DILocation(line: 38, column: 10, scope: !2402)
!2425 = !DILocation(line: 38, column: 14, scope: !2402)
!2426 = !DILocation(line: 38, column: 18, scope: !2402)
!2427 = !DILocation(line: 39, column: 15, scope: !2402)
!2428 = !DILocation(line: 39, column: 5, scope: !2402)
!2429 = !DILocation(line: 40, column: 1, scope: !2402)
!2430 = distinct !DISubprogram(name: "__floatunsidf", scope: !73, file: !73, line: 24, type: !136, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !137)
!2431 = !DILocation(line: 26, column: 15, scope: !2430)
!2432 = !DILocation(line: 29, column: 9, scope: !2430)
!2433 = !DILocation(line: 29, column: 11, scope: !2430)
!2434 = !DILocation(line: 29, column: 24, scope: !2430)
!2435 = !DILocation(line: 29, column: 17, scope: !2430)
!2436 = !DILocation(line: 32, column: 55, scope: !2430)
!2437 = !DILocation(line: 32, column: 41, scope: !2430)
!2438 = !DILocation(line: 32, column: 39, scope: !2430)
!2439 = !DILocation(line: 32, column: 15, scope: !2430)
!2440 = !DILocation(line: 36, column: 41, scope: !2430)
!2441 = !DILocation(line: 36, column: 39, scope: !2430)
!2442 = !DILocation(line: 36, column: 15, scope: !2430)
!2443 = !DILocation(line: 37, column: 21, scope: !2430)
!2444 = !DILocation(line: 37, column: 14, scope: !2430)
!2445 = !DILocation(line: 37, column: 26, scope: !2430)
!2446 = !DILocation(line: 37, column: 23, scope: !2430)
!2447 = !DILocation(line: 37, column: 32, scope: !2430)
!2448 = !DILocation(line: 37, column: 12, scope: !2430)
!2449 = !DILocation(line: 40, column: 23, scope: !2430)
!2450 = !DILocation(line: 40, column: 32, scope: !2430)
!2451 = !DILocation(line: 40, column: 15, scope: !2430)
!2452 = !DILocation(line: 40, column: 48, scope: !2430)
!2453 = !DILocation(line: 40, column: 12, scope: !2430)
!2454 = !DILocation(line: 41, column: 20, scope: !2430)
!2455 = !DILocation(line: 41, column: 12, scope: !2430)
!2456 = !DILocation(line: 41, column: 5, scope: !2430)
!2457 = !DILocation(line: 42, column: 1, scope: !2430)
!2458 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !137)
!2459 = !DILocation(line: 237, column: 44, scope: !2458)
!2460 = !DILocation(line: 237, column: 50, scope: !2458)
!2461 = !DILocation(line: 238, column: 16, scope: !2458)
!2462 = !DILocation(line: 238, column: 5, scope: !2458)
!2463 = distinct !DISubprogram(name: "__floatunsisf", scope: !75, file: !75, line: 24, type: !136, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !137)
!2464 = !DILocation(line: 26, column: 15, scope: !2463)
!2465 = !DILocation(line: 29, column: 9, scope: !2463)
!2466 = !DILocation(line: 29, column: 11, scope: !2463)
!2467 = !DILocation(line: 29, column: 24, scope: !2463)
!2468 = !DILocation(line: 29, column: 17, scope: !2463)
!2469 = !DILocation(line: 32, column: 55, scope: !2463)
!2470 = !DILocation(line: 32, column: 41, scope: !2463)
!2471 = !DILocation(line: 32, column: 39, scope: !2463)
!2472 = !DILocation(line: 32, column: 15, scope: !2463)
!2473 = !DILocation(line: 36, column: 9, scope: !2463)
!2474 = !DILocation(line: 36, column: 18, scope: !2463)
!2475 = !DILocation(line: 37, column: 45, scope: !2463)
!2476 = !DILocation(line: 37, column: 43, scope: !2463)
!2477 = !DILocation(line: 37, column: 19, scope: !2463)
!2478 = !DILocation(line: 38, column: 25, scope: !2463)
!2479 = !DILocation(line: 38, column: 30, scope: !2463)
!2480 = !DILocation(line: 38, column: 27, scope: !2463)
!2481 = !DILocation(line: 38, column: 36, scope: !2463)
!2482 = !DILocation(line: 38, column: 16, scope: !2463)
!2483 = !DILocation(line: 39, column: 5, scope: !2463)
!2484 = !DILocation(line: 40, column: 27, scope: !2463)
!2485 = !DILocation(line: 40, column: 36, scope: !2463)
!2486 = !DILocation(line: 40, column: 19, scope: !2463)
!2487 = !DILocation(line: 41, column: 25, scope: !2463)
!2488 = !DILocation(line: 41, column: 30, scope: !2463)
!2489 = !DILocation(line: 41, column: 27, scope: !2463)
!2490 = !DILocation(line: 41, column: 36, scope: !2463)
!2491 = !DILocation(line: 41, column: 16, scope: !2463)
!2492 = !DILocation(line: 42, column: 30, scope: !2463)
!2493 = !DILocation(line: 42, column: 48, scope: !2463)
!2494 = !DILocation(line: 42, column: 46, scope: !2463)
!2495 = !DILocation(line: 42, column: 32, scope: !2463)
!2496 = !DILocation(line: 42, column: 15, scope: !2463)
!2497 = !DILocation(line: 43, column: 13, scope: !2463)
!2498 = !DILocation(line: 43, column: 19, scope: !2463)
!2499 = !DILocation(line: 43, column: 36, scope: !2463)
!2500 = !DILocation(line: 43, column: 30, scope: !2463)
!2501 = !DILocation(line: 44, column: 13, scope: !2463)
!2502 = !DILocation(line: 44, column: 19, scope: !2463)
!2503 = !DILocation(line: 44, column: 41, scope: !2463)
!2504 = !DILocation(line: 44, column: 48, scope: !2463)
!2505 = !DILocation(line: 44, column: 38, scope: !2463)
!2506 = !DILocation(line: 44, column: 31, scope: !2463)
!2507 = !DILocation(line: 48, column: 23, scope: !2463)
!2508 = !DILocation(line: 48, column: 32, scope: !2463)
!2509 = !DILocation(line: 48, column: 48, scope: !2463)
!2510 = !DILocation(line: 48, column: 12, scope: !2463)
!2511 = !DILocation(line: 49, column: 20, scope: !2463)
!2512 = !DILocation(line: 49, column: 12, scope: !2463)
!2513 = !DILocation(line: 49, column: 5, scope: !2463)
!2514 = !DILocation(line: 50, column: 1, scope: !2463)
!2515 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !74, retainedNodes: !137)
!2516 = !DILocation(line: 237, column: 44, scope: !2515)
!2517 = !DILocation(line: 237, column: 50, scope: !2515)
!2518 = !DILocation(line: 238, column: 16, scope: !2515)
!2519 = !DILocation(line: 238, column: 5, scope: !2515)
!2520 = distinct !DISubprogram(name: "__muldf3", scope: !83, file: !83, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2521 = !DILocation(line: 21, column: 23, scope: !2520)
!2522 = !DILocation(line: 21, column: 26, scope: !2520)
!2523 = !DILocation(line: 21, column: 12, scope: !2520)
!2524 = !DILocation(line: 21, column: 5, scope: !2520)
!2525 = distinct !DISubprogram(name: "__mulXf3__", scope: !2526, file: !2526, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2526 = !DIFile(filename: "../fp_mul_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "cb8b87aca5fd73e925ac34f9720dae07")
!2527 = !DILocation(line: 18, column: 42, scope: !2525)
!2528 = !DILocation(line: 18, column: 36, scope: !2525)
!2529 = !DILocation(line: 18, column: 45, scope: !2525)
!2530 = !DILocation(line: 18, column: 64, scope: !2525)
!2531 = !DILocation(line: 18, column: 24, scope: !2525)
!2532 = !DILocation(line: 19, column: 42, scope: !2525)
!2533 = !DILocation(line: 19, column: 36, scope: !2525)
!2534 = !DILocation(line: 19, column: 45, scope: !2525)
!2535 = !DILocation(line: 19, column: 64, scope: !2525)
!2536 = !DILocation(line: 19, column: 24, scope: !2525)
!2537 = !DILocation(line: 20, column: 38, scope: !2525)
!2538 = !DILocation(line: 20, column: 32, scope: !2525)
!2539 = !DILocation(line: 20, column: 49, scope: !2525)
!2540 = !DILocation(line: 20, column: 43, scope: !2525)
!2541 = !DILocation(line: 20, column: 41, scope: !2525)
!2542 = !DILocation(line: 20, column: 53, scope: !2525)
!2543 = !DILocation(line: 20, column: 17, scope: !2525)
!2544 = !DILocation(line: 22, column: 32, scope: !2525)
!2545 = !DILocation(line: 22, column: 26, scope: !2525)
!2546 = !DILocation(line: 22, column: 35, scope: !2525)
!2547 = !DILocation(line: 22, column: 11, scope: !2525)
!2548 = !DILocation(line: 23, column: 32, scope: !2525)
!2549 = !DILocation(line: 23, column: 26, scope: !2525)
!2550 = !DILocation(line: 23, column: 35, scope: !2525)
!2551 = !DILocation(line: 23, column: 11, scope: !2525)
!2552 = !DILocation(line: 24, column: 9, scope: !2525)
!2553 = !DILocation(line: 27, column: 9, scope: !2525)
!2554 = !DILocation(line: 27, column: 18, scope: !2525)
!2555 = !DILocation(line: 27, column: 22, scope: !2525)
!2556 = !DILocation(line: 27, column: 40, scope: !2525)
!2557 = !DILocation(line: 27, column: 43, scope: !2525)
!2558 = !DILocation(line: 27, column: 52, scope: !2525)
!2559 = !DILocation(line: 27, column: 56, scope: !2525)
!2560 = !DILocation(line: 29, column: 34, scope: !2525)
!2561 = !DILocation(line: 29, column: 28, scope: !2525)
!2562 = !DILocation(line: 29, column: 37, scope: !2525)
!2563 = !DILocation(line: 29, column: 21, scope: !2525)
!2564 = !DILocation(line: 30, column: 34, scope: !2525)
!2565 = !DILocation(line: 30, column: 28, scope: !2525)
!2566 = !DILocation(line: 30, column: 37, scope: !2525)
!2567 = !DILocation(line: 30, column: 21, scope: !2525)
!2568 = !DILocation(line: 33, column: 13, scope: !2525)
!2569 = !DILocation(line: 33, column: 18, scope: !2525)
!2570 = !DILocation(line: 33, column: 49, scope: !2525)
!2571 = !DILocation(line: 33, column: 43, scope: !2525)
!2572 = !DILocation(line: 33, column: 52, scope: !2525)
!2573 = !DILocation(line: 33, column: 35, scope: !2525)
!2574 = !DILocation(line: 33, column: 28, scope: !2525)
!2575 = !DILocation(line: 35, column: 13, scope: !2525)
!2576 = !DILocation(line: 35, column: 18, scope: !2525)
!2577 = !DILocation(line: 35, column: 49, scope: !2525)
!2578 = !DILocation(line: 35, column: 43, scope: !2525)
!2579 = !DILocation(line: 35, column: 52, scope: !2525)
!2580 = !DILocation(line: 35, column: 35, scope: !2525)
!2581 = !DILocation(line: 35, column: 28, scope: !2525)
!2582 = !DILocation(line: 37, column: 13, scope: !2525)
!2583 = !DILocation(line: 37, column: 18, scope: !2525)
!2584 = !DILocation(line: 39, column: 17, scope: !2525)
!2585 = !DILocation(line: 39, column: 38, scope: !2525)
!2586 = !DILocation(line: 39, column: 45, scope: !2525)
!2587 = !DILocation(line: 39, column: 43, scope: !2525)
!2588 = !DILocation(line: 39, column: 30, scope: !2525)
!2589 = !DILocation(line: 39, column: 23, scope: !2525)
!2590 = !DILocation(line: 41, column: 25, scope: !2525)
!2591 = !DILocation(line: 41, column: 18, scope: !2525)
!2592 = !DILocation(line: 44, column: 13, scope: !2525)
!2593 = !DILocation(line: 44, column: 18, scope: !2525)
!2594 = !DILocation(line: 46, column: 17, scope: !2525)
!2595 = !DILocation(line: 46, column: 38, scope: !2525)
!2596 = !DILocation(line: 46, column: 45, scope: !2525)
!2597 = !DILocation(line: 46, column: 43, scope: !2525)
!2598 = !DILocation(line: 46, column: 30, scope: !2525)
!2599 = !DILocation(line: 46, column: 23, scope: !2525)
!2600 = !DILocation(line: 48, column: 25, scope: !2525)
!2601 = !DILocation(line: 48, column: 18, scope: !2525)
!2602 = !DILocation(line: 52, column: 14, scope: !2525)
!2603 = !DILocation(line: 52, column: 13, scope: !2525)
!2604 = !DILocation(line: 52, column: 35, scope: !2525)
!2605 = !DILocation(line: 52, column: 27, scope: !2525)
!2606 = !DILocation(line: 52, column: 20, scope: !2525)
!2607 = !DILocation(line: 54, column: 14, scope: !2525)
!2608 = !DILocation(line: 54, column: 13, scope: !2525)
!2609 = !DILocation(line: 54, column: 35, scope: !2525)
!2610 = !DILocation(line: 54, column: 27, scope: !2525)
!2611 = !DILocation(line: 54, column: 20, scope: !2525)
!2612 = !DILocation(line: 59, column: 13, scope: !2525)
!2613 = !DILocation(line: 59, column: 18, scope: !2525)
!2614 = !DILocation(line: 59, column: 42, scope: !2525)
!2615 = !DILocation(line: 59, column: 39, scope: !2525)
!2616 = !DILocation(line: 59, column: 33, scope: !2525)
!2617 = !DILocation(line: 60, column: 13, scope: !2525)
!2618 = !DILocation(line: 60, column: 18, scope: !2525)
!2619 = !DILocation(line: 60, column: 42, scope: !2525)
!2620 = !DILocation(line: 60, column: 39, scope: !2525)
!2621 = !DILocation(line: 60, column: 33, scope: !2525)
!2622 = !DILocation(line: 61, column: 5, scope: !2525)
!2623 = !DILocation(line: 66, column: 18, scope: !2525)
!2624 = !DILocation(line: 67, column: 18, scope: !2525)
!2625 = !DILocation(line: 75, column: 18, scope: !2525)
!2626 = !DILocation(line: 75, column: 32, scope: !2525)
!2627 = !DILocation(line: 75, column: 45, scope: !2525)
!2628 = !DILocation(line: 75, column: 5, scope: !2525)
!2629 = !DILocation(line: 78, column: 27, scope: !2525)
!2630 = !DILocation(line: 78, column: 39, scope: !2525)
!2631 = !DILocation(line: 78, column: 37, scope: !2525)
!2632 = !DILocation(line: 78, column: 49, scope: !2525)
!2633 = !DILocation(line: 78, column: 66, scope: !2525)
!2634 = !DILocation(line: 78, column: 64, scope: !2525)
!2635 = !DILocation(line: 78, column: 9, scope: !2525)
!2636 = !DILocation(line: 81, column: 9, scope: !2525)
!2637 = !DILocation(line: 81, column: 19, scope: !2525)
!2638 = !DILocation(line: 81, column: 49, scope: !2525)
!2639 = !DILocation(line: 81, column: 34, scope: !2525)
!2640 = !DILocation(line: 82, column: 10, scope: !2525)
!2641 = !DILocation(line: 85, column: 9, scope: !2525)
!2642 = !DILocation(line: 85, column: 25, scope: !2525)
!2643 = !DILocation(line: 85, column: 65, scope: !2525)
!2644 = !DILocation(line: 85, column: 63, scope: !2525)
!2645 = !DILocation(line: 85, column: 48, scope: !2525)
!2646 = !DILocation(line: 85, column: 41, scope: !2525)
!2647 = !DILocation(line: 87, column: 9, scope: !2525)
!2648 = !DILocation(line: 87, column: 25, scope: !2525)
!2649 = !DILocation(line: 94, column: 61, scope: !2525)
!2650 = !DILocation(line: 94, column: 47, scope: !2525)
!2651 = !DILocation(line: 94, column: 45, scope: !2525)
!2652 = !DILocation(line: 94, column: 36, scope: !2525)
!2653 = !DILocation(line: 94, column: 28, scope: !2525)
!2654 = !DILocation(line: 95, column: 13, scope: !2525)
!2655 = !DILocation(line: 95, column: 19, scope: !2525)
!2656 = !DILocation(line: 95, column: 48, scope: !2525)
!2657 = !DILocation(line: 95, column: 40, scope: !2525)
!2658 = !DILocation(line: 95, column: 33, scope: !2525)
!2659 = !DILocation(line: 99, column: 58, scope: !2525)
!2660 = !DILocation(line: 99, column: 9, scope: !2525)
!2661 = !DILocation(line: 100, column: 5, scope: !2525)
!2662 = !DILocation(line: 103, column: 19, scope: !2525)
!2663 = !DILocation(line: 104, column: 29, scope: !2525)
!2664 = !DILocation(line: 104, column: 22, scope: !2525)
!2665 = !DILocation(line: 104, column: 45, scope: !2525)
!2666 = !DILocation(line: 104, column: 19, scope: !2525)
!2667 = !DILocation(line: 108, column: 18, scope: !2525)
!2668 = !DILocation(line: 108, column: 15, scope: !2525)
!2669 = !DILocation(line: 113, column: 9, scope: !2525)
!2670 = !DILocation(line: 113, column: 19, scope: !2525)
!2671 = !DILocation(line: 113, column: 39, scope: !2525)
!2672 = !DILocation(line: 113, column: 30, scope: !2525)
!2673 = !DILocation(line: 114, column: 9, scope: !2525)
!2674 = !DILocation(line: 114, column: 19, scope: !2525)
!2675 = !DILocation(line: 114, column: 44, scope: !2525)
!2676 = !DILocation(line: 114, column: 54, scope: !2525)
!2677 = !DILocation(line: 114, column: 41, scope: !2525)
!2678 = !DILocation(line: 114, column: 31, scope: !2525)
!2679 = !DILocation(line: 115, column: 20, scope: !2525)
!2680 = !DILocation(line: 115, column: 12, scope: !2525)
!2681 = !DILocation(line: 115, column: 5, scope: !2525)
!2682 = !DILocation(line: 116, column: 1, scope: !2525)
!2683 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2684 = !DILocation(line: 232, column: 44, scope: !2683)
!2685 = !DILocation(line: 232, column: 50, scope: !2683)
!2686 = !DILocation(line: 233, column: 16, scope: !2683)
!2687 = !DILocation(line: 233, column: 5, scope: !2683)
!2688 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2689 = !DILocation(line: 237, column: 44, scope: !2688)
!2690 = !DILocation(line: 237, column: 50, scope: !2688)
!2691 = !DILocation(line: 238, column: 16, scope: !2688)
!2692 = !DILocation(line: 238, column: 5, scope: !2688)
!2693 = distinct !DISubprogram(name: "normalize", scope: !370, file: !370, line: 241, type: !136, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2694 = !DILocation(line: 242, column: 32, scope: !2693)
!2695 = !DILocation(line: 242, column: 31, scope: !2693)
!2696 = !DILocation(line: 242, column: 23, scope: !2693)
!2697 = !DILocation(line: 242, column: 47, scope: !2693)
!2698 = !DILocation(line: 242, column: 45, scope: !2693)
!2699 = !DILocation(line: 242, column: 15, scope: !2693)
!2700 = !DILocation(line: 243, column: 22, scope: !2693)
!2701 = !DILocation(line: 243, column: 6, scope: !2693)
!2702 = !DILocation(line: 243, column: 18, scope: !2693)
!2703 = !DILocation(line: 244, column: 16, scope: !2693)
!2704 = !DILocation(line: 244, column: 14, scope: !2693)
!2705 = !DILocation(line: 244, column: 5, scope: !2693)
!2706 = distinct !DISubprogram(name: "wideMultiply", scope: !370, file: !370, line: 86, type: !136, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2707 = !DILocation(line: 88, column: 28, scope: !2706)
!2708 = !DILocation(line: 88, column: 40, scope: !2706)
!2709 = !DILocation(line: 88, column: 38, scope: !2706)
!2710 = !DILocation(line: 88, column: 20, scope: !2706)
!2711 = !DILocation(line: 89, column: 28, scope: !2706)
!2712 = !DILocation(line: 89, column: 40, scope: !2706)
!2713 = !DILocation(line: 89, column: 38, scope: !2706)
!2714 = !DILocation(line: 89, column: 20, scope: !2706)
!2715 = !DILocation(line: 90, column: 28, scope: !2706)
!2716 = !DILocation(line: 90, column: 40, scope: !2706)
!2717 = !DILocation(line: 90, column: 38, scope: !2706)
!2718 = !DILocation(line: 90, column: 20, scope: !2706)
!2719 = !DILocation(line: 91, column: 28, scope: !2706)
!2720 = !DILocation(line: 91, column: 40, scope: !2706)
!2721 = !DILocation(line: 91, column: 38, scope: !2706)
!2722 = !DILocation(line: 91, column: 20, scope: !2706)
!2723 = !DILocation(line: 93, column: 25, scope: !2706)
!2724 = !DILocation(line: 93, column: 20, scope: !2706)
!2725 = !DILocation(line: 94, column: 25, scope: !2706)
!2726 = !DILocation(line: 94, column: 41, scope: !2706)
!2727 = !DILocation(line: 94, column: 39, scope: !2706)
!2728 = !DILocation(line: 94, column: 57, scope: !2706)
!2729 = !DILocation(line: 94, column: 55, scope: !2706)
!2730 = !DILocation(line: 94, column: 20, scope: !2706)
!2731 = !DILocation(line: 95, column: 11, scope: !2706)
!2732 = !DILocation(line: 95, column: 17, scope: !2706)
!2733 = !DILocation(line: 95, column: 20, scope: !2706)
!2734 = !DILocation(line: 95, column: 14, scope: !2706)
!2735 = !DILocation(line: 95, column: 6, scope: !2706)
!2736 = !DILocation(line: 95, column: 9, scope: !2706)
!2737 = !DILocation(line: 97, column: 11, scope: !2706)
!2738 = !DILocation(line: 97, column: 27, scope: !2706)
!2739 = !DILocation(line: 97, column: 25, scope: !2706)
!2740 = !DILocation(line: 97, column: 43, scope: !2706)
!2741 = !DILocation(line: 97, column: 41, scope: !2706)
!2742 = !DILocation(line: 97, column: 56, scope: !2706)
!2743 = !DILocation(line: 97, column: 54, scope: !2706)
!2744 = !DILocation(line: 97, column: 6, scope: !2706)
!2745 = !DILocation(line: 97, column: 9, scope: !2706)
!2746 = !DILocation(line: 98, column: 1, scope: !2706)
!2747 = distinct !DISubprogram(name: "wideLeftShift", scope: !370, file: !370, line: 247, type: !136, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2748 = !DILocation(line: 248, column: 12, scope: !2747)
!2749 = !DILocation(line: 248, column: 11, scope: !2747)
!2750 = !DILocation(line: 248, column: 18, scope: !2747)
!2751 = !DILocation(line: 248, column: 15, scope: !2747)
!2752 = !DILocation(line: 248, column: 27, scope: !2747)
!2753 = !DILocation(line: 248, column: 26, scope: !2747)
!2754 = !DILocation(line: 248, column: 46, scope: !2747)
!2755 = !DILocation(line: 248, column: 44, scope: !2747)
!2756 = !DILocation(line: 248, column: 30, scope: !2747)
!2757 = !DILocation(line: 248, column: 24, scope: !2747)
!2758 = !DILocation(line: 248, column: 6, scope: !2747)
!2759 = !DILocation(line: 248, column: 9, scope: !2747)
!2760 = !DILocation(line: 249, column: 12, scope: !2747)
!2761 = !DILocation(line: 249, column: 11, scope: !2747)
!2762 = !DILocation(line: 249, column: 18, scope: !2747)
!2763 = !DILocation(line: 249, column: 15, scope: !2747)
!2764 = !DILocation(line: 249, column: 6, scope: !2747)
!2765 = !DILocation(line: 249, column: 9, scope: !2747)
!2766 = !DILocation(line: 250, column: 1, scope: !2747)
!2767 = distinct !DISubprogram(name: "wideRightShiftWithSticky", scope: !370, file: !370, line: 252, type: !136, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2768 = !DILocation(line: 253, column: 9, scope: !2767)
!2769 = !DILocation(line: 253, column: 15, scope: !2767)
!2770 = !DILocation(line: 254, column: 30, scope: !2767)
!2771 = !DILocation(line: 254, column: 29, scope: !2767)
!2772 = !DILocation(line: 254, column: 49, scope: !2767)
!2773 = !DILocation(line: 254, column: 47, scope: !2767)
!2774 = !DILocation(line: 254, column: 33, scope: !2767)
!2775 = !DILocation(line: 254, column: 20, scope: !2767)
!2776 = !DILocation(line: 255, column: 16, scope: !2767)
!2777 = !DILocation(line: 255, column: 15, scope: !2767)
!2778 = !DILocation(line: 255, column: 35, scope: !2767)
!2779 = !DILocation(line: 255, column: 33, scope: !2767)
!2780 = !DILocation(line: 255, column: 19, scope: !2767)
!2781 = !DILocation(line: 255, column: 45, scope: !2767)
!2782 = !DILocation(line: 255, column: 44, scope: !2767)
!2783 = !DILocation(line: 255, column: 51, scope: !2767)
!2784 = !DILocation(line: 255, column: 48, scope: !2767)
!2785 = !DILocation(line: 255, column: 42, scope: !2767)
!2786 = !DILocation(line: 255, column: 59, scope: !2767)
!2787 = !DILocation(line: 255, column: 57, scope: !2767)
!2788 = !DILocation(line: 255, column: 10, scope: !2767)
!2789 = !DILocation(line: 255, column: 13, scope: !2767)
!2790 = !DILocation(line: 256, column: 16, scope: !2767)
!2791 = !DILocation(line: 256, column: 15, scope: !2767)
!2792 = !DILocation(line: 256, column: 22, scope: !2767)
!2793 = !DILocation(line: 256, column: 19, scope: !2767)
!2794 = !DILocation(line: 256, column: 10, scope: !2767)
!2795 = !DILocation(line: 256, column: 13, scope: !2767)
!2796 = !DILocation(line: 257, column: 5, scope: !2767)
!2797 = !DILocation(line: 258, column: 14, scope: !2767)
!2798 = !DILocation(line: 258, column: 20, scope: !2767)
!2799 = !DILocation(line: 259, column: 30, scope: !2767)
!2800 = !DILocation(line: 259, column: 29, scope: !2767)
!2801 = !DILocation(line: 259, column: 51, scope: !2767)
!2802 = !DILocation(line: 259, column: 49, scope: !2767)
!2803 = !DILocation(line: 259, column: 33, scope: !2767)
!2804 = !DILocation(line: 259, column: 61, scope: !2767)
!2805 = !DILocation(line: 259, column: 60, scope: !2767)
!2806 = !DILocation(line: 259, column: 58, scope: !2767)
!2807 = !DILocation(line: 259, column: 20, scope: !2767)
!2808 = !DILocation(line: 260, column: 16, scope: !2767)
!2809 = !DILocation(line: 260, column: 15, scope: !2767)
!2810 = !DILocation(line: 260, column: 23, scope: !2767)
!2811 = !DILocation(line: 260, column: 29, scope: !2767)
!2812 = !DILocation(line: 260, column: 19, scope: !2767)
!2813 = !DILocation(line: 260, column: 44, scope: !2767)
!2814 = !DILocation(line: 260, column: 42, scope: !2767)
!2815 = !DILocation(line: 260, column: 10, scope: !2767)
!2816 = !DILocation(line: 260, column: 13, scope: !2767)
!2817 = !DILocation(line: 261, column: 10, scope: !2767)
!2818 = !DILocation(line: 261, column: 13, scope: !2767)
!2819 = !DILocation(line: 262, column: 5, scope: !2767)
!2820 = !DILocation(line: 263, column: 30, scope: !2767)
!2821 = !DILocation(line: 263, column: 29, scope: !2767)
!2822 = !DILocation(line: 263, column: 36, scope: !2767)
!2823 = !DILocation(line: 263, column: 35, scope: !2767)
!2824 = !DILocation(line: 263, column: 33, scope: !2767)
!2825 = !DILocation(line: 263, column: 20, scope: !2767)
!2826 = !DILocation(line: 264, column: 15, scope: !2767)
!2827 = !DILocation(line: 264, column: 10, scope: !2767)
!2828 = !DILocation(line: 264, column: 13, scope: !2767)
!2829 = !DILocation(line: 265, column: 10, scope: !2767)
!2830 = !DILocation(line: 265, column: 13, scope: !2767)
!2831 = !DILocation(line: 267, column: 1, scope: !2767)
!2832 = distinct !DISubprogram(name: "rep_clz", scope: !370, file: !370, line: 69, type: !136, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !137)
!2833 = !DILocation(line: 73, column: 9, scope: !2832)
!2834 = !DILocation(line: 73, column: 11, scope: !2832)
!2835 = !DILocation(line: 74, column: 30, scope: !2832)
!2836 = !DILocation(line: 74, column: 32, scope: !2832)
!2837 = !DILocation(line: 74, column: 16, scope: !2832)
!2838 = !DILocation(line: 74, column: 9, scope: !2832)
!2839 = !DILocation(line: 76, column: 35, scope: !2832)
!2840 = !DILocation(line: 76, column: 37, scope: !2832)
!2841 = !DILocation(line: 76, column: 21, scope: !2832)
!2842 = !DILocation(line: 76, column: 19, scope: !2832)
!2843 = !DILocation(line: 76, column: 9, scope: !2832)
!2844 = !DILocation(line: 78, column: 1, scope: !2832)
!2845 = distinct !DISubprogram(name: "__muldi3", scope: !85, file: !85, line: 46, type: !136, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !137)
!2846 = !DILocation(line: 49, column: 13, scope: !2845)
!2847 = !DILocation(line: 49, column: 7, scope: !2845)
!2848 = !DILocation(line: 49, column: 11, scope: !2845)
!2849 = !DILocation(line: 51, column: 13, scope: !2845)
!2850 = !DILocation(line: 51, column: 7, scope: !2845)
!2851 = !DILocation(line: 51, column: 11, scope: !2845)
!2852 = !DILocation(line: 53, column: 25, scope: !2845)
!2853 = !DILocation(line: 53, column: 27, scope: !2845)
!2854 = !DILocation(line: 53, column: 34, scope: !2845)
!2855 = !DILocation(line: 53, column: 36, scope: !2845)
!2856 = !DILocation(line: 53, column: 13, scope: !2845)
!2857 = !DILocation(line: 53, column: 7, scope: !2845)
!2858 = !DILocation(line: 53, column: 11, scope: !2845)
!2859 = !DILocation(line: 54, column: 19, scope: !2845)
!2860 = !DILocation(line: 54, column: 21, scope: !2845)
!2861 = !DILocation(line: 54, column: 30, scope: !2845)
!2862 = !DILocation(line: 54, column: 32, scope: !2845)
!2863 = !DILocation(line: 54, column: 26, scope: !2845)
!2864 = !DILocation(line: 54, column: 40, scope: !2845)
!2865 = !DILocation(line: 54, column: 42, scope: !2845)
!2866 = !DILocation(line: 54, column: 50, scope: !2845)
!2867 = !DILocation(line: 54, column: 52, scope: !2845)
!2868 = !DILocation(line: 54, column: 46, scope: !2845)
!2869 = !DILocation(line: 54, column: 36, scope: !2845)
!2870 = !DILocation(line: 54, column: 7, scope: !2845)
!2871 = !DILocation(line: 54, column: 9, scope: !2845)
!2872 = !DILocation(line: 54, column: 14, scope: !2845)
!2873 = !DILocation(line: 55, column: 14, scope: !2845)
!2874 = !DILocation(line: 55, column: 5, scope: !2845)
!2875 = distinct !DISubprogram(name: "__muldsi3", scope: !85, file: !85, line: 21, type: !136, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !137)
!2876 = !DILocation(line: 24, column: 15, scope: !2875)
!2877 = !DILocation(line: 25, column: 18, scope: !2875)
!2878 = !DILocation(line: 26, column: 16, scope: !2875)
!2879 = !DILocation(line: 26, column: 18, scope: !2875)
!2880 = !DILocation(line: 26, column: 35, scope: !2875)
!2881 = !DILocation(line: 26, column: 37, scope: !2875)
!2882 = !DILocation(line: 26, column: 32, scope: !2875)
!2883 = !DILocation(line: 26, column: 7, scope: !2875)
!2884 = !DILocation(line: 26, column: 9, scope: !2875)
!2885 = !DILocation(line: 26, column: 13, scope: !2875)
!2886 = !DILocation(line: 27, column: 18, scope: !2875)
!2887 = !DILocation(line: 27, column: 20, scope: !2875)
!2888 = !DILocation(line: 27, column: 24, scope: !2875)
!2889 = !DILocation(line: 27, column: 12, scope: !2875)
!2890 = !DILocation(line: 28, column: 7, scope: !2875)
!2891 = !DILocation(line: 28, column: 9, scope: !2875)
!2892 = !DILocation(line: 28, column: 13, scope: !2875)
!2893 = !DILocation(line: 29, column: 11, scope: !2875)
!2894 = !DILocation(line: 29, column: 13, scope: !2875)
!2895 = !DILocation(line: 29, column: 35, scope: !2875)
!2896 = !DILocation(line: 29, column: 37, scope: !2875)
!2897 = !DILocation(line: 29, column: 32, scope: !2875)
!2898 = !DILocation(line: 29, column: 7, scope: !2875)
!2899 = !DILocation(line: 30, column: 17, scope: !2875)
!2900 = !DILocation(line: 30, column: 19, scope: !2875)
!2901 = !DILocation(line: 30, column: 33, scope: !2875)
!2902 = !DILocation(line: 30, column: 7, scope: !2875)
!2903 = !DILocation(line: 30, column: 9, scope: !2875)
!2904 = !DILocation(line: 30, column: 13, scope: !2875)
!2905 = !DILocation(line: 31, column: 16, scope: !2875)
!2906 = !DILocation(line: 31, column: 18, scope: !2875)
!2907 = !DILocation(line: 31, column: 7, scope: !2875)
!2908 = !DILocation(line: 31, column: 9, scope: !2875)
!2909 = !DILocation(line: 31, column: 14, scope: !2875)
!2910 = !DILocation(line: 32, column: 11, scope: !2875)
!2911 = !DILocation(line: 32, column: 13, scope: !2875)
!2912 = !DILocation(line: 32, column: 17, scope: !2875)
!2913 = !DILocation(line: 32, column: 7, scope: !2875)
!2914 = !DILocation(line: 33, column: 7, scope: !2875)
!2915 = !DILocation(line: 33, column: 9, scope: !2875)
!2916 = !DILocation(line: 33, column: 13, scope: !2875)
!2917 = !DILocation(line: 34, column: 11, scope: !2875)
!2918 = !DILocation(line: 34, column: 13, scope: !2875)
!2919 = !DILocation(line: 34, column: 35, scope: !2875)
!2920 = !DILocation(line: 34, column: 37, scope: !2875)
!2921 = !DILocation(line: 34, column: 32, scope: !2875)
!2922 = !DILocation(line: 34, column: 7, scope: !2875)
!2923 = !DILocation(line: 35, column: 17, scope: !2875)
!2924 = !DILocation(line: 35, column: 19, scope: !2875)
!2925 = !DILocation(line: 35, column: 33, scope: !2875)
!2926 = !DILocation(line: 35, column: 7, scope: !2875)
!2927 = !DILocation(line: 35, column: 9, scope: !2875)
!2928 = !DILocation(line: 35, column: 13, scope: !2875)
!2929 = !DILocation(line: 36, column: 17, scope: !2875)
!2930 = !DILocation(line: 36, column: 19, scope: !2875)
!2931 = !DILocation(line: 36, column: 7, scope: !2875)
!2932 = !DILocation(line: 36, column: 9, scope: !2875)
!2933 = !DILocation(line: 36, column: 14, scope: !2875)
!2934 = !DILocation(line: 37, column: 18, scope: !2875)
!2935 = !DILocation(line: 37, column: 20, scope: !2875)
!2936 = !DILocation(line: 37, column: 42, scope: !2875)
!2937 = !DILocation(line: 37, column: 44, scope: !2875)
!2938 = !DILocation(line: 37, column: 39, scope: !2875)
!2939 = !DILocation(line: 37, column: 7, scope: !2875)
!2940 = !DILocation(line: 37, column: 9, scope: !2875)
!2941 = !DILocation(line: 37, column: 14, scope: !2875)
!2942 = !DILocation(line: 38, column: 14, scope: !2875)
!2943 = !DILocation(line: 38, column: 5, scope: !2875)
!2944 = distinct !DISubprogram(name: "__mulodi4", scope: !87, file: !87, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !137)
!2945 = !DILocation(line: 24, column: 15, scope: !2944)
!2946 = !DILocation(line: 25, column: 18, scope: !2944)
!2947 = !DILocation(line: 26, column: 18, scope: !2944)
!2948 = !DILocation(line: 27, column: 6, scope: !2944)
!2949 = !DILocation(line: 27, column: 15, scope: !2944)
!2950 = !DILocation(line: 28, column: 21, scope: !2944)
!2951 = !DILocation(line: 28, column: 25, scope: !2944)
!2952 = !DILocation(line: 28, column: 23, scope: !2944)
!2953 = !DILocation(line: 28, column: 12, scope: !2944)
!2954 = !DILocation(line: 29, column: 9, scope: !2944)
!2955 = !DILocation(line: 29, column: 11, scope: !2944)
!2956 = !DILocation(line: 31, column: 13, scope: !2944)
!2957 = !DILocation(line: 31, column: 15, scope: !2944)
!2958 = !DILocation(line: 31, column: 20, scope: !2944)
!2959 = !DILocation(line: 31, column: 23, scope: !2944)
!2960 = !DILocation(line: 31, column: 25, scope: !2944)
!2961 = !DILocation(line: 32, column: 7, scope: !2944)
!2962 = !DILocation(line: 32, column: 16, scope: !2944)
!2963 = !DILocation(line: 32, column: 6, scope: !2944)
!2964 = !DILocation(line: 33, column: 9, scope: !2944)
!2965 = !DILocation(line: 33, column: 2, scope: !2944)
!2966 = !DILocation(line: 35, column: 9, scope: !2944)
!2967 = !DILocation(line: 35, column: 11, scope: !2944)
!2968 = !DILocation(line: 37, column: 13, scope: !2944)
!2969 = !DILocation(line: 37, column: 15, scope: !2944)
!2970 = !DILocation(line: 37, column: 20, scope: !2944)
!2971 = !DILocation(line: 37, column: 23, scope: !2944)
!2972 = !DILocation(line: 37, column: 25, scope: !2944)
!2973 = !DILocation(line: 38, column: 7, scope: !2944)
!2974 = !DILocation(line: 38, column: 16, scope: !2944)
!2975 = !DILocation(line: 38, column: 6, scope: !2944)
!2976 = !DILocation(line: 39, column: 16, scope: !2944)
!2977 = !DILocation(line: 39, column: 9, scope: !2944)
!2978 = !DILocation(line: 41, column: 17, scope: !2944)
!2979 = !DILocation(line: 41, column: 19, scope: !2944)
!2980 = !DILocation(line: 41, column: 12, scope: !2944)
!2981 = !DILocation(line: 42, column: 21, scope: !2944)
!2982 = !DILocation(line: 42, column: 25, scope: !2944)
!2983 = !DILocation(line: 42, column: 23, scope: !2944)
!2984 = !DILocation(line: 42, column: 31, scope: !2944)
!2985 = !DILocation(line: 42, column: 29, scope: !2944)
!2986 = !DILocation(line: 42, column: 12, scope: !2944)
!2987 = !DILocation(line: 43, column: 17, scope: !2944)
!2988 = !DILocation(line: 43, column: 19, scope: !2944)
!2989 = !DILocation(line: 43, column: 12, scope: !2944)
!2990 = !DILocation(line: 44, column: 21, scope: !2944)
!2991 = !DILocation(line: 44, column: 25, scope: !2944)
!2992 = !DILocation(line: 44, column: 23, scope: !2944)
!2993 = !DILocation(line: 44, column: 31, scope: !2944)
!2994 = !DILocation(line: 44, column: 29, scope: !2944)
!2995 = !DILocation(line: 44, column: 12, scope: !2944)
!2996 = !DILocation(line: 45, column: 9, scope: !2944)
!2997 = !DILocation(line: 45, column: 15, scope: !2944)
!2998 = !DILocation(line: 45, column: 19, scope: !2944)
!2999 = !DILocation(line: 45, column: 22, scope: !2944)
!3000 = !DILocation(line: 45, column: 28, scope: !2944)
!3001 = !DILocation(line: 46, column: 16, scope: !2944)
!3002 = !DILocation(line: 46, column: 9, scope: !2944)
!3003 = !DILocation(line: 47, column: 9, scope: !2944)
!3004 = !DILocation(line: 47, column: 15, scope: !2944)
!3005 = !DILocation(line: 47, column: 12, scope: !2944)
!3006 = !DILocation(line: 49, column: 13, scope: !2944)
!3007 = !DILocation(line: 49, column: 27, scope: !2944)
!3008 = !DILocation(line: 49, column: 25, scope: !2944)
!3009 = !DILocation(line: 49, column: 19, scope: !2944)
!3010 = !DILocation(line: 50, column: 14, scope: !2944)
!3011 = !DILocation(line: 50, column: 23, scope: !2944)
!3012 = !DILocation(line: 50, column: 13, scope: !2944)
!3013 = !DILocation(line: 51, column: 5, scope: !2944)
!3014 = !DILocation(line: 54, column: 13, scope: !2944)
!3015 = !DILocation(line: 54, column: 28, scope: !2944)
!3016 = !DILocation(line: 54, column: 27, scope: !2944)
!3017 = !DILocation(line: 54, column: 25, scope: !2944)
!3018 = !DILocation(line: 54, column: 19, scope: !2944)
!3019 = !DILocation(line: 55, column: 14, scope: !2944)
!3020 = !DILocation(line: 55, column: 23, scope: !2944)
!3021 = !DILocation(line: 55, column: 13, scope: !2944)
!3022 = !DILocation(line: 57, column: 12, scope: !2944)
!3023 = !DILocation(line: 57, column: 5, scope: !2944)
!3024 = !DILocation(line: 58, column: 1, scope: !2944)
!3025 = distinct !DISubprogram(name: "__mulosi4", scope: !89, file: !89, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !137)
!3026 = !DILocation(line: 24, column: 15, scope: !3025)
!3027 = !DILocation(line: 25, column: 18, scope: !3025)
!3028 = !DILocation(line: 26, column: 18, scope: !3025)
!3029 = !DILocation(line: 27, column: 6, scope: !3025)
!3030 = !DILocation(line: 27, column: 15, scope: !3025)
!3031 = !DILocation(line: 28, column: 21, scope: !3025)
!3032 = !DILocation(line: 28, column: 25, scope: !3025)
!3033 = !DILocation(line: 28, column: 23, scope: !3025)
!3034 = !DILocation(line: 28, column: 12, scope: !3025)
!3035 = !DILocation(line: 29, column: 9, scope: !3025)
!3036 = !DILocation(line: 29, column: 11, scope: !3025)
!3037 = !DILocation(line: 31, column: 13, scope: !3025)
!3038 = !DILocation(line: 31, column: 15, scope: !3025)
!3039 = !DILocation(line: 31, column: 20, scope: !3025)
!3040 = !DILocation(line: 31, column: 23, scope: !3025)
!3041 = !DILocation(line: 31, column: 25, scope: !3025)
!3042 = !DILocation(line: 32, column: 7, scope: !3025)
!3043 = !DILocation(line: 32, column: 16, scope: !3025)
!3044 = !DILocation(line: 32, column: 6, scope: !3025)
!3045 = !DILocation(line: 33, column: 9, scope: !3025)
!3046 = !DILocation(line: 33, column: 2, scope: !3025)
!3047 = !DILocation(line: 35, column: 9, scope: !3025)
!3048 = !DILocation(line: 35, column: 11, scope: !3025)
!3049 = !DILocation(line: 37, column: 13, scope: !3025)
!3050 = !DILocation(line: 37, column: 15, scope: !3025)
!3051 = !DILocation(line: 37, column: 20, scope: !3025)
!3052 = !DILocation(line: 37, column: 23, scope: !3025)
!3053 = !DILocation(line: 37, column: 25, scope: !3025)
!3054 = !DILocation(line: 38, column: 7, scope: !3025)
!3055 = !DILocation(line: 38, column: 16, scope: !3025)
!3056 = !DILocation(line: 38, column: 6, scope: !3025)
!3057 = !DILocation(line: 39, column: 16, scope: !3025)
!3058 = !DILocation(line: 39, column: 9, scope: !3025)
!3059 = !DILocation(line: 41, column: 17, scope: !3025)
!3060 = !DILocation(line: 41, column: 19, scope: !3025)
!3061 = !DILocation(line: 41, column: 12, scope: !3025)
!3062 = !DILocation(line: 42, column: 21, scope: !3025)
!3063 = !DILocation(line: 42, column: 25, scope: !3025)
!3064 = !DILocation(line: 42, column: 23, scope: !3025)
!3065 = !DILocation(line: 42, column: 31, scope: !3025)
!3066 = !DILocation(line: 42, column: 29, scope: !3025)
!3067 = !DILocation(line: 42, column: 12, scope: !3025)
!3068 = !DILocation(line: 43, column: 17, scope: !3025)
!3069 = !DILocation(line: 43, column: 19, scope: !3025)
!3070 = !DILocation(line: 43, column: 12, scope: !3025)
!3071 = !DILocation(line: 44, column: 21, scope: !3025)
!3072 = !DILocation(line: 44, column: 25, scope: !3025)
!3073 = !DILocation(line: 44, column: 23, scope: !3025)
!3074 = !DILocation(line: 44, column: 31, scope: !3025)
!3075 = !DILocation(line: 44, column: 29, scope: !3025)
!3076 = !DILocation(line: 44, column: 12, scope: !3025)
!3077 = !DILocation(line: 45, column: 9, scope: !3025)
!3078 = !DILocation(line: 45, column: 15, scope: !3025)
!3079 = !DILocation(line: 45, column: 19, scope: !3025)
!3080 = !DILocation(line: 45, column: 22, scope: !3025)
!3081 = !DILocation(line: 45, column: 28, scope: !3025)
!3082 = !DILocation(line: 46, column: 16, scope: !3025)
!3083 = !DILocation(line: 46, column: 9, scope: !3025)
!3084 = !DILocation(line: 47, column: 9, scope: !3025)
!3085 = !DILocation(line: 47, column: 15, scope: !3025)
!3086 = !DILocation(line: 47, column: 12, scope: !3025)
!3087 = !DILocation(line: 49, column: 13, scope: !3025)
!3088 = !DILocation(line: 49, column: 27, scope: !3025)
!3089 = !DILocation(line: 49, column: 25, scope: !3025)
!3090 = !DILocation(line: 49, column: 19, scope: !3025)
!3091 = !DILocation(line: 50, column: 14, scope: !3025)
!3092 = !DILocation(line: 50, column: 23, scope: !3025)
!3093 = !DILocation(line: 50, column: 13, scope: !3025)
!3094 = !DILocation(line: 51, column: 5, scope: !3025)
!3095 = !DILocation(line: 54, column: 13, scope: !3025)
!3096 = !DILocation(line: 54, column: 28, scope: !3025)
!3097 = !DILocation(line: 54, column: 27, scope: !3025)
!3098 = !DILocation(line: 54, column: 25, scope: !3025)
!3099 = !DILocation(line: 54, column: 19, scope: !3025)
!3100 = !DILocation(line: 55, column: 14, scope: !3025)
!3101 = !DILocation(line: 55, column: 23, scope: !3025)
!3102 = !DILocation(line: 55, column: 13, scope: !3025)
!3103 = !DILocation(line: 57, column: 12, scope: !3025)
!3104 = !DILocation(line: 57, column: 5, scope: !3025)
!3105 = !DILocation(line: 58, column: 1, scope: !3025)
!3106 = distinct !DISubprogram(name: "__mulsf3", scope: !93, file: !93, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3107 = !DILocation(line: 21, column: 23, scope: !3106)
!3108 = !DILocation(line: 21, column: 26, scope: !3106)
!3109 = !DILocation(line: 21, column: 12, scope: !3106)
!3110 = !DILocation(line: 21, column: 5, scope: !3106)
!3111 = distinct !DISubprogram(name: "__mulXf3__", scope: !2526, file: !2526, line: 17, type: !136, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3112 = !DILocation(line: 18, column: 42, scope: !3111)
!3113 = !DILocation(line: 18, column: 36, scope: !3111)
!3114 = !DILocation(line: 18, column: 45, scope: !3111)
!3115 = !DILocation(line: 18, column: 64, scope: !3111)
!3116 = !DILocation(line: 18, column: 24, scope: !3111)
!3117 = !DILocation(line: 19, column: 42, scope: !3111)
!3118 = !DILocation(line: 19, column: 36, scope: !3111)
!3119 = !DILocation(line: 19, column: 45, scope: !3111)
!3120 = !DILocation(line: 19, column: 64, scope: !3111)
!3121 = !DILocation(line: 19, column: 24, scope: !3111)
!3122 = !DILocation(line: 20, column: 38, scope: !3111)
!3123 = !DILocation(line: 20, column: 32, scope: !3111)
!3124 = !DILocation(line: 20, column: 49, scope: !3111)
!3125 = !DILocation(line: 20, column: 43, scope: !3111)
!3126 = !DILocation(line: 20, column: 41, scope: !3111)
!3127 = !DILocation(line: 20, column: 53, scope: !3111)
!3128 = !DILocation(line: 20, column: 17, scope: !3111)
!3129 = !DILocation(line: 22, column: 32, scope: !3111)
!3130 = !DILocation(line: 22, column: 26, scope: !3111)
!3131 = !DILocation(line: 22, column: 35, scope: !3111)
!3132 = !DILocation(line: 22, column: 11, scope: !3111)
!3133 = !DILocation(line: 23, column: 32, scope: !3111)
!3134 = !DILocation(line: 23, column: 26, scope: !3111)
!3135 = !DILocation(line: 23, column: 35, scope: !3111)
!3136 = !DILocation(line: 23, column: 11, scope: !3111)
!3137 = !DILocation(line: 24, column: 9, scope: !3111)
!3138 = !DILocation(line: 27, column: 9, scope: !3111)
!3139 = !DILocation(line: 27, column: 18, scope: !3111)
!3140 = !DILocation(line: 27, column: 22, scope: !3111)
!3141 = !DILocation(line: 27, column: 40, scope: !3111)
!3142 = !DILocation(line: 27, column: 43, scope: !3111)
!3143 = !DILocation(line: 27, column: 52, scope: !3111)
!3144 = !DILocation(line: 27, column: 56, scope: !3111)
!3145 = !DILocation(line: 29, column: 34, scope: !3111)
!3146 = !DILocation(line: 29, column: 28, scope: !3111)
!3147 = !DILocation(line: 29, column: 37, scope: !3111)
!3148 = !DILocation(line: 29, column: 21, scope: !3111)
!3149 = !DILocation(line: 30, column: 34, scope: !3111)
!3150 = !DILocation(line: 30, column: 28, scope: !3111)
!3151 = !DILocation(line: 30, column: 37, scope: !3111)
!3152 = !DILocation(line: 30, column: 21, scope: !3111)
!3153 = !DILocation(line: 33, column: 13, scope: !3111)
!3154 = !DILocation(line: 33, column: 18, scope: !3111)
!3155 = !DILocation(line: 33, column: 49, scope: !3111)
!3156 = !DILocation(line: 33, column: 43, scope: !3111)
!3157 = !DILocation(line: 33, column: 52, scope: !3111)
!3158 = !DILocation(line: 33, column: 35, scope: !3111)
!3159 = !DILocation(line: 33, column: 28, scope: !3111)
!3160 = !DILocation(line: 35, column: 13, scope: !3111)
!3161 = !DILocation(line: 35, column: 18, scope: !3111)
!3162 = !DILocation(line: 35, column: 49, scope: !3111)
!3163 = !DILocation(line: 35, column: 43, scope: !3111)
!3164 = !DILocation(line: 35, column: 52, scope: !3111)
!3165 = !DILocation(line: 35, column: 35, scope: !3111)
!3166 = !DILocation(line: 35, column: 28, scope: !3111)
!3167 = !DILocation(line: 37, column: 13, scope: !3111)
!3168 = !DILocation(line: 37, column: 18, scope: !3111)
!3169 = !DILocation(line: 39, column: 17, scope: !3111)
!3170 = !DILocation(line: 39, column: 38, scope: !3111)
!3171 = !DILocation(line: 39, column: 45, scope: !3111)
!3172 = !DILocation(line: 39, column: 43, scope: !3111)
!3173 = !DILocation(line: 39, column: 30, scope: !3111)
!3174 = !DILocation(line: 39, column: 23, scope: !3111)
!3175 = !DILocation(line: 41, column: 25, scope: !3111)
!3176 = !DILocation(line: 41, column: 18, scope: !3111)
!3177 = !DILocation(line: 44, column: 13, scope: !3111)
!3178 = !DILocation(line: 44, column: 18, scope: !3111)
!3179 = !DILocation(line: 46, column: 17, scope: !3111)
!3180 = !DILocation(line: 46, column: 38, scope: !3111)
!3181 = !DILocation(line: 46, column: 45, scope: !3111)
!3182 = !DILocation(line: 46, column: 43, scope: !3111)
!3183 = !DILocation(line: 46, column: 30, scope: !3111)
!3184 = !DILocation(line: 46, column: 23, scope: !3111)
!3185 = !DILocation(line: 48, column: 25, scope: !3111)
!3186 = !DILocation(line: 48, column: 18, scope: !3111)
!3187 = !DILocation(line: 52, column: 14, scope: !3111)
!3188 = !DILocation(line: 52, column: 13, scope: !3111)
!3189 = !DILocation(line: 52, column: 35, scope: !3111)
!3190 = !DILocation(line: 52, column: 27, scope: !3111)
!3191 = !DILocation(line: 52, column: 20, scope: !3111)
!3192 = !DILocation(line: 54, column: 14, scope: !3111)
!3193 = !DILocation(line: 54, column: 13, scope: !3111)
!3194 = !DILocation(line: 54, column: 35, scope: !3111)
!3195 = !DILocation(line: 54, column: 27, scope: !3111)
!3196 = !DILocation(line: 54, column: 20, scope: !3111)
!3197 = !DILocation(line: 59, column: 13, scope: !3111)
!3198 = !DILocation(line: 59, column: 18, scope: !3111)
!3199 = !DILocation(line: 59, column: 42, scope: !3111)
!3200 = !DILocation(line: 59, column: 39, scope: !3111)
!3201 = !DILocation(line: 59, column: 33, scope: !3111)
!3202 = !DILocation(line: 60, column: 13, scope: !3111)
!3203 = !DILocation(line: 60, column: 18, scope: !3111)
!3204 = !DILocation(line: 60, column: 42, scope: !3111)
!3205 = !DILocation(line: 60, column: 39, scope: !3111)
!3206 = !DILocation(line: 60, column: 33, scope: !3111)
!3207 = !DILocation(line: 61, column: 5, scope: !3111)
!3208 = !DILocation(line: 66, column: 18, scope: !3111)
!3209 = !DILocation(line: 67, column: 18, scope: !3111)
!3210 = !DILocation(line: 75, column: 18, scope: !3111)
!3211 = !DILocation(line: 75, column: 32, scope: !3111)
!3212 = !DILocation(line: 75, column: 45, scope: !3111)
!3213 = !DILocation(line: 75, column: 5, scope: !3111)
!3214 = !DILocation(line: 78, column: 27, scope: !3111)
!3215 = !DILocation(line: 78, column: 39, scope: !3111)
!3216 = !DILocation(line: 78, column: 37, scope: !3111)
!3217 = !DILocation(line: 78, column: 49, scope: !3111)
!3218 = !DILocation(line: 78, column: 66, scope: !3111)
!3219 = !DILocation(line: 78, column: 64, scope: !3111)
!3220 = !DILocation(line: 78, column: 9, scope: !3111)
!3221 = !DILocation(line: 81, column: 9, scope: !3111)
!3222 = !DILocation(line: 81, column: 19, scope: !3111)
!3223 = !DILocation(line: 81, column: 49, scope: !3111)
!3224 = !DILocation(line: 81, column: 34, scope: !3111)
!3225 = !DILocation(line: 82, column: 10, scope: !3111)
!3226 = !DILocation(line: 85, column: 9, scope: !3111)
!3227 = !DILocation(line: 85, column: 25, scope: !3111)
!3228 = !DILocation(line: 85, column: 65, scope: !3111)
!3229 = !DILocation(line: 85, column: 63, scope: !3111)
!3230 = !DILocation(line: 85, column: 48, scope: !3111)
!3231 = !DILocation(line: 85, column: 41, scope: !3111)
!3232 = !DILocation(line: 87, column: 9, scope: !3111)
!3233 = !DILocation(line: 87, column: 25, scope: !3111)
!3234 = !DILocation(line: 94, column: 61, scope: !3111)
!3235 = !DILocation(line: 94, column: 45, scope: !3111)
!3236 = !DILocation(line: 94, column: 28, scope: !3111)
!3237 = !DILocation(line: 95, column: 13, scope: !3111)
!3238 = !DILocation(line: 95, column: 19, scope: !3111)
!3239 = !DILocation(line: 95, column: 48, scope: !3111)
!3240 = !DILocation(line: 95, column: 40, scope: !3111)
!3241 = !DILocation(line: 95, column: 33, scope: !3111)
!3242 = !DILocation(line: 99, column: 58, scope: !3111)
!3243 = !DILocation(line: 99, column: 9, scope: !3111)
!3244 = !DILocation(line: 100, column: 5, scope: !3111)
!3245 = !DILocation(line: 103, column: 19, scope: !3111)
!3246 = !DILocation(line: 104, column: 29, scope: !3111)
!3247 = !DILocation(line: 104, column: 45, scope: !3111)
!3248 = !DILocation(line: 104, column: 19, scope: !3111)
!3249 = !DILocation(line: 108, column: 18, scope: !3111)
!3250 = !DILocation(line: 108, column: 15, scope: !3111)
!3251 = !DILocation(line: 113, column: 9, scope: !3111)
!3252 = !DILocation(line: 113, column: 19, scope: !3111)
!3253 = !DILocation(line: 113, column: 39, scope: !3111)
!3254 = !DILocation(line: 113, column: 30, scope: !3111)
!3255 = !DILocation(line: 114, column: 9, scope: !3111)
!3256 = !DILocation(line: 114, column: 19, scope: !3111)
!3257 = !DILocation(line: 114, column: 44, scope: !3111)
!3258 = !DILocation(line: 114, column: 54, scope: !3111)
!3259 = !DILocation(line: 114, column: 41, scope: !3111)
!3260 = !DILocation(line: 114, column: 31, scope: !3111)
!3261 = !DILocation(line: 115, column: 20, scope: !3111)
!3262 = !DILocation(line: 115, column: 12, scope: !3111)
!3263 = !DILocation(line: 115, column: 5, scope: !3111)
!3264 = !DILocation(line: 116, column: 1, scope: !3111)
!3265 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3266 = !DILocation(line: 232, column: 44, scope: !3265)
!3267 = !DILocation(line: 232, column: 50, scope: !3265)
!3268 = !DILocation(line: 233, column: 16, scope: !3265)
!3269 = !DILocation(line: 233, column: 5, scope: !3265)
!3270 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3271 = !DILocation(line: 237, column: 44, scope: !3270)
!3272 = !DILocation(line: 237, column: 50, scope: !3270)
!3273 = !DILocation(line: 238, column: 16, scope: !3270)
!3274 = !DILocation(line: 238, column: 5, scope: !3270)
!3275 = distinct !DISubprogram(name: "normalize", scope: !370, file: !370, line: 241, type: !136, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3276 = !DILocation(line: 242, column: 32, scope: !3275)
!3277 = !DILocation(line: 242, column: 31, scope: !3275)
!3278 = !DILocation(line: 242, column: 23, scope: !3275)
!3279 = !DILocation(line: 242, column: 47, scope: !3275)
!3280 = !DILocation(line: 242, column: 45, scope: !3275)
!3281 = !DILocation(line: 242, column: 15, scope: !3275)
!3282 = !DILocation(line: 243, column: 22, scope: !3275)
!3283 = !DILocation(line: 243, column: 6, scope: !3275)
!3284 = !DILocation(line: 243, column: 18, scope: !3275)
!3285 = !DILocation(line: 244, column: 16, scope: !3275)
!3286 = !DILocation(line: 244, column: 14, scope: !3275)
!3287 = !DILocation(line: 244, column: 5, scope: !3275)
!3288 = distinct !DISubprogram(name: "wideMultiply", scope: !370, file: !370, line: 54, type: !136, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3289 = !DILocation(line: 55, column: 40, scope: !3288)
!3290 = !DILocation(line: 55, column: 30, scope: !3288)
!3291 = !DILocation(line: 55, column: 42, scope: !3288)
!3292 = !DILocation(line: 55, column: 41, scope: !3288)
!3293 = !DILocation(line: 55, column: 20, scope: !3288)
!3294 = !DILocation(line: 56, column: 11, scope: !3288)
!3295 = !DILocation(line: 56, column: 19, scope: !3288)
!3296 = !DILocation(line: 56, column: 6, scope: !3288)
!3297 = !DILocation(line: 56, column: 9, scope: !3288)
!3298 = !DILocation(line: 57, column: 11, scope: !3288)
!3299 = !DILocation(line: 57, column: 6, scope: !3288)
!3300 = !DILocation(line: 57, column: 9, scope: !3288)
!3301 = !DILocation(line: 58, column: 1, scope: !3288)
!3302 = distinct !DISubprogram(name: "wideLeftShift", scope: !370, file: !370, line: 247, type: !136, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3303 = !DILocation(line: 248, column: 12, scope: !3302)
!3304 = !DILocation(line: 248, column: 11, scope: !3302)
!3305 = !DILocation(line: 248, column: 18, scope: !3302)
!3306 = !DILocation(line: 248, column: 15, scope: !3302)
!3307 = !DILocation(line: 248, column: 27, scope: !3302)
!3308 = !DILocation(line: 248, column: 26, scope: !3302)
!3309 = !DILocation(line: 248, column: 46, scope: !3302)
!3310 = !DILocation(line: 248, column: 44, scope: !3302)
!3311 = !DILocation(line: 248, column: 30, scope: !3302)
!3312 = !DILocation(line: 248, column: 24, scope: !3302)
!3313 = !DILocation(line: 248, column: 6, scope: !3302)
!3314 = !DILocation(line: 248, column: 9, scope: !3302)
!3315 = !DILocation(line: 249, column: 12, scope: !3302)
!3316 = !DILocation(line: 249, column: 11, scope: !3302)
!3317 = !DILocation(line: 249, column: 18, scope: !3302)
!3318 = !DILocation(line: 249, column: 15, scope: !3302)
!3319 = !DILocation(line: 249, column: 6, scope: !3302)
!3320 = !DILocation(line: 249, column: 9, scope: !3302)
!3321 = !DILocation(line: 250, column: 1, scope: !3302)
!3322 = distinct !DISubprogram(name: "wideRightShiftWithSticky", scope: !370, file: !370, line: 252, type: !136, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3323 = !DILocation(line: 253, column: 9, scope: !3322)
!3324 = !DILocation(line: 253, column: 15, scope: !3322)
!3325 = !DILocation(line: 254, column: 30, scope: !3322)
!3326 = !DILocation(line: 254, column: 29, scope: !3322)
!3327 = !DILocation(line: 254, column: 49, scope: !3322)
!3328 = !DILocation(line: 254, column: 47, scope: !3322)
!3329 = !DILocation(line: 254, column: 33, scope: !3322)
!3330 = !DILocation(line: 254, column: 20, scope: !3322)
!3331 = !DILocation(line: 255, column: 16, scope: !3322)
!3332 = !DILocation(line: 255, column: 15, scope: !3322)
!3333 = !DILocation(line: 255, column: 35, scope: !3322)
!3334 = !DILocation(line: 255, column: 33, scope: !3322)
!3335 = !DILocation(line: 255, column: 19, scope: !3322)
!3336 = !DILocation(line: 255, column: 45, scope: !3322)
!3337 = !DILocation(line: 255, column: 44, scope: !3322)
!3338 = !DILocation(line: 255, column: 51, scope: !3322)
!3339 = !DILocation(line: 255, column: 48, scope: !3322)
!3340 = !DILocation(line: 255, column: 42, scope: !3322)
!3341 = !DILocation(line: 255, column: 59, scope: !3322)
!3342 = !DILocation(line: 255, column: 57, scope: !3322)
!3343 = !DILocation(line: 255, column: 10, scope: !3322)
!3344 = !DILocation(line: 255, column: 13, scope: !3322)
!3345 = !DILocation(line: 256, column: 16, scope: !3322)
!3346 = !DILocation(line: 256, column: 15, scope: !3322)
!3347 = !DILocation(line: 256, column: 22, scope: !3322)
!3348 = !DILocation(line: 256, column: 19, scope: !3322)
!3349 = !DILocation(line: 256, column: 10, scope: !3322)
!3350 = !DILocation(line: 256, column: 13, scope: !3322)
!3351 = !DILocation(line: 257, column: 5, scope: !3322)
!3352 = !DILocation(line: 258, column: 14, scope: !3322)
!3353 = !DILocation(line: 258, column: 20, scope: !3322)
!3354 = !DILocation(line: 259, column: 30, scope: !3322)
!3355 = !DILocation(line: 259, column: 29, scope: !3322)
!3356 = !DILocation(line: 259, column: 51, scope: !3322)
!3357 = !DILocation(line: 259, column: 49, scope: !3322)
!3358 = !DILocation(line: 259, column: 33, scope: !3322)
!3359 = !DILocation(line: 259, column: 61, scope: !3322)
!3360 = !DILocation(line: 259, column: 60, scope: !3322)
!3361 = !DILocation(line: 259, column: 58, scope: !3322)
!3362 = !DILocation(line: 259, column: 20, scope: !3322)
!3363 = !DILocation(line: 260, column: 16, scope: !3322)
!3364 = !DILocation(line: 260, column: 15, scope: !3322)
!3365 = !DILocation(line: 260, column: 23, scope: !3322)
!3366 = !DILocation(line: 260, column: 29, scope: !3322)
!3367 = !DILocation(line: 260, column: 19, scope: !3322)
!3368 = !DILocation(line: 260, column: 44, scope: !3322)
!3369 = !DILocation(line: 260, column: 42, scope: !3322)
!3370 = !DILocation(line: 260, column: 10, scope: !3322)
!3371 = !DILocation(line: 260, column: 13, scope: !3322)
!3372 = !DILocation(line: 261, column: 10, scope: !3322)
!3373 = !DILocation(line: 261, column: 13, scope: !3322)
!3374 = !DILocation(line: 262, column: 5, scope: !3322)
!3375 = !DILocation(line: 263, column: 30, scope: !3322)
!3376 = !DILocation(line: 263, column: 29, scope: !3322)
!3377 = !DILocation(line: 263, column: 36, scope: !3322)
!3378 = !DILocation(line: 263, column: 35, scope: !3322)
!3379 = !DILocation(line: 263, column: 33, scope: !3322)
!3380 = !DILocation(line: 263, column: 20, scope: !3322)
!3381 = !DILocation(line: 264, column: 15, scope: !3322)
!3382 = !DILocation(line: 264, column: 10, scope: !3322)
!3383 = !DILocation(line: 264, column: 13, scope: !3322)
!3384 = !DILocation(line: 265, column: 10, scope: !3322)
!3385 = !DILocation(line: 265, column: 13, scope: !3322)
!3386 = !DILocation(line: 267, column: 1, scope: !3322)
!3387 = distinct !DISubprogram(name: "rep_clz", scope: !370, file: !370, line: 49, type: !136, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !137)
!3388 = !DILocation(line: 50, column: 26, scope: !3387)
!3389 = !DILocation(line: 50, column: 12, scope: !3387)
!3390 = !DILocation(line: 50, column: 5, scope: !3387)
!3391 = distinct !DISubprogram(name: "__negdf2", scope: !97, file: !97, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !137)
!3392 = !DILocation(line: 21, column: 26, scope: !3391)
!3393 = !DILocation(line: 21, column: 20, scope: !3391)
!3394 = !DILocation(line: 21, column: 29, scope: !3391)
!3395 = !DILocation(line: 21, column: 12, scope: !3391)
!3396 = !DILocation(line: 21, column: 5, scope: !3391)
!3397 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !96, retainedNodes: !137)
!3398 = !DILocation(line: 232, column: 44, scope: !3397)
!3399 = !DILocation(line: 232, column: 50, scope: !3397)
!3400 = !DILocation(line: 233, column: 16, scope: !3397)
!3401 = !DILocation(line: 233, column: 5, scope: !3397)
!3402 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !96, retainedNodes: !137)
!3403 = !DILocation(line: 237, column: 44, scope: !3402)
!3404 = !DILocation(line: 237, column: 50, scope: !3402)
!3405 = !DILocation(line: 238, column: 16, scope: !3402)
!3406 = !DILocation(line: 238, column: 5, scope: !3402)
!3407 = distinct !DISubprogram(name: "__negdi2", scope: !99, file: !99, line: 20, type: !136, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !137)
!3408 = !DILocation(line: 25, column: 13, scope: !3407)
!3409 = !DILocation(line: 25, column: 12, scope: !3407)
!3410 = !DILocation(line: 25, column: 5, scope: !3407)
!3411 = distinct !DISubprogram(name: "__negsf2", scope: !101, file: !101, line: 20, type: !136, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !137)
!3412 = !DILocation(line: 21, column: 26, scope: !3411)
!3413 = !DILocation(line: 21, column: 20, scope: !3411)
!3414 = !DILocation(line: 21, column: 29, scope: !3411)
!3415 = !DILocation(line: 21, column: 12, scope: !3411)
!3416 = !DILocation(line: 21, column: 5, scope: !3411)
!3417 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !137)
!3418 = !DILocation(line: 232, column: 44, scope: !3417)
!3419 = !DILocation(line: 232, column: 50, scope: !3417)
!3420 = !DILocation(line: 233, column: 16, scope: !3417)
!3421 = !DILocation(line: 233, column: 5, scope: !3417)
!3422 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !100, retainedNodes: !137)
!3423 = !DILocation(line: 237, column: 44, scope: !3422)
!3424 = !DILocation(line: 237, column: 50, scope: !3422)
!3425 = !DILocation(line: 238, column: 16, scope: !3422)
!3426 = !DILocation(line: 238, column: 5, scope: !3422)
!3427 = distinct !DISubprogram(name: "__negvdi2", scope: !105, file: !105, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !137)
!3428 = !DILocation(line: 24, column: 18, scope: !3427)
!3429 = !DILocation(line: 25, column: 9, scope: !3427)
!3430 = !DILocation(line: 25, column: 11, scope: !3427)
!3431 = !DILocation(line: 26, column: 9, scope: !3427)
!3432 = !DILocation(line: 27, column: 13, scope: !3427)
!3433 = !DILocation(line: 27, column: 12, scope: !3427)
!3434 = !DILocation(line: 27, column: 5, scope: !3427)
!3435 = distinct !DISubprogram(name: "__negvsi2", scope: !107, file: !107, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !137)
!3436 = !DILocation(line: 24, column: 18, scope: !3435)
!3437 = !DILocation(line: 25, column: 9, scope: !3435)
!3438 = !DILocation(line: 25, column: 11, scope: !3435)
!3439 = !DILocation(line: 26, column: 9, scope: !3435)
!3440 = !DILocation(line: 27, column: 13, scope: !3435)
!3441 = !DILocation(line: 27, column: 12, scope: !3435)
!3442 = !DILocation(line: 27, column: 5, scope: !3435)
!3443 = distinct !DISubprogram(name: "__powidf2", scope: !111, file: !111, line: 20, type: !136, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !137)
!3444 = !DILocation(line: 22, column: 23, scope: !3443)
!3445 = !DILocation(line: 22, column: 25, scope: !3443)
!3446 = !DILocation(line: 22, column: 15, scope: !3443)
!3447 = !DILocation(line: 23, column: 12, scope: !3443)
!3448 = !DILocation(line: 24, column: 5, scope: !3443)
!3449 = !DILocation(line: 26, column: 13, scope: !3443)
!3450 = !DILocation(line: 26, column: 15, scope: !3443)
!3451 = !DILocation(line: 27, column: 18, scope: !3443)
!3452 = !DILocation(line: 27, column: 15, scope: !3443)
!3453 = !DILocation(line: 27, column: 13, scope: !3443)
!3454 = !DILocation(line: 28, column: 11, scope: !3443)
!3455 = !DILocation(line: 29, column: 13, scope: !3443)
!3456 = !DILocation(line: 29, column: 15, scope: !3443)
!3457 = !DILocation(line: 30, column: 13, scope: !3443)
!3458 = !DILocation(line: 31, column: 14, scope: !3443)
!3459 = !DILocation(line: 31, column: 11, scope: !3443)
!3460 = distinct !{!3460, !3448, !3461}
!3461 = !DILocation(line: 32, column: 5, scope: !3443)
!3462 = !DILocation(line: 33, column: 12, scope: !3443)
!3463 = !DILocation(line: 33, column: 22, scope: !3443)
!3464 = !DILocation(line: 33, column: 21, scope: !3443)
!3465 = !DILocation(line: 33, column: 26, scope: !3443)
!3466 = !DILocation(line: 33, column: 5, scope: !3443)
!3467 = distinct !DISubprogram(name: "__powisf2", scope: !113, file: !113, line: 20, type: !136, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !137)
!3468 = !DILocation(line: 22, column: 23, scope: !3467)
!3469 = !DILocation(line: 22, column: 25, scope: !3467)
!3470 = !DILocation(line: 22, column: 15, scope: !3467)
!3471 = !DILocation(line: 23, column: 11, scope: !3467)
!3472 = !DILocation(line: 24, column: 5, scope: !3467)
!3473 = !DILocation(line: 26, column: 13, scope: !3467)
!3474 = !DILocation(line: 26, column: 15, scope: !3467)
!3475 = !DILocation(line: 27, column: 18, scope: !3467)
!3476 = !DILocation(line: 27, column: 15, scope: !3467)
!3477 = !DILocation(line: 27, column: 13, scope: !3467)
!3478 = !DILocation(line: 28, column: 11, scope: !3467)
!3479 = !DILocation(line: 29, column: 13, scope: !3467)
!3480 = !DILocation(line: 29, column: 15, scope: !3467)
!3481 = !DILocation(line: 30, column: 13, scope: !3467)
!3482 = !DILocation(line: 31, column: 14, scope: !3467)
!3483 = !DILocation(line: 31, column: 11, scope: !3467)
!3484 = distinct !{!3484, !3472, !3485}
!3485 = !DILocation(line: 32, column: 5, scope: !3467)
!3486 = !DILocation(line: 33, column: 12, scope: !3467)
!3487 = !DILocation(line: 33, column: 22, scope: !3467)
!3488 = !DILocation(line: 33, column: 21, scope: !3467)
!3489 = !DILocation(line: 33, column: 26, scope: !3467)
!3490 = !DILocation(line: 33, column: 5, scope: !3467)
!3491 = distinct !DISubprogram(name: "__powixf2", scope: !117, file: !117, line: 22, type: !136, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !137)
!3492 = !DILocation(line: 24, column: 23, scope: !3491)
!3493 = !DILocation(line: 24, column: 25, scope: !3491)
!3494 = !DILocation(line: 24, column: 15, scope: !3491)
!3495 = !DILocation(line: 25, column: 17, scope: !3491)
!3496 = !DILocation(line: 26, column: 5, scope: !3491)
!3497 = !DILocation(line: 28, column: 13, scope: !3491)
!3498 = !DILocation(line: 28, column: 15, scope: !3491)
!3499 = !DILocation(line: 29, column: 18, scope: !3491)
!3500 = !DILocation(line: 29, column: 15, scope: !3491)
!3501 = !DILocation(line: 29, column: 13, scope: !3491)
!3502 = !DILocation(line: 30, column: 11, scope: !3491)
!3503 = !DILocation(line: 31, column: 13, scope: !3491)
!3504 = !DILocation(line: 31, column: 15, scope: !3491)
!3505 = !DILocation(line: 32, column: 13, scope: !3491)
!3506 = !DILocation(line: 33, column: 14, scope: !3491)
!3507 = !DILocation(line: 33, column: 11, scope: !3491)
!3508 = distinct !{!3508, !3496, !3509}
!3509 = !DILocation(line: 34, column: 5, scope: !3491)
!3510 = !DILocation(line: 35, column: 12, scope: !3491)
!3511 = !DILocation(line: 35, column: 22, scope: !3491)
!3512 = !DILocation(line: 35, column: 21, scope: !3491)
!3513 = !DILocation(line: 35, column: 26, scope: !3491)
!3514 = !DILocation(line: 35, column: 5, scope: !3491)
!3515 = distinct !DISubprogram(name: "__subdf3", scope: !119, file: !119, line: 22, type: !136, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !137)
!3516 = !DILocation(line: 23, column: 21, scope: !3515)
!3517 = !DILocation(line: 23, column: 38, scope: !3515)
!3518 = !DILocation(line: 23, column: 32, scope: !3515)
!3519 = !DILocation(line: 23, column: 41, scope: !3515)
!3520 = !DILocation(line: 23, column: 24, scope: !3515)
!3521 = !DILocation(line: 23, column: 12, scope: !3515)
!3522 = !DILocation(line: 23, column: 5, scope: !3515)
!3523 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !137)
!3524 = !DILocation(line: 232, column: 44, scope: !3523)
!3525 = !DILocation(line: 232, column: 50, scope: !3523)
!3526 = !DILocation(line: 233, column: 16, scope: !3523)
!3527 = !DILocation(line: 233, column: 5, scope: !3523)
!3528 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !137)
!3529 = !DILocation(line: 237, column: 44, scope: !3528)
!3530 = !DILocation(line: 237, column: 50, scope: !3528)
!3531 = !DILocation(line: 238, column: 16, scope: !3528)
!3532 = !DILocation(line: 238, column: 5, scope: !3528)
!3533 = distinct !DISubprogram(name: "__subsf3", scope: !121, file: !121, line: 22, type: !136, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !137)
!3534 = !DILocation(line: 23, column: 21, scope: !3533)
!3535 = !DILocation(line: 23, column: 38, scope: !3533)
!3536 = !DILocation(line: 23, column: 32, scope: !3533)
!3537 = !DILocation(line: 23, column: 41, scope: !3533)
!3538 = !DILocation(line: 23, column: 24, scope: !3533)
!3539 = !DILocation(line: 23, column: 12, scope: !3533)
!3540 = !DILocation(line: 23, column: 5, scope: !3533)
!3541 = distinct !DISubprogram(name: "toRep", scope: !370, file: !370, line: 231, type: !136, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !137)
!3542 = !DILocation(line: 232, column: 44, scope: !3541)
!3543 = !DILocation(line: 232, column: 50, scope: !3541)
!3544 = !DILocation(line: 233, column: 16, scope: !3541)
!3545 = !DILocation(line: 233, column: 5, scope: !3541)
!3546 = distinct !DISubprogram(name: "fromRep", scope: !370, file: !370, line: 236, type: !136, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !137)
!3547 = !DILocation(line: 237, column: 44, scope: !3546)
!3548 = !DILocation(line: 237, column: 50, scope: !3546)
!3549 = !DILocation(line: 238, column: 16, scope: !3546)
!3550 = !DILocation(line: 238, column: 5, scope: !3546)
!3551 = distinct !DISubprogram(name: "__truncdfhf2", scope: !123, file: !123, line: 16, type: !136, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !137)
!3552 = !DILocation(line: 17, column: 27, scope: !3551)
!3553 = !DILocation(line: 17, column: 12, scope: !3551)
!3554 = !DILocation(line: 17, column: 5, scope: !3551)
!3555 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !3556, file: !3556, line: 42, type: !136, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !137)
!3556 = !DIFile(filename: "../fp_trunc_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "6b2b11da044f1e9b292453d3c4a11a99")
!3557 = !DILocation(line: 45, column: 15, scope: !3555)
!3558 = !DILocation(line: 46, column: 15, scope: !3555)
!3559 = !DILocation(line: 47, column: 15, scope: !3555)
!3560 = !DILocation(line: 48, column: 15, scope: !3555)
!3561 = !DILocation(line: 50, column: 21, scope: !3555)
!3562 = !DILocation(line: 51, column: 21, scope: !3555)
!3563 = !DILocation(line: 52, column: 21, scope: !3555)
!3564 = !DILocation(line: 53, column: 21, scope: !3555)
!3565 = !DILocation(line: 54, column: 21, scope: !3555)
!3566 = !DILocation(line: 55, column: 21, scope: !3555)
!3567 = !DILocation(line: 56, column: 21, scope: !3555)
!3568 = !DILocation(line: 57, column: 21, scope: !3555)
!3569 = !DILocation(line: 58, column: 21, scope: !3555)
!3570 = !DILocation(line: 60, column: 15, scope: !3555)
!3571 = !DILocation(line: 61, column: 15, scope: !3555)
!3572 = !DILocation(line: 62, column: 15, scope: !3555)
!3573 = !DILocation(line: 63, column: 15, scope: !3555)
!3574 = !DILocation(line: 65, column: 15, scope: !3555)
!3575 = !DILocation(line: 66, column: 15, scope: !3555)
!3576 = !DILocation(line: 67, column: 21, scope: !3555)
!3577 = !DILocation(line: 68, column: 21, scope: !3555)
!3578 = !DILocation(line: 70, column: 21, scope: !3555)
!3579 = !DILocation(line: 71, column: 21, scope: !3555)
!3580 = !DILocation(line: 74, column: 37, scope: !3555)
!3581 = !DILocation(line: 74, column: 28, scope: !3555)
!3582 = !DILocation(line: 74, column: 21, scope: !3555)
!3583 = !DILocation(line: 75, column: 28, scope: !3555)
!3584 = !DILocation(line: 75, column: 33, scope: !3555)
!3585 = !DILocation(line: 75, column: 21, scope: !3555)
!3586 = !DILocation(line: 76, column: 28, scope: !3555)
!3587 = !DILocation(line: 76, column: 33, scope: !3555)
!3588 = !DILocation(line: 76, column: 21, scope: !3555)
!3589 = !DILocation(line: 79, column: 9, scope: !3555)
!3590 = !DILocation(line: 79, column: 14, scope: !3555)
!3591 = !DILocation(line: 79, column: 28, scope: !3555)
!3592 = !DILocation(line: 79, column: 33, scope: !3555)
!3593 = !DILocation(line: 79, column: 26, scope: !3555)
!3594 = !DILocation(line: 83, column: 21, scope: !3555)
!3595 = !DILocation(line: 83, column: 26, scope: !3555)
!3596 = !DILocation(line: 83, column: 19, scope: !3555)
!3597 = !DILocation(line: 84, column: 19, scope: !3555)
!3598 = !DILocation(line: 86, column: 37, scope: !3555)
!3599 = !DILocation(line: 86, column: 42, scope: !3555)
!3600 = !DILocation(line: 86, column: 25, scope: !3555)
!3601 = !DILocation(line: 88, column: 13, scope: !3555)
!3602 = !DILocation(line: 88, column: 23, scope: !3555)
!3603 = !DILocation(line: 89, column: 22, scope: !3555)
!3604 = !DILocation(line: 89, column: 13, scope: !3555)
!3605 = !DILocation(line: 91, column: 18, scope: !3555)
!3606 = !DILocation(line: 91, column: 28, scope: !3555)
!3607 = !DILocation(line: 92, column: 26, scope: !3555)
!3608 = !DILocation(line: 92, column: 36, scope: !3555)
!3609 = !DILocation(line: 92, column: 23, scope: !3555)
!3610 = !DILocation(line: 92, column: 13, scope: !3555)
!3611 = !DILocation(line: 93, column: 5, scope: !3555)
!3612 = !DILocation(line: 94, column: 14, scope: !3555)
!3613 = !DILocation(line: 94, column: 19, scope: !3555)
!3614 = !DILocation(line: 98, column: 19, scope: !3555)
!3615 = !DILocation(line: 99, column: 19, scope: !3555)
!3616 = !DILocation(line: 100, column: 24, scope: !3555)
!3617 = !DILocation(line: 100, column: 29, scope: !3555)
!3618 = !DILocation(line: 100, column: 43, scope: !3555)
!3619 = !DILocation(line: 100, column: 73, scope: !3555)
!3620 = !DILocation(line: 100, column: 19, scope: !3555)
!3621 = !DILocation(line: 101, column: 5, scope: !3555)
!3622 = !DILocation(line: 102, column: 14, scope: !3555)
!3623 = !DILocation(line: 102, column: 19, scope: !3555)
!3624 = !DILocation(line: 104, column: 19, scope: !3555)
!3625 = !DILocation(line: 105, column: 5, scope: !3555)
!3626 = !DILocation(line: 110, column: 26, scope: !3555)
!3627 = !DILocation(line: 110, column: 31, scope: !3555)
!3628 = !DILocation(line: 110, column: 19, scope: !3555)
!3629 = !DILocation(line: 111, column: 53, scope: !3555)
!3630 = !DILocation(line: 111, column: 51, scope: !3555)
!3631 = !DILocation(line: 111, column: 58, scope: !3555)
!3632 = !DILocation(line: 111, column: 19, scope: !3555)
!3633 = !DILocation(line: 113, column: 40, scope: !3555)
!3634 = !DILocation(line: 113, column: 45, scope: !3555)
!3635 = !DILocation(line: 113, column: 67, scope: !3555)
!3636 = !DILocation(line: 113, column: 25, scope: !3555)
!3637 = !DILocation(line: 116, column: 13, scope: !3555)
!3638 = !DILocation(line: 116, column: 19, scope: !3555)
!3639 = !DILocation(line: 117, column: 23, scope: !3555)
!3640 = !DILocation(line: 118, column: 9, scope: !3555)
!3641 = !DILocation(line: 119, column: 33, scope: !3555)
!3642 = !DILocation(line: 119, column: 59, scope: !3555)
!3643 = !DILocation(line: 119, column: 57, scope: !3555)
!3644 = !DILocation(line: 119, column: 45, scope: !3555)
!3645 = !DILocation(line: 119, column: 24, scope: !3555)
!3646 = !DILocation(line: 120, column: 49, scope: !3555)
!3647 = !DILocation(line: 120, column: 64, scope: !3555)
!3648 = !DILocation(line: 120, column: 61, scope: !3555)
!3649 = !DILocation(line: 120, column: 72, scope: !3555)
!3650 = !DILocation(line: 120, column: 70, scope: !3555)
!3651 = !DILocation(line: 120, column: 23, scope: !3555)
!3652 = !DILocation(line: 121, column: 25, scope: !3555)
!3653 = !DILocation(line: 121, column: 49, scope: !3555)
!3654 = !DILocation(line: 121, column: 23, scope: !3555)
!3655 = !DILocation(line: 122, column: 41, scope: !3555)
!3656 = !DILocation(line: 122, column: 65, scope: !3555)
!3657 = !DILocation(line: 122, column: 29, scope: !3555)
!3658 = !DILocation(line: 124, column: 17, scope: !3555)
!3659 = !DILocation(line: 124, column: 27, scope: !3555)
!3660 = !DILocation(line: 125, column: 26, scope: !3555)
!3661 = !DILocation(line: 125, column: 17, scope: !3555)
!3662 = !DILocation(line: 127, column: 22, scope: !3555)
!3663 = !DILocation(line: 127, column: 32, scope: !3555)
!3664 = !DILocation(line: 128, column: 30, scope: !3555)
!3665 = !DILocation(line: 128, column: 40, scope: !3555)
!3666 = !DILocation(line: 128, column: 27, scope: !3555)
!3667 = !DILocation(line: 128, column: 17, scope: !3555)
!3668 = !DILocation(line: 133, column: 30, scope: !3555)
!3669 = !DILocation(line: 133, column: 42, scope: !3555)
!3670 = !DILocation(line: 133, column: 47, scope: !3555)
!3671 = !DILocation(line: 133, column: 40, scope: !3555)
!3672 = !DILocation(line: 133, column: 21, scope: !3555)
!3673 = !DILocation(line: 134, column: 23, scope: !3555)
!3674 = !DILocation(line: 134, column: 12, scope: !3555)
!3675 = !DILocation(line: 134, column: 5, scope: !3555)
!3676 = distinct !DISubprogram(name: "srcToRep", scope: !3677, file: !3677, line: 66, type: !136, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !137)
!3677 = !DIFile(filename: "../fp_trunc.h", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "48d5e43ae7f0339c7e20f71580034d98")
!3678 = !DILocation(line: 67, column: 49, scope: !3676)
!3679 = !DILocation(line: 67, column: 55, scope: !3676)
!3680 = !DILocation(line: 68, column: 16, scope: !3676)
!3681 = !DILocation(line: 68, column: 5, scope: !3676)
!3682 = distinct !DISubprogram(name: "dstFromRep", scope: !3677, file: !3677, line: 71, type: !136, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !137)
!3683 = !DILocation(line: 72, column: 49, scope: !3682)
!3684 = !DILocation(line: 72, column: 55, scope: !3682)
!3685 = !DILocation(line: 73, column: 16, scope: !3682)
!3686 = !DILocation(line: 73, column: 5, scope: !3682)
!3687 = distinct !DISubprogram(name: "__truncdfsf2", scope: !125, file: !125, line: 16, type: !136, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !137)
!3688 = !DILocation(line: 17, column: 27, scope: !3687)
!3689 = !DILocation(line: 17, column: 12, scope: !3687)
!3690 = !DILocation(line: 17, column: 5, scope: !3687)
!3691 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !3556, file: !3556, line: 42, type: !136, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !137)
!3692 = !DILocation(line: 45, column: 15, scope: !3691)
!3693 = !DILocation(line: 46, column: 15, scope: !3691)
!3694 = !DILocation(line: 47, column: 15, scope: !3691)
!3695 = !DILocation(line: 48, column: 15, scope: !3691)
!3696 = !DILocation(line: 50, column: 21, scope: !3691)
!3697 = !DILocation(line: 51, column: 21, scope: !3691)
!3698 = !DILocation(line: 52, column: 21, scope: !3691)
!3699 = !DILocation(line: 53, column: 21, scope: !3691)
!3700 = !DILocation(line: 54, column: 21, scope: !3691)
!3701 = !DILocation(line: 55, column: 21, scope: !3691)
!3702 = !DILocation(line: 56, column: 21, scope: !3691)
!3703 = !DILocation(line: 57, column: 21, scope: !3691)
!3704 = !DILocation(line: 58, column: 21, scope: !3691)
!3705 = !DILocation(line: 60, column: 15, scope: !3691)
!3706 = !DILocation(line: 61, column: 15, scope: !3691)
!3707 = !DILocation(line: 62, column: 15, scope: !3691)
!3708 = !DILocation(line: 63, column: 15, scope: !3691)
!3709 = !DILocation(line: 65, column: 15, scope: !3691)
!3710 = !DILocation(line: 66, column: 15, scope: !3691)
!3711 = !DILocation(line: 67, column: 21, scope: !3691)
!3712 = !DILocation(line: 68, column: 21, scope: !3691)
!3713 = !DILocation(line: 70, column: 21, scope: !3691)
!3714 = !DILocation(line: 71, column: 21, scope: !3691)
!3715 = !DILocation(line: 74, column: 37, scope: !3691)
!3716 = !DILocation(line: 74, column: 28, scope: !3691)
!3717 = !DILocation(line: 74, column: 21, scope: !3691)
!3718 = !DILocation(line: 75, column: 28, scope: !3691)
!3719 = !DILocation(line: 75, column: 33, scope: !3691)
!3720 = !DILocation(line: 75, column: 21, scope: !3691)
!3721 = !DILocation(line: 76, column: 28, scope: !3691)
!3722 = !DILocation(line: 76, column: 33, scope: !3691)
!3723 = !DILocation(line: 76, column: 21, scope: !3691)
!3724 = !DILocation(line: 79, column: 9, scope: !3691)
!3725 = !DILocation(line: 79, column: 14, scope: !3691)
!3726 = !DILocation(line: 79, column: 28, scope: !3691)
!3727 = !DILocation(line: 79, column: 33, scope: !3691)
!3728 = !DILocation(line: 79, column: 26, scope: !3691)
!3729 = !DILocation(line: 83, column: 21, scope: !3691)
!3730 = !DILocation(line: 83, column: 26, scope: !3691)
!3731 = !DILocation(line: 83, column: 19, scope: !3691)
!3732 = !DILocation(line: 84, column: 19, scope: !3691)
!3733 = !DILocation(line: 86, column: 37, scope: !3691)
!3734 = !DILocation(line: 86, column: 42, scope: !3691)
!3735 = !DILocation(line: 86, column: 25, scope: !3691)
!3736 = !DILocation(line: 88, column: 13, scope: !3691)
!3737 = !DILocation(line: 88, column: 23, scope: !3691)
!3738 = !DILocation(line: 89, column: 22, scope: !3691)
!3739 = !DILocation(line: 89, column: 13, scope: !3691)
!3740 = !DILocation(line: 91, column: 18, scope: !3691)
!3741 = !DILocation(line: 91, column: 28, scope: !3691)
!3742 = !DILocation(line: 92, column: 26, scope: !3691)
!3743 = !DILocation(line: 92, column: 36, scope: !3691)
!3744 = !DILocation(line: 92, column: 23, scope: !3691)
!3745 = !DILocation(line: 92, column: 13, scope: !3691)
!3746 = !DILocation(line: 93, column: 5, scope: !3691)
!3747 = !DILocation(line: 94, column: 14, scope: !3691)
!3748 = !DILocation(line: 94, column: 19, scope: !3691)
!3749 = !DILocation(line: 98, column: 19, scope: !3691)
!3750 = !DILocation(line: 99, column: 19, scope: !3691)
!3751 = !DILocation(line: 100, column: 24, scope: !3691)
!3752 = !DILocation(line: 100, column: 29, scope: !3691)
!3753 = !DILocation(line: 100, column: 43, scope: !3691)
!3754 = !DILocation(line: 100, column: 73, scope: !3691)
!3755 = !DILocation(line: 100, column: 19, scope: !3691)
!3756 = !DILocation(line: 101, column: 5, scope: !3691)
!3757 = !DILocation(line: 102, column: 14, scope: !3691)
!3758 = !DILocation(line: 102, column: 19, scope: !3691)
!3759 = !DILocation(line: 104, column: 19, scope: !3691)
!3760 = !DILocation(line: 105, column: 5, scope: !3691)
!3761 = !DILocation(line: 110, column: 26, scope: !3691)
!3762 = !DILocation(line: 110, column: 31, scope: !3691)
!3763 = !DILocation(line: 110, column: 19, scope: !3691)
!3764 = !DILocation(line: 111, column: 53, scope: !3691)
!3765 = !DILocation(line: 111, column: 51, scope: !3691)
!3766 = !DILocation(line: 111, column: 58, scope: !3691)
!3767 = !DILocation(line: 111, column: 19, scope: !3691)
!3768 = !DILocation(line: 113, column: 40, scope: !3691)
!3769 = !DILocation(line: 113, column: 45, scope: !3691)
!3770 = !DILocation(line: 113, column: 67, scope: !3691)
!3771 = !DILocation(line: 113, column: 25, scope: !3691)
!3772 = !DILocation(line: 116, column: 13, scope: !3691)
!3773 = !DILocation(line: 116, column: 19, scope: !3691)
!3774 = !DILocation(line: 117, column: 23, scope: !3691)
!3775 = !DILocation(line: 118, column: 9, scope: !3691)
!3776 = !DILocation(line: 119, column: 33, scope: !3691)
!3777 = !DILocation(line: 119, column: 59, scope: !3691)
!3778 = !DILocation(line: 119, column: 57, scope: !3691)
!3779 = !DILocation(line: 119, column: 45, scope: !3691)
!3780 = !DILocation(line: 119, column: 24, scope: !3691)
!3781 = !DILocation(line: 120, column: 49, scope: !3691)
!3782 = !DILocation(line: 120, column: 64, scope: !3691)
!3783 = !DILocation(line: 120, column: 61, scope: !3691)
!3784 = !DILocation(line: 120, column: 72, scope: !3691)
!3785 = !DILocation(line: 120, column: 70, scope: !3691)
!3786 = !DILocation(line: 120, column: 23, scope: !3691)
!3787 = !DILocation(line: 121, column: 25, scope: !3691)
!3788 = !DILocation(line: 121, column: 49, scope: !3691)
!3789 = !DILocation(line: 121, column: 23, scope: !3691)
!3790 = !DILocation(line: 122, column: 41, scope: !3691)
!3791 = !DILocation(line: 122, column: 65, scope: !3691)
!3792 = !DILocation(line: 122, column: 29, scope: !3691)
!3793 = !DILocation(line: 124, column: 17, scope: !3691)
!3794 = !DILocation(line: 124, column: 27, scope: !3691)
!3795 = !DILocation(line: 125, column: 26, scope: !3691)
!3796 = !DILocation(line: 125, column: 17, scope: !3691)
!3797 = !DILocation(line: 127, column: 22, scope: !3691)
!3798 = !DILocation(line: 127, column: 32, scope: !3691)
!3799 = !DILocation(line: 128, column: 30, scope: !3691)
!3800 = !DILocation(line: 128, column: 40, scope: !3691)
!3801 = !DILocation(line: 128, column: 27, scope: !3691)
!3802 = !DILocation(line: 128, column: 17, scope: !3691)
!3803 = !DILocation(line: 133, column: 30, scope: !3691)
!3804 = !DILocation(line: 133, column: 42, scope: !3691)
!3805 = !DILocation(line: 133, column: 47, scope: !3691)
!3806 = !DILocation(line: 133, column: 40, scope: !3691)
!3807 = !DILocation(line: 133, column: 21, scope: !3691)
!3808 = !DILocation(line: 134, column: 23, scope: !3691)
!3809 = !DILocation(line: 134, column: 12, scope: !3691)
!3810 = !DILocation(line: 134, column: 5, scope: !3691)
!3811 = distinct !DISubprogram(name: "srcToRep", scope: !3677, file: !3677, line: 66, type: !136, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !137)
!3812 = !DILocation(line: 67, column: 49, scope: !3811)
!3813 = !DILocation(line: 67, column: 55, scope: !3811)
!3814 = !DILocation(line: 68, column: 16, scope: !3811)
!3815 = !DILocation(line: 68, column: 5, scope: !3811)
!3816 = distinct !DISubprogram(name: "dstFromRep", scope: !3677, file: !3677, line: 71, type: !136, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !137)
!3817 = !DILocation(line: 72, column: 49, scope: !3816)
!3818 = !DILocation(line: 72, column: 55, scope: !3816)
!3819 = !DILocation(line: 73, column: 16, scope: !3816)
!3820 = !DILocation(line: 73, column: 5, scope: !3816)
!3821 = distinct !DISubprogram(name: "__truncsfhf2", scope: !127, file: !127, line: 18, type: !136, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !137)
!3822 = !DILocation(line: 19, column: 27, scope: !3821)
!3823 = !DILocation(line: 19, column: 12, scope: !3821)
!3824 = !DILocation(line: 19, column: 5, scope: !3821)
!3825 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !3556, file: !3556, line: 42, type: !136, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !137)
!3826 = !DILocation(line: 45, column: 15, scope: !3825)
!3827 = !DILocation(line: 46, column: 15, scope: !3825)
!3828 = !DILocation(line: 47, column: 15, scope: !3825)
!3829 = !DILocation(line: 48, column: 15, scope: !3825)
!3830 = !DILocation(line: 50, column: 21, scope: !3825)
!3831 = !DILocation(line: 51, column: 21, scope: !3825)
!3832 = !DILocation(line: 52, column: 21, scope: !3825)
!3833 = !DILocation(line: 53, column: 21, scope: !3825)
!3834 = !DILocation(line: 54, column: 21, scope: !3825)
!3835 = !DILocation(line: 55, column: 21, scope: !3825)
!3836 = !DILocation(line: 56, column: 21, scope: !3825)
!3837 = !DILocation(line: 57, column: 21, scope: !3825)
!3838 = !DILocation(line: 58, column: 21, scope: !3825)
!3839 = !DILocation(line: 60, column: 15, scope: !3825)
!3840 = !DILocation(line: 61, column: 15, scope: !3825)
!3841 = !DILocation(line: 62, column: 15, scope: !3825)
!3842 = !DILocation(line: 63, column: 15, scope: !3825)
!3843 = !DILocation(line: 65, column: 15, scope: !3825)
!3844 = !DILocation(line: 66, column: 15, scope: !3825)
!3845 = !DILocation(line: 67, column: 21, scope: !3825)
!3846 = !DILocation(line: 68, column: 21, scope: !3825)
!3847 = !DILocation(line: 70, column: 21, scope: !3825)
!3848 = !DILocation(line: 71, column: 21, scope: !3825)
!3849 = !DILocation(line: 74, column: 37, scope: !3825)
!3850 = !DILocation(line: 74, column: 28, scope: !3825)
!3851 = !DILocation(line: 74, column: 21, scope: !3825)
!3852 = !DILocation(line: 75, column: 28, scope: !3825)
!3853 = !DILocation(line: 75, column: 33, scope: !3825)
!3854 = !DILocation(line: 75, column: 21, scope: !3825)
!3855 = !DILocation(line: 76, column: 28, scope: !3825)
!3856 = !DILocation(line: 76, column: 33, scope: !3825)
!3857 = !DILocation(line: 76, column: 21, scope: !3825)
!3858 = !DILocation(line: 79, column: 9, scope: !3825)
!3859 = !DILocation(line: 79, column: 14, scope: !3825)
!3860 = !DILocation(line: 79, column: 28, scope: !3825)
!3861 = !DILocation(line: 79, column: 33, scope: !3825)
!3862 = !DILocation(line: 79, column: 26, scope: !3825)
!3863 = !DILocation(line: 83, column: 21, scope: !3825)
!3864 = !DILocation(line: 83, column: 26, scope: !3825)
!3865 = !DILocation(line: 83, column: 19, scope: !3825)
!3866 = !DILocation(line: 84, column: 19, scope: !3825)
!3867 = !DILocation(line: 86, column: 37, scope: !3825)
!3868 = !DILocation(line: 86, column: 42, scope: !3825)
!3869 = !DILocation(line: 86, column: 25, scope: !3825)
!3870 = !DILocation(line: 88, column: 13, scope: !3825)
!3871 = !DILocation(line: 88, column: 23, scope: !3825)
!3872 = !DILocation(line: 89, column: 22, scope: !3825)
!3873 = !DILocation(line: 89, column: 13, scope: !3825)
!3874 = !DILocation(line: 91, column: 18, scope: !3825)
!3875 = !DILocation(line: 91, column: 28, scope: !3825)
!3876 = !DILocation(line: 92, column: 26, scope: !3825)
!3877 = !DILocation(line: 92, column: 36, scope: !3825)
!3878 = !DILocation(line: 92, column: 23, scope: !3825)
!3879 = !DILocation(line: 92, column: 13, scope: !3825)
!3880 = !DILocation(line: 93, column: 5, scope: !3825)
!3881 = !DILocation(line: 94, column: 14, scope: !3825)
!3882 = !DILocation(line: 94, column: 19, scope: !3825)
!3883 = !DILocation(line: 98, column: 19, scope: !3825)
!3884 = !DILocation(line: 99, column: 19, scope: !3825)
!3885 = !DILocation(line: 100, column: 24, scope: !3825)
!3886 = !DILocation(line: 100, column: 29, scope: !3825)
!3887 = !DILocation(line: 100, column: 43, scope: !3825)
!3888 = !DILocation(line: 100, column: 73, scope: !3825)
!3889 = !DILocation(line: 100, column: 19, scope: !3825)
!3890 = !DILocation(line: 101, column: 5, scope: !3825)
!3891 = !DILocation(line: 102, column: 14, scope: !3825)
!3892 = !DILocation(line: 102, column: 19, scope: !3825)
!3893 = !DILocation(line: 104, column: 19, scope: !3825)
!3894 = !DILocation(line: 105, column: 5, scope: !3825)
!3895 = !DILocation(line: 110, column: 26, scope: !3825)
!3896 = !DILocation(line: 110, column: 31, scope: !3825)
!3897 = !DILocation(line: 110, column: 19, scope: !3825)
!3898 = !DILocation(line: 111, column: 53, scope: !3825)
!3899 = !DILocation(line: 111, column: 51, scope: !3825)
!3900 = !DILocation(line: 111, column: 58, scope: !3825)
!3901 = !DILocation(line: 111, column: 19, scope: !3825)
!3902 = !DILocation(line: 113, column: 40, scope: !3825)
!3903 = !DILocation(line: 113, column: 45, scope: !3825)
!3904 = !DILocation(line: 113, column: 67, scope: !3825)
!3905 = !DILocation(line: 113, column: 25, scope: !3825)
!3906 = !DILocation(line: 116, column: 13, scope: !3825)
!3907 = !DILocation(line: 116, column: 19, scope: !3825)
!3908 = !DILocation(line: 117, column: 23, scope: !3825)
!3909 = !DILocation(line: 118, column: 9, scope: !3825)
!3910 = !DILocation(line: 119, column: 33, scope: !3825)
!3911 = !DILocation(line: 119, column: 59, scope: !3825)
!3912 = !DILocation(line: 119, column: 57, scope: !3825)
!3913 = !DILocation(line: 119, column: 45, scope: !3825)
!3914 = !DILocation(line: 119, column: 24, scope: !3825)
!3915 = !DILocation(line: 120, column: 49, scope: !3825)
!3916 = !DILocation(line: 120, column: 64, scope: !3825)
!3917 = !DILocation(line: 120, column: 61, scope: !3825)
!3918 = !DILocation(line: 120, column: 72, scope: !3825)
!3919 = !DILocation(line: 120, column: 70, scope: !3825)
!3920 = !DILocation(line: 120, column: 23, scope: !3825)
!3921 = !DILocation(line: 121, column: 25, scope: !3825)
!3922 = !DILocation(line: 121, column: 49, scope: !3825)
!3923 = !DILocation(line: 121, column: 23, scope: !3825)
!3924 = !DILocation(line: 122, column: 41, scope: !3825)
!3925 = !DILocation(line: 122, column: 65, scope: !3825)
!3926 = !DILocation(line: 122, column: 29, scope: !3825)
!3927 = !DILocation(line: 124, column: 17, scope: !3825)
!3928 = !DILocation(line: 124, column: 27, scope: !3825)
!3929 = !DILocation(line: 125, column: 26, scope: !3825)
!3930 = !DILocation(line: 125, column: 17, scope: !3825)
!3931 = !DILocation(line: 127, column: 22, scope: !3825)
!3932 = !DILocation(line: 127, column: 32, scope: !3825)
!3933 = !DILocation(line: 128, column: 30, scope: !3825)
!3934 = !DILocation(line: 128, column: 40, scope: !3825)
!3935 = !DILocation(line: 128, column: 27, scope: !3825)
!3936 = !DILocation(line: 128, column: 17, scope: !3825)
!3937 = !DILocation(line: 133, column: 30, scope: !3825)
!3938 = !DILocation(line: 133, column: 42, scope: !3825)
!3939 = !DILocation(line: 133, column: 47, scope: !3825)
!3940 = !DILocation(line: 133, column: 40, scope: !3825)
!3941 = !DILocation(line: 133, column: 21, scope: !3825)
!3942 = !DILocation(line: 134, column: 23, scope: !3825)
!3943 = !DILocation(line: 134, column: 12, scope: !3825)
!3944 = !DILocation(line: 134, column: 5, scope: !3825)
!3945 = distinct !DISubprogram(name: "srcToRep", scope: !3677, file: !3677, line: 66, type: !136, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !137)
!3946 = !DILocation(line: 67, column: 49, scope: !3945)
!3947 = !DILocation(line: 67, column: 55, scope: !3945)
!3948 = !DILocation(line: 68, column: 16, scope: !3945)
!3949 = !DILocation(line: 68, column: 5, scope: !3945)
!3950 = distinct !DISubprogram(name: "dstFromRep", scope: !3677, file: !3677, line: 71, type: !136, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !137)
!3951 = !DILocation(line: 72, column: 49, scope: !3950)
!3952 = !DILocation(line: 72, column: 55, scope: !3950)
!3953 = !DILocation(line: 73, column: 16, scope: !3950)
!3954 = !DILocation(line: 73, column: 5, scope: !3950)
!3955 = distinct !DISubprogram(name: "__gnu_f2h_ieee", scope: !127, file: !127, line: 22, type: !136, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !137)
!3956 = !DILocation(line: 23, column: 25, scope: !3955)
!3957 = !DILocation(line: 23, column: 12, scope: !3955)
!3958 = !DILocation(line: 23, column: 5, scope: !3955)
