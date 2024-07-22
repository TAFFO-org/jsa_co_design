; ModuleID = './build/bin/fixed/2mm/24/2mm-standard-16-fixed-24.out.ll.1.taffotmp.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/2mm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,1180.799927) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,14.0) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,14.4) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,14.857142) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [50 x i8] c"target('D') scalar(range(0.0,78566.398438) final)\00", section "llvm.metadata"
@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 12) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 14) final)\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !13 !taffo.equivalentChild !14 !taffo.funinfo !15 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !16 !taffo.funinfo !17 {
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
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !30 !taffo.initweight !13 !taffo.funinfo !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !31, !taffo.info !32
  %beta = alloca float, align 4, !taffo.initweight !31, !taffo.info !34
  %tmp = alloca [8 x [10 x float]], align 4, !taffo.initweight !31, !taffo.info !36
  %A = alloca [8 x [12 x float]], align 4, !taffo.initweight !31, !taffo.info !38
  %B = alloca [12 x [10 x float]], align 4, !taffo.initweight !31, !taffo.info !40
  %C = alloca [10 x [14 x float]], align 4, !taffo.initweight !31, !taffo.info !42
  %D = alloca [8 x [14 x float]], align 4, !taffo.initweight !31, !taffo.info !44, !taffo.target !46
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 8, i32* %ni, align 4
  store i32 10, i32* %nj, align 4
  store i32 12, i32* %nk, align 4
  store i32 14, i32* %nl, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !47, !taffo.info !32
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !47, !taffo.info !34
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*, !taffo.initweight !47, !taffo.info !36
  %A4 = bitcast [8 x [12 x float]]* %A to i8*, !taffo.initweight !47, !taffo.info !38
  %B5 = bitcast [12 x [10 x float]]* %B to i8*, !taffo.initweight !47, !taffo.info !40
  %C6 = bitcast [10 x [14 x float]]* %C to i8*, !taffo.initweight !47, !taffo.info !42
  %D7 = bitcast [8 x [14 x float]]* %D to i8*, !taffo.initweight !47, !taffo.info !44, !taffo.target !46
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !47, !taffo.info !38
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !47, !taffo.info !40
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !47, !taffo.info !42
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !47, !taffo.info !44, !taffo.target !46
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !47, !taffo.info !36
  call void @init_array.4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.initweight !47, !taffo.info !32, !taffo.originalCall !48
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 16), !taffo.initweight !47, !taffo.info !32, !taffo.originalCall !49
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 16), !taffo.initweight !47, !taffo.info !34, !taffo.originalCall !49
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !47, !taffo.info !38
  %4 = bitcast [12 x float]* %arraydecay12 to float*, !taffo.initweight !50, !taffo.info !38
  call void @scale_2d.6(i32 noundef 8, i32 noundef 12, float* noundef %4, i32 noundef 16), !taffo.initweight !51, !taffo.info !38, !taffo.originalCall !52
  %arraydecay13 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !47, !taffo.info !40
  %5 = bitcast [10 x float]* %arraydecay13 to float*, !taffo.initweight !50, !taffo.info !40
  call void @scale_2d.7(i32 noundef 12, i32 noundef 10, float* noundef %5, i32 noundef 16), !taffo.initweight !51, !taffo.info !40, !taffo.originalCall !52
  %arraydecay14 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !47, !taffo.info !42
  %6 = bitcast [14 x float]* %arraydecay14 to float*, !taffo.initweight !50, !taffo.info !42
  call void @scale_2d.8(i32 noundef 10, i32 noundef 14, float* noundef %6, i32 noundef 16), !taffo.initweight !51, !taffo.info !42, !taffo.originalCall !52
  %arraydecay15 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !47, !taffo.info !44, !taffo.target !46
  %7 = bitcast [14 x float]* %arraydecay15 to float*, !taffo.initweight !50, !taffo.info !44, !taffo.target !46
  call void @scale_2d.9(i32 noundef 8, i32 noundef 14, float* noundef %7, i32 noundef 16), !taffo.initweight !51, !taffo.info !44, !taffo.target !46, !taffo.originalCall !52
  %arraydecay16 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !47, !taffo.info !36
  %8 = bitcast [10 x float]* %arraydecay16 to float*, !taffo.initweight !50, !taffo.info !36
  call void @scale_2d.5(i32 noundef 8, i32 noundef 10, float* noundef %8, i32 noundef 16), !taffo.initweight !51, !taffo.info !36, !taffo.originalCall !52
  call void @timer_start()
  %9 = load i32, i32* %ni, align 4
  %10 = load i32, i32* %nj, align 4
  %11 = load i32, i32* %nk, align 4
  %12 = load i32, i32* %nl, align 4
  %13 = load float, float* %alpha, align 4, !taffo.initweight !47, !taffo.info !32
  %14 = load float, float* %beta, align 4, !taffo.initweight !47, !taffo.info !34
  %arraydecay17 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !47, !taffo.info !36
  %arraydecay18 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !47, !taffo.info !38
  %arraydecay19 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !47, !taffo.info !40
  %arraydecay20 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !47, !taffo.info !42
  %arraydecay21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !47, !taffo.info !44, !taffo.target !46
  call void @kernel_2mm.3(i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, float noundef %13, float noundef %14, [10 x float]* noundef %arraydecay17, [12 x float]* noundef %arraydecay18, [10 x float]* noundef %arraydecay19, [14 x float]* noundef %arraydecay20, [14 x float]* noundef %arraydecay21), !taffo.initweight !50, !taffo.info !32, !taffo.originalCall !53
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nl, align 4
  %cmp23 = icmp slt i32 %17, %18
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %19 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %19, !taffo.initweight !47, !taffo.info !44, !taffo.target !46
  %20 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %20, !taffo.initweight !50, !taffo.info !44, !taffo.target !46
  %21 = load float, float* %arrayidx25, align 4, !taffo.initweight !51, !taffo.info !44, !taffo.target !46
  %22 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %22
  %23 = load i32, i32* %j, align 4
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %23
  store float %21, float* %arrayidx27, align 4, !taffo.initweight !54, !taffo.info !44, !taffo.target !46
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond22, !llvm.loop !55

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond, !llvm.loop !56

for.end30:                                        ; preds = %for.cond
  %26 = load i32, i32* %ni, align 4
  %27 = load i32, i32* %nl, align 4
  call void @print_array(i32 noundef %26, i32 noundef %27, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !24 !taffo.funinfo !25 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !57 !taffo.equivalentChild !58 !taffo.funinfo !59 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %A.addr = alloca [12 x float]*, align 4
  %B.addr = alloca [10 x float]*, align 4
  %C.addr = alloca [14 x float]*, align 4
  %D.addr = alloca [14 x float]*, align 4
  %tmp.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !60
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !38
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [12 x float]* %A, [12 x float]** %A.addr, align 4
  store [10 x float]* %B, [10 x float]** %B.addr, align 4
  store [14 x float]* %C, [14 x float]** %C.addr, align 4
  store [14 x float]* %D, [14 x float]** %D.addr, align 4
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !47, !taffo.info !60
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !47, !taffo.info !38
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !51, !taffo.info !60

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !51, !taffo.info !38

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %7 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %mul = mul nsw i32 %6, %7, !taffo.initweight !50, !taffo.info !60
  %add = add nsw i32 %mul, 1, !taffo.initweight !51, !taffo.info !60
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !54, !taffo.info !60
  %conv = sitofp i32 %rem to float, !taffo.initweight !9, !taffo.info !60
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !62, !taffo.info !60
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !50, !taffo.info !10
  %12 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !50, !taffo.info !10
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc = add nsw i32 %13, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond3, !llvm.loop !63

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc9 = add nsw i32 %14, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc9, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond, !llvm.loop !64

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %16 = load i32, i32* %nk.addr, align 4
  %cmp12 = icmp slt i32 %15, %16, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !51, !taffo.info !60

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %18 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %17, %18, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !51, !taffo.info !38

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %20 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %add19 = add nsw i32 %20, 1, !taffo.initweight !50, !taffo.info !38
  %mul20 = mul nsw i32 %19, %add19, !taffo.initweight !50, !taffo.info !60
  %21 = load i32, i32* %nj.addr, align 4
  %rem21 = srem i32 %mul20, %21, !taffo.initweight !51, !taffo.info !60
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !54, !taffo.info !60
  %22 = load i32, i32* %nj.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !9, !taffo.info !60
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24, !taffo.initweight !50, !taffo.info !10
  %25 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %25, !taffo.initweight !50, !taffo.info !10
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc28 = add nsw i32 %26, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc28, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond15, !llvm.loop !65

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc31 = add nsw i32 %27, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc31, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond11, !llvm.loop !66

for.end32:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %28 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %29 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %28, %29, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !51, !taffo.info !60

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %30 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %31 = load i32, i32* %nl.addr, align 4
  %cmp38 = icmp slt i32 %30, %31, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !51, !taffo.info !38

for.body40:                                       ; preds = %for.cond37
  %32 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %33 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %add41 = add nsw i32 %33, 3, !taffo.initweight !50, !taffo.info !38
  %mul42 = mul nsw i32 %32, %add41, !taffo.initweight !50, !taffo.info !60
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !51, !taffo.info !60
  %34 = load i32, i32* %nl.addr, align 4
  %rem44 = srem i32 %add43, %34, !taffo.initweight !54, !taffo.info !60
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !9, !taffo.info !60
  %35 = load i32, i32* %nl.addr, align 4
  %conv46 = sitofp i32 %35 to float
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !62, !taffo.info !60
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 4
  %37 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %36, i32 %37, !taffo.initweight !50, !taffo.info !10
  %38 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %38, !taffo.initweight !50, !taffo.info !10
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc51 = add nsw i32 %39, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc51, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond37, !llvm.loop !67

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %40 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc54 = add nsw i32 %40, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc54, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond33, !llvm.loop !68

for.end55:                                        ; preds = %for.cond33
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %41 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %42 = load i32, i32* %ni.addr, align 4
  %cmp57 = icmp slt i32 %41, %42, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !51, !taffo.info !60

for.body59:                                       ; preds = %for.cond56
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %43 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %44 = load i32, i32* %nl.addr, align 4
  %cmp61 = icmp slt i32 %43, %44, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !51, !taffo.info !38

for.body63:                                       ; preds = %for.cond60
  %45 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %46 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %add64 = add nsw i32 %46, 2, !taffo.initweight !50, !taffo.info !38
  %mul65 = mul nsw i32 %45, %add64, !taffo.initweight !50, !taffo.info !60
  %47 = load i32, i32* %nk.addr, align 4
  %rem66 = srem i32 %mul65, %47, !taffo.initweight !51, !taffo.info !60
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !54, !taffo.info !60
  %48 = load i32, i32* %nk.addr, align 4
  %conv68 = sitofp i32 %48 to float
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !9, !taffo.info !60
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 4
  %50 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %49, i32 %50, !taffo.initweight !50, !taffo.info !10
  %51 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %51, !taffo.initweight !50, !taffo.info !10
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %52 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc73 = add nsw i32 %52, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc73, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond60, !llvm.loop !69

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %53 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc76 = add nsw i32 %53, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc76, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond56, !llvm.loop !70

for.end77:                                        ; preds = %for.cond56
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %54 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %55 = load i32, i32* %ni.addr, align 4
  %cmp79 = icmp slt i32 %54, %55, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !51, !taffo.info !60

for.body81:                                       ; preds = %for.cond78
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %56 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %57 = load i32, i32* %nj.addr, align 4
  %cmp83 = icmp slt i32 %56, %57, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !51, !taffo.info !38

for.body85:                                       ; preds = %for.cond82
  %58 = load [10 x float]*, [10 x float]** %tmp.addr, align 4
  %59 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %58, i32 %59, !taffo.initweight !50, !taffo.info !10
  %60 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %60, !taffo.initweight !50, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %61 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc89 = add nsw i32 %61, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc89, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond82, !llvm.loop !71

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %62 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc92 = add nsw i32 %62, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc92, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond78, !llvm.loop !72

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !57 !taffo.equivalentChild !73 !taffo.funinfo !59 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %tmp.addr = alloca [10 x float]*, align 4
  %A.addr = alloca [12 x float]*, align 4
  %B.addr = alloca [10 x float]*, align 4
  %C.addr = alloca [14 x float]*, align 4
  %D.addr = alloca [14 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 4
  store [12 x float]* %A, [12 x float]** %A.addr, align 4
  store [10 x float]* %B, [10 x float]** %B.addr, align 4
  store [14 x float]* %C, [14 x float]** %C.addr, align 4
  store [14 x float]* %D, [14 x float]** %D.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %4 = load [10 x float]*, [10 x float]** %tmp.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %4, i32 %5
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %6
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load float, float* %alpha.addr, align 4
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11
  %12 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %12
  %13 = load float, float* %arrayidx9, align 4
  %mul = fmul float %9, %13
  %14 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %15 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %16
  %17 = load float, float* %arrayidx11, align 4
  %mul12 = fmul float %mul, %17
  %18 = load [10 x float]*, [10 x float]** %tmp.addr, align 4
  %19 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %18, i32 %19
  %20 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %20
  %21 = load float, float* %arrayidx14, align 4
  %add = fadd float %21, %mul12
  store float %add, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !74

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond1, !llvm.loop !75

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !76

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %ni.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %nl.addr, align 4
  %cmp25 = icmp slt i32 %27, %28
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %29 = load float, float* %beta.addr, align 4
  %30 = load [14 x float]*, [14 x float]** %D.addr, align 4
  %31 = load i32, i32* %i, align 4
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %30, i32 %31
  %32 = load i32, i32* %j, align 4
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %32
  %33 = load float, float* %arrayidx28, align 4
  %mul29 = fmul float %33, %29
  store float %mul29, float* %arrayidx28, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %nj.addr, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %36 = load [10 x float]*, [10 x float]** %tmp.addr, align 4
  %37 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %36, i32 %37
  %38 = load i32, i32* %k, align 4
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %38
  %39 = load float, float* %arrayidx34, align 4
  %40 = load [14 x float]*, [14 x float]** %C.addr, align 4
  %41 = load i32, i32* %k, align 4
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %40, i32 %41
  %42 = load i32, i32* %j, align 4
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %42
  %43 = load float, float* %arrayidx36, align 4
  %mul37 = fmul float %39, %43
  %44 = load [14 x float]*, [14 x float]** %D.addr, align 4
  %45 = load i32, i32* %i, align 4
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %44, i32 %45
  %46 = load i32, i32* %j, align 4
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %46
  %47 = load float, float* %arrayidx39, align 4
  %add40 = fadd float %47, %mul37
  store float %add40, float* %arrayidx39, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %48 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, i32* %k, align 4
  br label %for.cond30, !llvm.loop !77

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %49 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %49, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond24, !llvm.loop !78

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %50 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond21, !llvm.loop !79

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !16 !taffo.funinfo !17 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %D.addr = alloca [14 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store [14 x float]* %D, [14 x float]** %D.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nl.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %ni.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [14 x float]*, [14 x float]** %D.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !80

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !81

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !15 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.sourceFunction !49 !taffo.funinfo !83 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !50, !taffo.info !32
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !32
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.sourceFunction !49 !taffo.funinfo !84 {
entry:
  %val.addr = alloca float*, align 4, !taffo.initweight !50, !taffo.info !34
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !34
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !85 !taffo.sourceFunction !53 !taffo.funinfo !86 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !51, !taffo.info !32
  %beta.addr = alloca float, align 4, !taffo.initweight !51, !taffo.info !34
  %tmp.addr = alloca [10 x float]*, align 4, !taffo.initweight !51, !taffo.info !36
  %A.addr = alloca [12 x float]*, align 4, !taffo.initweight !51, !taffo.info !38
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !51, !taffo.info !40
  %C.addr = alloca [14 x float]*, align 4, !taffo.initweight !51, !taffo.info !42
  %D.addr = alloca [14 x float]*, align 4, !taffo.initweight !51, !taffo.info !44
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !54, !taffo.info !32
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !54, !taffo.info !34
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 4, !taffo.initweight !54, !taffo.info !36
  store [12 x float]* %A, [12 x float]** %A.addr, align 4, !taffo.initweight !54, !taffo.info !38
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !54, !taffo.info !40
  store [14 x float]* %C, [14 x float]** %C.addr, align 4, !taffo.initweight !54, !taffo.info !42
  store [14 x float]* %D, [14 x float]** %D.addr, align 4, !taffo.initweight !54, !taffo.info !44
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %4 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !54, !taffo.info !36
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %4, i32 %5, !taffo.initweight !9, !taffo.info !36
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %6, !taffo.initweight !62, !taffo.info !36
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load float, float* %alpha.addr, align 4, !taffo.initweight !54, !taffo.info !32
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4, !taffo.initweight !54, !taffo.info !38
  %11 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !9, !taffo.info !38
  %12 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %12, !taffo.initweight !62, !taffo.info !38
  %13 = load float, float* %arrayidx9, align 4, !taffo.initweight !87, !taffo.info !38
  %mul = fmul float %9, %13, !taffo.initweight !9, !taffo.info !32
  %14 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !54, !taffo.info !40
  %15 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15, !taffo.initweight !9, !taffo.info !40
  %16 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %16, !taffo.initweight !62, !taffo.info !40
  %17 = load float, float* %arrayidx11, align 4, !taffo.initweight !87, !taffo.info !40
  %mul12 = fmul float %mul, %17, !taffo.initweight !62, !taffo.info !32
  %18 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !54, !taffo.info !36
  %19 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %18, i32 %19, !taffo.initweight !9, !taffo.info !36
  %20 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %20, !taffo.initweight !62, !taffo.info !36
  %21 = load float, float* %arrayidx14, align 4, !taffo.initweight !87, !taffo.info !36
  %add = fadd float %21, %mul12, !taffo.initweight !87, !taffo.info !32
  store float %add, float* %arrayidx14, align 4, !taffo.initweight !87, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !88

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond1, !llvm.loop !89

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !90

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %ni.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %nl.addr, align 4
  %cmp25 = icmp slt i32 %27, %28
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %29 = load float, float* %beta.addr, align 4, !taffo.initweight !54, !taffo.info !34
  %30 = load [14 x float]*, [14 x float]** %D.addr, align 4, !taffo.initweight !54, !taffo.info !44
  %31 = load i32, i32* %i, align 4
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %30, i32 %31, !taffo.initweight !9, !taffo.info !44
  %32 = load i32, i32* %j, align 4
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %32, !taffo.initweight !62, !taffo.info !44
  %33 = load float, float* %arrayidx28, align 4, !taffo.initweight !87, !taffo.info !44
  %mul29 = fmul float %33, %29, !taffo.initweight !9, !taffo.info !34
  store float %mul29, float* %arrayidx28, align 4, !taffo.initweight !62, !taffo.info !34
  store i32 0, i32* %k, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %nj.addr, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %36 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !54, !taffo.info !36
  %37 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %36, i32 %37, !taffo.initweight !9, !taffo.info !36
  %38 = load i32, i32* %k, align 4
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %38, !taffo.initweight !62, !taffo.info !36
  %39 = load float, float* %arrayidx34, align 4, !taffo.initweight !87, !taffo.info !36
  %40 = load [14 x float]*, [14 x float]** %C.addr, align 4, !taffo.initweight !54, !taffo.info !42
  %41 = load i32, i32* %k, align 4
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %40, i32 %41, !taffo.initweight !9, !taffo.info !42
  %42 = load i32, i32* %j, align 4
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %42, !taffo.initweight !62, !taffo.info !42
  %43 = load float, float* %arrayidx36, align 4, !taffo.initweight !87, !taffo.info !42
  %mul37 = fmul float %39, %43, !taffo.initweight !91, !taffo.info !36
  %44 = load [14 x float]*, [14 x float]** %D.addr, align 4, !taffo.initweight !54, !taffo.info !44
  %45 = load i32, i32* %i, align 4
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %44, i32 %45, !taffo.initweight !9, !taffo.info !44
  %46 = load i32, i32* %j, align 4
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %46, !taffo.initweight !62, !taffo.info !44
  %47 = load float, float* %arrayidx39, align 4, !taffo.initweight !87, !taffo.info !44
  %add40 = fadd float %47, %mul37, !taffo.initweight !91, !taffo.info !44
  store float %add40, float* %arrayidx39, align 4, !taffo.initweight !87, !taffo.info !44
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %48 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, i32* %k, align 4
  br label %for.cond30, !llvm.loop !92

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %49 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %49, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond24, !llvm.loop !93

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %50 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond21, !llvm.loop !94

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !95 !taffo.sourceFunction !48 !taffo.funinfo !96 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !50, !taffo.info !32
  %beta.addr = alloca float*, align 4, !taffo.initweight !50, !taffo.info !34
  %A.addr = alloca [12 x float]*, align 4, !taffo.initweight !51, !taffo.info !38
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !51, !taffo.info !40
  %C.addr = alloca [14 x float]*, align 4, !taffo.initweight !51, !taffo.info !42
  %D.addr = alloca [14 x float]*, align 4, !taffo.initweight !51, !taffo.info !44
  %tmp.addr = alloca [10 x float]*, align 4, !taffo.initweight !51, !taffo.info !36
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !60
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !38
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !51, !taffo.info !32
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !51, !taffo.info !34
  store [12 x float]* %A, [12 x float]** %A.addr, align 4, !taffo.initweight !54, !taffo.info !38
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !54, !taffo.info !40
  store [14 x float]* %C, [14 x float]** %C.addr, align 4, !taffo.initweight !54, !taffo.info !42
  store [14 x float]* %D, [14 x float]** %D.addr, align 4, !taffo.initweight !54, !taffo.info !44
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 4, !taffo.initweight !54, !taffo.info !36
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !47, !taffo.info !60
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !47, !taffo.info !38
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !51, !taffo.info !32
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !54, !taffo.info !32
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !51, !taffo.info !34
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !54, !taffo.info !34
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !51, !taffo.info !60

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !51, !taffo.info !38

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %7 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %mul = mul nsw i32 %6, %7, !taffo.initweight !50, !taffo.info !60
  %add = add nsw i32 %mul, 1, !taffo.initweight !51, !taffo.info !60
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !54, !taffo.info !60
  %conv = sitofp i32 %rem to float, !taffo.initweight !9, !taffo.info !60
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !62, !taffo.info !60
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4, !taffo.initweight !54, !taffo.info !38
  %11 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !50, !taffo.info !10
  %12 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !50, !taffo.info !10
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc = add nsw i32 %13, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond3, !llvm.loop !97

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc9 = add nsw i32 %14, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc9, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond, !llvm.loop !98

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %16 = load i32, i32* %nk.addr, align 4
  %cmp12 = icmp slt i32 %15, %16, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !51, !taffo.info !60

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %18 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %17, %18, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !51, !taffo.info !38

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %20 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %add19 = add nsw i32 %20, 1, !taffo.initweight !50, !taffo.info !38
  %mul20 = mul nsw i32 %19, %add19, !taffo.initweight !50, !taffo.info !60
  %21 = load i32, i32* %nj.addr, align 4
  %rem21 = srem i32 %mul20, %21, !taffo.initweight !51, !taffo.info !60
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !54, !taffo.info !60
  %22 = load i32, i32* %nj.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !9, !taffo.info !60
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !54, !taffo.info !40
  %24 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24, !taffo.initweight !50, !taffo.info !10
  %25 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %25, !taffo.initweight !50, !taffo.info !10
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc28 = add nsw i32 %26, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc28, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond15, !llvm.loop !99

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc31 = add nsw i32 %27, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc31, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond11, !llvm.loop !100

for.end32:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %28 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %29 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %28, %29, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !51, !taffo.info !60

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %30 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %31 = load i32, i32* %nl.addr, align 4
  %cmp38 = icmp slt i32 %30, %31, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !51, !taffo.info !38

for.body40:                                       ; preds = %for.cond37
  %32 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %33 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %add41 = add nsw i32 %33, 3, !taffo.initweight !50, !taffo.info !38
  %mul42 = mul nsw i32 %32, %add41, !taffo.initweight !50, !taffo.info !60
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !51, !taffo.info !60
  %34 = load i32, i32* %nl.addr, align 4
  %rem44 = srem i32 %add43, %34, !taffo.initweight !54, !taffo.info !60
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !9, !taffo.info !60
  %35 = load i32, i32* %nl.addr, align 4
  %conv46 = sitofp i32 %35 to float
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !62, !taffo.info !60
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 4, !taffo.initweight !54, !taffo.info !42
  %37 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %36, i32 %37, !taffo.initweight !50, !taffo.info !10
  %38 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %38, !taffo.initweight !50, !taffo.info !10
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc51 = add nsw i32 %39, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc51, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond37, !llvm.loop !101

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %40 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc54 = add nsw i32 %40, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc54, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond33, !llvm.loop !102

for.end55:                                        ; preds = %for.cond33
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %41 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %42 = load i32, i32* %ni.addr, align 4
  %cmp57 = icmp slt i32 %41, %42, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !51, !taffo.info !60

for.body59:                                       ; preds = %for.cond56
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %43 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %44 = load i32, i32* %nl.addr, align 4
  %cmp61 = icmp slt i32 %43, %44, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !51, !taffo.info !38

for.body63:                                       ; preds = %for.cond60
  %45 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %46 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %add64 = add nsw i32 %46, 2, !taffo.initweight !50, !taffo.info !38
  %mul65 = mul nsw i32 %45, %add64, !taffo.initweight !50, !taffo.info !60
  %47 = load i32, i32* %nk.addr, align 4
  %rem66 = srem i32 %mul65, %47, !taffo.initweight !51, !taffo.info !60
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !54, !taffo.info !60
  %48 = load i32, i32* %nk.addr, align 4
  %conv68 = sitofp i32 %48 to float
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !9, !taffo.info !60
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 4, !taffo.initweight !54, !taffo.info !44
  %50 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %49, i32 %50, !taffo.initweight !50, !taffo.info !10
  %51 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %51, !taffo.initweight !50, !taffo.info !10
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %52 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc73 = add nsw i32 %52, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc73, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond60, !llvm.loop !103

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %53 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc76 = add nsw i32 %53, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc76, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond56, !llvm.loop !104

for.end77:                                        ; preds = %for.cond56
  store i32 0, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %54 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %55 = load i32, i32* %ni.addr, align 4
  %cmp79 = icmp slt i32 %54, %55, !taffo.initweight !50, !taffo.info !60
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !51, !taffo.info !60

for.body81:                                       ; preds = %for.cond78
  store i32 0, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %56 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %57 = load i32, i32* %nj.addr, align 4
  %cmp83 = icmp slt i32 %56, %57, !taffo.initweight !50, !taffo.info !38
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !51, !taffo.info !38

for.body85:                                       ; preds = %for.cond82
  %58 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !54, !taffo.info !36
  %59 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %58, i32 %59, !taffo.initweight !50, !taffo.info !10
  %60 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %60, !taffo.initweight !50, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !51, !taffo.info !10
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %61 = load i32, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  %inc89 = add nsw i32 %61, 1, !taffo.initweight !50, !taffo.info !38
  store i32 %inc89, i32* %j, align 4, !taffo.initweight !47, !taffo.info !38
  br label %for.cond82, !llvm.loop !105

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %62 = load i32, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  %inc92 = add nsw i32 %62, 1, !taffo.initweight !50, !taffo.info !60
  store i32 %inc92, i32* %i, align 4, !taffo.initweight !47, !taffo.info !60
  br label %for.cond78, !llvm.loop !106

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !107 !taffo.sourceFunction !52 !taffo.funinfo !108 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !54, !taffo.info !36
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !36
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !36
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !62, !taffo.info !36
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !87, !taffo.info !36
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !91, !taffo.info !36
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !109, !taffo.info !36
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !36
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !62, !taffo.info !36
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !87, !taffo.info !36
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !91, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !110

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !111

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !107 !taffo.sourceFunction !52 !taffo.funinfo !112 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !54, !taffo.info !38
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !38
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !38
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !62, !taffo.info !38
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !87, !taffo.info !38
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !91, !taffo.info !38
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !109, !taffo.info !38
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !38
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !62, !taffo.info !38
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !87, !taffo.info !38
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !91, !taffo.info !38
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !113

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !114

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !107 !taffo.sourceFunction !52 !taffo.funinfo !115 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !54, !taffo.info !40
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !40
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !40
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !62, !taffo.info !40
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !87, !taffo.info !40
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !91, !taffo.info !40
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !109, !taffo.info !40
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !40
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !62, !taffo.info !40
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !87, !taffo.info !40
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !91, !taffo.info !40
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !116

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !117

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !107 !taffo.sourceFunction !52 !taffo.funinfo !118 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !54, !taffo.info !42
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !42
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !42
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !62, !taffo.info !42
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !87, !taffo.info !42
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !91, !taffo.info !42
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !109, !taffo.info !42
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !42
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !62, !taffo.info !42
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !87, !taffo.info !42
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !91, !taffo.info !42
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !119

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !120

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !107 !taffo.sourceFunction !52 !taffo.funinfo !121 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !54, !taffo.info !44
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !44
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !44
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !62, !taffo.info !44
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !87, !taffo.info !44
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !91, !taffo.info !44
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !109, !taffo.info !44
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !44
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !62, !taffo.info !44
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !87, !taffo.info !44
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !91, !taffo.info !44
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !122

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !123

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
!14 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!15 = !{i32 0, i1 false, i32 0, i1 false}
!16 = !{i32 -1, i32 -1, i32 -1}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = distinct !{!18, !12}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7, void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.9}
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
!33 = !{double 1.500000e+00, double 1.500000e+00}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double 1.200000e+00, double 1.200000e+00}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 0.000000e+00, double 0x40927333201040C0}
!38 = !{i1 false, !39, i1 false, i2 -1}
!39 = !{double 0.000000e+00, double 1.400000e+01}
!40 = !{i1 false, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 1.440000e+01}
!42 = !{i1 false, !43, i1 false, i2 -1}
!43 = !{double 0.000000e+00, double 0x402DB6DB50F40E5A}
!44 = !{i1 false, !45, i1 false, i2 -1}
!45 = !{double 0.000000e+00, double 0x40F32E6660008638}
!46 = !{!"D"}
!47 = !{i32 1}
!48 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array}
!49 = !{void (float*, i32)* @scale_scalar}
!50 = !{i32 2}
!51 = !{i32 3}
!52 = !{void (i32, i32, float*, i32)* @scale_2d}
!53 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm}
!54 = !{i32 4}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!58 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array.4}
!59 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!60 = !{i1 false, !61, i1 false, i2 -1}
!61 = !{double 0.000000e+00, double 1.200000e+01}
!62 = !{i32 6}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm.3}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{i32 1, i32 -1}
!83 = !{i32 1, !32, i32 0, i1 false}
!84 = !{i32 1, !34, i32 0, i1 false}
!85 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!86 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 1, !34, i32 1, !36, i32 1, !38, i32 1, !40, i32 1, !42, i32 1, !44}
!87 = !{i32 7}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = !{i32 8}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!96 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 1, !34, i32 1, !38, i32 1, !40, i32 1, !42, i32 1, !44, i32 1, !36}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = !{i32 -1, i32 -1, i32 3, i32 -1}
!108 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !36, i32 0, i1 false}
!109 = !{i32 9}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !38, i32 0, i1 false}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !40, i32 0, i1 false}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !42, i32 0, i1 false}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !44, i32 0, i1 false}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
