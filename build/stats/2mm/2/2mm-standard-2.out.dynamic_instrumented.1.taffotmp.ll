; ModuleID = './sources/2mm.c'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/2mm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [45 x i8] c"scalar(range(VAR_tmp_MIN,VAR_tmp_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [53 x i8] c"target('D') scalar(range(VAR_D_MIN,VAR_D_MAX) final)\00", section "llvm.metadata"
@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 12) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 14) final)\00", section "llvm.metadata"

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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %tmp = alloca [8 x [10 x float]], align 16
  %A = alloca [8 x [12 x float]], align 16
  %B = alloca [12 x [10 x float]], align 16
  %C = alloca [10 x [14 x float]], align 16
  %D = alloca [8 x [14 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 8, i32* %ni, align 4
  store i32 10, i32* %nj, align 4
  store i32 12, i32* %nk, align 4
  store i32 14, i32* %nl, align 4
  %alpha1 = bitcast float* %alpha to i8*
  call void @llvm.var.annotation(i8* %alpha1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 129, i8* null)
  %beta2 = bitcast float* %beta to i8*
  call void @llvm.var.annotation(i8* %beta2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 130, i8* null)
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*
  call void @llvm.var.annotation(i8* %tmp3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 131, i8* null)
  %A4 = bitcast [8 x [12 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 132, i8* null)
  %B5 = bitcast [12 x [10 x float]]* %B to i8*
  call void @llvm.var.annotation(i8* %B5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* null)
  %C6 = bitcast [10 x [14 x float]]* %C to i8*
  call void @llvm.var.annotation(i8* %C6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 134, i8* null)
  %D7 = bitcast [8 x [14 x float]]* %D to i8*
  call void @llvm.var.annotation(i8* %D7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 135, i8* null)
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11)
  call void @scale_scalar(float* noundef %alpha, i32 noundef 2)
  call void @scale_scalar(float* noundef %beta, i32 noundef 2)
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %4 = bitcast [12 x float]* %arraydecay12 to float*
  call void @scale_2d(i32 noundef 8, i32 noundef 12, float* noundef %4, i32 noundef 2)
  %arraydecay13 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %5 = bitcast [10 x float]* %arraydecay13 to float*
  call void @scale_2d(i32 noundef 12, i32 noundef 10, float* noundef %5, i32 noundef 2)
  %arraydecay14 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %6 = bitcast [14 x float]* %arraydecay14 to float*
  call void @scale_2d(i32 noundef 10, i32 noundef 14, float* noundef %6, i32 noundef 2)
  %arraydecay15 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  %7 = bitcast [14 x float]* %arraydecay15 to float*
  call void @scale_2d(i32 noundef 8, i32 noundef 14, float* noundef %7, i32 noundef 2)
  %arraydecay16 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  %8 = bitcast [10 x float]* %arraydecay16 to float*
  call void @scale_2d(i32 noundef 8, i32 noundef 10, float* noundef %8, i32 noundef 2)
  call void @timer_start()
  %9 = load i32, i32* %ni, align 4
  %10 = load i32, i32* %nj, align 4
  %11 = load i32, i32* %nk, align 4
  %12 = load i32, i32* %nl, align 4
  %13 = load float, float* %alpha, align 4
  %14 = load float, float* %beta, align 4
  %arraydecay17 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  call void @kernel_2mm(i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, float noundef %13, float noundef %14, [10 x float]* noundef %arraydecay17, [12 x float]* noundef %arraydecay18, [10 x float]* noundef %arraydecay19, [14 x float]* noundef %arraydecay20, [14 x float]* noundef %arraydecay21)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nl, align 4
  %cmp23 = icmp slt i32 %17, %18
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 %idxprom
  %20 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i64 0, i64 %idxprom25
  %21 = load float, float* %arrayidx26, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i64 0, i64 %idxprom27
  %23 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx28, i64 0, i64 %idxprom29
  store float %21, float* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond22, !llvm.loop !14

for.end:                                          ; preds = %for.cond22
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end33:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [12 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [14 x float]*, align 8
  %tmp.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [12 x float]* %A, [12 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [14 x float]* %D, [14 x float]** %D.addr, align 8
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 8
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 40, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 41, i8* null)
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8
  %conv = sitofp i32 %rem to float
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %div, float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !16

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %nk.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body15, label %for.end35

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nj.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond16
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %20, 1
  %mul21 = mul nsw i32 %19, %add20
  %21 = load i32, i32* %nj.addr, align 4
  %rem22 = srem i32 %mul21, %21
  %conv23 = sitofp i32 %rem22 to float
  %22 = load i32, i32* %nj.addr, align 4
  %conv24 = sitofp i32 %22 to float
  %div25 = fdiv float %conv23, %conv24
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [10 x float], [10 x float]* %23, i64 %idxprom26
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %div25, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %26 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !18

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %27 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !19

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc58, %for.end35
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %nj.addr, align 4
  %cmp37 = icmp slt i32 %28, %29
  br i1 %cmp37, label %for.body39, label %for.end60

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc55, %for.body39
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %nl.addr, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body43, label %for.end57

for.body43:                                       ; preds = %for.cond40
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %33, 3
  %mul45 = mul nsw i32 %32, %add44
  %add46 = add nsw i32 %mul45, 1
  %34 = load i32, i32* %nl.addr, align 4
  %rem47 = srem i32 %add46, %34
  %conv48 = sitofp i32 %rem47 to float
  %35 = load i32, i32* %nl.addr, align 4
  %conv49 = sitofp i32 %35 to float
  %div50 = fdiv float %conv48, %conv49
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %36, i64 %idxprom51
  %38 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %div50, float* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body43
  %39 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond40, !llvm.loop !20

for.end57:                                        ; preds = %for.cond40
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %40 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %40, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond36, !llvm.loop !21

for.end60:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc82, %for.end60
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %ni.addr, align 4
  %cmp62 = icmp slt i32 %41, %42
  br i1 %cmp62, label %for.body64, label %for.end84

for.body64:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc79, %for.body64
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %nl.addr, align 4
  %cmp66 = icmp slt i32 %43, %44
  br i1 %cmp66, label %for.body68, label %for.end81

for.body68:                                       ; preds = %for.cond65
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %j, align 4
  %add69 = add nsw i32 %46, 2
  %mul70 = mul nsw i32 %45, %add69
  %47 = load i32, i32* %nk.addr, align 4
  %rem71 = srem i32 %mul70, %47
  %conv72 = sitofp i32 %rem71 to float
  %48 = load i32, i32* %nk.addr, align 4
  %conv73 = sitofp i32 %48 to float
  %div74 = fdiv float %conv72, %conv73
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %50 to i64
  %arrayidx76 = getelementptr inbounds [14 x float], [14 x float]* %49, i64 %idxprom75
  %51 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx76, i64 0, i64 %idxprom77
  store float %div74, float* %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body68
  %52 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond65, !llvm.loop !22

for.end81:                                        ; preds = %for.cond65
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %53 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %53, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond61, !llvm.loop !23

for.end84:                                        ; preds = %for.cond61
  store i32 0, i32* %i, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %for.end84
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %ni.addr, align 4
  %cmp86 = icmp slt i32 %54, %55
  br i1 %cmp86, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond85
  store i32 0, i32* %j, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc97, %for.body88
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %nj.addr, align 4
  %cmp90 = icmp slt i32 %56, %57
  br i1 %cmp90, label %for.body92, label %for.end99

for.body92:                                       ; preds = %for.cond89
  %58 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %59 to i64
  %arrayidx94 = getelementptr inbounds [10 x float], [10 x float]* %58, i64 %idxprom93
  %60 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %60 to i64
  %arrayidx96 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx94, i64 0, i64 %idxprom95
  store float 0.000000e+00, float* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body92
  %61 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %61, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond89, !llvm.loop !24

for.end99:                                        ; preds = %for.cond89
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %62 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %62, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond85, !llvm.loop !25

for.end102:                                       ; preds = %for.cond85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %tmp.addr = alloca [10 x float]*, align 8
  %A.addr = alloca [12 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [14 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 8
  store [12 x float]* %A, [12 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [14 x float]* %D, [14 x float]** %D.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end24

for.body3:                                        ; preds = %for.cond1
  %4 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %9 = load float, float* %alpha.addr, align 4
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %13 = load float, float* %arrayidx12, align 4
  %mul = fmul float %9, %13
  %14 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %14, i64 %idxprom13
  %16 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %17 = load float, float* %arrayidx16, align 4
  %mul17 = fmul float %mul, %17
  %18 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [10 x float], [10 x float]* %18, i64 %idxprom18
  %20 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %21 = load float, float* %arrayidx21, align 4
  %add = fadd float %21, %mul17
  store float %add, float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !26

for.end:                                          ; preds = %for.cond6
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond1, !llvm.loop !27

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %24 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc62, %for.end27
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %ni.addr, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %for.body30, label %for.end64

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc59, %for.body30
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %nl.addr, align 4
  %cmp32 = icmp slt i32 %27, %28
  br i1 %cmp32, label %for.body33, label %for.end61

for.body33:                                       ; preds = %for.cond31
  %29 = load float, float* %beta.addr, align 4
  %30 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %30, i64 %idxprom34
  %32 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i64 0, i64 %idxprom36
  %33 = load float, float* %arrayidx37, align 4
  %mul38 = fmul float %33, %29
  store float %mul38, float* %arrayidx37, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.body33
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %34, %35
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %36 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds [10 x float], [10 x float]* %36, i64 %idxprom42
  %38 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx43, i64 0, i64 %idxprom44
  %39 = load float, float* %arrayidx45, align 4
  %40 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %41 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds [14 x float], [14 x float]* %40, i64 %idxprom46
  %42 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx47, i64 0, i64 %idxprom48
  %43 = load float, float* %arrayidx49, align 4
  %mul50 = fmul float %39, %43
  %44 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %44, i64 %idxprom51
  %46 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %46 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %47 = load float, float* %arrayidx54, align 4
  %add55 = fadd float %47, %mul50
  store float %add55, float* %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41
  %48 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %48, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond39, !llvm.loop !29

for.end58:                                        ; preds = %for.cond39
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %49 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %49, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond31, !llvm.loop !30

for.end61:                                        ; preds = %for.cond31
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %50 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %50, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond28, !llvm.loop !31

for.end64:                                        ; preds = %for.cond28
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
