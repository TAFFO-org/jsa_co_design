; ModuleID = './build/bin/fixed/jacobi-1d/11/jacobi-1d-standard-1-fixed-11.out.ll.3.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [15 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %A = alloca [15 x float], align 4, !taffo.info !28, !taffo.initweight !31, !taffo.target !32
  %B = alloca [15 x float], align 4, !taffo.info !33, !taffo.initweight !31
  %A1 = bitcast [15 x float]* %A to i8*, !taffo.info !35, !taffo.initweight !36, !taffo.target !32
  %B2 = bitcast [15 x float]* %B to i8*, !taffo.info !35, !taffo.initweight !36
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.info !33, !taffo.initweight !36
  call void @init_array.2(i32 noundef 15, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.info !37, !taffo.initweight !38, !taffo.constinfo !39, !taffo.target !32, !taffo.originalCall !40
  call void @timer_start(), !taffo.constinfo !41
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.info !33, !taffo.initweight !36
  call void @kernel_jacobi_1d.1(i32 noundef 10, i32 noundef 15, float* noundef %arraydecay4, float* noundef %arraydecay5), !taffo.info !37, !taffo.initweight !38, !taffo.constinfo !42, !taffo.target !32, !taffo.originalCall !43
  call void @timer_stop(), !taffo.constinfo !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 %i.0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %0 = load float, float* %arrayidx, align 4, !taffo.info !28, !taffo.initweight !38, !taffo.target !32
  %arrayidx6 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  store float %0, float* %arrayidx6, align 4, !taffo.info !37, !taffo.initweight !48, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !49, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0)), !taffo.constinfo !52
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !53 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !46
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !58, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !56
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !52
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !39
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.1(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !43 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !46
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %sub = sub nsw i32 %n, 1, !taffo.info !65, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !56
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !58, !taffo.constinfo !21
  %arrayidx = getelementptr inbounds float, float* %A, i32 %sub4, !taffo.info !28, !taffo.initweight !67
  %0 = load float, float* %arrayidx, align 4, !taffo.info !28, !taffo.initweight !68
  %arrayidx5 = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !67
  %1 = load float, float* %arrayidx5, align 4, !taffo.info !28, !taffo.initweight !68
  %add = fadd float %0, %1, !taffo.info !69, !taffo.initweight !72
  %add6 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx7 = getelementptr inbounds float, float* %A, i32 %add6, !taffo.info !28, !taffo.initweight !67
  %2 = load float, float* %arrayidx7, align 4, !taffo.info !73, !taffo.initweight !68
  %add8 = fadd float %add, %2, !taffo.info !74, !taffo.initweight !72
  %conv = fpext float %add8 to double, !taffo.info !74, !taffo.initweight !76
  %mul = fmul double 3.333300e-01, %conv, !taffo.info !77, !taffo.initweight !79, !taffo.constinfo !80
  %conv9 = fptrunc double %mul to float, !taffo.info !83, !taffo.initweight !85
  %arrayidx10 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.info !33, !taffo.initweight !67
  store float %conv9, float* %arrayidx10, align 4, !taffo.info !86, !taffo.initweight !68
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !87

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !63
  %sub12 = sub nsw i32 %n, 1, !taffo.info !65, !taffo.constinfo !21
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !56
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !58, !taffo.constinfo !21
  %arrayidx17 = getelementptr inbounds float, float* %B, i32 %sub16, !taffo.info !33, !taffo.initweight !67
  %3 = load float, float* %arrayidx17, align 4, !taffo.info !33, !taffo.initweight !68
  %arrayidx18 = getelementptr inbounds float, float* %B, i32 %i.1, !taffo.info !33, !taffo.initweight !67
  %4 = load float, float* %arrayidx18, align 4, !taffo.info !33, !taffo.initweight !68
  %add19 = fadd float %3, %4, !taffo.info !88, !taffo.initweight !72
  %add20 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx21 = getelementptr inbounds float, float* %B, i32 %add20, !taffo.info !33, !taffo.initweight !67
  %5 = load float, float* %arrayidx21, align 4, !taffo.info !90, !taffo.initweight !68
  %add22 = fadd float %add19, %5, !taffo.info !91, !taffo.initweight !72
  %conv23 = fpext float %add22 to double, !taffo.info !91, !taffo.initweight !76
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.info !93, !taffo.initweight !79, !taffo.constinfo !80
  %conv25 = fptrunc double %mul24 to float, !taffo.info !95, !taffo.initweight !85
  %arrayidx26 = getelementptr inbounds float, float* %A, i32 %i.1, !taffo.info !28, !taffo.initweight !67
  store float %conv25, float* %arrayidx26, align 4, !taffo.info !37, !taffo.initweight !68
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !97

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !40 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !101, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !103, !taffo.initweight !38
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !101, !taffo.initweight !48

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.info !104, !taffo.initweight !38
  %add = fadd float %conv, 2.000000e+00, !taffo.info !106, !taffo.initweight !48, !taffo.constinfo !108
  %conv2 = sitofp i32 %n to float, !taffo.info !109
  %div = fdiv float %add, %conv2, !taffo.info !111, !taffo.initweight !113
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !114, !taffo.initweight !38
  store float %div, float* %arrayidx, align 4, !taffo.info !115, !taffo.initweight !48
  %conv3 = sitofp i32 %i.0 to float, !taffo.info !104, !taffo.initweight !38
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.info !116, !taffo.initweight !48, !taffo.constinfo !118
  %conv5 = sitofp i32 %n to float, !taffo.info !109
  %div6 = fdiv float %add4, %conv5, !taffo.info !121, !taffo.initweight !113
  %arrayidx7 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.info !123, !taffo.initweight !38
  store float %div6, float* %arrayidx7, align 4, !taffo.info !115, !taffo.initweight !48
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !124, !taffo.initweight !38, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !126

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x3FF111116A8B8F15}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 30}
!30 = !{double 1.333330e-01, double 0x3FF111116A8B8F15}
!31 = !{i32 0}
!32 = !{!"A"}
!33 = !{!29, !34, i1 false, i2 -1}
!34 = !{double 2.000000e-01, double 0x3FF22221C8A7A41E}
!35 = !{!29, i1 false, i1 false, i2 -1}
!36 = !{i32 1}
!37 = !{i1 false, !30, i1 false, i2 -1}
!38 = !{i32 2}
!39 = !{i1 false, i1 false, i1 false, i1 false}
!40 = distinct !{null}
!41 = !{i1 false}
!42 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!43 = distinct !{null}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 1.600000e+01}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 1.000000e+00}
!48 = !{i32 3}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 1.000000e+00, double 1.600000e+01}
!51 = distinct !{!51, !23}
!52 = !{i1 false, i1 false, i1 false}
!53 = !{i32 1, !54, i32 1, !0}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.500000e+01, double 1.500000e+01}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 1.000000e+00}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 0.000000e+00}
!60 = distinct !{!60, !23}
!61 = !{i32 -1, i32 -1, i32 2, i32 2}
!62 = !{i32 1, !16, i32 1, !54, i32 1, !28, i32 1, !33}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 2.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.400000e+01, double 1.400000e+01}
!67 = !{i32 5}
!68 = !{i32 6}
!69 = !{!70, !71, i1 false, i2 -1}
!70 = !{!"fixp", i32 32, i32 29}
!71 = !{double 2.666660e-01, double 0x400111116A8B8F15}
!72 = !{i32 7}
!73 = !{!70, !30, i1 false, i2 -1}
!74 = !{!70, !75, i1 false, i2 -1}
!75 = !{double 3.999990e-01, double 0x4009999A1FD156A0}
!76 = !{i32 8}
!77 = !{!70, !78, i1 false, i2 -1}
!78 = !{double 0x3FC1110315EF359A, double 0x3FF111063B3B93F8}
!79 = !{i32 9}
!80 = !{!81, i1 false}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 3.333300e-01, double 3.333300e-01}
!83 = !{!29, !84, i1 false, i2 -1}
!84 = !{double 0x3FC1110300000000, double 0x3FF1110640000000}
!85 = !{i32 10}
!86 = !{i1 false, !34, i1 false, i2 -1}
!87 = distinct !{!87, !23}
!88 = !{!70, !89, i1 false, i2 -1}
!89 = !{double 4.000000e-01, double 0x40022221C8A7A41E}
!90 = !{!70, !34, i1 false, i2 -1}
!91 = !{!70, !92, i1 false, i2 -1}
!92 = !{double 0x3FE3333333333334, double 0x400B3332ACFB762D}
!93 = !{!70, !94, i1 false, i2 -1}
!94 = !{double 0x3FC99988D2A1F8E5, double 0x3FF22215E6632241}
!95 = !{!29, !96, i1 false, i2 -1}
!96 = !{double 0x3FC99988C0000000, double 0x3FF2221600000000}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{i32 -1, i32 2, i32 2}
!100 = !{i32 1, !54, i32 1, !28, i32 1, !33}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double -1.500000e+01, double 1.500000e+01}
!103 = !{i1 false, !47, i1 false, i2 -1}
!104 = !{!105, !102, i1 false, i2 -1}
!105 = !{!"fixp", i32 -32, i32 26}
!106 = !{!105, !107, i1 false, i2 -1}
!107 = !{double -1.300000e+01, double 1.700000e+01}
!108 = !{i1 false, !19}
!109 = !{!110, !55, i1 false, i2 1}
!110 = !{!"fixp", i32 -32, i32 27}
!111 = !{!110, !112, i1 false, i2 -1}
!112 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!113 = !{i32 4}
!114 = !{!29, !30, i1 false, i2 1}
!115 = !{i1 false, i1 false, i1 false, i2 1}
!116 = !{!105, !117, i1 false, i2 -1}
!117 = !{double -1.200000e+01, double 1.800000e+01}
!118 = !{i1 false, !119}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 3.000000e+00, double 3.000000e+00}
!121 = !{!110, !122, i1 false, i2 -1}
!122 = !{double -8.000000e-01, double 1.200000e+00}
!123 = !{!29, !34, i1 false, i2 1}
!124 = !{i1 false, !125, i1 false, i2 -1}
!125 = !{double -1.400000e+01, double 1.600000e+01}
!126 = distinct !{!126, !23}
