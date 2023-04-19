; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"../absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"../addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"../addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"../mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"../mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"../subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"../subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

; Function Attrs: noinline nounwind
define dso_local i64 @__absvdi2(i64 noundef %a) #0 !dbg !115 {
entry:
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %t = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 64, i32* %N, align 4, !dbg !118
  %0 = load i64, i64* %a.addr, align 8, !dbg !119
  %cmp = icmp eq i64 %0, -9223372036854775808, !dbg !120
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %entry
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #3, !dbg !121
  unreachable, !dbg !121

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8, !dbg !122
  %shr = ashr i64 %1, 63, !dbg !123
  store i64 %shr, i64* %t, align 8, !dbg !124
  %2 = load i64, i64* %a.addr, align 8, !dbg !125
  %3 = load i64, i64* %t, align 8, !dbg !126
  %xor = xor i64 %2, %3, !dbg !127
  %4 = load i64, i64* %t, align 8, !dbg !128
  %sub = sub nsw i64 %xor, %4, !dbg !129
  ret i64 %sub, !dbg !130
}

; Function Attrs: noreturn
declare dso_local void @compilerrt_abort_impl(i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind
define dso_local i32 @__absvsi2(i32 noundef %a) #0 !dbg !131 {
entry:
  %a.addr = alloca i32, align 4
  %N = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 32, i32* %N, align 4, !dbg !132
  %0 = load i32, i32* %a.addr, align 4, !dbg !133
  %cmp = icmp eq i32 %0, -2147483648, !dbg !134
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %entry
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #3, !dbg !135
  unreachable, !dbg !135

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !136
  %shr = ashr i32 %1, 31, !dbg !137
  store i32 %shr, i32* %t, align 4, !dbg !138
  %2 = load i32, i32* %a.addr, align 4, !dbg !139
  %3 = load i32, i32* %t, align 4, !dbg !140
  %xor = xor i32 %2, %3, !dbg !141
  %4 = load i32, i32* %t, align 4, !dbg !142
  %sub = sub nsw i32 %xor, %4, !dbg !143
  ret i32 %sub, !dbg !144
}

; Function Attrs: noinline nounwind
define dso_local i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #0 !dbg !145 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %s = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !146
  %1 = load i64, i64* %b.addr, align 8, !dbg !147
  %add = add i64 %0, %1, !dbg !148
  store i64 %add, i64* %s, align 8, !dbg !149
  %2 = load i64, i64* %b.addr, align 8, !dbg !150
  %cmp = icmp sge i64 %2, 0, !dbg !151
  br i1 %cmp, label %if.then, label %if.else, !dbg !150

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %s, align 8, !dbg !152
  %4 = load i64, i64* %a.addr, align 8, !dbg !153
  %cmp1 = icmp slt i64 %3, %4, !dbg !154
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !152

if.then2:                                         ; preds = %if.then
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #3, !dbg !155
  unreachable, !dbg !155

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !156

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %s, align 8, !dbg !157
  %6 = load i64, i64* %a.addr, align 8, !dbg !158
  %cmp3 = icmp sge i64 %5, %6, !dbg !159
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !157

if.then4:                                         ; preds = %if.else
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #3, !dbg !160
  unreachable, !dbg !160

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %7 = load i64, i64* %s, align 8, !dbg !161
  ret i64 %7, !dbg !162
}

; Function Attrs: noinline nounwind
define dso_local i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !163 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !164
  %1 = load i32, i32* %b.addr, align 4, !dbg !165
  %add = add i32 %0, %1, !dbg !166
  store i32 %add, i32* %s, align 4, !dbg !167
  %2 = load i32, i32* %b.addr, align 4, !dbg !168
  %cmp = icmp sge i32 %2, 0, !dbg !169
  br i1 %cmp, label %if.then, label %if.else, !dbg !168

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %s, align 4, !dbg !170
  %4 = load i32, i32* %a.addr, align 4, !dbg !171
  %cmp1 = icmp slt i32 %3, %4, !dbg !172
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !170

if.then2:                                         ; preds = %if.then
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #3, !dbg !173
  unreachable, !dbg !173

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !174

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %s, align 4, !dbg !175
  %6 = load i32, i32* %a.addr, align 4, !dbg !176
  %cmp3 = icmp sge i32 %5, %6, !dbg !177
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !175

if.then4:                                         ; preds = %if.else
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #3, !dbg !178
  unreachable, !dbg !178

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %7 = load i32, i32* %s, align 4, !dbg !179
  ret i32 %7, !dbg !180
}

; Function Attrs: noinline nounwind
define dso_local i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #0 !dbg !181 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i32, align 4
  %bits_in_word = alloca i32, align 4
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 32, i32* %bits_in_word, align 4, !dbg !182
  %0 = load i64, i64* %a.addr, align 8, !dbg !183
  %all = bitcast %union.dwords* %input to i64*, !dbg !184
  store i64 %0, i64* %all, align 8, !dbg !185
  %1 = load i32, i32* %b.addr, align 4, !dbg !186
  %and = and i32 %1, 32, !dbg !187
  %tobool = icmp ne i32 %and, 0, !dbg !187
  br i1 %tobool, label %if.then, label %if.else, !dbg !186

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !188
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !189
  store i32 0, i32* %low, align 8, !dbg !190
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !191
  %low2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 0, !dbg !192
  %2 = load i32, i32* %low2, align 8, !dbg !192
  %3 = load i32, i32* %b.addr, align 4, !dbg !193
  %sub = sub nsw i32 %3, 32, !dbg !194
  %shl = shl i32 %2, %sub, !dbg !195
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !196
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !197
  store i32 %shl, i32* %high, align 4, !dbg !198
  br label %if.end18, !dbg !199

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %b.addr, align 4, !dbg !200
  %cmp = icmp eq i32 %4, 0, !dbg !201
  br i1 %cmp, label %if.then4, label %if.end, !dbg !200

if.then4:                                         ; preds = %if.else
  %5 = load i64, i64* %a.addr, align 8, !dbg !202
  store i64 %5, i64* %retval, align 8, !dbg !203
  br label %return, !dbg !203

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !204
  %low6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 0, !dbg !205
  %6 = load i32, i32* %low6, align 8, !dbg !205
  %7 = load i32, i32* %b.addr, align 4, !dbg !206
  %shl7 = shl i32 %6, %7, !dbg !207
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !208
  %low9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 0, !dbg !209
  store i32 %shl7, i32* %low9, align 8, !dbg !210
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !211
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !212
  %8 = load i32, i32* %high11, align 4, !dbg !212
  %9 = load i32, i32* %b.addr, align 4, !dbg !213
  %shl12 = shl i32 %8, %9, !dbg !214
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !215
  %low14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 0, !dbg !216
  %10 = load i32, i32* %low14, align 8, !dbg !216
  %11 = load i32, i32* %b.addr, align 4, !dbg !217
  %sub15 = sub nsw i32 32, %11, !dbg !218
  %shr = lshr i32 %10, %sub15, !dbg !219
  %or = or i32 %shl12, %shr, !dbg !220
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !221
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !222
  store i32 %or, i32* %high17, align 4, !dbg !223
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = bitcast %union.dwords* %result to i64*, !dbg !224
  %12 = load i64, i64* %all19, align 8, !dbg !224
  store i64 %12, i64* %retval, align 8, !dbg !225
  br label %return, !dbg !225

return:                                           ; preds = %if.end18, %if.then4
  %13 = load i64, i64* %retval, align 8, !dbg !226
  ret i64 %13, !dbg !226
}

; Function Attrs: noinline nounwind
define dso_local i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #0 !dbg !227 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i32, align 4
  %bits_in_word = alloca i32, align 4
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 32, i32* %bits_in_word, align 4, !dbg !228
  %0 = load i64, i64* %a.addr, align 8, !dbg !229
  %all = bitcast %union.dwords* %input to i64*, !dbg !230
  store i64 %0, i64* %all, align 8, !dbg !231
  %1 = load i32, i32* %b.addr, align 4, !dbg !232
  %and = and i32 %1, 32, !dbg !233
  %tobool = icmp ne i32 %and, 0, !dbg !233
  br i1 %tobool, label %if.then, label %if.else, !dbg !232

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !234
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !235
  %2 = load i32, i32* %high, align 4, !dbg !235
  %shr = ashr i32 %2, 31, !dbg !236
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !237
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !238
  store i32 %shr, i32* %high2, align 4, !dbg !239
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !240
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !241
  %3 = load i32, i32* %high4, align 4, !dbg !241
  %4 = load i32, i32* %b.addr, align 4, !dbg !242
  %sub = sub nsw i32 %4, 32, !dbg !243
  %shr5 = ashr i32 %3, %sub, !dbg !244
  %s6 = bitcast %union.dwords* %result to %struct.anon*, !dbg !245
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 0, !dbg !246
  store i32 %shr5, i32* %low, align 8, !dbg !247
  br label %if.end21, !dbg !248

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %b.addr, align 4, !dbg !249
  %cmp = icmp eq i32 %5, 0, !dbg !250
  br i1 %cmp, label %if.then7, label %if.end, !dbg !249

if.then7:                                         ; preds = %if.else
  %6 = load i64, i64* %a.addr, align 8, !dbg !251
  store i64 %6, i64* %retval, align 8, !dbg !252
  br label %return, !dbg !252

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !253
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !254
  %7 = load i32, i32* %high9, align 4, !dbg !254
  %8 = load i32, i32* %b.addr, align 4, !dbg !255
  %shr10 = ashr i32 %7, %8, !dbg !256
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !257
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !258
  store i32 %shr10, i32* %high12, align 4, !dbg !259
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !260
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !261
  %9 = load i32, i32* %high14, align 4, !dbg !261
  %10 = load i32, i32* %b.addr, align 4, !dbg !262
  %sub15 = sub nsw i32 32, %10, !dbg !263
  %shl = shl i32 %9, %sub15, !dbg !264
  %s16 = bitcast %union.dwords* %input to %struct.anon*, !dbg !265
  %low17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 0, !dbg !266
  %11 = load i32, i32* %low17, align 8, !dbg !266
  %12 = load i32, i32* %b.addr, align 4, !dbg !267
  %shr18 = lshr i32 %11, %12, !dbg !268
  %or = or i32 %shl, %shr18, !dbg !269
  %s19 = bitcast %union.dwords* %result to %struct.anon*, !dbg !270
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %s19, i32 0, i32 0, !dbg !271
  store i32 %or, i32* %low20, align 8, !dbg !272
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = bitcast %union.dwords* %result to i64*, !dbg !273
  %13 = load i64, i64* %all22, align 8, !dbg !273
  store i64 %13, i64* %retval, align 8, !dbg !274
  br label %return, !dbg !274

return:                                           ; preds = %if.end21, %if.then7
  %14 = load i64, i64* %retval, align 8, !dbg !275
  ret i64 %14, !dbg !275
}

; Function Attrs: noinline nounwind
define dso_local i32 @__clzdi2(i64 noundef %a) #0 !dbg !276 {
entry:
  %a.addr = alloca i64, align 8
  %x = alloca %union.dwords, align 8
  %f = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !277
  %all = bitcast %union.dwords* %x to i64*, !dbg !278
  store i64 %0, i64* %all, align 8, !dbg !279
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !280
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !281
  %1 = load i32, i32* %high, align 4, !dbg !281
  %cmp = icmp eq i32 %1, 0, !dbg !282
  %conv = zext i1 %cmp to i32, !dbg !282
  %sub = sub nsw i32 0, %conv, !dbg !283
  store i32 %sub, i32* %f, align 4, !dbg !284
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !285
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !286
  %2 = load i32, i32* %high2, align 4, !dbg !286
  %3 = load i32, i32* %f, align 4, !dbg !287
  %neg = xor i32 %3, -1, !dbg !288
  %and = and i32 %2, %neg, !dbg !289
  %s3 = bitcast %union.dwords* %x to %struct.anon*, !dbg !290
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 0, !dbg !291
  %4 = load i32, i32* %low, align 8, !dbg !291
  %5 = load i32, i32* %f, align 4, !dbg !292
  %and4 = and i32 %4, %5, !dbg !293
  %or = or i32 %and, %and4, !dbg !294
  %6 = call i32 @llvm.ctlz.i32(i32 %or, i1 true), !dbg !295
  %7 = load i32, i32* %f, align 4, !dbg !296
  %and5 = and i32 %7, 32, !dbg !297
  %add = add nsw i32 %6, %and5, !dbg !298
  ret i32 %add, !dbg !299
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local i32 @__clzsi2(i32 noundef %a) #0 !dbg !300 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %t = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !301
  store i32 %0, i32* %x, align 4, !dbg !302
  %1 = load i32, i32* %x, align 4, !dbg !303
  %and = and i32 %1, -65536, !dbg !304
  %cmp = icmp eq i32 %and, 0, !dbg !305
  %conv = zext i1 %cmp to i32, !dbg !305
  %shl = shl i32 %conv, 4, !dbg !306
  store i32 %shl, i32* %t, align 4, !dbg !307
  %2 = load i32, i32* %t, align 4, !dbg !308
  %sub = sub nsw i32 16, %2, !dbg !309
  %3 = load i32, i32* %x, align 4, !dbg !310
  %shr = lshr i32 %3, %sub, !dbg !310
  store i32 %shr, i32* %x, align 4, !dbg !310
  %4 = load i32, i32* %t, align 4, !dbg !311
  store i32 %4, i32* %r, align 4, !dbg !312
  %5 = load i32, i32* %x, align 4, !dbg !313
  %and1 = and i32 %5, 65280, !dbg !314
  %cmp2 = icmp eq i32 %and1, 0, !dbg !315
  %conv3 = zext i1 %cmp2 to i32, !dbg !315
  %shl4 = shl i32 %conv3, 3, !dbg !316
  store i32 %shl4, i32* %t, align 4, !dbg !317
  %6 = load i32, i32* %t, align 4, !dbg !318
  %sub5 = sub nsw i32 8, %6, !dbg !319
  %7 = load i32, i32* %x, align 4, !dbg !320
  %shr6 = lshr i32 %7, %sub5, !dbg !320
  store i32 %shr6, i32* %x, align 4, !dbg !320
  %8 = load i32, i32* %t, align 4, !dbg !321
  %9 = load i32, i32* %r, align 4, !dbg !322
  %add = add i32 %9, %8, !dbg !322
  store i32 %add, i32* %r, align 4, !dbg !322
  %10 = load i32, i32* %x, align 4, !dbg !323
  %and7 = and i32 %10, 240, !dbg !324
  %cmp8 = icmp eq i32 %and7, 0, !dbg !325
  %conv9 = zext i1 %cmp8 to i32, !dbg !325
  %shl10 = shl i32 %conv9, 2, !dbg !326
  store i32 %shl10, i32* %t, align 4, !dbg !327
  %11 = load i32, i32* %t, align 4, !dbg !328
  %sub11 = sub nsw i32 4, %11, !dbg !329
  %12 = load i32, i32* %x, align 4, !dbg !330
  %shr12 = lshr i32 %12, %sub11, !dbg !330
  store i32 %shr12, i32* %x, align 4, !dbg !330
  %13 = load i32, i32* %t, align 4, !dbg !331
  %14 = load i32, i32* %r, align 4, !dbg !332
  %add13 = add i32 %14, %13, !dbg !332
  store i32 %add13, i32* %r, align 4, !dbg !332
  %15 = load i32, i32* %x, align 4, !dbg !333
  %and14 = and i32 %15, 12, !dbg !334
  %cmp15 = icmp eq i32 %and14, 0, !dbg !335
  %conv16 = zext i1 %cmp15 to i32, !dbg !335
  %shl17 = shl i32 %conv16, 1, !dbg !336
  store i32 %shl17, i32* %t, align 4, !dbg !337
  %16 = load i32, i32* %t, align 4, !dbg !338
  %sub18 = sub nsw i32 2, %16, !dbg !339
  %17 = load i32, i32* %x, align 4, !dbg !340
  %shr19 = lshr i32 %17, %sub18, !dbg !340
  store i32 %shr19, i32* %x, align 4, !dbg !340
  %18 = load i32, i32* %t, align 4, !dbg !341
  %19 = load i32, i32* %r, align 4, !dbg !342
  %add20 = add i32 %19, %18, !dbg !342
  store i32 %add20, i32* %r, align 4, !dbg !342
  %20 = load i32, i32* %r, align 4, !dbg !343
  %21 = load i32, i32* %x, align 4, !dbg !344
  %sub21 = sub i32 2, %21, !dbg !345
  %22 = load i32, i32* %x, align 4, !dbg !346
  %and22 = and i32 %22, 2, !dbg !347
  %cmp23 = icmp eq i32 %and22, 0, !dbg !348
  %conv24 = zext i1 %cmp23 to i32, !dbg !348
  %sub25 = sub nsw i32 0, %conv24, !dbg !349
  %and26 = and i32 %sub21, %sub25, !dbg !350
  %add27 = add i32 %20, %and26, !dbg !351
  ret i32 %add27, !dbg !352
}

; Function Attrs: noinline nounwind
define dso_local i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #0 !dbg !353 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !354
  %all = bitcast %union.dwords* %x to i64*, !dbg !355
  store i64 %0, i64* %all, align 8, !dbg !356
  %1 = load i64, i64* %b.addr, align 8, !dbg !357
  %all1 = bitcast %union.dwords* %y to i64*, !dbg !358
  store i64 %1, i64* %all1, align 8, !dbg !359
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !360
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !361
  %2 = load i32, i32* %high, align 4, !dbg !361
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !362
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !363
  %3 = load i32, i32* %high3, align 4, !dbg !363
  %cmp = icmp slt i32 %2, %3, !dbg !364
  br i1 %cmp, label %if.then, label %if.end, !dbg !365

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !366
  br label %return, !dbg !366

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !367
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !368
  %4 = load i32, i32* %high5, align 4, !dbg !368
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !369
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !370
  %5 = load i32, i32* %high7, align 4, !dbg !370
  %cmp8 = icmp sgt i32 %4, %5, !dbg !371
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !372

if.then9:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !373
  br label %return, !dbg !373

if.end10:                                         ; preds = %if.end
  %s11 = bitcast %union.dwords* %x to %struct.anon*, !dbg !374
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 0, !dbg !375
  %6 = load i32, i32* %low, align 8, !dbg !375
  %s12 = bitcast %union.dwords* %y to %struct.anon*, !dbg !376
  %low13 = getelementptr inbounds %struct.anon, %struct.anon* %s12, i32 0, i32 0, !dbg !377
  %7 = load i32, i32* %low13, align 8, !dbg !377
  %cmp14 = icmp ult i32 %6, %7, !dbg !378
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !379

if.then15:                                        ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !380
  br label %return, !dbg !380

if.end16:                                         ; preds = %if.end10
  %s17 = bitcast %union.dwords* %x to %struct.anon*, !dbg !381
  %low18 = getelementptr inbounds %struct.anon, %struct.anon* %s17, i32 0, i32 0, !dbg !382
  %8 = load i32, i32* %low18, align 8, !dbg !382
  %s19 = bitcast %union.dwords* %y to %struct.anon*, !dbg !383
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %s19, i32 0, i32 0, !dbg !384
  %9 = load i32, i32* %low20, align 8, !dbg !384
  %cmp21 = icmp ugt i32 %8, %9, !dbg !385
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !386

if.then22:                                        ; preds = %if.end16
  store i32 2, i32* %retval, align 4, !dbg !387
  br label %return, !dbg !387

if.end23:                                         ; preds = %if.end16
  store i32 1, i32* %retval, align 4, !dbg !388
  br label %return, !dbg !388

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !389
  ret i32 %10, !dbg !389
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ctzdi2(i64 noundef %a) #0 !dbg !390 {
entry:
  %a.addr = alloca i64, align 8
  %x = alloca %union.dwords, align 8
  %f = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !391
  %all = bitcast %union.dwords* %x to i64*, !dbg !392
  store i64 %0, i64* %all, align 8, !dbg !393
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !394
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !395
  %1 = load i32, i32* %low, align 8, !dbg !395
  %cmp = icmp eq i32 %1, 0, !dbg !396
  %conv = zext i1 %cmp to i32, !dbg !396
  %sub = sub nsw i32 0, %conv, !dbg !397
  store i32 %sub, i32* %f, align 4, !dbg !398
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !399
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !400
  %2 = load i32, i32* %high, align 4, !dbg !400
  %3 = load i32, i32* %f, align 4, !dbg !401
  %and = and i32 %2, %3, !dbg !402
  %s2 = bitcast %union.dwords* %x to %struct.anon*, !dbg !403
  %low3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 0, !dbg !404
  %4 = load i32, i32* %low3, align 8, !dbg !404
  %5 = load i32, i32* %f, align 4, !dbg !405
  %neg = xor i32 %5, -1, !dbg !406
  %and4 = and i32 %4, %neg, !dbg !407
  %or = or i32 %and, %and4, !dbg !408
  %6 = call i32 @llvm.cttz.i32(i32 %or, i1 true), !dbg !409
  %7 = load i32, i32* %f, align 4, !dbg !410
  %and5 = and i32 %7, 32, !dbg !411
  %add = add nsw i32 %6, %and5, !dbg !412
  ret i32 %add, !dbg !413
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local i32 @__ctzsi2(i32 noundef %a) #0 !dbg !414 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %t = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !415
  store i32 %0, i32* %x, align 4, !dbg !416
  %1 = load i32, i32* %x, align 4, !dbg !417
  %and = and i32 %1, 65535, !dbg !418
  %cmp = icmp eq i32 %and, 0, !dbg !419
  %conv = zext i1 %cmp to i32, !dbg !419
  %shl = shl i32 %conv, 4, !dbg !420
  store i32 %shl, i32* %t, align 4, !dbg !421
  %2 = load i32, i32* %t, align 4, !dbg !422
  %3 = load i32, i32* %x, align 4, !dbg !423
  %shr = lshr i32 %3, %2, !dbg !423
  store i32 %shr, i32* %x, align 4, !dbg !423
  %4 = load i32, i32* %t, align 4, !dbg !424
  store i32 %4, i32* %r, align 4, !dbg !425
  %5 = load i32, i32* %x, align 4, !dbg !426
  %and1 = and i32 %5, 255, !dbg !427
  %cmp2 = icmp eq i32 %and1, 0, !dbg !428
  %conv3 = zext i1 %cmp2 to i32, !dbg !428
  %shl4 = shl i32 %conv3, 3, !dbg !429
  store i32 %shl4, i32* %t, align 4, !dbg !430
  %6 = load i32, i32* %t, align 4, !dbg !431
  %7 = load i32, i32* %x, align 4, !dbg !432
  %shr5 = lshr i32 %7, %6, !dbg !432
  store i32 %shr5, i32* %x, align 4, !dbg !432
  %8 = load i32, i32* %t, align 4, !dbg !433
  %9 = load i32, i32* %r, align 4, !dbg !434
  %add = add i32 %9, %8, !dbg !434
  store i32 %add, i32* %r, align 4, !dbg !434
  %10 = load i32, i32* %x, align 4, !dbg !435
  %and6 = and i32 %10, 15, !dbg !436
  %cmp7 = icmp eq i32 %and6, 0, !dbg !437
  %conv8 = zext i1 %cmp7 to i32, !dbg !437
  %shl9 = shl i32 %conv8, 2, !dbg !438
  store i32 %shl9, i32* %t, align 4, !dbg !439
  %11 = load i32, i32* %t, align 4, !dbg !440
  %12 = load i32, i32* %x, align 4, !dbg !441
  %shr10 = lshr i32 %12, %11, !dbg !441
  store i32 %shr10, i32* %x, align 4, !dbg !441
  %13 = load i32, i32* %t, align 4, !dbg !442
  %14 = load i32, i32* %r, align 4, !dbg !443
  %add11 = add i32 %14, %13, !dbg !443
  store i32 %add11, i32* %r, align 4, !dbg !443
  %15 = load i32, i32* %x, align 4, !dbg !444
  %and12 = and i32 %15, 3, !dbg !445
  %cmp13 = icmp eq i32 %and12, 0, !dbg !446
  %conv14 = zext i1 %cmp13 to i32, !dbg !446
  %shl15 = shl i32 %conv14, 1, !dbg !447
  store i32 %shl15, i32* %t, align 4, !dbg !448
  %16 = load i32, i32* %t, align 4, !dbg !449
  %17 = load i32, i32* %x, align 4, !dbg !450
  %shr16 = lshr i32 %17, %16, !dbg !450
  store i32 %shr16, i32* %x, align 4, !dbg !450
  %18 = load i32, i32* %x, align 4, !dbg !451
  %and17 = and i32 %18, 3, !dbg !451
  store i32 %and17, i32* %x, align 4, !dbg !451
  %19 = load i32, i32* %t, align 4, !dbg !452
  %20 = load i32, i32* %r, align 4, !dbg !453
  %add18 = add i32 %20, %19, !dbg !453
  store i32 %add18, i32* %r, align 4, !dbg !453
  %21 = load i32, i32* %r, align 4, !dbg !454
  %22 = load i32, i32* %x, align 4, !dbg !455
  %shr19 = lshr i32 %22, 1, !dbg !456
  %sub = sub i32 2, %shr19, !dbg !457
  %23 = load i32, i32* %x, align 4, !dbg !458
  %and20 = and i32 %23, 1, !dbg !459
  %cmp21 = icmp eq i32 %and20, 0, !dbg !460
  %conv22 = zext i1 %cmp21 to i32, !dbg !460
  %sub23 = sub nsw i32 0, %conv22, !dbg !461
  %and24 = and i32 %sub, %sub23, !dbg !462
  %add25 = add i32 %21, %and24, !dbg !463
  ret i32 %add25, !dbg !464
}

; Function Attrs: noinline nounwind
define dso_local i64 @__divdi3(i64 noundef %a, i64 noundef %b) #0 !dbg !465 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %bits_in_dword_m1 = alloca i32, align 4
  %s_a = alloca i64, align 8
  %s_b = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i32 63, i32* %bits_in_dword_m1, align 4, !dbg !466
  %0 = load i64, i64* %a.addr, align 8, !dbg !467
  %shr = ashr i64 %0, 63, !dbg !468
  store i64 %shr, i64* %s_a, align 8, !dbg !469
  %1 = load i64, i64* %b.addr, align 8, !dbg !470
  %shr1 = ashr i64 %1, 63, !dbg !471
  store i64 %shr1, i64* %s_b, align 8, !dbg !472
  %2 = load i64, i64* %a.addr, align 8, !dbg !473
  %3 = load i64, i64* %s_a, align 8, !dbg !474
  %xor = xor i64 %2, %3, !dbg !475
  %4 = load i64, i64* %s_a, align 8, !dbg !476
  %sub = sub nsw i64 %xor, %4, !dbg !477
  store i64 %sub, i64* %a.addr, align 8, !dbg !478
  %5 = load i64, i64* %b.addr, align 8, !dbg !479
  %6 = load i64, i64* %s_b, align 8, !dbg !480
  %xor2 = xor i64 %5, %6, !dbg !481
  %7 = load i64, i64* %s_b, align 8, !dbg !482
  %sub3 = sub nsw i64 %xor2, %7, !dbg !483
  store i64 %sub3, i64* %b.addr, align 8, !dbg !484
  %8 = load i64, i64* %s_b, align 8, !dbg !485
  %9 = load i64, i64* %s_a, align 8, !dbg !486
  %xor4 = xor i64 %9, %8, !dbg !486
  store i64 %xor4, i64* %s_a, align 8, !dbg !486
  %10 = load i64, i64* %a.addr, align 8, !dbg !487
  %11 = load i64, i64* %b.addr, align 8, !dbg !488
  %call = call i64 @__udivmoddi4(i64 noundef %10, i64 noundef %11, i64* noundef null) #4, !dbg !489
  %12 = load i64, i64* %s_a, align 8, !dbg !490
  %xor5 = xor i64 %call, %12, !dbg !491
  %13 = load i64, i64* %s_a, align 8, !dbg !492
  %sub6 = sub i64 %xor5, %13, !dbg !493
  ret i64 %sub6, !dbg !494
}

; Function Attrs: noinline nounwind
define dso_local i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #0 !dbg !495 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %rem.addr = alloca i64*, align 4
  %d = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %rem, i64** %rem.addr, align 4
  %0 = load i64, i64* %a.addr, align 8, !dbg !496
  %1 = load i64, i64* %b.addr, align 8, !dbg !497
  %call = call i64 @__divdi3(i64 noundef %0, i64 noundef %1) #4, !dbg !498
  store i64 %call, i64* %d, align 8, !dbg !499
  %2 = load i64, i64* %a.addr, align 8, !dbg !500
  %3 = load i64, i64* %d, align 8, !dbg !501
  %4 = load i64, i64* %b.addr, align 8, !dbg !502
  %mul = mul nsw i64 %3, %4, !dbg !503
  %sub = sub nsw i64 %2, %mul, !dbg !504
  %5 = load i64*, i64** %rem.addr, align 4, !dbg !505
  store i64 %sub, i64* %5, align 8, !dbg !506
  %6 = load i64, i64* %d, align 8, !dbg !507
  ret i64 %6, !dbg !508
}

; Function Attrs: noinline nounwind
define dso_local i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #0 !dbg !509 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %rem.addr = alloca i32*, align 4
  %d = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %rem, i32** %rem.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !510
  %1 = load i32, i32* %b.addr, align 4, !dbg !511
  %call = call i32 @__divsi3(i32 noundef %0, i32 noundef %1) #4, !dbg !512
  store i32 %call, i32* %d, align 4, !dbg !513
  %2 = load i32, i32* %a.addr, align 4, !dbg !514
  %3 = load i32, i32* %d, align 4, !dbg !515
  %4 = load i32, i32* %b.addr, align 4, !dbg !516
  %mul = mul nsw i32 %3, %4, !dbg !517
  %sub = sub nsw i32 %2, %mul, !dbg !518
  %5 = load i32*, i32** %rem.addr, align 4, !dbg !519
  store i32 %sub, i32* %5, align 4, !dbg !520
  %6 = load i32, i32* %d, align 4, !dbg !521
  ret i32 %6, !dbg !522
}

; Function Attrs: noinline nounwind
define dso_local i32 @__divsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !523 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %bits_in_word_m1 = alloca i32, align 4
  %s_a = alloca i32, align 4
  %s_b = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 31, i32* %bits_in_word_m1, align 4, !dbg !524
  %0 = load i32, i32* %a.addr, align 4, !dbg !525
  %shr = ashr i32 %0, 31, !dbg !526
  store i32 %shr, i32* %s_a, align 4, !dbg !527
  %1 = load i32, i32* %b.addr, align 4, !dbg !528
  %shr1 = ashr i32 %1, 31, !dbg !529
  store i32 %shr1, i32* %s_b, align 4, !dbg !530
  %2 = load i32, i32* %a.addr, align 4, !dbg !531
  %3 = load i32, i32* %s_a, align 4, !dbg !532
  %xor = xor i32 %2, %3, !dbg !533
  %4 = load i32, i32* %s_a, align 4, !dbg !534
  %sub = sub nsw i32 %xor, %4, !dbg !535
  store i32 %sub, i32* %a.addr, align 4, !dbg !536
  %5 = load i32, i32* %b.addr, align 4, !dbg !537
  %6 = load i32, i32* %s_b, align 4, !dbg !538
  %xor2 = xor i32 %5, %6, !dbg !539
  %7 = load i32, i32* %s_b, align 4, !dbg !540
  %sub3 = sub nsw i32 %xor2, %7, !dbg !541
  store i32 %sub3, i32* %b.addr, align 4, !dbg !542
  %8 = load i32, i32* %s_b, align 4, !dbg !543
  %9 = load i32, i32* %s_a, align 4, !dbg !544
  %xor4 = xor i32 %9, %8, !dbg !544
  store i32 %xor4, i32* %s_a, align 4, !dbg !544
  %10 = load i32, i32* %a.addr, align 4, !dbg !545
  %11 = load i32, i32* %b.addr, align 4, !dbg !546
  %div = udiv i32 %10, %11, !dbg !547
  %12 = load i32, i32* %s_a, align 4, !dbg !548
  %xor5 = xor i32 %div, %12, !dbg !549
  %13 = load i32, i32* %s_a, align 4, !dbg !550
  %sub6 = sub i32 %xor5, %13, !dbg !551
  ret i32 %sub6, !dbg !552
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ffsdi2(i64 noundef %a) #0 !dbg !553 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %x = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !554
  %all = bitcast %union.dwords* %x to i64*, !dbg !555
  store i64 %0, i64* %all, align 8, !dbg !556
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !557
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0, !dbg !558
  %1 = load i32, i32* %low, align 8, !dbg !558
  %cmp = icmp eq i32 %1, 0, !dbg !559
  br i1 %cmp, label %if.then, label %if.end6, !dbg !560

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !561
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !562
  %2 = load i32, i32* %high, align 4, !dbg !562
  %cmp2 = icmp eq i32 %2, 0, !dbg !563
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !564

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !565
  br label %return, !dbg !565

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !566
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !567
  %3 = load i32, i32* %high5, align 4, !dbg !567
  %4 = call i32 @llvm.cttz.i32(i32 %3, i1 true), !dbg !568
  %add = add i32 %4, 33, !dbg !569
  store i32 %add, i32* %retval, align 4, !dbg !570
  br label %return, !dbg !570

if.end6:                                          ; preds = %entry
  %s7 = bitcast %union.dwords* %x to %struct.anon*, !dbg !571
  %low8 = getelementptr inbounds %struct.anon, %struct.anon* %s7, i32 0, i32 0, !dbg !572
  %5 = load i32, i32* %low8, align 8, !dbg !572
  %6 = call i32 @llvm.cttz.i32(i32 %5, i1 true), !dbg !573
  %add9 = add nsw i32 %6, 1, !dbg !574
  store i32 %add9, i32* %retval, align 4, !dbg !575
  br label %return, !dbg !575

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %7 = load i32, i32* %retval, align 4, !dbg !576
  ret i32 %7, !dbg !576
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ffssi2(i32 noundef %a) #0 !dbg !577 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !578
  %cmp = icmp eq i32 %0, 0, !dbg !579
  br i1 %cmp, label %if.then, label %if.end, !dbg !578

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !580
  br label %return, !dbg !580

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !dbg !581
  %2 = call i32 @llvm.cttz.i32(i32 %1, i1 true), !dbg !582
  %add = add nsw i32 %2, 1, !dbg !583
  store i32 %add, i32* %retval, align 4, !dbg !584
  br label %return, !dbg !584

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !585
  ret i32 %3, !dbg !585
}

; Function Attrs: noinline nounwind
define dso_local i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #0 !dbg !586 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i32, align 4
  %bits_in_word = alloca i32, align 4
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 32, i32* %bits_in_word, align 4, !dbg !587
  %0 = load i64, i64* %a.addr, align 8, !dbg !588
  %all = bitcast %union.dwords* %input to i64*, !dbg !589
  store i64 %0, i64* %all, align 8, !dbg !590
  %1 = load i32, i32* %b.addr, align 4, !dbg !591
  %and = and i32 %1, 32, !dbg !592
  %tobool = icmp ne i32 %and, 0, !dbg !592
  br i1 %tobool, label %if.then, label %if.else, !dbg !591

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !593
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !594
  store i32 0, i32* %high, align 4, !dbg !595
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !596
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !597
  %2 = load i32, i32* %high2, align 4, !dbg !597
  %3 = load i32, i32* %b.addr, align 4, !dbg !598
  %sub = sub nsw i32 %3, 32, !dbg !599
  %shr = lshr i32 %2, %sub, !dbg !600
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !601
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 0, !dbg !602
  store i32 %shr, i32* %low, align 8, !dbg !603
  br label %if.end18, !dbg !604

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %b.addr, align 4, !dbg !605
  %cmp = icmp eq i32 %4, 0, !dbg !606
  br i1 %cmp, label %if.then4, label %if.end, !dbg !605

if.then4:                                         ; preds = %if.else
  %5 = load i64, i64* %a.addr, align 8, !dbg !607
  store i64 %5, i64* %retval, align 8, !dbg !608
  br label %return, !dbg !608

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !609
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !610
  %6 = load i32, i32* %high6, align 4, !dbg !610
  %7 = load i32, i32* %b.addr, align 4, !dbg !611
  %shr7 = lshr i32 %6, %7, !dbg !612
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !613
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !614
  store i32 %shr7, i32* %high9, align 4, !dbg !615
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !616
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !617
  %8 = load i32, i32* %high11, align 4, !dbg !617
  %9 = load i32, i32* %b.addr, align 4, !dbg !618
  %sub12 = sub nsw i32 32, %9, !dbg !619
  %shl = shl i32 %8, %sub12, !dbg !620
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !621
  %low14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 0, !dbg !622
  %10 = load i32, i32* %low14, align 8, !dbg !622
  %11 = load i32, i32* %b.addr, align 4, !dbg !623
  %shr15 = lshr i32 %10, %11, !dbg !624
  %or = or i32 %shl, %shr15, !dbg !625
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !626
  %low17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 0, !dbg !627
  store i32 %or, i32* %low17, align 8, !dbg !628
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = bitcast %union.dwords* %result to i64*, !dbg !629
  %12 = load i64, i64* %all19, align 8, !dbg !629
  store i64 %12, i64* %retval, align 8, !dbg !630
  br label %return, !dbg !630

return:                                           ; preds = %if.end18, %if.then4
  %13 = load i64, i64* %retval, align 8, !dbg !631
  ret i64 %13, !dbg !631
}

; Function Attrs: noinline nounwind
define dso_local i64 @__moddi3(i64 noundef %a, i64 noundef %b) #0 !dbg !632 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %bits_in_dword_m1 = alloca i32, align 4
  %s = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i32 63, i32* %bits_in_dword_m1, align 4, !dbg !633
  %0 = load i64, i64* %b.addr, align 8, !dbg !634
  %shr = ashr i64 %0, 63, !dbg !635
  store i64 %shr, i64* %s, align 8, !dbg !636
  %1 = load i64, i64* %b.addr, align 8, !dbg !637
  %2 = load i64, i64* %s, align 8, !dbg !638
  %xor = xor i64 %1, %2, !dbg !639
  %3 = load i64, i64* %s, align 8, !dbg !640
  %sub = sub nsw i64 %xor, %3, !dbg !641
  store i64 %sub, i64* %b.addr, align 8, !dbg !642
  %4 = load i64, i64* %a.addr, align 8, !dbg !643
  %shr1 = ashr i64 %4, 63, !dbg !644
  store i64 %shr1, i64* %s, align 8, !dbg !645
  %5 = load i64, i64* %a.addr, align 8, !dbg !646
  %6 = load i64, i64* %s, align 8, !dbg !647
  %xor2 = xor i64 %5, %6, !dbg !648
  %7 = load i64, i64* %s, align 8, !dbg !649
  %sub3 = sub nsw i64 %xor2, %7, !dbg !650
  store i64 %sub3, i64* %a.addr, align 8, !dbg !651
  %8 = load i64, i64* %a.addr, align 8, !dbg !652
  %9 = load i64, i64* %b.addr, align 8, !dbg !653
  %call = call i64 @__udivmoddi4(i64 noundef %8, i64 noundef %9, i64* noundef %r) #4, !dbg !654
  %10 = load i64, i64* %r, align 8, !dbg !655
  %11 = load i64, i64* %s, align 8, !dbg !656
  %xor4 = xor i64 %10, %11, !dbg !657
  %12 = load i64, i64* %s, align 8, !dbg !658
  %sub5 = sub nsw i64 %xor4, %12, !dbg !659
  ret i64 %sub5, !dbg !660
}

; Function Attrs: noinline nounwind
define dso_local i32 @__modsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !661 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !662
  %1 = load i32, i32* %a.addr, align 4, !dbg !663
  %2 = load i32, i32* %b.addr, align 4, !dbg !664
  %call = call i32 @__divsi3(i32 noundef %1, i32 noundef %2) #4, !dbg !665
  %3 = load i32, i32* %b.addr, align 4, !dbg !666
  %mul = mul nsw i32 %call, %3, !dbg !667
  %sub = sub nsw i32 %0, %mul, !dbg !668
  ret i32 %sub, !dbg !669
}

; Function Attrs: noinline nounwind
define dso_local i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #0 !dbg !670 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %MIN = alloca i64, align 8
  %MAX = alloca i64, align 8
  %sa = alloca i64, align 8
  %abs_a = alloca i64, align 8
  %sb = alloca i64, align 8
  %abs_b = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i32 64, i32* %N, align 4, !dbg !671
  store i64 -9223372036854775808, i64* %MIN, align 8, !dbg !672
  store i64 9223372036854775807, i64* %MAX, align 8, !dbg !673
  %0 = load i64, i64* %a.addr, align 8, !dbg !674
  %cmp = icmp eq i64 %0, -9223372036854775808, !dbg !675
  br i1 %cmp, label %if.then, label %if.end4, !dbg !674

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %b.addr, align 8, !dbg !676
  %cmp1 = icmp eq i64 %1, 0, !dbg !677
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !678

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i64, i64* %b.addr, align 8, !dbg !679
  %cmp2 = icmp eq i64 %2, 1, !dbg !680
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !676

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %3 = load i64, i64* %a.addr, align 8, !dbg !681
  %4 = load i64, i64* %b.addr, align 8, !dbg !682
  %mul = mul nsw i64 %3, %4, !dbg !683
  store i64 %mul, i64* %retval, align 8, !dbg !684
  br label %return, !dbg !684

if.end:                                           ; preds = %lor.lhs.false
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !685
  unreachable, !dbg !685

if.end4:                                          ; preds = %entry
  %5 = load i64, i64* %b.addr, align 8, !dbg !686
  %cmp5 = icmp eq i64 %5, -9223372036854775808, !dbg !687
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !686

if.then6:                                         ; preds = %if.end4
  %6 = load i64, i64* %a.addr, align 8, !dbg !688
  %cmp7 = icmp eq i64 %6, 0, !dbg !689
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !690

lor.lhs.false8:                                   ; preds = %if.then6
  %7 = load i64, i64* %a.addr, align 8, !dbg !691
  %cmp9 = icmp eq i64 %7, 1, !dbg !692
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !688

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  %8 = load i64, i64* %a.addr, align 8, !dbg !693
  %9 = load i64, i64* %b.addr, align 8, !dbg !694
  %mul11 = mul nsw i64 %8, %9, !dbg !695
  store i64 %mul11, i64* %retval, align 8, !dbg !696
  br label %return, !dbg !696

if.end12:                                         ; preds = %lor.lhs.false8
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !697
  unreachable, !dbg !697

if.end13:                                         ; preds = %if.end4
  %10 = load i64, i64* %a.addr, align 8, !dbg !698
  %shr = ashr i64 %10, 63, !dbg !699
  store i64 %shr, i64* %sa, align 8, !dbg !700
  %11 = load i64, i64* %a.addr, align 8, !dbg !701
  %12 = load i64, i64* %sa, align 8, !dbg !702
  %xor = xor i64 %11, %12, !dbg !703
  %13 = load i64, i64* %sa, align 8, !dbg !704
  %sub = sub nsw i64 %xor, %13, !dbg !705
  store i64 %sub, i64* %abs_a, align 8, !dbg !706
  %14 = load i64, i64* %b.addr, align 8, !dbg !707
  %shr14 = ashr i64 %14, 63, !dbg !708
  store i64 %shr14, i64* %sb, align 8, !dbg !709
  %15 = load i64, i64* %b.addr, align 8, !dbg !710
  %16 = load i64, i64* %sb, align 8, !dbg !711
  %xor15 = xor i64 %15, %16, !dbg !712
  %17 = load i64, i64* %sb, align 8, !dbg !713
  %sub16 = sub nsw i64 %xor15, %17, !dbg !714
  store i64 %sub16, i64* %abs_b, align 8, !dbg !715
  %18 = load i64, i64* %abs_a, align 8, !dbg !716
  %cmp17 = icmp slt i64 %18, 2, !dbg !717
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !718

lor.lhs.false18:                                  ; preds = %if.end13
  %19 = load i64, i64* %abs_b, align 8, !dbg !719
  %cmp19 = icmp slt i64 %19, 2, !dbg !720
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !716

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  %20 = load i64, i64* %a.addr, align 8, !dbg !721
  %21 = load i64, i64* %b.addr, align 8, !dbg !722
  %mul21 = mul nsw i64 %20, %21, !dbg !723
  store i64 %mul21, i64* %retval, align 8, !dbg !724
  br label %return, !dbg !724

if.end22:                                         ; preds = %lor.lhs.false18
  %22 = load i64, i64* %sa, align 8, !dbg !725
  %23 = load i64, i64* %sb, align 8, !dbg !726
  %cmp23 = icmp eq i64 %22, %23, !dbg !727
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !725

if.then24:                                        ; preds = %if.end22
  %24 = load i64, i64* %abs_a, align 8, !dbg !728
  %25 = load i64, i64* %abs_b, align 8, !dbg !729
  %div = sdiv i64 9223372036854775807, %25, !dbg !730
  %cmp25 = icmp sgt i64 %24, %div, !dbg !731
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !728

if.then26:                                        ; preds = %if.then24
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !732
  unreachable, !dbg !732

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !733

if.else:                                          ; preds = %if.end22
  %26 = load i64, i64* %abs_a, align 8, !dbg !734
  %27 = load i64, i64* %abs_b, align 8, !dbg !735
  %sub28 = sub nsw i64 0, %27, !dbg !736
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !737
  %cmp30 = icmp sgt i64 %26, %div29, !dbg !738
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !734

if.then31:                                        ; preds = %if.else
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #3, !dbg !739
  unreachable, !dbg !739

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  %28 = load i64, i64* %a.addr, align 8, !dbg !740
  %29 = load i64, i64* %b.addr, align 8, !dbg !741
  %mul34 = mul nsw i64 %28, %29, !dbg !742
  store i64 %mul34, i64* %retval, align 8, !dbg !743
  br label %return, !dbg !743

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %30 = load i64, i64* %retval, align 8, !dbg !744
  ret i64 %30, !dbg !744
}

; Function Attrs: noinline nounwind
define dso_local i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !745 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %N = alloca i32, align 4
  %MIN = alloca i32, align 4
  %MAX = alloca i32, align 4
  %sa = alloca i32, align 4
  %abs_a = alloca i32, align 4
  %sb = alloca i32, align 4
  %abs_b = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 32, i32* %N, align 4, !dbg !746
  store i32 -2147483648, i32* %MIN, align 4, !dbg !747
  store i32 2147483647, i32* %MAX, align 4, !dbg !748
  %0 = load i32, i32* %a.addr, align 4, !dbg !749
  %cmp = icmp eq i32 %0, -2147483648, !dbg !750
  br i1 %cmp, label %if.then, label %if.end4, !dbg !749

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !751
  %cmp1 = icmp eq i32 %1, 0, !dbg !752
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !753

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %b.addr, align 4, !dbg !754
  %cmp2 = icmp eq i32 %2, 1, !dbg !755
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !751

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %3 = load i32, i32* %a.addr, align 4, !dbg !756
  %4 = load i32, i32* %b.addr, align 4, !dbg !757
  %mul = mul nsw i32 %3, %4, !dbg !758
  store i32 %mul, i32* %retval, align 4, !dbg !759
  br label %return, !dbg !759

if.end:                                           ; preds = %lor.lhs.false
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !760
  unreachable, !dbg !760

if.end4:                                          ; preds = %entry
  %5 = load i32, i32* %b.addr, align 4, !dbg !761
  %cmp5 = icmp eq i32 %5, -2147483648, !dbg !762
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !761

if.then6:                                         ; preds = %if.end4
  %6 = load i32, i32* %a.addr, align 4, !dbg !763
  %cmp7 = icmp eq i32 %6, 0, !dbg !764
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !765

lor.lhs.false8:                                   ; preds = %if.then6
  %7 = load i32, i32* %a.addr, align 4, !dbg !766
  %cmp9 = icmp eq i32 %7, 1, !dbg !767
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !763

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  %8 = load i32, i32* %a.addr, align 4, !dbg !768
  %9 = load i32, i32* %b.addr, align 4, !dbg !769
  %mul11 = mul nsw i32 %8, %9, !dbg !770
  store i32 %mul11, i32* %retval, align 4, !dbg !771
  br label %return, !dbg !771

if.end12:                                         ; preds = %lor.lhs.false8
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !772
  unreachable, !dbg !772

if.end13:                                         ; preds = %if.end4
  %10 = load i32, i32* %a.addr, align 4, !dbg !773
  %shr = ashr i32 %10, 31, !dbg !774
  store i32 %shr, i32* %sa, align 4, !dbg !775
  %11 = load i32, i32* %a.addr, align 4, !dbg !776
  %12 = load i32, i32* %sa, align 4, !dbg !777
  %xor = xor i32 %11, %12, !dbg !778
  %13 = load i32, i32* %sa, align 4, !dbg !779
  %sub = sub nsw i32 %xor, %13, !dbg !780
  store i32 %sub, i32* %abs_a, align 4, !dbg !781
  %14 = load i32, i32* %b.addr, align 4, !dbg !782
  %shr14 = ashr i32 %14, 31, !dbg !783
  store i32 %shr14, i32* %sb, align 4, !dbg !784
  %15 = load i32, i32* %b.addr, align 4, !dbg !785
  %16 = load i32, i32* %sb, align 4, !dbg !786
  %xor15 = xor i32 %15, %16, !dbg !787
  %17 = load i32, i32* %sb, align 4, !dbg !788
  %sub16 = sub nsw i32 %xor15, %17, !dbg !789
  store i32 %sub16, i32* %abs_b, align 4, !dbg !790
  %18 = load i32, i32* %abs_a, align 4, !dbg !791
  %cmp17 = icmp slt i32 %18, 2, !dbg !792
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !793

lor.lhs.false18:                                  ; preds = %if.end13
  %19 = load i32, i32* %abs_b, align 4, !dbg !794
  %cmp19 = icmp slt i32 %19, 2, !dbg !795
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !791

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  %20 = load i32, i32* %a.addr, align 4, !dbg !796
  %21 = load i32, i32* %b.addr, align 4, !dbg !797
  %mul21 = mul nsw i32 %20, %21, !dbg !798
  store i32 %mul21, i32* %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end22:                                         ; preds = %lor.lhs.false18
  %22 = load i32, i32* %sa, align 4, !dbg !800
  %23 = load i32, i32* %sb, align 4, !dbg !801
  %cmp23 = icmp eq i32 %22, %23, !dbg !802
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !800

if.then24:                                        ; preds = %if.end22
  %24 = load i32, i32* %abs_a, align 4, !dbg !803
  %25 = load i32, i32* %abs_b, align 4, !dbg !804
  %div = sdiv i32 2147483647, %25, !dbg !805
  %cmp25 = icmp sgt i32 %24, %div, !dbg !806
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !803

if.then26:                                        ; preds = %if.then24
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !807
  unreachable, !dbg !807

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !808

if.else:                                          ; preds = %if.end22
  %26 = load i32, i32* %abs_a, align 4, !dbg !809
  %27 = load i32, i32* %abs_b, align 4, !dbg !810
  %sub28 = sub nsw i32 0, %27, !dbg !811
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !812
  %cmp30 = icmp sgt i32 %26, %div29, !dbg !813
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !809

if.then31:                                        ; preds = %if.else
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #3, !dbg !814
  unreachable, !dbg !814

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  %28 = load i32, i32* %a.addr, align 4, !dbg !815
  %29 = load i32, i32* %b.addr, align 4, !dbg !816
  %mul34 = mul nsw i32 %28, %29, !dbg !817
  store i32 %mul34, i32* %retval, align 4, !dbg !818
  br label %return, !dbg !818

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %30 = load i32, i32* %retval, align 4, !dbg !819
  ret i32 %30, !dbg !819
}

; Function Attrs: noinline nounwind
define dso_local i32 @__paritydi2(i64 noundef %a) #0 !dbg !820 {
entry:
  %a.addr = alloca i64, align 8
  %x = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !821
  %all = bitcast %union.dwords* %x to i64*, !dbg !822
  store i64 %0, i64* %all, align 8, !dbg !823
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !824
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !825
  %1 = load i32, i32* %high, align 4, !dbg !825
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !826
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 0, !dbg !827
  %2 = load i32, i32* %low, align 8, !dbg !827
  %xor = xor i32 %1, %2, !dbg !828
  %call = call i32 @__paritysi2(i32 noundef %xor) #4, !dbg !829
  ret i32 %call, !dbg !830
}

; Function Attrs: noinline nounwind
define dso_local i32 @__paritysi2(i32 noundef %a) #0 !dbg !831 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !832
  store i32 %0, i32* %x, align 4, !dbg !833
  %1 = load i32, i32* %x, align 4, !dbg !834
  %shr = lshr i32 %1, 16, !dbg !835
  %2 = load i32, i32* %x, align 4, !dbg !836
  %xor = xor i32 %2, %shr, !dbg !836
  store i32 %xor, i32* %x, align 4, !dbg !836
  %3 = load i32, i32* %x, align 4, !dbg !837
  %shr1 = lshr i32 %3, 8, !dbg !838
  %4 = load i32, i32* %x, align 4, !dbg !839
  %xor2 = xor i32 %4, %shr1, !dbg !839
  store i32 %xor2, i32* %x, align 4, !dbg !839
  %5 = load i32, i32* %x, align 4, !dbg !840
  %shr3 = lshr i32 %5, 4, !dbg !841
  %6 = load i32, i32* %x, align 4, !dbg !842
  %xor4 = xor i32 %6, %shr3, !dbg !842
  store i32 %xor4, i32* %x, align 4, !dbg !842
  %7 = load i32, i32* %x, align 4, !dbg !843
  %and = and i32 %7, 15, !dbg !844
  %shr5 = ashr i32 27030, %and, !dbg !845
  %and6 = and i32 %shr5, 1, !dbg !846
  ret i32 %and6, !dbg !847
}

; Function Attrs: noinline nounwind
define dso_local i32 @__popcountdi2(i64 noundef %a) #0 !dbg !848 {
entry:
  %a.addr = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !849
  store i64 %0, i64* %x2, align 8, !dbg !850
  %1 = load i64, i64* %x2, align 8, !dbg !851
  %2 = load i64, i64* %x2, align 8, !dbg !852
  %shr = lshr i64 %2, 1, !dbg !853
  %and = and i64 %shr, 6148914691236517205, !dbg !854
  %sub = sub i64 %1, %and, !dbg !855
  store i64 %sub, i64* %x2, align 8, !dbg !856
  %3 = load i64, i64* %x2, align 8, !dbg !857
  %shr1 = lshr i64 %3, 2, !dbg !858
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !859
  %4 = load i64, i64* %x2, align 8, !dbg !860
  %and3 = and i64 %4, 3689348814741910323, !dbg !861
  %add = add i64 %and2, %and3, !dbg !862
  store i64 %add, i64* %x2, align 8, !dbg !863
  %5 = load i64, i64* %x2, align 8, !dbg !864
  %6 = load i64, i64* %x2, align 8, !dbg !865
  %shr4 = lshr i64 %6, 4, !dbg !866
  %add5 = add i64 %5, %shr4, !dbg !867
  %and6 = and i64 %add5, 1085102592571150095, !dbg !868
  store i64 %and6, i64* %x2, align 8, !dbg !869
  %7 = load i64, i64* %x2, align 8, !dbg !870
  %8 = load i64, i64* %x2, align 8, !dbg !871
  %shr7 = lshr i64 %8, 32, !dbg !872
  %add8 = add i64 %7, %shr7, !dbg !873
  %conv = trunc i64 %add8 to i32, !dbg !874
  store i32 %conv, i32* %x, align 4, !dbg !875
  %9 = load i32, i32* %x, align 4, !dbg !876
  %10 = load i32, i32* %x, align 4, !dbg !877
  %shr9 = lshr i32 %10, 16, !dbg !878
  %add10 = add i32 %9, %shr9, !dbg !879
  store i32 %add10, i32* %x, align 4, !dbg !880
  %11 = load i32, i32* %x, align 4, !dbg !881
  %12 = load i32, i32* %x, align 4, !dbg !882
  %shr11 = lshr i32 %12, 8, !dbg !883
  %add12 = add i32 %11, %shr11, !dbg !884
  %and13 = and i32 %add12, 127, !dbg !885
  ret i32 %and13, !dbg !886
}

; Function Attrs: noinline nounwind
define dso_local i32 @__popcountsi2(i32 noundef %a) #0 !dbg !887 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !888
  store i32 %0, i32* %x, align 4, !dbg !889
  %1 = load i32, i32* %x, align 4, !dbg !890
  %2 = load i32, i32* %x, align 4, !dbg !891
  %shr = lshr i32 %2, 1, !dbg !892
  %and = and i32 %shr, 1431655765, !dbg !893
  %sub = sub i32 %1, %and, !dbg !894
  store i32 %sub, i32* %x, align 4, !dbg !895
  %3 = load i32, i32* %x, align 4, !dbg !896
  %shr1 = lshr i32 %3, 2, !dbg !897
  %and2 = and i32 %shr1, 858993459, !dbg !898
  %4 = load i32, i32* %x, align 4, !dbg !899
  %and3 = and i32 %4, 858993459, !dbg !900
  %add = add i32 %and2, %and3, !dbg !901
  store i32 %add, i32* %x, align 4, !dbg !902
  %5 = load i32, i32* %x, align 4, !dbg !903
  %6 = load i32, i32* %x, align 4, !dbg !904
  %shr4 = lshr i32 %6, 4, !dbg !905
  %add5 = add i32 %5, %shr4, !dbg !906
  %and6 = and i32 %add5, 252645135, !dbg !907
  store i32 %and6, i32* %x, align 4, !dbg !908
  %7 = load i32, i32* %x, align 4, !dbg !909
  %8 = load i32, i32* %x, align 4, !dbg !910
  %shr7 = lshr i32 %8, 16, !dbg !911
  %add8 = add i32 %7, %shr7, !dbg !912
  store i32 %add8, i32* %x, align 4, !dbg !913
  %9 = load i32, i32* %x, align 4, !dbg !914
  %10 = load i32, i32* %x, align 4, !dbg !915
  %shr9 = lshr i32 %10, 8, !dbg !916
  %add10 = add i32 %9, %shr9, !dbg !917
  %and11 = and i32 %add10, 63, !dbg !918
  ret i32 %and11, !dbg !919
}

; Function Attrs: noinline nounwind
define dso_local i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #0 !dbg !920 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %s = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !921
  %1 = load i64, i64* %b.addr, align 8, !dbg !922
  %sub = sub i64 %0, %1, !dbg !923
  store i64 %sub, i64* %s, align 8, !dbg !924
  %2 = load i64, i64* %b.addr, align 8, !dbg !925
  %cmp = icmp sge i64 %2, 0, !dbg !926
  br i1 %cmp, label %if.then, label %if.else, !dbg !925

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %s, align 8, !dbg !927
  %4 = load i64, i64* %a.addr, align 8, !dbg !928
  %cmp1 = icmp sgt i64 %3, %4, !dbg !929
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !927

if.then2:                                         ; preds = %if.then
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #3, !dbg !930
  unreachable, !dbg !930

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !931

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %s, align 8, !dbg !932
  %6 = load i64, i64* %a.addr, align 8, !dbg !933
  %cmp3 = icmp sle i64 %5, %6, !dbg !934
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !932

if.then4:                                         ; preds = %if.else
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #3, !dbg !935
  unreachable, !dbg !935

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %7 = load i64, i64* %s, align 8, !dbg !936
  ret i64 %7, !dbg !937
}

; Function Attrs: noinline nounwind
define dso_local i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !938 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !939
  %1 = load i32, i32* %b.addr, align 4, !dbg !940
  %sub = sub i32 %0, %1, !dbg !941
  store i32 %sub, i32* %s, align 4, !dbg !942
  %2 = load i32, i32* %b.addr, align 4, !dbg !943
  %cmp = icmp sge i32 %2, 0, !dbg !944
  br i1 %cmp, label %if.then, label %if.else, !dbg !943

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %s, align 4, !dbg !945
  %4 = load i32, i32* %a.addr, align 4, !dbg !946
  %cmp1 = icmp sgt i32 %3, %4, !dbg !947
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !945

if.then2:                                         ; preds = %if.then
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #3, !dbg !948
  unreachable, !dbg !948

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !949

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %s, align 4, !dbg !950
  %6 = load i32, i32* %a.addr, align 4, !dbg !951
  %cmp3 = icmp sle i32 %5, %6, !dbg !952
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !950

if.then4:                                         ; preds = %if.else
  call void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #3, !dbg !953
  unreachable, !dbg !953

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %7 = load i32, i32* %s, align 4, !dbg !954
  ret i32 %7, !dbg !955
}

; Function Attrs: noinline nounwind
define dso_local i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #0 !dbg !956 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !957
  %all = bitcast %union.dwords* %x to i64*, !dbg !958
  store i64 %0, i64* %all, align 8, !dbg !959
  %1 = load i64, i64* %b.addr, align 8, !dbg !960
  %all1 = bitcast %union.dwords* %y to i64*, !dbg !961
  store i64 %1, i64* %all1, align 8, !dbg !962
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !963
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !964
  %2 = load i32, i32* %high, align 4, !dbg !964
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !965
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !966
  %3 = load i32, i32* %high3, align 4, !dbg !966
  %cmp = icmp ult i32 %2, %3, !dbg !967
  br i1 %cmp, label %if.then, label %if.end, !dbg !968

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !969
  br label %return, !dbg !969

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !970
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !971
  %4 = load i32, i32* %high5, align 4, !dbg !971
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !972
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !973
  %5 = load i32, i32* %high7, align 4, !dbg !973
  %cmp8 = icmp ugt i32 %4, %5, !dbg !974
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !975

if.then9:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !976
  br label %return, !dbg !976

if.end10:                                         ; preds = %if.end
  %s11 = bitcast %union.dwords* %x to %struct.anon*, !dbg !977
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 0, !dbg !978
  %6 = load i32, i32* %low, align 8, !dbg !978
  %s12 = bitcast %union.dwords* %y to %struct.anon*, !dbg !979
  %low13 = getelementptr inbounds %struct.anon, %struct.anon* %s12, i32 0, i32 0, !dbg !980
  %7 = load i32, i32* %low13, align 8, !dbg !980
  %cmp14 = icmp ult i32 %6, %7, !dbg !981
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !982

if.then15:                                        ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !983
  br label %return, !dbg !983

if.end16:                                         ; preds = %if.end10
  %s17 = bitcast %union.dwords* %x to %struct.anon*, !dbg !984
  %low18 = getelementptr inbounds %struct.anon, %struct.anon* %s17, i32 0, i32 0, !dbg !985
  %8 = load i32, i32* %low18, align 8, !dbg !985
  %s19 = bitcast %union.dwords* %y to %struct.anon*, !dbg !986
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %s19, i32 0, i32 0, !dbg !987
  %9 = load i32, i32* %low20, align 8, !dbg !987
  %cmp21 = icmp ugt i32 %8, %9, !dbg !988
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !989

if.then22:                                        ; preds = %if.end16
  store i32 2, i32* %retval, align 4, !dbg !990
  br label %return, !dbg !990

if.end23:                                         ; preds = %if.end16
  store i32 1, i32* %retval, align 4, !dbg !991
  br label %return, !dbg !991

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !992
  ret i32 %10, !dbg !992
}

; Function Attrs: noinline nounwind
define dso_local i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #0 !dbg !993 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !994
  %1 = load i64, i64* %b.addr, align 8, !dbg !995
  %call = call i64 @__udivmoddi4(i64 noundef %0, i64 noundef %1, i64* noundef null) #4, !dbg !996
  ret i64 %call, !dbg !997
}

; Function Attrs: noinline nounwind
define dso_local i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #0 !dbg !998 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %rem.addr = alloca i64*, align 4
  %n_uword_bits = alloca i32, align 4
  %n_udword_bits = alloca i32, align 4
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %sr = alloca i32, align 4
  %carry = alloca i32, align 4
  %s353 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %rem, i64** %rem.addr, align 4
  store i32 32, i32* %n_uword_bits, align 4, !dbg !999
  store i32 64, i32* %n_udword_bits, align 4, !dbg !1000
  %0 = load i64, i64* %a.addr, align 8, !dbg !1001
  %all = bitcast %union.dwords* %n to i64*, !dbg !1002
  store i64 %0, i64* %all, align 8, !dbg !1003
  %1 = load i64, i64* %b.addr, align 8, !dbg !1004
  %all1 = bitcast %union.dwords* %d to i64*, !dbg !1005
  store i64 %1, i64* %all1, align 8, !dbg !1006
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !1007
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1008
  %2 = load i32, i32* %high, align 4, !dbg !1008
  %cmp = icmp eq i32 %2, 0, !dbg !1009
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1010

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1011
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1012
  %3 = load i32, i32* %high3, align 4, !dbg !1012
  %cmp4 = icmp eq i32 %3, 0, !dbg !1013
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1014

if.then5:                                         ; preds = %if.then
  %4 = load i64*, i64** %rem.addr, align 4, !dbg !1015
  %tobool = icmp ne i64* %4, null, !dbg !1015
  br i1 %tobool, label %if.then6, label %if.end, !dbg !1015

if.then6:                                         ; preds = %if.then5
  %s7 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1016
  %low = getelementptr inbounds %struct.anon, %struct.anon* %s7, i32 0, i32 0, !dbg !1017
  %5 = load i32, i32* %low, align 8, !dbg !1017
  %s8 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1018
  %low9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 0, !dbg !1019
  %6 = load i32, i32* %low9, align 8, !dbg !1019
  %rem10 = urem i32 %5, %6, !dbg !1020
  %conv = zext i32 %rem10 to i64, !dbg !1021
  %7 = load i64*, i64** %rem.addr, align 4, !dbg !1022
  store i64 %conv, i64* %7, align 8, !dbg !1023
  br label %if.end, !dbg !1024

if.end:                                           ; preds = %if.then6, %if.then5
  %s11 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1025
  %low12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 0, !dbg !1026
  %8 = load i32, i32* %low12, align 8, !dbg !1026
  %s13 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1027
  %low14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 0, !dbg !1028
  %9 = load i32, i32* %low14, align 8, !dbg !1028
  %div = udiv i32 %8, %9, !dbg !1029
  %conv15 = zext i32 %div to i64, !dbg !1030
  store i64 %conv15, i64* %retval, align 8, !dbg !1031
  br label %return, !dbg !1031

if.end16:                                         ; preds = %if.then
  %10 = load i64*, i64** %rem.addr, align 4, !dbg !1032
  %tobool17 = icmp ne i64* %10, null, !dbg !1032
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !1032

if.then18:                                        ; preds = %if.end16
  %s19 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1033
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %s19, i32 0, i32 0, !dbg !1034
  %11 = load i32, i32* %low20, align 8, !dbg !1034
  %conv21 = zext i32 %11 to i64, !dbg !1035
  %12 = load i64*, i64** %rem.addr, align 4, !dbg !1036
  store i64 %conv21, i64* %12, align 8, !dbg !1037
  br label %if.end22, !dbg !1038

if.end22:                                         ; preds = %if.then18, %if.end16
  store i64 0, i64* %retval, align 8, !dbg !1039
  br label %return, !dbg !1039

if.end23:                                         ; preds = %entry
  %s24 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1040
  %low25 = getelementptr inbounds %struct.anon, %struct.anon* %s24, i32 0, i32 0, !dbg !1041
  %13 = load i32, i32* %low25, align 8, !dbg !1041
  %cmp26 = icmp eq i32 %13, 0, !dbg !1042
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1043

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1044
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1045
  %14 = load i32, i32* %high30, align 4, !dbg !1045
  %cmp31 = icmp eq i32 %14, 0, !dbg !1046
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1047

if.then33:                                        ; preds = %if.then28
  %15 = load i64*, i64** %rem.addr, align 4, !dbg !1048
  %tobool34 = icmp ne i64* %15, null, !dbg !1048
  br i1 %tobool34, label %if.then35, label %if.end42, !dbg !1048

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1049
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1050
  %16 = load i32, i32* %high37, align 4, !dbg !1050
  %s38 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1051
  %low39 = getelementptr inbounds %struct.anon, %struct.anon* %s38, i32 0, i32 0, !dbg !1052
  %17 = load i32, i32* %low39, align 8, !dbg !1052
  %rem40 = urem i32 %16, %17, !dbg !1053
  %conv41 = zext i32 %rem40 to i64, !dbg !1054
  %18 = load i64*, i64** %rem.addr, align 4, !dbg !1055
  store i64 %conv41, i64* %18, align 8, !dbg !1056
  br label %if.end42, !dbg !1057

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1058
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1059
  %19 = load i32, i32* %high44, align 4, !dbg !1059
  %s45 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1060
  %low46 = getelementptr inbounds %struct.anon, %struct.anon* %s45, i32 0, i32 0, !dbg !1061
  %20 = load i32, i32* %low46, align 8, !dbg !1061
  %div47 = udiv i32 %19, %20, !dbg !1062
  %conv48 = zext i32 %div47 to i64, !dbg !1063
  store i64 %conv48, i64* %retval, align 8, !dbg !1064
  br label %return, !dbg !1064

if.end49:                                         ; preds = %if.then28
  %s50 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1065
  %low51 = getelementptr inbounds %struct.anon, %struct.anon* %s50, i32 0, i32 0, !dbg !1066
  %21 = load i32, i32* %low51, align 8, !dbg !1066
  %cmp52 = icmp eq i32 %21, 0, !dbg !1067
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1068

if.then54:                                        ; preds = %if.end49
  %22 = load i64*, i64** %rem.addr, align 4, !dbg !1069
  %tobool55 = icmp ne i64* %22, null, !dbg !1069
  br i1 %tobool55, label %if.then56, label %if.end67, !dbg !1069

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1070
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1071
  %23 = load i32, i32* %high58, align 4, !dbg !1071
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1072
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1073
  %24 = load i32, i32* %high60, align 4, !dbg !1073
  %rem61 = urem i32 %23, %24, !dbg !1074
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1075
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1076
  store i32 %rem61, i32* %high63, align 4, !dbg !1077
  %s64 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1078
  %low65 = getelementptr inbounds %struct.anon, %struct.anon* %s64, i32 0, i32 0, !dbg !1079
  store i32 0, i32* %low65, align 8, !dbg !1080
  %all66 = bitcast %union.dwords* %r to i64*, !dbg !1081
  %25 = load i64, i64* %all66, align 8, !dbg !1081
  %26 = load i64*, i64** %rem.addr, align 4, !dbg !1082
  store i64 %25, i64* %26, align 8, !dbg !1083
  br label %if.end67, !dbg !1084

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1085
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1086
  %27 = load i32, i32* %high69, align 4, !dbg !1086
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1087
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1088
  %28 = load i32, i32* %high71, align 4, !dbg !1088
  %div72 = udiv i32 %27, %28, !dbg !1089
  %conv73 = zext i32 %div72 to i64, !dbg !1090
  store i64 %conv73, i64* %retval, align 8, !dbg !1091
  br label %return, !dbg !1091

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1092
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !1093
  %29 = load i32, i32* %high76, align 4, !dbg !1093
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1094
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !1095
  %30 = load i32, i32* %high78, align 4, !dbg !1095
  %sub = sub i32 %30, 1, !dbg !1096
  %and = and i32 %29, %sub, !dbg !1097
  %cmp79 = icmp eq i32 %and, 0, !dbg !1098
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1099

if.then81:                                        ; preds = %if.end74
  %31 = load i64*, i64** %rem.addr, align 4, !dbg !1100
  %tobool82 = icmp ne i64* %31, null, !dbg !1100
  br i1 %tobool82, label %if.then83, label %if.end97, !dbg !1100

if.then83:                                        ; preds = %if.then81
  %s84 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1101
  %low85 = getelementptr inbounds %struct.anon, %struct.anon* %s84, i32 0, i32 0, !dbg !1102
  %32 = load i32, i32* %low85, align 8, !dbg !1102
  %s86 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1103
  %low87 = getelementptr inbounds %struct.anon, %struct.anon* %s86, i32 0, i32 0, !dbg !1104
  store i32 %32, i32* %low87, align 8, !dbg !1105
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1106
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !1107
  %33 = load i32, i32* %high89, align 4, !dbg !1107
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1108
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !1109
  %34 = load i32, i32* %high91, align 4, !dbg !1109
  %sub92 = sub i32 %34, 1, !dbg !1110
  %and93 = and i32 %33, %sub92, !dbg !1111
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1112
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1113
  store i32 %and93, i32* %high95, align 4, !dbg !1114
  %all96 = bitcast %union.dwords* %r to i64*, !dbg !1115
  %35 = load i64, i64* %all96, align 8, !dbg !1115
  %36 = load i64*, i64** %rem.addr, align 4, !dbg !1116
  store i64 %35, i64* %36, align 8, !dbg !1117
  br label %if.end97, !dbg !1118

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1119
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1120
  %37 = load i32, i32* %high99, align 4, !dbg !1120
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1121
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1122
  %38 = load i32, i32* %high101, align 4, !dbg !1122
  %39 = call i32 @llvm.cttz.i32(i32 %38, i1 true), !dbg !1123
  %shr = lshr i32 %37, %39, !dbg !1124
  %conv102 = zext i32 %shr to i64, !dbg !1125
  store i64 %conv102, i64* %retval, align 8, !dbg !1126
  br label %return, !dbg !1126

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1127
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1128
  %40 = load i32, i32* %high105, align 4, !dbg !1128
  %41 = call i32 @llvm.ctlz.i32(i32 %40, i1 true), !dbg !1129
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1130
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1131
  %42 = load i32, i32* %high107, align 4, !dbg !1131
  %43 = call i32 @llvm.ctlz.i32(i32 %42, i1 true), !dbg !1132
  %sub108 = sub nsw i32 %41, %43, !dbg !1133
  store i32 %sub108, i32* %sr, align 4, !dbg !1134
  %44 = load i32, i32* %sr, align 4, !dbg !1135
  %cmp109 = icmp ugt i32 %44, 30, !dbg !1136
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1135

if.then111:                                       ; preds = %if.end103
  %45 = load i64*, i64** %rem.addr, align 4, !dbg !1137
  %tobool112 = icmp ne i64* %45, null, !dbg !1137
  br i1 %tobool112, label %if.then113, label %if.end115, !dbg !1137

if.then113:                                       ; preds = %if.then111
  %all114 = bitcast %union.dwords* %n to i64*, !dbg !1138
  %46 = load i64, i64* %all114, align 8, !dbg !1138
  %47 = load i64*, i64** %rem.addr, align 4, !dbg !1139
  store i64 %46, i64* %47, align 8, !dbg !1140
  br label %if.end115, !dbg !1141

if.end115:                                        ; preds = %if.then113, %if.then111
  store i64 0, i64* %retval, align 8, !dbg !1142
  br label %return, !dbg !1142

if.end116:                                        ; preds = %if.end103
  %48 = load i32, i32* %sr, align 4, !dbg !1143
  %inc = add i32 %48, 1, !dbg !1143
  store i32 %inc, i32* %sr, align 4, !dbg !1143
  %s117 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1144
  %low118 = getelementptr inbounds %struct.anon, %struct.anon* %s117, i32 0, i32 0, !dbg !1145
  store i32 0, i32* %low118, align 8, !dbg !1146
  %s119 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1147
  %low120 = getelementptr inbounds %struct.anon, %struct.anon* %s119, i32 0, i32 0, !dbg !1148
  %49 = load i32, i32* %low120, align 8, !dbg !1148
  %50 = load i32, i32* %sr, align 4, !dbg !1149
  %sub121 = sub i32 32, %50, !dbg !1150
  %shl = shl i32 %49, %sub121, !dbg !1151
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1152
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1153
  store i32 %shl, i32* %high123, align 4, !dbg !1154
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1155
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1156
  %51 = load i32, i32* %high125, align 4, !dbg !1156
  %52 = load i32, i32* %sr, align 4, !dbg !1157
  %shr126 = lshr i32 %51, %52, !dbg !1158
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1159
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1160
  store i32 %shr126, i32* %high128, align 4, !dbg !1161
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1162
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1163
  %53 = load i32, i32* %high130, align 4, !dbg !1163
  %54 = load i32, i32* %sr, align 4, !dbg !1164
  %sub131 = sub i32 32, %54, !dbg !1165
  %shl132 = shl i32 %53, %sub131, !dbg !1166
  %s133 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1167
  %low134 = getelementptr inbounds %struct.anon, %struct.anon* %s133, i32 0, i32 0, !dbg !1168
  %55 = load i32, i32* %low134, align 8, !dbg !1168
  %56 = load i32, i32* %sr, align 4, !dbg !1169
  %shr135 = lshr i32 %55, %56, !dbg !1170
  %or = or i32 %shl132, %shr135, !dbg !1171
  %s136 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1172
  %low137 = getelementptr inbounds %struct.anon, %struct.anon* %s136, i32 0, i32 0, !dbg !1173
  store i32 %or, i32* %low137, align 8, !dbg !1174
  br label %if.end317, !dbg !1175

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1176
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1177
  %57 = load i32, i32* %high139, align 4, !dbg !1177
  %cmp140 = icmp eq i32 %57, 0, !dbg !1178
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1179

if.then142:                                       ; preds = %if.else
  %s143 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1180
  %low144 = getelementptr inbounds %struct.anon, %struct.anon* %s143, i32 0, i32 0, !dbg !1181
  %58 = load i32, i32* %low144, align 8, !dbg !1181
  %s145 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1182
  %low146 = getelementptr inbounds %struct.anon, %struct.anon* %s145, i32 0, i32 0, !dbg !1183
  %59 = load i32, i32* %low146, align 8, !dbg !1183
  %sub147 = sub i32 %59, 1, !dbg !1184
  %and148 = and i32 %58, %sub147, !dbg !1185
  %cmp149 = icmp eq i32 %and148, 0, !dbg !1186
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1187

if.then151:                                       ; preds = %if.then142
  %60 = load i64*, i64** %rem.addr, align 4, !dbg !1188
  %tobool152 = icmp ne i64* %60, null, !dbg !1188
  br i1 %tobool152, label %if.then153, label %if.end161, !dbg !1188

if.then153:                                       ; preds = %if.then151
  %s154 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1189
  %low155 = getelementptr inbounds %struct.anon, %struct.anon* %s154, i32 0, i32 0, !dbg !1190
  %61 = load i32, i32* %low155, align 8, !dbg !1190
  %s156 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1191
  %low157 = getelementptr inbounds %struct.anon, %struct.anon* %s156, i32 0, i32 0, !dbg !1192
  %62 = load i32, i32* %low157, align 8, !dbg !1192
  %sub158 = sub i32 %62, 1, !dbg !1193
  %and159 = and i32 %61, %sub158, !dbg !1194
  %conv160 = zext i32 %and159 to i64, !dbg !1195
  %63 = load i64*, i64** %rem.addr, align 4, !dbg !1196
  store i64 %conv160, i64* %63, align 8, !dbg !1197
  br label %if.end161, !dbg !1198

if.end161:                                        ; preds = %if.then153, %if.then151
  %s162 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1199
  %low163 = getelementptr inbounds %struct.anon, %struct.anon* %s162, i32 0, i32 0, !dbg !1200
  %64 = load i32, i32* %low163, align 8, !dbg !1200
  %cmp164 = icmp eq i32 %64, 1, !dbg !1201
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1202

if.then166:                                       ; preds = %if.end161
  %all167 = bitcast %union.dwords* %n to i64*, !dbg !1203
  %65 = load i64, i64* %all167, align 8, !dbg !1203
  store i64 %65, i64* %retval, align 8, !dbg !1204
  br label %return, !dbg !1204

if.end168:                                        ; preds = %if.end161
  %s169 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1205
  %low170 = getelementptr inbounds %struct.anon, %struct.anon* %s169, i32 0, i32 0, !dbg !1206
  %66 = load i32, i32* %low170, align 8, !dbg !1206
  %67 = call i32 @llvm.cttz.i32(i32 %66, i1 true), !dbg !1207
  store i32 %67, i32* %sr, align 4, !dbg !1208
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1209
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1210
  %68 = load i32, i32* %high172, align 4, !dbg !1210
  %69 = load i32, i32* %sr, align 4, !dbg !1211
  %shr173 = lshr i32 %68, %69, !dbg !1212
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1213
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1214
  store i32 %shr173, i32* %high175, align 4, !dbg !1215
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1216
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1217
  %70 = load i32, i32* %high177, align 4, !dbg !1217
  %71 = load i32, i32* %sr, align 4, !dbg !1218
  %sub178 = sub i32 32, %71, !dbg !1219
  %shl179 = shl i32 %70, %sub178, !dbg !1220
  %s180 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1221
  %low181 = getelementptr inbounds %struct.anon, %struct.anon* %s180, i32 0, i32 0, !dbg !1222
  %72 = load i32, i32* %low181, align 8, !dbg !1222
  %73 = load i32, i32* %sr, align 4, !dbg !1223
  %shr182 = lshr i32 %72, %73, !dbg !1224
  %or183 = or i32 %shl179, %shr182, !dbg !1225
  %s184 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1226
  %low185 = getelementptr inbounds %struct.anon, %struct.anon* %s184, i32 0, i32 0, !dbg !1227
  store i32 %or183, i32* %low185, align 8, !dbg !1228
  %all186 = bitcast %union.dwords* %q to i64*, !dbg !1229
  %74 = load i64, i64* %all186, align 8, !dbg !1229
  store i64 %74, i64* %retval, align 8, !dbg !1230
  br label %return, !dbg !1230

if.end187:                                        ; preds = %if.then142
  %s188 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1231
  %low189 = getelementptr inbounds %struct.anon, %struct.anon* %s188, i32 0, i32 0, !dbg !1232
  %75 = load i32, i32* %low189, align 8, !dbg !1232
  %76 = call i32 @llvm.ctlz.i32(i32 %75, i1 true), !dbg !1233
  %add = add i32 33, %76, !dbg !1234
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1235
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1236
  %77 = load i32, i32* %high191, align 4, !dbg !1236
  %78 = call i32 @llvm.ctlz.i32(i32 %77, i1 true), !dbg !1237
  %sub192 = sub i32 %add, %78, !dbg !1238
  store i32 %sub192, i32* %sr, align 4, !dbg !1239
  %79 = load i32, i32* %sr, align 4, !dbg !1240
  %cmp193 = icmp eq i32 %79, 32, !dbg !1241
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1240

if.then195:                                       ; preds = %if.end187
  %s196 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1242
  %low197 = getelementptr inbounds %struct.anon, %struct.anon* %s196, i32 0, i32 0, !dbg !1243
  store i32 0, i32* %low197, align 8, !dbg !1244
  %s198 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1245
  %low199 = getelementptr inbounds %struct.anon, %struct.anon* %s198, i32 0, i32 0, !dbg !1246
  %80 = load i32, i32* %low199, align 8, !dbg !1246
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1247
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1248
  store i32 %80, i32* %high201, align 4, !dbg !1249
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1250
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1251
  store i32 0, i32* %high203, align 4, !dbg !1252
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1253
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1254
  %81 = load i32, i32* %high205, align 4, !dbg !1254
  %s206 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1255
  %low207 = getelementptr inbounds %struct.anon, %struct.anon* %s206, i32 0, i32 0, !dbg !1256
  store i32 %81, i32* %low207, align 8, !dbg !1257
  br label %if.end262, !dbg !1258

if.else208:                                       ; preds = %if.end187
  %82 = load i32, i32* %sr, align 4, !dbg !1259
  %cmp209 = icmp ult i32 %82, 32, !dbg !1260
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1259

if.then211:                                       ; preds = %if.else208
  %s212 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1261
  %low213 = getelementptr inbounds %struct.anon, %struct.anon* %s212, i32 0, i32 0, !dbg !1262
  store i32 0, i32* %low213, align 8, !dbg !1263
  %s214 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1264
  %low215 = getelementptr inbounds %struct.anon, %struct.anon* %s214, i32 0, i32 0, !dbg !1265
  %83 = load i32, i32* %low215, align 8, !dbg !1265
  %84 = load i32, i32* %sr, align 4, !dbg !1266
  %sub216 = sub i32 32, %84, !dbg !1267
  %shl217 = shl i32 %83, %sub216, !dbg !1268
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1269
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1270
  store i32 %shl217, i32* %high219, align 4, !dbg !1271
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1272
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1273
  %85 = load i32, i32* %high221, align 4, !dbg !1273
  %86 = load i32, i32* %sr, align 4, !dbg !1274
  %shr222 = lshr i32 %85, %86, !dbg !1275
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1276
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1277
  store i32 %shr222, i32* %high224, align 4, !dbg !1278
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1279
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1280
  %87 = load i32, i32* %high226, align 4, !dbg !1280
  %88 = load i32, i32* %sr, align 4, !dbg !1281
  %sub227 = sub i32 32, %88, !dbg !1282
  %shl228 = shl i32 %87, %sub227, !dbg !1283
  %s229 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1284
  %low230 = getelementptr inbounds %struct.anon, %struct.anon* %s229, i32 0, i32 0, !dbg !1285
  %89 = load i32, i32* %low230, align 8, !dbg !1285
  %90 = load i32, i32* %sr, align 4, !dbg !1286
  %shr231 = lshr i32 %89, %90, !dbg !1287
  %or232 = or i32 %shl228, %shr231, !dbg !1288
  %s233 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1289
  %low234 = getelementptr inbounds %struct.anon, %struct.anon* %s233, i32 0, i32 0, !dbg !1290
  store i32 %or232, i32* %low234, align 8, !dbg !1291
  br label %if.end261, !dbg !1292

if.else235:                                       ; preds = %if.else208
  %s236 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1293
  %low237 = getelementptr inbounds %struct.anon, %struct.anon* %s236, i32 0, i32 0, !dbg !1294
  %91 = load i32, i32* %low237, align 8, !dbg !1294
  %92 = load i32, i32* %sr, align 4, !dbg !1295
  %sub238 = sub i32 64, %92, !dbg !1296
  %shl239 = shl i32 %91, %sub238, !dbg !1297
  %s240 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1298
  %low241 = getelementptr inbounds %struct.anon, %struct.anon* %s240, i32 0, i32 0, !dbg !1299
  store i32 %shl239, i32* %low241, align 8, !dbg !1300
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1301
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1302
  %93 = load i32, i32* %high243, align 4, !dbg !1302
  %94 = load i32, i32* %sr, align 4, !dbg !1303
  %sub244 = sub i32 64, %94, !dbg !1304
  %shl245 = shl i32 %93, %sub244, !dbg !1305
  %s246 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1306
  %low247 = getelementptr inbounds %struct.anon, %struct.anon* %s246, i32 0, i32 0, !dbg !1307
  %95 = load i32, i32* %low247, align 8, !dbg !1307
  %96 = load i32, i32* %sr, align 4, !dbg !1308
  %sub248 = sub i32 %96, 32, !dbg !1309
  %shr249 = lshr i32 %95, %sub248, !dbg !1310
  %or250 = or i32 %shl245, %shr249, !dbg !1311
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1312
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1313
  store i32 %or250, i32* %high252, align 4, !dbg !1314
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1315
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1316
  store i32 0, i32* %high254, align 4, !dbg !1317
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1318
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1319
  %97 = load i32, i32* %high256, align 4, !dbg !1319
  %98 = load i32, i32* %sr, align 4, !dbg !1320
  %sub257 = sub i32 %98, 32, !dbg !1321
  %shr258 = lshr i32 %97, %sub257, !dbg !1322
  %s259 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1323
  %low260 = getelementptr inbounds %struct.anon, %struct.anon* %s259, i32 0, i32 0, !dbg !1324
  store i32 %shr258, i32* %low260, align 8, !dbg !1325
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1326

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1327
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1328
  %99 = load i32, i32* %high265, align 4, !dbg !1328
  %100 = call i32 @llvm.ctlz.i32(i32 %99, i1 true), !dbg !1329
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1330
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1331
  %101 = load i32, i32* %high267, align 4, !dbg !1331
  %102 = call i32 @llvm.ctlz.i32(i32 %101, i1 true), !dbg !1332
  %sub268 = sub nsw i32 %100, %102, !dbg !1333
  store i32 %sub268, i32* %sr, align 4, !dbg !1334
  %103 = load i32, i32* %sr, align 4, !dbg !1335
  %cmp269 = icmp ugt i32 %103, 31, !dbg !1336
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1335

if.then271:                                       ; preds = %if.else263
  %104 = load i64*, i64** %rem.addr, align 4, !dbg !1337
  %tobool272 = icmp ne i64* %104, null, !dbg !1337
  br i1 %tobool272, label %if.then273, label %if.end275, !dbg !1337

if.then273:                                       ; preds = %if.then271
  %all274 = bitcast %union.dwords* %n to i64*, !dbg !1338
  %105 = load i64, i64* %all274, align 8, !dbg !1338
  %106 = load i64*, i64** %rem.addr, align 4, !dbg !1339
  store i64 %105, i64* %106, align 8, !dbg !1340
  br label %if.end275, !dbg !1341

if.end275:                                        ; preds = %if.then273, %if.then271
  store i64 0, i64* %retval, align 8, !dbg !1342
  br label %return, !dbg !1342

if.end276:                                        ; preds = %if.else263
  %107 = load i32, i32* %sr, align 4, !dbg !1343
  %inc277 = add i32 %107, 1, !dbg !1343
  store i32 %inc277, i32* %sr, align 4, !dbg !1343
  %s278 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1344
  %low279 = getelementptr inbounds %struct.anon, %struct.anon* %s278, i32 0, i32 0, !dbg !1345
  store i32 0, i32* %low279, align 8, !dbg !1346
  %108 = load i32, i32* %sr, align 4, !dbg !1347
  %cmp280 = icmp eq i32 %108, 32, !dbg !1348
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1347

if.then282:                                       ; preds = %if.end276
  %s283 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1349
  %low284 = getelementptr inbounds %struct.anon, %struct.anon* %s283, i32 0, i32 0, !dbg !1350
  %109 = load i32, i32* %low284, align 8, !dbg !1350
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1351
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1352
  store i32 %109, i32* %high286, align 4, !dbg !1353
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1354
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1355
  store i32 0, i32* %high288, align 4, !dbg !1356
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1357
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1358
  %110 = load i32, i32* %high290, align 4, !dbg !1358
  %s291 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1359
  %low292 = getelementptr inbounds %struct.anon, %struct.anon* %s291, i32 0, i32 0, !dbg !1360
  store i32 %110, i32* %low292, align 8, !dbg !1361
  br label %if.end315, !dbg !1362

if.else293:                                       ; preds = %if.end276
  %s294 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1363
  %low295 = getelementptr inbounds %struct.anon, %struct.anon* %s294, i32 0, i32 0, !dbg !1364
  %111 = load i32, i32* %low295, align 8, !dbg !1364
  %112 = load i32, i32* %sr, align 4, !dbg !1365
  %sub296 = sub i32 32, %112, !dbg !1366
  %shl297 = shl i32 %111, %sub296, !dbg !1367
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1368
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1369
  store i32 %shl297, i32* %high299, align 4, !dbg !1370
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1371
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1372
  %113 = load i32, i32* %high301, align 4, !dbg !1372
  %114 = load i32, i32* %sr, align 4, !dbg !1373
  %shr302 = lshr i32 %113, %114, !dbg !1374
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1375
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1376
  store i32 %shr302, i32* %high304, align 4, !dbg !1377
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1378
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1379
  %115 = load i32, i32* %high306, align 4, !dbg !1379
  %116 = load i32, i32* %sr, align 4, !dbg !1380
  %sub307 = sub i32 32, %116, !dbg !1381
  %shl308 = shl i32 %115, %sub307, !dbg !1382
  %s309 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1383
  %low310 = getelementptr inbounds %struct.anon, %struct.anon* %s309, i32 0, i32 0, !dbg !1384
  %117 = load i32, i32* %low310, align 8, !dbg !1384
  %118 = load i32, i32* %sr, align 4, !dbg !1385
  %shr311 = lshr i32 %117, %118, !dbg !1386
  %or312 = or i32 %shl308, %shr311, !dbg !1387
  %s313 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1388
  %low314 = getelementptr inbounds %struct.anon, %struct.anon* %s313, i32 0, i32 0, !dbg !1389
  store i32 %or312, i32* %low314, align 8, !dbg !1390
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  store i32 0, i32* %carry, align 4, !dbg !1391
  br label %for.cond, !dbg !1392

for.cond:                                         ; preds = %for.inc, %if.end317
  %119 = load i32, i32* %sr, align 4, !dbg !1393
  %cmp318 = icmp ugt i32 %119, 0, !dbg !1394
  br i1 %cmp318, label %for.body, label %for.end, !dbg !1392

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1395
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1396
  %120 = load i32, i32* %high321, align 4, !dbg !1396
  %shl322 = shl i32 %120, 1, !dbg !1397
  %s323 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1398
  %low324 = getelementptr inbounds %struct.anon, %struct.anon* %s323, i32 0, i32 0, !dbg !1399
  %121 = load i32, i32* %low324, align 8, !dbg !1399
  %shr325 = lshr i32 %121, 31, !dbg !1400
  %or326 = or i32 %shl322, %shr325, !dbg !1401
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1402
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !1403
  store i32 %or326, i32* %high328, align 4, !dbg !1404
  %s329 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1405
  %low330 = getelementptr inbounds %struct.anon, %struct.anon* %s329, i32 0, i32 0, !dbg !1406
  %122 = load i32, i32* %low330, align 8, !dbg !1406
  %shl331 = shl i32 %122, 1, !dbg !1407
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1408
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1409
  %123 = load i32, i32* %high333, align 4, !dbg !1409
  %shr334 = lshr i32 %123, 31, !dbg !1410
  %or335 = or i32 %shl331, %shr334, !dbg !1411
  %s336 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1412
  %low337 = getelementptr inbounds %struct.anon, %struct.anon* %s336, i32 0, i32 0, !dbg !1413
  store i32 %or335, i32* %low337, align 8, !dbg !1414
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1415
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1416
  %124 = load i32, i32* %high339, align 4, !dbg !1416
  %shl340 = shl i32 %124, 1, !dbg !1417
  %s341 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1418
  %low342 = getelementptr inbounds %struct.anon, %struct.anon* %s341, i32 0, i32 0, !dbg !1419
  %125 = load i32, i32* %low342, align 8, !dbg !1419
  %shr343 = lshr i32 %125, 31, !dbg !1420
  %or344 = or i32 %shl340, %shr343, !dbg !1421
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1422
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1423
  store i32 %or344, i32* %high346, align 4, !dbg !1424
  %s347 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1425
  %low348 = getelementptr inbounds %struct.anon, %struct.anon* %s347, i32 0, i32 0, !dbg !1426
  %126 = load i32, i32* %low348, align 8, !dbg !1426
  %shl349 = shl i32 %126, 1, !dbg !1427
  %127 = load i32, i32* %carry, align 4, !dbg !1428
  %or350 = or i32 %shl349, %127, !dbg !1429
  %s351 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1430
  %low352 = getelementptr inbounds %struct.anon, %struct.anon* %s351, i32 0, i32 0, !dbg !1431
  store i32 %or350, i32* %low352, align 8, !dbg !1432
  %all354 = bitcast %union.dwords* %d to i64*, !dbg !1433
  %128 = load i64, i64* %all354, align 8, !dbg !1433
  %all355 = bitcast %union.dwords* %r to i64*, !dbg !1434
  %129 = load i64, i64* %all355, align 8, !dbg !1434
  %sub356 = sub i64 %128, %129, !dbg !1435
  %sub357 = sub i64 %sub356, 1, !dbg !1436
  %shr358 = ashr i64 %sub357, 63, !dbg !1437
  store i64 %shr358, i64* %s353, align 8, !dbg !1438
  %130 = load i64, i64* %s353, align 8, !dbg !1439
  %and359 = and i64 %130, 1, !dbg !1440
  %conv360 = trunc i64 %and359 to i32, !dbg !1439
  store i32 %conv360, i32* %carry, align 4, !dbg !1441
  %all361 = bitcast %union.dwords* %d to i64*, !dbg !1442
  %131 = load i64, i64* %all361, align 8, !dbg !1442
  %132 = load i64, i64* %s353, align 8, !dbg !1443
  %and362 = and i64 %131, %132, !dbg !1444
  %all363 = bitcast %union.dwords* %r to i64*, !dbg !1445
  %133 = load i64, i64* %all363, align 8, !dbg !1446
  %sub364 = sub i64 %133, %and362, !dbg !1446
  store i64 %sub364, i64* %all363, align 8, !dbg !1446
  br label %for.inc, !dbg !1447

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %sr, align 4, !dbg !1448
  %dec = add i32 %134, -1, !dbg !1448
  store i32 %dec, i32* %sr, align 4, !dbg !1448
  br label %for.cond, !dbg !1392, !llvm.loop !1449

for.end:                                          ; preds = %for.cond
  %all365 = bitcast %union.dwords* %q to i64*, !dbg !1451
  %135 = load i64, i64* %all365, align 8, !dbg !1451
  %shl366 = shl i64 %135, 1, !dbg !1452
  %136 = load i32, i32* %carry, align 4, !dbg !1453
  %conv367 = zext i32 %136 to i64, !dbg !1453
  %or368 = or i64 %shl366, %conv367, !dbg !1454
  %all369 = bitcast %union.dwords* %q to i64*, !dbg !1455
  store i64 %or368, i64* %all369, align 8, !dbg !1456
  %137 = load i64*, i64** %rem.addr, align 4, !dbg !1457
  %tobool370 = icmp ne i64* %137, null, !dbg !1457
  br i1 %tobool370, label %if.then371, label %if.end373, !dbg !1457

if.then371:                                       ; preds = %for.end
  %all372 = bitcast %union.dwords* %r to i64*, !dbg !1458
  %138 = load i64, i64* %all372, align 8, !dbg !1458
  %139 = load i64*, i64** %rem.addr, align 4, !dbg !1459
  store i64 %138, i64* %139, align 8, !dbg !1460
  br label %if.end373, !dbg !1461

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = bitcast %union.dwords* %q to i64*, !dbg !1462
  %140 = load i64, i64* %all374, align 8, !dbg !1462
  store i64 %140, i64* %retval, align 8, !dbg !1463
  br label %return, !dbg !1463

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %141 = load i64, i64* %retval, align 8, !dbg !1464
  ret i64 %141, !dbg !1464
}

; Function Attrs: noinline nounwind
define dso_local i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #0 !dbg !1465 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %rem.addr = alloca i32*, align 4
  %d = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %rem, i32** %rem.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !1466
  %1 = load i32, i32* %b.addr, align 4, !dbg !1467
  %call = call i32 @__udivsi3(i32 noundef %0, i32 noundef %1) #4, !dbg !1468
  store i32 %call, i32* %d, align 4, !dbg !1469
  %2 = load i32, i32* %a.addr, align 4, !dbg !1470
  %3 = load i32, i32* %d, align 4, !dbg !1471
  %4 = load i32, i32* %b.addr, align 4, !dbg !1472
  %mul = mul i32 %3, %4, !dbg !1473
  %sub = sub i32 %2, %mul, !dbg !1474
  %5 = load i32*, i32** %rem.addr, align 4, !dbg !1475
  store i32 %sub, i32* %5, align 4, !dbg !1476
  %6 = load i32, i32* %d, align 4, !dbg !1477
  ret i32 %6, !dbg !1478
}

; Function Attrs: noinline nounwind
define dso_local i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #0 !dbg !1479 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %n_uword_bits = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %sr = alloca i32, align 4
  %carry = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 32, i32* %n_uword_bits, align 4, !dbg !1480
  %0 = load i32, i32* %d.addr, align 4, !dbg !1481
  %cmp = icmp eq i32 %0, 0, !dbg !1482
  br i1 %cmp, label %if.then, label %if.end, !dbg !1481

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1483
  br label %return, !dbg !1483

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !1484
  %cmp1 = icmp eq i32 %1, 0, !dbg !1485
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1484

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1486
  br label %return, !dbg !1486

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %d.addr, align 4, !dbg !1487
  %3 = call i32 @llvm.ctlz.i32(i32 %2, i1 true), !dbg !1488
  %4 = load i32, i32* %n.addr, align 4, !dbg !1489
  %5 = call i32 @llvm.ctlz.i32(i32 %4, i1 true), !dbg !1490
  %sub = sub nsw i32 %3, %5, !dbg !1491
  store i32 %sub, i32* %sr, align 4, !dbg !1492
  %6 = load i32, i32* %sr, align 4, !dbg !1493
  %cmp4 = icmp ugt i32 %6, 31, !dbg !1494
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1493

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end6:                                          ; preds = %if.end3
  %7 = load i32, i32* %sr, align 4, !dbg !1496
  %cmp7 = icmp eq i32 %7, 31, !dbg !1497
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1496

if.then8:                                         ; preds = %if.end6
  %8 = load i32, i32* %n.addr, align 4, !dbg !1498
  store i32 %8, i32* %retval, align 4, !dbg !1499
  br label %return, !dbg !1499

if.end9:                                          ; preds = %if.end6
  %9 = load i32, i32* %sr, align 4, !dbg !1500
  %inc = add i32 %9, 1, !dbg !1500
  store i32 %inc, i32* %sr, align 4, !dbg !1500
  %10 = load i32, i32* %n.addr, align 4, !dbg !1501
  %11 = load i32, i32* %sr, align 4, !dbg !1502
  %sub10 = sub i32 32, %11, !dbg !1503
  %shl = shl i32 %10, %sub10, !dbg !1504
  store i32 %shl, i32* %q, align 4, !dbg !1505
  %12 = load i32, i32* %n.addr, align 4, !dbg !1506
  %13 = load i32, i32* %sr, align 4, !dbg !1507
  %shr = lshr i32 %12, %13, !dbg !1508
  store i32 %shr, i32* %r, align 4, !dbg !1509
  store i32 0, i32* %carry, align 4, !dbg !1510
  br label %for.cond, !dbg !1511

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, i32* %sr, align 4, !dbg !1512
  %cmp11 = icmp ugt i32 %14, 0, !dbg !1513
  br i1 %cmp11, label %for.body, label %for.end, !dbg !1511

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %r, align 4, !dbg !1514
  %shl12 = shl i32 %15, 1, !dbg !1515
  %16 = load i32, i32* %q, align 4, !dbg !1516
  %shr13 = lshr i32 %16, 31, !dbg !1517
  %or = or i32 %shl12, %shr13, !dbg !1518
  store i32 %or, i32* %r, align 4, !dbg !1519
  %17 = load i32, i32* %q, align 4, !dbg !1520
  %shl14 = shl i32 %17, 1, !dbg !1521
  %18 = load i32, i32* %carry, align 4, !dbg !1522
  %or15 = or i32 %shl14, %18, !dbg !1523
  store i32 %or15, i32* %q, align 4, !dbg !1524
  %19 = load i32, i32* %d.addr, align 4, !dbg !1525
  %20 = load i32, i32* %r, align 4, !dbg !1526
  %sub16 = sub i32 %19, %20, !dbg !1527
  %sub17 = sub i32 %sub16, 1, !dbg !1528
  %shr18 = ashr i32 %sub17, 31, !dbg !1529
  store i32 %shr18, i32* %s, align 4, !dbg !1530
  %21 = load i32, i32* %s, align 4, !dbg !1531
  %and = and i32 %21, 1, !dbg !1532
  store i32 %and, i32* %carry, align 4, !dbg !1533
  %22 = load i32, i32* %d.addr, align 4, !dbg !1534
  %23 = load i32, i32* %s, align 4, !dbg !1535
  %and19 = and i32 %22, %23, !dbg !1536
  %24 = load i32, i32* %r, align 4, !dbg !1537
  %sub20 = sub i32 %24, %and19, !dbg !1537
  store i32 %sub20, i32* %r, align 4, !dbg !1537
  br label %for.inc, !dbg !1538

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %sr, align 4, !dbg !1539
  %dec = add i32 %25, -1, !dbg !1539
  store i32 %dec, i32* %sr, align 4, !dbg !1539
  br label %for.cond, !dbg !1511, !llvm.loop !1540

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %q, align 4, !dbg !1541
  %shl21 = shl i32 %26, 1, !dbg !1542
  %27 = load i32, i32* %carry, align 4, !dbg !1543
  %or22 = or i32 %shl21, %27, !dbg !1544
  store i32 %or22, i32* %q, align 4, !dbg !1545
  %28 = load i32, i32* %q, align 4, !dbg !1546
  store i32 %28, i32* %retval, align 4, !dbg !1547
  br label %return, !dbg !1547

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !1548
  ret i32 %29, !dbg !1548
}

; Function Attrs: noinline nounwind
define dso_local i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #0 !dbg !1549 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8, !dbg !1550
  %1 = load i64, i64* %b.addr, align 8, !dbg !1551
  %call = call i64 @__udivmoddi4(i64 noundef %0, i64 noundef %1, i64* noundef %r) #4, !dbg !1552
  %2 = load i64, i64* %r, align 8, !dbg !1553
  ret i64 %2, !dbg !1554
}

; Function Attrs: noinline nounwind
define dso_local i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #0 !dbg !1555 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4, !dbg !1556
  %1 = load i32, i32* %a.addr, align 4, !dbg !1557
  %2 = load i32, i32* %b.addr, align 4, !dbg !1558
  %call = call i32 @__udivsi3(i32 noundef %1, i32 noundef %2) #4, !dbg !1559
  %3 = load i32, i32* %b.addr, align 4, !dbg !1560
  %mul = mul i32 %call, %3, !dbg !1561
  %sub = sub i32 %0, %mul, !dbg !1562
  ret i32 %sub, !dbg !1563
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }
attributes #1 = { noreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin noreturn "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.ident = !{!108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildriscv", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!108 = !{!"clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 9437178c1ff4dda587abb470cbceda979f22ce27)"}
!109 = !{i32 7, !"Dwarf Version", i32 5}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = !{i32 1, !"target-abi", !"ilp32"}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{i32 1, !"SmallDataLimit", i32 8}
!115 = distinct !DISubprogram(name: "__absvdi2", scope: !1, file: !1, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !117)
!116 = !DISubroutineType(types: !117)
!117 = !{}
!118 = !DILocation(line: 24, column: 15, scope: !115)
!119 = !DILocation(line: 25, column: 9, scope: !115)
!120 = !DILocation(line: 25, column: 11, scope: !115)
!121 = !DILocation(line: 26, column: 9, scope: !115)
!122 = !DILocation(line: 27, column: 22, scope: !115)
!123 = !DILocation(line: 27, column: 24, scope: !115)
!124 = !DILocation(line: 27, column: 18, scope: !115)
!125 = !DILocation(line: 28, column: 13, scope: !115)
!126 = !DILocation(line: 28, column: 17, scope: !115)
!127 = !DILocation(line: 28, column: 15, scope: !115)
!128 = !DILocation(line: 28, column: 22, scope: !115)
!129 = !DILocation(line: 28, column: 20, scope: !115)
!130 = !DILocation(line: 28, column: 5, scope: !115)
!131 = distinct !DISubprogram(name: "__absvsi2", scope: !3, file: !3, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !117)
!132 = !DILocation(line: 24, column: 15, scope: !131)
!133 = !DILocation(line: 25, column: 9, scope: !131)
!134 = !DILocation(line: 25, column: 11, scope: !131)
!135 = !DILocation(line: 26, column: 9, scope: !131)
!136 = !DILocation(line: 27, column: 22, scope: !131)
!137 = !DILocation(line: 27, column: 24, scope: !131)
!138 = !DILocation(line: 27, column: 18, scope: !131)
!139 = !DILocation(line: 28, column: 13, scope: !131)
!140 = !DILocation(line: 28, column: 17, scope: !131)
!141 = !DILocation(line: 28, column: 15, scope: !131)
!142 = !DILocation(line: 28, column: 22, scope: !131)
!143 = !DILocation(line: 28, column: 20, scope: !131)
!144 = !DILocation(line: 28, column: 5, scope: !131)
!145 = distinct !DISubprogram(name: "__addvdi3", scope: !7, file: !7, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !117)
!146 = !DILocation(line: 24, column: 25, scope: !145)
!147 = !DILocation(line: 24, column: 38, scope: !145)
!148 = !DILocation(line: 24, column: 27, scope: !145)
!149 = !DILocation(line: 24, column: 12, scope: !145)
!150 = !DILocation(line: 25, column: 9, scope: !145)
!151 = !DILocation(line: 25, column: 11, scope: !145)
!152 = !DILocation(line: 27, column: 13, scope: !145)
!153 = !DILocation(line: 27, column: 17, scope: !145)
!154 = !DILocation(line: 27, column: 15, scope: !145)
!155 = !DILocation(line: 28, column: 13, scope: !145)
!156 = !DILocation(line: 29, column: 5, scope: !145)
!157 = !DILocation(line: 32, column: 13, scope: !145)
!158 = !DILocation(line: 32, column: 18, scope: !145)
!159 = !DILocation(line: 32, column: 15, scope: !145)
!160 = !DILocation(line: 33, column: 13, scope: !145)
!161 = !DILocation(line: 35, column: 12, scope: !145)
!162 = !DILocation(line: 35, column: 5, scope: !145)
!163 = distinct !DISubprogram(name: "__addvsi3", scope: !9, file: !9, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !117)
!164 = !DILocation(line: 24, column: 25, scope: !163)
!165 = !DILocation(line: 24, column: 38, scope: !163)
!166 = !DILocation(line: 24, column: 27, scope: !163)
!167 = !DILocation(line: 24, column: 12, scope: !163)
!168 = !DILocation(line: 25, column: 9, scope: !163)
!169 = !DILocation(line: 25, column: 11, scope: !163)
!170 = !DILocation(line: 27, column: 13, scope: !163)
!171 = !DILocation(line: 27, column: 17, scope: !163)
!172 = !DILocation(line: 27, column: 15, scope: !163)
!173 = !DILocation(line: 28, column: 13, scope: !163)
!174 = !DILocation(line: 29, column: 5, scope: !163)
!175 = !DILocation(line: 32, column: 13, scope: !163)
!176 = !DILocation(line: 32, column: 18, scope: !163)
!177 = !DILocation(line: 32, column: 15, scope: !163)
!178 = !DILocation(line: 33, column: 13, scope: !163)
!179 = !DILocation(line: 35, column: 12, scope: !163)
!180 = !DILocation(line: 35, column: 5, scope: !163)
!181 = distinct !DISubprogram(name: "__ashldi3", scope: !13, file: !13, line: 24, type: !116, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !117)
!182 = !DILocation(line: 26, column: 15, scope: !181)
!183 = !DILocation(line: 29, column: 17, scope: !181)
!184 = !DILocation(line: 29, column: 11, scope: !181)
!185 = !DILocation(line: 29, column: 15, scope: !181)
!186 = !DILocation(line: 30, column: 9, scope: !181)
!187 = !DILocation(line: 30, column: 11, scope: !181)
!188 = !DILocation(line: 32, column: 16, scope: !181)
!189 = !DILocation(line: 32, column: 18, scope: !181)
!190 = !DILocation(line: 32, column: 22, scope: !181)
!191 = !DILocation(line: 33, column: 31, scope: !181)
!192 = !DILocation(line: 33, column: 33, scope: !181)
!193 = !DILocation(line: 33, column: 41, scope: !181)
!194 = !DILocation(line: 33, column: 43, scope: !181)
!195 = !DILocation(line: 33, column: 37, scope: !181)
!196 = !DILocation(line: 33, column: 16, scope: !181)
!197 = !DILocation(line: 33, column: 18, scope: !181)
!198 = !DILocation(line: 33, column: 23, scope: !181)
!199 = !DILocation(line: 34, column: 5, scope: !181)
!200 = !DILocation(line: 37, column: 13, scope: !181)
!201 = !DILocation(line: 37, column: 15, scope: !181)
!202 = !DILocation(line: 38, column: 20, scope: !181)
!203 = !DILocation(line: 38, column: 13, scope: !181)
!204 = !DILocation(line: 39, column: 31, scope: !181)
!205 = !DILocation(line: 39, column: 33, scope: !181)
!206 = !DILocation(line: 39, column: 40, scope: !181)
!207 = !DILocation(line: 39, column: 37, scope: !181)
!208 = !DILocation(line: 39, column: 16, scope: !181)
!209 = !DILocation(line: 39, column: 18, scope: !181)
!210 = !DILocation(line: 39, column: 23, scope: !181)
!211 = !DILocation(line: 40, column: 32, scope: !181)
!212 = !DILocation(line: 40, column: 34, scope: !181)
!213 = !DILocation(line: 40, column: 42, scope: !181)
!214 = !DILocation(line: 40, column: 39, scope: !181)
!215 = !DILocation(line: 40, column: 54, scope: !181)
!216 = !DILocation(line: 40, column: 56, scope: !181)
!217 = !DILocation(line: 40, column: 79, scope: !181)
!218 = !DILocation(line: 40, column: 77, scope: !181)
!219 = !DILocation(line: 40, column: 60, scope: !181)
!220 = !DILocation(line: 40, column: 45, scope: !181)
!221 = !DILocation(line: 40, column: 16, scope: !181)
!222 = !DILocation(line: 40, column: 18, scope: !181)
!223 = !DILocation(line: 40, column: 23, scope: !181)
!224 = !DILocation(line: 42, column: 19, scope: !181)
!225 = !DILocation(line: 42, column: 5, scope: !181)
!226 = !DILocation(line: 43, column: 1, scope: !181)
!227 = distinct !DISubprogram(name: "__ashrdi3", scope: !17, file: !17, line: 24, type: !116, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !117)
!228 = !DILocation(line: 26, column: 15, scope: !227)
!229 = !DILocation(line: 29, column: 17, scope: !227)
!230 = !DILocation(line: 29, column: 11, scope: !227)
!231 = !DILocation(line: 29, column: 15, scope: !227)
!232 = !DILocation(line: 30, column: 9, scope: !227)
!233 = !DILocation(line: 30, column: 11, scope: !227)
!234 = !DILocation(line: 33, column: 31, scope: !227)
!235 = !DILocation(line: 33, column: 33, scope: !227)
!236 = !DILocation(line: 33, column: 38, scope: !227)
!237 = !DILocation(line: 33, column: 16, scope: !227)
!238 = !DILocation(line: 33, column: 18, scope: !227)
!239 = !DILocation(line: 33, column: 23, scope: !227)
!240 = !DILocation(line: 34, column: 30, scope: !227)
!241 = !DILocation(line: 34, column: 32, scope: !227)
!242 = !DILocation(line: 34, column: 41, scope: !227)
!243 = !DILocation(line: 34, column: 43, scope: !227)
!244 = !DILocation(line: 34, column: 37, scope: !227)
!245 = !DILocation(line: 34, column: 16, scope: !227)
!246 = !DILocation(line: 34, column: 18, scope: !227)
!247 = !DILocation(line: 34, column: 22, scope: !227)
!248 = !DILocation(line: 35, column: 5, scope: !227)
!249 = !DILocation(line: 38, column: 13, scope: !227)
!250 = !DILocation(line: 38, column: 15, scope: !227)
!251 = !DILocation(line: 39, column: 20, scope: !227)
!252 = !DILocation(line: 39, column: 13, scope: !227)
!253 = !DILocation(line: 40, column: 32, scope: !227)
!254 = !DILocation(line: 40, column: 34, scope: !227)
!255 = !DILocation(line: 40, column: 42, scope: !227)
!256 = !DILocation(line: 40, column: 39, scope: !227)
!257 = !DILocation(line: 40, column: 16, scope: !227)
!258 = !DILocation(line: 40, column: 18, scope: !227)
!259 = !DILocation(line: 40, column: 24, scope: !227)
!260 = !DILocation(line: 41, column: 31, scope: !227)
!261 = !DILocation(line: 41, column: 33, scope: !227)
!262 = !DILocation(line: 41, column: 57, scope: !227)
!263 = !DILocation(line: 41, column: 55, scope: !227)
!264 = !DILocation(line: 41, column: 38, scope: !227)
!265 = !DILocation(line: 41, column: 70, scope: !227)
!266 = !DILocation(line: 41, column: 72, scope: !227)
!267 = !DILocation(line: 41, column: 79, scope: !227)
!268 = !DILocation(line: 41, column: 76, scope: !227)
!269 = !DILocation(line: 41, column: 61, scope: !227)
!270 = !DILocation(line: 41, column: 16, scope: !227)
!271 = !DILocation(line: 41, column: 18, scope: !227)
!272 = !DILocation(line: 41, column: 22, scope: !227)
!273 = !DILocation(line: 43, column: 19, scope: !227)
!274 = !DILocation(line: 43, column: 5, scope: !227)
!275 = !DILocation(line: 44, column: 1, scope: !227)
!276 = distinct !DISubprogram(name: "__clzdi2", scope: !21, file: !21, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !117)
!277 = !DILocation(line: 25, column: 13, scope: !276)
!278 = !DILocation(line: 25, column: 7, scope: !276)
!279 = !DILocation(line: 25, column: 11, scope: !276)
!280 = !DILocation(line: 26, column: 26, scope: !276)
!281 = !DILocation(line: 26, column: 28, scope: !276)
!282 = !DILocation(line: 26, column: 33, scope: !276)
!283 = !DILocation(line: 26, column: 22, scope: !276)
!284 = !DILocation(line: 26, column: 18, scope: !276)
!285 = !DILocation(line: 27, column: 29, scope: !276)
!286 = !DILocation(line: 27, column: 31, scope: !276)
!287 = !DILocation(line: 27, column: 39, scope: !276)
!288 = !DILocation(line: 27, column: 38, scope: !276)
!289 = !DILocation(line: 27, column: 36, scope: !276)
!290 = !DILocation(line: 27, column: 47, scope: !276)
!291 = !DILocation(line: 27, column: 49, scope: !276)
!292 = !DILocation(line: 27, column: 55, scope: !276)
!293 = !DILocation(line: 27, column: 53, scope: !276)
!294 = !DILocation(line: 27, column: 42, scope: !276)
!295 = !DILocation(line: 27, column: 12, scope: !276)
!296 = !DILocation(line: 28, column: 13, scope: !276)
!297 = !DILocation(line: 28, column: 15, scope: !276)
!298 = !DILocation(line: 27, column: 59, scope: !276)
!299 = !DILocation(line: 27, column: 5, scope: !276)
!300 = distinct !DISubprogram(name: "__clzsi2", scope: !23, file: !23, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !117)
!301 = !DILocation(line: 24, column: 24, scope: !300)
!302 = !DILocation(line: 24, column: 12, scope: !300)
!303 = !DILocation(line: 25, column: 18, scope: !300)
!304 = !DILocation(line: 25, column: 20, scope: !300)
!305 = !DILocation(line: 25, column: 34, scope: !300)
!306 = !DILocation(line: 25, column: 40, scope: !300)
!307 = !DILocation(line: 25, column: 12, scope: !300)
!308 = !DILocation(line: 26, column: 16, scope: !300)
!309 = !DILocation(line: 26, column: 14, scope: !300)
!310 = !DILocation(line: 26, column: 7, scope: !300)
!311 = !DILocation(line: 27, column: 16, scope: !300)
!312 = !DILocation(line: 27, column: 12, scope: !300)
!313 = !DILocation(line: 29, column: 11, scope: !300)
!314 = !DILocation(line: 29, column: 13, scope: !300)
!315 = !DILocation(line: 29, column: 23, scope: !300)
!316 = !DILocation(line: 29, column: 29, scope: !300)
!317 = !DILocation(line: 29, column: 7, scope: !300)
!318 = !DILocation(line: 30, column: 15, scope: !300)
!319 = !DILocation(line: 30, column: 13, scope: !300)
!320 = !DILocation(line: 30, column: 7, scope: !300)
!321 = !DILocation(line: 31, column: 10, scope: !300)
!322 = !DILocation(line: 31, column: 7, scope: !300)
!323 = !DILocation(line: 33, column: 11, scope: !300)
!324 = !DILocation(line: 33, column: 13, scope: !300)
!325 = !DILocation(line: 33, column: 21, scope: !300)
!326 = !DILocation(line: 33, column: 27, scope: !300)
!327 = !DILocation(line: 33, column: 7, scope: !300)
!328 = !DILocation(line: 34, column: 15, scope: !300)
!329 = !DILocation(line: 34, column: 13, scope: !300)
!330 = !DILocation(line: 34, column: 7, scope: !300)
!331 = !DILocation(line: 35, column: 10, scope: !300)
!332 = !DILocation(line: 35, column: 7, scope: !300)
!333 = !DILocation(line: 37, column: 11, scope: !300)
!334 = !DILocation(line: 37, column: 13, scope: !300)
!335 = !DILocation(line: 37, column: 20, scope: !300)
!336 = !DILocation(line: 37, column: 26, scope: !300)
!337 = !DILocation(line: 37, column: 7, scope: !300)
!338 = !DILocation(line: 38, column: 15, scope: !300)
!339 = !DILocation(line: 38, column: 13, scope: !300)
!340 = !DILocation(line: 38, column: 7, scope: !300)
!341 = !DILocation(line: 39, column: 10, scope: !300)
!342 = !DILocation(line: 39, column: 7, scope: !300)
!343 = !DILocation(line: 52, column: 12, scope: !300)
!344 = !DILocation(line: 52, column: 22, scope: !300)
!345 = !DILocation(line: 52, column: 20, scope: !300)
!346 = !DILocation(line: 52, column: 30, scope: !300)
!347 = !DILocation(line: 52, column: 32, scope: !300)
!348 = !DILocation(line: 52, column: 37, scope: !300)
!349 = !DILocation(line: 52, column: 27, scope: !300)
!350 = !DILocation(line: 52, column: 25, scope: !300)
!351 = !DILocation(line: 52, column: 14, scope: !300)
!352 = !DILocation(line: 52, column: 5, scope: !300)
!353 = distinct !DISubprogram(name: "__cmpdi2", scope: !27, file: !27, line: 23, type: !116, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !117)
!354 = !DILocation(line: 26, column: 13, scope: !353)
!355 = !DILocation(line: 26, column: 7, scope: !353)
!356 = !DILocation(line: 26, column: 11, scope: !353)
!357 = !DILocation(line: 28, column: 13, scope: !353)
!358 = !DILocation(line: 28, column: 7, scope: !353)
!359 = !DILocation(line: 28, column: 11, scope: !353)
!360 = !DILocation(line: 29, column: 11, scope: !353)
!361 = !DILocation(line: 29, column: 13, scope: !353)
!362 = !DILocation(line: 29, column: 22, scope: !353)
!363 = !DILocation(line: 29, column: 24, scope: !353)
!364 = !DILocation(line: 29, column: 18, scope: !353)
!365 = !DILocation(line: 29, column: 9, scope: !353)
!366 = !DILocation(line: 30, column: 9, scope: !353)
!367 = !DILocation(line: 31, column: 11, scope: !353)
!368 = !DILocation(line: 31, column: 13, scope: !353)
!369 = !DILocation(line: 31, column: 22, scope: !353)
!370 = !DILocation(line: 31, column: 24, scope: !353)
!371 = !DILocation(line: 31, column: 18, scope: !353)
!372 = !DILocation(line: 31, column: 9, scope: !353)
!373 = !DILocation(line: 32, column: 9, scope: !353)
!374 = !DILocation(line: 33, column: 11, scope: !353)
!375 = !DILocation(line: 33, column: 13, scope: !353)
!376 = !DILocation(line: 33, column: 21, scope: !353)
!377 = !DILocation(line: 33, column: 23, scope: !353)
!378 = !DILocation(line: 33, column: 17, scope: !353)
!379 = !DILocation(line: 33, column: 9, scope: !353)
!380 = !DILocation(line: 34, column: 9, scope: !353)
!381 = !DILocation(line: 35, column: 11, scope: !353)
!382 = !DILocation(line: 35, column: 13, scope: !353)
!383 = !DILocation(line: 35, column: 21, scope: !353)
!384 = !DILocation(line: 35, column: 23, scope: !353)
!385 = !DILocation(line: 35, column: 17, scope: !353)
!386 = !DILocation(line: 35, column: 9, scope: !353)
!387 = !DILocation(line: 36, column: 9, scope: !353)
!388 = !DILocation(line: 37, column: 5, scope: !353)
!389 = !DILocation(line: 38, column: 1, scope: !353)
!390 = distinct !DISubprogram(name: "__ctzdi2", scope: !31, file: !31, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !117)
!391 = !DILocation(line: 25, column: 13, scope: !390)
!392 = !DILocation(line: 25, column: 7, scope: !390)
!393 = !DILocation(line: 25, column: 11, scope: !390)
!394 = !DILocation(line: 26, column: 26, scope: !390)
!395 = !DILocation(line: 26, column: 28, scope: !390)
!396 = !DILocation(line: 26, column: 32, scope: !390)
!397 = !DILocation(line: 26, column: 22, scope: !390)
!398 = !DILocation(line: 26, column: 18, scope: !390)
!399 = !DILocation(line: 27, column: 29, scope: !390)
!400 = !DILocation(line: 27, column: 31, scope: !390)
!401 = !DILocation(line: 27, column: 38, scope: !390)
!402 = !DILocation(line: 27, column: 36, scope: !390)
!403 = !DILocation(line: 27, column: 46, scope: !390)
!404 = !DILocation(line: 27, column: 48, scope: !390)
!405 = !DILocation(line: 27, column: 55, scope: !390)
!406 = !DILocation(line: 27, column: 54, scope: !390)
!407 = !DILocation(line: 27, column: 52, scope: !390)
!408 = !DILocation(line: 27, column: 41, scope: !390)
!409 = !DILocation(line: 27, column: 12, scope: !390)
!410 = !DILocation(line: 28, column: 16, scope: !390)
!411 = !DILocation(line: 28, column: 18, scope: !390)
!412 = !DILocation(line: 27, column: 59, scope: !390)
!413 = !DILocation(line: 27, column: 5, scope: !390)
!414 = distinct !DISubprogram(name: "__ctzsi2", scope: !33, file: !33, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !117)
!415 = !DILocation(line: 24, column: 24, scope: !414)
!416 = !DILocation(line: 24, column: 12, scope: !414)
!417 = !DILocation(line: 25, column: 18, scope: !414)
!418 = !DILocation(line: 25, column: 20, scope: !414)
!419 = !DILocation(line: 25, column: 34, scope: !414)
!420 = !DILocation(line: 25, column: 40, scope: !414)
!421 = !DILocation(line: 25, column: 12, scope: !414)
!422 = !DILocation(line: 26, column: 11, scope: !414)
!423 = !DILocation(line: 26, column: 7, scope: !414)
!424 = !DILocation(line: 27, column: 16, scope: !414)
!425 = !DILocation(line: 27, column: 12, scope: !414)
!426 = !DILocation(line: 29, column: 11, scope: !414)
!427 = !DILocation(line: 29, column: 13, scope: !414)
!428 = !DILocation(line: 29, column: 23, scope: !414)
!429 = !DILocation(line: 29, column: 29, scope: !414)
!430 = !DILocation(line: 29, column: 7, scope: !414)
!431 = !DILocation(line: 30, column: 11, scope: !414)
!432 = !DILocation(line: 30, column: 7, scope: !414)
!433 = !DILocation(line: 31, column: 10, scope: !414)
!434 = !DILocation(line: 31, column: 7, scope: !414)
!435 = !DILocation(line: 33, column: 11, scope: !414)
!436 = !DILocation(line: 33, column: 13, scope: !414)
!437 = !DILocation(line: 33, column: 21, scope: !414)
!438 = !DILocation(line: 33, column: 27, scope: !414)
!439 = !DILocation(line: 33, column: 7, scope: !414)
!440 = !DILocation(line: 34, column: 11, scope: !414)
!441 = !DILocation(line: 34, column: 7, scope: !414)
!442 = !DILocation(line: 35, column: 10, scope: !414)
!443 = !DILocation(line: 35, column: 7, scope: !414)
!444 = !DILocation(line: 37, column: 11, scope: !414)
!445 = !DILocation(line: 37, column: 13, scope: !414)
!446 = !DILocation(line: 37, column: 20, scope: !414)
!447 = !DILocation(line: 37, column: 26, scope: !414)
!448 = !DILocation(line: 37, column: 7, scope: !414)
!449 = !DILocation(line: 38, column: 11, scope: !414)
!450 = !DILocation(line: 38, column: 7, scope: !414)
!451 = !DILocation(line: 39, column: 7, scope: !414)
!452 = !DILocation(line: 40, column: 10, scope: !414)
!453 = !DILocation(line: 40, column: 7, scope: !414)
!454 = !DILocation(line: 56, column: 12, scope: !414)
!455 = !DILocation(line: 56, column: 23, scope: !414)
!456 = !DILocation(line: 56, column: 25, scope: !414)
!457 = !DILocation(line: 56, column: 20, scope: !414)
!458 = !DILocation(line: 56, column: 37, scope: !414)
!459 = !DILocation(line: 56, column: 39, scope: !414)
!460 = !DILocation(line: 56, column: 44, scope: !414)
!461 = !DILocation(line: 56, column: 34, scope: !414)
!462 = !DILocation(line: 56, column: 32, scope: !414)
!463 = !DILocation(line: 56, column: 14, scope: !414)
!464 = !DILocation(line: 56, column: 5, scope: !414)
!465 = distinct !DISubprogram(name: "__divdi3", scope: !37, file: !37, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !117)
!466 = !DILocation(line: 22, column: 15, scope: !465)
!467 = !DILocation(line: 23, column: 18, scope: !465)
!468 = !DILocation(line: 23, column: 20, scope: !465)
!469 = !DILocation(line: 23, column: 12, scope: !465)
!470 = !DILocation(line: 24, column: 18, scope: !465)
!471 = !DILocation(line: 24, column: 20, scope: !465)
!472 = !DILocation(line: 24, column: 12, scope: !465)
!473 = !DILocation(line: 25, column: 10, scope: !465)
!474 = !DILocation(line: 25, column: 14, scope: !465)
!475 = !DILocation(line: 25, column: 12, scope: !465)
!476 = !DILocation(line: 25, column: 21, scope: !465)
!477 = !DILocation(line: 25, column: 19, scope: !465)
!478 = !DILocation(line: 25, column: 7, scope: !465)
!479 = !DILocation(line: 26, column: 10, scope: !465)
!480 = !DILocation(line: 26, column: 14, scope: !465)
!481 = !DILocation(line: 26, column: 12, scope: !465)
!482 = !DILocation(line: 26, column: 21, scope: !465)
!483 = !DILocation(line: 26, column: 19, scope: !465)
!484 = !DILocation(line: 26, column: 7, scope: !465)
!485 = !DILocation(line: 27, column: 12, scope: !465)
!486 = !DILocation(line: 27, column: 9, scope: !465)
!487 = !DILocation(line: 28, column: 26, scope: !465)
!488 = !DILocation(line: 28, column: 29, scope: !465)
!489 = !DILocation(line: 28, column: 13, scope: !465)
!490 = !DILocation(line: 28, column: 46, scope: !465)
!491 = !DILocation(line: 28, column: 44, scope: !465)
!492 = !DILocation(line: 28, column: 53, scope: !465)
!493 = !DILocation(line: 28, column: 51, scope: !465)
!494 = !DILocation(line: 28, column: 5, scope: !465)
!495 = distinct !DISubprogram(name: "__divmoddi4", scope: !39, file: !39, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !117)
!496 = !DILocation(line: 22, column: 23, scope: !495)
!497 = !DILocation(line: 22, column: 25, scope: !495)
!498 = !DILocation(line: 22, column: 14, scope: !495)
!499 = !DILocation(line: 22, column: 10, scope: !495)
!500 = !DILocation(line: 23, column: 10, scope: !495)
!501 = !DILocation(line: 23, column: 15, scope: !495)
!502 = !DILocation(line: 23, column: 17, scope: !495)
!503 = !DILocation(line: 23, column: 16, scope: !495)
!504 = !DILocation(line: 23, column: 12, scope: !495)
!505 = !DILocation(line: 23, column: 4, scope: !495)
!506 = !DILocation(line: 23, column: 8, scope: !495)
!507 = !DILocation(line: 24, column: 10, scope: !495)
!508 = !DILocation(line: 24, column: 3, scope: !495)
!509 = distinct !DISubprogram(name: "__divmodsi4", scope: !41, file: !41, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !117)
!510 = !DILocation(line: 22, column: 23, scope: !509)
!511 = !DILocation(line: 22, column: 25, scope: !509)
!512 = !DILocation(line: 22, column: 14, scope: !509)
!513 = !DILocation(line: 22, column: 10, scope: !509)
!514 = !DILocation(line: 23, column: 10, scope: !509)
!515 = !DILocation(line: 23, column: 15, scope: !509)
!516 = !DILocation(line: 23, column: 17, scope: !509)
!517 = !DILocation(line: 23, column: 16, scope: !509)
!518 = !DILocation(line: 23, column: 12, scope: !509)
!519 = !DILocation(line: 23, column: 4, scope: !509)
!520 = !DILocation(line: 23, column: 8, scope: !509)
!521 = !DILocation(line: 24, column: 10, scope: !509)
!522 = !DILocation(line: 24, column: 3, scope: !509)
!523 = distinct !DISubprogram(name: "__divsi3", scope: !43, file: !43, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !117)
!524 = !DILocation(line: 24, column: 15, scope: !523)
!525 = !DILocation(line: 25, column: 18, scope: !523)
!526 = !DILocation(line: 25, column: 20, scope: !523)
!527 = !DILocation(line: 25, column: 12, scope: !523)
!528 = !DILocation(line: 26, column: 18, scope: !523)
!529 = !DILocation(line: 26, column: 20, scope: !523)
!530 = !DILocation(line: 26, column: 12, scope: !523)
!531 = !DILocation(line: 27, column: 10, scope: !523)
!532 = !DILocation(line: 27, column: 14, scope: !523)
!533 = !DILocation(line: 27, column: 12, scope: !523)
!534 = !DILocation(line: 27, column: 21, scope: !523)
!535 = !DILocation(line: 27, column: 19, scope: !523)
!536 = !DILocation(line: 27, column: 7, scope: !523)
!537 = !DILocation(line: 28, column: 10, scope: !523)
!538 = !DILocation(line: 28, column: 14, scope: !523)
!539 = !DILocation(line: 28, column: 12, scope: !523)
!540 = !DILocation(line: 28, column: 21, scope: !523)
!541 = !DILocation(line: 28, column: 19, scope: !523)
!542 = !DILocation(line: 28, column: 7, scope: !523)
!543 = !DILocation(line: 29, column: 12, scope: !523)
!544 = !DILocation(line: 29, column: 9, scope: !523)
!545 = !DILocation(line: 36, column: 21, scope: !523)
!546 = !DILocation(line: 36, column: 31, scope: !523)
!547 = !DILocation(line: 36, column: 22, scope: !523)
!548 = !DILocation(line: 36, column: 35, scope: !523)
!549 = !DILocation(line: 36, column: 33, scope: !523)
!550 = !DILocation(line: 36, column: 42, scope: !523)
!551 = !DILocation(line: 36, column: 40, scope: !523)
!552 = !DILocation(line: 36, column: 5, scope: !523)
!553 = distinct !DISubprogram(name: "__ffsdi2", scope: !47, file: !47, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !117)
!554 = !DILocation(line: 25, column: 13, scope: !553)
!555 = !DILocation(line: 25, column: 7, scope: !553)
!556 = !DILocation(line: 25, column: 11, scope: !553)
!557 = !DILocation(line: 26, column: 11, scope: !553)
!558 = !DILocation(line: 26, column: 13, scope: !553)
!559 = !DILocation(line: 26, column: 17, scope: !553)
!560 = !DILocation(line: 26, column: 9, scope: !553)
!561 = !DILocation(line: 28, column: 15, scope: !553)
!562 = !DILocation(line: 28, column: 17, scope: !553)
!563 = !DILocation(line: 28, column: 22, scope: !553)
!564 = !DILocation(line: 28, column: 13, scope: !553)
!565 = !DILocation(line: 29, column: 13, scope: !553)
!566 = !DILocation(line: 30, column: 32, scope: !553)
!567 = !DILocation(line: 30, column: 34, scope: !553)
!568 = !DILocation(line: 30, column: 16, scope: !553)
!569 = !DILocation(line: 30, column: 40, scope: !553)
!570 = !DILocation(line: 30, column: 9, scope: !553)
!571 = !DILocation(line: 32, column: 28, scope: !553)
!572 = !DILocation(line: 32, column: 30, scope: !553)
!573 = !DILocation(line: 32, column: 12, scope: !553)
!574 = !DILocation(line: 32, column: 35, scope: !553)
!575 = !DILocation(line: 32, column: 5, scope: !553)
!576 = !DILocation(line: 33, column: 1, scope: !553)
!577 = distinct !DISubprogram(name: "__ffssi2", scope: !49, file: !49, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !117)
!578 = !DILocation(line: 24, column: 9, scope: !577)
!579 = !DILocation(line: 24, column: 11, scope: !577)
!580 = !DILocation(line: 26, column: 9, scope: !577)
!581 = !DILocation(line: 28, column: 26, scope: !577)
!582 = !DILocation(line: 28, column: 12, scope: !577)
!583 = !DILocation(line: 28, column: 29, scope: !577)
!584 = !DILocation(line: 28, column: 5, scope: !577)
!585 = !DILocation(line: 29, column: 1, scope: !577)
!586 = distinct !DISubprogram(name: "__lshrdi3", scope: !53, file: !53, line: 24, type: !116, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !117)
!587 = !DILocation(line: 26, column: 15, scope: !586)
!588 = !DILocation(line: 29, column: 17, scope: !586)
!589 = !DILocation(line: 29, column: 11, scope: !586)
!590 = !DILocation(line: 29, column: 15, scope: !586)
!591 = !DILocation(line: 30, column: 9, scope: !586)
!592 = !DILocation(line: 30, column: 11, scope: !586)
!593 = !DILocation(line: 32, column: 16, scope: !586)
!594 = !DILocation(line: 32, column: 18, scope: !586)
!595 = !DILocation(line: 32, column: 23, scope: !586)
!596 = !DILocation(line: 33, column: 30, scope: !586)
!597 = !DILocation(line: 33, column: 32, scope: !586)
!598 = !DILocation(line: 33, column: 41, scope: !586)
!599 = !DILocation(line: 33, column: 43, scope: !586)
!600 = !DILocation(line: 33, column: 37, scope: !586)
!601 = !DILocation(line: 33, column: 16, scope: !586)
!602 = !DILocation(line: 33, column: 18, scope: !586)
!603 = !DILocation(line: 33, column: 22, scope: !586)
!604 = !DILocation(line: 34, column: 5, scope: !586)
!605 = !DILocation(line: 37, column: 13, scope: !586)
!606 = !DILocation(line: 37, column: 15, scope: !586)
!607 = !DILocation(line: 38, column: 20, scope: !586)
!608 = !DILocation(line: 38, column: 13, scope: !586)
!609 = !DILocation(line: 39, column: 32, scope: !586)
!610 = !DILocation(line: 39, column: 34, scope: !586)
!611 = !DILocation(line: 39, column: 42, scope: !586)
!612 = !DILocation(line: 39, column: 39, scope: !586)
!613 = !DILocation(line: 39, column: 16, scope: !586)
!614 = !DILocation(line: 39, column: 18, scope: !586)
!615 = !DILocation(line: 39, column: 24, scope: !586)
!616 = !DILocation(line: 40, column: 31, scope: !586)
!617 = !DILocation(line: 40, column: 33, scope: !586)
!618 = !DILocation(line: 40, column: 57, scope: !586)
!619 = !DILocation(line: 40, column: 55, scope: !586)
!620 = !DILocation(line: 40, column: 38, scope: !586)
!621 = !DILocation(line: 40, column: 70, scope: !586)
!622 = !DILocation(line: 40, column: 72, scope: !586)
!623 = !DILocation(line: 40, column: 79, scope: !586)
!624 = !DILocation(line: 40, column: 76, scope: !586)
!625 = !DILocation(line: 40, column: 61, scope: !586)
!626 = !DILocation(line: 40, column: 16, scope: !586)
!627 = !DILocation(line: 40, column: 18, scope: !586)
!628 = !DILocation(line: 40, column: 22, scope: !586)
!629 = !DILocation(line: 42, column: 19, scope: !586)
!630 = !DILocation(line: 42, column: 5, scope: !586)
!631 = !DILocation(line: 43, column: 1, scope: !586)
!632 = distinct !DISubprogram(name: "__moddi3", scope: !57, file: !57, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !117)
!633 = !DILocation(line: 22, column: 15, scope: !632)
!634 = !DILocation(line: 23, column: 16, scope: !632)
!635 = !DILocation(line: 23, column: 18, scope: !632)
!636 = !DILocation(line: 23, column: 12, scope: !632)
!637 = !DILocation(line: 24, column: 10, scope: !632)
!638 = !DILocation(line: 24, column: 14, scope: !632)
!639 = !DILocation(line: 24, column: 12, scope: !632)
!640 = !DILocation(line: 24, column: 19, scope: !632)
!641 = !DILocation(line: 24, column: 17, scope: !632)
!642 = !DILocation(line: 24, column: 7, scope: !632)
!643 = !DILocation(line: 25, column: 9, scope: !632)
!644 = !DILocation(line: 25, column: 11, scope: !632)
!645 = !DILocation(line: 25, column: 7, scope: !632)
!646 = !DILocation(line: 26, column: 10, scope: !632)
!647 = !DILocation(line: 26, column: 14, scope: !632)
!648 = !DILocation(line: 26, column: 12, scope: !632)
!649 = !DILocation(line: 26, column: 19, scope: !632)
!650 = !DILocation(line: 26, column: 17, scope: !632)
!651 = !DILocation(line: 26, column: 7, scope: !632)
!652 = !DILocation(line: 28, column: 18, scope: !632)
!653 = !DILocation(line: 28, column: 21, scope: !632)
!654 = !DILocation(line: 28, column: 5, scope: !632)
!655 = !DILocation(line: 29, column: 21, scope: !632)
!656 = !DILocation(line: 29, column: 25, scope: !632)
!657 = !DILocation(line: 29, column: 23, scope: !632)
!658 = !DILocation(line: 29, column: 30, scope: !632)
!659 = !DILocation(line: 29, column: 28, scope: !632)
!660 = !DILocation(line: 29, column: 5, scope: !632)
!661 = distinct !DISubprogram(name: "__modsi3", scope: !59, file: !59, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !117)
!662 = !DILocation(line: 22, column: 12, scope: !661)
!663 = !DILocation(line: 22, column: 25, scope: !661)
!664 = !DILocation(line: 22, column: 28, scope: !661)
!665 = !DILocation(line: 22, column: 16, scope: !661)
!666 = !DILocation(line: 22, column: 33, scope: !661)
!667 = !DILocation(line: 22, column: 31, scope: !661)
!668 = !DILocation(line: 22, column: 14, scope: !661)
!669 = !DILocation(line: 22, column: 5, scope: !661)
!670 = distinct !DISubprogram(name: "__mulvdi3", scope: !63, file: !63, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !117)
!671 = !DILocation(line: 24, column: 15, scope: !670)
!672 = !DILocation(line: 25, column: 18, scope: !670)
!673 = !DILocation(line: 26, column: 18, scope: !670)
!674 = !DILocation(line: 27, column: 9, scope: !670)
!675 = !DILocation(line: 27, column: 11, scope: !670)
!676 = !DILocation(line: 29, column: 13, scope: !670)
!677 = !DILocation(line: 29, column: 15, scope: !670)
!678 = !DILocation(line: 29, column: 20, scope: !670)
!679 = !DILocation(line: 29, column: 23, scope: !670)
!680 = !DILocation(line: 29, column: 25, scope: !670)
!681 = !DILocation(line: 30, column: 20, scope: !670)
!682 = !DILocation(line: 30, column: 24, scope: !670)
!683 = !DILocation(line: 30, column: 22, scope: !670)
!684 = !DILocation(line: 30, column: 13, scope: !670)
!685 = !DILocation(line: 31, column: 9, scope: !670)
!686 = !DILocation(line: 33, column: 9, scope: !670)
!687 = !DILocation(line: 33, column: 11, scope: !670)
!688 = !DILocation(line: 35, column: 13, scope: !670)
!689 = !DILocation(line: 35, column: 15, scope: !670)
!690 = !DILocation(line: 35, column: 20, scope: !670)
!691 = !DILocation(line: 35, column: 23, scope: !670)
!692 = !DILocation(line: 35, column: 25, scope: !670)
!693 = !DILocation(line: 36, column: 20, scope: !670)
!694 = !DILocation(line: 36, column: 24, scope: !670)
!695 = !DILocation(line: 36, column: 22, scope: !670)
!696 = !DILocation(line: 36, column: 13, scope: !670)
!697 = !DILocation(line: 37, column: 9, scope: !670)
!698 = !DILocation(line: 39, column: 17, scope: !670)
!699 = !DILocation(line: 39, column: 19, scope: !670)
!700 = !DILocation(line: 39, column: 12, scope: !670)
!701 = !DILocation(line: 40, column: 21, scope: !670)
!702 = !DILocation(line: 40, column: 25, scope: !670)
!703 = !DILocation(line: 40, column: 23, scope: !670)
!704 = !DILocation(line: 40, column: 31, scope: !670)
!705 = !DILocation(line: 40, column: 29, scope: !670)
!706 = !DILocation(line: 40, column: 12, scope: !670)
!707 = !DILocation(line: 41, column: 17, scope: !670)
!708 = !DILocation(line: 41, column: 19, scope: !670)
!709 = !DILocation(line: 41, column: 12, scope: !670)
!710 = !DILocation(line: 42, column: 21, scope: !670)
!711 = !DILocation(line: 42, column: 25, scope: !670)
!712 = !DILocation(line: 42, column: 23, scope: !670)
!713 = !DILocation(line: 42, column: 31, scope: !670)
!714 = !DILocation(line: 42, column: 29, scope: !670)
!715 = !DILocation(line: 42, column: 12, scope: !670)
!716 = !DILocation(line: 43, column: 9, scope: !670)
!717 = !DILocation(line: 43, column: 15, scope: !670)
!718 = !DILocation(line: 43, column: 19, scope: !670)
!719 = !DILocation(line: 43, column: 22, scope: !670)
!720 = !DILocation(line: 43, column: 28, scope: !670)
!721 = !DILocation(line: 44, column: 16, scope: !670)
!722 = !DILocation(line: 44, column: 20, scope: !670)
!723 = !DILocation(line: 44, column: 18, scope: !670)
!724 = !DILocation(line: 44, column: 9, scope: !670)
!725 = !DILocation(line: 45, column: 9, scope: !670)
!726 = !DILocation(line: 45, column: 15, scope: !670)
!727 = !DILocation(line: 45, column: 12, scope: !670)
!728 = !DILocation(line: 47, column: 13, scope: !670)
!729 = !DILocation(line: 47, column: 27, scope: !670)
!730 = !DILocation(line: 47, column: 25, scope: !670)
!731 = !DILocation(line: 47, column: 19, scope: !670)
!732 = !DILocation(line: 48, column: 13, scope: !670)
!733 = !DILocation(line: 49, column: 5, scope: !670)
!734 = !DILocation(line: 52, column: 13, scope: !670)
!735 = !DILocation(line: 52, column: 28, scope: !670)
!736 = !DILocation(line: 52, column: 27, scope: !670)
!737 = !DILocation(line: 52, column: 25, scope: !670)
!738 = !DILocation(line: 52, column: 19, scope: !670)
!739 = !DILocation(line: 53, column: 13, scope: !670)
!740 = !DILocation(line: 55, column: 12, scope: !670)
!741 = !DILocation(line: 55, column: 16, scope: !670)
!742 = !DILocation(line: 55, column: 14, scope: !670)
!743 = !DILocation(line: 55, column: 5, scope: !670)
!744 = !DILocation(line: 56, column: 1, scope: !670)
!745 = distinct !DISubprogram(name: "__mulvsi3", scope: !65, file: !65, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !117)
!746 = !DILocation(line: 24, column: 15, scope: !745)
!747 = !DILocation(line: 25, column: 18, scope: !745)
!748 = !DILocation(line: 26, column: 18, scope: !745)
!749 = !DILocation(line: 27, column: 9, scope: !745)
!750 = !DILocation(line: 27, column: 11, scope: !745)
!751 = !DILocation(line: 29, column: 13, scope: !745)
!752 = !DILocation(line: 29, column: 15, scope: !745)
!753 = !DILocation(line: 29, column: 20, scope: !745)
!754 = !DILocation(line: 29, column: 23, scope: !745)
!755 = !DILocation(line: 29, column: 25, scope: !745)
!756 = !DILocation(line: 30, column: 20, scope: !745)
!757 = !DILocation(line: 30, column: 24, scope: !745)
!758 = !DILocation(line: 30, column: 22, scope: !745)
!759 = !DILocation(line: 30, column: 13, scope: !745)
!760 = !DILocation(line: 31, column: 9, scope: !745)
!761 = !DILocation(line: 33, column: 9, scope: !745)
!762 = !DILocation(line: 33, column: 11, scope: !745)
!763 = !DILocation(line: 35, column: 13, scope: !745)
!764 = !DILocation(line: 35, column: 15, scope: !745)
!765 = !DILocation(line: 35, column: 20, scope: !745)
!766 = !DILocation(line: 35, column: 23, scope: !745)
!767 = !DILocation(line: 35, column: 25, scope: !745)
!768 = !DILocation(line: 36, column: 20, scope: !745)
!769 = !DILocation(line: 36, column: 24, scope: !745)
!770 = !DILocation(line: 36, column: 22, scope: !745)
!771 = !DILocation(line: 36, column: 13, scope: !745)
!772 = !DILocation(line: 37, column: 9, scope: !745)
!773 = !DILocation(line: 39, column: 17, scope: !745)
!774 = !DILocation(line: 39, column: 19, scope: !745)
!775 = !DILocation(line: 39, column: 12, scope: !745)
!776 = !DILocation(line: 40, column: 21, scope: !745)
!777 = !DILocation(line: 40, column: 25, scope: !745)
!778 = !DILocation(line: 40, column: 23, scope: !745)
!779 = !DILocation(line: 40, column: 31, scope: !745)
!780 = !DILocation(line: 40, column: 29, scope: !745)
!781 = !DILocation(line: 40, column: 12, scope: !745)
!782 = !DILocation(line: 41, column: 17, scope: !745)
!783 = !DILocation(line: 41, column: 19, scope: !745)
!784 = !DILocation(line: 41, column: 12, scope: !745)
!785 = !DILocation(line: 42, column: 21, scope: !745)
!786 = !DILocation(line: 42, column: 25, scope: !745)
!787 = !DILocation(line: 42, column: 23, scope: !745)
!788 = !DILocation(line: 42, column: 31, scope: !745)
!789 = !DILocation(line: 42, column: 29, scope: !745)
!790 = !DILocation(line: 42, column: 12, scope: !745)
!791 = !DILocation(line: 43, column: 9, scope: !745)
!792 = !DILocation(line: 43, column: 15, scope: !745)
!793 = !DILocation(line: 43, column: 19, scope: !745)
!794 = !DILocation(line: 43, column: 22, scope: !745)
!795 = !DILocation(line: 43, column: 28, scope: !745)
!796 = !DILocation(line: 44, column: 16, scope: !745)
!797 = !DILocation(line: 44, column: 20, scope: !745)
!798 = !DILocation(line: 44, column: 18, scope: !745)
!799 = !DILocation(line: 44, column: 9, scope: !745)
!800 = !DILocation(line: 45, column: 9, scope: !745)
!801 = !DILocation(line: 45, column: 15, scope: !745)
!802 = !DILocation(line: 45, column: 12, scope: !745)
!803 = !DILocation(line: 47, column: 13, scope: !745)
!804 = !DILocation(line: 47, column: 27, scope: !745)
!805 = !DILocation(line: 47, column: 25, scope: !745)
!806 = !DILocation(line: 47, column: 19, scope: !745)
!807 = !DILocation(line: 48, column: 13, scope: !745)
!808 = !DILocation(line: 49, column: 5, scope: !745)
!809 = !DILocation(line: 52, column: 13, scope: !745)
!810 = !DILocation(line: 52, column: 28, scope: !745)
!811 = !DILocation(line: 52, column: 27, scope: !745)
!812 = !DILocation(line: 52, column: 25, scope: !745)
!813 = !DILocation(line: 52, column: 19, scope: !745)
!814 = !DILocation(line: 53, column: 13, scope: !745)
!815 = !DILocation(line: 55, column: 12, scope: !745)
!816 = !DILocation(line: 55, column: 16, scope: !745)
!817 = !DILocation(line: 55, column: 14, scope: !745)
!818 = !DILocation(line: 55, column: 5, scope: !745)
!819 = !DILocation(line: 56, column: 1, scope: !745)
!820 = distinct !DISubprogram(name: "__paritydi2", scope: !69, file: !69, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !117)
!821 = !DILocation(line: 23, column: 13, scope: !820)
!822 = !DILocation(line: 23, column: 7, scope: !820)
!823 = !DILocation(line: 23, column: 11, scope: !820)
!824 = !DILocation(line: 24, column: 26, scope: !820)
!825 = !DILocation(line: 24, column: 28, scope: !820)
!826 = !DILocation(line: 24, column: 37, scope: !820)
!827 = !DILocation(line: 24, column: 39, scope: !820)
!828 = !DILocation(line: 24, column: 33, scope: !820)
!829 = !DILocation(line: 24, column: 12, scope: !820)
!830 = !DILocation(line: 24, column: 5, scope: !820)
!831 = distinct !DISubprogram(name: "__paritysi2", scope: !71, file: !71, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !117)
!832 = !DILocation(line: 22, column: 24, scope: !831)
!833 = !DILocation(line: 22, column: 12, scope: !831)
!834 = !DILocation(line: 23, column: 10, scope: !831)
!835 = !DILocation(line: 23, column: 12, scope: !831)
!836 = !DILocation(line: 23, column: 7, scope: !831)
!837 = !DILocation(line: 24, column: 10, scope: !831)
!838 = !DILocation(line: 24, column: 12, scope: !831)
!839 = !DILocation(line: 24, column: 7, scope: !831)
!840 = !DILocation(line: 25, column: 10, scope: !831)
!841 = !DILocation(line: 25, column: 12, scope: !831)
!842 = !DILocation(line: 25, column: 7, scope: !831)
!843 = !DILocation(line: 26, column: 24, scope: !831)
!844 = !DILocation(line: 26, column: 26, scope: !831)
!845 = !DILocation(line: 26, column: 20, scope: !831)
!846 = !DILocation(line: 26, column: 34, scope: !831)
!847 = !DILocation(line: 26, column: 5, scope: !831)
!848 = distinct !DISubprogram(name: "__popcountdi2", scope: !75, file: !75, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !117)
!849 = !DILocation(line: 22, column: 25, scope: !848)
!850 = !DILocation(line: 22, column: 12, scope: !848)
!851 = !DILocation(line: 23, column: 10, scope: !848)
!852 = !DILocation(line: 23, column: 17, scope: !848)
!853 = !DILocation(line: 23, column: 20, scope: !848)
!854 = !DILocation(line: 23, column: 26, scope: !848)
!855 = !DILocation(line: 23, column: 13, scope: !848)
!856 = !DILocation(line: 23, column: 8, scope: !848)
!857 = !DILocation(line: 25, column: 12, scope: !848)
!858 = !DILocation(line: 25, column: 15, scope: !848)
!859 = !DILocation(line: 25, column: 21, scope: !848)
!860 = !DILocation(line: 25, column: 49, scope: !848)
!861 = !DILocation(line: 25, column: 52, scope: !848)
!862 = !DILocation(line: 25, column: 46, scope: !848)
!863 = !DILocation(line: 25, column: 8, scope: !848)
!864 = !DILocation(line: 27, column: 11, scope: !848)
!865 = !DILocation(line: 27, column: 17, scope: !848)
!866 = !DILocation(line: 27, column: 20, scope: !848)
!867 = !DILocation(line: 27, column: 14, scope: !848)
!868 = !DILocation(line: 27, column: 27, scope: !848)
!869 = !DILocation(line: 27, column: 8, scope: !848)
!870 = !DILocation(line: 29, column: 25, scope: !848)
!871 = !DILocation(line: 29, column: 31, scope: !848)
!872 = !DILocation(line: 29, column: 34, scope: !848)
!873 = !DILocation(line: 29, column: 28, scope: !848)
!874 = !DILocation(line: 29, column: 16, scope: !848)
!875 = !DILocation(line: 29, column: 12, scope: !848)
!876 = !DILocation(line: 32, column: 9, scope: !848)
!877 = !DILocation(line: 32, column: 14, scope: !848)
!878 = !DILocation(line: 32, column: 16, scope: !848)
!879 = !DILocation(line: 32, column: 11, scope: !848)
!880 = !DILocation(line: 32, column: 7, scope: !848)
!881 = !DILocation(line: 35, column: 13, scope: !848)
!882 = !DILocation(line: 35, column: 18, scope: !848)
!883 = !DILocation(line: 35, column: 20, scope: !848)
!884 = !DILocation(line: 35, column: 15, scope: !848)
!885 = !DILocation(line: 35, column: 27, scope: !848)
!886 = !DILocation(line: 35, column: 5, scope: !848)
!887 = distinct !DISubprogram(name: "__popcountsi2", scope: !77, file: !77, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !117)
!888 = !DILocation(line: 22, column: 24, scope: !887)
!889 = !DILocation(line: 22, column: 12, scope: !887)
!890 = !DILocation(line: 23, column: 9, scope: !887)
!891 = !DILocation(line: 23, column: 15, scope: !887)
!892 = !DILocation(line: 23, column: 17, scope: !887)
!893 = !DILocation(line: 23, column: 23, scope: !887)
!894 = !DILocation(line: 23, column: 11, scope: !887)
!895 = !DILocation(line: 23, column: 7, scope: !887)
!896 = !DILocation(line: 25, column: 11, scope: !887)
!897 = !DILocation(line: 25, column: 13, scope: !887)
!898 = !DILocation(line: 25, column: 19, scope: !887)
!899 = !DILocation(line: 25, column: 36, scope: !887)
!900 = !DILocation(line: 25, column: 38, scope: !887)
!901 = !DILocation(line: 25, column: 33, scope: !887)
!902 = !DILocation(line: 25, column: 7, scope: !887)
!903 = !DILocation(line: 27, column: 10, scope: !887)
!904 = !DILocation(line: 27, column: 15, scope: !887)
!905 = !DILocation(line: 27, column: 17, scope: !887)
!906 = !DILocation(line: 27, column: 12, scope: !887)
!907 = !DILocation(line: 27, column: 24, scope: !887)
!908 = !DILocation(line: 27, column: 7, scope: !887)
!909 = !DILocation(line: 29, column: 10, scope: !887)
!910 = !DILocation(line: 29, column: 15, scope: !887)
!911 = !DILocation(line: 29, column: 17, scope: !887)
!912 = !DILocation(line: 29, column: 12, scope: !887)
!913 = !DILocation(line: 29, column: 7, scope: !887)
!914 = !DILocation(line: 32, column: 13, scope: !887)
!915 = !DILocation(line: 32, column: 18, scope: !887)
!916 = !DILocation(line: 32, column: 20, scope: !887)
!917 = !DILocation(line: 32, column: 15, scope: !887)
!918 = !DILocation(line: 32, column: 27, scope: !887)
!919 = !DILocation(line: 32, column: 5, scope: !887)
!920 = distinct !DISubprogram(name: "__subvdi3", scope: !81, file: !81, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !117)
!921 = !DILocation(line: 24, column: 25, scope: !920)
!922 = !DILocation(line: 24, column: 38, scope: !920)
!923 = !DILocation(line: 24, column: 27, scope: !920)
!924 = !DILocation(line: 24, column: 12, scope: !920)
!925 = !DILocation(line: 25, column: 9, scope: !920)
!926 = !DILocation(line: 25, column: 11, scope: !920)
!927 = !DILocation(line: 27, column: 13, scope: !920)
!928 = !DILocation(line: 27, column: 17, scope: !920)
!929 = !DILocation(line: 27, column: 15, scope: !920)
!930 = !DILocation(line: 28, column: 13, scope: !920)
!931 = !DILocation(line: 29, column: 5, scope: !920)
!932 = !DILocation(line: 32, column: 13, scope: !920)
!933 = !DILocation(line: 32, column: 18, scope: !920)
!934 = !DILocation(line: 32, column: 15, scope: !920)
!935 = !DILocation(line: 33, column: 13, scope: !920)
!936 = !DILocation(line: 35, column: 12, scope: !920)
!937 = !DILocation(line: 35, column: 5, scope: !920)
!938 = distinct !DISubprogram(name: "__subvsi3", scope: !83, file: !83, line: 22, type: !116, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !117)
!939 = !DILocation(line: 24, column: 25, scope: !938)
!940 = !DILocation(line: 24, column: 38, scope: !938)
!941 = !DILocation(line: 24, column: 27, scope: !938)
!942 = !DILocation(line: 24, column: 12, scope: !938)
!943 = !DILocation(line: 25, column: 9, scope: !938)
!944 = !DILocation(line: 25, column: 11, scope: !938)
!945 = !DILocation(line: 27, column: 13, scope: !938)
!946 = !DILocation(line: 27, column: 17, scope: !938)
!947 = !DILocation(line: 27, column: 15, scope: !938)
!948 = !DILocation(line: 28, column: 13, scope: !938)
!949 = !DILocation(line: 29, column: 5, scope: !938)
!950 = !DILocation(line: 32, column: 13, scope: !938)
!951 = !DILocation(line: 32, column: 18, scope: !938)
!952 = !DILocation(line: 32, column: 15, scope: !938)
!953 = !DILocation(line: 33, column: 13, scope: !938)
!954 = !DILocation(line: 35, column: 12, scope: !938)
!955 = !DILocation(line: 35, column: 5, scope: !938)
!956 = distinct !DISubprogram(name: "__ucmpdi2", scope: !87, file: !87, line: 23, type: !116, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !117)
!957 = !DILocation(line: 26, column: 13, scope: !956)
!958 = !DILocation(line: 26, column: 7, scope: !956)
!959 = !DILocation(line: 26, column: 11, scope: !956)
!960 = !DILocation(line: 28, column: 13, scope: !956)
!961 = !DILocation(line: 28, column: 7, scope: !956)
!962 = !DILocation(line: 28, column: 11, scope: !956)
!963 = !DILocation(line: 29, column: 11, scope: !956)
!964 = !DILocation(line: 29, column: 13, scope: !956)
!965 = !DILocation(line: 29, column: 22, scope: !956)
!966 = !DILocation(line: 29, column: 24, scope: !956)
!967 = !DILocation(line: 29, column: 18, scope: !956)
!968 = !DILocation(line: 29, column: 9, scope: !956)
!969 = !DILocation(line: 30, column: 9, scope: !956)
!970 = !DILocation(line: 31, column: 11, scope: !956)
!971 = !DILocation(line: 31, column: 13, scope: !956)
!972 = !DILocation(line: 31, column: 22, scope: !956)
!973 = !DILocation(line: 31, column: 24, scope: !956)
!974 = !DILocation(line: 31, column: 18, scope: !956)
!975 = !DILocation(line: 31, column: 9, scope: !956)
!976 = !DILocation(line: 32, column: 9, scope: !956)
!977 = !DILocation(line: 33, column: 11, scope: !956)
!978 = !DILocation(line: 33, column: 13, scope: !956)
!979 = !DILocation(line: 33, column: 21, scope: !956)
!980 = !DILocation(line: 33, column: 23, scope: !956)
!981 = !DILocation(line: 33, column: 17, scope: !956)
!982 = !DILocation(line: 33, column: 9, scope: !956)
!983 = !DILocation(line: 34, column: 9, scope: !956)
!984 = !DILocation(line: 35, column: 11, scope: !956)
!985 = !DILocation(line: 35, column: 13, scope: !956)
!986 = !DILocation(line: 35, column: 21, scope: !956)
!987 = !DILocation(line: 35, column: 23, scope: !956)
!988 = !DILocation(line: 35, column: 17, scope: !956)
!989 = !DILocation(line: 35, column: 9, scope: !956)
!990 = !DILocation(line: 36, column: 9, scope: !956)
!991 = !DILocation(line: 37, column: 5, scope: !956)
!992 = !DILocation(line: 38, column: 1, scope: !956)
!993 = distinct !DISubprogram(name: "__udivdi3", scope: !91, file: !91, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !117)
!994 = !DILocation(line: 22, column: 25, scope: !993)
!995 = !DILocation(line: 22, column: 28, scope: !993)
!996 = !DILocation(line: 22, column: 12, scope: !993)
!997 = !DILocation(line: 22, column: 5, scope: !993)
!998 = distinct !DISubprogram(name: "__udivmoddi4", scope: !93, file: !93, line: 24, type: !116, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !117)
!999 = !DILocation(line: 26, column: 20, scope: !998)
!1000 = !DILocation(line: 27, column: 20, scope: !998)
!1001 = !DILocation(line: 29, column: 13, scope: !998)
!1002 = !DILocation(line: 29, column: 7, scope: !998)
!1003 = !DILocation(line: 29, column: 11, scope: !998)
!1004 = !DILocation(line: 31, column: 13, scope: !998)
!1005 = !DILocation(line: 31, column: 7, scope: !998)
!1006 = !DILocation(line: 31, column: 11, scope: !998)
!1007 = !DILocation(line: 36, column: 11, scope: !998)
!1008 = !DILocation(line: 36, column: 13, scope: !998)
!1009 = !DILocation(line: 36, column: 18, scope: !998)
!1010 = !DILocation(line: 36, column: 9, scope: !998)
!1011 = !DILocation(line: 38, column: 15, scope: !998)
!1012 = !DILocation(line: 38, column: 17, scope: !998)
!1013 = !DILocation(line: 38, column: 22, scope: !998)
!1014 = !DILocation(line: 38, column: 13, scope: !998)
!1015 = !DILocation(line: 44, column: 17, scope: !998)
!1016 = !DILocation(line: 45, column: 26, scope: !998)
!1017 = !DILocation(line: 45, column: 28, scope: !998)
!1018 = !DILocation(line: 45, column: 36, scope: !998)
!1019 = !DILocation(line: 45, column: 38, scope: !998)
!1020 = !DILocation(line: 45, column: 32, scope: !998)
!1021 = !DILocation(line: 45, column: 24, scope: !998)
!1022 = !DILocation(line: 45, column: 18, scope: !998)
!1023 = !DILocation(line: 45, column: 22, scope: !998)
!1024 = !DILocation(line: 45, column: 17, scope: !998)
!1025 = !DILocation(line: 46, column: 22, scope: !998)
!1026 = !DILocation(line: 46, column: 24, scope: !998)
!1027 = !DILocation(line: 46, column: 32, scope: !998)
!1028 = !DILocation(line: 46, column: 34, scope: !998)
!1029 = !DILocation(line: 46, column: 28, scope: !998)
!1030 = !DILocation(line: 46, column: 20, scope: !998)
!1031 = !DILocation(line: 46, column: 13, scope: !998)
!1032 = !DILocation(line: 52, column: 13, scope: !998)
!1033 = !DILocation(line: 53, column: 22, scope: !998)
!1034 = !DILocation(line: 53, column: 24, scope: !998)
!1035 = !DILocation(line: 53, column: 20, scope: !998)
!1036 = !DILocation(line: 53, column: 14, scope: !998)
!1037 = !DILocation(line: 53, column: 18, scope: !998)
!1038 = !DILocation(line: 53, column: 13, scope: !998)
!1039 = !DILocation(line: 54, column: 9, scope: !998)
!1040 = !DILocation(line: 57, column: 11, scope: !998)
!1041 = !DILocation(line: 57, column: 13, scope: !998)
!1042 = !DILocation(line: 57, column: 17, scope: !998)
!1043 = !DILocation(line: 57, column: 9, scope: !998)
!1044 = !DILocation(line: 59, column: 15, scope: !998)
!1045 = !DILocation(line: 59, column: 17, scope: !998)
!1046 = !DILocation(line: 59, column: 22, scope: !998)
!1047 = !DILocation(line: 59, column: 13, scope: !998)
!1048 = !DILocation(line: 65, column: 17, scope: !998)
!1049 = !DILocation(line: 66, column: 26, scope: !998)
!1050 = !DILocation(line: 66, column: 28, scope: !998)
!1051 = !DILocation(line: 66, column: 37, scope: !998)
!1052 = !DILocation(line: 66, column: 39, scope: !998)
!1053 = !DILocation(line: 66, column: 33, scope: !998)
!1054 = !DILocation(line: 66, column: 24, scope: !998)
!1055 = !DILocation(line: 66, column: 18, scope: !998)
!1056 = !DILocation(line: 66, column: 22, scope: !998)
!1057 = !DILocation(line: 66, column: 17, scope: !998)
!1058 = !DILocation(line: 67, column: 22, scope: !998)
!1059 = !DILocation(line: 67, column: 24, scope: !998)
!1060 = !DILocation(line: 67, column: 33, scope: !998)
!1061 = !DILocation(line: 67, column: 35, scope: !998)
!1062 = !DILocation(line: 67, column: 29, scope: !998)
!1063 = !DILocation(line: 67, column: 20, scope: !998)
!1064 = !DILocation(line: 67, column: 13, scope: !998)
!1065 = !DILocation(line: 70, column: 15, scope: !998)
!1066 = !DILocation(line: 70, column: 17, scope: !998)
!1067 = !DILocation(line: 70, column: 21, scope: !998)
!1068 = !DILocation(line: 70, column: 13, scope: !998)
!1069 = !DILocation(line: 76, column: 17, scope: !998)
!1070 = !DILocation(line: 78, column: 30, scope: !998)
!1071 = !DILocation(line: 78, column: 32, scope: !998)
!1072 = !DILocation(line: 78, column: 41, scope: !998)
!1073 = !DILocation(line: 78, column: 43, scope: !998)
!1074 = !DILocation(line: 78, column: 37, scope: !998)
!1075 = !DILocation(line: 78, column: 19, scope: !998)
!1076 = !DILocation(line: 78, column: 21, scope: !998)
!1077 = !DILocation(line: 78, column: 26, scope: !998)
!1078 = !DILocation(line: 79, column: 19, scope: !998)
!1079 = !DILocation(line: 79, column: 21, scope: !998)
!1080 = !DILocation(line: 79, column: 25, scope: !998)
!1081 = !DILocation(line: 80, column: 26, scope: !998)
!1082 = !DILocation(line: 80, column: 18, scope: !998)
!1083 = !DILocation(line: 80, column: 22, scope: !998)
!1084 = !DILocation(line: 81, column: 13, scope: !998)
!1085 = !DILocation(line: 82, column: 22, scope: !998)
!1086 = !DILocation(line: 82, column: 24, scope: !998)
!1087 = !DILocation(line: 82, column: 33, scope: !998)
!1088 = !DILocation(line: 82, column: 35, scope: !998)
!1089 = !DILocation(line: 82, column: 29, scope: !998)
!1090 = !DILocation(line: 82, column: 20, scope: !998)
!1091 = !DILocation(line: 82, column: 13, scope: !998)
!1092 = !DILocation(line: 88, column: 16, scope: !998)
!1093 = !DILocation(line: 88, column: 18, scope: !998)
!1094 = !DILocation(line: 88, column: 28, scope: !998)
!1095 = !DILocation(line: 88, column: 30, scope: !998)
!1096 = !DILocation(line: 88, column: 35, scope: !998)
!1097 = !DILocation(line: 88, column: 23, scope: !998)
!1098 = !DILocation(line: 88, column: 41, scope: !998)
!1099 = !DILocation(line: 88, column: 13, scope: !998)
!1100 = !DILocation(line: 90, column: 17, scope: !998)
!1101 = !DILocation(line: 92, column: 29, scope: !998)
!1102 = !DILocation(line: 92, column: 31, scope: !998)
!1103 = !DILocation(line: 92, column: 19, scope: !998)
!1104 = !DILocation(line: 92, column: 21, scope: !998)
!1105 = !DILocation(line: 92, column: 25, scope: !998)
!1106 = !DILocation(line: 93, column: 30, scope: !998)
!1107 = !DILocation(line: 93, column: 32, scope: !998)
!1108 = !DILocation(line: 93, column: 42, scope: !998)
!1109 = !DILocation(line: 93, column: 44, scope: !998)
!1110 = !DILocation(line: 93, column: 49, scope: !998)
!1111 = !DILocation(line: 93, column: 37, scope: !998)
!1112 = !DILocation(line: 93, column: 19, scope: !998)
!1113 = !DILocation(line: 93, column: 21, scope: !998)
!1114 = !DILocation(line: 93, column: 26, scope: !998)
!1115 = !DILocation(line: 94, column: 26, scope: !998)
!1116 = !DILocation(line: 94, column: 18, scope: !998)
!1117 = !DILocation(line: 94, column: 22, scope: !998)
!1118 = !DILocation(line: 95, column: 13, scope: !998)
!1119 = !DILocation(line: 96, column: 22, scope: !998)
!1120 = !DILocation(line: 96, column: 24, scope: !998)
!1121 = !DILocation(line: 96, column: 48, scope: !998)
!1122 = !DILocation(line: 96, column: 50, scope: !998)
!1123 = !DILocation(line: 96, column: 32, scope: !998)
!1124 = !DILocation(line: 96, column: 29, scope: !998)
!1125 = !DILocation(line: 96, column: 20, scope: !998)
!1126 = !DILocation(line: 96, column: 13, scope: !998)
!1127 = !DILocation(line: 102, column: 30, scope: !998)
!1128 = !DILocation(line: 102, column: 32, scope: !998)
!1129 = !DILocation(line: 102, column: 14, scope: !998)
!1130 = !DILocation(line: 102, column: 56, scope: !998)
!1131 = !DILocation(line: 102, column: 58, scope: !998)
!1132 = !DILocation(line: 102, column: 40, scope: !998)
!1133 = !DILocation(line: 102, column: 38, scope: !998)
!1134 = !DILocation(line: 102, column: 12, scope: !998)
!1135 = !DILocation(line: 104, column: 13, scope: !998)
!1136 = !DILocation(line: 104, column: 16, scope: !998)
!1137 = !DILocation(line: 106, column: 16, scope: !998)
!1138 = !DILocation(line: 107, column: 26, scope: !998)
!1139 = !DILocation(line: 107, column: 18, scope: !998)
!1140 = !DILocation(line: 107, column: 22, scope: !998)
!1141 = !DILocation(line: 107, column: 17, scope: !998)
!1142 = !DILocation(line: 108, column: 13, scope: !998)
!1143 = !DILocation(line: 110, column: 9, scope: !998)
!1144 = !DILocation(line: 113, column: 11, scope: !998)
!1145 = !DILocation(line: 113, column: 13, scope: !998)
!1146 = !DILocation(line: 113, column: 17, scope: !998)
!1147 = !DILocation(line: 114, column: 22, scope: !998)
!1148 = !DILocation(line: 114, column: 24, scope: !998)
!1149 = !DILocation(line: 114, column: 47, scope: !998)
!1150 = !DILocation(line: 114, column: 45, scope: !998)
!1151 = !DILocation(line: 114, column: 28, scope: !998)
!1152 = !DILocation(line: 114, column: 11, scope: !998)
!1153 = !DILocation(line: 114, column: 13, scope: !998)
!1154 = !DILocation(line: 114, column: 18, scope: !998)
!1155 = !DILocation(line: 116, column: 22, scope: !998)
!1156 = !DILocation(line: 116, column: 24, scope: !998)
!1157 = !DILocation(line: 116, column: 32, scope: !998)
!1158 = !DILocation(line: 116, column: 29, scope: !998)
!1159 = !DILocation(line: 116, column: 11, scope: !998)
!1160 = !DILocation(line: 116, column: 13, scope: !998)
!1161 = !DILocation(line: 116, column: 18, scope: !998)
!1162 = !DILocation(line: 117, column: 22, scope: !998)
!1163 = !DILocation(line: 117, column: 24, scope: !998)
!1164 = !DILocation(line: 117, column: 48, scope: !998)
!1165 = !DILocation(line: 117, column: 46, scope: !998)
!1166 = !DILocation(line: 117, column: 29, scope: !998)
!1167 = !DILocation(line: 117, column: 58, scope: !998)
!1168 = !DILocation(line: 117, column: 60, scope: !998)
!1169 = !DILocation(line: 117, column: 67, scope: !998)
!1170 = !DILocation(line: 117, column: 64, scope: !998)
!1171 = !DILocation(line: 117, column: 53, scope: !998)
!1172 = !DILocation(line: 117, column: 11, scope: !998)
!1173 = !DILocation(line: 117, column: 13, scope: !998)
!1174 = !DILocation(line: 117, column: 17, scope: !998)
!1175 = !DILocation(line: 118, column: 5, scope: !998)
!1176 = !DILocation(line: 121, column: 15, scope: !998)
!1177 = !DILocation(line: 121, column: 17, scope: !998)
!1178 = !DILocation(line: 121, column: 22, scope: !998)
!1179 = !DILocation(line: 121, column: 13, scope: !998)
!1180 = !DILocation(line: 127, column: 20, scope: !998)
!1181 = !DILocation(line: 127, column: 22, scope: !998)
!1182 = !DILocation(line: 127, column: 31, scope: !998)
!1183 = !DILocation(line: 127, column: 33, scope: !998)
!1184 = !DILocation(line: 127, column: 37, scope: !998)
!1185 = !DILocation(line: 127, column: 26, scope: !998)
!1186 = !DILocation(line: 127, column: 43, scope: !998)
!1187 = !DILocation(line: 127, column: 17, scope: !998)
!1188 = !DILocation(line: 129, column: 21, scope: !998)
!1189 = !DILocation(line: 130, column: 30, scope: !998)
!1190 = !DILocation(line: 130, column: 32, scope: !998)
!1191 = !DILocation(line: 130, column: 41, scope: !998)
!1192 = !DILocation(line: 130, column: 43, scope: !998)
!1193 = !DILocation(line: 130, column: 47, scope: !998)
!1194 = !DILocation(line: 130, column: 36, scope: !998)
!1195 = !DILocation(line: 130, column: 28, scope: !998)
!1196 = !DILocation(line: 130, column: 22, scope: !998)
!1197 = !DILocation(line: 130, column: 26, scope: !998)
!1198 = !DILocation(line: 130, column: 21, scope: !998)
!1199 = !DILocation(line: 131, column: 23, scope: !998)
!1200 = !DILocation(line: 131, column: 25, scope: !998)
!1201 = !DILocation(line: 131, column: 29, scope: !998)
!1202 = !DILocation(line: 131, column: 21, scope: !998)
!1203 = !DILocation(line: 132, column: 30, scope: !998)
!1204 = !DILocation(line: 132, column: 21, scope: !998)
!1205 = !DILocation(line: 133, column: 38, scope: !998)
!1206 = !DILocation(line: 133, column: 40, scope: !998)
!1207 = !DILocation(line: 133, column: 22, scope: !998)
!1208 = !DILocation(line: 133, column: 20, scope: !998)
!1209 = !DILocation(line: 134, column: 30, scope: !998)
!1210 = !DILocation(line: 134, column: 32, scope: !998)
!1211 = !DILocation(line: 134, column: 40, scope: !998)
!1212 = !DILocation(line: 134, column: 37, scope: !998)
!1213 = !DILocation(line: 134, column: 19, scope: !998)
!1214 = !DILocation(line: 134, column: 21, scope: !998)
!1215 = !DILocation(line: 134, column: 26, scope: !998)
!1216 = !DILocation(line: 135, column: 30, scope: !998)
!1217 = !DILocation(line: 135, column: 32, scope: !998)
!1218 = !DILocation(line: 135, column: 56, scope: !998)
!1219 = !DILocation(line: 135, column: 54, scope: !998)
!1220 = !DILocation(line: 135, column: 37, scope: !998)
!1221 = !DILocation(line: 135, column: 66, scope: !998)
!1222 = !DILocation(line: 135, column: 68, scope: !998)
!1223 = !DILocation(line: 135, column: 75, scope: !998)
!1224 = !DILocation(line: 135, column: 72, scope: !998)
!1225 = !DILocation(line: 135, column: 61, scope: !998)
!1226 = !DILocation(line: 135, column: 19, scope: !998)
!1227 = !DILocation(line: 135, column: 21, scope: !998)
!1228 = !DILocation(line: 135, column: 25, scope: !998)
!1229 = !DILocation(line: 136, column: 26, scope: !998)
!1230 = !DILocation(line: 136, column: 17, scope: !998)
!1231 = !DILocation(line: 142, column: 53, scope: !998)
!1232 = !DILocation(line: 142, column: 55, scope: !998)
!1233 = !DILocation(line: 142, column: 37, scope: !998)
!1234 = !DILocation(line: 142, column: 35, scope: !998)
!1235 = !DILocation(line: 142, column: 78, scope: !998)
!1236 = !DILocation(line: 142, column: 80, scope: !998)
!1237 = !DILocation(line: 142, column: 62, scope: !998)
!1238 = !DILocation(line: 142, column: 60, scope: !998)
!1239 = !DILocation(line: 142, column: 16, scope: !998)
!1240 = !DILocation(line: 147, column: 17, scope: !998)
!1241 = !DILocation(line: 147, column: 20, scope: !998)
!1242 = !DILocation(line: 149, column: 19, scope: !998)
!1243 = !DILocation(line: 149, column: 21, scope: !998)
!1244 = !DILocation(line: 149, column: 25, scope: !998)
!1245 = !DILocation(line: 150, column: 30, scope: !998)
!1246 = !DILocation(line: 150, column: 32, scope: !998)
!1247 = !DILocation(line: 150, column: 19, scope: !998)
!1248 = !DILocation(line: 150, column: 21, scope: !998)
!1249 = !DILocation(line: 150, column: 26, scope: !998)
!1250 = !DILocation(line: 151, column: 19, scope: !998)
!1251 = !DILocation(line: 151, column: 21, scope: !998)
!1252 = !DILocation(line: 151, column: 26, scope: !998)
!1253 = !DILocation(line: 152, column: 29, scope: !998)
!1254 = !DILocation(line: 152, column: 31, scope: !998)
!1255 = !DILocation(line: 152, column: 19, scope: !998)
!1256 = !DILocation(line: 152, column: 21, scope: !998)
!1257 = !DILocation(line: 152, column: 25, scope: !998)
!1258 = !DILocation(line: 153, column: 13, scope: !998)
!1259 = !DILocation(line: 154, column: 22, scope: !998)
!1260 = !DILocation(line: 154, column: 25, scope: !998)
!1261 = !DILocation(line: 156, column: 19, scope: !998)
!1262 = !DILocation(line: 156, column: 21, scope: !998)
!1263 = !DILocation(line: 156, column: 25, scope: !998)
!1264 = !DILocation(line: 157, column: 30, scope: !998)
!1265 = !DILocation(line: 157, column: 32, scope: !998)
!1266 = !DILocation(line: 157, column: 55, scope: !998)
!1267 = !DILocation(line: 157, column: 53, scope: !998)
!1268 = !DILocation(line: 157, column: 36, scope: !998)
!1269 = !DILocation(line: 157, column: 19, scope: !998)
!1270 = !DILocation(line: 157, column: 21, scope: !998)
!1271 = !DILocation(line: 157, column: 26, scope: !998)
!1272 = !DILocation(line: 158, column: 30, scope: !998)
!1273 = !DILocation(line: 158, column: 32, scope: !998)
!1274 = !DILocation(line: 158, column: 40, scope: !998)
!1275 = !DILocation(line: 158, column: 37, scope: !998)
!1276 = !DILocation(line: 158, column: 19, scope: !998)
!1277 = !DILocation(line: 158, column: 21, scope: !998)
!1278 = !DILocation(line: 158, column: 26, scope: !998)
!1279 = !DILocation(line: 159, column: 30, scope: !998)
!1280 = !DILocation(line: 159, column: 32, scope: !998)
!1281 = !DILocation(line: 159, column: 56, scope: !998)
!1282 = !DILocation(line: 159, column: 54, scope: !998)
!1283 = !DILocation(line: 159, column: 37, scope: !998)
!1284 = !DILocation(line: 159, column: 66, scope: !998)
!1285 = !DILocation(line: 159, column: 68, scope: !998)
!1286 = !DILocation(line: 159, column: 75, scope: !998)
!1287 = !DILocation(line: 159, column: 72, scope: !998)
!1288 = !DILocation(line: 159, column: 61, scope: !998)
!1289 = !DILocation(line: 159, column: 19, scope: !998)
!1290 = !DILocation(line: 159, column: 21, scope: !998)
!1291 = !DILocation(line: 159, column: 25, scope: !998)
!1292 = !DILocation(line: 160, column: 13, scope: !998)
!1293 = !DILocation(line: 163, column: 29, scope: !998)
!1294 = !DILocation(line: 163, column: 31, scope: !998)
!1295 = !DILocation(line: 163, column: 55, scope: !998)
!1296 = !DILocation(line: 163, column: 53, scope: !998)
!1297 = !DILocation(line: 163, column: 35, scope: !998)
!1298 = !DILocation(line: 163, column: 19, scope: !998)
!1299 = !DILocation(line: 163, column: 21, scope: !998)
!1300 = !DILocation(line: 163, column: 25, scope: !998)
!1301 = !DILocation(line: 164, column: 31, scope: !998)
!1302 = !DILocation(line: 164, column: 33, scope: !998)
!1303 = !DILocation(line: 164, column: 58, scope: !998)
!1304 = !DILocation(line: 164, column: 56, scope: !998)
!1305 = !DILocation(line: 164, column: 38, scope: !998)
!1306 = !DILocation(line: 165, column: 31, scope: !998)
!1307 = !DILocation(line: 165, column: 33, scope: !998)
!1308 = !DILocation(line: 165, column: 41, scope: !998)
!1309 = !DILocation(line: 165, column: 44, scope: !998)
!1310 = !DILocation(line: 165, column: 37, scope: !998)
!1311 = !DILocation(line: 164, column: 63, scope: !998)
!1312 = !DILocation(line: 164, column: 19, scope: !998)
!1313 = !DILocation(line: 164, column: 21, scope: !998)
!1314 = !DILocation(line: 164, column: 26, scope: !998)
!1315 = !DILocation(line: 166, column: 19, scope: !998)
!1316 = !DILocation(line: 166, column: 21, scope: !998)
!1317 = !DILocation(line: 166, column: 26, scope: !998)
!1318 = !DILocation(line: 167, column: 29, scope: !998)
!1319 = !DILocation(line: 167, column: 31, scope: !998)
!1320 = !DILocation(line: 167, column: 40, scope: !998)
!1321 = !DILocation(line: 167, column: 43, scope: !998)
!1322 = !DILocation(line: 167, column: 36, scope: !998)
!1323 = !DILocation(line: 167, column: 19, scope: !998)
!1324 = !DILocation(line: 167, column: 21, scope: !998)
!1325 = !DILocation(line: 167, column: 25, scope: !998)
!1326 = !DILocation(line: 169, column: 9, scope: !998)
!1327 = !DILocation(line: 176, column: 34, scope: !998)
!1328 = !DILocation(line: 176, column: 36, scope: !998)
!1329 = !DILocation(line: 176, column: 18, scope: !998)
!1330 = !DILocation(line: 176, column: 60, scope: !998)
!1331 = !DILocation(line: 176, column: 62, scope: !998)
!1332 = !DILocation(line: 176, column: 44, scope: !998)
!1333 = !DILocation(line: 176, column: 42, scope: !998)
!1334 = !DILocation(line: 176, column: 16, scope: !998)
!1335 = !DILocation(line: 178, column: 17, scope: !998)
!1336 = !DILocation(line: 178, column: 20, scope: !998)
!1337 = !DILocation(line: 180, column: 21, scope: !998)
!1338 = !DILocation(line: 181, column: 30, scope: !998)
!1339 = !DILocation(line: 181, column: 22, scope: !998)
!1340 = !DILocation(line: 181, column: 26, scope: !998)
!1341 = !DILocation(line: 181, column: 21, scope: !998)
!1342 = !DILocation(line: 182, column: 17, scope: !998)
!1343 = !DILocation(line: 184, column: 13, scope: !998)
!1344 = !DILocation(line: 187, column: 15, scope: !998)
!1345 = !DILocation(line: 187, column: 17, scope: !998)
!1346 = !DILocation(line: 187, column: 21, scope: !998)
!1347 = !DILocation(line: 188, column: 17, scope: !998)
!1348 = !DILocation(line: 188, column: 20, scope: !998)
!1349 = !DILocation(line: 190, column: 30, scope: !998)
!1350 = !DILocation(line: 190, column: 32, scope: !998)
!1351 = !DILocation(line: 190, column: 19, scope: !998)
!1352 = !DILocation(line: 190, column: 21, scope: !998)
!1353 = !DILocation(line: 190, column: 26, scope: !998)
!1354 = !DILocation(line: 191, column: 19, scope: !998)
!1355 = !DILocation(line: 191, column: 21, scope: !998)
!1356 = !DILocation(line: 191, column: 26, scope: !998)
!1357 = !DILocation(line: 192, column: 29, scope: !998)
!1358 = !DILocation(line: 192, column: 31, scope: !998)
!1359 = !DILocation(line: 192, column: 19, scope: !998)
!1360 = !DILocation(line: 192, column: 21, scope: !998)
!1361 = !DILocation(line: 192, column: 25, scope: !998)
!1362 = !DILocation(line: 193, column: 13, scope: !998)
!1363 = !DILocation(line: 196, column: 30, scope: !998)
!1364 = !DILocation(line: 196, column: 32, scope: !998)
!1365 = !DILocation(line: 196, column: 55, scope: !998)
!1366 = !DILocation(line: 196, column: 53, scope: !998)
!1367 = !DILocation(line: 196, column: 36, scope: !998)
!1368 = !DILocation(line: 196, column: 19, scope: !998)
!1369 = !DILocation(line: 196, column: 21, scope: !998)
!1370 = !DILocation(line: 196, column: 26, scope: !998)
!1371 = !DILocation(line: 197, column: 30, scope: !998)
!1372 = !DILocation(line: 197, column: 32, scope: !998)
!1373 = !DILocation(line: 197, column: 40, scope: !998)
!1374 = !DILocation(line: 197, column: 37, scope: !998)
!1375 = !DILocation(line: 197, column: 19, scope: !998)
!1376 = !DILocation(line: 197, column: 21, scope: !998)
!1377 = !DILocation(line: 197, column: 26, scope: !998)
!1378 = !DILocation(line: 198, column: 30, scope: !998)
!1379 = !DILocation(line: 198, column: 32, scope: !998)
!1380 = !DILocation(line: 198, column: 56, scope: !998)
!1381 = !DILocation(line: 198, column: 54, scope: !998)
!1382 = !DILocation(line: 198, column: 37, scope: !998)
!1383 = !DILocation(line: 198, column: 66, scope: !998)
!1384 = !DILocation(line: 198, column: 68, scope: !998)
!1385 = !DILocation(line: 198, column: 75, scope: !998)
!1386 = !DILocation(line: 198, column: 72, scope: !998)
!1387 = !DILocation(line: 198, column: 61, scope: !998)
!1388 = !DILocation(line: 198, column: 19, scope: !998)
!1389 = !DILocation(line: 198, column: 21, scope: !998)
!1390 = !DILocation(line: 198, column: 25, scope: !998)
!1391 = !DILocation(line: 208, column: 12, scope: !998)
!1392 = !DILocation(line: 209, column: 5, scope: !998)
!1393 = !DILocation(line: 209, column: 12, scope: !998)
!1394 = !DILocation(line: 209, column: 15, scope: !998)
!1395 = !DILocation(line: 212, column: 23, scope: !998)
!1396 = !DILocation(line: 212, column: 25, scope: !998)
!1397 = !DILocation(line: 212, column: 30, scope: !998)
!1398 = !DILocation(line: 212, column: 41, scope: !998)
!1399 = !DILocation(line: 212, column: 43, scope: !998)
!1400 = !DILocation(line: 212, column: 48, scope: !998)
!1401 = !DILocation(line: 212, column: 36, scope: !998)
!1402 = !DILocation(line: 212, column: 11, scope: !998)
!1403 = !DILocation(line: 212, column: 13, scope: !998)
!1404 = !DILocation(line: 212, column: 18, scope: !998)
!1405 = !DILocation(line: 213, column: 23, scope: !998)
!1406 = !DILocation(line: 213, column: 25, scope: !998)
!1407 = !DILocation(line: 213, column: 30, scope: !998)
!1408 = !DILocation(line: 213, column: 41, scope: !998)
!1409 = !DILocation(line: 213, column: 43, scope: !998)
!1410 = !DILocation(line: 213, column: 48, scope: !998)
!1411 = !DILocation(line: 213, column: 36, scope: !998)
!1412 = !DILocation(line: 213, column: 11, scope: !998)
!1413 = !DILocation(line: 213, column: 13, scope: !998)
!1414 = !DILocation(line: 213, column: 18, scope: !998)
!1415 = !DILocation(line: 214, column: 23, scope: !998)
!1416 = !DILocation(line: 214, column: 25, scope: !998)
!1417 = !DILocation(line: 214, column: 30, scope: !998)
!1418 = !DILocation(line: 214, column: 41, scope: !998)
!1419 = !DILocation(line: 214, column: 43, scope: !998)
!1420 = !DILocation(line: 214, column: 48, scope: !998)
!1421 = !DILocation(line: 214, column: 36, scope: !998)
!1422 = !DILocation(line: 214, column: 11, scope: !998)
!1423 = !DILocation(line: 214, column: 13, scope: !998)
!1424 = !DILocation(line: 214, column: 18, scope: !998)
!1425 = !DILocation(line: 215, column: 23, scope: !998)
!1426 = !DILocation(line: 215, column: 25, scope: !998)
!1427 = !DILocation(line: 215, column: 30, scope: !998)
!1428 = !DILocation(line: 215, column: 38, scope: !998)
!1429 = !DILocation(line: 215, column: 36, scope: !998)
!1430 = !DILocation(line: 215, column: 11, scope: !998)
!1431 = !DILocation(line: 215, column: 13, scope: !998)
!1432 = !DILocation(line: 215, column: 18, scope: !998)
!1433 = !DILocation(line: 223, column: 37, scope: !998)
!1434 = !DILocation(line: 223, column: 45, scope: !998)
!1435 = !DILocation(line: 223, column: 41, scope: !998)
!1436 = !DILocation(line: 223, column: 49, scope: !998)
!1437 = !DILocation(line: 223, column: 54, scope: !998)
!1438 = !DILocation(line: 223, column: 22, scope: !998)
!1439 = !DILocation(line: 224, column: 17, scope: !998)
!1440 = !DILocation(line: 224, column: 19, scope: !998)
!1441 = !DILocation(line: 224, column: 15, scope: !998)
!1442 = !DILocation(line: 225, column: 20, scope: !998)
!1443 = !DILocation(line: 225, column: 26, scope: !998)
!1444 = !DILocation(line: 225, column: 24, scope: !998)
!1445 = !DILocation(line: 225, column: 11, scope: !998)
!1446 = !DILocation(line: 225, column: 15, scope: !998)
!1447 = !DILocation(line: 226, column: 5, scope: !998)
!1448 = !DILocation(line: 209, column: 20, scope: !998)
!1449 = distinct !{!1449, !1392, !1447, !1450}
!1450 = !{!"llvm.loop.mustprogress"}
!1451 = !DILocation(line: 227, column: 16, scope: !998)
!1452 = !DILocation(line: 227, column: 20, scope: !998)
!1453 = !DILocation(line: 227, column: 28, scope: !998)
!1454 = !DILocation(line: 227, column: 26, scope: !998)
!1455 = !DILocation(line: 227, column: 7, scope: !998)
!1456 = !DILocation(line: 227, column: 11, scope: !998)
!1457 = !DILocation(line: 228, column: 9, scope: !998)
!1458 = !DILocation(line: 229, column: 18, scope: !998)
!1459 = !DILocation(line: 229, column: 10, scope: !998)
!1460 = !DILocation(line: 229, column: 14, scope: !998)
!1461 = !DILocation(line: 229, column: 9, scope: !998)
!1462 = !DILocation(line: 230, column: 14, scope: !998)
!1463 = !DILocation(line: 230, column: 5, scope: !998)
!1464 = !DILocation(line: 231, column: 1, scope: !998)
!1465 = distinct !DISubprogram(name: "__udivmodsi4", scope: !95, file: !95, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !117)
!1466 = !DILocation(line: 22, column: 24, scope: !1465)
!1467 = !DILocation(line: 22, column: 26, scope: !1465)
!1468 = !DILocation(line: 22, column: 14, scope: !1465)
!1469 = !DILocation(line: 22, column: 10, scope: !1465)
!1470 = !DILocation(line: 23, column: 10, scope: !1465)
!1471 = !DILocation(line: 23, column: 15, scope: !1465)
!1472 = !DILocation(line: 23, column: 17, scope: !1465)
!1473 = !DILocation(line: 23, column: 16, scope: !1465)
!1474 = !DILocation(line: 23, column: 12, scope: !1465)
!1475 = !DILocation(line: 23, column: 4, scope: !1465)
!1476 = !DILocation(line: 23, column: 8, scope: !1465)
!1477 = !DILocation(line: 24, column: 10, scope: !1465)
!1478 = !DILocation(line: 24, column: 3, scope: !1465)
!1479 = distinct !DISubprogram(name: "__udivsi3", scope: !99, file: !99, line: 25, type: !116, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !117)
!1480 = !DILocation(line: 27, column: 20, scope: !1479)
!1481 = !DILocation(line: 32, column: 9, scope: !1479)
!1482 = !DILocation(line: 32, column: 11, scope: !1479)
!1483 = !DILocation(line: 33, column: 9, scope: !1479)
!1484 = !DILocation(line: 34, column: 9, scope: !1479)
!1485 = !DILocation(line: 34, column: 11, scope: !1479)
!1486 = !DILocation(line: 35, column: 9, scope: !1479)
!1487 = !DILocation(line: 36, column: 24, scope: !1479)
!1488 = !DILocation(line: 36, column: 10, scope: !1479)
!1489 = !DILocation(line: 36, column: 43, scope: !1479)
!1490 = !DILocation(line: 36, column: 29, scope: !1479)
!1491 = !DILocation(line: 36, column: 27, scope: !1479)
!1492 = !DILocation(line: 36, column: 8, scope: !1479)
!1493 = !DILocation(line: 38, column: 9, scope: !1479)
!1494 = !DILocation(line: 38, column: 12, scope: !1479)
!1495 = !DILocation(line: 39, column: 9, scope: !1479)
!1496 = !DILocation(line: 40, column: 9, scope: !1479)
!1497 = !DILocation(line: 40, column: 12, scope: !1479)
!1498 = !DILocation(line: 41, column: 16, scope: !1479)
!1499 = !DILocation(line: 41, column: 9, scope: !1479)
!1500 = !DILocation(line: 42, column: 5, scope: !1479)
!1501 = !DILocation(line: 45, column: 9, scope: !1479)
!1502 = !DILocation(line: 45, column: 30, scope: !1479)
!1503 = !DILocation(line: 45, column: 28, scope: !1479)
!1504 = !DILocation(line: 45, column: 11, scope: !1479)
!1505 = !DILocation(line: 45, column: 7, scope: !1479)
!1506 = !DILocation(line: 46, column: 9, scope: !1479)
!1507 = !DILocation(line: 46, column: 14, scope: !1479)
!1508 = !DILocation(line: 46, column: 11, scope: !1479)
!1509 = !DILocation(line: 46, column: 7, scope: !1479)
!1510 = !DILocation(line: 47, column: 12, scope: !1479)
!1511 = !DILocation(line: 48, column: 5, scope: !1479)
!1512 = !DILocation(line: 48, column: 12, scope: !1479)
!1513 = !DILocation(line: 48, column: 15, scope: !1479)
!1514 = !DILocation(line: 51, column: 14, scope: !1479)
!1515 = !DILocation(line: 51, column: 16, scope: !1479)
!1516 = !DILocation(line: 51, column: 25, scope: !1479)
!1517 = !DILocation(line: 51, column: 27, scope: !1479)
!1518 = !DILocation(line: 51, column: 22, scope: !1479)
!1519 = !DILocation(line: 51, column: 11, scope: !1479)
!1520 = !DILocation(line: 52, column: 14, scope: !1479)
!1521 = !DILocation(line: 52, column: 16, scope: !1479)
!1522 = !DILocation(line: 52, column: 24, scope: !1479)
!1523 = !DILocation(line: 52, column: 22, scope: !1479)
!1524 = !DILocation(line: 52, column: 11, scope: !1479)
!1525 = !DILocation(line: 60, column: 35, scope: !1479)
!1526 = !DILocation(line: 60, column: 39, scope: !1479)
!1527 = !DILocation(line: 60, column: 37, scope: !1479)
!1528 = !DILocation(line: 60, column: 41, scope: !1479)
!1529 = !DILocation(line: 60, column: 46, scope: !1479)
!1530 = !DILocation(line: 60, column: 22, scope: !1479)
!1531 = !DILocation(line: 61, column: 17, scope: !1479)
!1532 = !DILocation(line: 61, column: 19, scope: !1479)
!1533 = !DILocation(line: 61, column: 15, scope: !1479)
!1534 = !DILocation(line: 62, column: 14, scope: !1479)
!1535 = !DILocation(line: 62, column: 18, scope: !1479)
!1536 = !DILocation(line: 62, column: 16, scope: !1479)
!1537 = !DILocation(line: 62, column: 11, scope: !1479)
!1538 = !DILocation(line: 63, column: 5, scope: !1479)
!1539 = !DILocation(line: 48, column: 20, scope: !1479)
!1540 = distinct !{!1540, !1511, !1538, !1450}
!1541 = !DILocation(line: 64, column: 10, scope: !1479)
!1542 = !DILocation(line: 64, column: 12, scope: !1479)
!1543 = !DILocation(line: 64, column: 20, scope: !1479)
!1544 = !DILocation(line: 64, column: 18, scope: !1479)
!1545 = !DILocation(line: 64, column: 7, scope: !1479)
!1546 = !DILocation(line: 65, column: 12, scope: !1479)
!1547 = !DILocation(line: 65, column: 5, scope: !1479)
!1548 = !DILocation(line: 66, column: 1, scope: !1479)
!1549 = distinct !DISubprogram(name: "__umoddi3", scope: !103, file: !103, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !117)
!1550 = !DILocation(line: 23, column: 18, scope: !1549)
!1551 = !DILocation(line: 23, column: 21, scope: !1549)
!1552 = !DILocation(line: 23, column: 5, scope: !1549)
!1553 = !DILocation(line: 24, column: 12, scope: !1549)
!1554 = !DILocation(line: 24, column: 5, scope: !1549)
!1555 = distinct !DISubprogram(name: "__umodsi3", scope: !105, file: !105, line: 20, type: !116, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !117)
!1556 = !DILocation(line: 22, column: 12, scope: !1555)
!1557 = !DILocation(line: 22, column: 26, scope: !1555)
!1558 = !DILocation(line: 22, column: 29, scope: !1555)
!1559 = !DILocation(line: 22, column: 16, scope: !1555)
!1560 = !DILocation(line: 22, column: 34, scope: !1555)
!1561 = !DILocation(line: 22, column: 32, scope: !1555)
!1562 = !DILocation(line: 22, column: 14, scope: !1555)
!1563 = !DILocation(line: 22, column: 5, scope: !1555)
