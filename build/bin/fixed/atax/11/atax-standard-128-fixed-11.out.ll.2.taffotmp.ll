; ModuleID = './build/bin/fixed/atax/11/atax-standard-128-fixed-11.out.ll.1.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,26.879999) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/atax.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [38 x i8] c"scalar(range(128.0,250.181824) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [48 x i8] c"target('y') scalar(range(0.0,16130245.0) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [38 x i8] c"scalar(range(0.0,62504.960938) final)\00", section "llvm.metadata"
@y_float = dso_local global [22 x float] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 22) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !15 !taffo.equivalentChild !16 !taffo.funinfo !17 {
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
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !30 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [22 x float]], align 4, !taffo.initweight !31, !taffo.info !32
  %x = alloca [22 x float], align 4, !taffo.initweight !31, !taffo.info !34
  %y = alloca [22 x float], align 4, !taffo.initweight !31, !taffo.info !36, !taffo.target !38
  %tmp = alloca [20 x float], align 4, !taffo.initweight !31, !taffo.info !39
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %m, align 4
  store i32 22, i32* %n, align 4
  %A1 = bitcast [20 x [22 x float]]* %A to i8*, !taffo.initweight !41, !taffo.info !32
  %x2 = bitcast [22 x float]* %x to i8*, !taffo.initweight !41, !taffo.info !34
  %y3 = bitcast [22 x float]* %y to i8*, !taffo.initweight !41, !taffo.info !36, !taffo.target !38
  %tmp4 = bitcast [20 x float]* %tmp to i8*, !taffo.initweight !41, !taffo.info !39
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !32
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !41, !taffo.info !34
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !41, !taffo.info !36, !taffo.target !38
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @init_array.5(i32 noundef %0, i32 noundef %1, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.initweight !42, !taffo.info !32, !taffo.originalCall !43
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !32
  %2 = bitcast [22 x float]* %arraydecay8 to float*, !taffo.initweight !42, !taffo.info !32
  call void @scale_2d.6(i32 noundef 20, i32 noundef 22, float* noundef %2, i32 noundef 128), !taffo.initweight !44, !taffo.info !32, !taffo.originalCall !45
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !41, !taffo.info !34
  call void @scale_1d.1(i32 noundef 22, float* noundef %arraydecay9, i32 noundef 128), !taffo.initweight !42, !taffo.info !34, !taffo.originalCall !46
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !41, !taffo.info !36, !taffo.target !38
  call void @scale_1d.2(i32 noundef 22, float* noundef %arraydecay10, i32 noundef 128), !taffo.initweight !42, !taffo.info !36, !taffo.target !38, !taffo.originalCall !46
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 128), !taffo.initweight !42, !taffo.info !39, !taffo.originalCall !46
  call void @timer_start()
  %3 = load i32, i32* %m, align 4
  %4 = load i32, i32* %n, align 4
  %arraydecay12 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !32
  %arraydecay13 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !41, !taffo.info !34
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !41, !taffo.info !36, !taffo.target !38
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @kernel_atax.3(i32 noundef %3, i32 noundef %4, [22 x float]* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15), !taffo.initweight !42, !taffo.info !32, !taffo.originalCall !47
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %6, !taffo.initweight !41, !taffo.info !36, !taffo.target !38
  %7 = load float, float* %arrayidx, align 4, !taffo.initweight !42, !taffo.info !36, !taffo.target !38
  %8 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %8
  store float %7, float* %arrayidx16, align 4, !taffo.initweight !44, !taffo.info !36, !taffo.target !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %10, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !24 !taffo.funinfo !25 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !49 !taffo.equivalentChild !50 !taffo.funinfo !51 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %tmp.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !52
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !52
  %fn = alloca float, align 4, !taffo.initweight !31, !taffo.info !10
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !41, !taffo.info !52
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !41, !taffo.info !52
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !41, !taffo.info !10
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !42, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !44, !taffo.info !52

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %conv5 = sitofp i32 %3 to float, !taffo.initweight !42, !taffo.info !52
  %4 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div = fdiv float %conv5, %4, !taffo.initweight !42, !taffo.info !10
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !44, !taffo.info !10
  %5 = load float*, float** %x.addr, align 4
  %6 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !42, !taffo.info !10
  store float %add, float* %arrayidx, align 4, !taffo.initweight !44, !taffo.info !10
  %7 = load float*, float** %y.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx6 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !42, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !44, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %inc = add nsw i32 %9, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %11 = load i32, i32* %m.addr, align 4
  %cmp8 = icmp slt i32 %10, %11, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !44, !taffo.info !52

for.body10:                                       ; preds = %for.cond7
  %12 = load float*, float** %tmp.addr, align 4
  %13 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx11 = getelementptr inbounds float, float* %12, i32 %13, !taffo.initweight !42, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !44, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %14 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %15 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %14, %15, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !44, !taffo.info !52

for.body15:                                       ; preds = %for.cond12
  %16 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %17 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %add16 = add nsw i32 %16, %17, !taffo.initweight !42, !taffo.info !52
  %18 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add16, %18, !taffo.initweight !44, !taffo.info !52
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !55, !taffo.info !52
  %19 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 5, %19
  %conv18 = sitofp i32 %mul to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !9, !taffo.info !52
  %20 = load [22 x float]*, [22 x float]** %A.addr, align 4
  %21 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %20, i32 %21, !taffo.initweight !42, !taffo.info !10
  %22 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %22, !taffo.initweight !42, !taffo.info !10
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !44, !taffo.info !10
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %23 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %inc23 = add nsw i32 %23, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc23, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond12, !llvm.loop !56

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %24 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %inc26 = add nsw i32 %24, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc26, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond7, !llvm.loop !57

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !49 !taffo.equivalentChild !58 !taffo.funinfo !51 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %tmp.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %y.addr, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %tmp.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %tmp.addr, align 4
  %12 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12
  %13 = load float, float* %arrayidx8, align 4
  %14 = load [22 x float]*, [22 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %14, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %16
  %17 = load float, float* %arrayidx10, align 4
  %18 = load float*, float** %x.addr, align 4
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds float, float* %18, i32 %19
  %20 = load float, float* %arrayidx11, align 4
  %mul = fmul float %17, %20
  %add = fadd float %13, %mul
  %21 = load float*, float** %tmp.addr, align 4
  %22 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22
  store float %add, float* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %23 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond5, !llvm.loop !60

for.end15:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %26 = load float*, float** %y.addr, align 4
  %27 = load i32, i32* %j, align 4
  %arrayidx19 = getelementptr inbounds float, float* %26, i32 %27
  %28 = load float, float* %arrayidx19, align 4
  %29 = load [22 x float]*, [22 x float]** %A.addr, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %29, i32 %30
  %31 = load i32, i32* %j, align 4
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %31
  %32 = load float, float* %arrayidx21, align 4
  %33 = load float*, float** %tmp.addr, align 4
  %34 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %33, i32 %34
  %35 = load float, float* %arrayidx22, align 4
  %mul23 = fmul float %32, %35
  %add24 = fadd float %28, %mul23
  %36 = load float*, float** %y.addr, align 4
  %37 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds float, float* %36, i32 %37
  store float %add24, float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %38 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond16, !llvm.loop !61

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %39 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond1, !llvm.loop !62

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !13 !taffo.funinfo !14 {
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
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !64 !taffo.sourceFunction !46 !taffo.funinfo !65 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !34
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !34
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !34
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !34
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !66, !taffo.info !34
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !67, !taffo.info !34
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !34
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !34
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !66, !taffo.info !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !64 !taffo.sourceFunction !46 !taffo.funinfo !69 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !36
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !36
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !36
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !36
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !66, !taffo.info !36
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !67, !taffo.info !36
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !36
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !36
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !66, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.3(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !71 !taffo.sourceFunction !47 !taffo.funinfo !72 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4, !taffo.initweight !44, !taffo.info !32
  %x.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !34
  %y.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !36
  %tmp.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !39
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4, !taffo.initweight !55, !taffo.info !32
  store float* %x, float** %x.addr, align 4, !taffo.initweight !55, !taffo.info !34
  store float* %y, float** %y.addr, align 4, !taffo.initweight !55, !taffo.info !36
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %y.addr, align 4, !taffo.initweight !55, !taffo.info !36
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3, !taffo.initweight !9, !taffo.info !36
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !39
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %12 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !9, !taffo.info !39
  %13 = load float, float* %arrayidx8, align 4, !taffo.initweight !66, !taffo.info !39
  %14 = load [22 x float]*, [22 x float]** %A.addr, align 4, !taffo.initweight !55, !taffo.info !32
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %14, i32 %15, !taffo.initweight !9, !taffo.info !32
  %16 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %16, !taffo.initweight !66, !taffo.info !32
  %17 = load float, float* %arrayidx10, align 4, !taffo.initweight !67, !taffo.info !32
  %18 = load float*, float** %x.addr, align 4, !taffo.initweight !55, !taffo.info !34
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds float, float* %18, i32 %19, !taffo.initweight !9, !taffo.info !34
  %20 = load float, float* %arrayidx11, align 4, !taffo.initweight !66, !taffo.info !34
  %mul = fmul float %17, %20, !taffo.initweight !67, !taffo.info !34
  %add = fadd float %13, %mul, !taffo.initweight !67, !taffo.info !39
  %21 = load float*, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %22 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22, !taffo.initweight !9, !taffo.info !39
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !66, !taffo.info !39
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %23 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond5, !llvm.loop !74

for.end15:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %26 = load float*, float** %y.addr, align 4, !taffo.initweight !55, !taffo.info !36
  %27 = load i32, i32* %j, align 4
  %arrayidx19 = getelementptr inbounds float, float* %26, i32 %27, !taffo.initweight !9, !taffo.info !36
  %28 = load float, float* %arrayidx19, align 4, !taffo.initweight !66, !taffo.info !36
  %29 = load [22 x float]*, [22 x float]** %A.addr, align 4, !taffo.initweight !55, !taffo.info !32
  %30 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %29, i32 %30, !taffo.initweight !9, !taffo.info !32
  %31 = load i32, i32* %j, align 4
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %31, !taffo.initweight !66, !taffo.info !32
  %32 = load float, float* %arrayidx21, align 4, !taffo.initweight !67, !taffo.info !32
  %33 = load float*, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %34 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %33, i32 %34, !taffo.initweight !9, !taffo.info !39
  %35 = load float, float* %arrayidx22, align 4, !taffo.initweight !66, !taffo.info !39
  %mul23 = fmul float %32, %35, !taffo.initweight !67, !taffo.info !39
  %add24 = fadd float %28, %mul23, !taffo.initweight !67, !taffo.info !36
  %36 = load float*, float** %y.addr, align 4, !taffo.initweight !55, !taffo.info !36
  %37 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds float, float* %36, i32 %37, !taffo.initweight !9, !taffo.info !36
  store float %add24, float* %arrayidx25, align 4, !taffo.initweight !66, !taffo.info !36
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %38 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond16, !llvm.loop !75

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %39 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond1, !llvm.loop !76

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !64 !taffo.sourceFunction !46 !taffo.funinfo !77 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !39
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !39
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !39
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !66, !taffo.info !39
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !67, !taffo.info !39
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !39
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !66, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !71 !taffo.sourceFunction !43 !taffo.funinfo !72 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4, !taffo.initweight !44, !taffo.info !32
  %x.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !34
  %y.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !36
  %tmp.addr = alloca float*, align 4, !taffo.initweight !44, !taffo.info !39
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !52
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !52
  %fn = alloca float, align 4, !taffo.initweight !31, !taffo.info !10
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4, !taffo.initweight !55, !taffo.info !32
  store float* %x, float** %x.addr, align 4, !taffo.initweight !55, !taffo.info !34
  store float* %y, float** %y.addr, align 4, !taffo.initweight !55, !taffo.info !36
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !41, !taffo.info !52
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !41, !taffo.info !52
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !41, !taffo.info !10
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !42, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !44, !taffo.info !52

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %conv5 = sitofp i32 %3 to float, !taffo.initweight !42, !taffo.info !52
  %4 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div = fdiv float %conv5, %4, !taffo.initweight !42, !taffo.info !10
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !44, !taffo.info !10
  %5 = load float*, float** %x.addr, align 4, !taffo.initweight !55, !taffo.info !34
  %6 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !42, !taffo.info !10
  store float %add, float* %arrayidx, align 4, !taffo.initweight !44, !taffo.info !10
  %7 = load float*, float** %y.addr, align 4, !taffo.initweight !55, !taffo.info !36
  %8 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx6 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !42, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !44, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %inc = add nsw i32 %9, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %11 = load i32, i32* %m.addr, align 4
  %cmp8 = icmp slt i32 %10, %11, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !44, !taffo.info !52

for.body10:                                       ; preds = %for.cond7
  %12 = load float*, float** %tmp.addr, align 4, !taffo.initweight !55, !taffo.info !39
  %13 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx11 = getelementptr inbounds float, float* %12, i32 %13, !taffo.initweight !42, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !44, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %14 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %15 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %14, %15, !taffo.initweight !42, !taffo.info !52
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !44, !taffo.info !52

for.body15:                                       ; preds = %for.cond12
  %16 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %17 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %add16 = add nsw i32 %16, %17, !taffo.initweight !42, !taffo.info !52
  %18 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add16, %18, !taffo.initweight !44, !taffo.info !52
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !55, !taffo.info !52
  %19 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 5, %19
  %conv18 = sitofp i32 %mul to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !9, !taffo.info !52
  %20 = load [22 x float]*, [22 x float]** %A.addr, align 4, !taffo.initweight !55, !taffo.info !32
  %21 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %20, i32 %21, !taffo.initweight !42, !taffo.info !10
  %22 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %22, !taffo.initweight !42, !taffo.info !10
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !44, !taffo.info !10
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %23 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  %inc23 = add nsw i32 %23, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc23, i32* %j, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond12, !llvm.loop !80

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %24 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  %inc26 = add nsw i32 %24, 1, !taffo.initweight !42, !taffo.info !52
  store i32 %inc26, i32* %i, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.cond7, !llvm.loop !81

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.sourceFunction !45 !taffo.funinfo !83 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !55, !taffo.info !32
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !66, !taffo.info !32
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !67, !taffo.info !32
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !84, !taffo.info !32
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !85, !taffo.info !32
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !66, !taffo.info !32
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !67, !taffo.info !32
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !84, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !86

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !87

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
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 -1, i32 -1, i32 -1}
!16 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.4}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = distinct !{!18, !12}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, i32, float*, i32)* @scale_2d.6}
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
!33 = !{double 0.000000e+00, double 0x403AE1479D4D8341}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double 1.280000e+02, double 0x406F45D18090B418}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 0.000000e+00, double 0x416EC418A0000000}
!38 = !{!"y"}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 0x40EE851EC0010C6F}
!41 = !{i32 1}
!42 = !{i32 2}
!43 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array}
!44 = !{i32 3}
!45 = !{void (i32, i32, float*, i32)* @scale_2d}
!46 = !{void (i32, float*, i32)* @scale_1d}
!47 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax}
!48 = distinct !{!48, !12}
!49 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!50 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array.5}
!51 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!52 = !{i1 false, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 2.200000e+01}
!54 = distinct !{!54, !12}
!55 = !{i32 4}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax.3}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = !{i32 -1, i32 2, i32 -1}
!65 = !{i32 0, i1 false, i32 1, !34, i32 0, i1 false}
!66 = !{i32 6}
!67 = !{i32 7}
!68 = distinct !{!68, !12}
!69 = !{i32 0, i1 false, i32 1, !36, i32 0, i1 false}
!70 = distinct !{!70, !12}
!71 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!72 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 1, !34, i32 1, !36, i32 1, !39}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = !{i32 0, i1 false, i32 1, !39, i32 0, i1 false}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{i32 -1, i32 -1, i32 3, i32 -1}
!83 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!84 = !{i32 8}
!85 = !{i32 9}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
