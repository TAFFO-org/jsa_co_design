; ModuleID = './build/bin/fixed/gemver/16/gemver-standard-16-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,82.933334) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,15.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.2,4.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [29 x i8] c"scalar(range(0.4,8.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [39 x i8] c"scalar(range(0.133333,2.666667) final)\00", section "llvm.metadata", !taffo.info !0
@.str.8 = private unnamed_addr constant [48 x i8] c"target('w') scalar(range(0.0,1623528.25) final)\00", section "llvm.metadata", !taffo.info !4
@.str.9 = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,1536.497925) final)\00", section "llvm.metadata", !taffo.info !0
@.str.10 = private unnamed_addr constant [29 x i8] c"scalar(range(0.1,2.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.11 = private unnamed_addr constant [39 x i8] c"scalar(range(0.088889,1.777778) final)\00", section "llvm.metadata", !taffo.info !0
@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@w_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !8
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !10
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata", !taffo.info !0
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !12
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !14

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !23 !taffo.funinfo !24 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !25
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !28
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 !taffo.equivalentChild !36 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !37 !taffo.funinfo !38 !taffo.equivalentChild !39 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !41 !taffo.funinfo !42 !taffo.equivalentChild !43 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !44

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !45

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !46 !taffo.funinfo !47 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !31
  br label %for.cond4, !llvm.loop !48

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !49

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !50

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !51 !taffo.funinfo !51 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !51 !taffo.funinfo !51 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !34 !taffo.funinfo !35 !taffo.start !52 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !53, !taffo.info !54
  %beta = alloca float, align 4, !taffo.initweight !53, !taffo.info !56
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !53, !taffo.info !58
  %u1 = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !59
  %v1 = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !61
  %u2 = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !63
  %v2 = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !65
  %w = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !67, !taffo.target !68
  %x = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !69
  %y = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !70
  %z = alloca [20 x float], align 4, !taffo.initweight !53, !taffo.info !72
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !74, !taffo.info !54
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !74, !taffo.info !56
  %A3 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !74, !taffo.info !58
  %u14 = bitcast [20 x float]* %u1 to i8*, !taffo.initweight !74, !taffo.info !59
  %v15 = bitcast [20 x float]* %v1 to i8*, !taffo.initweight !74, !taffo.info !61
  %u26 = bitcast [20 x float]* %u2 to i8*, !taffo.initweight !74, !taffo.info !63
  %v27 = bitcast [20 x float]* %v2 to i8*, !taffo.initweight !74, !taffo.info !65
  %w8 = bitcast [20 x float]* %w to i8*, !taffo.initweight !74, !taffo.info !67, !taffo.target !68
  %x9 = bitcast [20 x float]* %x to i8*, !taffo.initweight !74, !taffo.info !69
  %y10 = bitcast [20 x float]* %y to i8*, !taffo.initweight !74, !taffo.info !70
  %z11 = bitcast [20 x float]* %z to i8*, !taffo.initweight !74, !taffo.info !72
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !74, !taffo.info !58
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !74, !taffo.info !59
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !74, !taffo.info !61
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !74, !taffo.info !63
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !74, !taffo.info !65
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !74, !taffo.info !67, !taffo.target !68
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !74, !taffo.info !69
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !74, !taffo.info !70
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !74, !taffo.info !72
  call void @init_array.12(i32 noundef 20, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.initweight !74, !taffo.info !54, !taffo.originalCall !75, !taffo.constinfo !76
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 16), !taffo.initweight !74, !taffo.info !54, !taffo.originalCall !77, !taffo.constinfo !78
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 16), !taffo.initweight !74, !taffo.info !56, !taffo.originalCall !77, !taffo.constinfo !78
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !74, !taffo.info !58
  %0 = bitcast [20 x float]* %arraydecay20 to float*, !taffo.initweight !79, !taffo.info !58
  call void @scale_2d.13(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 16), !taffo.initweight !80, !taffo.info !58, !taffo.originalCall !81, !taffo.constinfo !82
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !74, !taffo.info !59
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay21, i32 noundef 16), !taffo.initweight !79, !taffo.info !59, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !74, !taffo.info !61
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay22, i32 noundef 16), !taffo.initweight !79, !taffo.info !61, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !74, !taffo.info !63
  call void @scale_1d.5(i32 noundef 20, float* noundef %arraydecay23, i32 noundef 16), !taffo.initweight !79, !taffo.info !63, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !74, !taffo.info !65
  call void @scale_1d.6(i32 noundef 20, float* noundef %arraydecay24, i32 noundef 16), !taffo.initweight !79, !taffo.info !65, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !74, !taffo.info !67, !taffo.target !68
  call void @scale_1d.7(i32 noundef 20, float* noundef %arraydecay25, i32 noundef 16), !taffo.initweight !79, !taffo.info !67, !taffo.target !68, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !74, !taffo.info !69
  call void @scale_1d.8(i32 noundef 20, float* noundef %arraydecay26, i32 noundef 16), !taffo.initweight !79, !taffo.info !69, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !74, !taffo.info !70
  call void @scale_1d.9(i32 noundef 20, float* noundef %arraydecay27, i32 noundef 16), !taffo.initweight !79, !taffo.info !70, !taffo.originalCall !83, !taffo.constinfo !84
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !74, !taffo.info !72
  call void @scale_1d.11(i32 noundef 20, float* noundef %arraydecay28, i32 noundef 16), !taffo.initweight !79, !taffo.info !72, !taffo.originalCall !83, !taffo.constinfo !84
  call void @timer_start(), !taffo.constinfo !85
  %1 = load float, float* %alpha, align 4, !taffo.initweight !74, !taffo.info !54
  %2 = load float, float* %beta, align 4, !taffo.initweight !74, !taffo.info !56
  %arraydecay29 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !74, !taffo.info !58
  %arraydecay30 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !74, !taffo.info !59
  %arraydecay31 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !74, !taffo.info !61
  %arraydecay32 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !74, !taffo.info !63
  %arraydecay33 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !74, !taffo.info !65
  %arraydecay34 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !74, !taffo.info !67, !taffo.target !68
  %arraydecay35 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !74, !taffo.info !69
  %arraydecay36 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !74, !taffo.info !70
  %arraydecay37 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !74, !taffo.info !72
  call void @kernel_gemver.10(i32 noundef 20, float noundef %1, float noundef %2, [20 x float]* noundef %arraydecay29, float* noundef %arraydecay30, float* noundef %arraydecay31, float* noundef %arraydecay32, float* noundef %arraydecay33, float* noundef %arraydecay34, float* noundef %arraydecay35, float* noundef %arraydecay36, float* noundef %arraydecay37), !taffo.initweight !79, !taffo.info !54, !taffo.originalCall !86, !taffo.constinfo !76
  call void @timer_stop(), !taffo.constinfo !85
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !87
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.initweight !74, !taffo.info !69
  %3 = load float, float* %arrayidx, align 4, !taffo.initweight !79, !taffo.info !69
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !6
  store float %3, float* %arrayidx38, align 4, !taffo.initweight !80, !taffo.info !69
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %i.0, !taffo.initweight !74, !taffo.info !67, !taffo.target !68
  %4 = load float, float* %arrayidx39, align 4, !taffo.initweight !79, !taffo.info !67, !taffo.target !68
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !8
  store float %4, float* %arrayidx40, align 4, !taffo.initweight !80, !taffo.info !67, !taffo.target !68
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !91
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !89
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.initweight !74, !taffo.info !58
  %arrayidx45 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i32 0, i32 %j.0, !taffo.initweight !79, !taffo.info !58
  %5 = load float, float* %arrayidx45, align 4, !taffo.initweight !80, !taffo.info !58
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !10
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !10
  store float %5, float* %arrayidx47, align 4, !taffo.initweight !93, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !31
  br label %for.cond41, !llvm.loop !96

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !99

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !82
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !46 !taffo.funinfo !47 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.equivalentChild !102 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !103
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !105
  %conv = sitofp i32 %n to float, !taffo.initweight !79, !taffo.info !108
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.initweight !53, !taffo.info !109
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !79, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !80, !taffo.info !109

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !79, !taffo.info !109
  %div = fdiv float %conv5, %conv, !taffo.initweight !79, !taffo.info !108
  %arrayidx = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float %div, float* %arrayidx, align 4, !taffo.initweight !80, !taffo.info !108
  %add = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  %conv6 = sitofp i32 %add to float, !taffo.initweight !80, !taffo.info !109
  %div7 = fdiv float %conv6, %conv, !taffo.initweight !79, !taffo.info !108
  %conv8 = fpext float %div7 to double, !taffo.initweight !80, !taffo.info !108
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !93, !taffo.info !108, !taffo.constinfo !111
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !112, !taffo.info !108
  %arrayidx11 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !80, !taffo.info !108
  %add12 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !80, !taffo.info !109
  %div14 = fdiv float %conv13, %conv, !taffo.initweight !79, !taffo.info !108
  %conv15 = fpext float %div14 to double, !taffo.initweight !80, !taffo.info !108
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !93, !taffo.info !108, !taffo.constinfo !113
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !112, !taffo.info !108
  %arrayidx18 = getelementptr inbounds float, float* %v1, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !80, !taffo.info !108
  %add19 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !80, !taffo.info !109
  %div21 = fdiv float %conv20, %conv, !taffo.initweight !79, !taffo.info !108
  %conv22 = fpext float %div21 to double, !taffo.initweight !80, !taffo.info !108
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !93, !taffo.info !108, !taffo.constinfo !116
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !112, !taffo.info !108
  %arrayidx25 = getelementptr inbounds float, float* %v2, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !80, !taffo.info !108
  %add26 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !80, !taffo.info !109
  %div28 = fdiv float %conv27, %conv, !taffo.initweight !79, !taffo.info !108
  %conv29 = fpext float %div28 to double, !taffo.initweight !80, !taffo.info !108
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !93, !taffo.info !108, !taffo.constinfo !119
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !112, !taffo.info !108
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !80, !taffo.info !108
  %add33 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !80, !taffo.info !109
  %div35 = fdiv float %conv34, %conv, !taffo.initweight !79, !taffo.info !108
  %conv36 = fpext float %div35 to double, !taffo.initweight !80, !taffo.info !108
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !93, !taffo.info !108, !taffo.constinfo !122
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !112, !taffo.info !108
  %arrayidx39 = getelementptr inbounds float, float* %z, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !80, !taffo.info !108
  %arrayidx40 = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !80, !taffo.info !108, !taffo.constinfo !125
  %arrayidx41 = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !80, !taffo.info !108, !taffo.constinfo !125
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !53, !taffo.info !109
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.initweight !79, !taffo.info !109
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !80, !taffo.info !109

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !79, !taffo.info !109
  %rem = srem i32 %mul, %n, !taffo.initweight !80, !taffo.info !109
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !93, !taffo.info !109
  %conv47 = sitofp i32 %n to float
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !112, !taffo.info !109
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !79, !taffo.info !108
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %j.0, !taffo.initweight !79, !taffo.info !108
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !80, !taffo.info !108
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  br label %for.cond42, !llvm.loop !128

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !109, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !129

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.equivalentChild !130 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds float, float* %u1, i32 %i.0
  %1 = load float, float* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds float, float* %v1, i32 %j.0
  %2 = load float, float* %arrayidx6, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx7 = getelementptr inbounds float, float* %u2, i32 %i.0
  %3 = load float, float* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds float, float* %v2, i32 %j.0
  %4 = load float, float* %arrayidx8, align 4
  %mul9 = fmul float %3, %4
  %add10 = fadd float %add, %mul9
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0
  store float %add10, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !131

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !132

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ]
  %cmp17 = icmp slt i32 %i.1, %n
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ]
  %cmp20 = icmp slt i32 %j.1, %n
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds float, float* %x, i32 %i.1
  %5 = load float, float* %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %i.1
  %6 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %beta, %6
  %arrayidx26 = getelementptr inbounds float, float* %y, i32 %j.1
  %7 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %mul25, %7
  %add28 = fadd float %5, %mul27
  %arrayidx29 = getelementptr inbounds float, float* %x, i32 %i.1
  store float %add28, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.constinfo !31
  br label %for.cond19, !llvm.loop !133

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.constinfo !31
  br label %for.cond16, !llvm.loop !134

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ]
  %cmp37 = icmp slt i32 %i.2, %n
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39 = getelementptr inbounds float, float* %x, i32 %i.2
  %8 = load float, float* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds float, float* %z, i32 %i.2
  %9 = load float, float* %arrayidx40, align 4
  %add41 = fadd float %8, %9
  %arrayidx42 = getelementptr inbounds float, float* %x, i32 %i.2
  store float %add41, float* %arrayidx42, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.constinfo !31
  br label %for.cond36, !llvm.loop !135

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ]
  %cmp47 = icmp slt i32 %i.3, %n
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ]
  %cmp50 = icmp slt i32 %j.2, %n
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds float, float* %w, i32 %i.3
  %10 = load float, float* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.3
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %j.2
  %11 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %alpha, %11
  %arrayidx56 = getelementptr inbounds float, float* %x, i32 %j.2
  %12 = load float, float* %arrayidx56, align 4
  %mul57 = fmul float %mul55, %12
  %add58 = fadd float %10, %mul57
  %arrayidx59 = getelementptr inbounds float, float* %w, i32 %i.3
  store float %add58, float* %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.constinfo !31
  br label %for.cond49, !llvm.loop !136

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.constinfo !31
  br label %for.cond46, !llvm.loop !137

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !41 !taffo.funinfo !138 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !89
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !141
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !126
  %add = add nsw i32 %mul, %j.0, !taffo.info !126
  %rem = srem i32 %add, 20, !taffo.info !126, !taffo.constinfo !31
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !141
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !10
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !10
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !10
  %conv = fpext float %2 to double, !taffo.info !10
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv), !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !143

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !144

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !89
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !141
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !126, !taffo.constinfo !31
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !141
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !6
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !6
  %conv21 = fpext float %5 to double, !taffo.info !6
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21), !taffo.constinfo !84
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond10, !llvm.loop !145

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !89
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !141
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !126, !taffo.constinfo !31
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !141
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !8
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !8
  %conv37 = fpext float %8 to double, !taffo.info !8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37), !taffo.constinfo !84
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond26, !llvm.loop !146

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !34 !taffo.funinfo !35 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !147 !taffo.funinfo !148 !taffo.sourceFunction !77 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !147 !taffo.funinfo !151 !taffo.sourceFunction !77 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !153 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !59
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !59
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !156
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !59
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !159 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !61
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !61
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !160
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !61
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !162

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !163 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !63
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !63
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !164
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !63
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !167 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !65
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !65
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !168
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !65
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !171 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !67
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !67
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !172
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !67
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !67
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !174

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !175 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !69
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !69
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !176
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !69
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !69
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.9(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !179 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !70
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !70
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !180
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !70
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !182

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !183 !taffo.funinfo !184 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !89
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !141
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !112, !taffo.info !58
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !154, !taffo.info !58
  %0 = load float, float* %arrayidx4, align 4, !taffo.initweight !155, !taffo.info !58
  %arrayidx5 = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.initweight !112, !taffo.info !59
  %1 = load float, float* %arrayidx5, align 4, !taffo.initweight !154, !taffo.info !59
  %arrayidx6 = getelementptr inbounds float, float* %v1, i32 %j.0, !taffo.initweight !112, !taffo.info !61
  %2 = load float, float* %arrayidx6, align 4, !taffo.initweight !154, !taffo.info !61
  %mul = fmul float %1, %2, !taffo.initweight !155, !taffo.info !185
  %add = fadd float %0, %mul, !taffo.initweight !187, !taffo.info !188
  %arrayidx7 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.initweight !112, !taffo.info !63
  %3 = load float, float* %arrayidx7, align 4, !taffo.initweight !154, !taffo.info !63
  %arrayidx8 = getelementptr inbounds float, float* %v2, i32 %j.0, !taffo.initweight !112, !taffo.info !65
  %4 = load float, float* %arrayidx8, align 4, !taffo.initweight !154, !taffo.info !65
  %mul9 = fmul float %3, %4, !taffo.initweight !155, !taffo.info !190
  %add10 = fadd float %add, %mul9, !taffo.initweight !187, !taffo.info !192
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !112, !taffo.info !58
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.initweight !154, !taffo.info !58
  store float %add10, float* %arrayidx12, align 4, !taffo.initweight !155, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !194

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !195

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !89
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !141
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !89
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !141
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.initweight !112, !taffo.info !69
  %5 = load float, float* %arrayidx22, align 4, !taffo.initweight !154, !taffo.info !69
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.initweight !112, !taffo.info !58
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %i.1, !taffo.initweight !154, !taffo.info !58
  %6 = load float, float* %arrayidx24, align 4, !taffo.initweight !155, !taffo.info !58
  %mul25 = fmul float %beta, %6, !taffo.initweight !112, !taffo.info !196
  %arrayidx26 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.initweight !112, !taffo.info !70
  %7 = load float, float* %arrayidx26, align 4, !taffo.initweight !154, !taffo.info !70
  %mul27 = fmul float %mul25, %7, !taffo.initweight !154, !taffo.info !198
  %add28 = fadd float %5, %mul27, !taffo.initweight !155, !taffo.info !200
  %arrayidx29 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.initweight !112, !taffo.info !69
  store float %add28, float* %arrayidx29, align 4, !taffo.initweight !154, !taffo.info !69
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond19, !llvm.loop !202

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond16, !llvm.loop !203

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !89
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !141
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.initweight !112, !taffo.info !69
  %8 = load float, float* %arrayidx39, align 4, !taffo.initweight !154, !taffo.info !69
  %arrayidx40 = getelementptr inbounds float, float* %z, i32 %i.2, !taffo.initweight !112, !taffo.info !72
  %9 = load float, float* %arrayidx40, align 4, !taffo.initweight !154, !taffo.info !72
  %add41 = fadd float %8, %9, !taffo.initweight !155, !taffo.info !204
  %arrayidx42 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.initweight !112, !taffo.info !69
  store float %add41, float* %arrayidx42, align 4, !taffo.initweight !154, !taffo.info !69
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond36, !llvm.loop !206

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !89
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !141
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !89
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !141
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.initweight !112, !taffo.info !67
  %10 = load float, float* %arrayidx52, align 4, !taffo.initweight !154, !taffo.info !67
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.3, !taffo.initweight !112, !taffo.info !58
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %j.2, !taffo.initweight !154, !taffo.info !58
  %11 = load float, float* %arrayidx54, align 4, !taffo.initweight !155, !taffo.info !58
  %mul55 = fmul float %alpha, %11, !taffo.initweight !112, !taffo.info !207
  %arrayidx56 = getelementptr inbounds float, float* %x, i32 %j.2, !taffo.initweight !112, !taffo.info !69
  %12 = load float, float* %arrayidx56, align 4, !taffo.initweight !154, !taffo.info !69
  %mul57 = fmul float %mul55, %12, !taffo.initweight !154, !taffo.info !209
  %add58 = fadd float %10, %mul57, !taffo.initweight !155, !taffo.info !211
  %arrayidx59 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.initweight !112, !taffo.info !67
  store float %add58, float* %arrayidx59, align 4, !taffo.initweight !154, !taffo.info !67
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond49, !llvm.loop !213

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond46, !llvm.loop !214

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.11(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !215 !taffo.sourceFunction !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !72
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !154, !taffo.info !72
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %0, %conv, !taffo.initweight !155, !taffo.info !216
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !112, !taffo.info !72
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !154, !taffo.info !72
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !219 !taffo.funinfo !184 !taffo.sourceFunction !75 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !93, !taffo.info !54, !taffo.constinfo !103
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !93, !taffo.info !56, !taffo.constinfo !105
  %conv = sitofp i32 %n to float, !taffo.initweight !79, !taffo.info !220
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.initweight !53, !taffo.info !109
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !79, !taffo.info !221
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !80, !taffo.info !109

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !79, !taffo.info !109
  %div = fdiv float %conv5, %conv, !taffo.initweight !79, !taffo.info !222
  %arrayidx = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.initweight !79, !taffo.info !223
  store float %div, float* %arrayidx, align 4, !taffo.initweight !80, !taffo.info !108
  %add = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  %conv6 = sitofp i32 %add to float, !taffo.initweight !80, !taffo.info !224
  %div7 = fdiv float %conv6, %conv, !taffo.initweight !79, !taffo.info !225
  %conv8 = fpext float %div7 to double, !taffo.initweight !80, !taffo.info !225
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !93, !taffo.info !227, !taffo.constinfo !111
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !112, !taffo.info !229
  %arrayidx11 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.initweight !79, !taffo.info !231
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !80, !taffo.info !108
  %add12 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !80, !taffo.info !224
  %div14 = fdiv float %conv13, %conv, !taffo.initweight !79, !taffo.info !225
  %conv15 = fpext float %div14 to double, !taffo.initweight !80, !taffo.info !225
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !93, !taffo.info !232, !taffo.constinfo !113
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !112, !taffo.info !234
  %arrayidx18 = getelementptr inbounds float, float* %v1, i32 %i.0, !taffo.initweight !79, !taffo.info !236
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !80, !taffo.info !108
  %add19 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !80, !taffo.info !224
  %div21 = fdiv float %conv20, %conv, !taffo.initweight !79, !taffo.info !225
  %conv22 = fpext float %div21 to double, !taffo.initweight !80, !taffo.info !225
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !93, !taffo.info !237, !taffo.constinfo !116
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !112, !taffo.info !239
  %arrayidx25 = getelementptr inbounds float, float* %v2, i32 %i.0, !taffo.initweight !79, !taffo.info !241
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !80, !taffo.info !108
  %add26 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !80, !taffo.info !224
  %div28 = fdiv float %conv27, %conv, !taffo.initweight !79, !taffo.info !225
  %conv29 = fpext float %div28 to double, !taffo.initweight !80, !taffo.info !225
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !93, !taffo.info !242, !taffo.constinfo !119
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !112, !taffo.info !244
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !79, !taffo.info !246
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !80, !taffo.info !108
  %add33 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !80, !taffo.info !224
  %div35 = fdiv float %conv34, %conv, !taffo.initweight !79, !taffo.info !225
  %conv36 = fpext float %div35 to double, !taffo.initweight !80, !taffo.info !225
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !93, !taffo.info !247, !taffo.constinfo !122
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !112, !taffo.info !249
  %arrayidx39 = getelementptr inbounds float, float* %z, i32 %i.0, !taffo.initweight !79, !taffo.info !251
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !80, !taffo.info !108
  %arrayidx40 = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !79, !taffo.info !252
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !80, !taffo.info !108, !taffo.constinfo !125
  %arrayidx41 = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.initweight !79, !taffo.info !253
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !80, !taffo.info !108, !taffo.constinfo !125
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !53, !taffo.info !109
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.initweight !79, !taffo.info !221
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !80, !taffo.info !109

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !79, !taffo.info !254
  %rem = srem i32 %mul, %n, !taffo.initweight !80, !taffo.info !256
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !93, !taffo.info !256
  %conv47 = sitofp i32 %n to float, !taffo.info !139
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !112, !taffo.info !258
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !79, !taffo.info !260
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %j.0, !taffo.initweight !79, !taffo.info !260
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !80, !taffo.info !108
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  br label %for.cond42, !llvm.loop !261

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.initweight !79, !taffo.info !224, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !262

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !263 !taffo.funinfo !264 !taffo.sourceFunction !81 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !89
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !141
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !126
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !154, !taffo.info !58
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !155, !taffo.info !58
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !187, !taffo.info !58
  %conv = sitofp i32 %factor to float, !taffo.info !149
  %mul = fmul float %1, %conv, !taffo.initweight !265, !taffo.info !266
  %2 = mul nsw i32 %i.0, %m, !taffo.info !126
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !154, !taffo.info !58
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !155, !taffo.info !58
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !187, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !268

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !269

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.180000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.190000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x409801FDE00D1B71}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 0x4138C5E840000000}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 0x4054BBBBBE878FAC}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.000000e+01}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.020000e+02}
!16 = !{i32 1, !"NumRegisterParameters", i32 0}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!23 = !{i32 -1}
!24 = !{i32 0, i1 false}
!25 = !{i1 false, !26}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+01, double 1.000000e+01}
!28 = !{!29, i1 false}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 2.000000e+00, double 2.000000e+00}
!31 = !{i1 false, i1 false}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false}
!36 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!37 = !{i32 -1, i32 -1, i32 -1}
!38 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!39 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.5, void (i32, float*, i32)* @scale_1d.6, void (i32, float*, i32)* @scale_1d.7, void (i32, float*, i32)* @scale_1d.8, void (i32, float*, i32)* @scale_1d.9, void (i32, float*, i32)* @scale_1d.11}
!40 = distinct !{!40, !33}
!41 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = !{void (i32, i32, float*, i32)* @scale_2d.13}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!47 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = !{}
!52 = !{i1 true}
!53 = !{i32 0}
!54 = !{i1 false, !55, i1 false, i2 -1}
!55 = !{double 1.500000e+00, double 1.500000e+00}
!56 = !{i1 false, !57, i1 false, i2 -1}
!57 = !{double 1.200000e+00, double 1.200000e+00}
!58 = !{i1 false, !11, i1 false, i2 -1}
!59 = !{i1 false, !60, i1 false, i2 -1}
!60 = !{double 0.000000e+00, double 1.520000e+01}
!61 = !{i1 false, !62, i1 false, i2 -1}
!62 = !{double 2.000000e-01, double 4.000000e+00}
!63 = !{i1 false, !64, i1 false, i2 -1}
!64 = !{double 4.000000e-01, double 8.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 -1}
!66 = !{double 1.333330e-01, double 0x4005555582129457}
!67 = !{i1 false, !9, i1 false, i2 -1}
!68 = !{!"w"}
!69 = !{i1 false, !7, i1 false, i2 -1}
!70 = !{i1 false, !71, i1 false, i2 -1}
!71 = !{double 1.000000e-01, double 2.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 -1}
!73 = !{double 0x3FB6C16DF3F96180, double 0x3FFC71C75818C5CA}
!74 = !{i32 1}
!75 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array}
!76 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!77 = !{void (float*, i32)* @scale_scalar}
!78 = !{i1 false, i1 false, i1 false}
!79 = !{i32 2}
!80 = !{i32 3}
!81 = !{void (i32, i32, float*, i32)* @scale_2d}
!82 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!83 = !{void (i32, float*, i32)* @scale_1d}
!84 = !{i1 false, i1 false, i1 false, i1 false}
!85 = !{i1 false}
!86 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 0.000000e+00, double 2.100000e+01}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0.000000e+00, double 1.000000e+00}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0.000000e+00, double 4.410000e+02}
!93 = !{i32 4}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 1.000000e+00, double 4.410000e+02}
!96 = distinct !{!96, !33}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.000000e+00, double 2.100000e+01}
!99 = distinct !{!99, !33}
!100 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!101 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!102 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array.12}
!103 = !{!104, i1 false}
!104 = !{i1 false, !55, i1 false, i2 0}
!105 = !{!106, i1 false}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!108 = !{i1 false, i1 false, i1 false, i2 1}
!109 = !{i1 false, !110, i1 false, i2 -1}
!110 = !{double 0.000000e+00, double 2.000000e+01}
!111 = !{i1 false, !29}
!112 = !{i32 5}
!113 = !{i1 false, !114}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 4.000000e+00, double 4.000000e+00}
!116 = !{i1 false, !117}
!117 = !{i1 false, !118, i1 false, i2 0}
!118 = !{double 6.000000e+00, double 6.000000e+00}
!119 = !{i1 false, !120}
!120 = !{i1 false, !121, i1 false, i2 0}
!121 = !{double 8.000000e+00, double 8.000000e+00}
!122 = !{i1 false, !123}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 9.000000e+00, double 9.000000e+00}
!125 = !{!126, i1 false}
!126 = !{i1 false, !127, i1 false, i2 0}
!127 = !{double 0.000000e+00, double 0.000000e+00}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver.10}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, !33}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = !{i32 1, !139, i32 1, !8, i32 1, !6, i32 1, !10}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double 2.000000e+01, double 2.000000e+01}
!141 = !{i1 false, !142, i1 false, i2 0}
!142 = !{double 1.000000e+00, double 1.000000e+00}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = !{i32 1, i32 -1}
!148 = !{i32 1, !54, i32 1, !149}
!149 = !{i1 false, !150, i1 false, i2 0}
!150 = !{double 1.600000e+01, double 1.600000e+01}
!151 = !{i32 1, !56, i32 1, !149}
!152 = !{i32 -1, i32 2, i32 -1}
!153 = !{i32 1, !139, i32 1, !59, i32 1, !149}
!154 = !{i32 6}
!155 = !{i32 7}
!156 = !{i1 false, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 2.432000e+02}
!158 = distinct !{!158, !33}
!159 = !{i32 1, !139, i32 1, !61, i32 1, !149}
!160 = !{i1 false, !161, i1 false, i2 -1}
!161 = !{double 3.200000e+00, double 6.400000e+01}
!162 = distinct !{!162, !33}
!163 = !{i32 1, !139, i32 1, !63, i32 1, !149}
!164 = !{i1 false, !165, i1 false, i2 -1}
!165 = !{double 6.400000e+00, double 1.280000e+02}
!166 = distinct !{!166, !33}
!167 = !{i32 1, !139, i32 1, !65, i32 1, !149}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 0x4001110E453D20F3, double 0x4045555582129457}
!170 = distinct !{!170, !33}
!171 = !{i32 1, !139, i32 1, !67, i32 1, !149}
!172 = !{i1 false, !173, i1 false, i2 -1}
!173 = !{double 0.000000e+00, double 0x4178C5E840000000}
!174 = distinct !{!174, !33}
!175 = !{i32 1, !139, i32 1, !69, i32 1, !149}
!176 = !{i1 false, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 0x40D801FDE00D1B71}
!178 = distinct !{!178, !33}
!179 = !{i32 1, !139, i32 1, !70, i32 1, !149}
!180 = !{i1 false, !181, i1 false, i2 -1}
!181 = !{double 1.600000e+00, double 3.200000e+01}
!182 = distinct !{!182, !33}
!183 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!184 = !{i32 1, !139, i32 1, !54, i32 1, !56, i32 1, !58, i32 1, !59, i32 1, !61, i32 1, !63, i32 1, !65, i32 1, !67, i32 1, !69, i32 1, !70, i32 1, !72}
!185 = !{i1 false, !186, i1 false, i2 -1}
!186 = !{double 0.000000e+00, double 6.080000e+01}
!187 = !{i32 8}
!188 = !{i1 false, !189, i1 false, i2 -1}
!189 = !{double 0.000000e+00, double 0x4061F77778DD6170}
!190 = !{i1 false, !191, i1 false, i2 -1}
!191 = !{double 0x3FAB4E7D3B950185, double 0x4035555582129457}
!192 = !{i1 false, !193, i1 false, i2 -1}
!193 = !{double 0x3FAB4E7D3B950185, double 0x4064A222291FB3FB}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !33}
!196 = !{i1 false, !197, i1 false, i2 -1}
!197 = !{double 0.000000e+00, double 0x4058E147B16F7935}
!198 = !{i1 false, !199, i1 false, i2 -1}
!199 = !{double 0.000000e+00, double 0x4068E147B16F7935}
!200 = !{i1 false, !201, i1 false, i2 -1}
!201 = !{double 0.000000e+00, double 0x409B1E26D63B0A98}
!202 = distinct !{!202, !33}
!203 = distinct !{!203, !33}
!204 = !{i1 false, !205, i1 false, i2 -1}
!205 = !{double 0x3FB6C16DF3F96180, double 0x4098091A51E321A2}
!206 = distinct !{!206, !33}
!207 = !{i1 false, !208, i1 false, i2 -1}
!208 = !{double 0.000000e+00, double 0x405F19999DCB5782}
!209 = !{i1 false, !210, i1 false, i2 -1}
!210 = !{double 0.000000e+00, double 0x41075522BF4BE7EE}
!211 = !{i1 false, !212, i1 false, i2 -1}
!212 = !{double 0.000000e+00, double 0x413BB08C97E97CFE}
!213 = distinct !{!213, !33}
!214 = distinct !{!214, !33}
!215 = !{i32 1, !139, i32 1, !72, i32 1, !149}
!216 = !{i1 false, !217, i1 false, i2 -1}
!217 = !{double 0x3FF6C16DF3F96180, double 0x403C71C75818C5CA}
!218 = distinct !{!218, !33}
!219 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!220 = !{i1 false, !140, i1 false, i2 1}
!221 = !{i1 false, !90, i1 false, i2 -1}
!222 = !{i1 false, !90, i1 false, i2 1}
!223 = !{i1 false, !60, i1 false, i2 1}
!224 = !{i1 false, !98, i1 false, i2 -1}
!225 = !{i1 false, !226, i1 false, i2 1}
!226 = !{double 5.000000e-02, double 1.050000e+00}
!227 = !{i1 false, !228, i1 false, i2 1}
!228 = !{double 2.500000e-02, double 5.250000e-01}
!229 = !{i1 false, !230, i1 false, i2 1}
!230 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!231 = !{i1 false, !64, i1 false, i2 1}
!232 = !{i1 false, !233, i1 false, i2 1}
!233 = !{double 1.250000e-02, double 2.625000e-01}
!234 = !{i1 false, !235, i1 false, i2 1}
!235 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!236 = !{i1 false, !62, i1 false, i2 1}
!237 = !{i1 false, !238, i1 false, i2 1}
!238 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!239 = !{i1 false, !240, i1 false, i2 1}
!240 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!241 = !{i1 false, !66, i1 false, i2 1}
!242 = !{i1 false, !243, i1 false, i2 1}
!243 = !{double 6.250000e-03, double 1.312500e-01}
!244 = !{i1 false, !245, i1 false, i2 1}
!245 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!246 = !{i1 false, !71, i1 false, i2 1}
!247 = !{i1 false, !248, i1 false, i2 1}
!248 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!249 = !{i1 false, !250, i1 false, i2 1}
!250 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!251 = !{i1 false, !73, i1 false, i2 1}
!252 = !{i1 false, !7, i1 false, i2 1}
!253 = !{i1 false, !9, i1 false, i2 1}
!254 = !{i1 false, !255, i1 false, i2 -1}
!255 = !{double 0.000000e+00, double 4.000000e+02}
!256 = !{i1 false, !257, i1 false, i2 -1}
!257 = !{double 0.000000e+00, double 1.900000e+01}
!258 = !{i1 false, !259, i1 false, i2 -1}
!259 = !{double 0.000000e+00, double 0x3FEE666666666666}
!260 = !{i1 false, !11, i1 false, i2 1}
!261 = distinct !{!261, !33}
!262 = distinct !{!262, !33}
!263 = !{i32 -1, i32 -1, i32 3, i32 -1}
!264 = !{i32 1, !139, i32 1, !139, i32 1, !58, i32 1, !149}
!265 = !{i32 9}
!266 = !{i1 false, !267, i1 false, i2 -1}
!267 = !{double 0.000000e+00, double 0x4094BBBBBE878FAC}
!268 = distinct !{!268, !33}
!269 = distinct !{!269, !33}
