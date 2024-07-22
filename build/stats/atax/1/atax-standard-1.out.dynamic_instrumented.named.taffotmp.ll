; ModuleID = './build/stats/atax/1/atax-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/atax.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('y') scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [45 x i8] c"scalar(range(VAR_tmp_MIN,VAR_tmp_MAX) final)\00", section "llvm.metadata"
@y_float = dso_local global [22 x float] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 22) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

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
  %A = alloca [20 x [22 x float]], align 16
  %x = alloca [22 x float], align 16
  %y = alloca [22 x float], align 16
  %tmp = alloca [20 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %m, align 4
  store i32 22, i32* %n, align 4
  %A1 = bitcast [20 x [22 x float]]* %A to i8*
  %x2 = bitcast [22 x float]* %x to i8*
  %y3 = bitcast [22 x float]* %y to i8*
  %tmp4 = bitcast [20 x float]* %tmp to i8*
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.originalCall !13
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i64 0, i64 0
  call void @kernel_atax.2(i32 noundef %2, i32 noundef %3, [22 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i64 0, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i64 0, i64 %idxprom12
  store float %"a::var24", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !16 !taffo.initweight !17 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !20 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %tmp.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %fn3 = bitcast float* %fn to i8*
  %0 = load i32, i32* %n.addr, align 4
  %"a::var25" = sitofp i32 %0 to float
  store float %"a::var25", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %"a::var26" = sitofp i32 %3 to float
  %"a::var27" = load float, float* %fn, align 4
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %"a::var29" = fadd float 1.000000e+00, %"a::var28"
  %4 = load float*, float** %x.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %"a::var29", float* %arrayidx, align 4
  %6 = load float*, float** %y.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds float, float* %6, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc29, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body11, label %for.end31

for.body11:                                       ; preds = %for.cond8
  %11 = load float*, float** %tmp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds float, float* %11, i64 %idxprom12
  store float 0.000000e+00, float* %arrayidx13, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc26, %for.body11
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond14
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %15, %16
  %17 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add18, %17
  %"a::var30" = sitofp i32 %rem to float
  %18 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 5, %18
  %"a::var31" = sitofp i32 %mul to float
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %19 = load [22 x float]*, [22 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [22 x float], [22 x float]* %19, i64 %idxprom22
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var32", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17
  %22 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond14, !llvm.loop !22

for.end28:                                        ; preds = %for.cond14
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %23 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond8, !llvm.loop !23

for.end31:                                        ; preds = %for.cond8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !24 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %tmp.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %y.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc40, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end42

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %tmp.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %11 = load float*, float** %tmp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  %"a::var33" = load float, float* %arrayidx10, align 4
  %13 = load [22 x float]*, [22 x float]** %A.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [22 x float], [22 x float]* %13, i64 %idxprom11
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx12, i64 0, i64 %idxprom13
  %"a::var34" = load float, float* %arrayidx14, align 4
  %16 = load float*, float** %x.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds float, float* %16, i64 %idxprom15
  %"a::var35" = load float, float* %arrayidx16, align 4
  %"a::var36" = fmul float %"a::var34", %"a::var35"
  %"a::var37" = fadd float %"a::var33", %"a::var36"
  %18 = load float*, float** %tmp.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 %idxprom17
  store float %"a::var37", float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8
  %20 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond6, !llvm.loop !26

for.end21:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc37, %for.end21
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %n.addr, align 4
  %cmp23 = icmp slt i32 %21, %22
  br i1 %cmp23, label %for.body24, label %for.end39

for.body24:                                       ; preds = %for.cond22
  %23 = load float*, float** %y.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds float, float* %23, i64 %idxprom25
  %"a::var38" = load float, float* %arrayidx26, align 4
  %25 = load [22 x float]*, [22 x float]** %A.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [22 x float], [22 x float]* %25, i64 %idxprom27
  %27 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx28, i64 0, i64 %idxprom29
  %"a::var39" = load float, float* %arrayidx30, align 4
  %28 = load float*, float** %tmp.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds float, float* %28, i64 %idxprom31
  %"a::var40" = load float, float* %arrayidx32, align 4
  %"a::var41" = fmul float %"a::var39", %"a::var40"
  %"a::var42" = fadd float %"a::var38", %"a::var41"
  %30 = load float*, float** %y.addr, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds float, float* %30, i64 %idxprom35
  store float %"a::var42", float* %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body24
  %32 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %32, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond22, !llvm.loop !27

for.end39:                                        ; preds = %for.cond22
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %33 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %33, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond1, !llvm.loop !28

for.end42:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !13 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %tmp.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %fn3 = bitcast float* %fn to i8*
  %0 = load i32, i32* %n.addr, align 4
  %"a::var43" = sitofp i32 %0 to float
  store float %"a::var43", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %"a::var44" = sitofp i32 %3 to float
  %"a::var45" = load float, float* %fn, align 4
  %"a::var46" = fdiv float %"a::var44", %"a::var45"
  %"a::var47" = fadd float 1.000000e+00, %"a::var46"
  %4 = load float*, float** %x.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %"a::var47", float* %arrayidx, align 4
  %6 = load float*, float** %y.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds float, float* %6, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc29, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body11, label %for.end31

for.body11:                                       ; preds = %for.cond8
  %11 = load float*, float** %tmp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds float, float* %11, i64 %idxprom12
  store float 0.000000e+00, float* %arrayidx13, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc26, %for.body11
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond14
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %15, %16
  %17 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add18, %17
  %"a::var48" = sitofp i32 %rem to float
  %18 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 5, %18
  %"a::var49" = sitofp i32 %mul to float
  %"a::var50" = fdiv float %"a::var48", %"a::var49"
  %19 = load [22 x float]*, [22 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [22 x float], [22 x float]* %19, i64 %idxprom22
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var50", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17
  %22 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond14, !llvm.loop !30

for.end28:                                        ; preds = %for.cond14
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %23 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond8, !llvm.loop !31

for.end31:                                        ; preds = %for.cond8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.2(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !14 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %tmp.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %tmp, float** %tmp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %y.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc40, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end42

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %tmp.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %11 = load float*, float** %tmp.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  %"a::var51" = load float, float* %arrayidx10, align 4
  %13 = load [22 x float]*, [22 x float]** %A.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [22 x float], [22 x float]* %13, i64 %idxprom11
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx12, i64 0, i64 %idxprom13
  %"a::var52" = load float, float* %arrayidx14, align 4
  %16 = load float*, float** %x.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds float, float* %16, i64 %idxprom15
  %"a::var53" = load float, float* %arrayidx16, align 4
  %"a::var54" = fmul float %"a::var52", %"a::var53"
  %"a::var55" = fadd float %"a::var51", %"a::var54"
  %18 = load float*, float** %tmp.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 %idxprom17
  store float %"a::var55", float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8
  %20 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond6, !llvm.loop !33

for.end21:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc37, %for.end21
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %n.addr, align 4
  %cmp23 = icmp slt i32 %21, %22
  br i1 %cmp23, label %for.body24, label %for.end39

for.body24:                                       ; preds = %for.cond22
  %23 = load float*, float** %y.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds float, float* %23, i64 %idxprom25
  %"a::var56" = load float, float* %arrayidx26, align 4
  %25 = load [22 x float]*, [22 x float]** %A.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [22 x float], [22 x float]* %25, i64 %idxprom27
  %27 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx28, i64 0, i64 %idxprom29
  %"a::var57" = load float, float* %arrayidx30, align 4
  %28 = load float*, float** %tmp.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds float, float* %28, i64 %idxprom31
  %"a::var58" = load float, float* %arrayidx32, align 4
  %"a::var59" = fmul float %"a::var57", %"a::var58"
  %"a::var60" = fadd float %"a::var56", %"a::var59"
  %30 = load float*, float** %y.addr, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds float, float* %30, i64 %idxprom35
  store float %"a::var60", float* %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body24
  %32 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %32, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond22, !llvm.loop !34

for.end39:                                        ; preds = %for.cond22
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %33 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %33, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond1, !llvm.loop !35

for.end42:                                        ; preds = %for.cond1
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
!13 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array}
!14 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array.1}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax.2}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
