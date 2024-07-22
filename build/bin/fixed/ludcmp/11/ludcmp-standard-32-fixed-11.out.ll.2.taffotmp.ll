; ModuleID = './build/bin/fixed/ludcmp/11/ludcmp-standard-32-fixed-11.out.ll.1.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [36 x i8] c"scalar(range(0.1,261.519989) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [37 x i8] c"scalar(range(32.0,261.519989) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [38 x i8] c"scalar(range(128.800003,144.0) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [52 x i8] c"target('x') scalar(range(-0.037947,3.998521) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,128.800003) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !15 !taffo.equivalentChild !16 !taffo.funinfo !17 {
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
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !19 !taffo.equivalentChild !20 !taffo.funinfo !21 {
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
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
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
  br label %for.cond4, !llvm.loop !26

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !27

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !29 !taffo.funinfo !29 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !29 !taffo.funinfo !29 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !30 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !31, !taffo.info !32
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !31, !taffo.info !34
  %b = alloca [20 x float], align 4, !taffo.initweight !31, !taffo.info !36
  %x = alloca [20 x float], align 4, !taffo.initweight !31, !taffo.info !38, !taffo.target !40
  %y = alloca [20 x float], align 4, !taffo.initweight !31, !taffo.info !41
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !43, !taffo.info !32
  %B2 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !43, !taffo.info !34
  %b3 = bitcast [20 x float]* %b to i8*, !taffo.initweight !43, !taffo.info !36
  %x4 = bitcast [20 x float]* %x to i8*, !taffo.initweight !43, !taffo.info !38, !taffo.target !40
  %y5 = bitcast [20 x float]* %y to i8*, !taffo.initweight !43, !taffo.info !41
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !32
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.initweight !43, !taffo.info !34
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !43, !taffo.info !36
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !43, !taffo.info !38, !taffo.target !40
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @init_array.5(i32 noundef %0, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !44, !taffo.info !32, !taffo.originalCall !45
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !32
  %1 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.initweight !44, !taffo.info !32
  call void @scale_2d.6(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 32), !taffo.initweight !46, !taffo.info !32, !taffo.originalCall !47
  %arraydecay11 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.initweight !43, !taffo.info !34
  %2 = bitcast [20 x float]* %arraydecay11 to float*, !taffo.initweight !44, !taffo.info !34
  call void @scale_2d.7(i32 noundef 20, i32 noundef 20, float* noundef %2, i32 noundef 32), !taffo.initweight !46, !taffo.info !34, !taffo.originalCall !47
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !43, !taffo.info !36
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 32), !taffo.initweight !44, !taffo.info !36, !taffo.originalCall !48
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !43, !taffo.info !38, !taffo.target !40
  call void @scale_1d.2(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 32), !taffo.initweight !44, !taffo.info !38, !taffo.target !40, !taffo.originalCall !48
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 32), !taffo.initweight !44, !taffo.info !41, !taffo.originalCall !48
  call void @timer_start()
  %3 = load i32, i32* %n, align 4
  %arraydecay15 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !32
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !43, !taffo.info !36
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !43, !taffo.info !38, !taffo.target !40
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @kernel_ludcmp.3(i32 noundef %3, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18), !taffo.initweight !44, !taffo.info !32, !taffo.originalCall !49
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %6, !taffo.initweight !43, !taffo.info !38, !taffo.target !40
  %7 = load float, float* %arrayidx, align 4, !taffo.initweight !44, !taffo.info !38, !taffo.target !40
  %8 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %8
  store float %7, float* %arrayidx19, align 4, !taffo.initweight !46, !taffo.info !38, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %10, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !24 !taffo.funinfo !25 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !51 !taffo.equivalentChild !52 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %B.addr = alloca [20 x float]*, align 4
  %b.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !54
  %fn = alloca float, align 4, !taffo.initweight !31, !taffo.info !10
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store [20 x float]* %B, [20 x float]** %B.addr, align 4
  store float* %b, float** %b.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !43, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !43, !taffo.info !54
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !43, !taffo.info !10
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !44, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !43, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !46, !taffo.info !54

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %x.addr, align 4
  %4 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !44, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !46, !taffo.info !10
  %5 = load float*, float** %y.addr, align 4
  %6 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx5 = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !44, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !46, !taffo.info !10
  %7 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %add = add nsw i32 %7, 1, !taffo.initweight !44, !taffo.info !54
  %conv6 = sitofp i32 %add to float, !taffo.initweight !46, !taffo.info !54
  %8 = load float, float* %fn, align 4, !taffo.initweight !43, !taffo.info !10
  %div = fdiv float %conv6, %8, !taffo.initweight !44, !taffo.info !10
  %conv7 = fpext float %div to double, !taffo.initweight !46, !taffo.info !10
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.initweight !56, !taffo.info !10
  %add9 = fadd double %div8, 4.000000e+00, !taffo.initweight !9, !taffo.info !10
  %conv10 = fptrunc double %add9 to float, !taffo.initweight !57, !taffo.info !10
  %9 = load float*, float** %b.addr, align 4
  %10 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx11 = getelementptr inbounds float, float* %9, i32 %10, !taffo.initweight !44, !taffo.info !10
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %inc = add nsw i32 %11, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %12 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %13 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %12, %13, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.initweight !46, !taffo.info !54

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %14 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %15 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %cmp17 = icmp sle i32 %14, %15, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.initweight !46, !taffo.info !54

for.body19:                                       ; preds = %for.cond16
  %16 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %sub = sub nsw i32 0, %16, !taffo.initweight !44, !taffo.info !54
  %17 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %17, !taffo.initweight !46, !taffo.info !54
  %conv20 = sitofp i32 %rem to float, !taffo.initweight !56, !taffo.info !54
  %18 = load i32, i32* %n.addr, align 4
  %conv21 = sitofp i32 %18 to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !9, !taffo.info !54
  %add23 = fadd float %div22, 1.000000e+00, !taffo.initweight !9, !taffo.info !10
  %19 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %20 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %19, i32 %20, !taffo.initweight !44, !taffo.info !10
  %21 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %21, !taffo.initweight !44, !taffo.info !10
  store float %add23, float* %arrayidx25, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %22 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %inc27 = add nsw i32 %22, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc27, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond16, !llvm.loop !59

for.end28:                                        ; preds = %for.cond16
  %23 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %add29 = add nsw i32 %23, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %add29, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %24 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %25 = load i32, i32* %n.addr, align 4
  %cmp31 = icmp slt i32 %24, %25, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.initweight !46, !taffo.info !54

for.body33:                                       ; preds = %for.cond30
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %27 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27, !taffo.initweight !44, !taffo.info !10
  %28 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %28, !taffo.initweight !44, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %29 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %inc37 = add nsw i32 %29, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc37, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond30, !llvm.loop !60

for.end38:                                        ; preds = %for.cond30
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %31 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %30, i32 %31, !taffo.initweight !44, !taffo.info !10
  %32 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %32, !taffo.initweight !44, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %33 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %inc42 = add nsw i32 %33, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc42, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond12, !llvm.loop !61

for.end43:                                        ; preds = %for.cond12
  store i32 0, i32* %r, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %34 = load i32, i32* %r, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp45 = icmp slt i32 %34, %35
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %s, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %36 = load i32, i32* %s, align 4
  %37 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %36, %37
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %38 = load [20 x float]*, [20 x float]** %B.addr, align 4
  %39 = load i32, i32* %r, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39
  %40 = load i32, i32* %s, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %40
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %41 = load i32, i32* %s, align 4
  %inc55 = add nsw i32 %41, 1
  store i32 %inc55, i32* %s, align 4
  br label %for.cond48, !llvm.loop !62

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %42 = load i32, i32* %r, align 4
  %inc58 = add nsw i32 %42, 1
  store i32 %inc58, i32* %r, align 4
  br label %for.cond44, !llvm.loop !63

for.end59:                                        ; preds = %for.cond44
  store i32 0, i32* %t, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %43 = load i32, i32* %t, align 4
  %44 = load i32, i32* %n.addr, align 4
  %cmp61 = icmp slt i32 %43, %44
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  store i32 0, i32* %r, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %45 = load i32, i32* %r, align 4
  %46 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %45, %46
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  store i32 0, i32* %s, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %47 = load i32, i32* %s, align 4
  %48 = load i32, i32* %n.addr, align 4
  %cmp69 = icmp slt i32 %47, %48
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %49 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %50 = load i32, i32* %r, align 4
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %49, i32 %50
  %51 = load i32, i32* %t, align 4
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %51
  %52 = load float, float* %arrayidx73, align 4
  %53 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %54 = load i32, i32* %s, align 4
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %53, i32 %54
  %55 = load i32, i32* %t, align 4
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %55
  %56 = load float, float* %arrayidx75, align 4
  %mul = fmul float %52, %56
  %57 = load [20 x float]*, [20 x float]** %B.addr, align 4
  %58 = load i32, i32* %r, align 4
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %57, i32 %58
  %59 = load i32, i32* %s, align 4
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %59
  %60 = load float, float* %arrayidx77, align 4
  %add78 = fadd float %60, %mul
  store float %add78, float* %arrayidx77, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %61 = load i32, i32* %s, align 4
  %inc80 = add nsw i32 %61, 1
  store i32 %inc80, i32* %s, align 4
  br label %for.cond68, !llvm.loop !64

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %62 = load i32, i32* %r, align 4
  %inc83 = add nsw i32 %62, 1
  store i32 %inc83, i32* %r, align 4
  br label %for.cond64, !llvm.loop !65

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %63 = load i32, i32* %t, align 4
  %inc86 = add nsw i32 %63, 1
  store i32 %inc86, i32* %t, align 4
  br label %for.cond60, !llvm.loop !66

for.end87:                                        ; preds = %for.cond60
  store i32 0, i32* %r, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %64 = load i32, i32* %r, align 4
  %65 = load i32, i32* %n.addr, align 4
  %cmp89 = icmp slt i32 %64, %65
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  store i32 0, i32* %s, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %66 = load i32, i32* %s, align 4
  %67 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %66, %67
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %68 = load [20 x float]*, [20 x float]** %B.addr, align 4
  %69 = load i32, i32* %r, align 4
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %68, i32 %69
  %70 = load i32, i32* %s, align 4
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %70
  %71 = load float, float* %arrayidx97, align 4
  %72 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %73 = load i32, i32* %r, align 4
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %72, i32 %73
  %74 = load i32, i32* %s, align 4
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %74
  store float %71, float* %arrayidx99, align 4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %75 = load i32, i32* %s, align 4
  %inc101 = add nsw i32 %75, 1
  store i32 %inc101, i32* %s, align 4
  br label %for.cond92, !llvm.loop !67

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %76 = load i32, i32* %r, align 4
  %inc104 = add nsw i32 %76, 1
  store i32 %inc104, i32* %r, align 4
  br label %for.cond88, !llvm.loop !68

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !24 !taffo.equivalentChild !69 !taffo.funinfo !25 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %b.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4, !taffo.initweight !31, !taffo.info !70
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %b, float** %b.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  %w1 = bitcast float* %w to i8*, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i32 %5
  %6 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %6
  %7 = load float, float* %arrayidx5, align 4, !taffo.initweight !44, !taffo.info !70
  store float %7, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %11
  %12 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %12
  %13 = load float, float* %arrayidx10, align 4
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %15 = load i32, i32* %k, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %16
  %17 = load float, float* %arrayidx12, align 4
  %mul = fmul float %13, %17
  %18 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub = fsub float %18, %mul, !taffo.initweight !44, !taffo.info !70
  store float %sub, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !72

for.end:                                          ; preds = %for.cond6
  %20 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %22 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %21, i32 %22
  %23 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %23
  %24 = load float, float* %arrayidx14, align 4
  %div = fdiv float %20, %24, !taffo.initweight !44, !taffo.info !70
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %26 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26
  %27 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %27
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !46, !taffo.info !70
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond2, !llvm.loop !73

for.end19:                                        ; preds = %for.cond2
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %30, %31
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %32 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %32, i32 %33
  %34 = load i32, i32* %j, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %34
  %35 = load float, float* %arrayidx24, align 4, !taffo.initweight !44, !taffo.info !70
  store float %35, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %k, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %36, %37
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %39 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39
  %40 = load i32, i32* %k, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %40
  %41 = load float, float* %arrayidx29, align 4
  %42 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %43 = load i32, i32* %k, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %42, i32 %43
  %44 = load i32, i32* %j, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %44
  %45 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %41, %45
  %46 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub33 = fsub float %46, %mul32, !taffo.initweight !44, !taffo.info !70
  store float %sub33, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %47 = load i32, i32* %k, align 4
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %k, align 4
  br label %for.cond25, !llvm.loop !74

for.end36:                                        ; preds = %for.cond25
  %48 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %49 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %50 = load i32, i32* %i, align 4
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %49, i32 %50
  %51 = load i32, i32* %j, align 4
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %51
  store float %48, float* %arrayidx38, align 4, !taffo.initweight !44, !taffo.info !70
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %52 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %52, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond20, !llvm.loop !75

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %53 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %53, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond, !llvm.loop !76

for.end44:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp46 = icmp slt i32 %54, %55
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %56 = load float*, float** %b.addr, align 4
  %57 = load i32, i32* %i, align 4
  %arrayidx48 = getelementptr inbounds float, float* %56, i32 %57
  %58 = load float, float* %arrayidx48, align 4, !taffo.initweight !44, !taffo.info !70
  store float %58, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %59, %60
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %61 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %62 = load i32, i32* %i, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %61, i32 %62
  %63 = load i32, i32* %j, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %63
  %64 = load float, float* %arrayidx53, align 4
  %65 = load float*, float** %y.addr, align 4
  %66 = load i32, i32* %j, align 4
  %arrayidx54 = getelementptr inbounds float, float* %65, i32 %66
  %67 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %64, %67
  %68 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub56 = fsub float %68, %mul55, !taffo.initweight !44, !taffo.info !70
  store float %sub56, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %69 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %69, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond49, !llvm.loop !77

for.end59:                                        ; preds = %for.cond49
  %70 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %71 = load float*, float** %y.addr, align 4
  %72 = load i32, i32* %i, align 4
  %arrayidx60 = getelementptr inbounds float, float* %71, i32 %72
  store float %70, float* %arrayidx60, align 4, !taffo.initweight !44, !taffo.info !70
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %73 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %73, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond45, !llvm.loop !78

for.end63:                                        ; preds = %for.cond45
  %74 = load i32, i32* %n.addr, align 4
  %sub64 = sub nsw i32 %74, 1
  store i32 %sub64, i32* %i, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %75 = load i32, i32* %i, align 4
  %cmp66 = icmp sge i32 %75, 0
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %76 = load float*, float** %y.addr, align 4
  %77 = load i32, i32* %i, align 4
  %arrayidx68 = getelementptr inbounds float, float* %76, i32 %77
  %78 = load float, float* %arrayidx68, align 4, !taffo.initweight !44, !taffo.info !70
  store float %78, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %79 = load i32, i32* %i, align 4
  %add = add nsw i32 %79, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %n.addr, align 4
  %cmp70 = icmp slt i32 %80, %81
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %82 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %83 = load i32, i32* %i, align 4
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %82, i32 %83
  %84 = load i32, i32* %j, align 4
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %84
  %85 = load float, float* %arrayidx73, align 4
  %86 = load float*, float** %x.addr, align 4
  %87 = load i32, i32* %j, align 4
  %arrayidx74 = getelementptr inbounds float, float* %86, i32 %87
  %88 = load float, float* %arrayidx74, align 4
  %mul75 = fmul float %85, %88
  %89 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub76 = fsub float %89, %mul75, !taffo.initweight !44, !taffo.info !70
  store float %sub76, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %90 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %90, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond69, !llvm.loop !79

for.end79:                                        ; preds = %for.cond69
  %91 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %92 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %93 = load i32, i32* %i, align 4
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %92, i32 %93
  %94 = load i32, i32* %i, align 4
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %94
  %95 = load float, float* %arrayidx81, align 4
  %div82 = fdiv float %91, %95, !taffo.initweight !44, !taffo.info !70
  %96 = load float*, float** %x.addr, align 4
  %97 = load i32, i32* %i, align 4
  %arrayidx83 = getelementptr inbounds float, float* %96, i32 %97
  store float %div82, float* %arrayidx83, align 4, !taffo.initweight !46, !taffo.info !70
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %98 = load i32, i32* %i, align 4
  %dec = add nsw i32 %98, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond65, !llvm.loop !80

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca float*, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x, float** %x.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %5 = load float*, float** %x.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.sourceFunction !48 !taffo.funinfo !83 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !36
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !36
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !36
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !36
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !57, !taffo.info !36
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !84, !taffo.info !36
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !36
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !36
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !57, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.sourceFunction !48 !taffo.funinfo !86 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !38
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !38
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !38
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !38
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !57, !taffo.info !38
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !84, !taffo.info !38
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !38
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !38
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !57, !taffo.info !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.3(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !88 !taffo.sourceFunction !49 !taffo.funinfo !89 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !46, !taffo.info !32
  %b.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !36
  %x.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !38
  %y.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !41
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4, !taffo.initweight !31, !taffo.info !70
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  store float* %b, float** %b.addr, align 4, !taffo.initweight !56, !taffo.info !36
  store float* %x, float** %x.addr, align 4, !taffo.initweight !56, !taffo.info !38
  store float* %y, float** %y.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %w1 = bitcast float* %w to i8*, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i32 %5, !taffo.initweight !9, !taffo.info !32
  %6 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %6, !taffo.initweight !57, !taffo.info !32
  %7 = load float, float* %arrayidx5, align 4, !taffo.initweight !44, !taffo.info !70
  store float %7, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %11 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %11, !taffo.initweight !9, !taffo.info !32
  %12 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %12, !taffo.initweight !57, !taffo.info !32
  %13 = load float, float* %arrayidx10, align 4, !taffo.initweight !84, !taffo.info !32
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %15 = load i32, i32* %k, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %15, !taffo.initweight !9, !taffo.info !32
  %16 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %16, !taffo.initweight !57, !taffo.info !32
  %17 = load float, float* %arrayidx12, align 4, !taffo.initweight !84, !taffo.info !32
  %mul = fmul float %13, %17, !taffo.initweight !90, !taffo.info !32
  %18 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub = fsub float %18, %mul, !taffo.initweight !44, !taffo.info !70
  store float %sub, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !91

for.end:                                          ; preds = %for.cond6
  %20 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %22 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %21, i32 %22, !taffo.initweight !9, !taffo.info !32
  %23 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %23, !taffo.initweight !57, !taffo.info !32
  %24 = load float, float* %arrayidx14, align 4, !taffo.initweight !84, !taffo.info !32
  %div = fdiv float %20, %24, !taffo.initweight !44, !taffo.info !70
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %26 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26, !taffo.initweight !9, !taffo.info !32
  %27 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %27, !taffo.initweight !57, !taffo.info !32
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !46, !taffo.info !70
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond2, !llvm.loop !92

for.end19:                                        ; preds = %for.cond2
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %30, %31
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %32 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %32, i32 %33, !taffo.initweight !9, !taffo.info !32
  %34 = load i32, i32* %j, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %34, !taffo.initweight !57, !taffo.info !32
  %35 = load float, float* %arrayidx24, align 4, !taffo.initweight !44, !taffo.info !70
  store float %35, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %k, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %36, %37
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %39 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39, !taffo.initweight !9, !taffo.info !32
  %40 = load i32, i32* %k, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %40, !taffo.initweight !57, !taffo.info !32
  %41 = load float, float* %arrayidx29, align 4, !taffo.initweight !84, !taffo.info !32
  %42 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %43 = load i32, i32* %k, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %42, i32 %43, !taffo.initweight !9, !taffo.info !32
  %44 = load i32, i32* %j, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %44, !taffo.initweight !57, !taffo.info !32
  %45 = load float, float* %arrayidx31, align 4, !taffo.initweight !84, !taffo.info !32
  %mul32 = fmul float %41, %45, !taffo.initweight !90, !taffo.info !32
  %46 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub33 = fsub float %46, %mul32, !taffo.initweight !44, !taffo.info !70
  store float %sub33, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %47 = load i32, i32* %k, align 4
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %k, align 4
  br label %for.cond25, !llvm.loop !93

for.end36:                                        ; preds = %for.cond25
  %48 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %49 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %50 = load i32, i32* %i, align 4
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %49, i32 %50, !taffo.initweight !9, !taffo.info !32
  %51 = load i32, i32* %j, align 4
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %51, !taffo.initweight !57, !taffo.info !32
  store float %48, float* %arrayidx38, align 4, !taffo.initweight !44, !taffo.info !70
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %52 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %52, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond20, !llvm.loop !94

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %53 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %53, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond, !llvm.loop !95

for.end44:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp46 = icmp slt i32 %54, %55
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %56 = load float*, float** %b.addr, align 4, !taffo.initweight !56, !taffo.info !36
  %57 = load i32, i32* %i, align 4
  %arrayidx48 = getelementptr inbounds float, float* %56, i32 %57, !taffo.initweight !9, !taffo.info !36
  %58 = load float, float* %arrayidx48, align 4, !taffo.initweight !44, !taffo.info !70
  store float %58, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %59, %60
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %61 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %62 = load i32, i32* %i, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %61, i32 %62, !taffo.initweight !9, !taffo.info !32
  %63 = load i32, i32* %j, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %63, !taffo.initweight !57, !taffo.info !32
  %64 = load float, float* %arrayidx53, align 4, !taffo.initweight !84, !taffo.info !32
  %65 = load float*, float** %y.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %66 = load i32, i32* %j, align 4
  %arrayidx54 = getelementptr inbounds float, float* %65, i32 %66, !taffo.initweight !9, !taffo.info !41
  %67 = load float, float* %arrayidx54, align 4, !taffo.initweight !57, !taffo.info !41
  %mul55 = fmul float %64, %67, !taffo.initweight !84, !taffo.info !41
  %68 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub56 = fsub float %68, %mul55, !taffo.initweight !44, !taffo.info !70
  store float %sub56, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %69 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %69, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond49, !llvm.loop !96

for.end59:                                        ; preds = %for.cond49
  %70 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %71 = load float*, float** %y.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %72 = load i32, i32* %i, align 4
  %arrayidx60 = getelementptr inbounds float, float* %71, i32 %72, !taffo.initweight !9, !taffo.info !41
  store float %70, float* %arrayidx60, align 4, !taffo.initweight !44, !taffo.info !70
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %73 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %73, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond45, !llvm.loop !97

for.end63:                                        ; preds = %for.cond45
  %74 = load i32, i32* %n.addr, align 4
  %sub64 = sub nsw i32 %74, 1
  store i32 %sub64, i32* %i, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %75 = load i32, i32* %i, align 4
  %cmp66 = icmp sge i32 %75, 0
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %76 = load float*, float** %y.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %77 = load i32, i32* %i, align 4
  %arrayidx68 = getelementptr inbounds float, float* %76, i32 %77, !taffo.initweight !9, !taffo.info !41
  %78 = load float, float* %arrayidx68, align 4, !taffo.initweight !44, !taffo.info !70
  store float %78, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %79 = load i32, i32* %i, align 4
  %add = add nsw i32 %79, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %n.addr, align 4
  %cmp70 = icmp slt i32 %80, %81
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %82 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %83 = load i32, i32* %i, align 4
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %82, i32 %83, !taffo.initweight !9, !taffo.info !32
  %84 = load i32, i32* %j, align 4
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %84, !taffo.initweight !57, !taffo.info !32
  %85 = load float, float* %arrayidx73, align 4, !taffo.initweight !84, !taffo.info !32
  %86 = load float*, float** %x.addr, align 4, !taffo.initweight !56, !taffo.info !38
  %87 = load i32, i32* %j, align 4
  %arrayidx74 = getelementptr inbounds float, float* %86, i32 %87, !taffo.initweight !9, !taffo.info !38
  %88 = load float, float* %arrayidx74, align 4, !taffo.initweight !57, !taffo.info !38
  %mul75 = fmul float %85, %88, !taffo.initweight !84, !taffo.info !38
  %89 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %sub76 = fsub float %89, %mul75, !taffo.initweight !44, !taffo.info !70
  store float %sub76, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %90 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %90, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond69, !llvm.loop !98

for.end79:                                        ; preds = %for.cond69
  %91 = load float, float* %w, align 4, !taffo.initweight !43, !taffo.info !70
  %92 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %93 = load i32, i32* %i, align 4
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %92, i32 %93, !taffo.initweight !9, !taffo.info !32
  %94 = load i32, i32* %i, align 4
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %94, !taffo.initweight !57, !taffo.info !32
  %95 = load float, float* %arrayidx81, align 4, !taffo.initweight !84, !taffo.info !32
  %div82 = fdiv float %91, %95, !taffo.initweight !44, !taffo.info !70
  %96 = load float*, float** %x.addr, align 4, !taffo.initweight !56, !taffo.info !38
  %97 = load i32, i32* %i, align 4
  %arrayidx83 = getelementptr inbounds float, float* %96, i32 %97, !taffo.initweight !9, !taffo.info !38
  store float %div82, float* %arrayidx83, align 4, !taffo.initweight !46, !taffo.info !70
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %98 = load i32, i32* %i, align 4
  %dec = add nsw i32 %98, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond65, !llvm.loop !99

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.sourceFunction !48 !taffo.funinfo !100 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !41
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !41
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !41
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !57, !taffo.info !41
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !84, !taffo.info !41
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !41
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !57, !taffo.info !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !102 !taffo.sourceFunction !45 !taffo.funinfo !103 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !46, !taffo.info !32
  %B.addr = alloca [20 x float]*, align 4, !taffo.initweight !46, !taffo.info !34
  %b.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !36
  %x.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !38
  %y.addr = alloca float*, align 4, !taffo.initweight !46, !taffo.info !41
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !54
  %fn = alloca float, align 4, !taffo.initweight !31, !taffo.info !10
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  store [20 x float]* %B, [20 x float]** %B.addr, align 4, !taffo.initweight !56, !taffo.info !34
  store float* %b, float** %b.addr, align 4, !taffo.initweight !56, !taffo.info !36
  store float* %x, float** %x.addr, align 4, !taffo.initweight !56, !taffo.info !38
  store float* %y, float** %y.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !43, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !43, !taffo.info !54
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !43, !taffo.info !10
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !44, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !43, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !46, !taffo.info !54

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %x.addr, align 4, !taffo.initweight !56, !taffo.info !38
  %4 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !44, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !46, !taffo.info !10
  %5 = load float*, float** %y.addr, align 4, !taffo.initweight !56, !taffo.info !41
  %6 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx5 = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !44, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !46, !taffo.info !10
  %7 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %add = add nsw i32 %7, 1, !taffo.initweight !44, !taffo.info !54
  %conv6 = sitofp i32 %add to float, !taffo.initweight !46, !taffo.info !54
  %8 = load float, float* %fn, align 4, !taffo.initweight !43, !taffo.info !10
  %div = fdiv float %conv6, %8, !taffo.initweight !44, !taffo.info !10
  %conv7 = fpext float %div to double, !taffo.initweight !46, !taffo.info !10
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.initweight !56, !taffo.info !10
  %add9 = fadd double %div8, 4.000000e+00, !taffo.initweight !9, !taffo.info !10
  %conv10 = fptrunc double %add9 to float, !taffo.initweight !57, !taffo.info !10
  %9 = load float*, float** %b.addr, align 4, !taffo.initweight !56, !taffo.info !36
  %10 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx11 = getelementptr inbounds float, float* %9, i32 %10, !taffo.initweight !44, !taffo.info !10
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %inc = add nsw i32 %11, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %12 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %13 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %12, %13, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.initweight !46, !taffo.info !54

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %14 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %15 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %cmp17 = icmp sle i32 %14, %15, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.initweight !46, !taffo.info !54

for.body19:                                       ; preds = %for.cond16
  %16 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %sub = sub nsw i32 0, %16, !taffo.initweight !44, !taffo.info !54
  %17 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %17, !taffo.initweight !46, !taffo.info !54
  %conv20 = sitofp i32 %rem to float, !taffo.initweight !56, !taffo.info !54
  %18 = load i32, i32* %n.addr, align 4
  %conv21 = sitofp i32 %18 to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !9, !taffo.info !54
  %add23 = fadd float %div22, 1.000000e+00, !taffo.initweight !9, !taffo.info !10
  %19 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %20 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %19, i32 %20, !taffo.initweight !44, !taffo.info !10
  %21 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %21, !taffo.initweight !44, !taffo.info !10
  store float %add23, float* %arrayidx25, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %22 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %inc27 = add nsw i32 %22, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc27, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond16, !llvm.loop !105

for.end28:                                        ; preds = %for.cond16
  %23 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %add29 = add nsw i32 %23, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %add29, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %24 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %25 = load i32, i32* %n.addr, align 4
  %cmp31 = icmp slt i32 %24, %25, !taffo.initweight !44, !taffo.info !54
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.initweight !46, !taffo.info !54

for.body33:                                       ; preds = %for.cond30
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %27 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27, !taffo.initweight !44, !taffo.info !10
  %28 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %28, !taffo.initweight !44, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %29 = load i32, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  %inc37 = add nsw i32 %29, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc37, i32* %j, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond30, !llvm.loop !106

for.end38:                                        ; preds = %for.cond30
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %31 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %30, i32 %31, !taffo.initweight !44, !taffo.info !10
  %32 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %32, !taffo.initweight !44, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !46, !taffo.info !10
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %33 = load i32, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  %inc42 = add nsw i32 %33, 1, !taffo.initweight !44, !taffo.info !54
  store i32 %inc42, i32* %i, align 4, !taffo.initweight !43, !taffo.info !54
  br label %for.cond12, !llvm.loop !107

for.end43:                                        ; preds = %for.cond12
  store i32 0, i32* %r, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %34 = load i32, i32* %r, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp45 = icmp slt i32 %34, %35
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %s, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %36 = load i32, i32* %s, align 4
  %37 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %36, %37
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %38 = load [20 x float]*, [20 x float]** %B.addr, align 4, !taffo.initweight !56, !taffo.info !34
  %39 = load i32, i32* %r, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39, !taffo.initweight !9, !taffo.info !34
  %40 = load i32, i32* %s, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %40, !taffo.initweight !57, !taffo.info !34
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %41 = load i32, i32* %s, align 4
  %inc55 = add nsw i32 %41, 1
  store i32 %inc55, i32* %s, align 4
  br label %for.cond48, !llvm.loop !108

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %42 = load i32, i32* %r, align 4
  %inc58 = add nsw i32 %42, 1
  store i32 %inc58, i32* %r, align 4
  br label %for.cond44, !llvm.loop !109

for.end59:                                        ; preds = %for.cond44
  store i32 0, i32* %t, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %43 = load i32, i32* %t, align 4
  %44 = load i32, i32* %n.addr, align 4
  %cmp61 = icmp slt i32 %43, %44
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  store i32 0, i32* %r, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %45 = load i32, i32* %r, align 4
  %46 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %45, %46
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  store i32 0, i32* %s, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %47 = load i32, i32* %s, align 4
  %48 = load i32, i32* %n.addr, align 4
  %cmp69 = icmp slt i32 %47, %48
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %49 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %50 = load i32, i32* %r, align 4
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %49, i32 %50, !taffo.initweight !9, !taffo.info !32
  %51 = load i32, i32* %t, align 4
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %51, !taffo.initweight !57, !taffo.info !32
  %52 = load float, float* %arrayidx73, align 4, !taffo.initweight !84, !taffo.info !32
  %53 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %54 = load i32, i32* %s, align 4
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %53, i32 %54, !taffo.initweight !9, !taffo.info !32
  %55 = load i32, i32* %t, align 4
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %55, !taffo.initweight !57, !taffo.info !32
  %56 = load float, float* %arrayidx75, align 4, !taffo.initweight !84, !taffo.info !32
  %mul = fmul float %52, %56, !taffo.initweight !90, !taffo.info !32
  %57 = load [20 x float]*, [20 x float]** %B.addr, align 4, !taffo.initweight !56, !taffo.info !34
  %58 = load i32, i32* %r, align 4
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %57, i32 %58, !taffo.initweight !9, !taffo.info !34
  %59 = load i32, i32* %s, align 4
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %59, !taffo.initweight !57, !taffo.info !34
  %60 = load float, float* %arrayidx77, align 4, !taffo.initweight !84, !taffo.info !34
  %add78 = fadd float %60, %mul, !taffo.initweight !90, !taffo.info !34
  store float %add78, float* %arrayidx77, align 4, !taffo.initweight !84, !taffo.info !34
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %61 = load i32, i32* %s, align 4
  %inc80 = add nsw i32 %61, 1
  store i32 %inc80, i32* %s, align 4
  br label %for.cond68, !llvm.loop !110

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %62 = load i32, i32* %r, align 4
  %inc83 = add nsw i32 %62, 1
  store i32 %inc83, i32* %r, align 4
  br label %for.cond64, !llvm.loop !111

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %63 = load i32, i32* %t, align 4
  %inc86 = add nsw i32 %63, 1
  store i32 %inc86, i32* %t, align 4
  br label %for.cond60, !llvm.loop !112

for.end87:                                        ; preds = %for.cond60
  store i32 0, i32* %r, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %64 = load i32, i32* %r, align 4
  %65 = load i32, i32* %n.addr, align 4
  %cmp89 = icmp slt i32 %64, %65
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  store i32 0, i32* %s, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %66 = load i32, i32* %s, align 4
  %67 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %66, %67
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %68 = load [20 x float]*, [20 x float]** %B.addr, align 4, !taffo.initweight !56, !taffo.info !34
  %69 = load i32, i32* %r, align 4
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %68, i32 %69, !taffo.initweight !9, !taffo.info !34
  %70 = load i32, i32* %s, align 4
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %70, !taffo.initweight !57, !taffo.info !34
  %71 = load float, float* %arrayidx97, align 4, !taffo.initweight !84, !taffo.info !34
  %72 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !56, !taffo.info !32
  %73 = load i32, i32* %r, align 4
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %72, i32 %73, !taffo.initweight !9, !taffo.info !32
  %74 = load i32, i32* %s, align 4
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %74, !taffo.initweight !57, !taffo.info !32
  store float %71, float* %arrayidx99, align 4, !taffo.initweight !84, !taffo.info !32
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %75 = load i32, i32* %s, align 4
  %inc101 = add nsw i32 %75, 1
  store i32 %inc101, i32* %s, align 4
  br label %for.cond92, !llvm.loop !113

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %76 = load i32, i32* %r, align 4
  %inc104 = add nsw i32 %76, 1
  store i32 %inc104, i32* %r, align 4
  br label %for.cond88, !llvm.loop !114

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !47 !taffo.funinfo !116 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !56, !taffo.info !32
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
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !57, !taffo.info !32
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !84, !taffo.info !32
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !32
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !32
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !57, !taffo.info !32
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !84, !taffo.info !32
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !118

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !119

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !47 !taffo.funinfo !120 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !56, !taffo.info !34
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !34
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !34
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !57, !taffo.info !34
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !84, !taffo.info !34
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !34
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !34
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !34
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !57, !taffo.info !34
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !84, !taffo.info !34
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !34
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !121

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !122

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
!16 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.4}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = distinct !{!18, !12}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{}
!30 = !{i1 true}
!31 = !{i32 0}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 1.000000e-01, double 0x40705851DFFC547A}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double 3.200000e+01, double 0x40705851DFFC547A}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 0x406019999FE43676, double 1.440000e+02}
!38 = !{i1 false, !39, i1 false, i2 -1}
!39 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
!40 = !{!"x"}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 0x406019999FE43676}
!43 = !{i32 1}
!44 = !{i32 2}
!45 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array}
!46 = !{i32 3}
!47 = !{void (i32, i32, float*, i32)* @scale_2d}
!48 = !{void (i32, float*, i32)* @scale_1d}
!49 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp}
!50 = distinct !{!50, !12}
!51 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!52 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array.5}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = !{i1 false, !55, i1 false, i2 1}
!55 = !{double 0.000000e+00, double 2.000000e+01}
!56 = !{i32 4}
!57 = !{i32 6}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp.3}
!70 = !{i1 false, !71, i1 false, i2 -1}
!71 = !{double -2.000000e+02, double 2.000000e+02}
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
!82 = !{i32 -1, i32 2, i32 -1}
!83 = !{i32 0, i1 false, i32 1, !36, i32 0, i1 false}
!84 = !{i32 7}
!85 = distinct !{!85, !12}
!86 = !{i32 0, i1 false, i32 1, !38, i32 0, i1 false}
!87 = distinct !{!87, !12}
!88 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!89 = !{i32 0, i1 false, i32 1, !32, i32 1, !36, i32 1, !38, i32 1, !41}
!90 = !{i32 8}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = !{i32 0, i1 false, i32 1, !41, i32 0, i1 false}
!101 = distinct !{!101, !12}
!102 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!103 = !{i32 0, i1 false, i32 1, !32, i32 1, !34, i32 1, !36, i32 1, !38, i32 1, !41}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = !{i32 -1, i32 -1, i32 3, i32 -1}
!116 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!117 = !{i32 9}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !34, i32 0, i1 false}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
