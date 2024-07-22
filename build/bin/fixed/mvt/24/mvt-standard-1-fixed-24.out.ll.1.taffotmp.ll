; ModuleID = './sources/mvt.c'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.95) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/mvt.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [43 x i8] c"target('x1') scalar(range(0.0,5.75) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [44 x i8] c"target('x2') scalar(range(0.0,5.675) final)\00", section "llvm.metadata"
@x1_float = dso_local global [20 x float] zeroinitializer, align 4
@x2_float = dso_local global [20 x float] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  br label %for.cond, !llvm.loop !7

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
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4
  %x1 = alloca [20 x float], align 4
  %x2 = alloca [20 x float], align 4
  %y_1 = alloca [20 x float], align 4
  %y_2 = alloca [20 x float], align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 113, i8* null)
  %x12 = bitcast [20 x float]* %x1 to i8*
  call void @llvm.var.annotation(i8* %x12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 114, i8* null)
  %x23 = bitcast [20 x float]* %x2 to i8*
  call void @llvm.var.annotation(i8* %x23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 115, i8* null)
  %y_14 = bitcast [20 x float]* %y_1 to i8*
  call void @llvm.var.annotation(i8* %y_14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 116, i8* null)
  %y_25 = bitcast [20 x float]* %y_2 to i8*
  call void @llvm.var.annotation(i8* %y_25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 117, i8* null)
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0
  call void @init_array(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9)
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0
  call void @kernel_mvt(i32 noundef %1, float* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, [20 x float]* noundef %arraydecay14)
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
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 %4
  %5 = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %6
  store float %5, float* %arrayidx15, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 %7
  %8 = load float, float* %arrayidx16, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %9
  store float %8, float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %11, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 4
  %x2.addr = alloca float*, align 4
  %y_1.addr = alloca float*, align 4
  %y_2.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 4
  store float* %x2, float** %x2.addr, align 4
  store float* %y_1, float** %y_1.addr, align 4
  store float* %y_2, float** %y_2.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 39, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %2, %3
  %conv = sitofp i32 %rem to float
  %4 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3
  %5 = load float*, float** %x1.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6
  store float %div, float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8
  %conv5 = sitofp i32 %rem4 to float
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div7 = fdiv float %conv5, %conv6
  %10 = load float*, float** %x2.addr, align 4
  %11 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %10, i32 %11
  store float %div7, float* %arrayidx8, align 4
  %12 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, 3
  %13 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add9, %13
  %conv11 = sitofp i32 %rem10 to float
  %14 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %14 to float
  %div13 = fdiv float %conv11, %conv12
  %15 = load float*, float** %y_1.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds float, float* %15, i32 %16
  store float %div13, float* %arrayidx14, align 4
  %17 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %17, 4
  %18 = load i32, i32* %n.addr, align 4
  %rem16 = srem i32 %add15, %18
  %conv17 = sitofp i32 %rem16 to float
  %19 = load i32, i32* %n.addr, align 4
  %conv18 = sitofp i32 %19 to float
  %div19 = fdiv float %conv17, %conv18
  %20 = load float*, float** %y_2.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds float, float* %20, i32 %21
  store float %div19, float* %arrayidx20, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %24, %25
  %26 = load i32, i32* %n.addr, align 4
  %rem25 = srem i32 %mul, %26
  %conv26 = sitofp i32 %rem25 to float
  %27 = load i32, i32* %n.addr, align 4
  %conv27 = sitofp i32 %27 to float
  %div28 = fdiv float %conv26, %conv27
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %28, i32 %29
  %30 = load i32, i32* %j, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %30
  store float %div28, float* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond21, !llvm.loop !10

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %32, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 4
  %x2.addr = alloca float*, align 4
  %y_1.addr = alloca float*, align 4
  %y_2.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 4
  store float* %x2, float** %x2.addr, align 4
  store float* %y_1, float** %y_1.addr, align 4
  store float* %y_2, float** %y_2.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float*, float** %x1.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %4, i32 %5
  %6 = load float, float* %arrayidx, align 4
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8
  %9 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %9
  %10 = load float, float* %arrayidx5, align 4
  %11 = load float*, float** %y_1.addr, align 4
  %12 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %11, i32 %12
  %13 = load float, float* %arrayidx6, align 4
  %mul = fmul float %10, %13
  %add = fadd float %6, %mul
  %14 = load float*, float** %x1.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds float, float* %14, i32 %15
  store float %add, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %22 = load float*, float** %x2.addr, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds float, float* %22, i32 %23
  %24 = load float, float* %arrayidx17, align 4
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %26 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26
  %27 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %27
  %28 = load float, float* %arrayidx19, align 4
  %29 = load float*, float** %y_2.addr, align 4
  %30 = load i32, i32* %j, align 4
  %arrayidx20 = getelementptr inbounds float, float* %29, i32 %30
  %31 = load float, float* %arrayidx20, align 4
  %mul21 = fmul float %28, %31
  %add22 = fadd float %24, %mul21
  %32 = load float*, float** %x2.addr, align 4
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds float, float* %32, i32 %33
  store float %add22, float* %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %34 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond14, !llvm.loop !14

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %35 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond11, !llvm.loop !15

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 4
  %x2.addr = alloca float*, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 4
  store float* %x2, float** %x2.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %rem = srem i32 %2, 20
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %5 = load float*, float** %x1.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4
  %rem7 = srem i32 %11, 20
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %14 = load float*, float** %x2.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds float, float* %14, i32 %15
  %16 = load float, float* %arrayidx13, align 4
  %conv14 = fpext float %16 to double
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv14)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %17 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond3, !llvm.loop !17

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
