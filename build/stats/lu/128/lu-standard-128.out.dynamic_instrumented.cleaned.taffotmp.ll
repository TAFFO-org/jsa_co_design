; ModuleID = './build/stats/lu/128/lu-standard-128.out.dynamic_instrumented.1.taffotmp.ll'
source_filename = "./sources/lu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"./sources/lu.c\00", section "llvm.metadata"
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(-20, 20))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

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
  %A = alloca [20 x [20 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @init_array(i32 noundef %0, [20 x float]* noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %1 = bitcast [20 x float]* %arraydecay2 to float*
  call void @scale_2d(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 128)
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %arraydecay3 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @kernel_lu(i32 noundef %2, [20 x float]* noundef %arraydecay3)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom7
  %9 = load float, float* %arrayidx8, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i64 0, i64 %idxprom9
  %11 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i64 0, i64 %idxprom11
  store float %9, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !14

for.end:                                          ; preds = %for.cond4
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [20 x [20 x float]], align 16
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %j, align 4
  %sub = sub nsw i32 0, %4
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %5
  %conv = sitofp i32 %rem to float
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv6
  %add = fadd float %div, 1.000000e+00
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %add, float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !16

for.end:                                          ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %11, 1
  store i32 %add9, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %12, %13
  br i1 %cmp11, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond10
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %14, i64 %idxprom14
  %16 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float 0.000000e+00, float* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %17 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond10, !llvm.loop !17

for.end20:                                        ; preds = %for.cond10
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* %18, i64 %idxprom21
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx22, i64 0, i64 %idxprom23
  store float 1.000000e+00, float* %arrayidx24, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end20
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end27:                                        ; preds = %for.cond
  %B28 = bitcast [20 x [20 x float]]* %B to i8*
  store i32 0, i32* %r, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc44, %for.end27
  %22 = load i32, i32* %r, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %22, %23
  br i1 %cmp30, label %for.body32, label %for.end46

for.body32:                                       ; preds = %for.cond29
  store i32 0, i32* %s, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.body32
  %24 = load i32, i32* %s, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp34 = icmp slt i32 %24, %25
  br i1 %cmp34, label %for.body36, label %for.end43

for.body36:                                       ; preds = %for.cond33
  %26 = load i32, i32* %r, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 %idxprom37
  %27 = load i32, i32* %s, align 4
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i64 0, i64 %idxprom39
  store float 0.000000e+00, float* %arrayidx40, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body36
  %28 = load i32, i32* %s, align 4
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, i32* %s, align 4
  br label %for.cond33, !llvm.loop !19

for.end43:                                        ; preds = %for.cond33
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %29 = load i32, i32* %r, align 4
  %inc45 = add nsw i32 %29, 1
  store i32 %inc45, i32* %r, align 4
  br label %for.cond29, !llvm.loop !20

for.end46:                                        ; preds = %for.cond29
  store i32 0, i32* %t, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc78, %for.end46
  %30 = load i32, i32* %t, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp48 = icmp slt i32 %30, %31
  br i1 %cmp48, label %for.body50, label %for.end80

for.body50:                                       ; preds = %for.cond47
  store i32 0, i32* %r, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc75, %for.body50
  %32 = load i32, i32* %r, align 4
  %33 = load i32, i32* %n.addr, align 4
  %cmp52 = icmp slt i32 %32, %33
  br i1 %cmp52, label %for.body54, label %for.end77

for.body54:                                       ; preds = %for.cond51
  store i32 0, i32* %s, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc72, %for.body54
  %34 = load i32, i32* %s, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp56 = icmp slt i32 %34, %35
  br i1 %cmp56, label %for.body58, label %for.end74

for.body58:                                       ; preds = %for.cond55
  %36 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %37 = load i32, i32* %r, align 4
  %idxprom59 = sext i32 %37 to i64
  %arrayidx60 = getelementptr inbounds [20 x float], [20 x float]* %36, i64 %idxprom59
  %38 = load i32, i32* %t, align 4
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx60, i64 0, i64 %idxprom61
  %39 = load float, float* %arrayidx62, align 4
  %40 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %41 = load i32, i32* %s, align 4
  %idxprom63 = sext i32 %41 to i64
  %arrayidx64 = getelementptr inbounds [20 x float], [20 x float]* %40, i64 %idxprom63
  %42 = load i32, i32* %t, align 4
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx64, i64 0, i64 %idxprom65
  %43 = load float, float* %arrayidx66, align 4
  %mul = fmul float %39, %43
  %44 = load i32, i32* %r, align 4
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 %idxprom67
  %45 = load i32, i32* %s, align 4
  %idxprom69 = sext i32 %45 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx68, i64 0, i64 %idxprom69
  %46 = load float, float* %arrayidx70, align 4
  %add71 = fadd float %46, %mul
  store float %add71, float* %arrayidx70, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.body58
  %47 = load i32, i32* %s, align 4
  %inc73 = add nsw i32 %47, 1
  store i32 %inc73, i32* %s, align 4
  br label %for.cond55, !llvm.loop !21

for.end74:                                        ; preds = %for.cond55
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %48 = load i32, i32* %r, align 4
  %inc76 = add nsw i32 %48, 1
  store i32 %inc76, i32* %r, align 4
  br label %for.cond51, !llvm.loop !22

for.end77:                                        ; preds = %for.cond51
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %49 = load i32, i32* %t, align 4
  %inc79 = add nsw i32 %49, 1
  store i32 %inc79, i32* %t, align 4
  br label %for.cond47, !llvm.loop !23

for.end80:                                        ; preds = %for.cond47
  store i32 0, i32* %r, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc100, %for.end80
  %50 = load i32, i32* %r, align 4
  %51 = load i32, i32* %n.addr, align 4
  %cmp82 = icmp slt i32 %50, %51
  br i1 %cmp82, label %for.body84, label %for.end102

for.body84:                                       ; preds = %for.cond81
  store i32 0, i32* %s, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc97, %for.body84
  %52 = load i32, i32* %s, align 4
  %53 = load i32, i32* %n.addr, align 4
  %cmp86 = icmp slt i32 %52, %53
  br i1 %cmp86, label %for.body88, label %for.end99

for.body88:                                       ; preds = %for.cond85
  %54 = load i32, i32* %r, align 4
  %idxprom89 = sext i32 %54 to i64
  %arrayidx90 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 %idxprom89
  %55 = load i32, i32* %s, align 4
  %idxprom91 = sext i32 %55 to i64
  %arrayidx92 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx90, i64 0, i64 %idxprom91
  %56 = load float, float* %arrayidx92, align 4
  %57 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %58 = load i32, i32* %r, align 4
  %idxprom93 = sext i32 %58 to i64
  %arrayidx94 = getelementptr inbounds [20 x float], [20 x float]* %57, i64 %idxprom93
  %59 = load i32, i32* %s, align 4
  %idxprom95 = sext i32 %59 to i64
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx94, i64 0, i64 %idxprom95
  store float %56, float* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body88
  %60 = load i32, i32* %s, align 4
  %inc98 = add nsw i32 %60, 1
  store i32 %inc98, i32* %s, align 4
  br label %for.cond85, !llvm.loop !24

for.end99:                                        ; preds = %for.cond85
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %61 = load i32, i32* %r, align 4
  %inc101 = add nsw i32 %61, 1
  store i32 %inc101, i32* %r, align 4
  br label %for.cond81, !llvm.loop !25

for.end102:                                       ; preds = %for.cond81
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu(i32 noundef %n, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca float, align 4
  %tmp35 = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %tmp7 = bitcast float* %tmp to i8*
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 %idxprom10
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i64 0, i64 %idxprom12
  %13 = load float, float* %arrayidx13, align 4
  %mul = fmul float %9, %13
  store float %mul, float* %tmp, align 4
  %14 = load float, float* %tmp, align 4
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %15, i64 %idxprom14
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %18 = load float, float* %arrayidx17, align 4
  %sub = fsub float %18, %14
  store float %sub, float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !26

for.end:                                          ; preds = %for.cond4
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %20, i64 %idxprom18
  %22 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %23 = load float, float* %arrayidx21, align 4
  %24 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %24, i64 %idxprom22
  %26 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %27 = load float, float* %arrayidx25, align 4
  %div = fdiv float %27, %23
  store float %div, float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond1, !llvm.loop !27

for.end28:                                        ; preds = %for.cond1
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc54, %for.end28
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %30, %31
  br i1 %cmp30, label %for.body31, label %for.end56

for.body31:                                       ; preds = %for.cond29
  store i32 0, i32* %k, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc51, %for.body31
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %32, %33
  br i1 %cmp33, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond32
  %tmp3536 = bitcast float* %tmp35 to i8*
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %34, i64 %idxprom37
  %36 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i64 0, i64 %idxprom39
  %37 = load float, float* %arrayidx40, align 4
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %39 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %38, i64 %idxprom41
  %40 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %40 to i64
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i64 0, i64 %idxprom43
  %41 = load float, float* %arrayidx44, align 4
  %mul45 = fmul float %37, %41
  store float %mul45, float* %tmp35, align 4
  %42 = load float, float* %tmp35, align 4
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %44 to i64
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %43, i64 %idxprom46
  %45 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %45 to i64
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx47, i64 0, i64 %idxprom48
  %46 = load float, float* %arrayidx49, align 4
  %sub50 = fsub float %46, %42
  store float %sub50, float* %arrayidx49, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34
  %47 = load i32, i32* %k, align 4
  %inc52 = add nsw i32 %47, 1
  store i32 %inc52, i32* %k, align 4
  br label %for.cond32, !llvm.loop !28

for.end53:                                        ; preds = %for.cond32
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %48 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond29, !llvm.loop !29

for.end56:                                        ; preds = %for.cond29
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %49 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end59:                                        ; preds = %for.cond
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
!5 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
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
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
