; ModuleID = './sources/mvt.c'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/mvt.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [56 x i8] c"target('x1') scalar(range(VAR_x1_MIN,VAR_x1_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [56 x i8] c"target('x2') scalar(range(VAR_x2_MIN,VAR_x2_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [45 x i8] c"scalar(range(VAR_y_1_MIN,VAR_y_1_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [45 x i8] c"scalar(range(VAR_y_2_MIN,VAR_y_2_MAX) final)\00", section "llvm.metadata"
@x1_float = dso_local global [20 x float] zeroinitializer, align 16
@x2_float = dso_local global [20 x float] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"

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
  %x1 = alloca [20 x float], align 16
  %x2 = alloca [20 x float], align 16
  %y_1 = alloca [20 x float], align 16
  %y_2 = alloca [20 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 113, i8* null)
  %x12 = bitcast [20 x float]* %x1 to i8*
  call void @llvm.var.annotation(i8* %x12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 114, i8* null)
  %x23 = bitcast [20 x float]* %x2 to i8*
  call void @llvm.var.annotation(i8* %x23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 115, i8* null)
  %y_14 = bitcast [20 x float]* %y_1 to i8*
  call void @llvm.var.annotation(i8* %y_14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 116, i8* null)
  %y_25 = bitcast [20 x float]* %y_2 to i8*
  call void @llvm.var.annotation(i8* %y_25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 117, i8* null)
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @init_array(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9)
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %1 = bitcast [20 x float]* %arraydecay10 to float*
  call void @scale_2d(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 16)
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 16)
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 16)
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 16)
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 16)
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @kernel_mvt(i32 noundef %2, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, [20 x float]* noundef %arraydecay19)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %7 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i64 0, i64 %idxprom20
  store float %6, float* %arrayidx21, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 %idxprom22
  %9 = load float, float* %arrayidx23, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i64 0, i64 %idxprom24
  store float %9, float* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 8
  %x2.addr = alloca float*, align 8
  %y_1.addr = alloca float*, align 8
  %y_2.addr = alloca float*, align 8
  %A.addr = alloca [20 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 8
  store float* %x2, float** %x2.addr, align 8
  store float* %y_1, float** %y_1.addr, align 8
  store float* %y_2, float** %y_2.addr, align 8
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 39, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %2, %3
  %conv = sitofp i32 %rem to float
  %4 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3
  %5 = load float*, float** %x1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8
  %conv5 = sitofp i32 %rem4 to float
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div7 = fdiv float %conv5, %conv6
  %10 = load float*, float** %x2.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom8
  store float %div7, float* %arrayidx9, align 4
  %12 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %12, 3
  %13 = load i32, i32* %n.addr, align 4
  %rem11 = srem i32 %add10, %13
  %conv12 = sitofp i32 %rem11 to float
  %14 = load i32, i32* %n.addr, align 4
  %conv13 = sitofp i32 %14 to float
  %div14 = fdiv float %conv12, %conv13
  %15 = load float*, float** %y_1.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  store float %div14, float* %arrayidx16, align 4
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 4
  %18 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %18
  %conv19 = sitofp i32 %rem18 to float
  %19 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %19 to float
  %div21 = fdiv float %conv19, %conv20
  %20 = load float*, float** %y_2.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds float, float* %20, i64 %idxprom22
  store float %div21, float* %arrayidx23, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp slt i32 %22, %23
  br i1 %cmp25, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond24
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %24, %25
  %26 = load i32, i32* %n.addr, align 4
  %rem28 = srem i32 %mul, %26
  %conv29 = sitofp i32 %rem28 to float
  %27 = load i32, i32* %n.addr, align 4
  %conv30 = sitofp i32 %27 to float
  %div31 = fdiv float %conv29, %conv30
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %28, i64 %idxprom32
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  store float %div31, float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond24, !llvm.loop !15

for.end:                                          ; preds = %for.cond24
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 8
  %x2.addr = alloca float*, align 8
  %y_1.addr = alloca float*, align 8
  %y_2.addr = alloca float*, align 8
  %A.addr = alloca [20 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 8
  store float* %x2, float** %x2.addr, align 8
  store float* %y_1, float** %y_1.addr, align 8
  store float* %y_2, float** %y_2.addr, align 8
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float*, float** %x1.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %7, i64 %idxprom4
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx5, i64 0, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %11 = load float*, float** %y_1.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds float, float* %11, i64 %idxprom8
  %13 = load float, float* %arrayidx9, align 4
  %mul = fmul float %10, %13
  %add = fadd float %6, %mul
  %14 = load float*, float** %x1.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds float, float* %14, i64 %idxprom10
  store float %add, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end14
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond15
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body17
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %n.addr, align 4
  %cmp19 = icmp slt i32 %20, %21
  br i1 %cmp19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %22 = load float*, float** %x2.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds float, float* %22, i64 %idxprom21
  %24 = load float, float* %arrayidx22, align 4
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %25, i64 %idxprom23
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i64 0, i64 %idxprom25
  %28 = load float, float* %arrayidx26, align 4
  %29 = load float*, float** %y_2.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds float, float* %29, i64 %idxprom27
  %31 = load float, float* %arrayidx28, align 4
  %mul29 = fmul float %28, %31
  %add30 = fadd float %24, %mul29
  %32 = load float*, float** %x2.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds float, float* %32, i64 %idxprom31
  store float %add30, float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %34 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond18, !llvm.loop !19

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %35 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond15, !llvm.loop !20

for.end38:                                        ; preds = %for.cond15
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
