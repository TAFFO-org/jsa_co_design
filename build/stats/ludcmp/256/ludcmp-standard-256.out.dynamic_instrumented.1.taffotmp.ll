; ModuleID = './sources/ludcmp.c'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_b_MIN,VAR_b_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [53 x i8] c"target('x') scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata"

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
  %B = alloca [20 x [20 x float]], align 16
  %b = alloca [20 x float], align 16
  %x = alloca [20 x float], align 16
  %y = alloca [20 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 166, i8* null)
  %B2 = bitcast [20 x [20 x float]]* %B to i8*
  call void @llvm.var.annotation(i8* %B2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 167, i8* null)
  %b3 = bitcast [20 x float]* %b to i8*
  call void @llvm.var.annotation(i8* %b3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 168, i8* null)
  %x4 = bitcast [20 x float]* %x to i8*
  call void @llvm.var.annotation(i8* %x4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 169, i8* null)
  %y5 = bitcast [20 x float]* %y to i8*
  call void @llvm.var.annotation(i8* %y5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 170, i8* null)
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @init_array(i32 noundef %0, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9)
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %1 = bitcast [20 x float]* %arraydecay10 to float*
  call void @scale_2d(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 256)
  %arraydecay11 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 0
  %2 = bitcast [20 x float]* %arraydecay11 to float*
  call void @scale_2d(i32 noundef 20, i32 noundef 20, float* noundef %2, i32 noundef 256)
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 256)
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 256)
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 256)
  call void @timer_start()
  %3 = load i32, i32* %n, align 4
  %arraydecay15 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @kernel_ludcmp(i32 noundef %3, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %8 to i64
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i64 0, i64 %idxprom19
  store float %7, float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %B.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store [20 x float]* %B, [20 x float]** %B.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 37, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* null)
  %fn3 = bitcast float* %fn to i8*
  call void @llvm.var.annotation(i8* %fn3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 39, i8* null)
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %x.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %5 = load float*, float** %y.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds float, float* %5, i64 %idxprom5
  store float 0.000000e+00, float* %arrayidx6, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %conv7 = sitofp i32 %add to float
  %8 = load float, float* %fn, align 4
  %div = fdiv float %conv7, %8
  %conv8 = fpext float %div to double
  %div9 = fdiv double %conv8, 2.000000e+00
  %add10 = fadd double %div9, 4.000000e+00
  %conv11 = fptrunc double %add10 to float
  %9 = load float*, float** %b.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds float, float* %9, i64 %idxprom12
  store float %conv11, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body17, label %for.end51

for.body17:                                       ; preds = %for.cond14
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body17
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %14, %15
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %16 = load i32, i32* %j, align 4
  %sub = sub nsw i32 0, %16
  %17 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %17
  %conv22 = sitofp i32 %rem to float
  %18 = load i32, i32* %n.addr, align 4
  %conv23 = sitofp i32 %18 to float
  %div24 = fdiv float %conv22, %conv23
  %add25 = fadd float %div24, 1.000000e+00
  %19 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %19, i64 %idxprom26
  %21 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %add25, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %22 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %22, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !16

for.end32:                                        ; preds = %for.cond18
  %23 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %23, 1
  store i32 %add33, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end32
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp slt i32 %24, %25
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond34
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 %idxprom38
  %28 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i64 0, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %29 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %29, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond34, !llvm.loop !17

for.end44:                                        ; preds = %for.cond34
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %30, i64 %idxprom45
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i64 0, i64 %idxprom47
  store float 1.000000e+00, float* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.end44
  %33 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond14, !llvm.loop !18

for.end51:                                        ; preds = %for.cond14
  store i32 0, i32* %r, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %for.end51
  %34 = load i32, i32* %r, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp53 = icmp slt i32 %34, %35
  br i1 %cmp53, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond52
  store i32 0, i32* %s, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.body55
  %36 = load i32, i32* %s, align 4
  %37 = load i32, i32* %n.addr, align 4
  %cmp57 = icmp slt i32 %36, %37
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %38 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %39 = load i32, i32* %r, align 4
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %38, i64 %idxprom60
  %40 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i64 0, i64 %idxprom62
  store float 0.000000e+00, float* %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %41 = load i32, i32* %s, align 4
  %inc65 = add nsw i32 %41, 1
  store i32 %inc65, i32* %s, align 4
  br label %for.cond56, !llvm.loop !19

for.end66:                                        ; preds = %for.cond56
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %42 = load i32, i32* %r, align 4
  %inc68 = add nsw i32 %42, 1
  store i32 %inc68, i32* %r, align 4
  br label %for.cond52, !llvm.loop !20

for.end69:                                        ; preds = %for.cond52
  store i32 0, i32* %t, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %43 = load i32, i32* %t, align 4
  %44 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %43, %44
  br i1 %cmp71, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc98, %for.body73
  %45 = load i32, i32* %r, align 4
  %46 = load i32, i32* %n.addr, align 4
  %cmp75 = icmp slt i32 %45, %46
  br i1 %cmp75, label %for.body77, label %for.end100

for.body77:                                       ; preds = %for.cond74
  store i32 0, i32* %s, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc95, %for.body77
  %47 = load i32, i32* %s, align 4
  %48 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp slt i32 %47, %48
  br i1 %cmp79, label %for.body81, label %for.end97

for.body81:                                       ; preds = %for.cond78
  %49 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %50 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %50 to i64
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* %49, i64 %idxprom82
  %51 = load i32, i32* %t, align 4
  %idxprom84 = sext i32 %51 to i64
  %arrayidx85 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx83, i64 0, i64 %idxprom84
  %52 = load float, float* %arrayidx85, align 4
  %53 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %54 = load i32, i32* %s, align 4
  %idxprom86 = sext i32 %54 to i64
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* %53, i64 %idxprom86
  %55 = load i32, i32* %t, align 4
  %idxprom88 = sext i32 %55 to i64
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx87, i64 0, i64 %idxprom88
  %56 = load float, float* %arrayidx89, align 4
  %mul = fmul float %52, %56
  %57 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %58 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %58 to i64
  %arrayidx91 = getelementptr inbounds [20 x float], [20 x float]* %57, i64 %idxprom90
  %59 = load i32, i32* %s, align 4
  %idxprom92 = sext i32 %59 to i64
  %arrayidx93 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx91, i64 0, i64 %idxprom92
  %60 = load float, float* %arrayidx93, align 4
  %add94 = fadd float %60, %mul
  store float %add94, float* %arrayidx93, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body81
  %61 = load i32, i32* %s, align 4
  %inc96 = add nsw i32 %61, 1
  store i32 %inc96, i32* %s, align 4
  br label %for.cond78, !llvm.loop !21

for.end97:                                        ; preds = %for.cond78
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %62 = load i32, i32* %r, align 4
  %inc99 = add nsw i32 %62, 1
  store i32 %inc99, i32* %r, align 4
  br label %for.cond74, !llvm.loop !22

for.end100:                                       ; preds = %for.cond74
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %63 = load i32, i32* %t, align 4
  %inc102 = add nsw i32 %63, 1
  store i32 %inc102, i32* %t, align 4
  br label %for.cond70, !llvm.loop !23

for.end103:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.end103
  %64 = load i32, i32* %r, align 4
  %65 = load i32, i32* %n.addr, align 4
  %cmp105 = icmp slt i32 %64, %65
  br i1 %cmp105, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  store i32 0, i32* %s, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc120, %for.body107
  %66 = load i32, i32* %s, align 4
  %67 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp slt i32 %66, %67
  br i1 %cmp109, label %for.body111, label %for.end122

for.body111:                                      ; preds = %for.cond108
  %68 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %69 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %69 to i64
  %arrayidx113 = getelementptr inbounds [20 x float], [20 x float]* %68, i64 %idxprom112
  %70 = load i32, i32* %s, align 4
  %idxprom114 = sext i32 %70 to i64
  %arrayidx115 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx113, i64 0, i64 %idxprom114
  %71 = load float, float* %arrayidx115, align 4
  %72 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %73 = load i32, i32* %r, align 4
  %idxprom116 = sext i32 %73 to i64
  %arrayidx117 = getelementptr inbounds [20 x float], [20 x float]* %72, i64 %idxprom116
  %74 = load i32, i32* %s, align 4
  %idxprom118 = sext i32 %74 to i64
  %arrayidx119 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float %71, float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body111
  %75 = load i32, i32* %s, align 4
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, i32* %s, align 4
  br label %for.cond108, !llvm.loop !24

for.end122:                                       ; preds = %for.cond108
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %76 = load i32, i32* %r, align 4
  %inc124 = add nsw i32 %76, 1
  store i32 %inc124, i32* %r, align 4
  br label %for.cond104, !llvm.loop !25

for.end125:                                       ; preds = %for.cond104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %w1 = bitcast float* %w to i8*
  call void @llvm.var.annotation(i8* %w1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom5
  %7 = load float, float* %arrayidx6, align 4
  store float %7, float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 %idxprom10
  %12 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i64 0, i64 %idxprom12
  %13 = load float, float* %arrayidx13, align 4
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %14, i64 %idxprom14
  %16 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %17 = load float, float* %arrayidx17, align 4
  %mul = fmul float %13, %17
  %18 = load float, float* %w, align 4
  %sub = fsub float %18, %mul
  store float %sub, float* %w, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !26

for.end:                                          ; preds = %for.cond7
  %20 = load float, float* %w, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom18
  %23 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %24 = load float, float* %arrayidx21, align 4
  %div = fdiv float %20, %24
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %25, i64 %idxprom22
  %27 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %div, float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond2, !llvm.loop !27

for.end28:                                        ; preds = %for.cond2
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc56, %for.end28
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %30, %31
  br i1 %cmp30, label %for.body31, label %for.end58

for.body31:                                       ; preds = %for.cond29
  %32 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %32, i64 %idxprom32
  %34 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %35 = load float, float* %arrayidx35, align 4
  store float %35, float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.body31
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %36, %37
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %39 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %38, i64 %idxprom39
  %40 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx40, i64 0, i64 %idxprom41
  %41 = load float, float* %arrayidx42, align 4
  %42 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %43 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %43 to i64
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %42, i64 %idxprom43
  %44 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %44 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i64 0, i64 %idxprom45
  %45 = load float, float* %arrayidx46, align 4
  %mul47 = fmul float %41, %45
  %46 = load float, float* %w, align 4
  %sub48 = fsub float %46, %mul47
  store float %sub48, float* %w, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38
  %47 = load i32, i32* %k, align 4
  %inc50 = add nsw i32 %47, 1
  store i32 %inc50, i32* %k, align 4
  br label %for.cond36, !llvm.loop !28

for.end51:                                        ; preds = %for.cond36
  %48 = load float, float* %w, align 4
  %49 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %50 to i64
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %49, i64 %idxprom52
  %51 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i64 0, i64 %idxprom54
  store float %48, float* %arrayidx55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end51
  %52 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %52, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond29, !llvm.loop !29

for.end58:                                        ; preds = %for.cond29
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %53 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %53, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end61:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end61
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp63 = icmp slt i32 %54, %55
  br i1 %cmp63, label %for.body64, label %for.end85

for.body64:                                       ; preds = %for.cond62
  %56 = load float*, float** %b.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %57 to i64
  %arrayidx66 = getelementptr inbounds float, float* %56, i64 %idxprom65
  %58 = load float, float* %arrayidx66, align 4
  store float %58, float* %w, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc78, %for.body64
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %59, %60
  br i1 %cmp68, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond67
  %61 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %62 to i64
  %arrayidx71 = getelementptr inbounds [20 x float], [20 x float]* %61, i64 %idxprom70
  %63 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %63 to i64
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx71, i64 0, i64 %idxprom72
  %64 = load float, float* %arrayidx73, align 4
  %65 = load float*, float** %y.addr, align 8
  %66 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %66 to i64
  %arrayidx75 = getelementptr inbounds float, float* %65, i64 %idxprom74
  %67 = load float, float* %arrayidx75, align 4
  %mul76 = fmul float %64, %67
  %68 = load float, float* %w, align 4
  %sub77 = fsub float %68, %mul76
  store float %sub77, float* %w, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body69
  %69 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %69, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond67, !llvm.loop !31

for.end80:                                        ; preds = %for.cond67
  %70 = load float, float* %w, align 4
  %71 = load float*, float** %y.addr, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %72 to i64
  %arrayidx82 = getelementptr inbounds float, float* %71, i64 %idxprom81
  store float %70, float* %arrayidx82, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %for.end80
  %73 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %73, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond62, !llvm.loop !32

for.end85:                                        ; preds = %for.cond62
  %74 = load i32, i32* %n.addr, align 4
  %sub86 = sub nsw i32 %74, 1
  store i32 %sub86, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc113, %for.end85
  %75 = load i32, i32* %i, align 4
  %cmp88 = icmp sge i32 %75, 0
  br i1 %cmp88, label %for.body89, label %for.end114

for.body89:                                       ; preds = %for.cond87
  %76 = load float*, float** %y.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %77 to i64
  %arrayidx91 = getelementptr inbounds float, float* %76, i64 %idxprom90
  %78 = load float, float* %arrayidx91, align 4
  store float %78, float* %w, align 4
  %79 = load i32, i32* %i, align 4
  %add = add nsw i32 %79, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc103, %for.body89
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %80, %81
  br i1 %cmp93, label %for.body94, label %for.end105

for.body94:                                       ; preds = %for.cond92
  %82 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %83 to i64
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %82, i64 %idxprom95
  %84 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %84 to i64
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i64 0, i64 %idxprom97
  %85 = load float, float* %arrayidx98, align 4
  %86 = load float*, float** %x.addr, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %87 to i64
  %arrayidx100 = getelementptr inbounds float, float* %86, i64 %idxprom99
  %88 = load float, float* %arrayidx100, align 4
  %mul101 = fmul float %85, %88
  %89 = load float, float* %w, align 4
  %sub102 = fsub float %89, %mul101
  store float %sub102, float* %w, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body94
  %90 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %90, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond92, !llvm.loop !33

for.end105:                                       ; preds = %for.cond92
  %91 = load float, float* %w, align 4
  %92 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %93 to i64
  %arrayidx107 = getelementptr inbounds [20 x float], [20 x float]* %92, i64 %idxprom106
  %94 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %94 to i64
  %arrayidx109 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx107, i64 0, i64 %idxprom108
  %95 = load float, float* %arrayidx109, align 4
  %div110 = fdiv float %91, %95
  %96 = load float*, float** %x.addr, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %97 to i64
  %arrayidx112 = getelementptr inbounds float, float* %96, i64 %idxprom111
  store float %div110, float* %arrayidx112, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.end105
  %98 = load i32, i32* %i, align 4
  %dec = add nsw i32 %98, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond87, !llvm.loop !34

for.end114:                                       ; preds = %for.cond87
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
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
