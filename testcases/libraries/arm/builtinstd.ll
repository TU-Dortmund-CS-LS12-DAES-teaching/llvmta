; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i8* @memcpy(i8* %destination, i8* %source, i32 %num) #0 !dbg !8 {
entry:
  br label %for.cond, !dbg !10

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !11
  %exitcond = icmp eq i32 %i.0, %num, !dbg !12
  br i1 %exitcond, label %for.end, label %for.body, !dbg !13

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !14
  %0 = load i8, i8* %arrayidx, align 1, !dbg !14
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !15
  store i8 %0, i8* %arrayidx1, align 1, !dbg !16
  br label %for.inc, !dbg !17

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !18
  br label %for.cond, !dbg !13, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !20
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i8* @memset(i8* %ptr, i32 %value, i32 %num) #0 !dbg !21 {
entry:
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !23
  %exitcond = icmp eq i32 %i.0, %num, !dbg !24
  br i1 %exitcond, label %for.end, label %for.body, !dbg !25

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !26
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !27
  store i8 %conv, i8* %arrayidx, align 1, !dbg !28
  br label %for.inc, !dbg !29

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !30
  br label %for.cond, !dbg !25, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !32
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "../libraries/builtinsstd/memory.c", directory: "/home/hahns/Schreibtisch/llvmta_testcases/tmp.quPjKlt7IR")
!2 = !{}
!3 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = distinct !DISubprogram(name: "memcpy", scope: !1, file: !1, line: 3, type: !9, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 8, column: 6, scope: !8)
!11 = !DILocation(line: 0, scope: !8)
!12 = !DILocation(line: 8, column: 19, scope: !8)
!13 = !DILocation(line: 8, column: 2, scope: !8)
!14 = !DILocation(line: 9, column: 21, scope: !8)
!15 = !DILocation(line: 9, column: 3, scope: !8)
!16 = !DILocation(line: 9, column: 19, scope: !8)
!17 = !DILocation(line: 10, column: 2, scope: !8)
!18 = !DILocation(line: 8, column: 26, scope: !8)
!19 = distinct !{!19, !13, !17}
!20 = !DILocation(line: 11, column: 1, scope: !8)
!21 = distinct !DISubprogram(name: "memset", scope: !1, file: !1, line: 13, type: !9, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DILocation(line: 17, column: 6, scope: !21)
!23 = !DILocation(line: 0, scope: !21)
!24 = !DILocation(line: 17, column: 19, scope: !21)
!25 = !DILocation(line: 17, column: 2, scope: !21)
!26 = !DILocation(line: 18, column: 13, scope: !21)
!27 = !DILocation(line: 18, column: 3, scope: !21)
!28 = !DILocation(line: 18, column: 11, scope: !21)
!29 = !DILocation(line: 19, column: 2, scope: !21)
!30 = !DILocation(line: 17, column: 26, scope: !21)
!31 = distinct !{!31, !25, !29}
!32 = !DILocation(line: 20, column: 2, scope: !21)
