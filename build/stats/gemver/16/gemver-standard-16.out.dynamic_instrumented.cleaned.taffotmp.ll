; ModuleID = './build/stats/gemver/16/gemver-standard-16.out.dynamic_instrumented.1.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_u1_MIN,VAR_u1_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_v1_MIN,VAR_v1_MAX) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_u2_MIN,VAR_u2_MAX) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_v2_MIN,VAR_v2_MAX) final)\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [53 x i8] c"target('w') scalar(range(VAR_w_MIN,VAR_w_MAX) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_z_MIN,VAR_z_MAX) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 16
@w_float = dso_local global [20 x float] zeroinitializer, align 16
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

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
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %A = alloca [20 x [20 x float]], align 16
  %u1 = alloca [20 x float], align 16
  %v1 = alloca [20 x float], align 16
  %u2 = alloca [20 x float], align 16
  %v2 = alloca [20 x float], align 16
  %w = alloca [20 x float], align 16
  %x = alloca [20 x float], align 16
  %y = alloca [20 x float], align 16
  %z = alloca [20 x float], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %A3 = bitcast [20 x [20 x float]]* %A to i8*
  %u14 = bitcast [20 x float]* %u1 to i8*
  %v15 = bitcast [20 x float]* %v1 to i8*
  %u26 = bitcast [20 x float]* %u2 to i8*
  %v27 = bitcast [20 x float]* %v2 to i8*
  %w8 = bitcast [20 x float]* %w to i8*
  %x9 = bitcast [20 x float]* %x to i8*
  %y10 = bitcast [20 x float]* %y to i8*
  %z11 = bitcast [20 x float]* %z to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @init_array(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19)
  call void @scale_scalar(float* noundef %alpha, i32 noundef 16)
  call void @scale_scalar(float* noundef %beta, i32 noundef 16)
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %1 = bitcast [20 x float]* %arraydecay20 to float*
  call void @scale_2d(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 16)
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay21, i32 noundef 16)
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay22, i32 noundef 16)
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay23, i32 noundef 16)
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay24, i32 noundef 16)
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay25, i32 noundef 16)
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay26, i32 noundef 16)
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay27, i32 noundef 16)
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @scale_1d(i32 noundef 20, float* noundef %arraydecay28, i32 noundef 16)
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %3 = load float, float* %alpha, align 4
  %4 = load float, float* %beta, align 4
  %arraydecay29 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  %arraydecay32 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @kernel_gemver(i32 noundef %2, float noundef %3, float noundef %4, [20 x float]* noundef %arraydecay29, float* noundef %arraydecay30, float* noundef %arraydecay31, float* noundef %arraydecay32, float* noundef %arraydecay33, float* noundef %arraydecay34, float* noundef %arraydecay35, float* noundef %arraydecay36, float* noundef %arraydecay37)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %9 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i64 0, i64 %idxprom38
  store float %8, float* %arrayidx39, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %10 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 %idxprom40
  %11 = load float, float* %arrayidx41, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %12 to i64
  %arrayidx43 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i64 0, i64 %idxprom42
  store float %11, float* %arrayidx43, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n, align 4
  %cmp45 = icmp slt i32 %13, %14
  br i1 %cmp45, label %for.body46, label %for.end

for.body46:                                       ; preds = %for.cond44
  %15 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %15 to i64
  %arrayidx48 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 %idxprom47
  %16 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %16 to i64
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx48, i64 0, i64 %idxprom49
  %17 = load float, float* %arrayidx50, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %18 to i64
  %arrayidx52 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i64 0, i64 %idxprom51
  %19 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %19 to i64
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %17, float* %arrayidx54, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body46
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond44, !llvm.loop !14

for.end:                                          ; preds = %for.cond44
  br label %for.inc55

for.inc55:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %21, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end57:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [20 x float]*, align 8
  %u1.addr = alloca float*, align 8
  %v1.addr = alloca float*, align 8
  %u2.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %w.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %u1, float** %u1.addr, align 8
  store float* %v1, float** %v1.addr, align 8
  store float* %u2, float** %u2.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store float* %w, float** %w.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %z, float** %z.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  %fn3 = bitcast float* %fn to i8*
  %2 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %2 to float
  store float %conv, float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %conv5 = sitofp i32 %5 to float
  %6 = load float, float* %fn, align 4
  %div = fdiv float %conv5, %6
  %7 = load float*, float** %u1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %conv6 = sitofp i32 %add to float
  %10 = load float, float* %fn, align 4
  %div7 = fdiv float %conv6, %10
  %conv8 = fpext float %div7 to double
  %div9 = fdiv double %conv8, 2.000000e+00
  %conv10 = fptrunc double %div9 to float
  %11 = load float*, float** %u2.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds float, float* %11, i64 %idxprom11
  store float %conv10, float* %arrayidx12, align 4
  %13 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %13, 1
  %conv14 = sitofp i32 %add13 to float
  %14 = load float, float* %fn, align 4
  %div15 = fdiv float %conv14, %14
  %conv16 = fpext float %div15 to double
  %div17 = fdiv double %conv16, 4.000000e+00
  %conv18 = fptrunc double %div17 to float
  %15 = load float*, float** %v1.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds float, float* %15, i64 %idxprom19
  store float %conv18, float* %arrayidx20, align 4
  %17 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %17, 1
  %conv22 = sitofp i32 %add21 to float
  %18 = load float, float* %fn, align 4
  %div23 = fdiv float %conv22, %18
  %conv24 = fpext float %div23 to double
  %div25 = fdiv double %conv24, 6.000000e+00
  %conv26 = fptrunc double %div25 to float
  %19 = load float*, float** %v2.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds float, float* %19, i64 %idxprom27
  store float %conv26, float* %arrayidx28, align 4
  %21 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %21, 1
  %conv30 = sitofp i32 %add29 to float
  %22 = load float, float* %fn, align 4
  %div31 = fdiv float %conv30, %22
  %conv32 = fpext float %div31 to double
  %div33 = fdiv double %conv32, 8.000000e+00
  %conv34 = fptrunc double %div33 to float
  %23 = load float*, float** %y.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds float, float* %23, i64 %idxprom35
  store float %conv34, float* %arrayidx36, align 4
  %25 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %25, 1
  %conv38 = sitofp i32 %add37 to float
  %26 = load float, float* %fn, align 4
  %div39 = fdiv float %conv38, %26
  %conv40 = fpext float %div39 to double
  %div41 = fdiv double %conv40, 9.000000e+00
  %conv42 = fptrunc double %div41 to float
  %27 = load float*, float** %z.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds float, float* %27, i64 %idxprom43
  store float %conv42, float* %arrayidx44, align 4
  %29 = load float*, float** %x.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds float, float* %29, i64 %idxprom45
  store float 0.000000e+00, float* %arrayidx46, align 4
  %31 = load float*, float** %w.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds float, float* %31, i64 %idxprom47
  store float 0.000000e+00, float* %arrayidx48, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %33, %34
  br i1 %cmp50, label %for.body52, label %for.end

for.body52:                                       ; preds = %for.cond49
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %35, %36
  %37 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %37
  %conv53 = sitofp i32 %rem to float
  %38 = load i32, i32* %n.addr, align 4
  %conv54 = sitofp i32 %38 to float
  %div55 = fdiv float %conv53, %conv54
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %39, i64 %idxprom56
  %41 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx57, i64 0, i64 %idxprom58
  store float %div55, float* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body52
  %42 = load i32, i32* %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond49, !llvm.loop !16

for.end:                                          ; preds = %for.cond49
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %43, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [20 x float]*, align 8
  %u1.addr = alloca float*, align 8
  %v1.addr = alloca float*, align 8
  %u2.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %w.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %u1, float** %u1.addr, align 8
  store float* %v1, float** %v1.addr, align 8
  store float* %u2, float** %u2.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store float* %w, float** %w.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %z, float** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load float, float* %arrayidx5, align 4
  %8 = load float*, float** %u1.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %11 = load float*, float** %v1.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds float, float* %11, i64 %idxprom8
  %13 = load float, float* %arrayidx9, align 4
  %mul = fmul float %10, %13
  %add = fadd float %7, %mul
  %14 = load float*, float** %u2.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds float, float* %14, i64 %idxprom10
  %16 = load float, float* %arrayidx11, align 4
  %17 = load float*, float** %v2.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds float, float* %17, i64 %idxprom12
  %19 = load float, float* %arrayidx13, align 4
  %mul14 = fmul float %16, %19
  %add15 = fadd float %add, %mul14
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %20, i64 %idxprom16
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %add15, float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc45, %for.end22
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body25, label %for.end47

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc42, %for.body25
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %27, %28
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond26
  %29 = load float*, float** %x.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds float, float* %29, i64 %idxprom29
  %31 = load float, float* %arrayidx30, align 4
  %32 = load float, float* %beta.addr, align 4
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom31
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i64 0, i64 %idxprom33
  %36 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %32, %36
  %37 = load float*, float** %y.addr, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds float, float* %37, i64 %idxprom36
  %39 = load float, float* %arrayidx37, align 4
  %mul38 = fmul float %mul35, %39
  %add39 = fadd float %31, %mul38
  %40 = load float*, float** %x.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds float, float* %40, i64 %idxprom40
  store float %add39, float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28
  %42 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %42, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond26, !llvm.loop !20

for.end44:                                        ; preds = %for.cond26
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %43 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %43, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond23, !llvm.loop !21

for.end47:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %44, %45
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %46 = load float*, float** %x.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %47 to i64
  %arrayidx52 = getelementptr inbounds float, float* %46, i64 %idxprom51
  %48 = load float, float* %arrayidx52, align 4
  %49 = load float*, float** %z.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %50 to i64
  %arrayidx54 = getelementptr inbounds float, float* %49, i64 %idxprom53
  %51 = load float, float* %arrayidx54, align 4
  %add55 = fadd float %48, %51
  %52 = load float*, float** %x.addr, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %53 to i64
  %arrayidx57 = getelementptr inbounds float, float* %52, i64 %idxprom56
  store float %add55, float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %54 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %54, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond48, !llvm.loop !22

for.end60:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc83, %for.end60
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp slt i32 %55, %56
  br i1 %cmp62, label %for.body63, label %for.end85

for.body63:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc80, %for.body63
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %57, %58
  br i1 %cmp65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond64
  %59 = load float*, float** %w.addr, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %60 to i64
  %arrayidx68 = getelementptr inbounds float, float* %59, i64 %idxprom67
  %61 = load float, float* %arrayidx68, align 4
  %62 = load float, float* %alpha.addr, align 4
  %63 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %64 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %63, i64 %idxprom69
  %65 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %65 to i64
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx70, i64 0, i64 %idxprom71
  %66 = load float, float* %arrayidx72, align 4
  %mul73 = fmul float %62, %66
  %67 = load float*, float** %x.addr, align 8
  %68 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %68 to i64
  %arrayidx75 = getelementptr inbounds float, float* %67, i64 %idxprom74
  %69 = load float, float* %arrayidx75, align 4
  %mul76 = fmul float %mul73, %69
  %add77 = fadd float %61, %mul76
  %70 = load float*, float** %w.addr, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %71 to i64
  %arrayidx79 = getelementptr inbounds float, float* %70, i64 %idxprom78
  store float %add77, float* %arrayidx79, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66
  %72 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %72, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond64, !llvm.loop !23

for.end82:                                        ; preds = %for.cond64
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %73 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %73, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond61, !llvm.loop !24

for.end85:                                        ; preds = %for.cond61
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
