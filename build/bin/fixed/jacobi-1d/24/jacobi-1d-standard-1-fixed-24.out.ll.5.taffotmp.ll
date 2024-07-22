; ModuleID = './build/bin/fixed/jacobi-1d/24/jacobi-1d-standard-1-fixed-24.out.ll.4.taffotmp.ll'
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
  %A.u2_30fixp = alloca [15 x i32], align 4, !taffo.info !28, !taffo.target !31
  %B.u2_30fixp = alloca [15 x i32], align 4, !taffo.info !32
  %arraydecay.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  %arraydecay3.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !32
  call void @init_array.2_fixp(i32 15, i32* %arraydecay.u2_30fixp, i32* %arraydecay3.u2_30fixp), !taffo.info !34, !taffo.constinfo !35, !taffo.target !31
  call void @timer_start(), !taffo.constinfo !36
  %arraydecay4.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  %arraydecay5.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !32
  call void @kernel_jacobi_1d.1_fixp(i32 10, i32 15, i32* %arraydecay4.u2_30fixp, i32* %arraydecay5.u2_30fixp), !taffo.info !34, !taffo.constinfo !37, !taffo.target !31
  call void @timer_stop(), !taffo.constinfo !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !38
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 %i.0, !taffo.info !28, !taffo.target !31
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !28, !taffo.target !31
  %0 = uitofp i32 %u2_30fixp to float, !taffo.info !28, !taffo.target !31
  %1 = fdiv float %0, 0x41D0000000000000, !taffo.info !28, !taffo.target !31
  %arrayidx6 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx6, align 4, !taffo.info !34, !taffo.target !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !42, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0)), !taffo.constinfo !45
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !46 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !40
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !51, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !49
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !45
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !35
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !49, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.1_fixp(i32 noundef %tsteps, i32 noundef %n, i32* noundef %A.u2_30fixp, i32* noundef %B.u2_30fixp) #0 !taffo.initweight !54 !taffo.funinfo !55 !taffo.sourceFunction !56 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !40
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !57
  %sub = sub nsw i32 %n, 1, !taffo.info !59, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !49
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !51, !taffo.constinfo !21
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %sub4, !taffo.info !28
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !28
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %i.0, !taffo.info !28
  %u2_30fixp1 = load i32, i32* %arrayidx5.u2_30fixp, align 4, !taffo.info !28
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !28
  %1 = lshr i32 %u2_30fixp1, 1, !taffo.info !28
  %add.u3_29fixp = add i32 %0, %1, !taffo.info !61
  %add6 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %add6, !taffo.info !28
  %u2_30fixp2 = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !64
  %2 = lshr i32 %u2_30fixp2, 1, !taffo.info !64
  %add8.u3_29fixp = add i32 %add.u3_29fixp, %2, !taffo.info !65
  %3 = lshr i32 715820724, 1
  %4 = lshr i32 %add8.u3_29fixp, 1, !taffo.info !65
  %5 = ashr i32 %3, 2
  %6 = call i32 @llvm.smul.fix.i32(i32 %5, i32 %4, i32 28), !taffo.info !67
  %mul.u3_29fixp = shl i32 %6, 1, !taffo.info !70, !taffo.constinfo !71
  %conv9.u2_30fixp = shl i32 %mul.u3_29fixp, 1, !taffo.info !74, !taffo.constinfo !71
  %arrayidx10.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %i.0, !taffo.info !32
  store i32 %conv9.u2_30fixp, i32* %arrayidx10.u2_30fixp, align 4, !taffo.info !76
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !77

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !57
  %sub12 = sub nsw i32 %n, 1, !taffo.info !59, !taffo.constinfo !21
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !49
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !51, !taffo.constinfo !21
  %arrayidx17.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %sub16, !taffo.info !32
  %u2_30fixp3 = load i32, i32* %arrayidx17.u2_30fixp, align 4, !taffo.info !32
  %arrayidx18.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %i.1, !taffo.info !32
  %u2_30fixp4 = load i32, i32* %arrayidx18.u2_30fixp, align 4, !taffo.info !32
  %7 = lshr i32 %u2_30fixp3, 1, !taffo.info !32
  %8 = lshr i32 %u2_30fixp4, 1, !taffo.info !32
  %add19.u3_29fixp = add i32 %7, %8, !taffo.info !78
  %add20 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx21.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %add20, !taffo.info !32
  %u2_30fixp5 = load i32, i32* %arrayidx21.u2_30fixp, align 4, !taffo.info !80
  %9 = lshr i32 %u2_30fixp5, 1, !taffo.info !80
  %add22.u3_29fixp = add i32 %add19.u3_29fixp, %9, !taffo.info !81
  %10 = lshr i32 715820724, 1
  %11 = lshr i32 %add22.u3_29fixp, 1, !taffo.info !81
  %12 = ashr i32 %10, 2
  %13 = call i32 @llvm.smul.fix.i32(i32 %12, i32 %11, i32 28), !taffo.info !83
  %mul24.u3_29fixp = shl i32 %13, 1, !taffo.info !85, !taffo.constinfo !71
  %conv25.u2_30fixp = shl i32 %mul24.u3_29fixp, 1, !taffo.info !86, !taffo.constinfo !71
  %arrayidx26.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %i.1, !taffo.info !28
  store i32 %conv25.u2_30fixp, i32* %arrayidx26.u2_30fixp, align 4, !taffo.info !34
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !88

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !49, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !89

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, i32* noundef %A.u2_30fixp, i32* noundef %B.u2_30fixp) #0 !taffo.initweight !90 !taffo.funinfo !91 !taffo.sourceFunction !92 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !93, !taffo.initweight !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !96, !taffo.initweight !97
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !93, !taffo.initweight !98

for.body:                                         ; preds = %for.cond
  %conv.s6_26fixp = shl i32 %i.0, 26, !taffo.info !99
  %0 = lshr i32 -2147483648, 4
  %add.s6_26fixp = add i32 %conv.s6_26fixp, %0, !taffo.info !101, !taffo.constinfo !103
  %conv2.s5_27fixp = shl i32 %n, 27, !taffo.info !104
  %1 = ashr i32 %conv2.s5_27fixp, 1, !taffo.info !104
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %add.s6_26fixp, i32 %1, i32 26), !taffo.info !106
  %div.s5_27fixp = shl i32 %2, 1, !taffo.info !108
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %i.0, !taffo.info !109
  %3 = shl i32 %div.s5_27fixp, 3, !taffo.info !108
  store i32 %3, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !110
  %conv3.s6_26fixp = shl i32 %i.0, 26, !taffo.info !99
  %4 = lshr i32 -1073741824, 4
  %add4.s6_26fixp = add i32 %conv3.s6_26fixp, %4, !taffo.info !111, !taffo.constinfo !113
  %conv5.s5_27fixp = shl i32 %n, 27, !taffo.info !104
  %5 = ashr i32 %conv5.s5_27fixp, 1, !taffo.info !104
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %add4.s6_26fixp, i32 %5, i32 26), !taffo.info !116
  %div6.s5_27fixp = shl i32 %6, 1, !taffo.info !118
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %i.0, !taffo.info !119
  %7 = shl i32 %div6.s5_27fixp, 3, !taffo.info !118
  store i32 %7, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !110
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !120, !taffo.initweight !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

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
!31 = !{!"A"}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 2.000000e-01, double 0x3FF22221C8A7A41E}
!34 = !{i1 false, !30, i1 false, i2 -1}
!35 = !{i1 false, i1 false, i1 false, i1 false}
!36 = !{i1 false}
!37 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 1.600000e+01}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 1.000000e+00}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 1.000000e+00, double 1.600000e+01}
!44 = distinct !{!44, !23}
!45 = !{i1 false, i1 false, i1 false}
!46 = !{i32 1, !47, i32 1, !0}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.500000e+01, double 1.500000e+01}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 1.000000e+00, double 1.000000e+00}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 0.000000e+00}
!53 = distinct !{!53, !23}
!54 = !{i32 -1, i32 -1, i32 2, i32 2}
!55 = !{i32 1, !16, i32 1, !47, i32 1, !28, i32 1, !32}
!56 = distinct !{null}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 2.000000e+00}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.400000e+01, double 1.400000e+01}
!61 = !{!62, !63, i1 false, i2 -1}
!62 = !{!"fixp", i32 32, i32 29}
!63 = !{double 2.666660e-01, double 0x400111116A8B8F15}
!64 = !{!62, !30, i1 false, i2 -1}
!65 = !{!62, !66, i1 false, i2 -1}
!66 = !{double 3.999990e-01, double 0x4009999A1FD156A0}
!67 = !{!68, !69, i1 false, i2 -1}
!68 = !{!"fixp", i32 -32, i32 28}
!69 = !{double 0x3FC1110315EF359A, double 0x3FF111063B3B93F8}
!70 = !{!62, !69, i1 false, i2 -1}
!71 = !{!72, i1 false}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 3.333300e-01, double 3.333300e-01}
!74 = !{!29, !75, i1 false, i2 -1}
!75 = !{double 0x3FC1110300000000, double 0x3FF1110640000000}
!76 = !{i1 false, !33, i1 false, i2 -1}
!77 = distinct !{!77, !23}
!78 = !{!62, !79, i1 false, i2 -1}
!79 = !{double 4.000000e-01, double 0x40022221C8A7A41E}
!80 = !{!62, !33, i1 false, i2 -1}
!81 = !{!62, !82, i1 false, i2 -1}
!82 = !{double 0x3FE3333333333334, double 0x400B3332ACFB762D}
!83 = !{!68, !84, i1 false, i2 -1}
!84 = !{double 0x3FC99988D2A1F8E5, double 0x3FF22215E6632241}
!85 = !{!62, !84, i1 false, i2 -1}
!86 = !{!29, !87, i1 false, i2 -1}
!87 = !{double 0x3FC99988C0000000, double 0x3FF2221600000000}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = !{i32 -1, i32 2, i32 2}
!91 = !{i32 1, !47, i32 1, !28, i32 1, !32}
!92 = distinct !{null}
!93 = !{i1 false, !94, i1 false, i2 -1}
!94 = !{double -1.500000e+01, double 1.500000e+01}
!95 = !{i32 0}
!96 = !{i1 false, !41, i1 false, i2 -1}
!97 = !{i32 2}
!98 = !{i32 3}
!99 = !{!100, !94, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 26}
!101 = !{!100, !102, i1 false, i2 -1}
!102 = !{double -1.300000e+01, double 1.700000e+01}
!103 = !{i1 false, !19}
!104 = !{!105, !48, i1 false, i2 1}
!105 = !{!"fixp", i32 -32, i32 27}
!106 = !{!100, !107, i1 false, i2 -1}
!107 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!108 = !{!105, !107, i1 false, i2 -1}
!109 = !{!29, !30, i1 false, i2 1}
!110 = !{i1 false, i1 false, i1 false, i2 1}
!111 = !{!100, !112, i1 false, i2 -1}
!112 = !{double -1.200000e+01, double 1.800000e+01}
!113 = !{i1 false, !114}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 3.000000e+00, double 3.000000e+00}
!116 = !{!100, !117, i1 false, i2 -1}
!117 = !{double -8.000000e-01, double 1.200000e+00}
!118 = !{!105, !117, i1 false, i2 -1}
!119 = !{!29, !33, i1 false, i2 1}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double -1.400000e+01, double 1.600000e+01}
!122 = distinct !{!122, !23}
