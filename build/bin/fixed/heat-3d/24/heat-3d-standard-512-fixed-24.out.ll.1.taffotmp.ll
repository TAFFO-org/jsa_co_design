; ModuleID = './sources/heat-3d.c'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [48 x i8] c"target('A') scalar(range(1024.0,13312.0) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/heat-3d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [36 x i8] c"scalar(range(1024.0,13312.0) final)\00", section "llvm.metadata"
@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 80) final)\00", section "llvm.metadata"
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
  %tsteps = alloca i32, align 4
  %A = alloca [5 x [5 x [5 x float]]], align 4
  %B = alloca [5 x [5 x [5 x float]]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 5, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [5 x [5 x [5 x float]]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 113, i8* null)
  %B2 = bitcast [5 x [5 x [5 x float]]]* %B to i8*
  call void @llvm.var.annotation(i8* %B2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 114, i8* null)
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0
  call void @init_array(i32 noundef %0, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3)
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0
  %1 = bitcast [5 x [5 x float]]* %arraydecay4 to float*
  call void @scale_3d(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %1, i32 noundef 512)
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0
  %2 = bitcast [5 x [5 x float]]* %arraydecay5 to float*
  call void @scale_3d(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %2, i32 noundef 512)
  call void @timer_start()
  %3 = load i32, i32* %tsteps, align 4
  %4 = load i32, i32* %n, align 4
  %arraydecay6 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0
  call void @kernel_heat_3d(i32 noundef %3, i32 noundef %4, [5 x [5 x float]]* noundef %arraydecay6, [5 x [5 x float]]* noundef %arraydecay7)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %7, %8
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  store i32 0, i32* %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %9, %10
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %11 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 %11
  %12 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %12
  %13 = load i32, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx14, i32 0, i32 %13
  %14 = load float, float* %arrayidx15, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx16, i32 0, i32 %16
  %17 = load i32, i32* %k, align 4
  %arrayidx18 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx17, i32 0, i32 %17
  store float %14, float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond11, !llvm.loop !15

for.end:                                          ; preds = %for.cond11
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond8, !llvm.loop !16

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %20 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end24:                                        ; preds = %for.cond
  %21 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %21, [5 x [5 x float]]* noundef getelementptr inbounds ([5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 4
  %B.addr = alloca [5 x [5 x float]]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 4
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 33, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 34, i8* null)
  %k3 = bitcast i32* %k to i8*
  call void @llvm.var.annotation(i8* %k3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 35, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body6, label %for.end19

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp slt i32 %4, %5
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %8, %9
  %add10 = add nsw i32 %add, %sub
  %conv = sitofp i32 %add10 to float
  %mul = fmul float %conv, 1.000000e+01
  %10 = load i32, i32* %n.addr, align 4
  %conv11 = sitofp i32 %10 to float
  %div = fdiv float %mul, %conv11
  %11 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %12 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %11, i32 %12
  %13 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %13
  %14 = load i32, i32* %k, align 4
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %14
  store float %div, float* %arrayidx13, align 4
  %15 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %15, i32 %16
  %17 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %17
  %18 = load i32, i32* %k, align 4
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %18
  store float %div, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !18

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond4, !llvm.loop !19

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %21 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 4
  %B.addr = alloca [5 x [5 x float]]*, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 4
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 4
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %cmp6 = icmp slt i32 %3, %sub5
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  store i32 1, i32* %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 %6, 1
  %cmp10 = icmp slt i32 %5, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %7 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %7, i32 %add
  %9 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %9
  %10 = load i32, i32* %k, align 4
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %10
  %11 = load float, float* %arrayidx13, align 4
  %12 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %13 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %12, i32 %13
  %14 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %14
  %15 = load i32, i32* %k, align 4
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %15
  %16 = load float, float* %arrayidx16, align 4
  %mul = fmul float 2.000000e+00, %16
  %sub17 = fsub float %11, %mul
  %17 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %18 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 %18, 1
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %17, i32 %sub18
  %19 = load i32, i32* %j, align 4
  %arrayidx20 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i32 0, i32 %19
  %20 = load i32, i32* %k, align 4
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx20, i32 0, i32 %20
  %21 = load float, float* %arrayidx21, align 4
  %add22 = fadd float %sub17, %21
  %mul23 = fmul float 1.250000e-01, %add22
  %22 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %22, i32 %23
  %24 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %24, 1
  %arrayidx26 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx24, i32 0, i32 %add25
  %25 = load i32, i32* %k, align 4
  %arrayidx27 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx26, i32 0, i32 %25
  %26 = load float, float* %arrayidx27, align 4
  %27 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %28 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %27, i32 %28
  %29 = load i32, i32* %j, align 4
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx28, i32 0, i32 %29
  %30 = load i32, i32* %k, align 4
  %arrayidx30 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx29, i32 0, i32 %30
  %31 = load float, float* %arrayidx30, align 4
  %mul31 = fmul float 2.000000e+00, %31
  %sub32 = fsub float %26, %mul31
  %32 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %33 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %32, i32 %33
  %34 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %34, 1
  %arrayidx35 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i32 0, i32 %sub34
  %35 = load i32, i32* %k, align 4
  %arrayidx36 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx35, i32 0, i32 %35
  %36 = load float, float* %arrayidx36, align 4
  %add37 = fadd float %sub32, %36
  %mul38 = fmul float 1.250000e-01, %add37
  %add39 = fadd float %mul23, %mul38
  %37 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %38 = load i32, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %37, i32 %38
  %39 = load i32, i32* %j, align 4
  %arrayidx41 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i32 0, i32 %39
  %40 = load i32, i32* %k, align 4
  %add42 = add nsw i32 %40, 1
  %arrayidx43 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx41, i32 0, i32 %add42
  %41 = load float, float* %arrayidx43, align 4
  %42 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %43 = load i32, i32* %i, align 4
  %arrayidx44 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %42, i32 %43
  %44 = load i32, i32* %j, align 4
  %arrayidx45 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx44, i32 0, i32 %44
  %45 = load i32, i32* %k, align 4
  %arrayidx46 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx45, i32 0, i32 %45
  %46 = load float, float* %arrayidx46, align 4
  %mul47 = fmul float 2.000000e+00, %46
  %sub48 = fsub float %41, %mul47
  %47 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %48 = load i32, i32* %i, align 4
  %arrayidx49 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %47, i32 %48
  %49 = load i32, i32* %j, align 4
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx49, i32 0, i32 %49
  %50 = load i32, i32* %k, align 4
  %sub51 = sub nsw i32 %50, 1
  %arrayidx52 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx50, i32 0, i32 %sub51
  %51 = load float, float* %arrayidx52, align 4
  %add53 = fadd float %sub48, %51
  %mul54 = fmul float 1.250000e-01, %add53
  %add55 = fadd float %add39, %mul54
  %52 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %53 = load i32, i32* %i, align 4
  %arrayidx56 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %52, i32 %53
  %54 = load i32, i32* %j, align 4
  %arrayidx57 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx56, i32 0, i32 %54
  %55 = load i32, i32* %k, align 4
  %arrayidx58 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx57, i32 0, i32 %55
  %56 = load float, float* %arrayidx58, align 4
  %add59 = fadd float %add55, %56
  %57 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %58 = load i32, i32* %i, align 4
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %57, i32 %58
  %59 = load i32, i32* %j, align 4
  %arrayidx61 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx60, i32 0, i32 %59
  %60 = load i32, i32* %k, align 4
  %arrayidx62 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx61, i32 0, i32 %60
  store float %add59, float* %arrayidx62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %61 = load i32, i32* %k, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8, !llvm.loop !21

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %62 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %62, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond4, !llvm.loop !22

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %63 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %63, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond1, !llvm.loop !23

for.end68:                                        ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %n.addr, align 4
  %sub70 = sub nsw i32 %65, 1
  %cmp71 = icmp slt i32 %64, %sub70
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  store i32 1, i32* %j, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %n.addr, align 4
  %sub74 = sub nsw i32 %67, 1
  %cmp75 = icmp slt i32 %66, %sub74
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  store i32 1, i32* %k, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %n.addr, align 4
  %sub78 = sub nsw i32 %69, 1
  %cmp79 = icmp slt i32 %68, %sub78
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %70 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %71 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %71, 1
  %arrayidx82 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %70, i32 %add81
  %72 = load i32, i32* %j, align 4
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx82, i32 0, i32 %72
  %73 = load i32, i32* %k, align 4
  %arrayidx84 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx83, i32 0, i32 %73
  %74 = load float, float* %arrayidx84, align 4
  %75 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %76 = load i32, i32* %i, align 4
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %75, i32 %76
  %77 = load i32, i32* %j, align 4
  %arrayidx86 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx85, i32 0, i32 %77
  %78 = load i32, i32* %k, align 4
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx86, i32 0, i32 %78
  %79 = load float, float* %arrayidx87, align 4
  %mul88 = fmul float 2.000000e+00, %79
  %sub89 = fsub float %74, %mul88
  %80 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %81 = load i32, i32* %i, align 4
  %sub90 = sub nsw i32 %81, 1
  %arrayidx91 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %80, i32 %sub90
  %82 = load i32, i32* %j, align 4
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx91, i32 0, i32 %82
  %83 = load i32, i32* %k, align 4
  %arrayidx93 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i32 0, i32 %83
  %84 = load float, float* %arrayidx93, align 4
  %add94 = fadd float %sub89, %84
  %mul95 = fmul float 1.250000e-01, %add94
  %85 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %86 = load i32, i32* %i, align 4
  %arrayidx96 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %85, i32 %86
  %87 = load i32, i32* %j, align 4
  %add97 = add nsw i32 %87, 1
  %arrayidx98 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx96, i32 0, i32 %add97
  %88 = load i32, i32* %k, align 4
  %arrayidx99 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx98, i32 0, i32 %88
  %89 = load float, float* %arrayidx99, align 4
  %90 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %91 = load i32, i32* %i, align 4
  %arrayidx100 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %90, i32 %91
  %92 = load i32, i32* %j, align 4
  %arrayidx101 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx100, i32 0, i32 %92
  %93 = load i32, i32* %k, align 4
  %arrayidx102 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx101, i32 0, i32 %93
  %94 = load float, float* %arrayidx102, align 4
  %mul103 = fmul float 2.000000e+00, %94
  %sub104 = fsub float %89, %mul103
  %95 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %96 = load i32, i32* %i, align 4
  %arrayidx105 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %95, i32 %96
  %97 = load i32, i32* %j, align 4
  %sub106 = sub nsw i32 %97, 1
  %arrayidx107 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx105, i32 0, i32 %sub106
  %98 = load i32, i32* %k, align 4
  %arrayidx108 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx107, i32 0, i32 %98
  %99 = load float, float* %arrayidx108, align 4
  %add109 = fadd float %sub104, %99
  %mul110 = fmul float 1.250000e-01, %add109
  %add111 = fadd float %mul95, %mul110
  %100 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %101 = load i32, i32* %i, align 4
  %arrayidx112 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %100, i32 %101
  %102 = load i32, i32* %j, align 4
  %arrayidx113 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx112, i32 0, i32 %102
  %103 = load i32, i32* %k, align 4
  %add114 = add nsw i32 %103, 1
  %arrayidx115 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx113, i32 0, i32 %add114
  %104 = load float, float* %arrayidx115, align 4
  %105 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %106 = load i32, i32* %i, align 4
  %arrayidx116 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %105, i32 %106
  %107 = load i32, i32* %j, align 4
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx116, i32 0, i32 %107
  %108 = load i32, i32* %k, align 4
  %arrayidx118 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i32 0, i32 %108
  %109 = load float, float* %arrayidx118, align 4
  %mul119 = fmul float 2.000000e+00, %109
  %sub120 = fsub float %104, %mul119
  %110 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %111 = load i32, i32* %i, align 4
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %110, i32 %111
  %112 = load i32, i32* %j, align 4
  %arrayidx122 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i32 0, i32 %112
  %113 = load i32, i32* %k, align 4
  %sub123 = sub nsw i32 %113, 1
  %arrayidx124 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx122, i32 0, i32 %sub123
  %114 = load float, float* %arrayidx124, align 4
  %add125 = fadd float %sub120, %114
  %mul126 = fmul float 1.250000e-01, %add125
  %add127 = fadd float %add111, %mul126
  %115 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 4
  %116 = load i32, i32* %i, align 4
  %arrayidx128 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %115, i32 %116
  %117 = load i32, i32* %j, align 4
  %arrayidx129 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx128, i32 0, i32 %117
  %118 = load i32, i32* %k, align 4
  %arrayidx130 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx129, i32 0, i32 %118
  %119 = load float, float* %arrayidx130, align 4
  %add131 = fadd float %add127, %119
  %120 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %121 = load i32, i32* %i, align 4
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %120, i32 %121
  %122 = load i32, i32* %j, align 4
  %arrayidx133 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx132, i32 0, i32 %122
  %123 = load i32, i32* %k, align 4
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx133, i32 0, i32 %123
  store float %add131, float* %arrayidx134, align 4
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %124 = load i32, i32* %k, align 4
  %inc136 = add nsw i32 %124, 1
  store i32 %inc136, i32* %k, align 4
  br label %for.cond77, !llvm.loop !24

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %125 = load i32, i32* %j, align 4
  %inc139 = add nsw i32 %125, 1
  store i32 %inc139, i32* %j, align 4
  br label %for.cond73, !llvm.loop !25

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %126 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %126, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond69, !llvm.loop !26

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %127 = load i32, i32* %t, align 4
  %inc145 = add nsw i32 %127, 1
  store i32 %inc145, i32* %t, align 4
  br label %for.cond, !llvm.loop !27

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [5 x [5 x float]]* noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %mul7 = mul nsw i32 %mul, %8
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %mul8 = mul nsw i32 %9, %10
  %add = add nsw i32 %mul7, %mul8
  %11 = load i32, i32* %k, align 4
  %add9 = add nsw i32 %add, %11
  %rem = srem i32 %add9, 20
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %14 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %14, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %16
  %17 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx11, i32 0, i32 %17
  %18 = load float, float* %arrayidx12, align 4
  %conv = fpext float %18 to double
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !28

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond1, !llvm.loop !29

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %21 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end19:                                        ; preds = %for.cond
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
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
