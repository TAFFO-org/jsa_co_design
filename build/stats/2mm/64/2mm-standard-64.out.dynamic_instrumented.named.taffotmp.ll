; ModuleID = './build/stats/2mm/64/2mm-standard-64.out.dynamic_instrumented.taffoinit.taffotmp.ll'
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
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.funinfo !6 !taffo.initweight !7 {
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
  %"a::var0" = load float, float* %val.addr, align 4
  %"a::var1" = fdiv float %"a::var0", 1.000000e+01
  store float %"a::var1", float* %x, align 4
  store float 0x3F50624DE0000000, float* %min_tol, align 4
  store float 0.000000e+00, float* %constZeroVal, align 4
  store float 2.000000e+00, float* %constTwoVal, align 4
  store i32 0, i32* %flag, align 4
  %"a::var2" = load float, float* %val.addr, align 4
  %"a::var3" = load float, float* %constZeroVal, align 4
  %cmp = fcmp oeq float %"a::var2", %"a::var3"
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load float, float* %constZeroVal, align 4
  store float %0, float* %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %3 = load float, float* %val.addr, align 4
  %"a::var4" = load float, float* %x, align 4
  %"a::var5" = load float, float* %x, align 4
  %"a::var6" = fmul float %"a::var4", %"a::var5"
  %"a::var7" = fsub float %3, %"a::var6"
  %"a::var8" = load float, float* %constTwoVal, align 4
  %"a::var9" = load float, float* %x, align 4
  %"a::var10" = fmul float %"a::var8", %"a::var9"
  %"a::var11" = fdiv float %"a::var7", %"a::var10"
  store float %"a::var11", float* %dx, align 4
  %"a::var12" = load float, float* %x, align 4
  %"a::var13" = load float, float* %dx, align 4
  %"a::var14" = fadd float %"a::var12", %"a::var13"
  store float %"a::var14", float* %x, align 4
  %"a::var15" = load float, float* %val.addr, align 4
  %"a::var16" = load float, float* %x, align 4
  %"a::var17" = load float, float* %x, align 4
  %"a::var18" = fmul float %"a::var16", %"a::var17"
  %"a::var19" = fsub float %"a::var15", %"a::var18"
  store float %"a::var19", float* %diff, align 4
  %"a::var20" = load float, float* %diff, align 4
  %"a::var21" = load float, float* %constZeroVal, align 4
  %cmp7 = fcmp oge float %"a::var20", %"a::var21"
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %4 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %5 = load float, float* %diff, align 4
  %"a::var22" = fneg float %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %4, %cond.true ], [ %"a::var22", %cond.false ]
  %"a::var23" = load float, float* %min_tol, align 4
  %cmp8 = fcmp ole float %cond, %"a::var23"
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %7 = load float, float* %x, align 4
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 !taffo.equivalentChild !12 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 {
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
  %"a::var24" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %"a::var25" = sitofp i32 %6 to float
  %"a::var26" = fmul float %"a::var24", %"a::var25"
  %7 = load float*, float** %val.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  store float %"a::var26", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.equivalentChild !18 {
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
  %"a::var27" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var28" = sitofp i32 %12 to float
  %"a::var29" = fmul float %"a::var27", %"a::var28"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var29", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !21 !taffo.initweight !22 {
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
  %"a::var30" = load float, float* %arrayidx10, align 4
  %19 = load i32, i32* %factor.addr, align 4
  %"a::var31" = sitofp i32 %19 to float
  %"a::var32" = fmul float %"a::var30", %"a::var31"
  %20 = load float*, float** %val.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = mul nuw i64 %3, %5
  %23 = mul nsw i64 %idxprom11, %22
  %arrayidx12 = getelementptr inbounds float, float* %20, i64 %23
  %24 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = mul nsw i64 %idxprom13, %5
  %arrayidx14 = getelementptr inbounds float, float* %arrayidx12, i64 %25
  %26 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds float, float* %arrayidx14, i64 %idxprom15
  store float %"a::var32", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !23

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !24

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %29 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.funinfo !26 !taffo.initweight !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !26 !taffo.initweight !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.funinfo !10 !taffo.initweight !11 {
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
  %beta2 = bitcast float* %beta to i8*
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*
  %A4 = bitcast [8 x [12 x float]]* %A to i8*
  %B5 = bitcast [12 x [10 x float]]* %B to i8*
  %C6 = bitcast [10 x [14 x float]]* %C to i8*
  %D7 = bitcast [8 x [14 x float]]* %D to i8*
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  call void @init_array.8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.originalCall !27
  call void @scale_scalar.2(float* noundef %alpha, i32 noundef 64), !taffo.originalCall !28
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 64), !taffo.originalCall !28
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %4 = bitcast [12 x float]* %arraydecay12 to float*
  call void @scale_2d.7(i32 noundef 8, i32 noundef 12, float* noundef %4, i32 noundef 64), !taffo.originalCall !29
  %arraydecay13 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %5 = bitcast [10 x float]* %arraydecay13 to float*
  call void @scale_2d.6(i32 noundef 12, i32 noundef 10, float* noundef %5, i32 noundef 64), !taffo.originalCall !29
  %arraydecay14 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %6 = bitcast [14 x float]* %arraydecay14 to float*
  call void @scale_2d.5(i32 noundef 10, i32 noundef 14, float* noundef %6, i32 noundef 64), !taffo.originalCall !29
  %arraydecay15 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  %7 = bitcast [14 x float]* %arraydecay15 to float*
  call void @scale_2d.4(i32 noundef 8, i32 noundef 14, float* noundef %7, i32 noundef 64), !taffo.originalCall !29
  %arraydecay16 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  %8 = bitcast [10 x float]* %arraydecay16 to float*
  call void @scale_2d.3(i32 noundef 8, i32 noundef 10, float* noundef %8, i32 noundef 64), !taffo.originalCall !29
  call void @timer_start()
  %9 = load i32, i32* %ni, align 4
  %10 = load i32, i32* %nj, align 4
  %11 = load i32, i32* %nk, align 4
  %12 = load i32, i32* %nl, align 4
  %"a::var33" = load float, float* %alpha, align 4
  %"a::var34" = load float, float* %beta, align 4
  %arraydecay17 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  call void @kernel_2mm.9(i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, float noundef %"a::var33", float noundef %"a::var34", [10 x float]* noundef %arraydecay17, [12 x float]* noundef %arraydecay18, [10 x float]* noundef %arraydecay19, [14 x float]* noundef %arraydecay20, [14 x float]* noundef %arraydecay21), !taffo.originalCall !30
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %nl, align 4
  %cmp23 = icmp slt i32 %15, %16
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 %idxprom
  %18 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i64 0, i64 %idxprom25
  %"a::var35" = load float, float* %arrayidx26, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i64 0, i64 %idxprom27
  %20 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx28, i64 0, i64 %idxprom29
  store float %"a::var35", float* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond22, !llvm.loop !31

for.end:                                          ; preds = %for.cond22
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end33:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !21 !taffo.initweight !22 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.equivalentChild !35 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var36" = sitofp i32 %rem to float
  %9 = load i32, i32* %ni.addr, align 4
  %"a::var37" = sitofp i32 %9 to float
  %"a::var38" = fdiv float %"a::var36", %"a::var37"
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var38", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !36

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !37

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
  %"a::var39" = sitofp i32 %rem22 to float
  %22 = load i32, i32* %nj.addr, align 4
  %"a::var40" = sitofp i32 %22 to float
  %"a::var41" = fdiv float %"a::var39", %"a::var40"
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [10 x float], [10 x float]* %23, i64 %idxprom26
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var41", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %26 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !38

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %27 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !39

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
  %"a::var42" = sitofp i32 %rem47 to float
  %35 = load i32, i32* %nl.addr, align 4
  %"a::var43" = sitofp i32 %35 to float
  %"a::var44" = fdiv float %"a::var42", %"a::var43"
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %36, i64 %idxprom51
  %38 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %"a::var44", float* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body43
  %39 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond40, !llvm.loop !40

for.end57:                                        ; preds = %for.cond40
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %40 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %40, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond36, !llvm.loop !41

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
  %"a::var45" = sitofp i32 %rem71 to float
  %48 = load i32, i32* %nk.addr, align 4
  %"a::var46" = sitofp i32 %48 to float
  %"a::var47" = fdiv float %"a::var45", %"a::var46"
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %50 to i64
  %arrayidx76 = getelementptr inbounds [14 x float], [14 x float]* %49, i64 %idxprom75
  %51 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx76, i64 0, i64 %idxprom77
  store float %"a::var47", float* %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body68
  %52 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond65, !llvm.loop !42

for.end81:                                        ; preds = %for.cond65
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %53 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %53, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond61, !llvm.loop !43

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
  br label %for.cond89, !llvm.loop !44

for.end99:                                        ; preds = %for.cond89
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %62 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %62, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond85, !llvm.loop !45

for.end102:                                       ; preds = %for.cond85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.equivalentChild !46 {
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
  %"a::var48" = load float, float* %arrayidx12, align 4
  %"a::var49" = fmul float %9, %"a::var48"
  %13 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %13, i64 %idxprom13
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var50" = load float, float* %arrayidx16, align 4
  %"a::var51" = fmul float %"a::var49", %"a::var50"
  %16 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [10 x float], [10 x float]* %16, i64 %idxprom18
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var52" = load float, float* %arrayidx21, align 4
  %"a::var53" = fadd float %"a::var52", %"a::var51"
  store float %"a::var53", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !47

for.end:                                          ; preds = %for.cond6
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond1, !llvm.loop !48

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc62, %for.end27
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %ni.addr, align 4
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body30, label %for.end64

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc59, %for.body30
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %nl.addr, align 4
  %cmp32 = icmp slt i32 %24, %25
  br i1 %cmp32, label %for.body33, label %for.end61

for.body33:                                       ; preds = %for.cond31
  %26 = load float, float* %beta.addr, align 4
  %27 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %27, i64 %idxprom34
  %29 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i64 0, i64 %idxprom36
  %"a::var54" = load float, float* %arrayidx37, align 4
  %"a::var55" = fmul float %"a::var54", %26
  store float %"a::var55", float* %arrayidx37, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.body33
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %30, %31
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %32 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [10 x float], [10 x float]* %32, i64 %idxprom42
  %34 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx43, i64 0, i64 %idxprom44
  %"a::var56" = load float, float* %arrayidx45, align 4
  %35 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [14 x float], [14 x float]* %35, i64 %idxprom46
  %37 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx47, i64 0, i64 %idxprom48
  %"a::var57" = load float, float* %arrayidx49, align 4
  %"a::var58" = fmul float %"a::var56", %"a::var57"
  %38 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %38, i64 %idxprom51
  %40 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %"a::var59" = load float, float* %arrayidx54, align 4
  %"a::var60" = fadd float %"a::var59", %"a::var58"
  store float %"a::var60", float* %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41
  %41 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %41, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond39, !llvm.loop !50

for.end58:                                        ; preds = %for.cond39
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %42 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %42, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond31, !llvm.loop !51

for.end61:                                        ; preds = %for.cond31
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %43 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond28, !llvm.loop !52

for.end64:                                        ; preds = %for.cond28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 !taffo.sourceFunction !28 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 !taffo.sourceFunction !28 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !29 {
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
  %"a::var61" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var62" = sitofp i32 %12 to float
  %"a::var63" = fmul float %"a::var61", %"a::var62"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var63", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !53

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !54

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !29 {
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
  %"a::var64" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var65" = sitofp i32 %12 to float
  %"a::var66" = fmul float %"a::var64", %"a::var65"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var66", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !55

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !56

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !29 {
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
  %"a::var67" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var68" = sitofp i32 %12 to float
  %"a::var69" = fmul float %"a::var67", %"a::var68"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var69", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !57

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !58

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !29 {
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
  %"a::var70" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var71" = sitofp i32 %12 to float
  %"a::var72" = fmul float %"a::var70", %"a::var71"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var72", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !59

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !60

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !29 {
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
  %"a::var73" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var74" = sitofp i32 %12 to float
  %"a::var75" = fmul float %"a::var73", %"a::var74"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var75", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !61

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !62

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.8(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.sourceFunction !27 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var76" = sitofp i32 %rem to float
  %9 = load i32, i32* %ni.addr, align 4
  %"a::var77" = sitofp i32 %9 to float
  %"a::var78" = fdiv float %"a::var76", %"a::var77"
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var78", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !63

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !64

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
  %"a::var79" = sitofp i32 %rem22 to float
  %22 = load i32, i32* %nj.addr, align 4
  %"a::var80" = sitofp i32 %22 to float
  %"a::var81" = fdiv float %"a::var79", %"a::var80"
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [10 x float], [10 x float]* %23, i64 %idxprom26
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var81", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %26 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !65

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %27 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !66

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
  %"a::var82" = sitofp i32 %rem47 to float
  %35 = load i32, i32* %nl.addr, align 4
  %"a::var83" = sitofp i32 %35 to float
  %"a::var84" = fdiv float %"a::var82", %"a::var83"
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %36, i64 %idxprom51
  %38 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %"a::var84", float* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body43
  %39 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond40, !llvm.loop !67

for.end57:                                        ; preds = %for.cond40
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %40 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %40, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond36, !llvm.loop !68

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
  %"a::var85" = sitofp i32 %rem71 to float
  %48 = load i32, i32* %nk.addr, align 4
  %"a::var86" = sitofp i32 %48 to float
  %"a::var87" = fdiv float %"a::var85", %"a::var86"
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %50 to i64
  %arrayidx76 = getelementptr inbounds [14 x float], [14 x float]* %49, i64 %idxprom75
  %51 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx76, i64 0, i64 %idxprom77
  store float %"a::var87", float* %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body68
  %52 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond65, !llvm.loop !69

for.end81:                                        ; preds = %for.cond65
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %53 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %53, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond61, !llvm.loop !70

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
  br label %for.cond89, !llvm.loop !71

for.end99:                                        ; preds = %for.cond89
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %62 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %62, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond85, !llvm.loop !72

for.end102:                                       ; preds = %for.cond85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.9(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.sourceFunction !30 {
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
  %"a::var88" = load float, float* %arrayidx12, align 4
  %"a::var89" = fmul float %9, %"a::var88"
  %13 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %13, i64 %idxprom13
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var90" = load float, float* %arrayidx16, align 4
  %"a::var91" = fmul float %"a::var89", %"a::var90"
  %16 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [10 x float], [10 x float]* %16, i64 %idxprom18
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var92" = load float, float* %arrayidx21, align 4
  %"a::var93" = fadd float %"a::var92", %"a::var91"
  store float %"a::var93", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !73

for.end:                                          ; preds = %for.cond6
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond1, !llvm.loop !74

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !75

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc62, %for.end27
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %ni.addr, align 4
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body30, label %for.end64

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc59, %for.body30
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %nl.addr, align 4
  %cmp32 = icmp slt i32 %24, %25
  br i1 %cmp32, label %for.body33, label %for.end61

for.body33:                                       ; preds = %for.cond31
  %26 = load float, float* %beta.addr, align 4
  %27 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %27, i64 %idxprom34
  %29 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i64 0, i64 %idxprom36
  %"a::var94" = load float, float* %arrayidx37, align 4
  %"a::var95" = fmul float %"a::var94", %26
  store float %"a::var95", float* %arrayidx37, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.body33
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %30, %31
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %32 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [10 x float], [10 x float]* %32, i64 %idxprom42
  %34 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx43, i64 0, i64 %idxprom44
  %"a::var96" = load float, float* %arrayidx45, align 4
  %35 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [14 x float], [14 x float]* %35, i64 %idxprom46
  %37 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx47, i64 0, i64 %idxprom48
  %"a::var97" = load float, float* %arrayidx49, align 4
  %"a::var98" = fmul float %"a::var96", %"a::var97"
  %38 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %38, i64 %idxprom51
  %40 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %"a::var99" = load float, float* %arrayidx54, align 4
  %"a::var100" = fadd float %"a::var99", %"a::var98"
  store float %"a::var100", float* %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41
  %41 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %41, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond39, !llvm.loop !76

for.end58:                                        ; preds = %for.cond39
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %42 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %42, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond31, !llvm.loop !77

for.end61:                                        ; preds = %for.cond31
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %43 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond28, !llvm.loop !78

for.end64:                                        ; preds = %for.cond28
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!6 = !{i32 0, i1 false}
!7 = !{i32 -1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i32 0, i1 false, i32 0, i1 false}
!11 = !{i32 -1, i32 -1}
!12 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!13 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!14 = !{i32 -1, i32 -1, i32 -1}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{}
!27 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array}
!28 = !{void (float*, i32)* @scale_scalar}
!29 = !{void (i32, i32, float*, i32)* @scale_2d}
!30 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array.8}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm.9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
