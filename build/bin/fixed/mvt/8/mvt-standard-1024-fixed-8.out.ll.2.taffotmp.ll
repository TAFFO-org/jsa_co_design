; ModuleID = './build/bin/fixed/mvt/8/mvt-standard-1024-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,972.799988) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/mvt.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [48 x i8] c"target('x1') scalar(range(0.0,5138892.5) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [48 x i8] c"target('x2') scalar(range(0.0,5217177.5) final)\00", section "llvm.metadata"
@x1_float = dso_local global [20 x float] zeroinitializer, align 4
@x2_float = dso_local global [20 x float] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %val.addr = alloca float*, align 4
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !13 !taffo.equivalentChild !14 !taffo.funinfo !15 {
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
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !17 !taffo.equivalentChild !18 !taffo.funinfo !19 {
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
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !22 !taffo.funinfo !23 {
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
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !27 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !27 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !28 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !29, !taffo.info !30
  %x1 = alloca [20 x float], align 4, !taffo.initweight !29, !taffo.info !32, !taffo.target !34
  %x2 = alloca [20 x float], align 4, !taffo.initweight !29, !taffo.info !35, !taffo.target !37
  %y_1 = alloca [20 x float], align 4, !taffo.initweight !29, !taffo.info !30
  %y_2 = alloca [20 x float], align 4, !taffo.initweight !29, !taffo.info !30
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !38, !taffo.info !30
  %x12 = bitcast [20 x float]* %x1 to i8*, !taffo.initweight !38, !taffo.info !32, !taffo.target !34
  %x23 = bitcast [20 x float]* %x2 to i8*, !taffo.initweight !38, !taffo.info !35, !taffo.target !37
  %y_14 = bitcast [20 x float]* %y_1 to i8*, !taffo.initweight !38, !taffo.info !30
  %y_25 = bitcast [20 x float]* %y_2 to i8*, !taffo.initweight !38, !taffo.info !30
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !38, !taffo.info !32, !taffo.target !34
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !38, !taffo.info !35, !taffo.target !37
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  call void @init_array.6(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.initweight !39, !taffo.info !30, !taffo.originalCall !40
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  %1 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.initweight !39, !taffo.info !30
  call void @scale_2d.7(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 1024), !taffo.initweight !41, !taffo.info !30, !taffo.originalCall !42
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !38, !taffo.info !32, !taffo.target !34
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 1024), !taffo.initweight !39, !taffo.info !32, !taffo.target !34, !taffo.originalCall !43
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !38, !taffo.info !35, !taffo.target !37
  call void @scale_1d.2(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 1024), !taffo.initweight !39, !taffo.info !35, !taffo.target !37, !taffo.originalCall !43
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 1024), !taffo.initweight !39, !taffo.info !30, !taffo.originalCall !43
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  call void @scale_1d.5(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 1024), !taffo.initweight !39, !taffo.info !30, !taffo.originalCall !43
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !38, !taffo.info !32, !taffo.target !34
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !38, !taffo.info !35, !taffo.target !37
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  %arraydecay19 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.info !30
  call void @kernel_mvt.4(i32 noundef %2, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, [20 x float]* noundef %arraydecay19), !taffo.initweight !39, !taffo.info !30, !taffo.originalCall !44
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 %5, !taffo.initweight !38, !taffo.info !32, !taffo.target !34
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !39, !taffo.info !32, !taffo.target !34
  %7 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %7
  store float %6, float* %arrayidx20, align 4, !taffo.initweight !41, !taffo.info !32, !taffo.target !34
  %8 = load i32, i32* %i, align 4
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 %8, !taffo.initweight !38, !taffo.info !35, !taffo.target !37
  %9 = load float, float* %arrayidx21, align 4, !taffo.initweight !39, !taffo.info !35, !taffo.target !37
  %10 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %10
  store float %9, float* %arrayidx22, align 4, !taffo.initweight !41, !taffo.info !35, !taffo.target !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %12, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !22 !taffo.funinfo !23 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !46 !taffo.equivalentChild !47 !taffo.funinfo !48 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 4
  %x2.addr = alloca float*, align 4
  %y_1.addr = alloca float*, align 4
  %y_2.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !29, !taffo.info !49
  %j = alloca i32, align 4, !taffo.initweight !29, !taffo.info !49
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 4
  store float* %x2, float** %x2.addr, align 4
  store float* %y_1, float** %y_1.addr, align 4
  store float* %y_2, float** %y_2.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !38, !taffo.info !49
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !38, !taffo.info !49
  store i32 0, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !39, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end33, !taffo.initweight !41, !taffo.info !49

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %3 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %2, %3, !taffo.initweight !39, !taffo.info !49
  %conv = sitofp i32 %rem to float, !taffo.initweight !41, !taffo.info !49
  %4 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !51, !taffo.info !49
  %5 = load float*, float** %x1.addr, align 4
  %6 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !39, !taffo.info !52
  store float %div, float* %arrayidx, align 4, !taffo.initweight !41, !taffo.info !52
  %7 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %add = add nsw i32 %7, 1, !taffo.initweight !39, !taffo.info !49
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8, !taffo.initweight !41, !taffo.info !49
  %conv5 = sitofp i32 %rem4 to float, !taffo.initweight !51, !taffo.info !49
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div7 = fdiv float %conv5, %conv6, !taffo.initweight !53, !taffo.info !49
  %10 = load float*, float** %x2.addr, align 4
  %11 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx8 = getelementptr inbounds float, float* %10, i32 %11, !taffo.initweight !39, !taffo.info !52
  store float %div7, float* %arrayidx8, align 4, !taffo.initweight !41, !taffo.info !52
  %12 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %add9 = add nsw i32 %12, 3, !taffo.initweight !39, !taffo.info !49
  %13 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add9, %13, !taffo.initweight !41, !taffo.info !49
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !51, !taffo.info !49
  %14 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %14 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !53, !taffo.info !49
  %15 = load float*, float** %y_1.addr, align 4
  %16 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx14 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !39, !taffo.info !52
  store float %div13, float* %arrayidx14, align 4, !taffo.initweight !41, !taffo.info !52
  %17 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %add15 = add nsw i32 %17, 4, !taffo.initweight !39, !taffo.info !49
  %18 = load i32, i32* %n.addr, align 4
  %rem16 = srem i32 %add15, %18, !taffo.initweight !41, !taffo.info !49
  %conv17 = sitofp i32 %rem16 to float, !taffo.initweight !51, !taffo.info !49
  %19 = load i32, i32* %n.addr, align 4
  %conv18 = sitofp i32 %19 to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !53, !taffo.info !49
  %20 = load float*, float** %y_2.addr, align 4
  %21 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx20 = getelementptr inbounds float, float* %20, i32 %21, !taffo.initweight !39, !taffo.info !52
  store float %div19, float* %arrayidx20, align 4, !taffo.initweight !41, !taffo.info !52
  store i32 0, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %23 = load i32, i32* %n.addr, align 4
  %cmp22 = icmp slt i32 %22, %23, !taffo.initweight !39, !taffo.info !49
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.initweight !41, !taffo.info !49

for.body24:                                       ; preds = %for.cond21
  %24 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %25 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %mul = mul nsw i32 %24, %25, !taffo.initweight !39, !taffo.info !49
  %26 = load i32, i32* %n.addr, align 4
  %rem25 = srem i32 %mul, %26, !taffo.initweight !41, !taffo.info !49
  %conv26 = sitofp i32 %rem25 to float, !taffo.initweight !51, !taffo.info !49
  %27 = load i32, i32* %n.addr, align 4
  %conv27 = sitofp i32 %27 to float
  %div28 = fdiv float %conv26, %conv27, !taffo.initweight !53, !taffo.info !49
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %29 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %28, i32 %29, !taffo.initweight !39, !taffo.info !52
  %30 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %30, !taffo.initweight !39, !taffo.info !52
  store float %div28, float* %arrayidx30, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %31 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %inc = add nsw i32 %31, 1, !taffo.initweight !39, !taffo.info !49
  store i32 %inc, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond21, !llvm.loop !54

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %inc32 = add nsw i32 %32, 1, !taffo.initweight !39, !taffo.info !49
  store i32 %inc32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond, !llvm.loop !55

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !46 !taffo.equivalentChild !56 !taffo.funinfo !48 {
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
  br label %for.cond1, !llvm.loop !57

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !58

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
  br label %for.cond14, !llvm.loop !59

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %35 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond11, !llvm.loop !60

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !13 !taffo.funinfo !15 {
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
  br label %for.cond, !llvm.loop !61

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
  br label %for.cond3, !llvm.loop !62

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !11 !taffo.funinfo !12 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !63 !taffo.sourceFunction !43 !taffo.funinfo !64 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !32
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !32
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !32
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !53, !taffo.info !32
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !32
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !66, !taffo.info !32
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !32
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !53, !taffo.info !32
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !65, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !63 !taffo.sourceFunction !43 !taffo.funinfo !68 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !35
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !35
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !35
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !53, !taffo.info !35
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !35
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !66, !taffo.info !35
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !35
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !53, !taffo.info !35
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !65, !taffo.info !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !63 !taffo.sourceFunction !43 !taffo.funinfo !70 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !30
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !30
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !53, !taffo.info !30
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !30
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !66, !taffo.info !30
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !53, !taffo.info !30
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !65, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.4(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !72 !taffo.sourceFunction !44 !taffo.funinfo !73 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !32
  %x2.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !35
  %y_1.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !30
  %y_2.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !30
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !41, !taffo.info !30
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 4, !taffo.initweight !51, !taffo.info !32
  store float* %x2, float** %x2.addr, align 4, !taffo.initweight !51, !taffo.info !35
  store float* %y_1, float** %y_1.addr, align 4, !taffo.initweight !51, !taffo.info !30
  store float* %y_2, float** %y_2.addr, align 4, !taffo.initweight !51, !taffo.info !30
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !51, !taffo.info !30
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
  %4 = load float*, float** %x1.addr, align 4, !taffo.initweight !51, !taffo.info !32
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !53, !taffo.info !32
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !32
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !53, !taffo.info !30
  %9 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %9, !taffo.initweight !65, !taffo.info !30
  %10 = load float, float* %arrayidx5, align 4, !taffo.initweight !66, !taffo.info !30
  %11 = load float*, float** %y_1.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %12 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !53, !taffo.info !30
  %13 = load float, float* %arrayidx6, align 4, !taffo.initweight !65, !taffo.info !30
  %mul = fmul float %10, %13, !taffo.initweight !66, !taffo.info !30
  %add = fadd float %6, %mul, !taffo.initweight !66, !taffo.info !32
  %14 = load float*, float** %x1.addr, align 4, !taffo.initweight !51, !taffo.info !32
  %15 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds float, float* %14, i32 %15, !taffo.initweight !53, !taffo.info !32
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !65, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !74

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !75

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
  %22 = load float*, float** %x2.addr, align 4, !taffo.initweight !51, !taffo.info !35
  %23 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds float, float* %22, i32 %23, !taffo.initweight !53, !taffo.info !35
  %24 = load float, float* %arrayidx17, align 4, !taffo.initweight !65, !taffo.info !35
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %26 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26, !taffo.initweight !53, !taffo.info !30
  %27 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %27, !taffo.initweight !65, !taffo.info !30
  %28 = load float, float* %arrayidx19, align 4, !taffo.initweight !66, !taffo.info !30
  %29 = load float*, float** %y_2.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %30 = load i32, i32* %j, align 4
  %arrayidx20 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !53, !taffo.info !30
  %31 = load float, float* %arrayidx20, align 4, !taffo.initweight !65, !taffo.info !30
  %mul21 = fmul float %28, %31, !taffo.initweight !66, !taffo.info !30
  %add22 = fadd float %24, %mul21, !taffo.initweight !66, !taffo.info !35
  %32 = load float*, float** %x2.addr, align 4, !taffo.initweight !51, !taffo.info !35
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds float, float* %32, i32 %33, !taffo.initweight !53, !taffo.info !35
  store float %add22, float* %arrayidx23, align 4, !taffo.initweight !65, !taffo.info !35
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %34 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond14, !llvm.loop !76

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %35 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond11, !llvm.loop !77

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !63 !taffo.sourceFunction !43 !taffo.funinfo !70 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !30
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !30
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !53, !taffo.info !30
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !30
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !66, !taffo.info !30
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !53, !taffo.info !30
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !65, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !72 !taffo.sourceFunction !40 !taffo.funinfo !73 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !32
  %x2.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !35
  %y_1.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !30
  %y_2.addr = alloca float*, align 4, !taffo.initweight !41, !taffo.info !30
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !41, !taffo.info !30
  %i = alloca i32, align 4, !taffo.initweight !29, !taffo.info !49
  %j = alloca i32, align 4, !taffo.initweight !29, !taffo.info !49
  store i32 %n, i32* %n.addr, align 4
  store float* %x1, float** %x1.addr, align 4, !taffo.initweight !51, !taffo.info !32
  store float* %x2, float** %x2.addr, align 4, !taffo.initweight !51, !taffo.info !35
  store float* %y_1, float** %y_1.addr, align 4, !taffo.initweight !51, !taffo.info !30
  store float* %y_2, float** %y_2.addr, align 4, !taffo.initweight !51, !taffo.info !30
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !38, !taffo.info !49
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !38, !taffo.info !49
  store i32 0, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !39, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end33, !taffo.initweight !41, !taffo.info !49

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %3 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %2, %3, !taffo.initweight !39, !taffo.info !49
  %conv = sitofp i32 %rem to float, !taffo.initweight !41, !taffo.info !49
  %4 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !51, !taffo.info !49
  %5 = load float*, float** %x1.addr, align 4, !taffo.initweight !51, !taffo.info !32
  %6 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !39, !taffo.info !52
  store float %div, float* %arrayidx, align 4, !taffo.initweight !41, !taffo.info !52
  %7 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %add = add nsw i32 %7, 1, !taffo.initweight !39, !taffo.info !49
  %8 = load i32, i32* %n.addr, align 4
  %rem4 = srem i32 %add, %8, !taffo.initweight !41, !taffo.info !49
  %conv5 = sitofp i32 %rem4 to float, !taffo.initweight !51, !taffo.info !49
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div7 = fdiv float %conv5, %conv6, !taffo.initweight !53, !taffo.info !49
  %10 = load float*, float** %x2.addr, align 4, !taffo.initweight !51, !taffo.info !35
  %11 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx8 = getelementptr inbounds float, float* %10, i32 %11, !taffo.initweight !39, !taffo.info !52
  store float %div7, float* %arrayidx8, align 4, !taffo.initweight !41, !taffo.info !52
  %12 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %add9 = add nsw i32 %12, 3, !taffo.initweight !39, !taffo.info !49
  %13 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add9, %13, !taffo.initweight !41, !taffo.info !49
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !51, !taffo.info !49
  %14 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %14 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !53, !taffo.info !49
  %15 = load float*, float** %y_1.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %16 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx14 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !39, !taffo.info !52
  store float %div13, float* %arrayidx14, align 4, !taffo.initweight !41, !taffo.info !52
  %17 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %add15 = add nsw i32 %17, 4, !taffo.initweight !39, !taffo.info !49
  %18 = load i32, i32* %n.addr, align 4
  %rem16 = srem i32 %add15, %18, !taffo.initweight !41, !taffo.info !49
  %conv17 = sitofp i32 %rem16 to float, !taffo.initweight !51, !taffo.info !49
  %19 = load i32, i32* %n.addr, align 4
  %conv18 = sitofp i32 %19 to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !53, !taffo.info !49
  %20 = load float*, float** %y_2.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %21 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx20 = getelementptr inbounds float, float* %20, i32 %21, !taffo.initweight !39, !taffo.info !52
  store float %div19, float* %arrayidx20, align 4, !taffo.initweight !41, !taffo.info !52
  store i32 0, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %23 = load i32, i32* %n.addr, align 4
  %cmp22 = icmp slt i32 %22, %23, !taffo.initweight !39, !taffo.info !49
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.initweight !41, !taffo.info !49

for.body24:                                       ; preds = %for.cond21
  %24 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %25 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %mul = mul nsw i32 %24, %25, !taffo.initweight !39, !taffo.info !49
  %26 = load i32, i32* %n.addr, align 4
  %rem25 = srem i32 %mul, %26, !taffo.initweight !41, !taffo.info !49
  %conv26 = sitofp i32 %rem25 to float, !taffo.initweight !51, !taffo.info !49
  %27 = load i32, i32* %n.addr, align 4
  %conv27 = sitofp i32 %27 to float
  %div28 = fdiv float %conv26, %conv27, !taffo.initweight !53, !taffo.info !49
  %28 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !51, !taffo.info !30
  %29 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %28, i32 %29, !taffo.initweight !39, !taffo.info !52
  %30 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %30, !taffo.initweight !39, !taffo.info !52
  store float %div28, float* %arrayidx30, align 4, !taffo.initweight !41, !taffo.info !52
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %31 = load i32, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  %inc = add nsw i32 %31, 1, !taffo.initweight !39, !taffo.info !49
  store i32 %inc, i32* %j, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond21, !llvm.loop !79

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  %inc32 = add nsw i32 %32, 1, !taffo.initweight !39, !taffo.info !49
  store i32 %inc32, i32* %i, align 4, !taffo.initweight !38, !taffo.info !49
  br label %for.cond, !llvm.loop !80

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.sourceFunction !42 !taffo.funinfo !82 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !51, !taffo.info !30
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !53, !taffo.info !30
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !53, !taffo.info !30
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !65, !taffo.info !30
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !66, !taffo.info !30
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !83, !taffo.info !30
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !84, !taffo.info !30
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !53, !taffo.info !30
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !65, !taffo.info !30
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !66, !taffo.info !30
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !83, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !86

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1}
!14 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.5}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!16 = distinct !{!16, !10}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{void (i32, i32, float*, i32)* @scale_2d.7}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!23 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{}
!28 = !{i1 true}
!29 = !{i32 0}
!30 = !{i1 false, !31, i1 false, i2 -1}
!31 = !{double 0.000000e+00, double 0x408E6666601BC98A}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 0.000000e+00, double 0x41539A7320000000}
!34 = !{!"x1"}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 0.000000e+00, double 0x4153E6E660000000}
!37 = !{!"x2"}
!38 = !{i32 1}
!39 = !{i32 2}
!40 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array}
!41 = !{i32 3}
!42 = !{void (i32, i32, float*, i32)* @scale_2d}
!43 = !{void (i32, float*, i32)* @scale_1d}
!44 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt}
!45 = distinct !{!45, !10}
!46 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!47 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array.6}
!48 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!49 = !{i1 false, !50, i1 false, i2 1}
!50 = !{double 0.000000e+00, double 2.000000e+01}
!51 = !{i32 4}
!52 = !{i1 false, i1 false, i1 false, i2 1}
!53 = !{i32 5}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt.4}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = !{i32 -1, i32 2, i32 -1}
!64 = !{i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!65 = !{i32 6}
!66 = !{i32 7}
!67 = distinct !{!67, !10}
!68 = !{i32 0, i1 false, i32 1, !35, i32 0, i1 false}
!69 = distinct !{!69, !10}
!70 = !{i32 0, i1 false, i32 1, !30, i32 0, i1 false}
!71 = distinct !{!71, !10}
!72 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!73 = !{i32 0, i1 false, i32 1, !32, i32 1, !35, i32 1, !30, i32 1, !30, i32 1, !30}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = !{i32 -1, i32 -1, i32 3, i32 -1}
!82 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !30, i32 0, i1 false}
!83 = !{i32 8}
!84 = !{i32 9}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
