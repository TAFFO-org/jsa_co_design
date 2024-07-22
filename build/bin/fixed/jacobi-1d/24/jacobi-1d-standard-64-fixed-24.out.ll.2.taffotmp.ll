; ModuleID = './build/bin/fixed/jacobi-1d/24/jacobi-1d-standard-64-fixed-24.out.ll.1.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [51 x i8] c"target('A') scalar(range(8.533334,68.26667) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [36 x i8] c"scalar(range(12.8,72.533333) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x float] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata"
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
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !17 !taffo.funinfo !18 {
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
  %A = alloca [15 x float], align 4, !taffo.initweight !28, !taffo.target !29, !taffo.info !30
  %B = alloca [15 x float], align 4, !taffo.initweight !28, !taffo.info !32
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 15, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [15 x float]* %A to i8*, !taffo.initweight !34, !taffo.target !29, !taffo.info !30
  %B2 = bitcast [15 x float]* %B to i8*, !taffo.initweight !34, !taffo.info !32
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !34, !taffo.target !29, !taffo.info !30
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !34, !taffo.info !32
  call void @init_array.4(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.initweight !35, !taffo.target !29, !taffo.info !30, !taffo.originalCall !36
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !34, !taffo.target !29, !taffo.info !30
  call void @scale_1d.1(i32 noundef 15, float* noundef %arraydecay4, i32 noundef 64), !taffo.initweight !35, !taffo.target !29, !taffo.info !30, !taffo.originalCall !37
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !34, !taffo.info !32
  call void @scale_1d.3(i32 noundef 15, float* noundef %arraydecay5, i32 noundef 64), !taffo.initweight !35, !taffo.info !32, !taffo.originalCall !37
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay6 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !34, !taffo.target !29, !taffo.info !30
  %arraydecay7 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !34, !taffo.info !32
  call void @kernel_jacobi_1d.2(i32 noundef %1, i32 noundef %2, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.initweight !35, !taffo.target !29, !taffo.info !30, !taffo.originalCall !38
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
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 %5, !taffo.initweight !34, !taffo.target !29, !taffo.info !30
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !35, !taffo.target !29, !taffo.info !30
  %7 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %7
  store float %6, float* %arrayidx8, align 4, !taffo.initweight !39, !taffo.target !29, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %9, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !21 !taffo.funinfo !22 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !13 !taffo.equivalentChild !41 !taffo.funinfo !15 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4
  %B.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !28, !taffo.info !42
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4
  store float* %B, float** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !34, !taffo.info !42
  store i32 0, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !35, !taffo.info !42
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !39, !taffo.info !42

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %conv = sitofp i32 %2 to float, !taffo.initweight !35, !taffo.info !42
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !39, !taffo.info !42
  %3 = load i32, i32* %n.addr, align 4
  %conv2 = sitofp i32 %3 to float
  %div = fdiv float %add, %conv2, !taffo.initweight !44, !taffo.info !42
  %4 = load float*, float** %A.addr, align 4
  %5 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %arrayidx = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !35, !taffo.info !45
  store float %div, float* %arrayidx, align 4, !taffo.initweight !39, !taffo.info !45
  %6 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %conv3 = sitofp i32 %6 to float, !taffo.initweight !35, !taffo.info !42
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !39, !taffo.info !42
  %7 = load i32, i32* %n.addr, align 4
  %conv5 = sitofp i32 %7 to float
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !44, !taffo.info !42
  %8 = load float*, float** %B.addr, align 4
  %9 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %arrayidx7 = getelementptr inbounds float, float* %8, i32 %9, !taffo.initweight !35, !taffo.info !45
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !39, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %inc = add nsw i32 %10, 1, !taffo.initweight !35, !taffo.info !42
  store i32 %inc, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !17 !taffo.equivalentChild !47 !taffo.funinfo !18 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4
  %B.addr = alloca float*, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4
  store float* %B, float** %B.addr, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float*, float** %A.addr, align 4
  %5 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %arrayidx = getelementptr inbounds float, float* %4, i32 %sub4
  %6 = load float, float* %arrayidx, align 4
  %7 = load float*, float** %A.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %7, i32 %8
  %9 = load float, float* %arrayidx5, align 4
  %add = fadd float %6, %9
  %10 = load float*, float** %A.addr, align 4
  %11 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, 1
  %arrayidx7 = getelementptr inbounds float, float* %10, i32 %add6
  %12 = load float, float* %arrayidx7, align 4
  %add8 = fadd float %add, %12
  %conv = fpext float %add8 to double
  %mul = fmul double 3.333300e-01, %conv
  %conv9 = fptrunc double %mul to float
  %13 = load float*, float** %B.addr, align 4
  %14 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds float, float* %13, i32 %14
  store float %conv9, float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !48

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n.addr, align 4
  %sub12 = sub nsw i32 %17, 1
  %cmp13 = icmp slt i32 %16, %sub12
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %18 = load float*, float** %B.addr, align 4
  %19 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %19, 1
  %arrayidx17 = getelementptr inbounds float, float* %18, i32 %sub16
  %20 = load float, float* %arrayidx17, align 4
  %21 = load float*, float** %B.addr, align 4
  %22 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds float, float* %21, i32 %22
  %23 = load float, float* %arrayidx18, align 4
  %add19 = fadd float %20, %23
  %24 = load float*, float** %B.addr, align 4
  %25 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %25, 1
  %arrayidx21 = getelementptr inbounds float, float* %24, i32 %add20
  %26 = load float, float* %arrayidx21, align 4
  %add22 = fadd float %add19, %26
  %conv23 = fpext float %add22 to double
  %mul24 = fmul double 3.333300e-01, %conv23
  %conv25 = fptrunc double %mul24 to float
  %27 = load float*, float** %A.addr, align 4
  %28 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds float, float* %27, i32 %28
  store float %conv25, float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond11, !llvm.loop !49

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %30 = load i32, i32* %t, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %t, align 4
  br label %for.cond, !llvm.loop !50

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %5 = load float*, float** %A.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !11 !taffo.funinfo !12 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !52 !taffo.sourceFunction !37 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !39, !taffo.info !30
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !30
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !54, !taffo.info !30
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !30
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !56, !taffo.info !30
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !54, !taffo.info !30
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !55, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.2(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !58 !taffo.sourceFunction !38 !taffo.funinfo !59 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4, !taffo.initweight !39, !taffo.info !30
  %B.addr = alloca float*, align 4, !taffo.initweight !39, !taffo.info !32
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  store float* %B, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float*, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %5 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %arrayidx = getelementptr inbounds float, float* %4, i32 %sub4, !taffo.initweight !54, !taffo.info !30
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !30
  %7 = load float*, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !54, !taffo.info !30
  %9 = load float, float* %arrayidx5, align 4, !taffo.initweight !55, !taffo.info !30
  %add = fadd float %6, %9, !taffo.initweight !56, !taffo.info !30
  %10 = load float*, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %11 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, 1
  %arrayidx7 = getelementptr inbounds float, float* %10, i32 %add6, !taffo.initweight !54, !taffo.info !30
  %12 = load float, float* %arrayidx7, align 4, !taffo.initweight !55, !taffo.info !30
  %add8 = fadd float %add, %12, !taffo.initweight !56, !taffo.info !30
  %conv = fpext float %add8 to double, !taffo.initweight !60, !taffo.info !30
  %mul = fmul double 3.333300e-01, %conv, !taffo.initweight !61, !taffo.info !30
  %conv9 = fptrunc double %mul to float, !taffo.initweight !62, !taffo.info !30
  %13 = load float*, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %14 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds float, float* %13, i32 %14, !taffo.initweight !54, !taffo.info !32
  store float %conv9, float* %arrayidx10, align 4, !taffo.initweight !55, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !63

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n.addr, align 4
  %sub12 = sub nsw i32 %17, 1
  %cmp13 = icmp slt i32 %16, %sub12
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %18 = load float*, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %19 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %19, 1
  %arrayidx17 = getelementptr inbounds float, float* %18, i32 %sub16, !taffo.initweight !54, !taffo.info !32
  %20 = load float, float* %arrayidx17, align 4, !taffo.initweight !55, !taffo.info !32
  %21 = load float*, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %22 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds float, float* %21, i32 %22, !taffo.initweight !54, !taffo.info !32
  %23 = load float, float* %arrayidx18, align 4, !taffo.initweight !55, !taffo.info !32
  %add19 = fadd float %20, %23, !taffo.initweight !56, !taffo.info !32
  %24 = load float*, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %25 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %25, 1
  %arrayidx21 = getelementptr inbounds float, float* %24, i32 %add20, !taffo.initweight !54, !taffo.info !32
  %26 = load float, float* %arrayidx21, align 4, !taffo.initweight !55, !taffo.info !32
  %add22 = fadd float %add19, %26, !taffo.initweight !56, !taffo.info !32
  %conv23 = fpext float %add22 to double, !taffo.initweight !60, !taffo.info !32
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.initweight !61, !taffo.info !32
  %conv25 = fptrunc double %mul24 to float, !taffo.initweight !62, !taffo.info !32
  %27 = load float*, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %28 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !54, !taffo.info !30
  store float %conv25, float* %arrayidx26, align 4, !taffo.initweight !55, !taffo.info !30
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond11, !llvm.loop !64

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %30 = load i32, i32* %t, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %t, align 4
  br label %for.cond, !llvm.loop !65

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !52 !taffo.sourceFunction !37 !taffo.funinfo !66 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 4, !taffo.initweight !39, !taffo.info !32
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !32
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
  %3 = load float*, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %3, i32 %4, !taffo.initweight !54, !taffo.info !32
  %5 = load float, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !32
  %6 = load i32, i32* %factor.addr, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv, !taffo.initweight !56, !taffo.info !32
  %7 = load float*, float** %val.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %8 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !54, !taffo.info !32
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !55, !taffo.info !32
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
define internal void @init_array.4(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !68 !taffo.sourceFunction !36 !taffo.funinfo !69 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4, !taffo.initweight !39, !taffo.info !30
  %B.addr = alloca float*, align 4, !taffo.initweight !39, !taffo.info !32
  %i = alloca i32, align 4, !taffo.initweight !28, !taffo.info !42
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  store float* %B, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !34, !taffo.info !42
  store i32 0, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !35, !taffo.info !42
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !39, !taffo.info !42

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %conv = sitofp i32 %2 to float, !taffo.initweight !35, !taffo.info !42
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !39, !taffo.info !42
  %3 = load i32, i32* %n.addr, align 4
  %conv2 = sitofp i32 %3 to float
  %div = fdiv float %add, %conv2, !taffo.initweight !44, !taffo.info !42
  %4 = load float*, float** %A.addr, align 4, !taffo.initweight !44, !taffo.info !30
  %5 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %arrayidx = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !35, !taffo.info !45
  store float %div, float* %arrayidx, align 4, !taffo.initweight !39, !taffo.info !45
  %6 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %conv3 = sitofp i32 %6 to float, !taffo.initweight !35, !taffo.info !42
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !39, !taffo.info !42
  %7 = load i32, i32* %n.addr, align 4
  %conv5 = sitofp i32 %7 to float
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !44, !taffo.info !42
  %8 = load float*, float** %B.addr, align 4, !taffo.initweight !44, !taffo.info !32
  %9 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %arrayidx7 = getelementptr inbounds float, float* %8, i32 %9, !taffo.initweight !35, !taffo.info !45
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !39, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  %inc = add nsw i32 %10, 1, !taffo.initweight !35, !taffo.info !42
  store i32 %inc, i32* %i, align 4, !taffo.initweight !34, !taffo.info !42
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
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
!14 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.3}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!16 = distinct !{!16, !10}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
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
!31 = !{double 0x40211111276FB092, double 0x405111111F0C34C2}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 1.280000e+01, double 0x4052222220BC382A}
!34 = !{i32 1}
!35 = !{i32 2}
!36 = !{void (i32, float*, float*)* @init_array}
!37 = !{void (i32, float*, i32)* @scale_1d}
!38 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d}
!39 = !{i32 3}
!40 = distinct !{!40, !10}
!41 = !{void (i32, float*, float*)* @init_array.4}
!42 = !{i1 false, !43, i1 false, i2 -1}
!43 = !{double -1.500000e+01, double 1.500000e+01}
!44 = !{i32 4}
!45 = !{i1 false, i1 false, i1 false, i2 1}
!46 = distinct !{!46, !10}
!47 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d.2}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = !{i32 -1, i32 2, i32 -1}
!53 = !{i32 0, i1 false, i32 1, !30, i32 0, i1 false}
!54 = !{i32 5}
!55 = !{i32 6}
!56 = !{i32 7}
!57 = distinct !{!57, !10}
!58 = !{i32 -1, i32 -1, i32 2, i32 2}
!59 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !30, i32 1, !32}
!60 = !{i32 8}
!61 = !{i32 9}
!62 = !{i32 10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = !{i32 0, i1 false, i32 1, !32, i32 0, i1 false}
!67 = distinct !{!67, !10}
!68 = !{i32 -1, i32 2, i32 2}
!69 = !{i32 0, i1 false, i32 1, !30, i32 1, !32}
!70 = distinct !{!70, !10}
