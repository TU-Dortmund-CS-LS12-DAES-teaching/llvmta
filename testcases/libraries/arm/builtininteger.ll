; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"../libraries/builtinsint/subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

@__aeabi_llsl = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashldi3 to void (...)*)
@__aeabi_lasr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashrdi3 to void (...)*)
@__aeabi_idiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__divsi3 to void (...)*)
@__aeabi_llsr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__lshrdi3 to void (...)*)
@__aeabi_uidiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__udivsi3 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 %a) #0 !dbg !116 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #3, !dbg !120
  unreachable, !dbg !120

if.end:                                           ; preds = %entry
  %0 = icmp slt i64 %a, 0, !dbg !121
  %1 = sub nsw i64 0, %a, !dbg !121
  %sub = select i1 %0, i64 %1, i64 %a, !dbg !121
  ret i64 %sub, !dbg !122
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 %a) #0 !dbg !123 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #3, !dbg !126
  unreachable, !dbg !126

if.end:                                           ; preds = %entry
  %0 = icmp slt i32 %a, 0, !dbg !127
  %1 = sub nsw i32 0, %a, !dbg !127
  %sub = select i1 %0, i32 %1, i32 %a, !dbg !127
  ret i32 %sub, !dbg !128
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 %a, i64 %b) #0 !dbg !129 {
entry:
  %add = add i64 %a, %b, !dbg !130
  %cmp = icmp sgt i64 %b, -1, !dbg !131
  br i1 %cmp, label %if.then, label %if.else, !dbg !132

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !133
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !134

if.then2:                                         ; preds = %if.then
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #3, !dbg !135
  unreachable, !dbg !135

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !136

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i64 %add, %a, !dbg !137
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !138

if.then4:                                         ; preds = %if.else
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #3, !dbg !139
  unreachable, !dbg !139

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !140
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 %a, i32 %b) #0 !dbg !141 {
entry:
  %add = add i32 %a, %b, !dbg !142
  %cmp = icmp sgt i32 %b, -1, !dbg !143
  br i1 %cmp, label %if.then, label %if.else, !dbg !144

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !145
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !146

if.then2:                                         ; preds = %if.then
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #3, !dbg !147
  unreachable, !dbg !147

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !148

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i32 %add, %a, !dbg !149
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !150

if.then4:                                         ; preds = %if.else
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #3, !dbg !151
  unreachable, !dbg !151

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !152
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 %a, i32 %b) #0 !dbg !153 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !154
  store i64 %a, i64* %all, align 8, !dbg !155
  %and = and i32 %b, 32, !dbg !156
  %tobool = icmp eq i32 %and, 0, !dbg !156
  br i1 %tobool, label %if.else, label %if.then, !dbg !157

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !158
  store i32 0, i32* %low, align 8, !dbg !159
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !160
  %0 = load i32, i32* %low2, align 8, !dbg !160
  %sub = add nsw i32 %b, -32, !dbg !161
  %shl = shl i32 %0, %sub, !dbg !162
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !163
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !164
  store i32 %shl, i32* %high, align 4, !dbg !165
  br label %if.end18, !dbg !166

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !167
  br i1 %cmp, label %if.then4, label %if.end, !dbg !168

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !169

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !170
  %1 = load i32, i32* %low6, align 8, !dbg !170
  %shl7 = shl i32 %1, %b, !dbg !171
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !172
  store i32 %shl7, i32* %low9, align 8, !dbg !173
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !174
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !175
  %2 = load i32, i32* %high11, align 4, !dbg !175
  %shl12 = shl i32 %2, %b, !dbg !176
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !177
  %3 = load i32, i32* %low14, align 8, !dbg !177
  %sub15 = sub nsw i32 32, %b, !dbg !178
  %shr = lshr i32 %3, %sub15, !dbg !179
  %or = or i32 %shl12, %shr, !dbg !180
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !181
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !182
  store i32 %or, i32* %high17, align 4, !dbg !183
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !184
  %4 = load i64, i64* %all19, align 8, !dbg !184
  br label %return, !dbg !185

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !186
  ret i64 %retval.0, !dbg !187
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 %a, i32 %b) #0 !dbg !188 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !189
  store i64 %a, i64* %all, align 8, !dbg !190
  %and = and i32 %b, 32, !dbg !191
  %tobool = icmp eq i32 %and, 0, !dbg !191
  br i1 %tobool, label %if.else, label %if.then, !dbg !192

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !193
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !194
  %0 = load i32, i32* %high, align 4, !dbg !194
  %shr = ashr i32 %0, 31, !dbg !195
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !196
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !197
  store i32 %shr, i32* %high2, align 4, !dbg !198
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !199
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !200
  %1 = load i32, i32* %high4, align 4, !dbg !200
  %sub = add nsw i32 %b, -32, !dbg !201
  %shr5 = ashr i32 %1, %sub, !dbg !202
  %low = bitcast %union.dwords* %result to i32*, !dbg !203
  store i32 %shr5, i32* %low, align 8, !dbg !204
  br label %if.end21, !dbg !205

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !206
  br i1 %cmp, label %if.then7, label %if.end, !dbg !207

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !208

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !209
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !210
  %2 = load i32, i32* %high9, align 4, !dbg !210
  %shr10 = ashr i32 %2, %b, !dbg !211
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !212
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !213
  store i32 %shr10, i32* %high12, align 4, !dbg !214
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !215
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !216
  %3 = load i32, i32* %high14, align 4, !dbg !216
  %sub15 = sub nsw i32 32, %b, !dbg !217
  %shl = shl i32 %3, %sub15, !dbg !218
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !219
  %4 = load i32, i32* %low17, align 8, !dbg !219
  %shr18 = lshr i32 %4, %b, !dbg !220
  %or = or i32 %shl, %shr18, !dbg !221
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !222
  store i32 %or, i32* %low20, align 8, !dbg !223
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !224
  %5 = load i64, i64* %all22, align 8, !dbg !224
  br label %return, !dbg !225

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !226
  ret i64 %retval.0, !dbg !227
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 %a) #0 !dbg !228 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !229
  store i64 %a, i64* %all, align 8, !dbg !230
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !231
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !232
  %0 = load i32, i32* %high, align 4, !dbg !232
  %cmp = icmp eq i32 %0, 0, !dbg !233
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !234
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !235
  %1 = load i32, i32* %high2, align 4, !dbg !235
  %low = bitcast %union.dwords* %x to i32*, !dbg !236
  %2 = load i32, i32* %low, align 8, !dbg !236
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !237
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !238, !range !239
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !240
  %add = add nuw nsw i32 %4, %and5, !dbg !241
  ret i32 %add, !dbg !242
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 %a) #0 !dbg !243 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !244
  %conv = zext i1 %cmp to i32, !dbg !244
  %shl = shl nuw nsw i32 %conv, 4, !dbg !245
  %sub = sub nuw nsw i32 16, %shl, !dbg !246
  %shr = lshr i32 %a, %sub, !dbg !247
  %and1 = and i32 %shr, 65280, !dbg !248
  %cmp2 = icmp eq i32 %and1, 0, !dbg !249
  %conv3 = zext i1 %cmp2 to i32, !dbg !249
  %shl4 = shl nuw nsw i32 %conv3, 3, !dbg !250
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !251
  %shr6 = lshr i32 %shr, %sub5, !dbg !252
  %add = or i32 %shl, %shl4, !dbg !253
  %and7 = and i32 %shr6, 240, !dbg !254
  %cmp8 = icmp eq i32 %and7, 0, !dbg !255
  %conv9 = zext i1 %cmp8 to i32, !dbg !255
  %shl10 = shl nuw nsw i32 %conv9, 2, !dbg !256
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !257
  %shr12 = lshr i32 %shr6, %sub11, !dbg !258
  %add13 = or i32 %add, %shl10, !dbg !259
  %and14 = and i32 %shr12, 12, !dbg !260
  %cmp15 = icmp eq i32 %and14, 0, !dbg !261
  %conv16 = zext i1 %cmp15 to i32, !dbg !261
  %shl17 = shl nuw nsw i32 %conv16, 1, !dbg !262
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !263
  %shr19 = lshr i32 %shr12, %sub18, !dbg !264
  %add20 = or i32 %add13, %shl17, !dbg !265
  %sub21 = sub i32 2, %shr19, !dbg !266
  %and22 = lshr i32 %shr19, 1, !dbg !267
  %and22.lobit = and i32 %and22, 1, !dbg !267
  %0 = xor i32 %and22.lobit, 1, !dbg !267
  %sub25 = sub nsw i32 0, %0, !dbg !268
  %and26 = and i32 %sub21, %sub25, !dbg !269
  %add27 = add i32 %add20, %and26, !dbg !270
  ret i32 %add27, !dbg !271
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 %a, i64 %b) #0 !dbg !272 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !273
  store i64 %a, i64* %all, align 8, !dbg !274
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !275
  store i64 %b, i64* %all1, align 8, !dbg !276
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !277
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !278
  %0 = load i32, i32* %high, align 4, !dbg !278
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !279
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !280
  %1 = load i32, i32* %high3, align 4, !dbg !280
  %cmp = icmp slt i32 %0, %1, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  br label %return, !dbg !283

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !284
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !285
  %2 = load i32, i32* %high5, align 4, !dbg !285
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !286
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !287
  %3 = load i32, i32* %high7, align 4, !dbg !287
  %cmp8 = icmp sgt i32 %2, %3, !dbg !288
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !289

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !290

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !291
  %4 = load i32, i32* %low, align 8, !dbg !291
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !292
  %5 = load i32, i32* %low13, align 8, !dbg !292
  %cmp14 = icmp ult i32 %4, %5, !dbg !293
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !294

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !295

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !296
  %6 = load i32, i32* %low18, align 8, !dbg !296
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !297
  %7 = load i32, i32* %low20, align 8, !dbg !297
  %cmp21 = icmp ugt i32 %6, %7, !dbg !298
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !299

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !300

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !301

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !302
  ret i32 %retval.0, !dbg !303
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 %a, i64 %b) #0 !dbg !304 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 %a, i64 %b) #4, !dbg !305
  %sub = add nsw i32 %call, -1, !dbg !306
  ret i32 %sub, !dbg !307
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 %a) #0 !dbg !308 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !309
  store i64 %a, i64* %all, align 8, !dbg !310
  %low = bitcast %union.dwords* %x to i32*, !dbg !311
  %0 = load i32, i32* %low, align 8, !dbg !311
  %cmp = icmp eq i32 %0, 0, !dbg !312
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !313
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !314
  %1 = load i32, i32* %high, align 4, !dbg !314
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !315
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !316, !range !239
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !317
  %add = add nuw nsw i32 %3, %and5, !dbg !318
  ret i32 %add, !dbg !319
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 %a) #0 !dbg !320 {
entry:
  %and = and i32 %a, 65535, !dbg !321
  %cmp = icmp eq i32 %and, 0, !dbg !322
  %conv = zext i1 %cmp to i32, !dbg !322
  %shl = shl nuw nsw i32 %conv, 4, !dbg !323
  %shr = lshr i32 %a, %shl, !dbg !324
  %and1 = and i32 %shr, 255, !dbg !325
  %cmp2 = icmp eq i32 %and1, 0, !dbg !326
  %conv3 = zext i1 %cmp2 to i32, !dbg !326
  %shl4 = shl nuw nsw i32 %conv3, 3, !dbg !327
  %shr5 = lshr i32 %shr, %shl4, !dbg !328
  %add = or i32 %shl, %shl4, !dbg !329
  %and6 = and i32 %shr5, 15, !dbg !330
  %cmp7 = icmp eq i32 %and6, 0, !dbg !331
  %conv8 = zext i1 %cmp7 to i32, !dbg !331
  %shl9 = shl nuw nsw i32 %conv8, 2, !dbg !332
  %shr10 = lshr i32 %shr5, %shl9, !dbg !333
  %add11 = or i32 %add, %shl9, !dbg !334
  %and12 = and i32 %shr10, 3, !dbg !335
  %cmp13 = icmp eq i32 %and12, 0, !dbg !336
  %conv14 = zext i1 %cmp13 to i32, !dbg !336
  %shl15 = shl nuw nsw i32 %conv14, 1, !dbg !337
  %shr16 = lshr i32 %shr10, %shl15, !dbg !338
  %add18 = or i32 %add11, %shl15, !dbg !339
  %and17 = lshr i32 %shr16, 1, !dbg !340
  %shr19 = and i32 %and17, 1, !dbg !340
  %sub = sub nuw nsw i32 2, %shr19, !dbg !341
  %and20 = and i32 %shr16, 1, !dbg !342
  %0 = xor i32 %and20, 1, !dbg !343
  %sub23 = sub nsw i32 0, %0, !dbg !344
  %and24 = and i32 %sub, %sub23, !dbg !345
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !346
  ret i32 %add25, !dbg !347
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 %a, i64 %b) #0 !dbg !348 {
entry:
  %shr = ashr i64 %a, 63, !dbg !349
  %shr1 = ashr i64 %b, 63, !dbg !350
  %xor = xor i64 %shr, %a, !dbg !351
  %sub = sub nsw i64 %xor, %shr, !dbg !352
  %xor2 = xor i64 %shr1, %b, !dbg !353
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !354
  %xor4 = xor i64 %shr, %shr1, !dbg !355
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 %sub, i64 %sub3, i64* null) #4, !dbg !356
  %xor5 = xor i64 %call, %xor4, !dbg !357
  %sub6 = sub i64 %xor5, %xor4, !dbg !358
  ret i64 %sub6, !dbg !359
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 %a, i64 %b, i64* %rem) #0 !dbg !360 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 %a, i64 %b) #4, !dbg !361
  %mul = mul nsw i64 %call, %b, !dbg !362
  %sub = sub nsw i64 %a, %mul, !dbg !363
  store i64 %sub, i64* %rem, align 8, !dbg !364
  ret i64 %call, !dbg !365
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 %a, i32 %b, i32* %rem) #0 !dbg !366 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 %a, i32 %b) #4, !dbg !367
  %mul = mul nsw i32 %call, %b, !dbg !368
  %sub = sub nsw i32 %a, %mul, !dbg !369
  store i32 %sub, i32* %rem, align 4, !dbg !370
  ret i32 %call, !dbg !371
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 %a, i32 %b) #0 !dbg !372 {
entry:
  %shr = ashr i32 %a, 31, !dbg !373
  %shr1 = ashr i32 %b, 31, !dbg !374
  %xor = xor i32 %shr, %a, !dbg !375
  %sub = sub nsw i32 %xor, %shr, !dbg !376
  %xor2 = xor i32 %shr1, %b, !dbg !377
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !378
  %xor4 = xor i32 %shr, %shr1, !dbg !379
  %div = udiv i32 %sub, %sub3, !dbg !380
  %xor5 = xor i32 %div, %xor4, !dbg !381
  %sub6 = sub i32 %xor5, %xor4, !dbg !382
  ret i32 %sub6, !dbg !383
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 %a) #0 !dbg !384 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !385
  store i64 %a, i64* %all, align 8, !dbg !386
  %low = bitcast %union.dwords* %x to i32*, !dbg !387
  %0 = load i32, i32* %low, align 8, !dbg !387
  %cmp = icmp eq i32 %0, 0, !dbg !388
  br i1 %cmp, label %if.then, label %if.end6, !dbg !389

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !390
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !391
  %1 = load i32, i32* %high, align 4, !dbg !391
  %cmp2 = icmp eq i32 %1, 0, !dbg !392
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !393

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !394

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !395
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !396
  %2 = load i32, i32* %high5, align 4, !dbg !396
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !397, !range !239
  %add = add nuw nsw i32 %3, 33, !dbg !398
  br label %return, !dbg !399

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !400
  %4 = load i32, i32* %low8, align 8, !dbg !400
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !401, !range !239
  %add9 = add nuw nsw i32 %5, 1, !dbg !402
  br label %return, !dbg !403

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !404
  ret i32 %retval.0, !dbg !405
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 %a) #0 !dbg !406 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !407
  br i1 %cmp, label %if.then, label %if.end, !dbg !408

if.then:                                          ; preds = %entry
  br label %return, !dbg !409

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 false), !dbg !410, !range !239
  %add = add nuw nsw i32 %0, 1, !dbg !411
  br label %return, !dbg !412

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !413
  ret i32 %retval.0, !dbg !414
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* %file, i32 %line, i8* %function) #2 !dbg !415 {
entry:
  unreachable, !dbg !416
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 %a, i32 %b) #0 !dbg !417 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !418
  store i64 %a, i64* %all, align 8, !dbg !419
  %and = and i32 %b, 32, !dbg !420
  %tobool = icmp eq i32 %and, 0, !dbg !420
  br i1 %tobool, label %if.else, label %if.then, !dbg !421

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !422
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !423
  store i32 0, i32* %high, align 4, !dbg !424
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !425
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !426
  %0 = load i32, i32* %high2, align 4, !dbg !426
  %sub = add nsw i32 %b, -32, !dbg !427
  %shr = lshr i32 %0, %sub, !dbg !428
  %low = bitcast %union.dwords* %result to i32*, !dbg !429
  store i32 %shr, i32* %low, align 8, !dbg !430
  br label %if.end18, !dbg !431

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !432
  br i1 %cmp, label %if.then4, label %if.end, !dbg !433

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !434

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !435
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !436
  %1 = load i32, i32* %high6, align 4, !dbg !436
  %shr7 = lshr i32 %1, %b, !dbg !437
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !438
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !439
  store i32 %shr7, i32* %high9, align 4, !dbg !440
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !441
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !442
  %2 = load i32, i32* %high11, align 4, !dbg !442
  %sub12 = sub nsw i32 32, %b, !dbg !443
  %shl = shl i32 %2, %sub12, !dbg !444
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !445
  %3 = load i32, i32* %low14, align 8, !dbg !445
  %shr15 = lshr i32 %3, %b, !dbg !446
  %or = or i32 %shl, %shr15, !dbg !447
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !448
  store i32 %or, i32* %low17, align 8, !dbg !449
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !450
  %4 = load i64, i64* %all19, align 8, !dbg !450
  br label %return, !dbg !451

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !452
  ret i64 %retval.0, !dbg !453
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 %a, i64 %b) #0 !dbg !454 {
entry:
  %r = alloca i64, align 8
  %0 = icmp slt i64 %b, 0, !dbg !455
  %1 = sub nsw i64 0, %b, !dbg !455
  %sub = select i1 %0, i64 %1, i64 %b, !dbg !455
  %shr1 = ashr i64 %a, 63, !dbg !456
  %xor2 = xor i64 %shr1, %a, !dbg !457
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !458
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 %sub3, i64 %sub, i64* nonnull %r) #4, !dbg !459
  %2 = load i64, i64* %r, align 8, !dbg !460
  %xor4 = xor i64 %2, %shr1, !dbg !461
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !462
  ret i64 %sub5, !dbg !463
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 %a, i32 %b) #0 !dbg !464 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 %a, i32 %b) #4, !dbg !465
  %mul = mul nsw i32 %call, %b, !dbg !466
  %sub = sub nsw i32 %a, %mul, !dbg !467
  ret i32 %sub, !dbg !468
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 %a, i64 %b) #0 !dbg !469 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !470
  br i1 %cmp, label %if.then, label %if.end4, !dbg !471

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !472
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !473

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !474
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !475

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !476

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !477
  unreachable, !dbg !477

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !478
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !479

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !480
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !481

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !482
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !483

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !484

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !485
  unreachable, !dbg !485

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !486
  %xor = xor i64 %shr, %a, !dbg !487
  %sub = sub nsw i64 %xor, %shr, !dbg !488
  %shr14 = ashr i64 %b, 63, !dbg !489
  %xor15 = xor i64 %shr14, %b, !dbg !490
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !491
  %cmp17 = icmp slt i64 %sub, 2, !dbg !492
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !493

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !494
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !495

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !496

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !497
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !498

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !499
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !500
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !501

if.then26:                                        ; preds = %if.then24
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !502
  unreachable, !dbg !502

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !503

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !504
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !505
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !506
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !507

if.then31:                                        ; preds = %if.else
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !508
  unreachable, !dbg !508

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !509

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !510
  ret i64 %retval.0, !dbg !511
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 %a, i32 %b) #0 !dbg !512 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !513
  br i1 %cmp, label %if.then, label %if.end4, !dbg !514

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !515
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !516

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !517
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !518

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !519

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !520
  unreachable, !dbg !520

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !521
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !522

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !523
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !524

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !525
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !526

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !527

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !528
  unreachable, !dbg !528

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !529
  %xor = xor i32 %shr, %a, !dbg !530
  %sub = sub nsw i32 %xor, %shr, !dbg !531
  %shr14 = ashr i32 %b, 31, !dbg !532
  %xor15 = xor i32 %shr14, %b, !dbg !533
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !534
  %cmp17 = icmp slt i32 %sub, 2, !dbg !535
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !536

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !537
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !538

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !539

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !540
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !541

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !542
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !543
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !544

if.then26:                                        ; preds = %if.then24
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !545
  unreachable, !dbg !545

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !546

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !547
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !548
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !549
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !550

if.then31:                                        ; preds = %if.else
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !551
  unreachable, !dbg !551

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !552

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !553
  ret i32 %retval.0, !dbg !554
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 %a) #0 !dbg !555 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !556
  store i64 %a, i64* %all, align 8, !dbg !557
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !558
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !559
  %0 = load i32, i32* %high, align 4, !dbg !559
  %low = bitcast %union.dwords* %x to i32*, !dbg !560
  %1 = load i32, i32* %low, align 8, !dbg !560
  %xor = xor i32 %0, %1, !dbg !561
  %call = call arm_aapcscc i32 @__paritysi2(i32 %xor) #4, !dbg !562
  ret i32 %call, !dbg !563
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 %a) #0 !dbg !564 {
entry:
  %shr = lshr i32 %a, 16, !dbg !565
  %xor = xor i32 %shr, %a, !dbg !566
  %shr1 = lshr i32 %xor, 8, !dbg !567
  %xor2 = xor i32 %xor, %shr1, !dbg !568
  %shr3 = lshr i32 %xor2, 4, !dbg !569
  %xor4 = xor i32 %xor2, %shr3, !dbg !570
  %and = and i32 %xor4, 15, !dbg !571
  %shr5 = lshr i32 27030, %and, !dbg !572
  %and6 = and i32 %shr5, 1, !dbg !573
  ret i32 %and6, !dbg !574
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 %a) #0 !dbg !575 {
entry:
  %shr = lshr i64 %a, 1, !dbg !576
  %and = and i64 %shr, 6148914691236517205, !dbg !577
  %sub = sub i64 %a, %and, !dbg !578
  %shr1 = lshr i64 %sub, 2, !dbg !579
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !580
  %and3 = and i64 %sub, 3689348814741910323, !dbg !581
  %add = add nuw nsw i64 %and2, %and3, !dbg !582
  %shr4 = lshr i64 %add, 4, !dbg !583
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !584
  %and6 = and i64 %add5, 1085102592571150095, !dbg !585
  %shr7 = lshr i64 %and6, 32, !dbg !586
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !587
  %conv = trunc i64 %add8 to i32, !dbg !588
  %shr9 = lshr i32 %conv, 16, !dbg !589
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !590
  %shr11 = lshr i32 %add10, 8, !dbg !591
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !592
  %and13 = and i32 %add12, 127, !dbg !593
  ret i32 %and13, !dbg !594
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 %a) #0 !dbg !595 {
entry:
  %shr = lshr i32 %a, 1, !dbg !596
  %and = and i32 %shr, 1431655765, !dbg !597
  %sub = sub i32 %a, %and, !dbg !598
  %shr1 = lshr i32 %sub, 2, !dbg !599
  %and2 = and i32 %shr1, 858993459, !dbg !600
  %and3 = and i32 %sub, 858993459, !dbg !601
  %add = add nuw nsw i32 %and2, %and3, !dbg !602
  %shr4 = lshr i32 %add, 4, !dbg !603
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !604
  %and6 = and i32 %add5, 252645135, !dbg !605
  %shr7 = lshr i32 %and6, 16, !dbg !606
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !607
  %shr9 = lshr i32 %add8, 8, !dbg !608
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !609
  %and11 = and i32 %add10, 63, !dbg !610
  ret i32 %and11, !dbg !611
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 %a, i64 %b) #0 !dbg !612 {
entry:
  %sub = sub i64 %a, %b, !dbg !613
  %cmp = icmp sgt i64 %b, -1, !dbg !614
  br i1 %cmp, label %if.then, label %if.else, !dbg !615

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !616
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !617

if.then2:                                         ; preds = %if.then
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #3, !dbg !618
  unreachable, !dbg !618

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !619

if.else:                                          ; preds = %entry
  %cmp3 = icmp sgt i64 %sub, %a, !dbg !620
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !621

if.then4:                                         ; preds = %if.else
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #3, !dbg !622
  unreachable, !dbg !622

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !623
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 %a, i32 %b) #0 !dbg !624 {
entry:
  %sub = sub i32 %a, %b, !dbg !625
  %cmp = icmp sgt i32 %b, -1, !dbg !626
  br i1 %cmp, label %if.then, label %if.else, !dbg !627

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !628
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !629

if.then2:                                         ; preds = %if.then
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #3, !dbg !630
  unreachable, !dbg !630

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !631

if.else:                                          ; preds = %entry
  %cmp3 = icmp sgt i32 %sub, %a, !dbg !632
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !633

if.then4:                                         ; preds = %if.else
  call arm_aapcs_vfpcc void @compilerrt_abort_impl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #3, !dbg !634
  unreachable, !dbg !634

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !635
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 %a, i64 %b) #0 !dbg !636 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !637
  store i64 %a, i64* %all, align 8, !dbg !638
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !639
  store i64 %b, i64* %all1, align 8, !dbg !640
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !641
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !642
  %0 = load i32, i32* %high, align 4, !dbg !642
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !643
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !644
  %1 = load i32, i32* %high3, align 4, !dbg !644
  %cmp = icmp ult i32 %0, %1, !dbg !645
  br i1 %cmp, label %if.then, label %if.end, !dbg !646

if.then:                                          ; preds = %entry
  br label %return, !dbg !647

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !648
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !649
  %2 = load i32, i32* %high5, align 4, !dbg !649
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !650
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !651
  %3 = load i32, i32* %high7, align 4, !dbg !651
  %cmp8 = icmp ugt i32 %2, %3, !dbg !652
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !653

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !654

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !655
  %4 = load i32, i32* %low, align 8, !dbg !655
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !656
  %5 = load i32, i32* %low13, align 8, !dbg !656
  %cmp14 = icmp ult i32 %4, %5, !dbg !657
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !658

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !659

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !660
  %6 = load i32, i32* %low18, align 8, !dbg !660
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !661
  %7 = load i32, i32* %low20, align 8, !dbg !661
  %cmp21 = icmp ugt i32 %6, %7, !dbg !662
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !663

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !664

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !665

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !666
  ret i32 %retval.0, !dbg !667
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 %a, i64 %b) #0 !dbg !668 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 %a, i64 %b) #4, !dbg !669
  %sub = add nsw i32 %call, -1, !dbg !670
  ret i32 %sub, !dbg !671
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 %a, i64 %b) #0 !dbg !672 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 %a, i64 %b, i64* null) #4, !dbg !673
  ret i64 %call, !dbg !674
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 %a, i64 %b, i64* %rem) #0 !dbg !675 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !676
  store i64 %a, i64* %all, align 8, !dbg !677
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !678
  store i64 %b, i64* %all1, align 8, !dbg !679
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !680
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !681
  %0 = load i32, i32* %high, align 4, !dbg !681
  %cmp = icmp eq i32 %0, 0, !dbg !682
  br i1 %cmp, label %if.then, label %if.end23, !dbg !683

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !684
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !685
  %1 = load i32, i32* %high3, align 4, !dbg !685
  %cmp4 = icmp eq i32 %1, 0, !dbg !686
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !687

if.then5:                                         ; preds = %if.then
  %tobool = icmp eq i64* %rem, null, !dbg !688
  br i1 %tobool, label %if.end, label %if.then6, !dbg !688

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !689
  %2 = load i32, i32* %low, align 8, !dbg !689
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !690
  %3 = load i32, i32* %low9, align 8, !dbg !690
  %rem10 = urem i32 %2, %3, !dbg !691
  %conv = zext i32 %rem10 to i64, !dbg !692
  store i64 %conv, i64* %rem, align 8, !dbg !693
  br label %if.end, !dbg !694

if.end:                                           ; preds = %if.then5, %if.then6
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !695
  %4 = load i32, i32* %low12, align 8, !dbg !695
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !696
  %5 = load i32, i32* %low14, align 8, !dbg !696
  %div = udiv i32 %4, %5, !dbg !697
  %conv15 = zext i32 %div to i64, !dbg !698
  br label %return, !dbg !699

if.end16:                                         ; preds = %if.then
  %tobool17 = icmp eq i64* %rem, null, !dbg !700
  br i1 %tobool17, label %if.end22, label %if.then18, !dbg !700

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !701
  %6 = load i32, i32* %low20, align 8, !dbg !701
  %conv21 = zext i32 %6 to i64, !dbg !702
  store i64 %conv21, i64* %rem, align 8, !dbg !703
  br label %if.end22, !dbg !704

if.end22:                                         ; preds = %if.end16, %if.then18
  br label %return, !dbg !705

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !706
  %7 = load i32, i32* %low25, align 8, !dbg !706
  %cmp26 = icmp eq i32 %7, 0, !dbg !707
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !708

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !709
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !710
  %8 = load i32, i32* %high30, align 4, !dbg !710
  %cmp31 = icmp eq i32 %8, 0, !dbg !711
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !712

if.then33:                                        ; preds = %if.then28
  %tobool34 = icmp eq i64* %rem, null, !dbg !713
  br i1 %tobool34, label %if.end42, label %if.then35, !dbg !713

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !714
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !715
  %9 = load i32, i32* %high37, align 4, !dbg !715
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !716
  %10 = load i32, i32* %low39, align 8, !dbg !716
  %rem40 = urem i32 %9, %10, !dbg !717
  %conv41 = zext i32 %rem40 to i64, !dbg !718
  store i64 %conv41, i64* %rem, align 8, !dbg !719
  br label %if.end42, !dbg !720

if.end42:                                         ; preds = %if.then33, %if.then35
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !721
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !722
  %11 = load i32, i32* %high44, align 4, !dbg !722
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !723
  %12 = load i32, i32* %low46, align 8, !dbg !723
  %div47 = udiv i32 %11, %12, !dbg !724
  %conv48 = zext i32 %div47 to i64, !dbg !725
  br label %return, !dbg !726

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !727
  %13 = load i32, i32* %low51, align 8, !dbg !727
  %cmp52 = icmp eq i32 %13, 0, !dbg !728
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !729

if.then54:                                        ; preds = %if.end49
  %tobool55 = icmp eq i64* %rem, null, !dbg !730
  br i1 %tobool55, label %if.end67, label %if.then56, !dbg !730

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !731
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !732
  %14 = load i32, i32* %high58, align 4, !dbg !732
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !733
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !734
  %15 = load i32, i32* %high60, align 4, !dbg !734
  %rem61 = urem i32 %14, %15, !dbg !735
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !736
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !737
  store i32 %rem61, i32* %high63, align 4, !dbg !738
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !739
  store i32 0, i32* %low65, align 8, !dbg !740
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !741
  %16 = load i64, i64* %all66, align 8, !dbg !741
  store i64 %16, i64* %rem, align 8, !dbg !742
  br label %if.end67, !dbg !743

if.end67:                                         ; preds = %if.then54, %if.then56
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !744
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !745
  %17 = load i32, i32* %high69, align 4, !dbg !745
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !746
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !747
  %18 = load i32, i32* %high71, align 4, !dbg !747
  %div72 = udiv i32 %17, %18, !dbg !748
  %conv73 = zext i32 %div72 to i64, !dbg !749
  br label %return, !dbg !750

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !751
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !752
  %19 = load i32, i32* %high76, align 4, !dbg !752
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !753
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !754
  %20 = load i32, i32* %high78, align 4, !dbg !754
  %sub = add i32 %20, -1, !dbg !755
  %and = and i32 %19, %sub, !dbg !756
  %cmp79 = icmp eq i32 %and, 0, !dbg !757
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !758

if.then81:                                        ; preds = %if.end74
  %tobool82 = icmp eq i64* %rem, null, !dbg !759
  br i1 %tobool82, label %if.end97, label %if.then83, !dbg !759

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !760
  %21 = load i32, i32* %low85, align 8, !dbg !760
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !761
  store i32 %21, i32* %low87, align 8, !dbg !762
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !763
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !764
  %22 = load i32, i32* %high89, align 4, !dbg !764
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !765
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !766
  %23 = load i32, i32* %high91, align 4, !dbg !766
  %sub92 = add i32 %23, -1, !dbg !767
  %and93 = and i32 %22, %sub92, !dbg !768
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !769
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !770
  store i32 %and93, i32* %high95, align 4, !dbg !771
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !772
  %24 = load i64, i64* %all96, align 8, !dbg !772
  store i64 %24, i64* %rem, align 8, !dbg !773
  br label %if.end97, !dbg !774

if.end97:                                         ; preds = %if.then81, %if.then83
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !775
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !776
  %25 = load i32, i32* %high99, align 4, !dbg !776
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !777
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !778
  %26 = load i32, i32* %high101, align 4, !dbg !778
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !779, !range !239
  %shr = lshr i32 %25, %27, !dbg !780
  %conv102 = zext i32 %shr to i64, !dbg !781
  br label %return, !dbg !782

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !783
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !784
  %28 = load i32, i32* %high105, align 4, !dbg !784
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !785, !range !239
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !786
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !787
  %30 = load i32, i32* %high107, align 4, !dbg !787
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !788, !range !239
  %sub108 = sub nsw i32 %29, %31, !dbg !789
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !790
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !791

if.then111:                                       ; preds = %if.end103
  %tobool112 = icmp eq i64* %rem, null, !dbg !792
  br i1 %tobool112, label %if.end115, label %if.then113, !dbg !792

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !793
  %32 = load i64, i64* %all114, align 8, !dbg !793
  store i64 %32, i64* %rem, align 8, !dbg !794
  br label %if.end115, !dbg !795

if.end115:                                        ; preds = %if.then111, %if.then113
  br label %return, !dbg !796

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !797
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !798
  store i32 0, i32* %low118, align 8, !dbg !799
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !800
  %33 = load i32, i32* %low120, align 8, !dbg !800
  %sub121 = sub nsw i32 31, %sub108, !dbg !801
  %shl = shl i32 %33, %sub121, !dbg !802
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !803
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !804
  store i32 %shl, i32* %high123, align 4, !dbg !805
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !806
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !807
  %34 = load i32, i32* %high125, align 4, !dbg !807
  %shr126 = lshr i32 %34, %inc, !dbg !808
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !809
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !810
  store i32 %shr126, i32* %high128, align 4, !dbg !811
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !812
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !813
  %35 = load i32, i32* %high130, align 4, !dbg !813
  %sub131 = sub nsw i32 31, %sub108, !dbg !814
  %shl132 = shl i32 %35, %sub131, !dbg !815
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !816
  %36 = load i32, i32* %low134, align 8, !dbg !816
  %shr135 = lshr i32 %36, %inc, !dbg !817
  %or = or i32 %shl132, %shr135, !dbg !818
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !819
  store i32 %or, i32* %low137, align 8, !dbg !820
  br label %if.end317, !dbg !821

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !822
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !823
  %37 = load i32, i32* %high139, align 4, !dbg !823
  %cmp140 = icmp eq i32 %37, 0, !dbg !824
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !825

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !826
  %38 = load i32, i32* %low144, align 8, !dbg !826
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !827, !range !239
  %cmp149 = icmp ult i32 %39, 2, !dbg !827
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !828

if.then151:                                       ; preds = %if.then142
  %tobool152 = icmp eq i64* %rem, null, !dbg !829
  br i1 %tobool152, label %if.end161, label %if.then153, !dbg !829

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !830
  %40 = load i32, i32* %low155, align 8, !dbg !830
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !831
  %41 = load i32, i32* %low157, align 8, !dbg !831
  %sub158 = add i32 %41, -1, !dbg !832
  %and159 = and i32 %40, %sub158, !dbg !833
  %conv160 = zext i32 %and159 to i64, !dbg !834
  store i64 %conv160, i64* %rem, align 8, !dbg !835
  br label %if.end161, !dbg !836

if.end161:                                        ; preds = %if.then151, %if.then153
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !837
  %42 = load i32, i32* %low163, align 8, !dbg !837
  %cmp164 = icmp eq i32 %42, 1, !dbg !838
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !839

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !840
  %43 = load i64, i64* %all167, align 8, !dbg !840
  br label %return, !dbg !841

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !842
  %44 = load i32, i32* %low170, align 8, !dbg !842
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !843, !range !239
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !844
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !845
  %46 = load i32, i32* %high172, align 4, !dbg !845
  %shr173 = lshr i32 %46, %45, !dbg !846
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !847
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !848
  store i32 %shr173, i32* %high175, align 4, !dbg !849
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !850
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !851
  %47 = load i32, i32* %high177, align 4, !dbg !851
  %sub178 = sub nuw nsw i32 32, %45, !dbg !852
  %shl179 = shl i32 %47, %sub178, !dbg !853
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !854
  %48 = load i32, i32* %low181, align 8, !dbg !854
  %shr182 = lshr i32 %48, %45, !dbg !855
  %or183 = or i32 %shl179, %shr182, !dbg !856
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !857
  store i32 %or183, i32* %low185, align 8, !dbg !858
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !859
  %49 = load i64, i64* %all186, align 8, !dbg !859
  br label %return, !dbg !860

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !861
  %50 = load i32, i32* %low189, align 8, !dbg !861
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !862, !range !239
  %add = add nuw nsw i32 %51, 33, !dbg !863
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !864
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !865
  %52 = load i32, i32* %high191, align 4, !dbg !865
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !866, !range !239
  %sub192 = sub nuw nsw i32 %add, %53, !dbg !867
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !868
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !869

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !870
  store i32 0, i32* %low197, align 8, !dbg !871
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !872
  %54 = load i32, i32* %low199, align 8, !dbg !872
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !873
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !874
  store i32 %54, i32* %high201, align 4, !dbg !875
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !876
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !877
  store i32 0, i32* %high203, align 4, !dbg !878
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !879
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !880
  %55 = load i32, i32* %high205, align 4, !dbg !880
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !881
  store i32 %55, i32* %low207, align 8, !dbg !882
  br label %if.end262, !dbg !883

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !884
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !885

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !886
  store i32 0, i32* %low213, align 8, !dbg !887
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !888
  %56 = load i32, i32* %low215, align 8, !dbg !888
  %sub216 = sub nsw i32 32, %sub192, !dbg !889
  %shl217 = shl i32 %56, %sub216, !dbg !890
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !891
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !892
  store i32 %shl217, i32* %high219, align 4, !dbg !893
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !894
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !895
  %57 = load i32, i32* %high221, align 4, !dbg !895
  %shr222 = lshr i32 %57, %sub192, !dbg !896
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !897
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !898
  store i32 %shr222, i32* %high224, align 4, !dbg !899
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !900
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !901
  %58 = load i32, i32* %high226, align 4, !dbg !901
  %sub227 = sub nsw i32 32, %sub192, !dbg !902
  %shl228 = shl i32 %58, %sub227, !dbg !903
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !904
  %59 = load i32, i32* %low230, align 8, !dbg !904
  %shr231 = lshr i32 %59, %sub192, !dbg !905
  %or232 = or i32 %shl228, %shr231, !dbg !906
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !907
  store i32 %or232, i32* %low234, align 8, !dbg !908
  br label %if.end261, !dbg !909

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !910
  %60 = load i32, i32* %low237, align 8, !dbg !910
  %sub238 = sub nsw i32 64, %sub192, !dbg !911
  %shl239 = shl i32 %60, %sub238, !dbg !912
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !913
  store i32 %shl239, i32* %low241, align 8, !dbg !914
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !915
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !916
  %61 = load i32, i32* %high243, align 4, !dbg !916
  %sub244 = sub nsw i32 64, %sub192, !dbg !917
  %shl245 = shl i32 %61, %sub244, !dbg !918
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !919
  %62 = load i32, i32* %low247, align 8, !dbg !919
  %sub248 = add nsw i32 %sub192, -32, !dbg !920
  %shr249 = lshr i32 %62, %sub248, !dbg !921
  %or250 = or i32 %shl245, %shr249, !dbg !922
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !923
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !924
  store i32 %or250, i32* %high252, align 4, !dbg !925
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !926
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !927
  store i32 0, i32* %high254, align 4, !dbg !928
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !929
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !930
  %63 = load i32, i32* %high256, align 4, !dbg !930
  %sub257 = add nsw i32 %sub192, -32, !dbg !931
  %shr258 = lshr i32 %63, %sub257, !dbg !932
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !933
  store i32 %shr258, i32* %low260, align 8, !dbg !934
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !935

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !936
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !937
  %64 = load i32, i32* %high265, align 4, !dbg !937
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !938, !range !239
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !939
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !940
  %66 = load i32, i32* %high267, align 4, !dbg !940
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !941, !range !239
  %sub268 = sub nsw i32 %65, %67, !dbg !942
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !943
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !944

if.then271:                                       ; preds = %if.else263
  %tobool272 = icmp eq i64* %rem, null, !dbg !945
  br i1 %tobool272, label %if.end275, label %if.then273, !dbg !945

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !946
  %68 = load i64, i64* %all274, align 8, !dbg !946
  store i64 %68, i64* %rem, align 8, !dbg !947
  br label %if.end275, !dbg !948

if.end275:                                        ; preds = %if.then271, %if.then273
  br label %return, !dbg !949

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !950
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !951
  store i32 0, i32* %low279, align 8, !dbg !952
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !953
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !954

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !955
  %69 = load i32, i32* %low284, align 8, !dbg !955
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !956
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !957
  store i32 %69, i32* %high286, align 4, !dbg !958
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !959
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !960
  store i32 0, i32* %high288, align 4, !dbg !961
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !962
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !963
  %70 = load i32, i32* %high290, align 4, !dbg !963
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !964
  store i32 %70, i32* %low292, align 8, !dbg !965
  br label %if.end315, !dbg !966

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !967
  %71 = load i32, i32* %low295, align 8, !dbg !967
  %sub296 = sub nsw i32 31, %sub268, !dbg !968
  %shl297 = shl i32 %71, %sub296, !dbg !969
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !970
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !971
  store i32 %shl297, i32* %high299, align 4, !dbg !972
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !973
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !974
  %72 = load i32, i32* %high301, align 4, !dbg !974
  %shr302 = lshr i32 %72, %inc277, !dbg !975
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !976
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !977
  store i32 %shr302, i32* %high304, align 4, !dbg !978
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !979
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !980
  %73 = load i32, i32* %high306, align 4, !dbg !980
  %sub307 = sub nsw i32 31, %sub268, !dbg !981
  %shl308 = shl i32 %73, %sub307, !dbg !982
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !983
  %74 = load i32, i32* %low310, align 8, !dbg !983
  %shr311 = lshr i32 %74, %inc277, !dbg !984
  %or312 = or i32 %shl308, %shr311, !dbg !985
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !986
  store i32 %or312, i32* %low314, align 8, !dbg !987
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !988
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !988
  br label %for.cond, !dbg !989

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !988
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !988
  %cmp318 = icmp eq i32 %sr.2, 0, !dbg !990
  br i1 %cmp318, label %for.end, label %for.body, !dbg !989

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !991
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !992
  %75 = load i32, i32* %high321, align 4, !dbg !992
  %shl322 = shl i32 %75, 1, !dbg !993
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !994
  %76 = load i32, i32* %low324, align 8, !dbg !994
  %shr325 = lshr i32 %76, 31, !dbg !995
  %or326 = or i32 %shl322, %shr325, !dbg !996
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !997
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !998
  store i32 %or326, i32* %high328, align 4, !dbg !999
  %low330 = bitcast %union.dwords* %r to i32*, !dbg !1000
  %77 = load i32, i32* %low330, align 8, !dbg !1000
  %shl331 = shl i32 %77, 1, !dbg !1001
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1002
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1003
  %78 = load i32, i32* %high333, align 4, !dbg !1003
  %shr334 = lshr i32 %78, 31, !dbg !1004
  %or335 = or i32 %shl331, %shr334, !dbg !1005
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1006
  store i32 %or335, i32* %low337, align 8, !dbg !1007
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1008
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1009
  %79 = load i32, i32* %high339, align 4, !dbg !1009
  %shl340 = shl i32 %79, 1, !dbg !1010
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1011
  %80 = load i32, i32* %low342, align 8, !dbg !1011
  %shr343 = lshr i32 %80, 31, !dbg !1012
  %or344 = or i32 %shl340, %shr343, !dbg !1013
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1014
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1015
  store i32 %or344, i32* %high346, align 4, !dbg !1016
  %low348 = bitcast %union.dwords* %q to i32*, !dbg !1017
  %81 = load i32, i32* %low348, align 8, !dbg !1017
  %shl349 = shl i32 %81, 1, !dbg !1018
  %or350 = or i32 %shl349, %carry.0, !dbg !1019
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1020
  store i32 %or350, i32* %low352, align 8, !dbg !1021
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1022
  %82 = load i64, i64* %all354, align 8, !dbg !1022
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1023
  %83 = load i64, i64* %all355, align 8, !dbg !1023
  %84 = xor i64 %83, -1, !dbg !1024
  %sub357 = add i64 %82, %84, !dbg !1024
  %shr358 = ashr i64 %sub357, 63, !dbg !1025
  %all361 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1026
  %85 = load i64, i64* %all361, align 8, !dbg !1026
  %and362 = and i64 %85, %shr358, !dbg !1027
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1028
  %86 = load i64, i64* %all363, align 8, !dbg !1029
  %sub364 = sub i64 %86, %and362, !dbg !1029
  store i64 %sub364, i64* %all363, align 8, !dbg !1029
  br label %for.inc, !dbg !1030

for.inc:                                          ; preds = %for.body
  %87 = trunc i64 %shr358 to i32, !dbg !1031
  %conv360 = and i32 %87, 1, !dbg !1031
  %dec = add i32 %sr.2, -1, !dbg !1032
  br label %for.cond, !dbg !989, !llvm.loop !1033

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1034
  %88 = load i64, i64* %all365, align 8, !dbg !1034
  %shl366 = shl i64 %88, 1, !dbg !1035
  %conv367 = zext i32 %carry.0 to i64, !dbg !1036
  %or368 = or i64 %shl366, %conv367, !dbg !1037
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1038
  store i64 %or368, i64* %all369, align 8, !dbg !1039
  %tobool370 = icmp eq i64* %rem, null, !dbg !1040
  br i1 %tobool370, label %if.end373, label %if.then371, !dbg !1040

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1041
  %89 = load i64, i64* %all372, align 8, !dbg !1041
  store i64 %89, i64* %rem, align 8, !dbg !1042
  br label %if.end373, !dbg !1043

if.end373:                                        ; preds = %for.end, %if.then371
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1044
  %90 = load i64, i64* %all374, align 8, !dbg !1044
  br label %return, !dbg !1045

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %90, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !988
  ret i64 %retval.0, !dbg !1046
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 %a, i32 %b, i32* %rem) #0 !dbg !1047 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 %a, i32 %b) #4, !dbg !1048
  %mul = mul i32 %call, %b, !dbg !1049
  %sub = sub i32 %a, %mul, !dbg !1050
  store i32 %sub, i32* %rem, align 4, !dbg !1051
  ret i32 %call, !dbg !1052
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 %n, i32 %d) #0 !dbg !1053 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1054
  br i1 %cmp, label %if.then, label %if.end, !dbg !1055

if.then:                                          ; preds = %entry
  br label %return, !dbg !1056

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1057
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1058

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1059

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 false), !dbg !1060, !range !239
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 false), !dbg !1061, !range !239
  %sub = sub nsw i32 %0, %1, !dbg !1062
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1063
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1064

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1065

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1066
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1067

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1068

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1069
  %sub10 = sub nsw i32 31, %sub, !dbg !1070
  %shl = shl i32 %n, %sub10, !dbg !1071
  %shr = lshr i32 %n, %inc, !dbg !1072
  br label %for.cond, !dbg !1073

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1074
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1074
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1074
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1074
  %cmp11 = icmp eq i32 %sr.0, 0, !dbg !1075
  br i1 %cmp11, label %for.end, label %for.body, !dbg !1073

for.body:                                         ; preds = %for.cond
  %shl12 = shl i32 %r.0, 1, !dbg !1076
  %shr13 = lshr i32 %q.0, 31, !dbg !1077
  %or = or i32 %shl12, %shr13, !dbg !1078
  %2 = xor i32 %or, -1, !dbg !1079
  %sub17 = add i32 %2, %d, !dbg !1079
  %shr18 = ashr i32 %sub17, 31, !dbg !1080
  br label %for.inc, !dbg !1081

for.inc:                                          ; preds = %for.body
  %and19 = and i32 %shr18, %d, !dbg !1082
  %sub20 = sub i32 %or, %and19, !dbg !1083
  %and = and i32 %shr18, 1, !dbg !1084
  %shl14 = shl i32 %q.0, 1, !dbg !1085
  %or15 = or i32 %shl14, %carry.0, !dbg !1086
  %dec = add i32 %sr.0, -1, !dbg !1087
  br label %for.cond, !dbg !1073, !llvm.loop !1088

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1089
  %or22 = or i32 %shl21, %carry.0, !dbg !1090
  br label %return, !dbg !1091

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1074
  ret i32 %retval.0, !dbg !1092
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 %a, i64 %b) #0 !dbg !1093 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 %a, i64 %b, i64* nonnull %r) #4, !dbg !1094
  %0 = load i64, i64* %r, align 8, !dbg !1095
  ret i64 %0, !dbg !1096
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 %a, i32 %b) #0 !dbg !1097 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 %a, i32 %b) #4, !dbg !1098
  %mul = mul i32 %call, %b, !dbg !1099
  %sub = sub i32 %a, %mul, !dbg !1100
  ret i32 %sub, !dbg !1101
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin noreturn }
attributes #4 = { nobuiltin }

!llvm.dbg.cu = !{!0, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.ident = !{!111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111, !111}
!llvm.module.flags = !{!112, !113, !114, !115}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "../libraries/builtinsint/absvdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!4 = !DIFile(filename: "../libraries/builtinsint/absvsi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!6 = !DIFile(filename: "../libraries/builtinsint/absvti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!8 = !DIFile(filename: "../libraries/builtinsint/addvdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!10 = !DIFile(filename: "../libraries/builtinsint/addvsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!12 = !DIFile(filename: "../libraries/builtinsint/addvti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!14 = !DIFile(filename: "../libraries/builtinsint/ashldi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!16 = !DIFile(filename: "../libraries/builtinsint/ashlti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!18 = !DIFile(filename: "../libraries/builtinsint/ashrdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!20 = !DIFile(filename: "../libraries/builtinsint/ashrti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!22 = !DIFile(filename: "../libraries/builtinsint/clzdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!24 = !DIFile(filename: "../libraries/builtinsint/clzsi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!26 = !DIFile(filename: "../libraries/builtinsint/clzti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!28 = !DIFile(filename: "../libraries/builtinsint/cmpdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!30 = !DIFile(filename: "../libraries/builtinsint/cmpti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!32 = !DIFile(filename: "../libraries/builtinsint/ctzdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!34 = !DIFile(filename: "../libraries/builtinsint/ctzsi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!36 = !DIFile(filename: "../libraries/builtinsint/ctzti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!38 = !DIFile(filename: "../libraries/builtinsint/divdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!40 = !DIFile(filename: "../libraries/builtinsint/divmoddi4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!42 = !DIFile(filename: "../libraries/builtinsint/divmodsi4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!44 = !DIFile(filename: "../libraries/builtinsint/divsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!46 = !DIFile(filename: "../libraries/builtinsint/divti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!48 = !DIFile(filename: "../libraries/builtinsint/ffsdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!50 = !DIFile(filename: "../libraries/builtinsint/ffssi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!52 = !DIFile(filename: "../libraries/builtinsint/ffsti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!54 = !DIFile(filename: "../libraries/builtinsint/int_util.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!56 = !DIFile(filename: "../libraries/builtinsint/lshrdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!58 = !DIFile(filename: "../libraries/builtinsint/lshrti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!60 = !DIFile(filename: "../libraries/builtinsint/moddi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!62 = !DIFile(filename: "../libraries/builtinsint/modsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!64 = !DIFile(filename: "../libraries/builtinsint/modti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!66 = !DIFile(filename: "../libraries/builtinsint/mulvdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!68 = !DIFile(filename: "../libraries/builtinsint/mulvsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!70 = !DIFile(filename: "../libraries/builtinsint/mulvti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!72 = !DIFile(filename: "../libraries/builtinsint/paritydi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!74 = !DIFile(filename: "../libraries/builtinsint/paritysi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!76 = !DIFile(filename: "../libraries/builtinsint/parityti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!78 = !DIFile(filename: "../libraries/builtinsint/popcountdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!80 = !DIFile(filename: "../libraries/builtinsint/popcountsi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!82 = !DIFile(filename: "../libraries/builtinsint/popcountti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!84 = !DIFile(filename: "../libraries/builtinsint/subvdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!86 = !DIFile(filename: "../libraries/builtinsint/subvsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!88 = !DIFile(filename: "../libraries/builtinsint/subvti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!90 = !DIFile(filename: "../libraries/builtinsint/ucmpdi2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!92 = !DIFile(filename: "../libraries/builtinsint/ucmpti2.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!94 = !DIFile(filename: "../libraries/builtinsint/udivdi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!96 = !DIFile(filename: "../libraries/builtinsint/udivmoddi4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!98 = !DIFile(filename: "../libraries/builtinsint/udivmodsi4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!100 = !DIFile(filename: "../libraries/builtinsint/udivmodti4.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!102 = !DIFile(filename: "../libraries/builtinsint/udivsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!104 = !DIFile(filename: "../libraries/builtinsint/udivti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!106 = !DIFile(filename: "../libraries/builtinsint/umoddi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!108 = !DIFile(filename: "../libraries/builtinsint/umodsi3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!110 = !DIFile(filename: "../libraries/builtinsint/umodti3.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.bqnB3Gwtcf")
!111 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
!112 = !{i32 2, !"Dwarf Version", i32 4}
!113 = !{i32 2, !"Debug Info Version", i32 3}
!114 = !{i32 1, !"wchar_size", i32 4}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = distinct !DISubprogram(name: "__absvdi2", scope: !1, file: !1, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!117 = !DISubroutineType(types: !2)
!118 = !DILocation(line: 25, column: 11, scope: !116)
!119 = !DILocation(line: 25, column: 9, scope: !116)
!120 = !DILocation(line: 26, column: 9, scope: !116)
!121 = !DILocation(line: 28, column: 20, scope: !116)
!122 = !DILocation(line: 28, column: 5, scope: !116)
!123 = distinct !DISubprogram(name: "__absvsi2", scope: !4, file: !4, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!124 = !DILocation(line: 25, column: 11, scope: !123)
!125 = !DILocation(line: 25, column: 9, scope: !123)
!126 = !DILocation(line: 26, column: 9, scope: !123)
!127 = !DILocation(line: 28, column: 20, scope: !123)
!128 = !DILocation(line: 28, column: 5, scope: !123)
!129 = distinct !DISubprogram(name: "__addvdi3", scope: !8, file: !8, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!130 = !DILocation(line: 24, column: 27, scope: !129)
!131 = !DILocation(line: 25, column: 11, scope: !129)
!132 = !DILocation(line: 25, column: 9, scope: !129)
!133 = !DILocation(line: 27, column: 15, scope: !129)
!134 = !DILocation(line: 27, column: 13, scope: !129)
!135 = !DILocation(line: 28, column: 13, scope: !129)
!136 = !DILocation(line: 29, column: 5, scope: !129)
!137 = !DILocation(line: 32, column: 15, scope: !129)
!138 = !DILocation(line: 32, column: 13, scope: !129)
!139 = !DILocation(line: 33, column: 13, scope: !129)
!140 = !DILocation(line: 35, column: 5, scope: !129)
!141 = distinct !DISubprogram(name: "__addvsi3", scope: !10, file: !10, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !2)
!142 = !DILocation(line: 24, column: 27, scope: !141)
!143 = !DILocation(line: 25, column: 11, scope: !141)
!144 = !DILocation(line: 25, column: 9, scope: !141)
!145 = !DILocation(line: 27, column: 15, scope: !141)
!146 = !DILocation(line: 27, column: 13, scope: !141)
!147 = !DILocation(line: 28, column: 13, scope: !141)
!148 = !DILocation(line: 29, column: 5, scope: !141)
!149 = !DILocation(line: 32, column: 15, scope: !141)
!150 = !DILocation(line: 32, column: 13, scope: !141)
!151 = !DILocation(line: 33, column: 13, scope: !141)
!152 = !DILocation(line: 35, column: 5, scope: !141)
!153 = distinct !DISubprogram(name: "__ashldi3", scope: !14, file: !14, line: 24, type: !117, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!154 = !DILocation(line: 29, column: 11, scope: !153)
!155 = !DILocation(line: 29, column: 15, scope: !153)
!156 = !DILocation(line: 30, column: 11, scope: !153)
!157 = !DILocation(line: 30, column: 9, scope: !153)
!158 = !DILocation(line: 32, column: 18, scope: !153)
!159 = !DILocation(line: 32, column: 22, scope: !153)
!160 = !DILocation(line: 33, column: 33, scope: !153)
!161 = !DILocation(line: 33, column: 43, scope: !153)
!162 = !DILocation(line: 33, column: 37, scope: !153)
!163 = !DILocation(line: 33, column: 16, scope: !153)
!164 = !DILocation(line: 33, column: 18, scope: !153)
!165 = !DILocation(line: 33, column: 23, scope: !153)
!166 = !DILocation(line: 34, column: 5, scope: !153)
!167 = !DILocation(line: 37, column: 15, scope: !153)
!168 = !DILocation(line: 37, column: 13, scope: !153)
!169 = !DILocation(line: 38, column: 13, scope: !153)
!170 = !DILocation(line: 39, column: 33, scope: !153)
!171 = !DILocation(line: 39, column: 37, scope: !153)
!172 = !DILocation(line: 39, column: 18, scope: !153)
!173 = !DILocation(line: 39, column: 23, scope: !153)
!174 = !DILocation(line: 40, column: 32, scope: !153)
!175 = !DILocation(line: 40, column: 34, scope: !153)
!176 = !DILocation(line: 40, column: 39, scope: !153)
!177 = !DILocation(line: 40, column: 56, scope: !153)
!178 = !DILocation(line: 40, column: 77, scope: !153)
!179 = !DILocation(line: 40, column: 60, scope: !153)
!180 = !DILocation(line: 40, column: 45, scope: !153)
!181 = !DILocation(line: 40, column: 16, scope: !153)
!182 = !DILocation(line: 40, column: 18, scope: !153)
!183 = !DILocation(line: 40, column: 23, scope: !153)
!184 = !DILocation(line: 42, column: 19, scope: !153)
!185 = !DILocation(line: 42, column: 5, scope: !153)
!186 = !DILocation(line: 0, scope: !153)
!187 = !DILocation(line: 43, column: 1, scope: !153)
!188 = distinct !DISubprogram(name: "__ashrdi3", scope: !18, file: !18, line: 24, type: !117, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!189 = !DILocation(line: 29, column: 11, scope: !188)
!190 = !DILocation(line: 29, column: 15, scope: !188)
!191 = !DILocation(line: 30, column: 11, scope: !188)
!192 = !DILocation(line: 30, column: 9, scope: !188)
!193 = !DILocation(line: 33, column: 31, scope: !188)
!194 = !DILocation(line: 33, column: 33, scope: !188)
!195 = !DILocation(line: 33, column: 38, scope: !188)
!196 = !DILocation(line: 33, column: 16, scope: !188)
!197 = !DILocation(line: 33, column: 18, scope: !188)
!198 = !DILocation(line: 33, column: 23, scope: !188)
!199 = !DILocation(line: 34, column: 30, scope: !188)
!200 = !DILocation(line: 34, column: 32, scope: !188)
!201 = !DILocation(line: 34, column: 43, scope: !188)
!202 = !DILocation(line: 34, column: 37, scope: !188)
!203 = !DILocation(line: 34, column: 18, scope: !188)
!204 = !DILocation(line: 34, column: 22, scope: !188)
!205 = !DILocation(line: 35, column: 5, scope: !188)
!206 = !DILocation(line: 38, column: 15, scope: !188)
!207 = !DILocation(line: 38, column: 13, scope: !188)
!208 = !DILocation(line: 39, column: 13, scope: !188)
!209 = !DILocation(line: 40, column: 32, scope: !188)
!210 = !DILocation(line: 40, column: 34, scope: !188)
!211 = !DILocation(line: 40, column: 39, scope: !188)
!212 = !DILocation(line: 40, column: 16, scope: !188)
!213 = !DILocation(line: 40, column: 18, scope: !188)
!214 = !DILocation(line: 40, column: 24, scope: !188)
!215 = !DILocation(line: 41, column: 31, scope: !188)
!216 = !DILocation(line: 41, column: 33, scope: !188)
!217 = !DILocation(line: 41, column: 55, scope: !188)
!218 = !DILocation(line: 41, column: 38, scope: !188)
!219 = !DILocation(line: 41, column: 72, scope: !188)
!220 = !DILocation(line: 41, column: 76, scope: !188)
!221 = !DILocation(line: 41, column: 61, scope: !188)
!222 = !DILocation(line: 41, column: 18, scope: !188)
!223 = !DILocation(line: 41, column: 22, scope: !188)
!224 = !DILocation(line: 43, column: 19, scope: !188)
!225 = !DILocation(line: 43, column: 5, scope: !188)
!226 = !DILocation(line: 0, scope: !188)
!227 = !DILocation(line: 44, column: 1, scope: !188)
!228 = distinct !DISubprogram(name: "__clzdi2", scope: !22, file: !22, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !2)
!229 = !DILocation(line: 25, column: 7, scope: !228)
!230 = !DILocation(line: 25, column: 11, scope: !228)
!231 = !DILocation(line: 26, column: 26, scope: !228)
!232 = !DILocation(line: 26, column: 28, scope: !228)
!233 = !DILocation(line: 26, column: 33, scope: !228)
!234 = !DILocation(line: 27, column: 29, scope: !228)
!235 = !DILocation(line: 27, column: 31, scope: !228)
!236 = !DILocation(line: 27, column: 49, scope: !228)
!237 = !DILocation(line: 27, column: 42, scope: !228)
!238 = !DILocation(line: 27, column: 12, scope: !228)
!239 = !{i32 0, i32 33}
!240 = !DILocation(line: 28, column: 15, scope: !228)
!241 = !DILocation(line: 27, column: 59, scope: !228)
!242 = !DILocation(line: 27, column: 5, scope: !228)
!243 = distinct !DISubprogram(name: "__clzsi2", scope: !24, file: !24, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !2)
!244 = !DILocation(line: 25, column: 34, scope: !243)
!245 = !DILocation(line: 25, column: 40, scope: !243)
!246 = !DILocation(line: 26, column: 14, scope: !243)
!247 = !DILocation(line: 26, column: 7, scope: !243)
!248 = !DILocation(line: 29, column: 13, scope: !243)
!249 = !DILocation(line: 29, column: 23, scope: !243)
!250 = !DILocation(line: 29, column: 29, scope: !243)
!251 = !DILocation(line: 30, column: 13, scope: !243)
!252 = !DILocation(line: 30, column: 7, scope: !243)
!253 = !DILocation(line: 31, column: 7, scope: !243)
!254 = !DILocation(line: 33, column: 13, scope: !243)
!255 = !DILocation(line: 33, column: 21, scope: !243)
!256 = !DILocation(line: 33, column: 27, scope: !243)
!257 = !DILocation(line: 34, column: 13, scope: !243)
!258 = !DILocation(line: 34, column: 7, scope: !243)
!259 = !DILocation(line: 35, column: 7, scope: !243)
!260 = !DILocation(line: 37, column: 13, scope: !243)
!261 = !DILocation(line: 37, column: 20, scope: !243)
!262 = !DILocation(line: 37, column: 26, scope: !243)
!263 = !DILocation(line: 38, column: 13, scope: !243)
!264 = !DILocation(line: 38, column: 7, scope: !243)
!265 = !DILocation(line: 39, column: 7, scope: !243)
!266 = !DILocation(line: 52, column: 20, scope: !243)
!267 = !DILocation(line: 52, column: 37, scope: !243)
!268 = !DILocation(line: 52, column: 27, scope: !243)
!269 = !DILocation(line: 52, column: 25, scope: !243)
!270 = !DILocation(line: 52, column: 14, scope: !243)
!271 = !DILocation(line: 52, column: 5, scope: !243)
!272 = distinct !DISubprogram(name: "__cmpdi2", scope: !28, file: !28, line: 23, type: !117, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !2)
!273 = !DILocation(line: 26, column: 7, scope: !272)
!274 = !DILocation(line: 26, column: 11, scope: !272)
!275 = !DILocation(line: 28, column: 7, scope: !272)
!276 = !DILocation(line: 28, column: 11, scope: !272)
!277 = !DILocation(line: 29, column: 11, scope: !272)
!278 = !DILocation(line: 29, column: 13, scope: !272)
!279 = !DILocation(line: 29, column: 22, scope: !272)
!280 = !DILocation(line: 29, column: 24, scope: !272)
!281 = !DILocation(line: 29, column: 18, scope: !272)
!282 = !DILocation(line: 29, column: 9, scope: !272)
!283 = !DILocation(line: 30, column: 9, scope: !272)
!284 = !DILocation(line: 31, column: 11, scope: !272)
!285 = !DILocation(line: 31, column: 13, scope: !272)
!286 = !DILocation(line: 31, column: 22, scope: !272)
!287 = !DILocation(line: 31, column: 24, scope: !272)
!288 = !DILocation(line: 31, column: 18, scope: !272)
!289 = !DILocation(line: 31, column: 9, scope: !272)
!290 = !DILocation(line: 32, column: 9, scope: !272)
!291 = !DILocation(line: 33, column: 13, scope: !272)
!292 = !DILocation(line: 33, column: 23, scope: !272)
!293 = !DILocation(line: 33, column: 17, scope: !272)
!294 = !DILocation(line: 33, column: 9, scope: !272)
!295 = !DILocation(line: 34, column: 9, scope: !272)
!296 = !DILocation(line: 35, column: 13, scope: !272)
!297 = !DILocation(line: 35, column: 23, scope: !272)
!298 = !DILocation(line: 35, column: 17, scope: !272)
!299 = !DILocation(line: 35, column: 9, scope: !272)
!300 = !DILocation(line: 36, column: 9, scope: !272)
!301 = !DILocation(line: 37, column: 5, scope: !272)
!302 = !DILocation(line: 0, scope: !272)
!303 = !DILocation(line: 38, column: 1, scope: !272)
!304 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !28, file: !28, line: 46, type: !117, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !2)
!305 = !DILocation(line: 48, column: 9, scope: !304)
!306 = !DILocation(line: 48, column: 24, scope: !304)
!307 = !DILocation(line: 48, column: 2, scope: !304)
!308 = distinct !DISubprogram(name: "__ctzdi2", scope: !32, file: !32, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !2)
!309 = !DILocation(line: 25, column: 7, scope: !308)
!310 = !DILocation(line: 25, column: 11, scope: !308)
!311 = !DILocation(line: 26, column: 28, scope: !308)
!312 = !DILocation(line: 26, column: 32, scope: !308)
!313 = !DILocation(line: 27, column: 29, scope: !308)
!314 = !DILocation(line: 27, column: 31, scope: !308)
!315 = !DILocation(line: 27, column: 41, scope: !308)
!316 = !DILocation(line: 27, column: 12, scope: !308)
!317 = !DILocation(line: 28, column: 18, scope: !308)
!318 = !DILocation(line: 27, column: 59, scope: !308)
!319 = !DILocation(line: 27, column: 5, scope: !308)
!320 = distinct !DISubprogram(name: "__ctzsi2", scope: !34, file: !34, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !2)
!321 = !DILocation(line: 25, column: 20, scope: !320)
!322 = !DILocation(line: 25, column: 34, scope: !320)
!323 = !DILocation(line: 25, column: 40, scope: !320)
!324 = !DILocation(line: 26, column: 7, scope: !320)
!325 = !DILocation(line: 29, column: 13, scope: !320)
!326 = !DILocation(line: 29, column: 23, scope: !320)
!327 = !DILocation(line: 29, column: 29, scope: !320)
!328 = !DILocation(line: 30, column: 7, scope: !320)
!329 = !DILocation(line: 31, column: 7, scope: !320)
!330 = !DILocation(line: 33, column: 13, scope: !320)
!331 = !DILocation(line: 33, column: 21, scope: !320)
!332 = !DILocation(line: 33, column: 27, scope: !320)
!333 = !DILocation(line: 34, column: 7, scope: !320)
!334 = !DILocation(line: 35, column: 7, scope: !320)
!335 = !DILocation(line: 37, column: 13, scope: !320)
!336 = !DILocation(line: 37, column: 20, scope: !320)
!337 = !DILocation(line: 37, column: 26, scope: !320)
!338 = !DILocation(line: 38, column: 7, scope: !320)
!339 = !DILocation(line: 40, column: 7, scope: !320)
!340 = !DILocation(line: 56, column: 25, scope: !320)
!341 = !DILocation(line: 56, column: 20, scope: !320)
!342 = !DILocation(line: 56, column: 39, scope: !320)
!343 = !DILocation(line: 56, column: 44, scope: !320)
!344 = !DILocation(line: 56, column: 34, scope: !320)
!345 = !DILocation(line: 56, column: 32, scope: !320)
!346 = !DILocation(line: 56, column: 14, scope: !320)
!347 = !DILocation(line: 56, column: 5, scope: !320)
!348 = distinct !DISubprogram(name: "__divdi3", scope: !38, file: !38, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !2)
!349 = !DILocation(line: 23, column: 20, scope: !348)
!350 = !DILocation(line: 24, column: 20, scope: !348)
!351 = !DILocation(line: 25, column: 12, scope: !348)
!352 = !DILocation(line: 25, column: 19, scope: !348)
!353 = !DILocation(line: 26, column: 12, scope: !348)
!354 = !DILocation(line: 26, column: 19, scope: !348)
!355 = !DILocation(line: 27, column: 9, scope: !348)
!356 = !DILocation(line: 28, column: 13, scope: !348)
!357 = !DILocation(line: 28, column: 44, scope: !348)
!358 = !DILocation(line: 28, column: 51, scope: !348)
!359 = !DILocation(line: 28, column: 5, scope: !348)
!360 = distinct !DISubprogram(name: "__divmoddi4", scope: !40, file: !40, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !2)
!361 = !DILocation(line: 22, column: 14, scope: !360)
!362 = !DILocation(line: 23, column: 16, scope: !360)
!363 = !DILocation(line: 23, column: 12, scope: !360)
!364 = !DILocation(line: 23, column: 8, scope: !360)
!365 = !DILocation(line: 24, column: 3, scope: !360)
!366 = distinct !DISubprogram(name: "__divmodsi4", scope: !42, file: !42, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !2)
!367 = !DILocation(line: 22, column: 14, scope: !366)
!368 = !DILocation(line: 23, column: 16, scope: !366)
!369 = !DILocation(line: 23, column: 12, scope: !366)
!370 = !DILocation(line: 23, column: 8, scope: !366)
!371 = !DILocation(line: 24, column: 3, scope: !366)
!372 = distinct !DISubprogram(name: "__divsi3", scope: !44, file: !44, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !2)
!373 = !DILocation(line: 25, column: 20, scope: !372)
!374 = !DILocation(line: 26, column: 20, scope: !372)
!375 = !DILocation(line: 27, column: 12, scope: !372)
!376 = !DILocation(line: 27, column: 19, scope: !372)
!377 = !DILocation(line: 28, column: 12, scope: !372)
!378 = !DILocation(line: 28, column: 19, scope: !372)
!379 = !DILocation(line: 29, column: 9, scope: !372)
!380 = !DILocation(line: 36, column: 22, scope: !372)
!381 = !DILocation(line: 36, column: 33, scope: !372)
!382 = !DILocation(line: 36, column: 40, scope: !372)
!383 = !DILocation(line: 36, column: 5, scope: !372)
!384 = distinct !DISubprogram(name: "__ffsdi2", scope: !48, file: !48, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !2)
!385 = !DILocation(line: 25, column: 7, scope: !384)
!386 = !DILocation(line: 25, column: 11, scope: !384)
!387 = !DILocation(line: 26, column: 13, scope: !384)
!388 = !DILocation(line: 26, column: 17, scope: !384)
!389 = !DILocation(line: 26, column: 9, scope: !384)
!390 = !DILocation(line: 28, column: 15, scope: !384)
!391 = !DILocation(line: 28, column: 17, scope: !384)
!392 = !DILocation(line: 28, column: 22, scope: !384)
!393 = !DILocation(line: 28, column: 13, scope: !384)
!394 = !DILocation(line: 29, column: 13, scope: !384)
!395 = !DILocation(line: 30, column: 32, scope: !384)
!396 = !DILocation(line: 30, column: 34, scope: !384)
!397 = !DILocation(line: 30, column: 16, scope: !384)
!398 = !DILocation(line: 30, column: 40, scope: !384)
!399 = !DILocation(line: 30, column: 9, scope: !384)
!400 = !DILocation(line: 32, column: 30, scope: !384)
!401 = !DILocation(line: 32, column: 12, scope: !384)
!402 = !DILocation(line: 32, column: 35, scope: !384)
!403 = !DILocation(line: 32, column: 5, scope: !384)
!404 = !DILocation(line: 0, scope: !384)
!405 = !DILocation(line: 33, column: 1, scope: !384)
!406 = distinct !DISubprogram(name: "__ffssi2", scope: !50, file: !50, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !2)
!407 = !DILocation(line: 24, column: 11, scope: !406)
!408 = !DILocation(line: 24, column: 9, scope: !406)
!409 = !DILocation(line: 26, column: 9, scope: !406)
!410 = !DILocation(line: 28, column: 12, scope: !406)
!411 = !DILocation(line: 28, column: 29, scope: !406)
!412 = !DILocation(line: 28, column: 5, scope: !406)
!413 = !DILocation(line: 0, scope: !406)
!414 = !DILocation(line: 29, column: 1, scope: !406)
!415 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !54, file: !54, line: 57, type: !117, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !2)
!416 = !DILocation(line: 59, column: 1, scope: !415)
!417 = distinct !DISubprogram(name: "__lshrdi3", scope: !56, file: !56, line: 24, type: !117, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !2)
!418 = !DILocation(line: 29, column: 11, scope: !417)
!419 = !DILocation(line: 29, column: 15, scope: !417)
!420 = !DILocation(line: 30, column: 11, scope: !417)
!421 = !DILocation(line: 30, column: 9, scope: !417)
!422 = !DILocation(line: 32, column: 16, scope: !417)
!423 = !DILocation(line: 32, column: 18, scope: !417)
!424 = !DILocation(line: 32, column: 23, scope: !417)
!425 = !DILocation(line: 33, column: 30, scope: !417)
!426 = !DILocation(line: 33, column: 32, scope: !417)
!427 = !DILocation(line: 33, column: 43, scope: !417)
!428 = !DILocation(line: 33, column: 37, scope: !417)
!429 = !DILocation(line: 33, column: 18, scope: !417)
!430 = !DILocation(line: 33, column: 22, scope: !417)
!431 = !DILocation(line: 34, column: 5, scope: !417)
!432 = !DILocation(line: 37, column: 15, scope: !417)
!433 = !DILocation(line: 37, column: 13, scope: !417)
!434 = !DILocation(line: 38, column: 13, scope: !417)
!435 = !DILocation(line: 39, column: 32, scope: !417)
!436 = !DILocation(line: 39, column: 34, scope: !417)
!437 = !DILocation(line: 39, column: 39, scope: !417)
!438 = !DILocation(line: 39, column: 16, scope: !417)
!439 = !DILocation(line: 39, column: 18, scope: !417)
!440 = !DILocation(line: 39, column: 24, scope: !417)
!441 = !DILocation(line: 40, column: 31, scope: !417)
!442 = !DILocation(line: 40, column: 33, scope: !417)
!443 = !DILocation(line: 40, column: 55, scope: !417)
!444 = !DILocation(line: 40, column: 38, scope: !417)
!445 = !DILocation(line: 40, column: 72, scope: !417)
!446 = !DILocation(line: 40, column: 76, scope: !417)
!447 = !DILocation(line: 40, column: 61, scope: !417)
!448 = !DILocation(line: 40, column: 18, scope: !417)
!449 = !DILocation(line: 40, column: 22, scope: !417)
!450 = !DILocation(line: 42, column: 19, scope: !417)
!451 = !DILocation(line: 42, column: 5, scope: !417)
!452 = !DILocation(line: 0, scope: !417)
!453 = !DILocation(line: 43, column: 1, scope: !417)
!454 = distinct !DISubprogram(name: "__moddi3", scope: !60, file: !60, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !2)
!455 = !DILocation(line: 24, column: 17, scope: !454)
!456 = !DILocation(line: 25, column: 11, scope: !454)
!457 = !DILocation(line: 26, column: 12, scope: !454)
!458 = !DILocation(line: 26, column: 17, scope: !454)
!459 = !DILocation(line: 28, column: 5, scope: !454)
!460 = !DILocation(line: 29, column: 21, scope: !454)
!461 = !DILocation(line: 29, column: 23, scope: !454)
!462 = !DILocation(line: 29, column: 28, scope: !454)
!463 = !DILocation(line: 29, column: 5, scope: !454)
!464 = distinct !DISubprogram(name: "__modsi3", scope: !62, file: !62, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !2)
!465 = !DILocation(line: 22, column: 16, scope: !464)
!466 = !DILocation(line: 22, column: 31, scope: !464)
!467 = !DILocation(line: 22, column: 14, scope: !464)
!468 = !DILocation(line: 22, column: 5, scope: !464)
!469 = distinct !DISubprogram(name: "__mulvdi3", scope: !66, file: !66, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !2)
!470 = !DILocation(line: 27, column: 11, scope: !469)
!471 = !DILocation(line: 27, column: 9, scope: !469)
!472 = !DILocation(line: 29, column: 15, scope: !469)
!473 = !DILocation(line: 29, column: 20, scope: !469)
!474 = !DILocation(line: 29, column: 25, scope: !469)
!475 = !DILocation(line: 29, column: 13, scope: !469)
!476 = !DILocation(line: 30, column: 13, scope: !469)
!477 = !DILocation(line: 31, column: 9, scope: !469)
!478 = !DILocation(line: 33, column: 11, scope: !469)
!479 = !DILocation(line: 33, column: 9, scope: !469)
!480 = !DILocation(line: 35, column: 15, scope: !469)
!481 = !DILocation(line: 35, column: 20, scope: !469)
!482 = !DILocation(line: 35, column: 25, scope: !469)
!483 = !DILocation(line: 35, column: 13, scope: !469)
!484 = !DILocation(line: 36, column: 13, scope: !469)
!485 = !DILocation(line: 37, column: 9, scope: !469)
!486 = !DILocation(line: 39, column: 19, scope: !469)
!487 = !DILocation(line: 40, column: 23, scope: !469)
!488 = !DILocation(line: 40, column: 29, scope: !469)
!489 = !DILocation(line: 41, column: 19, scope: !469)
!490 = !DILocation(line: 42, column: 23, scope: !469)
!491 = !DILocation(line: 42, column: 29, scope: !469)
!492 = !DILocation(line: 43, column: 15, scope: !469)
!493 = !DILocation(line: 43, column: 19, scope: !469)
!494 = !DILocation(line: 43, column: 28, scope: !469)
!495 = !DILocation(line: 43, column: 9, scope: !469)
!496 = !DILocation(line: 44, column: 9, scope: !469)
!497 = !DILocation(line: 45, column: 12, scope: !469)
!498 = !DILocation(line: 45, column: 9, scope: !469)
!499 = !DILocation(line: 47, column: 25, scope: !469)
!500 = !DILocation(line: 47, column: 19, scope: !469)
!501 = !DILocation(line: 47, column: 13, scope: !469)
!502 = !DILocation(line: 48, column: 13, scope: !469)
!503 = !DILocation(line: 49, column: 5, scope: !469)
!504 = !DILocation(line: 52, column: 27, scope: !469)
!505 = !DILocation(line: 52, column: 25, scope: !469)
!506 = !DILocation(line: 52, column: 19, scope: !469)
!507 = !DILocation(line: 52, column: 13, scope: !469)
!508 = !DILocation(line: 53, column: 13, scope: !469)
!509 = !DILocation(line: 55, column: 5, scope: !469)
!510 = !DILocation(line: 0, scope: !469)
!511 = !DILocation(line: 56, column: 1, scope: !469)
!512 = distinct !DISubprogram(name: "__mulvsi3", scope: !68, file: !68, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !2)
!513 = !DILocation(line: 27, column: 11, scope: !512)
!514 = !DILocation(line: 27, column: 9, scope: !512)
!515 = !DILocation(line: 29, column: 15, scope: !512)
!516 = !DILocation(line: 29, column: 20, scope: !512)
!517 = !DILocation(line: 29, column: 25, scope: !512)
!518 = !DILocation(line: 29, column: 13, scope: !512)
!519 = !DILocation(line: 30, column: 13, scope: !512)
!520 = !DILocation(line: 31, column: 9, scope: !512)
!521 = !DILocation(line: 33, column: 11, scope: !512)
!522 = !DILocation(line: 33, column: 9, scope: !512)
!523 = !DILocation(line: 35, column: 15, scope: !512)
!524 = !DILocation(line: 35, column: 20, scope: !512)
!525 = !DILocation(line: 35, column: 25, scope: !512)
!526 = !DILocation(line: 35, column: 13, scope: !512)
!527 = !DILocation(line: 36, column: 13, scope: !512)
!528 = !DILocation(line: 37, column: 9, scope: !512)
!529 = !DILocation(line: 39, column: 19, scope: !512)
!530 = !DILocation(line: 40, column: 23, scope: !512)
!531 = !DILocation(line: 40, column: 29, scope: !512)
!532 = !DILocation(line: 41, column: 19, scope: !512)
!533 = !DILocation(line: 42, column: 23, scope: !512)
!534 = !DILocation(line: 42, column: 29, scope: !512)
!535 = !DILocation(line: 43, column: 15, scope: !512)
!536 = !DILocation(line: 43, column: 19, scope: !512)
!537 = !DILocation(line: 43, column: 28, scope: !512)
!538 = !DILocation(line: 43, column: 9, scope: !512)
!539 = !DILocation(line: 44, column: 9, scope: !512)
!540 = !DILocation(line: 45, column: 12, scope: !512)
!541 = !DILocation(line: 45, column: 9, scope: !512)
!542 = !DILocation(line: 47, column: 25, scope: !512)
!543 = !DILocation(line: 47, column: 19, scope: !512)
!544 = !DILocation(line: 47, column: 13, scope: !512)
!545 = !DILocation(line: 48, column: 13, scope: !512)
!546 = !DILocation(line: 49, column: 5, scope: !512)
!547 = !DILocation(line: 52, column: 27, scope: !512)
!548 = !DILocation(line: 52, column: 25, scope: !512)
!549 = !DILocation(line: 52, column: 19, scope: !512)
!550 = !DILocation(line: 52, column: 13, scope: !512)
!551 = !DILocation(line: 53, column: 13, scope: !512)
!552 = !DILocation(line: 55, column: 5, scope: !512)
!553 = !DILocation(line: 0, scope: !512)
!554 = !DILocation(line: 56, column: 1, scope: !512)
!555 = distinct !DISubprogram(name: "__paritydi2", scope: !72, file: !72, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !2)
!556 = !DILocation(line: 23, column: 7, scope: !555)
!557 = !DILocation(line: 23, column: 11, scope: !555)
!558 = !DILocation(line: 24, column: 26, scope: !555)
!559 = !DILocation(line: 24, column: 28, scope: !555)
!560 = !DILocation(line: 24, column: 39, scope: !555)
!561 = !DILocation(line: 24, column: 33, scope: !555)
!562 = !DILocation(line: 24, column: 12, scope: !555)
!563 = !DILocation(line: 24, column: 5, scope: !555)
!564 = distinct !DISubprogram(name: "__paritysi2", scope: !74, file: !74, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !2)
!565 = !DILocation(line: 23, column: 12, scope: !564)
!566 = !DILocation(line: 23, column: 7, scope: !564)
!567 = !DILocation(line: 24, column: 12, scope: !564)
!568 = !DILocation(line: 24, column: 7, scope: !564)
!569 = !DILocation(line: 25, column: 12, scope: !564)
!570 = !DILocation(line: 25, column: 7, scope: !564)
!571 = !DILocation(line: 26, column: 26, scope: !564)
!572 = !DILocation(line: 26, column: 20, scope: !564)
!573 = !DILocation(line: 26, column: 34, scope: !564)
!574 = !DILocation(line: 26, column: 5, scope: !564)
!575 = distinct !DISubprogram(name: "__popcountdi2", scope: !78, file: !78, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !2)
!576 = !DILocation(line: 23, column: 20, scope: !575)
!577 = !DILocation(line: 23, column: 26, scope: !575)
!578 = !DILocation(line: 23, column: 13, scope: !575)
!579 = !DILocation(line: 25, column: 15, scope: !575)
!580 = !DILocation(line: 25, column: 21, scope: !575)
!581 = !DILocation(line: 25, column: 52, scope: !575)
!582 = !DILocation(line: 25, column: 46, scope: !575)
!583 = !DILocation(line: 27, column: 20, scope: !575)
!584 = !DILocation(line: 27, column: 14, scope: !575)
!585 = !DILocation(line: 27, column: 27, scope: !575)
!586 = !DILocation(line: 29, column: 34, scope: !575)
!587 = !DILocation(line: 29, column: 28, scope: !575)
!588 = !DILocation(line: 29, column: 16, scope: !575)
!589 = !DILocation(line: 32, column: 16, scope: !575)
!590 = !DILocation(line: 32, column: 11, scope: !575)
!591 = !DILocation(line: 35, column: 20, scope: !575)
!592 = !DILocation(line: 35, column: 15, scope: !575)
!593 = !DILocation(line: 35, column: 27, scope: !575)
!594 = !DILocation(line: 35, column: 5, scope: !575)
!595 = distinct !DISubprogram(name: "__popcountsi2", scope: !80, file: !80, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !2)
!596 = !DILocation(line: 23, column: 17, scope: !595)
!597 = !DILocation(line: 23, column: 23, scope: !595)
!598 = !DILocation(line: 23, column: 11, scope: !595)
!599 = !DILocation(line: 25, column: 13, scope: !595)
!600 = !DILocation(line: 25, column: 19, scope: !595)
!601 = !DILocation(line: 25, column: 38, scope: !595)
!602 = !DILocation(line: 25, column: 33, scope: !595)
!603 = !DILocation(line: 27, column: 17, scope: !595)
!604 = !DILocation(line: 27, column: 12, scope: !595)
!605 = !DILocation(line: 27, column: 24, scope: !595)
!606 = !DILocation(line: 29, column: 17, scope: !595)
!607 = !DILocation(line: 29, column: 12, scope: !595)
!608 = !DILocation(line: 32, column: 20, scope: !595)
!609 = !DILocation(line: 32, column: 15, scope: !595)
!610 = !DILocation(line: 32, column: 27, scope: !595)
!611 = !DILocation(line: 32, column: 5, scope: !595)
!612 = distinct !DISubprogram(name: "__subvdi3", scope: !84, file: !84, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !2)
!613 = !DILocation(line: 24, column: 27, scope: !612)
!614 = !DILocation(line: 25, column: 11, scope: !612)
!615 = !DILocation(line: 25, column: 9, scope: !612)
!616 = !DILocation(line: 27, column: 15, scope: !612)
!617 = !DILocation(line: 27, column: 13, scope: !612)
!618 = !DILocation(line: 28, column: 13, scope: !612)
!619 = !DILocation(line: 29, column: 5, scope: !612)
!620 = !DILocation(line: 32, column: 15, scope: !612)
!621 = !DILocation(line: 32, column: 13, scope: !612)
!622 = !DILocation(line: 33, column: 13, scope: !612)
!623 = !DILocation(line: 35, column: 5, scope: !612)
!624 = distinct !DISubprogram(name: "__subvsi3", scope: !86, file: !86, line: 22, type: !117, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !85, retainedNodes: !2)
!625 = !DILocation(line: 24, column: 27, scope: !624)
!626 = !DILocation(line: 25, column: 11, scope: !624)
!627 = !DILocation(line: 25, column: 9, scope: !624)
!628 = !DILocation(line: 27, column: 15, scope: !624)
!629 = !DILocation(line: 27, column: 13, scope: !624)
!630 = !DILocation(line: 28, column: 13, scope: !624)
!631 = !DILocation(line: 29, column: 5, scope: !624)
!632 = !DILocation(line: 32, column: 15, scope: !624)
!633 = !DILocation(line: 32, column: 13, scope: !624)
!634 = !DILocation(line: 33, column: 13, scope: !624)
!635 = !DILocation(line: 35, column: 5, scope: !624)
!636 = distinct !DISubprogram(name: "__ucmpdi2", scope: !90, file: !90, line: 23, type: !117, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !2)
!637 = !DILocation(line: 26, column: 7, scope: !636)
!638 = !DILocation(line: 26, column: 11, scope: !636)
!639 = !DILocation(line: 28, column: 7, scope: !636)
!640 = !DILocation(line: 28, column: 11, scope: !636)
!641 = !DILocation(line: 29, column: 11, scope: !636)
!642 = !DILocation(line: 29, column: 13, scope: !636)
!643 = !DILocation(line: 29, column: 22, scope: !636)
!644 = !DILocation(line: 29, column: 24, scope: !636)
!645 = !DILocation(line: 29, column: 18, scope: !636)
!646 = !DILocation(line: 29, column: 9, scope: !636)
!647 = !DILocation(line: 30, column: 9, scope: !636)
!648 = !DILocation(line: 31, column: 11, scope: !636)
!649 = !DILocation(line: 31, column: 13, scope: !636)
!650 = !DILocation(line: 31, column: 22, scope: !636)
!651 = !DILocation(line: 31, column: 24, scope: !636)
!652 = !DILocation(line: 31, column: 18, scope: !636)
!653 = !DILocation(line: 31, column: 9, scope: !636)
!654 = !DILocation(line: 32, column: 9, scope: !636)
!655 = !DILocation(line: 33, column: 13, scope: !636)
!656 = !DILocation(line: 33, column: 23, scope: !636)
!657 = !DILocation(line: 33, column: 17, scope: !636)
!658 = !DILocation(line: 33, column: 9, scope: !636)
!659 = !DILocation(line: 34, column: 9, scope: !636)
!660 = !DILocation(line: 35, column: 13, scope: !636)
!661 = !DILocation(line: 35, column: 23, scope: !636)
!662 = !DILocation(line: 35, column: 17, scope: !636)
!663 = !DILocation(line: 35, column: 9, scope: !636)
!664 = !DILocation(line: 36, column: 9, scope: !636)
!665 = !DILocation(line: 37, column: 5, scope: !636)
!666 = !DILocation(line: 0, scope: !636)
!667 = !DILocation(line: 38, column: 1, scope: !636)
!668 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !90, file: !90, line: 46, type: !117, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !2)
!669 = !DILocation(line: 48, column: 9, scope: !668)
!670 = !DILocation(line: 48, column: 25, scope: !668)
!671 = !DILocation(line: 48, column: 2, scope: !668)
!672 = distinct !DISubprogram(name: "__udivdi3", scope: !94, file: !94, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !2)
!673 = !DILocation(line: 22, column: 12, scope: !672)
!674 = !DILocation(line: 22, column: 5, scope: !672)
!675 = distinct !DISubprogram(name: "__udivmoddi4", scope: !96, file: !96, line: 24, type: !117, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !2)
!676 = !DILocation(line: 29, column: 7, scope: !675)
!677 = !DILocation(line: 29, column: 11, scope: !675)
!678 = !DILocation(line: 31, column: 7, scope: !675)
!679 = !DILocation(line: 31, column: 11, scope: !675)
!680 = !DILocation(line: 36, column: 11, scope: !675)
!681 = !DILocation(line: 36, column: 13, scope: !675)
!682 = !DILocation(line: 36, column: 18, scope: !675)
!683 = !DILocation(line: 36, column: 9, scope: !675)
!684 = !DILocation(line: 38, column: 15, scope: !675)
!685 = !DILocation(line: 38, column: 17, scope: !675)
!686 = !DILocation(line: 38, column: 22, scope: !675)
!687 = !DILocation(line: 38, column: 13, scope: !675)
!688 = !DILocation(line: 44, column: 17, scope: !675)
!689 = !DILocation(line: 45, column: 28, scope: !675)
!690 = !DILocation(line: 45, column: 38, scope: !675)
!691 = !DILocation(line: 45, column: 32, scope: !675)
!692 = !DILocation(line: 45, column: 24, scope: !675)
!693 = !DILocation(line: 45, column: 22, scope: !675)
!694 = !DILocation(line: 45, column: 17, scope: !675)
!695 = !DILocation(line: 46, column: 24, scope: !675)
!696 = !DILocation(line: 46, column: 34, scope: !675)
!697 = !DILocation(line: 46, column: 28, scope: !675)
!698 = !DILocation(line: 46, column: 20, scope: !675)
!699 = !DILocation(line: 46, column: 13, scope: !675)
!700 = !DILocation(line: 52, column: 13, scope: !675)
!701 = !DILocation(line: 53, column: 24, scope: !675)
!702 = !DILocation(line: 53, column: 20, scope: !675)
!703 = !DILocation(line: 53, column: 18, scope: !675)
!704 = !DILocation(line: 53, column: 13, scope: !675)
!705 = !DILocation(line: 54, column: 9, scope: !675)
!706 = !DILocation(line: 57, column: 13, scope: !675)
!707 = !DILocation(line: 57, column: 17, scope: !675)
!708 = !DILocation(line: 57, column: 9, scope: !675)
!709 = !DILocation(line: 59, column: 15, scope: !675)
!710 = !DILocation(line: 59, column: 17, scope: !675)
!711 = !DILocation(line: 59, column: 22, scope: !675)
!712 = !DILocation(line: 59, column: 13, scope: !675)
!713 = !DILocation(line: 65, column: 17, scope: !675)
!714 = !DILocation(line: 66, column: 26, scope: !675)
!715 = !DILocation(line: 66, column: 28, scope: !675)
!716 = !DILocation(line: 66, column: 39, scope: !675)
!717 = !DILocation(line: 66, column: 33, scope: !675)
!718 = !DILocation(line: 66, column: 24, scope: !675)
!719 = !DILocation(line: 66, column: 22, scope: !675)
!720 = !DILocation(line: 66, column: 17, scope: !675)
!721 = !DILocation(line: 67, column: 22, scope: !675)
!722 = !DILocation(line: 67, column: 24, scope: !675)
!723 = !DILocation(line: 67, column: 35, scope: !675)
!724 = !DILocation(line: 67, column: 29, scope: !675)
!725 = !DILocation(line: 67, column: 20, scope: !675)
!726 = !DILocation(line: 67, column: 13, scope: !675)
!727 = !DILocation(line: 70, column: 17, scope: !675)
!728 = !DILocation(line: 70, column: 21, scope: !675)
!729 = !DILocation(line: 70, column: 13, scope: !675)
!730 = !DILocation(line: 76, column: 17, scope: !675)
!731 = !DILocation(line: 78, column: 30, scope: !675)
!732 = !DILocation(line: 78, column: 32, scope: !675)
!733 = !DILocation(line: 78, column: 41, scope: !675)
!734 = !DILocation(line: 78, column: 43, scope: !675)
!735 = !DILocation(line: 78, column: 37, scope: !675)
!736 = !DILocation(line: 78, column: 19, scope: !675)
!737 = !DILocation(line: 78, column: 21, scope: !675)
!738 = !DILocation(line: 78, column: 26, scope: !675)
!739 = !DILocation(line: 79, column: 21, scope: !675)
!740 = !DILocation(line: 79, column: 25, scope: !675)
!741 = !DILocation(line: 80, column: 26, scope: !675)
!742 = !DILocation(line: 80, column: 22, scope: !675)
!743 = !DILocation(line: 81, column: 13, scope: !675)
!744 = !DILocation(line: 82, column: 22, scope: !675)
!745 = !DILocation(line: 82, column: 24, scope: !675)
!746 = !DILocation(line: 82, column: 33, scope: !675)
!747 = !DILocation(line: 82, column: 35, scope: !675)
!748 = !DILocation(line: 82, column: 29, scope: !675)
!749 = !DILocation(line: 82, column: 20, scope: !675)
!750 = !DILocation(line: 82, column: 13, scope: !675)
!751 = !DILocation(line: 88, column: 16, scope: !675)
!752 = !DILocation(line: 88, column: 18, scope: !675)
!753 = !DILocation(line: 88, column: 28, scope: !675)
!754 = !DILocation(line: 88, column: 30, scope: !675)
!755 = !DILocation(line: 88, column: 35, scope: !675)
!756 = !DILocation(line: 88, column: 23, scope: !675)
!757 = !DILocation(line: 88, column: 41, scope: !675)
!758 = !DILocation(line: 88, column: 13, scope: !675)
!759 = !DILocation(line: 90, column: 17, scope: !675)
!760 = !DILocation(line: 92, column: 31, scope: !675)
!761 = !DILocation(line: 92, column: 21, scope: !675)
!762 = !DILocation(line: 92, column: 25, scope: !675)
!763 = !DILocation(line: 93, column: 30, scope: !675)
!764 = !DILocation(line: 93, column: 32, scope: !675)
!765 = !DILocation(line: 93, column: 42, scope: !675)
!766 = !DILocation(line: 93, column: 44, scope: !675)
!767 = !DILocation(line: 93, column: 49, scope: !675)
!768 = !DILocation(line: 93, column: 37, scope: !675)
!769 = !DILocation(line: 93, column: 19, scope: !675)
!770 = !DILocation(line: 93, column: 21, scope: !675)
!771 = !DILocation(line: 93, column: 26, scope: !675)
!772 = !DILocation(line: 94, column: 26, scope: !675)
!773 = !DILocation(line: 94, column: 22, scope: !675)
!774 = !DILocation(line: 95, column: 13, scope: !675)
!775 = !DILocation(line: 96, column: 22, scope: !675)
!776 = !DILocation(line: 96, column: 24, scope: !675)
!777 = !DILocation(line: 96, column: 48, scope: !675)
!778 = !DILocation(line: 96, column: 50, scope: !675)
!779 = !DILocation(line: 96, column: 32, scope: !675)
!780 = !DILocation(line: 96, column: 29, scope: !675)
!781 = !DILocation(line: 96, column: 20, scope: !675)
!782 = !DILocation(line: 96, column: 13, scope: !675)
!783 = !DILocation(line: 102, column: 30, scope: !675)
!784 = !DILocation(line: 102, column: 32, scope: !675)
!785 = !DILocation(line: 102, column: 14, scope: !675)
!786 = !DILocation(line: 102, column: 56, scope: !675)
!787 = !DILocation(line: 102, column: 58, scope: !675)
!788 = !DILocation(line: 102, column: 40, scope: !675)
!789 = !DILocation(line: 102, column: 38, scope: !675)
!790 = !DILocation(line: 104, column: 16, scope: !675)
!791 = !DILocation(line: 104, column: 13, scope: !675)
!792 = !DILocation(line: 106, column: 16, scope: !675)
!793 = !DILocation(line: 107, column: 26, scope: !675)
!794 = !DILocation(line: 107, column: 22, scope: !675)
!795 = !DILocation(line: 107, column: 17, scope: !675)
!796 = !DILocation(line: 108, column: 13, scope: !675)
!797 = !DILocation(line: 110, column: 9, scope: !675)
!798 = !DILocation(line: 113, column: 13, scope: !675)
!799 = !DILocation(line: 113, column: 17, scope: !675)
!800 = !DILocation(line: 114, column: 24, scope: !675)
!801 = !DILocation(line: 114, column: 45, scope: !675)
!802 = !DILocation(line: 114, column: 28, scope: !675)
!803 = !DILocation(line: 114, column: 11, scope: !675)
!804 = !DILocation(line: 114, column: 13, scope: !675)
!805 = !DILocation(line: 114, column: 18, scope: !675)
!806 = !DILocation(line: 116, column: 22, scope: !675)
!807 = !DILocation(line: 116, column: 24, scope: !675)
!808 = !DILocation(line: 116, column: 29, scope: !675)
!809 = !DILocation(line: 116, column: 11, scope: !675)
!810 = !DILocation(line: 116, column: 13, scope: !675)
!811 = !DILocation(line: 116, column: 18, scope: !675)
!812 = !DILocation(line: 117, column: 22, scope: !675)
!813 = !DILocation(line: 117, column: 24, scope: !675)
!814 = !DILocation(line: 117, column: 46, scope: !675)
!815 = !DILocation(line: 117, column: 29, scope: !675)
!816 = !DILocation(line: 117, column: 60, scope: !675)
!817 = !DILocation(line: 117, column: 64, scope: !675)
!818 = !DILocation(line: 117, column: 53, scope: !675)
!819 = !DILocation(line: 117, column: 13, scope: !675)
!820 = !DILocation(line: 117, column: 17, scope: !675)
!821 = !DILocation(line: 118, column: 5, scope: !675)
!822 = !DILocation(line: 121, column: 15, scope: !675)
!823 = !DILocation(line: 121, column: 17, scope: !675)
!824 = !DILocation(line: 121, column: 22, scope: !675)
!825 = !DILocation(line: 121, column: 13, scope: !675)
!826 = !DILocation(line: 127, column: 22, scope: !675)
!827 = !DILocation(line: 127, column: 43, scope: !675)
!828 = !DILocation(line: 127, column: 17, scope: !675)
!829 = !DILocation(line: 129, column: 21, scope: !675)
!830 = !DILocation(line: 130, column: 32, scope: !675)
!831 = !DILocation(line: 130, column: 43, scope: !675)
!832 = !DILocation(line: 130, column: 47, scope: !675)
!833 = !DILocation(line: 130, column: 36, scope: !675)
!834 = !DILocation(line: 130, column: 28, scope: !675)
!835 = !DILocation(line: 130, column: 26, scope: !675)
!836 = !DILocation(line: 130, column: 21, scope: !675)
!837 = !DILocation(line: 131, column: 25, scope: !675)
!838 = !DILocation(line: 131, column: 29, scope: !675)
!839 = !DILocation(line: 131, column: 21, scope: !675)
!840 = !DILocation(line: 132, column: 30, scope: !675)
!841 = !DILocation(line: 132, column: 21, scope: !675)
!842 = !DILocation(line: 133, column: 40, scope: !675)
!843 = !DILocation(line: 133, column: 22, scope: !675)
!844 = !DILocation(line: 134, column: 30, scope: !675)
!845 = !DILocation(line: 134, column: 32, scope: !675)
!846 = !DILocation(line: 134, column: 37, scope: !675)
!847 = !DILocation(line: 134, column: 19, scope: !675)
!848 = !DILocation(line: 134, column: 21, scope: !675)
!849 = !DILocation(line: 134, column: 26, scope: !675)
!850 = !DILocation(line: 135, column: 30, scope: !675)
!851 = !DILocation(line: 135, column: 32, scope: !675)
!852 = !DILocation(line: 135, column: 54, scope: !675)
!853 = !DILocation(line: 135, column: 37, scope: !675)
!854 = !DILocation(line: 135, column: 68, scope: !675)
!855 = !DILocation(line: 135, column: 72, scope: !675)
!856 = !DILocation(line: 135, column: 61, scope: !675)
!857 = !DILocation(line: 135, column: 21, scope: !675)
!858 = !DILocation(line: 135, column: 25, scope: !675)
!859 = !DILocation(line: 136, column: 26, scope: !675)
!860 = !DILocation(line: 136, column: 17, scope: !675)
!861 = !DILocation(line: 142, column: 55, scope: !675)
!862 = !DILocation(line: 142, column: 37, scope: !675)
!863 = !DILocation(line: 142, column: 35, scope: !675)
!864 = !DILocation(line: 142, column: 78, scope: !675)
!865 = !DILocation(line: 142, column: 80, scope: !675)
!866 = !DILocation(line: 142, column: 62, scope: !675)
!867 = !DILocation(line: 142, column: 60, scope: !675)
!868 = !DILocation(line: 147, column: 20, scope: !675)
!869 = !DILocation(line: 147, column: 17, scope: !675)
!870 = !DILocation(line: 149, column: 21, scope: !675)
!871 = !DILocation(line: 149, column: 25, scope: !675)
!872 = !DILocation(line: 150, column: 32, scope: !675)
!873 = !DILocation(line: 150, column: 19, scope: !675)
!874 = !DILocation(line: 150, column: 21, scope: !675)
!875 = !DILocation(line: 150, column: 26, scope: !675)
!876 = !DILocation(line: 151, column: 19, scope: !675)
!877 = !DILocation(line: 151, column: 21, scope: !675)
!878 = !DILocation(line: 151, column: 26, scope: !675)
!879 = !DILocation(line: 152, column: 29, scope: !675)
!880 = !DILocation(line: 152, column: 31, scope: !675)
!881 = !DILocation(line: 152, column: 21, scope: !675)
!882 = !DILocation(line: 152, column: 25, scope: !675)
!883 = !DILocation(line: 153, column: 13, scope: !675)
!884 = !DILocation(line: 154, column: 25, scope: !675)
!885 = !DILocation(line: 154, column: 22, scope: !675)
!886 = !DILocation(line: 156, column: 21, scope: !675)
!887 = !DILocation(line: 156, column: 25, scope: !675)
!888 = !DILocation(line: 157, column: 32, scope: !675)
!889 = !DILocation(line: 157, column: 53, scope: !675)
!890 = !DILocation(line: 157, column: 36, scope: !675)
!891 = !DILocation(line: 157, column: 19, scope: !675)
!892 = !DILocation(line: 157, column: 21, scope: !675)
!893 = !DILocation(line: 157, column: 26, scope: !675)
!894 = !DILocation(line: 158, column: 30, scope: !675)
!895 = !DILocation(line: 158, column: 32, scope: !675)
!896 = !DILocation(line: 158, column: 37, scope: !675)
!897 = !DILocation(line: 158, column: 19, scope: !675)
!898 = !DILocation(line: 158, column: 21, scope: !675)
!899 = !DILocation(line: 158, column: 26, scope: !675)
!900 = !DILocation(line: 159, column: 30, scope: !675)
!901 = !DILocation(line: 159, column: 32, scope: !675)
!902 = !DILocation(line: 159, column: 54, scope: !675)
!903 = !DILocation(line: 159, column: 37, scope: !675)
!904 = !DILocation(line: 159, column: 68, scope: !675)
!905 = !DILocation(line: 159, column: 72, scope: !675)
!906 = !DILocation(line: 159, column: 61, scope: !675)
!907 = !DILocation(line: 159, column: 21, scope: !675)
!908 = !DILocation(line: 159, column: 25, scope: !675)
!909 = !DILocation(line: 160, column: 13, scope: !675)
!910 = !DILocation(line: 163, column: 31, scope: !675)
!911 = !DILocation(line: 163, column: 53, scope: !675)
!912 = !DILocation(line: 163, column: 35, scope: !675)
!913 = !DILocation(line: 163, column: 21, scope: !675)
!914 = !DILocation(line: 163, column: 25, scope: !675)
!915 = !DILocation(line: 164, column: 31, scope: !675)
!916 = !DILocation(line: 164, column: 33, scope: !675)
!917 = !DILocation(line: 164, column: 56, scope: !675)
!918 = !DILocation(line: 164, column: 38, scope: !675)
!919 = !DILocation(line: 165, column: 33, scope: !675)
!920 = !DILocation(line: 165, column: 44, scope: !675)
!921 = !DILocation(line: 165, column: 37, scope: !675)
!922 = !DILocation(line: 164, column: 63, scope: !675)
!923 = !DILocation(line: 164, column: 19, scope: !675)
!924 = !DILocation(line: 164, column: 21, scope: !675)
!925 = !DILocation(line: 164, column: 26, scope: !675)
!926 = !DILocation(line: 166, column: 19, scope: !675)
!927 = !DILocation(line: 166, column: 21, scope: !675)
!928 = !DILocation(line: 166, column: 26, scope: !675)
!929 = !DILocation(line: 167, column: 29, scope: !675)
!930 = !DILocation(line: 167, column: 31, scope: !675)
!931 = !DILocation(line: 167, column: 43, scope: !675)
!932 = !DILocation(line: 167, column: 36, scope: !675)
!933 = !DILocation(line: 167, column: 21, scope: !675)
!934 = !DILocation(line: 167, column: 25, scope: !675)
!935 = !DILocation(line: 169, column: 9, scope: !675)
!936 = !DILocation(line: 176, column: 34, scope: !675)
!937 = !DILocation(line: 176, column: 36, scope: !675)
!938 = !DILocation(line: 176, column: 18, scope: !675)
!939 = !DILocation(line: 176, column: 60, scope: !675)
!940 = !DILocation(line: 176, column: 62, scope: !675)
!941 = !DILocation(line: 176, column: 44, scope: !675)
!942 = !DILocation(line: 176, column: 42, scope: !675)
!943 = !DILocation(line: 178, column: 20, scope: !675)
!944 = !DILocation(line: 178, column: 17, scope: !675)
!945 = !DILocation(line: 180, column: 21, scope: !675)
!946 = !DILocation(line: 181, column: 30, scope: !675)
!947 = !DILocation(line: 181, column: 26, scope: !675)
!948 = !DILocation(line: 181, column: 21, scope: !675)
!949 = !DILocation(line: 182, column: 17, scope: !675)
!950 = !DILocation(line: 184, column: 13, scope: !675)
!951 = !DILocation(line: 187, column: 17, scope: !675)
!952 = !DILocation(line: 187, column: 21, scope: !675)
!953 = !DILocation(line: 188, column: 20, scope: !675)
!954 = !DILocation(line: 188, column: 17, scope: !675)
!955 = !DILocation(line: 190, column: 32, scope: !675)
!956 = !DILocation(line: 190, column: 19, scope: !675)
!957 = !DILocation(line: 190, column: 21, scope: !675)
!958 = !DILocation(line: 190, column: 26, scope: !675)
!959 = !DILocation(line: 191, column: 19, scope: !675)
!960 = !DILocation(line: 191, column: 21, scope: !675)
!961 = !DILocation(line: 191, column: 26, scope: !675)
!962 = !DILocation(line: 192, column: 29, scope: !675)
!963 = !DILocation(line: 192, column: 31, scope: !675)
!964 = !DILocation(line: 192, column: 21, scope: !675)
!965 = !DILocation(line: 192, column: 25, scope: !675)
!966 = !DILocation(line: 193, column: 13, scope: !675)
!967 = !DILocation(line: 196, column: 32, scope: !675)
!968 = !DILocation(line: 196, column: 53, scope: !675)
!969 = !DILocation(line: 196, column: 36, scope: !675)
!970 = !DILocation(line: 196, column: 19, scope: !675)
!971 = !DILocation(line: 196, column: 21, scope: !675)
!972 = !DILocation(line: 196, column: 26, scope: !675)
!973 = !DILocation(line: 197, column: 30, scope: !675)
!974 = !DILocation(line: 197, column: 32, scope: !675)
!975 = !DILocation(line: 197, column: 37, scope: !675)
!976 = !DILocation(line: 197, column: 19, scope: !675)
!977 = !DILocation(line: 197, column: 21, scope: !675)
!978 = !DILocation(line: 197, column: 26, scope: !675)
!979 = !DILocation(line: 198, column: 30, scope: !675)
!980 = !DILocation(line: 198, column: 32, scope: !675)
!981 = !DILocation(line: 198, column: 54, scope: !675)
!982 = !DILocation(line: 198, column: 37, scope: !675)
!983 = !DILocation(line: 198, column: 68, scope: !675)
!984 = !DILocation(line: 198, column: 72, scope: !675)
!985 = !DILocation(line: 198, column: 61, scope: !675)
!986 = !DILocation(line: 198, column: 21, scope: !675)
!987 = !DILocation(line: 198, column: 25, scope: !675)
!988 = !DILocation(line: 0, scope: !675)
!989 = !DILocation(line: 209, column: 5, scope: !675)
!990 = !DILocation(line: 209, column: 15, scope: !675)
!991 = !DILocation(line: 212, column: 23, scope: !675)
!992 = !DILocation(line: 212, column: 25, scope: !675)
!993 = !DILocation(line: 212, column: 30, scope: !675)
!994 = !DILocation(line: 212, column: 43, scope: !675)
!995 = !DILocation(line: 212, column: 48, scope: !675)
!996 = !DILocation(line: 212, column: 36, scope: !675)
!997 = !DILocation(line: 212, column: 11, scope: !675)
!998 = !DILocation(line: 212, column: 13, scope: !675)
!999 = !DILocation(line: 212, column: 18, scope: !675)
!1000 = !DILocation(line: 213, column: 25, scope: !675)
!1001 = !DILocation(line: 213, column: 30, scope: !675)
!1002 = !DILocation(line: 213, column: 41, scope: !675)
!1003 = !DILocation(line: 213, column: 43, scope: !675)
!1004 = !DILocation(line: 213, column: 48, scope: !675)
!1005 = !DILocation(line: 213, column: 36, scope: !675)
!1006 = !DILocation(line: 213, column: 13, scope: !675)
!1007 = !DILocation(line: 213, column: 18, scope: !675)
!1008 = !DILocation(line: 214, column: 23, scope: !675)
!1009 = !DILocation(line: 214, column: 25, scope: !675)
!1010 = !DILocation(line: 214, column: 30, scope: !675)
!1011 = !DILocation(line: 214, column: 43, scope: !675)
!1012 = !DILocation(line: 214, column: 48, scope: !675)
!1013 = !DILocation(line: 214, column: 36, scope: !675)
!1014 = !DILocation(line: 214, column: 11, scope: !675)
!1015 = !DILocation(line: 214, column: 13, scope: !675)
!1016 = !DILocation(line: 214, column: 18, scope: !675)
!1017 = !DILocation(line: 215, column: 25, scope: !675)
!1018 = !DILocation(line: 215, column: 30, scope: !675)
!1019 = !DILocation(line: 215, column: 36, scope: !675)
!1020 = !DILocation(line: 215, column: 13, scope: !675)
!1021 = !DILocation(line: 215, column: 18, scope: !675)
!1022 = !DILocation(line: 223, column: 37, scope: !675)
!1023 = !DILocation(line: 223, column: 45, scope: !675)
!1024 = !DILocation(line: 223, column: 49, scope: !675)
!1025 = !DILocation(line: 223, column: 54, scope: !675)
!1026 = !DILocation(line: 225, column: 20, scope: !675)
!1027 = !DILocation(line: 225, column: 24, scope: !675)
!1028 = !DILocation(line: 225, column: 11, scope: !675)
!1029 = !DILocation(line: 225, column: 15, scope: !675)
!1030 = !DILocation(line: 226, column: 5, scope: !675)
!1031 = !DILocation(line: 224, column: 17, scope: !675)
!1032 = !DILocation(line: 209, column: 20, scope: !675)
!1033 = distinct !{!1033, !989, !1030}
!1034 = !DILocation(line: 227, column: 16, scope: !675)
!1035 = !DILocation(line: 227, column: 20, scope: !675)
!1036 = !DILocation(line: 227, column: 28, scope: !675)
!1037 = !DILocation(line: 227, column: 26, scope: !675)
!1038 = !DILocation(line: 227, column: 7, scope: !675)
!1039 = !DILocation(line: 227, column: 11, scope: !675)
!1040 = !DILocation(line: 228, column: 9, scope: !675)
!1041 = !DILocation(line: 229, column: 18, scope: !675)
!1042 = !DILocation(line: 229, column: 14, scope: !675)
!1043 = !DILocation(line: 229, column: 9, scope: !675)
!1044 = !DILocation(line: 230, column: 14, scope: !675)
!1045 = !DILocation(line: 230, column: 5, scope: !675)
!1046 = !DILocation(line: 231, column: 1, scope: !675)
!1047 = distinct !DISubprogram(name: "__udivmodsi4", scope: !98, file: !98, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !2)
!1048 = !DILocation(line: 22, column: 14, scope: !1047)
!1049 = !DILocation(line: 23, column: 16, scope: !1047)
!1050 = !DILocation(line: 23, column: 12, scope: !1047)
!1051 = !DILocation(line: 23, column: 8, scope: !1047)
!1052 = !DILocation(line: 24, column: 3, scope: !1047)
!1053 = distinct !DISubprogram(name: "__udivsi3", scope: !102, file: !102, line: 25, type: !117, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !2)
!1054 = !DILocation(line: 32, column: 11, scope: !1053)
!1055 = !DILocation(line: 32, column: 9, scope: !1053)
!1056 = !DILocation(line: 33, column: 9, scope: !1053)
!1057 = !DILocation(line: 34, column: 11, scope: !1053)
!1058 = !DILocation(line: 34, column: 9, scope: !1053)
!1059 = !DILocation(line: 35, column: 9, scope: !1053)
!1060 = !DILocation(line: 36, column: 10, scope: !1053)
!1061 = !DILocation(line: 36, column: 29, scope: !1053)
!1062 = !DILocation(line: 36, column: 27, scope: !1053)
!1063 = !DILocation(line: 38, column: 12, scope: !1053)
!1064 = !DILocation(line: 38, column: 9, scope: !1053)
!1065 = !DILocation(line: 39, column: 9, scope: !1053)
!1066 = !DILocation(line: 40, column: 12, scope: !1053)
!1067 = !DILocation(line: 40, column: 9, scope: !1053)
!1068 = !DILocation(line: 41, column: 9, scope: !1053)
!1069 = !DILocation(line: 42, column: 5, scope: !1053)
!1070 = !DILocation(line: 45, column: 28, scope: !1053)
!1071 = !DILocation(line: 45, column: 11, scope: !1053)
!1072 = !DILocation(line: 46, column: 11, scope: !1053)
!1073 = !DILocation(line: 48, column: 5, scope: !1053)
!1074 = !DILocation(line: 0, scope: !1053)
!1075 = !DILocation(line: 48, column: 15, scope: !1053)
!1076 = !DILocation(line: 51, column: 16, scope: !1053)
!1077 = !DILocation(line: 51, column: 27, scope: !1053)
!1078 = !DILocation(line: 51, column: 22, scope: !1053)
!1079 = !DILocation(line: 60, column: 41, scope: !1053)
!1080 = !DILocation(line: 60, column: 46, scope: !1053)
!1081 = !DILocation(line: 63, column: 5, scope: !1053)
!1082 = !DILocation(line: 62, column: 16, scope: !1053)
!1083 = !DILocation(line: 62, column: 11, scope: !1053)
!1084 = !DILocation(line: 61, column: 19, scope: !1053)
!1085 = !DILocation(line: 52, column: 16, scope: !1053)
!1086 = !DILocation(line: 52, column: 22, scope: !1053)
!1087 = !DILocation(line: 48, column: 20, scope: !1053)
!1088 = distinct !{!1088, !1073, !1081}
!1089 = !DILocation(line: 64, column: 12, scope: !1053)
!1090 = !DILocation(line: 64, column: 18, scope: !1053)
!1091 = !DILocation(line: 65, column: 5, scope: !1053)
!1092 = !DILocation(line: 66, column: 1, scope: !1053)
!1093 = distinct !DISubprogram(name: "__umoddi3", scope: !106, file: !106, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !2)
!1094 = !DILocation(line: 23, column: 5, scope: !1093)
!1095 = !DILocation(line: 24, column: 12, scope: !1093)
!1096 = !DILocation(line: 24, column: 5, scope: !1093)
!1097 = distinct !DISubprogram(name: "__umodsi3", scope: !108, file: !108, line: 20, type: !117, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !2)
!1098 = !DILocation(line: 22, column: 16, scope: !1097)
!1099 = !DILocation(line: 22, column: 32, scope: !1097)
!1100 = !DILocation(line: 22, column: 14, scope: !1097)
!1101 = !DILocation(line: 22, column: 5, scope: !1097)
