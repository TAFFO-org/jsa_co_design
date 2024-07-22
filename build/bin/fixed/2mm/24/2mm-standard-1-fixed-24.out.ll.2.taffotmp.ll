; ModuleID = './build/bin/fixed/2mm/24/2mm-standard-1-fixed-24.out.ll.1.taffotmp.ll'
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
@.str.3 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,4.6125) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,0.875) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,0.9) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.928571) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [46 x i8] c"target('D') scalar(range(0.0,19.18125) final)\00", section "llvm.metadata"
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !17, !taffo.info !18
  %beta = alloca float, align 4, !taffo.initweight !17, !taffo.info !20
  %tmp = alloca [8 x [10 x float]], align 4, !taffo.initweight !17, !taffo.info !22
  %A = alloca [8 x [12 x float]], align 4, !taffo.initweight !17, !taffo.info !24
  %B = alloca [12 x [10 x float]], align 4, !taffo.initweight !17, !taffo.info !26
  %C = alloca [10 x [14 x float]], align 4, !taffo.initweight !17, !taffo.info !28
  %D = alloca [8 x [14 x float]], align 4, !taffo.initweight !17, !taffo.info !30, !taffo.target !32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 8, i32* %ni, align 4
  store i32 10, i32* %nj, align 4
  store i32 12, i32* %nk, align 4
  store i32 14, i32* %nl, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !33, !taffo.info !18
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !33, !taffo.info !20
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*, !taffo.initweight !33, !taffo.info !22
  %A4 = bitcast [8 x [12 x float]]* %A to i8*, !taffo.initweight !33, !taffo.info !24
  %B5 = bitcast [12 x [10 x float]]* %B to i8*, !taffo.initweight !33, !taffo.info !26
  %C6 = bitcast [10 x [14 x float]]* %C to i8*, !taffo.initweight !33, !taffo.info !28
  %D7 = bitcast [8 x [14 x float]]* %D to i8*, !taffo.initweight !33, !taffo.info !30, !taffo.target !32
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !33, !taffo.info !24
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !33, !taffo.info !26
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !33, !taffo.info !28
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !33, !taffo.info !30, !taffo.target !32
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !33, !taffo.info !22
  call void @init_array.2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.initweight !33, !taffo.info !18, !taffo.originalCall !34
  call void @timer_start()
  %4 = load i32, i32* %ni, align 4
  %5 = load i32, i32* %nj, align 4
  %6 = load i32, i32* %nk, align 4
  %7 = load i32, i32* %nl, align 4
  %8 = load float, float* %alpha, align 4, !taffo.initweight !33, !taffo.info !18
  %9 = load float, float* %beta, align 4, !taffo.initweight !33, !taffo.info !20
  %arraydecay12 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !33, !taffo.info !22
  %arraydecay13 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !33, !taffo.info !24
  %arraydecay14 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !33, !taffo.info !26
  %arraydecay15 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !33, !taffo.info !28
  %arraydecay16 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !33, !taffo.info !30, !taffo.target !32
  call void @kernel_2mm.1(i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, [10 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13, [10 x float]* noundef %arraydecay14, [14 x float]* noundef %arraydecay15, [14 x float]* noundef %arraydecay16), !taffo.initweight !35, !taffo.info !18, !taffo.originalCall !36
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nl, align 4
  %cmp18 = icmp slt i32 %12, %13
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %14 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %14, !taffo.initweight !33, !taffo.info !30, !taffo.target !32
  %15 = load i32, i32* %j, align 4
  %arrayidx20 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %15, !taffo.initweight !35, !taffo.info !30, !taffo.target !32
  %16 = load float, float* %arrayidx20, align 4, !taffo.initweight !37, !taffo.info !30, !taffo.target !32
  %17 = load i32, i32* %i, align 4
  %arrayidx21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %17
  %18 = load i32, i32* %j, align 4
  %arrayidx22 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx21, i32 0, i32 %18
  store float %16, float* %arrayidx22, align 4, !taffo.initweight !38, !taffo.info !30, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond17, !llvm.loop !39

for.end:                                          ; preds = %for.cond17
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !40

for.end25:                                        ; preds = %for.cond
  %21 = load i32, i32* %ni, align 4
  %22 = load i32, i32* %nl, align 4
  call void @print_array(i32 noundef %21, i32 noundef %22, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !43 !taffo.equivalentChild !44 !taffo.funinfo !45 {
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
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !46
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !48
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
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !33, !taffo.info !46
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !33, !taffo.info !48
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !37, !taffo.info !46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !37, !taffo.info !48

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %7 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %mul = mul nsw i32 %6, %7, !taffo.initweight !35, !taffo.info !46
  %add = add nsw i32 %mul, 1, !taffo.initweight !37, !taffo.info !46
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !38, !taffo.info !46
  %conv = sitofp i32 %rem to float, !taffo.initweight !9, !taffo.info !46
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !50, !taffo.info !46
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !35, !taffo.info !10
  %12 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !35, !taffo.info !10
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc = add nsw i32 %13, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond3, !llvm.loop !51

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc9 = add nsw i32 %14, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc9, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond, !llvm.loop !52

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %16 = load i32, i32* %nk.addr, align 4
  %cmp12 = icmp slt i32 %15, %16, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !37, !taffo.info !46

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %18 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %17, %18, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !37, !taffo.info !48

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %20 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %add19 = add nsw i32 %20, 1, !taffo.initweight !35, !taffo.info !48
  %mul20 = mul nsw i32 %19, %add19, !taffo.initweight !35, !taffo.info !46
  %21 = load i32, i32* %nj.addr, align 4
  %rem21 = srem i32 %mul20, %21, !taffo.initweight !37, !taffo.info !46
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !38, !taffo.info !46
  %22 = load i32, i32* %nj.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !9, !taffo.info !46
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24, !taffo.initweight !35, !taffo.info !10
  %25 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %25, !taffo.initweight !35, !taffo.info !10
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc28 = add nsw i32 %26, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc28, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond15, !llvm.loop !53

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc31 = add nsw i32 %27, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc31, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond11, !llvm.loop !54

for.end32:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %28 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %29 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %28, %29, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !37, !taffo.info !46

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %30 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %31 = load i32, i32* %nl.addr, align 4
  %cmp38 = icmp slt i32 %30, %31, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !37, !taffo.info !48

for.body40:                                       ; preds = %for.cond37
  %32 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %33 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %add41 = add nsw i32 %33, 3, !taffo.initweight !35, !taffo.info !48
  %mul42 = mul nsw i32 %32, %add41, !taffo.initweight !35, !taffo.info !46
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !37, !taffo.info !46
  %34 = load i32, i32* %nl.addr, align 4
  %rem44 = srem i32 %add43, %34, !taffo.initweight !38, !taffo.info !46
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !9, !taffo.info !46
  %35 = load i32, i32* %nl.addr, align 4
  %conv46 = sitofp i32 %35 to float
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !50, !taffo.info !46
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 4
  %37 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %36, i32 %37, !taffo.initweight !35, !taffo.info !10
  %38 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %38, !taffo.initweight !35, !taffo.info !10
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc51 = add nsw i32 %39, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc51, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond37, !llvm.loop !55

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %40 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc54 = add nsw i32 %40, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc54, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond33, !llvm.loop !56

for.end55:                                        ; preds = %for.cond33
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %41 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %42 = load i32, i32* %ni.addr, align 4
  %cmp57 = icmp slt i32 %41, %42, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !37, !taffo.info !46

for.body59:                                       ; preds = %for.cond56
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %43 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %44 = load i32, i32* %nl.addr, align 4
  %cmp61 = icmp slt i32 %43, %44, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !37, !taffo.info !48

for.body63:                                       ; preds = %for.cond60
  %45 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %46 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %add64 = add nsw i32 %46, 2, !taffo.initweight !35, !taffo.info !48
  %mul65 = mul nsw i32 %45, %add64, !taffo.initweight !35, !taffo.info !46
  %47 = load i32, i32* %nk.addr, align 4
  %rem66 = srem i32 %mul65, %47, !taffo.initweight !37, !taffo.info !46
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !38, !taffo.info !46
  %48 = load i32, i32* %nk.addr, align 4
  %conv68 = sitofp i32 %48 to float
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !9, !taffo.info !46
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 4
  %50 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %49, i32 %50, !taffo.initweight !35, !taffo.info !10
  %51 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %51, !taffo.initweight !35, !taffo.info !10
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %52 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc73 = add nsw i32 %52, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc73, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond60, !llvm.loop !57

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %53 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc76 = add nsw i32 %53, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc76, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond56, !llvm.loop !58

for.end77:                                        ; preds = %for.cond56
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %54 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %55 = load i32, i32* %ni.addr, align 4
  %cmp79 = icmp slt i32 %54, %55, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !37, !taffo.info !46

for.body81:                                       ; preds = %for.cond78
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %56 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %57 = load i32, i32* %nj.addr, align 4
  %cmp83 = icmp slt i32 %56, %57, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !37, !taffo.info !48

for.body85:                                       ; preds = %for.cond82
  %58 = load [10 x float]*, [10 x float]** %tmp.addr, align 4
  %59 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %58, i32 %59, !taffo.initweight !35, !taffo.info !10
  %60 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %60, !taffo.initweight !35, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %61 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc89 = add nsw i32 %61, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc89, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond82, !llvm.loop !59

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %62 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc92 = add nsw i32 %62, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc92, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond78, !llvm.loop !60

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !43 !taffo.equivalentChild !61 !taffo.funinfo !45 {
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
  br label %for.cond5, !llvm.loop !62

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond1, !llvm.loop !63

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !64

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
  br label %for.cond30, !llvm.loop !65

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %49 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %49, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond24, !llvm.loop !66

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %50 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond21, !llvm.loop !67

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !68 !taffo.funinfo !69 {
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
  br label %for.cond1, !llvm.loop !70

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !71

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !15 !taffo.funinfo !16 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !72 !taffo.sourceFunction !36 !taffo.funinfo !73 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !37, !taffo.info !18
  %beta.addr = alloca float, align 4, !taffo.initweight !37, !taffo.info !20
  %tmp.addr = alloca [10 x float]*, align 4, !taffo.initweight !37, !taffo.info !22
  %A.addr = alloca [12 x float]*, align 4, !taffo.initweight !37, !taffo.info !24
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !37, !taffo.info !26
  %C.addr = alloca [14 x float]*, align 4, !taffo.initweight !37, !taffo.info !28
  %D.addr = alloca [14 x float]*, align 4, !taffo.initweight !37, !taffo.info !30
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !38, !taffo.info !18
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !38, !taffo.info !20
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 4, !taffo.initweight !38, !taffo.info !22
  store [12 x float]* %A, [12 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !24
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !38, !taffo.info !26
  store [14 x float]* %C, [14 x float]** %C.addr, align 4, !taffo.initweight !38, !taffo.info !28
  store [14 x float]* %D, [14 x float]** %D.addr, align 4, !taffo.initweight !38, !taffo.info !30
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
  %4 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !38, !taffo.info !22
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %4, i32 %5, !taffo.initweight !9, !taffo.info !22
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %6, !taffo.initweight !50, !taffo.info !22
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load float, float* %alpha.addr, align 4, !taffo.initweight !38, !taffo.info !18
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !24
  %11 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !9, !taffo.info !24
  %12 = load i32, i32* %k, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %12, !taffo.initweight !50, !taffo.info !24
  %13 = load float, float* %arrayidx9, align 4, !taffo.initweight !74, !taffo.info !24
  %mul = fmul float %9, %13, !taffo.initweight !9, !taffo.info !18
  %14 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !38, !taffo.info !26
  %15 = load i32, i32* %k, align 4
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15, !taffo.initweight !9, !taffo.info !26
  %16 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %16, !taffo.initweight !50, !taffo.info !26
  %17 = load float, float* %arrayidx11, align 4, !taffo.initweight !74, !taffo.info !26
  %mul12 = fmul float %mul, %17, !taffo.initweight !50, !taffo.info !18
  %18 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !38, !taffo.info !22
  %19 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %18, i32 %19, !taffo.initweight !9, !taffo.info !22
  %20 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %20, !taffo.initweight !50, !taffo.info !22
  %21 = load float, float* %arrayidx14, align 4, !taffo.initweight !74, !taffo.info !22
  %add = fadd float %21, %mul12, !taffo.initweight !74, !taffo.info !18
  store float %add, float* %arrayidx14, align 4, !taffo.initweight !74, !taffo.info !22
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !75

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond1, !llvm.loop !76

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !77

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
  %29 = load float, float* %beta.addr, align 4, !taffo.initweight !38, !taffo.info !20
  %30 = load [14 x float]*, [14 x float]** %D.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %31 = load i32, i32* %i, align 4
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %30, i32 %31, !taffo.initweight !9, !taffo.info !30
  %32 = load i32, i32* %j, align 4
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %32, !taffo.initweight !50, !taffo.info !30
  %33 = load float, float* %arrayidx28, align 4, !taffo.initweight !74, !taffo.info !30
  %mul29 = fmul float %33, %29, !taffo.initweight !9, !taffo.info !20
  store float %mul29, float* %arrayidx28, align 4, !taffo.initweight !50, !taffo.info !20
  store i32 0, i32* %k, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %nj.addr, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %36 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !38, !taffo.info !22
  %37 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %36, i32 %37, !taffo.initweight !9, !taffo.info !22
  %38 = load i32, i32* %k, align 4
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %38, !taffo.initweight !50, !taffo.info !22
  %39 = load float, float* %arrayidx34, align 4, !taffo.initweight !74, !taffo.info !22
  %40 = load [14 x float]*, [14 x float]** %C.addr, align 4, !taffo.initweight !38, !taffo.info !28
  %41 = load i32, i32* %k, align 4
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %40, i32 %41, !taffo.initweight !9, !taffo.info !28
  %42 = load i32, i32* %j, align 4
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %42, !taffo.initweight !50, !taffo.info !28
  %43 = load float, float* %arrayidx36, align 4, !taffo.initweight !74, !taffo.info !28
  %mul37 = fmul float %39, %43, !taffo.initweight !78, !taffo.info !22
  %44 = load [14 x float]*, [14 x float]** %D.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %45 = load i32, i32* %i, align 4
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %44, i32 %45, !taffo.initweight !9, !taffo.info !30
  %46 = load i32, i32* %j, align 4
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %46, !taffo.initweight !50, !taffo.info !30
  %47 = load float, float* %arrayidx39, align 4, !taffo.initweight !74, !taffo.info !30
  %add40 = fadd float %47, %mul37, !taffo.initweight !78, !taffo.info !30
  store float %add40, float* %arrayidx39, align 4, !taffo.initweight !74, !taffo.info !30
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %48 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, i32* %k, align 4
  br label %for.cond30, !llvm.loop !79

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %49 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %49, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond24, !llvm.loop !80

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %50 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond21, !llvm.loop !81

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !82 !taffo.sourceFunction !34 !taffo.funinfo !83 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !35, !taffo.info !18
  %beta.addr = alloca float*, align 4, !taffo.initweight !35, !taffo.info !20
  %A.addr = alloca [12 x float]*, align 4, !taffo.initweight !37, !taffo.info !24
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !37, !taffo.info !26
  %C.addr = alloca [14 x float]*, align 4, !taffo.initweight !37, !taffo.info !28
  %D.addr = alloca [14 x float]*, align 4, !taffo.initweight !37, !taffo.info !30
  %tmp.addr = alloca [10 x float]*, align 4, !taffo.initweight !37, !taffo.info !22
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !46
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !48
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !37, !taffo.info !18
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !37, !taffo.info !20
  store [12 x float]* %A, [12 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !24
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !38, !taffo.info !26
  store [14 x float]* %C, [14 x float]** %C.addr, align 4, !taffo.initweight !38, !taffo.info !28
  store [14 x float]* %D, [14 x float]** %D.addr, align 4, !taffo.initweight !38, !taffo.info !30
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 4, !taffo.initweight !38, !taffo.info !22
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !33, !taffo.info !46
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !33, !taffo.info !48
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !37, !taffo.info !18
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !38, !taffo.info !18
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !37, !taffo.info !20
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !38, !taffo.info !20
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !37, !taffo.info !46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !37, !taffo.info !48

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %7 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %mul = mul nsw i32 %6, %7, !taffo.initweight !35, !taffo.info !46
  %add = add nsw i32 %mul, 1, !taffo.initweight !37, !taffo.info !46
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !38, !taffo.info !46
  %conv = sitofp i32 %rem to float, !taffo.initweight !9, !taffo.info !46
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !50, !taffo.info !46
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 4, !taffo.initweight !38, !taffo.info !24
  %11 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !35, !taffo.info !10
  %12 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !35, !taffo.info !10
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc = add nsw i32 %13, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond3, !llvm.loop !84

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc9 = add nsw i32 %14, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc9, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond, !llvm.loop !85

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %16 = load i32, i32* %nk.addr, align 4
  %cmp12 = icmp slt i32 %15, %16, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !37, !taffo.info !46

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %18 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %17, %18, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !37, !taffo.info !48

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %20 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %add19 = add nsw i32 %20, 1, !taffo.initweight !35, !taffo.info !48
  %mul20 = mul nsw i32 %19, %add19, !taffo.initweight !35, !taffo.info !46
  %21 = load i32, i32* %nj.addr, align 4
  %rem21 = srem i32 %mul20, %21, !taffo.initweight !37, !taffo.info !46
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !38, !taffo.info !46
  %22 = load i32, i32* %nj.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !9, !taffo.info !46
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !38, !taffo.info !26
  %24 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24, !taffo.initweight !35, !taffo.info !10
  %25 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %25, !taffo.initweight !35, !taffo.info !10
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc28 = add nsw i32 %26, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc28, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond15, !llvm.loop !86

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc31 = add nsw i32 %27, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc31, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond11, !llvm.loop !87

for.end32:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %28 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %29 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %28, %29, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !37, !taffo.info !46

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %30 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %31 = load i32, i32* %nl.addr, align 4
  %cmp38 = icmp slt i32 %30, %31, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !37, !taffo.info !48

for.body40:                                       ; preds = %for.cond37
  %32 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %33 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %add41 = add nsw i32 %33, 3, !taffo.initweight !35, !taffo.info !48
  %mul42 = mul nsw i32 %32, %add41, !taffo.initweight !35, !taffo.info !46
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !37, !taffo.info !46
  %34 = load i32, i32* %nl.addr, align 4
  %rem44 = srem i32 %add43, %34, !taffo.initweight !38, !taffo.info !46
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !9, !taffo.info !46
  %35 = load i32, i32* %nl.addr, align 4
  %conv46 = sitofp i32 %35 to float
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !50, !taffo.info !46
  %36 = load [14 x float]*, [14 x float]** %C.addr, align 4, !taffo.initweight !38, !taffo.info !28
  %37 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %36, i32 %37, !taffo.initweight !35, !taffo.info !10
  %38 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %38, !taffo.initweight !35, !taffo.info !10
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc51 = add nsw i32 %39, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc51, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond37, !llvm.loop !88

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %40 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc54 = add nsw i32 %40, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc54, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond33, !llvm.loop !89

for.end55:                                        ; preds = %for.cond33
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %41 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %42 = load i32, i32* %ni.addr, align 4
  %cmp57 = icmp slt i32 %41, %42, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !37, !taffo.info !46

for.body59:                                       ; preds = %for.cond56
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %43 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %44 = load i32, i32* %nl.addr, align 4
  %cmp61 = icmp slt i32 %43, %44, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !37, !taffo.info !48

for.body63:                                       ; preds = %for.cond60
  %45 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %46 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %add64 = add nsw i32 %46, 2, !taffo.initweight !35, !taffo.info !48
  %mul65 = mul nsw i32 %45, %add64, !taffo.initweight !35, !taffo.info !46
  %47 = load i32, i32* %nk.addr, align 4
  %rem66 = srem i32 %mul65, %47, !taffo.initweight !37, !taffo.info !46
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !38, !taffo.info !46
  %48 = load i32, i32* %nk.addr, align 4
  %conv68 = sitofp i32 %48 to float
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !9, !taffo.info !46
  %49 = load [14 x float]*, [14 x float]** %D.addr, align 4, !taffo.initweight !38, !taffo.info !30
  %50 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %49, i32 %50, !taffo.initweight !35, !taffo.info !10
  %51 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %51, !taffo.initweight !35, !taffo.info !10
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %52 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc73 = add nsw i32 %52, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc73, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond60, !llvm.loop !90

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %53 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc76 = add nsw i32 %53, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc76, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond56, !llvm.loop !91

for.end77:                                        ; preds = %for.cond56
  store i32 0, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %54 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %55 = load i32, i32* %ni.addr, align 4
  %cmp79 = icmp slt i32 %54, %55, !taffo.initweight !35, !taffo.info !46
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !37, !taffo.info !46

for.body81:                                       ; preds = %for.cond78
  store i32 0, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %56 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %57 = load i32, i32* %nj.addr, align 4
  %cmp83 = icmp slt i32 %56, %57, !taffo.initweight !35, !taffo.info !48
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !37, !taffo.info !48

for.body85:                                       ; preds = %for.cond82
  %58 = load [10 x float]*, [10 x float]** %tmp.addr, align 4, !taffo.initweight !38, !taffo.info !22
  %59 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %58, i32 %59, !taffo.initweight !35, !taffo.info !10
  %60 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %60, !taffo.initweight !35, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !37, !taffo.info !10
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %61 = load i32, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  %inc89 = add nsw i32 %61, 1, !taffo.initweight !35, !taffo.info !48
  store i32 %inc89, i32* %j, align 4, !taffo.initweight !33, !taffo.info !48
  br label %for.cond82, !llvm.loop !92

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %62 = load i32, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  %inc92 = add nsw i32 %62, 1, !taffo.initweight !35, !taffo.info !46
  store i32 %inc92, i32* %i, align 4, !taffo.initweight !33, !taffo.info !46
  br label %for.cond78, !llvm.loop !93

for.end93:                                        ; preds = %for.cond78
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
!18 = !{i1 false, !19, i1 false, i2 -1}
!19 = !{double 1.500000e+00, double 1.500000e+00}
!20 = !{i1 false, !21, i1 false, i2 -1}
!21 = !{double 1.200000e+00, double 1.200000e+00}
!22 = !{i1 false, !23, i1 false, i2 -1}
!23 = !{double 0.000000e+00, double 4.612500e+00}
!24 = !{i1 false, !25, i1 false, i2 -1}
!25 = !{double 0.000000e+00, double 8.750000e-01}
!26 = !{i1 false, !27, i1 false, i2 -1}
!27 = !{double 0.000000e+00, double 9.000000e-01}
!28 = !{i1 false, !29, i1 false, i2 -1}
!29 = !{double 0.000000e+00, double 9.285710e-01}
!30 = !{i1 false, !31, i1 false, i2 -1}
!31 = !{double 0.000000e+00, double 0x40332E6666666666}
!32 = !{!"D"}
!33 = !{i32 1}
!34 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array}
!35 = !{i32 2}
!36 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm}
!37 = !{i32 3}
!38 = !{i32 4}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!44 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array.2}
!45 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!46 = !{i1 false, !47, i1 false, i2 -1}
!47 = !{double 0.000000e+00, double 1.200000e+01}
!48 = !{i1 false, !49, i1 false, i2 -1}
!49 = !{double 0.000000e+00, double 1.400000e+01}
!50 = !{i32 6}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm.1}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = !{i32 -1, i32 -1, i32 -1}
!69 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!73 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !22, i32 1, !24, i32 1, !26, i32 1, !28, i32 1, !30}
!74 = !{i32 7}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = !{i32 8}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!83 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !24, i32 1, !26, i32 1, !28, i32 1, !30, i32 1, !22}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
