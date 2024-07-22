; ModuleID = './build/bin/fixed/syr2k/16/syr2k-standard-32-fixed-16.out.ll.1.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [18 x i8] c"./sources/syr2k.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [49 x i8] c"target('C') scalar(range(0.0,7960.319336) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,30.0) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,28.799999) final)\00", section "llvm.metadata"
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  store float 0.000000e+00, float* %constZeroVal, align 4
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
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !11 !taffo.equivalentChild !12 !taffo.funinfo !13 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !14 !taffo.funinfo !15 {
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
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !17 !taffo.equivalentChild !18 !taffo.funinfo !19 {
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
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !22 !taffo.funinfo !23 {
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
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !27 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !27 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !28 !taffo.initweight !11 !taffo.funinfo !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !29, !taffo.info !30
  %beta = alloca float, align 4, !taffo.initweight !29, !taffo.info !32
  %C = alloca [16 x [16 x float]], align 4, !taffo.initweight !29, !taffo.info !34, !taffo.target !36
  %A = alloca [16 x [10 x float]], align 4, !taffo.initweight !29, !taffo.info !37
  %B = alloca [16 x [10 x float]], align 4, !taffo.initweight !29, !taffo.info !39
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 16, i32* %n, align 4
  store i32 10, i32* %m, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !41, !taffo.info !30
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !41, !taffo.info !32
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.initweight !41, !taffo.info !34, !taffo.target !36
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.initweight !41, !taffo.info !37
  %B5 = bitcast [16 x [10 x float]]* %B to i8*, !taffo.initweight !41, !taffo.info !39
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %m, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !41, !taffo.info !34, !taffo.target !36
  %arraydecay6 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @init_array.4(i32 noundef %0, i32 noundef %1, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.initweight !41, !taffo.info !30, !taffo.originalCall !42
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 32), !taffo.initweight !41, !taffo.info !30, !taffo.originalCall !43
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 32), !taffo.initweight !41, !taffo.info !32, !taffo.originalCall !43
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !41, !taffo.info !34, !taffo.target !36
  %2 = bitcast [16 x float]* %arraydecay8 to float*, !taffo.initweight !44, !taffo.info !34, !taffo.target !36
  call void @scale_2d.5(i32 noundef 16, i32 noundef 16, float* noundef %2, i32 noundef 32), !taffo.initweight !45, !taffo.info !34, !taffo.target !36, !taffo.originalCall !46
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %3 = bitcast [10 x float]* %arraydecay9 to float*, !taffo.initweight !44, !taffo.info !37
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %3, i32 noundef 32), !taffo.initweight !45, !taffo.info !37, !taffo.originalCall !46
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  %4 = bitcast [10 x float]* %arraydecay10 to float*, !taffo.initweight !44, !taffo.info !39
  call void @scale_2d.7(i32 noundef 16, i32 noundef 10, float* noundef %4, i32 noundef 32), !taffo.initweight !45, !taffo.info !39, !taffo.originalCall !46
  call void @timer_start()
  %5 = load i32, i32* %n, align 4
  %6 = load i32, i32* %m, align 4
  %7 = load float, float* %alpha, align 4, !taffo.initweight !41, !taffo.info !30
  %8 = load float, float* %beta, align 4, !taffo.initweight !41, !taffo.info !32
  %arraydecay11 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !41, !taffo.info !34, !taffo.target !36
  %arraydecay12 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %arraydecay13 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @kernel_syr2k.3(i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, [16 x float]* noundef %arraydecay11, [10 x float]* noundef %arraydecay12, [10 x float]* noundef %arraydecay13), !taffo.initweight !44, !taffo.info !30, !taffo.originalCall !47
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %11, %12
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %13 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %13, !taffo.initweight !41, !taffo.info !34, !taffo.target !36
  %14 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %14, !taffo.initweight !44, !taffo.info !34, !taffo.target !36
  %15 = load float, float* %arrayidx17, align 4, !taffo.initweight !45, !taffo.info !34, !taffo.target !36
  %16 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %16
  %17 = load i32, i32* %j, align 4
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %17
  store float %15, float* %arrayidx19, align 4, !taffo.initweight !48, !taffo.info !34, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond14, !llvm.loop !49

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !50

for.end22:                                        ; preds = %for.cond
  %20 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %20, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !22 !taffo.funinfo !23 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !51 !taffo.equivalentChild !52 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %C.addr = alloca [16 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !29, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !29, !taffo.info !56
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [10 x float]* %B, [10 x float]** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !41, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !41, !taffo.info !56
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end18, !taffo.initweight !45, !taffo.info !54

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %5 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !44, !taffo.info !56
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !45, !taffo.info !56

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %7 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %mul = mul nsw i32 %6, %7, !taffo.initweight !44, !taffo.info !54
  %add = add nsw i32 %mul, 1, !taffo.initweight !45, !taffo.info !54
  %8 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !48, !taffo.info !54
  %conv = sitofp i32 %rem to float, !taffo.initweight !58, !taffo.info !54
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !59, !taffo.info !54
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i32 %11, !taffo.initweight !44, !taffo.info !60
  %12 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !44, !taffo.info !60
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !45, !taffo.info !60
  %13 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %14 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %mul8 = mul nsw i32 %13, %14, !taffo.initweight !44, !taffo.info !54
  %add9 = add nsw i32 %mul8, 2, !taffo.initweight !45, !taffo.info !54
  %15 = load i32, i32* %m.addr, align 4
  %rem10 = srem i32 %add9, %15, !taffo.initweight !48, !taffo.info !54
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !58, !taffo.info !54
  %16 = load i32, i32* %m.addr, align 4
  %conv12 = sitofp i32 %16 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !59, !taffo.info !54
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %18 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %17, i32 %18, !taffo.initweight !44, !taffo.info !60
  %19 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %19, !taffo.initweight !44, !taffo.info !60
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !45, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %inc = add nsw i32 %20, 1, !taffo.initweight !44, !taffo.info !56
  store i32 %inc, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond3, !llvm.loop !61

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %inc17 = add nsw i32 %21, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc17, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond, !llvm.loop !62

for.end18:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %22 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %23 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %22, %23, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.initweight !45, !taffo.info !54

for.body22:                                       ; preds = %for.cond19
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %24 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %25 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %24, %25, !taffo.initweight !44, !taffo.info !56
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.initweight !45, !taffo.info !56

for.body26:                                       ; preds = %for.cond23
  %26 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %27 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %mul27 = mul nsw i32 %26, %27, !taffo.initweight !44, !taffo.info !54
  %add28 = add nsw i32 %mul27, 3, !taffo.initweight !45, !taffo.info !54
  %28 = load i32, i32* %n.addr, align 4
  %rem29 = srem i32 %add28, %28, !taffo.initweight !48, !taffo.info !54
  %conv30 = sitofp i32 %rem29 to float, !taffo.initweight !58, !taffo.info !54
  %29 = load i32, i32* %m.addr, align 4
  %conv31 = sitofp i32 %29 to float
  %div32 = fdiv float %conv30, %conv31, !taffo.initweight !59, !taffo.info !54
  %30 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %31 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %30, i32 %31, !taffo.initweight !44, !taffo.info !60
  %32 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %32, !taffo.initweight !44, !taffo.info !60
  store float %div32, float* %arrayidx34, align 4, !taffo.initweight !45, !taffo.info !60
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %33 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %inc36 = add nsw i32 %33, 1, !taffo.initweight !44, !taffo.info !56
  store i32 %inc36, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond23, !llvm.loop !63

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %34 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %inc39 = add nsw i32 %34, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc39, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond19, !llvm.loop !64

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !51 !taffo.equivalentChild !65 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [10 x float]* %B, [10 x float]** %B.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i32 %6
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %7
  %8 = load float, float* %arrayidx4, align 4
  %mul = fmul float %8, %4
  store float %mul, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !66

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %15 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15
  %16 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %16
  %17 = load float, float* %arrayidx12, align 4
  %18 = load float, float* %alpha.addr, align 4
  %mul13 = fmul float %17, %18
  %19 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %20 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %19, i32 %20
  %21 = load i32, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %21
  %22 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %22
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %24 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24
  %25 = load i32, i32* %k, align 4
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %25
  %26 = load float, float* %arrayidx18, align 4
  %27 = load float, float* %alpha.addr, align 4
  %mul19 = fmul float %26, %27
  %28 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %28, i32 %29
  %30 = load i32, i32* %k, align 4
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %30
  %31 = load float, float* %arrayidx21, align 4
  %mul22 = fmul float %mul19, %31
  %add = fadd float %mul16, %mul22
  %32 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %32, i32 %33
  %34 = load i32, i32* %j, align 4
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %34
  %35 = load float, float* %arrayidx24, align 4
  %add25 = fadd float %35, %add
  store float %add25, float* %arrayidx24, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %36 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond8, !llvm.loop !67

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %37 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond5, !llvm.loop !68

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %38 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond, !llvm.loop !69

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !11 !taffo.funinfo !13 {
entry:
  %n.addr = alloca i32, align 4
  %C.addr = alloca [16 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !70

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !71

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !11 !taffo.funinfo !13 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !72 !taffo.sourceFunction !43 !taffo.funinfo !73 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !30
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !45, !taffo.info !30
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !72 !taffo.sourceFunction !43 !taffo.funinfo !74 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !32
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !45, !taffo.info !32
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.3(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !75 !taffo.sourceFunction !47 !taffo.funinfo !76 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !45, !taffo.info !30
  %beta.addr = alloca float, align 4, !taffo.initweight !45, !taffo.info !32
  %C.addr = alloca [16 x float]*, align 4, !taffo.initweight !45, !taffo.info !34
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !45, !taffo.info !37
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !45, !taffo.info !39
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !48, !taffo.info !30
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !48, !taffo.info !32
  store [16 x float]* %C, [16 x float]** %C.addr, align 4, !taffo.initweight !48, !taffo.info !34
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !48, !taffo.info !37
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !48, !taffo.info !39
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4, !taffo.initweight !48, !taffo.info !32
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 4, !taffo.initweight !48, !taffo.info !34
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i32 %6, !taffo.initweight !58, !taffo.info !34
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %7, !taffo.initweight !59, !taffo.info !34
  %8 = load float, float* %arrayidx4, align 4, !taffo.initweight !77, !taffo.info !34
  %mul = fmul float %8, %4, !taffo.initweight !58, !taffo.info !32
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !59, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !78

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !48, !taffo.info !37
  %15 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15, !taffo.initweight !58, !taffo.info !37
  %16 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %16, !taffo.initweight !59, !taffo.info !37
  %17 = load float, float* %arrayidx12, align 4, !taffo.initweight !77, !taffo.info !37
  %18 = load float, float* %alpha.addr, align 4, !taffo.initweight !48, !taffo.info !30
  %mul13 = fmul float %17, %18, !taffo.initweight !58, !taffo.info !30
  %19 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !48, !taffo.info !39
  %20 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %19, i32 %20, !taffo.initweight !58, !taffo.info !39
  %21 = load i32, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !59, !taffo.info !39
  %22 = load float, float* %arrayidx15, align 4, !taffo.initweight !77, !taffo.info !39
  %mul16 = fmul float %mul13, %22, !taffo.initweight !59, !taffo.info !30
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !48, !taffo.info !39
  %24 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24, !taffo.initweight !58, !taffo.info !39
  %25 = load i32, i32* %k, align 4
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %25, !taffo.initweight !59, !taffo.info !39
  %26 = load float, float* %arrayidx18, align 4, !taffo.initweight !77, !taffo.info !39
  %27 = load float, float* %alpha.addr, align 4, !taffo.initweight !48, !taffo.info !30
  %mul19 = fmul float %26, %27, !taffo.initweight !58, !taffo.info !30
  %28 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !48, !taffo.info !37
  %29 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %28, i32 %29, !taffo.initweight !58, !taffo.info !37
  %30 = load i32, i32* %k, align 4
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %30, !taffo.initweight !59, !taffo.info !37
  %31 = load float, float* %arrayidx21, align 4, !taffo.initweight !77, !taffo.info !37
  %mul22 = fmul float %mul19, %31, !taffo.initweight !59, !taffo.info !30
  %add = fadd float %mul16, %mul22, !taffo.initweight !77, !taffo.info !30
  %32 = load [16 x float]*, [16 x float]** %C.addr, align 4, !taffo.initweight !48, !taffo.info !34
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %32, i32 %33, !taffo.initweight !58, !taffo.info !34
  %34 = load i32, i32* %j, align 4
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %34, !taffo.initweight !59, !taffo.info !34
  %35 = load float, float* %arrayidx24, align 4, !taffo.initweight !77, !taffo.info !34
  %add25 = fadd float %35, %add, !taffo.initweight !79, !taffo.info !30
  store float %add25, float* %arrayidx24, align 4, !taffo.initweight !77, !taffo.info !34
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %36 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond8, !llvm.loop !80

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %37 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond5, !llvm.loop !81

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %38 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond, !llvm.loop !82

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !83 !taffo.sourceFunction !42 !taffo.funinfo !76 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !30
  %beta.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !32
  %C.addr = alloca [16 x float]*, align 4, !taffo.initweight !45, !taffo.info !34
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !45, !taffo.info !37
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !45, !taffo.info !39
  %i = alloca i32, align 4, !taffo.initweight !29, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !29, !taffo.info !56
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !45, !taffo.info !30
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !45, !taffo.info !32
  store [16 x float]* %C, [16 x float]** %C.addr, align 4, !taffo.initweight !48, !taffo.info !34
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !48, !taffo.info !37
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !48, !taffo.info !39
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !41, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !41, !taffo.info !56
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !45, !taffo.info !30
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !48, !taffo.info !30
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !45, !taffo.info !32
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !48, !taffo.info !32
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end18, !taffo.initweight !45, !taffo.info !54

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %5 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !44, !taffo.info !56
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !45, !taffo.info !56

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %7 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %mul = mul nsw i32 %6, %7, !taffo.initweight !44, !taffo.info !54
  %add = add nsw i32 %mul, 1, !taffo.initweight !45, !taffo.info !54
  %8 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !48, !taffo.info !54
  %conv = sitofp i32 %rem to float, !taffo.initweight !58, !taffo.info !54
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !59, !taffo.info !54
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !48, !taffo.info !37
  %11 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i32 %11, !taffo.initweight !44, !taffo.info !60
  %12 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !44, !taffo.info !60
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !45, !taffo.info !60
  %13 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %14 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %mul8 = mul nsw i32 %13, %14, !taffo.initweight !44, !taffo.info !54
  %add9 = add nsw i32 %mul8, 2, !taffo.initweight !45, !taffo.info !54
  %15 = load i32, i32* %m.addr, align 4
  %rem10 = srem i32 %add9, %15, !taffo.initweight !48, !taffo.info !54
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !58, !taffo.info !54
  %16 = load i32, i32* %m.addr, align 4
  %conv12 = sitofp i32 %16 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !59, !taffo.info !54
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !48, !taffo.info !39
  %18 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %17, i32 %18, !taffo.initweight !44, !taffo.info !60
  %19 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %19, !taffo.initweight !44, !taffo.info !60
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !45, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %inc = add nsw i32 %20, 1, !taffo.initweight !44, !taffo.info !56
  store i32 %inc, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond3, !llvm.loop !84

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %inc17 = add nsw i32 %21, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc17, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond, !llvm.loop !85

for.end18:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %22 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %23 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %22, %23, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.initweight !45, !taffo.info !54

for.body22:                                       ; preds = %for.cond19
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %24 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %25 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %24, %25, !taffo.initweight !44, !taffo.info !56
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.initweight !45, !taffo.info !56

for.body26:                                       ; preds = %for.cond23
  %26 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %27 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %mul27 = mul nsw i32 %26, %27, !taffo.initweight !44, !taffo.info !54
  %add28 = add nsw i32 %mul27, 3, !taffo.initweight !45, !taffo.info !54
  %28 = load i32, i32* %n.addr, align 4
  %rem29 = srem i32 %add28, %28, !taffo.initweight !48, !taffo.info !54
  %conv30 = sitofp i32 %rem29 to float, !taffo.initweight !58, !taffo.info !54
  %29 = load i32, i32* %m.addr, align 4
  %conv31 = sitofp i32 %29 to float
  %div32 = fdiv float %conv30, %conv31, !taffo.initweight !59, !taffo.info !54
  %30 = load [16 x float]*, [16 x float]** %C.addr, align 4, !taffo.initweight !48, !taffo.info !34
  %31 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %30, i32 %31, !taffo.initweight !44, !taffo.info !60
  %32 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %32, !taffo.initweight !44, !taffo.info !60
  store float %div32, float* %arrayidx34, align 4, !taffo.initweight !45, !taffo.info !60
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %33 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  %inc36 = add nsw i32 %33, 1, !taffo.initweight !44, !taffo.info !56
  store i32 %inc36, i32* %j, align 4, !taffo.initweight !41, !taffo.info !56
  br label %for.cond23, !llvm.loop !86

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %34 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %inc39 = add nsw i32 %34, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc39, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond19, !llvm.loop !87

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !88 !taffo.sourceFunction !46 !taffo.funinfo !89 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !34
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !34
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !59, !taffo.info !34
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !77, !taffo.info !34
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !79, !taffo.info !34
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !90, !taffo.info !34
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !59, !taffo.info !34
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !77, !taffo.info !34
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !79, !taffo.info !34
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

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !88 !taffo.sourceFunction !46 !taffo.funinfo !93 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !37
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !59, !taffo.info !37
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !77, !taffo.info !37
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !79, !taffo.info !37
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !90, !taffo.info !37
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !59, !taffo.info !37
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !77, !taffo.info !37
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !79, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !94

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !95

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !88 !taffo.sourceFunction !46 !taffo.funinfo !96 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !48, !taffo.info !39
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !39
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !59, !taffo.info !39
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !77, !taffo.info !39
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !79, !taffo.info !39
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !90, !taffo.info !39
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !39
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !59, !taffo.info !39
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !77, !taffo.info !39
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !79, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !97

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !98

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 -1, i32 -1}
!12 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!13 = !{i32 0, i1 false, i32 0, i1 false}
!14 = !{i32 -1, i32 -1, i32 -1}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!16 = distinct !{!16, !10}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!23 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{}
!28 = !{i1 true}
!29 = !{i32 0}
!30 = !{i1 false, !31, i1 false, i2 -1}
!31 = !{double 1.500000e+00, double 1.500000e+00}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 1.200000e+00, double 1.200000e+00}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double 0.000000e+00, double 0x40BF1851C0010C6F}
!36 = !{!"C"}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 3.000000e+01}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 0x403CCCCCBC05D52C}
!41 = !{i32 1}
!42 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array}
!43 = !{void (float*, i32)* @scale_scalar}
!44 = !{i32 2}
!45 = !{i32 3}
!46 = !{void (i32, i32, float*, i32)* @scale_2d}
!47 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k}
!48 = !{i32 4}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!52 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array.4}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = !{i1 false, !55, i1 false, i2 1}
!55 = !{double 0.000000e+00, double 1.600000e+01}
!56 = !{i1 false, !57, i1 false, i2 1}
!57 = !{double 0.000000e+00, double 1.000000e+01}
!58 = !{i32 5}
!59 = !{i32 6}
!60 = !{i1 false, i1 false, i1 false, i2 1}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k.3}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = !{i32 1, i32 -1}
!73 = !{i32 1, !30, i32 0, i1 false}
!74 = !{i32 1, !32, i32 0, i1 false}
!75 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!76 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !30, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !39}
!77 = !{i32 7}
!78 = distinct !{!78, !10}
!79 = !{i32 8}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = !{i32 -1, i32 -1, i32 3, i32 -1}
!89 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !34, i32 0, i1 false}
!90 = !{i32 9}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !37, i32 0, i1 false}
!94 = distinct !{!94, !10}
!95 = distinct !{!95, !10}
!96 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !39, i32 0, i1 false}
!97 = distinct !{!97, !10}
!98 = distinct !{!98, !10}
