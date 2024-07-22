; ModuleID = './build/stats/trmm/1/trmm-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
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
define dso_local void @timer_start() #0 !taffo.funinfo !10 !taffo.initweight !10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !10 !taffo.initweight !10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.funinfo !11 !taffo.initweight !12 {
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
  %A2 = bitcast [10 x [10 x float]]* %A to i8*
  %B3 = bitcast [10 x [16 x float]]* %B to i8*
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4), !taffo.originalCall !13
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @kernel_trmm.2(i32 noundef %2, i32 noundef %3, float noundef %"a::var24", [10 x float]* noundef %arraydecay5, [16 x float]* noundef %arraydecay6), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n, align 4
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom10
  %"a::var25" = load float, float* %arrayidx11, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i64 0, i64 %idxprom12
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i64 0, i64 %idxprom14
  store float %"a::var25", float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond7, !llvm.loop !15

for.end:                                          ; preds = %for.cond7
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end18:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !17 !taffo.initweight !18 !taffo.equivalentChild !19 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var26" = sitofp i32 %rem to float
  %10 = load i32, i32* %m.addr, align 4
  %"a::var27" = sitofp i32 %10 to float
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %11 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom8
  store float %"a::var28", float* %arrayidx9, align 4
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
  br label %for.cond3, !llvm.loop !20

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
  %"a::var29" = sitofp i32 %rem23 to float
  %27 = load i32, i32* %n.addr, align 4
  %"a::var30" = sitofp i32 %27 to float
  %"a::var31" = fdiv float %"a::var29", %"a::var30"
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom27
  %30 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx28, i64 0, i64 %idxprom29
  store float %"a::var31", float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21
  %31 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond18, !llvm.loop !21

for.end33:                                        ; preds = %for.cond18
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %32 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !17 !taffo.initweight !18 !taffo.equivalentChild !23 {
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
  %"a::var32" = load float, float* %arrayidx8, align 4
  %10 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var33" = load float, float* %arrayidx12, align 4
  %"a::var34" = fmul float %"a::var32", %"a::var33"
  %13 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %13, i64 %idxprom13
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var35" = load float, float* %arrayidx16, align 4
  %"a::var36" = fadd float %"a::var35", %"a::var34"
  store float %"a::var36", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  %17 = load float, float* %alpha.addr, align 4
  %18 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %18, i64 %idxprom18
  %20 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var37" = load float, float* %arrayidx21, align 4
  %"a::var38" = fmul float %17, %"a::var37"
  %21 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %21, i64 %idxprom23
  %23 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx24, i64 0, i64 %idxprom25
  store float %"a::var38", float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %24 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end29:                                        ; preds = %for.cond1
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %25 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %25, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !17 !taffo.initweight !18 !taffo.sourceFunction !13 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var39" = sitofp i32 %rem to float
  %10 = load i32, i32* %m.addr, align 4
  %"a::var40" = sitofp i32 %10 to float
  %"a::var41" = fdiv float %"a::var39", %"a::var40"
  %11 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom8
  store float %"a::var41", float* %arrayidx9, align 4
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
  br label %for.cond3, !llvm.loop !27

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
  %"a::var42" = sitofp i32 %rem23 to float
  %27 = load i32, i32* %n.addr, align 4
  %"a::var43" = sitofp i32 %27 to float
  %"a::var44" = fdiv float %"a::var42", %"a::var43"
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom27
  %30 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx28, i64 0, i64 %idxprom29
  store float %"a::var44", float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21
  %31 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond18, !llvm.loop !28

for.end33:                                        ; preds = %for.cond18
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %32 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !17 !taffo.initweight !18 !taffo.sourceFunction !14 {
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
  %"a::var45" = load float, float* %arrayidx8, align 4
  %10 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var46" = load float, float* %arrayidx12, align 4
  %"a::var47" = fmul float %"a::var45", %"a::var46"
  %13 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %13, i64 %idxprom13
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var48" = load float, float* %arrayidx16, align 4
  %"a::var49" = fadd float %"a::var48", %"a::var47"
  store float %"a::var49", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !30

for.end:                                          ; preds = %for.cond4
  %17 = load float, float* %alpha.addr, align 4
  %18 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %18, i64 %idxprom18
  %20 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var50" = load float, float* %arrayidx21, align 4
  %"a::var51" = fmul float %17, %"a::var50"
  %21 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %21, i64 %idxprom23
  %23 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx24, i64 0, i64 %idxprom25
  store float %"a::var51", float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %24 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond1, !llvm.loop !31

for.end29:                                        ; preds = %for.cond1
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %25 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %25, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end32:                                        ; preds = %for.cond
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
!10 = !{}
!11 = !{i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1, i32 -1}
!13 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array}
!14 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array.1}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm.2}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
