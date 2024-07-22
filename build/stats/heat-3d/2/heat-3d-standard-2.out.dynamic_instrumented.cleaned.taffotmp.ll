; ModuleID = './build/stats/heat-3d/2/heat-3d-standard-2.out.dynamic_instrumented.1.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/heat-3d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 80) final)\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 {
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load float*, float** %val.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %7 to float
  %mul = fmul float %6, %conv
  %8 = load float*, float** %val.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds float, float* %8, i64 %idxprom1
  store float %mul, float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %m.addr, align 4
  %3 = zext i32 %2 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load float*, float** %val.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds float, float* %8, i64 %10
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds float, float* %arrayidx, i64 %idxprom4
  %12 = load float, float* %arrayidx5, align 4
  %13 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %13 to float
  %mul = fmul float %12, %conv
  %14 = load float*, float** %val.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %14, i64 %16
  %17 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %mul, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %m.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, i32* %p.addr, align 4
  %5 = zext i32 %4 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %p.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %12 = load float*, float** %val.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nuw i64 %3, %5
  %15 = mul nsw i64 %idxprom, %14
  %arrayidx = getelementptr inbounds float, float* %12, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = mul nsw i64 %idxprom7, %5
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx, i64 %17
  %18 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx8, i64 %idxprom9
  %19 = load float, float* %arrayidx10, align 4
  %20 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %20 to float
  %mul = fmul float %19, %conv
  %21 = load float*, float** %val.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = mul nuw i64 %3, %5
  %24 = mul nsw i64 %idxprom11, %23
  %arrayidx12 = getelementptr inbounds float, float* %21, i64 %24
  %25 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = mul nsw i64 %idxprom13, %5
  %arrayidx14 = getelementptr inbounds float, float* %arrayidx12, i64 %26
  %27 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds float, float* %arrayidx14, i64 %idxprom15
  store float %mul, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %29 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %29, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !12

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %30 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %30, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_start() #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_stop() #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %A = alloca [5 x [5 x [5 x float]]], align 16
  %B = alloca [5 x [5 x [5 x float]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 5, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [5 x [5 x [5 x float]]]* %A to i8*
  %B2 = bitcast [5 x [5 x [5 x float]]]* %B to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  call void @init_array(i32 noundef %0, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3)
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %1 = bitcast [5 x [5 x float]]* %arraydecay4 to float*
  call void @scale_3d(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %1, i32 noundef 2)
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  %2 = bitcast [5 x [5 x float]]* %arraydecay5 to float*
  call void @scale_3d(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %2, i32 noundef 2)
  call void @timer_start()
  %3 = load i32, i32* %tsteps, align 4
  %4 = load i32, i32* %n, align 4
  %arraydecay6 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  call void @kernel_heat_3d(i32 noundef %3, i32 noundef %4, [5 x [5 x float]]* noundef %arraydecay6, [5 x [5 x float]]* noundef %arraydecay7)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc24, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %7, %8
  br i1 %cmp9, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond8
  store i32 0, i32* %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %9, %10
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom14
  %13 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %14 = load float, float* %arrayidx17, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i64 0, i64 %idxprom18
  %16 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i64 0, i64 %idxprom20
  %17 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx21, i64 0, i64 %idxprom22
  store float %14, float* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond11, !llvm.loop !14

for.end:                                          ; preds = %for.cond11
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond8, !llvm.loop !15

for.end26:                                        ; preds = %for.cond8
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %20 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 8
  %B.addr = alloca [5 x [5 x float]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 8
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %k3 = bitcast i32* %k to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp slt i32 %4, %5
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %8, %9
  %add10 = add nsw i32 %add, %sub
  %conv = sitofp i32 %add10 to float
  %mul = fmul float %conv, 1.000000e+01
  %10 = load i32, i32* %n.addr, align 4
  %conv11 = sitofp i32 %10 to float
  %div = fdiv float %mul, %conv11
  %11 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom12
  %14 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i64 0, i64 %idxprom14
  store float %div, float* %arrayidx15, align 4
  %15 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %15, i64 %idxprom16
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %18 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %div, float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !17

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond4, !llvm.loop !18

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 8
  %B.addr = alloca [5 x [5 x float]]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 8
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 8
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc209, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end211

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc98, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body3, label %for.end100

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc95, %for.body3
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %cmp6 = icmp slt i32 %3, %sub5
  br i1 %cmp6, label %for.body7, label %for.end97

for.body7:                                        ; preds = %for.cond4
  store i32 1, i32* %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 %6, 1
  %cmp10 = icmp slt i32 %5, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %7 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom12
  %10 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %11 = load float, float* %arrayidx15, align 4
  %12 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %12, i64 %idxprom16
  %14 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %15 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %16 = load float, float* %arrayidx21, align 4
  %mul = fmul float 2.000000e+00, %16
  %sub22 = fsub float %11, %mul
  %17 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %18 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %18, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %17, i64 %idxprom24
  %19 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx25, i64 0, i64 %idxprom26
  %20 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx27, i64 0, i64 %idxprom28
  %21 = load float, float* %arrayidx29, align 4
  %add30 = fadd float %sub22, %21
  %mul31 = fmul float 1.250000e-01, %add30
  %22 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %22, i64 %idxprom32
  %24 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %24, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i64 0, i64 %idxprom35
  %25 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx36, i64 0, i64 %idxprom37
  %26 = load float, float* %arrayidx38, align 4
  %27 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %27, i64 %idxprom39
  %29 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %29 to i64
  %arrayidx42 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i64 0, i64 %idxprom41
  %30 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx42, i64 0, i64 %idxprom43
  %31 = load float, float* %arrayidx44, align 4
  %mul45 = fmul float 2.000000e+00, %31
  %sub46 = fsub float %26, %mul45
  %32 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %32, i64 %idxprom47
  %34 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %34, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx48, i64 0, i64 %idxprom50
  %35 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx51, i64 0, i64 %idxprom52
  %36 = load float, float* %arrayidx53, align 4
  %add54 = fadd float %sub46, %36
  %mul55 = fmul float 1.250000e-01, %add54
  %add56 = fadd float %mul31, %mul55
  %37 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %37, i64 %idxprom57
  %39 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %39 to i64
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx58, i64 0, i64 %idxprom59
  %40 = load i32, i32* %k, align 4
  %add61 = add nsw i32 %40, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx60, i64 0, i64 %idxprom62
  %41 = load float, float* %arrayidx63, align 4
  %42 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %43 to i64
  %arrayidx65 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %42, i64 %idxprom64
  %44 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %44 to i64
  %arrayidx67 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx65, i64 0, i64 %idxprom66
  %45 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %45 to i64
  %arrayidx69 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx67, i64 0, i64 %idxprom68
  %46 = load float, float* %arrayidx69, align 4
  %mul70 = fmul float 2.000000e+00, %46
  %sub71 = fsub float %41, %mul70
  %47 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %48 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %47, i64 %idxprom72
  %49 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx73, i64 0, i64 %idxprom74
  %50 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %50, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx75, i64 0, i64 %idxprom77
  %51 = load float, float* %arrayidx78, align 4
  %add79 = fadd float %sub71, %51
  %mul80 = fmul float 1.250000e-01, %add79
  %add81 = fadd float %add56, %mul80
  %52 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %52, i64 %idxprom82
  %54 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %54 to i64
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx83, i64 0, i64 %idxprom84
  %55 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %55 to i64
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx85, i64 0, i64 %idxprom86
  %56 = load float, float* %arrayidx87, align 4
  %add88 = fadd float %add81, %56
  %57 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %58 to i64
  %arrayidx90 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %57, i64 %idxprom89
  %59 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %59 to i64
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx90, i64 0, i64 %idxprom91
  %60 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %60 to i64
  %arrayidx94 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i64 0, i64 %idxprom93
  store float %add88, float* %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %61 = load i32, i32* %k, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8, !llvm.loop !20

for.end:                                          ; preds = %for.cond8
  br label %for.inc95

for.inc95:                                        ; preds = %for.end
  %62 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %62, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond4, !llvm.loop !21

for.end97:                                        ; preds = %for.cond4
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %63 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %63, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond1, !llvm.loop !22

for.end100:                                       ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc206, %for.end100
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %n.addr, align 4
  %sub102 = sub nsw i32 %65, 1
  %cmp103 = icmp slt i32 %64, %sub102
  br i1 %cmp103, label %for.body104, label %for.end208

for.body104:                                      ; preds = %for.cond101
  store i32 1, i32* %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc203, %for.body104
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %n.addr, align 4
  %sub106 = sub nsw i32 %67, 1
  %cmp107 = icmp slt i32 %66, %sub106
  br i1 %cmp107, label %for.body108, label %for.end205

for.body108:                                      ; preds = %for.cond105
  store i32 1, i32* %k, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc200, %for.body108
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %n.addr, align 4
  %sub110 = sub nsw i32 %69, 1
  %cmp111 = icmp slt i32 %68, %sub110
  br i1 %cmp111, label %for.body112, label %for.end202

for.body112:                                      ; preds = %for.cond109
  %70 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %71 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %71, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %70, i64 %idxprom114
  %72 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %72 to i64
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx115, i64 0, i64 %idxprom116
  %73 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %73 to i64
  %arrayidx119 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i64 0, i64 %idxprom118
  %74 = load float, float* %arrayidx119, align 4
  %75 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %76 to i64
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %75, i64 %idxprom120
  %77 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %77 to i64
  %arrayidx123 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i64 0, i64 %idxprom122
  %78 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %78 to i64
  %arrayidx125 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx123, i64 0, i64 %idxprom124
  %79 = load float, float* %arrayidx125, align 4
  %mul126 = fmul float 2.000000e+00, %79
  %sub127 = fsub float %74, %mul126
  %80 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %81 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %81, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %80, i64 %idxprom129
  %82 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %82 to i64
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx130, i64 0, i64 %idxprom131
  %83 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %83 to i64
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx132, i64 0, i64 %idxprom133
  %84 = load float, float* %arrayidx134, align 4
  %add135 = fadd float %sub127, %84
  %mul136 = fmul float 1.250000e-01, %add135
  %85 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %86 to i64
  %arrayidx138 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %85, i64 %idxprom137
  %87 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %87, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx138, i64 0, i64 %idxprom140
  %88 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %88 to i64
  %arrayidx143 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx141, i64 0, i64 %idxprom142
  %89 = load float, float* %arrayidx143, align 4
  %90 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %91 to i64
  %arrayidx145 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %90, i64 %idxprom144
  %92 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %92 to i64
  %arrayidx147 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx145, i64 0, i64 %idxprom146
  %93 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %93 to i64
  %arrayidx149 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx147, i64 0, i64 %idxprom148
  %94 = load float, float* %arrayidx149, align 4
  %mul150 = fmul float 2.000000e+00, %94
  %sub151 = fsub float %89, %mul150
  %95 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %96 to i64
  %arrayidx153 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %95, i64 %idxprom152
  %97 = load i32, i32* %j, align 4
  %sub154 = sub nsw i32 %97, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx153, i64 0, i64 %idxprom155
  %98 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %98 to i64
  %arrayidx158 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx156, i64 0, i64 %idxprom157
  %99 = load float, float* %arrayidx158, align 4
  %add159 = fadd float %sub151, %99
  %mul160 = fmul float 1.250000e-01, %add159
  %add161 = fadd float %mul136, %mul160
  %100 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %101 to i64
  %arrayidx163 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %100, i64 %idxprom162
  %102 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %102 to i64
  %arrayidx165 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx163, i64 0, i64 %idxprom164
  %103 = load i32, i32* %k, align 4
  %add166 = add nsw i32 %103, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx165, i64 0, i64 %idxprom167
  %104 = load float, float* %arrayidx168, align 4
  %105 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %106 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %106 to i64
  %arrayidx170 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %105, i64 %idxprom169
  %107 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %107 to i64
  %arrayidx172 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx170, i64 0, i64 %idxprom171
  %108 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %108 to i64
  %arrayidx174 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx172, i64 0, i64 %idxprom173
  %109 = load float, float* %arrayidx174, align 4
  %mul175 = fmul float 2.000000e+00, %109
  %sub176 = fsub float %104, %mul175
  %110 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %111 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %111 to i64
  %arrayidx178 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %110, i64 %idxprom177
  %112 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %112 to i64
  %arrayidx180 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx178, i64 0, i64 %idxprom179
  %113 = load i32, i32* %k, align 4
  %sub181 = sub nsw i32 %113, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx180, i64 0, i64 %idxprom182
  %114 = load float, float* %arrayidx183, align 4
  %add184 = fadd float %sub176, %114
  %mul185 = fmul float 1.250000e-01, %add184
  %add186 = fadd float %add161, %mul185
  %115 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %116 to i64
  %arrayidx188 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %115, i64 %idxprom187
  %117 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %117 to i64
  %arrayidx190 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx188, i64 0, i64 %idxprom189
  %118 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %118 to i64
  %arrayidx192 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx190, i64 0, i64 %idxprom191
  %119 = load float, float* %arrayidx192, align 4
  %add193 = fadd float %add186, %119
  %120 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %121 to i64
  %arrayidx195 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %120, i64 %idxprom194
  %122 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %122 to i64
  %arrayidx197 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx195, i64 0, i64 %idxprom196
  %123 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %123 to i64
  %arrayidx199 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx197, i64 0, i64 %idxprom198
  store float %add193, float* %arrayidx199, align 4
  br label %for.inc200

for.inc200:                                       ; preds = %for.body112
  %124 = load i32, i32* %k, align 4
  %inc201 = add nsw i32 %124, 1
  store i32 %inc201, i32* %k, align 4
  br label %for.cond109, !llvm.loop !23

for.end202:                                       ; preds = %for.cond109
  br label %for.inc203

for.inc203:                                       ; preds = %for.end202
  %125 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %125, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond105, !llvm.loop !24

for.end205:                                       ; preds = %for.cond105
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %126 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %126, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond101, !llvm.loop !25

for.end208:                                       ; preds = %for.cond101
  br label %for.inc209

for.inc209:                                       ; preds = %for.end208
  %127 = load i32, i32* %t, align 4
  %inc210 = add nsw i32 %127, 1
  store i32 %inc210, i32* %t, align 4
  br label %for.cond, !llvm.loop !26

for.end211:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
