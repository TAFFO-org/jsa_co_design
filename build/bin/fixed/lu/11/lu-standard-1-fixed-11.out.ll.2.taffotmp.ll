; ModuleID = './build/bin/fixed/lu/11/lu-standard-1-fixed-11.out.ll.1.taffotmp.ll'
source_filename = "./sources/lu.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [44 x i8] c"target('A') scalar(range(0.1,8.1725) final)\00", section "llvm.metadata"
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
define dso_local void @timer_start() #0 !taffo.initweight !13 !taffo.funinfo !13 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !13 !taffo.funinfo !13 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !14 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !17, !taffo.target !18, !taffo.info !19
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !21, !taffo.target !18, !taffo.info !19
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !21, !taffo.target !18, !taffo.info !19
  call void @init_array.2(i32 noundef %0, [20 x float]* noundef %arraydecay), !taffo.initweight !22, !taffo.target !18, !taffo.info !19, !taffo.originalCall !23
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !21, !taffo.target !18, !taffo.info !19
  call void @kernel_lu.1(i32 noundef %1, [20 x float]* noundef %arraydecay2), !taffo.initweight !22, !taffo.target !18, !taffo.info !19, !taffo.originalCall !24
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %6, !taffo.initweight !21, !taffo.target !18, !taffo.info !19
  %7 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %7, !taffo.initweight !22, !taffo.target !18, !taffo.info !19
  %8 = load float, float* %arrayidx6, align 4, !taffo.initweight !25, !taffo.target !18, !taffo.info !19
  %9 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %9
  %10 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %10
  store float %8, float* %arrayidx8, align 4, !taffo.initweight !26, !taffo.target !18, !taffo.info !19
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !27

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end11:                                        ; preds = %for.cond
  %13 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %13, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !29 !taffo.funinfo !30 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !15 !taffo.equivalentChild !31 !taffo.funinfo !16 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !32
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !32
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !21, !taffo.info !32
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !21, !taffo.info !32
  store i32 0, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !25, !taffo.info !32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %3 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %cmp4 = icmp sle i32 %2, %3, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !25, !taffo.info !32

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %sub = sub nsw i32 0, %4, !taffo.initweight !22, !taffo.info !32
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %5, !taffo.initweight !25, !taffo.info !32
  %conv = sitofp i32 %rem to float, !taffo.initweight !26, !taffo.info !32
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !9, !taffo.info !32
  %add = fadd float %div, 1.000000e+00, !taffo.initweight !9, !taffo.info !10
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !22, !taffo.info !10
  %9 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !22, !taffo.info !10
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %inc = add nsw i32 %10, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond3, !llvm.loop !34

for.end:                                          ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %add8 = add nsw i32 %11, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %add8, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %12 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %13 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp slt i32 %12, %13, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.initweight !25, !taffo.info !32

for.body12:                                       ; preds = %for.cond9
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %15, !taffo.initweight !22, !taffo.info !10
  %16 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %16, !taffo.initweight !22, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %17 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %inc16 = add nsw i32 %17, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc16, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond9, !llvm.loop !35

for.end17:                                        ; preds = %for.cond9
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %19 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %18, i32 %19, !taffo.initweight !22, !taffo.info !10
  %20 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %20, !taffo.initweight !22, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %21 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %inc21 = add nsw i32 %21, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc21, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond, !llvm.loop !36

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !21, !taffo.info !10
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
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %26, !taffo.initweight !21, !taffo.info !10
  %27 = load i32, i32* %s, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %27, !taffo.initweight !22, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %28 = load i32, i32* %s, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %s, align 4
  br label %for.cond28, !llvm.loop !37

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %29 = load i32, i32* %r, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %r, align 4
  br label %for.cond24, !llvm.loop !38

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
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %44, !taffo.initweight !21, !taffo.info !10
  %45 = load i32, i32* %s, align 4
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %45, !taffo.initweight !22, !taffo.info !10
  %46 = load float, float* %arrayidx57, align 4, !taffo.initweight !25, !taffo.info !10
  %add58 = fadd float %46, %mul, !taffo.initweight !26, !taffo.info !10
  store float %add58, float* %arrayidx57, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %47 = load i32, i32* %s, align 4
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, i32* %s, align 4
  br label %for.cond48, !llvm.loop !39

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %48 = load i32, i32* %r, align 4
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, i32* %r, align 4
  br label %for.cond44, !llvm.loop !40

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %49 = load i32, i32* %t, align 4
  %inc66 = add nsw i32 %49, 1
  store i32 %inc66, i32* %t, align 4
  br label %for.cond40, !llvm.loop !41

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
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %54, !taffo.initweight !21, !taffo.info !10
  %55 = load i32, i32* %s, align 4
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %55, !taffo.initweight !22, !taffo.info !10
  %56 = load float, float* %arrayidx77, align 4, !taffo.initweight !25, !taffo.info !10
  %57 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %58 = load i32, i32* %r, align 4
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %57, i32 %58
  %59 = load i32, i32* %s, align 4
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %59
  store float %56, float* %arrayidx79, align 4, !taffo.initweight !26, !taffo.info !10
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %60 = load i32, i32* %s, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %s, align 4
  br label %for.cond72, !llvm.loop !42

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %61 = load i32, i32* %r, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %r, align 4
  br label %for.cond68, !llvm.loop !43

for.end85:                                        ; preds = %for.cond68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !15 !taffo.equivalentChild !44 !taffo.funinfo !16 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  %tmp26 = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
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
  %tmp7 = bitcast float* %tmp to i8*, !taffo.initweight !21, !taffo.info !10
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
  %mul = fmul float %9, %13, !taffo.initweight !22, !taffo.info !10
  store float %mul, float* %tmp, align 4, !taffo.initweight !21, !taffo.info !10
  %14 = load float, float* %tmp, align 4, !taffo.initweight !21, !taffo.info !10
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %15, i32 %16
  %17 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %17
  %18 = load float, float* %arrayidx12, align 4
  %sub = fsub float %18, %14, !taffo.initweight !22, !taffo.info !10
  store float %sub, float* %arrayidx12, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !45

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
  br label %for.cond1, !llvm.loop !46

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
  %tmp2627 = bitcast float* %tmp26 to i8*, !taffo.initweight !21, !taffo.info !10
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
  %mul32 = fmul float %37, %41, !taffo.initweight !22, !taffo.info !10
  store float %mul32, float* %tmp26, align 4, !taffo.initweight !21, !taffo.info !10
  %42 = load float, float* %tmp26, align 4, !taffo.initweight !21, !taffo.info !10
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %44 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %43, i32 %44
  %45 = load i32, i32* %j, align 4
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %45
  %46 = load float, float* %arrayidx34, align 4
  %sub35 = fsub float %46, %42, !taffo.initweight !22, !taffo.info !10
  store float %sub35, float* %arrayidx34, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %47 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond23, !llvm.loop !47

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %48 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %48, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond20, !llvm.loop !48

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %49 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !15 !taffo.funinfo !16 {
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
  br label %for.cond1, !llvm.loop !50

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !15 !taffo.funinfo !16 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu.1(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !52 !taffo.sourceFunction !24 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !25, !taffo.info !19
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  %tmp26 = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
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
  %tmp7 = bitcast float* %tmp to i8*, !taffo.initweight !21, !taffo.info !10
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i32 %7, !taffo.initweight !9, !taffo.info !19
  %8 = load i32, i32* %k, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %8, !taffo.initweight !54, !taffo.info !19
  %9 = load float, float* %arrayidx8, align 4, !taffo.initweight !55, !taffo.info !19
  %10 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %11 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %10, i32 %11, !taffo.initweight !9, !taffo.info !19
  %12 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %12, !taffo.initweight !54, !taffo.info !19
  %13 = load float, float* %arrayidx10, align 4, !taffo.initweight !55, !taffo.info !19
  %mul = fmul float %9, %13, !taffo.initweight !22, !taffo.info !10
  store float %mul, float* %tmp, align 4, !taffo.initweight !21, !taffo.info !10
  %14 = load float, float* %tmp, align 4, !taffo.initweight !21, !taffo.info !10
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %15, i32 %16, !taffo.initweight !9, !taffo.info !19
  %17 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %17, !taffo.initweight !54, !taffo.info !19
  %18 = load float, float* %arrayidx12, align 4, !taffo.initweight !55, !taffo.info !19
  %sub = fsub float %18, %14, !taffo.initweight !22, !taffo.info !10
  store float %sub, float* %arrayidx12, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !56

for.end:                                          ; preds = %for.cond4
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %21 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21, !taffo.initweight !9, !taffo.info !19
  %22 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %22, !taffo.initweight !54, !taffo.info !19
  %23 = load float, float* %arrayidx14, align 4, !taffo.initweight !55, !taffo.info !19
  %24 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %25 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %24, i32 %25, !taffo.initweight !9, !taffo.info !19
  %26 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %26, !taffo.initweight !54, !taffo.info !19
  %27 = load float, float* %arrayidx16, align 4, !taffo.initweight !55, !taffo.info !19
  %div = fdiv float %27, %23, !taffo.initweight !57, !taffo.info !19
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !55, !taffo.info !19
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
  %tmp2627 = bitcast float* %tmp26 to i8*, !taffo.initweight !21, !taffo.info !10
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %35 = load i32, i32* %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %34, i32 %35, !taffo.initweight !9, !taffo.info !19
  %36 = load i32, i32* %k, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %36, !taffo.initweight !54, !taffo.info !19
  %37 = load float, float* %arrayidx29, align 4, !taffo.initweight !55, !taffo.info !19
  %38 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %39 = load i32, i32* %k, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %38, i32 %39, !taffo.initweight !9, !taffo.info !19
  %40 = load i32, i32* %j, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %40, !taffo.initweight !54, !taffo.info !19
  %41 = load float, float* %arrayidx31, align 4, !taffo.initweight !55, !taffo.info !19
  %mul32 = fmul float %37, %41, !taffo.initweight !22, !taffo.info !10
  store float %mul32, float* %tmp26, align 4, !taffo.initweight !21, !taffo.info !10
  %42 = load float, float* %tmp26, align 4, !taffo.initweight !21, !taffo.info !10
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %44 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %43, i32 %44, !taffo.initweight !9, !taffo.info !19
  %45 = load i32, i32* %j, align 4
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %45, !taffo.initweight !54, !taffo.info !19
  %46 = load float, float* %arrayidx34, align 4, !taffo.initweight !55, !taffo.info !19
  %sub35 = fsub float %46, %42, !taffo.initweight !22, !taffo.info !10
  store float %sub35, float* %arrayidx34, align 4, !taffo.initweight !25, !taffo.info !10
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
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !52 !taffo.sourceFunction !23 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !25, !taffo.info !19
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !32
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !32
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !21, !taffo.info !32
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !21, !taffo.info !32
  store i32 0, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !25, !taffo.info !32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %3 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %cmp4 = icmp sle i32 %2, %3, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !25, !taffo.info !32

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %sub = sub nsw i32 0, %4, !taffo.initweight !22, !taffo.info !32
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %5, !taffo.initweight !25, !taffo.info !32
  %conv = sitofp i32 %rem to float, !taffo.initweight !26, !taffo.info !32
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !9, !taffo.info !32
  %add = fadd float %div, 1.000000e+00, !taffo.initweight !9, !taffo.info !10
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %8 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i32 %8, !taffo.initweight !22, !taffo.info !10
  %9 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !22, !taffo.info !10
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %inc = add nsw i32 %10, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond3, !llvm.loop !62

for.end:                                          ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %add8 = add nsw i32 %11, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %add8, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %12 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %13 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp slt i32 %12, %13, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.initweight !25, !taffo.info !32

for.body12:                                       ; preds = %for.cond9
  %14 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %15 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %14, i32 %15, !taffo.initweight !22, !taffo.info !10
  %16 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %16, !taffo.initweight !22, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %17 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  %inc16 = add nsw i32 %17, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc16, i32* %j, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond9, !llvm.loop !63

for.end17:                                        ; preds = %for.cond9
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %19 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %18, i32 %19, !taffo.initweight !22, !taffo.info !10
  %20 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %20, !taffo.initweight !22, !taffo.info !10
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %21 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %inc21 = add nsw i32 %21, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc21, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond, !llvm.loop !64

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !21, !taffo.info !10
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
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %26, !taffo.initweight !21, !taffo.info !10
  %27 = load i32, i32* %s, align 4
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %27, !taffo.initweight !22, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %28 = load i32, i32* %s, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %s, align 4
  br label %for.cond28, !llvm.loop !65

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %29 = load i32, i32* %r, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %r, align 4
  br label %for.cond24, !llvm.loop !66

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
  %36 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %37 = load i32, i32* %r, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %36, i32 %37, !taffo.initweight !9, !taffo.info !19
  %38 = load i32, i32* %t, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %38, !taffo.initweight !54, !taffo.info !19
  %39 = load float, float* %arrayidx53, align 4, !taffo.initweight !55, !taffo.info !19
  %40 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %41 = load i32, i32* %s, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %40, i32 %41, !taffo.initweight !9, !taffo.info !19
  %42 = load i32, i32* %t, align 4
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx54, i32 0, i32 %42, !taffo.initweight !54, !taffo.info !19
  %43 = load float, float* %arrayidx55, align 4, !taffo.initweight !55, !taffo.info !19
  %mul = fmul float %39, %43, !taffo.initweight !57, !taffo.info !19
  %44 = load i32, i32* %r, align 4
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %44, !taffo.initweight !21, !taffo.info !10
  %45 = load i32, i32* %s, align 4
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %45, !taffo.initweight !22, !taffo.info !10
  %46 = load float, float* %arrayidx57, align 4, !taffo.initweight !25, !taffo.info !10
  %add58 = fadd float %46, %mul, !taffo.initweight !26, !taffo.info !10
  store float %add58, float* %arrayidx57, align 4, !taffo.initweight !25, !taffo.info !10
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %47 = load i32, i32* %s, align 4
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, i32* %s, align 4
  br label %for.cond48, !llvm.loop !67

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %48 = load i32, i32* %r, align 4
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, i32* %r, align 4
  br label %for.cond44, !llvm.loop !68

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %49 = load i32, i32* %t, align 4
  %inc66 = add nsw i32 %49, 1
  store i32 %inc66, i32* %t, align 4
  br label %for.cond40, !llvm.loop !69

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
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %54, !taffo.initweight !21, !taffo.info !10
  %55 = load i32, i32* %s, align 4
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %55, !taffo.initweight !22, !taffo.info !10
  %56 = load float, float* %arrayidx77, align 4, !taffo.initweight !25, !taffo.info !10
  %57 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %58 = load i32, i32* %r, align 4
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %57, i32 %58, !taffo.initweight !9, !taffo.info !19
  %59 = load i32, i32* %s, align 4
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %59, !taffo.initweight !54, !taffo.info !19
  store float %56, float* %arrayidx79, align 4, !taffo.initweight !26, !taffo.info !10
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %60 = load i32, i32* %s, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %s, align 4
  br label %for.cond72, !llvm.loop !70

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %61 = load i32, i32* %r, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %r, align 4
  br label %for.cond68, !llvm.loop !71

for.end85:                                        ; preds = %for.cond68
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
!13 = !{}
!14 = !{i1 true}
!15 = !{i32 -1, i32 -1}
!16 = !{i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 0}
!18 = !{!"A"}
!19 = !{i1 false, !20, i1 false, i2 -1}
!20 = !{double 1.000000e-01, double 8.172500e+00}
!21 = !{i32 1}
!22 = !{i32 2}
!23 = !{void (i32, [20 x float]*)* @init_array}
!24 = !{void (i32, [20 x float]*)* @kernel_lu}
!25 = !{i32 3}
!26 = !{i32 4}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = !{void (i32, [20 x float]*)* @init_array.2}
!32 = !{i1 false, !33, i1 false, i2 1}
!33 = !{double -2.000000e+01, double 2.000000e+01}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = !{void (i32, [20 x float]*)* @kernel_lu.1}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = !{i32 -1, i32 2}
!53 = !{i32 0, i1 false, i32 1, !19}
!54 = !{i32 6}
!55 = !{i32 7}
!56 = distinct !{!56, !12}
!57 = !{i32 8}
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
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
