; ModuleID = './sources/trmm.c'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/trmm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('B') scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"

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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca float, align 4
  %A = alloca [10 x [10 x float]], align 16
  %B = alloca [10 x [16 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10, i32* %m, align 4
  store i32 16, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*
  call void @llvm.var.annotation(i8* %alpha1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 115, i8* null)
  %A2 = bitcast [10 x [10 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 116, i8* null)
  %B3 = bitcast [10 x [16 x float]]* %B to i8*
  call void @llvm.var.annotation(i8* %B3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 117, i8* null)
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4)
  call void @scale_scalar(float* noundef %alpha, i32 noundef 512)
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %2 = bitcast [10 x float]* %arraydecay5 to float*
  call void @scale_2d(i32 noundef 10, i32 noundef 10, float* noundef %2, i32 noundef 512)
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  %3 = bitcast [16 x float]* %arraydecay6 to float*
  call void @scale_2d(i32 noundef 10, i32 noundef 16, float* noundef %3, i32 noundef 512)
  call void @timer_start()
  %4 = load i32, i32* %m, align 4
  %5 = load i32, i32* %n, align 4
  %6 = load float, float* %alpha, align 4
  %arraydecay7 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @kernel_trmm(i32 noundef %4, i32 noundef %5, float noundef %6, [10 x float]* noundef %arraydecay7, [16 x float]* noundef %arraydecay8)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end20

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
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom12
  %13 = load float, float* %arrayidx13, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i64 0, i64 %idxprom14
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float %13, float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond9, !llvm.loop !14

for.end:                                          ; preds = %for.cond9
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end20:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 35, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 36, i8* null)
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body5
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %add, %9
  %conv = sitofp i32 %rem to float
  %10 = load i32, i32* %m.addr, align 4
  %conv7 = sitofp i32 %10 to float
  %div = fdiv float %conv, %conv7
  %11 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom8
  store float %div, float* %arrayidx9, align 4
  br label %if.end

if.else:                                          ; preds = %for.body5
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %14, i64 %idxprom10
  %16 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i64 0, i64 %idxprom12
  store float 0.000000e+00, float* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !16

for.end:                                          ; preds = %for.cond3
  %18 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %18, i64 %idxprom14
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float 1.000000e+00, float* %arrayidx17, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc31, %for.end
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %n.addr, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond18
  %23 = load i32, i32* %n.addr, align 4
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %24, %25
  %add22 = add nsw i32 %23, %sub
  %26 = load i32, i32* %n.addr, align 4
  %rem23 = srem i32 %add22, %26
  %conv24 = sitofp i32 %rem23 to float
  %27 = load i32, i32* %n.addr, align 4
  %conv25 = sitofp i32 %27 to float
  %div26 = fdiv float %conv24, %conv25
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom27
  %30 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx28, i64 0, i64 %idxprom29
  store float %div26, float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21
  %31 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond18, !llvm.loop !17

for.end33:                                        ; preds = %for.cond18
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %32 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc27, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end29

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
  %7 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom7
  %10 = load float, float* %arrayidx8, align 4
  %11 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 %idxprom9
  %13 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %14 = load float, float* %arrayidx12, align 4
  %mul = fmul float %10, %14
  %15 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 %idxprom13
  %17 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %18 = load float, float* %arrayidx16, align 4
  %add17 = fadd float %18, %mul
  store float %add17, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !19

for.end:                                          ; preds = %for.cond4
  %20 = load float, float* %alpha.addr, align 4
  %21 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %21, i64 %idxprom18
  %23 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %24 = load float, float* %arrayidx21, align 4
  %mul22 = fmul float %20, %24
  %25 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %25, i64 %idxprom23
  %27 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx24, i64 0, i64 %idxprom25
  store float %mul22, float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond1, !llvm.loop !20

for.end29:                                        ; preds = %for.cond1
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %29 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end32:                                        ; preds = %for.cond
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
