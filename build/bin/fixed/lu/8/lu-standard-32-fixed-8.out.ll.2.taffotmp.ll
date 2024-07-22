; ModuleID = './build/bin/fixed/lu/8/lu-standard-32-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/lu.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [48 x i8] c"target('A') scalar(range(0.1,261.519989) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"./sources/lu.c\00", section "llvm.metadata"
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(-20, 20))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !7 !taffo.funinfo !8 {
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
  store float 0.000000e+00, float* %constZeroVal, align 4, !taffo.initweight !9, !taffo.info !10
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
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !15 !taffo.funinfo !16 {
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
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !18 !taffo.equivalentChild !19 !taffo.funinfo !20 {
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
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !23 !taffo.funinfo !24 {
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
  br label %for.cond4, !llvm.loop !25

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !26

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !27

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !28 !taffo.funinfo !28 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !28 !taffo.funinfo !28 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !29 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !30, !taffo.target !31, !taffo.info !32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !34, !taffo.target !31, !taffo.info !32
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !34, !taffo.target !31, !taffo.info !32
  call void @init_array.2(i32 noundef %0, [20 x float]* noundef %arraydecay), !taffo.initweight !35, !taffo.target !31, !taffo.info !32, !taffo.originalCall !36
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !34, !taffo.target !31, !taffo.info !32
  %1 = bitcast [20 x float]* %arraydecay2 to float*, !taffo.initweight !35, !taffo.target !31, !taffo.info !32
  call void @scale_2d.3(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 32), !taffo.initweight !37, !taffo.target !31, !taffo.info !32, !taffo.originalCall !38
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %arraydecay3 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !34, !taffo.target !31, !taffo.info !32
  call void @kernel_lu.1(i32 noundef %2, [20 x float]* noundef %arraydecay3), !taffo.initweight !35, !taffo.target !31, !taffo.info !32, !taffo.originalCall !39
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %7, !taffo.initweight !34, !taffo.target !31, !taffo.info !32
  %8 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %8, !taffo.initweight !35, !taffo.target !31, !taffo.info !32
  %9 = load float, float* %arrayidx7, align 4, !taffo.initweight !37, !taffo.target !31, !taffo.info !32
  %10 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %11
  store float %9, float* %arrayidx9, align 4, !taffo.initweight !40, !taffo.target !31, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !41

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end12:                                        ; preds = %for.cond
  %14 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %14, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !23 !taffo.funinfo !24 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !13 !taffo.equivalentChild !43 !taffo.funinfo !14 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !30, !taffo.info !44
  %j = alloca i32, align 4, !taffo.initweight !30, !taffo.info !44
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !30, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !34, !taffo.info !44
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !34, !taffo.info !44
  store i32 0, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !35, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !37, !taffo.info !44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %3 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %cmp4 = icmp sle i32 %2, %3, !taffo.initweight !35, !taffo.info !44
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !37, !taffo.info !44

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %sub = sub nsw i32 0, %4, !taffo.initweight !35, !taffo.info !44
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %5, !taffo.initweight !37, !taffo.info !44
  %conv = sitofp i32 %rem to float, !taffo.initweight !40, !taffo.info !44
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !9, !taffo.info !44
  %add = fadd float %div, 1.000000e+00, !taffo.initweight !9, !taffo.info !10
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !35, !taffo.info !10
  %9 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !35, !taffo.info !10
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %inc = add nsw i32 %10, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %inc, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond3, !llvm.loop !46

for.end:                                          ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %add8 = add nsw i32 %11, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %add8, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %12 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %13 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp slt i32 %12, %13, !taffo.initweight !35, !taffo.info !44
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.initweight !37, !taffo.info !44

for.body12:                                       ; preds = %for.cond9
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %15, !taffo.initweight !35, !taffo.info !10
  %16 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %16, !taffo.initweight !35, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %17 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %inc16 = add nsw i32 %17, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %inc16, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond9, !llvm.loop !47

for.end17:                                        ; preds = %for.cond9
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %19 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %18, i32 %19, !taffo.initweight !35, !taffo.info !10
  %20 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %20, !taffo.initweight !35, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %21 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %inc21 = add nsw i32 %21, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %inc21, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond, !llvm.loop !48

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !34, !taffo.info !10
  store i32 0, i32* %r, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %22 = load i32, i32* %r, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp slt i32 %22, %23
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  store i32 0, i32* %s, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %24 = load i32, i32* %s, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp29 = icmp slt i32 %24, %25
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %26 = load i32, i32* %r, align 4
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %26, !taffo.initweight !34, !taffo.info !10
  %27 = load i32, i32* %s, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %27, !taffo.initweight !35, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %28 = load i32, i32* %s, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %s, align 4
  br label %for.cond28, !llvm.loop !49

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %29 = load i32, i32* %r, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %r, align 4
  br label %for.cond24, !llvm.loop !50

for.end39:                                        ; preds = %for.cond24
  store i32 0, i32* %t, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %30 = load i32, i32* %t, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  store i32 0, i32* %r, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %32 = load i32, i32* %r, align 4
  %33 = load i32, i32* %n.addr, align 4
  %cmp45 = icmp slt i32 %32, %33
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %s, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %34 = load i32, i32* %s, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %34, %35
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %36 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %37 = load i32, i32* %r, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %36, i32 %37
  %38 = load i32, i32* %t, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %38
  %39 = load float, float* %arrayidx53, align 4
  %40 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %41 = load i32, i32* %s, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %40, i32 %41
  %42 = load i32, i32* %t, align 4
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx54, i32 0, i32 %42
  %43 = load float, float* %arrayidx55, align 4
  %mul = fmul float %39, %43
  %44 = load i32, i32* %r, align 4
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %44, !taffo.initweight !34, !taffo.info !10
  %45 = load i32, i32* %s, align 4
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %45, !taffo.initweight !35, !taffo.info !10
  %46 = load float, float* %arrayidx57, align 4, !taffo.initweight !37, !taffo.info !10
  %add58 = fadd float %46, %mul, !taffo.initweight !40, !taffo.info !10
  store float %add58, float* %arrayidx57, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %47 = load i32, i32* %s, align 4
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, i32* %s, align 4
  br label %for.cond48, !llvm.loop !51

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %48 = load i32, i32* %r, align 4
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, i32* %r, align 4
  br label %for.cond44, !llvm.loop !52

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %49 = load i32, i32* %t, align 4
  %inc66 = add nsw i32 %49, 1
  store i32 %inc66, i32* %t, align 4
  br label %for.cond40, !llvm.loop !53

for.end67:                                        ; preds = %for.cond40
  store i32 0, i32* %r, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %50 = load i32, i32* %r, align 4
  %51 = load i32, i32* %n.addr, align 4
  %cmp69 = icmp slt i32 %50, %51
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  store i32 0, i32* %s, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %52 = load i32, i32* %s, align 4
  %53 = load i32, i32* %n.addr, align 4
  %cmp73 = icmp slt i32 %52, %53
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %54 = load i32, i32* %r, align 4
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %54, !taffo.initweight !34, !taffo.info !10
  %55 = load i32, i32* %s, align 4
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %55, !taffo.initweight !35, !taffo.info !10
  %56 = load float, float* %arrayidx77, align 4, !taffo.initweight !37, !taffo.info !10
  %57 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %58 = load i32, i32* %r, align 4
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %57, i32 %58
  %59 = load i32, i32* %s, align 4
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %59
  store float %56, float* %arrayidx79, align 4, !taffo.initweight !40, !taffo.info !10
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %60 = load i32, i32* %s, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %s, align 4
  br label %for.cond72, !llvm.loop !54

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %61 = load i32, i32* %r, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %r, align 4
  br label %for.cond68, !llvm.loop !55

for.end85:                                        ; preds = %for.cond68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !13 !taffo.equivalentChild !56 !taffo.funinfo !14 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca float, align 4, !taffo.initweight !30, !taffo.info !10
  %tmp26 = alloca float, align 4, !taffo.initweight !30, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %tmp7 = bitcast float* %tmp to i8*, !taffo.initweight !34, !taffo.info !10
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i32 %7
  %8 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %8
  %9 = load float, float* %arrayidx8, align 4
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %11 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %11
  %12 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %12
  %13 = load float, float* %arrayidx10, align 4
  %mul = fmul float %9, %13, !taffo.initweight !35, !taffo.info !10
  store float %mul, float* %tmp, align 4, !taffo.initweight !34, !taffo.info !10
  %14 = load float, float* %tmp, align 4, !taffo.initweight !34, !taffo.info !10
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %15, i32 %16
  %17 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %17
  %18 = load float, float* %arrayidx12, align 4
  %sub = fsub float %18, %14, !taffo.initweight !35, !taffo.info !10
  store float %sub, float* %arrayidx12, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !57

for.end:                                          ; preds = %for.cond4
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %21 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21
  %22 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %22
  %23 = load float, float* %arrayidx14, align 4
  %24 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %25 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %24, i32 %25
  %26 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %26
  %27 = load float, float* %arrayidx16, align 4
  %div = fdiv float %27, %23
  store float %div, float* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !58

for.end19:                                        ; preds = %for.cond1
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %30, %31
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  store i32 0, i32* %k, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %32, %33
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %tmp2627 = bitcast float* %tmp26 to i8*, !taffo.initweight !34, !taffo.info !10
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %35 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %34, i32 %35
  %36 = load i32, i32* %k, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %36
  %37 = load float, float* %arrayidx29, align 4
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %39 = load i32, i32* %k, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39
  %40 = load i32, i32* %j, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %40
  %41 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %37, %41, !taffo.initweight !35, !taffo.info !10
  store float %mul32, float* %tmp26, align 4, !taffo.initweight !34, !taffo.info !10
  %42 = load float, float* %tmp26, align 4, !taffo.initweight !34, !taffo.info !10
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %44 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %43, i32 %44
  %45 = load i32, i32* %j, align 4
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %45
  %46 = load float, float* %arrayidx34, align 4
  %sub35 = fsub float %46, %42, !taffo.initweight !35, !taffo.info !10
  store float %sub35, float* %arrayidx34, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %47 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond23, !llvm.loop !59

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %48 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %48, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond20, !llvm.loop !60

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %49 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond, !llvm.loop !61

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !13 !taffo.funinfo !14 {
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
  br label %for.cond1, !llvm.loop !62

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !63

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu.1(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !64 !taffo.sourceFunction !39 !taffo.funinfo !65 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !37, !taffo.info !32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca float, align 4, !taffo.initweight !30, !taffo.info !10
  %tmp26 = alloca float, align 4, !taffo.initweight !30, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %tmp7 = bitcast float* %tmp to i8*, !taffo.initweight !34, !taffo.info !10
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i32 %7, !taffo.initweight !9, !taffo.info !32
  %8 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %8, !taffo.initweight !66, !taffo.info !32
  %9 = load float, float* %arrayidx8, align 4, !taffo.initweight !67, !taffo.info !32
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %11 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %11, !taffo.initweight !9, !taffo.info !32
  %12 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %12, !taffo.initweight !66, !taffo.info !32
  %13 = load float, float* %arrayidx10, align 4, !taffo.initweight !67, !taffo.info !32
  %mul = fmul float %9, %13, !taffo.initweight !35, !taffo.info !10
  store float %mul, float* %tmp, align 4, !taffo.initweight !34, !taffo.info !10
  %14 = load float, float* %tmp, align 4, !taffo.initweight !34, !taffo.info !10
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %15, i32 %16, !taffo.initweight !9, !taffo.info !32
  %17 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %17, !taffo.initweight !66, !taffo.info !32
  %18 = load float, float* %arrayidx12, align 4, !taffo.initweight !67, !taffo.info !32
  %sub = fsub float %18, %14, !taffo.initweight !35, !taffo.info !10
  store float %sub, float* %arrayidx12, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !68

for.end:                                          ; preds = %for.cond4
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %21 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21, !taffo.initweight !9, !taffo.info !32
  %22 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %22, !taffo.initweight !66, !taffo.info !32
  %23 = load float, float* %arrayidx14, align 4, !taffo.initweight !67, !taffo.info !32
  %24 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %25 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %24, i32 %25, !taffo.initweight !9, !taffo.info !32
  %26 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %26, !taffo.initweight !66, !taffo.info !32
  %27 = load float, float* %arrayidx16, align 4, !taffo.initweight !67, !taffo.info !32
  %div = fdiv float %27, %23, !taffo.initweight !69, !taffo.info !32
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !67, !taffo.info !32
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !70

for.end19:                                        ; preds = %for.cond1
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %30, %31
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  store i32 0, i32* %k, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %32, %33
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %tmp2627 = bitcast float* %tmp26 to i8*, !taffo.initweight !34, !taffo.info !10
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %35 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %34, i32 %35, !taffo.initweight !9, !taffo.info !32
  %36 = load i32, i32* %k, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %36, !taffo.initweight !66, !taffo.info !32
  %37 = load float, float* %arrayidx29, align 4, !taffo.initweight !67, !taffo.info !32
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %39 = load i32, i32* %k, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39, !taffo.initweight !9, !taffo.info !32
  %40 = load i32, i32* %j, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %40, !taffo.initweight !66, !taffo.info !32
  %41 = load float, float* %arrayidx31, align 4, !taffo.initweight !67, !taffo.info !32
  %mul32 = fmul float %37, %41, !taffo.initweight !35, !taffo.info !10
  store float %mul32, float* %tmp26, align 4, !taffo.initweight !34, !taffo.info !10
  %42 = load float, float* %tmp26, align 4, !taffo.initweight !34, !taffo.info !10
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %44 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %43, i32 %44, !taffo.initweight !9, !taffo.info !32
  %45 = load i32, i32* %j, align 4
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %45, !taffo.initweight !66, !taffo.info !32
  %46 = load float, float* %arrayidx34, align 4, !taffo.initweight !67, !taffo.info !32
  %sub35 = fsub float %46, %42, !taffo.initweight !35, !taffo.info !10
  store float %sub35, float* %arrayidx34, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %47 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond23, !llvm.loop !71

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %48 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %48, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond20, !llvm.loop !72

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %49 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond, !llvm.loop !73

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !64 !taffo.sourceFunction !36 !taffo.funinfo !65 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !37, !taffo.info !32
  %i = alloca i32, align 4, !taffo.initweight !30, !taffo.info !44
  %j = alloca i32, align 4, !taffo.initweight !30, !taffo.info !44
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !30, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !34, !taffo.info !44
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !34, !taffo.info !44
  store i32 0, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !35, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !37, !taffo.info !44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %3 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %cmp4 = icmp sle i32 %2, %3, !taffo.initweight !35, !taffo.info !44
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !37, !taffo.info !44

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %sub = sub nsw i32 0, %4, !taffo.initweight !35, !taffo.info !44
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %5, !taffo.initweight !37, !taffo.info !44
  %conv = sitofp i32 %rem to float, !taffo.initweight !40, !taffo.info !44
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !9, !taffo.info !44
  %add = fadd float %div, 1.000000e+00, !taffo.initweight !9, !taffo.info !10
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %8 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !35, !taffo.info !10
  %9 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !35, !taffo.info !10
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %inc = add nsw i32 %10, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %inc, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond3, !llvm.loop !74

for.end:                                          ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %add8 = add nsw i32 %11, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %add8, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %12 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %13 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp slt i32 %12, %13, !taffo.initweight !35, !taffo.info !44
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.initweight !37, !taffo.info !44

for.body12:                                       ; preds = %for.cond9
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %15 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %15, !taffo.initweight !35, !taffo.info !10
  %16 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %16, !taffo.initweight !35, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %17 = load i32, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  %inc16 = add nsw i32 %17, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %inc16, i32* %j, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond9, !llvm.loop !75

for.end17:                                        ; preds = %for.cond9
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %19 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %18, i32 %19, !taffo.initweight !35, !taffo.info !10
  %20 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %20, !taffo.initweight !35, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %21 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  %inc21 = add nsw i32 %21, 1, !taffo.initweight !35, !taffo.info !44
  store i32 %inc21, i32* %i, align 4, !taffo.initweight !34, !taffo.info !44
  br label %for.cond, !llvm.loop !76

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !34, !taffo.info !10
  store i32 0, i32* %r, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %22 = load i32, i32* %r, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp slt i32 %22, %23
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  store i32 0, i32* %s, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %24 = load i32, i32* %s, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp29 = icmp slt i32 %24, %25
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %26 = load i32, i32* %r, align 4
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %26, !taffo.initweight !34, !taffo.info !10
  %27 = load i32, i32* %s, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %27, !taffo.initweight !35, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %28 = load i32, i32* %s, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %s, align 4
  br label %for.cond28, !llvm.loop !77

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %29 = load i32, i32* %r, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %r, align 4
  br label %for.cond24, !llvm.loop !78

for.end39:                                        ; preds = %for.cond24
  store i32 0, i32* %t, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %30 = load i32, i32* %t, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  store i32 0, i32* %r, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %32 = load i32, i32* %r, align 4
  %33 = load i32, i32* %n.addr, align 4
  %cmp45 = icmp slt i32 %32, %33
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %s, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %34 = load i32, i32* %s, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %34, %35
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %36 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %37 = load i32, i32* %r, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %36, i32 %37, !taffo.initweight !9, !taffo.info !32
  %38 = load i32, i32* %t, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %38, !taffo.initweight !66, !taffo.info !32
  %39 = load float, float* %arrayidx53, align 4, !taffo.initweight !67, !taffo.info !32
  %40 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %41 = load i32, i32* %s, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %40, i32 %41, !taffo.initweight !9, !taffo.info !32
  %42 = load i32, i32* %t, align 4
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx54, i32 0, i32 %42, !taffo.initweight !66, !taffo.info !32
  %43 = load float, float* %arrayidx55, align 4, !taffo.initweight !67, !taffo.info !32
  %mul = fmul float %39, %43, !taffo.initweight !69, !taffo.info !32
  %44 = load i32, i32* %r, align 4
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %44, !taffo.initweight !34, !taffo.info !10
  %45 = load i32, i32* %s, align 4
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %45, !taffo.initweight !35, !taffo.info !10
  %46 = load float, float* %arrayidx57, align 4, !taffo.initweight !37, !taffo.info !10
  %add58 = fadd float %46, %mul, !taffo.initweight !40, !taffo.info !10
  store float %add58, float* %arrayidx57, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %47 = load i32, i32* %s, align 4
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, i32* %s, align 4
  br label %for.cond48, !llvm.loop !79

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %48 = load i32, i32* %r, align 4
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, i32* %r, align 4
  br label %for.cond44, !llvm.loop !80

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %49 = load i32, i32* %t, align 4
  %inc66 = add nsw i32 %49, 1
  store i32 %inc66, i32* %t, align 4
  br label %for.cond40, !llvm.loop !81

for.end67:                                        ; preds = %for.cond40
  store i32 0, i32* %r, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %50 = load i32, i32* %r, align 4
  %51 = load i32, i32* %n.addr, align 4
  %cmp69 = icmp slt i32 %50, %51
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  store i32 0, i32* %s, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %52 = load i32, i32* %s, align 4
  %53 = load i32, i32* %n.addr, align 4
  %cmp73 = icmp slt i32 %52, %53
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %54 = load i32, i32* %r, align 4
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %54, !taffo.initweight !34, !taffo.info !10
  %55 = load i32, i32* %s, align 4
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %55, !taffo.initweight !35, !taffo.info !10
  %56 = load float, float* %arrayidx77, align 4, !taffo.initweight !37, !taffo.info !10
  %57 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !40, !taffo.info !32
  %58 = load i32, i32* %r, align 4
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %57, i32 %58, !taffo.initweight !9, !taffo.info !32
  %59 = load i32, i32* %s, align 4
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %59, !taffo.initweight !66, !taffo.info !32
  store float %56, float* %arrayidx79, align 4, !taffo.initweight !40, !taffo.info !10
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %60 = load i32, i32* %s, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %s, align 4
  br label %for.cond72, !llvm.loop !82

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %61 = load i32, i32* %r, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %r, align 4
  br label %for.cond68, !llvm.loop !83

for.end85:                                        ; preds = %for.cond68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.sourceFunction !38 !taffo.funinfo !85 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !40, !taffo.info !32
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !66, !taffo.info !32
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !67, !taffo.info !32
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !69, !taffo.info !32
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !86, !taffo.info !32
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !66, !taffo.info !32
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !67, !taffo.info !32
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !69, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !87

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !88

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!7 = !{i32 -1}
!8 = !{i32 0, i1 false}
!9 = !{i32 5}
!10 = !{i1 false, i1 false, i1 false, i2 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 -1, i32 -1, i32 -1}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = distinct !{!17, !12}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{void (i32, i32, float*, i32)* @scale_2d.3}
!20 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!24 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{}
!29 = !{i1 true}
!30 = !{i32 0}
!31 = !{!"A"}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 1.000000e-01, double 0x40705851DFFC547A}
!34 = !{i32 1}
!35 = !{i32 2}
!36 = !{void (i32, [20 x float]*)* @init_array}
!37 = !{i32 3}
!38 = !{void (i32, i32, float*, i32)* @scale_2d}
!39 = !{void (i32, [20 x float]*)* @kernel_lu}
!40 = !{i32 4}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = !{void (i32, [20 x float]*)* @init_array.2}
!44 = !{i1 false, !45, i1 false, i2 1}
!45 = !{double -2.000000e+01, double 2.000000e+01}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = !{void (i32, [20 x float]*)* @kernel_lu.1}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = !{i32 -1, i32 2}
!65 = !{i32 0, i1 false, i32 1, !32}
!66 = !{i32 6}
!67 = !{i32 7}
!68 = distinct !{!68, !12}
!69 = !{i32 8}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = !{i32 -1, i32 -1, i32 3, i32 -1}
!85 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!86 = !{i32 9}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
