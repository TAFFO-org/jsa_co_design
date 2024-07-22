; ModuleID = './build/stats/syr2k/1/syr2k-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [18 x i8] c"./sources/syr2k.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('C') scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"

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
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %C = alloca [16 x [16 x float]], align 16
  %A = alloca [16 x [10 x float]], align 16
  %B = alloca [16 x [10 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 16, i32* %n, align 4
  store i32 10, i32* %m, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %C3 = bitcast [16 x [16 x float]]* %C to i8*
  %A4 = bitcast [16 x [10 x float]]* %A to i8*
  %B5 = bitcast [16 x [10 x float]]* %B to i8*
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %m, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.originalCall !13
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* %m, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %"a::var25" = load float, float* %beta, align 4
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i64 0, i64 0
  call void @kernel_syr2k.2(i32 noundef %2, i32 noundef %3, float noundef %"a::var24", float noundef %"a::var25", [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [10 x float]* noundef %arraydecay10), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %6, %7
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i64 0, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom14
  %"a::var26" = load float, float* %arrayidx15, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i64 0, i64 %idxprom16
  %11 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var26", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond11, !llvm.loop !15

for.end:                                          ; preds = %for.cond11
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %13, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add, %8
  %"a::var27" = sitofp i32 %rem to float
  %9 = load i32, i32* %n.addr, align 4
  %"a::var28" = sitofp i32 %9 to float
  %"a::var29" = fdiv float %"a::var27", %"a::var28"
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var29", float* %arrayidx8, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %mul9 = mul nsw i32 %13, %14
  %add10 = add nsw i32 %mul9, 2
  %15 = load i32, i32* %m.addr, align 4
  %rem11 = srem i32 %add10, %15
  %"a::var30" = sitofp i32 %rem11 to float
  %16 = load i32, i32* %m.addr, align 4
  %"a::var31" = sitofp i32 %16 to float
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 %idxprom15
  %19 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx16, i64 0, i64 %idxprom17
  store float %"a::var32", float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !22

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end21:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc43, %for.end21
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp23 = icmp slt i32 %22, %23
  br i1 %cmp23, label %for.body25, label %for.end45

for.body25:                                       ; preds = %for.cond22
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %for.body25
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %mul30 = mul nsw i32 %26, %27
  %add31 = add nsw i32 %mul30, 3
  %28 = load i32, i32* %n.addr, align 4
  %rem32 = srem i32 %add31, %28
  %"a::var33" = sitofp i32 %rem32 to float
  %29 = load i32, i32* %m.addr, align 4
  %"a::var34" = sitofp i32 %29 to float
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %30 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [16 x float], [16 x float]* %30, i64 %idxprom36
  %32 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx37, i64 0, i64 %idxprom38
  store float %"a::var35", float* %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %33 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %33, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond26, !llvm.loop !24

for.end42:                                        ; preds = %for.cond26
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %34 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond22, !llvm.loop !25

for.end45:                                        ; preds = %for.cond22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !26 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom4
  %"a::var36" = load float, float* %arrayidx5, align 4
  %"a::var37" = fmul float %"a::var36", %4
  store float %"a::var37", float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !27

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc40, %for.end
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end42

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc37, %for.body8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %11, %12
  br i1 %cmp10, label %for.body11, label %for.end39

for.body11:                                       ; preds = %for.cond9
  %13 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %13, i64 %idxprom12
  %15 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %"a::var38" = load float, float* %arrayidx15, align 4
  %"a::var39" = load float, float* %alpha.addr, align 4
  %"a::var40" = fmul float %"a::var38", %"a::var39"
  %16 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %16, i64 %idxprom17
  %18 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx18, i64 0, i64 %idxprom19
  %"a::var41" = load float, float* %arrayidx20, align 4
  %"a::var42" = fmul float %"a::var40", %"a::var41"
  %19 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [10 x float], [10 x float]* %19, i64 %idxprom22
  %21 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var43" = load float, float* %arrayidx25, align 4
  %"a::var44" = load float, float* %alpha.addr, align 4
  %"a::var45" = fmul float %"a::var43", %"a::var44"
  %22 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [10 x float], [10 x float]* %22, i64 %idxprom27
  %24 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx28, i64 0, i64 %idxprom29
  %"a::var46" = load float, float* %arrayidx30, align 4
  %"a::var47" = fmul float %"a::var45", %"a::var46"
  %"a::var48" = fadd float %"a::var42", %"a::var47"
  %25 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %25, i64 %idxprom32
  %27 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %"a::var49" = load float, float* %arrayidx35, align 4
  %"a::var50" = fadd float %"a::var49", %"a::var48"
  store float %"a::var50", float* %arrayidx35, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body11
  %28 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond9, !llvm.loop !28

for.end39:                                        ; preds = %for.cond9
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %29 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %29, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond6, !llvm.loop !29

for.end42:                                        ; preds = %for.cond6
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %30 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %30, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end45:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add, %8
  %"a::var51" = sitofp i32 %rem to float
  %9 = load i32, i32* %n.addr, align 4
  %"a::var52" = sitofp i32 %9 to float
  %"a::var53" = fdiv float %"a::var51", %"a::var52"
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var53", float* %arrayidx8, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %mul9 = mul nsw i32 %13, %14
  %add10 = add nsw i32 %mul9, 2
  %15 = load i32, i32* %m.addr, align 4
  %rem11 = srem i32 %add10, %15
  %"a::var54" = sitofp i32 %rem11 to float
  %16 = load i32, i32* %m.addr, align 4
  %"a::var55" = sitofp i32 %16 to float
  %"a::var56" = fdiv float %"a::var54", %"a::var55"
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 %idxprom15
  %19 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx16, i64 0, i64 %idxprom17
  store float %"a::var56", float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !31

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end21:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc43, %for.end21
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp23 = icmp slt i32 %22, %23
  br i1 %cmp23, label %for.body25, label %for.end45

for.body25:                                       ; preds = %for.cond22
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %for.body25
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %mul30 = mul nsw i32 %26, %27
  %add31 = add nsw i32 %mul30, 3
  %28 = load i32, i32* %n.addr, align 4
  %rem32 = srem i32 %add31, %28
  %"a::var57" = sitofp i32 %rem32 to float
  %29 = load i32, i32* %m.addr, align 4
  %"a::var58" = sitofp i32 %29 to float
  %"a::var59" = fdiv float %"a::var57", %"a::var58"
  %30 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [16 x float], [16 x float]* %30, i64 %idxprom36
  %32 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx37, i64 0, i64 %idxprom38
  store float %"a::var59", float* %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %33 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %33, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond26, !llvm.loop !33

for.end42:                                        ; preds = %for.cond26
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %34 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond22, !llvm.loop !34

for.end45:                                        ; preds = %for.cond22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.2(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom4
  %"a::var60" = load float, float* %arrayidx5, align 4
  %"a::var61" = fmul float %"a::var60", %4
  store float %"a::var61", float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !35

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc40, %for.end
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end42

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc37, %for.body8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %11, %12
  br i1 %cmp10, label %for.body11, label %for.end39

for.body11:                                       ; preds = %for.cond9
  %13 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %13, i64 %idxprom12
  %15 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %"a::var62" = load float, float* %arrayidx15, align 4
  %"a::var63" = load float, float* %alpha.addr, align 4
  %"a::var64" = fmul float %"a::var62", %"a::var63"
  %16 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %16, i64 %idxprom17
  %18 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx18, i64 0, i64 %idxprom19
  %"a::var65" = load float, float* %arrayidx20, align 4
  %"a::var66" = fmul float %"a::var64", %"a::var65"
  %19 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [10 x float], [10 x float]* %19, i64 %idxprom22
  %21 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var67" = load float, float* %arrayidx25, align 4
  %"a::var68" = load float, float* %alpha.addr, align 4
  %"a::var69" = fmul float %"a::var67", %"a::var68"
  %22 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [10 x float], [10 x float]* %22, i64 %idxprom27
  %24 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx28, i64 0, i64 %idxprom29
  %"a::var70" = load float, float* %arrayidx30, align 4
  %"a::var71" = fmul float %"a::var69", %"a::var70"
  %"a::var72" = fadd float %"a::var66", %"a::var71"
  %25 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %25, i64 %idxprom32
  %27 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %"a::var73" = load float, float* %arrayidx35, align 4
  %"a::var74" = fadd float %"a::var73", %"a::var72"
  store float %"a::var74", float* %arrayidx35, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body11
  %28 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond9, !llvm.loop !36

for.end39:                                        ; preds = %for.cond9
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %29 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %29, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond6, !llvm.loop !37

for.end42:                                        ; preds = %for.cond6
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %30 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %30, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond, !llvm.loop !38

for.end45:                                        ; preds = %for.cond
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
!13 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array}
!14 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k.2}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
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
