; ModuleID = './build/stats/mvt/128/mvt-standard-128.out.dynamic_instrumented.taffoinit.taffotmp.ll'
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.equivalentChild !14 {
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
  %x12 = bitcast [20 x float]* %x1 to i8*
  %x23 = bitcast [20 x float]* %x2 to i8*
  %y_14 = bitcast [20 x float]* %y_1 to i8*
  %y_25 = bitcast [20 x float]* %y_2 to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @init_array.6(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.originalCall !27
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %1 = bitcast [20 x float]* %arraydecay10 to float*
  call void @scale_2d.5(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 128), !taffo.originalCall !28
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 128), !taffo.originalCall !29
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 128), !taffo.originalCall !29
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  call void @scale_1d.2(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 128), !taffo.originalCall !29
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 128), !taffo.originalCall !29
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @kernel_mvt.7(i32 noundef %2, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, [20 x float]* noundef %arraydecay19), !taffo.originalCall !30
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
  %"a::var33" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %6 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i64 0, i64 %idxprom20
  store float %"a::var33", float* %arrayidx21, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %7 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 %idxprom22
  %"a::var34" = load float, float* %arrayidx23, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %8 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i64 0, i64 %idxprom24
  store float %"a::var34", float* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !21 !taffo.initweight !22 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !32 !taffo.initweight !33 !taffo.equivalentChild !34 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var35" = sitofp i32 %rem to float
  %4 = load i32, i32* %n.addr, align 4
  %"a::var36" = sitofp i32 %4 to float
  %"a::var37" = fdiv float %"a::var35", %"a::var36"
  %5 = load float*, float** %x1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float %"a::var37", float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8
  %"a::var38" = sitofp i32 %rem4 to float
  %9 = load i32, i32* %n.addr, align 4
  %"a::var39" = sitofp i32 %9 to float
  %"a::var40" = fdiv float %"a::var38", %"a::var39"
  %10 = load float*, float** %x2.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom8
  store float %"a::var40", float* %arrayidx9, align 4
  %12 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %12, 3
  %13 = load i32, i32* %n.addr, align 4
  %rem11 = srem i32 %add10, %13
  %"a::var41" = sitofp i32 %rem11 to float
  %14 = load i32, i32* %n.addr, align 4
  %"a::var42" = sitofp i32 %14 to float
  %"a::var43" = fdiv float %"a::var41", %"a::var42"
  %15 = load float*, float** %y_1.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  store float %"a::var43", float* %arrayidx16, align 4
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 4
  %18 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %18
  %"a::var44" = sitofp i32 %rem18 to float
  %19 = load i32, i32* %n.addr, align 4
  %"a::var45" = sitofp i32 %19 to float
  %"a::var46" = fdiv float %"a::var44", %"a::var45"
  %20 = load float*, float** %y_2.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds float, float* %20, i64 %idxprom22
  store float %"a::var46", float* %arrayidx23, align 4
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
  %"a::var47" = sitofp i32 %rem28 to float
  %27 = load i32, i32* %n.addr, align 4
  %"a::var48" = sitofp i32 %27 to float
  %"a::var49" = fdiv float %"a::var47", %"a::var48"
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %28, i64 %idxprom32
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  store float %"a::var49", float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond24, !llvm.loop !35

for.end:                                          ; preds = %for.cond24
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond, !llvm.loop !36

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !32 !taffo.initweight !33 !taffo.equivalentChild !37 {
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
  %"a::var50" = load float, float* %arrayidx, align 4
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom4
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx5, i64 0, i64 %idxprom6
  %"a::var51" = load float, float* %arrayidx7, align 4
  %9 = load float*, float** %y_1.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 %idxprom8
  %"a::var52" = load float, float* %arrayidx9, align 4
  %"a::var53" = fmul float %"a::var51", %"a::var52"
  %"a::var54" = fadd float %"a::var50", %"a::var53"
  %11 = load float*, float** %x1.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  store float %"a::var54", float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !38

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !39

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end14
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond15
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body17
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %n.addr, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %19 = load float*, float** %x2.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %19, i64 %idxprom21
  %"a::var55" = load float, float* %arrayidx22, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom23
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i64 0, i64 %idxprom25
  %"a::var56" = load float, float* %arrayidx26, align 4
  %24 = load float*, float** %y_2.addr, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds float, float* %24, i64 %idxprom27
  %"a::var57" = load float, float* %arrayidx28, align 4
  %"a::var58" = fmul float %"a::var56", %"a::var57"
  %"a::var59" = fadd float %"a::var55", %"a::var58"
  %26 = load float*, float** %x2.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds float, float* %26, i64 %idxprom31
  store float %"a::var59", float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %28 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %28, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond18, !llvm.loop !40

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond15, !llvm.loop !41

for.end38:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.sourceFunction !29 {
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
  %"a::var60" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %"a::var61" = sitofp i32 %6 to float
  %"a::var62" = fmul float %"a::var60", %"a::var61"
  %7 = load float*, float** %val.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  store float %"a::var62", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.sourceFunction !29 {
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
  %"a::var63" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %"a::var64" = sitofp i32 %6 to float
  %"a::var65" = fmul float %"a::var63", %"a::var64"
  %7 = load float*, float** %val.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  store float %"a::var65", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.sourceFunction !29 {
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
  %"a::var66" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %"a::var67" = sitofp i32 %6 to float
  %"a::var68" = fmul float %"a::var66", %"a::var67"
  %7 = load float*, float** %val.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  store float %"a::var68", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.sourceFunction !29 {
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
  %"a::var69" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %"a::var70" = sitofp i32 %6 to float
  %"a::var71" = fmul float %"a::var69", %"a::var70"
  %7 = load float*, float** %val.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  store float %"a::var71", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !28 {
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
  %"a::var72" = load float, float* %arrayidx5, align 4
  %12 = load i32, i32* %factor.addr, align 4
  %"a::var73" = sitofp i32 %12 to float
  %"a::var74" = fmul float %"a::var72", %"a::var73"
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var74", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !46

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !47

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !32 !taffo.initweight !33 !taffo.sourceFunction !27 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var75" = sitofp i32 %rem to float
  %4 = load i32, i32* %n.addr, align 4
  %"a::var76" = sitofp i32 %4 to float
  %"a::var77" = fdiv float %"a::var75", %"a::var76"
  %5 = load float*, float** %x1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float %"a::var77", float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8
  %"a::var78" = sitofp i32 %rem4 to float
  %9 = load i32, i32* %n.addr, align 4
  %"a::var79" = sitofp i32 %9 to float
  %"a::var80" = fdiv float %"a::var78", %"a::var79"
  %10 = load float*, float** %x2.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom8
  store float %"a::var80", float* %arrayidx9, align 4
  %12 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %12, 3
  %13 = load i32, i32* %n.addr, align 4
  %rem11 = srem i32 %add10, %13
  %"a::var81" = sitofp i32 %rem11 to float
  %14 = load i32, i32* %n.addr, align 4
  %"a::var82" = sitofp i32 %14 to float
  %"a::var83" = fdiv float %"a::var81", %"a::var82"
  %15 = load float*, float** %y_1.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  store float %"a::var83", float* %arrayidx16, align 4
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 4
  %18 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %18
  %"a::var84" = sitofp i32 %rem18 to float
  %19 = load i32, i32* %n.addr, align 4
  %"a::var85" = sitofp i32 %19 to float
  %"a::var86" = fdiv float %"a::var84", %"a::var85"
  %20 = load float*, float** %y_2.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds float, float* %20, i64 %idxprom22
  store float %"a::var86", float* %arrayidx23, align 4
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
  %"a::var87" = sitofp i32 %rem28 to float
  %27 = load i32, i32* %n.addr, align 4
  %"a::var88" = sitofp i32 %27 to float
  %"a::var89" = fdiv float %"a::var87", %"a::var88"
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %28, i64 %idxprom32
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  store float %"a::var89", float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond24, !llvm.loop !48

for.end:                                          ; preds = %for.cond24
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.7(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !32 !taffo.initweight !33 !taffo.sourceFunction !30 {
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
  %"a::var90" = load float, float* %arrayidx, align 4
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom4
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx5, i64 0, i64 %idxprom6
  %"a::var91" = load float, float* %arrayidx7, align 4
  %9 = load float*, float** %y_1.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 %idxprom8
  %"a::var92" = load float, float* %arrayidx9, align 4
  %"a::var93" = fmul float %"a::var91", %"a::var92"
  %"a::var94" = fadd float %"a::var90", %"a::var93"
  %11 = load float*, float** %x1.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  store float %"a::var94", float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !50

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end14
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond15
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body17
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %n.addr, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %19 = load float*, float** %x2.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %19, i64 %idxprom21
  %"a::var95" = load float, float* %arrayidx22, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom23
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i64 0, i64 %idxprom25
  %"a::var96" = load float, float* %arrayidx26, align 4
  %24 = load float*, float** %y_2.addr, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds float, float* %24, i64 %idxprom27
  %"a::var97" = load float, float* %arrayidx28, align 4
  %"a::var98" = fmul float %"a::var96", %"a::var97"
  %"a::var99" = fadd float %"a::var95", %"a::var98"
  %26 = load float*, float** %x2.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds float, float* %26, i64 %idxprom31
  store float %"a::var99", float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %28 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %28, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond18, !llvm.loop !52

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond15, !llvm.loop !53

for.end38:                                        ; preds = %for.cond15
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
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1}
!14 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{void (i32, i32, float*, i32)* @scale_2d.5}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{}
!27 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array}
!28 = !{void (i32, i32, float*, i32)* @scale_2d}
!29 = !{void (i32, float*, i32)* @scale_1d}
!30 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt}
!31 = distinct !{!31, !9}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!34 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array.6}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt.7}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
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
