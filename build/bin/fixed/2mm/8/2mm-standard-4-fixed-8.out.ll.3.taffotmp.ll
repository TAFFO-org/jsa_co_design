; ModuleID = './build/bin/fixed/2mm/8/2mm-standard-4-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/2mm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,73.799995) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,3.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,3.6) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,3.714286) final)\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [49 x i8] c"target('D') scalar(range(0.0,1227.599976) final)\00", section "llvm.metadata", !taffo.info !4
@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.8 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 12) final)\00", section "llvm.metadata", !taffo.info !0
@.str.9 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 14) final)\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.11 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !21
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !24
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !33 !taffo.funinfo !34 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 !taffo.equivalentChild !38 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !39

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !40

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !41 !taffo.funinfo !42 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !43

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !44

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !45

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.start !47 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !48, !taffo.info !49
  %beta = alloca float, align 4, !taffo.initweight !48, !taffo.info !51
  %tmp = alloca [8 x [10 x float]], align 4, !taffo.initweight !48, !taffo.info !53
  %A = alloca [8 x [12 x float]], align 4, !taffo.initweight !48, !taffo.info !55
  %B = alloca [12 x [10 x float]], align 4, !taffo.initweight !48, !taffo.info !57
  %C = alloca [10 x [14 x float]], align 4, !taffo.initweight !48, !taffo.info !59
  %D = alloca [8 x [14 x float]], align 4, !taffo.initweight !48, !taffo.info !61, !taffo.target !62
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !63, !taffo.info !49
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !63, !taffo.info !51
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*, !taffo.initweight !63, !taffo.info !53
  %A4 = bitcast [8 x [12 x float]]* %A to i8*, !taffo.initweight !63, !taffo.info !55
  %B5 = bitcast [12 x [10 x float]]* %B to i8*, !taffo.initweight !63, !taffo.info !57
  %C6 = bitcast [10 x [14 x float]]* %C to i8*, !taffo.initweight !63, !taffo.info !59
  %D7 = bitcast [8 x [14 x float]]* %D to i8*, !taffo.initweight !63, !taffo.info !61, !taffo.target !62
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !63, !taffo.info !55
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !63, !taffo.info !57
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !63, !taffo.info !59
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !63, !taffo.info !61, !taffo.target !62
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !63, !taffo.info !53
  call void @init_array.4(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.initweight !63, !taffo.info !49, !taffo.originalCall !64, !taffo.constinfo !65
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 4), !taffo.initweight !63, !taffo.info !49, !taffo.originalCall !66, !taffo.constinfo !67
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 4), !taffo.initweight !63, !taffo.info !51, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !63, !taffo.info !55
  %0 = bitcast [12 x float]* %arraydecay12 to float*, !taffo.initweight !68, !taffo.info !55
  call void @scale_2d.6(i32 noundef 8, i32 noundef 12, float* noundef %0, i32 noundef 4), !taffo.initweight !69, !taffo.info !55, !taffo.originalCall !70, !taffo.constinfo !71
  %arraydecay13 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !63, !taffo.info !57
  %1 = bitcast [10 x float]* %arraydecay13 to float*, !taffo.initweight !68, !taffo.info !57
  call void @scale_2d.7(i32 noundef 12, i32 noundef 10, float* noundef %1, i32 noundef 4), !taffo.initweight !69, !taffo.info !57, !taffo.originalCall !70, !taffo.constinfo !71
  %arraydecay14 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !63, !taffo.info !59
  %2 = bitcast [14 x float]* %arraydecay14 to float*, !taffo.initweight !68, !taffo.info !59
  call void @scale_2d.8(i32 noundef 10, i32 noundef 14, float* noundef %2, i32 noundef 4), !taffo.initweight !69, !taffo.info !59, !taffo.originalCall !70, !taffo.constinfo !71
  %arraydecay15 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !63, !taffo.info !61, !taffo.target !62
  %3 = bitcast [14 x float]* %arraydecay15 to float*, !taffo.initweight !68, !taffo.info !61, !taffo.target !62
  call void @scale_2d.9(i32 noundef 8, i32 noundef 14, float* noundef %3, i32 noundef 4), !taffo.initweight !69, !taffo.info !61, !taffo.target !62, !taffo.originalCall !70, !taffo.constinfo !71
  %arraydecay16 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !63, !taffo.info !53
  %4 = bitcast [10 x float]* %arraydecay16 to float*, !taffo.initweight !68, !taffo.info !53
  call void @scale_2d.5(i32 noundef 8, i32 noundef 10, float* noundef %4, i32 noundef 4), !taffo.initweight !69, !taffo.info !53, !taffo.originalCall !70, !taffo.constinfo !71
  call void @timer_start(), !taffo.constinfo !72
  %5 = load float, float* %alpha, align 4, !taffo.initweight !63, !taffo.info !49
  %6 = load float, float* %beta, align 4, !taffo.initweight !63, !taffo.info !51
  %arraydecay17 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !63, !taffo.info !53
  %arraydecay18 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !63, !taffo.info !55
  %arraydecay19 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !63, !taffo.info !57
  %arraydecay20 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !63, !taffo.info !59
  %arraydecay21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !63, !taffo.info !61, !taffo.target !62
  call void @kernel_2mm.3(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float noundef %5, float noundef %6, [10 x float]* noundef %arraydecay17, [12 x float]* noundef %arraydecay18, [10 x float]* noundef %arraydecay19, [14 x float]* noundef %arraydecay20, [14 x float]* noundef %arraydecay21), !taffo.initweight !68, !taffo.info !49, !taffo.originalCall !73, !taffo.constinfo !65
  call void @timer_stop(), !taffo.constinfo !72
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78
  %cmp23 = icmp slt i32 %j.0, 14, !taffo.info !76
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %i.0, !taffo.initweight !63, !taffo.info !61, !taffo.target !62
  %arrayidx25 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !68, !taffo.info !61, !taffo.target !62
  %7 = load float, float* %arrayidx25, align 4, !taffo.initweight !69, !taffo.info !61, !taffo.target !62
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !6
  store float %7, float* %arrayidx27, align 4, !taffo.initweight !80, !taffo.info !61, !taffo.target !62
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond22, !llvm.loop !83

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nsw i32 %i.0, 1, !taffo.info !84, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !86

for.end30:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !87
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.equivalentChild !90 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !91
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !93
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !48, !taffo.info !96
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !68, !taffo.info !96
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !69, !taffo.info !96

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !98
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !68, !taffo.info !98
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !69, !taffo.info !98

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !68, !taffo.info !96
  %add = add nsw i32 %mul, 1, !taffo.initweight !69, !taffo.info !96, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !80, !taffo.info !96
  %conv = sitofp i32 %rem to float, !taffo.initweight !100, !taffo.info !96
  %conv6 = sitofp i32 %ni to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !101, !taffo.info !96
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.initweight !68, !taffo.info !102
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !68, !taffo.info !102
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !103

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !68, !taffo.info !96, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !104

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !48, !taffo.info !96
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.initweight !68, !taffo.info !96
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !69, !taffo.info !96

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !98
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.initweight !68, !taffo.info !98
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !69, !taffo.info !98

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.initweight !68, !taffo.info !96
  %rem21 = srem i32 %mul20, %nj, !taffo.initweight !69, !taffo.info !96
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !80, !taffo.info !96
  %conv23 = sitofp i32 %nj to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !100, !taffo.info !96
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.1, !taffo.initweight !68, !taffo.info !102
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !68, !taffo.info !102
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !105

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !68, !taffo.info !96, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !106

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.initweight !48, !taffo.info !96
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.initweight !68, !taffo.info !96
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !69, !taffo.info !96

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.initweight !48, !taffo.info !98
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.initweight !68, !taffo.info !98
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !69, !taffo.info !98

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.initweight !68, !taffo.info !96
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !69, !taffo.info !96, !taffo.constinfo !27
  %rem44 = srem i32 %add43, %nl, !taffo.initweight !80, !taffo.info !96
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !100, !taffo.info !96
  %conv46 = sitofp i32 %nl to float
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !101, !taffo.info !96
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !68, !taffo.info !102
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %j.2, !taffo.initweight !68, !taffo.info !102
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !107

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.initweight !68, !taffo.info !96, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !108

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.initweight !48, !taffo.info !96
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.initweight !68, !taffo.info !96
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !69, !taffo.info !96

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.initweight !48, !taffo.info !98
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.initweight !68, !taffo.info !98
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !69, !taffo.info !98

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.initweight !68, !taffo.info !96
  %rem66 = srem i32 %mul65, %nk, !taffo.initweight !69, !taffo.info !96
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !80, !taffo.info !96
  %conv68 = sitofp i32 %nk to float
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !100, !taffo.info !96
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.initweight !68, !taffo.info !102
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %j.3, !taffo.initweight !68, !taffo.info !102
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !109

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.initweight !68, !taffo.info !96, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !110

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.initweight !48, !taffo.info !96
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.initweight !68, !taffo.info !96
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !69, !taffo.info !96

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.initweight !48, !taffo.info !98
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.initweight !68, !taffo.info !98
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !69, !taffo.info !98

for.body85:                                       ; preds = %for.cond82
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.4, !taffo.initweight !68, !taffo.info !102
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %j.4, !taffo.initweight !68, !taffo.info !102
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !69, !taffo.info !102, !taffo.constinfo !111
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.initweight !68, !taffo.info !98, !taffo.constinfo !27
  br label %for.cond82, !llvm.loop !114

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.initweight !68, !taffo.info !96, !taffo.constinfo !27
  br label %for.cond78, !llvm.loop !115

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.equivalentChild !116 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %cmp = icmp slt i32 %i.0, %ni
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ]
  %cmp2 = icmp slt i32 %j.0, %nj
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !100, !taffo.info !102, !taffo.constinfo !111
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp6 = icmp slt i32 %k.0, %nk
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %k.0
  %0 = load float, float* %arrayidx9, align 4
  %mul = fmul float %alpha, %0
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %k.0
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx11, align 4
  %mul12 = fmul float %mul, %1
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx14, align 4
  %add = fadd float %2, %mul12
  store float %add, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !117

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !118

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !119

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ]
  %cmp22 = icmp slt i32 %i.1, %ni
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ]
  %cmp25 = icmp slt i32 %j.1, %nl
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %j.1
  %3 = load float, float* %arrayidx28, align 4
  %mul29 = fmul float %3, %beta
  store float %mul29, float* %arrayidx28, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ]
  %cmp31 = icmp slt i32 %k.1, %nj
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.1
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %k.1
  %4 = load float, float* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %k.1
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %j.1
  %5 = load float, float* %arrayidx36, align 4
  %mul37 = fmul float %4, %5
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %j.1
  %6 = load float, float* %arrayidx39, align 4
  %add40 = fadd float %6, %mul37
  store float %add40, float* %arrayidx39, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !120

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond24, !llvm.loop !121

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond21, !llvm.loop !122

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !33 !taffo.funinfo !123 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !112
  %add = add nsw i32 %mul, %j.0, !taffo.info !112
  %rem = srem i32 %add, 20, !taffo.info !112, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !128
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv), !taffo.constinfo !87
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !130

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !131

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !132 !taffo.funinfo !133 !taffo.sourceFunction !66 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !132 !taffo.funinfo !136 !taffo.sourceFunction !66 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.initweight !100, !taffo.info !53
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !101, !taffo.info !53
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !100, !taffo.info !102, !taffo.constinfo !111
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !76
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !128
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.initweight !100, !taffo.info !55
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.initweight !101, !taffo.info !55
  %0 = load float, float* %arrayidx9, align 4, !taffo.initweight !141, !taffo.info !55
  %mul = fmul float %alpha, %0, !taffo.initweight !100, !taffo.info !142
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %k.0, !taffo.initweight !100, !taffo.info !57
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !101, !taffo.info !57
  %1 = load float, float* %arrayidx11, align 4, !taffo.initweight !141, !taffo.info !57
  %mul12 = fmul float %mul, %1, !taffo.initweight !101, !taffo.info !144
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.initweight !100, !taffo.info !53
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !101, !taffo.info !53
  %2 = load float, float* %arrayidx14, align 4, !taffo.initweight !141, !taffo.info !53
  %add = fadd float %2, %mul12, !taffo.initweight !141, !taffo.info !146
  store float %add, float* %arrayidx14, align 4, !taffo.initweight !141, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !148

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !149

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !150

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !76
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !128
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !76
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !128
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.initweight !100, !taffo.info !61
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %j.1, !taffo.initweight !101, !taffo.info !61
  %3 = load float, float* %arrayidx28, align 4, !taffo.initweight !141, !taffo.info !61
  %mul29 = fmul float %3, %beta, !taffo.initweight !100, !taffo.info !151
  store float %mul29, float* %arrayidx28, align 4, !taffo.initweight !101, !taffo.info !51
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !76
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !128
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.1, !taffo.initweight !100, !taffo.info !53
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %k.1, !taffo.initweight !101, !taffo.info !53
  %4 = load float, float* %arrayidx34, align 4, !taffo.initweight !141, !taffo.info !53
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %k.1, !taffo.initweight !100, !taffo.info !59
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %j.1, !taffo.initweight !101, !taffo.info !59
  %5 = load float, float* %arrayidx36, align 4, !taffo.initweight !141, !taffo.info !59
  %mul37 = fmul float %4, %5, !taffo.initweight !153, !taffo.info !154
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.initweight !100, !taffo.info !61
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %j.1, !taffo.initweight !101, !taffo.info !61
  %6 = load float, float* %arrayidx39, align 4, !taffo.initweight !141, !taffo.info !61
  %add40 = fadd float %6, %mul37, !taffo.initweight !153, !taffo.info !156
  store float %add40, float* %arrayidx39, align 4, !taffo.initweight !141, !taffo.info !61
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !158

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond24, !llvm.loop !159

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond21, !llvm.loop !160

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !161 !taffo.funinfo !162 !taffo.sourceFunction !64 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !80, !taffo.info !49, !taffo.constinfo !91
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !80, !taffo.info !51, !taffo.constinfo !93
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !48, !taffo.info !96
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !69, !taffo.info !96

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !98
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !69, !taffo.info !98

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !68, !taffo.info !164
  %add = add nsw i32 %mul, 1, !taffo.initweight !69, !taffo.info !166, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !80, !taffo.info !168
  %conv = sitofp i32 %rem to float, !taffo.initweight !100, !taffo.info !168
  %conv6 = sitofp i32 %ni to float, !taffo.info !124
  %div = fdiv float %conv, %conv6, !taffo.initweight !101, !taffo.info !170
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.initweight !68, !taffo.info !172
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !68, !taffo.info !172
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !68, !taffo.info !173, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !175

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !68, !taffo.info !176, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !178

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !48, !taffo.info !96
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !69, !taffo.info !96

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !98
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !69, !taffo.info !98

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.initweight !68, !taffo.info !173, !taffo.constinfo !27
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.initweight !68, !taffo.info !179
  %rem21 = srem i32 %mul20, %nj, !taffo.initweight !69, !taffo.info !181
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !80, !taffo.info !181
  %conv23 = sitofp i32 %nj to float, !taffo.info !22
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !100, !taffo.info !182
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.1, !taffo.initweight !68, !taffo.info !184
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !68, !taffo.info !184
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !68, !taffo.info !173, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !185

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !68, !taffo.info !176, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !186

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.initweight !48, !taffo.info !96
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !69, !taffo.info !96

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.initweight !48, !taffo.info !98
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !69, !taffo.info !98

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.initweight !68, !taffo.info !187, !taffo.constinfo !27
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.initweight !68, !taffo.info !189
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !69, !taffo.info !191, !taffo.constinfo !27
  %rem44 = srem i32 %add43, %nl, !taffo.initweight !80, !taffo.info !193
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !100, !taffo.info !193
  %conv46 = sitofp i32 %nl to float, !taffo.info !126
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !101, !taffo.info !195
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !68, !taffo.info !197
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %j.2, !taffo.initweight !68, !taffo.info !197
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.initweight !68, !taffo.info !173, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !198

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.initweight !68, !taffo.info !176, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !199

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.initweight !48, !taffo.info !96
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !69, !taffo.info !96

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.initweight !48, !taffo.info !98
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !69, !taffo.info !98

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.initweight !68, !taffo.info !200, !taffo.constinfo !27
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.initweight !68, !taffo.info !202
  %rem66 = srem i32 %mul65, %nk, !taffo.initweight !69, !taffo.info !204
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !80, !taffo.info !204
  %conv68 = sitofp i32 %nk to float, !taffo.info !139
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !100, !taffo.info !206
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.initweight !68, !taffo.info !208
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %j.3, !taffo.initweight !68, !taffo.info !208
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !69, !taffo.info !102
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.initweight !68, !taffo.info !173, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !209

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.initweight !68, !taffo.info !176, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !210

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.initweight !48, !taffo.info !96
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !69, !taffo.info !96

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.initweight !48, !taffo.info !98
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.initweight !68, !taffo.info !163
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !69, !taffo.info !98

for.body85:                                       ; preds = %for.cond82
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.4, !taffo.initweight !68, !taffo.info !211
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %j.4, !taffo.initweight !68, !taffo.info !211
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !69, !taffo.info !102, !taffo.constinfo !111
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.initweight !68, !taffo.info !173, !taffo.constinfo !27
  br label %for.cond82, !llvm.loop !212

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.initweight !68, !taffo.info !176, !taffo.constinfo !27
  br label %for.cond78, !llvm.loop !213

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !214 !taffo.funinfo !215 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !101, !taffo.info !53
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !141, !taffo.info !53
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !153, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !134
  %mul = fmul float %1, %conv, !taffo.initweight !216, !taffo.info !217
  %2 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !101, !taffo.info !53
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !141, !taffo.info !53
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !153, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !219

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !220

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !214 !taffo.funinfo !221 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !101, !taffo.info !55
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !141, !taffo.info !55
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !153, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !134
  %mul = fmul float %1, %conv, !taffo.initweight !216, !taffo.info !98
  %2 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !101, !taffo.info !55
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !141, !taffo.info !55
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !153, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !222

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !223

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !214 !taffo.funinfo !224 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !101, !taffo.info !57
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !141, !taffo.info !57
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !153, !taffo.info !57
  %conv = sitofp i32 %factor to float, !taffo.info !134
  %mul = fmul float %1, %conv, !taffo.initweight !216, !taffo.info !225
  %2 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !101, !taffo.info !57
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !141, !taffo.info !57
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !153, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !227

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !228

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !214 !taffo.funinfo !229 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !101, !taffo.info !59
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !141, !taffo.info !59
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !153, !taffo.info !59
  %conv = sitofp i32 %factor to float, !taffo.info !134
  %mul = fmul float %1, %conv, !taffo.initweight !216, !taffo.info !230
  %2 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !101, !taffo.info !59
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !141, !taffo.info !59
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !153, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !232

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !233

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !214 !taffo.funinfo !234 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !128
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !101, !taffo.info !61
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !141, !taffo.info !61
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !153, !taffo.info !61
  %conv = sitofp i32 %factor to float, !taffo.info !134
  %mul = fmul float %1, %conv, !taffo.initweight !216, !taffo.info !235
  %2 = mul nsw i32 %i.0, %m, !taffo.info !112
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !101, !taffo.info !61
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !141, !taffo.info !61
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !153, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !237

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !238

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x40932E66601BC98A}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+01, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 2.000000e+00, double 2.000000e+00}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false}
!32 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!33 = !{i32 -1, i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!35 = distinct !{!35, !29}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7, void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.9}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = !{}
!47 = !{i1 true}
!48 = !{i32 0}
!49 = !{i1 false, !50, i1 false, i2 -1}
!50 = !{double 1.500000e+00, double 1.500000e+00}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 1.200000e+00, double 1.200000e+00}
!53 = !{i1 false, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x405273331E3A7DAA}
!55 = !{i1 false, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 3.500000e+00}
!57 = !{i1 false, !58, i1 false, i2 -1}
!58 = !{double 0.000000e+00, double 3.600000e+00}
!59 = !{i1 false, !60, i1 false, i2 -1}
!60 = !{double 0.000000e+00, double 0x400DB6DB940FECDD}
!61 = !{i1 false, !7, i1 false, i2 -1}
!62 = !{!"D"}
!63 = !{i32 1}
!64 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{void (float*, i32)* @scale_scalar}
!67 = !{i1 false, i1 false, i1 false}
!68 = !{i32 2}
!69 = !{i32 3}
!70 = !{void (i32, i32, float*, i32)* @scale_2d}
!71 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!72 = !{i1 false}
!73 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 9.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 1.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 1.350000e+02}
!80 = !{i32 4}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.350000e+02}
!83 = distinct !{!83, !29}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.000000e+00, double 9.000000e+00}
!86 = distinct !{!86, !29}
!87 = !{i1 false, i1 false, i1 false, i1 false}
!88 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!89 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!90 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array.4}
!91 = !{!92, i1 false}
!92 = !{i1 false, !50, i1 false, i2 0}
!93 = !{!94, i1 false}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!96 = !{i1 false, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 1.200000e+01}
!98 = !{i1 false, !99, i1 false, i2 -1}
!99 = !{double 0.000000e+00, double 1.400000e+01}
!100 = !{i32 5}
!101 = !{i32 6}
!102 = !{i1 false, i1 false, i1 false, i2 1}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = !{!112, i1 false}
!112 = !{i1 false, !113, i1 false, i2 0}
!113 = !{double 0.000000e+00, double 0.000000e+00}
!114 = distinct !{!114, !29}
!115 = distinct !{!115, !29}
!116 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm.3}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !29}
!122 = distinct !{!122, !29}
!123 = !{i32 1, !124, i32 1, !126, i32 1, !6}
!124 = !{i1 false, !125, i1 false, i2 0}
!125 = !{double 8.000000e+00, double 8.000000e+00}
!126 = !{i1 false, !127, i1 false, i2 0}
!127 = !{double 1.400000e+01, double 1.400000e+01}
!128 = !{i1 false, !129, i1 false, i2 0}
!129 = !{double 1.000000e+00, double 1.000000e+00}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = !{i32 1, i32 -1}
!133 = !{i32 1, !49, i32 1, !134}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 4.000000e+00, double 4.000000e+00}
!136 = !{i32 1, !51, i32 1, !134}
!137 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!138 = !{i32 1, !124, i32 1, !22, i32 1, !139, i32 1, !126, i32 1, !49, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !57, i32 1, !59, i32 1, !61}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double 1.200000e+01, double 1.200000e+01}
!141 = !{i32 7}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double 0.000000e+00, double 5.250000e+00}
!144 = !{i1 false, !145, i1 false, i2 -1}
!145 = !{double 0.000000e+00, double 0x4032E66666666667}
!146 = !{i1 false, !147, i1 false, i2 -1}
!147 = !{double 0.000000e+00, double 0x40572CCCB7D41744}
!148 = distinct !{!148, !29}
!149 = distinct !{!149, !29}
!150 = distinct !{!150, !29}
!151 = !{i1 false, !152, i1 false, i2 -1}
!152 = !{double 0.000000e+00, double 0x4097047AD9BAF1D9}
!153 = !{i32 8}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 0.000000e+00, double 0x407121D41FE4C06A}
!156 = !{i1 false, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 0x409776DB6814F9A4}
!158 = distinct !{!158, !29}
!159 = distinct !{!159, !29}
!160 = distinct !{!160, !29}
!161 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!162 = !{i32 1, !124, i32 1, !22, i32 1, !139, i32 1, !126, i32 1, !49, i32 1, !51, i32 1, !55, i32 1, !57, i32 1, !59, i32 1, !61, i32 1, !53}
!163 = !{i1 false, !77, i1 false, i2 -1}
!164 = !{i1 false, !165, i1 false, i2 -1}
!165 = !{double 0.000000e+00, double 1.680000e+02}
!166 = !{i1 false, !167, i1 false, i2 -1}
!167 = !{double 1.000000e+00, double 1.690000e+02}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 7.000000e+00}
!170 = !{i1 false, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 8.750000e-01}
!172 = !{i1 false, !56, i1 false, i2 1}
!173 = !{i1 false, !174, i1 false, i2 -1}
!174 = !{double 1.000000e+00, double 1.500000e+01}
!175 = distinct !{!175, !29}
!176 = !{i1 false, !177, i1 false, i2 -1}
!177 = !{double 1.000000e+00, double 1.300000e+01}
!178 = distinct !{!178, !29}
!179 = !{i1 false, !180, i1 false, i2 -1}
!180 = !{double 0.000000e+00, double 1.800000e+02}
!181 = !{i1 false, !75, i1 false, i2 -1}
!182 = !{i1 false, !183, i1 false, i2 -1}
!183 = !{double 0.000000e+00, double 9.000000e-01}
!184 = !{i1 false, !58, i1 false, i2 1}
!185 = distinct !{!185, !29}
!186 = distinct !{!186, !29}
!187 = !{i1 false, !188, i1 false, i2 -1}
!188 = !{double 3.000000e+00, double 1.700000e+01}
!189 = !{i1 false, !190, i1 false, i2 -1}
!190 = !{double 0.000000e+00, double 2.040000e+02}
!191 = !{i1 false, !192, i1 false, i2 -1}
!192 = !{double 1.000000e+00, double 2.050000e+02}
!193 = !{i1 false, !194, i1 false, i2 -1}
!194 = !{double 0.000000e+00, double 1.300000e+01}
!195 = !{i1 false, !196, i1 false, i2 -1}
!196 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!197 = !{i1 false, !60, i1 false, i2 1}
!198 = distinct !{!198, !29}
!199 = distinct !{!199, !29}
!200 = !{i1 false, !201, i1 false, i2 -1}
!201 = !{double 2.000000e+00, double 1.600000e+01}
!202 = !{i1 false, !203, i1 false, i2 -1}
!203 = !{double 0.000000e+00, double 1.920000e+02}
!204 = !{i1 false, !205, i1 false, i2 -1}
!205 = !{double 0.000000e+00, double 1.100000e+01}
!206 = !{i1 false, !207, i1 false, i2 -1}
!207 = !{double 0.000000e+00, double 0x3FED555555555555}
!208 = !{i1 false, !7, i1 false, i2 1}
!209 = distinct !{!209, !29}
!210 = distinct !{!210, !29}
!211 = !{i1 false, !54, i1 false, i2 1}
!212 = distinct !{!212, !29}
!213 = distinct !{!213, !29}
!214 = !{i32 -1, i32 -1, i32 3, i32 -1}
!215 = !{i32 1, !124, i32 1, !22, i32 1, !53, i32 1, !134}
!216 = !{i32 9}
!217 = !{i1 false, !218, i1 false, i2 -1}
!218 = !{double 0.000000e+00, double 0x407273331E3A7DAA}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29}
!221 = !{i32 1, !124, i32 1, !139, i32 1, !55, i32 1, !134}
!222 = distinct !{!222, !29}
!223 = distinct !{!223, !29}
!224 = !{i32 1, !139, i32 1, !22, i32 1, !57, i32 1, !134}
!225 = !{i1 false, !226, i1 false, i2 -1}
!226 = !{double 0.000000e+00, double 1.440000e+01}
!227 = distinct !{!227, !29}
!228 = distinct !{!228, !29}
!229 = !{i32 1, !22, i32 1, !126, i32 1, !59, i32 1, !134}
!230 = !{i1 false, !231, i1 false, i2 -1}
!231 = !{double 0.000000e+00, double 0x402DB6DB940FECDD}
!232 = distinct !{!232, !29}
!233 = distinct !{!233, !29}
!234 = !{i32 1, !124, i32 1, !126, i32 1, !61, i32 1, !134}
!235 = !{i1 false, !236, i1 false, i2 -1}
!236 = !{double 0.000000e+00, double 0x40B32E66601BC98A}
!237 = distinct !{!237, !29}
!238 = distinct !{!238, !29}
