; ModuleID = './build/bin/fixed/3mm/16/3mm-standard-256-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,7099.733887) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/3mm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,42.666668) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,44.799999) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,8388.608398) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,46.933334) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,46.080002) final)\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [49 x i8] c"target('G') scalar(range(0.0,233145152.0) final)\00", section "llvm.metadata", !taffo.info !4
@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.8 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 14))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !38

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !27
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !42

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !43

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !27
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
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.start !46 {
entry:
  %E = alloca [6 x [8 x float]], align 4, !taffo.initweight !47, !taffo.info !48
  %A = alloca [6 x [10 x float]], align 4, !taffo.initweight !47, !taffo.info !50
  %B = alloca [10 x [8 x float]], align 4, !taffo.initweight !47, !taffo.info !52
  %F = alloca [8 x [12 x float]], align 4, !taffo.initweight !47, !taffo.info !54
  %C = alloca [8 x [14 x float]], align 4, !taffo.initweight !47, !taffo.info !56
  %D = alloca [14 x [12 x float]], align 4, !taffo.initweight !47, !taffo.info !58
  %G = alloca [6 x [12 x float]], align 4, !taffo.initweight !47, !taffo.info !60, !taffo.target !61
  %E1 = bitcast [6 x [8 x float]]* %E to i8*, !taffo.initweight !62, !taffo.info !48
  %A2 = bitcast [6 x [10 x float]]* %A to i8*, !taffo.initweight !62, !taffo.info !50
  %B3 = bitcast [10 x [8 x float]]* %B to i8*, !taffo.initweight !62, !taffo.info !52
  %F4 = bitcast [8 x [12 x float]]* %F to i8*, !taffo.initweight !62, !taffo.info !54
  %C5 = bitcast [8 x [14 x float]]* %C to i8*, !taffo.initweight !62, !taffo.info !56
  %D6 = bitcast [14 x [12 x float]]* %D to i8*, !taffo.initweight !62, !taffo.info !58
  %G7 = bitcast [6 x [12 x float]]* %G to i8*, !taffo.initweight !62, !taffo.info !60, !taffo.target !61
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !62, !taffo.info !50
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !62, !taffo.info !52
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !62, !taffo.info !56
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !62, !taffo.info !58
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !62, !taffo.info !48
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !62, !taffo.info !54
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !62, !taffo.info !60, !taffo.target !61
  call void @init_array.2(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.initweight !63, !taffo.info !48, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !62, !taffo.info !48
  %0 = bitcast [8 x float]* %arraydecay14 to float*, !taffo.initweight !63, !taffo.info !48
  call void @scale_2d.3(i32 noundef 6, i32 noundef 8, float* noundef %0, i32 noundef 256), !taffo.initweight !66, !taffo.info !48, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !62, !taffo.info !50
  %1 = bitcast [10 x float]* %arraydecay15 to float*, !taffo.initweight !63, !taffo.info !50
  call void @scale_2d.4(i32 noundef 6, i32 noundef 10, float* noundef %1, i32 noundef 256), !taffo.initweight !66, !taffo.info !50, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !62, !taffo.info !52
  %2 = bitcast [8 x float]* %arraydecay16 to float*, !taffo.initweight !63, !taffo.info !52
  call void @scale_2d.5(i32 noundef 10, i32 noundef 8, float* noundef %2, i32 noundef 256), !taffo.initweight !66, !taffo.info !52, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !62, !taffo.info !54
  %3 = bitcast [12 x float]* %arraydecay17 to float*, !taffo.initweight !63, !taffo.info !54
  call void @scale_2d.6(i32 noundef 8, i32 noundef 12, float* noundef %3, i32 noundef 256), !taffo.initweight !66, !taffo.info !54, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !62, !taffo.info !56
  %4 = bitcast [14 x float]* %arraydecay18 to float*, !taffo.initweight !63, !taffo.info !56
  call void @scale_2d.7(i32 noundef 8, i32 noundef 14, float* noundef %4, i32 noundef 256), !taffo.initweight !66, !taffo.info !56, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !62, !taffo.info !58
  %5 = bitcast [12 x float]* %arraydecay19 to float*, !taffo.initweight !63, !taffo.info !58
  call void @scale_2d.8(i32 noundef 14, i32 noundef 12, float* noundef %5, i32 noundef 256), !taffo.initweight !66, !taffo.info !58, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !62, !taffo.info !60, !taffo.target !61
  %6 = bitcast [12 x float]* %arraydecay20 to float*, !taffo.initweight !63, !taffo.info !60, !taffo.target !61
  call void @scale_2d.9(i32 noundef 6, i32 noundef 12, float* noundef %6, i32 noundef 256), !taffo.initweight !66, !taffo.info !60, !taffo.target !61, !taffo.originalCall !67, !taffo.constinfo !68
  call void @timer_start(), !taffo.constinfo !69
  %arraydecay21 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !62, !taffo.info !48
  %arraydecay22 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !62, !taffo.info !50
  %arraydecay23 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !62, !taffo.info !52
  %arraydecay24 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !62, !taffo.info !54
  %arraydecay25 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !62, !taffo.info !56
  %arraydecay26 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !62, !taffo.info !58
  %arraydecay27 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !62, !taffo.info !60, !taffo.target !61
  call void @kernel_3mm.1(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [8 x float]* noundef %arraydecay21, [10 x float]* noundef %arraydecay22, [8 x float]* noundef %arraydecay23, [12 x float]* noundef %arraydecay24, [14 x float]* noundef %arraydecay25, [12 x float]* noundef %arraydecay26, [12 x float]* noundef %arraydecay27), !taffo.initweight !63, !taffo.info !48, !taffo.originalCall !70, !taffo.constinfo !65
  call void @timer_stop(), !taffo.constinfo !69
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp29 = icmp slt i32 %j.0, 12, !taffo.info !73
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %i.0, !taffo.initweight !62, !taffo.info !60, !taffo.target !61
  %arrayidx31 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !63, !taffo.info !60, !taffo.target !61
  %7 = load float, float* %arrayidx31, align 4, !taffo.initweight !66, !taffo.info !60, !taffo.target !61
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %j.0, !taffo.info !6
  store float %7, float* %arrayidx33, align 4, !taffo.initweight !77, !taffo.info !60, !taffo.target !61
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !80

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %inc35 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !83

for.end36:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !84
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !40 !taffo.funinfo !41 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.equivalentChild !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.initweight !47, !taffo.info !88
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end11, !taffo.initweight !66, !taffo.info !88

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !88
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !66, !taffo.info !88

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !63, !taffo.info !88
  %add = add nsw i32 %mul, 1, !taffo.initweight !66, !taffo.info !88, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !77, !taffo.info !88
  %conv = sitofp i32 %rem to float, !taffo.initweight !90, !taffo.info !88
  %mul6 = mul nsw i32 5, %ni, !taffo.constinfo !27
  %conv7 = sitofp i32 %mul6 to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !91, !taffo.info !88
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !63, !taffo.info !92
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !63, !taffo.info !92
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !93

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !94

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.initweight !47, !taffo.info !88
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.initweight !66, !taffo.info !88

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.initweight !47, !taffo.info !88
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.initweight !66, !taffo.info !88

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.initweight !63, !taffo.info !88
  %add22 = add nsw i32 %mul21, 2, !taffo.initweight !66, !taffo.info !88, !taffo.constinfo !27
  %rem23 = srem i32 %add22, %nj, !taffo.initweight !77, !taffo.info !88
  %conv24 = sitofp i32 %rem23 to float, !taffo.initweight !90, !taffo.info !88
  %mul25 = mul nsw i32 5, %nj, !taffo.constinfo !27
  %conv26 = sitofp i32 %mul25 to float
  %div27 = fdiv float %conv24, %conv26, !taffo.initweight !91, !taffo.info !88
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.initweight !63, !taffo.info !92
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.initweight !63, !taffo.info !92
  store float %div27, float* %arrayidx29, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !95

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !96

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.initweight !47, !taffo.info !88
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.initweight !66, !taffo.info !88

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.initweight !47, !taffo.info !88
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.initweight !66, !taffo.info !88

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.initweight !63, !taffo.info !88
  %rem46 = srem i32 %mul45, %nl, !taffo.initweight !66, !taffo.info !88
  %conv47 = sitofp i32 %rem46 to float, !taffo.initweight !77, !taffo.info !88
  %mul48 = mul nsw i32 5, %nl, !taffo.constinfo !27
  %conv49 = sitofp i32 %mul48 to float
  %div50 = fdiv float %conv47, %conv49, !taffo.initweight !90, !taffo.info !88
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !63, !taffo.info !92
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.initweight !63, !taffo.info !92
  store float %div50, float* %arrayidx52, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !97

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond36, !llvm.loop !98

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.initweight !47, !taffo.info !88
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.initweight !66, !taffo.info !88

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.initweight !47, !taffo.info !88
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.initweight !66, !taffo.info !88

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.initweight !63, !taffo.info !88
  %add69 = add nsw i32 %mul68, 2, !taffo.initweight !66, !taffo.info !88, !taffo.constinfo !27
  %rem70 = srem i32 %add69, %nk, !taffo.initweight !77, !taffo.info !88
  %conv71 = sitofp i32 %rem70 to float, !taffo.initweight !90, !taffo.info !88
  %mul72 = mul nsw i32 5, %nk, !taffo.constinfo !27
  %conv73 = sitofp i32 %mul72 to float
  %div74 = fdiv float %conv71, %conv73, !taffo.initweight !91, !taffo.info !88
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.initweight !63, !taffo.info !92
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.initweight !63, !taffo.info !92
  store float %div74, float* %arrayidx76, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond63, !llvm.loop !99

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond59, !llvm.loop !100

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.initweight !47, !taffo.info !88
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.initweight !66, !taffo.info !88

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.initweight !47, !taffo.info !88
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.initweight !66, !taffo.info !88

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.initweight !63, !taffo.info !92
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.initweight !63, !taffo.info !92
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.initweight !66, !taffo.info !92, !taffo.constinfo !101
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond87, !llvm.loop !104

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond83, !llvm.loop !105

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.initweight !47, !taffo.info !88
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.initweight !66, !taffo.info !88

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.initweight !47, !taffo.info !88
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.initweight !66, !taffo.info !88

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.initweight !63, !taffo.info !92
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.initweight !63, !taffo.info !92
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.initweight !66, !taffo.info !92, !taffo.constinfo !101
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond103, !llvm.loop !106

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond99, !llvm.loop !107

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.initweight !47, !taffo.info !88
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.initweight !66, !taffo.info !88

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.initweight !47, !taffo.info !88
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.initweight !63, !taffo.info !88
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.initweight !66, !taffo.info !88

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.initweight !63, !taffo.info !92
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.initweight !63, !taffo.info !92
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.initweight !66, !taffo.info !92, !taffo.constinfo !101
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond119, !llvm.loop !108

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond115, !llvm.loop !109

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.equivalentChild !110 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %cmp = icmp slt i32 %i.0, %ni
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ]
  %cmp2 = icmp slt i32 %j.0, %nj
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !92, !taffo.constinfo !101
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp6 = icmp slt i32 %k.0, %nk
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0
  %0 = load float, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx11, align 4
  %mul = fmul float %0, %1
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx13, align 4
  %add = fadd float %2, %mul
  store float %add, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !111

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !112

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !113

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ]
  %cmp21 = icmp slt i32 %i.1, %nj
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ]
  %cmp24 = icmp slt i32 %j.1, %nl
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.initweight !90, !taffo.info !92, !taffo.constinfo !101
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ]
  %cmp29 = icmp slt i32 %k.1, %nm
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1
  %3 = load float, float* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1
  %4 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %3, %4
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1
  %5 = load float, float* %arrayidx37, align 4
  %add38 = fadd float %5, %mul35
  store float %add38, float* %arrayidx37, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !114

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !115

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !116

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ]
  %cmp49 = icmp slt i32 %i.2, %ni
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ]
  %cmp52 = icmp slt i32 %j.2, %nl
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.initweight !90, !taffo.info !92, !taffo.constinfo !101
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ]
  %cmp57 = icmp slt i32 %k.2, %nj
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2
  %6 = load float, float* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2
  %7 = load float, float* %arrayidx62, align 4
  %mul63 = fmul float %6, %7
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2
  %8 = load float, float* %arrayidx65, align 4
  %add66 = fadd float %8, %mul63
  store float %add66, float* %arrayidx65, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !117

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.constinfo !27
  br label %for.cond51, !llvm.loop !118

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !119

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !32 !taffo.funinfo !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !102
  %add = add nsw i32 %mul, %j.0, !taffo.info !102
  %rem = srem i32 %add, 20, !taffo.info !102, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !125
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !127
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !128

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !129

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !130 !taffo.funinfo !131 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.initweight !90, !taffo.info !48
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !91, !taffo.info !48
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !92, !taffo.constinfo !101
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !73
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !125
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !50
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.initweight !91, !taffo.info !50
  %0 = load float, float* %arrayidx9, align 4, !taffo.initweight !136, !taffo.info !50
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0, !taffo.initweight !90, !taffo.info !52
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !91, !taffo.info !52
  %1 = load float, float* %arrayidx11, align 4, !taffo.initweight !136, !taffo.info !52
  %mul = fmul float %0, %1, !taffo.initweight !137, !taffo.info !138
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.initweight !90, !taffo.info !48
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.initweight !91, !taffo.info !48
  %2 = load float, float* %arrayidx13, align 4, !taffo.initweight !136, !taffo.info !48
  %add = fadd float %2, %mul, !taffo.initweight !137, !taffo.info !140
  store float %add, float* %arrayidx13, align 4, !taffo.initweight !136, !taffo.info !48
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !142

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !143

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !144

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !73
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !125
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !73
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !125
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.initweight !90, !taffo.info !54
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1, !taffo.initweight !91, !taffo.info !54
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.initweight !90, !taffo.info !92, !taffo.constinfo !101
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !73
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !125
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1, !taffo.initweight !90, !taffo.info !56
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1, !taffo.initweight !91, !taffo.info !56
  %3 = load float, float* %arrayidx32, align 4, !taffo.initweight !136, !taffo.info !56
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1, !taffo.initweight !90, !taffo.info !58
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.initweight !91, !taffo.info !58
  %4 = load float, float* %arrayidx34, align 4, !taffo.initweight !136, !taffo.info !58
  %mul35 = fmul float %3, %4, !taffo.initweight !137, !taffo.info !145
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.initweight !90, !taffo.info !54
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1, !taffo.initweight !91, !taffo.info !54
  %5 = load float, float* %arrayidx37, align 4, !taffo.initweight !136, !taffo.info !54
  %add38 = fadd float %5, %mul35, !taffo.initweight !137, !taffo.info !147
  store float %add38, float* %arrayidx37, align 4, !taffo.initweight !136, !taffo.info !54
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !149

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !150

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !151

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !73
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !125
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !73
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !125
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.initweight !90, !taffo.info !60
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2, !taffo.initweight !91, !taffo.info !60
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.initweight !90, !taffo.info !92, !taffo.constinfo !101
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !73
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !125
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2, !taffo.initweight !90, !taffo.info !48
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2, !taffo.initweight !91, !taffo.info !48
  %6 = load float, float* %arrayidx60, align 4, !taffo.initweight !136, !taffo.info !48
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2, !taffo.initweight !90, !taffo.info !54
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2, !taffo.initweight !91, !taffo.info !54
  %7 = load float, float* %arrayidx62, align 4, !taffo.initweight !136, !taffo.info !54
  %mul63 = fmul float %6, %7, !taffo.initweight !137, !taffo.info !152
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.initweight !90, !taffo.info !60
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2, !taffo.initweight !91, !taffo.info !60
  %8 = load float, float* %arrayidx65, align 4, !taffo.initweight !136, !taffo.info !60
  %add66 = fadd float %8, %mul63, !taffo.initweight !137, !taffo.info !154
  store float %add66, float* %arrayidx65, align 4, !taffo.initweight !136, !taffo.info !60
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !156

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond51, !llvm.loop !157

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !158

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !130 !taffo.funinfo !159 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.initweight !47, !taffo.info !160
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp, label %for.body, label %for.end11, !taffo.initweight !66, !taffo.info !88

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !160
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !66, !taffo.info !88

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !63, !taffo.info !163
  %add = add nsw i32 %mul, 1, !taffo.initweight !66, !taffo.info !165, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !77, !taffo.info !167
  %conv = sitofp i32 %rem to float, !taffo.initweight !90, !taffo.info !167
  %mul6 = mul nsw i32 5, %ni, !taffo.info !169, !taffo.constinfo !27
  %conv7 = sitofp i32 %mul6 to float, !taffo.info !169
  %div = fdiv float %conv, %conv7, !taffo.initweight !91, !taffo.info !171
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !63, !taffo.info !173
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !63, !taffo.info !173
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !176

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !177

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.initweight !47, !taffo.info !160
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.initweight !66, !taffo.info !88

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.initweight !47, !taffo.info !160
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.initweight !66, !taffo.info !88

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.initweight !63, !taffo.info !178
  %add22 = add nsw i32 %mul21, 2, !taffo.initweight !66, !taffo.info !180, !taffo.constinfo !27
  %rem23 = srem i32 %add22, %nj, !taffo.initweight !77, !taffo.info !182
  %conv24 = sitofp i32 %rem23 to float, !taffo.initweight !90, !taffo.info !182
  %mul25 = mul nsw i32 5, %nj, !taffo.info !183, !taffo.constinfo !27
  %conv26 = sitofp i32 %mul25 to float, !taffo.info !183
  %div27 = fdiv float %conv24, %conv26, !taffo.initweight !91, !taffo.info !185
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.initweight !63, !taffo.info !187
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.initweight !63, !taffo.info !187
  store float %div27, float* %arrayidx29, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !188

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !189

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.initweight !47, !taffo.info !160
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.initweight !66, !taffo.info !88

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.initweight !47, !taffo.info !160
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.initweight !66, !taffo.info !88

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.initweight !63, !taffo.info !190, !taffo.constinfo !27
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.initweight !63, !taffo.info !192
  %rem46 = srem i32 %mul45, %nl, !taffo.initweight !66, !taffo.info !194
  %conv47 = sitofp i32 %rem46 to float, !taffo.initweight !77, !taffo.info !194
  %mul48 = mul nsw i32 5, %nl, !taffo.info !196, !taffo.constinfo !27
  %conv49 = sitofp i32 %mul48 to float, !taffo.info !196
  %div50 = fdiv float %conv47, %conv49, !taffo.initweight !90, !taffo.info !198
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !63, !taffo.info !200
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.initweight !63, !taffo.info !200
  store float %div50, float* %arrayidx52, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !201

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond36, !llvm.loop !202

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.initweight !47, !taffo.info !160
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.initweight !66, !taffo.info !88

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.initweight !47, !taffo.info !160
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.initweight !66, !taffo.info !88

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.initweight !63, !taffo.info !203, !taffo.constinfo !27
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.initweight !63, !taffo.info !205
  %add69 = add nsw i32 %mul68, 2, !taffo.initweight !66, !taffo.info !207, !taffo.constinfo !27
  %rem70 = srem i32 %add69, %nk, !taffo.initweight !77, !taffo.info !209
  %conv71 = sitofp i32 %rem70 to float, !taffo.initweight !90, !taffo.info !209
  %mul72 = mul nsw i32 5, %nk, !taffo.info !211, !taffo.constinfo !27
  %conv73 = sitofp i32 %mul72 to float, !taffo.info !211
  %div74 = fdiv float %conv71, %conv73, !taffo.initweight !91, !taffo.info !213
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.initweight !63, !taffo.info !215
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.initweight !63, !taffo.info !215
  store float %div74, float* %arrayidx76, align 4, !taffo.initweight !66, !taffo.info !92
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond63, !llvm.loop !216

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond59, !llvm.loop !217

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.initweight !47, !taffo.info !160
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.initweight !66, !taffo.info !88

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.initweight !47, !taffo.info !160
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.initweight !66, !taffo.info !88

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.initweight !63, !taffo.info !218
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.initweight !63, !taffo.info !218
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.initweight !66, !taffo.info !92, !taffo.constinfo !101
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond87, !llvm.loop !219

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond83, !llvm.loop !220

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.initweight !47, !taffo.info !160
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.initweight !66, !taffo.info !88

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.initweight !47, !taffo.info !160
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.initweight !66, !taffo.info !88

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.initweight !63, !taffo.info !221
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.initweight !63, !taffo.info !221
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.initweight !66, !taffo.info !92, !taffo.constinfo !101
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond103, !llvm.loop !222

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond99, !llvm.loop !223

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.initweight !47, !taffo.info !160
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.initweight !66, !taffo.info !88

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.initweight !47, !taffo.info !160
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.initweight !63, !taffo.info !162
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.initweight !66, !taffo.info !88

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.initweight !63, !taffo.info !224
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.initweight !63, !taffo.info !224
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.initweight !66, !taffo.info !92, !taffo.constinfo !101
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond119, !llvm.loop !225

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.initweight !63, !taffo.info !174, !taffo.constinfo !27
  br label %for.cond115, !llvm.loop !226

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !228 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !48
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !48
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !48
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !232
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !48
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !48
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !48
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !234

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !235

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !236 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !50
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !50
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !50
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !237
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !50
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !50
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !50
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !239

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !240

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !241 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !52
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !52
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !52
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !242
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !52
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !52
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !52
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !244

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !245

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !246 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !54
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !54
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !54
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !247
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !54
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !54
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !249

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !250

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !251 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !56
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !56
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !56
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !252
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !56
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !56
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !254

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !255

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !256 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !58
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !58
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !58
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !257
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !58
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !58
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !259

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !260

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !227 !taffo.funinfo !261 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !125
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !91, !taffo.info !60
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !136, !taffo.info !60
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !137, !taffo.info !60
  %conv = sitofp i32 %factor to float, !taffo.info !229
  %mul = fmul float %1, %conv, !taffo.initweight !231, !taffo.info !262
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !91, !taffo.info !60
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !136, !taffo.info !60
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !137, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !264

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !265

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
!7 = !{double 0.000000e+00, double 0x41ABCB0680000000}
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
!32 = !{i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = distinct !{!34, !29}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7, void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.9}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = !{}
!46 = !{i1 true}
!47 = !{i32 0}
!48 = !{i1 false, !49, i1 false, i2 -1}
!49 = !{double 0.000000e+00, double 0x40BBBBBBE004B7F6}
!50 = !{i1 false, !51, i1 false, i2 -1}
!51 = !{double 0.000000e+00, double 0x404555556084A516}
!52 = !{i1 false, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 0x404666665E02EA96}
!54 = !{i1 false, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 0x40C0624DDFFC547A}
!56 = !{i1 false, !57, i1 false, i2 -1}
!57 = !{double 0.000000e+00, double 0x404777777D0F1F58}
!58 = !{i1 false, !59, i1 false, i2 -1}
!59 = !{double 0.000000e+00, double 0x40470A3D816ACEAB}
!60 = !{i1 false, !7, i1 false, i2 -1}
!61 = !{!"G"}
!62 = !{i32 1}
!63 = !{i32 2}
!64 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{i32 3}
!67 = !{void (i32, i32, float*, i32)* @scale_2d}
!68 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!69 = !{i1 false}
!70 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 7.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 9.100000e+01}
!77 = !{i32 4}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 9.100000e+01}
!80 = distinct !{!80, !29}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 7.000000e+00}
!83 = distinct !{!83, !29}
!84 = !{i1 false, i1 false, i1 false, i1 false}
!85 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!86 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!87 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array.2}
!88 = !{i1 false, !89, i1 false, i2 1}
!89 = !{double 0.000000e+00, double 1.400000e+01}
!90 = !{i32 5}
!91 = !{i32 6}
!92 = !{i1 false, i1 false, i1 false, i2 1}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{!102, i1 false}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 0.000000e+00, double 0.000000e+00}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm.1}
!111 = distinct !{!111, !29}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = !{i32 1, !121, i32 1, !123, i32 1, !6}
!121 = !{i1 false, !122, i1 false, i2 0}
!122 = !{double 6.000000e+00, double 6.000000e+00}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 1.200000e+01, double 1.200000e+01}
!125 = !{i1 false, !126, i1 false, i2 0}
!126 = !{double 1.000000e+00, double 1.000000e+00}
!127 = !{i1 false, i1 false, i1 false}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!131 = !{i32 1, !121, i32 1, !132, i32 1, !22, i32 1, !123, i32 1, !134, i32 1, !48, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !56, i32 1, !58, i32 1, !60}
!132 = !{i1 false, !133, i1 false, i2 0}
!133 = !{double 8.000000e+00, double 8.000000e+00}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 1.400000e+01, double 1.400000e+01}
!136 = !{i32 7}
!137 = !{i32 8}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 0x409DDDDDE25730F2}
!140 = !{i1 false, !141, i1 false, i2 -1}
!141 = !{double 0.000000e+00, double 0x40C19999AC4D4219}
!142 = distinct !{!142, !29}
!143 = distinct !{!143, !29}
!144 = distinct !{!144, !29}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double 0.000000e+00, double 0x40A0E56051DDA6A0}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double 0.000000e+00, double 0x40C49BA5F473BE22}
!149 = distinct !{!149, !29}
!150 = distinct !{!150, !29}
!151 = distinct !{!151, !29}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double 0.000000e+00, double 0x418C6620BA76E4B2}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 0.000000e+00, double 0x41B17247574EDC96}
!156 = distinct !{!156, !29}
!157 = distinct !{!157, !29}
!158 = distinct !{!158, !29}
!159 = !{i32 1, !121, i32 1, !132, i32 1, !22, i32 1, !123, i32 1, !134, i32 1, !50, i32 1, !52, i32 1, !56, i32 1, !58, i32 1, !48, i32 1, !54, i32 1, !60}
!160 = !{i1 false, !161, i1 false, i2 1}
!161 = !{double 0.000000e+00, double 1.500000e+01}
!162 = !{i1 false, !74, i1 false, i2 1}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 0.000000e+00, double 1.960000e+02}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 1.000000e+00, double 1.970000e+02}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 0.000000e+00, double 5.000000e+00}
!169 = !{i1 false, !170, i1 false, i2 0}
!170 = !{double 3.000000e+01, double 3.000000e+01}
!171 = !{i1 false, !172, i1 false, i2 1}
!172 = !{double 0.000000e+00, double 0x3FC5555555555555}
!173 = !{i1 false, !51, i1 false, i2 1}
!174 = !{i1 false, !175, i1 false, i2 1}
!175 = !{double 1.000000e+00, double 1.500000e+01}
!176 = distinct !{!176, !29}
!177 = distinct !{!177, !29}
!178 = !{i1 false, !179, i1 false, i2 1}
!179 = !{double 0.000000e+00, double 2.100000e+02}
!180 = !{i1 false, !181, i1 false, i2 1}
!181 = !{double 2.000000e+00, double 2.120000e+02}
!182 = !{i1 false, !72, i1 false, i2 1}
!183 = !{i1 false, !184, i1 false, i2 0}
!184 = !{double 4.000000e+01, double 4.000000e+01}
!185 = !{i1 false, !186, i1 false, i2 1}
!186 = !{double 0.000000e+00, double 1.750000e-01}
!187 = !{i1 false, !53, i1 false, i2 1}
!188 = distinct !{!188, !29}
!189 = distinct !{!189, !29}
!190 = !{i1 false, !191, i1 false, i2 1}
!191 = !{double 3.000000e+00, double 1.700000e+01}
!192 = !{i1 false, !193, i1 false, i2 1}
!193 = !{double 0.000000e+00, double 2.380000e+02}
!194 = !{i1 false, !195, i1 false, i2 1}
!195 = !{double 0.000000e+00, double 1.100000e+01}
!196 = !{i1 false, !197, i1 false, i2 0}
!197 = !{double 6.000000e+01, double 6.000000e+01}
!198 = !{i1 false, !199, i1 false, i2 1}
!199 = !{double 0.000000e+00, double 0x3FC7777777777777}
!200 = !{i1 false, !57, i1 false, i2 1}
!201 = distinct !{!201, !29}
!202 = distinct !{!202, !29}
!203 = !{i1 false, !204, i1 false, i2 1}
!204 = !{double 2.000000e+00, double 1.600000e+01}
!205 = !{i1 false, !206, i1 false, i2 1}
!206 = !{double 0.000000e+00, double 2.240000e+02}
!207 = !{i1 false, !208, i1 false, i2 1}
!208 = !{double 2.000000e+00, double 2.260000e+02}
!209 = !{i1 false, !210, i1 false, i2 1}
!210 = !{double 0.000000e+00, double 9.000000e+00}
!211 = !{i1 false, !212, i1 false, i2 0}
!212 = !{double 5.000000e+01, double 5.000000e+01}
!213 = !{i1 false, !214, i1 false, i2 1}
!214 = !{double 0.000000e+00, double 1.800000e-01}
!215 = !{i1 false, !59, i1 false, i2 1}
!216 = distinct !{!216, !29}
!217 = distinct !{!217, !29}
!218 = !{i1 false, !49, i1 false, i2 1}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29}
!221 = !{i1 false, !55, i1 false, i2 1}
!222 = distinct !{!222, !29}
!223 = distinct !{!223, !29}
!224 = !{i1 false, !7, i1 false, i2 1}
!225 = distinct !{!225, !29}
!226 = distinct !{!226, !29}
!227 = !{i32 -1, i32 -1, i32 3, i32 -1}
!228 = !{i32 1, !121, i32 1, !132, i32 1, !48, i32 1, !229}
!229 = !{i1 false, !230, i1 false, i2 0}
!230 = !{double 2.560000e+02, double 2.560000e+02}
!231 = !{i32 9}
!232 = !{i1 false, !233, i1 false, i2 -1}
!233 = !{double 0.000000e+00, double 0x413BBBBBE004B7F6}
!234 = distinct !{!234, !29}
!235 = distinct !{!235, !29}
!236 = !{i32 1, !121, i32 1, !22, i32 1, !50, i32 1, !229}
!237 = !{i1 false, !238, i1 false, i2 -1}
!238 = !{double 0.000000e+00, double 0x40C555556084A516}
!239 = distinct !{!239, !29}
!240 = distinct !{!240, !29}
!241 = !{i32 1, !22, i32 1, !132, i32 1, !52, i32 1, !229}
!242 = !{i1 false, !243, i1 false, i2 -1}
!243 = !{double 0.000000e+00, double 0x40C666665E02EA96}
!244 = distinct !{!244, !29}
!245 = distinct !{!245, !29}
!246 = !{i32 1, !132, i32 1, !123, i32 1, !54, i32 1, !229}
!247 = !{i1 false, !248, i1 false, i2 -1}
!248 = !{double 0.000000e+00, double 0x4140624DDFFC547A}
!249 = distinct !{!249, !29}
!250 = distinct !{!250, !29}
!251 = !{i32 1, !132, i32 1, !134, i32 1, !56, i32 1, !229}
!252 = !{i1 false, !253, i1 false, i2 -1}
!253 = !{double 0.000000e+00, double 0x40C777777D0F1F58}
!254 = distinct !{!254, !29}
!255 = distinct !{!255, !29}
!256 = !{i32 1, !134, i32 1, !123, i32 1, !58, i32 1, !229}
!257 = !{i1 false, !258, i1 false, i2 -1}
!258 = !{double 0.000000e+00, double 0x40C70A3D816ACEAB}
!259 = distinct !{!259, !29}
!260 = distinct !{!260, !29}
!261 = !{i32 1, !121, i32 1, !123, i32 1, !60, i32 1, !229}
!262 = !{i1 false, !263, i1 false, i2 -1}
!263 = !{double 0.000000e+00, double 0x422BCB0680000000}
!264 = distinct !{!264, !29}
!265 = distinct !{!265, !29}
