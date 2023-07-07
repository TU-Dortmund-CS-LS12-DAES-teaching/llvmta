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
define dso_local double @__adddf3(double noundef %a, double noundef %b) #0 !dbg !137 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !140
  %1 = load double, double* %b.addr, align 8, !dbg !141
  %call = call double @__addXf3__(double noundef %0, double noundef %1) #4, !dbg !142
  ret double %call, !dbg !143
}

; Function Attrs: noinline nounwind
define internal double @__addXf3__(double noundef %a, double noundef %b) #0 !dbg !144 {
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
  %0 = load double, double* %a.addr, align 8, !dbg !146
  %call = call i64 @toRep(double noundef %0) #4, !dbg !147
  store i64 %call, i64* %aRep, align 8, !dbg !148
  %1 = load double, double* %b.addr, align 8, !dbg !149
  %call1 = call i64 @toRep(double noundef %1) #4, !dbg !150
  store i64 %call1, i64* %bRep, align 8, !dbg !151
  %2 = load i64, i64* %aRep, align 8, !dbg !152
  %and = and i64 %2, 9223372036854775807, !dbg !153
  store i64 %and, i64* %aAbs, align 8, !dbg !154
  %3 = load i64, i64* %bRep, align 8, !dbg !155
  %and2 = and i64 %3, 9223372036854775807, !dbg !156
  store i64 %and2, i64* %bAbs, align 8, !dbg !157
  %4 = load i64, i64* %aAbs, align 8, !dbg !158
  %sub = sub i64 %4, 1, !dbg !159
  %cmp = icmp uge i64 %sub, 9218868437227405311, !dbg !160
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !161

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %bAbs, align 8, !dbg !162
  %sub3 = sub i64 %5, 1, !dbg !163
  %cmp4 = icmp uge i64 %sub3, 9218868437227405311, !dbg !164
  br i1 %cmp4, label %if.then, label %if.end38, !dbg !158

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, i64* %aAbs, align 8, !dbg !165
  %cmp5 = icmp ugt i64 %6, 9218868437227405312, !dbg !166
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !165

if.then6:                                         ; preds = %if.then
  %7 = load double, double* %a.addr, align 8, !dbg !167
  %call7 = call i64 @toRep(double noundef %7) #4, !dbg !168
  %or = or i64 %call7, 2251799813685248, !dbg !169
  %call8 = call double @fromRep(i64 noundef %or) #4, !dbg !170
  store double %call8, double* %retval, align 8, !dbg !171
  br label %return, !dbg !171

if.end:                                           ; preds = %if.then
  %8 = load i64, i64* %bAbs, align 8, !dbg !172
  %cmp9 = icmp ugt i64 %8, 9218868437227405312, !dbg !173
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !172

if.then10:                                        ; preds = %if.end
  %9 = load double, double* %b.addr, align 8, !dbg !174
  %call11 = call i64 @toRep(double noundef %9) #4, !dbg !175
  %or12 = or i64 %call11, 2251799813685248, !dbg !176
  %call13 = call double @fromRep(i64 noundef %or12) #4, !dbg !177
  store double %call13, double* %retval, align 8, !dbg !178
  br label %return, !dbg !178

if.end14:                                         ; preds = %if.end
  %10 = load i64, i64* %aAbs, align 8, !dbg !179
  %cmp15 = icmp eq i64 %10, 9218868437227405312, !dbg !180
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !179

if.then16:                                        ; preds = %if.end14
  %11 = load double, double* %a.addr, align 8, !dbg !181
  %call17 = call i64 @toRep(double noundef %11) #4, !dbg !182
  %12 = load double, double* %b.addr, align 8, !dbg !183
  %call18 = call i64 @toRep(double noundef %12) #4, !dbg !184
  %xor = xor i64 %call17, %call18, !dbg !185
  %cmp19 = icmp eq i64 %xor, -9223372036854775808, !dbg !186
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !187

if.then20:                                        ; preds = %if.then16
  %call21 = call double @fromRep(i64 noundef 9221120237041090560) #4, !dbg !188
  store double %call21, double* %retval, align 8, !dbg !189
  br label %return, !dbg !189

if.else:                                          ; preds = %if.then16
  %13 = load double, double* %a.addr, align 8, !dbg !190
  store double %13, double* %retval, align 8, !dbg !191
  br label %return, !dbg !191

if.end22:                                         ; preds = %if.end14
  %14 = load i64, i64* %bAbs, align 8, !dbg !192
  %cmp23 = icmp eq i64 %14, 9218868437227405312, !dbg !193
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !192

if.then24:                                        ; preds = %if.end22
  %15 = load double, double* %b.addr, align 8, !dbg !194
  store double %15, double* %retval, align 8, !dbg !195
  br label %return, !dbg !195

if.end25:                                         ; preds = %if.end22
  %16 = load i64, i64* %aAbs, align 8, !dbg !196
  %tobool = icmp ne i64 %16, 0, !dbg !196
  br i1 %tobool, label %if.end34, label %if.then26, !dbg !197

if.then26:                                        ; preds = %if.end25
  %17 = load i64, i64* %bAbs, align 8, !dbg !198
  %tobool27 = icmp ne i64 %17, 0, !dbg !198
  br i1 %tobool27, label %if.else33, label %if.then28, !dbg !199

if.then28:                                        ; preds = %if.then26
  %18 = load double, double* %a.addr, align 8, !dbg !200
  %call29 = call i64 @toRep(double noundef %18) #4, !dbg !201
  %19 = load double, double* %b.addr, align 8, !dbg !202
  %call30 = call i64 @toRep(double noundef %19) #4, !dbg !203
  %and31 = and i64 %call29, %call30, !dbg !204
  %call32 = call double @fromRep(i64 noundef %and31) #4, !dbg !205
  store double %call32, double* %retval, align 8, !dbg !206
  br label %return, !dbg !206

if.else33:                                        ; preds = %if.then26
  %20 = load double, double* %b.addr, align 8, !dbg !207
  store double %20, double* %retval, align 8, !dbg !208
  br label %return, !dbg !208

if.end34:                                         ; preds = %if.end25
  %21 = load i64, i64* %bAbs, align 8, !dbg !209
  %tobool35 = icmp ne i64 %21, 0, !dbg !209
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !210

if.then36:                                        ; preds = %if.end34
  %22 = load double, double* %a.addr, align 8, !dbg !211
  store double %22, double* %retval, align 8, !dbg !212
  br label %return, !dbg !212

if.end37:                                         ; preds = %if.end34
  br label %if.end38, !dbg !213

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %23 = load i64, i64* %bAbs, align 8, !dbg !214
  %24 = load i64, i64* %aAbs, align 8, !dbg !215
  %cmp39 = icmp ugt i64 %23, %24, !dbg !216
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !214

if.then40:                                        ; preds = %if.end38
  %25 = load i64, i64* %aRep, align 8, !dbg !217
  store i64 %25, i64* %temp, align 8, !dbg !218
  %26 = load i64, i64* %bRep, align 8, !dbg !219
  store i64 %26, i64* %aRep, align 8, !dbg !220
  %27 = load i64, i64* %temp, align 8, !dbg !221
  store i64 %27, i64* %bRep, align 8, !dbg !222
  br label %if.end41, !dbg !223

if.end41:                                         ; preds = %if.then40, %if.end38
  %28 = load i64, i64* %aRep, align 8, !dbg !224
  %shr = lshr i64 %28, 52, !dbg !225
  %and42 = and i64 %shr, 2047, !dbg !226
  %conv = trunc i64 %and42 to i32, !dbg !224
  store i32 %conv, i32* %aExponent, align 4, !dbg !227
  %29 = load i64, i64* %bRep, align 8, !dbg !228
  %shr43 = lshr i64 %29, 52, !dbg !229
  %and44 = and i64 %shr43, 2047, !dbg !230
  %conv45 = trunc i64 %and44 to i32, !dbg !228
  store i32 %conv45, i32* %bExponent, align 4, !dbg !231
  %30 = load i64, i64* %aRep, align 8, !dbg !232
  %and46 = and i64 %30, 4503599627370495, !dbg !233
  store i64 %and46, i64* %aSignificand, align 8, !dbg !234
  %31 = load i64, i64* %bRep, align 8, !dbg !235
  %and47 = and i64 %31, 4503599627370495, !dbg !236
  store i64 %and47, i64* %bSignificand, align 8, !dbg !237
  %32 = load i32, i32* %aExponent, align 4, !dbg !238
  %cmp48 = icmp eq i32 %32, 0, !dbg !239
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !238

if.then50:                                        ; preds = %if.end41
  %call51 = call i32 @normalize(i64* noundef %aSignificand) #4, !dbg !240
  store i32 %call51, i32* %aExponent, align 4, !dbg !241
  br label %if.end52, !dbg !242

if.end52:                                         ; preds = %if.then50, %if.end41
  %33 = load i32, i32* %bExponent, align 4, !dbg !243
  %cmp53 = icmp eq i32 %33, 0, !dbg !244
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !243

if.then55:                                        ; preds = %if.end52
  %call56 = call i32 @normalize(i64* noundef %bSignificand) #4, !dbg !245
  store i32 %call56, i32* %bExponent, align 4, !dbg !246
  br label %if.end57, !dbg !247

if.end57:                                         ; preds = %if.then55, %if.end52
  %34 = load i64, i64* %aRep, align 8, !dbg !248
  %and58 = and i64 %34, -9223372036854775808, !dbg !249
  store i64 %and58, i64* %resultSign, align 8, !dbg !250
  %35 = load i64, i64* %aRep, align 8, !dbg !251
  %36 = load i64, i64* %bRep, align 8, !dbg !252
  %xor59 = xor i64 %35, %36, !dbg !253
  %and60 = and i64 %xor59, -9223372036854775808, !dbg !254
  %tobool61 = icmp ne i64 %and60, 0, !dbg !255
  %frombool = zext i1 %tobool61 to i8, !dbg !256
  store i8 %frombool, i8* %subtraction, align 1, !dbg !256
  %37 = load i64, i64* %aSignificand, align 8, !dbg !257
  %or62 = or i64 %37, 4503599627370496, !dbg !258
  %shl = shl i64 %or62, 3, !dbg !259
  store i64 %shl, i64* %aSignificand, align 8, !dbg !260
  %38 = load i64, i64* %bSignificand, align 8, !dbg !261
  %or63 = or i64 %38, 4503599627370496, !dbg !262
  %shl64 = shl i64 %or63, 3, !dbg !263
  store i64 %shl64, i64* %bSignificand, align 8, !dbg !264
  %39 = load i32, i32* %aExponent, align 4, !dbg !265
  %40 = load i32, i32* %bExponent, align 4, !dbg !266
  %sub65 = sub nsw i32 %39, %40, !dbg !267
  store i32 %sub65, i32* %align, align 4, !dbg !268
  %41 = load i32, i32* %align, align 4, !dbg !269
  %tobool66 = icmp ne i32 %41, 0, !dbg !269
  br i1 %tobool66, label %if.then67, label %if.end82, !dbg !269

if.then67:                                        ; preds = %if.end57
  %42 = load i32, i32* %align, align 4, !dbg !270
  %cmp68 = icmp ult i32 %42, 64, !dbg !271
  br i1 %cmp68, label %if.then70, label %if.else80, !dbg !270

if.then70:                                        ; preds = %if.then67
  %43 = load i64, i64* %bSignificand, align 8, !dbg !272
  %44 = load i32, i32* %align, align 4, !dbg !273
  %sub71 = sub i32 64, %44, !dbg !274
  %sh_prom = zext i32 %sub71 to i64, !dbg !275
  %shl72 = shl i64 %43, %sh_prom, !dbg !275
  %tobool73 = icmp ne i64 %shl72, 0, !dbg !272
  %frombool74 = zext i1 %tobool73 to i8, !dbg !276
  store i8 %frombool74, i8* %sticky, align 1, !dbg !276
  %45 = load i64, i64* %bSignificand, align 8, !dbg !277
  %46 = load i32, i32* %align, align 4, !dbg !278
  %sh_prom75 = zext i32 %46 to i64, !dbg !279
  %shr76 = lshr i64 %45, %sh_prom75, !dbg !279
  %47 = load i8, i8* %sticky, align 1, !dbg !280
  %tobool77 = trunc i8 %47 to i1, !dbg !280
  %conv78 = zext i1 %tobool77 to i64, !dbg !280
  %or79 = or i64 %shr76, %conv78, !dbg !281
  store i64 %or79, i64* %bSignificand, align 8, !dbg !282
  br label %if.end81, !dbg !283

if.else80:                                        ; preds = %if.then67
  store i64 1, i64* %bSignificand, align 8, !dbg !284
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then70
  br label %if.end82, !dbg !285

if.end82:                                         ; preds = %if.end81, %if.end57
  %48 = load i8, i8* %subtraction, align 1, !dbg !286
  %tobool83 = trunc i8 %48 to i1, !dbg !286
  br i1 %tobool83, label %if.then84, label %if.else101, !dbg !286

if.then84:                                        ; preds = %if.end82
  %49 = load i64, i64* %bSignificand, align 8, !dbg !287
  %50 = load i64, i64* %aSignificand, align 8, !dbg !288
  %sub85 = sub i64 %50, %49, !dbg !288
  store i64 %sub85, i64* %aSignificand, align 8, !dbg !288
  %51 = load i64, i64* %aSignificand, align 8, !dbg !289
  %cmp86 = icmp eq i64 %51, 0, !dbg !290
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !289

if.then88:                                        ; preds = %if.then84
  %call89 = call double @fromRep(i64 noundef 0) #4, !dbg !291
  store double %call89, double* %retval, align 8, !dbg !292
  br label %return, !dbg !292

if.end90:                                         ; preds = %if.then84
  %52 = load i64, i64* %aSignificand, align 8, !dbg !293
  %cmp91 = icmp ult i64 %52, 36028797018963968, !dbg !294
  br i1 %cmp91, label %if.then93, label %if.end100, !dbg !293

if.then93:                                        ; preds = %if.end90
  %53 = load i64, i64* %aSignificand, align 8, !dbg !295
  %call94 = call i32 @rep_clz(i64 noundef %53) #4, !dbg !296
  %call95 = call i32 @rep_clz(i64 noundef 36028797018963968) #4, !dbg !297
  %sub96 = sub nsw i32 %call94, %call95, !dbg !298
  store i32 %sub96, i32* %shift, align 4, !dbg !299
  %54 = load i32, i32* %shift, align 4, !dbg !300
  %55 = load i64, i64* %aSignificand, align 8, !dbg !301
  %sh_prom97 = zext i32 %54 to i64, !dbg !301
  %shl98 = shl i64 %55, %sh_prom97, !dbg !301
  store i64 %shl98, i64* %aSignificand, align 8, !dbg !301
  %56 = load i32, i32* %shift, align 4, !dbg !302
  %57 = load i32, i32* %aExponent, align 4, !dbg !303
  %sub99 = sub nsw i32 %57, %56, !dbg !303
  store i32 %sub99, i32* %aExponent, align 4, !dbg !303
  br label %if.end100, !dbg !304

if.end100:                                        ; preds = %if.then93, %if.end90
  br label %if.end115, !dbg !305

if.else101:                                       ; preds = %if.end82
  %58 = load i64, i64* %bSignificand, align 8, !dbg !306
  %59 = load i64, i64* %aSignificand, align 8, !dbg !307
  %add = add i64 %59, %58, !dbg !307
  store i64 %add, i64* %aSignificand, align 8, !dbg !307
  %60 = load i64, i64* %aSignificand, align 8, !dbg !308
  %and102 = and i64 %60, 72057594037927936, !dbg !309
  %tobool103 = icmp ne i64 %and102, 0, !dbg !309
  br i1 %tobool103, label %if.then104, label %if.end114, !dbg !308

if.then104:                                       ; preds = %if.else101
  %61 = load i64, i64* %aSignificand, align 8, !dbg !310
  %and106 = and i64 %61, 1, !dbg !311
  %tobool107 = icmp ne i64 %and106, 0, !dbg !310
  %frombool108 = zext i1 %tobool107 to i8, !dbg !312
  store i8 %frombool108, i8* %sticky105, align 1, !dbg !312
  %62 = load i64, i64* %aSignificand, align 8, !dbg !313
  %shr109 = lshr i64 %62, 1, !dbg !314
  %63 = load i8, i8* %sticky105, align 1, !dbg !315
  %tobool110 = trunc i8 %63 to i1, !dbg !315
  %conv111 = zext i1 %tobool110 to i64, !dbg !315
  %or112 = or i64 %shr109, %conv111, !dbg !316
  store i64 %or112, i64* %aSignificand, align 8, !dbg !317
  %64 = load i32, i32* %aExponent, align 4, !dbg !318
  %add113 = add nsw i32 %64, 1, !dbg !318
  store i32 %add113, i32* %aExponent, align 4, !dbg !318
  br label %if.end114, !dbg !319

if.end114:                                        ; preds = %if.then104, %if.else101
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end100
  %65 = load i32, i32* %aExponent, align 4, !dbg !320
  %cmp116 = icmp sge i32 %65, 2047, !dbg !321
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !320

if.then118:                                       ; preds = %if.end115
  %66 = load i64, i64* %resultSign, align 8, !dbg !322
  %or119 = or i64 9218868437227405312, %66, !dbg !323
  %call120 = call double @fromRep(i64 noundef %or119) #4, !dbg !324
  store double %call120, double* %retval, align 8, !dbg !325
  br label %return, !dbg !325

if.end121:                                        ; preds = %if.end115
  %67 = load i32, i32* %aExponent, align 4, !dbg !326
  %cmp122 = icmp sle i32 %67, 0, !dbg !327
  br i1 %cmp122, label %if.then124, label %if.end138, !dbg !326

if.then124:                                       ; preds = %if.end121
  %68 = load i32, i32* %aExponent, align 4, !dbg !328
  %sub126 = sub nsw i32 1, %68, !dbg !329
  store i32 %sub126, i32* %shift125, align 4, !dbg !330
  %69 = load i64, i64* %aSignificand, align 8, !dbg !331
  %70 = load i32, i32* %shift125, align 4, !dbg !332
  %sub128 = sub i32 64, %70, !dbg !333
  %sh_prom129 = zext i32 %sub128 to i64, !dbg !334
  %shl130 = shl i64 %69, %sh_prom129, !dbg !334
  %tobool131 = icmp ne i64 %shl130, 0, !dbg !331
  %frombool132 = zext i1 %tobool131 to i8, !dbg !335
  store i8 %frombool132, i8* %sticky127, align 1, !dbg !335
  %71 = load i64, i64* %aSignificand, align 8, !dbg !336
  %72 = load i32, i32* %shift125, align 4, !dbg !337
  %sh_prom133 = zext i32 %72 to i64, !dbg !338
  %shr134 = lshr i64 %71, %sh_prom133, !dbg !338
  %73 = load i8, i8* %sticky127, align 1, !dbg !339
  %tobool135 = trunc i8 %73 to i1, !dbg !339
  %conv136 = zext i1 %tobool135 to i64, !dbg !339
  %or137 = or i64 %shr134, %conv136, !dbg !340
  store i64 %or137, i64* %aSignificand, align 8, !dbg !341
  store i32 0, i32* %aExponent, align 4, !dbg !342
  br label %if.end138, !dbg !343

if.end138:                                        ; preds = %if.then124, %if.end121
  %74 = load i64, i64* %aSignificand, align 8, !dbg !344
  %and139 = and i64 %74, 7, !dbg !345
  %conv140 = trunc i64 %and139 to i32, !dbg !344
  store i32 %conv140, i32* %roundGuardSticky, align 4, !dbg !346
  %75 = load i64, i64* %aSignificand, align 8, !dbg !347
  %shr141 = lshr i64 %75, 3, !dbg !348
  %and142 = and i64 %shr141, 4503599627370495, !dbg !349
  store i64 %and142, i64* %result, align 8, !dbg !350
  %76 = load i32, i32* %aExponent, align 4, !dbg !351
  %conv143 = sext i32 %76 to i64, !dbg !352
  %shl144 = shl i64 %conv143, 52, !dbg !353
  %77 = load i64, i64* %result, align 8, !dbg !354
  %or145 = or i64 %77, %shl144, !dbg !354
  store i64 %or145, i64* %result, align 8, !dbg !354
  %78 = load i64, i64* %resultSign, align 8, !dbg !355
  %79 = load i64, i64* %result, align 8, !dbg !356
  %or146 = or i64 %79, %78, !dbg !356
  store i64 %or146, i64* %result, align 8, !dbg !356
  %80 = load i32, i32* %roundGuardSticky, align 4, !dbg !357
  %cmp147 = icmp sgt i32 %80, 4, !dbg !358
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !357

if.then149:                                       ; preds = %if.end138
  %81 = load i64, i64* %result, align 8, !dbg !359
  %inc = add i64 %81, 1, !dbg !359
  store i64 %inc, i64* %result, align 8, !dbg !359
  br label %if.end150, !dbg !360

if.end150:                                        ; preds = %if.then149, %if.end138
  %82 = load i32, i32* %roundGuardSticky, align 4, !dbg !361
  %cmp151 = icmp eq i32 %82, 4, !dbg !362
  br i1 %cmp151, label %if.then153, label %if.end156, !dbg !361

if.then153:                                       ; preds = %if.end150
  %83 = load i64, i64* %result, align 8, !dbg !363
  %and154 = and i64 %83, 1, !dbg !364
  %84 = load i64, i64* %result, align 8, !dbg !365
  %add155 = add i64 %84, %and154, !dbg !365
  store i64 %add155, i64* %result, align 8, !dbg !365
  br label %if.end156, !dbg !366

if.end156:                                        ; preds = %if.then153, %if.end150
  %85 = load i64, i64* %result, align 8, !dbg !367
  %call157 = call double @fromRep(i64 noundef %85) #4, !dbg !368
  store double %call157, double* %retval, align 8, !dbg !369
  br label %return, !dbg !369

return:                                           ; preds = %if.end156, %if.then118, %if.then88, %if.then36, %if.else33, %if.then28, %if.then24, %if.else, %if.then20, %if.then10, %if.then6
  %86 = load double, double* %retval, align 8, !dbg !370
  ret double %86, !dbg !370
}

; Function Attrs: noinline nounwind
define internal i64 @toRep(double noundef %x) #0 !dbg !371 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !373
  %0 = load double, double* %x.addr, align 8, !dbg !374
  store double %0, double* %f, align 8, !dbg !373
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !375
  %1 = load i64, i64* %i, align 8, !dbg !375
  ret i64 %1, !dbg !376
}

; Function Attrs: noinline nounwind
define internal double @fromRep(i64 noundef %x) #0 !dbg !377 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !378
  %0 = load i64, i64* %x.addr, align 8, !dbg !379
  store i64 %0, i64* %i, align 8, !dbg !378
  %f = bitcast %union.anon.0* %rep to double*, !dbg !380
  %1 = load double, double* %f, align 8, !dbg !380
  ret double %1, !dbg !381
}

; Function Attrs: noinline nounwind
define internal i32 @normalize(i64* noundef %significand) #0 !dbg !382 {
entry:
  %significand.addr = alloca i64*, align 4
  %shift = alloca i32, align 4
  store i64* %significand, i64** %significand.addr, align 4
  %0 = load i64*, i64** %significand.addr, align 4, !dbg !383
  %1 = load i64, i64* %0, align 8, !dbg !384
  %call = call i32 @rep_clz(i64 noundef %1) #4, !dbg !385
  %call1 = call i32 @rep_clz(i64 noundef 4503599627370496) #4, !dbg !386
  %sub = sub nsw i32 %call, %call1, !dbg !387
  store i32 %sub, i32* %shift, align 4, !dbg !388
  %2 = load i32, i32* %shift, align 4, !dbg !389
  %3 = load i64*, i64** %significand.addr, align 4, !dbg !390
  %4 = load i64, i64* %3, align 8, !dbg !391
  %sh_prom = zext i32 %2 to i64, !dbg !391
  %shl = shl i64 %4, %sh_prom, !dbg !391
  store i64 %shl, i64* %3, align 8, !dbg !391
  %5 = load i32, i32* %shift, align 4, !dbg !392
  %sub2 = sub nsw i32 1, %5, !dbg !393
  ret i32 %sub2, !dbg !394
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz(i64 noundef %a) #0 !dbg !395 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !396
  %and = and i64 %0, -4294967296, !dbg !397
  %tobool = icmp ne i64 %and, 0, !dbg !397
  br i1 %tobool, label %if.then, label %if.else, !dbg !396

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !398
  %shr = lshr i64 %1, 32, !dbg !399
  %conv = trunc i64 %shr to i32, !dbg !398
  %2 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true), !dbg !400
  store i32 %2, i32* %retval, align 4, !dbg !401
  br label %return, !dbg !401

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %a.addr, align 8, !dbg !402
  %and1 = and i64 %3, 4294967295, !dbg !403
  %conv2 = trunc i64 %and1 to i32, !dbg !402
  %4 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 true), !dbg !404
  %add = add nsw i32 32, %4, !dbg !405
  store i32 %add, i32* %retval, align 4, !dbg !406
  br label %return, !dbg !406

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !407
  ret i32 %5, !dbg !407
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local float @__addsf3(float noundef %a, float noundef %b) #0 !dbg !408 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !409
  %1 = load float, float* %b.addr, align 4, !dbg !410
  %call = call float @__addXf3__.1(float noundef %0, float noundef %1) #4, !dbg !411
  ret float %call, !dbg !412
}

; Function Attrs: noinline nounwind
define internal float @__addXf3__.1(float noundef %a, float noundef %b) #0 !dbg !413 {
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
  %0 = load float, float* %a.addr, align 4, !dbg !414
  %call = call i32 @toRep.2(float noundef %0) #4, !dbg !415
  store i32 %call, i32* %aRep, align 4, !dbg !416
  %1 = load float, float* %b.addr, align 4, !dbg !417
  %call1 = call i32 @toRep.2(float noundef %1) #4, !dbg !418
  store i32 %call1, i32* %bRep, align 4, !dbg !419
  %2 = load i32, i32* %aRep, align 4, !dbg !420
  %and = and i32 %2, 2147483647, !dbg !421
  store i32 %and, i32* %aAbs, align 4, !dbg !422
  %3 = load i32, i32* %bRep, align 4, !dbg !423
  %and2 = and i32 %3, 2147483647, !dbg !424
  store i32 %and2, i32* %bAbs, align 4, !dbg !425
  %4 = load i32, i32* %aAbs, align 4, !dbg !426
  %sub = sub i32 %4, 1, !dbg !427
  %cmp = icmp uge i32 %sub, 2139095039, !dbg !428
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !429

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %bAbs, align 4, !dbg !430
  %sub3 = sub i32 %5, 1, !dbg !431
  %cmp4 = icmp uge i32 %sub3, 2139095039, !dbg !432
  br i1 %cmp4, label %if.then, label %if.end38, !dbg !426

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %aAbs, align 4, !dbg !433
  %cmp5 = icmp ugt i32 %6, 2139095040, !dbg !434
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !433

if.then6:                                         ; preds = %if.then
  %7 = load float, float* %a.addr, align 4, !dbg !435
  %call7 = call i32 @toRep.2(float noundef %7) #4, !dbg !436
  %or = or i32 %call7, 4194304, !dbg !437
  %call8 = call float @fromRep.3(i32 noundef %or) #4, !dbg !438
  store float %call8, float* %retval, align 4, !dbg !439
  br label %return, !dbg !439

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %bAbs, align 4, !dbg !440
  %cmp9 = icmp ugt i32 %8, 2139095040, !dbg !441
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !440

if.then10:                                        ; preds = %if.end
  %9 = load float, float* %b.addr, align 4, !dbg !442
  %call11 = call i32 @toRep.2(float noundef %9) #4, !dbg !443
  %or12 = or i32 %call11, 4194304, !dbg !444
  %call13 = call float @fromRep.3(i32 noundef %or12) #4, !dbg !445
  store float %call13, float* %retval, align 4, !dbg !446
  br label %return, !dbg !446

if.end14:                                         ; preds = %if.end
  %10 = load i32, i32* %aAbs, align 4, !dbg !447
  %cmp15 = icmp eq i32 %10, 2139095040, !dbg !448
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !447

if.then16:                                        ; preds = %if.end14
  %11 = load float, float* %a.addr, align 4, !dbg !449
  %call17 = call i32 @toRep.2(float noundef %11) #4, !dbg !450
  %12 = load float, float* %b.addr, align 4, !dbg !451
  %call18 = call i32 @toRep.2(float noundef %12) #4, !dbg !452
  %xor = xor i32 %call17, %call18, !dbg !453
  %cmp19 = icmp eq i32 %xor, -2147483648, !dbg !454
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !455

if.then20:                                        ; preds = %if.then16
  %call21 = call float @fromRep.3(i32 noundef 2143289344) #4, !dbg !456
  store float %call21, float* %retval, align 4, !dbg !457
  br label %return, !dbg !457

if.else:                                          ; preds = %if.then16
  %13 = load float, float* %a.addr, align 4, !dbg !458
  store float %13, float* %retval, align 4, !dbg !459
  br label %return, !dbg !459

if.end22:                                         ; preds = %if.end14
  %14 = load i32, i32* %bAbs, align 4, !dbg !460
  %cmp23 = icmp eq i32 %14, 2139095040, !dbg !461
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !460

if.then24:                                        ; preds = %if.end22
  %15 = load float, float* %b.addr, align 4, !dbg !462
  store float %15, float* %retval, align 4, !dbg !463
  br label %return, !dbg !463

if.end25:                                         ; preds = %if.end22
  %16 = load i32, i32* %aAbs, align 4, !dbg !464
  %tobool = icmp ne i32 %16, 0, !dbg !464
  br i1 %tobool, label %if.end34, label %if.then26, !dbg !465

if.then26:                                        ; preds = %if.end25
  %17 = load i32, i32* %bAbs, align 4, !dbg !466
  %tobool27 = icmp ne i32 %17, 0, !dbg !466
  br i1 %tobool27, label %if.else33, label %if.then28, !dbg !467

if.then28:                                        ; preds = %if.then26
  %18 = load float, float* %a.addr, align 4, !dbg !468
  %call29 = call i32 @toRep.2(float noundef %18) #4, !dbg !469
  %19 = load float, float* %b.addr, align 4, !dbg !470
  %call30 = call i32 @toRep.2(float noundef %19) #4, !dbg !471
  %and31 = and i32 %call29, %call30, !dbg !472
  %call32 = call float @fromRep.3(i32 noundef %and31) #4, !dbg !473
  store float %call32, float* %retval, align 4, !dbg !474
  br label %return, !dbg !474

if.else33:                                        ; preds = %if.then26
  %20 = load float, float* %b.addr, align 4, !dbg !475
  store float %20, float* %retval, align 4, !dbg !476
  br label %return, !dbg !476

if.end34:                                         ; preds = %if.end25
  %21 = load i32, i32* %bAbs, align 4, !dbg !477
  %tobool35 = icmp ne i32 %21, 0, !dbg !477
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !478

if.then36:                                        ; preds = %if.end34
  %22 = load float, float* %a.addr, align 4, !dbg !479
  store float %22, float* %retval, align 4, !dbg !480
  br label %return, !dbg !480

if.end37:                                         ; preds = %if.end34
  br label %if.end38, !dbg !481

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %23 = load i32, i32* %bAbs, align 4, !dbg !482
  %24 = load i32, i32* %aAbs, align 4, !dbg !483
  %cmp39 = icmp ugt i32 %23, %24, !dbg !484
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !482

if.then40:                                        ; preds = %if.end38
  %25 = load i32, i32* %aRep, align 4, !dbg !485
  store i32 %25, i32* %temp, align 4, !dbg !486
  %26 = load i32, i32* %bRep, align 4, !dbg !487
  store i32 %26, i32* %aRep, align 4, !dbg !488
  %27 = load i32, i32* %temp, align 4, !dbg !489
  store i32 %27, i32* %bRep, align 4, !dbg !490
  br label %if.end41, !dbg !491

if.end41:                                         ; preds = %if.then40, %if.end38
  %28 = load i32, i32* %aRep, align 4, !dbg !492
  %shr = lshr i32 %28, 23, !dbg !493
  %and42 = and i32 %shr, 255, !dbg !494
  store i32 %and42, i32* %aExponent, align 4, !dbg !495
  %29 = load i32, i32* %bRep, align 4, !dbg !496
  %shr43 = lshr i32 %29, 23, !dbg !497
  %and44 = and i32 %shr43, 255, !dbg !498
  store i32 %and44, i32* %bExponent, align 4, !dbg !499
  %30 = load i32, i32* %aRep, align 4, !dbg !500
  %and45 = and i32 %30, 8388607, !dbg !501
  store i32 %and45, i32* %aSignificand, align 4, !dbg !502
  %31 = load i32, i32* %bRep, align 4, !dbg !503
  %and46 = and i32 %31, 8388607, !dbg !504
  store i32 %and46, i32* %bSignificand, align 4, !dbg !505
  %32 = load i32, i32* %aExponent, align 4, !dbg !506
  %cmp47 = icmp eq i32 %32, 0, !dbg !507
  br i1 %cmp47, label %if.then48, label %if.end50, !dbg !506

if.then48:                                        ; preds = %if.end41
  %call49 = call i32 @normalize.4(i32* noundef %aSignificand) #4, !dbg !508
  store i32 %call49, i32* %aExponent, align 4, !dbg !509
  br label %if.end50, !dbg !510

if.end50:                                         ; preds = %if.then48, %if.end41
  %33 = load i32, i32* %bExponent, align 4, !dbg !511
  %cmp51 = icmp eq i32 %33, 0, !dbg !512
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !511

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @normalize.4(i32* noundef %bSignificand) #4, !dbg !513
  store i32 %call53, i32* %bExponent, align 4, !dbg !514
  br label %if.end54, !dbg !515

if.end54:                                         ; preds = %if.then52, %if.end50
  %34 = load i32, i32* %aRep, align 4, !dbg !516
  %and55 = and i32 %34, -2147483648, !dbg !517
  store i32 %and55, i32* %resultSign, align 4, !dbg !518
  %35 = load i32, i32* %aRep, align 4, !dbg !519
  %36 = load i32, i32* %bRep, align 4, !dbg !520
  %xor56 = xor i32 %35, %36, !dbg !521
  %and57 = and i32 %xor56, -2147483648, !dbg !522
  %tobool58 = icmp ne i32 %and57, 0, !dbg !523
  %frombool = zext i1 %tobool58 to i8, !dbg !524
  store i8 %frombool, i8* %subtraction, align 1, !dbg !524
  %37 = load i32, i32* %aSignificand, align 4, !dbg !525
  %or59 = or i32 %37, 8388608, !dbg !526
  %shl = shl i32 %or59, 3, !dbg !527
  store i32 %shl, i32* %aSignificand, align 4, !dbg !528
  %38 = load i32, i32* %bSignificand, align 4, !dbg !529
  %or60 = or i32 %38, 8388608, !dbg !530
  %shl61 = shl i32 %or60, 3, !dbg !531
  store i32 %shl61, i32* %bSignificand, align 4, !dbg !532
  %39 = load i32, i32* %aExponent, align 4, !dbg !533
  %40 = load i32, i32* %bExponent, align 4, !dbg !534
  %sub62 = sub nsw i32 %39, %40, !dbg !535
  store i32 %sub62, i32* %align, align 4, !dbg !536
  %41 = load i32, i32* %align, align 4, !dbg !537
  %tobool63 = icmp ne i32 %41, 0, !dbg !537
  br i1 %tobool63, label %if.then64, label %if.end76, !dbg !537

if.then64:                                        ; preds = %if.end54
  %42 = load i32, i32* %align, align 4, !dbg !538
  %cmp65 = icmp ult i32 %42, 32, !dbg !539
  br i1 %cmp65, label %if.then66, label %if.else74, !dbg !538

if.then66:                                        ; preds = %if.then64
  %43 = load i32, i32* %bSignificand, align 4, !dbg !540
  %44 = load i32, i32* %align, align 4, !dbg !541
  %sub67 = sub i32 32, %44, !dbg !542
  %shl68 = shl i32 %43, %sub67, !dbg !543
  %tobool69 = icmp ne i32 %shl68, 0, !dbg !540
  %frombool70 = zext i1 %tobool69 to i8, !dbg !544
  store i8 %frombool70, i8* %sticky, align 1, !dbg !544
  %45 = load i32, i32* %bSignificand, align 4, !dbg !545
  %46 = load i32, i32* %align, align 4, !dbg !546
  %shr71 = lshr i32 %45, %46, !dbg !547
  %47 = load i8, i8* %sticky, align 1, !dbg !548
  %tobool72 = trunc i8 %47 to i1, !dbg !548
  %conv = zext i1 %tobool72 to i32, !dbg !548
  %or73 = or i32 %shr71, %conv, !dbg !549
  store i32 %or73, i32* %bSignificand, align 4, !dbg !550
  br label %if.end75, !dbg !551

if.else74:                                        ; preds = %if.then64
  store i32 1, i32* %bSignificand, align 4, !dbg !552
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then66
  br label %if.end76, !dbg !553

if.end76:                                         ; preds = %if.end75, %if.end54
  %48 = load i8, i8* %subtraction, align 1, !dbg !554
  %tobool77 = trunc i8 %48 to i1, !dbg !554
  br i1 %tobool77, label %if.then78, label %if.else94, !dbg !554

if.then78:                                        ; preds = %if.end76
  %49 = load i32, i32* %bSignificand, align 4, !dbg !555
  %50 = load i32, i32* %aSignificand, align 4, !dbg !556
  %sub79 = sub i32 %50, %49, !dbg !556
  store i32 %sub79, i32* %aSignificand, align 4, !dbg !556
  %51 = load i32, i32* %aSignificand, align 4, !dbg !557
  %cmp80 = icmp eq i32 %51, 0, !dbg !558
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !557

if.then82:                                        ; preds = %if.then78
  %call83 = call float @fromRep.3(i32 noundef 0) #4, !dbg !559
  store float %call83, float* %retval, align 4, !dbg !560
  br label %return, !dbg !560

if.end84:                                         ; preds = %if.then78
  %52 = load i32, i32* %aSignificand, align 4, !dbg !561
  %cmp85 = icmp ult i32 %52, 67108864, !dbg !562
  br i1 %cmp85, label %if.then87, label %if.end93, !dbg !561

if.then87:                                        ; preds = %if.end84
  %53 = load i32, i32* %aSignificand, align 4, !dbg !563
  %call88 = call i32 @rep_clz.5(i32 noundef %53) #4, !dbg !564
  %call89 = call i32 @rep_clz.5(i32 noundef 67108864) #4, !dbg !565
  %sub90 = sub nsw i32 %call88, %call89, !dbg !566
  store i32 %sub90, i32* %shift, align 4, !dbg !567
  %54 = load i32, i32* %shift, align 4, !dbg !568
  %55 = load i32, i32* %aSignificand, align 4, !dbg !569
  %shl91 = shl i32 %55, %54, !dbg !569
  store i32 %shl91, i32* %aSignificand, align 4, !dbg !569
  %56 = load i32, i32* %shift, align 4, !dbg !570
  %57 = load i32, i32* %aExponent, align 4, !dbg !571
  %sub92 = sub nsw i32 %57, %56, !dbg !571
  store i32 %sub92, i32* %aExponent, align 4, !dbg !571
  br label %if.end93, !dbg !572

if.end93:                                         ; preds = %if.then87, %if.end84
  br label %if.end108, !dbg !573

if.else94:                                        ; preds = %if.end76
  %58 = load i32, i32* %bSignificand, align 4, !dbg !574
  %59 = load i32, i32* %aSignificand, align 4, !dbg !575
  %add = add i32 %59, %58, !dbg !575
  store i32 %add, i32* %aSignificand, align 4, !dbg !575
  %60 = load i32, i32* %aSignificand, align 4, !dbg !576
  %and95 = and i32 %60, 134217728, !dbg !577
  %tobool96 = icmp ne i32 %and95, 0, !dbg !577
  br i1 %tobool96, label %if.then97, label %if.end107, !dbg !576

if.then97:                                        ; preds = %if.else94
  %61 = load i32, i32* %aSignificand, align 4, !dbg !578
  %and99 = and i32 %61, 1, !dbg !579
  %tobool100 = icmp ne i32 %and99, 0, !dbg !578
  %frombool101 = zext i1 %tobool100 to i8, !dbg !580
  store i8 %frombool101, i8* %sticky98, align 1, !dbg !580
  %62 = load i32, i32* %aSignificand, align 4, !dbg !581
  %shr102 = lshr i32 %62, 1, !dbg !582
  %63 = load i8, i8* %sticky98, align 1, !dbg !583
  %tobool103 = trunc i8 %63 to i1, !dbg !583
  %conv104 = zext i1 %tobool103 to i32, !dbg !583
  %or105 = or i32 %shr102, %conv104, !dbg !584
  store i32 %or105, i32* %aSignificand, align 4, !dbg !585
  %64 = load i32, i32* %aExponent, align 4, !dbg !586
  %add106 = add nsw i32 %64, 1, !dbg !586
  store i32 %add106, i32* %aExponent, align 4, !dbg !586
  br label %if.end107, !dbg !587

if.end107:                                        ; preds = %if.then97, %if.else94
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end93
  %65 = load i32, i32* %aExponent, align 4, !dbg !588
  %cmp109 = icmp sge i32 %65, 255, !dbg !589
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !588

if.then111:                                       ; preds = %if.end108
  %66 = load i32, i32* %resultSign, align 4, !dbg !590
  %or112 = or i32 2139095040, %66, !dbg !591
  %call113 = call float @fromRep.3(i32 noundef %or112) #4, !dbg !592
  store float %call113, float* %retval, align 4, !dbg !593
  br label %return, !dbg !593

if.end114:                                        ; preds = %if.end108
  %67 = load i32, i32* %aExponent, align 4, !dbg !594
  %cmp115 = icmp sle i32 %67, 0, !dbg !595
  br i1 %cmp115, label %if.then117, label %if.end129, !dbg !594

if.then117:                                       ; preds = %if.end114
  %68 = load i32, i32* %aExponent, align 4, !dbg !596
  %sub119 = sub nsw i32 1, %68, !dbg !597
  store i32 %sub119, i32* %shift118, align 4, !dbg !598
  %69 = load i32, i32* %aSignificand, align 4, !dbg !599
  %70 = load i32, i32* %shift118, align 4, !dbg !600
  %sub121 = sub i32 32, %70, !dbg !601
  %shl122 = shl i32 %69, %sub121, !dbg !602
  %tobool123 = icmp ne i32 %shl122, 0, !dbg !599
  %frombool124 = zext i1 %tobool123 to i8, !dbg !603
  store i8 %frombool124, i8* %sticky120, align 1, !dbg !603
  %71 = load i32, i32* %aSignificand, align 4, !dbg !604
  %72 = load i32, i32* %shift118, align 4, !dbg !605
  %shr125 = lshr i32 %71, %72, !dbg !606
  %73 = load i8, i8* %sticky120, align 1, !dbg !607
  %tobool126 = trunc i8 %73 to i1, !dbg !607
  %conv127 = zext i1 %tobool126 to i32, !dbg !607
  %or128 = or i32 %shr125, %conv127, !dbg !608
  store i32 %or128, i32* %aSignificand, align 4, !dbg !609
  store i32 0, i32* %aExponent, align 4, !dbg !610
  br label %if.end129, !dbg !611

if.end129:                                        ; preds = %if.then117, %if.end114
  %74 = load i32, i32* %aSignificand, align 4, !dbg !612
  %and130 = and i32 %74, 7, !dbg !613
  store i32 %and130, i32* %roundGuardSticky, align 4, !dbg !614
  %75 = load i32, i32* %aSignificand, align 4, !dbg !615
  %shr131 = lshr i32 %75, 3, !dbg !616
  %and132 = and i32 %shr131, 8388607, !dbg !617
  store i32 %and132, i32* %result, align 4, !dbg !618
  %76 = load i32, i32* %aExponent, align 4, !dbg !619
  %shl133 = shl i32 %76, 23, !dbg !620
  %77 = load i32, i32* %result, align 4, !dbg !621
  %or134 = or i32 %77, %shl133, !dbg !621
  store i32 %or134, i32* %result, align 4, !dbg !621
  %78 = load i32, i32* %resultSign, align 4, !dbg !622
  %79 = load i32, i32* %result, align 4, !dbg !623
  %or135 = or i32 %79, %78, !dbg !623
  store i32 %or135, i32* %result, align 4, !dbg !623
  %80 = load i32, i32* %roundGuardSticky, align 4, !dbg !624
  %cmp136 = icmp sgt i32 %80, 4, !dbg !625
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !624

if.then138:                                       ; preds = %if.end129
  %81 = load i32, i32* %result, align 4, !dbg !626
  %inc = add i32 %81, 1, !dbg !626
  store i32 %inc, i32* %result, align 4, !dbg !626
  br label %if.end139, !dbg !627

if.end139:                                        ; preds = %if.then138, %if.end129
  %82 = load i32, i32* %roundGuardSticky, align 4, !dbg !628
  %cmp140 = icmp eq i32 %82, 4, !dbg !629
  br i1 %cmp140, label %if.then142, label %if.end145, !dbg !628

if.then142:                                       ; preds = %if.end139
  %83 = load i32, i32* %result, align 4, !dbg !630
  %and143 = and i32 %83, 1, !dbg !631
  %84 = load i32, i32* %result, align 4, !dbg !632
  %add144 = add i32 %84, %and143, !dbg !632
  store i32 %add144, i32* %result, align 4, !dbg !632
  br label %if.end145, !dbg !633

if.end145:                                        ; preds = %if.then142, %if.end139
  %85 = load i32, i32* %result, align 4, !dbg !634
  %call146 = call float @fromRep.3(i32 noundef %85) #4, !dbg !635
  store float %call146, float* %retval, align 4, !dbg !636
  br label %return, !dbg !636

return:                                           ; preds = %if.end145, %if.then111, %if.then82, %if.then36, %if.else33, %if.then28, %if.then24, %if.else, %if.then20, %if.then10, %if.then6
  %86 = load float, float* %retval, align 4, !dbg !637
  ret float %86, !dbg !637
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.2(float noundef %x) #0 !dbg !638 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !639
  %0 = load float, float* %x.addr, align 4, !dbg !640
  store float %0, float* %f, align 4, !dbg !639
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !641
  %1 = load i32, i32* %i, align 4, !dbg !641
  ret i32 %1, !dbg !642
}

; Function Attrs: noinline nounwind
define internal float @fromRep.3(i32 noundef %x) #0 !dbg !643 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !644
  %0 = load i32, i32* %x.addr, align 4, !dbg !645
  store i32 %0, i32* %i, align 4, !dbg !644
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !646
  %1 = load float, float* %f, align 4, !dbg !646
  ret float %1, !dbg !647
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.4(i32* noundef %significand) #0 !dbg !648 {
entry:
  %significand.addr = alloca i32*, align 4
  %shift = alloca i32, align 4
  store i32* %significand, i32** %significand.addr, align 4
  %0 = load i32*, i32** %significand.addr, align 4, !dbg !649
  %1 = load i32, i32* %0, align 4, !dbg !650
  %call = call i32 @rep_clz.5(i32 noundef %1) #4, !dbg !651
  %call1 = call i32 @rep_clz.5(i32 noundef 8388608) #4, !dbg !652
  %sub = sub nsw i32 %call, %call1, !dbg !653
  store i32 %sub, i32* %shift, align 4, !dbg !654
  %2 = load i32, i32* %shift, align 4, !dbg !655
  %3 = load i32*, i32** %significand.addr, align 4, !dbg !656
  %4 = load i32, i32* %3, align 4, !dbg !657
  %shl = shl i32 %4, %2, !dbg !657
  store i32 %shl, i32* %3, align 4, !dbg !657
  %5 = load i32, i32* %shift, align 4, !dbg !658
  %sub2 = sub nsw i32 1, %5, !dbg !659
  ret i32 %sub2, !dbg !660
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.5(i32 noundef %a) #0 !dbg !661 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !662
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !663
  ret i32 %1, !dbg !664
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ledf2(double noundef %a, double noundef %b) #0 !dbg !665 {
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
  %0 = load double, double* %a.addr, align 8, !dbg !666
  %call = call i64 @toRep.6(double noundef %0) #4, !dbg !667
  store i64 %call, i64* %aInt, align 8, !dbg !668
  %1 = load double, double* %b.addr, align 8, !dbg !669
  %call1 = call i64 @toRep.6(double noundef %1) #4, !dbg !670
  store i64 %call1, i64* %bInt, align 8, !dbg !671
  %2 = load i64, i64* %aInt, align 8, !dbg !672
  %and = and i64 %2, 9223372036854775807, !dbg !673
  store i64 %and, i64* %aAbs, align 8, !dbg !674
  %3 = load i64, i64* %bInt, align 8, !dbg !675
  %and2 = and i64 %3, 9223372036854775807, !dbg !676
  store i64 %and2, i64* %bAbs, align 8, !dbg !677
  %4 = load i64, i64* %aAbs, align 8, !dbg !678
  %cmp = icmp ugt i64 %4, 9218868437227405312, !dbg !679
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !680

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %bAbs, align 8, !dbg !681
  %cmp3 = icmp ugt i64 %5, 9218868437227405312, !dbg !682
  br i1 %cmp3, label %if.then, label %if.end, !dbg !678

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !683
  br label %return, !dbg !683

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %aAbs, align 8, !dbg !684
  %7 = load i64, i64* %bAbs, align 8, !dbg !685
  %or = or i64 %6, %7, !dbg !686
  %cmp4 = icmp eq i64 %or, 0, !dbg !687
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !688

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !689
  br label %return, !dbg !689

if.end6:                                          ; preds = %if.end
  %8 = load i64, i64* %aInt, align 8, !dbg !690
  %9 = load i64, i64* %bInt, align 8, !dbg !691
  %and7 = and i64 %8, %9, !dbg !692
  %cmp8 = icmp sge i64 %and7, 0, !dbg !693
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !694

if.then9:                                         ; preds = %if.end6
  %10 = load i64, i64* %aInt, align 8, !dbg !695
  %11 = load i64, i64* %bInt, align 8, !dbg !696
  %cmp10 = icmp slt i64 %10, %11, !dbg !697
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !695

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !698
  br label %return, !dbg !698

if.else:                                          ; preds = %if.then9
  %12 = load i64, i64* %aInt, align 8, !dbg !699
  %13 = load i64, i64* %bInt, align 8, !dbg !700
  %cmp12 = icmp eq i64 %12, %13, !dbg !701
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !699

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !702
  br label %return, !dbg !702

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !703
  br label %return, !dbg !703

if.else15:                                        ; preds = %if.end6
  %14 = load i64, i64* %aInt, align 8, !dbg !704
  %15 = load i64, i64* %bInt, align 8, !dbg !705
  %cmp16 = icmp sgt i64 %14, %15, !dbg !706
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !704

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !707
  br label %return, !dbg !707

if.else18:                                        ; preds = %if.else15
  %16 = load i64, i64* %aInt, align 8, !dbg !708
  %17 = load i64, i64* %bInt, align 8, !dbg !709
  %cmp19 = icmp eq i64 %16, %17, !dbg !710
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !708

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !711
  br label %return, !dbg !711

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !712
  br label %return, !dbg !712

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !713
  ret i32 %18, !dbg !713
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.6(double noundef %x) #0 !dbg !714 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !715
  %0 = load double, double* %x.addr, align 8, !dbg !716
  store double %0, double* %f, align 8, !dbg !715
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !717
  %1 = load i64, i64* %i, align 8, !dbg !717
  ret i64 %1, !dbg !718
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gedf2(double noundef %a, double noundef %b) #0 !dbg !719 {
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
  %0 = load double, double* %a.addr, align 8, !dbg !720
  %call = call i64 @toRep.6(double noundef %0) #4, !dbg !721
  store i64 %call, i64* %aInt, align 8, !dbg !722
  %1 = load double, double* %b.addr, align 8, !dbg !723
  %call1 = call i64 @toRep.6(double noundef %1) #4, !dbg !724
  store i64 %call1, i64* %bInt, align 8, !dbg !725
  %2 = load i64, i64* %aInt, align 8, !dbg !726
  %and = and i64 %2, 9223372036854775807, !dbg !727
  store i64 %and, i64* %aAbs, align 8, !dbg !728
  %3 = load i64, i64* %bInt, align 8, !dbg !729
  %and2 = and i64 %3, 9223372036854775807, !dbg !730
  store i64 %and2, i64* %bAbs, align 8, !dbg !731
  %4 = load i64, i64* %aAbs, align 8, !dbg !732
  %cmp = icmp ugt i64 %4, 9218868437227405312, !dbg !733
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !734

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %bAbs, align 8, !dbg !735
  %cmp3 = icmp ugt i64 %5, 9218868437227405312, !dbg !736
  br i1 %cmp3, label %if.then, label %if.end, !dbg !732

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !737
  br label %return, !dbg !737

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %aAbs, align 8, !dbg !738
  %7 = load i64, i64* %bAbs, align 8, !dbg !739
  %or = or i64 %6, %7, !dbg !740
  %cmp4 = icmp eq i64 %or, 0, !dbg !741
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !742

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !743
  br label %return, !dbg !743

if.end6:                                          ; preds = %if.end
  %8 = load i64, i64* %aInt, align 8, !dbg !744
  %9 = load i64, i64* %bInt, align 8, !dbg !745
  %and7 = and i64 %8, %9, !dbg !746
  %cmp8 = icmp sge i64 %and7, 0, !dbg !747
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !748

if.then9:                                         ; preds = %if.end6
  %10 = load i64, i64* %aInt, align 8, !dbg !749
  %11 = load i64, i64* %bInt, align 8, !dbg !750
  %cmp10 = icmp slt i64 %10, %11, !dbg !751
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !749

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !752
  br label %return, !dbg !752

if.else:                                          ; preds = %if.then9
  %12 = load i64, i64* %aInt, align 8, !dbg !753
  %13 = load i64, i64* %bInt, align 8, !dbg !754
  %cmp12 = icmp eq i64 %12, %13, !dbg !755
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !753

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !756
  br label %return, !dbg !756

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !757
  br label %return, !dbg !757

if.else15:                                        ; preds = %if.end6
  %14 = load i64, i64* %aInt, align 8, !dbg !758
  %15 = load i64, i64* %bInt, align 8, !dbg !759
  %cmp16 = icmp sgt i64 %14, %15, !dbg !760
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !758

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !761
  br label %return, !dbg !761

if.else18:                                        ; preds = %if.else15
  %16 = load i64, i64* %aInt, align 8, !dbg !762
  %17 = load i64, i64* %bInt, align 8, !dbg !763
  %cmp19 = icmp eq i64 %16, %17, !dbg !764
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !762

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !765
  br label %return, !dbg !765

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !766
  br label %return, !dbg !766

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !767
  ret i32 %18, !dbg !767
}

; Function Attrs: noinline nounwind
define dso_local i32 @__unorddf2(double noundef %a, double noundef %b) #0 !dbg !768 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %aAbs = alloca i64, align 8
  %bAbs = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !769
  %call = call i64 @toRep.6(double noundef %0) #4, !dbg !770
  %and = and i64 %call, 9223372036854775807, !dbg !771
  store i64 %and, i64* %aAbs, align 8, !dbg !772
  %1 = load double, double* %b.addr, align 8, !dbg !773
  %call1 = call i64 @toRep.6(double noundef %1) #4, !dbg !774
  %and2 = and i64 %call1, 9223372036854775807, !dbg !775
  store i64 %and2, i64* %bAbs, align 8, !dbg !776
  %2 = load i64, i64* %aAbs, align 8, !dbg !777
  %cmp = icmp ugt i64 %2, 9218868437227405312, !dbg !778
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !779

lor.rhs:                                          ; preds = %entry
  %3 = load i64, i64* %bAbs, align 8, !dbg !780
  %cmp3 = icmp ugt i64 %3, 9218868437227405312, !dbg !781
  br label %lor.end, !dbg !779

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !779
  ret i32 %lor.ext, !dbg !782
}

; Function Attrs: noinline nounwind
define dso_local i32 @__eqdf2(double noundef %a, double noundef %b) #0 !dbg !783 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !784
  %1 = load double, double* %b.addr, align 8, !dbg !785
  %call = call i32 @__ledf2(double noundef %0, double noundef %1) #4, !dbg !786
  ret i32 %call, !dbg !787
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ltdf2(double noundef %a, double noundef %b) #0 !dbg !788 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !789
  %1 = load double, double* %b.addr, align 8, !dbg !790
  %call = call i32 @__ledf2(double noundef %0, double noundef %1) #4, !dbg !791
  ret i32 %call, !dbg !792
}

; Function Attrs: noinline nounwind
define dso_local i32 @__nedf2(double noundef %a, double noundef %b) #0 !dbg !793 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !794
  %1 = load double, double* %b.addr, align 8, !dbg !795
  %call = call i32 @__ledf2(double noundef %0, double noundef %1) #4, !dbg !796
  ret i32 %call, !dbg !797
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gtdf2(double noundef %a, double noundef %b) #0 !dbg !798 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !799
  %1 = load double, double* %b.addr, align 8, !dbg !800
  %call = call i32 @__gedf2(double noundef %0, double noundef %1) #4, !dbg !801
  ret i32 %call, !dbg !802
}

; Function Attrs: noinline nounwind
define dso_local i32 @__lesf2(float noundef %a, float noundef %b) #0 !dbg !803 {
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
  %0 = load float, float* %a.addr, align 4, !dbg !804
  %call = call i32 @toRep.7(float noundef %0) #4, !dbg !805
  store i32 %call, i32* %aInt, align 4, !dbg !806
  %1 = load float, float* %b.addr, align 4, !dbg !807
  %call1 = call i32 @toRep.7(float noundef %1) #4, !dbg !808
  store i32 %call1, i32* %bInt, align 4, !dbg !809
  %2 = load i32, i32* %aInt, align 4, !dbg !810
  %and = and i32 %2, 2147483647, !dbg !811
  store i32 %and, i32* %aAbs, align 4, !dbg !812
  %3 = load i32, i32* %bInt, align 4, !dbg !813
  %and2 = and i32 %3, 2147483647, !dbg !814
  store i32 %and2, i32* %bAbs, align 4, !dbg !815
  %4 = load i32, i32* %aAbs, align 4, !dbg !816
  %cmp = icmp ugt i32 %4, 2139095040, !dbg !817
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !818

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %bAbs, align 4, !dbg !819
  %cmp3 = icmp ugt i32 %5, 2139095040, !dbg !820
  br i1 %cmp3, label %if.then, label %if.end, !dbg !816

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !821
  br label %return, !dbg !821

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %aAbs, align 4, !dbg !822
  %7 = load i32, i32* %bAbs, align 4, !dbg !823
  %or = or i32 %6, %7, !dbg !824
  %cmp4 = icmp eq i32 %or, 0, !dbg !825
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !826

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %aInt, align 4, !dbg !828
  %9 = load i32, i32* %bInt, align 4, !dbg !829
  %and7 = and i32 %8, %9, !dbg !830
  %cmp8 = icmp sge i32 %and7, 0, !dbg !831
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !832

if.then9:                                         ; preds = %if.end6
  %10 = load i32, i32* %aInt, align 4, !dbg !833
  %11 = load i32, i32* %bInt, align 4, !dbg !834
  %cmp10 = icmp slt i32 %10, %11, !dbg !835
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !833

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

if.else:                                          ; preds = %if.then9
  %12 = load i32, i32* %aInt, align 4, !dbg !837
  %13 = load i32, i32* %bInt, align 4, !dbg !838
  %cmp12 = icmp eq i32 %12, %13, !dbg !839
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !837

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !840
  br label %return, !dbg !840

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !841
  br label %return, !dbg !841

if.else15:                                        ; preds = %if.end6
  %14 = load i32, i32* %aInt, align 4, !dbg !842
  %15 = load i32, i32* %bInt, align 4, !dbg !843
  %cmp16 = icmp sgt i32 %14, %15, !dbg !844
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !842

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !845
  br label %return, !dbg !845

if.else18:                                        ; preds = %if.else15
  %16 = load i32, i32* %aInt, align 4, !dbg !846
  %17 = load i32, i32* %bInt, align 4, !dbg !847
  %cmp19 = icmp eq i32 %16, %17, !dbg !848
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !846

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !849
  br label %return, !dbg !849

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !850
  br label %return, !dbg !850

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !851
  ret i32 %18, !dbg !851
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.7(float noundef %x) #0 !dbg !852 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !853
  %0 = load float, float* %x.addr, align 4, !dbg !854
  store float %0, float* %f, align 4, !dbg !853
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !855
  %1 = load i32, i32* %i, align 4, !dbg !855
  ret i32 %1, !dbg !856
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gesf2(float noundef %a, float noundef %b) #0 !dbg !857 {
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
  %0 = load float, float* %a.addr, align 4, !dbg !858
  %call = call i32 @toRep.7(float noundef %0) #4, !dbg !859
  store i32 %call, i32* %aInt, align 4, !dbg !860
  %1 = load float, float* %b.addr, align 4, !dbg !861
  %call1 = call i32 @toRep.7(float noundef %1) #4, !dbg !862
  store i32 %call1, i32* %bInt, align 4, !dbg !863
  %2 = load i32, i32* %aInt, align 4, !dbg !864
  %and = and i32 %2, 2147483647, !dbg !865
  store i32 %and, i32* %aAbs, align 4, !dbg !866
  %3 = load i32, i32* %bInt, align 4, !dbg !867
  %and2 = and i32 %3, 2147483647, !dbg !868
  store i32 %and2, i32* %bAbs, align 4, !dbg !869
  %4 = load i32, i32* %aAbs, align 4, !dbg !870
  %cmp = icmp ugt i32 %4, 2139095040, !dbg !871
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !872

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %bAbs, align 4, !dbg !873
  %cmp3 = icmp ugt i32 %5, 2139095040, !dbg !874
  br i1 %cmp3, label %if.then, label %if.end, !dbg !870

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !875
  br label %return, !dbg !875

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %aAbs, align 4, !dbg !876
  %7 = load i32, i32* %bAbs, align 4, !dbg !877
  %or = or i32 %6, %7, !dbg !878
  %cmp4 = icmp eq i32 %or, 0, !dbg !879
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !880

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !881
  br label %return, !dbg !881

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %aInt, align 4, !dbg !882
  %9 = load i32, i32* %bInt, align 4, !dbg !883
  %and7 = and i32 %8, %9, !dbg !884
  %cmp8 = icmp sge i32 %and7, 0, !dbg !885
  br i1 %cmp8, label %if.then9, label %if.else15, !dbg !886

if.then9:                                         ; preds = %if.end6
  %10 = load i32, i32* %aInt, align 4, !dbg !887
  %11 = load i32, i32* %bInt, align 4, !dbg !888
  %cmp10 = icmp slt i32 %10, %11, !dbg !889
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !887

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %retval, align 4, !dbg !890
  br label %return, !dbg !890

if.else:                                          ; preds = %if.then9
  %12 = load i32, i32* %aInt, align 4, !dbg !891
  %13 = load i32, i32* %bInt, align 4, !dbg !892
  %cmp12 = icmp eq i32 %12, %13, !dbg !893
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !891

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !894
  br label %return, !dbg !894

if.else14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !895
  br label %return, !dbg !895

if.else15:                                        ; preds = %if.end6
  %14 = load i32, i32* %aInt, align 4, !dbg !896
  %15 = load i32, i32* %bInt, align 4, !dbg !897
  %cmp16 = icmp sgt i32 %14, %15, !dbg !898
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !896

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %retval, align 4, !dbg !899
  br label %return, !dbg !899

if.else18:                                        ; preds = %if.else15
  %16 = load i32, i32* %aInt, align 4, !dbg !900
  %17 = load i32, i32* %bInt, align 4, !dbg !901
  %cmp19 = icmp eq i32 %16, %17, !dbg !902
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !900

if.then20:                                        ; preds = %if.else18
  store i32 0, i32* %retval, align 4, !dbg !903
  br label %return, !dbg !903

if.else21:                                        ; preds = %if.else18
  store i32 1, i32* %retval, align 4, !dbg !904
  br label %return, !dbg !904

return:                                           ; preds = %if.else21, %if.then20, %if.then17, %if.else14, %if.then13, %if.then11, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !905
  ret i32 %18, !dbg !905
}

; Function Attrs: noinline nounwind
define dso_local i32 @__unordsf2(float noundef %a, float noundef %b) #0 !dbg !906 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aAbs = alloca i32, align 4
  %bAbs = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !907
  %call = call i32 @toRep.7(float noundef %0) #4, !dbg !908
  %and = and i32 %call, 2147483647, !dbg !909
  store i32 %and, i32* %aAbs, align 4, !dbg !910
  %1 = load float, float* %b.addr, align 4, !dbg !911
  %call1 = call i32 @toRep.7(float noundef %1) #4, !dbg !912
  %and2 = and i32 %call1, 2147483647, !dbg !913
  store i32 %and2, i32* %bAbs, align 4, !dbg !914
  %2 = load i32, i32* %aAbs, align 4, !dbg !915
  %cmp = icmp ugt i32 %2, 2139095040, !dbg !916
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !917

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %bAbs, align 4, !dbg !918
  %cmp3 = icmp ugt i32 %3, 2139095040, !dbg !919
  br label %lor.end, !dbg !917

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !917
  ret i32 %lor.ext, !dbg !920
}

; Function Attrs: noinline nounwind
define dso_local i32 @__eqsf2(float noundef %a, float noundef %b) #0 !dbg !921 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !922
  %1 = load float, float* %b.addr, align 4, !dbg !923
  %call = call i32 @__lesf2(float noundef %0, float noundef %1) #4, !dbg !924
  ret i32 %call, !dbg !925
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ltsf2(float noundef %a, float noundef %b) #0 !dbg !926 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !927
  %1 = load float, float* %b.addr, align 4, !dbg !928
  %call = call i32 @__lesf2(float noundef %0, float noundef %1) #4, !dbg !929
  ret i32 %call, !dbg !930
}

; Function Attrs: noinline nounwind
define dso_local i32 @__nesf2(float noundef %a, float noundef %b) #0 !dbg !931 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !932
  %1 = load float, float* %b.addr, align 4, !dbg !933
  %call = call i32 @__lesf2(float noundef %0, float noundef %1) #4, !dbg !934
  ret i32 %call, !dbg !935
}

; Function Attrs: noinline nounwind
define dso_local i32 @__gtsf2(float noundef %a, float noundef %b) #0 !dbg !936 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !937
  %1 = load float, float* %b.addr, align 4, !dbg !938
  %call = call i32 @__gesf2(float noundef %0, float noundef %1) #4, !dbg !939
  ret i32 %call, !dbg !940
}

; Function Attrs: noinline nounwind
define dso_local double @__divdf3(double noundef %a, double noundef %b) #0 !dbg !941 {
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
  %0 = load double, double* %a.addr, align 8, !dbg !942
  %call = call i64 @toRep.8(double noundef %0) #4, !dbg !943
  %shr = lshr i64 %call, 52, !dbg !944
  %and = and i64 %shr, 2047, !dbg !945
  %conv = trunc i64 %and to i32, !dbg !943
  store i32 %conv, i32* %aExponent, align 4, !dbg !946
  %1 = load double, double* %b.addr, align 8, !dbg !947
  %call1 = call i64 @toRep.8(double noundef %1) #4, !dbg !948
  %shr2 = lshr i64 %call1, 52, !dbg !949
  %and3 = and i64 %shr2, 2047, !dbg !950
  %conv4 = trunc i64 %and3 to i32, !dbg !948
  store i32 %conv4, i32* %bExponent, align 4, !dbg !951
  %2 = load double, double* %a.addr, align 8, !dbg !952
  %call5 = call i64 @toRep.8(double noundef %2) #4, !dbg !953
  %3 = load double, double* %b.addr, align 8, !dbg !954
  %call6 = call i64 @toRep.8(double noundef %3) #4, !dbg !955
  %xor = xor i64 %call5, %call6, !dbg !956
  %and7 = and i64 %xor, -9223372036854775808, !dbg !957
  store i64 %and7, i64* %quotientSign, align 8, !dbg !958
  %4 = load double, double* %a.addr, align 8, !dbg !959
  %call8 = call i64 @toRep.8(double noundef %4) #4, !dbg !960
  %and9 = and i64 %call8, 4503599627370495, !dbg !961
  store i64 %and9, i64* %aSignificand, align 8, !dbg !962
  %5 = load double, double* %b.addr, align 8, !dbg !963
  %call10 = call i64 @toRep.8(double noundef %5) #4, !dbg !964
  %and11 = and i64 %call10, 4503599627370495, !dbg !965
  store i64 %and11, i64* %bSignificand, align 8, !dbg !966
  store i32 0, i32* %scale, align 4, !dbg !967
  %6 = load i32, i32* %aExponent, align 4, !dbg !968
  %sub = sub i32 %6, 1, !dbg !969
  %cmp = icmp uge i32 %sub, 2046, !dbg !970
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !971

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !972
  %sub13 = sub i32 %7, 1, !dbg !973
  %cmp14 = icmp uge i32 %sub13, 2046, !dbg !974
  br i1 %cmp14, label %if.then, label %if.end70, !dbg !968

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load double, double* %a.addr, align 8, !dbg !975
  %call16 = call i64 @toRep.8(double noundef %8) #4, !dbg !976
  %and17 = and i64 %call16, 9223372036854775807, !dbg !977
  store i64 %and17, i64* %aAbs, align 8, !dbg !978
  %9 = load double, double* %b.addr, align 8, !dbg !979
  %call18 = call i64 @toRep.8(double noundef %9) #4, !dbg !980
  %and19 = and i64 %call18, 9223372036854775807, !dbg !981
  store i64 %and19, i64* %bAbs, align 8, !dbg !982
  %10 = load i64, i64* %aAbs, align 8, !dbg !983
  %cmp20 = icmp ugt i64 %10, 9218868437227405312, !dbg !984
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !983

if.then22:                                        ; preds = %if.then
  %11 = load double, double* %a.addr, align 8, !dbg !985
  %call23 = call i64 @toRep.8(double noundef %11) #4, !dbg !986
  %or = or i64 %call23, 2251799813685248, !dbg !987
  %call24 = call double @fromRep.9(i64 noundef %or) #4, !dbg !988
  store double %call24, double* %retval, align 8, !dbg !989
  br label %return, !dbg !989

if.end:                                           ; preds = %if.then
  %12 = load i64, i64* %bAbs, align 8, !dbg !990
  %cmp25 = icmp ugt i64 %12, 9218868437227405312, !dbg !991
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !990

if.then27:                                        ; preds = %if.end
  %13 = load double, double* %b.addr, align 8, !dbg !992
  %call28 = call i64 @toRep.8(double noundef %13) #4, !dbg !993
  %or29 = or i64 %call28, 2251799813685248, !dbg !994
  %call30 = call double @fromRep.9(i64 noundef %or29) #4, !dbg !995
  store double %call30, double* %retval, align 8, !dbg !996
  br label %return, !dbg !996

if.end31:                                         ; preds = %if.end
  %14 = load i64, i64* %aAbs, align 8, !dbg !997
  %cmp32 = icmp eq i64 %14, 9218868437227405312, !dbg !998
  br i1 %cmp32, label %if.then34, label %if.end41, !dbg !997

if.then34:                                        ; preds = %if.end31
  %15 = load i64, i64* %bAbs, align 8, !dbg !999
  %cmp35 = icmp eq i64 %15, 9218868437227405312, !dbg !1000
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !999

if.then37:                                        ; preds = %if.then34
  %call38 = call double @fromRep.9(i64 noundef 9221120237041090560) #4, !dbg !1001
  store double %call38, double* %retval, align 8, !dbg !1002
  br label %return, !dbg !1002

if.else:                                          ; preds = %if.then34
  %16 = load i64, i64* %aAbs, align 8, !dbg !1003
  %17 = load i64, i64* %quotientSign, align 8, !dbg !1004
  %or39 = or i64 %16, %17, !dbg !1005
  %call40 = call double @fromRep.9(i64 noundef %or39) #4, !dbg !1006
  store double %call40, double* %retval, align 8, !dbg !1007
  br label %return, !dbg !1007

if.end41:                                         ; preds = %if.end31
  %18 = load i64, i64* %bAbs, align 8, !dbg !1008
  %cmp42 = icmp eq i64 %18, 9218868437227405312, !dbg !1009
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1008

if.then44:                                        ; preds = %if.end41
  %19 = load i64, i64* %quotientSign, align 8, !dbg !1010
  %call45 = call double @fromRep.9(i64 noundef %19) #4, !dbg !1011
  store double %call45, double* %retval, align 8, !dbg !1012
  br label %return, !dbg !1012

if.end46:                                         ; preds = %if.end41
  %20 = load i64, i64* %aAbs, align 8, !dbg !1013
  %tobool = icmp ne i64 %20, 0, !dbg !1013
  br i1 %tobool, label %if.end53, label %if.then47, !dbg !1014

if.then47:                                        ; preds = %if.end46
  %21 = load i64, i64* %bAbs, align 8, !dbg !1015
  %tobool48 = icmp ne i64 %21, 0, !dbg !1015
  br i1 %tobool48, label %if.else51, label %if.then49, !dbg !1016

if.then49:                                        ; preds = %if.then47
  %call50 = call double @fromRep.9(i64 noundef 9221120237041090560) #4, !dbg !1017
  store double %call50, double* %retval, align 8, !dbg !1018
  br label %return, !dbg !1018

if.else51:                                        ; preds = %if.then47
  %22 = load i64, i64* %quotientSign, align 8, !dbg !1019
  %call52 = call double @fromRep.9(i64 noundef %22) #4, !dbg !1020
  store double %call52, double* %retval, align 8, !dbg !1021
  br label %return, !dbg !1021

if.end53:                                         ; preds = %if.end46
  %23 = load i64, i64* %bAbs, align 8, !dbg !1022
  %tobool54 = icmp ne i64 %23, 0, !dbg !1022
  br i1 %tobool54, label %if.end58, label %if.then55, !dbg !1023

if.then55:                                        ; preds = %if.end53
  %24 = load i64, i64* %quotientSign, align 8, !dbg !1024
  %or56 = or i64 9218868437227405312, %24, !dbg !1025
  %call57 = call double @fromRep.9(i64 noundef %or56) #4, !dbg !1026
  store double %call57, double* %retval, align 8, !dbg !1027
  br label %return, !dbg !1027

if.end58:                                         ; preds = %if.end53
  %25 = load i64, i64* %aAbs, align 8, !dbg !1028
  %cmp59 = icmp ult i64 %25, 4503599627370496, !dbg !1029
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !1028

if.then61:                                        ; preds = %if.end58
  %call62 = call i32 @normalize.10(i64* noundef %aSignificand) #4, !dbg !1030
  %26 = load i32, i32* %scale, align 4, !dbg !1031
  %add = add nsw i32 %26, %call62, !dbg !1031
  store i32 %add, i32* %scale, align 4, !dbg !1031
  br label %if.end63, !dbg !1032

if.end63:                                         ; preds = %if.then61, %if.end58
  %27 = load i64, i64* %bAbs, align 8, !dbg !1033
  %cmp64 = icmp ult i64 %27, 4503599627370496, !dbg !1034
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !1033

if.then66:                                        ; preds = %if.end63
  %call67 = call i32 @normalize.10(i64* noundef %bSignificand) #4, !dbg !1035
  %28 = load i32, i32* %scale, align 4, !dbg !1036
  %sub68 = sub nsw i32 %28, %call67, !dbg !1036
  store i32 %sub68, i32* %scale, align 4, !dbg !1036
  br label %if.end69, !dbg !1037

if.end69:                                         ; preds = %if.then66, %if.end63
  br label %if.end70, !dbg !1038

if.end70:                                         ; preds = %if.end69, %lor.lhs.false
  %29 = load i64, i64* %aSignificand, align 8, !dbg !1039
  %or71 = or i64 %29, 4503599627370496, !dbg !1039
  store i64 %or71, i64* %aSignificand, align 8, !dbg !1039
  %30 = load i64, i64* %bSignificand, align 8, !dbg !1040
  %or72 = or i64 %30, 4503599627370496, !dbg !1040
  store i64 %or72, i64* %bSignificand, align 8, !dbg !1040
  %31 = load i32, i32* %aExponent, align 4, !dbg !1041
  %32 = load i32, i32* %bExponent, align 4, !dbg !1042
  %sub73 = sub i32 %31, %32, !dbg !1043
  %33 = load i32, i32* %scale, align 4, !dbg !1044
  %add74 = add i32 %sub73, %33, !dbg !1045
  store i32 %add74, i32* %quotientExponent, align 4, !dbg !1046
  %34 = load i64, i64* %bSignificand, align 8, !dbg !1047
  %shr75 = lshr i64 %34, 21, !dbg !1048
  %conv76 = trunc i64 %shr75 to i32, !dbg !1047
  store i32 %conv76, i32* %q31b, align 4, !dbg !1049
  %35 = load i32, i32* %q31b, align 4, !dbg !1050
  %sub77 = sub i32 1963258675, %35, !dbg !1051
  store i32 %sub77, i32* %recip32, align 4, !dbg !1052
  %36 = load i32, i32* %recip32, align 4, !dbg !1053
  %conv78 = zext i32 %36 to i64, !dbg !1054
  %37 = load i32, i32* %q31b, align 4, !dbg !1055
  %conv79 = zext i32 %37 to i64, !dbg !1055
  %mul = mul i64 %conv78, %conv79, !dbg !1056
  %shr80 = lshr i64 %mul, 32, !dbg !1057
  %sub81 = sub i64 0, %shr80, !dbg !1058
  %conv82 = trunc i64 %sub81 to i32, !dbg !1058
  store i32 %conv82, i32* %correction32, align 4, !dbg !1059
  %38 = load i32, i32* %recip32, align 4, !dbg !1060
  %conv83 = zext i32 %38 to i64, !dbg !1061
  %39 = load i32, i32* %correction32, align 4, !dbg !1062
  %conv84 = zext i32 %39 to i64, !dbg !1062
  %mul85 = mul i64 %conv83, %conv84, !dbg !1063
  %shr86 = lshr i64 %mul85, 31, !dbg !1064
  %conv87 = trunc i64 %shr86 to i32, !dbg !1061
  store i32 %conv87, i32* %recip32, align 4, !dbg !1065
  %40 = load i32, i32* %recip32, align 4, !dbg !1066
  %conv88 = zext i32 %40 to i64, !dbg !1067
  %41 = load i32, i32* %q31b, align 4, !dbg !1068
  %conv89 = zext i32 %41 to i64, !dbg !1068
  %mul90 = mul i64 %conv88, %conv89, !dbg !1069
  %shr91 = lshr i64 %mul90, 32, !dbg !1070
  %sub92 = sub i64 0, %shr91, !dbg !1071
  %conv93 = trunc i64 %sub92 to i32, !dbg !1071
  store i32 %conv93, i32* %correction32, align 4, !dbg !1072
  %42 = load i32, i32* %recip32, align 4, !dbg !1073
  %conv94 = zext i32 %42 to i64, !dbg !1074
  %43 = load i32, i32* %correction32, align 4, !dbg !1075
  %conv95 = zext i32 %43 to i64, !dbg !1075
  %mul96 = mul i64 %conv94, %conv95, !dbg !1076
  %shr97 = lshr i64 %mul96, 31, !dbg !1077
  %conv98 = trunc i64 %shr97 to i32, !dbg !1074
  store i32 %conv98, i32* %recip32, align 4, !dbg !1078
  %44 = load i32, i32* %recip32, align 4, !dbg !1079
  %conv99 = zext i32 %44 to i64, !dbg !1080
  %45 = load i32, i32* %q31b, align 4, !dbg !1081
  %conv100 = zext i32 %45 to i64, !dbg !1081
  %mul101 = mul i64 %conv99, %conv100, !dbg !1082
  %shr102 = lshr i64 %mul101, 32, !dbg !1083
  %sub103 = sub i64 0, %shr102, !dbg !1084
  %conv104 = trunc i64 %sub103 to i32, !dbg !1084
  store i32 %conv104, i32* %correction32, align 4, !dbg !1085
  %46 = load i32, i32* %recip32, align 4, !dbg !1086
  %conv105 = zext i32 %46 to i64, !dbg !1087
  %47 = load i32, i32* %correction32, align 4, !dbg !1088
  %conv106 = zext i32 %47 to i64, !dbg !1088
  %mul107 = mul i64 %conv105, %conv106, !dbg !1089
  %shr108 = lshr i64 %mul107, 31, !dbg !1090
  %conv109 = trunc i64 %shr108 to i32, !dbg !1087
  store i32 %conv109, i32* %recip32, align 4, !dbg !1091
  %48 = load i32, i32* %recip32, align 4, !dbg !1092
  %dec = add i32 %48, -1, !dbg !1092
  store i32 %dec, i32* %recip32, align 4, !dbg !1092
  %49 = load i64, i64* %bSignificand, align 8, !dbg !1093
  %shl = shl i64 %49, 11, !dbg !1094
  %conv110 = trunc i64 %shl to i32, !dbg !1093
  store i32 %conv110, i32* %q63blo, align 4, !dbg !1095
  %50 = load i32, i32* %recip32, align 4, !dbg !1096
  %conv111 = zext i32 %50 to i64, !dbg !1097
  %51 = load i32, i32* %q31b, align 4, !dbg !1098
  %conv112 = zext i32 %51 to i64, !dbg !1098
  %mul113 = mul i64 %conv111, %conv112, !dbg !1099
  %52 = load i32, i32* %recip32, align 4, !dbg !1100
  %conv114 = zext i32 %52 to i64, !dbg !1101
  %53 = load i32, i32* %q63blo, align 4, !dbg !1102
  %conv115 = zext i32 %53 to i64, !dbg !1102
  %mul116 = mul i64 %conv114, %conv115, !dbg !1103
  %shr117 = lshr i64 %mul116, 32, !dbg !1104
  %add118 = add i64 %mul113, %shr117, !dbg !1105
  %sub119 = sub i64 0, %add118, !dbg !1106
  store i64 %sub119, i64* %correction, align 8, !dbg !1107
  %54 = load i64, i64* %correction, align 8, !dbg !1108
  %shr120 = lshr i64 %54, 32, !dbg !1109
  %conv121 = trunc i64 %shr120 to i32, !dbg !1108
  store i32 %conv121, i32* %cHi, align 4, !dbg !1110
  %55 = load i64, i64* %correction, align 8, !dbg !1111
  %conv122 = trunc i64 %55 to i32, !dbg !1111
  store i32 %conv122, i32* %cLo, align 4, !dbg !1112
  %56 = load i32, i32* %recip32, align 4, !dbg !1113
  %conv123 = zext i32 %56 to i64, !dbg !1114
  %57 = load i32, i32* %cHi, align 4, !dbg !1115
  %conv124 = zext i32 %57 to i64, !dbg !1115
  %mul125 = mul i64 %conv123, %conv124, !dbg !1116
  %58 = load i32, i32* %recip32, align 4, !dbg !1117
  %conv126 = zext i32 %58 to i64, !dbg !1118
  %59 = load i32, i32* %cLo, align 4, !dbg !1119
  %conv127 = zext i32 %59 to i64, !dbg !1119
  %mul128 = mul i64 %conv126, %conv127, !dbg !1120
  %shr129 = lshr i64 %mul128, 32, !dbg !1121
  %add130 = add i64 %mul125, %shr129, !dbg !1122
  store i64 %add130, i64* %reciprocal, align 8, !dbg !1123
  %60 = load i64, i64* %reciprocal, align 8, !dbg !1124
  %sub131 = sub i64 %60, 2, !dbg !1124
  store i64 %sub131, i64* %reciprocal, align 8, !dbg !1124
  %61 = load i64, i64* %aSignificand, align 8, !dbg !1125
  %shl132 = shl i64 %61, 2, !dbg !1126
  %62 = load i64, i64* %reciprocal, align 8, !dbg !1127
  call void @wideMultiply(i64 noundef %shl132, i64 noundef %62, i64* noundef %quotient, i64* noundef %quotientLo) #4, !dbg !1128
  %63 = load i64, i64* %quotient, align 8, !dbg !1129
  %cmp133 = icmp ult i64 %63, 9007199254740992, !dbg !1130
  br i1 %cmp133, label %if.then135, label %if.else140, !dbg !1129

if.then135:                                       ; preds = %if.end70
  %64 = load i64, i64* %aSignificand, align 8, !dbg !1131
  %shl136 = shl i64 %64, 53, !dbg !1132
  %65 = load i64, i64* %quotient, align 8, !dbg !1133
  %66 = load i64, i64* %bSignificand, align 8, !dbg !1134
  %mul137 = mul i64 %65, %66, !dbg !1135
  %sub138 = sub i64 %shl136, %mul137, !dbg !1136
  store i64 %sub138, i64* %residual, align 8, !dbg !1137
  %67 = load i32, i32* %quotientExponent, align 4, !dbg !1138
  %dec139 = add nsw i32 %67, -1, !dbg !1138
  store i32 %dec139, i32* %quotientExponent, align 4, !dbg !1138
  br label %if.end145, !dbg !1139

if.else140:                                       ; preds = %if.end70
  %68 = load i64, i64* %quotient, align 8, !dbg !1140
  %shr141 = lshr i64 %68, 1, !dbg !1140
  store i64 %shr141, i64* %quotient, align 8, !dbg !1140
  %69 = load i64, i64* %aSignificand, align 8, !dbg !1141
  %shl142 = shl i64 %69, 52, !dbg !1142
  %70 = load i64, i64* %quotient, align 8, !dbg !1143
  %71 = load i64, i64* %bSignificand, align 8, !dbg !1144
  %mul143 = mul i64 %70, %71, !dbg !1145
  %sub144 = sub i64 %shl142, %mul143, !dbg !1146
  store i64 %sub144, i64* %residual, align 8, !dbg !1147
  br label %if.end145

if.end145:                                        ; preds = %if.else140, %if.then135
  %72 = load i32, i32* %quotientExponent, align 4, !dbg !1148
  %add146 = add nsw i32 %72, 1023, !dbg !1149
  store i32 %add146, i32* %writtenExponent, align 4, !dbg !1150
  %73 = load i32, i32* %writtenExponent, align 4, !dbg !1151
  %cmp147 = icmp sge i32 %73, 2047, !dbg !1152
  br i1 %cmp147, label %if.then149, label %if.else152, !dbg !1151

if.then149:                                       ; preds = %if.end145
  %74 = load i64, i64* %quotientSign, align 8, !dbg !1153
  %or150 = or i64 9218868437227405312, %74, !dbg !1154
  %call151 = call double @fromRep.9(i64 noundef %or150) #4, !dbg !1155
  store double %call151, double* %retval, align 8, !dbg !1156
  br label %return, !dbg !1156

if.else152:                                       ; preds = %if.end145
  %75 = load i32, i32* %writtenExponent, align 4, !dbg !1157
  %cmp153 = icmp slt i32 %75, 1, !dbg !1158
  br i1 %cmp153, label %if.then155, label %if.else157, !dbg !1157

if.then155:                                       ; preds = %if.else152
  %76 = load i64, i64* %quotientSign, align 8, !dbg !1159
  %call156 = call double @fromRep.9(i64 noundef %76) #4, !dbg !1160
  store double %call156, double* %retval, align 8, !dbg !1161
  br label %return, !dbg !1161

if.else157:                                       ; preds = %if.else152
  %77 = load i64, i64* %residual, align 8, !dbg !1162
  %shl158 = shl i64 %77, 1, !dbg !1163
  %78 = load i64, i64* %bSignificand, align 8, !dbg !1164
  %cmp159 = icmp ugt i64 %shl158, %78, !dbg !1165
  %frombool = zext i1 %cmp159 to i8, !dbg !1166
  store i8 %frombool, i8* %round, align 1, !dbg !1166
  %79 = load i64, i64* %quotient, align 8, !dbg !1167
  %and161 = and i64 %79, 4503599627370495, !dbg !1168
  store i64 %and161, i64* %absResult, align 8, !dbg !1169
  %80 = load i32, i32* %writtenExponent, align 4, !dbg !1170
  %conv162 = sext i32 %80 to i64, !dbg !1171
  %shl163 = shl i64 %conv162, 52, !dbg !1172
  %81 = load i64, i64* %absResult, align 8, !dbg !1173
  %or164 = or i64 %81, %shl163, !dbg !1173
  store i64 %or164, i64* %absResult, align 8, !dbg !1173
  %82 = load i8, i8* %round, align 1, !dbg !1174
  %tobool165 = trunc i8 %82 to i1, !dbg !1174
  %conv166 = zext i1 %tobool165 to i64, !dbg !1174
  %83 = load i64, i64* %absResult, align 8, !dbg !1175
  %add167 = add i64 %83, %conv166, !dbg !1175
  store i64 %add167, i64* %absResult, align 8, !dbg !1175
  %84 = load i64, i64* %absResult, align 8, !dbg !1176
  %85 = load i64, i64* %quotientSign, align 8, !dbg !1177
  %or168 = or i64 %84, %85, !dbg !1178
  %call169 = call double @fromRep.9(i64 noundef %or168) #4, !dbg !1179
  store double %call169, double* %result, align 8, !dbg !1180
  %86 = load double, double* %result, align 8, !dbg !1181
  store double %86, double* %retval, align 8, !dbg !1182
  br label %return, !dbg !1182

return:                                           ; preds = %if.else157, %if.then155, %if.then149, %if.then55, %if.else51, %if.then49, %if.then44, %if.else, %if.then37, %if.then27, %if.then22
  %87 = load double, double* %retval, align 8, !dbg !1183
  ret double %87, !dbg !1183
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.8(double noundef %x) #0 !dbg !1184 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1185
  %0 = load double, double* %x.addr, align 8, !dbg !1186
  store double %0, double* %f, align 8, !dbg !1185
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1187
  %1 = load i64, i64* %i, align 8, !dbg !1187
  ret i64 %1, !dbg !1188
}

; Function Attrs: noinline nounwind
define internal double @fromRep.9(i64 noundef %x) #0 !dbg !1189 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1190
  %0 = load i64, i64* %x.addr, align 8, !dbg !1191
  store i64 %0, i64* %i, align 8, !dbg !1190
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1192
  %1 = load double, double* %f, align 8, !dbg !1192
  ret double %1, !dbg !1193
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.10(i64* noundef %significand) #0 !dbg !1194 {
entry:
  %significand.addr = alloca i64*, align 4
  %shift = alloca i32, align 4
  store i64* %significand, i64** %significand.addr, align 4
  %0 = load i64*, i64** %significand.addr, align 4, !dbg !1195
  %1 = load i64, i64* %0, align 8, !dbg !1196
  %call = call i32 @rep_clz.11(i64 noundef %1) #4, !dbg !1197
  %call1 = call i32 @rep_clz.11(i64 noundef 4503599627370496) #4, !dbg !1198
  %sub = sub nsw i32 %call, %call1, !dbg !1199
  store i32 %sub, i32* %shift, align 4, !dbg !1200
  %2 = load i32, i32* %shift, align 4, !dbg !1201
  %3 = load i64*, i64** %significand.addr, align 4, !dbg !1202
  %4 = load i64, i64* %3, align 8, !dbg !1203
  %sh_prom = zext i32 %2 to i64, !dbg !1203
  %shl = shl i64 %4, %sh_prom, !dbg !1203
  store i64 %shl, i64* %3, align 8, !dbg !1203
  %5 = load i32, i32* %shift, align 4, !dbg !1204
  %sub2 = sub nsw i32 1, %5, !dbg !1205
  ret i32 %sub2, !dbg !1206
}

; Function Attrs: noinline nounwind
define internal void @wideMultiply(i64 noundef %a, i64 noundef %b, i64* noundef %hi, i64* noundef %lo) #0 !dbg !1207 {
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
  %0 = load i64, i64* %a.addr, align 8, !dbg !1208
  %and = and i64 %0, 4294967295, !dbg !1208
  %1 = load i64, i64* %b.addr, align 8, !dbg !1209
  %and1 = and i64 %1, 4294967295, !dbg !1209
  %mul = mul i64 %and, %and1, !dbg !1210
  store i64 %mul, i64* %plolo, align 8, !dbg !1211
  %2 = load i64, i64* %a.addr, align 8, !dbg !1212
  %and2 = and i64 %2, 4294967295, !dbg !1212
  %3 = load i64, i64* %b.addr, align 8, !dbg !1213
  %shr = lshr i64 %3, 32, !dbg !1213
  %mul3 = mul i64 %and2, %shr, !dbg !1214
  store i64 %mul3, i64* %plohi, align 8, !dbg !1215
  %4 = load i64, i64* %a.addr, align 8, !dbg !1216
  %shr4 = lshr i64 %4, 32, !dbg !1216
  %5 = load i64, i64* %b.addr, align 8, !dbg !1217
  %and5 = and i64 %5, 4294967295, !dbg !1217
  %mul6 = mul i64 %shr4, %and5, !dbg !1218
  store i64 %mul6, i64* %philo, align 8, !dbg !1219
  %6 = load i64, i64* %a.addr, align 8, !dbg !1220
  %shr7 = lshr i64 %6, 32, !dbg !1220
  %7 = load i64, i64* %b.addr, align 8, !dbg !1221
  %shr8 = lshr i64 %7, 32, !dbg !1221
  %mul9 = mul i64 %shr7, %shr8, !dbg !1222
  store i64 %mul9, i64* %phihi, align 8, !dbg !1223
  %8 = load i64, i64* %plolo, align 8, !dbg !1224
  %and10 = and i64 %8, 4294967295, !dbg !1224
  store i64 %and10, i64* %r0, align 8, !dbg !1225
  %9 = load i64, i64* %plolo, align 8, !dbg !1226
  %shr11 = lshr i64 %9, 32, !dbg !1226
  %10 = load i64, i64* %plohi, align 8, !dbg !1227
  %and12 = and i64 %10, 4294967295, !dbg !1227
  %add = add i64 %shr11, %and12, !dbg !1228
  %11 = load i64, i64* %philo, align 8, !dbg !1229
  %and13 = and i64 %11, 4294967295, !dbg !1229
  %add14 = add i64 %add, %and13, !dbg !1230
  store i64 %add14, i64* %r1, align 8, !dbg !1231
  %12 = load i64, i64* %r0, align 8, !dbg !1232
  %13 = load i64, i64* %r1, align 8, !dbg !1233
  %shl = shl i64 %13, 32, !dbg !1234
  %add15 = add i64 %12, %shl, !dbg !1235
  %14 = load i64*, i64** %lo.addr, align 4, !dbg !1236
  store i64 %add15, i64* %14, align 8, !dbg !1237
  %15 = load i64, i64* %plohi, align 8, !dbg !1238
  %shr16 = lshr i64 %15, 32, !dbg !1238
  %16 = load i64, i64* %philo, align 8, !dbg !1239
  %shr17 = lshr i64 %16, 32, !dbg !1239
  %add18 = add i64 %shr16, %shr17, !dbg !1240
  %17 = load i64, i64* %r1, align 8, !dbg !1241
  %shr19 = lshr i64 %17, 32, !dbg !1241
  %add20 = add i64 %add18, %shr19, !dbg !1242
  %18 = load i64, i64* %phihi, align 8, !dbg !1243
  %add21 = add i64 %add20, %18, !dbg !1244
  %19 = load i64*, i64** %hi.addr, align 4, !dbg !1245
  store i64 %add21, i64* %19, align 8, !dbg !1246
  ret void, !dbg !1247
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.11(i64 noundef %a) #0 !dbg !1248 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !1249
  %and = and i64 %0, -4294967296, !dbg !1250
  %tobool = icmp ne i64 %and, 0, !dbg !1250
  br i1 %tobool, label %if.then, label %if.else, !dbg !1249

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !1251
  %shr = lshr i64 %1, 32, !dbg !1252
  %conv = trunc i64 %shr to i32, !dbg !1251
  %2 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true), !dbg !1253
  store i32 %2, i32* %retval, align 4, !dbg !1254
  br label %return, !dbg !1254

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %a.addr, align 8, !dbg !1255
  %and1 = and i64 %3, 4294967295, !dbg !1256
  %conv2 = trunc i64 %and1 to i32, !dbg !1255
  %4 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 true), !dbg !1257
  %add = add nsw i32 32, %4, !dbg !1258
  store i32 %add, i32* %retval, align 4, !dbg !1259
  br label %return, !dbg !1259

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !1260
  ret i32 %5, !dbg !1260
}

; Function Attrs: noinline nounwind
define dso_local float @__divsf3(float noundef %a, float noundef %b) #0 !dbg !1261 {
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
  %0 = load float, float* %a.addr, align 4, !dbg !1262
  %call = call i32 @toRep.12(float noundef %0) #4, !dbg !1263
  %shr = lshr i32 %call, 23, !dbg !1264
  %and = and i32 %shr, 255, !dbg !1265
  store i32 %and, i32* %aExponent, align 4, !dbg !1266
  %1 = load float, float* %b.addr, align 4, !dbg !1267
  %call1 = call i32 @toRep.12(float noundef %1) #4, !dbg !1268
  %shr2 = lshr i32 %call1, 23, !dbg !1269
  %and3 = and i32 %shr2, 255, !dbg !1270
  store i32 %and3, i32* %bExponent, align 4, !dbg !1271
  %2 = load float, float* %a.addr, align 4, !dbg !1272
  %call4 = call i32 @toRep.12(float noundef %2) #4, !dbg !1273
  %3 = load float, float* %b.addr, align 4, !dbg !1274
  %call5 = call i32 @toRep.12(float noundef %3) #4, !dbg !1275
  %xor = xor i32 %call4, %call5, !dbg !1276
  %and6 = and i32 %xor, -2147483648, !dbg !1277
  store i32 %and6, i32* %quotientSign, align 4, !dbg !1278
  %4 = load float, float* %a.addr, align 4, !dbg !1279
  %call7 = call i32 @toRep.12(float noundef %4) #4, !dbg !1280
  %and8 = and i32 %call7, 8388607, !dbg !1281
  store i32 %and8, i32* %aSignificand, align 4, !dbg !1282
  %5 = load float, float* %b.addr, align 4, !dbg !1283
  %call9 = call i32 @toRep.12(float noundef %5) #4, !dbg !1284
  %and10 = and i32 %call9, 8388607, !dbg !1285
  store i32 %and10, i32* %bSignificand, align 4, !dbg !1286
  store i32 0, i32* %scale, align 4, !dbg !1287
  %6 = load i32, i32* %aExponent, align 4, !dbg !1288
  %sub = sub i32 %6, 1, !dbg !1289
  %cmp = icmp uge i32 %sub, 254, !dbg !1290
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1291

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !1292
  %sub11 = sub i32 %7, 1, !dbg !1293
  %cmp12 = icmp uge i32 %sub11, 254, !dbg !1294
  br i1 %cmp12, label %if.then, label %if.end60, !dbg !1288

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load float, float* %a.addr, align 4, !dbg !1295
  %call13 = call i32 @toRep.12(float noundef %8) #4, !dbg !1296
  %and14 = and i32 %call13, 2147483647, !dbg !1297
  store i32 %and14, i32* %aAbs, align 4, !dbg !1298
  %9 = load float, float* %b.addr, align 4, !dbg !1299
  %call15 = call i32 @toRep.12(float noundef %9) #4, !dbg !1300
  %and16 = and i32 %call15, 2147483647, !dbg !1301
  store i32 %and16, i32* %bAbs, align 4, !dbg !1302
  %10 = load i32, i32* %aAbs, align 4, !dbg !1303
  %cmp17 = icmp ugt i32 %10, 2139095040, !dbg !1304
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !1303

if.then18:                                        ; preds = %if.then
  %11 = load float, float* %a.addr, align 4, !dbg !1305
  %call19 = call i32 @toRep.12(float noundef %11) #4, !dbg !1306
  %or = or i32 %call19, 4194304, !dbg !1307
  %call20 = call float @fromRep.13(i32 noundef %or) #4, !dbg !1308
  store float %call20, float* %retval, align 4, !dbg !1309
  br label %return, !dbg !1309

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %bAbs, align 4, !dbg !1310
  %cmp21 = icmp ugt i32 %12, 2139095040, !dbg !1311
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !1310

if.then22:                                        ; preds = %if.end
  %13 = load float, float* %b.addr, align 4, !dbg !1312
  %call23 = call i32 @toRep.12(float noundef %13) #4, !dbg !1313
  %or24 = or i32 %call23, 4194304, !dbg !1314
  %call25 = call float @fromRep.13(i32 noundef %or24) #4, !dbg !1315
  store float %call25, float* %retval, align 4, !dbg !1316
  br label %return, !dbg !1316

if.end26:                                         ; preds = %if.end
  %14 = load i32, i32* %aAbs, align 4, !dbg !1317
  %cmp27 = icmp eq i32 %14, 2139095040, !dbg !1318
  br i1 %cmp27, label %if.then28, label %if.end34, !dbg !1317

if.then28:                                        ; preds = %if.end26
  %15 = load i32, i32* %bAbs, align 4, !dbg !1319
  %cmp29 = icmp eq i32 %15, 2139095040, !dbg !1320
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !1319

if.then30:                                        ; preds = %if.then28
  %call31 = call float @fromRep.13(i32 noundef 2143289344) #4, !dbg !1321
  store float %call31, float* %retval, align 4, !dbg !1322
  br label %return, !dbg !1322

if.else:                                          ; preds = %if.then28
  %16 = load i32, i32* %aAbs, align 4, !dbg !1323
  %17 = load i32, i32* %quotientSign, align 4, !dbg !1324
  %or32 = or i32 %16, %17, !dbg !1325
  %call33 = call float @fromRep.13(i32 noundef %or32) #4, !dbg !1326
  store float %call33, float* %retval, align 4, !dbg !1327
  br label %return, !dbg !1327

if.end34:                                         ; preds = %if.end26
  %18 = load i32, i32* %bAbs, align 4, !dbg !1328
  %cmp35 = icmp eq i32 %18, 2139095040, !dbg !1329
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !1328

if.then36:                                        ; preds = %if.end34
  %19 = load i32, i32* %quotientSign, align 4, !dbg !1330
  %call37 = call float @fromRep.13(i32 noundef %19) #4, !dbg !1331
  store float %call37, float* %retval, align 4, !dbg !1332
  br label %return, !dbg !1332

if.end38:                                         ; preds = %if.end34
  %20 = load i32, i32* %aAbs, align 4, !dbg !1333
  %tobool = icmp ne i32 %20, 0, !dbg !1333
  br i1 %tobool, label %if.end45, label %if.then39, !dbg !1334

if.then39:                                        ; preds = %if.end38
  %21 = load i32, i32* %bAbs, align 4, !dbg !1335
  %tobool40 = icmp ne i32 %21, 0, !dbg !1335
  br i1 %tobool40, label %if.else43, label %if.then41, !dbg !1336

if.then41:                                        ; preds = %if.then39
  %call42 = call float @fromRep.13(i32 noundef 2143289344) #4, !dbg !1337
  store float %call42, float* %retval, align 4, !dbg !1338
  br label %return, !dbg !1338

if.else43:                                        ; preds = %if.then39
  %22 = load i32, i32* %quotientSign, align 4, !dbg !1339
  %call44 = call float @fromRep.13(i32 noundef %22) #4, !dbg !1340
  store float %call44, float* %retval, align 4, !dbg !1341
  br label %return, !dbg !1341

if.end45:                                         ; preds = %if.end38
  %23 = load i32, i32* %bAbs, align 4, !dbg !1342
  %tobool46 = icmp ne i32 %23, 0, !dbg !1342
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !1343

if.then47:                                        ; preds = %if.end45
  %24 = load i32, i32* %quotientSign, align 4, !dbg !1344
  %or48 = or i32 2139095040, %24, !dbg !1345
  %call49 = call float @fromRep.13(i32 noundef %or48) #4, !dbg !1346
  store float %call49, float* %retval, align 4, !dbg !1347
  br label %return, !dbg !1347

if.end50:                                         ; preds = %if.end45
  %25 = load i32, i32* %aAbs, align 4, !dbg !1348
  %cmp51 = icmp ult i32 %25, 8388608, !dbg !1349
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !1348

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @normalize.14(i32* noundef %aSignificand) #4, !dbg !1350
  %26 = load i32, i32* %scale, align 4, !dbg !1351
  %add = add nsw i32 %26, %call53, !dbg !1351
  store i32 %add, i32* %scale, align 4, !dbg !1351
  br label %if.end54, !dbg !1352

if.end54:                                         ; preds = %if.then52, %if.end50
  %27 = load i32, i32* %bAbs, align 4, !dbg !1353
  %cmp55 = icmp ult i32 %27, 8388608, !dbg !1354
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !1353

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @normalize.14(i32* noundef %bSignificand) #4, !dbg !1355
  %28 = load i32, i32* %scale, align 4, !dbg !1356
  %sub58 = sub nsw i32 %28, %call57, !dbg !1356
  store i32 %sub58, i32* %scale, align 4, !dbg !1356
  br label %if.end59, !dbg !1357

if.end59:                                         ; preds = %if.then56, %if.end54
  br label %if.end60, !dbg !1358

if.end60:                                         ; preds = %if.end59, %lor.lhs.false
  %29 = load i32, i32* %aSignificand, align 4, !dbg !1359
  %or61 = or i32 %29, 8388608, !dbg !1359
  store i32 %or61, i32* %aSignificand, align 4, !dbg !1359
  %30 = load i32, i32* %bSignificand, align 4, !dbg !1360
  %or62 = or i32 %30, 8388608, !dbg !1360
  store i32 %or62, i32* %bSignificand, align 4, !dbg !1360
  %31 = load i32, i32* %aExponent, align 4, !dbg !1361
  %32 = load i32, i32* %bExponent, align 4, !dbg !1362
  %sub63 = sub i32 %31, %32, !dbg !1363
  %33 = load i32, i32* %scale, align 4, !dbg !1364
  %add64 = add i32 %sub63, %33, !dbg !1365
  store i32 %add64, i32* %quotientExponent, align 4, !dbg !1366
  %34 = load i32, i32* %bSignificand, align 4, !dbg !1367
  %shl = shl i32 %34, 8, !dbg !1368
  store i32 %shl, i32* %q31b, align 4, !dbg !1369
  %35 = load i32, i32* %q31b, align 4, !dbg !1370
  %sub65 = sub i32 1963258675, %35, !dbg !1371
  store i32 %sub65, i32* %reciprocal, align 4, !dbg !1372
  %36 = load i32, i32* %reciprocal, align 4, !dbg !1373
  %conv = zext i32 %36 to i64, !dbg !1374
  %37 = load i32, i32* %q31b, align 4, !dbg !1375
  %conv66 = zext i32 %37 to i64, !dbg !1375
  %mul = mul i64 %conv, %conv66, !dbg !1376
  %shr67 = lshr i64 %mul, 32, !dbg !1377
  %sub68 = sub i64 0, %shr67, !dbg !1378
  %conv69 = trunc i64 %sub68 to i32, !dbg !1378
  store i32 %conv69, i32* %correction, align 4, !dbg !1379
  %38 = load i32, i32* %reciprocal, align 4, !dbg !1380
  %conv70 = zext i32 %38 to i64, !dbg !1381
  %39 = load i32, i32* %correction, align 4, !dbg !1382
  %conv71 = zext i32 %39 to i64, !dbg !1382
  %mul72 = mul i64 %conv70, %conv71, !dbg !1383
  %shr73 = lshr i64 %mul72, 31, !dbg !1384
  %conv74 = trunc i64 %shr73 to i32, !dbg !1381
  store i32 %conv74, i32* %reciprocal, align 4, !dbg !1385
  %40 = load i32, i32* %reciprocal, align 4, !dbg !1386
  %conv75 = zext i32 %40 to i64, !dbg !1387
  %41 = load i32, i32* %q31b, align 4, !dbg !1388
  %conv76 = zext i32 %41 to i64, !dbg !1388
  %mul77 = mul i64 %conv75, %conv76, !dbg !1389
  %shr78 = lshr i64 %mul77, 32, !dbg !1390
  %sub79 = sub i64 0, %shr78, !dbg !1391
  %conv80 = trunc i64 %sub79 to i32, !dbg !1391
  store i32 %conv80, i32* %correction, align 4, !dbg !1392
  %42 = load i32, i32* %reciprocal, align 4, !dbg !1393
  %conv81 = zext i32 %42 to i64, !dbg !1394
  %43 = load i32, i32* %correction, align 4, !dbg !1395
  %conv82 = zext i32 %43 to i64, !dbg !1395
  %mul83 = mul i64 %conv81, %conv82, !dbg !1396
  %shr84 = lshr i64 %mul83, 31, !dbg !1397
  %conv85 = trunc i64 %shr84 to i32, !dbg !1394
  store i32 %conv85, i32* %reciprocal, align 4, !dbg !1398
  %44 = load i32, i32* %reciprocal, align 4, !dbg !1399
  %conv86 = zext i32 %44 to i64, !dbg !1400
  %45 = load i32, i32* %q31b, align 4, !dbg !1401
  %conv87 = zext i32 %45 to i64, !dbg !1401
  %mul88 = mul i64 %conv86, %conv87, !dbg !1402
  %shr89 = lshr i64 %mul88, 32, !dbg !1403
  %sub90 = sub i64 0, %shr89, !dbg !1404
  %conv91 = trunc i64 %sub90 to i32, !dbg !1404
  store i32 %conv91, i32* %correction, align 4, !dbg !1405
  %46 = load i32, i32* %reciprocal, align 4, !dbg !1406
  %conv92 = zext i32 %46 to i64, !dbg !1407
  %47 = load i32, i32* %correction, align 4, !dbg !1408
  %conv93 = zext i32 %47 to i64, !dbg !1408
  %mul94 = mul i64 %conv92, %conv93, !dbg !1409
  %shr95 = lshr i64 %mul94, 31, !dbg !1410
  %conv96 = trunc i64 %shr95 to i32, !dbg !1407
  store i32 %conv96, i32* %reciprocal, align 4, !dbg !1411
  %48 = load i32, i32* %reciprocal, align 4, !dbg !1412
  %sub97 = sub i32 %48, 2, !dbg !1412
  store i32 %sub97, i32* %reciprocal, align 4, !dbg !1412
  %49 = load i32, i32* %reciprocal, align 4, !dbg !1413
  %conv98 = zext i32 %49 to i64, !dbg !1414
  %50 = load i32, i32* %aSignificand, align 4, !dbg !1415
  %shl99 = shl i32 %50, 1, !dbg !1416
  %conv100 = zext i32 %shl99 to i64, !dbg !1417
  %mul101 = mul i64 %conv98, %conv100, !dbg !1418
  %shr102 = lshr i64 %mul101, 32, !dbg !1419
  %conv103 = trunc i64 %shr102 to i32, !dbg !1414
  store i32 %conv103, i32* %quotient, align 4, !dbg !1420
  %51 = load i32, i32* %quotient, align 4, !dbg !1421
  %cmp104 = icmp ult i32 %51, 16777216, !dbg !1422
  br i1 %cmp104, label %if.then106, label %if.else110, !dbg !1421

if.then106:                                       ; preds = %if.end60
  %52 = load i32, i32* %aSignificand, align 4, !dbg !1423
  %shl107 = shl i32 %52, 24, !dbg !1424
  %53 = load i32, i32* %quotient, align 4, !dbg !1425
  %54 = load i32, i32* %bSignificand, align 4, !dbg !1426
  %mul108 = mul i32 %53, %54, !dbg !1427
  %sub109 = sub i32 %shl107, %mul108, !dbg !1428
  store i32 %sub109, i32* %residual, align 4, !dbg !1429
  %55 = load i32, i32* %quotientExponent, align 4, !dbg !1430
  %dec = add nsw i32 %55, -1, !dbg !1430
  store i32 %dec, i32* %quotientExponent, align 4, !dbg !1430
  br label %if.end115, !dbg !1431

if.else110:                                       ; preds = %if.end60
  %56 = load i32, i32* %quotient, align 4, !dbg !1432
  %shr111 = lshr i32 %56, 1, !dbg !1432
  store i32 %shr111, i32* %quotient, align 4, !dbg !1432
  %57 = load i32, i32* %aSignificand, align 4, !dbg !1433
  %shl112 = shl i32 %57, 23, !dbg !1434
  %58 = load i32, i32* %quotient, align 4, !dbg !1435
  %59 = load i32, i32* %bSignificand, align 4, !dbg !1436
  %mul113 = mul i32 %58, %59, !dbg !1437
  %sub114 = sub i32 %shl112, %mul113, !dbg !1438
  store i32 %sub114, i32* %residual, align 4, !dbg !1439
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then106
  %60 = load i32, i32* %quotientExponent, align 4, !dbg !1440
  %add116 = add nsw i32 %60, 127, !dbg !1441
  store i32 %add116, i32* %writtenExponent, align 4, !dbg !1442
  %61 = load i32, i32* %writtenExponent, align 4, !dbg !1443
  %cmp117 = icmp sge i32 %61, 255, !dbg !1444
  br i1 %cmp117, label %if.then119, label %if.else122, !dbg !1443

if.then119:                                       ; preds = %if.end115
  %62 = load i32, i32* %quotientSign, align 4, !dbg !1445
  %or120 = or i32 2139095040, %62, !dbg !1446
  %call121 = call float @fromRep.13(i32 noundef %or120) #4, !dbg !1447
  store float %call121, float* %retval, align 4, !dbg !1448
  br label %return, !dbg !1448

if.else122:                                       ; preds = %if.end115
  %63 = load i32, i32* %writtenExponent, align 4, !dbg !1449
  %cmp123 = icmp slt i32 %63, 1, !dbg !1450
  br i1 %cmp123, label %if.then125, label %if.else127, !dbg !1449

if.then125:                                       ; preds = %if.else122
  %64 = load i32, i32* %quotientSign, align 4, !dbg !1451
  %call126 = call float @fromRep.13(i32 noundef %64) #4, !dbg !1452
  store float %call126, float* %retval, align 4, !dbg !1453
  br label %return, !dbg !1453

if.else127:                                       ; preds = %if.else122
  %65 = load i32, i32* %residual, align 4, !dbg !1454
  %shl128 = shl i32 %65, 1, !dbg !1455
  %66 = load i32, i32* %bSignificand, align 4, !dbg !1456
  %cmp129 = icmp ugt i32 %shl128, %66, !dbg !1457
  %frombool = zext i1 %cmp129 to i8, !dbg !1458
  store i8 %frombool, i8* %round, align 1, !dbg !1458
  %67 = load i32, i32* %quotient, align 4, !dbg !1459
  %and131 = and i32 %67, 8388607, !dbg !1460
  store i32 %and131, i32* %absResult, align 4, !dbg !1461
  %68 = load i32, i32* %writtenExponent, align 4, !dbg !1462
  %shl132 = shl i32 %68, 23, !dbg !1463
  %69 = load i32, i32* %absResult, align 4, !dbg !1464
  %or133 = or i32 %69, %shl132, !dbg !1464
  store i32 %or133, i32* %absResult, align 4, !dbg !1464
  %70 = load i8, i8* %round, align 1, !dbg !1465
  %tobool134 = trunc i8 %70 to i1, !dbg !1465
  %conv135 = zext i1 %tobool134 to i32, !dbg !1465
  %71 = load i32, i32* %absResult, align 4, !dbg !1466
  %add136 = add i32 %71, %conv135, !dbg !1466
  store i32 %add136, i32* %absResult, align 4, !dbg !1466
  %72 = load i32, i32* %absResult, align 4, !dbg !1467
  %73 = load i32, i32* %quotientSign, align 4, !dbg !1468
  %or137 = or i32 %72, %73, !dbg !1469
  %call138 = call float @fromRep.13(i32 noundef %or137) #4, !dbg !1470
  store float %call138, float* %retval, align 4, !dbg !1471
  br label %return, !dbg !1471

return:                                           ; preds = %if.else127, %if.then125, %if.then119, %if.then47, %if.else43, %if.then41, %if.then36, %if.else, %if.then30, %if.then22, %if.then18
  %74 = load float, float* %retval, align 4, !dbg !1472
  ret float %74, !dbg !1472
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.12(float noundef %x) #0 !dbg !1473 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1474
  %0 = load float, float* %x.addr, align 4, !dbg !1475
  store float %0, float* %f, align 4, !dbg !1474
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1476
  %1 = load i32, i32* %i, align 4, !dbg !1476
  ret i32 %1, !dbg !1477
}

; Function Attrs: noinline nounwind
define internal float @fromRep.13(i32 noundef %x) #0 !dbg !1478 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1479
  %0 = load i32, i32* %x.addr, align 4, !dbg !1480
  store i32 %0, i32* %i, align 4, !dbg !1479
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1481
  %1 = load float, float* %f, align 4, !dbg !1481
  ret float %1, !dbg !1482
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.14(i32* noundef %significand) #0 !dbg !1483 {
entry:
  %significand.addr = alloca i32*, align 4
  %shift = alloca i32, align 4
  store i32* %significand, i32** %significand.addr, align 4
  %0 = load i32*, i32** %significand.addr, align 4, !dbg !1484
  %1 = load i32, i32* %0, align 4, !dbg !1485
  %call = call i32 @rep_clz.15(i32 noundef %1) #4, !dbg !1486
  %call1 = call i32 @rep_clz.15(i32 noundef 8388608) #4, !dbg !1487
  %sub = sub nsw i32 %call, %call1, !dbg !1488
  store i32 %sub, i32* %shift, align 4, !dbg !1489
  %2 = load i32, i32* %shift, align 4, !dbg !1490
  %3 = load i32*, i32** %significand.addr, align 4, !dbg !1491
  %4 = load i32, i32* %3, align 4, !dbg !1492
  %shl = shl i32 %4, %2, !dbg !1492
  store i32 %shl, i32* %3, align 4, !dbg !1492
  %5 = load i32, i32* %shift, align 4, !dbg !1493
  %sub2 = sub nsw i32 1, %5, !dbg !1494
  ret i32 %sub2, !dbg !1495
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.15(i32 noundef %a) #0 !dbg !1496 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !1497
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !1498
  ret i32 %1, !dbg !1499
}

; Function Attrs: noinline nounwind
define dso_local float @__extendhfsf2(i16 noundef zeroext %a) #0 !dbg !1500 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2, !dbg !1501
  %call = call float @__extendXfYf2__(i16 noundef zeroext %0) #4, !dbg !1502
  ret float %call, !dbg !1503
}

; Function Attrs: noinline nounwind
define internal float @__extendXfYf2__(i16 noundef zeroext %a) #0 !dbg !1504 {
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
  store i32 16, i32* %srcBits, align 4, !dbg !1506
  store i32 5, i32* %srcExpBits, align 4, !dbg !1507
  store i32 31, i32* %srcInfExp, align 4, !dbg !1508
  store i32 15, i32* %srcExpBias, align 4, !dbg !1509
  store i16 1024, i16* %srcMinNormal, align 2, !dbg !1510
  store i16 31744, i16* %srcInfinity, align 2, !dbg !1511
  store i16 -32768, i16* %srcSignMask, align 2, !dbg !1512
  store i16 32767, i16* %srcAbsMask, align 2, !dbg !1513
  store i16 512, i16* %srcQNaN, align 2, !dbg !1514
  store i16 511, i16* %srcNaNCode, align 2, !dbg !1515
  store i32 32, i32* %dstBits, align 4, !dbg !1516
  store i32 8, i32* %dstExpBits, align 4, !dbg !1517
  store i32 255, i32* %dstInfExp, align 4, !dbg !1518
  store i32 127, i32* %dstExpBias, align 4, !dbg !1519
  store i32 8388608, i32* %dstMinNormal, align 4, !dbg !1520
  %0 = load i16, i16* %a.addr, align 2, !dbg !1521
  %call = call zeroext i16 @srcToRep(i16 noundef zeroext %0) #4, !dbg !1522
  store i16 %call, i16* %aRep, align 2, !dbg !1523
  %1 = load i16, i16* %aRep, align 2, !dbg !1524
  %conv = zext i16 %1 to i32, !dbg !1524
  %and = and i32 %conv, 32767, !dbg !1525
  %conv1 = trunc i32 %and to i16, !dbg !1524
  store i16 %conv1, i16* %aAbs, align 2, !dbg !1526
  %2 = load i16, i16* %aRep, align 2, !dbg !1527
  %conv2 = zext i16 %2 to i32, !dbg !1527
  %and3 = and i32 %conv2, 32768, !dbg !1528
  %conv4 = trunc i32 %and3 to i16, !dbg !1527
  store i16 %conv4, i16* %sign, align 2, !dbg !1529
  %3 = load i16, i16* %aAbs, align 2, !dbg !1530
  %conv5 = zext i16 %3 to i32, !dbg !1530
  %sub = sub nsw i32 %conv5, 1024, !dbg !1531
  %conv6 = trunc i32 %sub to i16, !dbg !1532
  %conv7 = zext i16 %conv6 to i32, !dbg !1532
  %cmp = icmp slt i32 %conv7, 30720, !dbg !1533
  br i1 %cmp, label %if.then, label %if.else, !dbg !1532

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %aAbs, align 2, !dbg !1534
  %conv9 = zext i16 %4 to i32, !dbg !1535
  %shl = shl i32 %conv9, 13, !dbg !1536
  store i32 %shl, i32* %absResult, align 4, !dbg !1537
  %5 = load i32, i32* %absResult, align 4, !dbg !1538
  %add = add i32 %5, 939524096, !dbg !1538
  store i32 %add, i32* %absResult, align 4, !dbg !1538
  br label %if.end34, !dbg !1539

if.else:                                          ; preds = %entry
  %6 = load i16, i16* %aAbs, align 2, !dbg !1540
  %conv10 = zext i16 %6 to i32, !dbg !1540
  %cmp11 = icmp sge i32 %conv10, 31744, !dbg !1541
  br i1 %cmp11, label %if.then13, label %if.else21, !dbg !1540

if.then13:                                        ; preds = %if.else
  store i32 2139095040, i32* %absResult, align 4, !dbg !1542
  %7 = load i16, i16* %aAbs, align 2, !dbg !1543
  %conv14 = zext i16 %7 to i32, !dbg !1543
  %and15 = and i32 %conv14, 512, !dbg !1544
  %shl16 = shl i32 %and15, 13, !dbg !1545
  %8 = load i32, i32* %absResult, align 4, !dbg !1546
  %or = or i32 %8, %shl16, !dbg !1546
  store i32 %or, i32* %absResult, align 4, !dbg !1546
  %9 = load i16, i16* %aAbs, align 2, !dbg !1547
  %conv17 = zext i16 %9 to i32, !dbg !1547
  %and18 = and i32 %conv17, 511, !dbg !1548
  %shl19 = shl i32 %and18, 13, !dbg !1549
  %10 = load i32, i32* %absResult, align 4, !dbg !1550
  %or20 = or i32 %10, %shl19, !dbg !1550
  store i32 %or20, i32* %absResult, align 4, !dbg !1550
  br label %if.end33, !dbg !1551

if.else21:                                        ; preds = %if.else
  %11 = load i16, i16* %aAbs, align 2, !dbg !1552
  %tobool = icmp ne i16 %11, 0, !dbg !1552
  br i1 %tobool, label %if.then22, label %if.else32, !dbg !1552

if.then22:                                        ; preds = %if.else21
  %12 = load i16, i16* %aAbs, align 2, !dbg !1553
  %conv23 = zext i16 %12 to i32, !dbg !1553
  %13 = call i32 @llvm.ctlz.i32(i32 %conv23, i1 true), !dbg !1554
  %sub24 = sub nsw i32 %13, 21, !dbg !1555
  store i32 %sub24, i32* %scale, align 4, !dbg !1556
  %14 = load i16, i16* %aAbs, align 2, !dbg !1557
  %conv25 = zext i16 %14 to i32, !dbg !1558
  %15 = load i32, i32* %scale, align 4, !dbg !1559
  %add26 = add nsw i32 13, %15, !dbg !1560
  %shl27 = shl i32 %conv25, %add26, !dbg !1561
  store i32 %shl27, i32* %absResult, align 4, !dbg !1562
  %16 = load i32, i32* %absResult, align 4, !dbg !1563
  %xor = xor i32 %16, 8388608, !dbg !1563
  store i32 %xor, i32* %absResult, align 4, !dbg !1563
  %17 = load i32, i32* %scale, align 4, !dbg !1564
  %sub28 = sub nsw i32 112, %17, !dbg !1565
  %add29 = add nsw i32 %sub28, 1, !dbg !1566
  store i32 %add29, i32* %resultExponent, align 4, !dbg !1567
  %18 = load i32, i32* %resultExponent, align 4, !dbg !1568
  %shl30 = shl i32 %18, 23, !dbg !1569
  %19 = load i32, i32* %absResult, align 4, !dbg !1570
  %or31 = or i32 %19, %shl30, !dbg !1570
  store i32 %or31, i32* %absResult, align 4, !dbg !1570
  br label %if.end, !dbg !1571

if.else32:                                        ; preds = %if.else21
  store i32 0, i32* %absResult, align 4, !dbg !1572
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then13
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then
  %20 = load i32, i32* %absResult, align 4, !dbg !1573
  %21 = load i16, i16* %sign, align 2, !dbg !1574
  %conv35 = zext i16 %21 to i32, !dbg !1575
  %shl36 = shl i32 %conv35, 16, !dbg !1576
  %or37 = or i32 %20, %shl36, !dbg !1577
  store i32 %or37, i32* %result, align 4, !dbg !1578
  %22 = load i32, i32* %result, align 4, !dbg !1579
  %call38 = call float @dstFromRep(i32 noundef %22) #4, !dbg !1580
  ret float %call38, !dbg !1581
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @srcToRep(i16 noundef zeroext %x) #0 !dbg !1582 {
entry:
  %x.addr = alloca i16, align 2
  %rep = alloca %union.anon, align 2
  store i16 %x, i16* %x.addr, align 2
  %f = bitcast %union.anon* %rep to i16*, !dbg !1584
  %0 = load i16, i16* %x.addr, align 2, !dbg !1585
  store i16 %0, i16* %f, align 2, !dbg !1584
  %i = bitcast %union.anon* %rep to i16*, !dbg !1586
  %1 = load i16, i16* %i, align 2, !dbg !1586
  ret i16 %1, !dbg !1587
}

; Function Attrs: noinline nounwind
define internal float @dstFromRep(i32 noundef %x) #0 !dbg !1588 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1589
  %0 = load i32, i32* %x.addr, align 4, !dbg !1590
  store i32 %0, i32* %i, align 4, !dbg !1589
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1591
  %1 = load float, float* %f, align 4, !dbg !1591
  ret float %1, !dbg !1592
}

; Function Attrs: noinline nounwind
define dso_local float @__gnu_h2f_ieee(i16 noundef zeroext %a) #0 !dbg !1593 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2, !dbg !1594
  %call = call float @__extendhfsf2(i16 noundef zeroext %0) #4, !dbg !1595
  ret float %call, !dbg !1596
}

; Function Attrs: noinline nounwind
define dso_local double @__extendsfdf2(float noundef %a) #0 !dbg !1597 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1598
  %call = call double @__extendXfYf2__.16(float noundef %0) #4, !dbg !1599
  ret double %call, !dbg !1600
}

; Function Attrs: noinline nounwind
define internal double @__extendXfYf2__.16(float noundef %a) #0 !dbg !1601 {
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
  store i32 32, i32* %srcBits, align 4, !dbg !1602
  store i32 8, i32* %srcExpBits, align 4, !dbg !1603
  store i32 255, i32* %srcInfExp, align 4, !dbg !1604
  store i32 127, i32* %srcExpBias, align 4, !dbg !1605
  store i32 8388608, i32* %srcMinNormal, align 4, !dbg !1606
  store i32 2139095040, i32* %srcInfinity, align 4, !dbg !1607
  store i32 -2147483648, i32* %srcSignMask, align 4, !dbg !1608
  store i32 2147483647, i32* %srcAbsMask, align 4, !dbg !1609
  store i32 4194304, i32* %srcQNaN, align 4, !dbg !1610
  store i32 4194303, i32* %srcNaNCode, align 4, !dbg !1611
  store i32 64, i32* %dstBits, align 4, !dbg !1612
  store i32 11, i32* %dstExpBits, align 4, !dbg !1613
  store i32 2047, i32* %dstInfExp, align 4, !dbg !1614
  store i32 1023, i32* %dstExpBias, align 4, !dbg !1615
  store i64 4503599627370496, i64* %dstMinNormal, align 8, !dbg !1616
  %0 = load float, float* %a.addr, align 4, !dbg !1617
  %call = call i32 @srcToRep.17(float noundef %0) #4, !dbg !1618
  store i32 %call, i32* %aRep, align 4, !dbg !1619
  %1 = load i32, i32* %aRep, align 4, !dbg !1620
  %and = and i32 %1, 2147483647, !dbg !1621
  store i32 %and, i32* %aAbs, align 4, !dbg !1622
  %2 = load i32, i32* %aRep, align 4, !dbg !1623
  %and1 = and i32 %2, -2147483648, !dbg !1624
  store i32 %and1, i32* %sign, align 4, !dbg !1625
  %3 = load i32, i32* %aAbs, align 4, !dbg !1626
  %sub = sub i32 %3, 8388608, !dbg !1627
  %cmp = icmp ult i32 %sub, 2130706432, !dbg !1628
  br i1 %cmp, label %if.then, label %if.else, !dbg !1629

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %aAbs, align 4, !dbg !1630
  %conv = zext i32 %4 to i64, !dbg !1631
  %shl = shl i64 %conv, 29, !dbg !1632
  store i64 %shl, i64* %absResult, align 8, !dbg !1633
  %5 = load i64, i64* %absResult, align 8, !dbg !1634
  %add = add i64 %5, 4035225266123964416, !dbg !1634
  store i64 %add, i64* %absResult, align 8, !dbg !1634
  br label %if.end25, !dbg !1635

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %aAbs, align 4, !dbg !1636
  %cmp2 = icmp uge i32 %6, 2139095040, !dbg !1637
  br i1 %cmp2, label %if.then4, label %if.else12, !dbg !1636

if.then4:                                         ; preds = %if.else
  store i64 9218868437227405312, i64* %absResult, align 8, !dbg !1638
  %7 = load i32, i32* %aAbs, align 4, !dbg !1639
  %and5 = and i32 %7, 4194304, !dbg !1640
  %conv6 = zext i32 %and5 to i64, !dbg !1641
  %shl7 = shl i64 %conv6, 29, !dbg !1642
  %8 = load i64, i64* %absResult, align 8, !dbg !1643
  %or = or i64 %8, %shl7, !dbg !1643
  store i64 %or, i64* %absResult, align 8, !dbg !1643
  %9 = load i32, i32* %aAbs, align 4, !dbg !1644
  %and8 = and i32 %9, 4194303, !dbg !1645
  %conv9 = zext i32 %and8 to i64, !dbg !1646
  %shl10 = shl i64 %conv9, 29, !dbg !1647
  %10 = load i64, i64* %absResult, align 8, !dbg !1648
  %or11 = or i64 %10, %shl10, !dbg !1648
  store i64 %or11, i64* %absResult, align 8, !dbg !1648
  br label %if.end24, !dbg !1649

if.else12:                                        ; preds = %if.else
  %11 = load i32, i32* %aAbs, align 4, !dbg !1650
  %tobool = icmp ne i32 %11, 0, !dbg !1650
  br i1 %tobool, label %if.then13, label %if.else23, !dbg !1650

if.then13:                                        ; preds = %if.else12
  %12 = load i32, i32* %aAbs, align 4, !dbg !1651
  %13 = call i32 @llvm.ctlz.i32(i32 %12, i1 true), !dbg !1652
  %sub14 = sub nsw i32 %13, 8, !dbg !1653
  store i32 %sub14, i32* %scale, align 4, !dbg !1654
  %14 = load i32, i32* %aAbs, align 4, !dbg !1655
  %conv15 = zext i32 %14 to i64, !dbg !1656
  %15 = load i32, i32* %scale, align 4, !dbg !1657
  %add16 = add nsw i32 29, %15, !dbg !1658
  %sh_prom = zext i32 %add16 to i64, !dbg !1659
  %shl17 = shl i64 %conv15, %sh_prom, !dbg !1659
  store i64 %shl17, i64* %absResult, align 8, !dbg !1660
  %16 = load i64, i64* %absResult, align 8, !dbg !1661
  %xor = xor i64 %16, 4503599627370496, !dbg !1661
  store i64 %xor, i64* %absResult, align 8, !dbg !1661
  %17 = load i32, i32* %scale, align 4, !dbg !1662
  %sub18 = sub nsw i32 896, %17, !dbg !1663
  %add19 = add nsw i32 %sub18, 1, !dbg !1664
  store i32 %add19, i32* %resultExponent, align 4, !dbg !1665
  %18 = load i32, i32* %resultExponent, align 4, !dbg !1666
  %conv20 = sext i32 %18 to i64, !dbg !1667
  %shl21 = shl i64 %conv20, 52, !dbg !1668
  %19 = load i64, i64* %absResult, align 8, !dbg !1669
  %or22 = or i64 %19, %shl21, !dbg !1669
  store i64 %or22, i64* %absResult, align 8, !dbg !1669
  br label %if.end, !dbg !1670

if.else23:                                        ; preds = %if.else12
  store i64 0, i64* %absResult, align 8, !dbg !1671
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then13
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %20 = load i64, i64* %absResult, align 8, !dbg !1672
  %21 = load i32, i32* %sign, align 4, !dbg !1673
  %conv26 = zext i32 %21 to i64, !dbg !1674
  %shl27 = shl i64 %conv26, 32, !dbg !1675
  %or28 = or i64 %20, %shl27, !dbg !1676
  store i64 %or28, i64* %result, align 8, !dbg !1677
  %22 = load i64, i64* %result, align 8, !dbg !1678
  %call29 = call double @dstFromRep.18(i64 noundef %22) #4, !dbg !1679
  ret double %call29, !dbg !1680
}

; Function Attrs: noinline nounwind
define internal i32 @srcToRep.17(float noundef %x) #0 !dbg !1681 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1682
  %0 = load float, float* %x.addr, align 4, !dbg !1683
  store float %0, float* %f, align 4, !dbg !1682
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1684
  %1 = load i32, i32* %i, align 4, !dbg !1684
  ret i32 %1, !dbg !1685
}

; Function Attrs: noinline nounwind
define internal double @dstFromRep.18(i64 noundef %x) #0 !dbg !1686 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1687
  %0 = load i64, i64* %x.addr, align 8, !dbg !1688
  store i64 %0, i64* %i, align 8, !dbg !1687
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1689
  %1 = load double, double* %f, align 8, !dbg !1689
  ret double %1, !dbg !1690
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixdfdi(double noundef %a) #0 !dbg !1691 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1692
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !1693
  br i1 %cmp, label %if.then, label %if.end, !dbg !1692

if.then:                                          ; preds = %entry
  %1 = load double, double* %a.addr, align 8, !dbg !1694
  %fneg = fneg double %1, !dbg !1695
  %call = call i64 @__fixunsdfdi(double noundef %fneg) #4, !dbg !1696
  %sub = sub i64 0, %call, !dbg !1697
  store i64 %sub, i64* %retval, align 8, !dbg !1698
  br label %return, !dbg !1698

if.end:                                           ; preds = %entry
  %2 = load double, double* %a.addr, align 8, !dbg !1699
  %call1 = call i64 @__fixunsdfdi(double noundef %2) #4, !dbg !1700
  store i64 %call1, i64* %retval, align 8, !dbg !1701
  br label %return, !dbg !1701

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !1702
  ret i64 %3, !dbg !1702
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixdfsi(double noundef %a) #0 !dbg !1703 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1704
  %call = call i32 @__fixint(double noundef %0) #4, !dbg !1705
  ret i32 %call, !dbg !1706
}

; Function Attrs: noinline nounwind
define internal i32 @__fixint(double noundef %a) #0 !dbg !1707 {
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
  store i32 2147483647, i32* %fixint_max, align 4, !dbg !1709
  store i32 -2147483648, i32* %fixint_min, align 4, !dbg !1710
  %0 = load double, double* %a.addr, align 8, !dbg !1711
  %call = call i64 @toRep.19(double noundef %0) #4, !dbg !1712
  store i64 %call, i64* %aRep, align 8, !dbg !1713
  %1 = load i64, i64* %aRep, align 8, !dbg !1714
  %and = and i64 %1, 9223372036854775807, !dbg !1715
  store i64 %and, i64* %aAbs, align 8, !dbg !1716
  %2 = load i64, i64* %aRep, align 8, !dbg !1717
  %and1 = and i64 %2, -9223372036854775808, !dbg !1718
  %tobool = icmp ne i64 %and1, 0, !dbg !1717
  %3 = zext i1 %tobool to i64, !dbg !1717
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1717
  store i32 %cond, i32* %sign, align 4, !dbg !1719
  %4 = load i64, i64* %aAbs, align 8, !dbg !1720
  %shr = lshr i64 %4, 52, !dbg !1721
  %sub = sub i64 %shr, 1023, !dbg !1722
  %conv = trunc i64 %sub to i32, !dbg !1723
  store i32 %conv, i32* %exponent, align 4, !dbg !1724
  %5 = load i64, i64* %aAbs, align 8, !dbg !1725
  %and2 = and i64 %5, 4503599627370495, !dbg !1726
  %or = or i64 %and2, 4503599627370496, !dbg !1727
  store i64 %or, i64* %significand, align 8, !dbg !1728
  %6 = load i32, i32* %exponent, align 4, !dbg !1729
  %cmp = icmp slt i32 %6, 0, !dbg !1730
  br i1 %cmp, label %if.then, label %if.end, !dbg !1729

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1731
  br label %return, !dbg !1731

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1732
  %cmp4 = icmp uge i32 %7, 32, !dbg !1733
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1734

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %sign, align 4, !dbg !1735
  %cmp7 = icmp eq i32 %8, 1, !dbg !1736
  %9 = zext i1 %cmp7 to i64, !dbg !1735
  %cond9 = select i1 %cmp7, i32 2147483647, i32 -2147483648, !dbg !1735
  store i32 %cond9, i32* %retval, align 4, !dbg !1737
  br label %return, !dbg !1737

if.end10:                                         ; preds = %if.end
  %10 = load i32, i32* %exponent, align 4, !dbg !1738
  %cmp11 = icmp slt i32 %10, 52, !dbg !1739
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1738

if.then13:                                        ; preds = %if.end10
  %11 = load i32, i32* %sign, align 4, !dbg !1740
  %conv14 = sext i32 %11 to i64, !dbg !1740
  %12 = load i64, i64* %significand, align 8, !dbg !1741
  %13 = load i32, i32* %exponent, align 4, !dbg !1742
  %sub15 = sub nsw i32 52, %13, !dbg !1743
  %sh_prom = zext i32 %sub15 to i64, !dbg !1744
  %shr16 = lshr i64 %12, %sh_prom, !dbg !1744
  %mul = mul i64 %conv14, %shr16, !dbg !1745
  %conv17 = trunc i64 %mul to i32, !dbg !1740
  store i32 %conv17, i32* %retval, align 4, !dbg !1746
  br label %return, !dbg !1746

if.else:                                          ; preds = %if.end10
  %14 = load i32, i32* %sign, align 4, !dbg !1747
  %15 = load i64, i64* %significand, align 8, !dbg !1748
  %conv18 = trunc i64 %15 to i32, !dbg !1749
  %16 = load i32, i32* %exponent, align 4, !dbg !1750
  %sub19 = sub nsw i32 %16, 52, !dbg !1751
  %shl = shl i32 %conv18, %sub19, !dbg !1752
  %mul20 = mul nsw i32 %14, %shl, !dbg !1753
  store i32 %mul20, i32* %retval, align 4, !dbg !1754
  br label %return, !dbg !1754

return:                                           ; preds = %if.else, %if.then13, %if.then6, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1755
  ret i32 %17, !dbg !1755
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.19(double noundef %x) #0 !dbg !1756 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1757
  %0 = load double, double* %x.addr, align 8, !dbg !1758
  store double %0, double* %f, align 8, !dbg !1757
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1759
  %1 = load i64, i64* %i, align 8, !dbg !1759
  ret i64 %1, !dbg !1760
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixsfdi(float noundef %a) #0 !dbg !1761 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1762
  %cmp = fcmp olt float %0, 0.000000e+00, !dbg !1763
  br i1 %cmp, label %if.then, label %if.end, !dbg !1762

if.then:                                          ; preds = %entry
  %1 = load float, float* %a.addr, align 4, !dbg !1764
  %fneg = fneg float %1, !dbg !1765
  %call = call i64 @__fixunssfdi(float noundef %fneg) #4, !dbg !1766
  %sub = sub i64 0, %call, !dbg !1767
  store i64 %sub, i64* %retval, align 8, !dbg !1768
  br label %return, !dbg !1768

if.end:                                           ; preds = %entry
  %2 = load float, float* %a.addr, align 4, !dbg !1769
  %call1 = call i64 @__fixunssfdi(float noundef %2) #4, !dbg !1770
  store i64 %call1, i64* %retval, align 8, !dbg !1771
  br label %return, !dbg !1771

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !1772
  ret i64 %3, !dbg !1772
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixsfsi(float noundef %a) #0 !dbg !1773 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1774
  %call = call i32 @__fixint.20(float noundef %0) #4, !dbg !1775
  ret i32 %call, !dbg !1776
}

; Function Attrs: noinline nounwind
define internal i32 @__fixint.20(float noundef %a) #0 !dbg !1777 {
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
  store i32 2147483647, i32* %fixint_max, align 4, !dbg !1778
  store i32 -2147483648, i32* %fixint_min, align 4, !dbg !1779
  %0 = load float, float* %a.addr, align 4, !dbg !1780
  %call = call i32 @toRep.21(float noundef %0) #4, !dbg !1781
  store i32 %call, i32* %aRep, align 4, !dbg !1782
  %1 = load i32, i32* %aRep, align 4, !dbg !1783
  %and = and i32 %1, 2147483647, !dbg !1784
  store i32 %and, i32* %aAbs, align 4, !dbg !1785
  %2 = load i32, i32* %aRep, align 4, !dbg !1786
  %and1 = and i32 %2, -2147483648, !dbg !1787
  %tobool = icmp ne i32 %and1, 0, !dbg !1786
  %3 = zext i1 %tobool to i64, !dbg !1786
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1786
  store i32 %cond, i32* %sign, align 4, !dbg !1788
  %4 = load i32, i32* %aAbs, align 4, !dbg !1789
  %shr = lshr i32 %4, 23, !dbg !1790
  %sub = sub i32 %shr, 127, !dbg !1791
  store i32 %sub, i32* %exponent, align 4, !dbg !1792
  %5 = load i32, i32* %aAbs, align 4, !dbg !1793
  %and2 = and i32 %5, 8388607, !dbg !1794
  %or = or i32 %and2, 8388608, !dbg !1795
  store i32 %or, i32* %significand, align 4, !dbg !1796
  %6 = load i32, i32* %exponent, align 4, !dbg !1797
  %cmp = icmp slt i32 %6, 0, !dbg !1798
  br i1 %cmp, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1799
  br label %return, !dbg !1799

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1800
  %cmp3 = icmp uge i32 %7, 32, !dbg !1801
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1802

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %sign, align 4, !dbg !1803
  %cmp5 = icmp eq i32 %8, 1, !dbg !1804
  %9 = zext i1 %cmp5 to i64, !dbg !1803
  %cond6 = select i1 %cmp5, i32 2147483647, i32 -2147483648, !dbg !1803
  store i32 %cond6, i32* %retval, align 4, !dbg !1805
  br label %return, !dbg !1805

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %exponent, align 4, !dbg !1806
  %cmp8 = icmp slt i32 %10, 23, !dbg !1807
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1806

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* %sign, align 4, !dbg !1808
  %12 = load i32, i32* %significand, align 4, !dbg !1809
  %13 = load i32, i32* %exponent, align 4, !dbg !1810
  %sub10 = sub nsw i32 23, %13, !dbg !1811
  %shr11 = lshr i32 %12, %sub10, !dbg !1812
  %mul = mul i32 %11, %shr11, !dbg !1813
  store i32 %mul, i32* %retval, align 4, !dbg !1814
  br label %return, !dbg !1814

if.else:                                          ; preds = %if.end7
  %14 = load i32, i32* %sign, align 4, !dbg !1815
  %15 = load i32, i32* %significand, align 4, !dbg !1816
  %16 = load i32, i32* %exponent, align 4, !dbg !1817
  %sub12 = sub nsw i32 %16, 23, !dbg !1818
  %shl = shl i32 %15, %sub12, !dbg !1819
  %mul13 = mul nsw i32 %14, %shl, !dbg !1820
  store i32 %mul13, i32* %retval, align 4, !dbg !1821
  br label %return, !dbg !1821

return:                                           ; preds = %if.else, %if.then9, %if.then4, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1822
  ret i32 %17, !dbg !1822
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.21(float noundef %x) #0 !dbg !1823 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1824
  %0 = load float, float* %x.addr, align 4, !dbg !1825
  store float %0, float* %f, align 4, !dbg !1824
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1826
  %1 = load i32, i32* %i, align 4, !dbg !1826
  ret i32 %1, !dbg !1827
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixunsdfdi(double noundef %a) #0 !dbg !1828 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca double, align 8
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1829
  %cmp = fcmp ole double %0, 0.000000e+00, !dbg !1830
  br i1 %cmp, label %if.then, label %if.end, !dbg !1829

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1831
  br label %return, !dbg !1831

if.end:                                           ; preds = %entry
  %1 = load double, double* %a.addr, align 8, !dbg !1832
  %div = fdiv double %1, 0x41F0000000000000, !dbg !1833
  %conv = fptoui double %div to i32, !dbg !1832
  store i32 %conv, i32* %high, align 4, !dbg !1834
  %2 = load double, double* %a.addr, align 8, !dbg !1835
  %3 = load i32, i32* %high, align 4, !dbg !1836
  %conv1 = uitofp i32 %3 to double, !dbg !1837
  %neg = fneg double %conv1, !dbg !1838
  %4 = call double @llvm.fmuladd.f64(double %neg, double 0x41F0000000000000, double %2), !dbg !1838
  %conv2 = fptoui double %4 to i32, !dbg !1835
  store i32 %conv2, i32* %low, align 4, !dbg !1839
  %5 = load i32, i32* %high, align 4, !dbg !1840
  %conv3 = zext i32 %5 to i64, !dbg !1841
  %shl = shl i64 %conv3, 32, !dbg !1842
  %6 = load i32, i32* %low, align 4, !dbg !1843
  %conv4 = zext i32 %6 to i64, !dbg !1843
  %or = or i64 %shl, %conv4, !dbg !1844
  store i64 %or, i64* %retval, align 8, !dbg !1845
  br label %return, !dbg !1845

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !1846
  ret i64 %7, !dbg !1846
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define dso_local i32 @__fixunsdfsi(double noundef %a) #0 !dbg !1847 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1848
  %call = call i32 @__fixuint(double noundef %0) #4, !dbg !1849
  ret i32 %call, !dbg !1850
}

; Function Attrs: noinline nounwind
define internal i32 @__fixuint(double noundef %a) #0 !dbg !1851 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %aRep = alloca i64, align 8
  %aAbs = alloca i64, align 8
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %significand = alloca i64, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !1853
  %call = call i64 @toRep.24(double noundef %0) #4, !dbg !1854
  store i64 %call, i64* %aRep, align 8, !dbg !1855
  %1 = load i64, i64* %aRep, align 8, !dbg !1856
  %and = and i64 %1, 9223372036854775807, !dbg !1857
  store i64 %and, i64* %aAbs, align 8, !dbg !1858
  %2 = load i64, i64* %aRep, align 8, !dbg !1859
  %and1 = and i64 %2, -9223372036854775808, !dbg !1860
  %tobool = icmp ne i64 %and1, 0, !dbg !1859
  %3 = zext i1 %tobool to i64, !dbg !1859
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1859
  store i32 %cond, i32* %sign, align 4, !dbg !1861
  %4 = load i64, i64* %aAbs, align 8, !dbg !1862
  %shr = lshr i64 %4, 52, !dbg !1863
  %sub = sub i64 %shr, 1023, !dbg !1864
  %conv = trunc i64 %sub to i32, !dbg !1865
  store i32 %conv, i32* %exponent, align 4, !dbg !1866
  %5 = load i64, i64* %aAbs, align 8, !dbg !1867
  %and2 = and i64 %5, 4503599627370495, !dbg !1868
  %or = or i64 %and2, 4503599627370496, !dbg !1869
  store i64 %or, i64* %significand, align 8, !dbg !1870
  %6 = load i32, i32* %sign, align 4, !dbg !1871
  %cmp = icmp eq i32 %6, -1, !dbg !1872
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1873

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1874
  %cmp4 = icmp slt i32 %7, 0, !dbg !1875
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1871

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1876
  br label %return, !dbg !1876

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %exponent, align 4, !dbg !1877
  %cmp6 = icmp uge i32 %8, 32, !dbg !1878
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1879

if.then8:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1880
  br label %return, !dbg !1880

if.end9:                                          ; preds = %if.end
  %9 = load i32, i32* %exponent, align 4, !dbg !1881
  %cmp10 = icmp slt i32 %9, 52, !dbg !1882
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1881

if.then12:                                        ; preds = %if.end9
  %10 = load i64, i64* %significand, align 8, !dbg !1883
  %11 = load i32, i32* %exponent, align 4, !dbg !1884
  %sub13 = sub nsw i32 52, %11, !dbg !1885
  %sh_prom = zext i32 %sub13 to i64, !dbg !1886
  %shr14 = lshr i64 %10, %sh_prom, !dbg !1886
  %conv15 = trunc i64 %shr14 to i32, !dbg !1883
  store i32 %conv15, i32* %retval, align 4, !dbg !1887
  br label %return, !dbg !1887

if.else:                                          ; preds = %if.end9
  %12 = load i64, i64* %significand, align 8, !dbg !1888
  %conv16 = trunc i64 %12 to i32, !dbg !1889
  %13 = load i32, i32* %exponent, align 4, !dbg !1890
  %sub17 = sub nsw i32 %13, 52, !dbg !1891
  %shl = shl i32 %conv16, %sub17, !dbg !1892
  store i32 %shl, i32* %retval, align 4, !dbg !1893
  br label %return, !dbg !1893

return:                                           ; preds = %if.else, %if.then12, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1894
  ret i32 %14, !dbg !1894
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.24(double noundef %x) #0 !dbg !1895 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !1896
  %0 = load double, double* %x.addr, align 8, !dbg !1897
  store double %0, double* %f, align 8, !dbg !1896
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !1898
  %1 = load i64, i64* %i, align 8, !dbg !1898
  ret i64 %1, !dbg !1899
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixunssfdi(float noundef %a) #0 !dbg !1900 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca float, align 4
  %da = alloca double, align 8
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1901
  %cmp = fcmp ole float %0, 0.000000e+00, !dbg !1902
  br i1 %cmp, label %if.then, label %if.end, !dbg !1901

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1903
  br label %return, !dbg !1903

if.end:                                           ; preds = %entry
  %1 = load float, float* %a.addr, align 4, !dbg !1904
  %conv = fpext float %1 to double, !dbg !1904
  store double %conv, double* %da, align 8, !dbg !1905
  %2 = load double, double* %da, align 8, !dbg !1906
  %div = fdiv double %2, 0x41F0000000000000, !dbg !1907
  %conv1 = fptoui double %div to i32, !dbg !1906
  store i32 %conv1, i32* %high, align 4, !dbg !1908
  %3 = load double, double* %da, align 8, !dbg !1909
  %4 = load i32, i32* %high, align 4, !dbg !1910
  %conv2 = uitofp i32 %4 to double, !dbg !1911
  %neg = fneg double %conv2, !dbg !1912
  %5 = call double @llvm.fmuladd.f64(double %neg, double 0x41F0000000000000, double %3), !dbg !1912
  %conv3 = fptoui double %5 to i32, !dbg !1909
  store i32 %conv3, i32* %low, align 4, !dbg !1913
  %6 = load i32, i32* %high, align 4, !dbg !1914
  %conv4 = zext i32 %6 to i64, !dbg !1915
  %shl = shl i64 %conv4, 32, !dbg !1916
  %7 = load i32, i32* %low, align 4, !dbg !1917
  %conv5 = zext i32 %7 to i64, !dbg !1917
  %or = or i64 %shl, %conv5, !dbg !1918
  store i64 %or, i64* %retval, align 8, !dbg !1919
  br label %return, !dbg !1919

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval, align 8, !dbg !1920
  ret i64 %8, !dbg !1920
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixunssfsi(float noundef %a) #0 !dbg !1921 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1922
  %call = call i32 @__fixuint.27(float noundef %0) #4, !dbg !1923
  ret i32 %call, !dbg !1924
}

; Function Attrs: noinline nounwind
define internal i32 @__fixuint.27(float noundef %a) #0 !dbg !1925 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %aRep = alloca i32, align 4
  %aAbs = alloca i32, align 4
  %sign = alloca i32, align 4
  %exponent = alloca i32, align 4
  %significand = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !1926
  %call = call i32 @toRep.28(float noundef %0) #4, !dbg !1927
  store i32 %call, i32* %aRep, align 4, !dbg !1928
  %1 = load i32, i32* %aRep, align 4, !dbg !1929
  %and = and i32 %1, 2147483647, !dbg !1930
  store i32 %and, i32* %aAbs, align 4, !dbg !1931
  %2 = load i32, i32* %aRep, align 4, !dbg !1932
  %and1 = and i32 %2, -2147483648, !dbg !1933
  %tobool = icmp ne i32 %and1, 0, !dbg !1932
  %3 = zext i1 %tobool to i64, !dbg !1932
  %cond = select i1 %tobool, i32 -1, i32 1, !dbg !1932
  store i32 %cond, i32* %sign, align 4, !dbg !1934
  %4 = load i32, i32* %aAbs, align 4, !dbg !1935
  %shr = lshr i32 %4, 23, !dbg !1936
  %sub = sub i32 %shr, 127, !dbg !1937
  store i32 %sub, i32* %exponent, align 4, !dbg !1938
  %5 = load i32, i32* %aAbs, align 4, !dbg !1939
  %and2 = and i32 %5, 8388607, !dbg !1940
  %or = or i32 %and2, 8388608, !dbg !1941
  store i32 %or, i32* %significand, align 4, !dbg !1942
  %6 = load i32, i32* %sign, align 4, !dbg !1943
  %cmp = icmp eq i32 %6, -1, !dbg !1944
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1945

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %exponent, align 4, !dbg !1946
  %cmp3 = icmp slt i32 %7, 0, !dbg !1947
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1943

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1948
  br label %return, !dbg !1948

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %exponent, align 4, !dbg !1949
  %cmp4 = icmp uge i32 %8, 32, !dbg !1950
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1951

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %exponent, align 4, !dbg !1953
  %cmp7 = icmp slt i32 %9, 23, !dbg !1954
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1953

if.then8:                                         ; preds = %if.end6
  %10 = load i32, i32* %significand, align 4, !dbg !1955
  %11 = load i32, i32* %exponent, align 4, !dbg !1956
  %sub9 = sub nsw i32 23, %11, !dbg !1957
  %shr10 = lshr i32 %10, %sub9, !dbg !1958
  store i32 %shr10, i32* %retval, align 4, !dbg !1959
  br label %return, !dbg !1959

if.else:                                          ; preds = %if.end6
  %12 = load i32, i32* %significand, align 4, !dbg !1960
  %13 = load i32, i32* %exponent, align 4, !dbg !1961
  %sub11 = sub nsw i32 %13, 23, !dbg !1962
  %shl = shl i32 %12, %sub11, !dbg !1963
  store i32 %shl, i32* %retval, align 4, !dbg !1964
  br label %return, !dbg !1964

return:                                           ; preds = %if.else, %if.then8, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1965
  ret i32 %14, !dbg !1965
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.28(float noundef %x) #0 !dbg !1966 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !1967
  %0 = load float, float* %x.addr, align 4, !dbg !1968
  store float %0, float* %f, align 4, !dbg !1967
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !1969
  %1 = load i32, i32* %i, align 4, !dbg !1969
  ret i32 %1, !dbg !1970
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixunsxfdi(fp128 noundef %a) #0 !dbg !1971 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca fp128, align 16
  %fb = alloca %union.long_double_bits, align 16
  %e = alloca i32, align 4
  store fp128 %a, fp128* %a.addr, align 16
  %0 = load fp128, fp128* %a.addr, align 16, !dbg !1972
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !1973
  store fp128 %0, fp128* %f, align 16, !dbg !1974
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !1975
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !1976
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !1977
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !1978
  %1 = load i32, i32* %low, align 8, !dbg !1978
  %and = and i32 %1, 32767, !dbg !1979
  %sub = sub i32 %and, 16383, !dbg !1980
  store i32 %sub, i32* %e, align 4, !dbg !1981
  %2 = load i32, i32* %e, align 4, !dbg !1982
  %cmp = icmp slt i32 %2, 0, !dbg !1983
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1984

lor.lhs.false:                                    ; preds = %entry
  %u1 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !1985
  %high2 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u1, i32 0, i32 1, !dbg !1986
  %s3 = bitcast %union.udwords* %high2 to %struct.anon*, !dbg !1987
  %low4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 0, !dbg !1988
  %3 = load i32, i32* %low4, align 8, !dbg !1988
  %and5 = and i32 %3, 32768, !dbg !1989
  %tobool = icmp ne i32 %and5, 0, !dbg !1989
  br i1 %tobool, label %if.then, label %if.end, !dbg !1982

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval, align 8, !dbg !1990
  br label %return, !dbg !1990

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %e, align 4, !dbg !1991
  %cmp6 = icmp ugt i32 %4, 64, !dbg !1992
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1993

if.then7:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !1994
  br label %return, !dbg !1994

if.end8:                                          ; preds = %if.end
  %u9 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !1995
  %low10 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u9, i32 0, i32 0, !dbg !1996
  %all = bitcast %union.udwords* %low10 to i64*, !dbg !1997
  %5 = load i64, i64* %all, align 16, !dbg !1997
  %6 = load i32, i32* %e, align 4, !dbg !1998
  %sub11 = sub nsw i32 63, %6, !dbg !1999
  %sh_prom = zext i32 %sub11 to i64, !dbg !2000
  %shr = lshr i64 %5, %sh_prom, !dbg !2000
  store i64 %shr, i64* %retval, align 8, !dbg !2001
  br label %return, !dbg !2001

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !2002
  ret i64 %7, !dbg !2002
}

; Function Attrs: noinline nounwind
define dso_local i32 @__fixunsxfsi(fp128 noundef %a) #0 !dbg !2003 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca fp128, align 16
  %fb = alloca %union.long_double_bits, align 16
  %e = alloca i32, align 4
  store fp128 %a, fp128* %a.addr, align 16
  %0 = load fp128, fp128* %a.addr, align 16, !dbg !2004
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2005
  store fp128 %0, fp128* %f, align 16, !dbg !2006
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2007
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2008
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !2009
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2010
  %1 = load i32, i32* %low, align 8, !dbg !2010
  %and = and i32 %1, 32767, !dbg !2011
  %sub = sub i32 %and, 16383, !dbg !2012
  store i32 %sub, i32* %e, align 4, !dbg !2013
  %2 = load i32, i32* %e, align 4, !dbg !2014
  %cmp = icmp slt i32 %2, 0, !dbg !2015
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2016

lor.lhs.false:                                    ; preds = %entry
  %u1 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2017
  %high2 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u1, i32 0, i32 1, !dbg !2018
  %s3 = bitcast %union.udwords* %high2 to %struct.anon*, !dbg !2019
  %low4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 0, !dbg !2020
  %3 = load i32, i32* %low4, align 8, !dbg !2020
  %and5 = and i32 %3, 32768, !dbg !2021
  %tobool = icmp ne i32 %and5, 0, !dbg !2021
  br i1 %tobool, label %if.then, label %if.end, !dbg !2014

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2022
  br label %return, !dbg !2022

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %e, align 4, !dbg !2023
  %cmp6 = icmp ugt i32 %4, 32, !dbg !2024
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2025

if.then7:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !2026
  br label %return, !dbg !2026

if.end8:                                          ; preds = %if.end
  %u9 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2027
  %low10 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u9, i32 0, i32 0, !dbg !2028
  %s11 = bitcast %union.udwords* %low10 to %struct.anon*, !dbg !2029
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !2030
  %5 = load i32, i32* %high12, align 4, !dbg !2030
  %6 = load i32, i32* %e, align 4, !dbg !2031
  %sub13 = sub nsw i32 31, %6, !dbg !2032
  %shr = lshr i32 %5, %sub13, !dbg !2033
  store i32 %shr, i32* %retval, align 4, !dbg !2034
  br label %return, !dbg !2034

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2035
  ret i32 %7, !dbg !2035
}

; Function Attrs: noinline nounwind
define dso_local i64 @__fixxfdi(fp128 noundef %a) #0 !dbg !2036 {
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
  store i64 9223372036854775807, i64* %di_max, align 8, !dbg !2037
  store i64 -9223372036854775808, i64* %di_min, align 8, !dbg !2038
  %0 = load fp128, fp128* %a.addr, align 16, !dbg !2039
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2040
  store fp128 %0, fp128* %f, align 16, !dbg !2041
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2042
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2043
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !2044
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2045
  %1 = load i32, i32* %low, align 8, !dbg !2045
  %and = and i32 %1, 32767, !dbg !2046
  %sub = sub i32 %and, 16383, !dbg !2047
  store i32 %sub, i32* %e, align 4, !dbg !2048
  %2 = load i32, i32* %e, align 4, !dbg !2049
  %cmp = icmp slt i32 %2, 0, !dbg !2050
  br i1 %cmp, label %if.then, label %if.end, !dbg !2049

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2051
  br label %return, !dbg !2051

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %e, align 4, !dbg !2052
  %cmp1 = icmp uge i32 %3, 64, !dbg !2053
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2054

if.then2:                                         ; preds = %if.end
  %4 = load fp128, fp128* %a.addr, align 16, !dbg !2055
  %cmp3 = fcmp ogt fp128 %4, 0xL00000000000000000000000000000000, !dbg !2056
  %5 = zext i1 %cmp3 to i64, !dbg !2055
  %cond = select i1 %cmp3, i64 9223372036854775807, i64 -9223372036854775808, !dbg !2055
  store i64 %cond, i64* %retval, align 8, !dbg !2057
  br label %return, !dbg !2057

if.end4:                                          ; preds = %if.end
  %u6 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2058
  %high7 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u6, i32 0, i32 1, !dbg !2059
  %s8 = bitcast %union.udwords* %high7 to %struct.anon*, !dbg !2060
  %low9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 0, !dbg !2061
  %6 = load i32, i32* %low9, align 8, !dbg !2061
  %and10 = and i32 %6, 32768, !dbg !2062
  %shr = lshr i32 %and10, 15, !dbg !2063
  %sub11 = sub nsw i32 0, %shr, !dbg !2064
  %conv = sext i32 %sub11 to i64, !dbg !2064
  store i64 %conv, i64* %s5, align 8, !dbg !2065
  %u12 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2066
  %low13 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u12, i32 0, i32 0, !dbg !2067
  %all = bitcast %union.udwords* %low13 to i64*, !dbg !2068
  %7 = load i64, i64* %all, align 16, !dbg !2068
  store i64 %7, i64* %r, align 8, !dbg !2069
  %8 = load i64, i64* %r, align 8, !dbg !2070
  %9 = load i32, i32* %e, align 4, !dbg !2071
  %sub14 = sub nsw i32 63, %9, !dbg !2072
  %sh_prom = zext i32 %sub14 to i64, !dbg !2073
  %shr15 = lshr i64 %8, %sh_prom, !dbg !2073
  store i64 %shr15, i64* %r, align 8, !dbg !2074
  %10 = load i64, i64* %r, align 8, !dbg !2075
  %11 = load i64, i64* %s5, align 8, !dbg !2076
  %xor = xor i64 %10, %11, !dbg !2077
  %12 = load i64, i64* %s5, align 8, !dbg !2078
  %sub16 = sub nsw i64 %xor, %12, !dbg !2079
  store i64 %sub16, i64* %retval, align 8, !dbg !2080
  br label %return, !dbg !2080

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !2081
  ret i64 %13, !dbg !2081
}

; Function Attrs: noinline nounwind
define dso_local double @__floatdidf(i64 noundef %a) #0 !dbg !2082 {
entry:
  %a.addr = alloca i64, align 8
  %low = alloca %union.udwords, align 8
  %high = alloca double, align 8
  %result = alloca double, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = bitcast %union.udwords* %low to i8*, !dbg !2083
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %0, i8* align 8 bitcast ({ double }* @__const.__floatdidf.low to i8*), i32 8, i1 false), !dbg !2083
  %1 = load i64, i64* %a.addr, align 8, !dbg !2084
  %shr = ashr i64 %1, 32, !dbg !2085
  %conv = trunc i64 %shr to i32, !dbg !2086
  %conv1 = sitofp i32 %conv to double, !dbg !2086
  %mul = fmul double %conv1, 0x41F0000000000000, !dbg !2087
  store double %mul, double* %high, align 8, !dbg !2088
  %2 = load i64, i64* %a.addr, align 8, !dbg !2089
  %and = and i64 %2, 4294967295, !dbg !2090
  %x = bitcast %union.udwords* %low to i64*, !dbg !2091
  %3 = load i64, i64* %x, align 8, !dbg !2092
  %or = or i64 %3, %and, !dbg !2092
  store i64 %or, i64* %x, align 8, !dbg !2092
  %4 = load double, double* %high, align 8, !dbg !2093
  %sub = fsub double %4, 0x4330000000000000, !dbg !2094
  %d = bitcast %union.udwords* %low to double*, !dbg !2095
  %5 = load double, double* %d, align 8, !dbg !2095
  %add = fadd double %sub, %5, !dbg !2096
  store double %add, double* %result, align 8, !dbg !2097
  %6 = load double, double* %result, align 8, !dbg !2098
  ret double %6, !dbg !2099
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local float @__floatdisf(i64 noundef %a) #0 !dbg !2100 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %s = alloca i64, align 8
  %sd = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.float_bits, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2101
  %cmp = icmp eq i64 %0, 0, !dbg !2102
  br i1 %cmp, label %if.then, label %if.end, !dbg !2101

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4, !dbg !2103
  br label %return, !dbg !2103

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2104
  %1 = load i64, i64* %a.addr, align 8, !dbg !2105
  %shr = ashr i64 %1, 63, !dbg !2106
  store i64 %shr, i64* %s, align 8, !dbg !2107
  %2 = load i64, i64* %a.addr, align 8, !dbg !2108
  %3 = load i64, i64* %s, align 8, !dbg !2109
  %xor = xor i64 %2, %3, !dbg !2110
  %4 = load i64, i64* %s, align 8, !dbg !2111
  %sub = sub nsw i64 %xor, %4, !dbg !2112
  store i64 %sub, i64* %a.addr, align 8, !dbg !2113
  %5 = load i64, i64* %a.addr, align 8, !dbg !2114
  %6 = call i64 @llvm.ctlz.i64(i64 %5, i1 true), !dbg !2115
  %cast = trunc i64 %6 to i32, !dbg !2115
  %sub1 = sub i32 64, %cast, !dbg !2116
  store i32 %sub1, i32* %sd, align 4, !dbg !2117
  %7 = load i32, i32* %sd, align 4, !dbg !2118
  %sub2 = sub nsw i32 %7, 1, !dbg !2119
  store i32 %sub2, i32* %e, align 4, !dbg !2120
  %8 = load i32, i32* %sd, align 4, !dbg !2121
  %cmp3 = icmp sgt i32 %8, 24, !dbg !2122
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2121

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %sd, align 4, !dbg !2123
  switch i32 %9, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb5
  ], !dbg !2124

sw.bb:                                            ; preds = %if.then4
  %10 = load i64, i64* %a.addr, align 8, !dbg !2125
  %shl = shl i64 %10, 1, !dbg !2125
  store i64 %shl, i64* %a.addr, align 8, !dbg !2125
  br label %sw.epilog, !dbg !2126

sw.bb5:                                           ; preds = %if.then4
  br label %sw.epilog, !dbg !2127

sw.default:                                       ; preds = %if.then4
  %11 = load i64, i64* %a.addr, align 8, !dbg !2128
  %12 = load i32, i32* %sd, align 4, !dbg !2129
  %sub6 = sub nsw i32 %12, 26, !dbg !2130
  %sh_prom = zext i32 %sub6 to i64, !dbg !2131
  %shr7 = lshr i64 %11, %sh_prom, !dbg !2131
  %13 = load i64, i64* %a.addr, align 8, !dbg !2132
  %14 = load i32, i32* %sd, align 4, !dbg !2133
  %sub8 = sub i32 90, %14, !dbg !2134
  %sh_prom9 = zext i32 %sub8 to i64, !dbg !2135
  %shr10 = lshr i64 -1, %sh_prom9, !dbg !2135
  %and = and i64 %13, %shr10, !dbg !2136
  %cmp11 = icmp ne i64 %and, 0, !dbg !2137
  %conv = zext i1 %cmp11 to i32, !dbg !2137
  %conv12 = sext i32 %conv to i64, !dbg !2138
  %or = or i64 %shr7, %conv12, !dbg !2139
  store i64 %or, i64* %a.addr, align 8, !dbg !2140
  br label %sw.epilog, !dbg !2141

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %15 = load i64, i64* %a.addr, align 8, !dbg !2142
  %and13 = and i64 %15, 4, !dbg !2143
  %cmp14 = icmp ne i64 %and13, 0, !dbg !2144
  %conv15 = zext i1 %cmp14 to i32, !dbg !2144
  %conv16 = sext i32 %conv15 to i64, !dbg !2145
  %16 = load i64, i64* %a.addr, align 8, !dbg !2146
  %or17 = or i64 %16, %conv16, !dbg !2146
  store i64 %or17, i64* %a.addr, align 8, !dbg !2146
  %17 = load i64, i64* %a.addr, align 8, !dbg !2147
  %inc = add nsw i64 %17, 1, !dbg !2147
  store i64 %inc, i64* %a.addr, align 8, !dbg !2147
  %18 = load i64, i64* %a.addr, align 8, !dbg !2148
  %shr18 = ashr i64 %18, 2, !dbg !2148
  store i64 %shr18, i64* %a.addr, align 8, !dbg !2148
  %19 = load i64, i64* %a.addr, align 8, !dbg !2149
  %and19 = and i64 %19, 16777216, !dbg !2150
  %tobool = icmp ne i64 %and19, 0, !dbg !2150
  br i1 %tobool, label %if.then20, label %if.end23, !dbg !2149

if.then20:                                        ; preds = %sw.epilog
  %20 = load i64, i64* %a.addr, align 8, !dbg !2151
  %shr21 = ashr i64 %20, 1, !dbg !2151
  store i64 %shr21, i64* %a.addr, align 8, !dbg !2151
  %21 = load i32, i32* %e, align 4, !dbg !2152
  %inc22 = add nsw i32 %21, 1, !dbg !2152
  store i32 %inc22, i32* %e, align 4, !dbg !2152
  br label %if.end23, !dbg !2153

if.end23:                                         ; preds = %if.then20, %sw.epilog
  br label %if.end27, !dbg !2154

if.else:                                          ; preds = %if.end
  %22 = load i32, i32* %sd, align 4, !dbg !2155
  %sub24 = sub nsw i32 24, %22, !dbg !2156
  %23 = load i64, i64* %a.addr, align 8, !dbg !2157
  %sh_prom25 = zext i32 %sub24 to i64, !dbg !2157
  %shl26 = shl i64 %23, %sh_prom25, !dbg !2157
  store i64 %shl26, i64* %a.addr, align 8, !dbg !2157
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end23
  %24 = load i64, i64* %s, align 8, !dbg !2158
  %conv28 = trunc i64 %24 to i32, !dbg !2159
  %and29 = and i32 %conv28, -2147483648, !dbg !2160
  %25 = load i32, i32* %e, align 4, !dbg !2161
  %add = add nsw i32 %25, 127, !dbg !2162
  %shl30 = shl i32 %add, 23, !dbg !2163
  %or31 = or i32 %and29, %shl30, !dbg !2164
  %26 = load i64, i64* %a.addr, align 8, !dbg !2165
  %conv32 = trunc i64 %26 to i32, !dbg !2166
  %and33 = and i32 %conv32, 8388607, !dbg !2167
  %or34 = or i32 %or31, %and33, !dbg !2168
  %u = bitcast %union.float_bits* %fb to i32*, !dbg !2169
  store i32 %or34, i32* %u, align 4, !dbg !2170
  %f = bitcast %union.float_bits* %fb to float*, !dbg !2171
  %27 = load float, float* %f, align 4, !dbg !2171
  store float %27, float* %retval, align 4, !dbg !2172
  br label %return, !dbg !2172

return:                                           ; preds = %if.end27, %if.then
  %28 = load float, float* %retval, align 4, !dbg !2173
  ret float %28, !dbg !2173
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local fp128 @__floatdixf(i64 noundef %a) #0 !dbg !2174 {
entry:
  %retval = alloca fp128, align 16
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %s = alloca i64, align 8
  %clz = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.long_double_bits, align 16
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2175
  %cmp = icmp eq i64 %0, 0, !dbg !2176
  br i1 %cmp, label %if.then, label %if.end, !dbg !2175

if.then:                                          ; preds = %entry
  store fp128 0xL00000000000000000000000000000000, fp128* %retval, align 16, !dbg !2177
  br label %return, !dbg !2177

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2178
  %1 = load i64, i64* %a.addr, align 8, !dbg !2179
  %shr = ashr i64 %1, 63, !dbg !2180
  store i64 %shr, i64* %s, align 8, !dbg !2181
  %2 = load i64, i64* %a.addr, align 8, !dbg !2182
  %3 = load i64, i64* %s, align 8, !dbg !2183
  %xor = xor i64 %2, %3, !dbg !2184
  %4 = load i64, i64* %s, align 8, !dbg !2185
  %sub = sub nsw i64 %xor, %4, !dbg !2186
  store i64 %sub, i64* %a.addr, align 8, !dbg !2187
  %5 = load i64, i64* %a.addr, align 8, !dbg !2188
  %6 = call i64 @llvm.ctlz.i64(i64 %5, i1 true), !dbg !2189
  %cast = trunc i64 %6 to i32, !dbg !2189
  store i32 %cast, i32* %clz, align 4, !dbg !2190
  %7 = load i32, i32* %clz, align 4, !dbg !2191
  %sub1 = sub i32 63, %7, !dbg !2192
  store i32 %sub1, i32* %e, align 4, !dbg !2193
  %8 = load i64, i64* %s, align 8, !dbg !2194
  %conv = trunc i64 %8 to i32, !dbg !2195
  %and = and i32 %conv, 32768, !dbg !2196
  %9 = load i32, i32* %e, align 4, !dbg !2197
  %add = add nsw i32 %9, 16383, !dbg !2198
  %or = or i32 %and, %add, !dbg !2199
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2200
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2201
  %s2 = bitcast %union.udwords* %high to %struct.anon*, !dbg !2202
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !2203
  store i32 %or, i32* %low, align 8, !dbg !2204
  %10 = load i64, i64* %a.addr, align 8, !dbg !2205
  %11 = load i32, i32* %clz, align 4, !dbg !2206
  %sh_prom = zext i32 %11 to i64, !dbg !2207
  %shl = shl i64 %10, %sh_prom, !dbg !2207
  %u3 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2208
  %low4 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u3, i32 0, i32 0, !dbg !2209
  %all = bitcast %union.udwords* %low4 to i64*, !dbg !2210
  store i64 %shl, i64* %all, align 16, !dbg !2211
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2212
  %12 = load fp128, fp128* %f, align 16, !dbg !2212
  store fp128 %12, fp128* %retval, align 16, !dbg !2213
  br label %return, !dbg !2213

return:                                           ; preds = %if.end, %if.then
  %13 = load fp128, fp128* %retval, align 16, !dbg !2214
  ret fp128 %13, !dbg !2214
}

; Function Attrs: noinline nounwind
define dso_local double @__floatsidf(i32 noundef %a) #0 !dbg !2215 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca i32, align 4
  %aWidth = alloca i32, align 4
  %sign = alloca i64, align 8
  %exponent = alloca i32, align 4
  %result = alloca i64, align 8
  %shift = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %aWidth, align 4, !dbg !2216
  %0 = load i32, i32* %a.addr, align 4, !dbg !2217
  %cmp = icmp eq i32 %0, 0, !dbg !2218
  br i1 %cmp, label %if.then, label %if.end, !dbg !2217

if.then:                                          ; preds = %entry
  %call = call double @fromRep.29(i64 noundef 0) #4, !dbg !2219
  store double %call, double* %retval, align 8, !dbg !2220
  br label %return, !dbg !2220

if.end:                                           ; preds = %entry
  store i64 0, i64* %sign, align 8, !dbg !2221
  %1 = load i32, i32* %a.addr, align 4, !dbg !2222
  %cmp1 = icmp slt i32 %1, 0, !dbg !2223
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2222

if.then2:                                         ; preds = %if.end
  store i64 -9223372036854775808, i64* %sign, align 8, !dbg !2224
  %2 = load i32, i32* %a.addr, align 4, !dbg !2225
  %sub = sub nsw i32 0, %2, !dbg !2226
  store i32 %sub, i32* %a.addr, align 4, !dbg !2227
  br label %if.end3, !dbg !2228

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %a.addr, align 4, !dbg !2229
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 true), !dbg !2230
  %sub4 = sub nsw i32 31, %4, !dbg !2231
  store i32 %sub4, i32* %exponent, align 4, !dbg !2232
  %5 = load i32, i32* %exponent, align 4, !dbg !2233
  %sub5 = sub nsw i32 52, %5, !dbg !2234
  store i32 %sub5, i32* %shift, align 4, !dbg !2235
  %6 = load i32, i32* %a.addr, align 4, !dbg !2236
  %conv = zext i32 %6 to i64, !dbg !2237
  %7 = load i32, i32* %shift, align 4, !dbg !2238
  %sh_prom = zext i32 %7 to i64, !dbg !2239
  %shl = shl i64 %conv, %sh_prom, !dbg !2239
  %xor = xor i64 %shl, 4503599627370496, !dbg !2240
  store i64 %xor, i64* %result, align 8, !dbg !2241
  %8 = load i32, i32* %exponent, align 4, !dbg !2242
  %add = add nsw i32 %8, 1023, !dbg !2243
  %conv6 = sext i32 %add to i64, !dbg !2244
  %shl7 = shl i64 %conv6, 52, !dbg !2245
  %9 = load i64, i64* %result, align 8, !dbg !2246
  %add8 = add i64 %9, %shl7, !dbg !2246
  store i64 %add8, i64* %result, align 8, !dbg !2246
  %10 = load i64, i64* %result, align 8, !dbg !2247
  %11 = load i64, i64* %sign, align 8, !dbg !2248
  %or = or i64 %10, %11, !dbg !2249
  %call9 = call double @fromRep.29(i64 noundef %or) #4, !dbg !2250
  store double %call9, double* %retval, align 8, !dbg !2251
  br label %return, !dbg !2251

return:                                           ; preds = %if.end3, %if.then
  %12 = load double, double* %retval, align 8, !dbg !2252
  ret double %12, !dbg !2252
}

; Function Attrs: noinline nounwind
define internal double @fromRep.29(i64 noundef %x) #0 !dbg !2253 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2254
  %0 = load i64, i64* %x.addr, align 8, !dbg !2255
  store i64 %0, i64* %i, align 8, !dbg !2254
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2256
  %1 = load double, double* %f, align 8, !dbg !2256
  ret double %1, !dbg !2257
}

; Function Attrs: noinline nounwind
define dso_local float @__floatsisf(i32 noundef %a) #0 !dbg !2258 {
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
  store i32 32, i32* %aWidth, align 4, !dbg !2259
  %0 = load i32, i32* %a.addr, align 4, !dbg !2260
  %cmp = icmp eq i32 %0, 0, !dbg !2261
  br i1 %cmp, label %if.then, label %if.end, !dbg !2260

if.then:                                          ; preds = %entry
  %call = call float @fromRep.30(i32 noundef 0) #4, !dbg !2262
  store float %call, float* %retval, align 4, !dbg !2263
  br label %return, !dbg !2263

if.end:                                           ; preds = %entry
  store i32 0, i32* %sign, align 4, !dbg !2264
  %1 = load i32, i32* %a.addr, align 4, !dbg !2265
  %cmp1 = icmp slt i32 %1, 0, !dbg !2266
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2265

if.then2:                                         ; preds = %if.end
  store i32 -2147483648, i32* %sign, align 4, !dbg !2267
  %2 = load i32, i32* %a.addr, align 4, !dbg !2268
  %sub = sub nsw i32 0, %2, !dbg !2269
  store i32 %sub, i32* %a.addr, align 4, !dbg !2270
  br label %if.end3, !dbg !2271

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %a.addr, align 4, !dbg !2272
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 true), !dbg !2273
  %sub4 = sub nsw i32 31, %4, !dbg !2274
  store i32 %sub4, i32* %exponent, align 4, !dbg !2275
  %5 = load i32, i32* %exponent, align 4, !dbg !2276
  %cmp5 = icmp sle i32 %5, 23, !dbg !2277
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2276

if.then6:                                         ; preds = %if.end3
  %6 = load i32, i32* %exponent, align 4, !dbg !2278
  %sub7 = sub nsw i32 23, %6, !dbg !2279
  store i32 %sub7, i32* %shift, align 4, !dbg !2280
  %7 = load i32, i32* %a.addr, align 4, !dbg !2281
  %8 = load i32, i32* %shift, align 4, !dbg !2282
  %shl = shl i32 %7, %8, !dbg !2283
  %xor = xor i32 %shl, 8388608, !dbg !2284
  store i32 %xor, i32* %result, align 4, !dbg !2285
  br label %if.end19, !dbg !2286

if.else:                                          ; preds = %if.end3
  %9 = load i32, i32* %exponent, align 4, !dbg !2287
  %sub9 = sub nsw i32 %9, 23, !dbg !2288
  store i32 %sub9, i32* %shift8, align 4, !dbg !2289
  %10 = load i32, i32* %a.addr, align 4, !dbg !2290
  %11 = load i32, i32* %shift8, align 4, !dbg !2291
  %shr = lshr i32 %10, %11, !dbg !2292
  %xor10 = xor i32 %shr, 8388608, !dbg !2293
  store i32 %xor10, i32* %result, align 4, !dbg !2294
  %12 = load i32, i32* %a.addr, align 4, !dbg !2295
  %13 = load i32, i32* %shift8, align 4, !dbg !2296
  %sub11 = sub i32 32, %13, !dbg !2297
  %shl12 = shl i32 %12, %sub11, !dbg !2298
  store i32 %shl12, i32* %round, align 4, !dbg !2299
  %14 = load i32, i32* %round, align 4, !dbg !2300
  %cmp13 = icmp ugt i32 %14, -2147483648, !dbg !2301
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2300

if.then14:                                        ; preds = %if.else
  %15 = load i32, i32* %result, align 4, !dbg !2302
  %inc = add i32 %15, 1, !dbg !2302
  store i32 %inc, i32* %result, align 4, !dbg !2302
  br label %if.end15, !dbg !2303

if.end15:                                         ; preds = %if.then14, %if.else
  %16 = load i32, i32* %round, align 4, !dbg !2304
  %cmp16 = icmp eq i32 %16, -2147483648, !dbg !2305
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2304

if.then17:                                        ; preds = %if.end15
  %17 = load i32, i32* %result, align 4, !dbg !2306
  %and = and i32 %17, 1, !dbg !2307
  %18 = load i32, i32* %result, align 4, !dbg !2308
  %add = add i32 %18, %and, !dbg !2308
  store i32 %add, i32* %result, align 4, !dbg !2308
  br label %if.end18, !dbg !2309

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then6
  %19 = load i32, i32* %exponent, align 4, !dbg !2310
  %add20 = add nsw i32 %19, 127, !dbg !2311
  %shl21 = shl i32 %add20, 23, !dbg !2312
  %20 = load i32, i32* %result, align 4, !dbg !2313
  %add22 = add i32 %20, %shl21, !dbg !2313
  store i32 %add22, i32* %result, align 4, !dbg !2313
  %21 = load i32, i32* %result, align 4, !dbg !2314
  %22 = load i32, i32* %sign, align 4, !dbg !2315
  %or = or i32 %21, %22, !dbg !2316
  %call23 = call float @fromRep.30(i32 noundef %or) #4, !dbg !2317
  store float %call23, float* %retval, align 4, !dbg !2318
  br label %return, !dbg !2318

return:                                           ; preds = %if.end19, %if.then
  %23 = load float, float* %retval, align 4, !dbg !2319
  ret float %23, !dbg !2319
}

; Function Attrs: noinline nounwind
define internal float @fromRep.30(i32 noundef %x) #0 !dbg !2320 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !2321
  %0 = load i32, i32* %x.addr, align 4, !dbg !2322
  store i32 %0, i32* %i, align 4, !dbg !2321
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !2323
  %1 = load float, float* %f, align 4, !dbg !2323
  ret float %1, !dbg !2324
}

; Function Attrs: noinline nounwind
define dso_local double @__floatundidf(i64 noundef %a) #0 !dbg !2325 {
entry:
  %a.addr = alloca i64, align 8
  %high = alloca %union.udwords, align 8
  %low = alloca %union.udwords, align 8
  %result = alloca double, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = bitcast %union.udwords* %high to i8*, !dbg !2326
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %0, i8* align 8 bitcast ({ double }* @__const.__floatundidf.high to i8*), i32 8, i1 false), !dbg !2326
  %1 = bitcast %union.udwords* %low to i8*, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %1, i8* align 8 bitcast ({ double }* @__const.__floatundidf.low to i8*), i32 8, i1 false), !dbg !2327
  %2 = load i64, i64* %a.addr, align 8, !dbg !2328
  %shr = lshr i64 %2, 32, !dbg !2329
  %x = bitcast %union.udwords* %high to i64*, !dbg !2330
  %3 = load i64, i64* %x, align 8, !dbg !2331
  %or = or i64 %3, %shr, !dbg !2331
  store i64 %or, i64* %x, align 8, !dbg !2331
  %4 = load i64, i64* %a.addr, align 8, !dbg !2332
  %and = and i64 %4, 4294967295, !dbg !2333
  %x1 = bitcast %union.udwords* %low to i64*, !dbg !2334
  %5 = load i64, i64* %x1, align 8, !dbg !2335
  %or2 = or i64 %5, %and, !dbg !2335
  store i64 %or2, i64* %x1, align 8, !dbg !2335
  %d = bitcast %union.udwords* %high to double*, !dbg !2336
  %6 = load double, double* %d, align 8, !dbg !2336
  %sub = fsub double %6, 0x4530000000100000, !dbg !2337
  %d3 = bitcast %union.udwords* %low to double*, !dbg !2338
  %7 = load double, double* %d3, align 8, !dbg !2338
  %add = fadd double %sub, %7, !dbg !2339
  store double %add, double* %result, align 8, !dbg !2340
  %8 = load double, double* %result, align 8, !dbg !2341
  ret double %8, !dbg !2342
}

; Function Attrs: noinline nounwind
define dso_local float @__floatundisf(i64 noundef %a) #0 !dbg !2343 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %sd = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.float_bits, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2344
  %cmp = icmp eq i64 %0, 0, !dbg !2345
  br i1 %cmp, label %if.then, label %if.end, !dbg !2344

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4, !dbg !2346
  br label %return, !dbg !2346

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2347
  %1 = load i64, i64* %a.addr, align 8, !dbg !2348
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2349
  %cast = trunc i64 %2 to i32, !dbg !2349
  %sub = sub i32 64, %cast, !dbg !2350
  store i32 %sub, i32* %sd, align 4, !dbg !2351
  %3 = load i32, i32* %sd, align 4, !dbg !2352
  %sub1 = sub nsw i32 %3, 1, !dbg !2353
  store i32 %sub1, i32* %e, align 4, !dbg !2354
  %4 = load i32, i32* %sd, align 4, !dbg !2355
  %cmp2 = icmp sgt i32 %4, 24, !dbg !2356
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2355

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %sd, align 4, !dbg !2357
  switch i32 %5, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb4
  ], !dbg !2358

sw.bb:                                            ; preds = %if.then3
  %6 = load i64, i64* %a.addr, align 8, !dbg !2359
  %shl = shl i64 %6, 1, !dbg !2359
  store i64 %shl, i64* %a.addr, align 8, !dbg !2359
  br label %sw.epilog, !dbg !2360

sw.bb4:                                           ; preds = %if.then3
  br label %sw.epilog, !dbg !2361

sw.default:                                       ; preds = %if.then3
  %7 = load i64, i64* %a.addr, align 8, !dbg !2362
  %8 = load i32, i32* %sd, align 4, !dbg !2363
  %sub5 = sub nsw i32 %8, 26, !dbg !2364
  %sh_prom = zext i32 %sub5 to i64, !dbg !2365
  %shr = lshr i64 %7, %sh_prom, !dbg !2365
  %9 = load i64, i64* %a.addr, align 8, !dbg !2366
  %10 = load i32, i32* %sd, align 4, !dbg !2367
  %sub6 = sub i32 90, %10, !dbg !2368
  %sh_prom7 = zext i32 %sub6 to i64, !dbg !2369
  %shr8 = lshr i64 -1, %sh_prom7, !dbg !2369
  %and = and i64 %9, %shr8, !dbg !2370
  %cmp9 = icmp ne i64 %and, 0, !dbg !2371
  %conv = zext i1 %cmp9 to i32, !dbg !2371
  %conv10 = sext i32 %conv to i64, !dbg !2372
  %or = or i64 %shr, %conv10, !dbg !2373
  store i64 %or, i64* %a.addr, align 8, !dbg !2374
  br label %sw.epilog, !dbg !2375

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %11 = load i64, i64* %a.addr, align 8, !dbg !2376
  %and11 = and i64 %11, 4, !dbg !2377
  %cmp12 = icmp ne i64 %and11, 0, !dbg !2378
  %conv13 = zext i1 %cmp12 to i32, !dbg !2378
  %conv14 = sext i32 %conv13 to i64, !dbg !2379
  %12 = load i64, i64* %a.addr, align 8, !dbg !2380
  %or15 = or i64 %12, %conv14, !dbg !2380
  store i64 %or15, i64* %a.addr, align 8, !dbg !2380
  %13 = load i64, i64* %a.addr, align 8, !dbg !2381
  %inc = add i64 %13, 1, !dbg !2381
  store i64 %inc, i64* %a.addr, align 8, !dbg !2381
  %14 = load i64, i64* %a.addr, align 8, !dbg !2382
  %shr16 = lshr i64 %14, 2, !dbg !2382
  store i64 %shr16, i64* %a.addr, align 8, !dbg !2382
  %15 = load i64, i64* %a.addr, align 8, !dbg !2383
  %and17 = and i64 %15, 16777216, !dbg !2384
  %tobool = icmp ne i64 %and17, 0, !dbg !2384
  br i1 %tobool, label %if.then18, label %if.end21, !dbg !2383

if.then18:                                        ; preds = %sw.epilog
  %16 = load i64, i64* %a.addr, align 8, !dbg !2385
  %shr19 = lshr i64 %16, 1, !dbg !2385
  store i64 %shr19, i64* %a.addr, align 8, !dbg !2385
  %17 = load i32, i32* %e, align 4, !dbg !2386
  %inc20 = add nsw i32 %17, 1, !dbg !2386
  store i32 %inc20, i32* %e, align 4, !dbg !2386
  br label %if.end21, !dbg !2387

if.end21:                                         ; preds = %if.then18, %sw.epilog
  br label %if.end25, !dbg !2388

if.else:                                          ; preds = %if.end
  %18 = load i32, i32* %sd, align 4, !dbg !2389
  %sub22 = sub nsw i32 24, %18, !dbg !2390
  %19 = load i64, i64* %a.addr, align 8, !dbg !2391
  %sh_prom23 = zext i32 %sub22 to i64, !dbg !2391
  %shl24 = shl i64 %19, %sh_prom23, !dbg !2391
  store i64 %shl24, i64* %a.addr, align 8, !dbg !2391
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end21
  %20 = load i32, i32* %e, align 4, !dbg !2392
  %add = add nsw i32 %20, 127, !dbg !2393
  %shl26 = shl i32 %add, 23, !dbg !2394
  %21 = load i64, i64* %a.addr, align 8, !dbg !2395
  %conv27 = trunc i64 %21 to i32, !dbg !2396
  %and28 = and i32 %conv27, 8388607, !dbg !2397
  %or29 = or i32 %shl26, %and28, !dbg !2398
  %u = bitcast %union.float_bits* %fb to i32*, !dbg !2399
  store i32 %or29, i32* %u, align 4, !dbg !2400
  %f = bitcast %union.float_bits* %fb to float*, !dbg !2401
  %22 = load float, float* %f, align 4, !dbg !2401
  store float %22, float* %retval, align 4, !dbg !2402
  br label %return, !dbg !2402

return:                                           ; preds = %if.end25, %if.then
  %23 = load float, float* %retval, align 4, !dbg !2403
  ret float %23, !dbg !2403
}

; Function Attrs: noinline nounwind
define dso_local fp128 @__floatundixf(i64 noundef %a) #0 !dbg !2404 {
entry:
  %retval = alloca fp128, align 16
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %clz = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.long_double_bits, align 16
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2405
  %cmp = icmp eq i64 %0, 0, !dbg !2406
  br i1 %cmp, label %if.then, label %if.end, !dbg !2405

if.then:                                          ; preds = %entry
  store fp128 0xL00000000000000000000000000000000, fp128* %retval, align 16, !dbg !2407
  br label %return, !dbg !2407

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4, !dbg !2408
  %1 = load i64, i64* %a.addr, align 8, !dbg !2409
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2410
  %cast = trunc i64 %2 to i32, !dbg !2410
  store i32 %cast, i32* %clz, align 4, !dbg !2411
  %3 = load i32, i32* %clz, align 4, !dbg !2412
  %sub = sub i32 63, %3, !dbg !2413
  store i32 %sub, i32* %e, align 4, !dbg !2414
  %4 = load i32, i32* %e, align 4, !dbg !2415
  %add = add nsw i32 %4, 16383, !dbg !2416
  %u = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2417
  %high = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u, i32 0, i32 1, !dbg !2418
  %s = bitcast %union.udwords* %high to %struct.anon*, !dbg !2419
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2420
  store i32 %add, i32* %low, align 8, !dbg !2421
  %5 = load i64, i64* %a.addr, align 8, !dbg !2422
  %6 = load i32, i32* %clz, align 4, !dbg !2423
  %sh_prom = zext i32 %6 to i64, !dbg !2424
  %shl = shl i64 %5, %sh_prom, !dbg !2424
  %u1 = bitcast %union.long_double_bits* %fb to %struct.uqwords*, !dbg !2425
  %low2 = getelementptr inbounds %struct.uqwords, %struct.uqwords* %u1, i32 0, i32 0, !dbg !2426
  %all = bitcast %union.udwords* %low2 to i64*, !dbg !2427
  store i64 %shl, i64* %all, align 16, !dbg !2428
  %f = bitcast %union.long_double_bits* %fb to fp128*, !dbg !2429
  %7 = load fp128, fp128* %f, align 16, !dbg !2429
  store fp128 %7, fp128* %retval, align 16, !dbg !2430
  br label %return, !dbg !2430

return:                                           ; preds = %if.end, %if.then
  %8 = load fp128, fp128* %retval, align 16, !dbg !2431
  ret fp128 %8, !dbg !2431
}

; Function Attrs: noinline nounwind
define dso_local double @__floatunsidf(i32 noundef %a) #0 !dbg !2432 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca i32, align 4
  %aWidth = alloca i32, align 4
  %exponent = alloca i32, align 4
  %result = alloca i64, align 8
  %shift = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %aWidth, align 4, !dbg !2433
  %0 = load i32, i32* %a.addr, align 4, !dbg !2434
  %cmp = icmp eq i32 %0, 0, !dbg !2435
  br i1 %cmp, label %if.then, label %if.end, !dbg !2434

if.then:                                          ; preds = %entry
  %call = call double @fromRep.31(i64 noundef 0) #4, !dbg !2436
  store double %call, double* %retval, align 8, !dbg !2437
  br label %return, !dbg !2437

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !2438
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true), !dbg !2439
  %sub = sub nsw i32 31, %2, !dbg !2440
  store i32 %sub, i32* %exponent, align 4, !dbg !2441
  %3 = load i32, i32* %exponent, align 4, !dbg !2442
  %sub1 = sub nsw i32 52, %3, !dbg !2443
  store i32 %sub1, i32* %shift, align 4, !dbg !2444
  %4 = load i32, i32* %a.addr, align 4, !dbg !2445
  %conv = zext i32 %4 to i64, !dbg !2446
  %5 = load i32, i32* %shift, align 4, !dbg !2447
  %sh_prom = zext i32 %5 to i64, !dbg !2448
  %shl = shl i64 %conv, %sh_prom, !dbg !2448
  %xor = xor i64 %shl, 4503599627370496, !dbg !2449
  store i64 %xor, i64* %result, align 8, !dbg !2450
  %6 = load i32, i32* %exponent, align 4, !dbg !2451
  %add = add nsw i32 %6, 1023, !dbg !2452
  %conv2 = sext i32 %add to i64, !dbg !2453
  %shl3 = shl i64 %conv2, 52, !dbg !2454
  %7 = load i64, i64* %result, align 8, !dbg !2455
  %add4 = add i64 %7, %shl3, !dbg !2455
  store i64 %add4, i64* %result, align 8, !dbg !2455
  %8 = load i64, i64* %result, align 8, !dbg !2456
  %call5 = call double @fromRep.31(i64 noundef %8) #4, !dbg !2457
  store double %call5, double* %retval, align 8, !dbg !2458
  br label %return, !dbg !2458

return:                                           ; preds = %if.end, %if.then
  %9 = load double, double* %retval, align 8, !dbg !2459
  ret double %9, !dbg !2459
}

; Function Attrs: noinline nounwind
define internal double @fromRep.31(i64 noundef %x) #0 !dbg !2460 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2461
  %0 = load i64, i64* %x.addr, align 8, !dbg !2462
  store i64 %0, i64* %i, align 8, !dbg !2461
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2463
  %1 = load double, double* %f, align 8, !dbg !2463
  ret double %1, !dbg !2464
}

; Function Attrs: noinline nounwind
define dso_local float @__floatunsisf(i32 noundef %a) #0 !dbg !2465 {
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
  store i32 32, i32* %aWidth, align 4, !dbg !2466
  %0 = load i32, i32* %a.addr, align 4, !dbg !2467
  %cmp = icmp eq i32 %0, 0, !dbg !2468
  br i1 %cmp, label %if.then, label %if.end, !dbg !2467

if.then:                                          ; preds = %entry
  %call = call float @fromRep.32(i32 noundef 0) #4, !dbg !2469
  store float %call, float* %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !2471
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true), !dbg !2472
  %sub = sub nsw i32 31, %2, !dbg !2473
  store i32 %sub, i32* %exponent, align 4, !dbg !2474
  %3 = load i32, i32* %exponent, align 4, !dbg !2475
  %cmp1 = icmp sle i32 %3, 23, !dbg !2476
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2475

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %exponent, align 4, !dbg !2477
  %sub3 = sub nsw i32 23, %4, !dbg !2478
  store i32 %sub3, i32* %shift, align 4, !dbg !2479
  %5 = load i32, i32* %a.addr, align 4, !dbg !2480
  %6 = load i32, i32* %shift, align 4, !dbg !2481
  %shl = shl i32 %5, %6, !dbg !2482
  %xor = xor i32 %shl, 8388608, !dbg !2483
  store i32 %xor, i32* %result, align 4, !dbg !2484
  br label %if.end15, !dbg !2485

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %exponent, align 4, !dbg !2486
  %sub5 = sub nsw i32 %7, 23, !dbg !2487
  store i32 %sub5, i32* %shift4, align 4, !dbg !2488
  %8 = load i32, i32* %a.addr, align 4, !dbg !2489
  %9 = load i32, i32* %shift4, align 4, !dbg !2490
  %shr = lshr i32 %8, %9, !dbg !2491
  %xor6 = xor i32 %shr, 8388608, !dbg !2492
  store i32 %xor6, i32* %result, align 4, !dbg !2493
  %10 = load i32, i32* %a.addr, align 4, !dbg !2494
  %11 = load i32, i32* %shift4, align 4, !dbg !2495
  %sub7 = sub i32 32, %11, !dbg !2496
  %shl8 = shl i32 %10, %sub7, !dbg !2497
  store i32 %shl8, i32* %round, align 4, !dbg !2498
  %12 = load i32, i32* %round, align 4, !dbg !2499
  %cmp9 = icmp ugt i32 %12, -2147483648, !dbg !2500
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2499

if.then10:                                        ; preds = %if.else
  %13 = load i32, i32* %result, align 4, !dbg !2501
  %inc = add i32 %13, 1, !dbg !2501
  store i32 %inc, i32* %result, align 4, !dbg !2501
  br label %if.end11, !dbg !2502

if.end11:                                         ; preds = %if.then10, %if.else
  %14 = load i32, i32* %round, align 4, !dbg !2503
  %cmp12 = icmp eq i32 %14, -2147483648, !dbg !2504
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2503

if.then13:                                        ; preds = %if.end11
  %15 = load i32, i32* %result, align 4, !dbg !2505
  %and = and i32 %15, 1, !dbg !2506
  %16 = load i32, i32* %result, align 4, !dbg !2507
  %add = add i32 %16, %and, !dbg !2507
  store i32 %add, i32* %result, align 4, !dbg !2507
  br label %if.end14, !dbg !2508

if.end14:                                         ; preds = %if.then13, %if.end11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %17 = load i32, i32* %exponent, align 4, !dbg !2509
  %add16 = add nsw i32 %17, 127, !dbg !2510
  %shl17 = shl i32 %add16, 23, !dbg !2511
  %18 = load i32, i32* %result, align 4, !dbg !2512
  %add18 = add i32 %18, %shl17, !dbg !2512
  store i32 %add18, i32* %result, align 4, !dbg !2512
  %19 = load i32, i32* %result, align 4, !dbg !2513
  %call19 = call float @fromRep.32(i32 noundef %19) #4, !dbg !2514
  store float %call19, float* %retval, align 4, !dbg !2515
  br label %return, !dbg !2515

return:                                           ; preds = %if.end15, %if.then
  %20 = load float, float* %retval, align 4, !dbg !2516
  ret float %20, !dbg !2516
}

; Function Attrs: noinline nounwind
define internal float @fromRep.32(i32 noundef %x) #0 !dbg !2517 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !2518
  %0 = load i32, i32* %x.addr, align 4, !dbg !2519
  store i32 %0, i32* %i, align 4, !dbg !2518
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !2520
  %1 = load float, float* %f, align 4, !dbg !2520
  ret float %1, !dbg !2521
}

; Function Attrs: noinline noreturn nounwind
define weak hidden void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !2522 {
entry:
  %file.addr = alloca i8*, align 4
  %line.addr = alloca i32, align 4
  %function.addr = alloca i8*, align 4
  store i8* %file, i8** %file.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  store i8* %function, i8** %function.addr, align 4
  unreachable, !dbg !2523
}

; Function Attrs: noinline nounwind
define dso_local double @__muldf3(double noundef %a, double noundef %b) #0 !dbg !2524 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !2525
  %1 = load double, double* %b.addr, align 8, !dbg !2526
  %call = call double @__mulXf3__(double noundef %0, double noundef %1) #4, !dbg !2527
  ret double %call, !dbg !2528
}

; Function Attrs: noinline nounwind
define internal double @__mulXf3__(double noundef %a, double noundef %b) #0 !dbg !2529 {
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
  %0 = load double, double* %a.addr, align 8, !dbg !2531
  %call = call i64 @toRep.33(double noundef %0) #4, !dbg !2532
  %shr = lshr i64 %call, 52, !dbg !2533
  %and = and i64 %shr, 2047, !dbg !2534
  %conv = trunc i64 %and to i32, !dbg !2532
  store i32 %conv, i32* %aExponent, align 4, !dbg !2535
  %1 = load double, double* %b.addr, align 8, !dbg !2536
  %call1 = call i64 @toRep.33(double noundef %1) #4, !dbg !2537
  %shr2 = lshr i64 %call1, 52, !dbg !2538
  %and3 = and i64 %shr2, 2047, !dbg !2539
  %conv4 = trunc i64 %and3 to i32, !dbg !2537
  store i32 %conv4, i32* %bExponent, align 4, !dbg !2540
  %2 = load double, double* %a.addr, align 8, !dbg !2541
  %call5 = call i64 @toRep.33(double noundef %2) #4, !dbg !2542
  %3 = load double, double* %b.addr, align 8, !dbg !2543
  %call6 = call i64 @toRep.33(double noundef %3) #4, !dbg !2544
  %xor = xor i64 %call5, %call6, !dbg !2545
  %and7 = and i64 %xor, -9223372036854775808, !dbg !2546
  store i64 %and7, i64* %productSign, align 8, !dbg !2547
  %4 = load double, double* %a.addr, align 8, !dbg !2548
  %call8 = call i64 @toRep.33(double noundef %4) #4, !dbg !2549
  %and9 = and i64 %call8, 4503599627370495, !dbg !2550
  store i64 %and9, i64* %aSignificand, align 8, !dbg !2551
  %5 = load double, double* %b.addr, align 8, !dbg !2552
  %call10 = call i64 @toRep.33(double noundef %5) #4, !dbg !2553
  %and11 = and i64 %call10, 4503599627370495, !dbg !2554
  store i64 %and11, i64* %bSignificand, align 8, !dbg !2555
  store i32 0, i32* %scale, align 4, !dbg !2556
  %6 = load i32, i32* %aExponent, align 4, !dbg !2557
  %sub = sub i32 %6, 1, !dbg !2558
  %cmp = icmp uge i32 %sub, 2046, !dbg !2559
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2560

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !2561
  %sub13 = sub i32 %7, 1, !dbg !2562
  %cmp14 = icmp uge i32 %sub13, 2046, !dbg !2563
  br i1 %cmp14, label %if.then, label %if.end69, !dbg !2557

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load double, double* %a.addr, align 8, !dbg !2564
  %call16 = call i64 @toRep.33(double noundef %8) #4, !dbg !2565
  %and17 = and i64 %call16, 9223372036854775807, !dbg !2566
  store i64 %and17, i64* %aAbs, align 8, !dbg !2567
  %9 = load double, double* %b.addr, align 8, !dbg !2568
  %call18 = call i64 @toRep.33(double noundef %9) #4, !dbg !2569
  %and19 = and i64 %call18, 9223372036854775807, !dbg !2570
  store i64 %and19, i64* %bAbs, align 8, !dbg !2571
  %10 = load i64, i64* %aAbs, align 8, !dbg !2572
  %cmp20 = icmp ugt i64 %10, 9218868437227405312, !dbg !2573
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !2572

if.then22:                                        ; preds = %if.then
  %11 = load double, double* %a.addr, align 8, !dbg !2574
  %call23 = call i64 @toRep.33(double noundef %11) #4, !dbg !2575
  %or = or i64 %call23, 2251799813685248, !dbg !2576
  %call24 = call double @fromRep.34(i64 noundef %or) #4, !dbg !2577
  store double %call24, double* %retval, align 8, !dbg !2578
  br label %return, !dbg !2578

if.end:                                           ; preds = %if.then
  %12 = load i64, i64* %bAbs, align 8, !dbg !2579
  %cmp25 = icmp ugt i64 %12, 9218868437227405312, !dbg !2580
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !2579

if.then27:                                        ; preds = %if.end
  %13 = load double, double* %b.addr, align 8, !dbg !2581
  %call28 = call i64 @toRep.33(double noundef %13) #4, !dbg !2582
  %or29 = or i64 %call28, 2251799813685248, !dbg !2583
  %call30 = call double @fromRep.34(i64 noundef %or29) #4, !dbg !2584
  store double %call30, double* %retval, align 8, !dbg !2585
  br label %return, !dbg !2585

if.end31:                                         ; preds = %if.end
  %14 = load i64, i64* %aAbs, align 8, !dbg !2586
  %cmp32 = icmp eq i64 %14, 9218868437227405312, !dbg !2587
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !2586

if.then34:                                        ; preds = %if.end31
  %15 = load i64, i64* %bAbs, align 8, !dbg !2588
  %tobool = icmp ne i64 %15, 0, !dbg !2588
  br i1 %tobool, label %if.then35, label %if.else, !dbg !2588

if.then35:                                        ; preds = %if.then34
  %16 = load i64, i64* %aAbs, align 8, !dbg !2589
  %17 = load i64, i64* %productSign, align 8, !dbg !2590
  %or36 = or i64 %16, %17, !dbg !2591
  %call37 = call double @fromRep.34(i64 noundef %or36) #4, !dbg !2592
  store double %call37, double* %retval, align 8, !dbg !2593
  br label %return, !dbg !2593

if.else:                                          ; preds = %if.then34
  %call38 = call double @fromRep.34(i64 noundef 9221120237041090560) #4, !dbg !2594
  store double %call38, double* %retval, align 8, !dbg !2595
  br label %return, !dbg !2595

if.end39:                                         ; preds = %if.end31
  %18 = load i64, i64* %bAbs, align 8, !dbg !2596
  %cmp40 = icmp eq i64 %18, 9218868437227405312, !dbg !2597
  br i1 %cmp40, label %if.then42, label %if.end49, !dbg !2596

if.then42:                                        ; preds = %if.end39
  %19 = load i64, i64* %aAbs, align 8, !dbg !2598
  %tobool43 = icmp ne i64 %19, 0, !dbg !2598
  br i1 %tobool43, label %if.then44, label %if.else47, !dbg !2598

if.then44:                                        ; preds = %if.then42
  %20 = load i64, i64* %bAbs, align 8, !dbg !2599
  %21 = load i64, i64* %productSign, align 8, !dbg !2600
  %or45 = or i64 %20, %21, !dbg !2601
  %call46 = call double @fromRep.34(i64 noundef %or45) #4, !dbg !2602
  store double %call46, double* %retval, align 8, !dbg !2603
  br label %return, !dbg !2603

if.else47:                                        ; preds = %if.then42
  %call48 = call double @fromRep.34(i64 noundef 9221120237041090560) #4, !dbg !2604
  store double %call48, double* %retval, align 8, !dbg !2605
  br label %return, !dbg !2605

if.end49:                                         ; preds = %if.end39
  %22 = load i64, i64* %aAbs, align 8, !dbg !2606
  %tobool50 = icmp ne i64 %22, 0, !dbg !2606
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !2607

if.then51:                                        ; preds = %if.end49
  %23 = load i64, i64* %productSign, align 8, !dbg !2608
  %call52 = call double @fromRep.34(i64 noundef %23) #4, !dbg !2609
  store double %call52, double* %retval, align 8, !dbg !2610
  br label %return, !dbg !2610

if.end53:                                         ; preds = %if.end49
  %24 = load i64, i64* %bAbs, align 8, !dbg !2611
  %tobool54 = icmp ne i64 %24, 0, !dbg !2611
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !2612

if.then55:                                        ; preds = %if.end53
  %25 = load i64, i64* %productSign, align 8, !dbg !2613
  %call56 = call double @fromRep.34(i64 noundef %25) #4, !dbg !2614
  store double %call56, double* %retval, align 8, !dbg !2615
  br label %return, !dbg !2615

if.end57:                                         ; preds = %if.end53
  %26 = load i64, i64* %aAbs, align 8, !dbg !2616
  %cmp58 = icmp ult i64 %26, 4503599627370496, !dbg !2617
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !2616

if.then60:                                        ; preds = %if.end57
  %call61 = call i32 @normalize.35(i64* noundef %aSignificand) #4, !dbg !2618
  %27 = load i32, i32* %scale, align 4, !dbg !2619
  %add = add nsw i32 %27, %call61, !dbg !2619
  store i32 %add, i32* %scale, align 4, !dbg !2619
  br label %if.end62, !dbg !2620

if.end62:                                         ; preds = %if.then60, %if.end57
  %28 = load i64, i64* %bAbs, align 8, !dbg !2621
  %cmp63 = icmp ult i64 %28, 4503599627370496, !dbg !2622
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !2621

if.then65:                                        ; preds = %if.end62
  %call66 = call i32 @normalize.35(i64* noundef %bSignificand) #4, !dbg !2623
  %29 = load i32, i32* %scale, align 4, !dbg !2624
  %add67 = add nsw i32 %29, %call66, !dbg !2624
  store i32 %add67, i32* %scale, align 4, !dbg !2624
  br label %if.end68, !dbg !2625

if.end68:                                         ; preds = %if.then65, %if.end62
  br label %if.end69, !dbg !2626

if.end69:                                         ; preds = %if.end68, %lor.lhs.false
  %30 = load i64, i64* %aSignificand, align 8, !dbg !2627
  %or70 = or i64 %30, 4503599627370496, !dbg !2627
  store i64 %or70, i64* %aSignificand, align 8, !dbg !2627
  %31 = load i64, i64* %bSignificand, align 8, !dbg !2628
  %or71 = or i64 %31, 4503599627370496, !dbg !2628
  store i64 %or71, i64* %bSignificand, align 8, !dbg !2628
  %32 = load i64, i64* %aSignificand, align 8, !dbg !2629
  %33 = load i64, i64* %bSignificand, align 8, !dbg !2630
  %shl = shl i64 %33, 11, !dbg !2631
  call void @wideMultiply.36(i64 noundef %32, i64 noundef %shl, i64* noundef %productHi, i64* noundef %productLo) #4, !dbg !2632
  %34 = load i32, i32* %aExponent, align 4, !dbg !2633
  %35 = load i32, i32* %bExponent, align 4, !dbg !2634
  %add72 = add i32 %34, %35, !dbg !2635
  %sub73 = sub i32 %add72, 1023, !dbg !2636
  %36 = load i32, i32* %scale, align 4, !dbg !2637
  %add74 = add i32 %sub73, %36, !dbg !2638
  store i32 %add74, i32* %productExponent, align 4, !dbg !2639
  %37 = load i64, i64* %productHi, align 8, !dbg !2640
  %and75 = and i64 %37, 4503599627370496, !dbg !2641
  %tobool76 = icmp ne i64 %and75, 0, !dbg !2641
  br i1 %tobool76, label %if.then77, label %if.else78, !dbg !2640

if.then77:                                        ; preds = %if.end69
  %38 = load i32, i32* %productExponent, align 4, !dbg !2642
  %inc = add nsw i32 %38, 1, !dbg !2642
  store i32 %inc, i32* %productExponent, align 4, !dbg !2642
  br label %if.end79, !dbg !2643

if.else78:                                        ; preds = %if.end69
  call void @wideLeftShift(i64* noundef %productHi, i64* noundef %productLo, i32 noundef 1) #4, !dbg !2644
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  %39 = load i32, i32* %productExponent, align 4, !dbg !2645
  %cmp80 = icmp sge i32 %39, 2047, !dbg !2646
  br i1 %cmp80, label %if.then82, label %if.end85, !dbg !2645

if.then82:                                        ; preds = %if.end79
  %40 = load i64, i64* %productSign, align 8, !dbg !2647
  %or83 = or i64 9218868437227405312, %40, !dbg !2648
  %call84 = call double @fromRep.34(i64 noundef %or83) #4, !dbg !2649
  store double %call84, double* %retval, align 8, !dbg !2650
  br label %return, !dbg !2650

if.end85:                                         ; preds = %if.end79
  %41 = load i32, i32* %productExponent, align 4, !dbg !2651
  %cmp86 = icmp sle i32 %41, 0, !dbg !2652
  br i1 %cmp86, label %if.then88, label %if.else97, !dbg !2651

if.then88:                                        ; preds = %if.end85
  %42 = load i32, i32* %productExponent, align 4, !dbg !2653
  %conv89 = zext i32 %42 to i64, !dbg !2654
  %sub90 = sub i64 1, %conv89, !dbg !2655
  %conv91 = trunc i64 %sub90 to i32, !dbg !2656
  store i32 %conv91, i32* %shift, align 4, !dbg !2657
  %43 = load i32, i32* %shift, align 4, !dbg !2658
  %cmp92 = icmp uge i32 %43, 64, !dbg !2659
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !2658

if.then94:                                        ; preds = %if.then88
  %44 = load i64, i64* %productSign, align 8, !dbg !2660
  %call95 = call double @fromRep.34(i64 noundef %44) #4, !dbg !2661
  store double %call95, double* %retval, align 8, !dbg !2662
  br label %return, !dbg !2662

if.end96:                                         ; preds = %if.then88
  %45 = load i32, i32* %shift, align 4, !dbg !2663
  call void @wideRightShiftWithSticky(i64* noundef %productHi, i64* noundef %productLo, i32 noundef %45) #4, !dbg !2664
  br label %if.end102, !dbg !2665

if.else97:                                        ; preds = %if.end85
  %46 = load i64, i64* %productHi, align 8, !dbg !2666
  %and98 = and i64 %46, 4503599627370495, !dbg !2666
  store i64 %and98, i64* %productHi, align 8, !dbg !2666
  %47 = load i32, i32* %productExponent, align 4, !dbg !2667
  %conv99 = sext i32 %47 to i64, !dbg !2668
  %shl100 = shl i64 %conv99, 52, !dbg !2669
  %48 = load i64, i64* %productHi, align 8, !dbg !2670
  %or101 = or i64 %48, %shl100, !dbg !2670
  store i64 %or101, i64* %productHi, align 8, !dbg !2670
  br label %if.end102

if.end102:                                        ; preds = %if.else97, %if.end96
  %49 = load i64, i64* %productSign, align 8, !dbg !2671
  %50 = load i64, i64* %productHi, align 8, !dbg !2672
  %or103 = or i64 %50, %49, !dbg !2672
  store i64 %or103, i64* %productHi, align 8, !dbg !2672
  %51 = load i64, i64* %productLo, align 8, !dbg !2673
  %cmp104 = icmp ugt i64 %51, -9223372036854775808, !dbg !2674
  br i1 %cmp104, label %if.then106, label %if.end108, !dbg !2673

if.then106:                                       ; preds = %if.end102
  %52 = load i64, i64* %productHi, align 8, !dbg !2675
  %inc107 = add i64 %52, 1, !dbg !2675
  store i64 %inc107, i64* %productHi, align 8, !dbg !2675
  br label %if.end108, !dbg !2676

if.end108:                                        ; preds = %if.then106, %if.end102
  %53 = load i64, i64* %productLo, align 8, !dbg !2677
  %cmp109 = icmp eq i64 %53, -9223372036854775808, !dbg !2678
  br i1 %cmp109, label %if.then111, label %if.end114, !dbg !2677

if.then111:                                       ; preds = %if.end108
  %54 = load i64, i64* %productHi, align 8, !dbg !2679
  %and112 = and i64 %54, 1, !dbg !2680
  %55 = load i64, i64* %productHi, align 8, !dbg !2681
  %add113 = add i64 %55, %and112, !dbg !2681
  store i64 %add113, i64* %productHi, align 8, !dbg !2681
  br label %if.end114, !dbg !2682

if.end114:                                        ; preds = %if.then111, %if.end108
  %56 = load i64, i64* %productHi, align 8, !dbg !2683
  %call115 = call double @fromRep.34(i64 noundef %56) #4, !dbg !2684
  store double %call115, double* %retval, align 8, !dbg !2685
  br label %return, !dbg !2685

return:                                           ; preds = %if.end114, %if.then94, %if.then82, %if.then55, %if.then51, %if.else47, %if.then44, %if.else, %if.then35, %if.then27, %if.then22
  %57 = load double, double* %retval, align 8, !dbg !2686
  ret double %57, !dbg !2686
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.33(double noundef %x) #0 !dbg !2687 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2688
  %0 = load double, double* %x.addr, align 8, !dbg !2689
  store double %0, double* %f, align 8, !dbg !2688
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2690
  %1 = load i64, i64* %i, align 8, !dbg !2690
  ret i64 %1, !dbg !2691
}

; Function Attrs: noinline nounwind
define internal double @fromRep.34(i64 noundef %x) #0 !dbg !2692 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !2693
  %0 = load i64, i64* %x.addr, align 8, !dbg !2694
  store i64 %0, i64* %i, align 8, !dbg !2693
  %f = bitcast %union.anon.0* %rep to double*, !dbg !2695
  %1 = load double, double* %f, align 8, !dbg !2695
  ret double %1, !dbg !2696
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.35(i64* noundef %significand) #0 !dbg !2697 {
entry:
  %significand.addr = alloca i64*, align 4
  %shift = alloca i32, align 4
  store i64* %significand, i64** %significand.addr, align 4
  %0 = load i64*, i64** %significand.addr, align 4, !dbg !2698
  %1 = load i64, i64* %0, align 8, !dbg !2699
  %call = call i32 @rep_clz.37(i64 noundef %1) #4, !dbg !2700
  %call1 = call i32 @rep_clz.37(i64 noundef 4503599627370496) #4, !dbg !2701
  %sub = sub nsw i32 %call, %call1, !dbg !2702
  store i32 %sub, i32* %shift, align 4, !dbg !2703
  %2 = load i32, i32* %shift, align 4, !dbg !2704
  %3 = load i64*, i64** %significand.addr, align 4, !dbg !2705
  %4 = load i64, i64* %3, align 8, !dbg !2706
  %sh_prom = zext i32 %2 to i64, !dbg !2706
  %shl = shl i64 %4, %sh_prom, !dbg !2706
  store i64 %shl, i64* %3, align 8, !dbg !2706
  %5 = load i32, i32* %shift, align 4, !dbg !2707
  %sub2 = sub nsw i32 1, %5, !dbg !2708
  ret i32 %sub2, !dbg !2709
}

; Function Attrs: noinline nounwind
define internal void @wideMultiply.36(i64 noundef %a, i64 noundef %b, i64* noundef %hi, i64* noundef %lo) #0 !dbg !2710 {
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
  %0 = load i64, i64* %a.addr, align 8, !dbg !2711
  %and = and i64 %0, 4294967295, !dbg !2711
  %1 = load i64, i64* %b.addr, align 8, !dbg !2712
  %and1 = and i64 %1, 4294967295, !dbg !2712
  %mul = mul i64 %and, %and1, !dbg !2713
  store i64 %mul, i64* %plolo, align 8, !dbg !2714
  %2 = load i64, i64* %a.addr, align 8, !dbg !2715
  %and2 = and i64 %2, 4294967295, !dbg !2715
  %3 = load i64, i64* %b.addr, align 8, !dbg !2716
  %shr = lshr i64 %3, 32, !dbg !2716
  %mul3 = mul i64 %and2, %shr, !dbg !2717
  store i64 %mul3, i64* %plohi, align 8, !dbg !2718
  %4 = load i64, i64* %a.addr, align 8, !dbg !2719
  %shr4 = lshr i64 %4, 32, !dbg !2719
  %5 = load i64, i64* %b.addr, align 8, !dbg !2720
  %and5 = and i64 %5, 4294967295, !dbg !2720
  %mul6 = mul i64 %shr4, %and5, !dbg !2721
  store i64 %mul6, i64* %philo, align 8, !dbg !2722
  %6 = load i64, i64* %a.addr, align 8, !dbg !2723
  %shr7 = lshr i64 %6, 32, !dbg !2723
  %7 = load i64, i64* %b.addr, align 8, !dbg !2724
  %shr8 = lshr i64 %7, 32, !dbg !2724
  %mul9 = mul i64 %shr7, %shr8, !dbg !2725
  store i64 %mul9, i64* %phihi, align 8, !dbg !2726
  %8 = load i64, i64* %plolo, align 8, !dbg !2727
  %and10 = and i64 %8, 4294967295, !dbg !2727
  store i64 %and10, i64* %r0, align 8, !dbg !2728
  %9 = load i64, i64* %plolo, align 8, !dbg !2729
  %shr11 = lshr i64 %9, 32, !dbg !2729
  %10 = load i64, i64* %plohi, align 8, !dbg !2730
  %and12 = and i64 %10, 4294967295, !dbg !2730
  %add = add i64 %shr11, %and12, !dbg !2731
  %11 = load i64, i64* %philo, align 8, !dbg !2732
  %and13 = and i64 %11, 4294967295, !dbg !2732
  %add14 = add i64 %add, %and13, !dbg !2733
  store i64 %add14, i64* %r1, align 8, !dbg !2734
  %12 = load i64, i64* %r0, align 8, !dbg !2735
  %13 = load i64, i64* %r1, align 8, !dbg !2736
  %shl = shl i64 %13, 32, !dbg !2737
  %add15 = add i64 %12, %shl, !dbg !2738
  %14 = load i64*, i64** %lo.addr, align 4, !dbg !2739
  store i64 %add15, i64* %14, align 8, !dbg !2740
  %15 = load i64, i64* %plohi, align 8, !dbg !2741
  %shr16 = lshr i64 %15, 32, !dbg !2741
  %16 = load i64, i64* %philo, align 8, !dbg !2742
  %shr17 = lshr i64 %16, 32, !dbg !2742
  %add18 = add i64 %shr16, %shr17, !dbg !2743
  %17 = load i64, i64* %r1, align 8, !dbg !2744
  %shr19 = lshr i64 %17, 32, !dbg !2744
  %add20 = add i64 %add18, %shr19, !dbg !2745
  %18 = load i64, i64* %phihi, align 8, !dbg !2746
  %add21 = add i64 %add20, %18, !dbg !2747
  %19 = load i64*, i64** %hi.addr, align 4, !dbg !2748
  store i64 %add21, i64* %19, align 8, !dbg !2749
  ret void, !dbg !2750
}

; Function Attrs: noinline nounwind
define internal void @wideLeftShift(i64* noundef %hi, i64* noundef %lo, i32 noundef %count) #0 !dbg !2751 {
entry:
  %hi.addr = alloca i64*, align 4
  %lo.addr = alloca i64*, align 4
  %count.addr = alloca i32, align 4
  store i64* %hi, i64** %hi.addr, align 4
  store i64* %lo, i64** %lo.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i64*, i64** %hi.addr, align 4, !dbg !2752
  %1 = load i64, i64* %0, align 8, !dbg !2753
  %2 = load i32, i32* %count.addr, align 4, !dbg !2754
  %sh_prom = zext i32 %2 to i64, !dbg !2755
  %shl = shl i64 %1, %sh_prom, !dbg !2755
  %3 = load i64*, i64** %lo.addr, align 4, !dbg !2756
  %4 = load i64, i64* %3, align 8, !dbg !2757
  %5 = load i32, i32* %count.addr, align 4, !dbg !2758
  %sub = sub i32 64, %5, !dbg !2759
  %sh_prom1 = zext i32 %sub to i64, !dbg !2760
  %shr = lshr i64 %4, %sh_prom1, !dbg !2760
  %or = or i64 %shl, %shr, !dbg !2761
  %6 = load i64*, i64** %hi.addr, align 4, !dbg !2762
  store i64 %or, i64* %6, align 8, !dbg !2763
  %7 = load i64*, i64** %lo.addr, align 4, !dbg !2764
  %8 = load i64, i64* %7, align 8, !dbg !2765
  %9 = load i32, i32* %count.addr, align 4, !dbg !2766
  %sh_prom2 = zext i32 %9 to i64, !dbg !2767
  %shl3 = shl i64 %8, %sh_prom2, !dbg !2767
  %10 = load i64*, i64** %lo.addr, align 4, !dbg !2768
  store i64 %shl3, i64* %10, align 8, !dbg !2769
  ret void, !dbg !2770
}

; Function Attrs: noinline nounwind
define internal void @wideRightShiftWithSticky(i64* noundef %hi, i64* noundef %lo, i32 noundef %count) #0 !dbg !2771 {
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
  %0 = load i32, i32* %count.addr, align 4, !dbg !2772
  %cmp = icmp ult i32 %0, 64, !dbg !2773
  br i1 %cmp, label %if.then, label %if.else, !dbg !2772

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %lo.addr, align 4, !dbg !2774
  %2 = load i64, i64* %1, align 8, !dbg !2775
  %3 = load i32, i32* %count.addr, align 4, !dbg !2776
  %sub = sub i32 64, %3, !dbg !2777
  %sh_prom = zext i32 %sub to i64, !dbg !2778
  %shl = shl i64 %2, %sh_prom, !dbg !2778
  %tobool = icmp ne i64 %shl, 0, !dbg !2775
  %frombool = zext i1 %tobool to i8, !dbg !2779
  store i8 %frombool, i8* %sticky, align 1, !dbg !2779
  %4 = load i64*, i64** %hi.addr, align 4, !dbg !2780
  %5 = load i64, i64* %4, align 8, !dbg !2781
  %6 = load i32, i32* %count.addr, align 4, !dbg !2782
  %sub1 = sub i32 64, %6, !dbg !2783
  %sh_prom2 = zext i32 %sub1 to i64, !dbg !2784
  %shl3 = shl i64 %5, %sh_prom2, !dbg !2784
  %7 = load i64*, i64** %lo.addr, align 4, !dbg !2785
  %8 = load i64, i64* %7, align 8, !dbg !2786
  %9 = load i32, i32* %count.addr, align 4, !dbg !2787
  %sh_prom4 = zext i32 %9 to i64, !dbg !2788
  %shr = lshr i64 %8, %sh_prom4, !dbg !2788
  %or = or i64 %shl3, %shr, !dbg !2789
  %10 = load i8, i8* %sticky, align 1, !dbg !2790
  %tobool5 = trunc i8 %10 to i1, !dbg !2790
  %conv = zext i1 %tobool5 to i64, !dbg !2790
  %or6 = or i64 %or, %conv, !dbg !2791
  %11 = load i64*, i64** %lo.addr, align 4, !dbg !2792
  store i64 %or6, i64* %11, align 8, !dbg !2793
  %12 = load i64*, i64** %hi.addr, align 4, !dbg !2794
  %13 = load i64, i64* %12, align 8, !dbg !2795
  %14 = load i32, i32* %count.addr, align 4, !dbg !2796
  %sh_prom7 = zext i32 %14 to i64, !dbg !2797
  %shr8 = lshr i64 %13, %sh_prom7, !dbg !2797
  %15 = load i64*, i64** %hi.addr, align 4, !dbg !2798
  store i64 %shr8, i64* %15, align 8, !dbg !2799
  br label %if.end32, !dbg !2800

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %count.addr, align 4, !dbg !2801
  %cmp9 = icmp ult i32 %16, 128, !dbg !2802
  br i1 %cmp9, label %if.then11, label %if.else25, !dbg !2801

if.then11:                                        ; preds = %if.else
  %17 = load i64*, i64** %hi.addr, align 4, !dbg !2803
  %18 = load i64, i64* %17, align 8, !dbg !2804
  %19 = load i32, i32* %count.addr, align 4, !dbg !2805
  %sub13 = sub i32 128, %19, !dbg !2806
  %sh_prom14 = zext i32 %sub13 to i64, !dbg !2807
  %shl15 = shl i64 %18, %sh_prom14, !dbg !2807
  %20 = load i64*, i64** %lo.addr, align 4, !dbg !2808
  %21 = load i64, i64* %20, align 8, !dbg !2809
  %or16 = or i64 %shl15, %21, !dbg !2810
  %tobool17 = icmp ne i64 %or16, 0, !dbg !2804
  %frombool18 = zext i1 %tobool17 to i8, !dbg !2811
  store i8 %frombool18, i8* %sticky12, align 1, !dbg !2811
  %22 = load i64*, i64** %hi.addr, align 4, !dbg !2812
  %23 = load i64, i64* %22, align 8, !dbg !2813
  %24 = load i32, i32* %count.addr, align 4, !dbg !2814
  %sub19 = sub i32 %24, 64, !dbg !2815
  %sh_prom20 = zext i32 %sub19 to i64, !dbg !2816
  %shr21 = lshr i64 %23, %sh_prom20, !dbg !2816
  %25 = load i8, i8* %sticky12, align 1, !dbg !2817
  %tobool22 = trunc i8 %25 to i1, !dbg !2817
  %conv23 = zext i1 %tobool22 to i64, !dbg !2817
  %or24 = or i64 %shr21, %conv23, !dbg !2818
  %26 = load i64*, i64** %lo.addr, align 4, !dbg !2819
  store i64 %or24, i64* %26, align 8, !dbg !2820
  %27 = load i64*, i64** %hi.addr, align 4, !dbg !2821
  store i64 0, i64* %27, align 8, !dbg !2822
  br label %if.end, !dbg !2823

if.else25:                                        ; preds = %if.else
  %28 = load i64*, i64** %hi.addr, align 4, !dbg !2824
  %29 = load i64, i64* %28, align 8, !dbg !2825
  %30 = load i64*, i64** %lo.addr, align 4, !dbg !2826
  %31 = load i64, i64* %30, align 8, !dbg !2827
  %or27 = or i64 %29, %31, !dbg !2828
  %tobool28 = icmp ne i64 %or27, 0, !dbg !2825
  %frombool29 = zext i1 %tobool28 to i8, !dbg !2829
  store i8 %frombool29, i8* %sticky26, align 1, !dbg !2829
  %32 = load i8, i8* %sticky26, align 1, !dbg !2830
  %tobool30 = trunc i8 %32 to i1, !dbg !2830
  %conv31 = zext i1 %tobool30 to i64, !dbg !2830
  %33 = load i64*, i64** %lo.addr, align 4, !dbg !2831
  store i64 %conv31, i64* %33, align 8, !dbg !2832
  %34 = load i64*, i64** %hi.addr, align 4, !dbg !2833
  store i64 0, i64* %34, align 8, !dbg !2834
  br label %if.end

if.end:                                           ; preds = %if.else25, %if.then11
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then
  ret void, !dbg !2835
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.37(i64 noundef %a) #0 !dbg !2836 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2837
  %and = and i64 %0, -4294967296, !dbg !2838
  %tobool = icmp ne i64 %and, 0, !dbg !2838
  br i1 %tobool, label %if.then, label %if.else, !dbg !2837

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !2839
  %shr = lshr i64 %1, 32, !dbg !2840
  %conv = trunc i64 %shr to i32, !dbg !2839
  %2 = call i32 @llvm.ctlz.i32(i32 %conv, i1 true), !dbg !2841
  store i32 %2, i32* %retval, align 4, !dbg !2842
  br label %return, !dbg !2842

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %a.addr, align 8, !dbg !2843
  %and1 = and i64 %3, 4294967295, !dbg !2844
  %conv2 = trunc i64 %and1 to i32, !dbg !2843
  %4 = call i32 @llvm.ctlz.i32(i32 %conv2, i1 true), !dbg !2845
  %add = add nsw i32 32, %4, !dbg !2846
  store i32 %add, i32* %retval, align 4, !dbg !2847
  br label %return, !dbg !2847

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2848
  ret i32 %5, !dbg !2848
}

; Function Attrs: noinline nounwind
define dso_local i64 @__muldi3(i64 noundef %a, i64 noundef %b) #0 !dbg !2849 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %x = alloca %union.udwords, align 8
  %y = alloca %union.udwords, align 8
  %r = alloca %union.udwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !2850
  %all = bitcast %union.udwords* %x to i64*, !dbg !2851
  store i64 %0, i64* %all, align 8, !dbg !2852
  %1 = load i64, i64* %b.addr, align 8, !dbg !2853
  %all1 = bitcast %union.udwords* %y to i64*, !dbg !2854
  store i64 %1, i64* %all1, align 8, !dbg !2855
  %s = bitcast %union.udwords* %x to %struct.anon*, !dbg !2856
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2857
  %2 = load i32, i32* %low, align 8, !dbg !2857
  %s2 = bitcast %union.udwords* %y to %struct.anon*, !dbg !2858
  %low3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !2859
  %3 = load i32, i32* %low3, align 8, !dbg !2859
  %call = call i64 @__muldsi3(i32 noundef %2, i32 noundef %3) #4, !dbg !2860
  %all4 = bitcast %union.udwords* %r to i64*, !dbg !2861
  store i64 %call, i64* %all4, align 8, !dbg !2862
  %s5 = bitcast %union.udwords* %x to %struct.anon*, !dbg !2863
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !2864
  %4 = load i32, i32* %high, align 4, !dbg !2864
  %s6 = bitcast %union.udwords* %y to %struct.anon*, !dbg !2865
  %low7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 0, !dbg !2866
  %5 = load i32, i32* %low7, align 8, !dbg !2866
  %mul = mul i32 %4, %5, !dbg !2867
  %s8 = bitcast %union.udwords* %x to %struct.anon*, !dbg !2868
  %low9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 0, !dbg !2869
  %6 = load i32, i32* %low9, align 8, !dbg !2869
  %s10 = bitcast %union.udwords* %y to %struct.anon*, !dbg !2870
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !2871
  %7 = load i32, i32* %high11, align 4, !dbg !2871
  %mul12 = mul i32 %6, %7, !dbg !2872
  %add = add i32 %mul, %mul12, !dbg !2873
  %s13 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2874
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !2875
  %8 = load i32, i32* %high14, align 4, !dbg !2876
  %add15 = add i32 %8, %add, !dbg !2876
  store i32 %add15, i32* %high14, align 4, !dbg !2876
  %all16 = bitcast %union.udwords* %r to i64*, !dbg !2877
  %9 = load i64, i64* %all16, align 8, !dbg !2877
  ret i64 %9, !dbg !2878
}

; Function Attrs: noinline nounwind
define internal i64 @__muldsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !2879 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %r = alloca %union.udwords, align 8
  %bits_in_word_2 = alloca i32, align 4
  %lower_mask = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 16, i32* %bits_in_word_2, align 4, !dbg !2880
  store i32 65535, i32* %lower_mask, align 4, !dbg !2881
  %0 = load i32, i32* %a.addr, align 4, !dbg !2882
  %and = and i32 %0, 65535, !dbg !2883
  %1 = load i32, i32* %b.addr, align 4, !dbg !2884
  %and1 = and i32 %1, 65535, !dbg !2885
  %mul = mul i32 %and, %and1, !dbg !2886
  %s = bitcast %union.udwords* %r to %struct.anon*, !dbg !2887
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !2888
  store i32 %mul, i32* %low, align 8, !dbg !2889
  %s2 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2890
  %low3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !2891
  %2 = load i32, i32* %low3, align 8, !dbg !2891
  %shr = lshr i32 %2, 16, !dbg !2892
  store i32 %shr, i32* %t, align 4, !dbg !2893
  %s4 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2894
  %low5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 0, !dbg !2895
  %3 = load i32, i32* %low5, align 8, !dbg !2896
  %and6 = and i32 %3, 65535, !dbg !2896
  store i32 %and6, i32* %low5, align 8, !dbg !2896
  %4 = load i32, i32* %a.addr, align 4, !dbg !2897
  %shr7 = lshr i32 %4, 16, !dbg !2898
  %5 = load i32, i32* %b.addr, align 4, !dbg !2899
  %and8 = and i32 %5, 65535, !dbg !2900
  %mul9 = mul i32 %shr7, %and8, !dbg !2901
  %6 = load i32, i32* %t, align 4, !dbg !2902
  %add = add i32 %6, %mul9, !dbg !2902
  store i32 %add, i32* %t, align 4, !dbg !2902
  %7 = load i32, i32* %t, align 4, !dbg !2903
  %and10 = and i32 %7, 65535, !dbg !2904
  %shl = shl i32 %and10, 16, !dbg !2905
  %s11 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2906
  %low12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 0, !dbg !2907
  %8 = load i32, i32* %low12, align 8, !dbg !2908
  %add13 = add i32 %8, %shl, !dbg !2908
  store i32 %add13, i32* %low12, align 8, !dbg !2908
  %9 = load i32, i32* %t, align 4, !dbg !2909
  %shr14 = lshr i32 %9, 16, !dbg !2910
  %s15 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2911
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s15, i32 0, i32 1, !dbg !2912
  store i32 %shr14, i32* %high, align 4, !dbg !2913
  %s16 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2914
  %low17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 0, !dbg !2915
  %10 = load i32, i32* %low17, align 8, !dbg !2915
  %shr18 = lshr i32 %10, 16, !dbg !2916
  store i32 %shr18, i32* %t, align 4, !dbg !2917
  %s19 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2918
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %s19, i32 0, i32 0, !dbg !2919
  %11 = load i32, i32* %low20, align 8, !dbg !2920
  %and21 = and i32 %11, 65535, !dbg !2920
  store i32 %and21, i32* %low20, align 8, !dbg !2920
  %12 = load i32, i32* %b.addr, align 4, !dbg !2921
  %shr22 = lshr i32 %12, 16, !dbg !2922
  %13 = load i32, i32* %a.addr, align 4, !dbg !2923
  %and23 = and i32 %13, 65535, !dbg !2924
  %mul24 = mul i32 %shr22, %and23, !dbg !2925
  %14 = load i32, i32* %t, align 4, !dbg !2926
  %add25 = add i32 %14, %mul24, !dbg !2926
  store i32 %add25, i32* %t, align 4, !dbg !2926
  %15 = load i32, i32* %t, align 4, !dbg !2927
  %and26 = and i32 %15, 65535, !dbg !2928
  %shl27 = shl i32 %and26, 16, !dbg !2929
  %s28 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2930
  %low29 = getelementptr inbounds %struct.anon, %struct.anon* %s28, i32 0, i32 0, !dbg !2931
  %16 = load i32, i32* %low29, align 8, !dbg !2932
  %add30 = add i32 %16, %shl27, !dbg !2932
  store i32 %add30, i32* %low29, align 8, !dbg !2932
  %17 = load i32, i32* %t, align 4, !dbg !2933
  %shr31 = lshr i32 %17, 16, !dbg !2934
  %s32 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2935
  %high33 = getelementptr inbounds %struct.anon, %struct.anon* %s32, i32 0, i32 1, !dbg !2936
  %18 = load i32, i32* %high33, align 4, !dbg !2937
  %add34 = add i32 %18, %shr31, !dbg !2937
  store i32 %add34, i32* %high33, align 4, !dbg !2937
  %19 = load i32, i32* %a.addr, align 4, !dbg !2938
  %shr35 = lshr i32 %19, 16, !dbg !2939
  %20 = load i32, i32* %b.addr, align 4, !dbg !2940
  %shr36 = lshr i32 %20, 16, !dbg !2941
  %mul37 = mul i32 %shr35, %shr36, !dbg !2942
  %s38 = bitcast %union.udwords* %r to %struct.anon*, !dbg !2943
  %high39 = getelementptr inbounds %struct.anon, %struct.anon* %s38, i32 0, i32 1, !dbg !2944
  %21 = load i32, i32* %high39, align 4, !dbg !2945
  %add40 = add i32 %21, %mul37, !dbg !2945
  store i32 %add40, i32* %high39, align 4, !dbg !2945
  %all = bitcast %union.udwords* %r to i64*, !dbg !2946
  %22 = load i64, i64* %all, align 8, !dbg !2946
  ret i64 %22, !dbg !2947
}

; Function Attrs: noinline nounwind
define dso_local i64 @__mulodi4(i64 noundef %a, i64 noundef %b, i32* noundef %overflow) #0 !dbg !2948 {
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
  store i32 64, i32* %N, align 4, !dbg !2949
  store i64 -9223372036854775808, i64* %MIN, align 8, !dbg !2950
  store i64 9223372036854775807, i64* %MAX, align 8, !dbg !2951
  %0 = load i32*, i32** %overflow.addr, align 4, !dbg !2952
  store i32 0, i32* %0, align 4, !dbg !2953
  %1 = load i64, i64* %a.addr, align 8, !dbg !2954
  %2 = load i64, i64* %b.addr, align 8, !dbg !2955
  %mul = mul nsw i64 %1, %2, !dbg !2956
  store i64 %mul, i64* %result, align 8, !dbg !2957
  %3 = load i64, i64* %a.addr, align 8, !dbg !2958
  %cmp = icmp eq i64 %3, -9223372036854775808, !dbg !2959
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2958

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %b.addr, align 8, !dbg !2960
  %cmp1 = icmp ne i64 %4, 0, !dbg !2961
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2962

land.lhs.true:                                    ; preds = %if.then
  %5 = load i64, i64* %b.addr, align 8, !dbg !2963
  %cmp2 = icmp ne i64 %5, 1, !dbg !2964
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2960

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32*, i32** %overflow.addr, align 4, !dbg !2965
  store i32 1, i32* %6, align 4, !dbg !2966
  br label %if.end, !dbg !2967

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %7 = load i64, i64* %result, align 8, !dbg !2968
  store i64 %7, i64* %retval, align 8, !dbg !2969
  br label %return, !dbg !2969

if.end4:                                          ; preds = %entry
  %8 = load i64, i64* %b.addr, align 8, !dbg !2970
  %cmp5 = icmp eq i64 %8, -9223372036854775808, !dbg !2971
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2970

if.then6:                                         ; preds = %if.end4
  %9 = load i64, i64* %a.addr, align 8, !dbg !2972
  %cmp7 = icmp ne i64 %9, 0, !dbg !2973
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2974

land.lhs.true8:                                   ; preds = %if.then6
  %10 = load i64, i64* %a.addr, align 8, !dbg !2975
  %cmp9 = icmp ne i64 %10, 1, !dbg !2976
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2972

if.then10:                                        ; preds = %land.lhs.true8
  %11 = load i32*, i32** %overflow.addr, align 4, !dbg !2977
  store i32 1, i32* %11, align 4, !dbg !2978
  br label %if.end11, !dbg !2979

if.end11:                                         ; preds = %if.then10, %land.lhs.true8, %if.then6
  %12 = load i64, i64* %result, align 8, !dbg !2980
  store i64 %12, i64* %retval, align 8, !dbg !2981
  br label %return, !dbg !2981

if.end12:                                         ; preds = %if.end4
  %13 = load i64, i64* %a.addr, align 8, !dbg !2982
  %shr = ashr i64 %13, 63, !dbg !2983
  store i64 %shr, i64* %sa, align 8, !dbg !2984
  %14 = load i64, i64* %a.addr, align 8, !dbg !2985
  %15 = load i64, i64* %sa, align 8, !dbg !2986
  %xor = xor i64 %14, %15, !dbg !2987
  %16 = load i64, i64* %sa, align 8, !dbg !2988
  %sub = sub nsw i64 %xor, %16, !dbg !2989
  store i64 %sub, i64* %abs_a, align 8, !dbg !2990
  %17 = load i64, i64* %b.addr, align 8, !dbg !2991
  %shr13 = ashr i64 %17, 63, !dbg !2992
  store i64 %shr13, i64* %sb, align 8, !dbg !2993
  %18 = load i64, i64* %b.addr, align 8, !dbg !2994
  %19 = load i64, i64* %sb, align 8, !dbg !2995
  %xor14 = xor i64 %18, %19, !dbg !2996
  %20 = load i64, i64* %sb, align 8, !dbg !2997
  %sub15 = sub nsw i64 %xor14, %20, !dbg !2998
  store i64 %sub15, i64* %abs_b, align 8, !dbg !2999
  %21 = load i64, i64* %abs_a, align 8, !dbg !3000
  %cmp16 = icmp slt i64 %21, 2, !dbg !3001
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !3002

lor.lhs.false:                                    ; preds = %if.end12
  %22 = load i64, i64* %abs_b, align 8, !dbg !3003
  %cmp17 = icmp slt i64 %22, 2, !dbg !3004
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3000

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  %23 = load i64, i64* %result, align 8, !dbg !3005
  store i64 %23, i64* %retval, align 8, !dbg !3006
  br label %return, !dbg !3006

if.end19:                                         ; preds = %lor.lhs.false
  %24 = load i64, i64* %sa, align 8, !dbg !3007
  %25 = load i64, i64* %sb, align 8, !dbg !3008
  %cmp20 = icmp eq i64 %24, %25, !dbg !3009
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !3007

if.then21:                                        ; preds = %if.end19
  %26 = load i64, i64* %abs_a, align 8, !dbg !3010
  %27 = load i64, i64* %abs_b, align 8, !dbg !3011
  %div = sdiv i64 9223372036854775807, %27, !dbg !3012
  %cmp22 = icmp sgt i64 %26, %div, !dbg !3013
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3010

if.then23:                                        ; preds = %if.then21
  %28 = load i32*, i32** %overflow.addr, align 4, !dbg !3014
  store i32 1, i32* %28, align 4, !dbg !3015
  br label %if.end24, !dbg !3016

if.end24:                                         ; preds = %if.then23, %if.then21
  br label %if.end30, !dbg !3017

if.else:                                          ; preds = %if.end19
  %29 = load i64, i64* %abs_a, align 8, !dbg !3018
  %30 = load i64, i64* %abs_b, align 8, !dbg !3019
  %sub25 = sub nsw i64 0, %30, !dbg !3020
  %div26 = sdiv i64 -9223372036854775808, %sub25, !dbg !3021
  %cmp27 = icmp sgt i64 %29, %div26, !dbg !3022
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3018

if.then28:                                        ; preds = %if.else
  %31 = load i32*, i32** %overflow.addr, align 4, !dbg !3023
  store i32 1, i32* %31, align 4, !dbg !3024
  br label %if.end29, !dbg !3025

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  %32 = load i64, i64* %result, align 8, !dbg !3026
  store i64 %32, i64* %retval, align 8, !dbg !3027
  br label %return, !dbg !3027

return:                                           ; preds = %if.end30, %if.then18, %if.end11, %if.end
  %33 = load i64, i64* %retval, align 8, !dbg !3028
  ret i64 %33, !dbg !3028
}

; Function Attrs: noinline nounwind
define dso_local i32 @__mulosi4(i32 noundef %a, i32 noundef %b, i32* noundef %overflow) #0 !dbg !3029 {
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
  store i32 32, i32* %N, align 4, !dbg !3030
  store i32 -2147483648, i32* %MIN, align 4, !dbg !3031
  store i32 2147483647, i32* %MAX, align 4, !dbg !3032
  %0 = load i32*, i32** %overflow.addr, align 4, !dbg !3033
  store i32 0, i32* %0, align 4, !dbg !3034
  %1 = load i32, i32* %a.addr, align 4, !dbg !3035
  %2 = load i32, i32* %b.addr, align 4, !dbg !3036
  %mul = mul nsw i32 %1, %2, !dbg !3037
  store i32 %mul, i32* %result, align 4, !dbg !3038
  %3 = load i32, i32* %a.addr, align 4, !dbg !3039
  %cmp = icmp eq i32 %3, -2147483648, !dbg !3040
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3039

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %b.addr, align 4, !dbg !3041
  %cmp1 = icmp ne i32 %4, 0, !dbg !3042
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !3043

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %b.addr, align 4, !dbg !3044
  %cmp2 = icmp ne i32 %5, 1, !dbg !3045
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3041

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32*, i32** %overflow.addr, align 4, !dbg !3046
  store i32 1, i32* %6, align 4, !dbg !3047
  br label %if.end, !dbg !3048

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %7 = load i32, i32* %result, align 4, !dbg !3049
  store i32 %7, i32* %retval, align 4, !dbg !3050
  br label %return, !dbg !3050

if.end4:                                          ; preds = %entry
  %8 = load i32, i32* %b.addr, align 4, !dbg !3051
  %cmp5 = icmp eq i32 %8, -2147483648, !dbg !3052
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !3051

if.then6:                                         ; preds = %if.end4
  %9 = load i32, i32* %a.addr, align 4, !dbg !3053
  %cmp7 = icmp ne i32 %9, 0, !dbg !3054
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3055

land.lhs.true8:                                   ; preds = %if.then6
  %10 = load i32, i32* %a.addr, align 4, !dbg !3056
  %cmp9 = icmp ne i32 %10, 1, !dbg !3057
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3053

if.then10:                                        ; preds = %land.lhs.true8
  %11 = load i32*, i32** %overflow.addr, align 4, !dbg !3058
  store i32 1, i32* %11, align 4, !dbg !3059
  br label %if.end11, !dbg !3060

if.end11:                                         ; preds = %if.then10, %land.lhs.true8, %if.then6
  %12 = load i32, i32* %result, align 4, !dbg !3061
  store i32 %12, i32* %retval, align 4, !dbg !3062
  br label %return, !dbg !3062

if.end12:                                         ; preds = %if.end4
  %13 = load i32, i32* %a.addr, align 4, !dbg !3063
  %shr = ashr i32 %13, 31, !dbg !3064
  store i32 %shr, i32* %sa, align 4, !dbg !3065
  %14 = load i32, i32* %a.addr, align 4, !dbg !3066
  %15 = load i32, i32* %sa, align 4, !dbg !3067
  %xor = xor i32 %14, %15, !dbg !3068
  %16 = load i32, i32* %sa, align 4, !dbg !3069
  %sub = sub nsw i32 %xor, %16, !dbg !3070
  store i32 %sub, i32* %abs_a, align 4, !dbg !3071
  %17 = load i32, i32* %b.addr, align 4, !dbg !3072
  %shr13 = ashr i32 %17, 31, !dbg !3073
  store i32 %shr13, i32* %sb, align 4, !dbg !3074
  %18 = load i32, i32* %b.addr, align 4, !dbg !3075
  %19 = load i32, i32* %sb, align 4, !dbg !3076
  %xor14 = xor i32 %18, %19, !dbg !3077
  %20 = load i32, i32* %sb, align 4, !dbg !3078
  %sub15 = sub nsw i32 %xor14, %20, !dbg !3079
  store i32 %sub15, i32* %abs_b, align 4, !dbg !3080
  %21 = load i32, i32* %abs_a, align 4, !dbg !3081
  %cmp16 = icmp slt i32 %21, 2, !dbg !3082
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !3083

lor.lhs.false:                                    ; preds = %if.end12
  %22 = load i32, i32* %abs_b, align 4, !dbg !3084
  %cmp17 = icmp slt i32 %22, 2, !dbg !3085
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3081

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  %23 = load i32, i32* %result, align 4, !dbg !3086
  store i32 %23, i32* %retval, align 4, !dbg !3087
  br label %return, !dbg !3087

if.end19:                                         ; preds = %lor.lhs.false
  %24 = load i32, i32* %sa, align 4, !dbg !3088
  %25 = load i32, i32* %sb, align 4, !dbg !3089
  %cmp20 = icmp eq i32 %24, %25, !dbg !3090
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !3088

if.then21:                                        ; preds = %if.end19
  %26 = load i32, i32* %abs_a, align 4, !dbg !3091
  %27 = load i32, i32* %abs_b, align 4, !dbg !3092
  %div = sdiv i32 2147483647, %27, !dbg !3093
  %cmp22 = icmp sgt i32 %26, %div, !dbg !3094
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3091

if.then23:                                        ; preds = %if.then21
  %28 = load i32*, i32** %overflow.addr, align 4, !dbg !3095
  store i32 1, i32* %28, align 4, !dbg !3096
  br label %if.end24, !dbg !3097

if.end24:                                         ; preds = %if.then23, %if.then21
  br label %if.end30, !dbg !3098

if.else:                                          ; preds = %if.end19
  %29 = load i32, i32* %abs_a, align 4, !dbg !3099
  %30 = load i32, i32* %abs_b, align 4, !dbg !3100
  %sub25 = sub nsw i32 0, %30, !dbg !3101
  %div26 = sdiv i32 -2147483648, %sub25, !dbg !3102
  %cmp27 = icmp sgt i32 %29, %div26, !dbg !3103
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3099

if.then28:                                        ; preds = %if.else
  %31 = load i32*, i32** %overflow.addr, align 4, !dbg !3104
  store i32 1, i32* %31, align 4, !dbg !3105
  br label %if.end29, !dbg !3106

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  %32 = load i32, i32* %result, align 4, !dbg !3107
  store i32 %32, i32* %retval, align 4, !dbg !3108
  br label %return, !dbg !3108

return:                                           ; preds = %if.end30, %if.then18, %if.end11, %if.end
  %33 = load i32, i32* %retval, align 4, !dbg !3109
  ret i32 %33, !dbg !3109
}

; Function Attrs: noinline nounwind
define dso_local float @__mulsf3(float noundef %a, float noundef %b) #0 !dbg !3110 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3111
  %1 = load float, float* %b.addr, align 4, !dbg !3112
  %call = call float @__mulXf3__.38(float noundef %0, float noundef %1) #4, !dbg !3113
  ret float %call, !dbg !3114
}

; Function Attrs: noinline nounwind
define internal float @__mulXf3__.38(float noundef %a, float noundef %b) #0 !dbg !3115 {
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
  %0 = load float, float* %a.addr, align 4, !dbg !3116
  %call = call i32 @toRep.39(float noundef %0) #4, !dbg !3117
  %shr = lshr i32 %call, 23, !dbg !3118
  %and = and i32 %shr, 255, !dbg !3119
  store i32 %and, i32* %aExponent, align 4, !dbg !3120
  %1 = load float, float* %b.addr, align 4, !dbg !3121
  %call1 = call i32 @toRep.39(float noundef %1) #4, !dbg !3122
  %shr2 = lshr i32 %call1, 23, !dbg !3123
  %and3 = and i32 %shr2, 255, !dbg !3124
  store i32 %and3, i32* %bExponent, align 4, !dbg !3125
  %2 = load float, float* %a.addr, align 4, !dbg !3126
  %call4 = call i32 @toRep.39(float noundef %2) #4, !dbg !3127
  %3 = load float, float* %b.addr, align 4, !dbg !3128
  %call5 = call i32 @toRep.39(float noundef %3) #4, !dbg !3129
  %xor = xor i32 %call4, %call5, !dbg !3130
  %and6 = and i32 %xor, -2147483648, !dbg !3131
  store i32 %and6, i32* %productSign, align 4, !dbg !3132
  %4 = load float, float* %a.addr, align 4, !dbg !3133
  %call7 = call i32 @toRep.39(float noundef %4) #4, !dbg !3134
  %and8 = and i32 %call7, 8388607, !dbg !3135
  store i32 %and8, i32* %aSignificand, align 4, !dbg !3136
  %5 = load float, float* %b.addr, align 4, !dbg !3137
  %call9 = call i32 @toRep.39(float noundef %5) #4, !dbg !3138
  %and10 = and i32 %call9, 8388607, !dbg !3139
  store i32 %and10, i32* %bSignificand, align 4, !dbg !3140
  store i32 0, i32* %scale, align 4, !dbg !3141
  %6 = load i32, i32* %aExponent, align 4, !dbg !3142
  %sub = sub i32 %6, 1, !dbg !3143
  %cmp = icmp uge i32 %sub, 254, !dbg !3144
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3145

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bExponent, align 4, !dbg !3146
  %sub11 = sub i32 %7, 1, !dbg !3147
  %cmp12 = icmp uge i32 %sub11, 254, !dbg !3148
  br i1 %cmp12, label %if.then, label %if.end60, !dbg !3142

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load float, float* %a.addr, align 4, !dbg !3149
  %call13 = call i32 @toRep.39(float noundef %8) #4, !dbg !3150
  %and14 = and i32 %call13, 2147483647, !dbg !3151
  store i32 %and14, i32* %aAbs, align 4, !dbg !3152
  %9 = load float, float* %b.addr, align 4, !dbg !3153
  %call15 = call i32 @toRep.39(float noundef %9) #4, !dbg !3154
  %and16 = and i32 %call15, 2147483647, !dbg !3155
  store i32 %and16, i32* %bAbs, align 4, !dbg !3156
  %10 = load i32, i32* %aAbs, align 4, !dbg !3157
  %cmp17 = icmp ugt i32 %10, 2139095040, !dbg !3158
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !3157

if.then18:                                        ; preds = %if.then
  %11 = load float, float* %a.addr, align 4, !dbg !3159
  %call19 = call i32 @toRep.39(float noundef %11) #4, !dbg !3160
  %or = or i32 %call19, 4194304, !dbg !3161
  %call20 = call float @fromRep.40(i32 noundef %or) #4, !dbg !3162
  store float %call20, float* %retval, align 4, !dbg !3163
  br label %return, !dbg !3163

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %bAbs, align 4, !dbg !3164
  %cmp21 = icmp ugt i32 %12, 2139095040, !dbg !3165
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !3164

if.then22:                                        ; preds = %if.end
  %13 = load float, float* %b.addr, align 4, !dbg !3166
  %call23 = call i32 @toRep.39(float noundef %13) #4, !dbg !3167
  %or24 = or i32 %call23, 4194304, !dbg !3168
  %call25 = call float @fromRep.40(i32 noundef %or24) #4, !dbg !3169
  store float %call25, float* %retval, align 4, !dbg !3170
  br label %return, !dbg !3170

if.end26:                                         ; preds = %if.end
  %14 = load i32, i32* %aAbs, align 4, !dbg !3171
  %cmp27 = icmp eq i32 %14, 2139095040, !dbg !3172
  br i1 %cmp27, label %if.then28, label %if.end33, !dbg !3171

if.then28:                                        ; preds = %if.end26
  %15 = load i32, i32* %bAbs, align 4, !dbg !3173
  %tobool = icmp ne i32 %15, 0, !dbg !3173
  br i1 %tobool, label %if.then29, label %if.else, !dbg !3173

if.then29:                                        ; preds = %if.then28
  %16 = load i32, i32* %aAbs, align 4, !dbg !3174
  %17 = load i32, i32* %productSign, align 4, !dbg !3175
  %or30 = or i32 %16, %17, !dbg !3176
  %call31 = call float @fromRep.40(i32 noundef %or30) #4, !dbg !3177
  store float %call31, float* %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

if.else:                                          ; preds = %if.then28
  %call32 = call float @fromRep.40(i32 noundef 2143289344) #4, !dbg !3179
  store float %call32, float* %retval, align 4, !dbg !3180
  br label %return, !dbg !3180

if.end33:                                         ; preds = %if.end26
  %18 = load i32, i32* %bAbs, align 4, !dbg !3181
  %cmp34 = icmp eq i32 %18, 2139095040, !dbg !3182
  br i1 %cmp34, label %if.then35, label %if.end42, !dbg !3181

if.then35:                                        ; preds = %if.end33
  %19 = load i32, i32* %aAbs, align 4, !dbg !3183
  %tobool36 = icmp ne i32 %19, 0, !dbg !3183
  br i1 %tobool36, label %if.then37, label %if.else40, !dbg !3183

if.then37:                                        ; preds = %if.then35
  %20 = load i32, i32* %bAbs, align 4, !dbg !3184
  %21 = load i32, i32* %productSign, align 4, !dbg !3185
  %or38 = or i32 %20, %21, !dbg !3186
  %call39 = call float @fromRep.40(i32 noundef %or38) #4, !dbg !3187
  store float %call39, float* %retval, align 4, !dbg !3188
  br label %return, !dbg !3188

if.else40:                                        ; preds = %if.then35
  %call41 = call float @fromRep.40(i32 noundef 2143289344) #4, !dbg !3189
  store float %call41, float* %retval, align 4, !dbg !3190
  br label %return, !dbg !3190

if.end42:                                         ; preds = %if.end33
  %22 = load i32, i32* %aAbs, align 4, !dbg !3191
  %tobool43 = icmp ne i32 %22, 0, !dbg !3191
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !3192

if.then44:                                        ; preds = %if.end42
  %23 = load i32, i32* %productSign, align 4, !dbg !3193
  %call45 = call float @fromRep.40(i32 noundef %23) #4, !dbg !3194
  store float %call45, float* %retval, align 4, !dbg !3195
  br label %return, !dbg !3195

if.end46:                                         ; preds = %if.end42
  %24 = load i32, i32* %bAbs, align 4, !dbg !3196
  %tobool47 = icmp ne i32 %24, 0, !dbg !3196
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !3197

if.then48:                                        ; preds = %if.end46
  %25 = load i32, i32* %productSign, align 4, !dbg !3198
  %call49 = call float @fromRep.40(i32 noundef %25) #4, !dbg !3199
  store float %call49, float* %retval, align 4, !dbg !3200
  br label %return, !dbg !3200

if.end50:                                         ; preds = %if.end46
  %26 = load i32, i32* %aAbs, align 4, !dbg !3201
  %cmp51 = icmp ult i32 %26, 8388608, !dbg !3202
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !3201

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @normalize.41(i32* noundef %aSignificand) #4, !dbg !3203
  %27 = load i32, i32* %scale, align 4, !dbg !3204
  %add = add nsw i32 %27, %call53, !dbg !3204
  store i32 %add, i32* %scale, align 4, !dbg !3204
  br label %if.end54, !dbg !3205

if.end54:                                         ; preds = %if.then52, %if.end50
  %28 = load i32, i32* %bAbs, align 4, !dbg !3206
  %cmp55 = icmp ult i32 %28, 8388608, !dbg !3207
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !3206

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @normalize.41(i32* noundef %bSignificand) #4, !dbg !3208
  %29 = load i32, i32* %scale, align 4, !dbg !3209
  %add58 = add nsw i32 %29, %call57, !dbg !3209
  store i32 %add58, i32* %scale, align 4, !dbg !3209
  br label %if.end59, !dbg !3210

if.end59:                                         ; preds = %if.then56, %if.end54
  br label %if.end60, !dbg !3211

if.end60:                                         ; preds = %if.end59, %lor.lhs.false
  %30 = load i32, i32* %aSignificand, align 4, !dbg !3212
  %or61 = or i32 %30, 8388608, !dbg !3212
  store i32 %or61, i32* %aSignificand, align 4, !dbg !3212
  %31 = load i32, i32* %bSignificand, align 4, !dbg !3213
  %or62 = or i32 %31, 8388608, !dbg !3213
  store i32 %or62, i32* %bSignificand, align 4, !dbg !3213
  %32 = load i32, i32* %aSignificand, align 4, !dbg !3214
  %33 = load i32, i32* %bSignificand, align 4, !dbg !3215
  %shl = shl i32 %33, 8, !dbg !3216
  call void @wideMultiply.42(i32 noundef %32, i32 noundef %shl, i32* noundef %productHi, i32* noundef %productLo) #4, !dbg !3217
  %34 = load i32, i32* %aExponent, align 4, !dbg !3218
  %35 = load i32, i32* %bExponent, align 4, !dbg !3219
  %add63 = add i32 %34, %35, !dbg !3220
  %sub64 = sub i32 %add63, 127, !dbg !3221
  %36 = load i32, i32* %scale, align 4, !dbg !3222
  %add65 = add i32 %sub64, %36, !dbg !3223
  store i32 %add65, i32* %productExponent, align 4, !dbg !3224
  %37 = load i32, i32* %productHi, align 4, !dbg !3225
  %and66 = and i32 %37, 8388608, !dbg !3226
  %tobool67 = icmp ne i32 %and66, 0, !dbg !3226
  br i1 %tobool67, label %if.then68, label %if.else69, !dbg !3225

if.then68:                                        ; preds = %if.end60
  %38 = load i32, i32* %productExponent, align 4, !dbg !3227
  %inc = add nsw i32 %38, 1, !dbg !3227
  store i32 %inc, i32* %productExponent, align 4, !dbg !3227
  br label %if.end70, !dbg !3228

if.else69:                                        ; preds = %if.end60
  call void @wideLeftShift.43(i32* noundef %productHi, i32* noundef %productLo, i32 noundef 1) #4, !dbg !3229
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  %39 = load i32, i32* %productExponent, align 4, !dbg !3230
  %cmp71 = icmp sge i32 %39, 255, !dbg !3231
  br i1 %cmp71, label %if.then72, label %if.end75, !dbg !3230

if.then72:                                        ; preds = %if.end70
  %40 = load i32, i32* %productSign, align 4, !dbg !3232
  %or73 = or i32 2139095040, %40, !dbg !3233
  %call74 = call float @fromRep.40(i32 noundef %or73) #4, !dbg !3234
  store float %call74, float* %retval, align 4, !dbg !3235
  br label %return, !dbg !3235

if.end75:                                         ; preds = %if.end70
  %41 = load i32, i32* %productExponent, align 4, !dbg !3236
  %cmp76 = icmp sle i32 %41, 0, !dbg !3237
  br i1 %cmp76, label %if.then77, label %if.else83, !dbg !3236

if.then77:                                        ; preds = %if.end75
  %42 = load i32, i32* %productExponent, align 4, !dbg !3238
  %sub78 = sub i32 1, %42, !dbg !3239
  store i32 %sub78, i32* %shift, align 4, !dbg !3240
  %43 = load i32, i32* %shift, align 4, !dbg !3241
  %cmp79 = icmp uge i32 %43, 32, !dbg !3242
  br i1 %cmp79, label %if.then80, label %if.end82, !dbg !3241

if.then80:                                        ; preds = %if.then77
  %44 = load i32, i32* %productSign, align 4, !dbg !3243
  %call81 = call float @fromRep.40(i32 noundef %44) #4, !dbg !3244
  store float %call81, float* %retval, align 4, !dbg !3245
  br label %return, !dbg !3245

if.end82:                                         ; preds = %if.then77
  %45 = load i32, i32* %shift, align 4, !dbg !3246
  call void @wideRightShiftWithSticky.44(i32* noundef %productHi, i32* noundef %productLo, i32 noundef %45) #4, !dbg !3247
  br label %if.end87, !dbg !3248

if.else83:                                        ; preds = %if.end75
  %46 = load i32, i32* %productHi, align 4, !dbg !3249
  %and84 = and i32 %46, 8388607, !dbg !3249
  store i32 %and84, i32* %productHi, align 4, !dbg !3249
  %47 = load i32, i32* %productExponent, align 4, !dbg !3250
  %shl85 = shl i32 %47, 23, !dbg !3251
  %48 = load i32, i32* %productHi, align 4, !dbg !3252
  %or86 = or i32 %48, %shl85, !dbg !3252
  store i32 %or86, i32* %productHi, align 4, !dbg !3252
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.end82
  %49 = load i32, i32* %productSign, align 4, !dbg !3253
  %50 = load i32, i32* %productHi, align 4, !dbg !3254
  %or88 = or i32 %50, %49, !dbg !3254
  store i32 %or88, i32* %productHi, align 4, !dbg !3254
  %51 = load i32, i32* %productLo, align 4, !dbg !3255
  %cmp89 = icmp ugt i32 %51, -2147483648, !dbg !3256
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !3255

if.then90:                                        ; preds = %if.end87
  %52 = load i32, i32* %productHi, align 4, !dbg !3257
  %inc91 = add i32 %52, 1, !dbg !3257
  store i32 %inc91, i32* %productHi, align 4, !dbg !3257
  br label %if.end92, !dbg !3258

if.end92:                                         ; preds = %if.then90, %if.end87
  %53 = load i32, i32* %productLo, align 4, !dbg !3259
  %cmp93 = icmp eq i32 %53, -2147483648, !dbg !3260
  br i1 %cmp93, label %if.then94, label %if.end97, !dbg !3259

if.then94:                                        ; preds = %if.end92
  %54 = load i32, i32* %productHi, align 4, !dbg !3261
  %and95 = and i32 %54, 1, !dbg !3262
  %55 = load i32, i32* %productHi, align 4, !dbg !3263
  %add96 = add i32 %55, %and95, !dbg !3263
  store i32 %add96, i32* %productHi, align 4, !dbg !3263
  br label %if.end97, !dbg !3264

if.end97:                                         ; preds = %if.then94, %if.end92
  %56 = load i32, i32* %productHi, align 4, !dbg !3265
  %call98 = call float @fromRep.40(i32 noundef %56) #4, !dbg !3266
  store float %call98, float* %retval, align 4, !dbg !3267
  br label %return, !dbg !3267

return:                                           ; preds = %if.end97, %if.then80, %if.then72, %if.then48, %if.then44, %if.else40, %if.then37, %if.else, %if.then29, %if.then22, %if.then18
  %57 = load float, float* %retval, align 4, !dbg !3268
  ret float %57, !dbg !3268
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.39(float noundef %x) #0 !dbg !3269 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3270
  %0 = load float, float* %x.addr, align 4, !dbg !3271
  store float %0, float* %f, align 4, !dbg !3270
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3272
  %1 = load i32, i32* %i, align 4, !dbg !3272
  ret i32 %1, !dbg !3273
}

; Function Attrs: noinline nounwind
define internal float @fromRep.40(i32 noundef %x) #0 !dbg !3274 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3275
  %0 = load i32, i32* %x.addr, align 4, !dbg !3276
  store i32 %0, i32* %i, align 4, !dbg !3275
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3277
  %1 = load float, float* %f, align 4, !dbg !3277
  ret float %1, !dbg !3278
}

; Function Attrs: noinline nounwind
define internal i32 @normalize.41(i32* noundef %significand) #0 !dbg !3279 {
entry:
  %significand.addr = alloca i32*, align 4
  %shift = alloca i32, align 4
  store i32* %significand, i32** %significand.addr, align 4
  %0 = load i32*, i32** %significand.addr, align 4, !dbg !3280
  %1 = load i32, i32* %0, align 4, !dbg !3281
  %call = call i32 @rep_clz.45(i32 noundef %1) #4, !dbg !3282
  %call1 = call i32 @rep_clz.45(i32 noundef 8388608) #4, !dbg !3283
  %sub = sub nsw i32 %call, %call1, !dbg !3284
  store i32 %sub, i32* %shift, align 4, !dbg !3285
  %2 = load i32, i32* %shift, align 4, !dbg !3286
  %3 = load i32*, i32** %significand.addr, align 4, !dbg !3287
  %4 = load i32, i32* %3, align 4, !dbg !3288
  %shl = shl i32 %4, %2, !dbg !3288
  store i32 %shl, i32* %3, align 4, !dbg !3288
  %5 = load i32, i32* %shift, align 4, !dbg !3289
  %sub2 = sub nsw i32 1, %5, !dbg !3290
  ret i32 %sub2, !dbg !3291
}

; Function Attrs: noinline nounwind
define internal void @wideMultiply.42(i32 noundef %a, i32 noundef %b, i32* noundef %hi, i32* noundef %lo) #0 !dbg !3292 {
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
  %0 = load i32, i32* %a.addr, align 4, !dbg !3293
  %conv = zext i32 %0 to i64, !dbg !3294
  %1 = load i32, i32* %b.addr, align 4, !dbg !3295
  %conv1 = zext i32 %1 to i64, !dbg !3295
  %mul = mul i64 %conv, %conv1, !dbg !3296
  store i64 %mul, i64* %product, align 8, !dbg !3297
  %2 = load i64, i64* %product, align 8, !dbg !3298
  %shr = lshr i64 %2, 32, !dbg !3299
  %conv2 = trunc i64 %shr to i32, !dbg !3298
  %3 = load i32*, i32** %hi.addr, align 4, !dbg !3300
  store i32 %conv2, i32* %3, align 4, !dbg !3301
  %4 = load i64, i64* %product, align 8, !dbg !3302
  %conv3 = trunc i64 %4 to i32, !dbg !3302
  %5 = load i32*, i32** %lo.addr, align 4, !dbg !3303
  store i32 %conv3, i32* %5, align 4, !dbg !3304
  ret void, !dbg !3305
}

; Function Attrs: noinline nounwind
define internal void @wideLeftShift.43(i32* noundef %hi, i32* noundef %lo, i32 noundef %count) #0 !dbg !3306 {
entry:
  %hi.addr = alloca i32*, align 4
  %lo.addr = alloca i32*, align 4
  %count.addr = alloca i32, align 4
  store i32* %hi, i32** %hi.addr, align 4
  store i32* %lo, i32** %lo.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32*, i32** %hi.addr, align 4, !dbg !3307
  %1 = load i32, i32* %0, align 4, !dbg !3308
  %2 = load i32, i32* %count.addr, align 4, !dbg !3309
  %shl = shl i32 %1, %2, !dbg !3310
  %3 = load i32*, i32** %lo.addr, align 4, !dbg !3311
  %4 = load i32, i32* %3, align 4, !dbg !3312
  %5 = load i32, i32* %count.addr, align 4, !dbg !3313
  %sub = sub i32 32, %5, !dbg !3314
  %shr = lshr i32 %4, %sub, !dbg !3315
  %or = or i32 %shl, %shr, !dbg !3316
  %6 = load i32*, i32** %hi.addr, align 4, !dbg !3317
  store i32 %or, i32* %6, align 4, !dbg !3318
  %7 = load i32*, i32** %lo.addr, align 4, !dbg !3319
  %8 = load i32, i32* %7, align 4, !dbg !3320
  %9 = load i32, i32* %count.addr, align 4, !dbg !3321
  %shl1 = shl i32 %8, %9, !dbg !3322
  %10 = load i32*, i32** %lo.addr, align 4, !dbg !3323
  store i32 %shl1, i32* %10, align 4, !dbg !3324
  ret void, !dbg !3325
}

; Function Attrs: noinline nounwind
define internal void @wideRightShiftWithSticky.44(i32* noundef %hi, i32* noundef %lo, i32 noundef %count) #0 !dbg !3326 {
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
  %0 = load i32, i32* %count.addr, align 4, !dbg !3327
  %cmp = icmp ult i32 %0, 32, !dbg !3328
  br i1 %cmp, label %if.then, label %if.else, !dbg !3327

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %lo.addr, align 4, !dbg !3329
  %2 = load i32, i32* %1, align 4, !dbg !3330
  %3 = load i32, i32* %count.addr, align 4, !dbg !3331
  %sub = sub i32 32, %3, !dbg !3332
  %shl = shl i32 %2, %sub, !dbg !3333
  %tobool = icmp ne i32 %shl, 0, !dbg !3330
  %frombool = zext i1 %tobool to i8, !dbg !3334
  store i8 %frombool, i8* %sticky, align 1, !dbg !3334
  %4 = load i32*, i32** %hi.addr, align 4, !dbg !3335
  %5 = load i32, i32* %4, align 4, !dbg !3336
  %6 = load i32, i32* %count.addr, align 4, !dbg !3337
  %sub1 = sub i32 32, %6, !dbg !3338
  %shl2 = shl i32 %5, %sub1, !dbg !3339
  %7 = load i32*, i32** %lo.addr, align 4, !dbg !3340
  %8 = load i32, i32* %7, align 4, !dbg !3341
  %9 = load i32, i32* %count.addr, align 4, !dbg !3342
  %shr = lshr i32 %8, %9, !dbg !3343
  %or = or i32 %shl2, %shr, !dbg !3344
  %10 = load i8, i8* %sticky, align 1, !dbg !3345
  %tobool3 = trunc i8 %10 to i1, !dbg !3345
  %conv = zext i1 %tobool3 to i32, !dbg !3345
  %or4 = or i32 %or, %conv, !dbg !3346
  %11 = load i32*, i32** %lo.addr, align 4, !dbg !3347
  store i32 %or4, i32* %11, align 4, !dbg !3348
  %12 = load i32*, i32** %hi.addr, align 4, !dbg !3349
  %13 = load i32, i32* %12, align 4, !dbg !3350
  %14 = load i32, i32* %count.addr, align 4, !dbg !3351
  %shr5 = lshr i32 %13, %14, !dbg !3352
  %15 = load i32*, i32** %hi.addr, align 4, !dbg !3353
  store i32 %shr5, i32* %15, align 4, !dbg !3354
  br label %if.end27, !dbg !3355

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %count.addr, align 4, !dbg !3356
  %cmp6 = icmp ult i32 %16, 64, !dbg !3357
  br i1 %cmp6, label %if.then8, label %if.else20, !dbg !3356

if.then8:                                         ; preds = %if.else
  %17 = load i32*, i32** %hi.addr, align 4, !dbg !3358
  %18 = load i32, i32* %17, align 4, !dbg !3359
  %19 = load i32, i32* %count.addr, align 4, !dbg !3360
  %sub10 = sub i32 64, %19, !dbg !3361
  %shl11 = shl i32 %18, %sub10, !dbg !3362
  %20 = load i32*, i32** %lo.addr, align 4, !dbg !3363
  %21 = load i32, i32* %20, align 4, !dbg !3364
  %or12 = or i32 %shl11, %21, !dbg !3365
  %tobool13 = icmp ne i32 %or12, 0, !dbg !3359
  %frombool14 = zext i1 %tobool13 to i8, !dbg !3366
  store i8 %frombool14, i8* %sticky9, align 1, !dbg !3366
  %22 = load i32*, i32** %hi.addr, align 4, !dbg !3367
  %23 = load i32, i32* %22, align 4, !dbg !3368
  %24 = load i32, i32* %count.addr, align 4, !dbg !3369
  %sub15 = sub i32 %24, 32, !dbg !3370
  %shr16 = lshr i32 %23, %sub15, !dbg !3371
  %25 = load i8, i8* %sticky9, align 1, !dbg !3372
  %tobool17 = trunc i8 %25 to i1, !dbg !3372
  %conv18 = zext i1 %tobool17 to i32, !dbg !3372
  %or19 = or i32 %shr16, %conv18, !dbg !3373
  %26 = load i32*, i32** %lo.addr, align 4, !dbg !3374
  store i32 %or19, i32* %26, align 4, !dbg !3375
  %27 = load i32*, i32** %hi.addr, align 4, !dbg !3376
  store i32 0, i32* %27, align 4, !dbg !3377
  br label %if.end, !dbg !3378

if.else20:                                        ; preds = %if.else
  %28 = load i32*, i32** %hi.addr, align 4, !dbg !3379
  %29 = load i32, i32* %28, align 4, !dbg !3380
  %30 = load i32*, i32** %lo.addr, align 4, !dbg !3381
  %31 = load i32, i32* %30, align 4, !dbg !3382
  %or22 = or i32 %29, %31, !dbg !3383
  %tobool23 = icmp ne i32 %or22, 0, !dbg !3380
  %frombool24 = zext i1 %tobool23 to i8, !dbg !3384
  store i8 %frombool24, i8* %sticky21, align 1, !dbg !3384
  %32 = load i8, i8* %sticky21, align 1, !dbg !3385
  %tobool25 = trunc i8 %32 to i1, !dbg !3385
  %conv26 = zext i1 %tobool25 to i32, !dbg !3385
  %33 = load i32*, i32** %lo.addr, align 4, !dbg !3386
  store i32 %conv26, i32* %33, align 4, !dbg !3387
  %34 = load i32*, i32** %hi.addr, align 4, !dbg !3388
  store i32 0, i32* %34, align 4, !dbg !3389
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then8
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then
  ret void, !dbg !3390
}

; Function Attrs: noinline nounwind
define internal i32 @rep_clz.45(i32 noundef %a) #0 !dbg !3391 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !3392
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !3393
  ret i32 %1, !dbg !3394
}

; Function Attrs: noinline nounwind
define dso_local double @__negdf2(double noundef %a) #0 !dbg !3395 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3396
  %call = call i64 @toRep.46(double noundef %0) #4, !dbg !3397
  %xor = xor i64 %call, -9223372036854775808, !dbg !3398
  %call1 = call double @fromRep.47(i64 noundef %xor) #4, !dbg !3399
  ret double %call1, !dbg !3400
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.46(double noundef %x) #0 !dbg !3401 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3402
  %0 = load double, double* %x.addr, align 8, !dbg !3403
  store double %0, double* %f, align 8, !dbg !3402
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3404
  %1 = load i64, i64* %i, align 8, !dbg !3404
  ret i64 %1, !dbg !3405
}

; Function Attrs: noinline nounwind
define internal double @fromRep.47(i64 noundef %x) #0 !dbg !3406 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3407
  %0 = load i64, i64* %x.addr, align 8, !dbg !3408
  store i64 %0, i64* %i, align 8, !dbg !3407
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3409
  %1 = load double, double* %f, align 8, !dbg !3409
  ret double %1, !dbg !3410
}

; Function Attrs: noinline nounwind
define dso_local i64 @__negdi2(i64 noundef %a) #0 !dbg !3411 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !3412
  %sub = sub nsw i64 0, %0, !dbg !3413
  ret i64 %sub, !dbg !3414
}

; Function Attrs: noinline nounwind
define dso_local float @__negsf2(float noundef %a) #0 !dbg !3415 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3416
  %call = call i32 @toRep.48(float noundef %0) #4, !dbg !3417
  %xor = xor i32 %call, -2147483648, !dbg !3418
  %call1 = call float @fromRep.49(i32 noundef %xor) #4, !dbg !3419
  ret float %call1, !dbg !3420
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.48(float noundef %x) #0 !dbg !3421 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3422
  %0 = load float, float* %x.addr, align 4, !dbg !3423
  store float %0, float* %f, align 4, !dbg !3422
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3424
  %1 = load i32, i32* %i, align 4, !dbg !3424
  ret i32 %1, !dbg !3425
}

; Function Attrs: noinline nounwind
define internal float @fromRep.49(i32 noundef %x) #0 !dbg !3426 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3427
  %0 = load i32, i32* %x.addr, align 4, !dbg !3428
  store i32 %0, i32* %i, align 4, !dbg !3427
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3429
  %1 = load float, float* %f, align 4, !dbg !3429
  ret float %1, !dbg !3430
}

; Function Attrs: noinline nounwind
define dso_local i64 @__negvdi2(i64 noundef %a) #0 !dbg !3431 {
entry:
  %a.addr = alloca i64, align 8
  %MIN = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 -9223372036854775808, i64* %MIN, align 8, !dbg !3432
  %0 = load i64, i64* %a.addr, align 8, !dbg !3433
  %cmp = icmp eq i64 %0, -9223372036854775808, !dbg !3434
  br i1 %cmp, label %if.then, label %if.end, !dbg !3433

if.then:                                          ; preds = %entry
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__negvdi2, i32 0, i32 0)) #5, !dbg !3435
  unreachable, !dbg !3435

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !3436
  %sub = sub nsw i64 0, %1, !dbg !3437
  ret i64 %sub, !dbg !3438
}

; Function Attrs: noinline nounwind
define dso_local i32 @__negvsi2(i32 noundef %a) #0 !dbg !3439 {
entry:
  %a.addr = alloca i32, align 4
  %MIN = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 -2147483648, i32* %MIN, align 4, !dbg !3440
  %0 = load i32, i32* %a.addr, align 4, !dbg !3441
  %cmp = icmp eq i32 %0, -2147483648, !dbg !3442
  br i1 %cmp, label %if.then, label %if.end, !dbg !3441

if.then:                                          ; preds = %entry
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__negvsi2, i32 0, i32 0)) #5, !dbg !3443
  unreachable, !dbg !3443

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !3444
  %sub = sub nsw i32 0, %1, !dbg !3445
  ret i32 %sub, !dbg !3446
}

; Function Attrs: noinline nounwind
define dso_local double @__powidf2(double noundef %a, i32 noundef %b) #0 !dbg !3447 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca i32, align 4
  %recip = alloca i32, align 4
  %r = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4, !dbg !3448
  %cmp = icmp slt i32 %0, 0, !dbg !3449
  %conv = zext i1 %cmp to i32, !dbg !3449
  store i32 %conv, i32* %recip, align 4, !dbg !3450
  store double 1.000000e+00, double* %r, align 8, !dbg !3451
  br label %while.body, !dbg !3452

while.body:                                       ; preds = %if.end4, %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !3453
  %and = and i32 %1, 1, !dbg !3454
  %tobool = icmp ne i32 %and, 0, !dbg !3454
  br i1 %tobool, label %if.then, label %if.end, !dbg !3453

if.then:                                          ; preds = %while.body
  %2 = load double, double* %a.addr, align 8, !dbg !3455
  %3 = load double, double* %r, align 8, !dbg !3456
  %mul = fmul double %3, %2, !dbg !3456
  store double %mul, double* %r, align 8, !dbg !3456
  br label %if.end, !dbg !3457

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, i32* %b.addr, align 4, !dbg !3458
  %div = sdiv i32 %4, 2, !dbg !3458
  store i32 %div, i32* %b.addr, align 4, !dbg !3458
  %5 = load i32, i32* %b.addr, align 4, !dbg !3459
  %cmp1 = icmp eq i32 %5, 0, !dbg !3460
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3459

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !3461

if.end4:                                          ; preds = %if.end
  %6 = load double, double* %a.addr, align 8, !dbg !3462
  %7 = load double, double* %a.addr, align 8, !dbg !3463
  %mul5 = fmul double %7, %6, !dbg !3463
  store double %mul5, double* %a.addr, align 8, !dbg !3463
  br label %while.body, !dbg !3452, !llvm.loop !3464

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %recip, align 4, !dbg !3466
  %tobool6 = icmp ne i32 %8, 0, !dbg !3466
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !3466

cond.true:                                        ; preds = %while.end
  %9 = load double, double* %r, align 8, !dbg !3467
  %div7 = fdiv double 1.000000e+00, %9, !dbg !3468
  br label %cond.end, !dbg !3466

cond.false:                                       ; preds = %while.end
  %10 = load double, double* %r, align 8, !dbg !3469
  br label %cond.end, !dbg !3466

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div7, %cond.true ], [ %10, %cond.false ], !dbg !3466
  ret double %cond, !dbg !3470
}

; Function Attrs: noinline nounwind
define dso_local float @__powisf2(float noundef %a, i32 noundef %b) #0 !dbg !3471 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca i32, align 4
  %recip = alloca i32, align 4
  %r = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4, !dbg !3472
  %cmp = icmp slt i32 %0, 0, !dbg !3473
  %conv = zext i1 %cmp to i32, !dbg !3473
  store i32 %conv, i32* %recip, align 4, !dbg !3474
  store float 1.000000e+00, float* %r, align 4, !dbg !3475
  br label %while.body, !dbg !3476

while.body:                                       ; preds = %if.end4, %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !3477
  %and = and i32 %1, 1, !dbg !3478
  %tobool = icmp ne i32 %and, 0, !dbg !3478
  br i1 %tobool, label %if.then, label %if.end, !dbg !3477

if.then:                                          ; preds = %while.body
  %2 = load float, float* %a.addr, align 4, !dbg !3479
  %3 = load float, float* %r, align 4, !dbg !3480
  %mul = fmul float %3, %2, !dbg !3480
  store float %mul, float* %r, align 4, !dbg !3480
  br label %if.end, !dbg !3481

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, i32* %b.addr, align 4, !dbg !3482
  %div = sdiv i32 %4, 2, !dbg !3482
  store i32 %div, i32* %b.addr, align 4, !dbg !3482
  %5 = load i32, i32* %b.addr, align 4, !dbg !3483
  %cmp1 = icmp eq i32 %5, 0, !dbg !3484
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3483

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !3485

if.end4:                                          ; preds = %if.end
  %6 = load float, float* %a.addr, align 4, !dbg !3486
  %7 = load float, float* %a.addr, align 4, !dbg !3487
  %mul5 = fmul float %7, %6, !dbg !3487
  store float %mul5, float* %a.addr, align 4, !dbg !3487
  br label %while.body, !dbg !3476, !llvm.loop !3488

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %recip, align 4, !dbg !3490
  %tobool6 = icmp ne i32 %8, 0, !dbg !3490
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !3490

cond.true:                                        ; preds = %while.end
  %9 = load float, float* %r, align 4, !dbg !3491
  %div7 = fdiv float 1.000000e+00, %9, !dbg !3492
  br label %cond.end, !dbg !3490

cond.false:                                       ; preds = %while.end
  %10 = load float, float* %r, align 4, !dbg !3493
  br label %cond.end, !dbg !3490

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %div7, %cond.true ], [ %10, %cond.false ], !dbg !3490
  ret float %cond, !dbg !3494
}

; Function Attrs: noinline nounwind
define dso_local fp128 @__powixf2(fp128 noundef %a, i32 noundef %b) #0 !dbg !3495 {
entry:
  %a.addr = alloca fp128, align 16
  %b.addr = alloca i32, align 4
  %recip = alloca i32, align 4
  %r = alloca fp128, align 16
  store fp128 %a, fp128* %a.addr, align 16
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4, !dbg !3496
  %cmp = icmp slt i32 %0, 0, !dbg !3497
  %conv = zext i1 %cmp to i32, !dbg !3497
  store i32 %conv, i32* %recip, align 4, !dbg !3498
  store fp128 0xL00000000000000003FFF000000000000, fp128* %r, align 16, !dbg !3499
  br label %while.body, !dbg !3500

while.body:                                       ; preds = %if.end4, %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !3501
  %and = and i32 %1, 1, !dbg !3502
  %tobool = icmp ne i32 %and, 0, !dbg !3502
  br i1 %tobool, label %if.then, label %if.end, !dbg !3501

if.then:                                          ; preds = %while.body
  %2 = load fp128, fp128* %a.addr, align 16, !dbg !3503
  %3 = load fp128, fp128* %r, align 16, !dbg !3504
  %mul = fmul fp128 %3, %2, !dbg !3504
  store fp128 %mul, fp128* %r, align 16, !dbg !3504
  br label %if.end, !dbg !3505

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, i32* %b.addr, align 4, !dbg !3506
  %div = sdiv i32 %4, 2, !dbg !3506
  store i32 %div, i32* %b.addr, align 4, !dbg !3506
  %5 = load i32, i32* %b.addr, align 4, !dbg !3507
  %cmp1 = icmp eq i32 %5, 0, !dbg !3508
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3507

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !3509

if.end4:                                          ; preds = %if.end
  %6 = load fp128, fp128* %a.addr, align 16, !dbg !3510
  %7 = load fp128, fp128* %a.addr, align 16, !dbg !3511
  %mul5 = fmul fp128 %7, %6, !dbg !3511
  store fp128 %mul5, fp128* %a.addr, align 16, !dbg !3511
  br label %while.body, !dbg !3500, !llvm.loop !3512

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %recip, align 4, !dbg !3514
  %tobool6 = icmp ne i32 %8, 0, !dbg !3514
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !3514

cond.true:                                        ; preds = %while.end
  %9 = load fp128, fp128* %r, align 16, !dbg !3515
  %div7 = fdiv fp128 0xL00000000000000003FFF000000000000, %9, !dbg !3516
  br label %cond.end, !dbg !3514

cond.false:                                       ; preds = %while.end
  %10 = load fp128, fp128* %r, align 16, !dbg !3517
  br label %cond.end, !dbg !3514

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi fp128 [ %div7, %cond.true ], [ %10, %cond.false ], !dbg !3514
  ret fp128 %cond, !dbg !3518
}

; Function Attrs: noinline nounwind
define dso_local double @__subdf3(double noundef %a, double noundef %b) #0 !dbg !3519 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3520
  %1 = load double, double* %b.addr, align 8, !dbg !3521
  %call = call i64 @toRep.51(double noundef %1) #4, !dbg !3522
  %xor = xor i64 %call, -9223372036854775808, !dbg !3523
  %call1 = call double @fromRep.52(i64 noundef %xor) #4, !dbg !3524
  %call2 = call double @__adddf3(double noundef %0, double noundef %call1) #4, !dbg !3525
  ret double %call2, !dbg !3526
}

; Function Attrs: noinline nounwind
define internal i64 @toRep.51(double noundef %x) #0 !dbg !3527 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3528
  %0 = load double, double* %x.addr, align 8, !dbg !3529
  store double %0, double* %f, align 8, !dbg !3528
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3530
  %1 = load i64, i64* %i, align 8, !dbg !3530
  ret i64 %1, !dbg !3531
}

; Function Attrs: noinline nounwind
define internal double @fromRep.52(i64 noundef %x) #0 !dbg !3532 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon.0, align 8
  store i64 %x, i64* %x.addr, align 8
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3533
  %0 = load i64, i64* %x.addr, align 8, !dbg !3534
  store i64 %0, i64* %i, align 8, !dbg !3533
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3535
  %1 = load double, double* %f, align 8, !dbg !3535
  ret double %1, !dbg !3536
}

; Function Attrs: noinline nounwind
define dso_local float @__subsf3(float noundef %a, float noundef %b) #0 !dbg !3537 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3538
  %1 = load float, float* %b.addr, align 4, !dbg !3539
  %call = call i32 @toRep.53(float noundef %1) #4, !dbg !3540
  %xor = xor i32 %call, -2147483648, !dbg !3541
  %call1 = call float @fromRep.54(i32 noundef %xor) #4, !dbg !3542
  %call2 = call float @__addsf3(float noundef %0, float noundef %call1) #4, !dbg !3543
  ret float %call2, !dbg !3544
}

; Function Attrs: noinline nounwind
define internal i32 @toRep.53(float noundef %x) #0 !dbg !3545 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3546
  %0 = load float, float* %x.addr, align 4, !dbg !3547
  store float %0, float* %f, align 4, !dbg !3546
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3548
  %1 = load i32, i32* %i, align 4, !dbg !3548
  ret i32 %1, !dbg !3549
}

; Function Attrs: noinline nounwind
define internal float @fromRep.54(i32 noundef %x) #0 !dbg !3550 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3551
  %0 = load i32, i32* %x.addr, align 4, !dbg !3552
  store i32 %0, i32* %i, align 4, !dbg !3551
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3553
  %1 = load float, float* %f, align 4, !dbg !3553
  ret float %1, !dbg !3554
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @__truncdfhf2(double noundef %a) #0 !dbg !3555 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3556
  %call = call zeroext i16 @__truncXfYf2__(double noundef %0) #4, !dbg !3557
  ret i16 %call, !dbg !3558
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @__truncXfYf2__(double noundef %a) #0 !dbg !3559 {
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
  store i32 64, i32* %srcBits, align 4, !dbg !3561
  store i32 11, i32* %srcExpBits, align 4, !dbg !3562
  store i32 2047, i32* %srcInfExp, align 4, !dbg !3563
  store i32 1023, i32* %srcExpBias, align 4, !dbg !3564
  store i64 4503599627370496, i64* %srcMinNormal, align 8, !dbg !3565
  store i64 4503599627370495, i64* %srcSignificandMask, align 8, !dbg !3566
  store i64 9218868437227405312, i64* %srcInfinity, align 8, !dbg !3567
  store i64 -9223372036854775808, i64* %srcSignMask, align 8, !dbg !3568
  store i64 9223372036854775807, i64* %srcAbsMask, align 8, !dbg !3569
  store i64 4398046511103, i64* %roundMask, align 8, !dbg !3570
  store i64 2199023255552, i64* %halfway, align 8, !dbg !3571
  store i64 2251799813685248, i64* %srcQNaN, align 8, !dbg !3572
  store i64 2251799813685247, i64* %srcNaNCode, align 8, !dbg !3573
  store i32 16, i32* %dstBits, align 4, !dbg !3574
  store i32 5, i32* %dstExpBits, align 4, !dbg !3575
  store i32 31, i32* %dstInfExp, align 4, !dbg !3576
  store i32 15, i32* %dstExpBias, align 4, !dbg !3577
  store i32 1009, i32* %underflowExponent, align 4, !dbg !3578
  store i32 1039, i32* %overflowExponent, align 4, !dbg !3579
  store i64 4544132024016830464, i64* %underflow, align 8, !dbg !3580
  store i64 4679240012837945344, i64* %overflow, align 8, !dbg !3581
  store i16 512, i16* %dstQNaN, align 2, !dbg !3582
  store i16 511, i16* %dstNaNCode, align 2, !dbg !3583
  %0 = load double, double* %a.addr, align 8, !dbg !3584
  %call = call i64 @srcToRep.55(double noundef %0) #4, !dbg !3585
  store i64 %call, i64* %aRep, align 8, !dbg !3586
  %1 = load i64, i64* %aRep, align 8, !dbg !3587
  %and = and i64 %1, 9223372036854775807, !dbg !3588
  store i64 %and, i64* %aAbs, align 8, !dbg !3589
  %2 = load i64, i64* %aRep, align 8, !dbg !3590
  %and1 = and i64 %2, -9223372036854775808, !dbg !3591
  store i64 %and1, i64* %sign, align 8, !dbg !3592
  %3 = load i64, i64* %aAbs, align 8, !dbg !3593
  %sub = sub i64 %3, 4544132024016830464, !dbg !3594
  %4 = load i64, i64* %aAbs, align 8, !dbg !3595
  %sub2 = sub i64 %4, 4679240012837945344, !dbg !3596
  %cmp = icmp ult i64 %sub, %sub2, !dbg !3597
  br i1 %cmp, label %if.then, label %if.else18, !dbg !3593

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %aAbs, align 8, !dbg !3598
  %shr = lshr i64 %5, 42, !dbg !3599
  %conv = trunc i64 %shr to i16, !dbg !3598
  store i16 %conv, i16* %absResult, align 2, !dbg !3600
  %6 = load i16, i16* %absResult, align 2, !dbg !3601
  %conv3 = zext i16 %6 to i32, !dbg !3601
  %sub4 = sub nsw i32 %conv3, 1032192, !dbg !3601
  %conv5 = trunc i32 %sub4 to i16, !dbg !3601
  store i16 %conv5, i16* %absResult, align 2, !dbg !3601
  %7 = load i64, i64* %aAbs, align 8, !dbg !3602
  %and6 = and i64 %7, 4398046511103, !dbg !3603
  store i64 %and6, i64* %roundBits, align 8, !dbg !3604
  %8 = load i64, i64* %roundBits, align 8, !dbg !3605
  %cmp7 = icmp ugt i64 %8, 2199023255552, !dbg !3606
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !3605

if.then9:                                         ; preds = %if.then
  %9 = load i16, i16* %absResult, align 2, !dbg !3607
  %inc = add i16 %9, 1, !dbg !3607
  store i16 %inc, i16* %absResult, align 2, !dbg !3607
  br label %if.end17, !dbg !3608

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %roundBits, align 8, !dbg !3609
  %cmp10 = icmp eq i64 %10, 2199023255552, !dbg !3610
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !3609

if.then12:                                        ; preds = %if.else
  %11 = load i16, i16* %absResult, align 2, !dbg !3611
  %conv13 = zext i16 %11 to i32, !dbg !3611
  %and14 = and i32 %conv13, 1, !dbg !3612
  %12 = load i16, i16* %absResult, align 2, !dbg !3613
  %conv15 = zext i16 %12 to i32, !dbg !3613
  %add = add nsw i32 %conv15, %and14, !dbg !3613
  %conv16 = trunc i32 %add to i16, !dbg !3613
  store i16 %conv16, i16* %absResult, align 2, !dbg !3613
  br label %if.end, !dbg !3614

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end73, !dbg !3615

if.else18:                                        ; preds = %entry
  %13 = load i64, i64* %aAbs, align 8, !dbg !3616
  %cmp19 = icmp ugt i64 %13, 9218868437227405312, !dbg !3617
  br i1 %cmp19, label %if.then21, label %if.else30, !dbg !3616

if.then21:                                        ; preds = %if.else18
  store i16 31744, i16* %absResult, align 2, !dbg !3618
  %14 = load i16, i16* %absResult, align 2, !dbg !3619
  %conv22 = zext i16 %14 to i32, !dbg !3619
  %or = or i32 %conv22, 512, !dbg !3619
  %conv23 = trunc i32 %or to i16, !dbg !3619
  store i16 %conv23, i16* %absResult, align 2, !dbg !3619
  %15 = load i64, i64* %aAbs, align 8, !dbg !3620
  %and24 = and i64 %15, 2251799813685247, !dbg !3621
  %shr25 = lshr i64 %and24, 42, !dbg !3622
  %and26 = and i64 %shr25, 511, !dbg !3623
  %16 = load i16, i16* %absResult, align 2, !dbg !3624
  %conv27 = zext i16 %16 to i64, !dbg !3624
  %or28 = or i64 %conv27, %and26, !dbg !3624
  %conv29 = trunc i64 %or28 to i16, !dbg !3624
  store i16 %conv29, i16* %absResult, align 2, !dbg !3624
  br label %if.end72, !dbg !3625

if.else30:                                        ; preds = %if.else18
  %17 = load i64, i64* %aAbs, align 8, !dbg !3626
  %cmp31 = icmp uge i64 %17, 4679240012837945344, !dbg !3627
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !3626

if.then33:                                        ; preds = %if.else30
  store i16 31744, i16* %absResult, align 2, !dbg !3628
  br label %if.end71, !dbg !3629

if.else34:                                        ; preds = %if.else30
  %18 = load i64, i64* %aAbs, align 8, !dbg !3630
  %shr35 = lshr i64 %18, 52, !dbg !3631
  %conv36 = trunc i64 %shr35 to i32, !dbg !3630
  store i32 %conv36, i32* %aExp, align 4, !dbg !3632
  %19 = load i32, i32* %aExp, align 4, !dbg !3633
  %sub37 = sub nsw i32 1008, %19, !dbg !3634
  %add38 = add nsw i32 %sub37, 1, !dbg !3635
  store i32 %add38, i32* %shift, align 4, !dbg !3636
  %20 = load i64, i64* %aRep, align 8, !dbg !3637
  %and39 = and i64 %20, 4503599627370495, !dbg !3638
  %or40 = or i64 %and39, 4503599627370496, !dbg !3639
  store i64 %or40, i64* %significand, align 8, !dbg !3640
  %21 = load i32, i32* %shift, align 4, !dbg !3641
  %cmp41 = icmp sgt i32 %21, 52, !dbg !3642
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !3641

if.then43:                                        ; preds = %if.else34
  store i16 0, i16* %absResult, align 2, !dbg !3643
  br label %if.end70, !dbg !3644

if.else44:                                        ; preds = %if.else34
  %22 = load i64, i64* %significand, align 8, !dbg !3645
  %23 = load i32, i32* %shift, align 4, !dbg !3646
  %sub45 = sub nsw i32 64, %23, !dbg !3647
  %sh_prom = zext i32 %sub45 to i64, !dbg !3648
  %shl = shl i64 %22, %sh_prom, !dbg !3648
  %tobool = icmp ne i64 %shl, 0, !dbg !3645
  %frombool = zext i1 %tobool to i8, !dbg !3649
  store i8 %frombool, i8* %sticky, align 1, !dbg !3649
  %24 = load i64, i64* %significand, align 8, !dbg !3650
  %25 = load i32, i32* %shift, align 4, !dbg !3651
  %sh_prom46 = zext i32 %25 to i64, !dbg !3652
  %shr47 = lshr i64 %24, %sh_prom46, !dbg !3652
  %26 = load i8, i8* %sticky, align 1, !dbg !3653
  %tobool48 = trunc i8 %26 to i1, !dbg !3653
  %conv49 = zext i1 %tobool48 to i64, !dbg !3653
  %or50 = or i64 %shr47, %conv49, !dbg !3654
  store i64 %or50, i64* %denormalizedSignificand, align 8, !dbg !3655
  %27 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3656
  %shr51 = lshr i64 %27, 42, !dbg !3657
  %conv52 = trunc i64 %shr51 to i16, !dbg !3656
  store i16 %conv52, i16* %absResult, align 2, !dbg !3658
  %28 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3659
  %and54 = and i64 %28, 4398046511103, !dbg !3660
  store i64 %and54, i64* %roundBits53, align 8, !dbg !3661
  %29 = load i64, i64* %roundBits53, align 8, !dbg !3662
  %cmp55 = icmp ugt i64 %29, 2199023255552, !dbg !3663
  br i1 %cmp55, label %if.then57, label %if.else59, !dbg !3662

if.then57:                                        ; preds = %if.else44
  %30 = load i16, i16* %absResult, align 2, !dbg !3664
  %inc58 = add i16 %30, 1, !dbg !3664
  store i16 %inc58, i16* %absResult, align 2, !dbg !3664
  br label %if.end69, !dbg !3665

if.else59:                                        ; preds = %if.else44
  %31 = load i64, i64* %roundBits53, align 8, !dbg !3666
  %cmp60 = icmp eq i64 %31, 2199023255552, !dbg !3667
  br i1 %cmp60, label %if.then62, label %if.end68, !dbg !3666

if.then62:                                        ; preds = %if.else59
  %32 = load i16, i16* %absResult, align 2, !dbg !3668
  %conv63 = zext i16 %32 to i32, !dbg !3668
  %and64 = and i32 %conv63, 1, !dbg !3669
  %33 = load i16, i16* %absResult, align 2, !dbg !3670
  %conv65 = zext i16 %33 to i32, !dbg !3670
  %add66 = add nsw i32 %conv65, %and64, !dbg !3670
  %conv67 = trunc i32 %add66 to i16, !dbg !3670
  store i16 %conv67, i16* %absResult, align 2, !dbg !3670
  br label %if.end68, !dbg !3671

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
  %34 = load i16, i16* %absResult, align 2, !dbg !3672
  %conv74 = zext i16 %34 to i64, !dbg !3672
  %35 = load i64, i64* %sign, align 8, !dbg !3673
  %shr75 = lshr i64 %35, 48, !dbg !3674
  %or76 = or i64 %conv74, %shr75, !dbg !3675
  %conv77 = trunc i64 %or76 to i16, !dbg !3672
  store i16 %conv77, i16* %result, align 2, !dbg !3676
  %36 = load i16, i16* %result, align 2, !dbg !3677
  %call78 = call zeroext i16 @dstFromRep.56(i16 noundef zeroext %36) #4, !dbg !3678
  ret i16 %call78, !dbg !3679
}

; Function Attrs: noinline nounwind
define internal i64 @srcToRep.55(double noundef %x) #0 !dbg !3680 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3682
  %0 = load double, double* %x.addr, align 8, !dbg !3683
  store double %0, double* %f, align 8, !dbg !3682
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3684
  %1 = load i64, i64* %i, align 8, !dbg !3684
  ret i64 %1, !dbg !3685
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @dstFromRep.56(i16 noundef zeroext %x) #0 !dbg !3686 {
entry:
  %x.addr = alloca i16, align 2
  %rep = alloca %union.anon, align 2
  store i16 %x, i16* %x.addr, align 2
  %i = bitcast %union.anon* %rep to i16*, !dbg !3687
  %0 = load i16, i16* %x.addr, align 2, !dbg !3688
  store i16 %0, i16* %i, align 2, !dbg !3687
  %f = bitcast %union.anon* %rep to i16*, !dbg !3689
  %1 = load i16, i16* %f, align 2, !dbg !3689
  ret i16 %1, !dbg !3690
}

; Function Attrs: noinline nounwind
define dso_local float @__truncdfsf2(double noundef %a) #0 !dbg !3691 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8, !dbg !3692
  %call = call float @__truncXfYf2__.57(double noundef %0) #4, !dbg !3693
  ret float %call, !dbg !3694
}

; Function Attrs: noinline nounwind
define internal float @__truncXfYf2__.57(double noundef %a) #0 !dbg !3695 {
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
  store i32 64, i32* %srcBits, align 4, !dbg !3696
  store i32 11, i32* %srcExpBits, align 4, !dbg !3697
  store i32 2047, i32* %srcInfExp, align 4, !dbg !3698
  store i32 1023, i32* %srcExpBias, align 4, !dbg !3699
  store i64 4503599627370496, i64* %srcMinNormal, align 8, !dbg !3700
  store i64 4503599627370495, i64* %srcSignificandMask, align 8, !dbg !3701
  store i64 9218868437227405312, i64* %srcInfinity, align 8, !dbg !3702
  store i64 -9223372036854775808, i64* %srcSignMask, align 8, !dbg !3703
  store i64 9223372036854775807, i64* %srcAbsMask, align 8, !dbg !3704
  store i64 536870911, i64* %roundMask, align 8, !dbg !3705
  store i64 268435456, i64* %halfway, align 8, !dbg !3706
  store i64 2251799813685248, i64* %srcQNaN, align 8, !dbg !3707
  store i64 2251799813685247, i64* %srcNaNCode, align 8, !dbg !3708
  store i32 32, i32* %dstBits, align 4, !dbg !3709
  store i32 8, i32* %dstExpBits, align 4, !dbg !3710
  store i32 255, i32* %dstInfExp, align 4, !dbg !3711
  store i32 127, i32* %dstExpBias, align 4, !dbg !3712
  store i32 897, i32* %underflowExponent, align 4, !dbg !3713
  store i32 1151, i32* %overflowExponent, align 4, !dbg !3714
  store i64 4039728865751334912, i64* %underflow, align 8, !dbg !3715
  store i64 5183643171103440896, i64* %overflow, align 8, !dbg !3716
  store i32 4194304, i32* %dstQNaN, align 4, !dbg !3717
  store i32 4194303, i32* %dstNaNCode, align 4, !dbg !3718
  %0 = load double, double* %a.addr, align 8, !dbg !3719
  %call = call i64 @srcToRep.58(double noundef %0) #4, !dbg !3720
  store i64 %call, i64* %aRep, align 8, !dbg !3721
  %1 = load i64, i64* %aRep, align 8, !dbg !3722
  %and = and i64 %1, 9223372036854775807, !dbg !3723
  store i64 %and, i64* %aAbs, align 8, !dbg !3724
  %2 = load i64, i64* %aRep, align 8, !dbg !3725
  %and1 = and i64 %2, -9223372036854775808, !dbg !3726
  store i64 %and1, i64* %sign, align 8, !dbg !3727
  %3 = load i64, i64* %aAbs, align 8, !dbg !3728
  %sub = sub i64 %3, 4039728865751334912, !dbg !3729
  %4 = load i64, i64* %aAbs, align 8, !dbg !3730
  %sub2 = sub i64 %4, 5183643171103440896, !dbg !3731
  %cmp = icmp ult i64 %sub, %sub2, !dbg !3732
  br i1 %cmp, label %if.then, label %if.else13, !dbg !3728

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %aAbs, align 8, !dbg !3733
  %shr = lshr i64 %5, 29, !dbg !3734
  %conv = trunc i64 %shr to i32, !dbg !3733
  store i32 %conv, i32* %absResult, align 4, !dbg !3735
  %6 = load i32, i32* %absResult, align 4, !dbg !3736
  %sub3 = sub i32 %6, -1073741824, !dbg !3736
  store i32 %sub3, i32* %absResult, align 4, !dbg !3736
  %7 = load i64, i64* %aAbs, align 8, !dbg !3737
  %and4 = and i64 %7, 536870911, !dbg !3738
  store i64 %and4, i64* %roundBits, align 8, !dbg !3739
  %8 = load i64, i64* %roundBits, align 8, !dbg !3740
  %cmp5 = icmp ugt i64 %8, 268435456, !dbg !3741
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !3740

if.then7:                                         ; preds = %if.then
  %9 = load i32, i32* %absResult, align 4, !dbg !3742
  %inc = add i32 %9, 1, !dbg !3742
  store i32 %inc, i32* %absResult, align 4, !dbg !3742
  br label %if.end12, !dbg !3743

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %roundBits, align 8, !dbg !3744
  %cmp8 = icmp eq i64 %10, 268435456, !dbg !3745
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !3744

if.then10:                                        ; preds = %if.else
  %11 = load i32, i32* %absResult, align 4, !dbg !3746
  %and11 = and i32 %11, 1, !dbg !3747
  %12 = load i32, i32* %absResult, align 4, !dbg !3748
  %add = add i32 %12, %and11, !dbg !3748
  store i32 %add, i32* %absResult, align 4, !dbg !3748
  br label %if.end, !dbg !3749

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7
  br label %if.end63, !dbg !3750

if.else13:                                        ; preds = %entry
  %13 = load i64, i64* %aAbs, align 8, !dbg !3751
  %cmp14 = icmp ugt i64 %13, 9218868437227405312, !dbg !3752
  br i1 %cmp14, label %if.then16, label %if.else23, !dbg !3751

if.then16:                                        ; preds = %if.else13
  store i32 2139095040, i32* %absResult, align 4, !dbg !3753
  %14 = load i32, i32* %absResult, align 4, !dbg !3754
  %or = or i32 %14, 4194304, !dbg !3754
  store i32 %or, i32* %absResult, align 4, !dbg !3754
  %15 = load i64, i64* %aAbs, align 8, !dbg !3755
  %and17 = and i64 %15, 2251799813685247, !dbg !3756
  %shr18 = lshr i64 %and17, 29, !dbg !3757
  %and19 = and i64 %shr18, 4194303, !dbg !3758
  %16 = load i32, i32* %absResult, align 4, !dbg !3759
  %conv20 = zext i32 %16 to i64, !dbg !3759
  %or21 = or i64 %conv20, %and19, !dbg !3759
  %conv22 = trunc i64 %or21 to i32, !dbg !3759
  store i32 %conv22, i32* %absResult, align 4, !dbg !3759
  br label %if.end62, !dbg !3760

if.else23:                                        ; preds = %if.else13
  %17 = load i64, i64* %aAbs, align 8, !dbg !3761
  %cmp24 = icmp uge i64 %17, 5183643171103440896, !dbg !3762
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !3761

if.then26:                                        ; preds = %if.else23
  store i32 2139095040, i32* %absResult, align 4, !dbg !3763
  br label %if.end61, !dbg !3764

if.else27:                                        ; preds = %if.else23
  %18 = load i64, i64* %aAbs, align 8, !dbg !3765
  %shr28 = lshr i64 %18, 52, !dbg !3766
  %conv29 = trunc i64 %shr28 to i32, !dbg !3765
  store i32 %conv29, i32* %aExp, align 4, !dbg !3767
  %19 = load i32, i32* %aExp, align 4, !dbg !3768
  %sub30 = sub nsw i32 896, %19, !dbg !3769
  %add31 = add nsw i32 %sub30, 1, !dbg !3770
  store i32 %add31, i32* %shift, align 4, !dbg !3771
  %20 = load i64, i64* %aRep, align 8, !dbg !3772
  %and32 = and i64 %20, 4503599627370495, !dbg !3773
  %or33 = or i64 %and32, 4503599627370496, !dbg !3774
  store i64 %or33, i64* %significand, align 8, !dbg !3775
  %21 = load i32, i32* %shift, align 4, !dbg !3776
  %cmp34 = icmp sgt i32 %21, 52, !dbg !3777
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !3776

if.then36:                                        ; preds = %if.else27
  store i32 0, i32* %absResult, align 4, !dbg !3778
  br label %if.end60, !dbg !3779

if.else37:                                        ; preds = %if.else27
  %22 = load i64, i64* %significand, align 8, !dbg !3780
  %23 = load i32, i32* %shift, align 4, !dbg !3781
  %sub38 = sub nsw i32 64, %23, !dbg !3782
  %sh_prom = zext i32 %sub38 to i64, !dbg !3783
  %shl = shl i64 %22, %sh_prom, !dbg !3783
  %tobool = icmp ne i64 %shl, 0, !dbg !3780
  %frombool = zext i1 %tobool to i8, !dbg !3784
  store i8 %frombool, i8* %sticky, align 1, !dbg !3784
  %24 = load i64, i64* %significand, align 8, !dbg !3785
  %25 = load i32, i32* %shift, align 4, !dbg !3786
  %sh_prom39 = zext i32 %25 to i64, !dbg !3787
  %shr40 = lshr i64 %24, %sh_prom39, !dbg !3787
  %26 = load i8, i8* %sticky, align 1, !dbg !3788
  %tobool41 = trunc i8 %26 to i1, !dbg !3788
  %conv42 = zext i1 %tobool41 to i64, !dbg !3788
  %or43 = or i64 %shr40, %conv42, !dbg !3789
  store i64 %or43, i64* %denormalizedSignificand, align 8, !dbg !3790
  %27 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3791
  %shr44 = lshr i64 %27, 29, !dbg !3792
  %conv45 = trunc i64 %shr44 to i32, !dbg !3791
  store i32 %conv45, i32* %absResult, align 4, !dbg !3793
  %28 = load i64, i64* %denormalizedSignificand, align 8, !dbg !3794
  %and47 = and i64 %28, 536870911, !dbg !3795
  store i64 %and47, i64* %roundBits46, align 8, !dbg !3796
  %29 = load i64, i64* %roundBits46, align 8, !dbg !3797
  %cmp48 = icmp ugt i64 %29, 268435456, !dbg !3798
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !3797

if.then50:                                        ; preds = %if.else37
  %30 = load i32, i32* %absResult, align 4, !dbg !3799
  %inc51 = add i32 %30, 1, !dbg !3799
  store i32 %inc51, i32* %absResult, align 4, !dbg !3799
  br label %if.end59, !dbg !3800

if.else52:                                        ; preds = %if.else37
  %31 = load i64, i64* %roundBits46, align 8, !dbg !3801
  %cmp53 = icmp eq i64 %31, 268435456, !dbg !3802
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !3801

if.then55:                                        ; preds = %if.else52
  %32 = load i32, i32* %absResult, align 4, !dbg !3803
  %and56 = and i32 %32, 1, !dbg !3804
  %33 = load i32, i32* %absResult, align 4, !dbg !3805
  %add57 = add i32 %33, %and56, !dbg !3805
  store i32 %add57, i32* %absResult, align 4, !dbg !3805
  br label %if.end58, !dbg !3806

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
  %34 = load i32, i32* %absResult, align 4, !dbg !3807
  %conv64 = zext i32 %34 to i64, !dbg !3807
  %35 = load i64, i64* %sign, align 8, !dbg !3808
  %shr65 = lshr i64 %35, 32, !dbg !3809
  %or66 = or i64 %conv64, %shr65, !dbg !3810
  %conv67 = trunc i64 %or66 to i32, !dbg !3807
  store i32 %conv67, i32* %result, align 4, !dbg !3811
  %36 = load i32, i32* %result, align 4, !dbg !3812
  %call68 = call float @dstFromRep.59(i32 noundef %36) #4, !dbg !3813
  ret float %call68, !dbg !3814
}

; Function Attrs: noinline nounwind
define internal i64 @srcToRep.58(double noundef %x) #0 !dbg !3815 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, double* %x.addr, align 8
  %f = bitcast %union.anon.0* %rep to double*, !dbg !3816
  %0 = load double, double* %x.addr, align 8, !dbg !3817
  store double %0, double* %f, align 8, !dbg !3816
  %i = bitcast %union.anon.0* %rep to i64*, !dbg !3818
  %1 = load i64, i64* %i, align 8, !dbg !3818
  ret i64 %1, !dbg !3819
}

; Function Attrs: noinline nounwind
define internal float @dstFromRep.59(i32 noundef %x) #0 !dbg !3820 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0.0, align 4
  store i32 %x, i32* %x.addr, align 4
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3821
  %0 = load i32, i32* %x.addr, align 4, !dbg !3822
  store i32 %0, i32* %i, align 4, !dbg !3821
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3823
  %1 = load float, float* %f, align 4, !dbg !3823
  ret float %1, !dbg !3824
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @__truncsfhf2(float noundef %a) #0 !dbg !3825 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3826
  %call = call zeroext i16 @__truncXfYf2__.60(float noundef %0) #4, !dbg !3827
  ret i16 %call, !dbg !3828
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @__truncXfYf2__.60(float noundef %a) #0 !dbg !3829 {
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
  store i32 32, i32* %srcBits, align 4, !dbg !3830
  store i32 8, i32* %srcExpBits, align 4, !dbg !3831
  store i32 255, i32* %srcInfExp, align 4, !dbg !3832
  store i32 127, i32* %srcExpBias, align 4, !dbg !3833
  store i32 8388608, i32* %srcMinNormal, align 4, !dbg !3834
  store i32 8388607, i32* %srcSignificandMask, align 4, !dbg !3835
  store i32 2139095040, i32* %srcInfinity, align 4, !dbg !3836
  store i32 -2147483648, i32* %srcSignMask, align 4, !dbg !3837
  store i32 2147483647, i32* %srcAbsMask, align 4, !dbg !3838
  store i32 8191, i32* %roundMask, align 4, !dbg !3839
  store i32 4096, i32* %halfway, align 4, !dbg !3840
  store i32 4194304, i32* %srcQNaN, align 4, !dbg !3841
  store i32 4194303, i32* %srcNaNCode, align 4, !dbg !3842
  store i32 16, i32* %dstBits, align 4, !dbg !3843
  store i32 5, i32* %dstExpBits, align 4, !dbg !3844
  store i32 31, i32* %dstInfExp, align 4, !dbg !3845
  store i32 15, i32* %dstExpBias, align 4, !dbg !3846
  store i32 113, i32* %underflowExponent, align 4, !dbg !3847
  store i32 143, i32* %overflowExponent, align 4, !dbg !3848
  store i32 947912704, i32* %underflow, align 4, !dbg !3849
  store i32 1199570944, i32* %overflow, align 4, !dbg !3850
  store i16 512, i16* %dstQNaN, align 2, !dbg !3851
  store i16 511, i16* %dstNaNCode, align 2, !dbg !3852
  %0 = load float, float* %a.addr, align 4, !dbg !3853
  %call = call i32 @srcToRep.61(float noundef %0) #4, !dbg !3854
  store i32 %call, i32* %aRep, align 4, !dbg !3855
  %1 = load i32, i32* %aRep, align 4, !dbg !3856
  %and = and i32 %1, 2147483647, !dbg !3857
  store i32 %and, i32* %aAbs, align 4, !dbg !3858
  %2 = load i32, i32* %aRep, align 4, !dbg !3859
  %and1 = and i32 %2, -2147483648, !dbg !3860
  store i32 %and1, i32* %sign, align 4, !dbg !3861
  %3 = load i32, i32* %aAbs, align 4, !dbg !3862
  %sub = sub i32 %3, 947912704, !dbg !3863
  %4 = load i32, i32* %aAbs, align 4, !dbg !3864
  %sub2 = sub i32 %4, 1199570944, !dbg !3865
  %cmp = icmp ult i32 %sub, %sub2, !dbg !3866
  br i1 %cmp, label %if.then, label %if.else18, !dbg !3862

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %aAbs, align 4, !dbg !3867
  %shr = lshr i32 %5, 13, !dbg !3868
  %conv = trunc i32 %shr to i16, !dbg !3867
  store i16 %conv, i16* %absResult, align 2, !dbg !3869
  %6 = load i16, i16* %absResult, align 2, !dbg !3870
  %conv3 = zext i16 %6 to i32, !dbg !3870
  %sub4 = sub nsw i32 %conv3, 114688, !dbg !3870
  %conv5 = trunc i32 %sub4 to i16, !dbg !3870
  store i16 %conv5, i16* %absResult, align 2, !dbg !3870
  %7 = load i32, i32* %aAbs, align 4, !dbg !3871
  %and6 = and i32 %7, 8191, !dbg !3872
  store i32 %and6, i32* %roundBits, align 4, !dbg !3873
  %8 = load i32, i32* %roundBits, align 4, !dbg !3874
  %cmp7 = icmp ugt i32 %8, 4096, !dbg !3875
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !3874

if.then9:                                         ; preds = %if.then
  %9 = load i16, i16* %absResult, align 2, !dbg !3876
  %inc = add i16 %9, 1, !dbg !3876
  store i16 %inc, i16* %absResult, align 2, !dbg !3876
  br label %if.end17, !dbg !3877

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %roundBits, align 4, !dbg !3878
  %cmp10 = icmp eq i32 %10, 4096, !dbg !3879
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !3878

if.then12:                                        ; preds = %if.else
  %11 = load i16, i16* %absResult, align 2, !dbg !3880
  %conv13 = zext i16 %11 to i32, !dbg !3880
  %and14 = and i32 %conv13, 1, !dbg !3881
  %12 = load i16, i16* %absResult, align 2, !dbg !3882
  %conv15 = zext i16 %12 to i32, !dbg !3882
  %add = add nsw i32 %conv15, %and14, !dbg !3882
  %conv16 = trunc i32 %add to i16, !dbg !3882
  store i16 %conv16, i16* %absResult, align 2, !dbg !3882
  br label %if.end, !dbg !3883

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end71, !dbg !3884

if.else18:                                        ; preds = %entry
  %13 = load i32, i32* %aAbs, align 4, !dbg !3885
  %cmp19 = icmp ugt i32 %13, 2139095040, !dbg !3886
  br i1 %cmp19, label %if.then21, label %if.else30, !dbg !3885

if.then21:                                        ; preds = %if.else18
  store i16 31744, i16* %absResult, align 2, !dbg !3887
  %14 = load i16, i16* %absResult, align 2, !dbg !3888
  %conv22 = zext i16 %14 to i32, !dbg !3888
  %or = or i32 %conv22, 512, !dbg !3888
  %conv23 = trunc i32 %or to i16, !dbg !3888
  store i16 %conv23, i16* %absResult, align 2, !dbg !3888
  %15 = load i32, i32* %aAbs, align 4, !dbg !3889
  %and24 = and i32 %15, 4194303, !dbg !3890
  %shr25 = lshr i32 %and24, 13, !dbg !3891
  %and26 = and i32 %shr25, 511, !dbg !3892
  %16 = load i16, i16* %absResult, align 2, !dbg !3893
  %conv27 = zext i16 %16 to i32, !dbg !3893
  %or28 = or i32 %conv27, %and26, !dbg !3893
  %conv29 = trunc i32 %or28 to i16, !dbg !3893
  store i16 %conv29, i16* %absResult, align 2, !dbg !3893
  br label %if.end70, !dbg !3894

if.else30:                                        ; preds = %if.else18
  %17 = load i32, i32* %aAbs, align 4, !dbg !3895
  %cmp31 = icmp uge i32 %17, 1199570944, !dbg !3896
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !3895

if.then33:                                        ; preds = %if.else30
  store i16 31744, i16* %absResult, align 2, !dbg !3897
  br label %if.end69, !dbg !3898

if.else34:                                        ; preds = %if.else30
  %18 = load i32, i32* %aAbs, align 4, !dbg !3899
  %shr35 = lshr i32 %18, 23, !dbg !3900
  store i32 %shr35, i32* %aExp, align 4, !dbg !3901
  %19 = load i32, i32* %aExp, align 4, !dbg !3902
  %sub36 = sub nsw i32 112, %19, !dbg !3903
  %add37 = add nsw i32 %sub36, 1, !dbg !3904
  store i32 %add37, i32* %shift, align 4, !dbg !3905
  %20 = load i32, i32* %aRep, align 4, !dbg !3906
  %and38 = and i32 %20, 8388607, !dbg !3907
  %or39 = or i32 %and38, 8388608, !dbg !3908
  store i32 %or39, i32* %significand, align 4, !dbg !3909
  %21 = load i32, i32* %shift, align 4, !dbg !3910
  %cmp40 = icmp sgt i32 %21, 23, !dbg !3911
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !3910

if.then42:                                        ; preds = %if.else34
  store i16 0, i16* %absResult, align 2, !dbg !3912
  br label %if.end68, !dbg !3913

if.else43:                                        ; preds = %if.else34
  %22 = load i32, i32* %significand, align 4, !dbg !3914
  %23 = load i32, i32* %shift, align 4, !dbg !3915
  %sub44 = sub nsw i32 32, %23, !dbg !3916
  %shl = shl i32 %22, %sub44, !dbg !3917
  %tobool = icmp ne i32 %shl, 0, !dbg !3914
  %frombool = zext i1 %tobool to i8, !dbg !3918
  store i8 %frombool, i8* %sticky, align 1, !dbg !3918
  %24 = load i32, i32* %significand, align 4, !dbg !3919
  %25 = load i32, i32* %shift, align 4, !dbg !3920
  %shr45 = lshr i32 %24, %25, !dbg !3921
  %26 = load i8, i8* %sticky, align 1, !dbg !3922
  %tobool46 = trunc i8 %26 to i1, !dbg !3922
  %conv47 = zext i1 %tobool46 to i32, !dbg !3922
  %or48 = or i32 %shr45, %conv47, !dbg !3923
  store i32 %or48, i32* %denormalizedSignificand, align 4, !dbg !3924
  %27 = load i32, i32* %denormalizedSignificand, align 4, !dbg !3925
  %shr49 = lshr i32 %27, 13, !dbg !3926
  %conv50 = trunc i32 %shr49 to i16, !dbg !3925
  store i16 %conv50, i16* %absResult, align 2, !dbg !3927
  %28 = load i32, i32* %denormalizedSignificand, align 4, !dbg !3928
  %and52 = and i32 %28, 8191, !dbg !3929
  store i32 %and52, i32* %roundBits51, align 4, !dbg !3930
  %29 = load i32, i32* %roundBits51, align 4, !dbg !3931
  %cmp53 = icmp ugt i32 %29, 4096, !dbg !3932
  br i1 %cmp53, label %if.then55, label %if.else57, !dbg !3931

if.then55:                                        ; preds = %if.else43
  %30 = load i16, i16* %absResult, align 2, !dbg !3933
  %inc56 = add i16 %30, 1, !dbg !3933
  store i16 %inc56, i16* %absResult, align 2, !dbg !3933
  br label %if.end67, !dbg !3934

if.else57:                                        ; preds = %if.else43
  %31 = load i32, i32* %roundBits51, align 4, !dbg !3935
  %cmp58 = icmp eq i32 %31, 4096, !dbg !3936
  br i1 %cmp58, label %if.then60, label %if.end66, !dbg !3935

if.then60:                                        ; preds = %if.else57
  %32 = load i16, i16* %absResult, align 2, !dbg !3937
  %conv61 = zext i16 %32 to i32, !dbg !3937
  %and62 = and i32 %conv61, 1, !dbg !3938
  %33 = load i16, i16* %absResult, align 2, !dbg !3939
  %conv63 = zext i16 %33 to i32, !dbg !3939
  %add64 = add nsw i32 %conv63, %and62, !dbg !3939
  %conv65 = trunc i32 %add64 to i16, !dbg !3939
  store i16 %conv65, i16* %absResult, align 2, !dbg !3939
  br label %if.end66, !dbg !3940

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
  %34 = load i16, i16* %absResult, align 2, !dbg !3941
  %conv72 = zext i16 %34 to i32, !dbg !3941
  %35 = load i32, i32* %sign, align 4, !dbg !3942
  %shr73 = lshr i32 %35, 16, !dbg !3943
  %or74 = or i32 %conv72, %shr73, !dbg !3944
  %conv75 = trunc i32 %or74 to i16, !dbg !3941
  store i16 %conv75, i16* %result, align 2, !dbg !3945
  %36 = load i16, i16* %result, align 2, !dbg !3946
  %call76 = call zeroext i16 @dstFromRep.62(i16 noundef zeroext %36) #4, !dbg !3947
  ret i16 %call76, !dbg !3948
}

; Function Attrs: noinline nounwind
define internal i32 @srcToRep.61(float noundef %x) #0 !dbg !3949 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon.0.0, align 4
  store float %x, float* %x.addr, align 4
  %f = bitcast %union.anon.0.0* %rep to float*, !dbg !3950
  %0 = load float, float* %x.addr, align 4, !dbg !3951
  store float %0, float* %f, align 4, !dbg !3950
  %i = bitcast %union.anon.0.0* %rep to i32*, !dbg !3952
  %1 = load i32, i32* %i, align 4, !dbg !3952
  ret i32 %1, !dbg !3953
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @dstFromRep.62(i16 noundef zeroext %x) #0 !dbg !3954 {
entry:
  %x.addr = alloca i16, align 2
  %rep = alloca %union.anon, align 2
  store i16 %x, i16* %x.addr, align 2
  %i = bitcast %union.anon* %rep to i16*, !dbg !3955
  %0 = load i16, i16* %x.addr, align 2, !dbg !3956
  store i16 %0, i16* %i, align 2, !dbg !3955
  %f = bitcast %union.anon* %rep to i16*, !dbg !3957
  %1 = load i16, i16* %f, align 2, !dbg !3957
  ret i16 %1, !dbg !3958
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @__gnu_f2h_ieee(float noundef %a) #0 !dbg !3959 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4, !dbg !3960
  %call = call zeroext i16 @__truncsfhf2(float noundef %0) #4, !dbg !3961
  ret i16 %call, !dbg !3962
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128}
!llvm.ident = !{!130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130, !130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../adddf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e0251d85d8b9298f4b7d7bde89c2da14")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../addsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "374fec2ce14c515fea2743927d345a52")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "../comparedf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "fbd12646cae0afa4f38a456b06356d8d")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "../comparesf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "0ebe6266ac9f076b05c337420b1e2170")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../divdf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "261cc11321bc9c6e7119a2df54ff0ff8")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "../divsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7d3063a03b9dc025d09812aef44ed398")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../extendhfsf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "a5a10e040b7849d52a32e736bcb3c397")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../extendsfdf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "4e1f23973b36a8543e6f218ddda73a81")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../fixdfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "47e708860fdf5a8df241e5320d28d108")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../fixdfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "ab025b47eaba5eab57a20c4f7d364472")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../fixdfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e8cfbed86a48d8d385e0ba3358daa4fe")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../fixsfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "cc8fccc6df63f71c2ce1c1c99dec5510")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../fixsfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "42c849690580d6639a7796e4fd09df10")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../fixsfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "f9344e0ca2da9525f9b706daff202bea")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../fixunsdfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "bb698dc308993ca2bb4ab90619c828c7")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../fixunsdfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "029e294e42ede4179ebf70d7b8cdcbce")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../fixunsdfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "caef2e593a4fabc6c1231bd68a82d55c")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../fixunssfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "6b0da526a1e4fbc8a0b0f9991405e5aa")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../fixunssfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "48b21aad953f9cc2c9112be544031b21")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../fixunssfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "2059b01af49f2fb00e9ef512708a78bb")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../fixunsxfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "c5b8c82f82ec230f86bab25cdd51241f")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../fixunsxfsi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "3a4bc679da33f33545955f1d5f9295a3")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../fixunsxfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "c81feece3aea6f34d7045357bee719f0")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../fixxfdi.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "1d3e33c056b8d764ec90c9c4bccde967")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../fixxfti.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "538dbc97aba965b3c18c60b96c1718fd")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../floatdidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "589757f5bf5948f8d680d68ea09b8b28")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../floatdisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "d490cd79b8654d77c2b677080ad7dccc")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../floatdixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "8b1a0058f785628324b5f9e560c1f2f7")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../floatsidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "74d68f8d7666958b02fc991a96f5d18b")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../floatsisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e8269d7393de437d1985e43b852d1b4c")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../floattidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "02001cec56eeadee7fe6f3cc8807cedb")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../floattisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "f78b4a675b5ede3cf4565e9926770440")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../floattixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "363950fc75fc38684746712d53c0b081")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../floatundidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "332ecea9fc06121bb9792813051cd121")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../floatundisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7ab0c7414b7105a5334add4b33b95292")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../floatundixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "55601cdc8ffb7b6458d917ea4861681f")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../floatunsidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7abcd27bee360e384bfcbe8b4e29e4b5")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../floatunsisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "25377c9e1088361533bcc87d26a579aa")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../floatuntidf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "daaa5863596bd264231583dd4e935351")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../floatuntisf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "3c8eb24382036e5bf69269c87c968665")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../floatuntixf.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "af14ea06c35eff6221145fef129eb14b")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "51792efca379487643647da23a7fcecc")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../muldf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e1094ad6f1ac68776663659720a263c1")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../muldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "df26ca90afd732d72d44a32b26ef9ff6")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../mulodi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "548e26a16754ea0a5e8b99fd257e0228")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../mulosi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "5df5fe6423348eb23592c3af73d99ba1")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../muloti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "705b62b6400093f8c368f9a43e940021")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../mulsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "2f401fa14324cdf3806a6e0a75176873")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../multi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "e3a762d0cee613ddcbe257a7e3f59bd6")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../negdf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "856367fb8d9ed2d14100b66d78c0cb6a")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../negdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "338e7f5aee6d443286451453d2d8b2ee")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../negsf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "9ce93f6a4d6a5fd6bd4a2c8b1cec4f7d")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../negti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "28b6572c640233aee02ab6cc80df25ad")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../negvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "814179687c8ab9c02d6c16d74f3c8cc7")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../negvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "25551377cb1882de433decba0bed328a")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../negvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "a07c33be4dee71901c4ea0f33edfbfe4")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../powidf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "b63b11bd01652aa60af60c7ccb3ffe0d")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../powisf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "9b2ba22fb17e1bd7a8c91a47073af5eb")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../powitf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "a5822c6b584193a485d39742a1bd03ad")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../powixf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "053c772639acd49f8c4cdf3eb9bb7bee")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../subdf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "b385478a5e4c00397ac82ee5b0b51f57")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../subsf3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "c3a6b2693ea97bea2331c4555d4efe2d")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../truncdfhf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "d933e46dfe952b3d2808f5620f0aeefa")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../truncdfsf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "70a3f09e6c98a39d709dbf03acedc251")
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "../truncsfhf2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "770788bf3f7b6a834415d81367cf4d39")
!130 = !{!"clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)"}
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{i32 1, !"target-abi", !"ilp32"}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{i32 1, !"SmallDataLimit", i32 8}
!137 = distinct !DISubprogram(name: "__adddf3", scope: !1, file: !1, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !139)
!138 = !DISubroutineType(types: !139)
!139 = !{}
!140 = !DILocation(line: 21, column: 23, scope: !137)
!141 = !DILocation(line: 21, column: 26, scope: !137)
!142 = !DILocation(line: 21, column: 12, scope: !137)
!143 = !DILocation(line: 21, column: 5, scope: !137)
!144 = distinct !DISubprogram(name: "__addXf3__", scope: !145, file: !145, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !139)
!145 = !DIFile(filename: "../fp_add_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "5bd22e4da10823e89bdeb8c5b297f4f4")
!146 = !DILocation(line: 18, column: 24, scope: !144)
!147 = !DILocation(line: 18, column: 18, scope: !144)
!148 = !DILocation(line: 18, column: 11, scope: !144)
!149 = !DILocation(line: 19, column: 24, scope: !144)
!150 = !DILocation(line: 19, column: 18, scope: !144)
!151 = !DILocation(line: 19, column: 11, scope: !144)
!152 = !DILocation(line: 20, column: 24, scope: !144)
!153 = !DILocation(line: 20, column: 29, scope: !144)
!154 = !DILocation(line: 20, column: 17, scope: !144)
!155 = !DILocation(line: 21, column: 24, scope: !144)
!156 = !DILocation(line: 21, column: 29, scope: !144)
!157 = !DILocation(line: 21, column: 17, scope: !144)
!158 = !DILocation(line: 24, column: 9, scope: !144)
!159 = !DILocation(line: 24, column: 14, scope: !144)
!160 = !DILocation(line: 24, column: 25, scope: !144)
!161 = !DILocation(line: 24, column: 46, scope: !144)
!162 = !DILocation(line: 25, column: 9, scope: !144)
!163 = !DILocation(line: 25, column: 14, scope: !144)
!164 = !DILocation(line: 25, column: 25, scope: !144)
!165 = !DILocation(line: 27, column: 13, scope: !144)
!166 = !DILocation(line: 27, column: 18, scope: !144)
!167 = !DILocation(line: 27, column: 49, scope: !144)
!168 = !DILocation(line: 27, column: 43, scope: !144)
!169 = !DILocation(line: 27, column: 52, scope: !144)
!170 = !DILocation(line: 27, column: 35, scope: !144)
!171 = !DILocation(line: 27, column: 28, scope: !144)
!172 = !DILocation(line: 29, column: 13, scope: !144)
!173 = !DILocation(line: 29, column: 18, scope: !144)
!174 = !DILocation(line: 29, column: 49, scope: !144)
!175 = !DILocation(line: 29, column: 43, scope: !144)
!176 = !DILocation(line: 29, column: 52, scope: !144)
!177 = !DILocation(line: 29, column: 35, scope: !144)
!178 = !DILocation(line: 29, column: 28, scope: !144)
!179 = !DILocation(line: 31, column: 13, scope: !144)
!180 = !DILocation(line: 31, column: 18, scope: !144)
!181 = !DILocation(line: 33, column: 24, scope: !144)
!182 = !DILocation(line: 33, column: 18, scope: !144)
!183 = !DILocation(line: 33, column: 35, scope: !144)
!184 = !DILocation(line: 33, column: 29, scope: !144)
!185 = !DILocation(line: 33, column: 27, scope: !144)
!186 = !DILocation(line: 33, column: 39, scope: !144)
!187 = !DILocation(line: 33, column: 17, scope: !144)
!188 = !DILocation(line: 33, column: 58, scope: !144)
!189 = !DILocation(line: 33, column: 51, scope: !144)
!190 = !DILocation(line: 35, column: 25, scope: !144)
!191 = !DILocation(line: 35, column: 18, scope: !144)
!192 = !DILocation(line: 39, column: 13, scope: !144)
!193 = !DILocation(line: 39, column: 18, scope: !144)
!194 = !DILocation(line: 39, column: 36, scope: !144)
!195 = !DILocation(line: 39, column: 29, scope: !144)
!196 = !DILocation(line: 42, column: 14, scope: !144)
!197 = !DILocation(line: 42, column: 13, scope: !144)
!198 = !DILocation(line: 44, column: 18, scope: !144)
!199 = !DILocation(line: 44, column: 17, scope: !144)
!200 = !DILocation(line: 44, column: 45, scope: !144)
!201 = !DILocation(line: 44, column: 39, scope: !144)
!202 = !DILocation(line: 44, column: 56, scope: !144)
!203 = !DILocation(line: 44, column: 50, scope: !144)
!204 = !DILocation(line: 44, column: 48, scope: !144)
!205 = !DILocation(line: 44, column: 31, scope: !144)
!206 = !DILocation(line: 44, column: 24, scope: !144)
!207 = !DILocation(line: 45, column: 25, scope: !144)
!208 = !DILocation(line: 45, column: 18, scope: !144)
!209 = !DILocation(line: 49, column: 14, scope: !144)
!210 = !DILocation(line: 49, column: 13, scope: !144)
!211 = !DILocation(line: 49, column: 27, scope: !144)
!212 = !DILocation(line: 49, column: 20, scope: !144)
!213 = !DILocation(line: 50, column: 5, scope: !144)
!214 = !DILocation(line: 53, column: 9, scope: !144)
!215 = !DILocation(line: 53, column: 16, scope: !144)
!216 = !DILocation(line: 53, column: 14, scope: !144)
!217 = !DILocation(line: 54, column: 28, scope: !144)
!218 = !DILocation(line: 54, column: 21, scope: !144)
!219 = !DILocation(line: 55, column: 16, scope: !144)
!220 = !DILocation(line: 55, column: 14, scope: !144)
!221 = !DILocation(line: 56, column: 16, scope: !144)
!222 = !DILocation(line: 56, column: 14, scope: !144)
!223 = !DILocation(line: 57, column: 5, scope: !144)
!224 = !DILocation(line: 60, column: 21, scope: !144)
!225 = !DILocation(line: 60, column: 26, scope: !144)
!226 = !DILocation(line: 60, column: 45, scope: !144)
!227 = !DILocation(line: 60, column: 9, scope: !144)
!228 = !DILocation(line: 61, column: 21, scope: !144)
!229 = !DILocation(line: 61, column: 26, scope: !144)
!230 = !DILocation(line: 61, column: 45, scope: !144)
!231 = !DILocation(line: 61, column: 9, scope: !144)
!232 = !DILocation(line: 62, column: 26, scope: !144)
!233 = !DILocation(line: 62, column: 31, scope: !144)
!234 = !DILocation(line: 62, column: 11, scope: !144)
!235 = !DILocation(line: 63, column: 26, scope: !144)
!236 = !DILocation(line: 63, column: 31, scope: !144)
!237 = !DILocation(line: 63, column: 11, scope: !144)
!238 = !DILocation(line: 66, column: 9, scope: !144)
!239 = !DILocation(line: 66, column: 19, scope: !144)
!240 = !DILocation(line: 66, column: 37, scope: !144)
!241 = !DILocation(line: 66, column: 35, scope: !144)
!242 = !DILocation(line: 66, column: 25, scope: !144)
!243 = !DILocation(line: 67, column: 9, scope: !144)
!244 = !DILocation(line: 67, column: 19, scope: !144)
!245 = !DILocation(line: 67, column: 37, scope: !144)
!246 = !DILocation(line: 67, column: 35, scope: !144)
!247 = !DILocation(line: 67, column: 25, scope: !144)
!248 = !DILocation(line: 71, column: 30, scope: !144)
!249 = !DILocation(line: 71, column: 35, scope: !144)
!250 = !DILocation(line: 71, column: 17, scope: !144)
!251 = !DILocation(line: 72, column: 31, scope: !144)
!252 = !DILocation(line: 72, column: 38, scope: !144)
!253 = !DILocation(line: 72, column: 36, scope: !144)
!254 = !DILocation(line: 72, column: 44, scope: !144)
!255 = !DILocation(line: 72, column: 30, scope: !144)
!256 = !DILocation(line: 72, column: 16, scope: !144)
!257 = !DILocation(line: 78, column: 21, scope: !144)
!258 = !DILocation(line: 78, column: 34, scope: !144)
!259 = !DILocation(line: 78, column: 49, scope: !144)
!260 = !DILocation(line: 78, column: 18, scope: !144)
!261 = !DILocation(line: 79, column: 21, scope: !144)
!262 = !DILocation(line: 79, column: 34, scope: !144)
!263 = !DILocation(line: 79, column: 49, scope: !144)
!264 = !DILocation(line: 79, column: 18, scope: !144)
!265 = !DILocation(line: 83, column: 32, scope: !144)
!266 = !DILocation(line: 83, column: 44, scope: !144)
!267 = !DILocation(line: 83, column: 42, scope: !144)
!268 = !DILocation(line: 83, column: 24, scope: !144)
!269 = !DILocation(line: 84, column: 9, scope: !144)
!270 = !DILocation(line: 85, column: 13, scope: !144)
!271 = !DILocation(line: 85, column: 19, scope: !144)
!272 = !DILocation(line: 86, column: 33, scope: !144)
!273 = !DILocation(line: 86, column: 62, scope: !144)
!274 = !DILocation(line: 86, column: 60, scope: !144)
!275 = !DILocation(line: 86, column: 46, scope: !144)
!276 = !DILocation(line: 86, column: 24, scope: !144)
!277 = !DILocation(line: 87, column: 28, scope: !144)
!278 = !DILocation(line: 87, column: 44, scope: !144)
!279 = !DILocation(line: 87, column: 41, scope: !144)
!280 = !DILocation(line: 87, column: 52, scope: !144)
!281 = !DILocation(line: 87, column: 50, scope: !144)
!282 = !DILocation(line: 87, column: 26, scope: !144)
!283 = !DILocation(line: 88, column: 9, scope: !144)
!284 = !DILocation(line: 89, column: 26, scope: !144)
!285 = !DILocation(line: 91, column: 5, scope: !144)
!286 = !DILocation(line: 92, column: 9, scope: !144)
!287 = !DILocation(line: 93, column: 25, scope: !144)
!288 = !DILocation(line: 93, column: 22, scope: !144)
!289 = !DILocation(line: 95, column: 13, scope: !144)
!290 = !DILocation(line: 95, column: 26, scope: !144)
!291 = !DILocation(line: 95, column: 39, scope: !144)
!292 = !DILocation(line: 95, column: 32, scope: !144)
!293 = !DILocation(line: 99, column: 13, scope: !144)
!294 = !DILocation(line: 99, column: 26, scope: !144)
!295 = !DILocation(line: 100, column: 39, scope: !144)
!296 = !DILocation(line: 100, column: 31, scope: !144)
!297 = !DILocation(line: 100, column: 55, scope: !144)
!298 = !DILocation(line: 100, column: 53, scope: !144)
!299 = !DILocation(line: 100, column: 23, scope: !144)
!300 = !DILocation(line: 101, column: 30, scope: !144)
!301 = !DILocation(line: 101, column: 26, scope: !144)
!302 = !DILocation(line: 102, column: 26, scope: !144)
!303 = !DILocation(line: 102, column: 23, scope: !144)
!304 = !DILocation(line: 103, column: 9, scope: !144)
!305 = !DILocation(line: 104, column: 5, scope: !144)
!306 = !DILocation(line: 106, column: 25, scope: !144)
!307 = !DILocation(line: 106, column: 22, scope: !144)
!308 = !DILocation(line: 110, column: 13, scope: !144)
!309 = !DILocation(line: 110, column: 26, scope: !144)
!310 = !DILocation(line: 111, column: 33, scope: !144)
!311 = !DILocation(line: 111, column: 46, scope: !144)
!312 = !DILocation(line: 111, column: 24, scope: !144)
!313 = !DILocation(line: 112, column: 28, scope: !144)
!314 = !DILocation(line: 112, column: 41, scope: !144)
!315 = !DILocation(line: 112, column: 48, scope: !144)
!316 = !DILocation(line: 112, column: 46, scope: !144)
!317 = !DILocation(line: 112, column: 26, scope: !144)
!318 = !DILocation(line: 113, column: 23, scope: !144)
!319 = !DILocation(line: 114, column: 9, scope: !144)
!320 = !DILocation(line: 118, column: 9, scope: !144)
!321 = !DILocation(line: 118, column: 19, scope: !144)
!322 = !DILocation(line: 118, column: 59, scope: !144)
!323 = !DILocation(line: 118, column: 57, scope: !144)
!324 = !DILocation(line: 118, column: 42, scope: !144)
!325 = !DILocation(line: 118, column: 35, scope: !144)
!326 = !DILocation(line: 120, column: 9, scope: !144)
!327 = !DILocation(line: 120, column: 19, scope: !144)
!328 = !DILocation(line: 123, column: 31, scope: !144)
!329 = !DILocation(line: 123, column: 29, scope: !144)
!330 = !DILocation(line: 123, column: 19, scope: !144)
!331 = !DILocation(line: 124, column: 29, scope: !144)
!332 = !DILocation(line: 124, column: 58, scope: !144)
!333 = !DILocation(line: 124, column: 56, scope: !144)
!334 = !DILocation(line: 124, column: 42, scope: !144)
!335 = !DILocation(line: 124, column: 20, scope: !144)
!336 = !DILocation(line: 125, column: 24, scope: !144)
!337 = !DILocation(line: 125, column: 40, scope: !144)
!338 = !DILocation(line: 125, column: 37, scope: !144)
!339 = !DILocation(line: 125, column: 48, scope: !144)
!340 = !DILocation(line: 125, column: 46, scope: !144)
!341 = !DILocation(line: 125, column: 22, scope: !144)
!342 = !DILocation(line: 126, column: 19, scope: !144)
!343 = !DILocation(line: 127, column: 5, scope: !144)
!344 = !DILocation(line: 130, column: 34, scope: !144)
!345 = !DILocation(line: 130, column: 47, scope: !144)
!346 = !DILocation(line: 130, column: 15, scope: !144)
!347 = !DILocation(line: 133, column: 20, scope: !144)
!348 = !DILocation(line: 133, column: 33, scope: !144)
!349 = !DILocation(line: 133, column: 38, scope: !144)
!350 = !DILocation(line: 133, column: 11, scope: !144)
!351 = !DILocation(line: 136, column: 22, scope: !144)
!352 = !DILocation(line: 136, column: 15, scope: !144)
!353 = !DILocation(line: 136, column: 32, scope: !144)
!354 = !DILocation(line: 136, column: 12, scope: !144)
!355 = !DILocation(line: 137, column: 15, scope: !144)
!356 = !DILocation(line: 137, column: 12, scope: !144)
!357 = !DILocation(line: 141, column: 9, scope: !144)
!358 = !DILocation(line: 141, column: 26, scope: !144)
!359 = !DILocation(line: 141, column: 39, scope: !144)
!360 = !DILocation(line: 141, column: 33, scope: !144)
!361 = !DILocation(line: 142, column: 9, scope: !144)
!362 = !DILocation(line: 142, column: 26, scope: !144)
!363 = !DILocation(line: 142, column: 44, scope: !144)
!364 = !DILocation(line: 142, column: 51, scope: !144)
!365 = !DILocation(line: 142, column: 41, scope: !144)
!366 = !DILocation(line: 142, column: 34, scope: !144)
!367 = !DILocation(line: 143, column: 20, scope: !144)
!368 = !DILocation(line: 143, column: 12, scope: !144)
!369 = !DILocation(line: 143, column: 5, scope: !144)
!370 = !DILocation(line: 144, column: 1, scope: !144)
!371 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !139)
!372 = !DIFile(filename: "../fp_lib.h", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "7dc3444b56426ce9030559b28a9f87ee")
!373 = !DILocation(line: 232, column: 44, scope: !371)
!374 = !DILocation(line: 232, column: 50, scope: !371)
!375 = !DILocation(line: 233, column: 16, scope: !371)
!376 = !DILocation(line: 233, column: 5, scope: !371)
!377 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !139)
!378 = !DILocation(line: 237, column: 44, scope: !377)
!379 = !DILocation(line: 237, column: 50, scope: !377)
!380 = !DILocation(line: 238, column: 16, scope: !377)
!381 = !DILocation(line: 238, column: 5, scope: !377)
!382 = distinct !DISubprogram(name: "normalize", scope: !372, file: !372, line: 241, type: !138, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !139)
!383 = !DILocation(line: 242, column: 32, scope: !382)
!384 = !DILocation(line: 242, column: 31, scope: !382)
!385 = !DILocation(line: 242, column: 23, scope: !382)
!386 = !DILocation(line: 242, column: 47, scope: !382)
!387 = !DILocation(line: 242, column: 45, scope: !382)
!388 = !DILocation(line: 242, column: 15, scope: !382)
!389 = !DILocation(line: 243, column: 22, scope: !382)
!390 = !DILocation(line: 243, column: 6, scope: !382)
!391 = !DILocation(line: 243, column: 18, scope: !382)
!392 = !DILocation(line: 244, column: 16, scope: !382)
!393 = !DILocation(line: 244, column: 14, scope: !382)
!394 = !DILocation(line: 244, column: 5, scope: !382)
!395 = distinct !DISubprogram(name: "rep_clz", scope: !372, file: !372, line: 69, type: !138, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !139)
!396 = !DILocation(line: 73, column: 9, scope: !395)
!397 = !DILocation(line: 73, column: 11, scope: !395)
!398 = !DILocation(line: 74, column: 30, scope: !395)
!399 = !DILocation(line: 74, column: 32, scope: !395)
!400 = !DILocation(line: 74, column: 16, scope: !395)
!401 = !DILocation(line: 74, column: 9, scope: !395)
!402 = !DILocation(line: 76, column: 35, scope: !395)
!403 = !DILocation(line: 76, column: 37, scope: !395)
!404 = !DILocation(line: 76, column: 21, scope: !395)
!405 = !DILocation(line: 76, column: 19, scope: !395)
!406 = !DILocation(line: 76, column: 9, scope: !395)
!407 = !DILocation(line: 78, column: 1, scope: !395)
!408 = distinct !DISubprogram(name: "__addsf3", scope: !3, file: !3, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !139)
!409 = !DILocation(line: 21, column: 23, scope: !408)
!410 = !DILocation(line: 21, column: 26, scope: !408)
!411 = !DILocation(line: 21, column: 12, scope: !408)
!412 = !DILocation(line: 21, column: 5, scope: !408)
!413 = distinct !DISubprogram(name: "__addXf3__", scope: !145, file: !145, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !139)
!414 = !DILocation(line: 18, column: 24, scope: !413)
!415 = !DILocation(line: 18, column: 18, scope: !413)
!416 = !DILocation(line: 18, column: 11, scope: !413)
!417 = !DILocation(line: 19, column: 24, scope: !413)
!418 = !DILocation(line: 19, column: 18, scope: !413)
!419 = !DILocation(line: 19, column: 11, scope: !413)
!420 = !DILocation(line: 20, column: 24, scope: !413)
!421 = !DILocation(line: 20, column: 29, scope: !413)
!422 = !DILocation(line: 20, column: 17, scope: !413)
!423 = !DILocation(line: 21, column: 24, scope: !413)
!424 = !DILocation(line: 21, column: 29, scope: !413)
!425 = !DILocation(line: 21, column: 17, scope: !413)
!426 = !DILocation(line: 24, column: 9, scope: !413)
!427 = !DILocation(line: 24, column: 14, scope: !413)
!428 = !DILocation(line: 24, column: 25, scope: !413)
!429 = !DILocation(line: 24, column: 46, scope: !413)
!430 = !DILocation(line: 25, column: 9, scope: !413)
!431 = !DILocation(line: 25, column: 14, scope: !413)
!432 = !DILocation(line: 25, column: 25, scope: !413)
!433 = !DILocation(line: 27, column: 13, scope: !413)
!434 = !DILocation(line: 27, column: 18, scope: !413)
!435 = !DILocation(line: 27, column: 49, scope: !413)
!436 = !DILocation(line: 27, column: 43, scope: !413)
!437 = !DILocation(line: 27, column: 52, scope: !413)
!438 = !DILocation(line: 27, column: 35, scope: !413)
!439 = !DILocation(line: 27, column: 28, scope: !413)
!440 = !DILocation(line: 29, column: 13, scope: !413)
!441 = !DILocation(line: 29, column: 18, scope: !413)
!442 = !DILocation(line: 29, column: 49, scope: !413)
!443 = !DILocation(line: 29, column: 43, scope: !413)
!444 = !DILocation(line: 29, column: 52, scope: !413)
!445 = !DILocation(line: 29, column: 35, scope: !413)
!446 = !DILocation(line: 29, column: 28, scope: !413)
!447 = !DILocation(line: 31, column: 13, scope: !413)
!448 = !DILocation(line: 31, column: 18, scope: !413)
!449 = !DILocation(line: 33, column: 24, scope: !413)
!450 = !DILocation(line: 33, column: 18, scope: !413)
!451 = !DILocation(line: 33, column: 35, scope: !413)
!452 = !DILocation(line: 33, column: 29, scope: !413)
!453 = !DILocation(line: 33, column: 27, scope: !413)
!454 = !DILocation(line: 33, column: 39, scope: !413)
!455 = !DILocation(line: 33, column: 17, scope: !413)
!456 = !DILocation(line: 33, column: 58, scope: !413)
!457 = !DILocation(line: 33, column: 51, scope: !413)
!458 = !DILocation(line: 35, column: 25, scope: !413)
!459 = !DILocation(line: 35, column: 18, scope: !413)
!460 = !DILocation(line: 39, column: 13, scope: !413)
!461 = !DILocation(line: 39, column: 18, scope: !413)
!462 = !DILocation(line: 39, column: 36, scope: !413)
!463 = !DILocation(line: 39, column: 29, scope: !413)
!464 = !DILocation(line: 42, column: 14, scope: !413)
!465 = !DILocation(line: 42, column: 13, scope: !413)
!466 = !DILocation(line: 44, column: 18, scope: !413)
!467 = !DILocation(line: 44, column: 17, scope: !413)
!468 = !DILocation(line: 44, column: 45, scope: !413)
!469 = !DILocation(line: 44, column: 39, scope: !413)
!470 = !DILocation(line: 44, column: 56, scope: !413)
!471 = !DILocation(line: 44, column: 50, scope: !413)
!472 = !DILocation(line: 44, column: 48, scope: !413)
!473 = !DILocation(line: 44, column: 31, scope: !413)
!474 = !DILocation(line: 44, column: 24, scope: !413)
!475 = !DILocation(line: 45, column: 25, scope: !413)
!476 = !DILocation(line: 45, column: 18, scope: !413)
!477 = !DILocation(line: 49, column: 14, scope: !413)
!478 = !DILocation(line: 49, column: 13, scope: !413)
!479 = !DILocation(line: 49, column: 27, scope: !413)
!480 = !DILocation(line: 49, column: 20, scope: !413)
!481 = !DILocation(line: 50, column: 5, scope: !413)
!482 = !DILocation(line: 53, column: 9, scope: !413)
!483 = !DILocation(line: 53, column: 16, scope: !413)
!484 = !DILocation(line: 53, column: 14, scope: !413)
!485 = !DILocation(line: 54, column: 28, scope: !413)
!486 = !DILocation(line: 54, column: 21, scope: !413)
!487 = !DILocation(line: 55, column: 16, scope: !413)
!488 = !DILocation(line: 55, column: 14, scope: !413)
!489 = !DILocation(line: 56, column: 16, scope: !413)
!490 = !DILocation(line: 56, column: 14, scope: !413)
!491 = !DILocation(line: 57, column: 5, scope: !413)
!492 = !DILocation(line: 60, column: 21, scope: !413)
!493 = !DILocation(line: 60, column: 26, scope: !413)
!494 = !DILocation(line: 60, column: 45, scope: !413)
!495 = !DILocation(line: 60, column: 9, scope: !413)
!496 = !DILocation(line: 61, column: 21, scope: !413)
!497 = !DILocation(line: 61, column: 26, scope: !413)
!498 = !DILocation(line: 61, column: 45, scope: !413)
!499 = !DILocation(line: 61, column: 9, scope: !413)
!500 = !DILocation(line: 62, column: 26, scope: !413)
!501 = !DILocation(line: 62, column: 31, scope: !413)
!502 = !DILocation(line: 62, column: 11, scope: !413)
!503 = !DILocation(line: 63, column: 26, scope: !413)
!504 = !DILocation(line: 63, column: 31, scope: !413)
!505 = !DILocation(line: 63, column: 11, scope: !413)
!506 = !DILocation(line: 66, column: 9, scope: !413)
!507 = !DILocation(line: 66, column: 19, scope: !413)
!508 = !DILocation(line: 66, column: 37, scope: !413)
!509 = !DILocation(line: 66, column: 35, scope: !413)
!510 = !DILocation(line: 66, column: 25, scope: !413)
!511 = !DILocation(line: 67, column: 9, scope: !413)
!512 = !DILocation(line: 67, column: 19, scope: !413)
!513 = !DILocation(line: 67, column: 37, scope: !413)
!514 = !DILocation(line: 67, column: 35, scope: !413)
!515 = !DILocation(line: 67, column: 25, scope: !413)
!516 = !DILocation(line: 71, column: 30, scope: !413)
!517 = !DILocation(line: 71, column: 35, scope: !413)
!518 = !DILocation(line: 71, column: 17, scope: !413)
!519 = !DILocation(line: 72, column: 31, scope: !413)
!520 = !DILocation(line: 72, column: 38, scope: !413)
!521 = !DILocation(line: 72, column: 36, scope: !413)
!522 = !DILocation(line: 72, column: 44, scope: !413)
!523 = !DILocation(line: 72, column: 30, scope: !413)
!524 = !DILocation(line: 72, column: 16, scope: !413)
!525 = !DILocation(line: 78, column: 21, scope: !413)
!526 = !DILocation(line: 78, column: 34, scope: !413)
!527 = !DILocation(line: 78, column: 49, scope: !413)
!528 = !DILocation(line: 78, column: 18, scope: !413)
!529 = !DILocation(line: 79, column: 21, scope: !413)
!530 = !DILocation(line: 79, column: 34, scope: !413)
!531 = !DILocation(line: 79, column: 49, scope: !413)
!532 = !DILocation(line: 79, column: 18, scope: !413)
!533 = !DILocation(line: 83, column: 32, scope: !413)
!534 = !DILocation(line: 83, column: 44, scope: !413)
!535 = !DILocation(line: 83, column: 42, scope: !413)
!536 = !DILocation(line: 83, column: 24, scope: !413)
!537 = !DILocation(line: 84, column: 9, scope: !413)
!538 = !DILocation(line: 85, column: 13, scope: !413)
!539 = !DILocation(line: 85, column: 19, scope: !413)
!540 = !DILocation(line: 86, column: 33, scope: !413)
!541 = !DILocation(line: 86, column: 62, scope: !413)
!542 = !DILocation(line: 86, column: 60, scope: !413)
!543 = !DILocation(line: 86, column: 46, scope: !413)
!544 = !DILocation(line: 86, column: 24, scope: !413)
!545 = !DILocation(line: 87, column: 28, scope: !413)
!546 = !DILocation(line: 87, column: 44, scope: !413)
!547 = !DILocation(line: 87, column: 41, scope: !413)
!548 = !DILocation(line: 87, column: 52, scope: !413)
!549 = !DILocation(line: 87, column: 50, scope: !413)
!550 = !DILocation(line: 87, column: 26, scope: !413)
!551 = !DILocation(line: 88, column: 9, scope: !413)
!552 = !DILocation(line: 89, column: 26, scope: !413)
!553 = !DILocation(line: 91, column: 5, scope: !413)
!554 = !DILocation(line: 92, column: 9, scope: !413)
!555 = !DILocation(line: 93, column: 25, scope: !413)
!556 = !DILocation(line: 93, column: 22, scope: !413)
!557 = !DILocation(line: 95, column: 13, scope: !413)
!558 = !DILocation(line: 95, column: 26, scope: !413)
!559 = !DILocation(line: 95, column: 39, scope: !413)
!560 = !DILocation(line: 95, column: 32, scope: !413)
!561 = !DILocation(line: 99, column: 13, scope: !413)
!562 = !DILocation(line: 99, column: 26, scope: !413)
!563 = !DILocation(line: 100, column: 39, scope: !413)
!564 = !DILocation(line: 100, column: 31, scope: !413)
!565 = !DILocation(line: 100, column: 55, scope: !413)
!566 = !DILocation(line: 100, column: 53, scope: !413)
!567 = !DILocation(line: 100, column: 23, scope: !413)
!568 = !DILocation(line: 101, column: 30, scope: !413)
!569 = !DILocation(line: 101, column: 26, scope: !413)
!570 = !DILocation(line: 102, column: 26, scope: !413)
!571 = !DILocation(line: 102, column: 23, scope: !413)
!572 = !DILocation(line: 103, column: 9, scope: !413)
!573 = !DILocation(line: 104, column: 5, scope: !413)
!574 = !DILocation(line: 106, column: 25, scope: !413)
!575 = !DILocation(line: 106, column: 22, scope: !413)
!576 = !DILocation(line: 110, column: 13, scope: !413)
!577 = !DILocation(line: 110, column: 26, scope: !413)
!578 = !DILocation(line: 111, column: 33, scope: !413)
!579 = !DILocation(line: 111, column: 46, scope: !413)
!580 = !DILocation(line: 111, column: 24, scope: !413)
!581 = !DILocation(line: 112, column: 28, scope: !413)
!582 = !DILocation(line: 112, column: 41, scope: !413)
!583 = !DILocation(line: 112, column: 48, scope: !413)
!584 = !DILocation(line: 112, column: 46, scope: !413)
!585 = !DILocation(line: 112, column: 26, scope: !413)
!586 = !DILocation(line: 113, column: 23, scope: !413)
!587 = !DILocation(line: 114, column: 9, scope: !413)
!588 = !DILocation(line: 118, column: 9, scope: !413)
!589 = !DILocation(line: 118, column: 19, scope: !413)
!590 = !DILocation(line: 118, column: 59, scope: !413)
!591 = !DILocation(line: 118, column: 57, scope: !413)
!592 = !DILocation(line: 118, column: 42, scope: !413)
!593 = !DILocation(line: 118, column: 35, scope: !413)
!594 = !DILocation(line: 120, column: 9, scope: !413)
!595 = !DILocation(line: 120, column: 19, scope: !413)
!596 = !DILocation(line: 123, column: 31, scope: !413)
!597 = !DILocation(line: 123, column: 29, scope: !413)
!598 = !DILocation(line: 123, column: 19, scope: !413)
!599 = !DILocation(line: 124, column: 29, scope: !413)
!600 = !DILocation(line: 124, column: 58, scope: !413)
!601 = !DILocation(line: 124, column: 56, scope: !413)
!602 = !DILocation(line: 124, column: 42, scope: !413)
!603 = !DILocation(line: 124, column: 20, scope: !413)
!604 = !DILocation(line: 125, column: 24, scope: !413)
!605 = !DILocation(line: 125, column: 40, scope: !413)
!606 = !DILocation(line: 125, column: 37, scope: !413)
!607 = !DILocation(line: 125, column: 48, scope: !413)
!608 = !DILocation(line: 125, column: 46, scope: !413)
!609 = !DILocation(line: 125, column: 22, scope: !413)
!610 = !DILocation(line: 126, column: 19, scope: !413)
!611 = !DILocation(line: 127, column: 5, scope: !413)
!612 = !DILocation(line: 130, column: 34, scope: !413)
!613 = !DILocation(line: 130, column: 47, scope: !413)
!614 = !DILocation(line: 130, column: 15, scope: !413)
!615 = !DILocation(line: 133, column: 20, scope: !413)
!616 = !DILocation(line: 133, column: 33, scope: !413)
!617 = !DILocation(line: 133, column: 38, scope: !413)
!618 = !DILocation(line: 133, column: 11, scope: !413)
!619 = !DILocation(line: 136, column: 22, scope: !413)
!620 = !DILocation(line: 136, column: 32, scope: !413)
!621 = !DILocation(line: 136, column: 12, scope: !413)
!622 = !DILocation(line: 137, column: 15, scope: !413)
!623 = !DILocation(line: 137, column: 12, scope: !413)
!624 = !DILocation(line: 141, column: 9, scope: !413)
!625 = !DILocation(line: 141, column: 26, scope: !413)
!626 = !DILocation(line: 141, column: 39, scope: !413)
!627 = !DILocation(line: 141, column: 33, scope: !413)
!628 = !DILocation(line: 142, column: 9, scope: !413)
!629 = !DILocation(line: 142, column: 26, scope: !413)
!630 = !DILocation(line: 142, column: 44, scope: !413)
!631 = !DILocation(line: 142, column: 51, scope: !413)
!632 = !DILocation(line: 142, column: 41, scope: !413)
!633 = !DILocation(line: 142, column: 34, scope: !413)
!634 = !DILocation(line: 143, column: 20, scope: !413)
!635 = !DILocation(line: 143, column: 12, scope: !413)
!636 = !DILocation(line: 143, column: 5, scope: !413)
!637 = !DILocation(line: 144, column: 1, scope: !413)
!638 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !139)
!639 = !DILocation(line: 232, column: 44, scope: !638)
!640 = !DILocation(line: 232, column: 50, scope: !638)
!641 = !DILocation(line: 233, column: 16, scope: !638)
!642 = !DILocation(line: 233, column: 5, scope: !638)
!643 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !139)
!644 = !DILocation(line: 237, column: 44, scope: !643)
!645 = !DILocation(line: 237, column: 50, scope: !643)
!646 = !DILocation(line: 238, column: 16, scope: !643)
!647 = !DILocation(line: 238, column: 5, scope: !643)
!648 = distinct !DISubprogram(name: "normalize", scope: !372, file: !372, line: 241, type: !138, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !139)
!649 = !DILocation(line: 242, column: 32, scope: !648)
!650 = !DILocation(line: 242, column: 31, scope: !648)
!651 = !DILocation(line: 242, column: 23, scope: !648)
!652 = !DILocation(line: 242, column: 47, scope: !648)
!653 = !DILocation(line: 242, column: 45, scope: !648)
!654 = !DILocation(line: 242, column: 15, scope: !648)
!655 = !DILocation(line: 243, column: 22, scope: !648)
!656 = !DILocation(line: 243, column: 6, scope: !648)
!657 = !DILocation(line: 243, column: 18, scope: !648)
!658 = !DILocation(line: 244, column: 16, scope: !648)
!659 = !DILocation(line: 244, column: 14, scope: !648)
!660 = !DILocation(line: 244, column: 5, scope: !648)
!661 = distinct !DISubprogram(name: "rep_clz", scope: !372, file: !372, line: 49, type: !138, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !139)
!662 = !DILocation(line: 50, column: 26, scope: !661)
!663 = !DILocation(line: 50, column: 12, scope: !661)
!664 = !DILocation(line: 50, column: 5, scope: !661)
!665 = distinct !DISubprogram(name: "__ledf2", scope: !5, file: !5, line: 51, type: !138, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!666 = !DILocation(line: 53, column: 31, scope: !665)
!667 = !DILocation(line: 53, column: 25, scope: !665)
!668 = !DILocation(line: 53, column: 18, scope: !665)
!669 = !DILocation(line: 54, column: 31, scope: !665)
!670 = !DILocation(line: 54, column: 25, scope: !665)
!671 = !DILocation(line: 54, column: 18, scope: !665)
!672 = !DILocation(line: 55, column: 24, scope: !665)
!673 = !DILocation(line: 55, column: 29, scope: !665)
!674 = !DILocation(line: 55, column: 17, scope: !665)
!675 = !DILocation(line: 56, column: 24, scope: !665)
!676 = !DILocation(line: 56, column: 29, scope: !665)
!677 = !DILocation(line: 56, column: 17, scope: !665)
!678 = !DILocation(line: 59, column: 9, scope: !665)
!679 = !DILocation(line: 59, column: 14, scope: !665)
!680 = !DILocation(line: 59, column: 23, scope: !665)
!681 = !DILocation(line: 59, column: 26, scope: !665)
!682 = !DILocation(line: 59, column: 31, scope: !665)
!683 = !DILocation(line: 59, column: 41, scope: !665)
!684 = !DILocation(line: 62, column: 10, scope: !665)
!685 = !DILocation(line: 62, column: 17, scope: !665)
!686 = !DILocation(line: 62, column: 15, scope: !665)
!687 = !DILocation(line: 62, column: 23, scope: !665)
!688 = !DILocation(line: 62, column: 9, scope: !665)
!689 = !DILocation(line: 62, column: 29, scope: !665)
!690 = !DILocation(line: 66, column: 10, scope: !665)
!691 = !DILocation(line: 66, column: 17, scope: !665)
!692 = !DILocation(line: 66, column: 15, scope: !665)
!693 = !DILocation(line: 66, column: 23, scope: !665)
!694 = !DILocation(line: 66, column: 9, scope: !665)
!695 = !DILocation(line: 67, column: 13, scope: !665)
!696 = !DILocation(line: 67, column: 20, scope: !665)
!697 = !DILocation(line: 67, column: 18, scope: !665)
!698 = !DILocation(line: 67, column: 26, scope: !665)
!699 = !DILocation(line: 68, column: 18, scope: !665)
!700 = !DILocation(line: 68, column: 26, scope: !665)
!701 = !DILocation(line: 68, column: 23, scope: !665)
!702 = !DILocation(line: 68, column: 32, scope: !665)
!703 = !DILocation(line: 69, column: 14, scope: !665)
!704 = !DILocation(line: 77, column: 13, scope: !665)
!705 = !DILocation(line: 77, column: 20, scope: !665)
!706 = !DILocation(line: 77, column: 18, scope: !665)
!707 = !DILocation(line: 77, column: 26, scope: !665)
!708 = !DILocation(line: 78, column: 18, scope: !665)
!709 = !DILocation(line: 78, column: 26, scope: !665)
!710 = !DILocation(line: 78, column: 23, scope: !665)
!711 = !DILocation(line: 78, column: 32, scope: !665)
!712 = !DILocation(line: 79, column: 14, scope: !665)
!713 = !DILocation(line: 81, column: 1, scope: !665)
!714 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, retainedNodes: !139)
!715 = !DILocation(line: 232, column: 44, scope: !714)
!716 = !DILocation(line: 232, column: 50, scope: !714)
!717 = !DILocation(line: 233, column: 16, scope: !714)
!718 = !DILocation(line: 233, column: 5, scope: !714)
!719 = distinct !DISubprogram(name: "__gedf2", scope: !5, file: !5, line: 96, type: !138, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!720 = !DILocation(line: 98, column: 31, scope: !719)
!721 = !DILocation(line: 98, column: 25, scope: !719)
!722 = !DILocation(line: 98, column: 18, scope: !719)
!723 = !DILocation(line: 99, column: 31, scope: !719)
!724 = !DILocation(line: 99, column: 25, scope: !719)
!725 = !DILocation(line: 99, column: 18, scope: !719)
!726 = !DILocation(line: 100, column: 24, scope: !719)
!727 = !DILocation(line: 100, column: 29, scope: !719)
!728 = !DILocation(line: 100, column: 17, scope: !719)
!729 = !DILocation(line: 101, column: 24, scope: !719)
!730 = !DILocation(line: 101, column: 29, scope: !719)
!731 = !DILocation(line: 101, column: 17, scope: !719)
!732 = !DILocation(line: 103, column: 9, scope: !719)
!733 = !DILocation(line: 103, column: 14, scope: !719)
!734 = !DILocation(line: 103, column: 23, scope: !719)
!735 = !DILocation(line: 103, column: 26, scope: !719)
!736 = !DILocation(line: 103, column: 31, scope: !719)
!737 = !DILocation(line: 103, column: 41, scope: !719)
!738 = !DILocation(line: 104, column: 10, scope: !719)
!739 = !DILocation(line: 104, column: 17, scope: !719)
!740 = !DILocation(line: 104, column: 15, scope: !719)
!741 = !DILocation(line: 104, column: 23, scope: !719)
!742 = !DILocation(line: 104, column: 9, scope: !719)
!743 = !DILocation(line: 104, column: 29, scope: !719)
!744 = !DILocation(line: 105, column: 10, scope: !719)
!745 = !DILocation(line: 105, column: 17, scope: !719)
!746 = !DILocation(line: 105, column: 15, scope: !719)
!747 = !DILocation(line: 105, column: 23, scope: !719)
!748 = !DILocation(line: 105, column: 9, scope: !719)
!749 = !DILocation(line: 106, column: 13, scope: !719)
!750 = !DILocation(line: 106, column: 20, scope: !719)
!751 = !DILocation(line: 106, column: 18, scope: !719)
!752 = !DILocation(line: 106, column: 26, scope: !719)
!753 = !DILocation(line: 107, column: 18, scope: !719)
!754 = !DILocation(line: 107, column: 26, scope: !719)
!755 = !DILocation(line: 107, column: 23, scope: !719)
!756 = !DILocation(line: 107, column: 32, scope: !719)
!757 = !DILocation(line: 108, column: 14, scope: !719)
!758 = !DILocation(line: 110, column: 13, scope: !719)
!759 = !DILocation(line: 110, column: 20, scope: !719)
!760 = !DILocation(line: 110, column: 18, scope: !719)
!761 = !DILocation(line: 110, column: 26, scope: !719)
!762 = !DILocation(line: 111, column: 18, scope: !719)
!763 = !DILocation(line: 111, column: 26, scope: !719)
!764 = !DILocation(line: 111, column: 23, scope: !719)
!765 = !DILocation(line: 111, column: 32, scope: !719)
!766 = !DILocation(line: 112, column: 14, scope: !719)
!767 = !DILocation(line: 114, column: 1, scope: !719)
!768 = distinct !DISubprogram(name: "__unorddf2", scope: !5, file: !5, line: 119, type: !138, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!769 = !DILocation(line: 120, column: 30, scope: !768)
!770 = !DILocation(line: 120, column: 24, scope: !768)
!771 = !DILocation(line: 120, column: 33, scope: !768)
!772 = !DILocation(line: 120, column: 17, scope: !768)
!773 = !DILocation(line: 121, column: 30, scope: !768)
!774 = !DILocation(line: 121, column: 24, scope: !768)
!775 = !DILocation(line: 121, column: 33, scope: !768)
!776 = !DILocation(line: 121, column: 17, scope: !768)
!777 = !DILocation(line: 122, column: 12, scope: !768)
!778 = !DILocation(line: 122, column: 17, scope: !768)
!779 = !DILocation(line: 122, column: 26, scope: !768)
!780 = !DILocation(line: 122, column: 29, scope: !768)
!781 = !DILocation(line: 122, column: 34, scope: !768)
!782 = !DILocation(line: 122, column: 5, scope: !768)
!783 = distinct !DISubprogram(name: "__eqdf2", scope: !5, file: !5, line: 128, type: !138, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!784 = !DILocation(line: 129, column: 20, scope: !783)
!785 = !DILocation(line: 129, column: 23, scope: !783)
!786 = !DILocation(line: 129, column: 12, scope: !783)
!787 = !DILocation(line: 129, column: 5, scope: !783)
!788 = distinct !DISubprogram(name: "__ltdf2", scope: !5, file: !5, line: 133, type: !138, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!789 = !DILocation(line: 134, column: 20, scope: !788)
!790 = !DILocation(line: 134, column: 23, scope: !788)
!791 = !DILocation(line: 134, column: 12, scope: !788)
!792 = !DILocation(line: 134, column: 5, scope: !788)
!793 = distinct !DISubprogram(name: "__nedf2", scope: !5, file: !5, line: 138, type: !138, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!794 = !DILocation(line: 139, column: 20, scope: !793)
!795 = !DILocation(line: 139, column: 23, scope: !793)
!796 = !DILocation(line: 139, column: 12, scope: !793)
!797 = !DILocation(line: 139, column: 5, scope: !793)
!798 = distinct !DISubprogram(name: "__gtdf2", scope: !5, file: !5, line: 143, type: !138, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !139)
!799 = !DILocation(line: 144, column: 20, scope: !798)
!800 = !DILocation(line: 144, column: 23, scope: !798)
!801 = !DILocation(line: 144, column: 12, scope: !798)
!802 = !DILocation(line: 144, column: 5, scope: !798)
!803 = distinct !DISubprogram(name: "__lesf2", scope: !7, file: !7, line: 51, type: !138, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!804 = !DILocation(line: 53, column: 31, scope: !803)
!805 = !DILocation(line: 53, column: 25, scope: !803)
!806 = !DILocation(line: 53, column: 18, scope: !803)
!807 = !DILocation(line: 54, column: 31, scope: !803)
!808 = !DILocation(line: 54, column: 25, scope: !803)
!809 = !DILocation(line: 54, column: 18, scope: !803)
!810 = !DILocation(line: 55, column: 24, scope: !803)
!811 = !DILocation(line: 55, column: 29, scope: !803)
!812 = !DILocation(line: 55, column: 17, scope: !803)
!813 = !DILocation(line: 56, column: 24, scope: !803)
!814 = !DILocation(line: 56, column: 29, scope: !803)
!815 = !DILocation(line: 56, column: 17, scope: !803)
!816 = !DILocation(line: 59, column: 9, scope: !803)
!817 = !DILocation(line: 59, column: 14, scope: !803)
!818 = !DILocation(line: 59, column: 23, scope: !803)
!819 = !DILocation(line: 59, column: 26, scope: !803)
!820 = !DILocation(line: 59, column: 31, scope: !803)
!821 = !DILocation(line: 59, column: 41, scope: !803)
!822 = !DILocation(line: 62, column: 10, scope: !803)
!823 = !DILocation(line: 62, column: 17, scope: !803)
!824 = !DILocation(line: 62, column: 15, scope: !803)
!825 = !DILocation(line: 62, column: 23, scope: !803)
!826 = !DILocation(line: 62, column: 9, scope: !803)
!827 = !DILocation(line: 62, column: 29, scope: !803)
!828 = !DILocation(line: 66, column: 10, scope: !803)
!829 = !DILocation(line: 66, column: 17, scope: !803)
!830 = !DILocation(line: 66, column: 15, scope: !803)
!831 = !DILocation(line: 66, column: 23, scope: !803)
!832 = !DILocation(line: 66, column: 9, scope: !803)
!833 = !DILocation(line: 67, column: 13, scope: !803)
!834 = !DILocation(line: 67, column: 20, scope: !803)
!835 = !DILocation(line: 67, column: 18, scope: !803)
!836 = !DILocation(line: 67, column: 26, scope: !803)
!837 = !DILocation(line: 68, column: 18, scope: !803)
!838 = !DILocation(line: 68, column: 26, scope: !803)
!839 = !DILocation(line: 68, column: 23, scope: !803)
!840 = !DILocation(line: 68, column: 32, scope: !803)
!841 = !DILocation(line: 69, column: 14, scope: !803)
!842 = !DILocation(line: 77, column: 13, scope: !803)
!843 = !DILocation(line: 77, column: 20, scope: !803)
!844 = !DILocation(line: 77, column: 18, scope: !803)
!845 = !DILocation(line: 77, column: 26, scope: !803)
!846 = !DILocation(line: 78, column: 18, scope: !803)
!847 = !DILocation(line: 78, column: 26, scope: !803)
!848 = !DILocation(line: 78, column: 23, scope: !803)
!849 = !DILocation(line: 78, column: 32, scope: !803)
!850 = !DILocation(line: 79, column: 14, scope: !803)
!851 = !DILocation(line: 81, column: 1, scope: !803)
!852 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, retainedNodes: !139)
!853 = !DILocation(line: 232, column: 44, scope: !852)
!854 = !DILocation(line: 232, column: 50, scope: !852)
!855 = !DILocation(line: 233, column: 16, scope: !852)
!856 = !DILocation(line: 233, column: 5, scope: !852)
!857 = distinct !DISubprogram(name: "__gesf2", scope: !7, file: !7, line: 96, type: !138, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!858 = !DILocation(line: 98, column: 31, scope: !857)
!859 = !DILocation(line: 98, column: 25, scope: !857)
!860 = !DILocation(line: 98, column: 18, scope: !857)
!861 = !DILocation(line: 99, column: 31, scope: !857)
!862 = !DILocation(line: 99, column: 25, scope: !857)
!863 = !DILocation(line: 99, column: 18, scope: !857)
!864 = !DILocation(line: 100, column: 24, scope: !857)
!865 = !DILocation(line: 100, column: 29, scope: !857)
!866 = !DILocation(line: 100, column: 17, scope: !857)
!867 = !DILocation(line: 101, column: 24, scope: !857)
!868 = !DILocation(line: 101, column: 29, scope: !857)
!869 = !DILocation(line: 101, column: 17, scope: !857)
!870 = !DILocation(line: 103, column: 9, scope: !857)
!871 = !DILocation(line: 103, column: 14, scope: !857)
!872 = !DILocation(line: 103, column: 23, scope: !857)
!873 = !DILocation(line: 103, column: 26, scope: !857)
!874 = !DILocation(line: 103, column: 31, scope: !857)
!875 = !DILocation(line: 103, column: 41, scope: !857)
!876 = !DILocation(line: 104, column: 10, scope: !857)
!877 = !DILocation(line: 104, column: 17, scope: !857)
!878 = !DILocation(line: 104, column: 15, scope: !857)
!879 = !DILocation(line: 104, column: 23, scope: !857)
!880 = !DILocation(line: 104, column: 9, scope: !857)
!881 = !DILocation(line: 104, column: 29, scope: !857)
!882 = !DILocation(line: 105, column: 10, scope: !857)
!883 = !DILocation(line: 105, column: 17, scope: !857)
!884 = !DILocation(line: 105, column: 15, scope: !857)
!885 = !DILocation(line: 105, column: 23, scope: !857)
!886 = !DILocation(line: 105, column: 9, scope: !857)
!887 = !DILocation(line: 106, column: 13, scope: !857)
!888 = !DILocation(line: 106, column: 20, scope: !857)
!889 = !DILocation(line: 106, column: 18, scope: !857)
!890 = !DILocation(line: 106, column: 26, scope: !857)
!891 = !DILocation(line: 107, column: 18, scope: !857)
!892 = !DILocation(line: 107, column: 26, scope: !857)
!893 = !DILocation(line: 107, column: 23, scope: !857)
!894 = !DILocation(line: 107, column: 32, scope: !857)
!895 = !DILocation(line: 108, column: 14, scope: !857)
!896 = !DILocation(line: 110, column: 13, scope: !857)
!897 = !DILocation(line: 110, column: 20, scope: !857)
!898 = !DILocation(line: 110, column: 18, scope: !857)
!899 = !DILocation(line: 110, column: 26, scope: !857)
!900 = !DILocation(line: 111, column: 18, scope: !857)
!901 = !DILocation(line: 111, column: 26, scope: !857)
!902 = !DILocation(line: 111, column: 23, scope: !857)
!903 = !DILocation(line: 111, column: 32, scope: !857)
!904 = !DILocation(line: 112, column: 14, scope: !857)
!905 = !DILocation(line: 114, column: 1, scope: !857)
!906 = distinct !DISubprogram(name: "__unordsf2", scope: !7, file: !7, line: 119, type: !138, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!907 = !DILocation(line: 120, column: 30, scope: !906)
!908 = !DILocation(line: 120, column: 24, scope: !906)
!909 = !DILocation(line: 120, column: 33, scope: !906)
!910 = !DILocation(line: 120, column: 17, scope: !906)
!911 = !DILocation(line: 121, column: 30, scope: !906)
!912 = !DILocation(line: 121, column: 24, scope: !906)
!913 = !DILocation(line: 121, column: 33, scope: !906)
!914 = !DILocation(line: 121, column: 17, scope: !906)
!915 = !DILocation(line: 122, column: 12, scope: !906)
!916 = !DILocation(line: 122, column: 17, scope: !906)
!917 = !DILocation(line: 122, column: 26, scope: !906)
!918 = !DILocation(line: 122, column: 29, scope: !906)
!919 = !DILocation(line: 122, column: 34, scope: !906)
!920 = !DILocation(line: 122, column: 5, scope: !906)
!921 = distinct !DISubprogram(name: "__eqsf2", scope: !7, file: !7, line: 128, type: !138, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!922 = !DILocation(line: 129, column: 20, scope: !921)
!923 = !DILocation(line: 129, column: 23, scope: !921)
!924 = !DILocation(line: 129, column: 12, scope: !921)
!925 = !DILocation(line: 129, column: 5, scope: !921)
!926 = distinct !DISubprogram(name: "__ltsf2", scope: !7, file: !7, line: 133, type: !138, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!927 = !DILocation(line: 134, column: 20, scope: !926)
!928 = !DILocation(line: 134, column: 23, scope: !926)
!929 = !DILocation(line: 134, column: 12, scope: !926)
!930 = !DILocation(line: 134, column: 5, scope: !926)
!931 = distinct !DISubprogram(name: "__nesf2", scope: !7, file: !7, line: 138, type: !138, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!932 = !DILocation(line: 139, column: 20, scope: !931)
!933 = !DILocation(line: 139, column: 23, scope: !931)
!934 = !DILocation(line: 139, column: 12, scope: !931)
!935 = !DILocation(line: 139, column: 5, scope: !931)
!936 = distinct !DISubprogram(name: "__gtsf2", scope: !7, file: !7, line: 143, type: !138, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !139)
!937 = !DILocation(line: 144, column: 20, scope: !936)
!938 = !DILocation(line: 144, column: 23, scope: !936)
!939 = !DILocation(line: 144, column: 12, scope: !936)
!940 = !DILocation(line: 144, column: 5, scope: !936)
!941 = distinct !DISubprogram(name: "__divdf3", scope: !9, file: !9, line: 25, type: !138, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !139)
!942 = !DILocation(line: 27, column: 42, scope: !941)
!943 = !DILocation(line: 27, column: 36, scope: !941)
!944 = !DILocation(line: 27, column: 45, scope: !941)
!945 = !DILocation(line: 27, column: 64, scope: !941)
!946 = !DILocation(line: 27, column: 24, scope: !941)
!947 = !DILocation(line: 28, column: 42, scope: !941)
!948 = !DILocation(line: 28, column: 36, scope: !941)
!949 = !DILocation(line: 28, column: 45, scope: !941)
!950 = !DILocation(line: 28, column: 64, scope: !941)
!951 = !DILocation(line: 28, column: 24, scope: !941)
!952 = !DILocation(line: 29, column: 39, scope: !941)
!953 = !DILocation(line: 29, column: 33, scope: !941)
!954 = !DILocation(line: 29, column: 50, scope: !941)
!955 = !DILocation(line: 29, column: 44, scope: !941)
!956 = !DILocation(line: 29, column: 42, scope: !941)
!957 = !DILocation(line: 29, column: 54, scope: !941)
!958 = !DILocation(line: 29, column: 17, scope: !941)
!959 = !DILocation(line: 31, column: 32, scope: !941)
!960 = !DILocation(line: 31, column: 26, scope: !941)
!961 = !DILocation(line: 31, column: 35, scope: !941)
!962 = !DILocation(line: 31, column: 11, scope: !941)
!963 = !DILocation(line: 32, column: 32, scope: !941)
!964 = !DILocation(line: 32, column: 26, scope: !941)
!965 = !DILocation(line: 32, column: 35, scope: !941)
!966 = !DILocation(line: 32, column: 11, scope: !941)
!967 = !DILocation(line: 33, column: 9, scope: !941)
!968 = !DILocation(line: 36, column: 9, scope: !941)
!969 = !DILocation(line: 36, column: 18, scope: !941)
!970 = !DILocation(line: 36, column: 22, scope: !941)
!971 = !DILocation(line: 36, column: 40, scope: !941)
!972 = !DILocation(line: 36, column: 43, scope: !941)
!973 = !DILocation(line: 36, column: 52, scope: !941)
!974 = !DILocation(line: 36, column: 56, scope: !941)
!975 = !DILocation(line: 38, column: 34, scope: !941)
!976 = !DILocation(line: 38, column: 28, scope: !941)
!977 = !DILocation(line: 38, column: 37, scope: !941)
!978 = !DILocation(line: 38, column: 21, scope: !941)
!979 = !DILocation(line: 39, column: 34, scope: !941)
!980 = !DILocation(line: 39, column: 28, scope: !941)
!981 = !DILocation(line: 39, column: 37, scope: !941)
!982 = !DILocation(line: 39, column: 21, scope: !941)
!983 = !DILocation(line: 42, column: 13, scope: !941)
!984 = !DILocation(line: 42, column: 18, scope: !941)
!985 = !DILocation(line: 42, column: 49, scope: !941)
!986 = !DILocation(line: 42, column: 43, scope: !941)
!987 = !DILocation(line: 42, column: 52, scope: !941)
!988 = !DILocation(line: 42, column: 35, scope: !941)
!989 = !DILocation(line: 42, column: 28, scope: !941)
!990 = !DILocation(line: 44, column: 13, scope: !941)
!991 = !DILocation(line: 44, column: 18, scope: !941)
!992 = !DILocation(line: 44, column: 49, scope: !941)
!993 = !DILocation(line: 44, column: 43, scope: !941)
!994 = !DILocation(line: 44, column: 52, scope: !941)
!995 = !DILocation(line: 44, column: 35, scope: !941)
!996 = !DILocation(line: 44, column: 28, scope: !941)
!997 = !DILocation(line: 46, column: 13, scope: !941)
!998 = !DILocation(line: 46, column: 18, scope: !941)
!999 = !DILocation(line: 48, column: 17, scope: !941)
!1000 = !DILocation(line: 48, column: 22, scope: !941)
!1001 = !DILocation(line: 48, column: 40, scope: !941)
!1002 = !DILocation(line: 48, column: 33, scope: !941)
!1003 = !DILocation(line: 50, column: 33, scope: !941)
!1004 = !DILocation(line: 50, column: 40, scope: !941)
!1005 = !DILocation(line: 50, column: 38, scope: !941)
!1006 = !DILocation(line: 50, column: 25, scope: !941)
!1007 = !DILocation(line: 50, column: 18, scope: !941)
!1008 = !DILocation(line: 54, column: 13, scope: !941)
!1009 = !DILocation(line: 54, column: 18, scope: !941)
!1010 = !DILocation(line: 54, column: 44, scope: !941)
!1011 = !DILocation(line: 54, column: 36, scope: !941)
!1012 = !DILocation(line: 54, column: 29, scope: !941)
!1013 = !DILocation(line: 56, column: 14, scope: !941)
!1014 = !DILocation(line: 56, column: 13, scope: !941)
!1015 = !DILocation(line: 58, column: 18, scope: !941)
!1016 = !DILocation(line: 58, column: 17, scope: !941)
!1017 = !DILocation(line: 58, column: 31, scope: !941)
!1018 = !DILocation(line: 58, column: 24, scope: !941)
!1019 = !DILocation(line: 60, column: 33, scope: !941)
!1020 = !DILocation(line: 60, column: 25, scope: !941)
!1021 = !DILocation(line: 60, column: 18, scope: !941)
!1022 = !DILocation(line: 63, column: 14, scope: !941)
!1023 = !DILocation(line: 63, column: 13, scope: !941)
!1024 = !DILocation(line: 63, column: 44, scope: !941)
!1025 = !DILocation(line: 63, column: 42, scope: !941)
!1026 = !DILocation(line: 63, column: 27, scope: !941)
!1027 = !DILocation(line: 63, column: 20, scope: !941)
!1028 = !DILocation(line: 68, column: 13, scope: !941)
!1029 = !DILocation(line: 68, column: 18, scope: !941)
!1030 = !DILocation(line: 68, column: 42, scope: !941)
!1031 = !DILocation(line: 68, column: 39, scope: !941)
!1032 = !DILocation(line: 68, column: 33, scope: !941)
!1033 = !DILocation(line: 69, column: 13, scope: !941)
!1034 = !DILocation(line: 69, column: 18, scope: !941)
!1035 = !DILocation(line: 69, column: 42, scope: !941)
!1036 = !DILocation(line: 69, column: 39, scope: !941)
!1037 = !DILocation(line: 69, column: 33, scope: !941)
!1038 = !DILocation(line: 70, column: 5, scope: !941)
!1039 = !DILocation(line: 75, column: 18, scope: !941)
!1040 = !DILocation(line: 76, column: 18, scope: !941)
!1041 = !DILocation(line: 77, column: 28, scope: !941)
!1042 = !DILocation(line: 77, column: 40, scope: !941)
!1043 = !DILocation(line: 77, column: 38, scope: !941)
!1044 = !DILocation(line: 77, column: 52, scope: !941)
!1045 = !DILocation(line: 77, column: 50, scope: !941)
!1046 = !DILocation(line: 77, column: 9, scope: !941)
!1047 = !DILocation(line: 83, column: 27, scope: !941)
!1048 = !DILocation(line: 83, column: 40, scope: !941)
!1049 = !DILocation(line: 83, column: 20, scope: !941)
!1050 = !DILocation(line: 84, column: 47, scope: !941)
!1051 = !DILocation(line: 84, column: 45, scope: !941)
!1052 = !DILocation(line: 84, column: 14, scope: !941)
!1053 = !DILocation(line: 94, column: 32, scope: !941)
!1054 = !DILocation(line: 94, column: 22, scope: !941)
!1055 = !DILocation(line: 94, column: 42, scope: !941)
!1056 = !DILocation(line: 94, column: 40, scope: !941)
!1057 = !DILocation(line: 94, column: 47, scope: !941)
!1058 = !DILocation(line: 94, column: 20, scope: !941)
!1059 = !DILocation(line: 94, column: 18, scope: !941)
!1060 = !DILocation(line: 95, column: 25, scope: !941)
!1061 = !DILocation(line: 95, column: 15, scope: !941)
!1062 = !DILocation(line: 95, column: 35, scope: !941)
!1063 = !DILocation(line: 95, column: 33, scope: !941)
!1064 = !DILocation(line: 95, column: 48, scope: !941)
!1065 = !DILocation(line: 95, column: 13, scope: !941)
!1066 = !DILocation(line: 96, column: 32, scope: !941)
!1067 = !DILocation(line: 96, column: 22, scope: !941)
!1068 = !DILocation(line: 96, column: 42, scope: !941)
!1069 = !DILocation(line: 96, column: 40, scope: !941)
!1070 = !DILocation(line: 96, column: 47, scope: !941)
!1071 = !DILocation(line: 96, column: 20, scope: !941)
!1072 = !DILocation(line: 96, column: 18, scope: !941)
!1073 = !DILocation(line: 97, column: 25, scope: !941)
!1074 = !DILocation(line: 97, column: 15, scope: !941)
!1075 = !DILocation(line: 97, column: 35, scope: !941)
!1076 = !DILocation(line: 97, column: 33, scope: !941)
!1077 = !DILocation(line: 97, column: 48, scope: !941)
!1078 = !DILocation(line: 97, column: 13, scope: !941)
!1079 = !DILocation(line: 98, column: 32, scope: !941)
!1080 = !DILocation(line: 98, column: 22, scope: !941)
!1081 = !DILocation(line: 98, column: 42, scope: !941)
!1082 = !DILocation(line: 98, column: 40, scope: !941)
!1083 = !DILocation(line: 98, column: 47, scope: !941)
!1084 = !DILocation(line: 98, column: 20, scope: !941)
!1085 = !DILocation(line: 98, column: 18, scope: !941)
!1086 = !DILocation(line: 99, column: 25, scope: !941)
!1087 = !DILocation(line: 99, column: 15, scope: !941)
!1088 = !DILocation(line: 99, column: 35, scope: !941)
!1089 = !DILocation(line: 99, column: 33, scope: !941)
!1090 = !DILocation(line: 99, column: 48, scope: !941)
!1091 = !DILocation(line: 99, column: 13, scope: !941)
!1092 = !DILocation(line: 105, column: 12, scope: !941)
!1093 = !DILocation(line: 109, column: 29, scope: !941)
!1094 = !DILocation(line: 109, column: 42, scope: !941)
!1095 = !DILocation(line: 109, column: 20, scope: !941)
!1096 = !DILocation(line: 111, column: 30, scope: !941)
!1097 = !DILocation(line: 111, column: 20, scope: !941)
!1098 = !DILocation(line: 111, column: 38, scope: !941)
!1099 = !DILocation(line: 111, column: 37, scope: !941)
!1100 = !DILocation(line: 111, column: 56, scope: !941)
!1101 = !DILocation(line: 111, column: 46, scope: !941)
!1102 = !DILocation(line: 111, column: 64, scope: !941)
!1103 = !DILocation(line: 111, column: 63, scope: !941)
!1104 = !DILocation(line: 111, column: 71, scope: !941)
!1105 = !DILocation(line: 111, column: 43, scope: !941)
!1106 = !DILocation(line: 111, column: 18, scope: !941)
!1107 = !DILocation(line: 111, column: 16, scope: !941)
!1108 = !DILocation(line: 112, column: 20, scope: !941)
!1109 = !DILocation(line: 112, column: 31, scope: !941)
!1110 = !DILocation(line: 112, column: 14, scope: !941)
!1111 = !DILocation(line: 113, column: 20, scope: !941)
!1112 = !DILocation(line: 113, column: 14, scope: !941)
!1113 = !DILocation(line: 114, column: 28, scope: !941)
!1114 = !DILocation(line: 114, column: 18, scope: !941)
!1115 = !DILocation(line: 114, column: 36, scope: !941)
!1116 = !DILocation(line: 114, column: 35, scope: !941)
!1117 = !DILocation(line: 114, column: 53, scope: !941)
!1118 = !DILocation(line: 114, column: 43, scope: !941)
!1119 = !DILocation(line: 114, column: 61, scope: !941)
!1120 = !DILocation(line: 114, column: 60, scope: !941)
!1121 = !DILocation(line: 114, column: 65, scope: !941)
!1122 = !DILocation(line: 114, column: 40, scope: !941)
!1123 = !DILocation(line: 114, column: 16, scope: !941)
!1124 = !DILocation(line: 121, column: 16, scope: !941)
!1125 = !DILocation(line: 136, column: 18, scope: !941)
!1126 = !DILocation(line: 136, column: 31, scope: !941)
!1127 = !DILocation(line: 136, column: 37, scope: !941)
!1128 = !DILocation(line: 136, column: 5, scope: !941)
!1129 = !DILocation(line: 152, column: 9, scope: !941)
!1130 = !DILocation(line: 152, column: 18, scope: !941)
!1131 = !DILocation(line: 153, column: 21, scope: !941)
!1132 = !DILocation(line: 153, column: 34, scope: !941)
!1133 = !DILocation(line: 153, column: 43, scope: !941)
!1134 = !DILocation(line: 153, column: 54, scope: !941)
!1135 = !DILocation(line: 153, column: 52, scope: !941)
!1136 = !DILocation(line: 153, column: 41, scope: !941)
!1137 = !DILocation(line: 153, column: 18, scope: !941)
!1138 = !DILocation(line: 154, column: 25, scope: !941)
!1139 = !DILocation(line: 155, column: 5, scope: !941)
!1140 = !DILocation(line: 156, column: 18, scope: !941)
!1141 = !DILocation(line: 157, column: 21, scope: !941)
!1142 = !DILocation(line: 157, column: 34, scope: !941)
!1143 = !DILocation(line: 157, column: 43, scope: !941)
!1144 = !DILocation(line: 157, column: 54, scope: !941)
!1145 = !DILocation(line: 157, column: 52, scope: !941)
!1146 = !DILocation(line: 157, column: 41, scope: !941)
!1147 = !DILocation(line: 157, column: 18, scope: !941)
!1148 = !DILocation(line: 160, column: 33, scope: !941)
!1149 = !DILocation(line: 160, column: 50, scope: !941)
!1150 = !DILocation(line: 160, column: 15, scope: !941)
!1151 = !DILocation(line: 162, column: 9, scope: !941)
!1152 = !DILocation(line: 162, column: 25, scope: !941)
!1153 = !DILocation(line: 164, column: 33, scope: !941)
!1154 = !DILocation(line: 164, column: 31, scope: !941)
!1155 = !DILocation(line: 164, column: 16, scope: !941)
!1156 = !DILocation(line: 164, column: 9, scope: !941)
!1157 = !DILocation(line: 167, column: 14, scope: !941)
!1158 = !DILocation(line: 167, column: 30, scope: !941)
!1159 = !DILocation(line: 170, column: 24, scope: !941)
!1160 = !DILocation(line: 170, column: 16, scope: !941)
!1161 = !DILocation(line: 170, column: 9, scope: !941)
!1162 = !DILocation(line: 174, column: 29, scope: !941)
!1163 = !DILocation(line: 174, column: 38, scope: !941)
!1164 = !DILocation(line: 174, column: 46, scope: !941)
!1165 = !DILocation(line: 174, column: 44, scope: !941)
!1166 = !DILocation(line: 174, column: 20, scope: !941)
!1167 = !DILocation(line: 176, column: 27, scope: !941)
!1168 = !DILocation(line: 176, column: 36, scope: !941)
!1169 = !DILocation(line: 176, column: 15, scope: !941)
!1170 = !DILocation(line: 178, column: 29, scope: !941)
!1171 = !DILocation(line: 178, column: 22, scope: !941)
!1172 = !DILocation(line: 178, column: 45, scope: !941)
!1173 = !DILocation(line: 178, column: 19, scope: !941)
!1174 = !DILocation(line: 180, column: 22, scope: !941)
!1175 = !DILocation(line: 180, column: 19, scope: !941)
!1176 = !DILocation(line: 182, column: 39, scope: !941)
!1177 = !DILocation(line: 182, column: 51, scope: !941)
!1178 = !DILocation(line: 182, column: 49, scope: !941)
!1179 = !DILocation(line: 182, column: 31, scope: !941)
!1180 = !DILocation(line: 182, column: 22, scope: !941)
!1181 = !DILocation(line: 183, column: 16, scope: !941)
!1182 = !DILocation(line: 183, column: 9, scope: !941)
!1183 = !DILocation(line: 185, column: 1, scope: !941)
!1184 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !139)
!1185 = !DILocation(line: 232, column: 44, scope: !1184)
!1186 = !DILocation(line: 232, column: 50, scope: !1184)
!1187 = !DILocation(line: 233, column: 16, scope: !1184)
!1188 = !DILocation(line: 233, column: 5, scope: !1184)
!1189 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !139)
!1190 = !DILocation(line: 237, column: 44, scope: !1189)
!1191 = !DILocation(line: 237, column: 50, scope: !1189)
!1192 = !DILocation(line: 238, column: 16, scope: !1189)
!1193 = !DILocation(line: 238, column: 5, scope: !1189)
!1194 = distinct !DISubprogram(name: "normalize", scope: !372, file: !372, line: 241, type: !138, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !139)
!1195 = !DILocation(line: 242, column: 32, scope: !1194)
!1196 = !DILocation(line: 242, column: 31, scope: !1194)
!1197 = !DILocation(line: 242, column: 23, scope: !1194)
!1198 = !DILocation(line: 242, column: 47, scope: !1194)
!1199 = !DILocation(line: 242, column: 45, scope: !1194)
!1200 = !DILocation(line: 242, column: 15, scope: !1194)
!1201 = !DILocation(line: 243, column: 22, scope: !1194)
!1202 = !DILocation(line: 243, column: 6, scope: !1194)
!1203 = !DILocation(line: 243, column: 18, scope: !1194)
!1204 = !DILocation(line: 244, column: 16, scope: !1194)
!1205 = !DILocation(line: 244, column: 14, scope: !1194)
!1206 = !DILocation(line: 244, column: 5, scope: !1194)
!1207 = distinct !DISubprogram(name: "wideMultiply", scope: !372, file: !372, line: 86, type: !138, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !139)
!1208 = !DILocation(line: 88, column: 28, scope: !1207)
!1209 = !DILocation(line: 88, column: 40, scope: !1207)
!1210 = !DILocation(line: 88, column: 38, scope: !1207)
!1211 = !DILocation(line: 88, column: 20, scope: !1207)
!1212 = !DILocation(line: 89, column: 28, scope: !1207)
!1213 = !DILocation(line: 89, column: 40, scope: !1207)
!1214 = !DILocation(line: 89, column: 38, scope: !1207)
!1215 = !DILocation(line: 89, column: 20, scope: !1207)
!1216 = !DILocation(line: 90, column: 28, scope: !1207)
!1217 = !DILocation(line: 90, column: 40, scope: !1207)
!1218 = !DILocation(line: 90, column: 38, scope: !1207)
!1219 = !DILocation(line: 90, column: 20, scope: !1207)
!1220 = !DILocation(line: 91, column: 28, scope: !1207)
!1221 = !DILocation(line: 91, column: 40, scope: !1207)
!1222 = !DILocation(line: 91, column: 38, scope: !1207)
!1223 = !DILocation(line: 91, column: 20, scope: !1207)
!1224 = !DILocation(line: 93, column: 25, scope: !1207)
!1225 = !DILocation(line: 93, column: 20, scope: !1207)
!1226 = !DILocation(line: 94, column: 25, scope: !1207)
!1227 = !DILocation(line: 94, column: 41, scope: !1207)
!1228 = !DILocation(line: 94, column: 39, scope: !1207)
!1229 = !DILocation(line: 94, column: 57, scope: !1207)
!1230 = !DILocation(line: 94, column: 55, scope: !1207)
!1231 = !DILocation(line: 94, column: 20, scope: !1207)
!1232 = !DILocation(line: 95, column: 11, scope: !1207)
!1233 = !DILocation(line: 95, column: 17, scope: !1207)
!1234 = !DILocation(line: 95, column: 20, scope: !1207)
!1235 = !DILocation(line: 95, column: 14, scope: !1207)
!1236 = !DILocation(line: 95, column: 6, scope: !1207)
!1237 = !DILocation(line: 95, column: 9, scope: !1207)
!1238 = !DILocation(line: 97, column: 11, scope: !1207)
!1239 = !DILocation(line: 97, column: 27, scope: !1207)
!1240 = !DILocation(line: 97, column: 25, scope: !1207)
!1241 = !DILocation(line: 97, column: 43, scope: !1207)
!1242 = !DILocation(line: 97, column: 41, scope: !1207)
!1243 = !DILocation(line: 97, column: 56, scope: !1207)
!1244 = !DILocation(line: 97, column: 54, scope: !1207)
!1245 = !DILocation(line: 97, column: 6, scope: !1207)
!1246 = !DILocation(line: 97, column: 9, scope: !1207)
!1247 = !DILocation(line: 98, column: 1, scope: !1207)
!1248 = distinct !DISubprogram(name: "rep_clz", scope: !372, file: !372, line: 69, type: !138, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !139)
!1249 = !DILocation(line: 73, column: 9, scope: !1248)
!1250 = !DILocation(line: 73, column: 11, scope: !1248)
!1251 = !DILocation(line: 74, column: 30, scope: !1248)
!1252 = !DILocation(line: 74, column: 32, scope: !1248)
!1253 = !DILocation(line: 74, column: 16, scope: !1248)
!1254 = !DILocation(line: 74, column: 9, scope: !1248)
!1255 = !DILocation(line: 76, column: 35, scope: !1248)
!1256 = !DILocation(line: 76, column: 37, scope: !1248)
!1257 = !DILocation(line: 76, column: 21, scope: !1248)
!1258 = !DILocation(line: 76, column: 19, scope: !1248)
!1259 = !DILocation(line: 76, column: 9, scope: !1248)
!1260 = !DILocation(line: 78, column: 1, scope: !1248)
!1261 = distinct !DISubprogram(name: "__divsf3", scope: !11, file: !11, line: 25, type: !138, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !139)
!1262 = !DILocation(line: 27, column: 42, scope: !1261)
!1263 = !DILocation(line: 27, column: 36, scope: !1261)
!1264 = !DILocation(line: 27, column: 45, scope: !1261)
!1265 = !DILocation(line: 27, column: 64, scope: !1261)
!1266 = !DILocation(line: 27, column: 24, scope: !1261)
!1267 = !DILocation(line: 28, column: 42, scope: !1261)
!1268 = !DILocation(line: 28, column: 36, scope: !1261)
!1269 = !DILocation(line: 28, column: 45, scope: !1261)
!1270 = !DILocation(line: 28, column: 64, scope: !1261)
!1271 = !DILocation(line: 28, column: 24, scope: !1261)
!1272 = !DILocation(line: 29, column: 39, scope: !1261)
!1273 = !DILocation(line: 29, column: 33, scope: !1261)
!1274 = !DILocation(line: 29, column: 50, scope: !1261)
!1275 = !DILocation(line: 29, column: 44, scope: !1261)
!1276 = !DILocation(line: 29, column: 42, scope: !1261)
!1277 = !DILocation(line: 29, column: 54, scope: !1261)
!1278 = !DILocation(line: 29, column: 17, scope: !1261)
!1279 = !DILocation(line: 31, column: 32, scope: !1261)
!1280 = !DILocation(line: 31, column: 26, scope: !1261)
!1281 = !DILocation(line: 31, column: 35, scope: !1261)
!1282 = !DILocation(line: 31, column: 11, scope: !1261)
!1283 = !DILocation(line: 32, column: 32, scope: !1261)
!1284 = !DILocation(line: 32, column: 26, scope: !1261)
!1285 = !DILocation(line: 32, column: 35, scope: !1261)
!1286 = !DILocation(line: 32, column: 11, scope: !1261)
!1287 = !DILocation(line: 33, column: 9, scope: !1261)
!1288 = !DILocation(line: 36, column: 9, scope: !1261)
!1289 = !DILocation(line: 36, column: 18, scope: !1261)
!1290 = !DILocation(line: 36, column: 22, scope: !1261)
!1291 = !DILocation(line: 36, column: 40, scope: !1261)
!1292 = !DILocation(line: 36, column: 43, scope: !1261)
!1293 = !DILocation(line: 36, column: 52, scope: !1261)
!1294 = !DILocation(line: 36, column: 56, scope: !1261)
!1295 = !DILocation(line: 38, column: 34, scope: !1261)
!1296 = !DILocation(line: 38, column: 28, scope: !1261)
!1297 = !DILocation(line: 38, column: 37, scope: !1261)
!1298 = !DILocation(line: 38, column: 21, scope: !1261)
!1299 = !DILocation(line: 39, column: 34, scope: !1261)
!1300 = !DILocation(line: 39, column: 28, scope: !1261)
!1301 = !DILocation(line: 39, column: 37, scope: !1261)
!1302 = !DILocation(line: 39, column: 21, scope: !1261)
!1303 = !DILocation(line: 42, column: 13, scope: !1261)
!1304 = !DILocation(line: 42, column: 18, scope: !1261)
!1305 = !DILocation(line: 42, column: 49, scope: !1261)
!1306 = !DILocation(line: 42, column: 43, scope: !1261)
!1307 = !DILocation(line: 42, column: 52, scope: !1261)
!1308 = !DILocation(line: 42, column: 35, scope: !1261)
!1309 = !DILocation(line: 42, column: 28, scope: !1261)
!1310 = !DILocation(line: 44, column: 13, scope: !1261)
!1311 = !DILocation(line: 44, column: 18, scope: !1261)
!1312 = !DILocation(line: 44, column: 49, scope: !1261)
!1313 = !DILocation(line: 44, column: 43, scope: !1261)
!1314 = !DILocation(line: 44, column: 52, scope: !1261)
!1315 = !DILocation(line: 44, column: 35, scope: !1261)
!1316 = !DILocation(line: 44, column: 28, scope: !1261)
!1317 = !DILocation(line: 46, column: 13, scope: !1261)
!1318 = !DILocation(line: 46, column: 18, scope: !1261)
!1319 = !DILocation(line: 48, column: 17, scope: !1261)
!1320 = !DILocation(line: 48, column: 22, scope: !1261)
!1321 = !DILocation(line: 48, column: 40, scope: !1261)
!1322 = !DILocation(line: 48, column: 33, scope: !1261)
!1323 = !DILocation(line: 50, column: 33, scope: !1261)
!1324 = !DILocation(line: 50, column: 40, scope: !1261)
!1325 = !DILocation(line: 50, column: 38, scope: !1261)
!1326 = !DILocation(line: 50, column: 25, scope: !1261)
!1327 = !DILocation(line: 50, column: 18, scope: !1261)
!1328 = !DILocation(line: 54, column: 13, scope: !1261)
!1329 = !DILocation(line: 54, column: 18, scope: !1261)
!1330 = !DILocation(line: 54, column: 44, scope: !1261)
!1331 = !DILocation(line: 54, column: 36, scope: !1261)
!1332 = !DILocation(line: 54, column: 29, scope: !1261)
!1333 = !DILocation(line: 56, column: 14, scope: !1261)
!1334 = !DILocation(line: 56, column: 13, scope: !1261)
!1335 = !DILocation(line: 58, column: 18, scope: !1261)
!1336 = !DILocation(line: 58, column: 17, scope: !1261)
!1337 = !DILocation(line: 58, column: 31, scope: !1261)
!1338 = !DILocation(line: 58, column: 24, scope: !1261)
!1339 = !DILocation(line: 60, column: 33, scope: !1261)
!1340 = !DILocation(line: 60, column: 25, scope: !1261)
!1341 = !DILocation(line: 60, column: 18, scope: !1261)
!1342 = !DILocation(line: 63, column: 14, scope: !1261)
!1343 = !DILocation(line: 63, column: 13, scope: !1261)
!1344 = !DILocation(line: 63, column: 44, scope: !1261)
!1345 = !DILocation(line: 63, column: 42, scope: !1261)
!1346 = !DILocation(line: 63, column: 27, scope: !1261)
!1347 = !DILocation(line: 63, column: 20, scope: !1261)
!1348 = !DILocation(line: 68, column: 13, scope: !1261)
!1349 = !DILocation(line: 68, column: 18, scope: !1261)
!1350 = !DILocation(line: 68, column: 42, scope: !1261)
!1351 = !DILocation(line: 68, column: 39, scope: !1261)
!1352 = !DILocation(line: 68, column: 33, scope: !1261)
!1353 = !DILocation(line: 69, column: 13, scope: !1261)
!1354 = !DILocation(line: 69, column: 18, scope: !1261)
!1355 = !DILocation(line: 69, column: 42, scope: !1261)
!1356 = !DILocation(line: 69, column: 39, scope: !1261)
!1357 = !DILocation(line: 69, column: 33, scope: !1261)
!1358 = !DILocation(line: 70, column: 5, scope: !1261)
!1359 = !DILocation(line: 75, column: 18, scope: !1261)
!1360 = !DILocation(line: 76, column: 18, scope: !1261)
!1361 = !DILocation(line: 77, column: 28, scope: !1261)
!1362 = !DILocation(line: 77, column: 40, scope: !1261)
!1363 = !DILocation(line: 77, column: 38, scope: !1261)
!1364 = !DILocation(line: 77, column: 52, scope: !1261)
!1365 = !DILocation(line: 77, column: 50, scope: !1261)
!1366 = !DILocation(line: 77, column: 9, scope: !1261)
!1367 = !DILocation(line: 83, column: 21, scope: !1261)
!1368 = !DILocation(line: 83, column: 34, scope: !1261)
!1369 = !DILocation(line: 83, column: 14, scope: !1261)
!1370 = !DILocation(line: 84, column: 50, scope: !1261)
!1371 = !DILocation(line: 84, column: 48, scope: !1261)
!1372 = !DILocation(line: 84, column: 14, scope: !1261)
!1373 = !DILocation(line: 94, column: 30, scope: !1261)
!1374 = !DILocation(line: 94, column: 20, scope: !1261)
!1375 = !DILocation(line: 94, column: 43, scope: !1261)
!1376 = !DILocation(line: 94, column: 41, scope: !1261)
!1377 = !DILocation(line: 94, column: 48, scope: !1261)
!1378 = !DILocation(line: 94, column: 18, scope: !1261)
!1379 = !DILocation(line: 94, column: 16, scope: !1261)
!1380 = !DILocation(line: 95, column: 28, scope: !1261)
!1381 = !DILocation(line: 95, column: 18, scope: !1261)
!1382 = !DILocation(line: 95, column: 41, scope: !1261)
!1383 = !DILocation(line: 95, column: 39, scope: !1261)
!1384 = !DILocation(line: 95, column: 52, scope: !1261)
!1385 = !DILocation(line: 95, column: 16, scope: !1261)
!1386 = !DILocation(line: 96, column: 30, scope: !1261)
!1387 = !DILocation(line: 96, column: 20, scope: !1261)
!1388 = !DILocation(line: 96, column: 43, scope: !1261)
!1389 = !DILocation(line: 96, column: 41, scope: !1261)
!1390 = !DILocation(line: 96, column: 48, scope: !1261)
!1391 = !DILocation(line: 96, column: 18, scope: !1261)
!1392 = !DILocation(line: 96, column: 16, scope: !1261)
!1393 = !DILocation(line: 97, column: 28, scope: !1261)
!1394 = !DILocation(line: 97, column: 18, scope: !1261)
!1395 = !DILocation(line: 97, column: 41, scope: !1261)
!1396 = !DILocation(line: 97, column: 39, scope: !1261)
!1397 = !DILocation(line: 97, column: 52, scope: !1261)
!1398 = !DILocation(line: 97, column: 16, scope: !1261)
!1399 = !DILocation(line: 98, column: 30, scope: !1261)
!1400 = !DILocation(line: 98, column: 20, scope: !1261)
!1401 = !DILocation(line: 98, column: 43, scope: !1261)
!1402 = !DILocation(line: 98, column: 41, scope: !1261)
!1403 = !DILocation(line: 98, column: 48, scope: !1261)
!1404 = !DILocation(line: 98, column: 18, scope: !1261)
!1405 = !DILocation(line: 98, column: 16, scope: !1261)
!1406 = !DILocation(line: 99, column: 28, scope: !1261)
!1407 = !DILocation(line: 99, column: 18, scope: !1261)
!1408 = !DILocation(line: 99, column: 41, scope: !1261)
!1409 = !DILocation(line: 99, column: 39, scope: !1261)
!1410 = !DILocation(line: 99, column: 52, scope: !1261)
!1411 = !DILocation(line: 99, column: 16, scope: !1261)
!1412 = !DILocation(line: 107, column: 16, scope: !1261)
!1413 = !DILocation(line: 121, column: 32, scope: !1261)
!1414 = !DILocation(line: 121, column: 22, scope: !1261)
!1415 = !DILocation(line: 121, column: 44, scope: !1261)
!1416 = !DILocation(line: 121, column: 57, scope: !1261)
!1417 = !DILocation(line: 121, column: 43, scope: !1261)
!1418 = !DILocation(line: 121, column: 42, scope: !1261)
!1419 = !DILocation(line: 121, column: 63, scope: !1261)
!1420 = !DILocation(line: 121, column: 11, scope: !1261)
!1421 = !DILocation(line: 137, column: 9, scope: !1261)
!1422 = !DILocation(line: 137, column: 18, scope: !1261)
!1423 = !DILocation(line: 138, column: 21, scope: !1261)
!1424 = !DILocation(line: 138, column: 34, scope: !1261)
!1425 = !DILocation(line: 138, column: 43, scope: !1261)
!1426 = !DILocation(line: 138, column: 54, scope: !1261)
!1427 = !DILocation(line: 138, column: 52, scope: !1261)
!1428 = !DILocation(line: 138, column: 41, scope: !1261)
!1429 = !DILocation(line: 138, column: 18, scope: !1261)
!1430 = !DILocation(line: 139, column: 25, scope: !1261)
!1431 = !DILocation(line: 140, column: 5, scope: !1261)
!1432 = !DILocation(line: 141, column: 18, scope: !1261)
!1433 = !DILocation(line: 142, column: 21, scope: !1261)
!1434 = !DILocation(line: 142, column: 34, scope: !1261)
!1435 = !DILocation(line: 142, column: 43, scope: !1261)
!1436 = !DILocation(line: 142, column: 54, scope: !1261)
!1437 = !DILocation(line: 142, column: 52, scope: !1261)
!1438 = !DILocation(line: 142, column: 41, scope: !1261)
!1439 = !DILocation(line: 142, column: 18, scope: !1261)
!1440 = !DILocation(line: 145, column: 33, scope: !1261)
!1441 = !DILocation(line: 145, column: 50, scope: !1261)
!1442 = !DILocation(line: 145, column: 15, scope: !1261)
!1443 = !DILocation(line: 147, column: 9, scope: !1261)
!1444 = !DILocation(line: 147, column: 25, scope: !1261)
!1445 = !DILocation(line: 149, column: 33, scope: !1261)
!1446 = !DILocation(line: 149, column: 31, scope: !1261)
!1447 = !DILocation(line: 149, column: 16, scope: !1261)
!1448 = !DILocation(line: 149, column: 9, scope: !1261)
!1449 = !DILocation(line: 152, column: 14, scope: !1261)
!1450 = !DILocation(line: 152, column: 30, scope: !1261)
!1451 = !DILocation(line: 155, column: 24, scope: !1261)
!1452 = !DILocation(line: 155, column: 16, scope: !1261)
!1453 = !DILocation(line: 155, column: 9, scope: !1261)
!1454 = !DILocation(line: 159, column: 29, scope: !1261)
!1455 = !DILocation(line: 159, column: 38, scope: !1261)
!1456 = !DILocation(line: 159, column: 46, scope: !1261)
!1457 = !DILocation(line: 159, column: 44, scope: !1261)
!1458 = !DILocation(line: 159, column: 20, scope: !1261)
!1459 = !DILocation(line: 161, column: 27, scope: !1261)
!1460 = !DILocation(line: 161, column: 36, scope: !1261)
!1461 = !DILocation(line: 161, column: 15, scope: !1261)
!1462 = !DILocation(line: 163, column: 29, scope: !1261)
!1463 = !DILocation(line: 163, column: 45, scope: !1261)
!1464 = !DILocation(line: 163, column: 19, scope: !1261)
!1465 = !DILocation(line: 165, column: 22, scope: !1261)
!1466 = !DILocation(line: 165, column: 19, scope: !1261)
!1467 = !DILocation(line: 167, column: 24, scope: !1261)
!1468 = !DILocation(line: 167, column: 36, scope: !1261)
!1469 = !DILocation(line: 167, column: 34, scope: !1261)
!1470 = !DILocation(line: 167, column: 16, scope: !1261)
!1471 = !DILocation(line: 167, column: 9, scope: !1261)
!1472 = !DILocation(line: 169, column: 1, scope: !1261)
!1473 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !139)
!1474 = !DILocation(line: 232, column: 44, scope: !1473)
!1475 = !DILocation(line: 232, column: 50, scope: !1473)
!1476 = !DILocation(line: 233, column: 16, scope: !1473)
!1477 = !DILocation(line: 233, column: 5, scope: !1473)
!1478 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !139)
!1479 = !DILocation(line: 237, column: 44, scope: !1478)
!1480 = !DILocation(line: 237, column: 50, scope: !1478)
!1481 = !DILocation(line: 238, column: 16, scope: !1478)
!1482 = !DILocation(line: 238, column: 5, scope: !1478)
!1483 = distinct !DISubprogram(name: "normalize", scope: !372, file: !372, line: 241, type: !138, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !139)
!1484 = !DILocation(line: 242, column: 32, scope: !1483)
!1485 = !DILocation(line: 242, column: 31, scope: !1483)
!1486 = !DILocation(line: 242, column: 23, scope: !1483)
!1487 = !DILocation(line: 242, column: 47, scope: !1483)
!1488 = !DILocation(line: 242, column: 45, scope: !1483)
!1489 = !DILocation(line: 242, column: 15, scope: !1483)
!1490 = !DILocation(line: 243, column: 22, scope: !1483)
!1491 = !DILocation(line: 243, column: 6, scope: !1483)
!1492 = !DILocation(line: 243, column: 18, scope: !1483)
!1493 = !DILocation(line: 244, column: 16, scope: !1483)
!1494 = !DILocation(line: 244, column: 14, scope: !1483)
!1495 = !DILocation(line: 244, column: 5, scope: !1483)
!1496 = distinct !DISubprogram(name: "rep_clz", scope: !372, file: !372, line: 49, type: !138, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !139)
!1497 = !DILocation(line: 50, column: 26, scope: !1496)
!1498 = !DILocation(line: 50, column: 12, scope: !1496)
!1499 = !DILocation(line: 50, column: 5, scope: !1496)
!1500 = distinct !DISubprogram(name: "__extendhfsf2", scope: !13, file: !13, line: 19, type: !138, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !139)
!1501 = !DILocation(line: 20, column: 28, scope: !1500)
!1502 = !DILocation(line: 20, column: 12, scope: !1500)
!1503 = !DILocation(line: 20, column: 5, scope: !1500)
!1504 = distinct !DISubprogram(name: "__extendXfYf2__", scope: !1505, file: !1505, line: 41, type: !138, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !139)
!1505 = !DIFile(filename: "../fp_extend_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "782f110678e58d1f3d0cad0e8fd5cc59")
!1506 = !DILocation(line: 44, column: 15, scope: !1504)
!1507 = !DILocation(line: 45, column: 15, scope: !1504)
!1508 = !DILocation(line: 46, column: 15, scope: !1504)
!1509 = !DILocation(line: 47, column: 15, scope: !1504)
!1510 = !DILocation(line: 49, column: 21, scope: !1504)
!1511 = !DILocation(line: 50, column: 21, scope: !1504)
!1512 = !DILocation(line: 51, column: 21, scope: !1504)
!1513 = !DILocation(line: 52, column: 21, scope: !1504)
!1514 = !DILocation(line: 53, column: 21, scope: !1504)
!1515 = !DILocation(line: 54, column: 21, scope: !1504)
!1516 = !DILocation(line: 56, column: 15, scope: !1504)
!1517 = !DILocation(line: 57, column: 15, scope: !1504)
!1518 = !DILocation(line: 58, column: 15, scope: !1504)
!1519 = !DILocation(line: 59, column: 15, scope: !1504)
!1520 = !DILocation(line: 61, column: 21, scope: !1504)
!1521 = !DILocation(line: 64, column: 37, scope: !1504)
!1522 = !DILocation(line: 64, column: 28, scope: !1504)
!1523 = !DILocation(line: 64, column: 21, scope: !1504)
!1524 = !DILocation(line: 65, column: 28, scope: !1504)
!1525 = !DILocation(line: 65, column: 33, scope: !1504)
!1526 = !DILocation(line: 65, column: 21, scope: !1504)
!1527 = !DILocation(line: 66, column: 28, scope: !1504)
!1528 = !DILocation(line: 66, column: 33, scope: !1504)
!1529 = !DILocation(line: 66, column: 21, scope: !1504)
!1530 = !DILocation(line: 71, column: 21, scope: !1504)
!1531 = !DILocation(line: 71, column: 26, scope: !1504)
!1532 = !DILocation(line: 71, column: 9, scope: !1504)
!1533 = !DILocation(line: 71, column: 42, scope: !1504)
!1534 = !DILocation(line: 75, column: 32, scope: !1504)
!1535 = !DILocation(line: 75, column: 21, scope: !1504)
!1536 = !DILocation(line: 75, column: 37, scope: !1504)
!1537 = !DILocation(line: 75, column: 19, scope: !1504)
!1538 = !DILocation(line: 76, column: 19, scope: !1504)
!1539 = !DILocation(line: 77, column: 5, scope: !1504)
!1540 = !DILocation(line: 79, column: 14, scope: !1504)
!1541 = !DILocation(line: 79, column: 19, scope: !1504)
!1542 = !DILocation(line: 84, column: 19, scope: !1504)
!1543 = !DILocation(line: 85, column: 34, scope: !1504)
!1544 = !DILocation(line: 85, column: 39, scope: !1504)
!1545 = !DILocation(line: 85, column: 50, scope: !1504)
!1546 = !DILocation(line: 85, column: 19, scope: !1504)
!1547 = !DILocation(line: 86, column: 34, scope: !1504)
!1548 = !DILocation(line: 86, column: 39, scope: !1504)
!1549 = !DILocation(line: 86, column: 53, scope: !1504)
!1550 = !DILocation(line: 86, column: 19, scope: !1504)
!1551 = !DILocation(line: 87, column: 5, scope: !1504)
!1552 = !DILocation(line: 89, column: 14, scope: !1504)
!1553 = !DILocation(line: 93, column: 41, scope: !1504)
!1554 = !DILocation(line: 93, column: 27, scope: !1504)
!1555 = !DILocation(line: 93, column: 47, scope: !1504)
!1556 = !DILocation(line: 93, column: 19, scope: !1504)
!1557 = !DILocation(line: 94, column: 32, scope: !1504)
!1558 = !DILocation(line: 94, column: 21, scope: !1504)
!1559 = !DILocation(line: 94, column: 67, scope: !1504)
!1560 = !DILocation(line: 94, column: 65, scope: !1504)
!1561 = !DILocation(line: 94, column: 37, scope: !1504)
!1562 = !DILocation(line: 94, column: 19, scope: !1504)
!1563 = !DILocation(line: 95, column: 19, scope: !1504)
!1564 = !DILocation(line: 96, column: 62, scope: !1504)
!1565 = !DILocation(line: 96, column: 60, scope: !1504)
!1566 = !DILocation(line: 96, column: 68, scope: !1504)
!1567 = !DILocation(line: 96, column: 19, scope: !1504)
!1568 = !DILocation(line: 97, column: 33, scope: !1504)
!1569 = !DILocation(line: 97, column: 48, scope: !1504)
!1570 = !DILocation(line: 97, column: 19, scope: !1504)
!1571 = !DILocation(line: 98, column: 5, scope: !1504)
!1572 = !DILocation(line: 102, column: 19, scope: !1504)
!1573 = !DILocation(line: 106, column: 30, scope: !1504)
!1574 = !DILocation(line: 106, column: 53, scope: !1504)
!1575 = !DILocation(line: 106, column: 42, scope: !1504)
!1576 = !DILocation(line: 106, column: 58, scope: !1504)
!1577 = !DILocation(line: 106, column: 40, scope: !1504)
!1578 = !DILocation(line: 106, column: 21, scope: !1504)
!1579 = !DILocation(line: 107, column: 23, scope: !1504)
!1580 = !DILocation(line: 107, column: 12, scope: !1504)
!1581 = !DILocation(line: 107, column: 5, scope: !1504)
!1582 = distinct !DISubprogram(name: "srcToRep", scope: !1583, file: !1583, line: 78, type: !138, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !139)
!1583 = !DIFile(filename: "../fp_extend.h", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "d4932a0fd0790103e1f317fdc8091d48")
!1584 = !DILocation(line: 79, column: 49, scope: !1582)
!1585 = !DILocation(line: 79, column: 55, scope: !1582)
!1586 = !DILocation(line: 80, column: 16, scope: !1582)
!1587 = !DILocation(line: 80, column: 5, scope: !1582)
!1588 = distinct !DISubprogram(name: "dstFromRep", scope: !1583, file: !1583, line: 83, type: !138, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !139)
!1589 = !DILocation(line: 84, column: 49, scope: !1588)
!1590 = !DILocation(line: 84, column: 55, scope: !1588)
!1591 = !DILocation(line: 85, column: 16, scope: !1588)
!1592 = !DILocation(line: 85, column: 5, scope: !1588)
!1593 = distinct !DISubprogram(name: "__gnu_h2f_ieee", scope: !13, file: !13, line: 23, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !139)
!1594 = !DILocation(line: 24, column: 26, scope: !1593)
!1595 = !DILocation(line: 24, column: 12, scope: !1593)
!1596 = !DILocation(line: 24, column: 5, scope: !1593)
!1597 = distinct !DISubprogram(name: "__extendsfdf2", scope: !15, file: !15, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !139)
!1598 = !DILocation(line: 18, column: 28, scope: !1597)
!1599 = !DILocation(line: 18, column: 12, scope: !1597)
!1600 = !DILocation(line: 18, column: 5, scope: !1597)
!1601 = distinct !DISubprogram(name: "__extendXfYf2__", scope: !1505, file: !1505, line: 41, type: !138, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !139)
!1602 = !DILocation(line: 44, column: 15, scope: !1601)
!1603 = !DILocation(line: 45, column: 15, scope: !1601)
!1604 = !DILocation(line: 46, column: 15, scope: !1601)
!1605 = !DILocation(line: 47, column: 15, scope: !1601)
!1606 = !DILocation(line: 49, column: 21, scope: !1601)
!1607 = !DILocation(line: 50, column: 21, scope: !1601)
!1608 = !DILocation(line: 51, column: 21, scope: !1601)
!1609 = !DILocation(line: 52, column: 21, scope: !1601)
!1610 = !DILocation(line: 53, column: 21, scope: !1601)
!1611 = !DILocation(line: 54, column: 21, scope: !1601)
!1612 = !DILocation(line: 56, column: 15, scope: !1601)
!1613 = !DILocation(line: 57, column: 15, scope: !1601)
!1614 = !DILocation(line: 58, column: 15, scope: !1601)
!1615 = !DILocation(line: 59, column: 15, scope: !1601)
!1616 = !DILocation(line: 61, column: 21, scope: !1601)
!1617 = !DILocation(line: 64, column: 37, scope: !1601)
!1618 = !DILocation(line: 64, column: 28, scope: !1601)
!1619 = !DILocation(line: 64, column: 21, scope: !1601)
!1620 = !DILocation(line: 65, column: 28, scope: !1601)
!1621 = !DILocation(line: 65, column: 33, scope: !1601)
!1622 = !DILocation(line: 65, column: 21, scope: !1601)
!1623 = !DILocation(line: 66, column: 28, scope: !1601)
!1624 = !DILocation(line: 66, column: 33, scope: !1601)
!1625 = !DILocation(line: 66, column: 21, scope: !1601)
!1626 = !DILocation(line: 71, column: 21, scope: !1601)
!1627 = !DILocation(line: 71, column: 26, scope: !1601)
!1628 = !DILocation(line: 71, column: 42, scope: !1601)
!1629 = !DILocation(line: 71, column: 9, scope: !1601)
!1630 = !DILocation(line: 75, column: 32, scope: !1601)
!1631 = !DILocation(line: 75, column: 21, scope: !1601)
!1632 = !DILocation(line: 75, column: 37, scope: !1601)
!1633 = !DILocation(line: 75, column: 19, scope: !1601)
!1634 = !DILocation(line: 76, column: 19, scope: !1601)
!1635 = !DILocation(line: 77, column: 5, scope: !1601)
!1636 = !DILocation(line: 79, column: 14, scope: !1601)
!1637 = !DILocation(line: 79, column: 19, scope: !1601)
!1638 = !DILocation(line: 84, column: 19, scope: !1601)
!1639 = !DILocation(line: 85, column: 34, scope: !1601)
!1640 = !DILocation(line: 85, column: 39, scope: !1601)
!1641 = !DILocation(line: 85, column: 22, scope: !1601)
!1642 = !DILocation(line: 85, column: 50, scope: !1601)
!1643 = !DILocation(line: 85, column: 19, scope: !1601)
!1644 = !DILocation(line: 86, column: 34, scope: !1601)
!1645 = !DILocation(line: 86, column: 39, scope: !1601)
!1646 = !DILocation(line: 86, column: 22, scope: !1601)
!1647 = !DILocation(line: 86, column: 53, scope: !1601)
!1648 = !DILocation(line: 86, column: 19, scope: !1601)
!1649 = !DILocation(line: 87, column: 5, scope: !1601)
!1650 = !DILocation(line: 89, column: 14, scope: !1601)
!1651 = !DILocation(line: 93, column: 41, scope: !1601)
!1652 = !DILocation(line: 93, column: 27, scope: !1601)
!1653 = !DILocation(line: 93, column: 47, scope: !1601)
!1654 = !DILocation(line: 93, column: 19, scope: !1601)
!1655 = !DILocation(line: 94, column: 32, scope: !1601)
!1656 = !DILocation(line: 94, column: 21, scope: !1601)
!1657 = !DILocation(line: 94, column: 67, scope: !1601)
!1658 = !DILocation(line: 94, column: 65, scope: !1601)
!1659 = !DILocation(line: 94, column: 37, scope: !1601)
!1660 = !DILocation(line: 94, column: 19, scope: !1601)
!1661 = !DILocation(line: 95, column: 19, scope: !1601)
!1662 = !DILocation(line: 96, column: 62, scope: !1601)
!1663 = !DILocation(line: 96, column: 60, scope: !1601)
!1664 = !DILocation(line: 96, column: 68, scope: !1601)
!1665 = !DILocation(line: 96, column: 19, scope: !1601)
!1666 = !DILocation(line: 97, column: 33, scope: !1601)
!1667 = !DILocation(line: 97, column: 22, scope: !1601)
!1668 = !DILocation(line: 97, column: 48, scope: !1601)
!1669 = !DILocation(line: 97, column: 19, scope: !1601)
!1670 = !DILocation(line: 98, column: 5, scope: !1601)
!1671 = !DILocation(line: 102, column: 19, scope: !1601)
!1672 = !DILocation(line: 106, column: 30, scope: !1601)
!1673 = !DILocation(line: 106, column: 53, scope: !1601)
!1674 = !DILocation(line: 106, column: 42, scope: !1601)
!1675 = !DILocation(line: 106, column: 58, scope: !1601)
!1676 = !DILocation(line: 106, column: 40, scope: !1601)
!1677 = !DILocation(line: 106, column: 21, scope: !1601)
!1678 = !DILocation(line: 107, column: 23, scope: !1601)
!1679 = !DILocation(line: 107, column: 12, scope: !1601)
!1680 = !DILocation(line: 107, column: 5, scope: !1601)
!1681 = distinct !DISubprogram(name: "srcToRep", scope: !1583, file: !1583, line: 78, type: !138, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !139)
!1682 = !DILocation(line: 79, column: 49, scope: !1681)
!1683 = !DILocation(line: 79, column: 55, scope: !1681)
!1684 = !DILocation(line: 80, column: 16, scope: !1681)
!1685 = !DILocation(line: 80, column: 5, scope: !1681)
!1686 = distinct !DISubprogram(name: "dstFromRep", scope: !1583, file: !1583, line: 83, type: !138, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !139)
!1687 = !DILocation(line: 84, column: 49, scope: !1686)
!1688 = !DILocation(line: 84, column: 55, scope: !1686)
!1689 = !DILocation(line: 85, column: 16, scope: !1686)
!1690 = !DILocation(line: 85, column: 5, scope: !1686)
!1691 = distinct !DISubprogram(name: "__fixdfdi", scope: !17, file: !17, line: 23, type: !138, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !139)
!1692 = !DILocation(line: 25, column: 9, scope: !1691)
!1693 = !DILocation(line: 25, column: 11, scope: !1691)
!1694 = !DILocation(line: 26, column: 31, scope: !1691)
!1695 = !DILocation(line: 26, column: 30, scope: !1691)
!1696 = !DILocation(line: 26, column: 17, scope: !1691)
!1697 = !DILocation(line: 26, column: 16, scope: !1691)
!1698 = !DILocation(line: 26, column: 9, scope: !1691)
!1699 = !DILocation(line: 28, column: 25, scope: !1691)
!1700 = !DILocation(line: 28, column: 12, scope: !1691)
!1701 = !DILocation(line: 28, column: 5, scope: !1691)
!1702 = !DILocation(line: 29, column: 1, scope: !1691)
!1703 = distinct !DISubprogram(name: "__fixdfsi", scope: !19, file: !19, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !139)
!1704 = !DILocation(line: 21, column: 21, scope: !1703)
!1705 = !DILocation(line: 21, column: 12, scope: !1703)
!1706 = !DILocation(line: 21, column: 5, scope: !1703)
!1707 = distinct !DISubprogram(name: "__fixint", scope: !1708, file: !1708, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !139)
!1708 = !DIFile(filename: "../fp_fixint_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "89ea1a0185caa3a064d6051520736960")
!1709 = !DILocation(line: 18, column: 20, scope: !1707)
!1710 = !DILocation(line: 19, column: 20, scope: !1707)
!1711 = !DILocation(line: 21, column: 30, scope: !1707)
!1712 = !DILocation(line: 21, column: 24, scope: !1707)
!1713 = !DILocation(line: 21, column: 17, scope: !1707)
!1714 = !DILocation(line: 22, column: 24, scope: !1707)
!1715 = !DILocation(line: 22, column: 29, scope: !1707)
!1716 = !DILocation(line: 22, column: 17, scope: !1707)
!1717 = !DILocation(line: 23, column: 27, scope: !1707)
!1718 = !DILocation(line: 23, column: 32, scope: !1707)
!1719 = !DILocation(line: 23, column: 20, scope: !1707)
!1720 = !DILocation(line: 24, column: 27, scope: !1707)
!1721 = !DILocation(line: 24, column: 32, scope: !1707)
!1722 = !DILocation(line: 24, column: 52, scope: !1707)
!1723 = !DILocation(line: 24, column: 26, scope: !1707)
!1724 = !DILocation(line: 24, column: 15, scope: !1707)
!1725 = !DILocation(line: 25, column: 32, scope: !1707)
!1726 = !DILocation(line: 25, column: 37, scope: !1707)
!1727 = !DILocation(line: 25, column: 56, scope: !1707)
!1728 = !DILocation(line: 25, column: 17, scope: !1707)
!1729 = !DILocation(line: 28, column: 9, scope: !1707)
!1730 = !DILocation(line: 28, column: 18, scope: !1707)
!1731 = !DILocation(line: 29, column: 9, scope: !1707)
!1732 = !DILocation(line: 32, column: 19, scope: !1707)
!1733 = !DILocation(line: 32, column: 28, scope: !1707)
!1734 = !DILocation(line: 32, column: 9, scope: !1707)
!1735 = !DILocation(line: 33, column: 16, scope: !1707)
!1736 = !DILocation(line: 33, column: 21, scope: !1707)
!1737 = !DILocation(line: 33, column: 9, scope: !1707)
!1738 = !DILocation(line: 37, column: 9, scope: !1707)
!1739 = !DILocation(line: 37, column: 18, scope: !1707)
!1740 = !DILocation(line: 38, column: 16, scope: !1707)
!1741 = !DILocation(line: 38, column: 24, scope: !1707)
!1742 = !DILocation(line: 38, column: 58, scope: !1707)
!1743 = !DILocation(line: 38, column: 56, scope: !1707)
!1744 = !DILocation(line: 38, column: 36, scope: !1707)
!1745 = !DILocation(line: 38, column: 21, scope: !1707)
!1746 = !DILocation(line: 38, column: 9, scope: !1707)
!1747 = !DILocation(line: 40, column: 16, scope: !1707)
!1748 = !DILocation(line: 40, column: 34, scope: !1707)
!1749 = !DILocation(line: 40, column: 24, scope: !1707)
!1750 = !DILocation(line: 40, column: 50, scope: !1707)
!1751 = !DILocation(line: 40, column: 59, scope: !1707)
!1752 = !DILocation(line: 40, column: 46, scope: !1707)
!1753 = !DILocation(line: 40, column: 21, scope: !1707)
!1754 = !DILocation(line: 40, column: 9, scope: !1707)
!1755 = !DILocation(line: 41, column: 1, scope: !1707)
!1756 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !139)
!1757 = !DILocation(line: 232, column: 44, scope: !1756)
!1758 = !DILocation(line: 232, column: 50, scope: !1756)
!1759 = !DILocation(line: 233, column: 16, scope: !1756)
!1760 = !DILocation(line: 233, column: 5, scope: !1756)
!1761 = distinct !DISubprogram(name: "__fixsfdi", scope: !23, file: !23, line: 24, type: !138, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !139)
!1762 = !DILocation(line: 26, column: 9, scope: !1761)
!1763 = !DILocation(line: 26, column: 11, scope: !1761)
!1764 = !DILocation(line: 27, column: 31, scope: !1761)
!1765 = !DILocation(line: 27, column: 30, scope: !1761)
!1766 = !DILocation(line: 27, column: 17, scope: !1761)
!1767 = !DILocation(line: 27, column: 16, scope: !1761)
!1768 = !DILocation(line: 27, column: 9, scope: !1761)
!1769 = !DILocation(line: 29, column: 25, scope: !1761)
!1770 = !DILocation(line: 29, column: 12, scope: !1761)
!1771 = !DILocation(line: 29, column: 5, scope: !1761)
!1772 = !DILocation(line: 30, column: 1, scope: !1761)
!1773 = distinct !DISubprogram(name: "__fixsfsi", scope: !25, file: !25, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !139)
!1774 = !DILocation(line: 21, column: 21, scope: !1773)
!1775 = !DILocation(line: 21, column: 12, scope: !1773)
!1776 = !DILocation(line: 21, column: 5, scope: !1773)
!1777 = distinct !DISubprogram(name: "__fixint", scope: !1708, file: !1708, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !139)
!1778 = !DILocation(line: 18, column: 20, scope: !1777)
!1779 = !DILocation(line: 19, column: 20, scope: !1777)
!1780 = !DILocation(line: 21, column: 30, scope: !1777)
!1781 = !DILocation(line: 21, column: 24, scope: !1777)
!1782 = !DILocation(line: 21, column: 17, scope: !1777)
!1783 = !DILocation(line: 22, column: 24, scope: !1777)
!1784 = !DILocation(line: 22, column: 29, scope: !1777)
!1785 = !DILocation(line: 22, column: 17, scope: !1777)
!1786 = !DILocation(line: 23, column: 27, scope: !1777)
!1787 = !DILocation(line: 23, column: 32, scope: !1777)
!1788 = !DILocation(line: 23, column: 20, scope: !1777)
!1789 = !DILocation(line: 24, column: 27, scope: !1777)
!1790 = !DILocation(line: 24, column: 32, scope: !1777)
!1791 = !DILocation(line: 24, column: 52, scope: !1777)
!1792 = !DILocation(line: 24, column: 15, scope: !1777)
!1793 = !DILocation(line: 25, column: 32, scope: !1777)
!1794 = !DILocation(line: 25, column: 37, scope: !1777)
!1795 = !DILocation(line: 25, column: 56, scope: !1777)
!1796 = !DILocation(line: 25, column: 17, scope: !1777)
!1797 = !DILocation(line: 28, column: 9, scope: !1777)
!1798 = !DILocation(line: 28, column: 18, scope: !1777)
!1799 = !DILocation(line: 29, column: 9, scope: !1777)
!1800 = !DILocation(line: 32, column: 19, scope: !1777)
!1801 = !DILocation(line: 32, column: 28, scope: !1777)
!1802 = !DILocation(line: 32, column: 9, scope: !1777)
!1803 = !DILocation(line: 33, column: 16, scope: !1777)
!1804 = !DILocation(line: 33, column: 21, scope: !1777)
!1805 = !DILocation(line: 33, column: 9, scope: !1777)
!1806 = !DILocation(line: 37, column: 9, scope: !1777)
!1807 = !DILocation(line: 37, column: 18, scope: !1777)
!1808 = !DILocation(line: 38, column: 16, scope: !1777)
!1809 = !DILocation(line: 38, column: 24, scope: !1777)
!1810 = !DILocation(line: 38, column: 58, scope: !1777)
!1811 = !DILocation(line: 38, column: 56, scope: !1777)
!1812 = !DILocation(line: 38, column: 36, scope: !1777)
!1813 = !DILocation(line: 38, column: 21, scope: !1777)
!1814 = !DILocation(line: 38, column: 9, scope: !1777)
!1815 = !DILocation(line: 40, column: 16, scope: !1777)
!1816 = !DILocation(line: 40, column: 34, scope: !1777)
!1817 = !DILocation(line: 40, column: 50, scope: !1777)
!1818 = !DILocation(line: 40, column: 59, scope: !1777)
!1819 = !DILocation(line: 40, column: 46, scope: !1777)
!1820 = !DILocation(line: 40, column: 21, scope: !1777)
!1821 = !DILocation(line: 40, column: 9, scope: !1777)
!1822 = !DILocation(line: 41, column: 1, scope: !1777)
!1823 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !139)
!1824 = !DILocation(line: 232, column: 44, scope: !1823)
!1825 = !DILocation(line: 232, column: 50, scope: !1823)
!1826 = !DILocation(line: 233, column: 16, scope: !1823)
!1827 = !DILocation(line: 233, column: 5, scope: !1823)
!1828 = distinct !DISubprogram(name: "__fixunsdfdi", scope: !29, file: !29, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !139)
!1829 = !DILocation(line: 24, column: 9, scope: !1828)
!1830 = !DILocation(line: 24, column: 11, scope: !1828)
!1831 = !DILocation(line: 24, column: 19, scope: !1828)
!1832 = !DILocation(line: 25, column: 19, scope: !1828)
!1833 = !DILocation(line: 25, column: 21, scope: !1828)
!1834 = !DILocation(line: 25, column: 12, scope: !1828)
!1835 = !DILocation(line: 26, column: 18, scope: !1828)
!1836 = !DILocation(line: 26, column: 30, scope: !1828)
!1837 = !DILocation(line: 26, column: 22, scope: !1828)
!1838 = !DILocation(line: 26, column: 20, scope: !1828)
!1839 = !DILocation(line: 26, column: 12, scope: !1828)
!1840 = !DILocation(line: 27, column: 21, scope: !1828)
!1841 = !DILocation(line: 27, column: 13, scope: !1828)
!1842 = !DILocation(line: 27, column: 26, scope: !1828)
!1843 = !DILocation(line: 27, column: 35, scope: !1828)
!1844 = !DILocation(line: 27, column: 33, scope: !1828)
!1845 = !DILocation(line: 27, column: 5, scope: !1828)
!1846 = !DILocation(line: 28, column: 1, scope: !1828)
!1847 = distinct !DISubprogram(name: "__fixunsdfsi", scope: !31, file: !31, line: 19, type: !138, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !139)
!1848 = !DILocation(line: 20, column: 22, scope: !1847)
!1849 = !DILocation(line: 20, column: 12, scope: !1847)
!1850 = !DILocation(line: 20, column: 5, scope: !1847)
!1851 = distinct !DISubprogram(name: "__fixuint", scope: !1852, file: !1852, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !139)
!1852 = !DIFile(filename: "../fp_fixuint_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "6bc5369d617a52303e78f0c14245c5a2")
!1853 = !DILocation(line: 19, column: 30, scope: !1851)
!1854 = !DILocation(line: 19, column: 24, scope: !1851)
!1855 = !DILocation(line: 19, column: 17, scope: !1851)
!1856 = !DILocation(line: 20, column: 24, scope: !1851)
!1857 = !DILocation(line: 20, column: 29, scope: !1851)
!1858 = !DILocation(line: 20, column: 17, scope: !1851)
!1859 = !DILocation(line: 21, column: 22, scope: !1851)
!1860 = !DILocation(line: 21, column: 27, scope: !1851)
!1861 = !DILocation(line: 21, column: 15, scope: !1851)
!1862 = !DILocation(line: 22, column: 27, scope: !1851)
!1863 = !DILocation(line: 22, column: 32, scope: !1851)
!1864 = !DILocation(line: 22, column: 52, scope: !1851)
!1865 = !DILocation(line: 22, column: 26, scope: !1851)
!1866 = !DILocation(line: 22, column: 15, scope: !1851)
!1867 = !DILocation(line: 23, column: 32, scope: !1851)
!1868 = !DILocation(line: 23, column: 37, scope: !1851)
!1869 = !DILocation(line: 23, column: 56, scope: !1851)
!1870 = !DILocation(line: 23, column: 17, scope: !1851)
!1871 = !DILocation(line: 26, column: 9, scope: !1851)
!1872 = !DILocation(line: 26, column: 14, scope: !1851)
!1873 = !DILocation(line: 26, column: 20, scope: !1851)
!1874 = !DILocation(line: 26, column: 23, scope: !1851)
!1875 = !DILocation(line: 26, column: 32, scope: !1851)
!1876 = !DILocation(line: 27, column: 9, scope: !1851)
!1877 = !DILocation(line: 30, column: 19, scope: !1851)
!1878 = !DILocation(line: 30, column: 28, scope: !1851)
!1879 = !DILocation(line: 30, column: 9, scope: !1851)
!1880 = !DILocation(line: 31, column: 9, scope: !1851)
!1881 = !DILocation(line: 35, column: 9, scope: !1851)
!1882 = !DILocation(line: 35, column: 18, scope: !1851)
!1883 = !DILocation(line: 36, column: 16, scope: !1851)
!1884 = !DILocation(line: 36, column: 50, scope: !1851)
!1885 = !DILocation(line: 36, column: 48, scope: !1851)
!1886 = !DILocation(line: 36, column: 28, scope: !1851)
!1887 = !DILocation(line: 36, column: 9, scope: !1851)
!1888 = !DILocation(line: 38, column: 27, scope: !1851)
!1889 = !DILocation(line: 38, column: 16, scope: !1851)
!1890 = !DILocation(line: 38, column: 43, scope: !1851)
!1891 = !DILocation(line: 38, column: 52, scope: !1851)
!1892 = !DILocation(line: 38, column: 39, scope: !1851)
!1893 = !DILocation(line: 38, column: 9, scope: !1851)
!1894 = !DILocation(line: 39, column: 1, scope: !1851)
!1895 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !139)
!1896 = !DILocation(line: 232, column: 44, scope: !1895)
!1897 = !DILocation(line: 232, column: 50, scope: !1895)
!1898 = !DILocation(line: 233, column: 16, scope: !1895)
!1899 = !DILocation(line: 233, column: 5, scope: !1895)
!1900 = distinct !DISubprogram(name: "__fixunssfdi", scope: !35, file: !35, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !139)
!1901 = !DILocation(line: 24, column: 9, scope: !1900)
!1902 = !DILocation(line: 24, column: 11, scope: !1900)
!1903 = !DILocation(line: 24, column: 20, scope: !1900)
!1904 = !DILocation(line: 25, column: 17, scope: !1900)
!1905 = !DILocation(line: 25, column: 12, scope: !1900)
!1906 = !DILocation(line: 26, column: 19, scope: !1900)
!1907 = !DILocation(line: 26, column: 22, scope: !1900)
!1908 = !DILocation(line: 26, column: 12, scope: !1900)
!1909 = !DILocation(line: 27, column: 18, scope: !1900)
!1910 = !DILocation(line: 27, column: 31, scope: !1900)
!1911 = !DILocation(line: 27, column: 23, scope: !1900)
!1912 = !DILocation(line: 27, column: 21, scope: !1900)
!1913 = !DILocation(line: 27, column: 12, scope: !1900)
!1914 = !DILocation(line: 28, column: 21, scope: !1900)
!1915 = !DILocation(line: 28, column: 13, scope: !1900)
!1916 = !DILocation(line: 28, column: 26, scope: !1900)
!1917 = !DILocation(line: 28, column: 35, scope: !1900)
!1918 = !DILocation(line: 28, column: 33, scope: !1900)
!1919 = !DILocation(line: 28, column: 5, scope: !1900)
!1920 = !DILocation(line: 29, column: 1, scope: !1900)
!1921 = distinct !DISubprogram(name: "__fixunssfsi", scope: !37, file: !37, line: 23, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !139)
!1922 = !DILocation(line: 24, column: 22, scope: !1921)
!1923 = !DILocation(line: 24, column: 12, scope: !1921)
!1924 = !DILocation(line: 24, column: 5, scope: !1921)
!1925 = distinct !DISubprogram(name: "__fixuint", scope: !1852, file: !1852, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !139)
!1926 = !DILocation(line: 19, column: 30, scope: !1925)
!1927 = !DILocation(line: 19, column: 24, scope: !1925)
!1928 = !DILocation(line: 19, column: 17, scope: !1925)
!1929 = !DILocation(line: 20, column: 24, scope: !1925)
!1930 = !DILocation(line: 20, column: 29, scope: !1925)
!1931 = !DILocation(line: 20, column: 17, scope: !1925)
!1932 = !DILocation(line: 21, column: 22, scope: !1925)
!1933 = !DILocation(line: 21, column: 27, scope: !1925)
!1934 = !DILocation(line: 21, column: 15, scope: !1925)
!1935 = !DILocation(line: 22, column: 27, scope: !1925)
!1936 = !DILocation(line: 22, column: 32, scope: !1925)
!1937 = !DILocation(line: 22, column: 52, scope: !1925)
!1938 = !DILocation(line: 22, column: 15, scope: !1925)
!1939 = !DILocation(line: 23, column: 32, scope: !1925)
!1940 = !DILocation(line: 23, column: 37, scope: !1925)
!1941 = !DILocation(line: 23, column: 56, scope: !1925)
!1942 = !DILocation(line: 23, column: 17, scope: !1925)
!1943 = !DILocation(line: 26, column: 9, scope: !1925)
!1944 = !DILocation(line: 26, column: 14, scope: !1925)
!1945 = !DILocation(line: 26, column: 20, scope: !1925)
!1946 = !DILocation(line: 26, column: 23, scope: !1925)
!1947 = !DILocation(line: 26, column: 32, scope: !1925)
!1948 = !DILocation(line: 27, column: 9, scope: !1925)
!1949 = !DILocation(line: 30, column: 19, scope: !1925)
!1950 = !DILocation(line: 30, column: 28, scope: !1925)
!1951 = !DILocation(line: 30, column: 9, scope: !1925)
!1952 = !DILocation(line: 31, column: 9, scope: !1925)
!1953 = !DILocation(line: 35, column: 9, scope: !1925)
!1954 = !DILocation(line: 35, column: 18, scope: !1925)
!1955 = !DILocation(line: 36, column: 16, scope: !1925)
!1956 = !DILocation(line: 36, column: 50, scope: !1925)
!1957 = !DILocation(line: 36, column: 48, scope: !1925)
!1958 = !DILocation(line: 36, column: 28, scope: !1925)
!1959 = !DILocation(line: 36, column: 9, scope: !1925)
!1960 = !DILocation(line: 38, column: 27, scope: !1925)
!1961 = !DILocation(line: 38, column: 43, scope: !1925)
!1962 = !DILocation(line: 38, column: 52, scope: !1925)
!1963 = !DILocation(line: 38, column: 39, scope: !1925)
!1964 = !DILocation(line: 38, column: 9, scope: !1925)
!1965 = !DILocation(line: 39, column: 1, scope: !1925)
!1966 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !139)
!1967 = !DILocation(line: 232, column: 44, scope: !1966)
!1968 = !DILocation(line: 232, column: 50, scope: !1966)
!1969 = !DILocation(line: 233, column: 16, scope: !1966)
!1970 = !DILocation(line: 233, column: 5, scope: !1966)
!1971 = distinct !DISubprogram(name: "__fixunsxfdi", scope: !41, file: !41, line: 34, type: !138, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !139)
!1972 = !DILocation(line: 37, column: 12, scope: !1971)
!1973 = !DILocation(line: 37, column: 8, scope: !1971)
!1974 = !DILocation(line: 37, column: 10, scope: !1971)
!1975 = !DILocation(line: 38, column: 17, scope: !1971)
!1976 = !DILocation(line: 38, column: 19, scope: !1971)
!1977 = !DILocation(line: 38, column: 24, scope: !1971)
!1978 = !DILocation(line: 38, column: 26, scope: !1971)
!1979 = !DILocation(line: 38, column: 30, scope: !1971)
!1980 = !DILocation(line: 38, column: 44, scope: !1971)
!1981 = !DILocation(line: 38, column: 9, scope: !1971)
!1982 = !DILocation(line: 39, column: 9, scope: !1971)
!1983 = !DILocation(line: 39, column: 11, scope: !1971)
!1984 = !DILocation(line: 39, column: 15, scope: !1971)
!1985 = !DILocation(line: 39, column: 22, scope: !1971)
!1986 = !DILocation(line: 39, column: 24, scope: !1971)
!1987 = !DILocation(line: 39, column: 29, scope: !1971)
!1988 = !DILocation(line: 39, column: 31, scope: !1971)
!1989 = !DILocation(line: 39, column: 35, scope: !1971)
!1990 = !DILocation(line: 40, column: 9, scope: !1971)
!1991 = !DILocation(line: 41, column: 19, scope: !1971)
!1992 = !DILocation(line: 41, column: 21, scope: !1971)
!1993 = !DILocation(line: 41, column: 9, scope: !1971)
!1994 = !DILocation(line: 42, column: 9, scope: !1971)
!1995 = !DILocation(line: 43, column: 15, scope: !1971)
!1996 = !DILocation(line: 43, column: 17, scope: !1971)
!1997 = !DILocation(line: 43, column: 21, scope: !1971)
!1998 = !DILocation(line: 43, column: 34, scope: !1971)
!1999 = !DILocation(line: 43, column: 32, scope: !1971)
!2000 = !DILocation(line: 43, column: 25, scope: !1971)
!2001 = !DILocation(line: 43, column: 5, scope: !1971)
!2002 = !DILocation(line: 44, column: 1, scope: !1971)
!2003 = distinct !DISubprogram(name: "__fixunsxfsi", scope: !43, file: !43, line: 33, type: !138, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !139)
!2004 = !DILocation(line: 36, column: 12, scope: !2003)
!2005 = !DILocation(line: 36, column: 8, scope: !2003)
!2006 = !DILocation(line: 36, column: 10, scope: !2003)
!2007 = !DILocation(line: 37, column: 17, scope: !2003)
!2008 = !DILocation(line: 37, column: 19, scope: !2003)
!2009 = !DILocation(line: 37, column: 24, scope: !2003)
!2010 = !DILocation(line: 37, column: 26, scope: !2003)
!2011 = !DILocation(line: 37, column: 30, scope: !2003)
!2012 = !DILocation(line: 37, column: 44, scope: !2003)
!2013 = !DILocation(line: 37, column: 9, scope: !2003)
!2014 = !DILocation(line: 38, column: 9, scope: !2003)
!2015 = !DILocation(line: 38, column: 11, scope: !2003)
!2016 = !DILocation(line: 38, column: 15, scope: !2003)
!2017 = !DILocation(line: 38, column: 22, scope: !2003)
!2018 = !DILocation(line: 38, column: 24, scope: !2003)
!2019 = !DILocation(line: 38, column: 29, scope: !2003)
!2020 = !DILocation(line: 38, column: 31, scope: !2003)
!2021 = !DILocation(line: 38, column: 35, scope: !2003)
!2022 = !DILocation(line: 39, column: 9, scope: !2003)
!2023 = !DILocation(line: 40, column: 19, scope: !2003)
!2024 = !DILocation(line: 40, column: 21, scope: !2003)
!2025 = !DILocation(line: 40, column: 9, scope: !2003)
!2026 = !DILocation(line: 41, column: 9, scope: !2003)
!2027 = !DILocation(line: 42, column: 15, scope: !2003)
!2028 = !DILocation(line: 42, column: 17, scope: !2003)
!2029 = !DILocation(line: 42, column: 21, scope: !2003)
!2030 = !DILocation(line: 42, column: 23, scope: !2003)
!2031 = !DILocation(line: 42, column: 37, scope: !2003)
!2032 = !DILocation(line: 42, column: 35, scope: !2003)
!2033 = !DILocation(line: 42, column: 28, scope: !2003)
!2034 = !DILocation(line: 42, column: 5, scope: !2003)
!2035 = !DILocation(line: 43, column: 1, scope: !2003)
!2036 = distinct !DISubprogram(name: "__fixxfdi", scope: !47, file: !47, line: 31, type: !138, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !139)
!2037 = !DILocation(line: 33, column: 18, scope: !2036)
!2038 = !DILocation(line: 34, column: 18, scope: !2036)
!2039 = !DILocation(line: 36, column: 12, scope: !2036)
!2040 = !DILocation(line: 36, column: 8, scope: !2036)
!2041 = !DILocation(line: 36, column: 10, scope: !2036)
!2042 = !DILocation(line: 37, column: 17, scope: !2036)
!2043 = !DILocation(line: 37, column: 19, scope: !2036)
!2044 = !DILocation(line: 37, column: 24, scope: !2036)
!2045 = !DILocation(line: 37, column: 26, scope: !2036)
!2046 = !DILocation(line: 37, column: 30, scope: !2036)
!2047 = !DILocation(line: 37, column: 44, scope: !2036)
!2048 = !DILocation(line: 37, column: 9, scope: !2036)
!2049 = !DILocation(line: 38, column: 9, scope: !2036)
!2050 = !DILocation(line: 38, column: 11, scope: !2036)
!2051 = !DILocation(line: 39, column: 9, scope: !2036)
!2052 = !DILocation(line: 40, column: 19, scope: !2036)
!2053 = !DILocation(line: 40, column: 21, scope: !2036)
!2054 = !DILocation(line: 40, column: 9, scope: !2036)
!2055 = !DILocation(line: 41, column: 16, scope: !2036)
!2056 = !DILocation(line: 41, column: 18, scope: !2036)
!2057 = !DILocation(line: 41, column: 9, scope: !2036)
!2058 = !DILocation(line: 42, column: 30, scope: !2036)
!2059 = !DILocation(line: 42, column: 32, scope: !2036)
!2060 = !DILocation(line: 42, column: 37, scope: !2036)
!2061 = !DILocation(line: 42, column: 39, scope: !2036)
!2062 = !DILocation(line: 42, column: 43, scope: !2036)
!2063 = !DILocation(line: 42, column: 57, scope: !2036)
!2064 = !DILocation(line: 42, column: 16, scope: !2036)
!2065 = !DILocation(line: 42, column: 12, scope: !2036)
!2066 = !DILocation(line: 43, column: 19, scope: !2036)
!2067 = !DILocation(line: 43, column: 21, scope: !2036)
!2068 = !DILocation(line: 43, column: 25, scope: !2036)
!2069 = !DILocation(line: 43, column: 12, scope: !2036)
!2070 = !DILocation(line: 44, column: 17, scope: !2036)
!2071 = !DILocation(line: 44, column: 28, scope: !2036)
!2072 = !DILocation(line: 44, column: 26, scope: !2036)
!2073 = !DILocation(line: 44, column: 19, scope: !2036)
!2074 = !DILocation(line: 44, column: 7, scope: !2036)
!2075 = !DILocation(line: 45, column: 13, scope: !2036)
!2076 = !DILocation(line: 45, column: 17, scope: !2036)
!2077 = !DILocation(line: 45, column: 15, scope: !2036)
!2078 = !DILocation(line: 45, column: 22, scope: !2036)
!2079 = !DILocation(line: 45, column: 20, scope: !2036)
!2080 = !DILocation(line: 45, column: 5, scope: !2036)
!2081 = !DILocation(line: 46, column: 1, scope: !2036)
!2082 = distinct !DISubprogram(name: "__floatdidf", scope: !51, file: !51, line: 33, type: !138, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !139)
!2083 = !DILocation(line: 38, column: 36, scope: !2082)
!2084 = !DILocation(line: 40, column: 35, scope: !2082)
!2085 = !DILocation(line: 40, column: 37, scope: !2082)
!2086 = !DILocation(line: 40, column: 25, scope: !2082)
!2087 = !DILocation(line: 40, column: 44, scope: !2082)
!2088 = !DILocation(line: 40, column: 18, scope: !2082)
!2089 = !DILocation(line: 41, column: 14, scope: !2082)
!2090 = !DILocation(line: 41, column: 16, scope: !2082)
!2091 = !DILocation(line: 41, column: 9, scope: !2082)
!2092 = !DILocation(line: 41, column: 11, scope: !2082)
!2093 = !DILocation(line: 43, column: 28, scope: !2082)
!2094 = !DILocation(line: 43, column: 33, scope: !2082)
!2095 = !DILocation(line: 43, column: 49, scope: !2082)
!2096 = !DILocation(line: 43, column: 43, scope: !2082)
!2097 = !DILocation(line: 43, column: 18, scope: !2082)
!2098 = !DILocation(line: 44, column: 12, scope: !2082)
!2099 = !DILocation(line: 44, column: 5, scope: !2082)
!2100 = distinct !DISubprogram(name: "__floatdisf", scope: !53, file: !53, line: 28, type: !138, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !139)
!2101 = !DILocation(line: 30, column: 9, scope: !2100)
!2102 = !DILocation(line: 30, column: 11, scope: !2100)
!2103 = !DILocation(line: 31, column: 9, scope: !2100)
!2104 = !DILocation(line: 32, column: 20, scope: !2100)
!2105 = !DILocation(line: 33, column: 22, scope: !2100)
!2106 = !DILocation(line: 33, column: 24, scope: !2100)
!2107 = !DILocation(line: 33, column: 18, scope: !2100)
!2108 = !DILocation(line: 34, column: 10, scope: !2100)
!2109 = !DILocation(line: 34, column: 14, scope: !2100)
!2110 = !DILocation(line: 34, column: 12, scope: !2100)
!2111 = !DILocation(line: 34, column: 19, scope: !2100)
!2112 = !DILocation(line: 34, column: 17, scope: !2100)
!2113 = !DILocation(line: 34, column: 7, scope: !2100)
!2114 = !DILocation(line: 35, column: 34, scope: !2100)
!2115 = !DILocation(line: 35, column: 18, scope: !2100)
!2116 = !DILocation(line: 35, column: 16, scope: !2100)
!2117 = !DILocation(line: 35, column: 9, scope: !2100)
!2118 = !DILocation(line: 36, column: 13, scope: !2100)
!2119 = !DILocation(line: 36, column: 16, scope: !2100)
!2120 = !DILocation(line: 36, column: 9, scope: !2100)
!2121 = !DILocation(line: 37, column: 9, scope: !2100)
!2122 = !DILocation(line: 37, column: 12, scope: !2100)
!2123 = !DILocation(line: 47, column: 17, scope: !2100)
!2124 = !DILocation(line: 47, column: 9, scope: !2100)
!2125 = !DILocation(line: 50, column: 15, scope: !2100)
!2126 = !DILocation(line: 51, column: 13, scope: !2100)
!2127 = !DILocation(line: 53, column: 13, scope: !2100)
!2128 = !DILocation(line: 55, column: 26, scope: !2100)
!2129 = !DILocation(line: 55, column: 32, scope: !2100)
!2130 = !DILocation(line: 55, column: 35, scope: !2100)
!2131 = !DILocation(line: 55, column: 28, scope: !2100)
!2132 = !DILocation(line: 56, column: 19, scope: !2100)
!2133 = !DILocation(line: 56, column: 64, scope: !2100)
!2134 = !DILocation(line: 56, column: 62, scope: !2100)
!2135 = !DILocation(line: 56, column: 37, scope: !2100)
!2136 = !DILocation(line: 56, column: 21, scope: !2100)
!2137 = !DILocation(line: 56, column: 70, scope: !2100)
!2138 = !DILocation(line: 56, column: 17, scope: !2100)
!2139 = !DILocation(line: 55, column: 56, scope: !2100)
!2140 = !DILocation(line: 55, column: 15, scope: !2100)
!2141 = !DILocation(line: 57, column: 9, scope: !2100)
!2142 = !DILocation(line: 59, column: 15, scope: !2100)
!2143 = !DILocation(line: 59, column: 17, scope: !2100)
!2144 = !DILocation(line: 59, column: 22, scope: !2100)
!2145 = !DILocation(line: 59, column: 14, scope: !2100)
!2146 = !DILocation(line: 59, column: 11, scope: !2100)
!2147 = !DILocation(line: 60, column: 9, scope: !2100)
!2148 = !DILocation(line: 61, column: 11, scope: !2100)
!2149 = !DILocation(line: 63, column: 13, scope: !2100)
!2150 = !DILocation(line: 63, column: 15, scope: !2100)
!2151 = !DILocation(line: 65, column: 15, scope: !2100)
!2152 = !DILocation(line: 66, column: 13, scope: !2100)
!2153 = !DILocation(line: 67, column: 9, scope: !2100)
!2154 = !DILocation(line: 69, column: 5, scope: !2100)
!2155 = !DILocation(line: 72, column: 31, scope: !2100)
!2156 = !DILocation(line: 72, column: 29, scope: !2100)
!2157 = !DILocation(line: 72, column: 11, scope: !2100)
!2158 = !DILocation(line: 76, column: 21, scope: !2100)
!2159 = !DILocation(line: 76, column: 13, scope: !2100)
!2160 = !DILocation(line: 76, column: 23, scope: !2100)
!2161 = !DILocation(line: 77, column: 14, scope: !2100)
!2162 = !DILocation(line: 77, column: 16, scope: !2100)
!2163 = !DILocation(line: 77, column: 23, scope: !2100)
!2164 = !DILocation(line: 76, column: 37, scope: !2100)
!2165 = !DILocation(line: 78, column: 21, scope: !2100)
!2166 = !DILocation(line: 78, column: 13, scope: !2100)
!2167 = !DILocation(line: 78, column: 23, scope: !2100)
!2168 = !DILocation(line: 77, column: 36, scope: !2100)
!2169 = !DILocation(line: 76, column: 8, scope: !2100)
!2170 = !DILocation(line: 76, column: 10, scope: !2100)
!2171 = !DILocation(line: 79, column: 15, scope: !2100)
!2172 = !DILocation(line: 79, column: 5, scope: !2100)
!2173 = !DILocation(line: 80, column: 1, scope: !2100)
!2174 = distinct !DISubprogram(name: "__floatdixf", scope: !55, file: !55, line: 30, type: !138, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !139)
!2175 = !DILocation(line: 32, column: 9, scope: !2174)
!2176 = !DILocation(line: 32, column: 11, scope: !2174)
!2177 = !DILocation(line: 33, column: 9, scope: !2174)
!2178 = !DILocation(line: 34, column: 20, scope: !2174)
!2179 = !DILocation(line: 35, column: 22, scope: !2174)
!2180 = !DILocation(line: 35, column: 24, scope: !2174)
!2181 = !DILocation(line: 35, column: 18, scope: !2174)
!2182 = !DILocation(line: 36, column: 10, scope: !2174)
!2183 = !DILocation(line: 36, column: 14, scope: !2174)
!2184 = !DILocation(line: 36, column: 12, scope: !2174)
!2185 = !DILocation(line: 36, column: 19, scope: !2174)
!2186 = !DILocation(line: 36, column: 17, scope: !2174)
!2187 = !DILocation(line: 36, column: 7, scope: !2174)
!2188 = !DILocation(line: 37, column: 31, scope: !2174)
!2189 = !DILocation(line: 37, column: 15, scope: !2174)
!2190 = !DILocation(line: 37, column: 9, scope: !2174)
!2191 = !DILocation(line: 38, column: 23, scope: !2174)
!2192 = !DILocation(line: 38, column: 21, scope: !2174)
!2193 = !DILocation(line: 38, column: 9, scope: !2174)
!2194 = !DILocation(line: 40, column: 32, scope: !2174)
!2195 = !DILocation(line: 40, column: 24, scope: !2174)
!2196 = !DILocation(line: 40, column: 34, scope: !2174)
!2197 = !DILocation(line: 41, column: 10, scope: !2174)
!2198 = !DILocation(line: 41, column: 12, scope: !2174)
!2199 = !DILocation(line: 40, column: 48, scope: !2174)
!2200 = !DILocation(line: 40, column: 8, scope: !2174)
!2201 = !DILocation(line: 40, column: 10, scope: !2174)
!2202 = !DILocation(line: 40, column: 15, scope: !2174)
!2203 = !DILocation(line: 40, column: 17, scope: !2174)
!2204 = !DILocation(line: 40, column: 21, scope: !2174)
!2205 = !DILocation(line: 42, column: 20, scope: !2174)
!2206 = !DILocation(line: 42, column: 25, scope: !2174)
!2207 = !DILocation(line: 42, column: 22, scope: !2174)
!2208 = !DILocation(line: 42, column: 8, scope: !2174)
!2209 = !DILocation(line: 42, column: 10, scope: !2174)
!2210 = !DILocation(line: 42, column: 14, scope: !2174)
!2211 = !DILocation(line: 42, column: 18, scope: !2174)
!2212 = !DILocation(line: 43, column: 15, scope: !2174)
!2213 = !DILocation(line: 43, column: 5, scope: !2174)
!2214 = !DILocation(line: 44, column: 1, scope: !2174)
!2215 = distinct !DISubprogram(name: "__floatsidf", scope: !57, file: !57, line: 24, type: !138, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !139)
!2216 = !DILocation(line: 26, column: 15, scope: !2215)
!2217 = !DILocation(line: 29, column: 9, scope: !2215)
!2218 = !DILocation(line: 29, column: 11, scope: !2215)
!2219 = !DILocation(line: 30, column: 16, scope: !2215)
!2220 = !DILocation(line: 30, column: 9, scope: !2215)
!2221 = !DILocation(line: 33, column: 11, scope: !2215)
!2222 = !DILocation(line: 34, column: 9, scope: !2215)
!2223 = !DILocation(line: 34, column: 11, scope: !2215)
!2224 = !DILocation(line: 35, column: 14, scope: !2215)
!2225 = !DILocation(line: 36, column: 14, scope: !2215)
!2226 = !DILocation(line: 36, column: 13, scope: !2215)
!2227 = !DILocation(line: 36, column: 11, scope: !2215)
!2228 = !DILocation(line: 37, column: 5, scope: !2215)
!2229 = !DILocation(line: 40, column: 55, scope: !2215)
!2230 = !DILocation(line: 40, column: 41, scope: !2215)
!2231 = !DILocation(line: 40, column: 39, scope: !2215)
!2232 = !DILocation(line: 40, column: 15, scope: !2215)
!2233 = !DILocation(line: 46, column: 41, scope: !2215)
!2234 = !DILocation(line: 46, column: 39, scope: !2215)
!2235 = !DILocation(line: 46, column: 15, scope: !2215)
!2236 = !DILocation(line: 47, column: 35, scope: !2215)
!2237 = !DILocation(line: 47, column: 14, scope: !2215)
!2238 = !DILocation(line: 47, column: 40, scope: !2215)
!2239 = !DILocation(line: 47, column: 37, scope: !2215)
!2240 = !DILocation(line: 47, column: 46, scope: !2215)
!2241 = !DILocation(line: 47, column: 12, scope: !2215)
!2242 = !DILocation(line: 50, column: 23, scope: !2215)
!2243 = !DILocation(line: 50, column: 32, scope: !2215)
!2244 = !DILocation(line: 50, column: 15, scope: !2215)
!2245 = !DILocation(line: 50, column: 48, scope: !2215)
!2246 = !DILocation(line: 50, column: 12, scope: !2215)
!2247 = !DILocation(line: 52, column: 20, scope: !2215)
!2248 = !DILocation(line: 52, column: 29, scope: !2215)
!2249 = !DILocation(line: 52, column: 27, scope: !2215)
!2250 = !DILocation(line: 52, column: 12, scope: !2215)
!2251 = !DILocation(line: 52, column: 5, scope: !2215)
!2252 = !DILocation(line: 53, column: 1, scope: !2215)
!2253 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !139)
!2254 = !DILocation(line: 237, column: 44, scope: !2253)
!2255 = !DILocation(line: 237, column: 50, scope: !2253)
!2256 = !DILocation(line: 238, column: 16, scope: !2253)
!2257 = !DILocation(line: 238, column: 5, scope: !2253)
!2258 = distinct !DISubprogram(name: "__floatsisf", scope: !59, file: !59, line: 24, type: !138, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !139)
!2259 = !DILocation(line: 26, column: 15, scope: !2258)
!2260 = !DILocation(line: 29, column: 9, scope: !2258)
!2261 = !DILocation(line: 29, column: 11, scope: !2258)
!2262 = !DILocation(line: 30, column: 16, scope: !2258)
!2263 = !DILocation(line: 30, column: 9, scope: !2258)
!2264 = !DILocation(line: 33, column: 11, scope: !2258)
!2265 = !DILocation(line: 34, column: 9, scope: !2258)
!2266 = !DILocation(line: 34, column: 11, scope: !2258)
!2267 = !DILocation(line: 35, column: 14, scope: !2258)
!2268 = !DILocation(line: 36, column: 14, scope: !2258)
!2269 = !DILocation(line: 36, column: 13, scope: !2258)
!2270 = !DILocation(line: 36, column: 11, scope: !2258)
!2271 = !DILocation(line: 37, column: 5, scope: !2258)
!2272 = !DILocation(line: 40, column: 55, scope: !2258)
!2273 = !DILocation(line: 40, column: 41, scope: !2258)
!2274 = !DILocation(line: 40, column: 39, scope: !2258)
!2275 = !DILocation(line: 40, column: 15, scope: !2258)
!2276 = !DILocation(line: 44, column: 9, scope: !2258)
!2277 = !DILocation(line: 44, column: 18, scope: !2258)
!2278 = !DILocation(line: 45, column: 45, scope: !2258)
!2279 = !DILocation(line: 45, column: 43, scope: !2258)
!2280 = !DILocation(line: 45, column: 19, scope: !2258)
!2281 = !DILocation(line: 46, column: 25, scope: !2258)
!2282 = !DILocation(line: 46, column: 30, scope: !2258)
!2283 = !DILocation(line: 46, column: 27, scope: !2258)
!2284 = !DILocation(line: 46, column: 36, scope: !2258)
!2285 = !DILocation(line: 46, column: 16, scope: !2258)
!2286 = !DILocation(line: 47, column: 5, scope: !2258)
!2287 = !DILocation(line: 48, column: 27, scope: !2258)
!2288 = !DILocation(line: 48, column: 36, scope: !2258)
!2289 = !DILocation(line: 48, column: 19, scope: !2258)
!2290 = !DILocation(line: 49, column: 25, scope: !2258)
!2291 = !DILocation(line: 49, column: 30, scope: !2258)
!2292 = !DILocation(line: 49, column: 27, scope: !2258)
!2293 = !DILocation(line: 49, column: 36, scope: !2258)
!2294 = !DILocation(line: 49, column: 16, scope: !2258)
!2295 = !DILocation(line: 50, column: 30, scope: !2258)
!2296 = !DILocation(line: 50, column: 48, scope: !2258)
!2297 = !DILocation(line: 50, column: 46, scope: !2258)
!2298 = !DILocation(line: 50, column: 32, scope: !2258)
!2299 = !DILocation(line: 50, column: 15, scope: !2258)
!2300 = !DILocation(line: 51, column: 13, scope: !2258)
!2301 = !DILocation(line: 51, column: 19, scope: !2258)
!2302 = !DILocation(line: 51, column: 36, scope: !2258)
!2303 = !DILocation(line: 51, column: 30, scope: !2258)
!2304 = !DILocation(line: 52, column: 13, scope: !2258)
!2305 = !DILocation(line: 52, column: 19, scope: !2258)
!2306 = !DILocation(line: 52, column: 41, scope: !2258)
!2307 = !DILocation(line: 52, column: 48, scope: !2258)
!2308 = !DILocation(line: 52, column: 38, scope: !2258)
!2309 = !DILocation(line: 52, column: 31, scope: !2258)
!2310 = !DILocation(line: 56, column: 23, scope: !2258)
!2311 = !DILocation(line: 56, column: 32, scope: !2258)
!2312 = !DILocation(line: 56, column: 48, scope: !2258)
!2313 = !DILocation(line: 56, column: 12, scope: !2258)
!2314 = !DILocation(line: 58, column: 20, scope: !2258)
!2315 = !DILocation(line: 58, column: 29, scope: !2258)
!2316 = !DILocation(line: 58, column: 27, scope: !2258)
!2317 = !DILocation(line: 58, column: 12, scope: !2258)
!2318 = !DILocation(line: 58, column: 5, scope: !2258)
!2319 = !DILocation(line: 59, column: 1, scope: !2258)
!2320 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !58, retainedNodes: !139)
!2321 = !DILocation(line: 237, column: 44, scope: !2320)
!2322 = !DILocation(line: 237, column: 50, scope: !2320)
!2323 = !DILocation(line: 238, column: 16, scope: !2320)
!2324 = !DILocation(line: 238, column: 5, scope: !2320)
!2325 = distinct !DISubprogram(name: "__floatundidf", scope: !67, file: !67, line: 33, type: !138, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !139)
!2326 = !DILocation(line: 39, column: 37, scope: !2325)
!2327 = !DILocation(line: 40, column: 37, scope: !2325)
!2328 = !DILocation(line: 42, column: 15, scope: !2325)
!2329 = !DILocation(line: 42, column: 17, scope: !2325)
!2330 = !DILocation(line: 42, column: 10, scope: !2325)
!2331 = !DILocation(line: 42, column: 12, scope: !2325)
!2332 = !DILocation(line: 43, column: 14, scope: !2325)
!2333 = !DILocation(line: 43, column: 16, scope: !2325)
!2334 = !DILocation(line: 43, column: 9, scope: !2325)
!2335 = !DILocation(line: 43, column: 11, scope: !2325)
!2336 = !DILocation(line: 45, column: 33, scope: !2325)
!2337 = !DILocation(line: 45, column: 35, scope: !2325)
!2338 = !DILocation(line: 45, column: 63, scope: !2325)
!2339 = !DILocation(line: 45, column: 57, scope: !2325)
!2340 = !DILocation(line: 45, column: 18, scope: !2325)
!2341 = !DILocation(line: 46, column: 12, scope: !2325)
!2342 = !DILocation(line: 46, column: 5, scope: !2325)
!2343 = distinct !DISubprogram(name: "__floatundisf", scope: !69, file: !69, line: 28, type: !138, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !139)
!2344 = !DILocation(line: 30, column: 9, scope: !2343)
!2345 = !DILocation(line: 30, column: 11, scope: !2343)
!2346 = !DILocation(line: 31, column: 9, scope: !2343)
!2347 = !DILocation(line: 32, column: 20, scope: !2343)
!2348 = !DILocation(line: 33, column: 34, scope: !2343)
!2349 = !DILocation(line: 33, column: 18, scope: !2343)
!2350 = !DILocation(line: 33, column: 16, scope: !2343)
!2351 = !DILocation(line: 33, column: 9, scope: !2343)
!2352 = !DILocation(line: 34, column: 13, scope: !2343)
!2353 = !DILocation(line: 34, column: 16, scope: !2343)
!2354 = !DILocation(line: 34, column: 9, scope: !2343)
!2355 = !DILocation(line: 35, column: 9, scope: !2343)
!2356 = !DILocation(line: 35, column: 12, scope: !2343)
!2357 = !DILocation(line: 45, column: 17, scope: !2343)
!2358 = !DILocation(line: 45, column: 9, scope: !2343)
!2359 = !DILocation(line: 48, column: 15, scope: !2343)
!2360 = !DILocation(line: 49, column: 13, scope: !2343)
!2361 = !DILocation(line: 51, column: 13, scope: !2343)
!2362 = !DILocation(line: 53, column: 18, scope: !2343)
!2363 = !DILocation(line: 53, column: 24, scope: !2343)
!2364 = !DILocation(line: 53, column: 27, scope: !2343)
!2365 = !DILocation(line: 53, column: 20, scope: !2343)
!2366 = !DILocation(line: 54, column: 19, scope: !2343)
!2367 = !DILocation(line: 54, column: 64, scope: !2343)
!2368 = !DILocation(line: 54, column: 62, scope: !2343)
!2369 = !DILocation(line: 54, column: 37, scope: !2343)
!2370 = !DILocation(line: 54, column: 21, scope: !2343)
!2371 = !DILocation(line: 54, column: 70, scope: !2343)
!2372 = !DILocation(line: 54, column: 17, scope: !2343)
!2373 = !DILocation(line: 53, column: 48, scope: !2343)
!2374 = !DILocation(line: 53, column: 15, scope: !2343)
!2375 = !DILocation(line: 55, column: 9, scope: !2343)
!2376 = !DILocation(line: 57, column: 15, scope: !2343)
!2377 = !DILocation(line: 57, column: 17, scope: !2343)
!2378 = !DILocation(line: 57, column: 22, scope: !2343)
!2379 = !DILocation(line: 57, column: 14, scope: !2343)
!2380 = !DILocation(line: 57, column: 11, scope: !2343)
!2381 = !DILocation(line: 58, column: 9, scope: !2343)
!2382 = !DILocation(line: 59, column: 11, scope: !2343)
!2383 = !DILocation(line: 61, column: 13, scope: !2343)
!2384 = !DILocation(line: 61, column: 15, scope: !2343)
!2385 = !DILocation(line: 63, column: 15, scope: !2343)
!2386 = !DILocation(line: 64, column: 13, scope: !2343)
!2387 = !DILocation(line: 65, column: 9, scope: !2343)
!2388 = !DILocation(line: 67, column: 5, scope: !2343)
!2389 = !DILocation(line: 70, column: 31, scope: !2343)
!2390 = !DILocation(line: 70, column: 29, scope: !2343)
!2391 = !DILocation(line: 70, column: 11, scope: !2343)
!2392 = !DILocation(line: 74, column: 14, scope: !2343)
!2393 = !DILocation(line: 74, column: 16, scope: !2343)
!2394 = !DILocation(line: 74, column: 23, scope: !2343)
!2395 = !DILocation(line: 75, column: 21, scope: !2343)
!2396 = !DILocation(line: 75, column: 13, scope: !2343)
!2397 = !DILocation(line: 75, column: 23, scope: !2343)
!2398 = !DILocation(line: 74, column: 36, scope: !2343)
!2399 = !DILocation(line: 74, column: 8, scope: !2343)
!2400 = !DILocation(line: 74, column: 10, scope: !2343)
!2401 = !DILocation(line: 76, column: 15, scope: !2343)
!2402 = !DILocation(line: 76, column: 5, scope: !2343)
!2403 = !DILocation(line: 77, column: 1, scope: !2343)
!2404 = distinct !DISubprogram(name: "__floatundixf", scope: !71, file: !71, line: 29, type: !138, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !139)
!2405 = !DILocation(line: 31, column: 9, scope: !2404)
!2406 = !DILocation(line: 31, column: 11, scope: !2404)
!2407 = !DILocation(line: 32, column: 9, scope: !2404)
!2408 = !DILocation(line: 33, column: 20, scope: !2404)
!2409 = !DILocation(line: 34, column: 31, scope: !2404)
!2410 = !DILocation(line: 34, column: 15, scope: !2404)
!2411 = !DILocation(line: 34, column: 9, scope: !2404)
!2412 = !DILocation(line: 35, column: 23, scope: !2404)
!2413 = !DILocation(line: 35, column: 21, scope: !2404)
!2414 = !DILocation(line: 35, column: 9, scope: !2404)
!2415 = !DILocation(line: 37, column: 24, scope: !2404)
!2416 = !DILocation(line: 37, column: 26, scope: !2404)
!2417 = !DILocation(line: 37, column: 8, scope: !2404)
!2418 = !DILocation(line: 37, column: 10, scope: !2404)
!2419 = !DILocation(line: 37, column: 15, scope: !2404)
!2420 = !DILocation(line: 37, column: 17, scope: !2404)
!2421 = !DILocation(line: 37, column: 21, scope: !2404)
!2422 = !DILocation(line: 38, column: 20, scope: !2404)
!2423 = !DILocation(line: 38, column: 25, scope: !2404)
!2424 = !DILocation(line: 38, column: 22, scope: !2404)
!2425 = !DILocation(line: 38, column: 8, scope: !2404)
!2426 = !DILocation(line: 38, column: 10, scope: !2404)
!2427 = !DILocation(line: 38, column: 14, scope: !2404)
!2428 = !DILocation(line: 38, column: 18, scope: !2404)
!2429 = !DILocation(line: 39, column: 15, scope: !2404)
!2430 = !DILocation(line: 39, column: 5, scope: !2404)
!2431 = !DILocation(line: 40, column: 1, scope: !2404)
!2432 = distinct !DISubprogram(name: "__floatunsidf", scope: !73, file: !73, line: 24, type: !138, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !139)
!2433 = !DILocation(line: 26, column: 15, scope: !2432)
!2434 = !DILocation(line: 29, column: 9, scope: !2432)
!2435 = !DILocation(line: 29, column: 11, scope: !2432)
!2436 = !DILocation(line: 29, column: 24, scope: !2432)
!2437 = !DILocation(line: 29, column: 17, scope: !2432)
!2438 = !DILocation(line: 32, column: 55, scope: !2432)
!2439 = !DILocation(line: 32, column: 41, scope: !2432)
!2440 = !DILocation(line: 32, column: 39, scope: !2432)
!2441 = !DILocation(line: 32, column: 15, scope: !2432)
!2442 = !DILocation(line: 36, column: 41, scope: !2432)
!2443 = !DILocation(line: 36, column: 39, scope: !2432)
!2444 = !DILocation(line: 36, column: 15, scope: !2432)
!2445 = !DILocation(line: 37, column: 21, scope: !2432)
!2446 = !DILocation(line: 37, column: 14, scope: !2432)
!2447 = !DILocation(line: 37, column: 26, scope: !2432)
!2448 = !DILocation(line: 37, column: 23, scope: !2432)
!2449 = !DILocation(line: 37, column: 32, scope: !2432)
!2450 = !DILocation(line: 37, column: 12, scope: !2432)
!2451 = !DILocation(line: 40, column: 23, scope: !2432)
!2452 = !DILocation(line: 40, column: 32, scope: !2432)
!2453 = !DILocation(line: 40, column: 15, scope: !2432)
!2454 = !DILocation(line: 40, column: 48, scope: !2432)
!2455 = !DILocation(line: 40, column: 12, scope: !2432)
!2456 = !DILocation(line: 41, column: 20, scope: !2432)
!2457 = !DILocation(line: 41, column: 12, scope: !2432)
!2458 = !DILocation(line: 41, column: 5, scope: !2432)
!2459 = !DILocation(line: 42, column: 1, scope: !2432)
!2460 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !139)
!2461 = !DILocation(line: 237, column: 44, scope: !2460)
!2462 = !DILocation(line: 237, column: 50, scope: !2460)
!2463 = !DILocation(line: 238, column: 16, scope: !2460)
!2464 = !DILocation(line: 238, column: 5, scope: !2460)
!2465 = distinct !DISubprogram(name: "__floatunsisf", scope: !75, file: !75, line: 24, type: !138, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !139)
!2466 = !DILocation(line: 26, column: 15, scope: !2465)
!2467 = !DILocation(line: 29, column: 9, scope: !2465)
!2468 = !DILocation(line: 29, column: 11, scope: !2465)
!2469 = !DILocation(line: 29, column: 24, scope: !2465)
!2470 = !DILocation(line: 29, column: 17, scope: !2465)
!2471 = !DILocation(line: 32, column: 55, scope: !2465)
!2472 = !DILocation(line: 32, column: 41, scope: !2465)
!2473 = !DILocation(line: 32, column: 39, scope: !2465)
!2474 = !DILocation(line: 32, column: 15, scope: !2465)
!2475 = !DILocation(line: 36, column: 9, scope: !2465)
!2476 = !DILocation(line: 36, column: 18, scope: !2465)
!2477 = !DILocation(line: 37, column: 45, scope: !2465)
!2478 = !DILocation(line: 37, column: 43, scope: !2465)
!2479 = !DILocation(line: 37, column: 19, scope: !2465)
!2480 = !DILocation(line: 38, column: 25, scope: !2465)
!2481 = !DILocation(line: 38, column: 30, scope: !2465)
!2482 = !DILocation(line: 38, column: 27, scope: !2465)
!2483 = !DILocation(line: 38, column: 36, scope: !2465)
!2484 = !DILocation(line: 38, column: 16, scope: !2465)
!2485 = !DILocation(line: 39, column: 5, scope: !2465)
!2486 = !DILocation(line: 40, column: 27, scope: !2465)
!2487 = !DILocation(line: 40, column: 36, scope: !2465)
!2488 = !DILocation(line: 40, column: 19, scope: !2465)
!2489 = !DILocation(line: 41, column: 25, scope: !2465)
!2490 = !DILocation(line: 41, column: 30, scope: !2465)
!2491 = !DILocation(line: 41, column: 27, scope: !2465)
!2492 = !DILocation(line: 41, column: 36, scope: !2465)
!2493 = !DILocation(line: 41, column: 16, scope: !2465)
!2494 = !DILocation(line: 42, column: 30, scope: !2465)
!2495 = !DILocation(line: 42, column: 48, scope: !2465)
!2496 = !DILocation(line: 42, column: 46, scope: !2465)
!2497 = !DILocation(line: 42, column: 32, scope: !2465)
!2498 = !DILocation(line: 42, column: 15, scope: !2465)
!2499 = !DILocation(line: 43, column: 13, scope: !2465)
!2500 = !DILocation(line: 43, column: 19, scope: !2465)
!2501 = !DILocation(line: 43, column: 36, scope: !2465)
!2502 = !DILocation(line: 43, column: 30, scope: !2465)
!2503 = !DILocation(line: 44, column: 13, scope: !2465)
!2504 = !DILocation(line: 44, column: 19, scope: !2465)
!2505 = !DILocation(line: 44, column: 41, scope: !2465)
!2506 = !DILocation(line: 44, column: 48, scope: !2465)
!2507 = !DILocation(line: 44, column: 38, scope: !2465)
!2508 = !DILocation(line: 44, column: 31, scope: !2465)
!2509 = !DILocation(line: 48, column: 23, scope: !2465)
!2510 = !DILocation(line: 48, column: 32, scope: !2465)
!2511 = !DILocation(line: 48, column: 48, scope: !2465)
!2512 = !DILocation(line: 48, column: 12, scope: !2465)
!2513 = !DILocation(line: 49, column: 20, scope: !2465)
!2514 = !DILocation(line: 49, column: 12, scope: !2465)
!2515 = !DILocation(line: 49, column: 5, scope: !2465)
!2516 = !DILocation(line: 50, column: 1, scope: !2465)
!2517 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !74, retainedNodes: !139)
!2518 = !DILocation(line: 237, column: 44, scope: !2517)
!2519 = !DILocation(line: 237, column: 50, scope: !2517)
!2520 = !DILocation(line: 238, column: 16, scope: !2517)
!2521 = !DILocation(line: 238, column: 5, scope: !2517)
!2522 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !83, file: !83, line: 57, type: !138, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !139)
!2523 = !DILocation(line: 59, column: 1, scope: !2522)
!2524 = distinct !DISubprogram(name: "__muldf3", scope: !85, file: !85, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2525 = !DILocation(line: 21, column: 23, scope: !2524)
!2526 = !DILocation(line: 21, column: 26, scope: !2524)
!2527 = !DILocation(line: 21, column: 12, scope: !2524)
!2528 = !DILocation(line: 21, column: 5, scope: !2524)
!2529 = distinct !DISubprogram(name: "__mulXf3__", scope: !2530, file: !2530, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2530 = !DIFile(filename: "../fp_mul_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "cb8b87aca5fd73e925ac34f9720dae07")
!2531 = !DILocation(line: 18, column: 42, scope: !2529)
!2532 = !DILocation(line: 18, column: 36, scope: !2529)
!2533 = !DILocation(line: 18, column: 45, scope: !2529)
!2534 = !DILocation(line: 18, column: 64, scope: !2529)
!2535 = !DILocation(line: 18, column: 24, scope: !2529)
!2536 = !DILocation(line: 19, column: 42, scope: !2529)
!2537 = !DILocation(line: 19, column: 36, scope: !2529)
!2538 = !DILocation(line: 19, column: 45, scope: !2529)
!2539 = !DILocation(line: 19, column: 64, scope: !2529)
!2540 = !DILocation(line: 19, column: 24, scope: !2529)
!2541 = !DILocation(line: 20, column: 38, scope: !2529)
!2542 = !DILocation(line: 20, column: 32, scope: !2529)
!2543 = !DILocation(line: 20, column: 49, scope: !2529)
!2544 = !DILocation(line: 20, column: 43, scope: !2529)
!2545 = !DILocation(line: 20, column: 41, scope: !2529)
!2546 = !DILocation(line: 20, column: 53, scope: !2529)
!2547 = !DILocation(line: 20, column: 17, scope: !2529)
!2548 = !DILocation(line: 22, column: 32, scope: !2529)
!2549 = !DILocation(line: 22, column: 26, scope: !2529)
!2550 = !DILocation(line: 22, column: 35, scope: !2529)
!2551 = !DILocation(line: 22, column: 11, scope: !2529)
!2552 = !DILocation(line: 23, column: 32, scope: !2529)
!2553 = !DILocation(line: 23, column: 26, scope: !2529)
!2554 = !DILocation(line: 23, column: 35, scope: !2529)
!2555 = !DILocation(line: 23, column: 11, scope: !2529)
!2556 = !DILocation(line: 24, column: 9, scope: !2529)
!2557 = !DILocation(line: 27, column: 9, scope: !2529)
!2558 = !DILocation(line: 27, column: 18, scope: !2529)
!2559 = !DILocation(line: 27, column: 22, scope: !2529)
!2560 = !DILocation(line: 27, column: 40, scope: !2529)
!2561 = !DILocation(line: 27, column: 43, scope: !2529)
!2562 = !DILocation(line: 27, column: 52, scope: !2529)
!2563 = !DILocation(line: 27, column: 56, scope: !2529)
!2564 = !DILocation(line: 29, column: 34, scope: !2529)
!2565 = !DILocation(line: 29, column: 28, scope: !2529)
!2566 = !DILocation(line: 29, column: 37, scope: !2529)
!2567 = !DILocation(line: 29, column: 21, scope: !2529)
!2568 = !DILocation(line: 30, column: 34, scope: !2529)
!2569 = !DILocation(line: 30, column: 28, scope: !2529)
!2570 = !DILocation(line: 30, column: 37, scope: !2529)
!2571 = !DILocation(line: 30, column: 21, scope: !2529)
!2572 = !DILocation(line: 33, column: 13, scope: !2529)
!2573 = !DILocation(line: 33, column: 18, scope: !2529)
!2574 = !DILocation(line: 33, column: 49, scope: !2529)
!2575 = !DILocation(line: 33, column: 43, scope: !2529)
!2576 = !DILocation(line: 33, column: 52, scope: !2529)
!2577 = !DILocation(line: 33, column: 35, scope: !2529)
!2578 = !DILocation(line: 33, column: 28, scope: !2529)
!2579 = !DILocation(line: 35, column: 13, scope: !2529)
!2580 = !DILocation(line: 35, column: 18, scope: !2529)
!2581 = !DILocation(line: 35, column: 49, scope: !2529)
!2582 = !DILocation(line: 35, column: 43, scope: !2529)
!2583 = !DILocation(line: 35, column: 52, scope: !2529)
!2584 = !DILocation(line: 35, column: 35, scope: !2529)
!2585 = !DILocation(line: 35, column: 28, scope: !2529)
!2586 = !DILocation(line: 37, column: 13, scope: !2529)
!2587 = !DILocation(line: 37, column: 18, scope: !2529)
!2588 = !DILocation(line: 39, column: 17, scope: !2529)
!2589 = !DILocation(line: 39, column: 38, scope: !2529)
!2590 = !DILocation(line: 39, column: 45, scope: !2529)
!2591 = !DILocation(line: 39, column: 43, scope: !2529)
!2592 = !DILocation(line: 39, column: 30, scope: !2529)
!2593 = !DILocation(line: 39, column: 23, scope: !2529)
!2594 = !DILocation(line: 41, column: 25, scope: !2529)
!2595 = !DILocation(line: 41, column: 18, scope: !2529)
!2596 = !DILocation(line: 44, column: 13, scope: !2529)
!2597 = !DILocation(line: 44, column: 18, scope: !2529)
!2598 = !DILocation(line: 46, column: 17, scope: !2529)
!2599 = !DILocation(line: 46, column: 38, scope: !2529)
!2600 = !DILocation(line: 46, column: 45, scope: !2529)
!2601 = !DILocation(line: 46, column: 43, scope: !2529)
!2602 = !DILocation(line: 46, column: 30, scope: !2529)
!2603 = !DILocation(line: 46, column: 23, scope: !2529)
!2604 = !DILocation(line: 48, column: 25, scope: !2529)
!2605 = !DILocation(line: 48, column: 18, scope: !2529)
!2606 = !DILocation(line: 52, column: 14, scope: !2529)
!2607 = !DILocation(line: 52, column: 13, scope: !2529)
!2608 = !DILocation(line: 52, column: 35, scope: !2529)
!2609 = !DILocation(line: 52, column: 27, scope: !2529)
!2610 = !DILocation(line: 52, column: 20, scope: !2529)
!2611 = !DILocation(line: 54, column: 14, scope: !2529)
!2612 = !DILocation(line: 54, column: 13, scope: !2529)
!2613 = !DILocation(line: 54, column: 35, scope: !2529)
!2614 = !DILocation(line: 54, column: 27, scope: !2529)
!2615 = !DILocation(line: 54, column: 20, scope: !2529)
!2616 = !DILocation(line: 59, column: 13, scope: !2529)
!2617 = !DILocation(line: 59, column: 18, scope: !2529)
!2618 = !DILocation(line: 59, column: 42, scope: !2529)
!2619 = !DILocation(line: 59, column: 39, scope: !2529)
!2620 = !DILocation(line: 59, column: 33, scope: !2529)
!2621 = !DILocation(line: 60, column: 13, scope: !2529)
!2622 = !DILocation(line: 60, column: 18, scope: !2529)
!2623 = !DILocation(line: 60, column: 42, scope: !2529)
!2624 = !DILocation(line: 60, column: 39, scope: !2529)
!2625 = !DILocation(line: 60, column: 33, scope: !2529)
!2626 = !DILocation(line: 61, column: 5, scope: !2529)
!2627 = !DILocation(line: 66, column: 18, scope: !2529)
!2628 = !DILocation(line: 67, column: 18, scope: !2529)
!2629 = !DILocation(line: 75, column: 18, scope: !2529)
!2630 = !DILocation(line: 75, column: 32, scope: !2529)
!2631 = !DILocation(line: 75, column: 45, scope: !2529)
!2632 = !DILocation(line: 75, column: 5, scope: !2529)
!2633 = !DILocation(line: 78, column: 27, scope: !2529)
!2634 = !DILocation(line: 78, column: 39, scope: !2529)
!2635 = !DILocation(line: 78, column: 37, scope: !2529)
!2636 = !DILocation(line: 78, column: 49, scope: !2529)
!2637 = !DILocation(line: 78, column: 66, scope: !2529)
!2638 = !DILocation(line: 78, column: 64, scope: !2529)
!2639 = !DILocation(line: 78, column: 9, scope: !2529)
!2640 = !DILocation(line: 81, column: 9, scope: !2529)
!2641 = !DILocation(line: 81, column: 19, scope: !2529)
!2642 = !DILocation(line: 81, column: 49, scope: !2529)
!2643 = !DILocation(line: 81, column: 34, scope: !2529)
!2644 = !DILocation(line: 82, column: 10, scope: !2529)
!2645 = !DILocation(line: 85, column: 9, scope: !2529)
!2646 = !DILocation(line: 85, column: 25, scope: !2529)
!2647 = !DILocation(line: 85, column: 65, scope: !2529)
!2648 = !DILocation(line: 85, column: 63, scope: !2529)
!2649 = !DILocation(line: 85, column: 48, scope: !2529)
!2650 = !DILocation(line: 85, column: 41, scope: !2529)
!2651 = !DILocation(line: 87, column: 9, scope: !2529)
!2652 = !DILocation(line: 87, column: 25, scope: !2529)
!2653 = !DILocation(line: 94, column: 61, scope: !2529)
!2654 = !DILocation(line: 94, column: 47, scope: !2529)
!2655 = !DILocation(line: 94, column: 45, scope: !2529)
!2656 = !DILocation(line: 94, column: 36, scope: !2529)
!2657 = !DILocation(line: 94, column: 28, scope: !2529)
!2658 = !DILocation(line: 95, column: 13, scope: !2529)
!2659 = !DILocation(line: 95, column: 19, scope: !2529)
!2660 = !DILocation(line: 95, column: 48, scope: !2529)
!2661 = !DILocation(line: 95, column: 40, scope: !2529)
!2662 = !DILocation(line: 95, column: 33, scope: !2529)
!2663 = !DILocation(line: 99, column: 58, scope: !2529)
!2664 = !DILocation(line: 99, column: 9, scope: !2529)
!2665 = !DILocation(line: 100, column: 5, scope: !2529)
!2666 = !DILocation(line: 103, column: 19, scope: !2529)
!2667 = !DILocation(line: 104, column: 29, scope: !2529)
!2668 = !DILocation(line: 104, column: 22, scope: !2529)
!2669 = !DILocation(line: 104, column: 45, scope: !2529)
!2670 = !DILocation(line: 104, column: 19, scope: !2529)
!2671 = !DILocation(line: 108, column: 18, scope: !2529)
!2672 = !DILocation(line: 108, column: 15, scope: !2529)
!2673 = !DILocation(line: 113, column: 9, scope: !2529)
!2674 = !DILocation(line: 113, column: 19, scope: !2529)
!2675 = !DILocation(line: 113, column: 39, scope: !2529)
!2676 = !DILocation(line: 113, column: 30, scope: !2529)
!2677 = !DILocation(line: 114, column: 9, scope: !2529)
!2678 = !DILocation(line: 114, column: 19, scope: !2529)
!2679 = !DILocation(line: 114, column: 44, scope: !2529)
!2680 = !DILocation(line: 114, column: 54, scope: !2529)
!2681 = !DILocation(line: 114, column: 41, scope: !2529)
!2682 = !DILocation(line: 114, column: 31, scope: !2529)
!2683 = !DILocation(line: 115, column: 20, scope: !2529)
!2684 = !DILocation(line: 115, column: 12, scope: !2529)
!2685 = !DILocation(line: 115, column: 5, scope: !2529)
!2686 = !DILocation(line: 116, column: 1, scope: !2529)
!2687 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2688 = !DILocation(line: 232, column: 44, scope: !2687)
!2689 = !DILocation(line: 232, column: 50, scope: !2687)
!2690 = !DILocation(line: 233, column: 16, scope: !2687)
!2691 = !DILocation(line: 233, column: 5, scope: !2687)
!2692 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2693 = !DILocation(line: 237, column: 44, scope: !2692)
!2694 = !DILocation(line: 237, column: 50, scope: !2692)
!2695 = !DILocation(line: 238, column: 16, scope: !2692)
!2696 = !DILocation(line: 238, column: 5, scope: !2692)
!2697 = distinct !DISubprogram(name: "normalize", scope: !372, file: !372, line: 241, type: !138, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2698 = !DILocation(line: 242, column: 32, scope: !2697)
!2699 = !DILocation(line: 242, column: 31, scope: !2697)
!2700 = !DILocation(line: 242, column: 23, scope: !2697)
!2701 = !DILocation(line: 242, column: 47, scope: !2697)
!2702 = !DILocation(line: 242, column: 45, scope: !2697)
!2703 = !DILocation(line: 242, column: 15, scope: !2697)
!2704 = !DILocation(line: 243, column: 22, scope: !2697)
!2705 = !DILocation(line: 243, column: 6, scope: !2697)
!2706 = !DILocation(line: 243, column: 18, scope: !2697)
!2707 = !DILocation(line: 244, column: 16, scope: !2697)
!2708 = !DILocation(line: 244, column: 14, scope: !2697)
!2709 = !DILocation(line: 244, column: 5, scope: !2697)
!2710 = distinct !DISubprogram(name: "wideMultiply", scope: !372, file: !372, line: 86, type: !138, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2711 = !DILocation(line: 88, column: 28, scope: !2710)
!2712 = !DILocation(line: 88, column: 40, scope: !2710)
!2713 = !DILocation(line: 88, column: 38, scope: !2710)
!2714 = !DILocation(line: 88, column: 20, scope: !2710)
!2715 = !DILocation(line: 89, column: 28, scope: !2710)
!2716 = !DILocation(line: 89, column: 40, scope: !2710)
!2717 = !DILocation(line: 89, column: 38, scope: !2710)
!2718 = !DILocation(line: 89, column: 20, scope: !2710)
!2719 = !DILocation(line: 90, column: 28, scope: !2710)
!2720 = !DILocation(line: 90, column: 40, scope: !2710)
!2721 = !DILocation(line: 90, column: 38, scope: !2710)
!2722 = !DILocation(line: 90, column: 20, scope: !2710)
!2723 = !DILocation(line: 91, column: 28, scope: !2710)
!2724 = !DILocation(line: 91, column: 40, scope: !2710)
!2725 = !DILocation(line: 91, column: 38, scope: !2710)
!2726 = !DILocation(line: 91, column: 20, scope: !2710)
!2727 = !DILocation(line: 93, column: 25, scope: !2710)
!2728 = !DILocation(line: 93, column: 20, scope: !2710)
!2729 = !DILocation(line: 94, column: 25, scope: !2710)
!2730 = !DILocation(line: 94, column: 41, scope: !2710)
!2731 = !DILocation(line: 94, column: 39, scope: !2710)
!2732 = !DILocation(line: 94, column: 57, scope: !2710)
!2733 = !DILocation(line: 94, column: 55, scope: !2710)
!2734 = !DILocation(line: 94, column: 20, scope: !2710)
!2735 = !DILocation(line: 95, column: 11, scope: !2710)
!2736 = !DILocation(line: 95, column: 17, scope: !2710)
!2737 = !DILocation(line: 95, column: 20, scope: !2710)
!2738 = !DILocation(line: 95, column: 14, scope: !2710)
!2739 = !DILocation(line: 95, column: 6, scope: !2710)
!2740 = !DILocation(line: 95, column: 9, scope: !2710)
!2741 = !DILocation(line: 97, column: 11, scope: !2710)
!2742 = !DILocation(line: 97, column: 27, scope: !2710)
!2743 = !DILocation(line: 97, column: 25, scope: !2710)
!2744 = !DILocation(line: 97, column: 43, scope: !2710)
!2745 = !DILocation(line: 97, column: 41, scope: !2710)
!2746 = !DILocation(line: 97, column: 56, scope: !2710)
!2747 = !DILocation(line: 97, column: 54, scope: !2710)
!2748 = !DILocation(line: 97, column: 6, scope: !2710)
!2749 = !DILocation(line: 97, column: 9, scope: !2710)
!2750 = !DILocation(line: 98, column: 1, scope: !2710)
!2751 = distinct !DISubprogram(name: "wideLeftShift", scope: !372, file: !372, line: 247, type: !138, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2752 = !DILocation(line: 248, column: 12, scope: !2751)
!2753 = !DILocation(line: 248, column: 11, scope: !2751)
!2754 = !DILocation(line: 248, column: 18, scope: !2751)
!2755 = !DILocation(line: 248, column: 15, scope: !2751)
!2756 = !DILocation(line: 248, column: 27, scope: !2751)
!2757 = !DILocation(line: 248, column: 26, scope: !2751)
!2758 = !DILocation(line: 248, column: 46, scope: !2751)
!2759 = !DILocation(line: 248, column: 44, scope: !2751)
!2760 = !DILocation(line: 248, column: 30, scope: !2751)
!2761 = !DILocation(line: 248, column: 24, scope: !2751)
!2762 = !DILocation(line: 248, column: 6, scope: !2751)
!2763 = !DILocation(line: 248, column: 9, scope: !2751)
!2764 = !DILocation(line: 249, column: 12, scope: !2751)
!2765 = !DILocation(line: 249, column: 11, scope: !2751)
!2766 = !DILocation(line: 249, column: 18, scope: !2751)
!2767 = !DILocation(line: 249, column: 15, scope: !2751)
!2768 = !DILocation(line: 249, column: 6, scope: !2751)
!2769 = !DILocation(line: 249, column: 9, scope: !2751)
!2770 = !DILocation(line: 250, column: 1, scope: !2751)
!2771 = distinct !DISubprogram(name: "wideRightShiftWithSticky", scope: !372, file: !372, line: 252, type: !138, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2772 = !DILocation(line: 253, column: 9, scope: !2771)
!2773 = !DILocation(line: 253, column: 15, scope: !2771)
!2774 = !DILocation(line: 254, column: 30, scope: !2771)
!2775 = !DILocation(line: 254, column: 29, scope: !2771)
!2776 = !DILocation(line: 254, column: 49, scope: !2771)
!2777 = !DILocation(line: 254, column: 47, scope: !2771)
!2778 = !DILocation(line: 254, column: 33, scope: !2771)
!2779 = !DILocation(line: 254, column: 20, scope: !2771)
!2780 = !DILocation(line: 255, column: 16, scope: !2771)
!2781 = !DILocation(line: 255, column: 15, scope: !2771)
!2782 = !DILocation(line: 255, column: 35, scope: !2771)
!2783 = !DILocation(line: 255, column: 33, scope: !2771)
!2784 = !DILocation(line: 255, column: 19, scope: !2771)
!2785 = !DILocation(line: 255, column: 45, scope: !2771)
!2786 = !DILocation(line: 255, column: 44, scope: !2771)
!2787 = !DILocation(line: 255, column: 51, scope: !2771)
!2788 = !DILocation(line: 255, column: 48, scope: !2771)
!2789 = !DILocation(line: 255, column: 42, scope: !2771)
!2790 = !DILocation(line: 255, column: 59, scope: !2771)
!2791 = !DILocation(line: 255, column: 57, scope: !2771)
!2792 = !DILocation(line: 255, column: 10, scope: !2771)
!2793 = !DILocation(line: 255, column: 13, scope: !2771)
!2794 = !DILocation(line: 256, column: 16, scope: !2771)
!2795 = !DILocation(line: 256, column: 15, scope: !2771)
!2796 = !DILocation(line: 256, column: 22, scope: !2771)
!2797 = !DILocation(line: 256, column: 19, scope: !2771)
!2798 = !DILocation(line: 256, column: 10, scope: !2771)
!2799 = !DILocation(line: 256, column: 13, scope: !2771)
!2800 = !DILocation(line: 257, column: 5, scope: !2771)
!2801 = !DILocation(line: 258, column: 14, scope: !2771)
!2802 = !DILocation(line: 258, column: 20, scope: !2771)
!2803 = !DILocation(line: 259, column: 30, scope: !2771)
!2804 = !DILocation(line: 259, column: 29, scope: !2771)
!2805 = !DILocation(line: 259, column: 51, scope: !2771)
!2806 = !DILocation(line: 259, column: 49, scope: !2771)
!2807 = !DILocation(line: 259, column: 33, scope: !2771)
!2808 = !DILocation(line: 259, column: 61, scope: !2771)
!2809 = !DILocation(line: 259, column: 60, scope: !2771)
!2810 = !DILocation(line: 259, column: 58, scope: !2771)
!2811 = !DILocation(line: 259, column: 20, scope: !2771)
!2812 = !DILocation(line: 260, column: 16, scope: !2771)
!2813 = !DILocation(line: 260, column: 15, scope: !2771)
!2814 = !DILocation(line: 260, column: 23, scope: !2771)
!2815 = !DILocation(line: 260, column: 29, scope: !2771)
!2816 = !DILocation(line: 260, column: 19, scope: !2771)
!2817 = !DILocation(line: 260, column: 44, scope: !2771)
!2818 = !DILocation(line: 260, column: 42, scope: !2771)
!2819 = !DILocation(line: 260, column: 10, scope: !2771)
!2820 = !DILocation(line: 260, column: 13, scope: !2771)
!2821 = !DILocation(line: 261, column: 10, scope: !2771)
!2822 = !DILocation(line: 261, column: 13, scope: !2771)
!2823 = !DILocation(line: 262, column: 5, scope: !2771)
!2824 = !DILocation(line: 263, column: 30, scope: !2771)
!2825 = !DILocation(line: 263, column: 29, scope: !2771)
!2826 = !DILocation(line: 263, column: 36, scope: !2771)
!2827 = !DILocation(line: 263, column: 35, scope: !2771)
!2828 = !DILocation(line: 263, column: 33, scope: !2771)
!2829 = !DILocation(line: 263, column: 20, scope: !2771)
!2830 = !DILocation(line: 264, column: 15, scope: !2771)
!2831 = !DILocation(line: 264, column: 10, scope: !2771)
!2832 = !DILocation(line: 264, column: 13, scope: !2771)
!2833 = !DILocation(line: 265, column: 10, scope: !2771)
!2834 = !DILocation(line: 265, column: 13, scope: !2771)
!2835 = !DILocation(line: 267, column: 1, scope: !2771)
!2836 = distinct !DISubprogram(name: "rep_clz", scope: !372, file: !372, line: 69, type: !138, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !139)
!2837 = !DILocation(line: 73, column: 9, scope: !2836)
!2838 = !DILocation(line: 73, column: 11, scope: !2836)
!2839 = !DILocation(line: 74, column: 30, scope: !2836)
!2840 = !DILocation(line: 74, column: 32, scope: !2836)
!2841 = !DILocation(line: 74, column: 16, scope: !2836)
!2842 = !DILocation(line: 74, column: 9, scope: !2836)
!2843 = !DILocation(line: 76, column: 35, scope: !2836)
!2844 = !DILocation(line: 76, column: 37, scope: !2836)
!2845 = !DILocation(line: 76, column: 21, scope: !2836)
!2846 = !DILocation(line: 76, column: 19, scope: !2836)
!2847 = !DILocation(line: 76, column: 9, scope: !2836)
!2848 = !DILocation(line: 78, column: 1, scope: !2836)
!2849 = distinct !DISubprogram(name: "__muldi3", scope: !87, file: !87, line: 46, type: !138, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !139)
!2850 = !DILocation(line: 49, column: 13, scope: !2849)
!2851 = !DILocation(line: 49, column: 7, scope: !2849)
!2852 = !DILocation(line: 49, column: 11, scope: !2849)
!2853 = !DILocation(line: 51, column: 13, scope: !2849)
!2854 = !DILocation(line: 51, column: 7, scope: !2849)
!2855 = !DILocation(line: 51, column: 11, scope: !2849)
!2856 = !DILocation(line: 53, column: 25, scope: !2849)
!2857 = !DILocation(line: 53, column: 27, scope: !2849)
!2858 = !DILocation(line: 53, column: 34, scope: !2849)
!2859 = !DILocation(line: 53, column: 36, scope: !2849)
!2860 = !DILocation(line: 53, column: 13, scope: !2849)
!2861 = !DILocation(line: 53, column: 7, scope: !2849)
!2862 = !DILocation(line: 53, column: 11, scope: !2849)
!2863 = !DILocation(line: 54, column: 19, scope: !2849)
!2864 = !DILocation(line: 54, column: 21, scope: !2849)
!2865 = !DILocation(line: 54, column: 30, scope: !2849)
!2866 = !DILocation(line: 54, column: 32, scope: !2849)
!2867 = !DILocation(line: 54, column: 26, scope: !2849)
!2868 = !DILocation(line: 54, column: 40, scope: !2849)
!2869 = !DILocation(line: 54, column: 42, scope: !2849)
!2870 = !DILocation(line: 54, column: 50, scope: !2849)
!2871 = !DILocation(line: 54, column: 52, scope: !2849)
!2872 = !DILocation(line: 54, column: 46, scope: !2849)
!2873 = !DILocation(line: 54, column: 36, scope: !2849)
!2874 = !DILocation(line: 54, column: 7, scope: !2849)
!2875 = !DILocation(line: 54, column: 9, scope: !2849)
!2876 = !DILocation(line: 54, column: 14, scope: !2849)
!2877 = !DILocation(line: 55, column: 14, scope: !2849)
!2878 = !DILocation(line: 55, column: 5, scope: !2849)
!2879 = distinct !DISubprogram(name: "__muldsi3", scope: !87, file: !87, line: 21, type: !138, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !139)
!2880 = !DILocation(line: 24, column: 15, scope: !2879)
!2881 = !DILocation(line: 25, column: 18, scope: !2879)
!2882 = !DILocation(line: 26, column: 16, scope: !2879)
!2883 = !DILocation(line: 26, column: 18, scope: !2879)
!2884 = !DILocation(line: 26, column: 35, scope: !2879)
!2885 = !DILocation(line: 26, column: 37, scope: !2879)
!2886 = !DILocation(line: 26, column: 32, scope: !2879)
!2887 = !DILocation(line: 26, column: 7, scope: !2879)
!2888 = !DILocation(line: 26, column: 9, scope: !2879)
!2889 = !DILocation(line: 26, column: 13, scope: !2879)
!2890 = !DILocation(line: 27, column: 18, scope: !2879)
!2891 = !DILocation(line: 27, column: 20, scope: !2879)
!2892 = !DILocation(line: 27, column: 24, scope: !2879)
!2893 = !DILocation(line: 27, column: 12, scope: !2879)
!2894 = !DILocation(line: 28, column: 7, scope: !2879)
!2895 = !DILocation(line: 28, column: 9, scope: !2879)
!2896 = !DILocation(line: 28, column: 13, scope: !2879)
!2897 = !DILocation(line: 29, column: 11, scope: !2879)
!2898 = !DILocation(line: 29, column: 13, scope: !2879)
!2899 = !DILocation(line: 29, column: 35, scope: !2879)
!2900 = !DILocation(line: 29, column: 37, scope: !2879)
!2901 = !DILocation(line: 29, column: 32, scope: !2879)
!2902 = !DILocation(line: 29, column: 7, scope: !2879)
!2903 = !DILocation(line: 30, column: 17, scope: !2879)
!2904 = !DILocation(line: 30, column: 19, scope: !2879)
!2905 = !DILocation(line: 30, column: 33, scope: !2879)
!2906 = !DILocation(line: 30, column: 7, scope: !2879)
!2907 = !DILocation(line: 30, column: 9, scope: !2879)
!2908 = !DILocation(line: 30, column: 13, scope: !2879)
!2909 = !DILocation(line: 31, column: 16, scope: !2879)
!2910 = !DILocation(line: 31, column: 18, scope: !2879)
!2911 = !DILocation(line: 31, column: 7, scope: !2879)
!2912 = !DILocation(line: 31, column: 9, scope: !2879)
!2913 = !DILocation(line: 31, column: 14, scope: !2879)
!2914 = !DILocation(line: 32, column: 11, scope: !2879)
!2915 = !DILocation(line: 32, column: 13, scope: !2879)
!2916 = !DILocation(line: 32, column: 17, scope: !2879)
!2917 = !DILocation(line: 32, column: 7, scope: !2879)
!2918 = !DILocation(line: 33, column: 7, scope: !2879)
!2919 = !DILocation(line: 33, column: 9, scope: !2879)
!2920 = !DILocation(line: 33, column: 13, scope: !2879)
!2921 = !DILocation(line: 34, column: 11, scope: !2879)
!2922 = !DILocation(line: 34, column: 13, scope: !2879)
!2923 = !DILocation(line: 34, column: 35, scope: !2879)
!2924 = !DILocation(line: 34, column: 37, scope: !2879)
!2925 = !DILocation(line: 34, column: 32, scope: !2879)
!2926 = !DILocation(line: 34, column: 7, scope: !2879)
!2927 = !DILocation(line: 35, column: 17, scope: !2879)
!2928 = !DILocation(line: 35, column: 19, scope: !2879)
!2929 = !DILocation(line: 35, column: 33, scope: !2879)
!2930 = !DILocation(line: 35, column: 7, scope: !2879)
!2931 = !DILocation(line: 35, column: 9, scope: !2879)
!2932 = !DILocation(line: 35, column: 13, scope: !2879)
!2933 = !DILocation(line: 36, column: 17, scope: !2879)
!2934 = !DILocation(line: 36, column: 19, scope: !2879)
!2935 = !DILocation(line: 36, column: 7, scope: !2879)
!2936 = !DILocation(line: 36, column: 9, scope: !2879)
!2937 = !DILocation(line: 36, column: 14, scope: !2879)
!2938 = !DILocation(line: 37, column: 18, scope: !2879)
!2939 = !DILocation(line: 37, column: 20, scope: !2879)
!2940 = !DILocation(line: 37, column: 42, scope: !2879)
!2941 = !DILocation(line: 37, column: 44, scope: !2879)
!2942 = !DILocation(line: 37, column: 39, scope: !2879)
!2943 = !DILocation(line: 37, column: 7, scope: !2879)
!2944 = !DILocation(line: 37, column: 9, scope: !2879)
!2945 = !DILocation(line: 37, column: 14, scope: !2879)
!2946 = !DILocation(line: 38, column: 14, scope: !2879)
!2947 = !DILocation(line: 38, column: 5, scope: !2879)
!2948 = distinct !DISubprogram(name: "__mulodi4", scope: !89, file: !89, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !139)
!2949 = !DILocation(line: 24, column: 15, scope: !2948)
!2950 = !DILocation(line: 25, column: 18, scope: !2948)
!2951 = !DILocation(line: 26, column: 18, scope: !2948)
!2952 = !DILocation(line: 27, column: 6, scope: !2948)
!2953 = !DILocation(line: 27, column: 15, scope: !2948)
!2954 = !DILocation(line: 28, column: 21, scope: !2948)
!2955 = !DILocation(line: 28, column: 25, scope: !2948)
!2956 = !DILocation(line: 28, column: 23, scope: !2948)
!2957 = !DILocation(line: 28, column: 12, scope: !2948)
!2958 = !DILocation(line: 29, column: 9, scope: !2948)
!2959 = !DILocation(line: 29, column: 11, scope: !2948)
!2960 = !DILocation(line: 31, column: 13, scope: !2948)
!2961 = !DILocation(line: 31, column: 15, scope: !2948)
!2962 = !DILocation(line: 31, column: 20, scope: !2948)
!2963 = !DILocation(line: 31, column: 23, scope: !2948)
!2964 = !DILocation(line: 31, column: 25, scope: !2948)
!2965 = !DILocation(line: 32, column: 7, scope: !2948)
!2966 = !DILocation(line: 32, column: 16, scope: !2948)
!2967 = !DILocation(line: 32, column: 6, scope: !2948)
!2968 = !DILocation(line: 33, column: 9, scope: !2948)
!2969 = !DILocation(line: 33, column: 2, scope: !2948)
!2970 = !DILocation(line: 35, column: 9, scope: !2948)
!2971 = !DILocation(line: 35, column: 11, scope: !2948)
!2972 = !DILocation(line: 37, column: 13, scope: !2948)
!2973 = !DILocation(line: 37, column: 15, scope: !2948)
!2974 = !DILocation(line: 37, column: 20, scope: !2948)
!2975 = !DILocation(line: 37, column: 23, scope: !2948)
!2976 = !DILocation(line: 37, column: 25, scope: !2948)
!2977 = !DILocation(line: 38, column: 7, scope: !2948)
!2978 = !DILocation(line: 38, column: 16, scope: !2948)
!2979 = !DILocation(line: 38, column: 6, scope: !2948)
!2980 = !DILocation(line: 39, column: 16, scope: !2948)
!2981 = !DILocation(line: 39, column: 9, scope: !2948)
!2982 = !DILocation(line: 41, column: 17, scope: !2948)
!2983 = !DILocation(line: 41, column: 19, scope: !2948)
!2984 = !DILocation(line: 41, column: 12, scope: !2948)
!2985 = !DILocation(line: 42, column: 21, scope: !2948)
!2986 = !DILocation(line: 42, column: 25, scope: !2948)
!2987 = !DILocation(line: 42, column: 23, scope: !2948)
!2988 = !DILocation(line: 42, column: 31, scope: !2948)
!2989 = !DILocation(line: 42, column: 29, scope: !2948)
!2990 = !DILocation(line: 42, column: 12, scope: !2948)
!2991 = !DILocation(line: 43, column: 17, scope: !2948)
!2992 = !DILocation(line: 43, column: 19, scope: !2948)
!2993 = !DILocation(line: 43, column: 12, scope: !2948)
!2994 = !DILocation(line: 44, column: 21, scope: !2948)
!2995 = !DILocation(line: 44, column: 25, scope: !2948)
!2996 = !DILocation(line: 44, column: 23, scope: !2948)
!2997 = !DILocation(line: 44, column: 31, scope: !2948)
!2998 = !DILocation(line: 44, column: 29, scope: !2948)
!2999 = !DILocation(line: 44, column: 12, scope: !2948)
!3000 = !DILocation(line: 45, column: 9, scope: !2948)
!3001 = !DILocation(line: 45, column: 15, scope: !2948)
!3002 = !DILocation(line: 45, column: 19, scope: !2948)
!3003 = !DILocation(line: 45, column: 22, scope: !2948)
!3004 = !DILocation(line: 45, column: 28, scope: !2948)
!3005 = !DILocation(line: 46, column: 16, scope: !2948)
!3006 = !DILocation(line: 46, column: 9, scope: !2948)
!3007 = !DILocation(line: 47, column: 9, scope: !2948)
!3008 = !DILocation(line: 47, column: 15, scope: !2948)
!3009 = !DILocation(line: 47, column: 12, scope: !2948)
!3010 = !DILocation(line: 49, column: 13, scope: !2948)
!3011 = !DILocation(line: 49, column: 27, scope: !2948)
!3012 = !DILocation(line: 49, column: 25, scope: !2948)
!3013 = !DILocation(line: 49, column: 19, scope: !2948)
!3014 = !DILocation(line: 50, column: 14, scope: !2948)
!3015 = !DILocation(line: 50, column: 23, scope: !2948)
!3016 = !DILocation(line: 50, column: 13, scope: !2948)
!3017 = !DILocation(line: 51, column: 5, scope: !2948)
!3018 = !DILocation(line: 54, column: 13, scope: !2948)
!3019 = !DILocation(line: 54, column: 28, scope: !2948)
!3020 = !DILocation(line: 54, column: 27, scope: !2948)
!3021 = !DILocation(line: 54, column: 25, scope: !2948)
!3022 = !DILocation(line: 54, column: 19, scope: !2948)
!3023 = !DILocation(line: 55, column: 14, scope: !2948)
!3024 = !DILocation(line: 55, column: 23, scope: !2948)
!3025 = !DILocation(line: 55, column: 13, scope: !2948)
!3026 = !DILocation(line: 57, column: 12, scope: !2948)
!3027 = !DILocation(line: 57, column: 5, scope: !2948)
!3028 = !DILocation(line: 58, column: 1, scope: !2948)
!3029 = distinct !DISubprogram(name: "__mulosi4", scope: !91, file: !91, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !139)
!3030 = !DILocation(line: 24, column: 15, scope: !3029)
!3031 = !DILocation(line: 25, column: 18, scope: !3029)
!3032 = !DILocation(line: 26, column: 18, scope: !3029)
!3033 = !DILocation(line: 27, column: 6, scope: !3029)
!3034 = !DILocation(line: 27, column: 15, scope: !3029)
!3035 = !DILocation(line: 28, column: 21, scope: !3029)
!3036 = !DILocation(line: 28, column: 25, scope: !3029)
!3037 = !DILocation(line: 28, column: 23, scope: !3029)
!3038 = !DILocation(line: 28, column: 12, scope: !3029)
!3039 = !DILocation(line: 29, column: 9, scope: !3029)
!3040 = !DILocation(line: 29, column: 11, scope: !3029)
!3041 = !DILocation(line: 31, column: 13, scope: !3029)
!3042 = !DILocation(line: 31, column: 15, scope: !3029)
!3043 = !DILocation(line: 31, column: 20, scope: !3029)
!3044 = !DILocation(line: 31, column: 23, scope: !3029)
!3045 = !DILocation(line: 31, column: 25, scope: !3029)
!3046 = !DILocation(line: 32, column: 7, scope: !3029)
!3047 = !DILocation(line: 32, column: 16, scope: !3029)
!3048 = !DILocation(line: 32, column: 6, scope: !3029)
!3049 = !DILocation(line: 33, column: 9, scope: !3029)
!3050 = !DILocation(line: 33, column: 2, scope: !3029)
!3051 = !DILocation(line: 35, column: 9, scope: !3029)
!3052 = !DILocation(line: 35, column: 11, scope: !3029)
!3053 = !DILocation(line: 37, column: 13, scope: !3029)
!3054 = !DILocation(line: 37, column: 15, scope: !3029)
!3055 = !DILocation(line: 37, column: 20, scope: !3029)
!3056 = !DILocation(line: 37, column: 23, scope: !3029)
!3057 = !DILocation(line: 37, column: 25, scope: !3029)
!3058 = !DILocation(line: 38, column: 7, scope: !3029)
!3059 = !DILocation(line: 38, column: 16, scope: !3029)
!3060 = !DILocation(line: 38, column: 6, scope: !3029)
!3061 = !DILocation(line: 39, column: 16, scope: !3029)
!3062 = !DILocation(line: 39, column: 9, scope: !3029)
!3063 = !DILocation(line: 41, column: 17, scope: !3029)
!3064 = !DILocation(line: 41, column: 19, scope: !3029)
!3065 = !DILocation(line: 41, column: 12, scope: !3029)
!3066 = !DILocation(line: 42, column: 21, scope: !3029)
!3067 = !DILocation(line: 42, column: 25, scope: !3029)
!3068 = !DILocation(line: 42, column: 23, scope: !3029)
!3069 = !DILocation(line: 42, column: 31, scope: !3029)
!3070 = !DILocation(line: 42, column: 29, scope: !3029)
!3071 = !DILocation(line: 42, column: 12, scope: !3029)
!3072 = !DILocation(line: 43, column: 17, scope: !3029)
!3073 = !DILocation(line: 43, column: 19, scope: !3029)
!3074 = !DILocation(line: 43, column: 12, scope: !3029)
!3075 = !DILocation(line: 44, column: 21, scope: !3029)
!3076 = !DILocation(line: 44, column: 25, scope: !3029)
!3077 = !DILocation(line: 44, column: 23, scope: !3029)
!3078 = !DILocation(line: 44, column: 31, scope: !3029)
!3079 = !DILocation(line: 44, column: 29, scope: !3029)
!3080 = !DILocation(line: 44, column: 12, scope: !3029)
!3081 = !DILocation(line: 45, column: 9, scope: !3029)
!3082 = !DILocation(line: 45, column: 15, scope: !3029)
!3083 = !DILocation(line: 45, column: 19, scope: !3029)
!3084 = !DILocation(line: 45, column: 22, scope: !3029)
!3085 = !DILocation(line: 45, column: 28, scope: !3029)
!3086 = !DILocation(line: 46, column: 16, scope: !3029)
!3087 = !DILocation(line: 46, column: 9, scope: !3029)
!3088 = !DILocation(line: 47, column: 9, scope: !3029)
!3089 = !DILocation(line: 47, column: 15, scope: !3029)
!3090 = !DILocation(line: 47, column: 12, scope: !3029)
!3091 = !DILocation(line: 49, column: 13, scope: !3029)
!3092 = !DILocation(line: 49, column: 27, scope: !3029)
!3093 = !DILocation(line: 49, column: 25, scope: !3029)
!3094 = !DILocation(line: 49, column: 19, scope: !3029)
!3095 = !DILocation(line: 50, column: 14, scope: !3029)
!3096 = !DILocation(line: 50, column: 23, scope: !3029)
!3097 = !DILocation(line: 50, column: 13, scope: !3029)
!3098 = !DILocation(line: 51, column: 5, scope: !3029)
!3099 = !DILocation(line: 54, column: 13, scope: !3029)
!3100 = !DILocation(line: 54, column: 28, scope: !3029)
!3101 = !DILocation(line: 54, column: 27, scope: !3029)
!3102 = !DILocation(line: 54, column: 25, scope: !3029)
!3103 = !DILocation(line: 54, column: 19, scope: !3029)
!3104 = !DILocation(line: 55, column: 14, scope: !3029)
!3105 = !DILocation(line: 55, column: 23, scope: !3029)
!3106 = !DILocation(line: 55, column: 13, scope: !3029)
!3107 = !DILocation(line: 57, column: 12, scope: !3029)
!3108 = !DILocation(line: 57, column: 5, scope: !3029)
!3109 = !DILocation(line: 58, column: 1, scope: !3029)
!3110 = distinct !DISubprogram(name: "__mulsf3", scope: !95, file: !95, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3111 = !DILocation(line: 21, column: 23, scope: !3110)
!3112 = !DILocation(line: 21, column: 26, scope: !3110)
!3113 = !DILocation(line: 21, column: 12, scope: !3110)
!3114 = !DILocation(line: 21, column: 5, scope: !3110)
!3115 = distinct !DISubprogram(name: "__mulXf3__", scope: !2530, file: !2530, line: 17, type: !138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3116 = !DILocation(line: 18, column: 42, scope: !3115)
!3117 = !DILocation(line: 18, column: 36, scope: !3115)
!3118 = !DILocation(line: 18, column: 45, scope: !3115)
!3119 = !DILocation(line: 18, column: 64, scope: !3115)
!3120 = !DILocation(line: 18, column: 24, scope: !3115)
!3121 = !DILocation(line: 19, column: 42, scope: !3115)
!3122 = !DILocation(line: 19, column: 36, scope: !3115)
!3123 = !DILocation(line: 19, column: 45, scope: !3115)
!3124 = !DILocation(line: 19, column: 64, scope: !3115)
!3125 = !DILocation(line: 19, column: 24, scope: !3115)
!3126 = !DILocation(line: 20, column: 38, scope: !3115)
!3127 = !DILocation(line: 20, column: 32, scope: !3115)
!3128 = !DILocation(line: 20, column: 49, scope: !3115)
!3129 = !DILocation(line: 20, column: 43, scope: !3115)
!3130 = !DILocation(line: 20, column: 41, scope: !3115)
!3131 = !DILocation(line: 20, column: 53, scope: !3115)
!3132 = !DILocation(line: 20, column: 17, scope: !3115)
!3133 = !DILocation(line: 22, column: 32, scope: !3115)
!3134 = !DILocation(line: 22, column: 26, scope: !3115)
!3135 = !DILocation(line: 22, column: 35, scope: !3115)
!3136 = !DILocation(line: 22, column: 11, scope: !3115)
!3137 = !DILocation(line: 23, column: 32, scope: !3115)
!3138 = !DILocation(line: 23, column: 26, scope: !3115)
!3139 = !DILocation(line: 23, column: 35, scope: !3115)
!3140 = !DILocation(line: 23, column: 11, scope: !3115)
!3141 = !DILocation(line: 24, column: 9, scope: !3115)
!3142 = !DILocation(line: 27, column: 9, scope: !3115)
!3143 = !DILocation(line: 27, column: 18, scope: !3115)
!3144 = !DILocation(line: 27, column: 22, scope: !3115)
!3145 = !DILocation(line: 27, column: 40, scope: !3115)
!3146 = !DILocation(line: 27, column: 43, scope: !3115)
!3147 = !DILocation(line: 27, column: 52, scope: !3115)
!3148 = !DILocation(line: 27, column: 56, scope: !3115)
!3149 = !DILocation(line: 29, column: 34, scope: !3115)
!3150 = !DILocation(line: 29, column: 28, scope: !3115)
!3151 = !DILocation(line: 29, column: 37, scope: !3115)
!3152 = !DILocation(line: 29, column: 21, scope: !3115)
!3153 = !DILocation(line: 30, column: 34, scope: !3115)
!3154 = !DILocation(line: 30, column: 28, scope: !3115)
!3155 = !DILocation(line: 30, column: 37, scope: !3115)
!3156 = !DILocation(line: 30, column: 21, scope: !3115)
!3157 = !DILocation(line: 33, column: 13, scope: !3115)
!3158 = !DILocation(line: 33, column: 18, scope: !3115)
!3159 = !DILocation(line: 33, column: 49, scope: !3115)
!3160 = !DILocation(line: 33, column: 43, scope: !3115)
!3161 = !DILocation(line: 33, column: 52, scope: !3115)
!3162 = !DILocation(line: 33, column: 35, scope: !3115)
!3163 = !DILocation(line: 33, column: 28, scope: !3115)
!3164 = !DILocation(line: 35, column: 13, scope: !3115)
!3165 = !DILocation(line: 35, column: 18, scope: !3115)
!3166 = !DILocation(line: 35, column: 49, scope: !3115)
!3167 = !DILocation(line: 35, column: 43, scope: !3115)
!3168 = !DILocation(line: 35, column: 52, scope: !3115)
!3169 = !DILocation(line: 35, column: 35, scope: !3115)
!3170 = !DILocation(line: 35, column: 28, scope: !3115)
!3171 = !DILocation(line: 37, column: 13, scope: !3115)
!3172 = !DILocation(line: 37, column: 18, scope: !3115)
!3173 = !DILocation(line: 39, column: 17, scope: !3115)
!3174 = !DILocation(line: 39, column: 38, scope: !3115)
!3175 = !DILocation(line: 39, column: 45, scope: !3115)
!3176 = !DILocation(line: 39, column: 43, scope: !3115)
!3177 = !DILocation(line: 39, column: 30, scope: !3115)
!3178 = !DILocation(line: 39, column: 23, scope: !3115)
!3179 = !DILocation(line: 41, column: 25, scope: !3115)
!3180 = !DILocation(line: 41, column: 18, scope: !3115)
!3181 = !DILocation(line: 44, column: 13, scope: !3115)
!3182 = !DILocation(line: 44, column: 18, scope: !3115)
!3183 = !DILocation(line: 46, column: 17, scope: !3115)
!3184 = !DILocation(line: 46, column: 38, scope: !3115)
!3185 = !DILocation(line: 46, column: 45, scope: !3115)
!3186 = !DILocation(line: 46, column: 43, scope: !3115)
!3187 = !DILocation(line: 46, column: 30, scope: !3115)
!3188 = !DILocation(line: 46, column: 23, scope: !3115)
!3189 = !DILocation(line: 48, column: 25, scope: !3115)
!3190 = !DILocation(line: 48, column: 18, scope: !3115)
!3191 = !DILocation(line: 52, column: 14, scope: !3115)
!3192 = !DILocation(line: 52, column: 13, scope: !3115)
!3193 = !DILocation(line: 52, column: 35, scope: !3115)
!3194 = !DILocation(line: 52, column: 27, scope: !3115)
!3195 = !DILocation(line: 52, column: 20, scope: !3115)
!3196 = !DILocation(line: 54, column: 14, scope: !3115)
!3197 = !DILocation(line: 54, column: 13, scope: !3115)
!3198 = !DILocation(line: 54, column: 35, scope: !3115)
!3199 = !DILocation(line: 54, column: 27, scope: !3115)
!3200 = !DILocation(line: 54, column: 20, scope: !3115)
!3201 = !DILocation(line: 59, column: 13, scope: !3115)
!3202 = !DILocation(line: 59, column: 18, scope: !3115)
!3203 = !DILocation(line: 59, column: 42, scope: !3115)
!3204 = !DILocation(line: 59, column: 39, scope: !3115)
!3205 = !DILocation(line: 59, column: 33, scope: !3115)
!3206 = !DILocation(line: 60, column: 13, scope: !3115)
!3207 = !DILocation(line: 60, column: 18, scope: !3115)
!3208 = !DILocation(line: 60, column: 42, scope: !3115)
!3209 = !DILocation(line: 60, column: 39, scope: !3115)
!3210 = !DILocation(line: 60, column: 33, scope: !3115)
!3211 = !DILocation(line: 61, column: 5, scope: !3115)
!3212 = !DILocation(line: 66, column: 18, scope: !3115)
!3213 = !DILocation(line: 67, column: 18, scope: !3115)
!3214 = !DILocation(line: 75, column: 18, scope: !3115)
!3215 = !DILocation(line: 75, column: 32, scope: !3115)
!3216 = !DILocation(line: 75, column: 45, scope: !3115)
!3217 = !DILocation(line: 75, column: 5, scope: !3115)
!3218 = !DILocation(line: 78, column: 27, scope: !3115)
!3219 = !DILocation(line: 78, column: 39, scope: !3115)
!3220 = !DILocation(line: 78, column: 37, scope: !3115)
!3221 = !DILocation(line: 78, column: 49, scope: !3115)
!3222 = !DILocation(line: 78, column: 66, scope: !3115)
!3223 = !DILocation(line: 78, column: 64, scope: !3115)
!3224 = !DILocation(line: 78, column: 9, scope: !3115)
!3225 = !DILocation(line: 81, column: 9, scope: !3115)
!3226 = !DILocation(line: 81, column: 19, scope: !3115)
!3227 = !DILocation(line: 81, column: 49, scope: !3115)
!3228 = !DILocation(line: 81, column: 34, scope: !3115)
!3229 = !DILocation(line: 82, column: 10, scope: !3115)
!3230 = !DILocation(line: 85, column: 9, scope: !3115)
!3231 = !DILocation(line: 85, column: 25, scope: !3115)
!3232 = !DILocation(line: 85, column: 65, scope: !3115)
!3233 = !DILocation(line: 85, column: 63, scope: !3115)
!3234 = !DILocation(line: 85, column: 48, scope: !3115)
!3235 = !DILocation(line: 85, column: 41, scope: !3115)
!3236 = !DILocation(line: 87, column: 9, scope: !3115)
!3237 = !DILocation(line: 87, column: 25, scope: !3115)
!3238 = !DILocation(line: 94, column: 61, scope: !3115)
!3239 = !DILocation(line: 94, column: 45, scope: !3115)
!3240 = !DILocation(line: 94, column: 28, scope: !3115)
!3241 = !DILocation(line: 95, column: 13, scope: !3115)
!3242 = !DILocation(line: 95, column: 19, scope: !3115)
!3243 = !DILocation(line: 95, column: 48, scope: !3115)
!3244 = !DILocation(line: 95, column: 40, scope: !3115)
!3245 = !DILocation(line: 95, column: 33, scope: !3115)
!3246 = !DILocation(line: 99, column: 58, scope: !3115)
!3247 = !DILocation(line: 99, column: 9, scope: !3115)
!3248 = !DILocation(line: 100, column: 5, scope: !3115)
!3249 = !DILocation(line: 103, column: 19, scope: !3115)
!3250 = !DILocation(line: 104, column: 29, scope: !3115)
!3251 = !DILocation(line: 104, column: 45, scope: !3115)
!3252 = !DILocation(line: 104, column: 19, scope: !3115)
!3253 = !DILocation(line: 108, column: 18, scope: !3115)
!3254 = !DILocation(line: 108, column: 15, scope: !3115)
!3255 = !DILocation(line: 113, column: 9, scope: !3115)
!3256 = !DILocation(line: 113, column: 19, scope: !3115)
!3257 = !DILocation(line: 113, column: 39, scope: !3115)
!3258 = !DILocation(line: 113, column: 30, scope: !3115)
!3259 = !DILocation(line: 114, column: 9, scope: !3115)
!3260 = !DILocation(line: 114, column: 19, scope: !3115)
!3261 = !DILocation(line: 114, column: 44, scope: !3115)
!3262 = !DILocation(line: 114, column: 54, scope: !3115)
!3263 = !DILocation(line: 114, column: 41, scope: !3115)
!3264 = !DILocation(line: 114, column: 31, scope: !3115)
!3265 = !DILocation(line: 115, column: 20, scope: !3115)
!3266 = !DILocation(line: 115, column: 12, scope: !3115)
!3267 = !DILocation(line: 115, column: 5, scope: !3115)
!3268 = !DILocation(line: 116, column: 1, scope: !3115)
!3269 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3270 = !DILocation(line: 232, column: 44, scope: !3269)
!3271 = !DILocation(line: 232, column: 50, scope: !3269)
!3272 = !DILocation(line: 233, column: 16, scope: !3269)
!3273 = !DILocation(line: 233, column: 5, scope: !3269)
!3274 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3275 = !DILocation(line: 237, column: 44, scope: !3274)
!3276 = !DILocation(line: 237, column: 50, scope: !3274)
!3277 = !DILocation(line: 238, column: 16, scope: !3274)
!3278 = !DILocation(line: 238, column: 5, scope: !3274)
!3279 = distinct !DISubprogram(name: "normalize", scope: !372, file: !372, line: 241, type: !138, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3280 = !DILocation(line: 242, column: 32, scope: !3279)
!3281 = !DILocation(line: 242, column: 31, scope: !3279)
!3282 = !DILocation(line: 242, column: 23, scope: !3279)
!3283 = !DILocation(line: 242, column: 47, scope: !3279)
!3284 = !DILocation(line: 242, column: 45, scope: !3279)
!3285 = !DILocation(line: 242, column: 15, scope: !3279)
!3286 = !DILocation(line: 243, column: 22, scope: !3279)
!3287 = !DILocation(line: 243, column: 6, scope: !3279)
!3288 = !DILocation(line: 243, column: 18, scope: !3279)
!3289 = !DILocation(line: 244, column: 16, scope: !3279)
!3290 = !DILocation(line: 244, column: 14, scope: !3279)
!3291 = !DILocation(line: 244, column: 5, scope: !3279)
!3292 = distinct !DISubprogram(name: "wideMultiply", scope: !372, file: !372, line: 54, type: !138, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3293 = !DILocation(line: 55, column: 40, scope: !3292)
!3294 = !DILocation(line: 55, column: 30, scope: !3292)
!3295 = !DILocation(line: 55, column: 42, scope: !3292)
!3296 = !DILocation(line: 55, column: 41, scope: !3292)
!3297 = !DILocation(line: 55, column: 20, scope: !3292)
!3298 = !DILocation(line: 56, column: 11, scope: !3292)
!3299 = !DILocation(line: 56, column: 19, scope: !3292)
!3300 = !DILocation(line: 56, column: 6, scope: !3292)
!3301 = !DILocation(line: 56, column: 9, scope: !3292)
!3302 = !DILocation(line: 57, column: 11, scope: !3292)
!3303 = !DILocation(line: 57, column: 6, scope: !3292)
!3304 = !DILocation(line: 57, column: 9, scope: !3292)
!3305 = !DILocation(line: 58, column: 1, scope: !3292)
!3306 = distinct !DISubprogram(name: "wideLeftShift", scope: !372, file: !372, line: 247, type: !138, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3307 = !DILocation(line: 248, column: 12, scope: !3306)
!3308 = !DILocation(line: 248, column: 11, scope: !3306)
!3309 = !DILocation(line: 248, column: 18, scope: !3306)
!3310 = !DILocation(line: 248, column: 15, scope: !3306)
!3311 = !DILocation(line: 248, column: 27, scope: !3306)
!3312 = !DILocation(line: 248, column: 26, scope: !3306)
!3313 = !DILocation(line: 248, column: 46, scope: !3306)
!3314 = !DILocation(line: 248, column: 44, scope: !3306)
!3315 = !DILocation(line: 248, column: 30, scope: !3306)
!3316 = !DILocation(line: 248, column: 24, scope: !3306)
!3317 = !DILocation(line: 248, column: 6, scope: !3306)
!3318 = !DILocation(line: 248, column: 9, scope: !3306)
!3319 = !DILocation(line: 249, column: 12, scope: !3306)
!3320 = !DILocation(line: 249, column: 11, scope: !3306)
!3321 = !DILocation(line: 249, column: 18, scope: !3306)
!3322 = !DILocation(line: 249, column: 15, scope: !3306)
!3323 = !DILocation(line: 249, column: 6, scope: !3306)
!3324 = !DILocation(line: 249, column: 9, scope: !3306)
!3325 = !DILocation(line: 250, column: 1, scope: !3306)
!3326 = distinct !DISubprogram(name: "wideRightShiftWithSticky", scope: !372, file: !372, line: 252, type: !138, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3327 = !DILocation(line: 253, column: 9, scope: !3326)
!3328 = !DILocation(line: 253, column: 15, scope: !3326)
!3329 = !DILocation(line: 254, column: 30, scope: !3326)
!3330 = !DILocation(line: 254, column: 29, scope: !3326)
!3331 = !DILocation(line: 254, column: 49, scope: !3326)
!3332 = !DILocation(line: 254, column: 47, scope: !3326)
!3333 = !DILocation(line: 254, column: 33, scope: !3326)
!3334 = !DILocation(line: 254, column: 20, scope: !3326)
!3335 = !DILocation(line: 255, column: 16, scope: !3326)
!3336 = !DILocation(line: 255, column: 15, scope: !3326)
!3337 = !DILocation(line: 255, column: 35, scope: !3326)
!3338 = !DILocation(line: 255, column: 33, scope: !3326)
!3339 = !DILocation(line: 255, column: 19, scope: !3326)
!3340 = !DILocation(line: 255, column: 45, scope: !3326)
!3341 = !DILocation(line: 255, column: 44, scope: !3326)
!3342 = !DILocation(line: 255, column: 51, scope: !3326)
!3343 = !DILocation(line: 255, column: 48, scope: !3326)
!3344 = !DILocation(line: 255, column: 42, scope: !3326)
!3345 = !DILocation(line: 255, column: 59, scope: !3326)
!3346 = !DILocation(line: 255, column: 57, scope: !3326)
!3347 = !DILocation(line: 255, column: 10, scope: !3326)
!3348 = !DILocation(line: 255, column: 13, scope: !3326)
!3349 = !DILocation(line: 256, column: 16, scope: !3326)
!3350 = !DILocation(line: 256, column: 15, scope: !3326)
!3351 = !DILocation(line: 256, column: 22, scope: !3326)
!3352 = !DILocation(line: 256, column: 19, scope: !3326)
!3353 = !DILocation(line: 256, column: 10, scope: !3326)
!3354 = !DILocation(line: 256, column: 13, scope: !3326)
!3355 = !DILocation(line: 257, column: 5, scope: !3326)
!3356 = !DILocation(line: 258, column: 14, scope: !3326)
!3357 = !DILocation(line: 258, column: 20, scope: !3326)
!3358 = !DILocation(line: 259, column: 30, scope: !3326)
!3359 = !DILocation(line: 259, column: 29, scope: !3326)
!3360 = !DILocation(line: 259, column: 51, scope: !3326)
!3361 = !DILocation(line: 259, column: 49, scope: !3326)
!3362 = !DILocation(line: 259, column: 33, scope: !3326)
!3363 = !DILocation(line: 259, column: 61, scope: !3326)
!3364 = !DILocation(line: 259, column: 60, scope: !3326)
!3365 = !DILocation(line: 259, column: 58, scope: !3326)
!3366 = !DILocation(line: 259, column: 20, scope: !3326)
!3367 = !DILocation(line: 260, column: 16, scope: !3326)
!3368 = !DILocation(line: 260, column: 15, scope: !3326)
!3369 = !DILocation(line: 260, column: 23, scope: !3326)
!3370 = !DILocation(line: 260, column: 29, scope: !3326)
!3371 = !DILocation(line: 260, column: 19, scope: !3326)
!3372 = !DILocation(line: 260, column: 44, scope: !3326)
!3373 = !DILocation(line: 260, column: 42, scope: !3326)
!3374 = !DILocation(line: 260, column: 10, scope: !3326)
!3375 = !DILocation(line: 260, column: 13, scope: !3326)
!3376 = !DILocation(line: 261, column: 10, scope: !3326)
!3377 = !DILocation(line: 261, column: 13, scope: !3326)
!3378 = !DILocation(line: 262, column: 5, scope: !3326)
!3379 = !DILocation(line: 263, column: 30, scope: !3326)
!3380 = !DILocation(line: 263, column: 29, scope: !3326)
!3381 = !DILocation(line: 263, column: 36, scope: !3326)
!3382 = !DILocation(line: 263, column: 35, scope: !3326)
!3383 = !DILocation(line: 263, column: 33, scope: !3326)
!3384 = !DILocation(line: 263, column: 20, scope: !3326)
!3385 = !DILocation(line: 264, column: 15, scope: !3326)
!3386 = !DILocation(line: 264, column: 10, scope: !3326)
!3387 = !DILocation(line: 264, column: 13, scope: !3326)
!3388 = !DILocation(line: 265, column: 10, scope: !3326)
!3389 = !DILocation(line: 265, column: 13, scope: !3326)
!3390 = !DILocation(line: 267, column: 1, scope: !3326)
!3391 = distinct !DISubprogram(name: "rep_clz", scope: !372, file: !372, line: 49, type: !138, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !139)
!3392 = !DILocation(line: 50, column: 26, scope: !3391)
!3393 = !DILocation(line: 50, column: 12, scope: !3391)
!3394 = !DILocation(line: 50, column: 5, scope: !3391)
!3395 = distinct !DISubprogram(name: "__negdf2", scope: !99, file: !99, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !139)
!3396 = !DILocation(line: 21, column: 26, scope: !3395)
!3397 = !DILocation(line: 21, column: 20, scope: !3395)
!3398 = !DILocation(line: 21, column: 29, scope: !3395)
!3399 = !DILocation(line: 21, column: 12, scope: !3395)
!3400 = !DILocation(line: 21, column: 5, scope: !3395)
!3401 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !98, retainedNodes: !139)
!3402 = !DILocation(line: 232, column: 44, scope: !3401)
!3403 = !DILocation(line: 232, column: 50, scope: !3401)
!3404 = !DILocation(line: 233, column: 16, scope: !3401)
!3405 = !DILocation(line: 233, column: 5, scope: !3401)
!3406 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !98, retainedNodes: !139)
!3407 = !DILocation(line: 237, column: 44, scope: !3406)
!3408 = !DILocation(line: 237, column: 50, scope: !3406)
!3409 = !DILocation(line: 238, column: 16, scope: !3406)
!3410 = !DILocation(line: 238, column: 5, scope: !3406)
!3411 = distinct !DISubprogram(name: "__negdi2", scope: !101, file: !101, line: 20, type: !138, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !139)
!3412 = !DILocation(line: 25, column: 13, scope: !3411)
!3413 = !DILocation(line: 25, column: 12, scope: !3411)
!3414 = !DILocation(line: 25, column: 5, scope: !3411)
!3415 = distinct !DISubprogram(name: "__negsf2", scope: !103, file: !103, line: 20, type: !138, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !139)
!3416 = !DILocation(line: 21, column: 26, scope: !3415)
!3417 = !DILocation(line: 21, column: 20, scope: !3415)
!3418 = !DILocation(line: 21, column: 29, scope: !3415)
!3419 = !DILocation(line: 21, column: 12, scope: !3415)
!3420 = !DILocation(line: 21, column: 5, scope: !3415)
!3421 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !139)
!3422 = !DILocation(line: 232, column: 44, scope: !3421)
!3423 = !DILocation(line: 232, column: 50, scope: !3421)
!3424 = !DILocation(line: 233, column: 16, scope: !3421)
!3425 = !DILocation(line: 233, column: 5, scope: !3421)
!3426 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !139)
!3427 = !DILocation(line: 237, column: 44, scope: !3426)
!3428 = !DILocation(line: 237, column: 50, scope: !3426)
!3429 = !DILocation(line: 238, column: 16, scope: !3426)
!3430 = !DILocation(line: 238, column: 5, scope: !3426)
!3431 = distinct !DISubprogram(name: "__negvdi2", scope: !107, file: !107, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !139)
!3432 = !DILocation(line: 24, column: 18, scope: !3431)
!3433 = !DILocation(line: 25, column: 9, scope: !3431)
!3434 = !DILocation(line: 25, column: 11, scope: !3431)
!3435 = !DILocation(line: 26, column: 9, scope: !3431)
!3436 = !DILocation(line: 27, column: 13, scope: !3431)
!3437 = !DILocation(line: 27, column: 12, scope: !3431)
!3438 = !DILocation(line: 27, column: 5, scope: !3431)
!3439 = distinct !DISubprogram(name: "__negvsi2", scope: !109, file: !109, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !139)
!3440 = !DILocation(line: 24, column: 18, scope: !3439)
!3441 = !DILocation(line: 25, column: 9, scope: !3439)
!3442 = !DILocation(line: 25, column: 11, scope: !3439)
!3443 = !DILocation(line: 26, column: 9, scope: !3439)
!3444 = !DILocation(line: 27, column: 13, scope: !3439)
!3445 = !DILocation(line: 27, column: 12, scope: !3439)
!3446 = !DILocation(line: 27, column: 5, scope: !3439)
!3447 = distinct !DISubprogram(name: "__powidf2", scope: !113, file: !113, line: 20, type: !138, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !139)
!3448 = !DILocation(line: 22, column: 23, scope: !3447)
!3449 = !DILocation(line: 22, column: 25, scope: !3447)
!3450 = !DILocation(line: 22, column: 15, scope: !3447)
!3451 = !DILocation(line: 23, column: 12, scope: !3447)
!3452 = !DILocation(line: 24, column: 5, scope: !3447)
!3453 = !DILocation(line: 26, column: 13, scope: !3447)
!3454 = !DILocation(line: 26, column: 15, scope: !3447)
!3455 = !DILocation(line: 27, column: 18, scope: !3447)
!3456 = !DILocation(line: 27, column: 15, scope: !3447)
!3457 = !DILocation(line: 27, column: 13, scope: !3447)
!3458 = !DILocation(line: 28, column: 11, scope: !3447)
!3459 = !DILocation(line: 29, column: 13, scope: !3447)
!3460 = !DILocation(line: 29, column: 15, scope: !3447)
!3461 = !DILocation(line: 30, column: 13, scope: !3447)
!3462 = !DILocation(line: 31, column: 14, scope: !3447)
!3463 = !DILocation(line: 31, column: 11, scope: !3447)
!3464 = distinct !{!3464, !3452, !3465}
!3465 = !DILocation(line: 32, column: 5, scope: !3447)
!3466 = !DILocation(line: 33, column: 12, scope: !3447)
!3467 = !DILocation(line: 33, column: 22, scope: !3447)
!3468 = !DILocation(line: 33, column: 21, scope: !3447)
!3469 = !DILocation(line: 33, column: 26, scope: !3447)
!3470 = !DILocation(line: 33, column: 5, scope: !3447)
!3471 = distinct !DISubprogram(name: "__powisf2", scope: !115, file: !115, line: 20, type: !138, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !139)
!3472 = !DILocation(line: 22, column: 23, scope: !3471)
!3473 = !DILocation(line: 22, column: 25, scope: !3471)
!3474 = !DILocation(line: 22, column: 15, scope: !3471)
!3475 = !DILocation(line: 23, column: 11, scope: !3471)
!3476 = !DILocation(line: 24, column: 5, scope: !3471)
!3477 = !DILocation(line: 26, column: 13, scope: !3471)
!3478 = !DILocation(line: 26, column: 15, scope: !3471)
!3479 = !DILocation(line: 27, column: 18, scope: !3471)
!3480 = !DILocation(line: 27, column: 15, scope: !3471)
!3481 = !DILocation(line: 27, column: 13, scope: !3471)
!3482 = !DILocation(line: 28, column: 11, scope: !3471)
!3483 = !DILocation(line: 29, column: 13, scope: !3471)
!3484 = !DILocation(line: 29, column: 15, scope: !3471)
!3485 = !DILocation(line: 30, column: 13, scope: !3471)
!3486 = !DILocation(line: 31, column: 14, scope: !3471)
!3487 = !DILocation(line: 31, column: 11, scope: !3471)
!3488 = distinct !{!3488, !3476, !3489}
!3489 = !DILocation(line: 32, column: 5, scope: !3471)
!3490 = !DILocation(line: 33, column: 12, scope: !3471)
!3491 = !DILocation(line: 33, column: 22, scope: !3471)
!3492 = !DILocation(line: 33, column: 21, scope: !3471)
!3493 = !DILocation(line: 33, column: 26, scope: !3471)
!3494 = !DILocation(line: 33, column: 5, scope: !3471)
!3495 = distinct !DISubprogram(name: "__powixf2", scope: !119, file: !119, line: 22, type: !138, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !139)
!3496 = !DILocation(line: 24, column: 23, scope: !3495)
!3497 = !DILocation(line: 24, column: 25, scope: !3495)
!3498 = !DILocation(line: 24, column: 15, scope: !3495)
!3499 = !DILocation(line: 25, column: 17, scope: !3495)
!3500 = !DILocation(line: 26, column: 5, scope: !3495)
!3501 = !DILocation(line: 28, column: 13, scope: !3495)
!3502 = !DILocation(line: 28, column: 15, scope: !3495)
!3503 = !DILocation(line: 29, column: 18, scope: !3495)
!3504 = !DILocation(line: 29, column: 15, scope: !3495)
!3505 = !DILocation(line: 29, column: 13, scope: !3495)
!3506 = !DILocation(line: 30, column: 11, scope: !3495)
!3507 = !DILocation(line: 31, column: 13, scope: !3495)
!3508 = !DILocation(line: 31, column: 15, scope: !3495)
!3509 = !DILocation(line: 32, column: 13, scope: !3495)
!3510 = !DILocation(line: 33, column: 14, scope: !3495)
!3511 = !DILocation(line: 33, column: 11, scope: !3495)
!3512 = distinct !{!3512, !3500, !3513}
!3513 = !DILocation(line: 34, column: 5, scope: !3495)
!3514 = !DILocation(line: 35, column: 12, scope: !3495)
!3515 = !DILocation(line: 35, column: 22, scope: !3495)
!3516 = !DILocation(line: 35, column: 21, scope: !3495)
!3517 = !DILocation(line: 35, column: 26, scope: !3495)
!3518 = !DILocation(line: 35, column: 5, scope: !3495)
!3519 = distinct !DISubprogram(name: "__subdf3", scope: !121, file: !121, line: 22, type: !138, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !139)
!3520 = !DILocation(line: 23, column: 21, scope: !3519)
!3521 = !DILocation(line: 23, column: 38, scope: !3519)
!3522 = !DILocation(line: 23, column: 32, scope: !3519)
!3523 = !DILocation(line: 23, column: 41, scope: !3519)
!3524 = !DILocation(line: 23, column: 24, scope: !3519)
!3525 = !DILocation(line: 23, column: 12, scope: !3519)
!3526 = !DILocation(line: 23, column: 5, scope: !3519)
!3527 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !139)
!3528 = !DILocation(line: 232, column: 44, scope: !3527)
!3529 = !DILocation(line: 232, column: 50, scope: !3527)
!3530 = !DILocation(line: 233, column: 16, scope: !3527)
!3531 = !DILocation(line: 233, column: 5, scope: !3527)
!3532 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !139)
!3533 = !DILocation(line: 237, column: 44, scope: !3532)
!3534 = !DILocation(line: 237, column: 50, scope: !3532)
!3535 = !DILocation(line: 238, column: 16, scope: !3532)
!3536 = !DILocation(line: 238, column: 5, scope: !3532)
!3537 = distinct !DISubprogram(name: "__subsf3", scope: !123, file: !123, line: 22, type: !138, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !139)
!3538 = !DILocation(line: 23, column: 21, scope: !3537)
!3539 = !DILocation(line: 23, column: 38, scope: !3537)
!3540 = !DILocation(line: 23, column: 32, scope: !3537)
!3541 = !DILocation(line: 23, column: 41, scope: !3537)
!3542 = !DILocation(line: 23, column: 24, scope: !3537)
!3543 = !DILocation(line: 23, column: 12, scope: !3537)
!3544 = !DILocation(line: 23, column: 5, scope: !3537)
!3545 = distinct !DISubprogram(name: "toRep", scope: !372, file: !372, line: 231, type: !138, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !139)
!3546 = !DILocation(line: 232, column: 44, scope: !3545)
!3547 = !DILocation(line: 232, column: 50, scope: !3545)
!3548 = !DILocation(line: 233, column: 16, scope: !3545)
!3549 = !DILocation(line: 233, column: 5, scope: !3545)
!3550 = distinct !DISubprogram(name: "fromRep", scope: !372, file: !372, line: 236, type: !138, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !139)
!3551 = !DILocation(line: 237, column: 44, scope: !3550)
!3552 = !DILocation(line: 237, column: 50, scope: !3550)
!3553 = !DILocation(line: 238, column: 16, scope: !3550)
!3554 = !DILocation(line: 238, column: 5, scope: !3550)
!3555 = distinct !DISubprogram(name: "__truncdfhf2", scope: !125, file: !125, line: 16, type: !138, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !139)
!3556 = !DILocation(line: 17, column: 27, scope: !3555)
!3557 = !DILocation(line: 17, column: 12, scope: !3555)
!3558 = !DILocation(line: 17, column: 5, scope: !3555)
!3559 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !3560, file: !3560, line: 42, type: !138, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !139)
!3560 = !DIFile(filename: "../fp_trunc_impl.inc", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "6b2b11da044f1e9b292453d3c4a11a99")
!3561 = !DILocation(line: 45, column: 15, scope: !3559)
!3562 = !DILocation(line: 46, column: 15, scope: !3559)
!3563 = !DILocation(line: 47, column: 15, scope: !3559)
!3564 = !DILocation(line: 48, column: 15, scope: !3559)
!3565 = !DILocation(line: 50, column: 21, scope: !3559)
!3566 = !DILocation(line: 51, column: 21, scope: !3559)
!3567 = !DILocation(line: 52, column: 21, scope: !3559)
!3568 = !DILocation(line: 53, column: 21, scope: !3559)
!3569 = !DILocation(line: 54, column: 21, scope: !3559)
!3570 = !DILocation(line: 55, column: 21, scope: !3559)
!3571 = !DILocation(line: 56, column: 21, scope: !3559)
!3572 = !DILocation(line: 57, column: 21, scope: !3559)
!3573 = !DILocation(line: 58, column: 21, scope: !3559)
!3574 = !DILocation(line: 60, column: 15, scope: !3559)
!3575 = !DILocation(line: 61, column: 15, scope: !3559)
!3576 = !DILocation(line: 62, column: 15, scope: !3559)
!3577 = !DILocation(line: 63, column: 15, scope: !3559)
!3578 = !DILocation(line: 65, column: 15, scope: !3559)
!3579 = !DILocation(line: 66, column: 15, scope: !3559)
!3580 = !DILocation(line: 67, column: 21, scope: !3559)
!3581 = !DILocation(line: 68, column: 21, scope: !3559)
!3582 = !DILocation(line: 70, column: 21, scope: !3559)
!3583 = !DILocation(line: 71, column: 21, scope: !3559)
!3584 = !DILocation(line: 74, column: 37, scope: !3559)
!3585 = !DILocation(line: 74, column: 28, scope: !3559)
!3586 = !DILocation(line: 74, column: 21, scope: !3559)
!3587 = !DILocation(line: 75, column: 28, scope: !3559)
!3588 = !DILocation(line: 75, column: 33, scope: !3559)
!3589 = !DILocation(line: 75, column: 21, scope: !3559)
!3590 = !DILocation(line: 76, column: 28, scope: !3559)
!3591 = !DILocation(line: 76, column: 33, scope: !3559)
!3592 = !DILocation(line: 76, column: 21, scope: !3559)
!3593 = !DILocation(line: 79, column: 9, scope: !3559)
!3594 = !DILocation(line: 79, column: 14, scope: !3559)
!3595 = !DILocation(line: 79, column: 28, scope: !3559)
!3596 = !DILocation(line: 79, column: 33, scope: !3559)
!3597 = !DILocation(line: 79, column: 26, scope: !3559)
!3598 = !DILocation(line: 83, column: 21, scope: !3559)
!3599 = !DILocation(line: 83, column: 26, scope: !3559)
!3600 = !DILocation(line: 83, column: 19, scope: !3559)
!3601 = !DILocation(line: 84, column: 19, scope: !3559)
!3602 = !DILocation(line: 86, column: 37, scope: !3559)
!3603 = !DILocation(line: 86, column: 42, scope: !3559)
!3604 = !DILocation(line: 86, column: 25, scope: !3559)
!3605 = !DILocation(line: 88, column: 13, scope: !3559)
!3606 = !DILocation(line: 88, column: 23, scope: !3559)
!3607 = !DILocation(line: 89, column: 22, scope: !3559)
!3608 = !DILocation(line: 89, column: 13, scope: !3559)
!3609 = !DILocation(line: 91, column: 18, scope: !3559)
!3610 = !DILocation(line: 91, column: 28, scope: !3559)
!3611 = !DILocation(line: 92, column: 26, scope: !3559)
!3612 = !DILocation(line: 92, column: 36, scope: !3559)
!3613 = !DILocation(line: 92, column: 23, scope: !3559)
!3614 = !DILocation(line: 92, column: 13, scope: !3559)
!3615 = !DILocation(line: 93, column: 5, scope: !3559)
!3616 = !DILocation(line: 94, column: 14, scope: !3559)
!3617 = !DILocation(line: 94, column: 19, scope: !3559)
!3618 = !DILocation(line: 98, column: 19, scope: !3559)
!3619 = !DILocation(line: 99, column: 19, scope: !3559)
!3620 = !DILocation(line: 100, column: 24, scope: !3559)
!3621 = !DILocation(line: 100, column: 29, scope: !3559)
!3622 = !DILocation(line: 100, column: 43, scope: !3559)
!3623 = !DILocation(line: 100, column: 73, scope: !3559)
!3624 = !DILocation(line: 100, column: 19, scope: !3559)
!3625 = !DILocation(line: 101, column: 5, scope: !3559)
!3626 = !DILocation(line: 102, column: 14, scope: !3559)
!3627 = !DILocation(line: 102, column: 19, scope: !3559)
!3628 = !DILocation(line: 104, column: 19, scope: !3559)
!3629 = !DILocation(line: 105, column: 5, scope: !3559)
!3630 = !DILocation(line: 110, column: 26, scope: !3559)
!3631 = !DILocation(line: 110, column: 31, scope: !3559)
!3632 = !DILocation(line: 110, column: 19, scope: !3559)
!3633 = !DILocation(line: 111, column: 53, scope: !3559)
!3634 = !DILocation(line: 111, column: 51, scope: !3559)
!3635 = !DILocation(line: 111, column: 58, scope: !3559)
!3636 = !DILocation(line: 111, column: 19, scope: !3559)
!3637 = !DILocation(line: 113, column: 40, scope: !3559)
!3638 = !DILocation(line: 113, column: 45, scope: !3559)
!3639 = !DILocation(line: 113, column: 67, scope: !3559)
!3640 = !DILocation(line: 113, column: 25, scope: !3559)
!3641 = !DILocation(line: 116, column: 13, scope: !3559)
!3642 = !DILocation(line: 116, column: 19, scope: !3559)
!3643 = !DILocation(line: 117, column: 23, scope: !3559)
!3644 = !DILocation(line: 118, column: 9, scope: !3559)
!3645 = !DILocation(line: 119, column: 33, scope: !3559)
!3646 = !DILocation(line: 119, column: 59, scope: !3559)
!3647 = !DILocation(line: 119, column: 57, scope: !3559)
!3648 = !DILocation(line: 119, column: 45, scope: !3559)
!3649 = !DILocation(line: 119, column: 24, scope: !3559)
!3650 = !DILocation(line: 120, column: 49, scope: !3559)
!3651 = !DILocation(line: 120, column: 64, scope: !3559)
!3652 = !DILocation(line: 120, column: 61, scope: !3559)
!3653 = !DILocation(line: 120, column: 72, scope: !3559)
!3654 = !DILocation(line: 120, column: 70, scope: !3559)
!3655 = !DILocation(line: 120, column: 23, scope: !3559)
!3656 = !DILocation(line: 121, column: 25, scope: !3559)
!3657 = !DILocation(line: 121, column: 49, scope: !3559)
!3658 = !DILocation(line: 121, column: 23, scope: !3559)
!3659 = !DILocation(line: 122, column: 41, scope: !3559)
!3660 = !DILocation(line: 122, column: 65, scope: !3559)
!3661 = !DILocation(line: 122, column: 29, scope: !3559)
!3662 = !DILocation(line: 124, column: 17, scope: !3559)
!3663 = !DILocation(line: 124, column: 27, scope: !3559)
!3664 = !DILocation(line: 125, column: 26, scope: !3559)
!3665 = !DILocation(line: 125, column: 17, scope: !3559)
!3666 = !DILocation(line: 127, column: 22, scope: !3559)
!3667 = !DILocation(line: 127, column: 32, scope: !3559)
!3668 = !DILocation(line: 128, column: 30, scope: !3559)
!3669 = !DILocation(line: 128, column: 40, scope: !3559)
!3670 = !DILocation(line: 128, column: 27, scope: !3559)
!3671 = !DILocation(line: 128, column: 17, scope: !3559)
!3672 = !DILocation(line: 133, column: 30, scope: !3559)
!3673 = !DILocation(line: 133, column: 42, scope: !3559)
!3674 = !DILocation(line: 133, column: 47, scope: !3559)
!3675 = !DILocation(line: 133, column: 40, scope: !3559)
!3676 = !DILocation(line: 133, column: 21, scope: !3559)
!3677 = !DILocation(line: 134, column: 23, scope: !3559)
!3678 = !DILocation(line: 134, column: 12, scope: !3559)
!3679 = !DILocation(line: 134, column: 5, scope: !3559)
!3680 = distinct !DISubprogram(name: "srcToRep", scope: !3681, file: !3681, line: 66, type: !138, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !139)
!3681 = !DIFile(filename: "../fp_trunc.h", directory: "/workspaces/llvmta/testcases/libraries/builtinsfloat/buildriscv", checksumkind: CSK_MD5, checksum: "48d5e43ae7f0339c7e20f71580034d98")
!3682 = !DILocation(line: 67, column: 49, scope: !3680)
!3683 = !DILocation(line: 67, column: 55, scope: !3680)
!3684 = !DILocation(line: 68, column: 16, scope: !3680)
!3685 = !DILocation(line: 68, column: 5, scope: !3680)
!3686 = distinct !DISubprogram(name: "dstFromRep", scope: !3681, file: !3681, line: 71, type: !138, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !139)
!3687 = !DILocation(line: 72, column: 49, scope: !3686)
!3688 = !DILocation(line: 72, column: 55, scope: !3686)
!3689 = !DILocation(line: 73, column: 16, scope: !3686)
!3690 = !DILocation(line: 73, column: 5, scope: !3686)
!3691 = distinct !DISubprogram(name: "__truncdfsf2", scope: !127, file: !127, line: 16, type: !138, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !139)
!3692 = !DILocation(line: 17, column: 27, scope: !3691)
!3693 = !DILocation(line: 17, column: 12, scope: !3691)
!3694 = !DILocation(line: 17, column: 5, scope: !3691)
!3695 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !3560, file: !3560, line: 42, type: !138, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !139)
!3696 = !DILocation(line: 45, column: 15, scope: !3695)
!3697 = !DILocation(line: 46, column: 15, scope: !3695)
!3698 = !DILocation(line: 47, column: 15, scope: !3695)
!3699 = !DILocation(line: 48, column: 15, scope: !3695)
!3700 = !DILocation(line: 50, column: 21, scope: !3695)
!3701 = !DILocation(line: 51, column: 21, scope: !3695)
!3702 = !DILocation(line: 52, column: 21, scope: !3695)
!3703 = !DILocation(line: 53, column: 21, scope: !3695)
!3704 = !DILocation(line: 54, column: 21, scope: !3695)
!3705 = !DILocation(line: 55, column: 21, scope: !3695)
!3706 = !DILocation(line: 56, column: 21, scope: !3695)
!3707 = !DILocation(line: 57, column: 21, scope: !3695)
!3708 = !DILocation(line: 58, column: 21, scope: !3695)
!3709 = !DILocation(line: 60, column: 15, scope: !3695)
!3710 = !DILocation(line: 61, column: 15, scope: !3695)
!3711 = !DILocation(line: 62, column: 15, scope: !3695)
!3712 = !DILocation(line: 63, column: 15, scope: !3695)
!3713 = !DILocation(line: 65, column: 15, scope: !3695)
!3714 = !DILocation(line: 66, column: 15, scope: !3695)
!3715 = !DILocation(line: 67, column: 21, scope: !3695)
!3716 = !DILocation(line: 68, column: 21, scope: !3695)
!3717 = !DILocation(line: 70, column: 21, scope: !3695)
!3718 = !DILocation(line: 71, column: 21, scope: !3695)
!3719 = !DILocation(line: 74, column: 37, scope: !3695)
!3720 = !DILocation(line: 74, column: 28, scope: !3695)
!3721 = !DILocation(line: 74, column: 21, scope: !3695)
!3722 = !DILocation(line: 75, column: 28, scope: !3695)
!3723 = !DILocation(line: 75, column: 33, scope: !3695)
!3724 = !DILocation(line: 75, column: 21, scope: !3695)
!3725 = !DILocation(line: 76, column: 28, scope: !3695)
!3726 = !DILocation(line: 76, column: 33, scope: !3695)
!3727 = !DILocation(line: 76, column: 21, scope: !3695)
!3728 = !DILocation(line: 79, column: 9, scope: !3695)
!3729 = !DILocation(line: 79, column: 14, scope: !3695)
!3730 = !DILocation(line: 79, column: 28, scope: !3695)
!3731 = !DILocation(line: 79, column: 33, scope: !3695)
!3732 = !DILocation(line: 79, column: 26, scope: !3695)
!3733 = !DILocation(line: 83, column: 21, scope: !3695)
!3734 = !DILocation(line: 83, column: 26, scope: !3695)
!3735 = !DILocation(line: 83, column: 19, scope: !3695)
!3736 = !DILocation(line: 84, column: 19, scope: !3695)
!3737 = !DILocation(line: 86, column: 37, scope: !3695)
!3738 = !DILocation(line: 86, column: 42, scope: !3695)
!3739 = !DILocation(line: 86, column: 25, scope: !3695)
!3740 = !DILocation(line: 88, column: 13, scope: !3695)
!3741 = !DILocation(line: 88, column: 23, scope: !3695)
!3742 = !DILocation(line: 89, column: 22, scope: !3695)
!3743 = !DILocation(line: 89, column: 13, scope: !3695)
!3744 = !DILocation(line: 91, column: 18, scope: !3695)
!3745 = !DILocation(line: 91, column: 28, scope: !3695)
!3746 = !DILocation(line: 92, column: 26, scope: !3695)
!3747 = !DILocation(line: 92, column: 36, scope: !3695)
!3748 = !DILocation(line: 92, column: 23, scope: !3695)
!3749 = !DILocation(line: 92, column: 13, scope: !3695)
!3750 = !DILocation(line: 93, column: 5, scope: !3695)
!3751 = !DILocation(line: 94, column: 14, scope: !3695)
!3752 = !DILocation(line: 94, column: 19, scope: !3695)
!3753 = !DILocation(line: 98, column: 19, scope: !3695)
!3754 = !DILocation(line: 99, column: 19, scope: !3695)
!3755 = !DILocation(line: 100, column: 24, scope: !3695)
!3756 = !DILocation(line: 100, column: 29, scope: !3695)
!3757 = !DILocation(line: 100, column: 43, scope: !3695)
!3758 = !DILocation(line: 100, column: 73, scope: !3695)
!3759 = !DILocation(line: 100, column: 19, scope: !3695)
!3760 = !DILocation(line: 101, column: 5, scope: !3695)
!3761 = !DILocation(line: 102, column: 14, scope: !3695)
!3762 = !DILocation(line: 102, column: 19, scope: !3695)
!3763 = !DILocation(line: 104, column: 19, scope: !3695)
!3764 = !DILocation(line: 105, column: 5, scope: !3695)
!3765 = !DILocation(line: 110, column: 26, scope: !3695)
!3766 = !DILocation(line: 110, column: 31, scope: !3695)
!3767 = !DILocation(line: 110, column: 19, scope: !3695)
!3768 = !DILocation(line: 111, column: 53, scope: !3695)
!3769 = !DILocation(line: 111, column: 51, scope: !3695)
!3770 = !DILocation(line: 111, column: 58, scope: !3695)
!3771 = !DILocation(line: 111, column: 19, scope: !3695)
!3772 = !DILocation(line: 113, column: 40, scope: !3695)
!3773 = !DILocation(line: 113, column: 45, scope: !3695)
!3774 = !DILocation(line: 113, column: 67, scope: !3695)
!3775 = !DILocation(line: 113, column: 25, scope: !3695)
!3776 = !DILocation(line: 116, column: 13, scope: !3695)
!3777 = !DILocation(line: 116, column: 19, scope: !3695)
!3778 = !DILocation(line: 117, column: 23, scope: !3695)
!3779 = !DILocation(line: 118, column: 9, scope: !3695)
!3780 = !DILocation(line: 119, column: 33, scope: !3695)
!3781 = !DILocation(line: 119, column: 59, scope: !3695)
!3782 = !DILocation(line: 119, column: 57, scope: !3695)
!3783 = !DILocation(line: 119, column: 45, scope: !3695)
!3784 = !DILocation(line: 119, column: 24, scope: !3695)
!3785 = !DILocation(line: 120, column: 49, scope: !3695)
!3786 = !DILocation(line: 120, column: 64, scope: !3695)
!3787 = !DILocation(line: 120, column: 61, scope: !3695)
!3788 = !DILocation(line: 120, column: 72, scope: !3695)
!3789 = !DILocation(line: 120, column: 70, scope: !3695)
!3790 = !DILocation(line: 120, column: 23, scope: !3695)
!3791 = !DILocation(line: 121, column: 25, scope: !3695)
!3792 = !DILocation(line: 121, column: 49, scope: !3695)
!3793 = !DILocation(line: 121, column: 23, scope: !3695)
!3794 = !DILocation(line: 122, column: 41, scope: !3695)
!3795 = !DILocation(line: 122, column: 65, scope: !3695)
!3796 = !DILocation(line: 122, column: 29, scope: !3695)
!3797 = !DILocation(line: 124, column: 17, scope: !3695)
!3798 = !DILocation(line: 124, column: 27, scope: !3695)
!3799 = !DILocation(line: 125, column: 26, scope: !3695)
!3800 = !DILocation(line: 125, column: 17, scope: !3695)
!3801 = !DILocation(line: 127, column: 22, scope: !3695)
!3802 = !DILocation(line: 127, column: 32, scope: !3695)
!3803 = !DILocation(line: 128, column: 30, scope: !3695)
!3804 = !DILocation(line: 128, column: 40, scope: !3695)
!3805 = !DILocation(line: 128, column: 27, scope: !3695)
!3806 = !DILocation(line: 128, column: 17, scope: !3695)
!3807 = !DILocation(line: 133, column: 30, scope: !3695)
!3808 = !DILocation(line: 133, column: 42, scope: !3695)
!3809 = !DILocation(line: 133, column: 47, scope: !3695)
!3810 = !DILocation(line: 133, column: 40, scope: !3695)
!3811 = !DILocation(line: 133, column: 21, scope: !3695)
!3812 = !DILocation(line: 134, column: 23, scope: !3695)
!3813 = !DILocation(line: 134, column: 12, scope: !3695)
!3814 = !DILocation(line: 134, column: 5, scope: !3695)
!3815 = distinct !DISubprogram(name: "srcToRep", scope: !3681, file: !3681, line: 66, type: !138, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !139)
!3816 = !DILocation(line: 67, column: 49, scope: !3815)
!3817 = !DILocation(line: 67, column: 55, scope: !3815)
!3818 = !DILocation(line: 68, column: 16, scope: !3815)
!3819 = !DILocation(line: 68, column: 5, scope: !3815)
!3820 = distinct !DISubprogram(name: "dstFromRep", scope: !3681, file: !3681, line: 71, type: !138, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !126, retainedNodes: !139)
!3821 = !DILocation(line: 72, column: 49, scope: !3820)
!3822 = !DILocation(line: 72, column: 55, scope: !3820)
!3823 = !DILocation(line: 73, column: 16, scope: !3820)
!3824 = !DILocation(line: 73, column: 5, scope: !3820)
!3825 = distinct !DISubprogram(name: "__truncsfhf2", scope: !129, file: !129, line: 18, type: !138, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !139)
!3826 = !DILocation(line: 19, column: 27, scope: !3825)
!3827 = !DILocation(line: 19, column: 12, scope: !3825)
!3828 = !DILocation(line: 19, column: 5, scope: !3825)
!3829 = distinct !DISubprogram(name: "__truncXfYf2__", scope: !3560, file: !3560, line: 42, type: !138, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !139)
!3830 = !DILocation(line: 45, column: 15, scope: !3829)
!3831 = !DILocation(line: 46, column: 15, scope: !3829)
!3832 = !DILocation(line: 47, column: 15, scope: !3829)
!3833 = !DILocation(line: 48, column: 15, scope: !3829)
!3834 = !DILocation(line: 50, column: 21, scope: !3829)
!3835 = !DILocation(line: 51, column: 21, scope: !3829)
!3836 = !DILocation(line: 52, column: 21, scope: !3829)
!3837 = !DILocation(line: 53, column: 21, scope: !3829)
!3838 = !DILocation(line: 54, column: 21, scope: !3829)
!3839 = !DILocation(line: 55, column: 21, scope: !3829)
!3840 = !DILocation(line: 56, column: 21, scope: !3829)
!3841 = !DILocation(line: 57, column: 21, scope: !3829)
!3842 = !DILocation(line: 58, column: 21, scope: !3829)
!3843 = !DILocation(line: 60, column: 15, scope: !3829)
!3844 = !DILocation(line: 61, column: 15, scope: !3829)
!3845 = !DILocation(line: 62, column: 15, scope: !3829)
!3846 = !DILocation(line: 63, column: 15, scope: !3829)
!3847 = !DILocation(line: 65, column: 15, scope: !3829)
!3848 = !DILocation(line: 66, column: 15, scope: !3829)
!3849 = !DILocation(line: 67, column: 21, scope: !3829)
!3850 = !DILocation(line: 68, column: 21, scope: !3829)
!3851 = !DILocation(line: 70, column: 21, scope: !3829)
!3852 = !DILocation(line: 71, column: 21, scope: !3829)
!3853 = !DILocation(line: 74, column: 37, scope: !3829)
!3854 = !DILocation(line: 74, column: 28, scope: !3829)
!3855 = !DILocation(line: 74, column: 21, scope: !3829)
!3856 = !DILocation(line: 75, column: 28, scope: !3829)
!3857 = !DILocation(line: 75, column: 33, scope: !3829)
!3858 = !DILocation(line: 75, column: 21, scope: !3829)
!3859 = !DILocation(line: 76, column: 28, scope: !3829)
!3860 = !DILocation(line: 76, column: 33, scope: !3829)
!3861 = !DILocation(line: 76, column: 21, scope: !3829)
!3862 = !DILocation(line: 79, column: 9, scope: !3829)
!3863 = !DILocation(line: 79, column: 14, scope: !3829)
!3864 = !DILocation(line: 79, column: 28, scope: !3829)
!3865 = !DILocation(line: 79, column: 33, scope: !3829)
!3866 = !DILocation(line: 79, column: 26, scope: !3829)
!3867 = !DILocation(line: 83, column: 21, scope: !3829)
!3868 = !DILocation(line: 83, column: 26, scope: !3829)
!3869 = !DILocation(line: 83, column: 19, scope: !3829)
!3870 = !DILocation(line: 84, column: 19, scope: !3829)
!3871 = !DILocation(line: 86, column: 37, scope: !3829)
!3872 = !DILocation(line: 86, column: 42, scope: !3829)
!3873 = !DILocation(line: 86, column: 25, scope: !3829)
!3874 = !DILocation(line: 88, column: 13, scope: !3829)
!3875 = !DILocation(line: 88, column: 23, scope: !3829)
!3876 = !DILocation(line: 89, column: 22, scope: !3829)
!3877 = !DILocation(line: 89, column: 13, scope: !3829)
!3878 = !DILocation(line: 91, column: 18, scope: !3829)
!3879 = !DILocation(line: 91, column: 28, scope: !3829)
!3880 = !DILocation(line: 92, column: 26, scope: !3829)
!3881 = !DILocation(line: 92, column: 36, scope: !3829)
!3882 = !DILocation(line: 92, column: 23, scope: !3829)
!3883 = !DILocation(line: 92, column: 13, scope: !3829)
!3884 = !DILocation(line: 93, column: 5, scope: !3829)
!3885 = !DILocation(line: 94, column: 14, scope: !3829)
!3886 = !DILocation(line: 94, column: 19, scope: !3829)
!3887 = !DILocation(line: 98, column: 19, scope: !3829)
!3888 = !DILocation(line: 99, column: 19, scope: !3829)
!3889 = !DILocation(line: 100, column: 24, scope: !3829)
!3890 = !DILocation(line: 100, column: 29, scope: !3829)
!3891 = !DILocation(line: 100, column: 43, scope: !3829)
!3892 = !DILocation(line: 100, column: 73, scope: !3829)
!3893 = !DILocation(line: 100, column: 19, scope: !3829)
!3894 = !DILocation(line: 101, column: 5, scope: !3829)
!3895 = !DILocation(line: 102, column: 14, scope: !3829)
!3896 = !DILocation(line: 102, column: 19, scope: !3829)
!3897 = !DILocation(line: 104, column: 19, scope: !3829)
!3898 = !DILocation(line: 105, column: 5, scope: !3829)
!3899 = !DILocation(line: 110, column: 26, scope: !3829)
!3900 = !DILocation(line: 110, column: 31, scope: !3829)
!3901 = !DILocation(line: 110, column: 19, scope: !3829)
!3902 = !DILocation(line: 111, column: 53, scope: !3829)
!3903 = !DILocation(line: 111, column: 51, scope: !3829)
!3904 = !DILocation(line: 111, column: 58, scope: !3829)
!3905 = !DILocation(line: 111, column: 19, scope: !3829)
!3906 = !DILocation(line: 113, column: 40, scope: !3829)
!3907 = !DILocation(line: 113, column: 45, scope: !3829)
!3908 = !DILocation(line: 113, column: 67, scope: !3829)
!3909 = !DILocation(line: 113, column: 25, scope: !3829)
!3910 = !DILocation(line: 116, column: 13, scope: !3829)
!3911 = !DILocation(line: 116, column: 19, scope: !3829)
!3912 = !DILocation(line: 117, column: 23, scope: !3829)
!3913 = !DILocation(line: 118, column: 9, scope: !3829)
!3914 = !DILocation(line: 119, column: 33, scope: !3829)
!3915 = !DILocation(line: 119, column: 59, scope: !3829)
!3916 = !DILocation(line: 119, column: 57, scope: !3829)
!3917 = !DILocation(line: 119, column: 45, scope: !3829)
!3918 = !DILocation(line: 119, column: 24, scope: !3829)
!3919 = !DILocation(line: 120, column: 49, scope: !3829)
!3920 = !DILocation(line: 120, column: 64, scope: !3829)
!3921 = !DILocation(line: 120, column: 61, scope: !3829)
!3922 = !DILocation(line: 120, column: 72, scope: !3829)
!3923 = !DILocation(line: 120, column: 70, scope: !3829)
!3924 = !DILocation(line: 120, column: 23, scope: !3829)
!3925 = !DILocation(line: 121, column: 25, scope: !3829)
!3926 = !DILocation(line: 121, column: 49, scope: !3829)
!3927 = !DILocation(line: 121, column: 23, scope: !3829)
!3928 = !DILocation(line: 122, column: 41, scope: !3829)
!3929 = !DILocation(line: 122, column: 65, scope: !3829)
!3930 = !DILocation(line: 122, column: 29, scope: !3829)
!3931 = !DILocation(line: 124, column: 17, scope: !3829)
!3932 = !DILocation(line: 124, column: 27, scope: !3829)
!3933 = !DILocation(line: 125, column: 26, scope: !3829)
!3934 = !DILocation(line: 125, column: 17, scope: !3829)
!3935 = !DILocation(line: 127, column: 22, scope: !3829)
!3936 = !DILocation(line: 127, column: 32, scope: !3829)
!3937 = !DILocation(line: 128, column: 30, scope: !3829)
!3938 = !DILocation(line: 128, column: 40, scope: !3829)
!3939 = !DILocation(line: 128, column: 27, scope: !3829)
!3940 = !DILocation(line: 128, column: 17, scope: !3829)
!3941 = !DILocation(line: 133, column: 30, scope: !3829)
!3942 = !DILocation(line: 133, column: 42, scope: !3829)
!3943 = !DILocation(line: 133, column: 47, scope: !3829)
!3944 = !DILocation(line: 133, column: 40, scope: !3829)
!3945 = !DILocation(line: 133, column: 21, scope: !3829)
!3946 = !DILocation(line: 134, column: 23, scope: !3829)
!3947 = !DILocation(line: 134, column: 12, scope: !3829)
!3948 = !DILocation(line: 134, column: 5, scope: !3829)
!3949 = distinct !DISubprogram(name: "srcToRep", scope: !3681, file: !3681, line: 66, type: !138, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !139)
!3950 = !DILocation(line: 67, column: 49, scope: !3949)
!3951 = !DILocation(line: 67, column: 55, scope: !3949)
!3952 = !DILocation(line: 68, column: 16, scope: !3949)
!3953 = !DILocation(line: 68, column: 5, scope: !3949)
!3954 = distinct !DISubprogram(name: "dstFromRep", scope: !3681, file: !3681, line: 71, type: !138, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !139)
!3955 = !DILocation(line: 72, column: 49, scope: !3954)
!3956 = !DILocation(line: 72, column: 55, scope: !3954)
!3957 = !DILocation(line: 73, column: 16, scope: !3954)
!3958 = !DILocation(line: 73, column: 5, scope: !3954)
!3959 = distinct !DISubprogram(name: "__gnu_f2h_ieee", scope: !129, file: !129, line: 22, type: !138, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !139)
!3960 = !DILocation(line: 23, column: 25, scope: !3959)
!3961 = !DILocation(line: 23, column: 12, scope: !3959)
!3962 = !DILocation(line: 23, column: 5, scope: !3959)
