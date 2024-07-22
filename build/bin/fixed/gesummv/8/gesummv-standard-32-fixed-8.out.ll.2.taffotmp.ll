; ModuleID = './build/bin/fixed/gesummv/8/gesummv-standard-32-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/gesummv.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,30.0) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,4512.0) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [50 x i8] c"target('y') scalar(range(0.0,11596.800781) final)\00", section "llvm.metadata"
@y_float = dso_local global [16 x float] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %A = alloca [16 x [16 x float]], align 4, !taffo.initweight !32, !taffo.info !37
  %B = alloca [16 x [16 x float]], align 4, !taffo.initweight !32, !taffo.info !37
  %tmp = alloca [16 x float], align 4, !taffo.initweight !32, !taffo.info !39
  %x = alloca [16 x float], align 4, !taffo.initweight !32, !taffo.info !37
  %y = alloca [16 x float], align 4, !taffo.initweight !32, !taffo.info !41, !taffo.target !43
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 16, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !44, !taffo.info !33
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !44, !taffo.info !35
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.initweight !44, !taffo.info !37
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.initweight !44, !taffo.info !37
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.initweight !44, !taffo.info !39
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.initweight !44, !taffo.info !37
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.initweight !44, !taffo.info !41, !taffo.target !43
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !44, !taffo.info !39
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !44, !taffo.info !41, !taffo.target !43
  call void @init_array.7(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.initweight !44, !taffo.info !33, !taffo.originalCall !45
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 32), !taffo.initweight !44, !taffo.info !33, !taffo.originalCall !46
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 32), !taffo.initweight !44, !taffo.info !35, !taffo.originalCall !46
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %1 = bitcast [16 x float]* %arraydecay12 to float*, !taffo.initweight !47, !taffo.info !37
  call void @scale_2d.8(i32 noundef 16, i32 noundef 16, float* noundef %1, i32 noundef 32), !taffo.initweight !48, !taffo.info !37, !taffo.originalCall !49
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %2 = bitcast [16 x float]* %arraydecay13 to float*, !taffo.initweight !47, !taffo.info !37
  call void @scale_2d.9(i32 noundef 16, i32 noundef 16, float* noundef %2, i32 noundef 32), !taffo.initweight !48, !taffo.info !37, !taffo.originalCall !49
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !44, !taffo.info !39
  call void @scale_1d.3(i32 noundef 16, float* noundef %arraydecay14, i32 noundef 32), !taffo.initweight !47, !taffo.info !39, !taffo.originalCall !50
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  call void @scale_1d.4(i32 noundef 16, float* noundef %arraydecay15, i32 noundef 32), !taffo.initweight !47, !taffo.info !37, !taffo.originalCall !50
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !44, !taffo.info !41, !taffo.target !43
  call void @scale_1d.6(i32 noundef 16, float* noundef %arraydecay16, i32 noundef 32), !taffo.initweight !47, !taffo.info !41, !taffo.target !43, !taffo.originalCall !50
  call void @timer_start()
  %3 = load i32, i32* %n, align 4
  %4 = load float, float* %alpha, align 4, !taffo.initweight !44, !taffo.info !33
  %5 = load float, float* %beta, align 4, !taffo.initweight !44, !taffo.info !35
  %arraydecay17 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %arraydecay18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %arraydecay19 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !44, !taffo.info !39
  %arraydecay20 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !44, !taffo.info !37
  %arraydecay21 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !44, !taffo.info !41, !taffo.target !43
  call void @kernel_gesummv.5(i32 noundef %3, float noundef %4, float noundef %5, [16 x float]* noundef %arraydecay17, [16 x float]* noundef %arraydecay18, float* noundef %arraydecay19, float* noundef %arraydecay20, float* noundef %arraydecay21), !taffo.initweight !47, !taffo.info !33, !taffo.originalCall !51
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %8, !taffo.initweight !44, !taffo.info !41, !taffo.target !43
  %9 = load float, float* %arrayidx, align 4, !taffo.initweight !47, !taffo.info !41, !taffo.target !43
  %10 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %10
  store float %9, float* %arrayidx22, align 4, !taffo.initweight !48, !taffo.info !41, !taffo.target !43
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %12, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !25 !taffo.funinfo !26 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !53 !taffo.equivalentChild !54 !taffo.funinfo !55 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %A.addr = alloca [16 x float]*, align 4
  %B.addr = alloca [16 x float]*, align 4
  %x.addr = alloca float*, align 4
  %tmp.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !32, !taffo.info !56
  %j = alloca i32, align 4, !taffo.initweight !32, !taffo.info !56
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  store float* %y, float** %y.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !44, !taffo.info !56
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !44, !taffo.info !56
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !47, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !48, !taffo.info !56

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, %5, !taffo.initweight !47, !taffo.info !56
  %conv = sitofp i32 %rem to float, !taffo.initweight !48, !taffo.info !56
  %6 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !58, !taffo.info !56
  %7 = load float*, float** %x.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !47, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !48, !taffo.info !10
  %9 = load float*, float** %y.addr, align 4
  %10 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx4 = getelementptr inbounds float, float* %9, i32 %10, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !48, !taffo.info !10
  %11 = load float*, float** %tmp.addr, align 4
  %12 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx5 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !48, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %14 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %13, %14, !taffo.initweight !47, !taffo.info !56
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !48, !taffo.info !56

for.body9:                                        ; preds = %for.cond6
  %15 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %16 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %mul = mul nsw i32 %15, %16, !taffo.initweight !47, !taffo.info !56
  %add = add nsw i32 %mul, 1, !taffo.initweight !48, !taffo.info !56
  %17 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add, %17, !taffo.initweight !58, !taffo.info !56
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !9, !taffo.info !56
  %18 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %18 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !59, !taffo.info !56
  %19 = load [16 x float]*, [16 x float]** %A.addr, align 4
  %20 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %19, i32 %20, !taffo.initweight !47, !taffo.info !10
  %21 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !47, !taffo.info !10
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !48, !taffo.info !10
  %22 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %23 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %mul16 = mul nsw i32 %22, %23, !taffo.initweight !47, !taffo.info !56
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !48, !taffo.info !56
  %24 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %24, !taffo.initweight !58, !taffo.info !56
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !9, !taffo.info !56
  %25 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %25 to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !59, !taffo.info !56
  %26 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %27 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %26, i32 %27, !taffo.initweight !47, !taffo.info !10
  %28 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %28, !taffo.initweight !47, !taffo.info !10
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !48, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %inc = add nsw i32 %29, 1, !taffo.initweight !47, !taffo.info !56
  store i32 %inc, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond6, !llvm.loop !60

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %inc25 = add nsw i32 %30, 1, !taffo.initweight !47, !taffo.info !56
  store i32 %inc25, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond, !llvm.loop !61

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !53 !taffo.equivalentChild !62 !taffo.funinfo !55 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [16 x float]*, align 4
  %B.addr = alloca [16 x float]*, align 4
  %tmp.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %tmp.addr, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  %4 = load float*, float** %y.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %4, i32 %5
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load [16 x float]*, [16 x float]** %A.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 %9
  %10 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %10
  %11 = load float, float* %arrayidx6, align 4
  %12 = load float*, float** %x.addr, align 4
  %13 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds float, float* %12, i32 %13
  %14 = load float, float* %arrayidx7, align 4
  %mul = fmul float %11, %14
  %15 = load float*, float** %tmp.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %15, i32 %16
  %17 = load float, float* %arrayidx8, align 4
  %add = fadd float %mul, %17
  %18 = load float*, float** %tmp.addr, align 4
  %19 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %18, i32 %19
  store float %add, float* %arrayidx9, align 4
  %20 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %20, i32 %21
  %22 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %22
  %23 = load float, float* %arrayidx11, align 4
  %24 = load float*, float** %x.addr, align 4
  %25 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %24, i32 %25
  %26 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %23, %26
  %27 = load float*, float** %y.addr, align 4
  %28 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds float, float* %27, i32 %28
  %29 = load float, float* %arrayidx14, align 4
  %add15 = fadd float %mul13, %29
  %30 = load float*, float** %y.addr, align 4
  %31 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31
  store float %add15, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !63

for.end:                                          ; preds = %for.cond2
  %33 = load float, float* %alpha.addr, align 4
  %34 = load float*, float** %tmp.addr, align 4
  %35 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds float, float* %34, i32 %35
  %36 = load float, float* %arrayidx17, align 4
  %mul18 = fmul float %33, %36
  %37 = load float, float* %beta.addr, align 4
  %38 = load float*, float** %y.addr, align 4
  %39 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %38, i32 %39
  %40 = load float, float* %arrayidx19, align 4
  %mul20 = fmul float %37, %40
  %add21 = fadd float %mul18, %mul20
  %41 = load float*, float** %y.addr, align 4
  %42 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %41, i32 %42
  store float %add21, float* %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %43, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !64

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !13 !taffo.funinfo !15 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %y, float** %y.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %rem = srem i32 %2, 20
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %5 = load float*, float** %y.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !15 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !66 !taffo.sourceFunction !46 !taffo.funinfo !67 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !47, !taffo.info !33
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !48, !taffo.info !33
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !66 !taffo.sourceFunction !46 !taffo.funinfo !68 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !47, !taffo.info !35
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !48, !taffo.info !35
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !69 !taffo.sourceFunction !50 !taffo.funinfo !70 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !39
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !39
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !39
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !59, !taffo.info !39
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !39
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !39
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !59, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !69 !taffo.sourceFunction !50 !taffo.funinfo !73 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !37
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !37
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !59, !taffo.info !37
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !37
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !37
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !59, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !75 !taffo.sourceFunction !51 !taffo.funinfo !76 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !48, !taffo.info !33
  %beta.addr = alloca float, align 4, !taffo.initweight !48, !taffo.info !35
  %A.addr = alloca [16 x float]*, align 4, !taffo.initweight !48, !taffo.info !37
  %B.addr = alloca [16 x float]*, align 4, !taffo.initweight !48, !taffo.info !37
  %tmp.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !39
  %x.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !37
  %y.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !41
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !58, !taffo.info !33
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !58, !taffo.info !35
  store [16 x float]* %A, [16 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store [16 x float]* %B, [16 x float]** %B.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  store float* %x, float** %x.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store float* %y, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3, !taffo.initweight !9, !taffo.info !39
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  %4 = load float*, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %5 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !9, !taffo.info !41
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load [16 x float]*, [16 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 %9, !taffo.initweight !9, !taffo.info !37
  %10 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %10, !taffo.initweight !59, !taffo.info !37
  %11 = load float, float* %arrayidx6, align 4, !taffo.initweight !71, !taffo.info !37
  %12 = load float*, float** %x.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %13 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds float, float* %12, i32 %13, !taffo.initweight !9, !taffo.info !37
  %14 = load float, float* %arrayidx7, align 4, !taffo.initweight !59, !taffo.info !37
  %mul = fmul float %11, %14, !taffo.initweight !71, !taffo.info !37
  %15 = load float*, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %16 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !9, !taffo.info !39
  %17 = load float, float* %arrayidx8, align 4, !taffo.initweight !59, !taffo.info !39
  %add = fadd float %mul, %17, !taffo.initweight !71, !taffo.info !39
  %18 = load float*, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %19 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %18, i32 %19, !taffo.initweight !9, !taffo.info !39
  store float %add, float* %arrayidx9, align 4, !taffo.initweight !59, !taffo.info !39
  %20 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %21 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %20, i32 %21, !taffo.initweight !9, !taffo.info !37
  %22 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %22, !taffo.initweight !59, !taffo.info !37
  %23 = load float, float* %arrayidx11, align 4, !taffo.initweight !71, !taffo.info !37
  %24 = load float*, float** %x.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %25 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %24, i32 %25, !taffo.initweight !9, !taffo.info !37
  %26 = load float, float* %arrayidx12, align 4, !taffo.initweight !59, !taffo.info !37
  %mul13 = fmul float %23, %26, !taffo.initweight !71, !taffo.info !37
  %27 = load float*, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %28 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !9, !taffo.info !41
  %29 = load float, float* %arrayidx14, align 4, !taffo.initweight !59, !taffo.info !41
  %add15 = fadd float %mul13, %29, !taffo.initweight !71, !taffo.info !41
  %30 = load float*, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %31 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31, !taffo.initweight !9, !taffo.info !41
  store float %add15, float* %arrayidx16, align 4, !taffo.initweight !59, !taffo.info !41
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !77

for.end:                                          ; preds = %for.cond2
  %33 = load float, float* %alpha.addr, align 4, !taffo.initweight !58, !taffo.info !33
  %34 = load float*, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %35 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds float, float* %34, i32 %35, !taffo.initweight !9, !taffo.info !39
  %36 = load float, float* %arrayidx17, align 4, !taffo.initweight !59, !taffo.info !39
  %mul18 = fmul float %33, %36, !taffo.initweight !9, !taffo.info !33
  %37 = load float, float* %beta.addr, align 4, !taffo.initweight !58, !taffo.info !35
  %38 = load float*, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %39 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %38, i32 %39, !taffo.initweight !9, !taffo.info !41
  %40 = load float, float* %arrayidx19, align 4, !taffo.initweight !59, !taffo.info !41
  %mul20 = fmul float %37, %40, !taffo.initweight !9, !taffo.info !35
  %add21 = fadd float %mul18, %mul20, !taffo.initweight !59, !taffo.info !33
  %41 = load float*, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %42 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %41, i32 %42, !taffo.initweight !9, !taffo.info !41
  store float %add21, float* %arrayidx22, align 4, !taffo.initweight !59, !taffo.info !41
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %43, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !78

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !69 !taffo.sourceFunction !50 !taffo.funinfo !79 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !41
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !41
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !41
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !59, !taffo.info !41
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !41
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !41
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !59, !taffo.info !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !81 !taffo.sourceFunction !45 !taffo.funinfo !82 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !47, !taffo.info !33
  %beta.addr = alloca float*, align 4, !taffo.initweight !47, !taffo.info !35
  %A.addr = alloca [16 x float]*, align 4, !taffo.initweight !48, !taffo.info !37
  %B.addr = alloca [16 x float]*, align 4, !taffo.initweight !48, !taffo.info !37
  %x.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !37
  %tmp.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !39
  %y.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !41
  %i = alloca i32, align 4, !taffo.initweight !32, !taffo.info !56
  %j = alloca i32, align 4, !taffo.initweight !32, !taffo.info !56
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !48, !taffo.info !33
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !48, !taffo.info !35
  store [16 x float]* %A, [16 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store [16 x float]* %B, [16 x float]** %B.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store float* %x, float** %x.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  store float* %y, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !44, !taffo.info !56
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !44, !taffo.info !56
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !48, !taffo.info !33
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !58, !taffo.info !33
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !48, !taffo.info !35
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !58, !taffo.info !35
  store i32 0, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !47, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !48, !taffo.info !56

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, %5, !taffo.initweight !47, !taffo.info !56
  %conv = sitofp i32 %rem to float, !taffo.initweight !48, !taffo.info !56
  %6 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !58, !taffo.info !56
  %7 = load float*, float** %x.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %8 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !47, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !48, !taffo.info !10
  %9 = load float*, float** %y.addr, align 4, !taffo.initweight !58, !taffo.info !41
  %10 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx4 = getelementptr inbounds float, float* %9, i32 %10, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !48, !taffo.info !10
  %11 = load float*, float** %tmp.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %12 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx5 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !48, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %14 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %13, %14, !taffo.initweight !47, !taffo.info !56
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !48, !taffo.info !56

for.body9:                                        ; preds = %for.cond6
  %15 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %16 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %mul = mul nsw i32 %15, %16, !taffo.initweight !47, !taffo.info !56
  %add = add nsw i32 %mul, 1, !taffo.initweight !48, !taffo.info !56
  %17 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add, %17, !taffo.initweight !58, !taffo.info !56
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !9, !taffo.info !56
  %18 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %18 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !59, !taffo.info !56
  %19 = load [16 x float]*, [16 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %20 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %19, i32 %20, !taffo.initweight !47, !taffo.info !10
  %21 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !47, !taffo.info !10
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !48, !taffo.info !10
  %22 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %23 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %mul16 = mul nsw i32 %22, %23, !taffo.initweight !47, !taffo.info !56
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !48, !taffo.info !56
  %24 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %24, !taffo.initweight !58, !taffo.info !56
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !9, !taffo.info !56
  %25 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %25 to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !59, !taffo.info !56
  %26 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %27 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %26, i32 %27, !taffo.initweight !47, !taffo.info !10
  %28 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %28, !taffo.initweight !47, !taffo.info !10
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !48, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  %inc = add nsw i32 %29, 1, !taffo.initweight !47, !taffo.info !56
  store i32 %inc, i32* %j, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond6, !llvm.loop !83

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  %inc25 = add nsw i32 %30, 1, !taffo.initweight !47, !taffo.info !56
  store i32 %inc25, i32* %i, align 4, !taffo.initweight !44, !taffo.info !56
  br label %for.cond, !llvm.loop !84

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !85 !taffo.sourceFunction !49 !taffo.funinfo !86 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !58, !taffo.info !37
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
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !59, !taffo.info !37
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !71, !taffo.info !37
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !87, !taffo.info !37
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !88, !taffo.info !37
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !59, !taffo.info !37
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !71, !taffo.info !37
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !87, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !89

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !90

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !85 !taffo.sourceFunction !49 !taffo.funinfo !86 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !58, !taffo.info !37
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
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !59, !taffo.info !37
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !71, !taffo.info !37
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !87, !taffo.info !37
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !88, !taffo.info !37
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !59, !taffo.info !37
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !71, !taffo.info !37
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !87, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !91

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !92

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
!17 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.6}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = distinct !{!19, !12}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.9}
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
!38 = !{double 0.000000e+00, double 3.000000e+01}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 4.512000e+03}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 0x40C6A6667FFDE721}
!43 = !{!"y"}
!44 = !{i32 1}
!45 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array}
!46 = !{void (float*, i32)* @scale_scalar}
!47 = !{i32 2}
!48 = !{i32 3}
!49 = !{void (i32, i32, float*, i32)* @scale_2d}
!50 = !{void (i32, float*, i32)* @scale_1d}
!51 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv}
!52 = distinct !{!52, !12}
!53 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!54 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array.7}
!55 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!56 = !{i1 false, !57, i1 false, i2 1}
!57 = !{double 0.000000e+00, double 1.600000e+01}
!58 = !{i32 4}
!59 = !{i32 6}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv.5}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = !{i32 1, i32 -1}
!67 = !{i32 1, !33, i32 0, i1 false}
!68 = !{i32 1, !35, i32 0, i1 false}
!69 = !{i32 -1, i32 2, i32 -1}
!70 = !{i32 0, i1 false, i32 1, !39, i32 0, i1 false}
!71 = !{i32 7}
!72 = distinct !{!72, !12}
!73 = !{i32 0, i1 false, i32 1, !37, i32 0, i1 false}
!74 = distinct !{!74, !12}
!75 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!76 = !{i32 0, i1 false, i32 1, !33, i32 1, !35, i32 1, !37, i32 1, !37, i32 1, !39, i32 1, !37, i32 1, !41}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = !{i32 0, i1 false, i32 1, !41, i32 0, i1 false}
!80 = distinct !{!80, !12}
!81 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!82 = !{i32 0, i1 false, i32 1, !33, i32 1, !35, i32 1, !37, i32 1, !37, i32 1, !37, i32 1, !39, i32 1, !41}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = !{i32 -1, i32 -1, i32 3, i32 -1}
!86 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !37, i32 0, i1 false}
!87 = !{i32 8}
!88 = !{i32 9}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
