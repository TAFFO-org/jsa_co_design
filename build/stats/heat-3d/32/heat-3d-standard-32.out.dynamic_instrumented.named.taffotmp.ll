; ModuleID = './build/stats/heat-3d/32/heat-3d-standard-32.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/heat-3d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 80) final)\00", section "llvm.metadata"

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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 {
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
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !15 !taffo.initweight !16 {
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
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
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
  br label %for.cond4, !llvm.loop !22

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !23

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %29 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.funinfo !25 !taffo.initweight !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !25 !taffo.initweight !25 {
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
  call void @init_array.3(i32 noundef %0, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3), !taffo.originalCall !26
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %1 = bitcast [5 x [5 x float]]* %arraydecay4 to float*
  call void @scale_3d.2(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %1, i32 noundef 32), !taffo.originalCall !27
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  %2 = bitcast [5 x [5 x float]]* %arraydecay5 to float*
  call void @scale_3d.1(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %2, i32 noundef 32), !taffo.originalCall !27
  call void @timer_start()
  %3 = load i32, i32* %tsteps, align 4
  %4 = load i32, i32* %n, align 4
  %arraydecay6 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  call void @kernel_heat_3d.4(i32 noundef %3, i32 noundef %4, [5 x [5 x float]]* noundef %arraydecay6, [5 x [5 x float]]* noundef %arraydecay7), !taffo.originalCall !28
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
  %"a::var33" = load float, float* %arrayidx17, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i64 0, i64 %idxprom18
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i64 0, i64 %idxprom20
  %16 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx21, i64 0, i64 %idxprom22
  store float %"a::var33", float* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond11, !llvm.loop !29

for.end:                                          ; preds = %for.cond11
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %18, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond8, !llvm.loop !30

for.end26:                                        ; preds = %for.cond8
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %19 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %19, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

for.end29:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !19 !taffo.initweight !20 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.equivalentChild !32 {
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
  %"a::var34" = sitofp i32 %add10 to float
  %"a::var35" = fmul float %"a::var34", 1.000000e+01
  %10 = load i32, i32* %n.addr, align 4
  %"a::var36" = sitofp i32 %10 to float
  %"a::var37" = fdiv float %"a::var35", %"a::var36"
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
  store float %"a::var37", float* %arrayidx15, align 4
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
  store float %"a::var37", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !33

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond4, !llvm.loop !34

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !35

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !15 !taffo.initweight !16 !taffo.equivalentChild !36 {
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
  %"a::var38" = load float, float* %arrayidx15, align 4
  %11 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %11, i64 %idxprom16
  %13 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var39" = load float, float* %arrayidx21, align 4
  %"a::var40" = fmul float 2.000000e+00, %"a::var39"
  %"a::var41" = fsub float %"a::var38", %"a::var40"
  %15 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %16, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %15, i64 %idxprom24
  %17 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx25, i64 0, i64 %idxprom26
  %18 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx27, i64 0, i64 %idxprom28
  %"a::var42" = load float, float* %arrayidx29, align 4
  %"a::var43" = fadd float %"a::var41", %"a::var42"
  %"a::var44" = fmul float 1.250000e-01, %"a::var43"
  %19 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %19, i64 %idxprom32
  %21 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %21, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i64 0, i64 %idxprom35
  %22 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx36, i64 0, i64 %idxprom37
  %"a::var45" = load float, float* %arrayidx38, align 4
  %23 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %23, i64 %idxprom39
  %25 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i64 0, i64 %idxprom41
  %26 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx42, i64 0, i64 %idxprom43
  %"a::var46" = load float, float* %arrayidx44, align 4
  %"a::var47" = fmul float 2.000000e+00, %"a::var46"
  %"a::var48" = fsub float %"a::var45", %"a::var47"
  %27 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %27, i64 %idxprom47
  %29 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %29, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx48, i64 0, i64 %idxprom50
  %30 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %30 to i64
  %arrayidx53 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx51, i64 0, i64 %idxprom52
  %"a::var49" = load float, float* %arrayidx53, align 4
  %"a::var50" = fadd float %"a::var48", %"a::var49"
  %"a::var51" = fmul float 1.250000e-01, %"a::var50"
  %"a::var52" = fadd float %"a::var44", %"a::var51"
  %31 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %32 to i64
  %arrayidx58 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %31, i64 %idxprom57
  %33 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx58, i64 0, i64 %idxprom59
  %34 = load i32, i32* %k, align 4
  %add61 = add nsw i32 %34, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx60, i64 0, i64 %idxprom62
  %"a::var53" = load float, float* %arrayidx63, align 4
  %35 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %36 to i64
  %arrayidx65 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %35, i64 %idxprom64
  %37 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %37 to i64
  %arrayidx67 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx65, i64 0, i64 %idxprom66
  %38 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx67, i64 0, i64 %idxprom68
  %"a::var54" = load float, float* %arrayidx69, align 4
  %"a::var55" = fmul float 2.000000e+00, %"a::var54"
  %"a::var56" = fsub float %"a::var53", %"a::var55"
  %39 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %40 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %39, i64 %idxprom72
  %41 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %41 to i64
  %arrayidx75 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx73, i64 0, i64 %idxprom74
  %42 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %42, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx75, i64 0, i64 %idxprom77
  %"a::var57" = load float, float* %arrayidx78, align 4
  %"a::var58" = fadd float %"a::var56", %"a::var57"
  %"a::var59" = fmul float 1.250000e-01, %"a::var58"
  %"a::var60" = fadd float %"a::var52", %"a::var59"
  %43 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %44 to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %43, i64 %idxprom82
  %45 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %45 to i64
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx83, i64 0, i64 %idxprom84
  %46 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %46 to i64
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx85, i64 0, i64 %idxprom86
  %"a::var61" = load float, float* %arrayidx87, align 4
  %"a::var62" = fadd float %"a::var60", %"a::var61"
  %47 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %48 to i64
  %arrayidx90 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %47, i64 %idxprom89
  %49 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %49 to i64
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx90, i64 0, i64 %idxprom91
  %50 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %50 to i64
  %arrayidx94 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i64 0, i64 %idxprom93
  store float %"a::var62", float* %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %51 = load i32, i32* %k, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8, !llvm.loop !37

for.end:                                          ; preds = %for.cond8
  br label %for.inc95

for.inc95:                                        ; preds = %for.end
  %52 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %52, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond4, !llvm.loop !38

for.end97:                                        ; preds = %for.cond4
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %53 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %53, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond1, !llvm.loop !39

for.end100:                                       ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc206, %for.end100
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %sub102 = sub nsw i32 %55, 1
  %cmp103 = icmp slt i32 %54, %sub102
  br i1 %cmp103, label %for.body104, label %for.end208

for.body104:                                      ; preds = %for.cond101
  store i32 1, i32* %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc203, %for.body104
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %n.addr, align 4
  %sub106 = sub nsw i32 %57, 1
  %cmp107 = icmp slt i32 %56, %sub106
  br i1 %cmp107, label %for.body108, label %for.end205

for.body108:                                      ; preds = %for.cond105
  store i32 1, i32* %k, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc200, %for.body108
  %58 = load i32, i32* %k, align 4
  %59 = load i32, i32* %n.addr, align 4
  %sub110 = sub nsw i32 %59, 1
  %cmp111 = icmp slt i32 %58, %sub110
  br i1 %cmp111, label %for.body112, label %for.end202

for.body112:                                      ; preds = %for.cond109
  %60 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %61 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %61, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %60, i64 %idxprom114
  %62 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %62 to i64
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx115, i64 0, i64 %idxprom116
  %63 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %63 to i64
  %arrayidx119 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i64 0, i64 %idxprom118
  %"a::var63" = load float, float* %arrayidx119, align 4
  %64 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %65 to i64
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %64, i64 %idxprom120
  %66 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %66 to i64
  %arrayidx123 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i64 0, i64 %idxprom122
  %67 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %67 to i64
  %arrayidx125 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx123, i64 0, i64 %idxprom124
  %"a::var64" = load float, float* %arrayidx125, align 4
  %"a::var65" = fmul float 2.000000e+00, %"a::var64"
  %"a::var66" = fsub float %"a::var63", %"a::var65"
  %68 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %69 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %69, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %68, i64 %idxprom129
  %70 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %70 to i64
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx130, i64 0, i64 %idxprom131
  %71 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %71 to i64
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx132, i64 0, i64 %idxprom133
  %"a::var67" = load float, float* %arrayidx134, align 4
  %"a::var68" = fadd float %"a::var66", %"a::var67"
  %"a::var69" = fmul float 1.250000e-01, %"a::var68"
  %72 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %73 to i64
  %arrayidx138 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %72, i64 %idxprom137
  %74 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %74, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx138, i64 0, i64 %idxprom140
  %75 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %75 to i64
  %arrayidx143 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx141, i64 0, i64 %idxprom142
  %"a::var70" = load float, float* %arrayidx143, align 4
  %76 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %77 to i64
  %arrayidx145 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %76, i64 %idxprom144
  %78 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %78 to i64
  %arrayidx147 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx145, i64 0, i64 %idxprom146
  %79 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %79 to i64
  %arrayidx149 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx147, i64 0, i64 %idxprom148
  %"a::var71" = load float, float* %arrayidx149, align 4
  %"a::var72" = fmul float 2.000000e+00, %"a::var71"
  %"a::var73" = fsub float %"a::var70", %"a::var72"
  %80 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %81 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %81 to i64
  %arrayidx153 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %80, i64 %idxprom152
  %82 = load i32, i32* %j, align 4
  %sub154 = sub nsw i32 %82, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx153, i64 0, i64 %idxprom155
  %83 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %83 to i64
  %arrayidx158 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx156, i64 0, i64 %idxprom157
  %"a::var74" = load float, float* %arrayidx158, align 4
  %"a::var75" = fadd float %"a::var73", %"a::var74"
  %"a::var76" = fmul float 1.250000e-01, %"a::var75"
  %"a::var77" = fadd float %"a::var69", %"a::var76"
  %84 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %85 to i64
  %arrayidx163 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %84, i64 %idxprom162
  %86 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %86 to i64
  %arrayidx165 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx163, i64 0, i64 %idxprom164
  %87 = load i32, i32* %k, align 4
  %add166 = add nsw i32 %87, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx165, i64 0, i64 %idxprom167
  %"a::var78" = load float, float* %arrayidx168, align 4
  %88 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %89 to i64
  %arrayidx170 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %88, i64 %idxprom169
  %90 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %90 to i64
  %arrayidx172 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx170, i64 0, i64 %idxprom171
  %91 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %91 to i64
  %arrayidx174 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx172, i64 0, i64 %idxprom173
  %"a::var79" = load float, float* %arrayidx174, align 4
  %"a::var80" = fmul float 2.000000e+00, %"a::var79"
  %"a::var81" = fsub float %"a::var78", %"a::var80"
  %92 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %93 to i64
  %arrayidx178 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %92, i64 %idxprom177
  %94 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %94 to i64
  %arrayidx180 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx178, i64 0, i64 %idxprom179
  %95 = load i32, i32* %k, align 4
  %sub181 = sub nsw i32 %95, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx180, i64 0, i64 %idxprom182
  %"a::var82" = load float, float* %arrayidx183, align 4
  %"a::var83" = fadd float %"a::var81", %"a::var82"
  %"a::var84" = fmul float 1.250000e-01, %"a::var83"
  %"a::var85" = fadd float %"a::var77", %"a::var84"
  %96 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %97 to i64
  %arrayidx188 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %96, i64 %idxprom187
  %98 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %98 to i64
  %arrayidx190 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx188, i64 0, i64 %idxprom189
  %99 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %99 to i64
  %arrayidx192 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx190, i64 0, i64 %idxprom191
  %"a::var86" = load float, float* %arrayidx192, align 4
  %"a::var87" = fadd float %"a::var85", %"a::var86"
  %100 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %101 to i64
  %arrayidx195 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %100, i64 %idxprom194
  %102 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %102 to i64
  %arrayidx197 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx195, i64 0, i64 %idxprom196
  %103 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %103 to i64
  %arrayidx199 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx197, i64 0, i64 %idxprom198
  store float %"a::var87", float* %arrayidx199, align 4
  br label %for.inc200

for.inc200:                                       ; preds = %for.body112
  %104 = load i32, i32* %k, align 4
  %inc201 = add nsw i32 %104, 1
  store i32 %inc201, i32* %k, align 4
  br label %for.cond109, !llvm.loop !40

for.end202:                                       ; preds = %for.cond109
  br label %for.inc203

for.inc203:                                       ; preds = %for.end202
  %105 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %105, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond105, !llvm.loop !41

for.end205:                                       ; preds = %for.cond105
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %106 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %106, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond101, !llvm.loop !42

for.end208:                                       ; preds = %for.cond101
  br label %for.inc209

for.inc209:                                       ; preds = %for.end208
  %107 = load i32, i32* %t, align 4
  %inc210 = add nsw i32 %107, 1
  store i32 %inc210, i32* %t, align 4
  br label %for.cond, !llvm.loop !43

for.end211:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_3d.1(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !27 {
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
  %"a::var88" = load float, float* %arrayidx10, align 4
  %19 = load i32, i32* %factor.addr, align 4
  %"a::var89" = sitofp i32 %19 to float
  %"a::var90" = fmul float %"a::var88", %"a::var89"
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
  store float %"a::var90", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !44

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !45

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %29 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !46

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_3d.2(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !27 {
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
  %"a::var91" = load float, float* %arrayidx10, align 4
  %19 = load i32, i32* %factor.addr, align 4
  %"a::var92" = sitofp i32 %19 to float
  %"a::var93" = fmul float %"a::var91", %"a::var92"
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
  store float %"a::var93", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !47

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !48

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %29 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.sourceFunction !26 {
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
  %"a::var94" = sitofp i32 %add10 to float
  %"a::var95" = fmul float %"a::var94", 1.000000e+01
  %10 = load i32, i32* %n.addr, align 4
  %"a::var96" = sitofp i32 %10 to float
  %"a::var97" = fdiv float %"a::var95", %"a::var96"
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
  store float %"a::var97", float* %arrayidx15, align 4
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
  store float %"a::var97", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !50

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond4, !llvm.loop !51

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.4(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !15 !taffo.initweight !16 !taffo.sourceFunction !28 {
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
  %"a::var98" = load float, float* %arrayidx15, align 4
  %11 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %11, i64 %idxprom16
  %13 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var99" = load float, float* %arrayidx21, align 4
  %"a::var100" = fmul float 2.000000e+00, %"a::var99"
  %"a::var101" = fsub float %"a::var98", %"a::var100"
  %15 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %16, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %15, i64 %idxprom24
  %17 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx25, i64 0, i64 %idxprom26
  %18 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx27, i64 0, i64 %idxprom28
  %"a::var102" = load float, float* %arrayidx29, align 4
  %"a::var103" = fadd float %"a::var101", %"a::var102"
  %"a::var104" = fmul float 1.250000e-01, %"a::var103"
  %19 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %19, i64 %idxprom32
  %21 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %21, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i64 0, i64 %idxprom35
  %22 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx36, i64 0, i64 %idxprom37
  %"a::var105" = load float, float* %arrayidx38, align 4
  %23 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %23, i64 %idxprom39
  %25 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i64 0, i64 %idxprom41
  %26 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx42, i64 0, i64 %idxprom43
  %"a::var106" = load float, float* %arrayidx44, align 4
  %"a::var107" = fmul float 2.000000e+00, %"a::var106"
  %"a::var108" = fsub float %"a::var105", %"a::var107"
  %27 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %27, i64 %idxprom47
  %29 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %29, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx48, i64 0, i64 %idxprom50
  %30 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %30 to i64
  %arrayidx53 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx51, i64 0, i64 %idxprom52
  %"a::var109" = load float, float* %arrayidx53, align 4
  %"a::var110" = fadd float %"a::var108", %"a::var109"
  %"a::var111" = fmul float 1.250000e-01, %"a::var110"
  %"a::var112" = fadd float %"a::var104", %"a::var111"
  %31 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %32 to i64
  %arrayidx58 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %31, i64 %idxprom57
  %33 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx58, i64 0, i64 %idxprom59
  %34 = load i32, i32* %k, align 4
  %add61 = add nsw i32 %34, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx60, i64 0, i64 %idxprom62
  %"a::var113" = load float, float* %arrayidx63, align 4
  %35 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %36 to i64
  %arrayidx65 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %35, i64 %idxprom64
  %37 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %37 to i64
  %arrayidx67 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx65, i64 0, i64 %idxprom66
  %38 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx67, i64 0, i64 %idxprom68
  %"a::var114" = load float, float* %arrayidx69, align 4
  %"a::var115" = fmul float 2.000000e+00, %"a::var114"
  %"a::var116" = fsub float %"a::var113", %"a::var115"
  %39 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %40 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %39, i64 %idxprom72
  %41 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %41 to i64
  %arrayidx75 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx73, i64 0, i64 %idxprom74
  %42 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %42, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx75, i64 0, i64 %idxprom77
  %"a::var117" = load float, float* %arrayidx78, align 4
  %"a::var118" = fadd float %"a::var116", %"a::var117"
  %"a::var119" = fmul float 1.250000e-01, %"a::var118"
  %"a::var120" = fadd float %"a::var112", %"a::var119"
  %43 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %44 to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %43, i64 %idxprom82
  %45 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %45 to i64
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx83, i64 0, i64 %idxprom84
  %46 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %46 to i64
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx85, i64 0, i64 %idxprom86
  %"a::var121" = load float, float* %arrayidx87, align 4
  %"a::var122" = fadd float %"a::var120", %"a::var121"
  %47 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %48 to i64
  %arrayidx90 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %47, i64 %idxprom89
  %49 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %49 to i64
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx90, i64 0, i64 %idxprom91
  %50 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %50 to i64
  %arrayidx94 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i64 0, i64 %idxprom93
  store float %"a::var122", float* %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %51 = load i32, i32* %k, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8, !llvm.loop !53

for.end:                                          ; preds = %for.cond8
  br label %for.inc95

for.inc95:                                        ; preds = %for.end
  %52 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %52, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond4, !llvm.loop !54

for.end97:                                        ; preds = %for.cond4
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %53 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %53, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond1, !llvm.loop !55

for.end100:                                       ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc206, %for.end100
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %sub102 = sub nsw i32 %55, 1
  %cmp103 = icmp slt i32 %54, %sub102
  br i1 %cmp103, label %for.body104, label %for.end208

for.body104:                                      ; preds = %for.cond101
  store i32 1, i32* %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc203, %for.body104
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %n.addr, align 4
  %sub106 = sub nsw i32 %57, 1
  %cmp107 = icmp slt i32 %56, %sub106
  br i1 %cmp107, label %for.body108, label %for.end205

for.body108:                                      ; preds = %for.cond105
  store i32 1, i32* %k, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc200, %for.body108
  %58 = load i32, i32* %k, align 4
  %59 = load i32, i32* %n.addr, align 4
  %sub110 = sub nsw i32 %59, 1
  %cmp111 = icmp slt i32 %58, %sub110
  br i1 %cmp111, label %for.body112, label %for.end202

for.body112:                                      ; preds = %for.cond109
  %60 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %61 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %61, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %60, i64 %idxprom114
  %62 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %62 to i64
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx115, i64 0, i64 %idxprom116
  %63 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %63 to i64
  %arrayidx119 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i64 0, i64 %idxprom118
  %"a::var123" = load float, float* %arrayidx119, align 4
  %64 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %65 to i64
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %64, i64 %idxprom120
  %66 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %66 to i64
  %arrayidx123 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i64 0, i64 %idxprom122
  %67 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %67 to i64
  %arrayidx125 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx123, i64 0, i64 %idxprom124
  %"a::var124" = load float, float* %arrayidx125, align 4
  %"a::var125" = fmul float 2.000000e+00, %"a::var124"
  %"a::var126" = fsub float %"a::var123", %"a::var125"
  %68 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %69 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %69, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %68, i64 %idxprom129
  %70 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %70 to i64
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx130, i64 0, i64 %idxprom131
  %71 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %71 to i64
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx132, i64 0, i64 %idxprom133
  %"a::var127" = load float, float* %arrayidx134, align 4
  %"a::var128" = fadd float %"a::var126", %"a::var127"
  %"a::var129" = fmul float 1.250000e-01, %"a::var128"
  %72 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %73 to i64
  %arrayidx138 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %72, i64 %idxprom137
  %74 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %74, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx138, i64 0, i64 %idxprom140
  %75 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %75 to i64
  %arrayidx143 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx141, i64 0, i64 %idxprom142
  %"a::var130" = load float, float* %arrayidx143, align 4
  %76 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %77 to i64
  %arrayidx145 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %76, i64 %idxprom144
  %78 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %78 to i64
  %arrayidx147 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx145, i64 0, i64 %idxprom146
  %79 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %79 to i64
  %arrayidx149 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx147, i64 0, i64 %idxprom148
  %"a::var131" = load float, float* %arrayidx149, align 4
  %"a::var132" = fmul float 2.000000e+00, %"a::var131"
  %"a::var133" = fsub float %"a::var130", %"a::var132"
  %80 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %81 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %81 to i64
  %arrayidx153 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %80, i64 %idxprom152
  %82 = load i32, i32* %j, align 4
  %sub154 = sub nsw i32 %82, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx153, i64 0, i64 %idxprom155
  %83 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %83 to i64
  %arrayidx158 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx156, i64 0, i64 %idxprom157
  %"a::var134" = load float, float* %arrayidx158, align 4
  %"a::var135" = fadd float %"a::var133", %"a::var134"
  %"a::var136" = fmul float 1.250000e-01, %"a::var135"
  %"a::var137" = fadd float %"a::var129", %"a::var136"
  %84 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %85 to i64
  %arrayidx163 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %84, i64 %idxprom162
  %86 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %86 to i64
  %arrayidx165 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx163, i64 0, i64 %idxprom164
  %87 = load i32, i32* %k, align 4
  %add166 = add nsw i32 %87, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx165, i64 0, i64 %idxprom167
  %"a::var138" = load float, float* %arrayidx168, align 4
  %88 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %89 to i64
  %arrayidx170 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %88, i64 %idxprom169
  %90 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %90 to i64
  %arrayidx172 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx170, i64 0, i64 %idxprom171
  %91 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %91 to i64
  %arrayidx174 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx172, i64 0, i64 %idxprom173
  %"a::var139" = load float, float* %arrayidx174, align 4
  %"a::var140" = fmul float 2.000000e+00, %"a::var139"
  %"a::var141" = fsub float %"a::var138", %"a::var140"
  %92 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %93 to i64
  %arrayidx178 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %92, i64 %idxprom177
  %94 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %94 to i64
  %arrayidx180 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx178, i64 0, i64 %idxprom179
  %95 = load i32, i32* %k, align 4
  %sub181 = sub nsw i32 %95, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx180, i64 0, i64 %idxprom182
  %"a::var142" = load float, float* %arrayidx183, align 4
  %"a::var143" = fadd float %"a::var141", %"a::var142"
  %"a::var144" = fmul float 1.250000e-01, %"a::var143"
  %"a::var145" = fadd float %"a::var137", %"a::var144"
  %96 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %97 to i64
  %arrayidx188 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %96, i64 %idxprom187
  %98 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %98 to i64
  %arrayidx190 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx188, i64 0, i64 %idxprom189
  %99 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %99 to i64
  %arrayidx192 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx190, i64 0, i64 %idxprom191
  %"a::var146" = load float, float* %arrayidx192, align 4
  %"a::var147" = fadd float %"a::var145", %"a::var146"
  %100 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %101 to i64
  %arrayidx195 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %100, i64 %idxprom194
  %102 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %102 to i64
  %arrayidx197 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx195, i64 0, i64 %idxprom196
  %103 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %103 to i64
  %arrayidx199 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx197, i64 0, i64 %idxprom198
  store float %"a::var147", float* %arrayidx199, align 4
  br label %for.inc200

for.inc200:                                       ; preds = %for.body112
  %104 = load i32, i32* %k, align 4
  %inc201 = add nsw i32 %104, 1
  store i32 %inc201, i32* %k, align 4
  br label %for.cond109, !llvm.loop !56

for.end202:                                       ; preds = %for.cond109
  br label %for.inc203

for.inc203:                                       ; preds = %for.end202
  %105 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %105, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond105, !llvm.loop !57

for.end205:                                       ; preds = %for.cond105
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %106 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %106, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond101, !llvm.loop !58

for.end208:                                       ; preds = %for.cond101
  br label %for.inc209

for.inc209:                                       ; preds = %for.end208
  %107 = load i32, i32* %t, align 4
  %inc210 = add nsw i32 %107, 1
  store i32 %inc210, i32* %t, align 4
  br label %for.cond, !llvm.loop !59

for.end211:                                       ; preds = %for.cond
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
!5 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!6 = !{i32 0, i1 false}
!7 = !{i32 -1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i32 0, i1 false, i32 0, i1 false}
!11 = !{i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1}
!14 = distinct !{!14, !9}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!16 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, i32, float*, i32)* @scale_3d.1, void (i32, i32, i32, float*, i32)* @scale_3d.2}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{}
!26 = !{void (i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @init_array}
!27 = !{void (i32, i32, i32, float*, i32)* @scale_3d}
!28 = !{void (i32, i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @kernel_heat_3d}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = !{void (i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @init_array.3}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = !{void (i32, i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @kernel_heat_3d.4}
!37 = distinct !{!37, !9}
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
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
