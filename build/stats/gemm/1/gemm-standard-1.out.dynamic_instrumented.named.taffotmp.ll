; ModuleID = './build/stats/gemm/1/gemm-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/gemm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('C') scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@C_float = dso_local global [10 x [12 x float]] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"

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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %C = alloca [10 x [12 x float]], align 16
  %A = alloca [10 x [16 x float]], align 16
  %B = alloca [16 x [12 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10, i32* %ni, align 4
  store i32 12, i32* %nj, align 4
  store i32 16, i32* %nk, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %C3 = bitcast [10 x [12 x float]]* %C to i8*
  %A4 = bitcast [10 x [16 x float]]* %A to i8*
  %B5 = bitcast [16 x [12 x float]]* %B to i8*
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %arraydecay = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, i32 noundef %2, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay6, [12 x float]* noundef %arraydecay7), !taffo.originalCall !13
  call void @timer_start()
  %3 = load i32, i32* %ni, align 4
  %4 = load i32, i32* %nj, align 4
  %5 = load i32, i32* %nk, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %"a::var25" = load float, float* %beta, align 4
  %arraydecay8 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i64 0, i64 0
  call void @kernel_gemm.2(i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %"a::var24", float noundef %"a::var25", [12 x float]* noundef %arraydecay8, [16 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %nj, align 4
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i64 0, i64 %idxprom
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom14
  %"a::var26" = load float, float* %arrayidx15, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* @C_float, i64 0, i64 %idxprom16
  %13 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var26", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond11, !llvm.loop !15

for.end:                                          ; preds = %for.cond11
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [12 x float]*, align 8
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [12 x float]* %C, [12 x float]** %C.addr, align 8
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [12 x float]* %B, [12 x float]** %B.addr, align 8
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
  %5 = load i32, i32* %nj.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8
  %"a::var27" = sitofp i32 %rem to float
  %9 = load i32, i32* %ni.addr, align 4
  %"a::var28" = sitofp i32 %9 to float
  %"a::var29" = fdiv float %"a::var27", %"a::var28"
  %10 = load [12 x float]*, [12 x float]** %C.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var29", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !22

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %ni.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body15, label %for.end35

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nk.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond16
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %20, 1
  %mul21 = mul nsw i32 %19, %add20
  %21 = load i32, i32* %nk.addr, align 4
  %rem22 = srem i32 %mul21, %21
  %"a::var30" = sitofp i32 %rem22 to float
  %22 = load i32, i32* %nk.addr, align 4
  %"a::var31" = sitofp i32 %22 to float
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %23 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 %idxprom26
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var32", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %26 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !24

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %27 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !25

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc57, %for.end35
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %nk.addr, align 4
  %cmp37 = icmp slt i32 %28, %29
  br i1 %cmp37, label %for.body39, label %for.end59

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc54, %for.body39
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %nj.addr, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body43, label %for.end56

for.body43:                                       ; preds = %for.cond40
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %33, 2
  %mul45 = mul nsw i32 %32, %add44
  %34 = load i32, i32* %nj.addr, align 4
  %rem46 = srem i32 %mul45, %34
  %"a::var33" = sitofp i32 %rem46 to float
  %35 = load i32, i32* %nj.addr, align 4
  %"a::var34" = sitofp i32 %35 to float
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %36 = load [12 x float]*, [12 x float]** %B.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [12 x float], [12 x float]* %36, i64 %idxprom50
  %38 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx51, i64 0, i64 %idxprom52
  store float %"a::var35", float* %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body43
  %39 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond40, !llvm.loop !26

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %40 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond36, !llvm.loop !27

for.end59:                                        ; preds = %for.cond36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !28 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [12 x float]*, align 8
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [12 x float]* %C, [12 x float]** %C.addr, align 8
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [12 x float]* %B, [12 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [12 x float]*, [12 x float]** %C.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom4
  %"a::var36" = load float, float* %arrayidx5, align 4
  %"a::var37" = fmul float %"a::var36", %4
  store float %"a::var37", float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !29

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc29, %for.end
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end31

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.body8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %nj.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  %13 = load float, float* %alpha.addr, align 4
  %14 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %14, i64 %idxprom12
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %"a::var38" = load float, float* %arrayidx15, align 4
  %"a::var39" = fmul float %13, %"a::var38"
  %17 = load [12 x float]*, [12 x float]** %B.addr, align 8
  %18 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %17, i64 %idxprom17
  %19 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx18, i64 0, i64 %idxprom19
  %"a::var40" = load float, float* %arrayidx20, align 4
  %"a::var41" = fmul float %"a::var39", %"a::var40"
  %20 = load [12 x float]*, [12 x float]** %C.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [12 x float], [12 x float]* %20, i64 %idxprom22
  %22 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var42" = load float, float* %arrayidx25, align 4
  %"a::var43" = fadd float %"a::var42", %"a::var41"
  store float %"a::var43", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body11
  %23 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond9, !llvm.loop !30

for.end28:                                        ; preds = %for.cond9
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %24 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond6, !llvm.loop !31

for.end31:                                        ; preds = %for.cond6
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %25 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [12 x float]*, align 8
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [12 x float]* %C, [12 x float]** %C.addr, align 8
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [12 x float]* %B, [12 x float]** %B.addr, align 8
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
  %5 = load i32, i32* %nj.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8
  %"a::var44" = sitofp i32 %rem to float
  %9 = load i32, i32* %ni.addr, align 4
  %"a::var45" = sitofp i32 %9 to float
  %"a::var46" = fdiv float %"a::var44", %"a::var45"
  %10 = load [12 x float]*, [12 x float]** %C.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var46", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !33

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %ni.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body15, label %for.end35

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nk.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond16
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %20, 1
  %mul21 = mul nsw i32 %19, %add20
  %21 = load i32, i32* %nk.addr, align 4
  %rem22 = srem i32 %mul21, %21
  %"a::var47" = sitofp i32 %rem22 to float
  %22 = load i32, i32* %nk.addr, align 4
  %"a::var48" = sitofp i32 %22 to float
  %"a::var49" = fdiv float %"a::var47", %"a::var48"
  %23 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [16 x float], [16 x float]* %23, i64 %idxprom26
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var49", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %26 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !35

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %27 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !36

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc57, %for.end35
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %nk.addr, align 4
  %cmp37 = icmp slt i32 %28, %29
  br i1 %cmp37, label %for.body39, label %for.end59

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc54, %for.body39
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %nj.addr, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body43, label %for.end56

for.body43:                                       ; preds = %for.cond40
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %33, 2
  %mul45 = mul nsw i32 %32, %add44
  %34 = load i32, i32* %nj.addr, align 4
  %rem46 = srem i32 %mul45, %34
  %"a::var50" = sitofp i32 %rem46 to float
  %35 = load i32, i32* %nj.addr, align 4
  %"a::var51" = sitofp i32 %35 to float
  %"a::var52" = fdiv float %"a::var50", %"a::var51"
  %36 = load [12 x float]*, [12 x float]** %B.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [12 x float], [12 x float]* %36, i64 %idxprom50
  %38 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx51, i64 0, i64 %idxprom52
  store float %"a::var52", float* %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body43
  %39 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond40, !llvm.loop !37

for.end56:                                        ; preds = %for.cond40
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %40 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond36, !llvm.loop !38

for.end59:                                        ; preds = %for.cond36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [12 x float]*, align 8
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [12 x float]* %C, [12 x float]** %C.addr, align 8
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [12 x float]* %B, [12 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [12 x float]*, [12 x float]** %C.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom4
  %"a::var53" = load float, float* %arrayidx5, align 4
  %"a::var54" = fmul float %"a::var53", %4
  store float %"a::var54", float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !39

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc29, %for.end
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end31

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.body8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %nj.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  %13 = load float, float* %alpha.addr, align 4
  %14 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %14, i64 %idxprom12
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %"a::var55" = load float, float* %arrayidx15, align 4
  %"a::var56" = fmul float %13, %"a::var55"
  %17 = load [12 x float]*, [12 x float]** %B.addr, align 8
  %18 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %17, i64 %idxprom17
  %19 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx18, i64 0, i64 %idxprom19
  %"a::var57" = load float, float* %arrayidx20, align 4
  %"a::var58" = fmul float %"a::var56", %"a::var57"
  %20 = load [12 x float]*, [12 x float]** %C.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [12 x float], [12 x float]* %20, i64 %idxprom22
  %22 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var59" = load float, float* %arrayidx25, align 4
  %"a::var60" = fadd float %"a::var59", %"a::var58"
  store float %"a::var60", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body11
  %23 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond9, !llvm.loop !40

for.end28:                                        ; preds = %for.cond9
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %24 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond6, !llvm.loop !41

for.end31:                                        ; preds = %for.cond6
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %25 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end34:                                        ; preds = %for.cond
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
!13 = !{void (i32, i32, i32, float*, float*, [12 x float]*, [16 x float]*, [12 x float]*)* @init_array}
!14 = !{void (i32, i32, i32, float, float, [12 x float]*, [16 x float]*, [12 x float]*)* @kernel_gemm}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, i32, float*, float*, [12 x float]*, [16 x float]*, [12 x float]*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = !{void (i32, i32, i32, float, float, [12 x float]*, [16 x float]*, [12 x float]*)* @kernel_gemm.2}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
