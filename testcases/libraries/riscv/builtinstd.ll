; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #0 !dbg !9 {
entry:
  %retval = alloca i8*, align 4
  %destination.addr = alloca i8*, align 4
  %source.addr = alloca i8*, align 4
  %num.addr = alloca i32, align 4
  %destination8 = alloca i8*, align 4
  %source8 = alloca i8*, align 4
  %i = alloca i32, align 4
  store i8* %destination, i8** %destination.addr, align 4
  store i8* %source, i8** %source.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i8*, i8** %destination.addr, align 4, !dbg !12
  store i8* %0, i8** %destination8, align 4, !dbg !13
  %1 = load i8*, i8** %source.addr, align 4, !dbg !14
  store i8* %1, i8** %source8, align 4, !dbg !15
  store i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !18
  %3 = load i32, i32* %num.addr, align 4, !dbg !19
  %cmp = icmp ult i32 %2, %3, !dbg !20
  br i1 %cmp, label %for.body, label %for.end, !dbg !21

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %source8, align 4, !dbg !22
  %5 = load i32, i32* %i, align 4, !dbg !23
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5, !dbg !22
  %6 = load i8, i8* %arrayidx, align 1, !dbg !22
  %7 = load i8*, i8** %destination8, align 4, !dbg !24
  %8 = load i32, i32* %i, align 4, !dbg !25
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i32 %8, !dbg !24
  store i8 %6, i8* %arrayidx1, align 1, !dbg !26
  br label %for.inc, !dbg !27

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !28
  %inc = add nsw i32 %9, 1, !dbg !28
  store i32 %inc, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !21, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %retval, align 4, !dbg !31
  ret i8* %10, !dbg !31
}

; Function Attrs: noinline nounwind
define dso_local i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #0 !dbg !32 {
entry:
  %ptr.addr = alloca i8*, align 4
  %value.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %ptr8 = alloca i8*, align 4
  %i = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 4, !dbg !33
  store i8* %0, i8** %ptr8, align 4, !dbg !34
  store i32 0, i32* %i, align 4, !dbg !35
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !37
  %2 = load i32, i32* %num.addr, align 4, !dbg !38
  %cmp = icmp ult i32 %1, %2, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %value.addr, align 4, !dbg !41
  %conv = trunc i32 %3 to i8, !dbg !42
  %4 = load i8*, i8** %ptr8, align 4, !dbg !43
  %5 = load i32, i32* %i, align 4, !dbg !44
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5, !dbg !43
  store i8 %conv, i8* %arrayidx, align 1, !dbg !45
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !47
  %inc = add nsw i32 %6, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !40, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %ptr.addr, align 4, !dbg !49
  ret i8* %7, !dbg !50
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildriscv", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!2 = !{!"clang version 14.0.6 (https://github.com/TU-Dortmund-CS-LS12-DAES-teaching/llvmta.git 58dad2a888cb8167383a89c0b8100e9f8ee3ed06)"}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"target-abi", !"ilp32"}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 1, !"SmallDataLimit", i32 8}
!9 = distinct !DISubprogram(name: "memcpy", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 5, column: 31, scope: !9)
!13 = !DILocation(line: 5, column: 8, scope: !9)
!14 = !DILocation(line: 6, column: 26, scope: !9)
!15 = !DILocation(line: 6, column: 8, scope: !9)
!16 = !DILocation(line: 8, column: 10, scope: !9)
!17 = !DILocation(line: 8, column: 6, scope: !9)
!18 = !DILocation(line: 8, column: 17, scope: !9)
!19 = !DILocation(line: 8, column: 21, scope: !9)
!20 = !DILocation(line: 8, column: 19, scope: !9)
!21 = !DILocation(line: 8, column: 2, scope: !9)
!22 = !DILocation(line: 9, column: 21, scope: !9)
!23 = !DILocation(line: 9, column: 29, scope: !9)
!24 = !DILocation(line: 9, column: 3, scope: !9)
!25 = !DILocation(line: 9, column: 16, scope: !9)
!26 = !DILocation(line: 9, column: 19, scope: !9)
!27 = !DILocation(line: 10, column: 2, scope: !9)
!28 = !DILocation(line: 8, column: 26, scope: !9)
!29 = distinct !{!29, !21, !27, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !DILocation(line: 11, column: 1, scope: !9)
!32 = distinct !DISubprogram(name: "memset", scope: !1, file: !1, line: 13, type: !10, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!33 = !DILocation(line: 15, column: 41, scope: !32)
!34 = !DILocation(line: 15, column: 17, scope: !32)
!35 = !DILocation(line: 17, column: 10, scope: !32)
!36 = !DILocation(line: 17, column: 6, scope: !32)
!37 = !DILocation(line: 17, column: 17, scope: !32)
!38 = !DILocation(line: 17, column: 21, scope: !32)
!39 = !DILocation(line: 17, column: 19, scope: !32)
!40 = !DILocation(line: 17, column: 2, scope: !32)
!41 = !DILocation(line: 18, column: 29, scope: !32)
!42 = !DILocation(line: 18, column: 13, scope: !32)
!43 = !DILocation(line: 18, column: 3, scope: !32)
!44 = !DILocation(line: 18, column: 8, scope: !32)
!45 = !DILocation(line: 18, column: 11, scope: !32)
!46 = !DILocation(line: 19, column: 2, scope: !32)
!47 = !DILocation(line: 17, column: 26, scope: !32)
!48 = distinct !{!48, !40, !46, !30}
!49 = !DILocation(line: 20, column: 9, scope: !32)
!50 = !DILocation(line: 20, column: 2, scope: !32)
