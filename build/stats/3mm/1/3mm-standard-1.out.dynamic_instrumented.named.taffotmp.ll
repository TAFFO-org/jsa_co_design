; ModuleID = './build/stats/3mm/1/3mm-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_E_MIN,VAR_E_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/3mm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_F_MIN,VAR_F_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_D_MIN,VAR_D_MAX) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [53 x i8] c"target('G') scalar(range(VAR_G_MIN,VAR_G_MAX) final)\00", section "llvm.metadata"
@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 14))\00", section "llvm.metadata"

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
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %E = alloca [6 x [8 x float]], align 16
  %A = alloca [6 x [10 x float]], align 16
  %B = alloca [10 x [8 x float]], align 16
  %F = alloca [8 x [12 x float]], align 16
  %C = alloca [8 x [14 x float]], align 16
  %D = alloca [14 x [12 x float]], align 16
  %G = alloca [6 x [12 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 6, i32* %ni, align 4
  store i32 8, i32* %nj, align 4
  store i32 10, i32* %nk, align 4
  store i32 12, i32* %nl, align 4
  store i32 14, i32* %nm, align 4
  %E1 = bitcast [6 x [8 x float]]* %E to i8*
  %A2 = bitcast [6 x [10 x float]]* %A to i8*
  %B3 = bitcast [10 x [8 x float]]* %B to i8*
  %F4 = bitcast [8 x [12 x float]]* %F to i8*
  %C5 = bitcast [8 x [14 x float]]* %C to i8*
  %D6 = bitcast [14 x [12 x float]]* %D to i8*
  %G7 = bitcast [6 x [12 x float]]* %G to i8*
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %4 = load i32, i32* %nm, align 4
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.originalCall !13
  call void @timer_start()
  %5 = load i32, i32* %ni, align 4
  %6 = load i32, i32* %nj, align 4
  %7 = load i32, i32* %nk, align 4
  %8 = load i32, i32* %nl, align 4
  %9 = load i32, i32* %nm, align 4
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i64 0, i64 0
  call void @kernel_3mm.2(i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, [8 x float]* noundef %arraydecay14, [10 x float]* noundef %arraydecay15, [8 x float]* noundef %arraydecay16, [12 x float]* noundef %arraydecay17, [14 x float]* noundef %arraydecay18, [12 x float]* noundef %arraydecay19, [12 x float]* noundef %arraydecay20), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nl, align 4
  %cmp22 = icmp slt i32 %12, %13
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i64 0, i64 %idxprom
  %15 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom24
  %"a::var24" = load float, float* %arrayidx25, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i64 0, i64 %idxprom26
  %17 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var24", float* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond21, !llvm.loop !15

for.end:                                          ; preds = %for.cond21
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %19, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end32:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [8 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [12 x float]*, align 8
  %E.addr = alloca [8 x float]*, align 8
  %F.addr = alloca [12 x float]*, align 8
  %G.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [8 x float]* %B, [8 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [12 x float]* %D, [12 x float]** %D.addr, align 8
  store [8 x float]* %E, [8 x float]** %E.addr, align 8
  store [12 x float]* %F, [12 x float]** %F.addr, align 8
  store [12 x float]* %G, [12 x float]** %G.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, 1
  %6 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %6
  %"a::var25" = sitofp i32 %rem to float
  %7 = load i32, i32* %ni.addr, align 4
  %mul6 = mul nsw i32 5, %7
  %"a::var26" = sitofp i32 %mul6 to float
  %"a::var27" = fdiv float %"a::var25", %"a::var26"
  %8 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %8, i64 %idxprom
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom8
  store float %"a::var27", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !22

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end12:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc36, %for.end12
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nk.addr, align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body16, label %for.end38

for.body16:                                       ; preds = %for.cond13
  store i32 0, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc33, %for.body16
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %nj.addr, align 4
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond17
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %18, 1
  %mul22 = mul nsw i32 %17, %add21
  %add23 = add nsw i32 %mul22, 2
  %19 = load i32, i32* %nj.addr, align 4
  %rem24 = srem i32 %add23, %19
  %"a::var28" = sitofp i32 %rem24 to float
  %20 = load i32, i32* %nj.addr, align 4
  %mul26 = mul nsw i32 5, %20
  %"a::var29" = sitofp i32 %mul26 to float
  %"a::var30" = fdiv float %"a::var28", %"a::var29"
  %21 = load [8 x float]*, [8 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 %idxprom29
  %23 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx30, i64 0, i64 %idxprom31
  store float %"a::var30", float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %24 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond17, !llvm.loop !24

for.end35:                                        ; preds = %for.cond17
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %25 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond13, !llvm.loop !25

for.end38:                                        ; preds = %for.cond13
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc61, %for.end38
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %26, %27
  br i1 %cmp40, label %for.body42, label %for.end63

for.body42:                                       ; preds = %for.cond39
  store i32 0, i32* %j, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc58, %for.body42
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %nm.addr, align 4
  %cmp44 = icmp slt i32 %28, %29
  br i1 %cmp44, label %for.body46, label %for.end60

for.body46:                                       ; preds = %for.cond43
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %31, 3
  %mul48 = mul nsw i32 %30, %add47
  %32 = load i32, i32* %nl.addr, align 4
  %rem49 = srem i32 %mul48, %32
  %"a::var31" = sitofp i32 %rem49 to float
  %33 = load i32, i32* %nl.addr, align 4
  %mul51 = mul nsw i32 5, %33
  %"a::var32" = sitofp i32 %mul51 to float
  %"a::var33" = fdiv float %"a::var31", %"a::var32"
  %34 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds [14 x float], [14 x float]* %34, i64 %idxprom54
  %36 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx55, i64 0, i64 %idxprom56
  store float %"a::var33", float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body46
  %37 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %37, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond43, !llvm.loop !26

for.end60:                                        ; preds = %for.cond43
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %38 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %38, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond39, !llvm.loop !27

for.end63:                                        ; preds = %for.cond39
  store i32 0, i32* %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc87, %for.end63
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %nm.addr, align 4
  %cmp65 = icmp slt i32 %39, %40
  br i1 %cmp65, label %for.body67, label %for.end89

for.body67:                                       ; preds = %for.cond64
  store i32 0, i32* %j, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc84, %for.body67
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %nl.addr, align 4
  %cmp69 = icmp slt i32 %41, %42
  br i1 %cmp69, label %for.body71, label %for.end86

for.body71:                                       ; preds = %for.cond68
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %j, align 4
  %add72 = add nsw i32 %44, 2
  %mul73 = mul nsw i32 %43, %add72
  %add74 = add nsw i32 %mul73, 2
  %45 = load i32, i32* %nk.addr, align 4
  %rem75 = srem i32 %add74, %45
  %"a::var34" = sitofp i32 %rem75 to float
  %46 = load i32, i32* %nk.addr, align 4
  %mul77 = mul nsw i32 5, %46
  %"a::var35" = sitofp i32 %mul77 to float
  %"a::var36" = fdiv float %"a::var34", %"a::var35"
  %47 = load [12 x float]*, [12 x float]** %D.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %48 to i64
  %arrayidx81 = getelementptr inbounds [12 x float], [12 x float]* %47, i64 %idxprom80
  %49 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx81, i64 0, i64 %idxprom82
  store float %"a::var36", float* %arrayidx83, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %for.body71
  %50 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %50, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond68, !llvm.loop !28

for.end86:                                        ; preds = %for.cond68
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %51 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %51, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond64, !llvm.loop !29

for.end89:                                        ; preds = %for.cond64
  store i32 0, i32* %i, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc105, %for.end89
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %ni.addr, align 4
  %cmp91 = icmp slt i32 %52, %53
  br i1 %cmp91, label %for.body93, label %for.end107

for.body93:                                       ; preds = %for.cond90
  store i32 0, i32* %j, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc102, %for.body93
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %nj.addr, align 4
  %cmp95 = icmp slt i32 %54, %55
  br i1 %cmp95, label %for.body97, label %for.end104

for.body97:                                       ; preds = %for.cond94
  %56 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %57 to i64
  %arrayidx99 = getelementptr inbounds [8 x float], [8 x float]* %56, i64 %idxprom98
  %58 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %58 to i64
  %arrayidx101 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx99, i64 0, i64 %idxprom100
  store float 0.000000e+00, float* %arrayidx101, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %for.body97
  %59 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %59, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond94, !llvm.loop !30

for.end104:                                       ; preds = %for.cond94
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %60 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %60, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond90, !llvm.loop !31

for.end107:                                       ; preds = %for.cond90
  store i32 0, i32* %i, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc123, %for.end107
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %nj.addr, align 4
  %cmp109 = icmp slt i32 %61, %62
  br i1 %cmp109, label %for.body111, label %for.end125

for.body111:                                      ; preds = %for.cond108
  store i32 0, i32* %j, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc120, %for.body111
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %nl.addr, align 4
  %cmp113 = icmp slt i32 %63, %64
  br i1 %cmp113, label %for.body115, label %for.end122

for.body115:                                      ; preds = %for.cond112
  %65 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %66 to i64
  %arrayidx117 = getelementptr inbounds [12 x float], [12 x float]* %65, i64 %idxprom116
  %67 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %67 to i64
  %arrayidx119 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float 0.000000e+00, float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body115
  %68 = load i32, i32* %j, align 4
  %inc121 = add nsw i32 %68, 1
  store i32 %inc121, i32* %j, align 4
  br label %for.cond112, !llvm.loop !32

for.end122:                                       ; preds = %for.cond112
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %69 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %69, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond108, !llvm.loop !33

for.end125:                                       ; preds = %for.cond108
  store i32 0, i32* %i, align 4
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc141, %for.end125
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %ni.addr, align 4
  %cmp127 = icmp slt i32 %70, %71
  br i1 %cmp127, label %for.body129, label %for.end143

for.body129:                                      ; preds = %for.cond126
  store i32 0, i32* %j, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc138, %for.body129
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %nl.addr, align 4
  %cmp131 = icmp slt i32 %72, %73
  br i1 %cmp131, label %for.body133, label %for.end140

for.body133:                                      ; preds = %for.cond130
  %74 = load [12 x float]*, [12 x float]** %G.addr, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %75 to i64
  %arrayidx135 = getelementptr inbounds [12 x float], [12 x float]* %74, i64 %idxprom134
  %76 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %76 to i64
  %arrayidx137 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx135, i64 0, i64 %idxprom136
  store float 0.000000e+00, float* %arrayidx137, align 4
  br label %for.inc138

for.inc138:                                       ; preds = %for.body133
  %77 = load i32, i32* %j, align 4
  %inc139 = add nsw i32 %77, 1
  store i32 %inc139, i32* %j, align 4
  br label %for.cond130, !llvm.loop !34

for.end140:                                       ; preds = %for.cond130
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %78 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %78, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond126, !llvm.loop !35

for.end143:                                       ; preds = %for.cond126
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !36 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca [8 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [8 x float]*, align 8
  %F.addr = alloca [12 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [12 x float]*, align 8
  %G.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [8 x float]* %E, [8 x float]** %E.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [8 x float]* %B, [8 x float]** %B.addr, align 8
  store [12 x float]* %F, [12 x float]** %F.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [12 x float]* %D, [12 x float]** %D.addr, align 8
  store [12 x float]* %G, [12 x float]** %G.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  %4 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i64 0, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %9 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %9, i64 %idxprom9
  %11 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var37" = load float, float* %arrayidx12, align 4
  %12 = load [8 x float]*, [8 x float]** %B.addr, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [8 x float], [8 x float]* %12, i64 %idxprom13
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var38" = load float, float* %arrayidx16, align 4
  %"a::var39" = fmul float %"a::var37", %"a::var38"
  %15 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 %idxprom17
  %17 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx18, i64 0, i64 %idxprom19
  %"a::var40" = load float, float* %arrayidx20, align 4
  %"a::var41" = fadd float %"a::var40", %"a::var39"
  store float %"a::var41", float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !37

for.end:                                          ; preds = %for.cond6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond1, !llvm.loop !38

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %20 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond, !llvm.loop !39

for.end26:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc60, %for.end26
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nj.addr, align 4
  %cmp28 = icmp slt i32 %21, %22
  br i1 %cmp28, label %for.body29, label %for.end62

for.body29:                                       ; preds = %for.cond27
  store i32 0, i32* %j, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.body29
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %nl.addr, align 4
  %cmp31 = icmp slt i32 %23, %24
  br i1 %cmp31, label %for.body32, label %for.end59

for.body32:                                       ; preds = %for.cond30
  %25 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %25, i64 %idxprom33
  %27 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx34, i64 0, i64 %idxprom35
  store float 0.000000e+00, float* %arrayidx36, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc54, %for.body32
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %nm.addr, align 4
  %cmp38 = icmp slt i32 %28, %29
  br i1 %cmp38, label %for.body39, label %for.end56

for.body39:                                       ; preds = %for.cond37
  %30 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [14 x float], [14 x float]* %30, i64 %idxprom40
  %32 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx41, i64 0, i64 %idxprom42
  %"a::var42" = load float, float* %arrayidx43, align 4
  %33 = load [12 x float]*, [12 x float]** %D.addr, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [12 x float], [12 x float]* %33, i64 %idxprom44
  %35 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx45, i64 0, i64 %idxprom46
  %"a::var43" = load float, float* %arrayidx47, align 4
  %"a::var44" = fmul float %"a::var42", %"a::var43"
  %36 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [12 x float], [12 x float]* %36, i64 %idxprom49
  %38 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx50, i64 0, i64 %idxprom51
  %"a::var45" = load float, float* %arrayidx52, align 4
  %"a::var46" = fadd float %"a::var45", %"a::var44"
  store float %"a::var46", float* %arrayidx52, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body39
  %39 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond37, !llvm.loop !40

for.end56:                                        ; preds = %for.cond37
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %40 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond30, !llvm.loop !41

for.end59:                                        ; preds = %for.cond30
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %41 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %41, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond27, !llvm.loop !42

for.end62:                                        ; preds = %for.cond27
  store i32 0, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc96, %for.end62
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %ni.addr, align 4
  %cmp64 = icmp slt i32 %42, %43
  br i1 %cmp64, label %for.body65, label %for.end98

for.body65:                                       ; preds = %for.cond63
  store i32 0, i32* %j, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc93, %for.body65
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %nl.addr, align 4
  %cmp67 = icmp slt i32 %44, %45
  br i1 %cmp67, label %for.body68, label %for.end95

for.body68:                                       ; preds = %for.cond66
  %46 = load [12 x float]*, [12 x float]** %G.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [12 x float], [12 x float]* %46, i64 %idxprom69
  %48 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx70, i64 0, i64 %idxprom71
  store float 0.000000e+00, float* %arrayidx72, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc90, %for.body68
  %49 = load i32, i32* %k, align 4
  %50 = load i32, i32* %nj.addr, align 4
  %cmp74 = icmp slt i32 %49, %50
  br i1 %cmp74, label %for.body75, label %for.end92

for.body75:                                       ; preds = %for.cond73
  %51 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %52 to i64
  %arrayidx77 = getelementptr inbounds [8 x float], [8 x float]* %51, i64 %idxprom76
  %53 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %53 to i64
  %arrayidx79 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx77, i64 0, i64 %idxprom78
  %"a::var47" = load float, float* %arrayidx79, align 4
  %54 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %55 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [12 x float], [12 x float]* %54, i64 %idxprom80
  %56 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %56 to i64
  %arrayidx83 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx81, i64 0, i64 %idxprom82
  %"a::var48" = load float, float* %arrayidx83, align 4
  %"a::var49" = fmul float %"a::var47", %"a::var48"
  %57 = load [12 x float]*, [12 x float]** %G.addr, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %58 to i64
  %arrayidx86 = getelementptr inbounds [12 x float], [12 x float]* %57, i64 %idxprom85
  %59 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx86, i64 0, i64 %idxprom87
  %"a::var50" = load float, float* %arrayidx88, align 4
  %"a::var51" = fadd float %"a::var50", %"a::var49"
  store float %"a::var51", float* %arrayidx88, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %for.body75
  %60 = load i32, i32* %k, align 4
  %inc91 = add nsw i32 %60, 1
  store i32 %inc91, i32* %k, align 4
  br label %for.cond73, !llvm.loop !43

for.end92:                                        ; preds = %for.cond73
  br label %for.inc93

for.inc93:                                        ; preds = %for.end92
  %61 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %61, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond66, !llvm.loop !44

for.end95:                                        ; preds = %for.cond66
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %62 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %62, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond63, !llvm.loop !45

for.end98:                                        ; preds = %for.cond63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [8 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [12 x float]*, align 8
  %E.addr = alloca [8 x float]*, align 8
  %F.addr = alloca [12 x float]*, align 8
  %G.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [8 x float]* %B, [8 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [12 x float]* %D, [12 x float]** %D.addr, align 8
  store [8 x float]* %E, [8 x float]** %E.addr, align 8
  store [12 x float]* %F, [12 x float]** %F.addr, align 8
  store [12 x float]* %G, [12 x float]** %G.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, 1
  %6 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %6
  %"a::var52" = sitofp i32 %rem to float
  %7 = load i32, i32* %ni.addr, align 4
  %mul6 = mul nsw i32 5, %7
  %"a::var53" = sitofp i32 %mul6 to float
  %"a::var54" = fdiv float %"a::var52", %"a::var53"
  %8 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %8, i64 %idxprom
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom8
  store float %"a::var54", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !46

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !47

for.end12:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc36, %for.end12
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nk.addr, align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body16, label %for.end38

for.body16:                                       ; preds = %for.cond13
  store i32 0, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc33, %for.body16
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %nj.addr, align 4
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond17
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %18, 1
  %mul22 = mul nsw i32 %17, %add21
  %add23 = add nsw i32 %mul22, 2
  %19 = load i32, i32* %nj.addr, align 4
  %rem24 = srem i32 %add23, %19
  %"a::var55" = sitofp i32 %rem24 to float
  %20 = load i32, i32* %nj.addr, align 4
  %mul26 = mul nsw i32 5, %20
  %"a::var56" = sitofp i32 %mul26 to float
  %"a::var57" = fdiv float %"a::var55", %"a::var56"
  %21 = load [8 x float]*, [8 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 %idxprom29
  %23 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx30, i64 0, i64 %idxprom31
  store float %"a::var57", float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %24 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond17, !llvm.loop !48

for.end35:                                        ; preds = %for.cond17
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %25 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond13, !llvm.loop !49

for.end38:                                        ; preds = %for.cond13
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc61, %for.end38
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %26, %27
  br i1 %cmp40, label %for.body42, label %for.end63

for.body42:                                       ; preds = %for.cond39
  store i32 0, i32* %j, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc58, %for.body42
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %nm.addr, align 4
  %cmp44 = icmp slt i32 %28, %29
  br i1 %cmp44, label %for.body46, label %for.end60

for.body46:                                       ; preds = %for.cond43
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %31, 3
  %mul48 = mul nsw i32 %30, %add47
  %32 = load i32, i32* %nl.addr, align 4
  %rem49 = srem i32 %mul48, %32
  %"a::var58" = sitofp i32 %rem49 to float
  %33 = load i32, i32* %nl.addr, align 4
  %mul51 = mul nsw i32 5, %33
  %"a::var59" = sitofp i32 %mul51 to float
  %"a::var60" = fdiv float %"a::var58", %"a::var59"
  %34 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds [14 x float], [14 x float]* %34, i64 %idxprom54
  %36 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx55, i64 0, i64 %idxprom56
  store float %"a::var60", float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body46
  %37 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %37, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond43, !llvm.loop !50

for.end60:                                        ; preds = %for.cond43
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %38 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %38, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond39, !llvm.loop !51

for.end63:                                        ; preds = %for.cond39
  store i32 0, i32* %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc87, %for.end63
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %nm.addr, align 4
  %cmp65 = icmp slt i32 %39, %40
  br i1 %cmp65, label %for.body67, label %for.end89

for.body67:                                       ; preds = %for.cond64
  store i32 0, i32* %j, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc84, %for.body67
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %nl.addr, align 4
  %cmp69 = icmp slt i32 %41, %42
  br i1 %cmp69, label %for.body71, label %for.end86

for.body71:                                       ; preds = %for.cond68
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %j, align 4
  %add72 = add nsw i32 %44, 2
  %mul73 = mul nsw i32 %43, %add72
  %add74 = add nsw i32 %mul73, 2
  %45 = load i32, i32* %nk.addr, align 4
  %rem75 = srem i32 %add74, %45
  %"a::var61" = sitofp i32 %rem75 to float
  %46 = load i32, i32* %nk.addr, align 4
  %mul77 = mul nsw i32 5, %46
  %"a::var62" = sitofp i32 %mul77 to float
  %"a::var63" = fdiv float %"a::var61", %"a::var62"
  %47 = load [12 x float]*, [12 x float]** %D.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %48 to i64
  %arrayidx81 = getelementptr inbounds [12 x float], [12 x float]* %47, i64 %idxprom80
  %49 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx81, i64 0, i64 %idxprom82
  store float %"a::var63", float* %arrayidx83, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %for.body71
  %50 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %50, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond68, !llvm.loop !52

for.end86:                                        ; preds = %for.cond68
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %51 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %51, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond64, !llvm.loop !53

for.end89:                                        ; preds = %for.cond64
  store i32 0, i32* %i, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc105, %for.end89
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %ni.addr, align 4
  %cmp91 = icmp slt i32 %52, %53
  br i1 %cmp91, label %for.body93, label %for.end107

for.body93:                                       ; preds = %for.cond90
  store i32 0, i32* %j, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc102, %for.body93
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %nj.addr, align 4
  %cmp95 = icmp slt i32 %54, %55
  br i1 %cmp95, label %for.body97, label %for.end104

for.body97:                                       ; preds = %for.cond94
  %56 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %57 to i64
  %arrayidx99 = getelementptr inbounds [8 x float], [8 x float]* %56, i64 %idxprom98
  %58 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %58 to i64
  %arrayidx101 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx99, i64 0, i64 %idxprom100
  store float 0.000000e+00, float* %arrayidx101, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %for.body97
  %59 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %59, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond94, !llvm.loop !54

for.end104:                                       ; preds = %for.cond94
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %60 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %60, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond90, !llvm.loop !55

for.end107:                                       ; preds = %for.cond90
  store i32 0, i32* %i, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc123, %for.end107
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %nj.addr, align 4
  %cmp109 = icmp slt i32 %61, %62
  br i1 %cmp109, label %for.body111, label %for.end125

for.body111:                                      ; preds = %for.cond108
  store i32 0, i32* %j, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc120, %for.body111
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %nl.addr, align 4
  %cmp113 = icmp slt i32 %63, %64
  br i1 %cmp113, label %for.body115, label %for.end122

for.body115:                                      ; preds = %for.cond112
  %65 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %66 to i64
  %arrayidx117 = getelementptr inbounds [12 x float], [12 x float]* %65, i64 %idxprom116
  %67 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %67 to i64
  %arrayidx119 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float 0.000000e+00, float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body115
  %68 = load i32, i32* %j, align 4
  %inc121 = add nsw i32 %68, 1
  store i32 %inc121, i32* %j, align 4
  br label %for.cond112, !llvm.loop !56

for.end122:                                       ; preds = %for.cond112
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %69 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %69, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond108, !llvm.loop !57

for.end125:                                       ; preds = %for.cond108
  store i32 0, i32* %i, align 4
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc141, %for.end125
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %ni.addr, align 4
  %cmp127 = icmp slt i32 %70, %71
  br i1 %cmp127, label %for.body129, label %for.end143

for.body129:                                      ; preds = %for.cond126
  store i32 0, i32* %j, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc138, %for.body129
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %nl.addr, align 4
  %cmp131 = icmp slt i32 %72, %73
  br i1 %cmp131, label %for.body133, label %for.end140

for.body133:                                      ; preds = %for.cond130
  %74 = load [12 x float]*, [12 x float]** %G.addr, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %75 to i64
  %arrayidx135 = getelementptr inbounds [12 x float], [12 x float]* %74, i64 %idxprom134
  %76 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %76 to i64
  %arrayidx137 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx135, i64 0, i64 %idxprom136
  store float 0.000000e+00, float* %arrayidx137, align 4
  br label %for.inc138

for.inc138:                                       ; preds = %for.body133
  %77 = load i32, i32* %j, align 4
  %inc139 = add nsw i32 %77, 1
  store i32 %inc139, i32* %j, align 4
  br label %for.cond130, !llvm.loop !58

for.end140:                                       ; preds = %for.cond130
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %78 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %78, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond126, !llvm.loop !59

for.end143:                                       ; preds = %for.cond126
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca [8 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [8 x float]*, align 8
  %F.addr = alloca [12 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [12 x float]*, align 8
  %G.addr = alloca [12 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [8 x float]* %E, [8 x float]** %E.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [8 x float]* %B, [8 x float]** %B.addr, align 8
  store [12 x float]* %F, [12 x float]** %F.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [12 x float]* %D, [12 x float]** %D.addr, align 8
  store [12 x float]* %G, [12 x float]** %G.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  %4 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i64 0, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %9 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %9, i64 %idxprom9
  %11 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var64" = load float, float* %arrayidx12, align 4
  %12 = load [8 x float]*, [8 x float]** %B.addr, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [8 x float], [8 x float]* %12, i64 %idxprom13
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var65" = load float, float* %arrayidx16, align 4
  %"a::var66" = fmul float %"a::var64", %"a::var65"
  %15 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 %idxprom17
  %17 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx18, i64 0, i64 %idxprom19
  %"a::var67" = load float, float* %arrayidx20, align 4
  %"a::var68" = fadd float %"a::var67", %"a::var66"
  store float %"a::var68", float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !60

for.end:                                          ; preds = %for.cond6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond1, !llvm.loop !61

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %20 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond, !llvm.loop !62

for.end26:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc60, %for.end26
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nj.addr, align 4
  %cmp28 = icmp slt i32 %21, %22
  br i1 %cmp28, label %for.body29, label %for.end62

for.body29:                                       ; preds = %for.cond27
  store i32 0, i32* %j, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.body29
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %nl.addr, align 4
  %cmp31 = icmp slt i32 %23, %24
  br i1 %cmp31, label %for.body32, label %for.end59

for.body32:                                       ; preds = %for.cond30
  %25 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %25, i64 %idxprom33
  %27 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx34, i64 0, i64 %idxprom35
  store float 0.000000e+00, float* %arrayidx36, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc54, %for.body32
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %nm.addr, align 4
  %cmp38 = icmp slt i32 %28, %29
  br i1 %cmp38, label %for.body39, label %for.end56

for.body39:                                       ; preds = %for.cond37
  %30 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [14 x float], [14 x float]* %30, i64 %idxprom40
  %32 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx41, i64 0, i64 %idxprom42
  %"a::var69" = load float, float* %arrayidx43, align 4
  %33 = load [12 x float]*, [12 x float]** %D.addr, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [12 x float], [12 x float]* %33, i64 %idxprom44
  %35 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx45, i64 0, i64 %idxprom46
  %"a::var70" = load float, float* %arrayidx47, align 4
  %"a::var71" = fmul float %"a::var69", %"a::var70"
  %36 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [12 x float], [12 x float]* %36, i64 %idxprom49
  %38 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx50, i64 0, i64 %idxprom51
  %"a::var72" = load float, float* %arrayidx52, align 4
  %"a::var73" = fadd float %"a::var72", %"a::var71"
  store float %"a::var73", float* %arrayidx52, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body39
  %39 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond37, !llvm.loop !63

for.end56:                                        ; preds = %for.cond37
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %40 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond30, !llvm.loop !64

for.end59:                                        ; preds = %for.cond30
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %41 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %41, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond27, !llvm.loop !65

for.end62:                                        ; preds = %for.cond27
  store i32 0, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc96, %for.end62
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %ni.addr, align 4
  %cmp64 = icmp slt i32 %42, %43
  br i1 %cmp64, label %for.body65, label %for.end98

for.body65:                                       ; preds = %for.cond63
  store i32 0, i32* %j, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc93, %for.body65
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %nl.addr, align 4
  %cmp67 = icmp slt i32 %44, %45
  br i1 %cmp67, label %for.body68, label %for.end95

for.body68:                                       ; preds = %for.cond66
  %46 = load [12 x float]*, [12 x float]** %G.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [12 x float], [12 x float]* %46, i64 %idxprom69
  %48 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx70, i64 0, i64 %idxprom71
  store float 0.000000e+00, float* %arrayidx72, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc90, %for.body68
  %49 = load i32, i32* %k, align 4
  %50 = load i32, i32* %nj.addr, align 4
  %cmp74 = icmp slt i32 %49, %50
  br i1 %cmp74, label %for.body75, label %for.end92

for.body75:                                       ; preds = %for.cond73
  %51 = load [8 x float]*, [8 x float]** %E.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %52 to i64
  %arrayidx77 = getelementptr inbounds [8 x float], [8 x float]* %51, i64 %idxprom76
  %53 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %53 to i64
  %arrayidx79 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx77, i64 0, i64 %idxprom78
  %"a::var74" = load float, float* %arrayidx79, align 4
  %54 = load [12 x float]*, [12 x float]** %F.addr, align 8
  %55 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [12 x float], [12 x float]* %54, i64 %idxprom80
  %56 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %56 to i64
  %arrayidx83 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx81, i64 0, i64 %idxprom82
  %"a::var75" = load float, float* %arrayidx83, align 4
  %"a::var76" = fmul float %"a::var74", %"a::var75"
  %57 = load [12 x float]*, [12 x float]** %G.addr, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %58 to i64
  %arrayidx86 = getelementptr inbounds [12 x float], [12 x float]* %57, i64 %idxprom85
  %59 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx86, i64 0, i64 %idxprom87
  %"a::var77" = load float, float* %arrayidx88, align 4
  %"a::var78" = fadd float %"a::var77", %"a::var76"
  store float %"a::var78", float* %arrayidx88, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %for.body75
  %60 = load i32, i32* %k, align 4
  %inc91 = add nsw i32 %60, 1
  store i32 %inc91, i32* %k, align 4
  br label %for.cond73, !llvm.loop !66

for.end92:                                        ; preds = %for.cond73
  br label %for.inc93

for.inc93:                                        ; preds = %for.end92
  %61 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %61, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond66, !llvm.loop !67

for.end95:                                        ; preds = %for.cond66
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %62 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %62, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond63, !llvm.loop !68

for.end98:                                        ; preds = %for.cond63
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
!13 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array}
!14 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
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
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm.2}
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
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
