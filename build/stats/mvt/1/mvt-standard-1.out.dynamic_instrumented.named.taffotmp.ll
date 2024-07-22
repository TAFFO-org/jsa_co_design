; ModuleID = './build/stats/mvt/1/mvt-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
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
  call void @init_array.1(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @kernel_mvt.2(i32 noundef %1, float* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, [20 x float]* noundef %arraydecay14), !taffo.originalCall !14
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
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i64 0, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %5 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i64 0, i64 %idxprom15
  store float %"a::var24", float* %arrayidx16, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %x2, i64 0, i64 %idxprom17
  %"a::var25" = load float, float* %arrayidx18, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %7 to i64
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i64 0, i64 %idxprom19
  store float %"a::var25", float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !16 !taffo.initweight !17 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !20 {
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
  %"a::var26" = sitofp i32 %rem to float
  %4 = load i32, i32* %n.addr, align 4
  %"a::var27" = sitofp i32 %4 to float
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %5 = load float*, float** %x1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float %"a::var28", float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8
  %"a::var29" = sitofp i32 %rem4 to float
  %9 = load i32, i32* %n.addr, align 4
  %"a::var30" = sitofp i32 %9 to float
  %"a::var31" = fdiv float %"a::var29", %"a::var30"
  %10 = load float*, float** %x2.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom8
  store float %"a::var31", float* %arrayidx9, align 4
  %12 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %12, 3
  %13 = load i32, i32* %n.addr, align 4
  %rem11 = srem i32 %add10, %13
  %"a::var32" = sitofp i32 %rem11 to float
  %14 = load i32, i32* %n.addr, align 4
  %"a::var33" = sitofp i32 %14 to float
  %"a::var34" = fdiv float %"a::var32", %"a::var33"
  %15 = load float*, float** %y_1.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  store float %"a::var34", float* %arrayidx16, align 4
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 4
  %18 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %18
  %"a::var35" = sitofp i32 %rem18 to float
  %19 = load i32, i32* %n.addr, align 4
  %"a::var36" = sitofp i32 %19 to float
  %"a::var37" = fdiv float %"a::var35", %"a::var36"
  %20 = load float*, float** %y_2.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds float, float* %20, i64 %idxprom22
  store float %"a::var37", float* %arrayidx23, align 4
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
  %"a::var38" = sitofp i32 %rem28 to float
  %27 = load i32, i32* %n.addr, align 4
  %"a::var39" = sitofp i32 %27 to float
  %"a::var40" = fdiv float %"a::var38", %"a::var39"
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %28, i64 %idxprom32
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  store float %"a::var40", float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond24, !llvm.loop !21

for.end:                                          ; preds = %for.cond24
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !23 {
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
  %"a::var41" = load float, float* %arrayidx, align 4
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom4
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx5, i64 0, i64 %idxprom6
  %"a::var42" = load float, float* %arrayidx7, align 4
  %9 = load float*, float** %y_1.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 %idxprom8
  %"a::var43" = load float, float* %arrayidx9, align 4
  %"a::var44" = fmul float %"a::var42", %"a::var43"
  %"a::var45" = fadd float %"a::var41", %"a::var44"
  %11 = load float*, float** %x1.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  store float %"a::var45", float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

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
  %"a::var46" = load float, float* %arrayidx22, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom23
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i64 0, i64 %idxprom25
  %"a::var47" = load float, float* %arrayidx26, align 4
  %24 = load float*, float** %y_2.addr, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds float, float* %24, i64 %idxprom27
  %"a::var48" = load float, float* %arrayidx28, align 4
  %"a::var49" = fmul float %"a::var47", %"a::var48"
  %"a::var50" = fadd float %"a::var46", %"a::var49"
  %26 = load float*, float** %x2.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds float, float* %26, i64 %idxprom31
  store float %"a::var50", float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %28 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %28, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond18, !llvm.loop !26

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond15, !llvm.loop !27

for.end38:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !13 {
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
  %"a::var51" = sitofp i32 %rem to float
  %4 = load i32, i32* %n.addr, align 4
  %"a::var52" = sitofp i32 %4 to float
  %"a::var53" = fdiv float %"a::var51", %"a::var52"
  %5 = load float*, float** %x1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float %"a::var53", float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8
  %"a::var54" = sitofp i32 %rem4 to float
  %9 = load i32, i32* %n.addr, align 4
  %"a::var55" = sitofp i32 %9 to float
  %"a::var56" = fdiv float %"a::var54", %"a::var55"
  %10 = load float*, float** %x2.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom8
  store float %"a::var56", float* %arrayidx9, align 4
  %12 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %12, 3
  %13 = load i32, i32* %n.addr, align 4
  %rem11 = srem i32 %add10, %13
  %"a::var57" = sitofp i32 %rem11 to float
  %14 = load i32, i32* %n.addr, align 4
  %"a::var58" = sitofp i32 %14 to float
  %"a::var59" = fdiv float %"a::var57", %"a::var58"
  %15 = load float*, float** %y_1.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  store float %"a::var59", float* %arrayidx16, align 4
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 4
  %18 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %18
  %"a::var60" = sitofp i32 %rem18 to float
  %19 = load i32, i32* %n.addr, align 4
  %"a::var61" = sitofp i32 %19 to float
  %"a::var62" = fdiv float %"a::var60", %"a::var61"
  %20 = load float*, float** %y_2.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds float, float* %20, i64 %idxprom22
  store float %"a::var62", float* %arrayidx23, align 4
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
  %"a::var63" = sitofp i32 %rem28 to float
  %27 = load i32, i32* %n.addr, align 4
  %"a::var64" = sitofp i32 %27 to float
  %"a::var65" = fdiv float %"a::var63", %"a::var64"
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %28, i64 %idxprom32
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  store float %"a::var65", float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond24, !llvm.loop !28

for.end:                                          ; preds = %for.cond24
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.2(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !14 {
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
  %"a::var66" = load float, float* %arrayidx, align 4
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom4
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx5, i64 0, i64 %idxprom6
  %"a::var67" = load float, float* %arrayidx7, align 4
  %9 = load float*, float** %y_1.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 %idxprom8
  %"a::var68" = load float, float* %arrayidx9, align 4
  %"a::var69" = fmul float %"a::var67", %"a::var68"
  %"a::var70" = fadd float %"a::var66", %"a::var69"
  %11 = load float*, float** %x1.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  store float %"a::var70", float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !30

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

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
  %"a::var71" = load float, float* %arrayidx22, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom23
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i64 0, i64 %idxprom25
  %"a::var72" = load float, float* %arrayidx26, align 4
  %24 = load float*, float** %y_2.addr, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds float, float* %24, i64 %idxprom27
  %"a::var73" = load float, float* %arrayidx28, align 4
  %"a::var74" = fmul float %"a::var72", %"a::var73"
  %"a::var75" = fadd float %"a::var71", %"a::var74"
  %26 = load float*, float** %x2.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds float, float* %26, i64 %idxprom31
  store float %"a::var75", float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %28 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %28, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond18, !llvm.loop !32

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond15, !llvm.loop !33

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
!10 = !{}
!11 = !{i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1, i32 -1}
!13 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array}
!14 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array.1}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt.2}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}