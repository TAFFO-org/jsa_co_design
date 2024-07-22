; ModuleID = './build/stats/gesummv/1/gesummv-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/gesummv.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [45 x i8] c"scalar(range(VAR_tmp_MIN,VAR_tmp_MAX) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [53 x i8] c"target('y') scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@y_float = dso_local global [16 x float] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata"

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
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %A = alloca [16 x [16 x float]], align 16
  %B = alloca [16 x [16 x float]], align 16
  %tmp = alloca [16 x float], align 16
  %x = alloca [16 x float], align 16
  %y = alloca [16 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 16, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %A3 = bitcast [16 x [16 x float]]* %A to i8*
  %B4 = bitcast [16 x [16 x float]]* %B to i8*
  %tmp5 = bitcast [16 x float]* %tmp to i8*
  %x6 = bitcast [16 x float]* %x to i8*
  %y7 = bitcast [16 x float]* %y to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %"a::var25" = load float, float* %beta, align 4
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i64 0, i64 0
  call void @kernel_gesummv.2(i32 noundef %1, float noundef %"a::var24", float noundef %"a::var25", [16 x float]* noundef %arraydecay12, [16 x float]* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i64 0, i64 %idxprom
  %"a::var26" = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %5 to i64
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i64 0, i64 %idxprom17
  store float %"a::var26", float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !16 !taffo.initweight !17 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !20 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %x.addr = alloca float*, align 8
  %tmp.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  store float* %y, float** %y.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, %5
  %"a::var27" = sitofp i32 %rem to float
  %6 = load i32, i32* %n.addr, align 4
  %"a::var28" = sitofp i32 %6 to float
  %"a::var29" = fdiv float %"a::var27", %"a::var28"
  %7 = load float*, float** %x.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  store float %"a::var29", float* %arrayidx, align 4
  %9 = load float*, float** %y.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  %11 = load float*, float** %tmp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %15, %16
  %add = add nsw i32 %mul, 1
  %17 = load i32, i32* %n.addr, align 4
  %rem12 = srem i32 %add, %17
  %"a::var30" = sitofp i32 %rem12 to float
  %18 = load i32, i32* %n.addr, align 4
  %"a::var31" = sitofp i32 %18 to float
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %19 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %19, i64 %idxprom16
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var32", float* %arrayidx19, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %mul20 = mul nsw i32 %22, %23
  %add21 = add nsw i32 %mul20, 2
  %24 = load i32, i32* %n.addr, align 4
  %rem22 = srem i32 %add21, %24
  %"a::var33" = sitofp i32 %rem22 to float
  %25 = load i32, i32* %n.addr, align 4
  %"a::var34" = sitofp i32 %25 to float
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %26 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [16 x float], [16 x float]* %26, i64 %idxprom26
  %28 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var35", float* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond8, !llvm.loop !21

for.end:                                          ; preds = %for.cond8
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !23 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %tmp.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %tmp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %4 = load float*, float** %y.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 %idxprom1
  store float 0.000000e+00, float* %arrayidx2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %8, i64 %idxprom6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx7, i64 0, i64 %idxprom8
  %"a::var36" = load float, float* %arrayidx9, align 4
  %11 = load float*, float** %x.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  %"a::var37" = load float, float* %arrayidx11, align 4
  %"a::var38" = fmul float %"a::var36", %"a::var37"
  %13 = load float*, float** %tmp.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds float, float* %13, i64 %idxprom12
  %"a::var39" = load float, float* %arrayidx13, align 4
  %"a::var40" = fadd float %"a::var38", %"a::var39"
  %15 = load float*, float** %tmp.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds float, float* %15, i64 %idxprom14
  store float %"a::var40", float* %arrayidx15, align 4
  %17 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %17, i64 %idxprom16
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i64 0, i64 %idxprom18
  %"a::var41" = load float, float* %arrayidx19, align 4
  %20 = load float*, float** %x.addr, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds float, float* %20, i64 %idxprom20
  %"a::var42" = load float, float* %arrayidx21, align 4
  %"a::var43" = fmul float %"a::var41", %"a::var42"
  %22 = load float*, float** %y.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds float, float* %22, i64 %idxprom23
  %"a::var44" = load float, float* %arrayidx24, align 4
  %"a::var45" = fadd float %"a::var43", %"a::var44"
  %24 = load float*, float** %y.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %24, i64 %idxprom26
  store float %"a::var45", float* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !24

for.end:                                          ; preds = %for.cond3
  %27 = load float, float* %alpha.addr, align 4
  %28 = load float*, float** %tmp.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds float, float* %28, i64 %idxprom28
  %"a::var46" = load float, float* %arrayidx29, align 4
  %"a::var47" = fmul float %27, %"a::var46"
  %"a::var48" = load float, float* %beta.addr, align 4
  %30 = load float*, float** %y.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds float, float* %30, i64 %idxprom31
  %"a::var49" = load float, float* %arrayidx32, align 4
  %"a::var50" = fmul float %"a::var48", %"a::var49"
  %"a::var51" = fadd float %"a::var47", %"a::var50"
  %32 = load float*, float** %y.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds float, float* %32, i64 %idxprom35
  store float %"a::var51", float* %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %34 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %x.addr = alloca float*, align 8
  %tmp.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  store float* %y, float** %y.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, %5
  %"a::var52" = sitofp i32 %rem to float
  %6 = load i32, i32* %n.addr, align 4
  %"a::var53" = sitofp i32 %6 to float
  %"a::var54" = fdiv float %"a::var52", %"a::var53"
  %7 = load float*, float** %x.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  store float %"a::var54", float* %arrayidx, align 4
  %9 = load float*, float** %y.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  %11 = load float*, float** %tmp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %15, %16
  %add = add nsw i32 %mul, 1
  %17 = load i32, i32* %n.addr, align 4
  %rem12 = srem i32 %add, %17
  %"a::var55" = sitofp i32 %rem12 to float
  %18 = load i32, i32* %n.addr, align 4
  %"a::var56" = sitofp i32 %18 to float
  %"a::var57" = fdiv float %"a::var55", %"a::var56"
  %19 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %19, i64 %idxprom16
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var57", float* %arrayidx19, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %mul20 = mul nsw i32 %22, %23
  %add21 = add nsw i32 %mul20, 2
  %24 = load i32, i32* %n.addr, align 4
  %rem22 = srem i32 %add21, %24
  %"a::var58" = sitofp i32 %rem22 to float
  %25 = load i32, i32* %n.addr, align 4
  %"a::var59" = sitofp i32 %25 to float
  %"a::var60" = fdiv float %"a::var58", %"a::var59"
  %26 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [16 x float], [16 x float]* %26, i64 %idxprom26
  %28 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var60", float* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond8, !llvm.loop !26

for.end:                                          ; preds = %for.cond8
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond, !llvm.loop !27

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.2(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !14 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [16 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %tmp.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %tmp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %4 = load float*, float** %y.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 %idxprom1
  store float 0.000000e+00, float* %arrayidx2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load [16 x float]*, [16 x float]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %8, i64 %idxprom6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx7, i64 0, i64 %idxprom8
  %"a::var61" = load float, float* %arrayidx9, align 4
  %11 = load float*, float** %x.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  %"a::var62" = load float, float* %arrayidx11, align 4
  %"a::var63" = fmul float %"a::var61", %"a::var62"
  %13 = load float*, float** %tmp.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds float, float* %13, i64 %idxprom12
  %"a::var64" = load float, float* %arrayidx13, align 4
  %"a::var65" = fadd float %"a::var63", %"a::var64"
  %15 = load float*, float** %tmp.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds float, float* %15, i64 %idxprom14
  store float %"a::var65", float* %arrayidx15, align 4
  %17 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %17, i64 %idxprom16
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i64 0, i64 %idxprom18
  %"a::var66" = load float, float* %arrayidx19, align 4
  %20 = load float*, float** %x.addr, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds float, float* %20, i64 %idxprom20
  %"a::var67" = load float, float* %arrayidx21, align 4
  %"a::var68" = fmul float %"a::var66", %"a::var67"
  %22 = load float*, float** %y.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds float, float* %22, i64 %idxprom23
  %"a::var69" = load float, float* %arrayidx24, align 4
  %"a::var70" = fadd float %"a::var68", %"a::var69"
  %24 = load float*, float** %y.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %24, i64 %idxprom26
  store float %"a::var70", float* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !28

for.end:                                          ; preds = %for.cond3
  %27 = load float, float* %alpha.addr, align 4
  %28 = load float*, float** %tmp.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds float, float* %28, i64 %idxprom28
  %"a::var71" = load float, float* %arrayidx29, align 4
  %"a::var72" = fmul float %27, %"a::var71"
  %"a::var73" = load float, float* %beta.addr, align 4
  %30 = load float*, float** %y.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds float, float* %30, i64 %idxprom31
  %"a::var74" = load float, float* %arrayidx32, align 4
  %"a::var75" = fmul float %"a::var73", %"a::var74"
  %"a::var76" = fadd float %"a::var72", %"a::var75"
  %32 = load float*, float** %y.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds float, float* %32, i64 %idxprom35
  store float %"a::var76", float* %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %34 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end39:                                        ; preds = %for.cond
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
!13 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array}
!14 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array.1}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv.2}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
