; ModuleID = './build/bin/fixed/gemver/8/gemver-standard-1024-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [38 x i8] c"scalar(range(0.0,336469.34375) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,972.799988) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [32 x i8] c"scalar(range(12.8,256.0) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [32 x i8] c"scalar(range(25.6,512.0) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [41 x i8] c"scalar(range(8.533334,170.666672) final)\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [56 x i8] c"target('w') scalar(range(0.0,1324064060735488.0) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,364663392.0) final)\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [31 x i8] c"scalar(range(6.4,128.0) final)\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [41 x i8] c"scalar(range(5.688889,113.777779) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 4
@w_float = dso_local global [20 x float] zeroinitializer, align 4
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !7 !taffo.funinfo !8 {
entry:
  %val.addr = alloca float, align 4
  %x = alloca float, align 4
  %dx = alloca float, align 4
  %diff = alloca float, align 4
  %min_tol = alloca float, align 4
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  %constZeroVal = alloca float, align 4
  %constTwoVal = alloca float, align 4
  store float %val, float* %val.addr, align 4
  %0 = load float, float* %val.addr, align 4
  %div = fdiv float %0, 1.000000e+01
  store float %div, float* %x, align 4
  store float 0x3F50624DE0000000, float* %min_tol, align 4
  store float 0.000000e+00, float* %constZeroVal, align 4, !taffo.initweight !9, !taffo.info !10
  store float 2.000000e+00, float* %constTwoVal, align 4
  store i32 0, i32* %flag, align 4
  %1 = load float, float* %val.addr, align 4
  %2 = load float, float* %constZeroVal, align 4
  %cmp = fcmp oeq float %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load float, float* %constZeroVal, align 4
  store float %3, float* %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %6 = load float, float* %val.addr, align 4
  %7 = load float, float* %x, align 4
  %8 = load float, float* %x, align 4
  %mul = fmul float %7, %8
  %sub = fsub float %6, %mul
  %9 = load float, float* %constTwoVal, align 4
  %10 = load float, float* %x, align 4
  %mul3 = fmul float %9, %10
  %div4 = fdiv float %sub, %mul3
  store float %div4, float* %dx, align 4
  %11 = load float, float* %x, align 4
  %12 = load float, float* %dx, align 4
  %add = fadd float %11, %12
  store float %add, float* %x, align 4
  %13 = load float, float* %val.addr, align 4
  %14 = load float, float* %x, align 4
  %15 = load float, float* %x, align 4
  %mul5 = fmul float %14, %15
  %sub6 = fsub float %13, %mul5
  store float %sub6, float* %diff, align 4
  %16 = load float, float* %diff, align 4
  %17 = load float, float* %constZeroVal, align 4
  %cmp7 = fcmp oge float %16, %17
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %18 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %19 = load float, float* %diff, align 4
  %fneg = fneg float %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %18, %cond.true ], [ %fneg, %cond.false ]
  %20 = load float, float* %min_tol, align 4
  %cmp8 = fcmp ole float %cond, %20
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !13 !taffo.equivalentChild !14 !taffo.funinfo !15 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !16 !taffo.equivalentChild !17 !taffo.funinfo !18 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4
  %5 = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv
  %7 = load float*, float** %val.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !20 !taffo.equivalentChild !21 !taffo.funinfo !22 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load float*, float** %val.addr, align 4
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9
  %10 = load float, float* %arrayidx4, align 4
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv
  %12 = load float*, float** %val.addr, align 4
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !23

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !25 !taffo.funinfo !26 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  %2 = load i32, i32* %p.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %p.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load float*, float** %val.addr, align 4
  %10 = load i32, i32* %i, align 4
  %11 = mul nuw i32 %1, %2
  %12 = mul nsw i32 %10, %11
  %arrayidx = getelementptr inbounds float, float* %9, i32 %12
  %13 = load i32, i32* %j, align 4
  %14 = mul nsw i32 %13, %2
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %14
  %15 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %15
  %16 = load float, float* %arrayidx8, align 4
  %17 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %17 to float
  %mul = fmul float %16, %conv
  %18 = load float*, float** %val.addr, align 4
  %19 = load i32, i32* %i, align 4
  %20 = mul nuw i32 %1, %2
  %21 = mul nsw i32 %19, %20
  %arrayidx9 = getelementptr inbounds float, float* %18, i32 %21
  %22 = load i32, i32* %j, align 4
  %23 = mul nsw i32 %22, %2
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %23
  %24 = load i32, i32* %k, align 4
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %24
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !27

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !28

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !31 !taffo.initweight !13 !taffo.funinfo !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !32, !taffo.info !33
  %beta = alloca float, align 4, !taffo.initweight !32, !taffo.info !35
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !32, !taffo.info !37
  %u1 = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !39
  %v1 = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !41
  %u2 = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !43
  %v2 = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !45
  %w = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !47, !taffo.target !49
  %x = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !50
  %y = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !52
  %z = alloca [20 x float], align 4, !taffo.initweight !32, !taffo.info !54
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !56, !taffo.info !33
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !56, !taffo.info !35
  %A3 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !56, !taffo.info !37
  %u14 = bitcast [20 x float]* %u1 to i8*, !taffo.initweight !56, !taffo.info !39
  %v15 = bitcast [20 x float]* %v1 to i8*, !taffo.initweight !56, !taffo.info !41
  %u26 = bitcast [20 x float]* %u2 to i8*, !taffo.initweight !56, !taffo.info !43
  %v27 = bitcast [20 x float]* %v2 to i8*, !taffo.initweight !56, !taffo.info !45
  %w8 = bitcast [20 x float]* %w to i8*, !taffo.initweight !56, !taffo.info !47, !taffo.target !49
  %x9 = bitcast [20 x float]* %x to i8*, !taffo.initweight !56, !taffo.info !50
  %y10 = bitcast [20 x float]* %y to i8*, !taffo.initweight !56, !taffo.info !52
  %z11 = bitcast [20 x float]* %z to i8*, !taffo.initweight !56, !taffo.info !54
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !56, !taffo.info !37
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !56, !taffo.info !39
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !56, !taffo.info !41
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !56, !taffo.info !43
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !56, !taffo.info !45
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !56, !taffo.info !47, !taffo.target !49
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !56, !taffo.info !50
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !56, !taffo.info !52
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !56, !taffo.info !54
  call void @init_array.12(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.initweight !56, !taffo.info !33, !taffo.originalCall !57
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 1024), !taffo.initweight !56, !taffo.info !33, !taffo.originalCall !58
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 1024), !taffo.initweight !56, !taffo.info !35, !taffo.originalCall !58
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !56, !taffo.info !37
  %1 = bitcast [20 x float]* %arraydecay20 to float*, !taffo.initweight !59, !taffo.info !37
  call void @scale_2d.13(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 1024), !taffo.initweight !60, !taffo.info !37, !taffo.originalCall !61
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !56, !taffo.info !39
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay21, i32 noundef 1024), !taffo.initweight !59, !taffo.info !39, !taffo.originalCall !62
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !56, !taffo.info !41
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay22, i32 noundef 1024), !taffo.initweight !59, !taffo.info !41, !taffo.originalCall !62
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !56, !taffo.info !43
  call void @scale_1d.5(i32 noundef 20, float* noundef %arraydecay23, i32 noundef 1024), !taffo.initweight !59, !taffo.info !43, !taffo.originalCall !62
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !56, !taffo.info !45
  call void @scale_1d.6(i32 noundef 20, float* noundef %arraydecay24, i32 noundef 1024), !taffo.initweight !59, !taffo.info !45, !taffo.originalCall !62
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !56, !taffo.info !47, !taffo.target !49
  call void @scale_1d.7(i32 noundef 20, float* noundef %arraydecay25, i32 noundef 1024), !taffo.initweight !59, !taffo.info !47, !taffo.target !49, !taffo.originalCall !62
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !56, !taffo.info !50
  call void @scale_1d.8(i32 noundef 20, float* noundef %arraydecay26, i32 noundef 1024), !taffo.initweight !59, !taffo.info !50, !taffo.originalCall !62
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !56, !taffo.info !52
  call void @scale_1d.9(i32 noundef 20, float* noundef %arraydecay27, i32 noundef 1024), !taffo.initweight !59, !taffo.info !52, !taffo.originalCall !62
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !56, !taffo.info !54
  call void @scale_1d.11(i32 noundef 20, float* noundef %arraydecay28, i32 noundef 1024), !taffo.initweight !59, !taffo.info !54, !taffo.originalCall !62
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %3 = load float, float* %alpha, align 4, !taffo.initweight !56, !taffo.info !33
  %4 = load float, float* %beta, align 4, !taffo.initweight !56, !taffo.info !35
  %arraydecay29 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !56, !taffo.info !37
  %arraydecay30 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !56, !taffo.info !39
  %arraydecay31 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !56, !taffo.info !41
  %arraydecay32 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !56, !taffo.info !43
  %arraydecay33 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !56, !taffo.info !45
  %arraydecay34 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !56, !taffo.info !47, !taffo.target !49
  %arraydecay35 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !56, !taffo.info !50
  %arraydecay36 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !56, !taffo.info !52
  %arraydecay37 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !56, !taffo.info !54
  call void @kernel_gemver.10(i32 noundef %2, float noundef %3, float noundef %4, [20 x float]* noundef %arraydecay29, float* noundef %arraydecay30, float* noundef %arraydecay31, float* noundef %arraydecay32, float* noundef %arraydecay33, float* noundef %arraydecay34, float* noundef %arraydecay35, float* noundef %arraydecay36, float* noundef %arraydecay37), !taffo.initweight !59, !taffo.info !33, !taffo.originalCall !63
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %7, !taffo.initweight !56, !taffo.info !50
  %8 = load float, float* %arrayidx, align 4, !taffo.initweight !59, !taffo.info !50
  %9 = load i32, i32* %i, align 4
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %9
  store float %8, float* %arrayidx38, align 4, !taffo.initweight !60, !taffo.info !50
  %10 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %10, !taffo.initweight !56, !taffo.info !47, !taffo.target !49
  %11 = load float, float* %arrayidx39, align 4, !taffo.initweight !59, !taffo.info !47, !taffo.target !49
  %12 = load i32, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %12
  store float %11, float* %arrayidx40, align 4, !taffo.initweight !60, !taffo.info !47, !taffo.target !49
  store i32 0, i32* %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n, align 4
  %cmp42 = icmp slt i32 %13, %14
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %15 = load i32, i32* %i, align 4
  %arrayidx44 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %15, !taffo.initweight !56, !taffo.info !37
  %16 = load i32, i32* %j, align 4
  %arrayidx45 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i32 0, i32 %16, !taffo.initweight !59, !taffo.info !37
  %17 = load float, float* %arrayidx45, align 4, !taffo.initweight !60, !taffo.info !37
  %18 = load i32, i32* %i, align 4
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %18
  %19 = load i32, i32* %j, align 4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %19
  store float %17, float* %arrayidx47, align 4, !taffo.initweight !64, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond41, !llvm.loop !65

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %21, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond, !llvm.loop !66

for.end50:                                        ; preds = %for.cond
  %22 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !25 !taffo.funinfo !26 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !67 !taffo.equivalentChild !68 !taffo.funinfo !69 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %u1.addr = alloca float*, align 4
  %v1.addr = alloca float*, align 4
  %u2.addr = alloca float*, align 4
  %v2.addr = alloca float*, align 4
  %w.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %z.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !32, !taffo.info !70
  %j = alloca i32, align 4, !taffo.initweight !32, !taffo.info !70
  %fn = alloca float, align 4, !taffo.initweight !32, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %u1, float** %u1.addr, align 4
  store float* %v1, float** %v1.addr, align 4
  store float* %u2, float** %u2.addr, align 4
  store float* %v2, float** %v2.addr, align 4
  store float* %w, float** %w.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %z, float** %z.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !56, !taffo.info !70
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !56, !taffo.info !70
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !56, !taffo.info !10
  %2 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %2 to float, !taffo.initweight !59, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %3 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4, !taffo.initweight !59, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !60, !taffo.info !70

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %conv5 = sitofp i32 %5 to float, !taffo.initweight !59, !taffo.info !70
  %6 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div = fdiv float %conv5, %6, !taffo.initweight !59, !taffo.info !10
  %7 = load float*, float** %u1.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !59, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !60, !taffo.info !10
  %9 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add = add nsw i32 %9, 1, !taffo.initweight !59, !taffo.info !70
  %conv6 = sitofp i32 %add to float, !taffo.initweight !60, !taffo.info !70
  %10 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div7 = fdiv float %conv6, %10, !taffo.initweight !59, !taffo.info !10
  %conv8 = fpext float %div7 to double, !taffo.initweight !60, !taffo.info !10
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !9, !taffo.info !10
  %11 = load float*, float** %u2.addr, align 4
  %12 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx11 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !59, !taffo.info !10
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !60, !taffo.info !10
  %13 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add12 = add nsw i32 %13, 1, !taffo.initweight !59, !taffo.info !70
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !60, !taffo.info !70
  %14 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div14 = fdiv float %conv13, %14, !taffo.initweight !59, !taffo.info !10
  %conv15 = fpext float %div14 to double, !taffo.initweight !60, !taffo.info !10
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !9, !taffo.info !10
  %15 = load float*, float** %v1.addr, align 4
  %16 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx18 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !59, !taffo.info !10
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !60, !taffo.info !10
  %17 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add19 = add nsw i32 %17, 1, !taffo.initweight !59, !taffo.info !70
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !60, !taffo.info !70
  %18 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div21 = fdiv float %conv20, %18, !taffo.initweight !59, !taffo.info !10
  %conv22 = fpext float %div21 to double, !taffo.initweight !60, !taffo.info !10
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !9, !taffo.info !10
  %19 = load float*, float** %v2.addr, align 4
  %20 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx25 = getelementptr inbounds float, float* %19, i32 %20, !taffo.initweight !59, !taffo.info !10
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !60, !taffo.info !10
  %21 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add26 = add nsw i32 %21, 1, !taffo.initweight !59, !taffo.info !70
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !60, !taffo.info !70
  %22 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div28 = fdiv float %conv27, %22, !taffo.initweight !59, !taffo.info !10
  %conv29 = fpext float %div28 to double, !taffo.initweight !60, !taffo.info !10
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !9, !taffo.info !10
  %23 = load float*, float** %y.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx32 = getelementptr inbounds float, float* %23, i32 %24, !taffo.initweight !59, !taffo.info !10
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !60, !taffo.info !10
  %25 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add33 = add nsw i32 %25, 1, !taffo.initweight !59, !taffo.info !70
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !60, !taffo.info !70
  %26 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div35 = fdiv float %conv34, %26, !taffo.initweight !59, !taffo.info !10
  %conv36 = fpext float %div35 to double, !taffo.initweight !60, !taffo.info !10
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !9, !taffo.info !10
  %27 = load float*, float** %z.addr, align 4
  %28 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx39 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !59, !taffo.info !10
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !60, !taffo.info !10
  %29 = load float*, float** %x.addr, align 4
  %30 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx40 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !59, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !60, !taffo.info !10
  %31 = load float*, float** %w.addr, align 4
  %32 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx41 = getelementptr inbounds float, float* %31, i32 %32, !taffo.initweight !59, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !60, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %34 = load i32, i32* %n.addr, align 4
  %cmp43 = icmp slt i32 %33, %34, !taffo.initweight !59, !taffo.info !70
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !60, !taffo.info !70

for.body45:                                       ; preds = %for.cond42
  %35 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %36 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %mul = mul nsw i32 %35, %36, !taffo.initweight !59, !taffo.info !70
  %37 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %37, !taffo.initweight !60, !taffo.info !70
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !64, !taffo.info !70
  %38 = load i32, i32* %n.addr, align 4
  %conv47 = sitofp i32 %38 to float
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !9, !taffo.info !70
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %40 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %39, i32 %40, !taffo.initweight !59, !taffo.info !10
  %41 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %41, !taffo.initweight !59, !taffo.info !10
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !60, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %42 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %inc = add nsw i32 %42, 1, !taffo.initweight !59, !taffo.info !70
  store i32 %inc, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond42, !llvm.loop !72

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %inc52 = add nsw i32 %43, 1, !taffo.initweight !59, !taffo.info !70
  store i32 %inc52, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond, !llvm.loop !73

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !67 !taffo.equivalentChild !74 !taffo.funinfo !69 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [20 x float]*, align 4
  %u1.addr = alloca float*, align 4
  %v1.addr = alloca float*, align 4
  %u2.addr = alloca float*, align 4
  %v2.addr = alloca float*, align 4
  %w.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %z.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %u1, float** %u1.addr, align 4
  store float* %v1, float** %v1.addr, align 4
  store float* %u2, float** %u2.addr, align 4
  store float* %v2, float** %v2.addr, align 4
  store float* %w, float** %w.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %z, float** %z.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i32 %5
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %6
  %7 = load float, float* %arrayidx4, align 4
  %8 = load float*, float** %u1.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %8, i32 %9
  %10 = load float, float* %arrayidx5, align 4
  %11 = load float*, float** %v1.addr, align 4
  %12 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %11, i32 %12
  %13 = load float, float* %arrayidx6, align 4
  %mul = fmul float %10, %13
  %add = fadd float %7, %mul
  %14 = load float*, float** %u2.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds float, float* %14, i32 %15
  %16 = load float, float* %arrayidx7, align 4
  %17 = load float*, float** %v2.addr, align 4
  %18 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %17, i32 %18
  %19 = load float, float* %arrayidx8, align 4
  %mul9 = fmul float %16, %19
  %add10 = fadd float %add, %mul9
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %22
  store float %add10, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !75

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !76

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %29 = load float*, float** %x.addr, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %29, i32 %30
  %31 = load float, float* %arrayidx22, align 4
  %32 = load float, float* %beta.addr, align 4
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %34 = load i32, i32* %j, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %33, i32 %34
  %35 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %35
  %36 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %32, %36
  %37 = load float*, float** %y.addr, align 4
  %38 = load i32, i32* %j, align 4
  %arrayidx26 = getelementptr inbounds float, float* %37, i32 %38
  %39 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %mul25, %39
  %add28 = fadd float %31, %mul27
  %40 = load float*, float** %x.addr, align 4
  %41 = load i32, i32* %i, align 4
  %arrayidx29 = getelementptr inbounds float, float* %40, i32 %41
  store float %add28, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond19, !llvm.loop !77

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond16, !llvm.loop !78

for.end35:                                        ; preds = %for.cond16
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %46 = load float*, float** %x.addr, align 4
  %47 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds float, float* %46, i32 %47
  %48 = load float, float* %arrayidx39, align 4
  %49 = load float*, float** %z.addr, align 4
  %50 = load i32, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds float, float* %49, i32 %50
  %51 = load float, float* %arrayidx40, align 4
  %add41 = fadd float %48, %51
  %52 = load float*, float** %x.addr, align 4
  %53 = load i32, i32* %i, align 4
  %arrayidx42 = getelementptr inbounds float, float* %52, i32 %53
  store float %add41, float* %arrayidx42, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %54 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond36, !llvm.loop !79

for.end45:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %57, %58
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %59 = load float*, float** %w.addr, align 4
  %60 = load i32, i32* %i, align 4
  %arrayidx52 = getelementptr inbounds float, float* %59, i32 %60
  %61 = load float, float* %arrayidx52, align 4
  %62 = load float, float* %alpha.addr, align 4
  %63 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %64 = load i32, i32* %i, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %63, i32 %64
  %65 = load i32, i32* %j, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %65
  %66 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %62, %66
  %67 = load float*, float** %x.addr, align 4
  %68 = load i32, i32* %j, align 4
  %arrayidx56 = getelementptr inbounds float, float* %67, i32 %68
  %69 = load float, float* %arrayidx56, align 4
  %mul57 = fmul float %mul55, %69
  %add58 = fadd float %61, %mul57
  %70 = load float*, float** %w.addr, align 4
  %71 = load i32, i32* %i, align 4
  %arrayidx59 = getelementptr inbounds float, float* %70, i32 %71
  store float %add58, float* %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %72 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond49, !llvm.loop !80

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %73 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %73, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond46, !llvm.loop !81

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !20 !taffo.funinfo !22 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %w, float** %w.addr, align 4
  store float* %x, float** %x.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !82

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !83

for.end9:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %15, %16
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %17 = load i32, i32* %i, align 4
  %rem14 = srem i32 %17, 20
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %20 = load float*, float** %x.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds float, float* %20, i32 %21
  %22 = load float, float* %arrayidx20, align 4
  %conv21 = fpext float %22 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21)
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %23 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond10, !llvm.loop !84

for.end25:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %26 = load i32, i32* %i, align 4
  %rem30 = srem i32 %26, 20
  %cmp31 = icmp eq i32 %rem30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %29 = load float*, float** %w.addr, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx36 = getelementptr inbounds float, float* %29, i32 %30
  %31 = load float, float* %arrayidx36, align 4
  %conv37 = fpext float %31 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37)
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %32 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond26, !llvm.loop !85

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !15 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.sourceFunction !58 !taffo.funinfo !87 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !59, !taffo.info !33
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !60, !taffo.info !33
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.sourceFunction !58 !taffo.funinfo !88 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !59, !taffo.info !35
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !60, !taffo.info !35
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !90 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !39
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !39
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !39
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !39
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !39
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !39
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !39
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !39
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !94 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !41
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !41
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !41
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !41
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !41
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !41
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !41
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !41
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !96 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !43
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !43
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !43
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !43
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !43
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !43
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !43
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !43
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !43
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !98 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !45
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !45
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !45
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !45
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !45
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !45
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !45
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !45
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !100 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !47
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !47
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !47
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !47
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !47
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !47
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !47
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !47
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !102 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !50
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !50
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !50
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !50
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !50
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !50
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !103

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.9(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !104 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !52
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !52
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !52
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !52
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !52
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !52
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !52
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !52
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !106 !taffo.sourceFunction !63 !taffo.funinfo !107 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !60, !taffo.info !33
  %beta.addr = alloca float, align 4, !taffo.initweight !60, !taffo.info !35
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !60, !taffo.info !37
  %u1.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !39
  %v1.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !41
  %u2.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !43
  %v2.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !45
  %w.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !47
  %x.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !50
  %y.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !52
  %z.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !54
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !64, !taffo.info !33
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !64, !taffo.info !35
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  store float* %u1, float** %u1.addr, align 4, !taffo.initweight !64, !taffo.info !39
  store float* %v1, float** %v1.addr, align 4, !taffo.initweight !64, !taffo.info !41
  store float* %u2, float** %u2.addr, align 4, !taffo.initweight !64, !taffo.info !43
  store float* %v2, float** %v2.addr, align 4, !taffo.initweight !64, !taffo.info !45
  store float* %w, float** %w.addr, align 4, !taffo.initweight !64, !taffo.info !47
  store float* %x, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  store float* %y, float** %y.addr, align 4, !taffo.initweight !64, !taffo.info !52
  store float* %z, float** %z.addr, align 4, !taffo.initweight !64, !taffo.info !54
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i32 %5, !taffo.initweight !9, !taffo.info !37
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %6, !taffo.initweight !91, !taffo.info !37
  %7 = load float, float* %arrayidx4, align 4, !taffo.initweight !92, !taffo.info !37
  %8 = load float*, float** %u1.addr, align 4, !taffo.initweight !64, !taffo.info !39
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %8, i32 %9, !taffo.initweight !9, !taffo.info !39
  %10 = load float, float* %arrayidx5, align 4, !taffo.initweight !91, !taffo.info !39
  %11 = load float*, float** %v1.addr, align 4, !taffo.initweight !64, !taffo.info !41
  %12 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !9, !taffo.info !41
  %13 = load float, float* %arrayidx6, align 4, !taffo.initweight !91, !taffo.info !41
  %mul = fmul float %10, %13, !taffo.initweight !92, !taffo.info !39
  %add = fadd float %7, %mul, !taffo.initweight !108, !taffo.info !37
  %14 = load float*, float** %u2.addr, align 4, !taffo.initweight !64, !taffo.info !43
  %15 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds float, float* %14, i32 %15, !taffo.initweight !9, !taffo.info !43
  %16 = load float, float* %arrayidx7, align 4, !taffo.initweight !91, !taffo.info !43
  %17 = load float*, float** %v2.addr, align 4, !taffo.initweight !64, !taffo.info !45
  %18 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %17, i32 %18, !taffo.initweight !9, !taffo.info !45
  %19 = load float, float* %arrayidx8, align 4, !taffo.initweight !91, !taffo.info !45
  %mul9 = fmul float %16, %19, !taffo.initweight !92, !taffo.info !43
  %add10 = fadd float %add, %mul9, !taffo.initweight !108, !taffo.info !43
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  %21 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21, !taffo.initweight !9, !taffo.info !37
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %22, !taffo.initweight !91, !taffo.info !37
  store float %add10, float* %arrayidx12, align 4, !taffo.initweight !92, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !109

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !110

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %29 = load float*, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %30 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !9, !taffo.info !50
  %31 = load float, float* %arrayidx22, align 4, !taffo.initweight !91, !taffo.info !50
  %32 = load float, float* %beta.addr, align 4, !taffo.initweight !64, !taffo.info !35
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  %34 = load i32, i32* %j, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %33, i32 %34, !taffo.initweight !9, !taffo.info !37
  %35 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %35, !taffo.initweight !91, !taffo.info !37
  %36 = load float, float* %arrayidx24, align 4, !taffo.initweight !92, !taffo.info !37
  %mul25 = fmul float %32, %36, !taffo.initweight !9, !taffo.info !35
  %37 = load float*, float** %y.addr, align 4, !taffo.initweight !64, !taffo.info !52
  %38 = load i32, i32* %j, align 4
  %arrayidx26 = getelementptr inbounds float, float* %37, i32 %38, !taffo.initweight !9, !taffo.info !52
  %39 = load float, float* %arrayidx26, align 4, !taffo.initweight !91, !taffo.info !52
  %mul27 = fmul float %mul25, %39, !taffo.initweight !91, !taffo.info !35
  %add28 = fadd float %31, %mul27, !taffo.initweight !92, !taffo.info !35
  %40 = load float*, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %41 = load i32, i32* %i, align 4
  %arrayidx29 = getelementptr inbounds float, float* %40, i32 %41, !taffo.initweight !9, !taffo.info !50
  store float %add28, float* %arrayidx29, align 4, !taffo.initweight !91, !taffo.info !50
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond19, !llvm.loop !111

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond16, !llvm.loop !112

for.end35:                                        ; preds = %for.cond16
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %46 = load float*, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %47 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds float, float* %46, i32 %47, !taffo.initweight !9, !taffo.info !50
  %48 = load float, float* %arrayidx39, align 4, !taffo.initweight !91, !taffo.info !50
  %49 = load float*, float** %z.addr, align 4, !taffo.initweight !64, !taffo.info !54
  %50 = load i32, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds float, float* %49, i32 %50, !taffo.initweight !9, !taffo.info !54
  %51 = load float, float* %arrayidx40, align 4, !taffo.initweight !91, !taffo.info !54
  %add41 = fadd float %48, %51, !taffo.initweight !92, !taffo.info !50
  %52 = load float*, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %53 = load i32, i32* %i, align 4
  %arrayidx42 = getelementptr inbounds float, float* %52, i32 %53, !taffo.initweight !9, !taffo.info !50
  store float %add41, float* %arrayidx42, align 4, !taffo.initweight !91, !taffo.info !50
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %54 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond36, !llvm.loop !113

for.end45:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %57, %58
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %59 = load float*, float** %w.addr, align 4, !taffo.initweight !64, !taffo.info !47
  %60 = load i32, i32* %i, align 4
  %arrayidx52 = getelementptr inbounds float, float* %59, i32 %60, !taffo.initweight !9, !taffo.info !47
  %61 = load float, float* %arrayidx52, align 4, !taffo.initweight !91, !taffo.info !47
  %62 = load float, float* %alpha.addr, align 4, !taffo.initweight !64, !taffo.info !33
  %63 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  %64 = load i32, i32* %i, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %63, i32 %64, !taffo.initweight !9, !taffo.info !37
  %65 = load i32, i32* %j, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %65, !taffo.initweight !91, !taffo.info !37
  %66 = load float, float* %arrayidx54, align 4, !taffo.initweight !92, !taffo.info !37
  %mul55 = fmul float %62, %66, !taffo.initweight !9, !taffo.info !33
  %67 = load float*, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %68 = load i32, i32* %j, align 4
  %arrayidx56 = getelementptr inbounds float, float* %67, i32 %68, !taffo.initweight !9, !taffo.info !50
  %69 = load float, float* %arrayidx56, align 4, !taffo.initweight !91, !taffo.info !50
  %mul57 = fmul float %mul55, %69, !taffo.initweight !91, !taffo.info !33
  %add58 = fadd float %61, %mul57, !taffo.initweight !92, !taffo.info !33
  %70 = load float*, float** %w.addr, align 4, !taffo.initweight !64, !taffo.info !47
  %71 = load i32, i32* %i, align 4
  %arrayidx59 = getelementptr inbounds float, float* %70, i32 %71, !taffo.initweight !9, !taffo.info !47
  store float %add58, float* %arrayidx59, align 4, !taffo.initweight !91, !taffo.info !47
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %72 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond49, !llvm.loop !114

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %73 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %73, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond46, !llvm.loop !115

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.11(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.sourceFunction !62 !taffo.funinfo !116 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !54
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !54
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !54
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !54
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !91, !taffo.info !54
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !92, !taffo.info !54
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !64, !taffo.info !54
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !54
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !91, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !118 !taffo.sourceFunction !57 !taffo.funinfo !107 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !59, !taffo.info !33
  %beta.addr = alloca float*, align 4, !taffo.initweight !59, !taffo.info !35
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !60, !taffo.info !37
  %u1.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !39
  %v1.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !41
  %u2.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !43
  %v2.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !45
  %w.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !47
  %x.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !50
  %y.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !52
  %z.addr = alloca float*, align 4, !taffo.initweight !60, !taffo.info !54
  %i = alloca i32, align 4, !taffo.initweight !32, !taffo.info !70
  %j = alloca i32, align 4, !taffo.initweight !32, !taffo.info !70
  %fn = alloca float, align 4, !taffo.initweight !32, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !60, !taffo.info !33
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !60, !taffo.info !35
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  store float* %u1, float** %u1.addr, align 4, !taffo.initweight !64, !taffo.info !39
  store float* %v1, float** %v1.addr, align 4, !taffo.initweight !64, !taffo.info !41
  store float* %u2, float** %u2.addr, align 4, !taffo.initweight !64, !taffo.info !43
  store float* %v2, float** %v2.addr, align 4, !taffo.initweight !64, !taffo.info !45
  store float* %w, float** %w.addr, align 4, !taffo.initweight !64, !taffo.info !47
  store float* %x, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  store float* %y, float** %y.addr, align 4, !taffo.initweight !64, !taffo.info !52
  store float* %z, float** %z.addr, align 4, !taffo.initweight !64, !taffo.info !54
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !56, !taffo.info !70
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !56, !taffo.info !70
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !60, !taffo.info !33
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !64, !taffo.info !33
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !60, !taffo.info !35
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !64, !taffo.info !35
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !56, !taffo.info !10
  %2 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %2 to float, !taffo.initweight !59, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %3 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4, !taffo.initweight !59, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !60, !taffo.info !70

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %conv5 = sitofp i32 %5 to float, !taffo.initweight !59, !taffo.info !70
  %6 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div = fdiv float %conv5, %6, !taffo.initweight !59, !taffo.info !10
  %7 = load float*, float** %u1.addr, align 4, !taffo.initweight !64, !taffo.info !39
  %8 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !59, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !60, !taffo.info !10
  %9 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add = add nsw i32 %9, 1, !taffo.initweight !59, !taffo.info !70
  %conv6 = sitofp i32 %add to float, !taffo.initweight !60, !taffo.info !70
  %10 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div7 = fdiv float %conv6, %10, !taffo.initweight !59, !taffo.info !10
  %conv8 = fpext float %div7 to double, !taffo.initweight !60, !taffo.info !10
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !9, !taffo.info !10
  %11 = load float*, float** %u2.addr, align 4, !taffo.initweight !64, !taffo.info !43
  %12 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx11 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !59, !taffo.info !10
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !60, !taffo.info !10
  %13 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add12 = add nsw i32 %13, 1, !taffo.initweight !59, !taffo.info !70
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !60, !taffo.info !70
  %14 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div14 = fdiv float %conv13, %14, !taffo.initweight !59, !taffo.info !10
  %conv15 = fpext float %div14 to double, !taffo.initweight !60, !taffo.info !10
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !9, !taffo.info !10
  %15 = load float*, float** %v1.addr, align 4, !taffo.initweight !64, !taffo.info !41
  %16 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx18 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !59, !taffo.info !10
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !60, !taffo.info !10
  %17 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add19 = add nsw i32 %17, 1, !taffo.initweight !59, !taffo.info !70
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !60, !taffo.info !70
  %18 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div21 = fdiv float %conv20, %18, !taffo.initweight !59, !taffo.info !10
  %conv22 = fpext float %div21 to double, !taffo.initweight !60, !taffo.info !10
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !9, !taffo.info !10
  %19 = load float*, float** %v2.addr, align 4, !taffo.initweight !64, !taffo.info !45
  %20 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx25 = getelementptr inbounds float, float* %19, i32 %20, !taffo.initweight !59, !taffo.info !10
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !60, !taffo.info !10
  %21 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add26 = add nsw i32 %21, 1, !taffo.initweight !59, !taffo.info !70
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !60, !taffo.info !70
  %22 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div28 = fdiv float %conv27, %22, !taffo.initweight !59, !taffo.info !10
  %conv29 = fpext float %div28 to double, !taffo.initweight !60, !taffo.info !10
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !9, !taffo.info !10
  %23 = load float*, float** %y.addr, align 4, !taffo.initweight !64, !taffo.info !52
  %24 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx32 = getelementptr inbounds float, float* %23, i32 %24, !taffo.initweight !59, !taffo.info !10
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !60, !taffo.info !10
  %25 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %add33 = add nsw i32 %25, 1, !taffo.initweight !59, !taffo.info !70
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !60, !taffo.info !70
  %26 = load float, float* %fn, align 4, !taffo.initweight !56, !taffo.info !10
  %div35 = fdiv float %conv34, %26, !taffo.initweight !59, !taffo.info !10
  %conv36 = fpext float %div35 to double, !taffo.initweight !60, !taffo.info !10
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !64, !taffo.info !10
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !9, !taffo.info !10
  %27 = load float*, float** %z.addr, align 4, !taffo.initweight !64, !taffo.info !54
  %28 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx39 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !59, !taffo.info !10
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !60, !taffo.info !10
  %29 = load float*, float** %x.addr, align 4, !taffo.initweight !64, !taffo.info !50
  %30 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx40 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !59, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !60, !taffo.info !10
  %31 = load float*, float** %w.addr, align 4, !taffo.initweight !64, !taffo.info !47
  %32 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx41 = getelementptr inbounds float, float* %31, i32 %32, !taffo.initweight !59, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !60, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %34 = load i32, i32* %n.addr, align 4
  %cmp43 = icmp slt i32 %33, %34, !taffo.initweight !59, !taffo.info !70
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !60, !taffo.info !70

for.body45:                                       ; preds = %for.cond42
  %35 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %36 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %mul = mul nsw i32 %35, %36, !taffo.initweight !59, !taffo.info !70
  %37 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %37, !taffo.initweight !60, !taffo.info !70
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !64, !taffo.info !70
  %38 = load i32, i32* %n.addr, align 4
  %conv47 = sitofp i32 %38 to float
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !9, !taffo.info !70
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !64, !taffo.info !37
  %40 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %39, i32 %40, !taffo.initweight !59, !taffo.info !10
  %41 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %41, !taffo.initweight !59, !taffo.info !10
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !60, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %42 = load i32, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  %inc = add nsw i32 %42, 1, !taffo.initweight !59, !taffo.info !70
  store i32 %inc, i32* %j, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond42, !llvm.loop !119

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  %inc52 = add nsw i32 %43, 1, !taffo.initweight !59, !taffo.info !70
  store i32 %inc52, i32* %i, align 4, !taffo.initweight !56, !taffo.info !70
  br label %for.cond, !llvm.loop !120

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !121 !taffo.sourceFunction !61 !taffo.funinfo !122 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !64, !taffo.info !37
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !91, !taffo.info !37
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !92, !taffo.info !37
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !108, !taffo.info !37
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !123, !taffo.info !37
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !91, !taffo.info !37
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !92, !taffo.info !37
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !108, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !124

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !125

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!7 = !{i32 -1}
!8 = !{i32 0, i1 false}
!9 = !{i32 5}
!10 = !{i1 false, i1 false, i1 false, i2 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i32 -1, i32 -1}
!14 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!15 = !{i32 0, i1 false, i32 0, i1 false}
!16 = !{i32 -1, i32 -1, i32 -1}
!17 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.5, void (i32, float*, i32)* @scale_1d.6, void (i32, float*, i32)* @scale_1d.7, void (i32, float*, i32)* @scale_1d.8, void (i32, float*, i32)* @scale_1d.9, void (i32, float*, i32)* @scale_1d.11}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = distinct !{!19, !12}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, float*, i32)* @scale_2d.13}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = !{}
!31 = !{i1 true}
!32 = !{i32 0}
!33 = !{i1 false, !34, i1 false, i2 -1}
!34 = !{double 1.500000e+00, double 1.500000e+00}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 1.200000e+00, double 1.200000e+00}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 0x4114895560000000}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 0x408E6666601BC98A}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 1.280000e+01, double 2.560000e+02}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 2.560000e+01, double 5.120000e+02}
!45 = !{i1 false, !46, i1 false, i2 -1}
!46 = !{double 0x40211111276FB092, double 0x406555556084A516}
!47 = !{i1 false, !48, i1 false, i2 -1}
!48 = !{double 0.000000e+00, double 0x4312D0EAC0000000}
!49 = !{!"w"}
!50 = !{i1 false, !51, i1 false, i2 -1}
!51 = !{double 0.000000e+00, double 0x41B5BC5260000000}
!52 = !{i1 false, !53, i1 false, i2 -1}
!53 = !{double 6.400000e+00, double 1.280000e+02}
!54 = !{i1 false, !55, i1 false, i2 -1}
!55 = !{double 0x4016C16C1E364BEC, double 0x405C71C7219220FF}
!56 = !{i32 1}
!57 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array}
!58 = !{void (float*, i32)* @scale_scalar}
!59 = !{i32 2}
!60 = !{i32 3}
!61 = !{void (i32, i32, float*, i32)* @scale_2d}
!62 = !{void (i32, float*, i32)* @scale_1d}
!63 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver}
!64 = !{i32 4}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!68 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array.12}
!69 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!70 = !{i1 false, !71, i1 false, i2 -1}
!71 = !{double 0.000000e+00, double 2.000000e+01}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver.10}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = !{i32 1, i32 -1}
!87 = !{i32 1, !33, i32 0, i1 false}
!88 = !{i32 1, !35, i32 0, i1 false}
!89 = !{i32 -1, i32 2, i32 -1}
!90 = !{i32 0, i1 false, i32 1, !39, i32 0, i1 false}
!91 = !{i32 6}
!92 = !{i32 7}
!93 = distinct !{!93, !12}
!94 = !{i32 0, i1 false, i32 1, !41, i32 0, i1 false}
!95 = distinct !{!95, !12}
!96 = !{i32 0, i1 false, i32 1, !43, i32 0, i1 false}
!97 = distinct !{!97, !12}
!98 = !{i32 0, i1 false, i32 1, !45, i32 0, i1 false}
!99 = distinct !{!99, !12}
!100 = !{i32 0, i1 false, i32 1, !47, i32 0, i1 false}
!101 = distinct !{!101, !12}
!102 = !{i32 0, i1 false, i32 1, !50, i32 0, i1 false}
!103 = distinct !{!103, !12}
!104 = !{i32 0, i1 false, i32 1, !52, i32 0, i1 false}
!105 = distinct !{!105, !12}
!106 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!107 = !{i32 0, i1 false, i32 1, !33, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54}
!108 = !{i32 8}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = !{i32 0, i1 false, i32 1, !54, i32 0, i1 false}
!117 = distinct !{!117, !12}
!118 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = !{i32 -1, i32 -1, i32 3, i32 -1}
!122 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !37, i32 0, i1 false}
!123 = !{i32 9}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
