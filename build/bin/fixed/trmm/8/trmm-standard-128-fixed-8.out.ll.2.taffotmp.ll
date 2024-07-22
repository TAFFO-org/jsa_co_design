; ModuleID = './build/bin/fixed/trmm/8/trmm-standard-128-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/trmm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,128.0) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [45 x i8] c"target('B') scalar(range(0.0,85320.0) final)\00", section "llvm.metadata"
@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !16 !taffo.funinfo !17 {
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
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !19 !taffo.equivalentChild !20 !taffo.funinfo !21 {
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
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
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
  br label %for.cond4, !llvm.loop !26

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !27

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !29 !taffo.funinfo !29 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !29 !taffo.funinfo !29 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !30 !taffo.initweight !13 !taffo.funinfo !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !31, !taffo.info !32
  %A = alloca [10 x [10 x float]], align 4, !taffo.initweight !31, !taffo.info !34
  %B = alloca [10 x [16 x float]], align 4, !taffo.initweight !31, !taffo.info !36, !taffo.target !38
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 10, i32* %m, align 4
  store i32 16, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !39, !taffo.info !32
  %A2 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.initweight !39, !taffo.info !34
  %B3 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.initweight !39, !taffo.info !36, !taffo.target !38
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !39, !taffo.info !34
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !39, !taffo.info !36, !taffo.target !38
  call void @init_array.3(i32 noundef %0, i32 noundef %1, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4), !taffo.initweight !39, !taffo.info !32, !taffo.originalCall !40
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 128), !taffo.initweight !39, !taffo.info !32, !taffo.originalCall !41
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !39, !taffo.info !34
  %2 = bitcast [10 x float]* %arraydecay5 to float*, !taffo.initweight !42, !taffo.info !34
  call void @scale_2d.4(i32 noundef 10, i32 noundef 10, float* noundef %2, i32 noundef 128), !taffo.initweight !43, !taffo.info !34, !taffo.originalCall !44
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !39, !taffo.info !36, !taffo.target !38
  %3 = bitcast [16 x float]* %arraydecay6 to float*, !taffo.initweight !42, !taffo.info !36, !taffo.target !38
  call void @scale_2d.5(i32 noundef 10, i32 noundef 16, float* noundef %3, i32 noundef 128), !taffo.initweight !43, !taffo.info !36, !taffo.target !38, !taffo.originalCall !44
  call void @timer_start()
  %4 = load i32, i32* %m, align 4
  %5 = load i32, i32* %n, align 4
  %6 = load float, float* %alpha, align 4, !taffo.initweight !39, !taffo.info !32
  %arraydecay7 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !39, !taffo.info !34
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !39, !taffo.info !36, !taffo.target !38
  call void @kernel_trmm.2(i32 noundef %4, i32 noundef %5, float noundef %6, [10 x float]* noundef %arraydecay7, [16 x float]* noundef %arraydecay8), !taffo.initweight !42, !taffo.info !32, !taffo.originalCall !45
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %11 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 %11, !taffo.initweight !39, !taffo.info !36, !taffo.target !38
  %12 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !42, !taffo.info !36, !taffo.target !38
  %13 = load float, float* %arrayidx12, align 4, !taffo.initweight !43, !taffo.info !36, !taffo.target !38
  %14 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %14
  %15 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %15
  store float %13, float* %arrayidx14, align 4, !taffo.initweight !46, !taffo.info !36, !taffo.target !38
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond9, !llvm.loop !47

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

for.end17:                                        ; preds = %for.cond
  %18 = load i32, i32* %m, align 4
  %19 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %18, i32 noundef %19, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !24 !taffo.funinfo !25 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !24 !taffo.equivalentChild !49 !taffo.funinfo !25 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [16 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !50
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !52
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !39, !taffo.info !50
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !39, !taffo.info !52
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %2 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !42, !taffo.info !50
  br i1 %cmp, label %for.body, label %for.end29, !taffo.initweight !43, !taffo.info !50

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %4 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %3, %4, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !43, !taffo.info !52

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %6 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %cmp6 = icmp slt i32 %5, %6, !taffo.initweight !42, !taffo.info !50
  br i1 %cmp6, label %if.then, label %if.else, !taffo.initweight !43, !taffo.info !50

if.then:                                          ; preds = %for.body5
  %7 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %8 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %add = add nsw i32 %7, %8, !taffo.initweight !42, !taffo.info !50
  %9 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %add, %9, !taffo.initweight !43, !taffo.info !50
  %conv = sitofp i32 %rem to float, !taffo.initweight !46, !taffo.info !50
  %10 = load i32, i32* %m.addr, align 4
  %conv7 = sitofp i32 %10 to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !9, !taffo.info !50
  %11 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %12 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %11, i32 %12, !taffo.initweight !42, !taffo.info !10
  %13 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %13, !taffo.initweight !42, !taffo.info !10
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !43, !taffo.info !10
  br label %if.end

if.else:                                          ; preds = %for.body5
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15, !taffo.initweight !42, !taffo.info !10
  %16 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %16, !taffo.initweight !42, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.initweight !43, !taffo.info !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %inc = add nsw i32 %17, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond3, !llvm.loop !54

for.end:                                          ; preds = %for.cond3
  %18 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %19 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %18, i32 %19, !taffo.initweight !42, !taffo.info !10
  %20 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %20, !taffo.initweight !42, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.initweight !43, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %21 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %22 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp slt i32 %21, %22, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.initweight !43, !taffo.info !52

for.body16:                                       ; preds = %for.cond13
  %23 = load i32, i32* %n.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %25 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %sub = sub nsw i32 %24, %25, !taffo.initweight !42, !taffo.info !50
  %add17 = add nsw i32 %23, %sub, !taffo.initweight !43, !taffo.info !50
  %26 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %26, !taffo.initweight !46, !taffo.info !50
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !9, !taffo.info !50
  %27 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %27 to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !55, !taffo.info !50
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %29 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %28, i32 %29, !taffo.initweight !42, !taffo.info !10
  %30 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %30, !taffo.initweight !42, !taffo.info !10
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !43, !taffo.info !10
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %31 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %inc25 = add nsw i32 %31, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc25, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond13, !llvm.loop !56

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %32 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %inc28 = add nsw i32 %32, 1, !taffo.initweight !42, !taffo.info !50
  store i32 %inc28, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  br label %for.cond, !llvm.loop !57

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !24 !taffo.equivalentChild !58 !taffo.funinfo !25 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [16 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %8 = load i32, i32* %k, align 4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %7, i32 %8
  %9 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %9
  %10 = load float, float* %arrayidx7, align 4
  %11 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %12 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 %12
  %13 = load i32, i32* %j, align 4
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %13
  %14 = load float, float* %arrayidx9, align 4
  %mul = fmul float %10, %14
  %15 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %15, i32 %16
  %17 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %17
  %18 = load float, float* %arrayidx11, align 4
  %add12 = fadd float %18, %mul
  store float %add12, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !59

for.end:                                          ; preds = %for.cond4
  %20 = load float, float* %alpha.addr, align 4
  %21 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %22 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %21, i32 %22
  %23 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %23
  %24 = load float, float* %arrayidx14, align 4
  %mul15 = fmul float %20, %24
  %25 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %26 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %25, i32 %26
  %27 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %27
  store float %mul15, float* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond1, !llvm.loop !60

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %29 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond, !llvm.loop !61

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !16 !taffo.funinfo !17 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %B.addr = alloca [16 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
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
  %5 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !62

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !63

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !15 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !64 !taffo.sourceFunction !41 !taffo.funinfo !65 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !42, !taffo.info !32
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !43, !taffo.info !32
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !66 !taffo.sourceFunction !45 !taffo.funinfo !67 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !43, !taffo.info !32
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !43, !taffo.info !34
  %B.addr = alloca [16 x float]*, align 4, !taffo.initweight !43, !taffo.info !36
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !46, !taffo.info !32
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !34
  store [16 x float]* %B, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !34
  %8 = load i32, i32* %k, align 4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %7, i32 %8, !taffo.initweight !9, !taffo.info !34
  %9 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !55, !taffo.info !34
  %10 = load float, float* %arrayidx7, align 4, !taffo.initweight !68, !taffo.info !34
  %11 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  %12 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 %12, !taffo.initweight !9, !taffo.info !36
  %13 = load i32, i32* %j, align 4
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %13, !taffo.initweight !55, !taffo.info !36
  %14 = load float, float* %arrayidx9, align 4, !taffo.initweight !68, !taffo.info !36
  %mul = fmul float %10, %14, !taffo.initweight !69, !taffo.info !34
  %15 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  %16 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %15, i32 %16, !taffo.initweight !9, !taffo.info !36
  %17 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %17, !taffo.initweight !55, !taffo.info !36
  %18 = load float, float* %arrayidx11, align 4, !taffo.initweight !68, !taffo.info !36
  %add12 = fadd float %18, %mul, !taffo.initweight !69, !taffo.info !36
  store float %add12, float* %arrayidx11, align 4, !taffo.initweight !68, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !70

for.end:                                          ; preds = %for.cond4
  %20 = load float, float* %alpha.addr, align 4, !taffo.initweight !46, !taffo.info !32
  %21 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  %22 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %21, i32 %22, !taffo.initweight !9, !taffo.info !36
  %23 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %23, !taffo.initweight !55, !taffo.info !36
  %24 = load float, float* %arrayidx14, align 4, !taffo.initweight !68, !taffo.info !36
  %mul15 = fmul float %20, %24, !taffo.initweight !9, !taffo.info !32
  %25 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  %26 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %25, i32 %26, !taffo.initweight !9, !taffo.info !36
  %27 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %27, !taffo.initweight !55, !taffo.info !36
  store float %mul15, float* %arrayidx17, align 4, !taffo.initweight !55, !taffo.info !32
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond1, !llvm.loop !71

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %29 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond, !llvm.loop !72

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !73 !taffo.sourceFunction !40 !taffo.funinfo !67 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !42, !taffo.info !32
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !43, !taffo.info !34
  %B.addr = alloca [16 x float]*, align 4, !taffo.initweight !43, !taffo.info !36
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !50
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !52
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !43, !taffo.info !32
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !34
  store [16 x float]* %B, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !39, !taffo.info !50
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !39, !taffo.info !52
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !43, !taffo.info !32
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !46, !taffo.info !32
  store i32 0, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %2 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !42, !taffo.info !50
  br i1 %cmp, label %for.body, label %for.end29, !taffo.initweight !43, !taffo.info !50

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %4 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %3, %4, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !43, !taffo.info !52

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %6 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %cmp6 = icmp slt i32 %5, %6, !taffo.initweight !42, !taffo.info !50
  br i1 %cmp6, label %if.then, label %if.else, !taffo.initweight !43, !taffo.info !50

if.then:                                          ; preds = %for.body5
  %7 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %8 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %add = add nsw i32 %7, %8, !taffo.initweight !42, !taffo.info !50
  %9 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %add, %9, !taffo.initweight !43, !taffo.info !50
  %conv = sitofp i32 %rem to float, !taffo.initweight !46, !taffo.info !50
  %10 = load i32, i32* %m.addr, align 4
  %conv7 = sitofp i32 %10 to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !9, !taffo.info !50
  %11 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !34
  %12 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %11, i32 %12, !taffo.initweight !42, !taffo.info !10
  %13 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %13, !taffo.initweight !42, !taffo.info !10
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !43, !taffo.info !10
  br label %if.end

if.else:                                          ; preds = %for.body5
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !34
  %15 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15, !taffo.initweight !42, !taffo.info !10
  %16 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %16, !taffo.initweight !42, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.initweight !43, !taffo.info !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %inc = add nsw i32 %17, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond3, !llvm.loop !74

for.end:                                          ; preds = %for.cond3
  %18 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !34
  %19 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %18, i32 %19, !taffo.initweight !42, !taffo.info !10
  %20 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %20, !taffo.initweight !42, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.initweight !43, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %21 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %22 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp slt i32 %21, %22, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.initweight !43, !taffo.info !52

for.body16:                                       ; preds = %for.cond13
  %23 = load i32, i32* %n.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %25 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %sub = sub nsw i32 %24, %25, !taffo.initweight !42, !taffo.info !50
  %add17 = add nsw i32 %23, %sub, !taffo.initweight !43, !taffo.info !50
  %26 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %26, !taffo.initweight !46, !taffo.info !50
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !9, !taffo.info !50
  %27 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %27 to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !55, !taffo.info !50
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !46, !taffo.info !36
  %29 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %28, i32 %29, !taffo.initweight !42, !taffo.info !10
  %30 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %30, !taffo.initweight !42, !taffo.info !10
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !43, !taffo.info !10
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %31 = load i32, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  %inc25 = add nsw i32 %31, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc25, i32* %j, align 4, !taffo.initweight !39, !taffo.info !52
  br label %for.cond13, !llvm.loop !75

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %32 = load i32, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  %inc28 = add nsw i32 %32, 1, !taffo.initweight !42, !taffo.info !50
  store i32 %inc28, i32* %i, align 4, !taffo.initweight !39, !taffo.info !50
  br label %for.cond, !llvm.loop !76

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !77 !taffo.sourceFunction !44 !taffo.funinfo !78 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !34
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !34
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !34
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !55, !taffo.info !34
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !68, !taffo.info !34
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !69, !taffo.info !34
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !79, !taffo.info !34
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !34
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !55, !taffo.info !34
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !68, !taffo.info !34
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !69, !taffo.info !34
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !80

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !81

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !77 !taffo.sourceFunction !44 !taffo.funinfo !82 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !36
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !36
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !36
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !55, !taffo.info !36
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !68, !taffo.info !36
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !69, !taffo.info !36
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !79, !taffo.info !36
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !36
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !55, !taffo.info !36
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !68, !taffo.info !36
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !69, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !83

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !84

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
!14 = !{void (float*, i32)* @scale_scalar.1}
!15 = !{i32 0, i1 false, i32 0, i1 false}
!16 = !{i32 -1, i32 -1, i32 -1}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = distinct !{!18, !12}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{}
!30 = !{i1 true}
!31 = !{i32 0}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 1.500000e+00, double 1.500000e+00}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double 0.000000e+00, double 1.280000e+02}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 0.000000e+00, double 8.532000e+04}
!38 = !{!"B"}
!39 = !{i32 1}
!40 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array}
!41 = !{void (float*, i32)* @scale_scalar}
!42 = !{i32 2}
!43 = !{i32 3}
!44 = !{void (i32, i32, float*, i32)* @scale_2d}
!45 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm}
!46 = !{i32 4}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array.3}
!50 = !{i1 false, !51, i1 false, i2 1}
!51 = !{double 0.000000e+00, double 1.000000e+01}
!52 = !{i1 false, !53, i1 false, i2 1}
!53 = !{double 0.000000e+00, double 1.600000e+01}
!54 = distinct !{!54, !12}
!55 = !{i32 6}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm.2}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = !{i32 1, i32 -1}
!65 = !{i32 1, !32, i32 0, i1 false}
!66 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!67 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 1, !34, i32 1, !36}
!68 = !{i32 7}
!69 = !{i32 8}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = !{i32 -1, i32 -1, i32 3, i32 -1}
!78 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !34, i32 0, i1 false}
!79 = !{i32 9}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !36, i32 0, i1 false}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
