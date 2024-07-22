; ModuleID = './build/bin/fixed/gemver/16/gemver-standard-8-fixed-16.out.ll.3.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@w_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !4
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !6
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !8

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !17 !taffo.funinfo !18 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !19
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !22
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.equivalentChild !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !33 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 !taffo.equivalentChild !37 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !38

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !39

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !40 !taffo.funinfo !41 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !25
  br label %for.cond4, !llvm.loop !42

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !43

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !44

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.start !46 {
entry:
  %alpha = alloca float, align 4, !taffo.info !47, !taffo.initweight !50
  %beta = alloca float, align 4, !taffo.info !51, !taffo.initweight !50
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !53, !taffo.initweight !50
  %u1 = alloca [20 x float], align 4, !taffo.info !55, !taffo.initweight !50
  %v1 = alloca [20 x float], align 4, !taffo.info !58, !taffo.initweight !50
  %u2 = alloca [20 x float], align 4, !taffo.info !60, !taffo.initweight !50
  %v2 = alloca [20 x float], align 4, !taffo.info !63, !taffo.initweight !50
  %w = alloca [20 x float], align 4, !taffo.info !65, !taffo.initweight !50, !taffo.target !67
  %x = alloca [20 x float], align 4, !taffo.info !68, !taffo.initweight !50
  %y = alloca [20 x float], align 4, !taffo.info !70, !taffo.initweight !50
  %z = alloca [20 x float], align 4, !taffo.info !73, !taffo.initweight !50
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !75, !taffo.initweight !76
  %beta2 = bitcast float* %beta to i8*, !taffo.info !75, !taffo.initweight !76
  %A3 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !77, !taffo.initweight !76
  %u14 = bitcast [20 x float]* %u1 to i8*, !taffo.info !78, !taffo.initweight !76
  %v15 = bitcast [20 x float]* %v1 to i8*, !taffo.info !75, !taffo.initweight !76
  %u26 = bitcast [20 x float]* %u2 to i8*, !taffo.info !79, !taffo.initweight !76
  %v27 = bitcast [20 x float]* %v2 to i8*, !taffo.info !75, !taffo.initweight !76
  %w8 = bitcast [20 x float]* %w to i8*, !taffo.info !80, !taffo.initweight !76, !taffo.target !67
  %x9 = bitcast [20 x float]* %x to i8*, !taffo.info !81, !taffo.initweight !76
  %y10 = bitcast [20 x float]* %y to i8*, !taffo.info !82, !taffo.initweight !76
  %z11 = bitcast [20 x float]* %z to i8*, !taffo.info !82, !taffo.initweight !76
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !53, !taffo.initweight !76
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.info !55, !taffo.initweight !76
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.info !58, !taffo.initweight !76
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.info !60, !taffo.initweight !76
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.info !63, !taffo.initweight !76
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !76, !taffo.target !67
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !68, !taffo.initweight !76
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !70, !taffo.initweight !76
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.info !73, !taffo.initweight !76
  call void @init_array.12(i32 noundef 20, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.info !83, !taffo.initweight !76, !taffo.constinfo !84, !taffo.originalCall !85
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 8), !taffo.info !83, !taffo.initweight !76, !taffo.constinfo !86, !taffo.originalCall !87
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 8), !taffo.info !88, !taffo.initweight !76, !taffo.constinfo !86, !taffo.originalCall !87
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !53, !taffo.initweight !76
  %0 = bitcast [20 x float]* %arraydecay20 to float*, !taffo.info !53, !taffo.initweight !89
  call void @scale_2d.13(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 8), !taffo.info !90, !taffo.initweight !91, !taffo.constinfo !92, !taffo.originalCall !93
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.info !55, !taffo.initweight !76
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay21, i32 noundef 8), !taffo.info !94, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.info !58, !taffo.initweight !76
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay22, i32 noundef 8), !taffo.info !97, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.info !60, !taffo.initweight !76
  call void @scale_1d.5(i32 noundef 20, float* noundef %arraydecay23, i32 noundef 8), !taffo.info !98, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.info !63, !taffo.initweight !76
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay24, i32 noundef 8), !taffo.info !99, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !76, !taffo.target !67
  call void @scale_1d.7(i32 noundef 20, float* noundef %arraydecay25, i32 noundef 8), !taffo.info !100, !taffo.initweight !89, !taffo.constinfo !95, !taffo.target !67, !taffo.originalCall !96
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !68, !taffo.initweight !76
  call void @scale_1d.8(i32 noundef 20, float* noundef %arraydecay26, i32 noundef 8), !taffo.info !101, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !70, !taffo.initweight !76
  call void @scale_1d.9(i32 noundef 20, float* noundef %arraydecay27, i32 noundef 8), !taffo.info !102, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.info !73, !taffo.initweight !76
  call void @scale_1d.9(i32 noundef 20, float* noundef %arraydecay28, i32 noundef 8), !taffo.info !103, !taffo.initweight !89, !taffo.constinfo !95, !taffo.originalCall !96
  call void @timer_start(), !taffo.constinfo !104
  %1 = load float, float* %alpha, align 4, !taffo.info !47, !taffo.initweight !76
  %2 = load float, float* %beta, align 4, !taffo.info !51, !taffo.initweight !76
  %arraydecay29 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !53, !taffo.initweight !76
  %arraydecay30 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.info !55, !taffo.initweight !76
  %arraydecay31 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.info !58, !taffo.initweight !76
  %arraydecay32 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.info !60, !taffo.initweight !76
  %arraydecay33 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.info !63, !taffo.initweight !76
  %arraydecay34 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !76, !taffo.target !67
  %arraydecay35 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !68, !taffo.initweight !76
  %arraydecay36 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !70, !taffo.initweight !76
  %arraydecay37 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.info !73, !taffo.initweight !76
  call void @kernel_gemver.10(i32 noundef 20, float noundef %1, float noundef %2, [20 x float]* noundef %arraydecay29, float* noundef %arraydecay30, float* noundef %arraydecay31, float* noundef %arraydecay32, float* noundef %arraydecay33, float* noundef %arraydecay34, float* noundef %arraydecay35, float* noundef %arraydecay36, float* noundef %arraydecay37), !taffo.info !83, !taffo.initweight !89, !taffo.constinfo !84, !taffo.originalCall !105
  call void @timer_stop(), !taffo.constinfo !104
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !106
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.info !68, !taffo.initweight !76
  %3 = load float, float* %arrayidx, align 4, !taffo.info !68, !taffo.initweight !89
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %3, float* %arrayidx38, align 4, !taffo.info !101, !taffo.initweight !91
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %i.0, !taffo.info !65, !taffo.initweight !76, !taffo.target !67
  %4 = load float, float* %arrayidx39, align 4, !taffo.info !65, !taffo.initweight !89, !taffo.target !67
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %4, float* %arrayidx40, align 4, !taffo.info !100, !taffo.initweight !91, !taffo.target !67
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !110
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !108
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.info !53, !taffo.initweight !76
  %arrayidx45 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i32 0, i32 %j.0, !taffo.info !53, !taffo.initweight !89
  %5 = load float, float* %arrayidx45, align 4, !taffo.info !53, !taffo.initweight !91
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %5, float* %arrayidx47, align 4, !taffo.info !90, !taffo.initweight !112
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !113, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !115

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !116, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !118

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !92
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !119 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !108
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !122
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !124
  %add = add nsw i32 %mul, %j.0, !taffo.info !124
  %rem = srem i32 %add, 20, !taffo.info !124, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !122
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !86
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv = fpext float %2 to double, !taffo.info !4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv), !taffo.constinfo !95
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !126

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !127

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !108
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !122
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !124, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !122
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !86
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv21 = fpext float %5 to double, !taffo.info !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21), !taffo.constinfo !95
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !128

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !108
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !122
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !124, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !122
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !86
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv37 = fpext float %8 to double, !taffo.info !2
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37), !taffo.constinfo !95
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !129

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !130 !taffo.funinfo !131 !taffo.sourceFunction !87 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !134 !taffo.funinfo !135 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !55, !taffo.initweight !136
  %0 = load float, float* %arrayidx, align 4, !taffo.info !137, !taffo.initweight !139
  %conv = sitofp i32 %factor to float, !taffo.info !140
  %mul = fmul float %0, %conv, !taffo.info !141, !taffo.initweight !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !55, !taffo.initweight !136
  store float %mul, float* %arrayidx1, align 4, !taffo.info !94, !taffo.initweight !139
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !134 !taffo.funinfo !145 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !58, !taffo.initweight !136
  %0 = load float, float* %arrayidx, align 4, !taffo.info !58, !taffo.initweight !139
  %conv = sitofp i32 %factor to float, !taffo.info !146
  %mul = fmul float %0, %conv, !taffo.info !147, !taffo.initweight !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !58, !taffo.initweight !136
  store float %mul, float* %arrayidx1, align 4, !taffo.info !97, !taffo.initweight !139
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !134 !taffo.funinfo !150 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !60, !taffo.initweight !136
  %0 = load float, float* %arrayidx, align 4, !taffo.info !60, !taffo.initweight !139
  %conv = sitofp i32 %factor to float, !taffo.info !140
  %mul = fmul float %0, %conv, !taffo.info !151, !taffo.initweight !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !60, !taffo.initweight !136
  store float %mul, float* %arrayidx1, align 4, !taffo.info !98, !taffo.initweight !139
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !134 !taffo.funinfo !154 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !65, !taffo.initweight !136
  %0 = load float, float* %arrayidx, align 4, !taffo.info !65, !taffo.initweight !139
  %conv = sitofp i32 %factor to float, !taffo.info !155
  %mul = fmul float %0, %conv, !taffo.info !156, !taffo.initweight !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !65, !taffo.initweight !136
  store float %mul, float* %arrayidx1, align 4, !taffo.info !100, !taffo.initweight !139
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !134 !taffo.funinfo !160 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !68, !taffo.initweight !136
  %0 = load float, float* %arrayidx, align 4, !taffo.info !68, !taffo.initweight !139
  %conv = sitofp i32 %factor to float, !taffo.info !155
  %mul = fmul float %0, %conv, !taffo.info !161, !taffo.initweight !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !68, !taffo.initweight !136
  store float %mul, float* %arrayidx1, align 4, !taffo.info !101, !taffo.initweight !139
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !164

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.9(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !134 !taffo.funinfo !165 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !70, !taffo.initweight !136
  %0 = load float, float* %arrayidx, align 4, !taffo.info !70, !taffo.initweight !139
  %conv = sitofp i32 %factor to float, !taffo.info !155
  %mul = fmul float %0, %conv, !taffo.info !166, !taffo.initweight !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !70, !taffo.initweight !136
  store float %mul, float* %arrayidx1, align 4, !taffo.info !102, !taffo.initweight !139
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !168

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !169 !taffo.funinfo !170 !taffo.sourceFunction !105 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !108
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !122
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !53, !taffo.initweight !136
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !53, !taffo.initweight !139
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !171, !taffo.initweight !143
  %arrayidx5 = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.info !55, !taffo.initweight !136
  %1 = load float, float* %arrayidx5, align 4, !taffo.info !172, !taffo.initweight !139
  %arrayidx6 = getelementptr inbounds float, float* %v1, i32 %j.0, !taffo.info !58, !taffo.initweight !136
  %2 = load float, float* %arrayidx6, align 4, !taffo.info !58, !taffo.initweight !139
  %mul = fmul float %1, %2, !taffo.info !173, !taffo.initweight !143
  %add = fadd float %0, %mul, !taffo.info !175, !taffo.initweight !177
  %arrayidx7 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.info !60, !taffo.initweight !136
  %3 = load float, float* %arrayidx7, align 4, !taffo.info !60, !taffo.initweight !139
  %arrayidx8 = getelementptr inbounds float, float* %v2, i32 %j.0, !taffo.info !63, !taffo.initweight !136
  %4 = load float, float* %arrayidx8, align 4, !taffo.info !178, !taffo.initweight !139
  %mul9 = fmul float %3, %4, !taffo.info !179, !taffo.initweight !143
  %add10 = fadd float %add, %mul9, !taffo.info !181, !taffo.initweight !177
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !53, !taffo.initweight !136
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !53, !taffo.initweight !139
  store float %add10, float* %arrayidx12, align 4, !taffo.info !90, !taffo.initweight !143
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !183

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !184

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !108
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !122
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !108
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !122
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !68, !taffo.initweight !136
  %5 = load float, float* %arrayidx22, align 4, !taffo.info !68, !taffo.initweight !139
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.info !53, !taffo.initweight !136
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %i.1, !taffo.info !53, !taffo.initweight !139
  %6 = load float, float* %arrayidx24, align 4, !taffo.info !53, !taffo.initweight !143
  %mul25 = fmul float %beta, %6, !taffo.info !185, !taffo.initweight !136
  %arrayidx26 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !70, !taffo.initweight !136
  %7 = load float, float* %arrayidx26, align 4, !taffo.info !70, !taffo.initweight !139
  %mul27 = fmul float %mul25, %7, !taffo.info !185, !taffo.initweight !139
  %add28 = fadd float %5, %mul27, !taffo.info !187, !taffo.initweight !143
  %arrayidx29 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !68, !taffo.initweight !136
  store float %add28, float* %arrayidx29, align 4, !taffo.info !101, !taffo.initweight !139
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !189

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !190

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !108
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !122
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.info !68, !taffo.initweight !136
  %8 = load float, float* %arrayidx39, align 4, !taffo.info !68, !taffo.initweight !139
  %arrayidx40 = getelementptr inbounds float, float* %z, i32 %i.2, !taffo.info !73, !taffo.initweight !136
  %9 = load float, float* %arrayidx40, align 4, !taffo.info !73, !taffo.initweight !139
  %add41 = fadd float %8, %9, !taffo.info !191, !taffo.initweight !143
  %arrayidx42 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.info !68, !taffo.initweight !136
  store float %add41, float* %arrayidx42, align 4, !taffo.info !101, !taffo.initweight !139
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !193

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !108
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !122
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !108
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !122
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !65, !taffo.initweight !136
  %10 = load float, float* %arrayidx52, align 4, !taffo.info !65, !taffo.initweight !139
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.3, !taffo.info !53, !taffo.initweight !136
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %j.2, !taffo.info !53, !taffo.initweight !139
  %11 = load float, float* %arrayidx54, align 4, !taffo.info !171, !taffo.initweight !143
  %mul55 = fmul float %alpha, %11, !taffo.info !194, !taffo.initweight !136
  %arrayidx56 = getelementptr inbounds float, float* %x, i32 %j.2, !taffo.info !68, !taffo.initweight !136
  %12 = load float, float* %arrayidx56, align 4, !taffo.info !68, !taffo.initweight !139
  %mul57 = fmul float %mul55, %12, !taffo.info !196, !taffo.initweight !139
  %add58 = fadd float %10, %mul57, !taffo.info !199, !taffo.initweight !143
  %arrayidx59 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !65, !taffo.initweight !136
  store float %add58, float* %arrayidx59, align 4, !taffo.info !100, !taffo.initweight !139
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !201

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !202

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !203 !taffo.funinfo !170 !taffo.sourceFunction !85 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !83, !taffo.initweight !112, !taffo.constinfo !204
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !88, !taffo.initweight !112, !taffo.constinfo !206
  %conv = sitofp i32 %n to float, !taffo.info !209, !taffo.initweight !89
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !210, !taffo.initweight !50
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !212, !taffo.initweight !89
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !210, !taffo.initweight !91

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.info !213, !taffo.initweight !89
  %div = fdiv float %conv5, %conv, !taffo.info !214, !taffo.initweight !89
  %arrayidx = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.info !215, !taffo.initweight !89
  store float %div, float* %arrayidx, align 4, !taffo.info !216, !taffo.initweight !91
  %add = add nsw i32 %i.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  %conv6 = sitofp i32 %add to float, !taffo.info !218, !taffo.initweight !91
  %div7 = fdiv float %conv6, %conv, !taffo.info !219, !taffo.initweight !89
  %conv8 = fpext float %div7 to double, !taffo.info !219, !taffo.initweight !91
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.info !221, !taffo.initweight !112, !taffo.constinfo !223
  %conv10 = fptrunc double %div9 to float, !taffo.info !224, !taffo.initweight !136
  %arrayidx11 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.info !226, !taffo.initweight !89
  store float %conv10, float* %arrayidx11, align 4, !taffo.info !216, !taffo.initweight !91
  %add12 = add nsw i32 %i.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  %conv13 = sitofp i32 %add12 to float, !taffo.info !218, !taffo.initweight !91
  %div14 = fdiv float %conv13, %conv, !taffo.info !219, !taffo.initweight !89
  %conv15 = fpext float %div14 to double, !taffo.info !219, !taffo.initweight !91
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.info !227, !taffo.initweight !112, !taffo.constinfo !229
  %conv17 = fptrunc double %div16 to float, !taffo.info !232, !taffo.initweight !136
  %arrayidx18 = getelementptr inbounds float, float* %v1, i32 %i.0, !taffo.info !234, !taffo.initweight !89
  store float %conv17, float* %arrayidx18, align 4, !taffo.info !216, !taffo.initweight !91
  %add19 = add nsw i32 %i.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  %conv20 = sitofp i32 %add19 to float, !taffo.info !218, !taffo.initweight !91
  %div21 = fdiv float %conv20, %conv, !taffo.info !219, !taffo.initweight !89
  %conv22 = fpext float %div21 to double, !taffo.info !219, !taffo.initweight !91
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.info !235, !taffo.initweight !112, !taffo.constinfo !237
  %conv24 = fptrunc double %div23 to float, !taffo.info !240, !taffo.initweight !136
  %arrayidx25 = getelementptr inbounds float, float* %v2, i32 %i.0, !taffo.info !242, !taffo.initweight !89
  store float %conv24, float* %arrayidx25, align 4, !taffo.info !216, !taffo.initweight !91
  %add26 = add nsw i32 %i.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  %conv27 = sitofp i32 %add26 to float, !taffo.info !218, !taffo.initweight !91
  %div28 = fdiv float %conv27, %conv, !taffo.info !219, !taffo.initweight !89
  %conv29 = fpext float %div28 to double, !taffo.info !219, !taffo.initweight !91
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.info !243, !taffo.initweight !112, !taffo.constinfo !245
  %conv31 = fptrunc double %div30 to float, !taffo.info !246, !taffo.initweight !136
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !248, !taffo.initweight !89
  store float %conv31, float* %arrayidx32, align 4, !taffo.info !216, !taffo.initweight !91
  %add33 = add nsw i32 %i.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  %conv34 = sitofp i32 %add33 to float, !taffo.info !218, !taffo.initweight !91
  %div35 = fdiv float %conv34, %conv, !taffo.info !219, !taffo.initweight !89
  %conv36 = fpext float %div35 to double, !taffo.info !219, !taffo.initweight !91
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.info !249, !taffo.initweight !112, !taffo.constinfo !251
  %conv38 = fptrunc double %div37 to float, !taffo.info !254, !taffo.initweight !136
  %arrayidx39 = getelementptr inbounds float, float* %z, i32 %i.0, !taffo.info !256, !taffo.initweight !89
  store float %conv38, float* %arrayidx39, align 4, !taffo.info !216, !taffo.initweight !91
  %arrayidx40 = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !257, !taffo.initweight !89
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.info !216, !taffo.initweight !91, !taffo.constinfo !258
  %arrayidx41 = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.info !259, !taffo.initweight !89
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.info !216, !taffo.initweight !91, !taffo.constinfo !258
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !210, !taffo.initweight !50
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !212, !taffo.initweight !89
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !210, !taffo.initweight !91

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !260, !taffo.initweight !89
  %rem = srem i32 %mul, %n, !taffo.info !262, !taffo.initweight !91
  %conv46 = sitofp i32 %rem to float, !taffo.info !264, !taffo.initweight !112
  %conv47 = sitofp i32 %n to float, !taffo.info !209
  %div48 = fdiv float %conv46, %conv47, !taffo.info !265, !taffo.initweight !136
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !267, !taffo.initweight !89
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %j.0, !taffo.info !267, !taffo.initweight !89
  store float %div48, float* %arrayidx50, align 4, !taffo.info !216, !taffo.initweight !91
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !268

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !217, !taffo.initweight !89, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !269

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !270 !taffo.funinfo !271 !taffo.sourceFunction !93 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !108
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !122
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !108
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !122
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !124
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !53, !taffo.initweight !139
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !53, !taffo.initweight !143
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !53, !taffo.initweight !177
  %conv = sitofp i32 %factor to float, !taffo.info !155
  %mul = fmul float %1, %conv, !taffo.info !272, !taffo.initweight !274
  %2 = mul nsw i32 %i.0, %m, !taffo.info !124
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !53, !taffo.initweight !139
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !53, !taffo.initweight !143
  store float %mul, float* %arrayidx6, align 4, !taffo.info !90, !taffo.initweight !177
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !275

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !122, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !276

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x406A5F011F4F50A0}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40F01ADA40000000}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x403522223E186983}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.000000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"NumRegisterParameters", i32 0}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{i1 false, !20}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 1.000000e+01, double 1.000000e+01}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 2.000000e+00, double 2.000000e+00}
!25 = !{i1 false, i1 false}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i32 -1, i32 -1}
!29 = !{i32 0, i1 false, i32 0, i1 false}
!30 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.1}
!31 = !{i32 -1, i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.5, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.7, void (i32, float*, i32)* @scale_1d.8, void (i32, float*, i32)* @scale_1d.9, void (i32, float*, i32)* @scale_1d.9}
!34 = distinct !{!34, !27}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{void (i32, i32, float*, i32)* @scale_2d.13}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{}
!46 = !{i1 true}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 30}
!49 = !{double 1.500000e+00, double 1.500000e+00}
!50 = !{i32 0}
!51 = !{!48, !52, i1 false, i2 -1}
!52 = !{double 1.200000e+00, double 1.200000e+00}
!53 = !{!54, !5, i1 false, i2 -1}
!54 = !{!"fixp", i32 32, i32 27}
!55 = !{!56, !57, i1 false, i2 -1}
!56 = !{!"fixp", i32 32, i32 28}
!57 = !{double 0.000000e+00, double 7.600000e+00}
!58 = !{!48, !59, i1 false, i2 -1}
!59 = !{double 1.000000e-01, double 2.000000e+00}
!60 = !{!61, !62, i1 false, i2 -1}
!61 = !{!"fixp", i32 32, i32 29}
!62 = !{double 2.000000e-01, double 4.000000e+00}
!63 = !{!48, !64, i1 false, i2 -1}
!64 = !{double 6.666700e-02, double 0x3FF55554FBDAD752}
!65 = !{!66, !3, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 15}
!67 = !{!"w"}
!68 = !{!69, !1, i1 false, i2 -1}
!69 = !{!"fixp", i32 32, i32 24}
!70 = !{!71, !72, i1 false, i2 -1}
!71 = !{!"fixp", i32 32, i32 31}
!72 = !{double 5.000000e-02, double 1.000000e+00}
!73 = !{!71, !74, i1 false, i2 -1}
!74 = !{double 4.444400e-02, double 8.888890e-01}
!75 = !{!48, i1 false, i1 false, i2 -1}
!76 = !{i32 1}
!77 = !{!54, i1 false, i1 false, i2 -1}
!78 = !{!56, i1 false, i1 false, i2 -1}
!79 = !{!61, i1 false, i1 false, i2 -1}
!80 = !{!66, i1 false, i1 false, i2 -1}
!81 = !{!69, i1 false, i1 false, i2 -1}
!82 = !{!71, i1 false, i1 false, i2 -1}
!83 = !{i1 false, !49, i1 false, i2 -1}
!84 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!85 = distinct !{null}
!86 = !{i1 false, i1 false, i1 false}
!87 = !{void (float*, i32)* @scale_scalar}
!88 = !{i1 false, !52, i1 false, i2 -1}
!89 = !{i32 2}
!90 = !{i1 false, !5, i1 false, i2 -1}
!91 = !{i32 3}
!92 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!93 = !{void (i32, i32, float*, i32)* @scale_2d}
!94 = !{i1 false, !57, i1 false, i2 -1}
!95 = !{i1 false, i1 false, i1 false, i1 false}
!96 = !{void (i32, float*, i32)* @scale_1d}
!97 = !{i1 false, !59, i1 false, i2 -1}
!98 = !{i1 false, !62, i1 false, i2 -1}
!99 = !{i1 false, !64, i1 false, i2 -1}
!100 = !{i1 false, !3, i1 false, i2 -1}
!101 = !{i1 false, !1, i1 false, i2 -1}
!102 = !{i1 false, !72, i1 false, i2 -1}
!103 = !{i1 false, !74, i1 false, i2 -1}
!104 = !{i1 false}
!105 = distinct !{null}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 0.000000e+00, double 2.100000e+01}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 0.000000e+00, double 1.000000e+00}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 0.000000e+00, double 4.410000e+02}
!112 = !{i32 4}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.000000e+00, double 4.410000e+02}
!115 = distinct !{!115, !27}
!116 = !{i1 false, !117, i1 false, i2 0}
!117 = !{double 1.000000e+00, double 2.100000e+01}
!118 = distinct !{!118, !27}
!119 = !{i32 1, !120, i32 1, !2, i32 1, !0, i32 1, !4}
!120 = !{i1 false, !121, i1 false, i2 0}
!121 = !{double 2.000000e+01, double 2.000000e+01}
!122 = !{i1 false, !123, i1 false, i2 0}
!123 = !{double 1.000000e+00, double 1.000000e+00}
!124 = !{i1 false, !125, i1 false, i2 0}
!125 = !{double 0.000000e+00, double 0.000000e+00}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = !{i32 1, i32 -1}
!131 = !{i32 1, !47, i32 1, !132}
!132 = !{i1 false, !133, i1 false, i2 0}
!133 = !{double 8.000000e+00, double 8.000000e+00}
!134 = !{i32 -1, i32 2, i32 -1}
!135 = !{i32 1, !120, i32 1, !55, i32 1, !132}
!136 = !{i32 5}
!137 = !{!138, !57, i1 false, i2 -1}
!138 = !{!"fixp", i32 32, i32 26}
!139 = !{i32 6}
!140 = !{!138, !133, i1 false, i2 1}
!141 = !{!138, !142, i1 false, i2 -1}
!142 = !{double 0.000000e+00, double 6.080000e+01}
!143 = !{i32 7}
!144 = distinct !{!144, !27}
!145 = !{i32 1, !120, i32 1, !58, i32 1, !132}
!146 = !{!54, !133, i1 false, i2 1}
!147 = !{!54, !148, i1 false, i2 -1}
!148 = !{double 8.000000e-01, double 1.600000e+01}
!149 = distinct !{!149, !27}
!150 = !{i32 1, !120, i32 1, !60, i32 1, !132}
!151 = !{!138, !152, i1 false, i2 -1}
!152 = !{double 1.600000e+00, double 3.200000e+01}
!153 = distinct !{!153, !27}
!154 = !{i32 1, !120, i32 1, !65, i32 1, !132}
!155 = !{!56, !133, i1 false, i2 1}
!156 = !{!157, !158, i1 false, i2 -1}
!157 = !{!"fixp", i32 32, i32 12}
!158 = !{double 0.000000e+00, double 0x41201ADA40000000}
!159 = distinct !{!159, !27}
!160 = !{i32 1, !120, i32 1, !68, i32 1, !132}
!161 = !{!162, !163, i1 false, i2 -1}
!162 = !{!"fixp", i32 32, i32 21}
!163 = !{double 0.000000e+00, double 0x409A5F011F4F50A0}
!164 = distinct !{!164, !27}
!165 = !{i32 1, !120, i32 1, !70, i32 1, !132}
!166 = !{!56, !167, i1 false, i2 -1}
!167 = !{double 4.000000e-01, double 8.000000e+00}
!168 = distinct !{!168, !27}
!169 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!170 = !{i32 1, !120, i32 1, !47, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !58, i32 1, !60, i32 1, !63, i32 1, !65, i32 1, !68, i32 1, !70, i32 1, !73}
!171 = !{!138, !5, i1 false, i2 -1}
!172 = !{!54, !57, i1 false, i2 -1}
!173 = !{!138, !174, i1 false, i2 -1}
!174 = !{double 0.000000e+00, double 1.520000e+01}
!175 = !{!138, !176, i1 false, i2 -1}
!176 = !{double 0.000000e+00, double 0x40422AAAB8A5CE5B}
!177 = !{i32 8}
!178 = !{!61, !64, i1 false, i2 -1}
!179 = !{!61, !180, i1 false, i2 -1}
!180 = !{double 0x3F8B4E8AA78E4EE4, double 0x40155554FBDAD752}
!181 = !{!138, !182, i1 false, i2 -1}
!182 = !{double 0x3F8B4E8AA78E4EE4, double 0x4044D55558212945}
!183 = distinct !{!183, !27}
!184 = distinct !{!184, !27}
!185 = !{!54, !186, i1 false, i2 -1}
!186 = !{double 0.000000e+00, double 0x40395C2917507E9D}
!187 = !{!69, !188, i1 false, i2 -1}
!188 = !{double 0.000000e+00, double 0x406D8A8642396074}
!189 = distinct !{!189, !27}
!190 = distinct !{!190, !27}
!191 = !{!69, !192, i1 false, i2 -1}
!192 = !{double 4.444400e-02, double 0x406A7B72E6A76966}
!193 = distinct !{!193, !27}
!194 = !{!138, !195, i1 false, i2 -1}
!195 = !{double 0.000000e+00, double 0x403FB3335D249E44}
!196 = !{!197, !198, i1 false, i2 -1}
!197 = !{!"fixp", i32 32, i32 19}
!198 = !{double 0.000000e+00, double 0x40BA1FB6D8C80C3E}
!199 = !{!66, !200, i1 false, i2 -1}
!200 = !{double 0.000000e+00, double 0x40F1BCD5AD8C80C4}
!201 = distinct !{!201, !27}
!202 = distinct !{!202, !27}
!203 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!204 = !{!205, i1 false}
!205 = !{i1 false, !49, i1 false, i2 0}
!206 = !{!207, i1 false}
!207 = !{i1 false, !208, i1 false, i2 0}
!208 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!209 = !{!54, !121, i1 false, i2 1}
!210 = !{i1 false, !211, i1 false, i2 -1}
!211 = !{double 0.000000e+00, double 2.000000e+01}
!212 = !{i1 false, !109, i1 false, i2 -1}
!213 = !{!54, !211, i1 false, i2 -1}
!214 = !{!71, !109, i1 false, i2 1}
!215 = !{!56, !57, i1 false, i2 1}
!216 = !{i1 false, i1 false, i1 false, i2 1}
!217 = !{i1 false, !117, i1 false, i2 -1}
!218 = !{!54, !117, i1 false, i2 -1}
!219 = !{!48, !220, i1 false, i2 1}
!220 = !{double 5.000000e-02, double 1.050000e+00}
!221 = !{!48, !222, i1 false, i2 1}
!222 = !{double 2.500000e-02, double 5.250000e-01}
!223 = !{i1 false, !23}
!224 = !{!71, !225, i1 false, i2 1}
!225 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!226 = !{!61, !62, i1 false, i2 1}
!227 = !{!48, !228, i1 false, i2 1}
!228 = !{double 1.250000e-02, double 2.625000e-01}
!229 = !{i1 false, !230}
!230 = !{i1 false, !231, i1 false, i2 0}
!231 = !{double 4.000000e+00, double 4.000000e+00}
!232 = !{!71, !233, i1 false, i2 1}
!233 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!234 = !{!48, !59, i1 false, i2 1}
!235 = !{!48, !236, i1 false, i2 1}
!236 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!237 = !{i1 false, !238}
!238 = !{i1 false, !239, i1 false, i2 0}
!239 = !{double 6.000000e+00, double 6.000000e+00}
!240 = !{!71, !241, i1 false, i2 1}
!241 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!242 = !{!48, !64, i1 false, i2 1}
!243 = !{!48, !244, i1 false, i2 1}
!244 = !{double 6.250000e-03, double 1.312500e-01}
!245 = !{i1 false, !132}
!246 = !{!71, !247, i1 false, i2 1}
!247 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!248 = !{!71, !72, i1 false, i2 1}
!249 = !{!48, !250, i1 false, i2 1}
!250 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!251 = !{i1 false, !252}
!252 = !{i1 false, !253, i1 false, i2 0}
!253 = !{double 9.000000e+00, double 9.000000e+00}
!254 = !{!71, !255, i1 false, i2 1}
!255 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!256 = !{!71, !74, i1 false, i2 1}
!257 = !{!69, !1, i1 false, i2 1}
!258 = !{!124, i1 false}
!259 = !{!66, !3, i1 false, i2 1}
!260 = !{i1 false, !261, i1 false, i2 -1}
!261 = !{double 0.000000e+00, double 4.000000e+02}
!262 = !{i1 false, !263, i1 false, i2 -1}
!263 = !{double 0.000000e+00, double 1.900000e+01}
!264 = !{!54, !263, i1 false, i2 -1}
!265 = !{!71, !266, i1 false, i2 -1}
!266 = !{double 0.000000e+00, double 0x3FEE666666666666}
!267 = !{!54, !5, i1 false, i2 1}
!268 = distinct !{!268, !27}
!269 = distinct !{!269, !27}
!270 = !{i32 -1, i32 -1, i32 3, i32 -1}
!271 = !{i32 1, !120, i32 1, !120, i32 1, !53, i32 1, !132}
!272 = !{!69, !273, i1 false, i2 -1}
!273 = !{double 0.000000e+00, double 0x406522223E186983}
!274 = !{i32 9}
!275 = distinct !{!275, !27}
!276 = distinct !{!276, !27}
