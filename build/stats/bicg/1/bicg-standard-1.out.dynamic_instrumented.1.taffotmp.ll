; ModuleID = './sources/bicg.c'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/bicg.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [53 x i8] c"target('s') scalar(range(VAR_s_MIN,VAR_s_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('q') scalar(range(VAR_q_MIN,VAR_q_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_p_MIN,VAR_p_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_r_MIN,VAR_r_MAX) final)\00", section "llvm.metadata"
@s_float = dso_local global [20 x float] zeroinitializer, align 16
@q_float = dso_local global [22 x float] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 22))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 {
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
  %0 = load float, float* %val.addr, align 4
  %div = fdiv float %0, 1.000000e+01
  store float %div, float* %x, align 4
  store float 0x3F50624DE0000000, float* %min_tol, align 4
  store float 0.000000e+00, float* %constZeroVal, align 4
  store float 2.000000e+00, float* %constTwoVal, align 4
  store i32 0, i32* %flag, align 4
  %1 = load float, float* %val.addr, align 4
  %2 = load float, float* %constZeroVal, align 4
  %cmp = fcmp oeq float %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load float, float* %constZeroVal, align 4
  store float %3, float* %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %6 = load float, float* %val.addr, align 4
  %7 = load float, float* %x, align 4
  %8 = load float, float* %x, align 4
  %mul = fmul float %7, %8
  %sub = fsub float %6, %mul
  %9 = load float, float* %constTwoVal, align 4
  %10 = load float, float* %x, align 4
  %mul3 = fmul float %9, %10
  %div4 = fdiv float %sub, %mul3
  store float %div4, float* %dx, align 4
  %11 = load float, float* %x, align 4
  %12 = load float, float* %dx, align 4
  %add = fadd float %11, %12
  store float %add, float* %x, align 4
  %13 = load float, float* %val.addr, align 4
  %14 = load float, float* %x, align 4
  %15 = load float, float* %x, align 4
  %mul5 = fmul float %14, %15
  %sub6 = fsub float %13, %mul5
  store float %sub6, float* %diff, align 4
  %16 = load float, float* %diff, align 4
  %17 = load float, float* %constZeroVal, align 4
  %cmp7 = fcmp oge float %16, %17
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %18 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %19 = load float, float* %diff, align 4
  %fneg = fneg float %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %18, %cond.true ], [ %fneg, %cond.false ]
  %20 = load float, float* %min_tol, align 4
  %cmp8 = fcmp ole float %cond, %20
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_start() #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_stop() #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %A = alloca [22 x [20 x float]], align 16
  %s = alloca [20 x float], align 16
  %q = alloca [22 x float], align 16
  %p = alloca [20 x float], align 16
  %r = alloca [22 x float], align 16
  %i = alloca i32, align 4
  %i17 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 22, i32* %n, align 4
  store i32 20, i32* %m, align 4
  %A1 = bitcast [22 x [20 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 119, i8* null)
  %s2 = bitcast [20 x float]* %s to i8*
  call void @llvm.var.annotation(i8* %s2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 120, i8* null)
  %q3 = bitcast [22 x float]* %q to i8*
  call void @llvm.var.annotation(i8* %q3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 121, i8* null)
  %p4 = bitcast [20 x float]* %p to i8*
  call void @llvm.var.annotation(i8* %p4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* null)
  %r5 = bitcast [22 x float]* %r to i8*
  call void @llvm.var.annotation(i8* %r5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 123, i8* null)
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9)
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i64 0, i64 0
  call void @kernel_bicg(i32 noundef %2, i32 noundef %3, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i64 0, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i64 0, i64 %idxprom15
  store float %7, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i17, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %for.end
  %10 = load i32, i32* %i17, align 4
  %11 = load i32, i32* %n, align 4
  %cmp19 = icmp slt i32 %10, %11
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %i17, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [22 x float], [22 x float]* %q, i64 0, i64 %idxprom21
  %13 = load float, float* %arrayidx22, align 4
  %14 = load i32, i32* %i17, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i64 0, i64 %idxprom23
  store float %13, float* %arrayidx24, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %15 = load i32, i32* %i17, align 4
  %inc26 = add nsw i32 %15, 1
  store i32 %inc26, i32* %i17, align 4
  br label %for.cond18, !llvm.loop !9

for.end27:                                        ; preds = %for.cond18
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %r.addr = alloca float*, align 8
  %p.addr = alloca float*, align 8
  %s.addr = alloca float*, align 8
  %q.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %r, float** %r.addr, align 8
  store float* %p, float** %p.addr, align 8
  store float* %s, float** %s.addr, align 8
  store float* %q, float** %q.addr, align 8
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 39, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3
  %conv = sitofp i32 %rem to float
  %4 = load i32, i32* %m.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3
  %5 = load float*, float** %p.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  %7 = load float*, float** %s.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc33, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body9, label %for.end35

for.body9:                                        ; preds = %for.cond6
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %12, %13
  %conv11 = sitofp i32 %rem10 to float
  %14 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %14 to float
  %div13 = fdiv float %conv11, %conv12
  %15 = load float*, float** %r.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds float, float* %15, i64 %idxprom14
  store float %div13, float* %arrayidx15, align 4
  %17 = load float*, float** %q.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds float, float* %17, i64 %idxprom16
  store float 0.000000e+00, float* %arrayidx17, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body9
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %m.addr, align 4
  %cmp19 = icmp slt i32 %19, %20
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  %add = add nsw i32 %22, 1
  %mul = mul nsw i32 %21, %add
  %23 = load i32, i32* %n.addr, align 4
  %rem22 = srem i32 %mul, %23
  %conv23 = sitofp i32 %rem22 to float
  %24 = load i32, i32* %n.addr, align 4
  %conv24 = sitofp i32 %24 to float
  %div25 = fdiv float %conv23, %conv24
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %25, i64 %idxprom26
  %27 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %div25, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %28 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %28, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !11

for.end32:                                        ; preds = %for.cond18
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %29 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond6, !llvm.loop !12

for.end35:                                        ; preds = %for.cond6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %s.addr = alloca float*, align 8
  %q.addr = alloca float*, align 8
  %p.addr = alloca float*, align 8
  %r.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %s, float** %s.addr, align 8
  store float* %q, float** %q.addr, align 8
  store float* %p, float** %p.addr, align 8
  store float* %r, float** %r.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc34, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end36

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %q.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc31, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end33

for.body8:                                        ; preds = %for.cond6
  %11 = load float*, float** %s.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  %13 = load float, float* %arrayidx10, align 4
  %14 = load float*, float** %r.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 %idxprom11
  %16 = load float, float* %arrayidx12, align 4
  %17 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %17, i64 %idxprom13
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %20 = load float, float* %arrayidx16, align 4
  %mul = fmul float %16, %20
  %add = fadd float %13, %mul
  %21 = load float*, float** %s.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds float, float* %21, i64 %idxprom17
  store float %add, float* %arrayidx18, align 4
  %23 = load float*, float** %q.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds float, float* %23, i64 %idxprom19
  %25 = load float, float* %arrayidx20, align 4
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 %idxprom21
  %28 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx22, i64 0, i64 %idxprom23
  %29 = load float, float* %arrayidx24, align 4
  %30 = load float*, float** %p.addr, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds float, float* %30, i64 %idxprom25
  %32 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %29, %32
  %add28 = fadd float %25, %mul27
  %33 = load float*, float** %q.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom29
  store float %add28, float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body8
  %35 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond6, !llvm.loop !14

for.end33:                                        ; preds = %for.cond6
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %36 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond1, !llvm.loop !15

for.end36:                                        ; preds = %for.cond1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
