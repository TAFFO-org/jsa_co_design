; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-128-fixed-24.out.ll.1.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,122.181816) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/bicg.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [51 x i8] c"target('s') scalar(range(0.0,112081.460938) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [50 x i8] c"target('q') scalar(range(0.0,99048.726562) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,121.599998) final)\00", section "llvm.metadata"
@s_float = dso_local global [20 x float] zeroinitializer, align 4
@q_float = dso_local global [22 x float] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 22))\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %m = alloca i32, align 4
  %A = alloca [22 x [20 x float]], align 4, !taffo.initweight !31, !taffo.info !32
  %s = alloca [20 x float], align 4, !taffo.initweight !31, !taffo.info !34, !taffo.target !36
  %q = alloca [22 x float], align 4, !taffo.initweight !31, !taffo.info !37, !taffo.target !39
  %p = alloca [20 x float], align 4, !taffo.initweight !31, !taffo.info !40
  %r = alloca [22 x float], align 4, !taffo.initweight !31, !taffo.info !32
  %i = alloca i32, align 4
  %i21 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 22, i32* %n, align 4
  store i32 20, i32* %m, align 4
  %A1 = bitcast [22 x [20 x float]]* %A to i8*, !taffo.initweight !42, !taffo.info !32
  %s2 = bitcast [20 x float]* %s to i8*, !taffo.initweight !42, !taffo.info !34, !taffo.target !36
  %q3 = bitcast [22 x float]* %q to i8*, !taffo.initweight !42, !taffo.info !37, !taffo.target !39
  %p4 = bitcast [20 x float]* %p to i8*, !taffo.initweight !42, !taffo.info !40
  %r5 = bitcast [22 x float]* %r to i8*, !taffo.initweight !42, !taffo.info !32
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !42, !taffo.info !32
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !42, !taffo.info !32
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !42, !taffo.info !40
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !42, !taffo.info !34, !taffo.target !36
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !42, !taffo.info !37, !taffo.target !39
  call void @init_array.6(i32 noundef %0, i32 noundef %1, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !43, !taffo.info !32, !taffo.originalCall !44
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !42, !taffo.info !32
  %2 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.initweight !43, !taffo.info !32
  call void @scale_2d.7(i32 noundef 22, i32 noundef 20, float* noundef %2, i32 noundef 128), !taffo.initweight !45, !taffo.info !32, !taffo.originalCall !46
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !42, !taffo.info !34, !taffo.target !36
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 128), !taffo.initweight !43, !taffo.info !34, !taffo.target !36, !taffo.originalCall !47
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !42, !taffo.info !37, !taffo.target !39
  call void @scale_1d.2(i32 noundef 22, float* noundef %arraydecay12, i32 noundef 128), !taffo.initweight !43, !taffo.info !37, !taffo.target !39, !taffo.originalCall !47
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !42, !taffo.info !40
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 128), !taffo.initweight !43, !taffo.info !40, !taffo.originalCall !47
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !42, !taffo.info !32
  call void @scale_1d.5(i32 noundef 22, float* noundef %arraydecay14, i32 noundef 128), !taffo.initweight !43, !taffo.info !32, !taffo.originalCall !47
  call void @timer_start()
  %3 = load i32, i32* %m, align 4
  %4 = load i32, i32* %n, align 4
  %arraydecay15 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !42, !taffo.info !32
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !42, !taffo.info !34, !taffo.target !36
  %arraydecay17 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !42, !taffo.info !37, !taffo.target !39
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !42, !taffo.info !40
  %arraydecay19 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !42, !taffo.info !32
  call void @kernel_bicg.4(i32 noundef %3, i32 noundef %4, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.initweight !43, !taffo.info !32, !taffo.originalCall !48
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 %7, !taffo.initweight !42, !taffo.info !34, !taffo.target !36
  %8 = load float, float* %arrayidx, align 4, !taffo.initweight !43, !taffo.info !34, !taffo.target !36
  %9 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %9
  store float %8, float* %arrayidx20, align 4, !taffo.initweight !45, !taffo.info !34, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i21, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc27, %for.end
  %11 = load i32, i32* %i21, align 4
  %12 = load i32, i32* %n, align 4
  %cmp23 = icmp slt i32 %11, %12
  br i1 %cmp23, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond22
  %13 = load i32, i32* %i21, align 4
  %arrayidx25 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 %13, !taffo.initweight !42, !taffo.info !37, !taffo.target !39
  %14 = load float, float* %arrayidx25, align 4, !taffo.initweight !43, !taffo.info !37, !taffo.target !39
  %15 = load i32, i32* %i21, align 4
  %arrayidx26 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %15
  store float %14, float* %arrayidx26, align 4, !taffo.initweight !45, !taffo.info !37, !taffo.target !39
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %16 = load i32, i32* %i21, align 4
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, i32* %i21, align 4
  br label %for.cond22, !llvm.loop !50

for.end29:                                        ; preds = %for.cond22
  %17 = load i32, i32* %m, align 4
  %18 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %17, i32 noundef %18, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !24 !taffo.funinfo !25 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !51 !taffo.equivalentChild !52 !taffo.funinfo !53 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %r.addr = alloca float*, align 4
  %p.addr = alloca float*, align 4
  %s.addr = alloca float*, align 4
  %q.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !56
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %r, float** %r.addr, align 4
  store float* %p, float** %p.addr, align 4
  store float* %s, float** %s.addr, align 4
  store float* %q, float** %q.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !42, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !42, !taffo.info !56
  store i32 0, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !45, !taffo.info !54

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3, !taffo.initweight !43, !taffo.info !54
  %conv = sitofp i32 %rem to float, !taffo.initweight !45, !taffo.info !54
  %4 = load i32, i32* %m.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !58, !taffo.info !54
  %5 = load float*, float** %p.addr, align 4
  %6 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !43, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !45, !taffo.info !10
  %7 = load float*, float** %s.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !45, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %inc = add nsw i32 %9, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %11 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %10, %11, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !45, !taffo.info !54

for.body8:                                        ; preds = %for.cond5
  %12 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %13 = load i32, i32* %n.addr, align 4
  %rem9 = srem i32 %12, %13, !taffo.initweight !43, !taffo.info !54
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !45, !taffo.info !54
  %14 = load i32, i32* %n.addr, align 4
  %conv11 = sitofp i32 %14 to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !58, !taffo.info !54
  %15 = load float*, float** %r.addr, align 4
  %16 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx13 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !43, !taffo.info !10
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !45, !taffo.info !10
  %17 = load float*, float** %q.addr, align 4
  %18 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx14 = getelementptr inbounds float, float* %17, i32 %18, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !45, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %19 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %20 = load i32, i32* %m.addr, align 4
  %cmp16 = icmp slt i32 %19, %20, !taffo.initweight !43, !taffo.info !56
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !45, !taffo.info !56

for.body18:                                       ; preds = %for.cond15
  %21 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %22 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %add = add nsw i32 %22, 1, !taffo.initweight !43, !taffo.info !56
  %mul = mul nsw i32 %21, %add, !taffo.initweight !43, !taffo.info !54
  %23 = load i32, i32* %n.addr, align 4
  %rem19 = srem i32 %mul, %23, !taffo.initweight !45, !taffo.info !54
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !58, !taffo.info !54
  %24 = load i32, i32* %n.addr, align 4
  %conv21 = sitofp i32 %24 to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !9, !taffo.info !54
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %26 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26, !taffo.initweight !43, !taffo.info !10
  %27 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %27, !taffo.initweight !43, !taffo.info !10
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !45, !taffo.info !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %28 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %inc26 = add nsw i32 %28, 1, !taffo.initweight !43, !taffo.info !56
  store i32 %inc26, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  br label %for.cond15, !llvm.loop !60

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %inc29 = add nsw i32 %29, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc29, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond5, !llvm.loop !61

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !51 !taffo.equivalentChild !62 !taffo.funinfo !53 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %s.addr = alloca float*, align 4
  %q.addr = alloca float*, align 4
  %p.addr = alloca float*, align 4
  %r.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %s, float** %s.addr, align 4
  store float* %q, float** %q.addr, align 4
  store float* %p, float** %p.addr, align 4
  store float* %r, float** %r.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %s.addr, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %q.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %s.addr, align 4
  %12 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12
  %13 = load float, float* %arrayidx8, align 4
  %14 = load float*, float** %r.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %14, i32 %15
  %16 = load float, float* %arrayidx9, align 4
  %17 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %18 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %17, i32 %18
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %19
  %20 = load float, float* %arrayidx11, align 4
  %mul = fmul float %16, %20
  %add = fadd float %13, %mul
  %21 = load float*, float** %s.addr, align 4
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22
  store float %add, float* %arrayidx12, align 4
  %23 = load float*, float** %q.addr, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds float, float* %23, i32 %24
  %25 = load float, float* %arrayidx13, align 4
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %27 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27
  %28 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %28
  %29 = load float, float* %arrayidx15, align 4
  %30 = load float*, float** %p.addr, align 4
  %31 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31
  %32 = load float, float* %arrayidx16, align 4
  %mul17 = fmul float %29, %32
  %add18 = fadd float %25, %mul17
  %33 = load float*, float** %q.addr, align 4
  %34 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %33, i32 %34
  store float %add18, float* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %35 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond5, !llvm.loop !64

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %36 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond1, !llvm.loop !65

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !19 !taffo.funinfo !21 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %s.addr = alloca float*, align 4
  %q.addr = alloca float*, align 4
  %i = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %s, float** %s.addr, align 4
  store float* %q, float** %q.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %rem = srem i32 %2, 20
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %5 = load float*, float** %s.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !66

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
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %14 = load float*, float** %q.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds float, float* %14, i32 %15
  %16 = load float, float* %arrayidx13, align 4
  %conv14 = fpext float %16 to double
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %17 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond3, !llvm.loop !67

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !68 !taffo.sourceFunction !47 !taffo.funinfo !69 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !34
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !34
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !34
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !70, !taffo.info !34
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !34
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !34
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !70, !taffo.info !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !68 !taffo.sourceFunction !47 !taffo.funinfo !73 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !37
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !37
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !70, !taffo.info !37
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !37
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !37
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !70, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !68 !taffo.sourceFunction !47 !taffo.funinfo !75 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !40
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !40
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !40
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !40
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !70, !taffo.info !40
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !40
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !40
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !40
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !70, !taffo.info !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.4(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !77 !taffo.sourceFunction !48 !taffo.funinfo !78 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !45, !taffo.info !32
  %s.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !34
  %q.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !37
  %p.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !40
  %r.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !32
  store float* %s, float** %s.addr, align 4, !taffo.initweight !58, !taffo.info !34
  store float* %q, float** %q.addr, align 4, !taffo.initweight !58, !taffo.info !37
  store float* %p, float** %p.addr, align 4, !taffo.initweight !58, !taffo.info !40
  store float* %r, float** %r.addr, align 4, !taffo.initweight !58, !taffo.info !32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %s.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3, !taffo.initweight !9, !taffo.info !34
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %q.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !37
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %s.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %12 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !9, !taffo.info !34
  %13 = load float, float* %arrayidx8, align 4, !taffo.initweight !70, !taffo.info !34
  %14 = load float*, float** %r.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %14, i32 %15, !taffo.initweight !9, !taffo.info !32
  %16 = load float, float* %arrayidx9, align 4, !taffo.initweight !70, !taffo.info !32
  %17 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %18 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %17, i32 %18, !taffo.initweight !9, !taffo.info !32
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %19, !taffo.initweight !70, !taffo.info !32
  %20 = load float, float* %arrayidx11, align 4, !taffo.initweight !71, !taffo.info !32
  %mul = fmul float %16, %20, !taffo.initweight !71, !taffo.info !32
  %add = fadd float %13, %mul, !taffo.initweight !71, !taffo.info !34
  %21 = load float*, float** %s.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22, !taffo.initweight !9, !taffo.info !34
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !70, !taffo.info !34
  %23 = load float*, float** %q.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %24 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds float, float* %23, i32 %24, !taffo.initweight !9, !taffo.info !37
  %25 = load float, float* %arrayidx13, align 4, !taffo.initweight !70, !taffo.info !37
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %27 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27, !taffo.initweight !9, !taffo.info !32
  %28 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %28, !taffo.initweight !70, !taffo.info !32
  %29 = load float, float* %arrayidx15, align 4, !taffo.initweight !71, !taffo.info !32
  %30 = load float*, float** %p.addr, align 4, !taffo.initweight !58, !taffo.info !40
  %31 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31, !taffo.initweight !9, !taffo.info !40
  %32 = load float, float* %arrayidx16, align 4, !taffo.initweight !70, !taffo.info !40
  %mul17 = fmul float %29, %32, !taffo.initweight !71, !taffo.info !40
  %add18 = fadd float %25, %mul17, !taffo.initweight !71, !taffo.info !37
  %33 = load float*, float** %q.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %34 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %33, i32 %34, !taffo.initweight !9, !taffo.info !37
  store float %add18, float* %arrayidx19, align 4, !taffo.initweight !70, !taffo.info !37
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %35 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond5, !llvm.loop !80

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %36 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond1, !llvm.loop !81

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !68 !taffo.sourceFunction !47 !taffo.funinfo !82 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !32
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !32
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !9, !taffo.info !32
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !70, !taffo.info !32
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !71, !taffo.info !32
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !32
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !70, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !77 !taffo.sourceFunction !44 !taffo.funinfo !84 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !45, !taffo.info !32
  %r.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !32
  %p.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !40
  %s.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !34
  %q.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !37
  %i = alloca i32, align 4, !taffo.initweight !31, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !31, !taffo.info !56
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !32
  store float* %r, float** %r.addr, align 4, !taffo.initweight !58, !taffo.info !32
  store float* %p, float** %p.addr, align 4, !taffo.initweight !58, !taffo.info !40
  store float* %s, float** %s.addr, align 4, !taffo.initweight !58, !taffo.info !34
  store float* %q, float** %q.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !42, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !42, !taffo.info !56
  store i32 0, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !45, !taffo.info !54

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3, !taffo.initweight !43, !taffo.info !54
  %conv = sitofp i32 %rem to float, !taffo.initweight !45, !taffo.info !54
  %4 = load i32, i32* %m.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !58, !taffo.info !54
  %5 = load float*, float** %p.addr, align 4, !taffo.initweight !58, !taffo.info !40
  %6 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !43, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !45, !taffo.info !10
  %7 = load float*, float** %s.addr, align 4, !taffo.initweight !58, !taffo.info !34
  %8 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !45, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %inc = add nsw i32 %9, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %11 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %10, %11, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !45, !taffo.info !54

for.body8:                                        ; preds = %for.cond5
  %12 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %13 = load i32, i32* %n.addr, align 4
  %rem9 = srem i32 %12, %13, !taffo.initweight !43, !taffo.info !54
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !45, !taffo.info !54
  %14 = load i32, i32* %n.addr, align 4
  %conv11 = sitofp i32 %14 to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !58, !taffo.info !54
  %15 = load float*, float** %r.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %16 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx13 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !43, !taffo.info !10
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !45, !taffo.info !10
  %17 = load float*, float** %q.addr, align 4, !taffo.initweight !58, !taffo.info !37
  %18 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx14 = getelementptr inbounds float, float* %17, i32 %18, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !45, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %19 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %20 = load i32, i32* %m.addr, align 4
  %cmp16 = icmp slt i32 %19, %20, !taffo.initweight !43, !taffo.info !56
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !45, !taffo.info !56

for.body18:                                       ; preds = %for.cond15
  %21 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %22 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %add = add nsw i32 %22, 1, !taffo.initweight !43, !taffo.info !56
  %mul = mul nsw i32 %21, %add, !taffo.initweight !43, !taffo.info !54
  %23 = load i32, i32* %n.addr, align 4
  %rem19 = srem i32 %mul, %23, !taffo.initweight !45, !taffo.info !54
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !58, !taffo.info !54
  %24 = load i32, i32* %n.addr, align 4
  %conv21 = sitofp i32 %24 to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !9, !taffo.info !54
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !58, !taffo.info !32
  %26 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26, !taffo.initweight !43, !taffo.info !10
  %27 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %27, !taffo.initweight !43, !taffo.info !10
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !45, !taffo.info !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %28 = load i32, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  %inc26 = add nsw i32 %28, 1, !taffo.initweight !43, !taffo.info !56
  store i32 %inc26, i32* %j, align 4, !taffo.initweight !42, !taffo.info !56
  br label %for.cond15, !llvm.loop !86

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  %inc29 = add nsw i32 %29, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc29, i32* %i, align 4, !taffo.initweight !42, !taffo.info !54
  br label %for.cond5, !llvm.loop !87

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !88 !taffo.sourceFunction !46 !taffo.funinfo !89 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !58, !taffo.info !32
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
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !70, !taffo.info !32
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !71, !taffo.info !32
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !32
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !91, !taffo.info !32
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !32
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !70, !taffo.info !32
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !71, !taffo.info !32
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !92

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !93

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
!16 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.5}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = distinct !{!18, !12}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, i32, float*, i32)* @scale_2d.7}
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
!33 = !{double 0.000000e+00, double 0x405E8BA2DF9378EE}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double 0.000000e+00, double 0x40FB5D1760008638}
!36 = !{!"s"}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 0x40F82E8B9FFF79C8}
!39 = !{!"q"}
!40 = !{i1 false, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 0x405E66665E02EA96}
!42 = !{i32 1}
!43 = !{i32 2}
!44 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array}
!45 = !{i32 3}
!46 = !{void (i32, i32, float*, i32)* @scale_2d}
!47 = !{void (i32, float*, i32)* @scale_1d}
!48 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!52 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array.6}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = !{i1 false, !55, i1 false, i2 1}
!55 = !{double 0.000000e+00, double 2.200000e+01}
!56 = !{i1 false, !57, i1 false, i2 1}
!57 = !{double 0.000000e+00, double 2.000000e+01}
!58 = !{i32 4}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg.4}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = !{i32 -1, i32 2, i32 -1}
!69 = !{i32 0, i1 false, i32 1, !34, i32 0, i1 false}
!70 = !{i32 6}
!71 = !{i32 7}
!72 = distinct !{!72, !12}
!73 = !{i32 0, i1 false, i32 1, !37, i32 0, i1 false}
!74 = distinct !{!74, !12}
!75 = !{i32 0, i1 false, i32 1, !40, i32 0, i1 false}
!76 = distinct !{!76, !12}
!77 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!78 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40, i32 1, !32}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!83 = distinct !{!83, !12}
!84 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 1, !32, i32 1, !40, i32 1, !34, i32 1, !37}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = !{i32 -1, i32 -1, i32 3, i32 -1}
!89 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!90 = !{i32 8}
!91 = !{i32 9}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
