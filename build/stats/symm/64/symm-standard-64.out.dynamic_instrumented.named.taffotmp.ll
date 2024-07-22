; ModuleID = './build/stats/symm/64/symm-standard-64.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/symm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('C') scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,10))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata"

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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %C = alloca [10 x [16 x float]], align 16
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
  %beta2 = bitcast float* %beta to i8*
  %C3 = bitcast [10 x [16 x float]]* %C to i8*
  %A4 = bitcast [10 x [10 x float]]* %A to i8*
  %B5 = bitcast [10 x [16 x float]]* %B to i8*
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @init_array.6(i32 noundef %0, i32 noundef %1, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [16 x float]* noundef %arraydecay7), !taffo.originalCall !27
  call void @scale_scalar.2(float* noundef %alpha, i32 noundef 64), !taffo.originalCall !28
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 64), !taffo.originalCall !28
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 0
  %2 = bitcast [16 x float]* %arraydecay8 to float*
  call void @scale_2d.5(i32 noundef 10, i32 noundef 16, float* noundef %2, i32 noundef 64), !taffo.originalCall !29
  %arraydecay9 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %3 = bitcast [10 x float]* %arraydecay9 to float*
  call void @scale_2d.4(i32 noundef 10, i32 noundef 10, float* noundef %3, i32 noundef 64), !taffo.originalCall !29
  %arraydecay10 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  %4 = bitcast [16 x float]* %arraydecay10 to float*
  call void @scale_2d.3(i32 noundef 10, i32 noundef 16, float* noundef %4, i32 noundef 64), !taffo.originalCall !29
  call void @timer_start()
  %5 = load i32, i32* %m, align 4
  %6 = load i32, i32* %n, align 4
  %"a::var33" = load float, float* %alpha, align 4
  %"a::var34" = load float, float* %beta, align 4
  %arraydecay11 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @kernel_symm.7(i32 noundef %5, i32 noundef %6, float noundef %"a::var33", float noundef %"a::var34", [16 x float]* noundef %arraydecay11, [10 x float]* noundef %arraydecay12, [16 x float]* noundef %arraydecay13), !taffo.originalCall !30
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %9, %10
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom17
  %"a::var35" = load float, float* %arrayidx18, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i64 0, i64 %idxprom19
  %14 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx20, i64 0, i64 %idxprom21
  store float %"a::var35", float* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond14, !llvm.loop !31

for.end:                                          ; preds = %for.cond14
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end25:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !21 !taffo.initweight !22 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.equivalentChild !35 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %rem = srem i32 %add, 100
  %"a::var36" = sitofp i32 %rem to float
  %8 = load i32, i32* %m.addr, align 4
  %"a::var37" = sitofp i32 %8 to float
  %"a::var38" = fdiv float %"a::var36", %"a::var37"
  %9 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %9, i64 %idxprom
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var38", float* %arrayidx8, align 4
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, %13
  %14 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %add9, %14
  %rem10 = srem i32 %sub, 100
  %"a::var39" = sitofp i32 %rem10 to float
  %15 = load i32, i32* %m.addr, align 4
  %"a::var40" = sitofp i32 %15 to float
  %"a::var41" = fdiv float %"a::var39", %"a::var40"
  %16 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 %idxprom14
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float %"a::var41", float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !36

for.end:                                          ; preds = %for.cond3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !37

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc53, %for.end20
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %m.addr, align 4
  %cmp22 = icmp slt i32 %21, %22
  br i1 %cmp22, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond21
  store i32 0, i32* %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc38, %for.body24
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %i, align 4
  %cmp26 = icmp sle i32 %23, %24
  br i1 %cmp26, label %for.body28, label %for.end40

for.body28:                                       ; preds = %for.cond25
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %25, %26
  %rem30 = srem i32 %add29, 100
  %"a::var42" = sitofp i32 %rem30 to float
  %27 = load i32, i32* %m.addr, align 4
  %"a::var43" = sitofp i32 %27 to float
  %"a::var44" = fdiv float %"a::var42", %"a::var43"
  %28 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [10 x float], [10 x float]* %28, i64 %idxprom34
  %30 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx35, i64 0, i64 %idxprom36
  store float %"a::var44", float* %arrayidx37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body28
  %31 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond25, !llvm.loop !38

for.end40:                                        ; preds = %for.cond25
  %32 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %32, 1
  store i32 %add41, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.end40
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %m.addr, align 4
  %cmp43 = icmp slt i32 %33, %34
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond42
  %35 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [10 x float], [10 x float]* %35, i64 %idxprom46
  %37 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float -9.990000e+02, float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %38 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %38, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond42, !llvm.loop !39

for.end52:                                        ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %39 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %39, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond21, !llvm.loop !40

for.end55:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.equivalentChild !41 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca float, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store float 0.000000e+00, float* %temp2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load float, float* %alpha.addr, align 4
  %7 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  %"a::var45" = load float, float* %arrayidx8, align 4
  %"a::var46" = fmul float %6, %"a::var45"
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var47" = load float, float* %arrayidx12, align 4
  %"a::var48" = fmul float %"a::var46", %"a::var47"
  %13 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %13, i64 %idxprom14
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var49" = load float, float* %arrayidx17, align 4
  %"a::var50" = fadd float %"a::var49", %"a::var48"
  store float %"a::var50", float* %arrayidx17, align 4
  %16 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 %idxprom18
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var51" = load float, float* %arrayidx21, align 4
  %19 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [10 x float], [10 x float]* %19, i64 %idxprom22
  %21 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var52" = load float, float* %arrayidx25, align 4
  %"a::var53" = fmul float %"a::var51", %"a::var52"
  %"a::var54" = load float, float* %temp2, align 4
  %"a::var55" = fadd float %"a::var54", %"a::var53"
  store float %"a::var55", float* %temp2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !42

for.end:                                          ; preds = %for.cond4
  %23 = load float, float* %beta.addr, align 4
  %24 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 %idxprom28
  %26 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %"a::var56" = load float, float* %arrayidx31, align 4
  %"a::var57" = fmul float %23, %"a::var56"
  %"a::var58" = load float, float* %alpha.addr, align 4
  %27 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %27, i64 %idxprom33
  %29 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx34, i64 0, i64 %idxprom35
  %"a::var59" = load float, float* %arrayidx36, align 4
  %"a::var60" = fmul float %"a::var58", %"a::var59"
  %30 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [10 x float], [10 x float]* %30, i64 %idxprom38
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx39, i64 0, i64 %idxprom40
  %"a::var61" = load float, float* %arrayidx41, align 4
  %"a::var62" = fmul float %"a::var60", %"a::var61"
  %"a::var63" = fadd float %"a::var57", %"a::var62"
  %"a::var64" = load float, float* %alpha.addr, align 4
  %"a::var65" = load float, float* %temp2, align 4
  %"a::var66" = fmul float %"a::var64", %"a::var65"
  %"a::var67" = fadd float %"a::var63", %"a::var66"
  %33 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [16 x float], [16 x float]* %33, i64 %idxprom46
  %35 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float %"a::var67", float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %36 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %36, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond1, !llvm.loop !43

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %37 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond, !llvm.loop !44

for.end55:                                        ; preds = %for.cond
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
  %"a::var68" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var69" = sitofp i32 %12 to float
  %"a::var70" = fmul float %"a::var68", %"a::var69"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var70", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !45

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !46

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
  %"a::var71" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var72" = sitofp i32 %12 to float
  %"a::var73" = fmul float %"a::var71", %"a::var72"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var73", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !47

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

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
  %"a::var74" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var75" = sitofp i32 %12 to float
  %"a::var76" = fmul float %"a::var74", %"a::var75"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var76", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !49

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !50

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.sourceFunction !27 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %rem = srem i32 %add, 100
  %"a::var77" = sitofp i32 %rem to float
  %8 = load i32, i32* %m.addr, align 4
  %"a::var78" = sitofp i32 %8 to float
  %"a::var79" = fdiv float %"a::var77", %"a::var78"
  %9 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %9, i64 %idxprom
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var79", float* %arrayidx8, align 4
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, %13
  %14 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %add9, %14
  %rem10 = srem i32 %sub, 100
  %"a::var80" = sitofp i32 %rem10 to float
  %15 = load i32, i32* %m.addr, align 4
  %"a::var81" = sitofp i32 %15 to float
  %"a::var82" = fdiv float %"a::var80", %"a::var81"
  %16 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 %idxprom14
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float %"a::var82", float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !51

for.end:                                          ; preds = %for.cond3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc53, %for.end20
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %m.addr, align 4
  %cmp22 = icmp slt i32 %21, %22
  br i1 %cmp22, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond21
  store i32 0, i32* %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc38, %for.body24
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %i, align 4
  %cmp26 = icmp sle i32 %23, %24
  br i1 %cmp26, label %for.body28, label %for.end40

for.body28:                                       ; preds = %for.cond25
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %25, %26
  %rem30 = srem i32 %add29, 100
  %"a::var83" = sitofp i32 %rem30 to float
  %27 = load i32, i32* %m.addr, align 4
  %"a::var84" = sitofp i32 %27 to float
  %"a::var85" = fdiv float %"a::var83", %"a::var84"
  %28 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [10 x float], [10 x float]* %28, i64 %idxprom34
  %30 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx35, i64 0, i64 %idxprom36
  store float %"a::var85", float* %arrayidx37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body28
  %31 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond25, !llvm.loop !53

for.end40:                                        ; preds = %for.cond25
  %32 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %32, 1
  store i32 %add41, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.end40
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %m.addr, align 4
  %cmp43 = icmp slt i32 %33, %34
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond42
  %35 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [10 x float], [10 x float]* %35, i64 %idxprom46
  %37 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float -9.990000e+02, float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %38 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %38, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond42, !llvm.loop !54

for.end52:                                        ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %39 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %39, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond21, !llvm.loop !55

for.end55:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.7(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !33 !taffo.initweight !34 !taffo.sourceFunction !30 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca float, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store float 0.000000e+00, float* %temp2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load float, float* %alpha.addr, align 4
  %7 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  %"a::var86" = load float, float* %arrayidx8, align 4
  %"a::var87" = fmul float %6, %"a::var86"
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var88" = load float, float* %arrayidx12, align 4
  %"a::var89" = fmul float %"a::var87", %"a::var88"
  %13 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %13, i64 %idxprom14
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var90" = load float, float* %arrayidx17, align 4
  %"a::var91" = fadd float %"a::var90", %"a::var89"
  store float %"a::var91", float* %arrayidx17, align 4
  %16 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 %idxprom18
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var92" = load float, float* %arrayidx21, align 4
  %19 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [10 x float], [10 x float]* %19, i64 %idxprom22
  %21 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var93" = load float, float* %arrayidx25, align 4
  %"a::var94" = fmul float %"a::var92", %"a::var93"
  %"a::var95" = load float, float* %temp2, align 4
  %"a::var96" = fadd float %"a::var95", %"a::var94"
  store float %"a::var96", float* %temp2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !56

for.end:                                          ; preds = %for.cond4
  %23 = load float, float* %beta.addr, align 4
  %24 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %24, i64 %idxprom28
  %26 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %"a::var97" = load float, float* %arrayidx31, align 4
  %"a::var98" = fmul float %23, %"a::var97"
  %"a::var99" = load float, float* %alpha.addr, align 4
  %27 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %27, i64 %idxprom33
  %29 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx34, i64 0, i64 %idxprom35
  %"a::var100" = load float, float* %arrayidx36, align 4
  %"a::var101" = fmul float %"a::var99", %"a::var100"
  %30 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [10 x float], [10 x float]* %30, i64 %idxprom38
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx39, i64 0, i64 %idxprom40
  %"a::var102" = load float, float* %arrayidx41, align 4
  %"a::var103" = fmul float %"a::var101", %"a::var102"
  %"a::var104" = fadd float %"a::var98", %"a::var103"
  %"a::var105" = load float, float* %alpha.addr, align 4
  %"a::var106" = load float, float* %temp2, align 4
  %"a::var107" = fmul float %"a::var105", %"a::var106"
  %"a::var108" = fadd float %"a::var104", %"a::var107"
  %33 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [16 x float], [16 x float]* %33, i64 %idxprom46
  %35 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float %"a::var108", float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %36 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %36, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond1, !llvm.loop !57

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %37 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond, !llvm.loop !58

for.end55:                                        ; preds = %for.cond
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
!18 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{}
!27 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [16 x float]*)* @init_array}
!28 = !{void (float*, i32)* @scale_scalar}
!29 = !{void (i32, i32, float*, i32)* @scale_2d}
!30 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [16 x float]*)* @kernel_symm}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [16 x float]*)* @init_array.6}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [16 x float]*)* @kernel_symm.7}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
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
