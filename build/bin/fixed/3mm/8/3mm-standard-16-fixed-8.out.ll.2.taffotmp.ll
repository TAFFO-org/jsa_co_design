; ModuleID = './build/bin/fixed/3mm/8/3mm-standard-16-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,27.733335) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/3mm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,2.666667) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,2.8) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,32.768002) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,2.933333) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,2.88) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [49 x i8] c"target('G') scalar(range(0.0,3557.512695) final)\00", section "llvm.metadata"
@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 14))\00", section "llvm.metadata"
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %E = alloca [6 x [8 x float]], align 4, !taffo.initweight !30, !taffo.info !31
  %A = alloca [6 x [10 x float]], align 4, !taffo.initweight !30, !taffo.info !33
  %B = alloca [10 x [8 x float]], align 4, !taffo.initweight !30, !taffo.info !35
  %F = alloca [8 x [12 x float]], align 4, !taffo.initweight !30, !taffo.info !37
  %C = alloca [8 x [14 x float]], align 4, !taffo.initweight !30, !taffo.info !39
  %D = alloca [14 x [12 x float]], align 4, !taffo.initweight !30, !taffo.info !41
  %G = alloca [6 x [12 x float]], align 4, !taffo.initweight !30, !taffo.info !43, !taffo.target !45
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 6, i32* %ni, align 4
  store i32 8, i32* %nj, align 4
  store i32 10, i32* %nk, align 4
  store i32 12, i32* %nl, align 4
  store i32 14, i32* %nm, align 4
  %E1 = bitcast [6 x [8 x float]]* %E to i8*, !taffo.initweight !46, !taffo.info !31
  %A2 = bitcast [6 x [10 x float]]* %A to i8*, !taffo.initweight !46, !taffo.info !33
  %B3 = bitcast [10 x [8 x float]]* %B to i8*, !taffo.initweight !46, !taffo.info !35
  %F4 = bitcast [8 x [12 x float]]* %F to i8*, !taffo.initweight !46, !taffo.info !37
  %C5 = bitcast [8 x [14 x float]]* %C to i8*, !taffo.initweight !46, !taffo.info !39
  %D6 = bitcast [14 x [12 x float]]* %D to i8*, !taffo.initweight !46, !taffo.info !41
  %G7 = bitcast [6 x [12 x float]]* %G to i8*, !taffo.initweight !46, !taffo.info !43, !taffo.target !45
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %4 = load i32, i32* %nm, align 4
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !46, !taffo.info !33
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !46, !taffo.info !35
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !46, !taffo.info !39
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !46, !taffo.info !41
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !46, !taffo.info !31
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !46, !taffo.info !37
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !46, !taffo.info !43, !taffo.target !45
  call void @init_array.2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.initweight !47, !taffo.info !31, !taffo.originalCall !48
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !46, !taffo.info !31
  %5 = bitcast [8 x float]* %arraydecay14 to float*, !taffo.initweight !47, !taffo.info !31
  call void @scale_2d.3(i32 noundef 6, i32 noundef 8, float* noundef %5, i32 noundef 16), !taffo.initweight !49, !taffo.info !31, !taffo.originalCall !50
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !46, !taffo.info !33
  %6 = bitcast [10 x float]* %arraydecay15 to float*, !taffo.initweight !47, !taffo.info !33
  call void @scale_2d.4(i32 noundef 6, i32 noundef 10, float* noundef %6, i32 noundef 16), !taffo.initweight !49, !taffo.info !33, !taffo.originalCall !50
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !46, !taffo.info !35
  %7 = bitcast [8 x float]* %arraydecay16 to float*, !taffo.initweight !47, !taffo.info !35
  call void @scale_2d.5(i32 noundef 10, i32 noundef 8, float* noundef %7, i32 noundef 16), !taffo.initweight !49, !taffo.info !35, !taffo.originalCall !50
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !46, !taffo.info !37
  %8 = bitcast [12 x float]* %arraydecay17 to float*, !taffo.initweight !47, !taffo.info !37
  call void @scale_2d.6(i32 noundef 8, i32 noundef 12, float* noundef %8, i32 noundef 16), !taffo.initweight !49, !taffo.info !37, !taffo.originalCall !50
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !46, !taffo.info !39
  %9 = bitcast [14 x float]* %arraydecay18 to float*, !taffo.initweight !47, !taffo.info !39
  call void @scale_2d.7(i32 noundef 8, i32 noundef 14, float* noundef %9, i32 noundef 16), !taffo.initweight !49, !taffo.info !39, !taffo.originalCall !50
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !46, !taffo.info !41
  %10 = bitcast [12 x float]* %arraydecay19 to float*, !taffo.initweight !47, !taffo.info !41
  call void @scale_2d.8(i32 noundef 14, i32 noundef 12, float* noundef %10, i32 noundef 16), !taffo.initweight !49, !taffo.info !41, !taffo.originalCall !50
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !46, !taffo.info !43, !taffo.target !45
  %11 = bitcast [12 x float]* %arraydecay20 to float*, !taffo.initweight !47, !taffo.info !43, !taffo.target !45
  call void @scale_2d.9(i32 noundef 6, i32 noundef 12, float* noundef %11, i32 noundef 16), !taffo.initweight !49, !taffo.info !43, !taffo.target !45, !taffo.originalCall !50
  call void @timer_start()
  %12 = load i32, i32* %ni, align 4
  %13 = load i32, i32* %nj, align 4
  %14 = load i32, i32* %nk, align 4
  %15 = load i32, i32* %nl, align 4
  %16 = load i32, i32* %nm, align 4
  %arraydecay21 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !46, !taffo.info !31
  %arraydecay22 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !46, !taffo.info !33
  %arraydecay23 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !46, !taffo.info !35
  %arraydecay24 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !46, !taffo.info !37
  %arraydecay25 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !46, !taffo.info !39
  %arraydecay26 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !46, !taffo.info !41
  %arraydecay27 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !46, !taffo.info !43, !taffo.target !45
  call void @kernel_3mm.1(i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, [8 x float]* noundef %arraydecay21, [10 x float]* noundef %arraydecay22, [8 x float]* noundef %arraydecay23, [12 x float]* noundef %arraydecay24, [14 x float]* noundef %arraydecay25, [12 x float]* noundef %arraydecay26, [12 x float]* noundef %arraydecay27), !taffo.initweight !47, !taffo.info !31, !taffo.originalCall !51
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %nl, align 4
  %cmp29 = icmp slt i32 %19, %20
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %21 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %21, !taffo.initweight !46, !taffo.info !43, !taffo.target !45
  %22 = load i32, i32* %j, align 4
  %arrayidx31 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %22, !taffo.initweight !47, !taffo.info !43, !taffo.target !45
  %23 = load float, float* %arrayidx31, align 4, !taffo.initweight !49, !taffo.info !43, !taffo.target !45
  %24 = load i32, i32* %i, align 4
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %24
  %25 = load i32, i32* %j, align 4
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %25
  store float %23, float* %arrayidx33, align 4, !taffo.initweight !52, !taffo.info !43, !taffo.target !45
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond28, !llvm.loop !53

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %27, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond, !llvm.loop !54

for.end36:                                        ; preds = %for.cond
  %28 = load i32, i32* %ni, align 4
  %29 = load i32, i32* %nl, align 4
  call void @print_array(i32 noundef %28, i32 noundef %29, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !23 !taffo.funinfo !24 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !55 !taffo.equivalentChild !56 !taffo.funinfo !57 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [8 x float]*, align 4
  %C.addr = alloca [14 x float]*, align 4
  %D.addr = alloca [12 x float]*, align 4
  %E.addr = alloca [8 x float]*, align 4
  %F.addr = alloca [12 x float]*, align 4
  %G.addr = alloca [12 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !30, !taffo.info !58
  %j = alloca i32, align 4, !taffo.initweight !30, !taffo.info !58
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [8 x float]* %B, [8 x float]** %B.addr, align 4
  store [14 x float]* %C, [14 x float]** %C.addr, align 4
  store [12 x float]* %D, [12 x float]** %D.addr, align 4
  store [8 x float]* %E, [8 x float]** %E.addr, align 4
  store [12 x float]* %F, [12 x float]** %F.addr, align 4
  store [12 x float]* %G, [12 x float]** %G.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !46, !taffo.info !58
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !46, !taffo.info !58
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp, label %for.body, label %for.end11, !taffo.initweight !49, !taffo.info !58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %3 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %2, %3, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !49, !taffo.info !58

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %5 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %mul = mul nsw i32 %4, %5, !taffo.initweight !47, !taffo.info !58
  %add = add nsw i32 %mul, 1, !taffo.initweight !49, !taffo.info !58
  %6 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %6, !taffo.initweight !52, !taffo.info !58
  %conv = sitofp i32 %rem to float, !taffo.initweight !9, !taffo.info !58
  %7 = load i32, i32* %ni.addr, align 4
  %mul6 = mul nsw i32 5, %7
  %conv7 = sitofp i32 %mul6 to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !60, !taffo.info !58
  %8 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %9 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %8, i32 %9, !taffo.initweight !47, !taffo.info !10
  %10 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %10, !taffo.initweight !47, !taffo.info !10
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc = add nsw i32 %11, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond3, !llvm.loop !61

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc10 = add nsw i32 %12, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc10, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond, !llvm.loop !62

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %13 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %14 = load i32, i32* %nk.addr, align 4
  %cmp13 = icmp slt i32 %13, %14, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.initweight !49, !taffo.info !58

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %15 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %16 = load i32, i32* %nj.addr, align 4
  %cmp17 = icmp slt i32 %15, %16, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.initweight !49, !taffo.info !58

for.body19:                                       ; preds = %for.cond16
  %17 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %18 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %add20 = add nsw i32 %18, 1, !taffo.initweight !47, !taffo.info !58
  %mul21 = mul nsw i32 %17, %add20, !taffo.initweight !47, !taffo.info !58
  %add22 = add nsw i32 %mul21, 2, !taffo.initweight !49, !taffo.info !58
  %19 = load i32, i32* %nj.addr, align 4
  %rem23 = srem i32 %add22, %19, !taffo.initweight !52, !taffo.info !58
  %conv24 = sitofp i32 %rem23 to float, !taffo.initweight !9, !taffo.info !58
  %20 = load i32, i32* %nj.addr, align 4
  %mul25 = mul nsw i32 5, %20
  %conv26 = sitofp i32 %mul25 to float
  %div27 = fdiv float %conv24, %conv26, !taffo.initweight !60, !taffo.info !58
  %21 = load [8 x float]*, [8 x float]** %B.addr, align 4
  %22 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 %22, !taffo.initweight !47, !taffo.info !10
  %23 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %23, !taffo.initweight !47, !taffo.info !10
  store float %div27, float* %arrayidx29, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %24 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc31 = add nsw i32 %24, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc31, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond16, !llvm.loop !63

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %25 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc34 = add nsw i32 %25, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc34, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond12, !llvm.loop !64

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %26 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %27 = load i32, i32* %nj.addr, align 4
  %cmp37 = icmp slt i32 %26, %27, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.initweight !49, !taffo.info !58

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %28 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %29 = load i32, i32* %nm.addr, align 4
  %cmp41 = icmp slt i32 %28, %29, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.initweight !49, !taffo.info !58

for.body43:                                       ; preds = %for.cond40
  %30 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %31 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %add44 = add nsw i32 %31, 3, !taffo.initweight !47, !taffo.info !58
  %mul45 = mul nsw i32 %30, %add44, !taffo.initweight !47, !taffo.info !58
  %32 = load i32, i32* %nl.addr, align 4
  %rem46 = srem i32 %mul45, %32, !taffo.initweight !49, !taffo.info !58
  %conv47 = sitofp i32 %rem46 to float, !taffo.initweight !52, !taffo.info !58
  %33 = load i32, i32* %nl.addr, align 4
  %mul48 = mul nsw i32 5, %33
  %conv49 = sitofp i32 %mul48 to float
  %div50 = fdiv float %conv47, %conv49, !taffo.initweight !9, !taffo.info !58
  %34 = load [14 x float]*, [14 x float]** %C.addr, align 4
  %35 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %34, i32 %35, !taffo.initweight !47, !taffo.info !10
  %36 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %36, !taffo.initweight !47, !taffo.info !10
  store float %div50, float* %arrayidx52, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %37 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc54 = add nsw i32 %37, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc54, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond40, !llvm.loop !65

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %38 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc57 = add nsw i32 %38, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc57, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond36, !llvm.loop !66

for.end58:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %39 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %40 = load i32, i32* %nm.addr, align 4
  %cmp60 = icmp slt i32 %39, %40, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.initweight !49, !taffo.info !58

for.body62:                                       ; preds = %for.cond59
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %41 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %42 = load i32, i32* %nl.addr, align 4
  %cmp64 = icmp slt i32 %41, %42, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.initweight !49, !taffo.info !58

for.body66:                                       ; preds = %for.cond63
  %43 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %44 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %add67 = add nsw i32 %44, 2, !taffo.initweight !47, !taffo.info !58
  %mul68 = mul nsw i32 %43, %add67, !taffo.initweight !47, !taffo.info !58
  %add69 = add nsw i32 %mul68, 2, !taffo.initweight !49, !taffo.info !58
  %45 = load i32, i32* %nk.addr, align 4
  %rem70 = srem i32 %add69, %45, !taffo.initweight !52, !taffo.info !58
  %conv71 = sitofp i32 %rem70 to float, !taffo.initweight !9, !taffo.info !58
  %46 = load i32, i32* %nk.addr, align 4
  %mul72 = mul nsw i32 5, %46
  %conv73 = sitofp i32 %mul72 to float
  %div74 = fdiv float %conv71, %conv73, !taffo.initweight !60, !taffo.info !58
  %47 = load [12 x float]*, [12 x float]** %D.addr, align 4
  %48 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %47, i32 %48, !taffo.initweight !47, !taffo.info !10
  %49 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %49, !taffo.initweight !47, !taffo.info !10
  store float %div74, float* %arrayidx76, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %50 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc78 = add nsw i32 %50, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc78, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond63, !llvm.loop !67

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %51 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc81 = add nsw i32 %51, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc81, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond59, !llvm.loop !68

for.end82:                                        ; preds = %for.cond59
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %52 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %53 = load i32, i32* %ni.addr, align 4
  %cmp84 = icmp slt i32 %52, %53, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.initweight !49, !taffo.info !58

for.body86:                                       ; preds = %for.cond83
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %54 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %55 = load i32, i32* %nj.addr, align 4
  %cmp88 = icmp slt i32 %54, %55, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.initweight !49, !taffo.info !58

for.body90:                                       ; preds = %for.cond87
  %56 = load [8 x float]*, [8 x float]** %E.addr, align 4
  %57 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %56, i32 %57, !taffo.initweight !47, !taffo.info !10
  %58 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %58, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %59 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc94 = add nsw i32 %59, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc94, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond87, !llvm.loop !69

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %60 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc97 = add nsw i32 %60, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc97, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond83, !llvm.loop !70

for.end98:                                        ; preds = %for.cond83
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %61 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %62 = load i32, i32* %nj.addr, align 4
  %cmp100 = icmp slt i32 %61, %62, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.initweight !49, !taffo.info !58

for.body102:                                      ; preds = %for.cond99
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %63 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %64 = load i32, i32* %nl.addr, align 4
  %cmp104 = icmp slt i32 %63, %64, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.initweight !49, !taffo.info !58

for.body106:                                      ; preds = %for.cond103
  %65 = load [12 x float]*, [12 x float]** %F.addr, align 4
  %66 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %65, i32 %66, !taffo.initweight !47, !taffo.info !10
  %67 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %67, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %68 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc110 = add nsw i32 %68, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc110, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond103, !llvm.loop !71

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %69 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc113 = add nsw i32 %69, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc113, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond99, !llvm.loop !72

for.end114:                                       ; preds = %for.cond99
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %70 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %71 = load i32, i32* %ni.addr, align 4
  %cmp116 = icmp slt i32 %70, %71, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.initweight !49, !taffo.info !58

for.body118:                                      ; preds = %for.cond115
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %72 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %73 = load i32, i32* %nl.addr, align 4
  %cmp120 = icmp slt i32 %72, %73, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.initweight !49, !taffo.info !58

for.body122:                                      ; preds = %for.cond119
  %74 = load [12 x float]*, [12 x float]** %G.addr, align 4
  %75 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %74, i32 %75, !taffo.initweight !47, !taffo.info !10
  %76 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %76, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %77 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc126 = add nsw i32 %77, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc126, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond119, !llvm.loop !73

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %78 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc129 = add nsw i32 %78, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc129, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond115, !llvm.loop !74

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !55 !taffo.equivalentChild !75 !taffo.funinfo !57 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca [8 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [8 x float]*, align 4
  %F.addr = alloca [12 x float]*, align 4
  %C.addr = alloca [14 x float]*, align 4
  %D.addr = alloca [12 x float]*, align 4
  %G.addr = alloca [12 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [8 x float]* %E, [8 x float]** %E.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [8 x float]* %B, [8 x float]** %B.addr, align 4
  store [12 x float]* %F, [12 x float]** %F.addr, align 4
  store [14 x float]* %C, [14 x float]** %C.addr, align 4
  store [12 x float]* %D, [12 x float]** %D.addr, align 4
  store [12 x float]* %G, [12 x float]** %G.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %4 = load [8 x float]*, [8 x float]** %E.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %4, i32 %5
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %6
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %9, i32 %10
  %11 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %11
  %12 = load float, float* %arrayidx9, align 4
  %13 = load [8 x float]*, [8 x float]** %B.addr, align 4
  %14 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %13, i32 %14
  %15 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %15
  %16 = load float, float* %arrayidx11, align 4
  %mul = fmul float %12, %16
  %17 = load [8 x float]*, [8 x float]** %E.addr, align 4
  %18 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %17, i32 %18
  %19 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %19
  %20 = load float, float* %arrayidx13, align 4
  %add = fadd float %20, %mul
  store float %add, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !76

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond1, !llvm.loop !77

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %23 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond, !llvm.loop !78

for.end19:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %nj.addr, align 4
  %cmp21 = icmp slt i32 %24, %25
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  store i32 0, i32* %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %nl.addr, align 4
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %28 = load [12 x float]*, [12 x float]** %F.addr, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %28, i32 %29
  %30 = load i32, i32* %j, align 4
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %30
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %nm.addr, align 4
  %cmp29 = icmp slt i32 %31, %32
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %33 = load [14 x float]*, [14 x float]** %C.addr, align 4
  %34 = load i32, i32* %i, align 4
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %33, i32 %34
  %35 = load i32, i32* %k, align 4
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %35
  %36 = load float, float* %arrayidx32, align 4
  %37 = load [12 x float]*, [12 x float]** %D.addr, align 4
  %38 = load i32, i32* %k, align 4
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %37, i32 %38
  %39 = load i32, i32* %j, align 4
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %39
  %40 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %36, %40
  %41 = load [12 x float]*, [12 x float]** %F.addr, align 4
  %42 = load i32, i32* %i, align 4
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %41, i32 %42
  %43 = load i32, i32* %j, align 4
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %43
  %44 = load float, float* %arrayidx37, align 4
  %add38 = fadd float %44, %mul35
  store float %add38, float* %arrayidx37, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %45 = load i32, i32* %k, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %k, align 4
  br label %for.cond28, !llvm.loop !79

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %46 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %46, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond23, !llvm.loop !80

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %47 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond20, !llvm.loop !81

for.end47:                                        ; preds = %for.cond20
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %ni.addr, align 4
  %cmp49 = icmp slt i32 %48, %49
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  store i32 0, i32* %j, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %nl.addr, align 4
  %cmp52 = icmp slt i32 %50, %51
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %52 = load [12 x float]*, [12 x float]** %G.addr, align 4
  %53 = load i32, i32* %i, align 4
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %52, i32 %53
  %54 = load i32, i32* %j, align 4
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %54
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %nj.addr, align 4
  %cmp57 = icmp slt i32 %55, %56
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %57 = load [8 x float]*, [8 x float]** %E.addr, align 4
  %58 = load i32, i32* %i, align 4
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %57, i32 %58
  %59 = load i32, i32* %k, align 4
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %59
  %60 = load float, float* %arrayidx60, align 4
  %61 = load [12 x float]*, [12 x float]** %F.addr, align 4
  %62 = load i32, i32* %k, align 4
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %61, i32 %62
  %63 = load i32, i32* %j, align 4
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %63
  %64 = load float, float* %arrayidx62, align 4
  %mul63 = fmul float %60, %64
  %65 = load [12 x float]*, [12 x float]** %G.addr, align 4
  %66 = load i32, i32* %i, align 4
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %65, i32 %66
  %67 = load i32, i32* %j, align 4
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %67
  %68 = load float, float* %arrayidx65, align 4
  %add66 = fadd float %68, %mul63
  store float %add66, float* %arrayidx65, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %69 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %69, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond56, !llvm.loop !82

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %70 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %70, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond51, !llvm.loop !83

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %71 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %71, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond48, !llvm.loop !84

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %G.addr = alloca [12 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store [12 x float]* %G, [12 x float]** %G.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [12 x float]*, [12 x float]** %G.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !86

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !87 !taffo.sourceFunction !51 !taffo.funinfo !88 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca [8 x float]*, align 4, !taffo.initweight !49, !taffo.info !31
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !49, !taffo.info !33
  %B.addr = alloca [8 x float]*, align 4, !taffo.initweight !49, !taffo.info !35
  %F.addr = alloca [12 x float]*, align 4, !taffo.initweight !49, !taffo.info !37
  %C.addr = alloca [14 x float]*, align 4, !taffo.initweight !49, !taffo.info !39
  %D.addr = alloca [12 x float]*, align 4, !taffo.initweight !49, !taffo.info !41
  %G.addr = alloca [12 x float]*, align 4, !taffo.initweight !49, !taffo.info !43
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [8 x float]* %E, [8 x float]** %E.addr, align 4, !taffo.initweight !52, !taffo.info !31
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !52, !taffo.info !33
  store [8 x float]* %B, [8 x float]** %B.addr, align 4, !taffo.initweight !52, !taffo.info !35
  store [12 x float]* %F, [12 x float]** %F.addr, align 4, !taffo.initweight !52, !taffo.info !37
  store [14 x float]* %C, [14 x float]** %C.addr, align 4, !taffo.initweight !52, !taffo.info !39
  store [12 x float]* %D, [12 x float]** %D.addr, align 4, !taffo.initweight !52, !taffo.info !41
  store [12 x float]* %G, [12 x float]** %G.addr, align 4, !taffo.initweight !52, !taffo.info !43
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %4 = load [8 x float]*, [8 x float]** %E.addr, align 4, !taffo.initweight !52, !taffo.info !31
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %4, i32 %5, !taffo.initweight !9, !taffo.info !31
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %6, !taffo.initweight !60, !taffo.info !31
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !52, !taffo.info !33
  %10 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %9, i32 %10, !taffo.initweight !9, !taffo.info !33
  %11 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %11, !taffo.initweight !60, !taffo.info !33
  %12 = load float, float* %arrayidx9, align 4, !taffo.initweight !89, !taffo.info !33
  %13 = load [8 x float]*, [8 x float]** %B.addr, align 4, !taffo.initweight !52, !taffo.info !35
  %14 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %13, i32 %14, !taffo.initweight !9, !taffo.info !35
  %15 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %15, !taffo.initweight !60, !taffo.info !35
  %16 = load float, float* %arrayidx11, align 4, !taffo.initweight !89, !taffo.info !35
  %mul = fmul float %12, %16, !taffo.initweight !90, !taffo.info !33
  %17 = load [8 x float]*, [8 x float]** %E.addr, align 4, !taffo.initweight !52, !taffo.info !31
  %18 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %17, i32 %18, !taffo.initweight !9, !taffo.info !31
  %19 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %19, !taffo.initweight !60, !taffo.info !31
  %20 = load float, float* %arrayidx13, align 4, !taffo.initweight !89, !taffo.info !31
  %add = fadd float %20, %mul, !taffo.initweight !90, !taffo.info !31
  store float %add, float* %arrayidx13, align 4, !taffo.initweight !89, !taffo.info !31
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !91

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond1, !llvm.loop !92

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %23 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond, !llvm.loop !93

for.end19:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %nj.addr, align 4
  %cmp21 = icmp slt i32 %24, %25
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  store i32 0, i32* %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %nl.addr, align 4
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %28 = load [12 x float]*, [12 x float]** %F.addr, align 4, !taffo.initweight !52, !taffo.info !37
  %29 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %28, i32 %29, !taffo.initweight !9, !taffo.info !37
  %30 = load i32, i32* %j, align 4
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %30, !taffo.initweight !60, !taffo.info !37
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %nm.addr, align 4
  %cmp29 = icmp slt i32 %31, %32
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %33 = load [14 x float]*, [14 x float]** %C.addr, align 4, !taffo.initweight !52, !taffo.info !39
  %34 = load i32, i32* %i, align 4
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %33, i32 %34, !taffo.initweight !9, !taffo.info !39
  %35 = load i32, i32* %k, align 4
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %35, !taffo.initweight !60, !taffo.info !39
  %36 = load float, float* %arrayidx32, align 4, !taffo.initweight !89, !taffo.info !39
  %37 = load [12 x float]*, [12 x float]** %D.addr, align 4, !taffo.initweight !52, !taffo.info !41
  %38 = load i32, i32* %k, align 4
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %37, i32 %38, !taffo.initweight !9, !taffo.info !41
  %39 = load i32, i32* %j, align 4
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %39, !taffo.initweight !60, !taffo.info !41
  %40 = load float, float* %arrayidx34, align 4, !taffo.initweight !89, !taffo.info !41
  %mul35 = fmul float %36, %40, !taffo.initweight !90, !taffo.info !39
  %41 = load [12 x float]*, [12 x float]** %F.addr, align 4, !taffo.initweight !52, !taffo.info !37
  %42 = load i32, i32* %i, align 4
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %41, i32 %42, !taffo.initweight !9, !taffo.info !37
  %43 = load i32, i32* %j, align 4
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %43, !taffo.initweight !60, !taffo.info !37
  %44 = load float, float* %arrayidx37, align 4, !taffo.initweight !89, !taffo.info !37
  %add38 = fadd float %44, %mul35, !taffo.initweight !90, !taffo.info !37
  store float %add38, float* %arrayidx37, align 4, !taffo.initweight !89, !taffo.info !37
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %45 = load i32, i32* %k, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %k, align 4
  br label %for.cond28, !llvm.loop !94

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %46 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %46, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond23, !llvm.loop !95

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %47 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond20, !llvm.loop !96

for.end47:                                        ; preds = %for.cond20
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %ni.addr, align 4
  %cmp49 = icmp slt i32 %48, %49
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  store i32 0, i32* %j, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %nl.addr, align 4
  %cmp52 = icmp slt i32 %50, %51
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %52 = load [12 x float]*, [12 x float]** %G.addr, align 4, !taffo.initweight !52, !taffo.info !43
  %53 = load i32, i32* %i, align 4
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %52, i32 %53, !taffo.initweight !9, !taffo.info !43
  %54 = load i32, i32* %j, align 4
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %54, !taffo.initweight !60, !taffo.info !43
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %nj.addr, align 4
  %cmp57 = icmp slt i32 %55, %56
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %57 = load [8 x float]*, [8 x float]** %E.addr, align 4, !taffo.initweight !52, !taffo.info !31
  %58 = load i32, i32* %i, align 4
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %57, i32 %58, !taffo.initweight !9, !taffo.info !31
  %59 = load i32, i32* %k, align 4
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %59, !taffo.initweight !60, !taffo.info !31
  %60 = load float, float* %arrayidx60, align 4, !taffo.initweight !89, !taffo.info !31
  %61 = load [12 x float]*, [12 x float]** %F.addr, align 4, !taffo.initweight !52, !taffo.info !37
  %62 = load i32, i32* %k, align 4
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %61, i32 %62, !taffo.initweight !9, !taffo.info !37
  %63 = load i32, i32* %j, align 4
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %63, !taffo.initweight !60, !taffo.info !37
  %64 = load float, float* %arrayidx62, align 4, !taffo.initweight !89, !taffo.info !37
  %mul63 = fmul float %60, %64, !taffo.initweight !90, !taffo.info !31
  %65 = load [12 x float]*, [12 x float]** %G.addr, align 4, !taffo.initweight !52, !taffo.info !43
  %66 = load i32, i32* %i, align 4
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %65, i32 %66, !taffo.initweight !9, !taffo.info !43
  %67 = load i32, i32* %j, align 4
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %67, !taffo.initweight !60, !taffo.info !43
  %68 = load float, float* %arrayidx65, align 4, !taffo.initweight !89, !taffo.info !43
  %add66 = fadd float %68, %mul63, !taffo.initweight !90, !taffo.info !43
  store float %add66, float* %arrayidx65, align 4, !taffo.initweight !89, !taffo.info !43
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %69 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %69, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond56, !llvm.loop !97

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %70 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %70, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond51, !llvm.loop !98

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %71 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %71, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond48, !llvm.loop !99

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !87 !taffo.sourceFunction !48 !taffo.funinfo !100 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !49, !taffo.info !33
  %B.addr = alloca [8 x float]*, align 4, !taffo.initweight !49, !taffo.info !35
  %C.addr = alloca [14 x float]*, align 4, !taffo.initweight !49, !taffo.info !39
  %D.addr = alloca [12 x float]*, align 4, !taffo.initweight !49, !taffo.info !41
  %E.addr = alloca [8 x float]*, align 4, !taffo.initweight !49, !taffo.info !31
  %F.addr = alloca [12 x float]*, align 4, !taffo.initweight !49, !taffo.info !37
  %G.addr = alloca [12 x float]*, align 4, !taffo.initweight !49, !taffo.info !43
  %i = alloca i32, align 4, !taffo.initweight !30, !taffo.info !58
  %j = alloca i32, align 4, !taffo.initweight !30, !taffo.info !58
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !52, !taffo.info !33
  store [8 x float]* %B, [8 x float]** %B.addr, align 4, !taffo.initweight !52, !taffo.info !35
  store [14 x float]* %C, [14 x float]** %C.addr, align 4, !taffo.initweight !52, !taffo.info !39
  store [12 x float]* %D, [12 x float]** %D.addr, align 4, !taffo.initweight !52, !taffo.info !41
  store [8 x float]* %E, [8 x float]** %E.addr, align 4, !taffo.initweight !52, !taffo.info !31
  store [12 x float]* %F, [12 x float]** %F.addr, align 4, !taffo.initweight !52, !taffo.info !37
  store [12 x float]* %G, [12 x float]** %G.addr, align 4, !taffo.initweight !52, !taffo.info !43
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !46, !taffo.info !58
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !46, !taffo.info !58
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp, label %for.body, label %for.end11, !taffo.initweight !49, !taffo.info !58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %3 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %2, %3, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !49, !taffo.info !58

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %5 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %mul = mul nsw i32 %4, %5, !taffo.initweight !47, !taffo.info !58
  %add = add nsw i32 %mul, 1, !taffo.initweight !49, !taffo.info !58
  %6 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %6, !taffo.initweight !52, !taffo.info !58
  %conv = sitofp i32 %rem to float, !taffo.initweight !9, !taffo.info !58
  %7 = load i32, i32* %ni.addr, align 4
  %mul6 = mul nsw i32 5, %7
  %conv7 = sitofp i32 %mul6 to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !60, !taffo.info !58
  %8 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !52, !taffo.info !33
  %9 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %8, i32 %9, !taffo.initweight !47, !taffo.info !10
  %10 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %10, !taffo.initweight !47, !taffo.info !10
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc = add nsw i32 %11, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond3, !llvm.loop !101

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc10 = add nsw i32 %12, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc10, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond, !llvm.loop !102

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %13 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %14 = load i32, i32* %nk.addr, align 4
  %cmp13 = icmp slt i32 %13, %14, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.initweight !49, !taffo.info !58

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %15 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %16 = load i32, i32* %nj.addr, align 4
  %cmp17 = icmp slt i32 %15, %16, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.initweight !49, !taffo.info !58

for.body19:                                       ; preds = %for.cond16
  %17 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %18 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %add20 = add nsw i32 %18, 1, !taffo.initweight !47, !taffo.info !58
  %mul21 = mul nsw i32 %17, %add20, !taffo.initweight !47, !taffo.info !58
  %add22 = add nsw i32 %mul21, 2, !taffo.initweight !49, !taffo.info !58
  %19 = load i32, i32* %nj.addr, align 4
  %rem23 = srem i32 %add22, %19, !taffo.initweight !52, !taffo.info !58
  %conv24 = sitofp i32 %rem23 to float, !taffo.initweight !9, !taffo.info !58
  %20 = load i32, i32* %nj.addr, align 4
  %mul25 = mul nsw i32 5, %20
  %conv26 = sitofp i32 %mul25 to float
  %div27 = fdiv float %conv24, %conv26, !taffo.initweight !60, !taffo.info !58
  %21 = load [8 x float]*, [8 x float]** %B.addr, align 4, !taffo.initweight !52, !taffo.info !35
  %22 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %21, i32 %22, !taffo.initweight !47, !taffo.info !10
  %23 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %23, !taffo.initweight !47, !taffo.info !10
  store float %div27, float* %arrayidx29, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %24 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc31 = add nsw i32 %24, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc31, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond16, !llvm.loop !103

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %25 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc34 = add nsw i32 %25, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc34, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond12, !llvm.loop !104

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %26 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %27 = load i32, i32* %nj.addr, align 4
  %cmp37 = icmp slt i32 %26, %27, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.initweight !49, !taffo.info !58

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %28 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %29 = load i32, i32* %nm.addr, align 4
  %cmp41 = icmp slt i32 %28, %29, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.initweight !49, !taffo.info !58

for.body43:                                       ; preds = %for.cond40
  %30 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %31 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %add44 = add nsw i32 %31, 3, !taffo.initweight !47, !taffo.info !58
  %mul45 = mul nsw i32 %30, %add44, !taffo.initweight !47, !taffo.info !58
  %32 = load i32, i32* %nl.addr, align 4
  %rem46 = srem i32 %mul45, %32, !taffo.initweight !49, !taffo.info !58
  %conv47 = sitofp i32 %rem46 to float, !taffo.initweight !52, !taffo.info !58
  %33 = load i32, i32* %nl.addr, align 4
  %mul48 = mul nsw i32 5, %33
  %conv49 = sitofp i32 %mul48 to float
  %div50 = fdiv float %conv47, %conv49, !taffo.initweight !9, !taffo.info !58
  %34 = load [14 x float]*, [14 x float]** %C.addr, align 4, !taffo.initweight !52, !taffo.info !39
  %35 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %34, i32 %35, !taffo.initweight !47, !taffo.info !10
  %36 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %36, !taffo.initweight !47, !taffo.info !10
  store float %div50, float* %arrayidx52, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %37 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc54 = add nsw i32 %37, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc54, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond40, !llvm.loop !105

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %38 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc57 = add nsw i32 %38, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc57, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond36, !llvm.loop !106

for.end58:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %39 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %40 = load i32, i32* %nm.addr, align 4
  %cmp60 = icmp slt i32 %39, %40, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.initweight !49, !taffo.info !58

for.body62:                                       ; preds = %for.cond59
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %41 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %42 = load i32, i32* %nl.addr, align 4
  %cmp64 = icmp slt i32 %41, %42, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.initweight !49, !taffo.info !58

for.body66:                                       ; preds = %for.cond63
  %43 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %44 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %add67 = add nsw i32 %44, 2, !taffo.initweight !47, !taffo.info !58
  %mul68 = mul nsw i32 %43, %add67, !taffo.initweight !47, !taffo.info !58
  %add69 = add nsw i32 %mul68, 2, !taffo.initweight !49, !taffo.info !58
  %45 = load i32, i32* %nk.addr, align 4
  %rem70 = srem i32 %add69, %45, !taffo.initweight !52, !taffo.info !58
  %conv71 = sitofp i32 %rem70 to float, !taffo.initweight !9, !taffo.info !58
  %46 = load i32, i32* %nk.addr, align 4
  %mul72 = mul nsw i32 5, %46
  %conv73 = sitofp i32 %mul72 to float
  %div74 = fdiv float %conv71, %conv73, !taffo.initweight !60, !taffo.info !58
  %47 = load [12 x float]*, [12 x float]** %D.addr, align 4, !taffo.initweight !52, !taffo.info !41
  %48 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %47, i32 %48, !taffo.initweight !47, !taffo.info !10
  %49 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %49, !taffo.initweight !47, !taffo.info !10
  store float %div74, float* %arrayidx76, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %50 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc78 = add nsw i32 %50, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc78, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond63, !llvm.loop !107

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %51 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc81 = add nsw i32 %51, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc81, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond59, !llvm.loop !108

for.end82:                                        ; preds = %for.cond59
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %52 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %53 = load i32, i32* %ni.addr, align 4
  %cmp84 = icmp slt i32 %52, %53, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.initweight !49, !taffo.info !58

for.body86:                                       ; preds = %for.cond83
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %54 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %55 = load i32, i32* %nj.addr, align 4
  %cmp88 = icmp slt i32 %54, %55, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.initweight !49, !taffo.info !58

for.body90:                                       ; preds = %for.cond87
  %56 = load [8 x float]*, [8 x float]** %E.addr, align 4, !taffo.initweight !52, !taffo.info !31
  %57 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %56, i32 %57, !taffo.initweight !47, !taffo.info !10
  %58 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %58, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %59 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc94 = add nsw i32 %59, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc94, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond87, !llvm.loop !109

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %60 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc97 = add nsw i32 %60, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc97, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond83, !llvm.loop !110

for.end98:                                        ; preds = %for.cond83
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %61 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %62 = load i32, i32* %nj.addr, align 4
  %cmp100 = icmp slt i32 %61, %62, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.initweight !49, !taffo.info !58

for.body102:                                      ; preds = %for.cond99
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %63 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %64 = load i32, i32* %nl.addr, align 4
  %cmp104 = icmp slt i32 %63, %64, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.initweight !49, !taffo.info !58

for.body106:                                      ; preds = %for.cond103
  %65 = load [12 x float]*, [12 x float]** %F.addr, align 4, !taffo.initweight !52, !taffo.info !37
  %66 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %65, i32 %66, !taffo.initweight !47, !taffo.info !10
  %67 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %67, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %68 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc110 = add nsw i32 %68, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc110, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond103, !llvm.loop !111

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %69 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc113 = add nsw i32 %69, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc113, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond99, !llvm.loop !112

for.end114:                                       ; preds = %for.cond99
  store i32 0, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %70 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %71 = load i32, i32* %ni.addr, align 4
  %cmp116 = icmp slt i32 %70, %71, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.initweight !49, !taffo.info !58

for.body118:                                      ; preds = %for.cond115
  store i32 0, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %72 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %73 = load i32, i32* %nl.addr, align 4
  %cmp120 = icmp slt i32 %72, %73, !taffo.initweight !47, !taffo.info !58
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.initweight !49, !taffo.info !58

for.body122:                                      ; preds = %for.cond119
  %74 = load [12 x float]*, [12 x float]** %G.addr, align 4, !taffo.initweight !52, !taffo.info !43
  %75 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %74, i32 %75, !taffo.initweight !47, !taffo.info !10
  %76 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %76, !taffo.initweight !47, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.initweight !49, !taffo.info !10
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %77 = load i32, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  %inc126 = add nsw i32 %77, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc126, i32* %j, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond119, !llvm.loop !113

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %78 = load i32, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  %inc129 = add nsw i32 %78, 1, !taffo.initweight !47, !taffo.info !58
  store i32 %inc129, i32* %i, align 4, !taffo.initweight !46, !taffo.info !58
  br label %for.cond115, !llvm.loop !114

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !116 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !31
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !31
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !31
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !31
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !31
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !31
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !31
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !31
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !31
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !31
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !31
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
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !120 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !33
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !33
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !33
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !33
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !33
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !33
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !33
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !33
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !33
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !33
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !33
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

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !123 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !35
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !35
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !35
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !35
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !35
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !35
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !35
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !35
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !35
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !35
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !35
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !124

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !125

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !126 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !37
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !37
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !37
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !37
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !37
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !37
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !37
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !37
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !127

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !128

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !129 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !39
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !39
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !39
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !39
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !39
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !39
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !39
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !39
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !39
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !39
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !130

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !131

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !132 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !41
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !41
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !41
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !41
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !41
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !41
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !41
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !41
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !41
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !41
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !41
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !133

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !134

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.sourceFunction !50 !taffo.funinfo !135 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !52, !taffo.info !43
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !43
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !43
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !60, !taffo.info !43
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !89, !taffo.info !43
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !43
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !117, !taffo.info !43
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !9, !taffo.info !43
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !60, !taffo.info !43
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !89, !taffo.info !43
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !90, !taffo.info !43
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !136

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !137

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
!19 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7, void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.9}
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
!31 = !{i1 false, !32, i1 false, i2 -1}
!32 = !{double 0.000000e+00, double 0x403BBBBBD7B2031D}
!33 = !{i1 false, !34, i1 false, i2 -1}
!34 = !{double 0.000000e+00, double 0x4005555582129457}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 0.000000e+00, double 2.800000e+00}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 0x4040624DE3B8A19D}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 0x400777774ABA3876}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 2.880000e+00}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 0.000000e+00, double 0x40ABCB067FF583A5}
!45 = !{!"G"}
!46 = !{i32 1}
!47 = !{i32 2}
!48 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array}
!49 = !{i32 3}
!50 = !{void (i32, i32, float*, i32)* @scale_2d}
!51 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm}
!52 = !{i32 4}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!56 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array.2}
!57 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!58 = !{i1 false, !59, i1 false, i2 1}
!59 = !{double 0.000000e+00, double 1.400000e+01}
!60 = !{i32 6}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
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
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm.1}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!88 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !31, i32 1, !33, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43}
!89 = !{i32 7}
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
!100 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !33, i32 1, !35, i32 1, !39, i32 1, !41, i32 1, !31, i32 1, !37, i32 1, !43}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
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
!116 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !31, i32 0, i1 false}
!117 = !{i32 9}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !33, i32 0, i1 false}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !35, i32 0, i1 false}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !37, i32 0, i1 false}
!127 = distinct !{!127, !12}
!128 = distinct !{!128, !12}
!129 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !39, i32 0, i1 false}
!130 = distinct !{!130, !12}
!131 = distinct !{!131, !12}
!132 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !41, i32 0, i1 false}
!133 = distinct !{!133, !12}
!134 = distinct !{!134, !12}
!135 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !43, i32 0, i1 false}
!136 = distinct !{!136, !12}
!137 = distinct !{!137, !12}
