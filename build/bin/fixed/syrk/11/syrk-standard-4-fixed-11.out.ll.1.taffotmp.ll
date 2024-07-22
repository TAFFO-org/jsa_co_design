; ModuleID = './sources/syrk.c'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/syrk.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [48 x i8] c"target('C') scalar(range(0.0,106.578751) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,3.75) final)\00", section "llvm.metadata"
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %val.addr, align 4
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4
  %5 = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv
  %7 = load float*, float** %val.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load float*, float** %val.addr, align 4
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9
  %10 = load float, float* %arrayidx4, align 4
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv
  %12 = load float*, float** %val.addr, align 4
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  %2 = load i32, i32* %p.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %p.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load float*, float** %val.addr, align 4
  %10 = load i32, i32* %i, align 4
  %11 = mul nuw i32 %1, %2
  %12 = mul nsw i32 %10, %11
  %arrayidx = getelementptr inbounds float, float* %9, i32 %12
  %13 = load i32, i32* %j, align 4
  %14 = mul nsw i32 %13, %2
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %14
  %15 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %15
  %16 = load float, float* %arrayidx8, align 4
  %17 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %17 to float
  %mul = fmul float %16, %conv
  %18 = load float*, float** %val.addr, align 4
  %19 = load i32, i32* %i, align 4
  %20 = mul nuw i32 %1, %2
  %21 = mul nsw i32 %19, %20
  %arrayidx9 = getelementptr inbounds float, float* %18, i32 %21
  %22 = load i32, i32* %j, align 4
  %23 = mul nsw i32 %22, %2
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %23
  %24 = load i32, i32* %k, align 4
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %24
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !13

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !14

for.end17:                                        ; preds = %for.cond
  ret void
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
  %m = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %C = alloca [16 x [16 x float]], align 4
  %A = alloca [16 x [10 x float]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 16, i32* %n, align 4
  store i32 10, i32* %m, align 4
  %alpha1 = bitcast float* %alpha to i8*
  call void @llvm.var.annotation(i8* %alpha1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* null)
  %beta2 = bitcast float* %beta to i8*
  call void @llvm.var.annotation(i8* %beta2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* null)
  %C3 = bitcast [16 x [16 x float]]* %C to i8*
  call void @llvm.var.annotation(i8* %C3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 112, i8* null)
  %A4 = bitcast [16 x [10 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 113, i8* null)
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %m, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0
  call void @init_array(i32 noundef %0, i32 noundef %1, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay5)
  call void @scale_scalar(float* noundef %alpha, i32 noundef 4)
  call void @scale_scalar(float* noundef %beta, i32 noundef 4)
  %arraydecay6 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0
  %2 = bitcast [16 x float]* %arraydecay6 to float*
  call void @scale_2d(i32 noundef 16, i32 noundef 16, float* noundef %2, i32 noundef 4)
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0
  %3 = bitcast [10 x float]* %arraydecay7 to float*
  call void @scale_2d(i32 noundef 16, i32 noundef 10, float* noundef %3, i32 noundef 4)
  call void @timer_start()
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* %m, align 4
  %6 = load float, float* %alpha, align 4
  %7 = load float, float* %beta, align 4
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0
  call void @kernel_syrk(i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %12 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %12
  %13 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %13
  %14 = load float, float* %arrayidx13, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %16
  store float %14, float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond10, !llvm.loop !15

for.end:                                          ; preds = %for.cond10
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end18:                                        ; preds = %for.cond
  %19 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %19, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %C.addr = alloca [16 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 36, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 37, i8* null)
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end10

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
  %conv = sitofp i32 %rem to float
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i32 %11
  %12 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %12
  store float %div, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !17

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body14, label %for.end32

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body18, label %for.end29

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %mul19 = mul nsw i32 %19, %20
  %add20 = add nsw i32 %mul19, 2
  %21 = load i32, i32* %m.addr, align 4
  %rem21 = srem i32 %add20, %21
  %conv22 = sitofp i32 %rem21 to float
  %22 = load i32, i32* %m.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23
  %23 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %23, i32 %24
  %25 = load i32, i32* %j, align 4
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %25
  store float %div24, float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond15, !llvm.loop !19

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %27, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond11, !llvm.loop !20

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

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
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i32 %6
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %7
  %8 = load float, float* %arrayidx4, align 4
  %mul = fmul float %8, %4
  store float %mul, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %14 = load float, float* %alpha.addr, align 4
  %15 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %15, i32 %16
  %17 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %17
  %18 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %14, %18
  %19 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %20 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %19, i32 %20
  %21 = load i32, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %21
  %22 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %22
  %23 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %23, i32 %24
  %25 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %25
  %26 = load float, float* %arrayidx18, align 4
  %add = fadd float %26, %mul16
  store float %add, float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %27 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond8, !llvm.loop !22

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %28 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond5, !llvm.loop !23

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 {
entry:
  %n.addr = alloca i32, align 4
  %C.addr = alloca [16 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

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
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
