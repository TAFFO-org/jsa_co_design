; ModuleID = './sources/seidel-2d.c'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [47 x i8] c"target('A') scalar(range(0.1,20.049999) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/seidel-2d.c\00", section "llvm.metadata"
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(-20, 20) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %tsteps = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 97, i8* null)
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0
  call void @init_array(i32 noundef %0, [20 x float]* noundef %arraydecay)
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0
  call void @kernel_seidel_2d(i32 noundef %1, i32 noundef %2, [20 x float]* noundef %arraydecay2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %7
  %8 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %8
  %9 = load float, float* %arrayidx6, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %11
  store float %9, float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end11:                                        ; preds = %for.cond
  %14 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %14, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 33, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to float
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 2
  %conv6 = sitofp i32 %add to float
  %mul = fmul float %conv, %conv6
  %add7 = fadd float %mul, 2.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %6 to float
  %div = fdiv float %add7, %conv8
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8
  %9 = load i32, i32* %j, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9
  store float %div, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !11

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %term1 = alloca float, align 4
  %term2 = alloca float, align 4
  %sum = alloca float, align 4
  %div = alloca float, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub2 = sub nsw i32 %3, 2
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %sub6 = sub nsw i32 %5, 2
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %term19 = bitcast float* %term1 to i8*
  call void @llvm.var.annotation(i8* %term19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 77, i8* null)
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %7 = load i32, i32* %i, align 4
  %sub10 = sub nsw i32 %7, 1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i32 %sub10
  %8 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %8, 1
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11
  %9 = load float, float* %arrayidx12, align 4
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %11, 1
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %sub13
  %12 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %12
  %13 = load float, float* %arrayidx15, align 4
  %add = fadd float %9, %13
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %15, 1
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %sub16
  %16 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %16, 1
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18
  %17 = load float, float* %arrayidx19, align 4
  %add20 = fadd float %add, %17
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %19 = load i32, i32* %i, align 4
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %18, i32 %19
  %20 = load i32, i32* %j, align 4
  %sub22 = sub nsw i32 %20, 1
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22
  %21 = load float, float* %arrayidx23, align 4
  %add24 = fadd float %add20, %21
  store float %add24, float* %term1, align 4
  %term225 = bitcast float* %term2 to i8*
  call void @llvm.var.annotation(i8* %term225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 79, i8* null)
  %22 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %22, i32 %23
  %24 = load i32, i32* %j, align 4
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %24
  %25 = load float, float* %arrayidx27, align 4
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %27 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27
  %28 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %28, 1
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29
  %29 = load float, float* %arrayidx30, align 4
  %add31 = fadd float %25, %29
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %31 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %31, 1
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %30, i32 %add32
  %32 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %32, 1
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34
  %33 = load float, float* %arrayidx35, align 4
  %add36 = fadd float %add31, %33
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %35 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %35, 1
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %34, i32 %add37
  %36 = load i32, i32* %j, align 4
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %36
  %37 = load float, float* %arrayidx39, align 4
  %add40 = fadd float %add36, %37
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %39 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %39, 1
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %add41
  %40 = load i32, i32* %j, align 4
  %add43 = add nsw i32 %40, 1
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43
  %41 = load float, float* %arrayidx44, align 4
  %add45 = fadd float %add40, %41
  store float %add45, float* %term2, align 4
  %sum46 = bitcast float* %sum to i8*
  call void @llvm.var.annotation(i8* %sum46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 81, i8* null)
  %42 = load float, float* %term1, align 4
  %43 = load float, float* %term2, align 4
  %add47 = fadd float %42, %43
  store float %add47, float* %sum, align 4
  %div48 = bitcast float* %div to i8*
  call void @llvm.var.annotation(i8* %div48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 82, i8* null)
  %44 = load float, float* %sum, align 4
  %div49 = fdiv float %44, 9.000000e+00
  store float %div49, float* %div, align 4
  %45 = load float, float* %div, align 4
  %46 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %47 = load i32, i32* %i, align 4
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %46, i32 %47
  %48 = load i32, i32* %j, align 4
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %48
  store float %45, float* %arrayidx51, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5, !llvm.loop !13

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %50, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond1, !llvm.loop !14

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %51 = load i32, i32* %t, align 4
  %inc56 = add nsw i32 %51, 1
  store i32 %inc56, i32* %t, align 4
  br label %for.cond, !llvm.loop !15

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !16

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end9:                                         ; preds = %for.cond
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
!6 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
