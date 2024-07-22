; ModuleID = './build/bin/fixed/seidel-2d/24/seidel-2d-standard-8-fixed-24.out.ll.1.taffotmp.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [48 x i8] c"target('A') scalar(range(0.8,160.399994) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/seidel-2d.c\00", section "llvm.metadata"
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(-20, 20) final)\00", section "llvm.metadata"
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !13 !taffo.funinfo !14 {
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
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !16 !taffo.equivalentChild !17 !taffo.funinfo !18 {
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
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !21 !taffo.funinfo !22 {
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
  br label %for.cond4, !llvm.loop !23

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond1, !llvm.loop !24

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !26 !taffo.funinfo !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !26 !taffo.funinfo !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !27 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !28, !taffo.target !29, !taffo.info !30
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !32, !taffo.target !29, !taffo.info !30
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !32, !taffo.target !29, !taffo.info !30
  call void @init_array.2(i32 noundef %0, [20 x float]* noundef %arraydecay), !taffo.initweight !33, !taffo.target !29, !taffo.info !30, !taffo.originalCall !34
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !32, !taffo.target !29, !taffo.info !30
  %1 = bitcast [20 x float]* %arraydecay2 to float*, !taffo.initweight !33, !taffo.target !29, !taffo.info !30
  call void @scale_2d.3(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 8), !taffo.initweight !35, !taffo.target !29, !taffo.info !30, !taffo.originalCall !36
  call void @timer_start()
  %2 = load i32, i32* %tsteps, align 4
  %3 = load i32, i32* %n, align 4
  %arraydecay3 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !32, !taffo.target !29, !taffo.info !30
  call void @kernel_seidel_2d.1(i32 noundef %2, i32 noundef %3, [20 x float]* noundef %arraydecay3), !taffo.initweight !33, !taffo.target !29, !taffo.info !30, !taffo.originalCall !37
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %8, !taffo.initweight !32, !taffo.target !29, !taffo.info !30
  %9 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !33, !taffo.target !29, !taffo.info !30
  %10 = load float, float* %arrayidx7, align 4, !taffo.initweight !35, !taffo.target !29, !taffo.info !30
  %11 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %11
  %12 = load i32, i32* %j, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %12
  store float %10, float* %arrayidx9, align 4, !taffo.initweight !38, !taffo.target !29, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !39

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !40

for.end12:                                        ; preds = %for.cond
  %15 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %15, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !21 !taffo.funinfo !22 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !11 !taffo.equivalentChild !41 !taffo.funinfo !12 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !28, !taffo.info !42
  %j = alloca i32, align 4, !taffo.initweight !28, !taffo.info !42
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !32, !taffo.info !42
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !32, !taffo.info !42
  store i32 0, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !33, !taffo.info !42
  br i1 %cmp, label %for.body, label %for.end12, !taffo.initweight !35, !taffo.info !42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, %3, !taffo.initweight !33, !taffo.info !42
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !35, !taffo.info !42

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %conv = sitofp i32 %4 to float, !taffo.initweight !33, !taffo.info !42
  %5 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %add = add nsw i32 %5, 2, !taffo.initweight !33, !taffo.info !42
  %conv6 = sitofp i32 %add to float, !taffo.initweight !35, !taffo.info !42
  %mul = fmul float %conv, %conv6, !taffo.initweight !35, !taffo.info !42
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !38, !taffo.info !42
  %6 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %6 to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !44, !taffo.info !42
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !33, !taffo.info !45
  %9 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !33, !taffo.info !45
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !35, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %inc = add nsw i32 %10, 1, !taffo.initweight !33, !taffo.info !42
  store i32 %inc, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond3, !llvm.loop !46

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %inc11 = add nsw i32 %11, 1, !taffo.initweight !33, !taffo.info !42
  store i32 %inc11, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond, !llvm.loop !47

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !13 !taffo.equivalentChild !48 !taffo.funinfo !14 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %term1 = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  %term2 = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  %sum = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  %div = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
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
  %term19 = bitcast float* %term1 to i8*, !taffo.initweight !32, !taffo.info !45
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
  %add24 = fadd float %add20, %21, !taffo.initweight !33, !taffo.info !45
  store float %add24, float* %term1, align 4, !taffo.initweight !32, !taffo.info !45
  %term225 = bitcast float* %term2 to i8*, !taffo.initweight !32, !taffo.info !45
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
  %add45 = fadd float %add40, %41, !taffo.initweight !33, !taffo.info !45
  store float %add45, float* %term2, align 4, !taffo.initweight !32, !taffo.info !45
  %sum46 = bitcast float* %sum to i8*, !taffo.initweight !32, !taffo.info !45
  %42 = load float, float* %term1, align 4, !taffo.initweight !32, !taffo.info !45
  %43 = load float, float* %term2, align 4, !taffo.initweight !32, !taffo.info !45
  %add47 = fadd float %42, %43, !taffo.initweight !33, !taffo.info !45
  store float %add47, float* %sum, align 4, !taffo.initweight !32, !taffo.info !45
  %div48 = bitcast float* %div to i8*, !taffo.initweight !32, !taffo.info !45
  %44 = load float, float* %sum, align 4, !taffo.initweight !32, !taffo.info !45
  %div49 = fdiv float %44, 9.000000e+00, !taffo.initweight !33, !taffo.info !45
  store float %div49, float* %div, align 4, !taffo.initweight !32, !taffo.info !45
  %45 = load float, float* %div, align 4, !taffo.initweight !32, !taffo.info !45
  %46 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %47 = load i32, i32* %i, align 4
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %46, i32 %47
  %48 = load i32, i32* %j, align 4
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %48
  store float %45, float* %arrayidx51, align 4, !taffo.initweight !33, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5, !llvm.loop !49

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %50, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond1, !llvm.loop !50

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %51 = load i32, i32* %t, align 4
  %inc56 = add nsw i32 %51, 1
  store i32 %inc56, i32* %t, align 4
  br label %for.cond, !llvm.loop !51

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !11 !taffo.funinfo !12 {
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
  br label %for.cond1, !llvm.loop !52

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !53

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !11 !taffo.funinfo !12 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !54 !taffo.sourceFunction !37 !taffo.funinfo !55 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !35, !taffo.info !30
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %term1 = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  %term2 = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  %sum = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  %div = alloca float, align 4, !taffo.initweight !28, !taffo.info !45
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
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
  %term19 = bitcast float* %term1 to i8*, !taffo.initweight !32, !taffo.info !45
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %7 = load i32, i32* %i, align 4
  %sub10 = sub nsw i32 %7, 1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i32 %sub10, !taffo.initweight !44, !taffo.info !30
  %8 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %8, 1
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11, !taffo.initweight !56, !taffo.info !30
  %9 = load float, float* %arrayidx12, align 4, !taffo.initweight !57, !taffo.info !30
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %11 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %11, 1
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %sub13, !taffo.initweight !44, !taffo.info !30
  %12 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %12, !taffo.initweight !56, !taffo.info !30
  %13 = load float, float* %arrayidx15, align 4, !taffo.initweight !57, !taffo.info !30
  %add = fadd float %9, %13, !taffo.initweight !58, !taffo.info !30
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %15 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %15, 1
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %sub16, !taffo.initweight !44, !taffo.info !30
  %16 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %16, 1
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18, !taffo.initweight !56, !taffo.info !30
  %17 = load float, float* %arrayidx19, align 4, !taffo.initweight !57, !taffo.info !30
  %add20 = fadd float %add, %17, !taffo.initweight !58, !taffo.info !30
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %19 = load i32, i32* %i, align 4
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %18, i32 %19, !taffo.initweight !44, !taffo.info !30
  %20 = load i32, i32* %j, align 4
  %sub22 = sub nsw i32 %20, 1
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22, !taffo.initweight !56, !taffo.info !30
  %21 = load float, float* %arrayidx23, align 4, !taffo.initweight !57, !taffo.info !30
  %add24 = fadd float %add20, %21, !taffo.initweight !33, !taffo.info !45
  store float %add24, float* %term1, align 4, !taffo.initweight !32, !taffo.info !45
  %term225 = bitcast float* %term2 to i8*, !taffo.initweight !32, !taffo.info !45
  %22 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %23 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %22, i32 %23, !taffo.initweight !44, !taffo.info !30
  %24 = load i32, i32* %j, align 4
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %24, !taffo.initweight !56, !taffo.info !30
  %25 = load float, float* %arrayidx27, align 4, !taffo.initweight !57, !taffo.info !30
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %27 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27, !taffo.initweight !44, !taffo.info !30
  %28 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %28, 1
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29, !taffo.initweight !56, !taffo.info !30
  %29 = load float, float* %arrayidx30, align 4, !taffo.initweight !57, !taffo.info !30
  %add31 = fadd float %25, %29, !taffo.initweight !58, !taffo.info !30
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %31 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %31, 1
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %30, i32 %add32, !taffo.initweight !44, !taffo.info !30
  %32 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %32, 1
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34, !taffo.initweight !56, !taffo.info !30
  %33 = load float, float* %arrayidx35, align 4, !taffo.initweight !57, !taffo.info !30
  %add36 = fadd float %add31, %33, !taffo.initweight !58, !taffo.info !30
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %35 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %35, 1
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %34, i32 %add37, !taffo.initweight !44, !taffo.info !30
  %36 = load i32, i32* %j, align 4
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %36, !taffo.initweight !56, !taffo.info !30
  %37 = load float, float* %arrayidx39, align 4, !taffo.initweight !57, !taffo.info !30
  %add40 = fadd float %add36, %37, !taffo.initweight !58, !taffo.info !30
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %39 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %39, 1
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %add41, !taffo.initweight !44, !taffo.info !30
  %40 = load i32, i32* %j, align 4
  %add43 = add nsw i32 %40, 1
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43, !taffo.initweight !56, !taffo.info !30
  %41 = load float, float* %arrayidx44, align 4, !taffo.initweight !57, !taffo.info !30
  %add45 = fadd float %add40, %41, !taffo.initweight !33, !taffo.info !45
  store float %add45, float* %term2, align 4, !taffo.initweight !32, !taffo.info !45
  %sum46 = bitcast float* %sum to i8*, !taffo.initweight !32, !taffo.info !45
  %42 = load float, float* %term1, align 4, !taffo.initweight !32, !taffo.info !45
  %43 = load float, float* %term2, align 4, !taffo.initweight !32, !taffo.info !45
  %add47 = fadd float %42, %43, !taffo.initweight !33, !taffo.info !45
  store float %add47, float* %sum, align 4, !taffo.initweight !32, !taffo.info !45
  %div48 = bitcast float* %div to i8*, !taffo.initweight !32, !taffo.info !45
  %44 = load float, float* %sum, align 4, !taffo.initweight !32, !taffo.info !45
  %div49 = fdiv float %44, 9.000000e+00, !taffo.initweight !33, !taffo.info !45
  store float %div49, float* %div, align 4, !taffo.initweight !32, !taffo.info !45
  %45 = load float, float* %div, align 4, !taffo.initweight !32, !taffo.info !45
  %46 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %47 = load i32, i32* %i, align 4
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %46, i32 %47, !taffo.initweight !44, !taffo.info !30
  %48 = load i32, i32* %j, align 4
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %48, !taffo.initweight !56, !taffo.info !30
  store float %45, float* %arrayidx51, align 4, !taffo.initweight !33, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5, !llvm.loop !59

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %50, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond1, !llvm.loop !60

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %51 = load i32, i32* %t, align 4
  %inc56 = add nsw i32 %51, 1
  store i32 %inc56, i32* %t, align 4
  br label %for.cond, !llvm.loop !61

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !62 !taffo.sourceFunction !34 !taffo.funinfo !63 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !35, !taffo.info !30
  %i = alloca i32, align 4, !taffo.initweight !28, !taffo.info !42
  %j = alloca i32, align 4, !taffo.initweight !28, !taffo.info !42
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !32, !taffo.info !42
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !32, !taffo.info !42
  store i32 0, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !33, !taffo.info !42
  br i1 %cmp, label %for.body, label %for.end12, !taffo.initweight !35, !taffo.info !42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, %3, !taffo.initweight !33, !taffo.info !42
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !35, !taffo.info !42

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %conv = sitofp i32 %4 to float, !taffo.initweight !33, !taffo.info !42
  %5 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %add = add nsw i32 %5, 2, !taffo.initweight !33, !taffo.info !42
  %conv6 = sitofp i32 %add to float, !taffo.initweight !35, !taffo.info !42
  %mul = fmul float %conv, %conv6, !taffo.initweight !35, !taffo.info !42
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !38, !taffo.info !42
  %6 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %6 to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !44, !taffo.info !42
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %8 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !33, !taffo.info !45
  %9 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !33, !taffo.info !45
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !35, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  %inc = add nsw i32 %10, 1, !taffo.initweight !33, !taffo.info !42
  store i32 %inc, i32* %j, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond3, !llvm.loop !64

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  %inc11 = add nsw i32 %11, 1, !taffo.initweight !33, !taffo.info !42
  store i32 %inc11, i32* %i, align 4, !taffo.initweight !32, !taffo.info !42
  br label %for.cond, !llvm.loop !65

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !66 !taffo.sourceFunction !36 !taffo.funinfo !67 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !38, !taffo.info !30
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !30
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
  %6 = load float*, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %7 = load i32, i32* %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, float* %6, i32 %8, !taffo.initweight !56, !taffo.info !30
  %9 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %9, !taffo.initweight !57, !taffo.info !30
  %10 = load float, float* %arrayidx4, align 4, !taffo.initweight !58, !taffo.info !30
  %11 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv, !taffo.initweight !68, !taffo.info !30
  %12 = load float*, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %13 = load i32, i32* %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, float* %12, i32 %14, !taffo.initweight !56, !taffo.info !30
  %15 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %15, !taffo.initweight !57, !taffo.info !30
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !58, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !69

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !70

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
!6 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!7 = !{i32 -1}
!8 = !{i32 0, i1 false}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!15 = distinct !{!15, !10}
!16 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!17 = !{void (i32, i32, float*, i32)* @scale_2d.3}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{}
!27 = !{i1 true}
!28 = !{i32 0}
!29 = !{!"A"}
!30 = !{i1 false, !31, i1 false, i2 -1}
!31 = !{double 8.000000e-01, double 0x40640CCCC0379314}
!32 = !{i32 1}
!33 = !{i32 2}
!34 = !{void (i32, [20 x float]*)* @init_array}
!35 = !{i32 3}
!36 = !{void (i32, i32, float*, i32)* @scale_2d}
!37 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d}
!38 = !{i32 4}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = !{void (i32, [20 x float]*)* @init_array.2}
!42 = !{i1 false, !43, i1 false, i2 -1}
!43 = !{double -2.000000e+01, double 2.000000e+01}
!44 = !{i32 5}
!45 = !{i1 false, i1 false, i1 false, i2 1}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d.1}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = !{i32 -1, i32 -1, i32 2}
!55 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !30}
!56 = !{i32 6}
!57 = !{i32 7}
!58 = !{i32 8}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = !{i32 -1, i32 2}
!63 = !{i32 0, i1 false, i32 1, !30}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = !{i32 -1, i32 -1, i32 3, i32 -1}
!67 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !30, i32 0, i1 false}
!68 = !{i32 9}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
