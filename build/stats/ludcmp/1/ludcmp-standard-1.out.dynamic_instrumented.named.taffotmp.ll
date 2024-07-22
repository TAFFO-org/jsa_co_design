; ModuleID = './build/stats/ludcmp/1/ludcmp-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_b_MIN,VAR_b_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [53 x i8] c"target('x') scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata"

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
  %B = alloca [20 x [20 x float]], align 16
  %b = alloca [20 x float], align 16
  %x = alloca [20 x float], align 16
  %y = alloca [20 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  %B2 = bitcast [20 x [20 x float]]* %B to i8*
  %b3 = bitcast [20 x float]* %b to i8*
  %x4 = bitcast [20 x float]* %x to i8*
  %y5 = bitcast [20 x float]* %y to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @kernel_ludcmp.2(i32 noundef %1, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13), !taffo.originalCall !14
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
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i64 0, i64 %idxprom14
  store float %"a::var24", float* %arrayidx15, align 4
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
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !20 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %B.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store [20 x float]* %B, [20 x float]** %B.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
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
  %3 = load float*, float** %x.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %5 = load float*, float** %y.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds float, float* %5, i64 %idxprom5
  store float 0.000000e+00, float* %arrayidx6, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %"a::var26" = sitofp i32 %add to float
  %"a::var27" = load float, float* %fn, align 4
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %"a::var29" = fpext float %"a::var28" to double
  %"a::var30" = fdiv double %"a::var29", 2.000000e+00
  %"a::var31" = fadd double %"a::var30", 4.000000e+00
  %"a::var32" = fptrunc double %"a::var31" to float
  %8 = load float*, float** %b.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds float, float* %8, i64 %idxprom12
  store float %"a::var32", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %11, %12
  br i1 %cmp15, label %for.body17, label %for.end51

for.body17:                                       ; preds = %for.cond14
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body17
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %13, %14
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %15 = load i32, i32* %j, align 4
  %sub = sub nsw i32 0, %15
  %16 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %16
  %"a::var33" = sitofp i32 %rem to float
  %17 = load i32, i32* %n.addr, align 4
  %"a::var34" = sitofp i32 %17 to float
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %"a::var36" = fadd float %"a::var35", 1.000000e+00
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %18, i64 %idxprom26
  %20 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var36", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %21 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !22

for.end32:                                        ; preds = %for.cond18
  %22 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %22, 1
  store i32 %add33, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end32
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp slt i32 %23, %24
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond34
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %25, i64 %idxprom38
  %27 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i64 0, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %28 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %28, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond34, !llvm.loop !23

for.end44:                                        ; preds = %for.cond34
  %29 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %29, i64 %idxprom45
  %31 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i64 0, i64 %idxprom47
  store float 1.000000e+00, float* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.end44
  %32 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond14, !llvm.loop !24

for.end51:                                        ; preds = %for.cond14
  store i32 0, i32* %r, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %for.end51
  %33 = load i32, i32* %r, align 4
  %34 = load i32, i32* %n.addr, align 4
  %cmp53 = icmp slt i32 %33, %34
  br i1 %cmp53, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond52
  store i32 0, i32* %s, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.body55
  %35 = load i32, i32* %s, align 4
  %36 = load i32, i32* %n.addr, align 4
  %cmp57 = icmp slt i32 %35, %36
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %37 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %38 = load i32, i32* %r, align 4
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %37, i64 %idxprom60
  %39 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i64 0, i64 %idxprom62
  store float 0.000000e+00, float* %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %40 = load i32, i32* %s, align 4
  %inc65 = add nsw i32 %40, 1
  store i32 %inc65, i32* %s, align 4
  br label %for.cond56, !llvm.loop !25

for.end66:                                        ; preds = %for.cond56
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %41 = load i32, i32* %r, align 4
  %inc68 = add nsw i32 %41, 1
  store i32 %inc68, i32* %r, align 4
  br label %for.cond52, !llvm.loop !26

for.end69:                                        ; preds = %for.cond52
  store i32 0, i32* %t, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %42 = load i32, i32* %t, align 4
  %43 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %42, %43
  br i1 %cmp71, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc98, %for.body73
  %44 = load i32, i32* %r, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp75 = icmp slt i32 %44, %45
  br i1 %cmp75, label %for.body77, label %for.end100

for.body77:                                       ; preds = %for.cond74
  store i32 0, i32* %s, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc95, %for.body77
  %46 = load i32, i32* %s, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp slt i32 %46, %47
  br i1 %cmp79, label %for.body81, label %for.end97

for.body81:                                       ; preds = %for.cond78
  %48 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %49 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* %48, i64 %idxprom82
  %50 = load i32, i32* %t, align 4
  %idxprom84 = sext i32 %50 to i64
  %arrayidx85 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx83, i64 0, i64 %idxprom84
  %"a::var37" = load float, float* %arrayidx85, align 4
  %51 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %52 = load i32, i32* %s, align 4
  %idxprom86 = sext i32 %52 to i64
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* %51, i64 %idxprom86
  %53 = load i32, i32* %t, align 4
  %idxprom88 = sext i32 %53 to i64
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx87, i64 0, i64 %idxprom88
  %"a::var38" = load float, float* %arrayidx89, align 4
  %"a::var39" = fmul float %"a::var37", %"a::var38"
  %54 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %55 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds [20 x float], [20 x float]* %54, i64 %idxprom90
  %56 = load i32, i32* %s, align 4
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx91, i64 0, i64 %idxprom92
  %"a::var40" = load float, float* %arrayidx93, align 4
  %"a::var41" = fadd float %"a::var40", %"a::var39"
  store float %"a::var41", float* %arrayidx93, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body81
  %57 = load i32, i32* %s, align 4
  %inc96 = add nsw i32 %57, 1
  store i32 %inc96, i32* %s, align 4
  br label %for.cond78, !llvm.loop !27

for.end97:                                        ; preds = %for.cond78
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %58 = load i32, i32* %r, align 4
  %inc99 = add nsw i32 %58, 1
  store i32 %inc99, i32* %r, align 4
  br label %for.cond74, !llvm.loop !28

for.end100:                                       ; preds = %for.cond74
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %59 = load i32, i32* %t, align 4
  %inc102 = add nsw i32 %59, 1
  store i32 %inc102, i32* %t, align 4
  br label %for.cond70, !llvm.loop !29

for.end103:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.end103
  %60 = load i32, i32* %r, align 4
  %61 = load i32, i32* %n.addr, align 4
  %cmp105 = icmp slt i32 %60, %61
  br i1 %cmp105, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  store i32 0, i32* %s, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc120, %for.body107
  %62 = load i32, i32* %s, align 4
  %63 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp slt i32 %62, %63
  br i1 %cmp109, label %for.body111, label %for.end122

for.body111:                                      ; preds = %for.cond108
  %64 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %65 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %65 to i64
  %arrayidx113 = getelementptr inbounds [20 x float], [20 x float]* %64, i64 %idxprom112
  %66 = load i32, i32* %s, align 4
  %idxprom114 = sext i32 %66 to i64
  %arrayidx115 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx113, i64 0, i64 %idxprom114
  %"a::var42" = load float, float* %arrayidx115, align 4
  %67 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %68 = load i32, i32* %r, align 4
  %idxprom116 = sext i32 %68 to i64
  %arrayidx117 = getelementptr inbounds [20 x float], [20 x float]* %67, i64 %idxprom116
  %69 = load i32, i32* %s, align 4
  %idxprom118 = sext i32 %69 to i64
  %arrayidx119 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float %"a::var42", float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body111
  %70 = load i32, i32* %s, align 4
  %inc121 = add nsw i32 %70, 1
  store i32 %inc121, i32* %s, align 4
  br label %for.cond108, !llvm.loop !30

for.end122:                                       ; preds = %for.cond108
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %71 = load i32, i32* %r, align 4
  %inc124 = add nsw i32 %71, 1
  store i32 %inc124, i32* %r, align 4
  br label %for.cond104, !llvm.loop !31

for.end125:                                       ; preds = %for.cond104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.equivalentChild !32 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %w1 = bitcast float* %w to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom5
  %"a::var43" = load float, float* %arrayidx6, align 4
  store float %"a::var43", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %9 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 %idxprom10
  %11 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i64 0, i64 %idxprom12
  %"a::var44" = load float, float* %arrayidx13, align 4
  %12 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %12, i64 %idxprom14
  %14 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var45" = load float, float* %arrayidx17, align 4
  %"a::var46" = fmul float %"a::var44", %"a::var45"
  %"a::var47" = load float, float* %w, align 4
  %"a::var48" = fsub float %"a::var47", %"a::var46"
  store float %"a::var48", float* %w, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !33

for.end:                                          ; preds = %for.cond7
  %16 = load float, float* %w, align 4
  %17 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %17, i64 %idxprom18
  %19 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var49" = load float, float* %arrayidx21, align 4
  %"a::var50" = fdiv float %16, %"a::var49"
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %20, i64 %idxprom22
  %22 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var50", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond2, !llvm.loop !34

for.end28:                                        ; preds = %for.cond2
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc56, %for.end28
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %25, %26
  br i1 %cmp30, label %for.body31, label %for.end58

for.body31:                                       ; preds = %for.cond29
  %27 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 %idxprom32
  %29 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %"a::var51" = load float, float* %arrayidx35, align 4
  store float %"a::var51", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.body31
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %30, %31
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  %32 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %32, i64 %idxprom39
  %34 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx40, i64 0, i64 %idxprom41
  %"a::var52" = load float, float* %arrayidx42, align 4
  %35 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %35, i64 %idxprom43
  %37 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i64 0, i64 %idxprom45
  %"a::var53" = load float, float* %arrayidx46, align 4
  %"a::var54" = fmul float %"a::var52", %"a::var53"
  %"a::var55" = load float, float* %w, align 4
  %"a::var56" = fsub float %"a::var55", %"a::var54"
  store float %"a::var56", float* %w, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38
  %38 = load i32, i32* %k, align 4
  %inc50 = add nsw i32 %38, 1
  store i32 %inc50, i32* %k, align 4
  br label %for.cond36, !llvm.loop !35

for.end51:                                        ; preds = %for.cond36
  %39 = load float, float* %w, align 4
  %40 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %40, i64 %idxprom52
  %42 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i64 0, i64 %idxprom54
  store float %39, float* %arrayidx55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end51
  %43 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %43, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond29, !llvm.loop !36

for.end58:                                        ; preds = %for.cond29
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %44 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %44, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond, !llvm.loop !37

for.end61:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end61
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %n.addr, align 4
  %cmp63 = icmp slt i32 %45, %46
  br i1 %cmp63, label %for.body64, label %for.end85

for.body64:                                       ; preds = %for.cond62
  %47 = load float*, float** %b.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds float, float* %47, i64 %idxprom65
  %"a::var57" = load float, float* %arrayidx66, align 4
  store float %"a::var57", float* %w, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc78, %for.body64
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %49, %50
  br i1 %cmp68, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond67
  %51 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %52 to i64
  %arrayidx71 = getelementptr inbounds [20 x float], [20 x float]* %51, i64 %idxprom70
  %53 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %53 to i64
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx71, i64 0, i64 %idxprom72
  %"a::var58" = load float, float* %arrayidx73, align 4
  %54 = load float*, float** %y.addr, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %55 to i64
  %arrayidx75 = getelementptr inbounds float, float* %54, i64 %idxprom74
  %"a::var59" = load float, float* %arrayidx75, align 4
  %"a::var60" = fmul float %"a::var58", %"a::var59"
  %"a::var61" = load float, float* %w, align 4
  %"a::var62" = fsub float %"a::var61", %"a::var60"
  store float %"a::var62", float* %w, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body69
  %56 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %56, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond67, !llvm.loop !38

for.end80:                                        ; preds = %for.cond67
  %57 = load float, float* %w, align 4
  %58 = load float*, float** %y.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %59 to i64
  %arrayidx82 = getelementptr inbounds float, float* %58, i64 %idxprom81
  store float %57, float* %arrayidx82, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %for.end80
  %60 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %60, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond62, !llvm.loop !39

for.end85:                                        ; preds = %for.cond62
  %61 = load i32, i32* %n.addr, align 4
  %sub86 = sub nsw i32 %61, 1
  store i32 %sub86, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc113, %for.end85
  %62 = load i32, i32* %i, align 4
  %cmp88 = icmp sge i32 %62, 0
  br i1 %cmp88, label %for.body89, label %for.end114

for.body89:                                       ; preds = %for.cond87
  %63 = load float*, float** %y.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds float, float* %63, i64 %idxprom90
  %"a::var63" = load float, float* %arrayidx91, align 4
  store float %"a::var63", float* %w, align 4
  %65 = load i32, i32* %i, align 4
  %add = add nsw i32 %65, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc103, %for.body89
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %66, %67
  br i1 %cmp93, label %for.body94, label %for.end105

for.body94:                                       ; preds = %for.cond92
  %68 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %69 to i64
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %68, i64 %idxprom95
  %70 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %70 to i64
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i64 0, i64 %idxprom97
  %"a::var64" = load float, float* %arrayidx98, align 4
  %71 = load float*, float** %x.addr, align 8
  %72 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %72 to i64
  %arrayidx100 = getelementptr inbounds float, float* %71, i64 %idxprom99
  %"a::var65" = load float, float* %arrayidx100, align 4
  %"a::var66" = fmul float %"a::var64", %"a::var65"
  %"a::var67" = load float, float* %w, align 4
  %"a::var68" = fsub float %"a::var67", %"a::var66"
  store float %"a::var68", float* %w, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body94
  %73 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %73, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond92, !llvm.loop !40

for.end105:                                       ; preds = %for.cond92
  %74 = load float, float* %w, align 4
  %75 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds [20 x float], [20 x float]* %75, i64 %idxprom106
  %77 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %77 to i64
  %arrayidx109 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx107, i64 0, i64 %idxprom108
  %"a::var69" = load float, float* %arrayidx109, align 4
  %"a::var70" = fdiv float %74, %"a::var69"
  %78 = load float*, float** %x.addr, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %79 to i64
  %arrayidx112 = getelementptr inbounds float, float* %78, i64 %idxprom111
  store float %"a::var70", float* %arrayidx112, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.end105
  %80 = load i32, i32* %i, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond87, !llvm.loop !41

for.end114:                                       ; preds = %for.cond87
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %B.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store [20 x float]* %B, [20 x float]** %B.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %fn3 = bitcast float* %fn to i8*
  %0 = load i32, i32* %n.addr, align 4
  %"a::var71" = sitofp i32 %0 to float
  store float %"a::var71", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %x.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %5 = load float*, float** %y.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds float, float* %5, i64 %idxprom5
  store float 0.000000e+00, float* %arrayidx6, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %"a::var72" = sitofp i32 %add to float
  %"a::var73" = load float, float* %fn, align 4
  %"a::var74" = fdiv float %"a::var72", %"a::var73"
  %"a::var75" = fpext float %"a::var74" to double
  %"a::var76" = fdiv double %"a::var75", 2.000000e+00
  %"a::var77" = fadd double %"a::var76", 4.000000e+00
  %"a::var78" = fptrunc double %"a::var77" to float
  %8 = load float*, float** %b.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds float, float* %8, i64 %idxprom12
  store float %"a::var78", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %11, %12
  br i1 %cmp15, label %for.body17, label %for.end51

for.body17:                                       ; preds = %for.cond14
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body17
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %13, %14
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %15 = load i32, i32* %j, align 4
  %sub = sub nsw i32 0, %15
  %16 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %16
  %"a::var79" = sitofp i32 %rem to float
  %17 = load i32, i32* %n.addr, align 4
  %"a::var80" = sitofp i32 %17 to float
  %"a::var81" = fdiv float %"a::var79", %"a::var80"
  %"a::var82" = fadd float %"a::var81", 1.000000e+00
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %18, i64 %idxprom26
  %20 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var82", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %21 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !43

for.end32:                                        ; preds = %for.cond18
  %22 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %22, 1
  store i32 %add33, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end32
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp slt i32 %23, %24
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond34
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %25, i64 %idxprom38
  %27 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i64 0, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %28 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %28, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond34, !llvm.loop !44

for.end44:                                        ; preds = %for.cond34
  %29 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %29, i64 %idxprom45
  %31 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i64 0, i64 %idxprom47
  store float 1.000000e+00, float* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.end44
  %32 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond14, !llvm.loop !45

for.end51:                                        ; preds = %for.cond14
  store i32 0, i32* %r, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %for.end51
  %33 = load i32, i32* %r, align 4
  %34 = load i32, i32* %n.addr, align 4
  %cmp53 = icmp slt i32 %33, %34
  br i1 %cmp53, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond52
  store i32 0, i32* %s, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.body55
  %35 = load i32, i32* %s, align 4
  %36 = load i32, i32* %n.addr, align 4
  %cmp57 = icmp slt i32 %35, %36
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %37 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %38 = load i32, i32* %r, align 4
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %37, i64 %idxprom60
  %39 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i64 0, i64 %idxprom62
  store float 0.000000e+00, float* %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %40 = load i32, i32* %s, align 4
  %inc65 = add nsw i32 %40, 1
  store i32 %inc65, i32* %s, align 4
  br label %for.cond56, !llvm.loop !46

for.end66:                                        ; preds = %for.cond56
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %41 = load i32, i32* %r, align 4
  %inc68 = add nsw i32 %41, 1
  store i32 %inc68, i32* %r, align 4
  br label %for.cond52, !llvm.loop !47

for.end69:                                        ; preds = %for.cond52
  store i32 0, i32* %t, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %42 = load i32, i32* %t, align 4
  %43 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %42, %43
  br i1 %cmp71, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc98, %for.body73
  %44 = load i32, i32* %r, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp75 = icmp slt i32 %44, %45
  br i1 %cmp75, label %for.body77, label %for.end100

for.body77:                                       ; preds = %for.cond74
  store i32 0, i32* %s, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc95, %for.body77
  %46 = load i32, i32* %s, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp slt i32 %46, %47
  br i1 %cmp79, label %for.body81, label %for.end97

for.body81:                                       ; preds = %for.cond78
  %48 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %49 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* %48, i64 %idxprom82
  %50 = load i32, i32* %t, align 4
  %idxprom84 = sext i32 %50 to i64
  %arrayidx85 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx83, i64 0, i64 %idxprom84
  %"a::var83" = load float, float* %arrayidx85, align 4
  %51 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %52 = load i32, i32* %s, align 4
  %idxprom86 = sext i32 %52 to i64
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* %51, i64 %idxprom86
  %53 = load i32, i32* %t, align 4
  %idxprom88 = sext i32 %53 to i64
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx87, i64 0, i64 %idxprom88
  %"a::var84" = load float, float* %arrayidx89, align 4
  %"a::var85" = fmul float %"a::var83", %"a::var84"
  %54 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %55 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds [20 x float], [20 x float]* %54, i64 %idxprom90
  %56 = load i32, i32* %s, align 4
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx91, i64 0, i64 %idxprom92
  %"a::var86" = load float, float* %arrayidx93, align 4
  %"a::var87" = fadd float %"a::var86", %"a::var85"
  store float %"a::var87", float* %arrayidx93, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body81
  %57 = load i32, i32* %s, align 4
  %inc96 = add nsw i32 %57, 1
  store i32 %inc96, i32* %s, align 4
  br label %for.cond78, !llvm.loop !48

for.end97:                                        ; preds = %for.cond78
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %58 = load i32, i32* %r, align 4
  %inc99 = add nsw i32 %58, 1
  store i32 %inc99, i32* %r, align 4
  br label %for.cond74, !llvm.loop !49

for.end100:                                       ; preds = %for.cond74
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %59 = load i32, i32* %t, align 4
  %inc102 = add nsw i32 %59, 1
  store i32 %inc102, i32* %t, align 4
  br label %for.cond70, !llvm.loop !50

for.end103:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.end103
  %60 = load i32, i32* %r, align 4
  %61 = load i32, i32* %n.addr, align 4
  %cmp105 = icmp slt i32 %60, %61
  br i1 %cmp105, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  store i32 0, i32* %s, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc120, %for.body107
  %62 = load i32, i32* %s, align 4
  %63 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp slt i32 %62, %63
  br i1 %cmp109, label %for.body111, label %for.end122

for.body111:                                      ; preds = %for.cond108
  %64 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %65 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %65 to i64
  %arrayidx113 = getelementptr inbounds [20 x float], [20 x float]* %64, i64 %idxprom112
  %66 = load i32, i32* %s, align 4
  %idxprom114 = sext i32 %66 to i64
  %arrayidx115 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx113, i64 0, i64 %idxprom114
  %"a::var88" = load float, float* %arrayidx115, align 4
  %67 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %68 = load i32, i32* %r, align 4
  %idxprom116 = sext i32 %68 to i64
  %arrayidx117 = getelementptr inbounds [20 x float], [20 x float]* %67, i64 %idxprom116
  %69 = load i32, i32* %s, align 4
  %idxprom118 = sext i32 %69 to i64
  %arrayidx119 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float %"a::var88", float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body111
  %70 = load i32, i32* %s, align 4
  %inc121 = add nsw i32 %70, 1
  store i32 %inc121, i32* %s, align 4
  br label %for.cond108, !llvm.loop !51

for.end122:                                       ; preds = %for.cond108
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %71 = load i32, i32* %r, align 4
  %inc124 = add nsw i32 %71, 1
  store i32 %inc124, i32* %r, align 4
  br label %for.cond104, !llvm.loop !52

for.end125:                                       ; preds = %for.cond104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.2(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !14 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %w1 = bitcast float* %w to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom5
  %"a::var89" = load float, float* %arrayidx6, align 4
  store float %"a::var89", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %9 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 %idxprom10
  %11 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i64 0, i64 %idxprom12
  %"a::var90" = load float, float* %arrayidx13, align 4
  %12 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %12, i64 %idxprom14
  %14 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var91" = load float, float* %arrayidx17, align 4
  %"a::var92" = fmul float %"a::var90", %"a::var91"
  %"a::var93" = load float, float* %w, align 4
  %"a::var94" = fsub float %"a::var93", %"a::var92"
  store float %"a::var94", float* %w, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !53

for.end:                                          ; preds = %for.cond7
  %16 = load float, float* %w, align 4
  %17 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %17, i64 %idxprom18
  %19 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var95" = load float, float* %arrayidx21, align 4
  %"a::var96" = fdiv float %16, %"a::var95"
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %20, i64 %idxprom22
  %22 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var96", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond2, !llvm.loop !54

for.end28:                                        ; preds = %for.cond2
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc56, %for.end28
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %25, %26
  br i1 %cmp30, label %for.body31, label %for.end58

for.body31:                                       ; preds = %for.cond29
  %27 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 %idxprom32
  %29 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %"a::var97" = load float, float* %arrayidx35, align 4
  store float %"a::var97", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.body31
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %30, %31
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  %32 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %32, i64 %idxprom39
  %34 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx40, i64 0, i64 %idxprom41
  %"a::var98" = load float, float* %arrayidx42, align 4
  %35 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %35, i64 %idxprom43
  %37 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i64 0, i64 %idxprom45
  %"a::var99" = load float, float* %arrayidx46, align 4
  %"a::var100" = fmul float %"a::var98", %"a::var99"
  %"a::var101" = load float, float* %w, align 4
  %"a::var102" = fsub float %"a::var101", %"a::var100"
  store float %"a::var102", float* %w, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38
  %38 = load i32, i32* %k, align 4
  %inc50 = add nsw i32 %38, 1
  store i32 %inc50, i32* %k, align 4
  br label %for.cond36, !llvm.loop !55

for.end51:                                        ; preds = %for.cond36
  %39 = load float, float* %w, align 4
  %40 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %40, i64 %idxprom52
  %42 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i64 0, i64 %idxprom54
  store float %39, float* %arrayidx55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end51
  %43 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %43, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond29, !llvm.loop !56

for.end58:                                        ; preds = %for.cond29
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %44 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %44, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end61:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end61
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %n.addr, align 4
  %cmp63 = icmp slt i32 %45, %46
  br i1 %cmp63, label %for.body64, label %for.end85

for.body64:                                       ; preds = %for.cond62
  %47 = load float*, float** %b.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds float, float* %47, i64 %idxprom65
  %"a::var103" = load float, float* %arrayidx66, align 4
  store float %"a::var103", float* %w, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc78, %for.body64
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %49, %50
  br i1 %cmp68, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond67
  %51 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %52 to i64
  %arrayidx71 = getelementptr inbounds [20 x float], [20 x float]* %51, i64 %idxprom70
  %53 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %53 to i64
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx71, i64 0, i64 %idxprom72
  %"a::var104" = load float, float* %arrayidx73, align 4
  %54 = load float*, float** %y.addr, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %55 to i64
  %arrayidx75 = getelementptr inbounds float, float* %54, i64 %idxprom74
  %"a::var105" = load float, float* %arrayidx75, align 4
  %"a::var106" = fmul float %"a::var104", %"a::var105"
  %"a::var107" = load float, float* %w, align 4
  %"a::var108" = fsub float %"a::var107", %"a::var106"
  store float %"a::var108", float* %w, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body69
  %56 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %56, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond67, !llvm.loop !58

for.end80:                                        ; preds = %for.cond67
  %57 = load float, float* %w, align 4
  %58 = load float*, float** %y.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %59 to i64
  %arrayidx82 = getelementptr inbounds float, float* %58, i64 %idxprom81
  store float %57, float* %arrayidx82, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %for.end80
  %60 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %60, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond62, !llvm.loop !59

for.end85:                                        ; preds = %for.cond62
  %61 = load i32, i32* %n.addr, align 4
  %sub86 = sub nsw i32 %61, 1
  store i32 %sub86, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc113, %for.end85
  %62 = load i32, i32* %i, align 4
  %cmp88 = icmp sge i32 %62, 0
  br i1 %cmp88, label %for.body89, label %for.end114

for.body89:                                       ; preds = %for.cond87
  %63 = load float*, float** %y.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds float, float* %63, i64 %idxprom90
  %"a::var109" = load float, float* %arrayidx91, align 4
  store float %"a::var109", float* %w, align 4
  %65 = load i32, i32* %i, align 4
  %add = add nsw i32 %65, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc103, %for.body89
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %66, %67
  br i1 %cmp93, label %for.body94, label %for.end105

for.body94:                                       ; preds = %for.cond92
  %68 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %69 to i64
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %68, i64 %idxprom95
  %70 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %70 to i64
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i64 0, i64 %idxprom97
  %"a::var110" = load float, float* %arrayidx98, align 4
  %71 = load float*, float** %x.addr, align 8
  %72 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %72 to i64
  %arrayidx100 = getelementptr inbounds float, float* %71, i64 %idxprom99
  %"a::var111" = load float, float* %arrayidx100, align 4
  %"a::var112" = fmul float %"a::var110", %"a::var111"
  %"a::var113" = load float, float* %w, align 4
  %"a::var114" = fsub float %"a::var113", %"a::var112"
  store float %"a::var114", float* %w, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body94
  %73 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %73, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond92, !llvm.loop !60

for.end105:                                       ; preds = %for.cond92
  %74 = load float, float* %w, align 4
  %75 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds [20 x float], [20 x float]* %75, i64 %idxprom106
  %77 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %77 to i64
  %arrayidx109 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx107, i64 0, i64 %idxprom108
  %"a::var115" = load float, float* %arrayidx109, align 4
  %"a::var116" = fdiv float %74, %"a::var115"
  %78 = load float*, float** %x.addr, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %79 to i64
  %arrayidx112 = getelementptr inbounds float, float* %78, i64 %idxprom111
  store float %"a::var116", float* %arrayidx112, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.end105
  %80 = load i32, i32* %i, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond87, !llvm.loop !61

for.end114:                                       ; preds = %for.cond87
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
!13 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array}
!14 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array.1}
!21 = distinct !{!21, !9}
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
!32 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp.2}
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
