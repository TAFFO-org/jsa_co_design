; ModuleID = './build/bin/fixed/gesummv/24/gesummv-standard-1-fixed-24.out.ll.1.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/gesummv.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,0.9375) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [33 x i8] c"scalar(range(0.0,4.40625) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [47 x i8] c"target('y') scalar(range(0.0,11.325001) final)\00", section "llvm.metadata"
@y_float = dso_local global [16 x float] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata"
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
  %alpha = alloca float, align 4, !taffo.initweight !17, !taffo.info !18
  %beta = alloca float, align 4, !taffo.initweight !17, !taffo.info !20
  %A = alloca [16 x [16 x float]], align 4, !taffo.initweight !17, !taffo.info !22
  %B = alloca [16 x [16 x float]], align 4, !taffo.initweight !17, !taffo.info !22
  %tmp = alloca [16 x float], align 4, !taffo.initweight !17, !taffo.info !24
  %x = alloca [16 x float], align 4, !taffo.initweight !17, !taffo.info !22
  %y = alloca [16 x float], align 4, !taffo.initweight !17, !taffo.info !26, !taffo.target !28
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 16, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !29, !taffo.info !18
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !29, !taffo.info !20
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.initweight !29, !taffo.info !22
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.initweight !29, !taffo.info !22
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.initweight !29, !taffo.info !24
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.initweight !29, !taffo.info !22
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.initweight !29, !taffo.info !26, !taffo.target !28
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !29, !taffo.info !22
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !29, !taffo.info !22
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !29, !taffo.info !22
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !29, !taffo.info !24
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !29, !taffo.info !26, !taffo.target !28
  call void @init_array.2(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.initweight !29, !taffo.info !18, !taffo.originalCall !30
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %2 = load float, float* %alpha, align 4, !taffo.initweight !29, !taffo.info !18
  %3 = load float, float* %beta, align 4, !taffo.initweight !29, !taffo.info !20
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !29, !taffo.info !22
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !29, !taffo.info !22
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !29, !taffo.info !24
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !29, !taffo.info !22
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !29, !taffo.info !26, !taffo.target !28
  call void @kernel_gesummv.1(i32 noundef %1, float noundef %2, float noundef %3, [16 x float]* noundef %arraydecay12, [16 x float]* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16), !taffo.initweight !31, !taffo.info !18, !taffo.originalCall !32
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
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %6, !taffo.initweight !29, !taffo.info !26, !taffo.target !28
  %7 = load float, float* %arrayidx, align 4, !taffo.initweight !31, !taffo.info !26, !taffo.target !28
  %8 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %8
  store float %7, float* %arrayidx17, align 4, !taffo.initweight !33, !taffo.info !26, !taffo.target !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %10, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !35 !taffo.funinfo !36 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !37 !taffo.equivalentChild !38 !taffo.funinfo !39 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %A.addr = alloca [16 x float]*, align 4
  %B.addr = alloca [16 x float]*, align 4
  %x.addr = alloca float*, align 4
  %tmp.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !40
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  store float* %y, float** %y.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !29, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !29, !taffo.info !40
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !31, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !33, !taffo.info !40

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, %5, !taffo.initweight !31, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !33, !taffo.info !40
  %6 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !42, !taffo.info !40
  %7 = load float*, float** %x.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !31, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !33, !taffo.info !10
  %9 = load float*, float** %y.addr, align 4
  %10 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx4 = getelementptr inbounds float, float* %9, i32 %10, !taffo.initweight !31, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !33, !taffo.info !10
  %11 = load float*, float** %tmp.addr, align 4
  %12 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx5 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !31, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !33, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %14 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %13, %14, !taffo.initweight !31, !taffo.info !40
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !33, !taffo.info !40

for.body9:                                        ; preds = %for.cond6
  %15 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %16 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %mul = mul nsw i32 %15, %16, !taffo.initweight !31, !taffo.info !40
  %add = add nsw i32 %mul, 1, !taffo.initweight !33, !taffo.info !40
  %17 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add, %17, !taffo.initweight !42, !taffo.info !40
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !9, !taffo.info !40
  %18 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %18 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !43, !taffo.info !40
  %19 = load [16 x float]*, [16 x float]** %A.addr, align 4
  %20 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %19, i32 %20, !taffo.initweight !31, !taffo.info !10
  %21 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !31, !taffo.info !10
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !33, !taffo.info !10
  %22 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %23 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %mul16 = mul nsw i32 %22, %23, !taffo.initweight !31, !taffo.info !40
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !33, !taffo.info !40
  %24 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %24, !taffo.initweight !42, !taffo.info !40
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !9, !taffo.info !40
  %25 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %25 to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !43, !taffo.info !40
  %26 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %27 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %26, i32 %27, !taffo.initweight !31, !taffo.info !10
  %28 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %28, !taffo.initweight !31, !taffo.info !10
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !33, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %inc = add nsw i32 %29, 1, !taffo.initweight !31, !taffo.info !40
  store i32 %inc, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond6, !llvm.loop !44

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %inc25 = add nsw i32 %30, 1, !taffo.initweight !31, !taffo.info !40
  store i32 %inc25, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond, !llvm.loop !45

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !37 !taffo.equivalentChild !46 !taffo.funinfo !39 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [16 x float]*, align 4
  %B.addr = alloca [16 x float]*, align 4
  %tmp.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 4
  store [16 x float]* %B, [16 x float]** %B.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %tmp.addr, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  %4 = load float*, float** %y.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %4, i32 %5
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load [16 x float]*, [16 x float]** %A.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 %9
  %10 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %10
  %11 = load float, float* %arrayidx6, align 4
  %12 = load float*, float** %x.addr, align 4
  %13 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds float, float* %12, i32 %13
  %14 = load float, float* %arrayidx7, align 4
  %mul = fmul float %11, %14
  %15 = load float*, float** %tmp.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %15, i32 %16
  %17 = load float, float* %arrayidx8, align 4
  %add = fadd float %mul, %17
  %18 = load float*, float** %tmp.addr, align 4
  %19 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %18, i32 %19
  store float %add, float* %arrayidx9, align 4
  %20 = load [16 x float]*, [16 x float]** %B.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %20, i32 %21
  %22 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %22
  %23 = load float, float* %arrayidx11, align 4
  %24 = load float*, float** %x.addr, align 4
  %25 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %24, i32 %25
  %26 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %23, %26
  %27 = load float*, float** %y.addr, align 4
  %28 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds float, float* %27, i32 %28
  %29 = load float, float* %arrayidx14, align 4
  %add15 = fadd float %mul13, %29
  %30 = load float*, float** %y.addr, align 4
  %31 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31
  store float %add15, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !47

for.end:                                          ; preds = %for.cond2
  %33 = load float, float* %alpha.addr, align 4
  %34 = load float*, float** %tmp.addr, align 4
  %35 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds float, float* %34, i32 %35
  %36 = load float, float* %arrayidx17, align 4
  %mul18 = fmul float %33, %36
  %37 = load float, float* %beta.addr, align 4
  %38 = load float*, float** %y.addr, align 4
  %39 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %38, i32 %39
  %40 = load float, float* %arrayidx19, align 4
  %mul20 = fmul float %37, %40
  %add21 = fadd float %mul18, %mul20
  %41 = load float*, float** %y.addr, align 4
  %42 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %41, i32 %42
  store float %add21, float* %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %43, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca float*, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %y, float** %y.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %5 = load float*, float** %y.addr, align 4
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
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !15 !taffo.funinfo !16 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.1(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !50 !taffo.sourceFunction !32 !taffo.funinfo !51 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !33, !taffo.info !18
  %beta.addr = alloca float, align 4, !taffo.initweight !33, !taffo.info !20
  %A.addr = alloca [16 x float]*, align 4, !taffo.initweight !33, !taffo.info !22
  %B.addr = alloca [16 x float]*, align 4, !taffo.initweight !33, !taffo.info !22
  %tmp.addr = alloca float*, align 4, !taffo.initweight !33, !taffo.info !24
  %x.addr = alloca float*, align 4, !taffo.initweight !33, !taffo.info !22
  %y.addr = alloca float*, align 4, !taffo.initweight !33, !taffo.info !26
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !42, !taffo.info !18
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !42, !taffo.info !20
  store [16 x float]* %A, [16 x float]** %A.addr, align 4, !taffo.initweight !42, !taffo.info !22
  store [16 x float]* %B, [16 x float]** %B.addr, align 4, !taffo.initweight !42, !taffo.info !22
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  store float* %x, float** %x.addr, align 4, !taffo.initweight !42, !taffo.info !22
  store float* %y, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3, !taffo.initweight !9, !taffo.info !24
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  %4 = load float*, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %5 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !9, !taffo.info !26
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load [16 x float]*, [16 x float]** %A.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 %9, !taffo.initweight !9, !taffo.info !22
  %10 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %10, !taffo.initweight !43, !taffo.info !22
  %11 = load float, float* %arrayidx6, align 4, !taffo.initweight !52, !taffo.info !22
  %12 = load float*, float** %x.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %13 = load i32, i32* %j, align 4
  %arrayidx7 = getelementptr inbounds float, float* %12, i32 %13, !taffo.initweight !9, !taffo.info !22
  %14 = load float, float* %arrayidx7, align 4, !taffo.initweight !43, !taffo.info !22
  %mul = fmul float %11, %14, !taffo.initweight !52, !taffo.info !22
  %15 = load float*, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  %16 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !9, !taffo.info !24
  %17 = load float, float* %arrayidx8, align 4, !taffo.initweight !43, !taffo.info !24
  %add = fadd float %mul, %17, !taffo.initweight !52, !taffo.info !24
  %18 = load float*, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  %19 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %18, i32 %19, !taffo.initweight !9, !taffo.info !24
  store float %add, float* %arrayidx9, align 4, !taffo.initweight !43, !taffo.info !24
  %20 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %21 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %20, i32 %21, !taffo.initweight !9, !taffo.info !22
  %22 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %22, !taffo.initweight !43, !taffo.info !22
  %23 = load float, float* %arrayidx11, align 4, !taffo.initweight !52, !taffo.info !22
  %24 = load float*, float** %x.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %25 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %24, i32 %25, !taffo.initweight !9, !taffo.info !22
  %26 = load float, float* %arrayidx12, align 4, !taffo.initweight !43, !taffo.info !22
  %mul13 = fmul float %23, %26, !taffo.initweight !52, !taffo.info !22
  %27 = load float*, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %28 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !9, !taffo.info !26
  %29 = load float, float* %arrayidx14, align 4, !taffo.initweight !43, !taffo.info !26
  %add15 = fadd float %mul13, %29, !taffo.initweight !52, !taffo.info !26
  %30 = load float*, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %31 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31, !taffo.initweight !9, !taffo.info !26
  store float %add15, float* %arrayidx16, align 4, !taffo.initweight !43, !taffo.info !26
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !53

for.end:                                          ; preds = %for.cond2
  %33 = load float, float* %alpha.addr, align 4, !taffo.initweight !42, !taffo.info !18
  %34 = load float*, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  %35 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds float, float* %34, i32 %35, !taffo.initweight !9, !taffo.info !24
  %36 = load float, float* %arrayidx17, align 4, !taffo.initweight !43, !taffo.info !24
  %mul18 = fmul float %33, %36, !taffo.initweight !9, !taffo.info !18
  %37 = load float, float* %beta.addr, align 4, !taffo.initweight !42, !taffo.info !20
  %38 = load float*, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %39 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %38, i32 %39, !taffo.initweight !9, !taffo.info !26
  %40 = load float, float* %arrayidx19, align 4, !taffo.initweight !43, !taffo.info !26
  %mul20 = fmul float %37, %40, !taffo.initweight !9, !taffo.info !20
  %add21 = fadd float %mul18, %mul20, !taffo.initweight !43, !taffo.info !18
  %41 = load float*, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %42 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %41, i32 %42, !taffo.initweight !9, !taffo.info !26
  store float %add21, float* %arrayidx22, align 4, !taffo.initweight !43, !taffo.info !26
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %43, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !54

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !55 !taffo.sourceFunction !30 !taffo.funinfo !56 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !18
  %beta.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !20
  %A.addr = alloca [16 x float]*, align 4, !taffo.initweight !33, !taffo.info !22
  %B.addr = alloca [16 x float]*, align 4, !taffo.initweight !33, !taffo.info !22
  %x.addr = alloca float*, align 4, !taffo.initweight !33, !taffo.info !22
  %tmp.addr = alloca float*, align 4, !taffo.initweight !33, !taffo.info !24
  %y.addr = alloca float*, align 4, !taffo.initweight !33, !taffo.info !26
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !40
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !33, !taffo.info !18
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !33, !taffo.info !20
  store [16 x float]* %A, [16 x float]** %A.addr, align 4, !taffo.initweight !42, !taffo.info !22
  store [16 x float]* %B, [16 x float]** %B.addr, align 4, !taffo.initweight !42, !taffo.info !22
  store float* %x, float** %x.addr, align 4, !taffo.initweight !42, !taffo.info !22
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  store float* %y, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !29, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !29, !taffo.info !40
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !33, !taffo.info !18
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !42, !taffo.info !18
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !33, !taffo.info !20
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !42, !taffo.info !20
  store i32 0, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !31, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !33, !taffo.info !40

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, %5, !taffo.initweight !31, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !33, !taffo.info !40
  %6 = load i32, i32* %n.addr, align 4
  %conv3 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !42, !taffo.info !40
  %7 = load float*, float** %x.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %8 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !31, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !33, !taffo.info !10
  %9 = load float*, float** %y.addr, align 4, !taffo.initweight !42, !taffo.info !26
  %10 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx4 = getelementptr inbounds float, float* %9, i32 %10, !taffo.initweight !31, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !33, !taffo.info !10
  %11 = load float*, float** %tmp.addr, align 4, !taffo.initweight !42, !taffo.info !24
  %12 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx5 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !31, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !33, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %14 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %13, %14, !taffo.initweight !31, !taffo.info !40
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !33, !taffo.info !40

for.body9:                                        ; preds = %for.cond6
  %15 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %16 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %mul = mul nsw i32 %15, %16, !taffo.initweight !31, !taffo.info !40
  %add = add nsw i32 %mul, 1, !taffo.initweight !33, !taffo.info !40
  %17 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %add, %17, !taffo.initweight !42, !taffo.info !40
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !9, !taffo.info !40
  %18 = load i32, i32* %n.addr, align 4
  %conv12 = sitofp i32 %18 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !43, !taffo.info !40
  %19 = load [16 x float]*, [16 x float]** %A.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %20 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %19, i32 %20, !taffo.initweight !31, !taffo.info !10
  %21 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !31, !taffo.info !10
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !33, !taffo.info !10
  %22 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %23 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %mul16 = mul nsw i32 %22, %23, !taffo.initweight !31, !taffo.info !40
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !33, !taffo.info !40
  %24 = load i32, i32* %n.addr, align 4
  %rem18 = srem i32 %add17, %24, !taffo.initweight !42, !taffo.info !40
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !9, !taffo.info !40
  %25 = load i32, i32* %n.addr, align 4
  %conv20 = sitofp i32 %25 to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !43, !taffo.info !40
  %26 = load [16 x float]*, [16 x float]** %B.addr, align 4, !taffo.initweight !42, !taffo.info !22
  %27 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %26, i32 %27, !taffo.initweight !31, !taffo.info !10
  %28 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %28, !taffo.initweight !31, !taffo.info !10
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !33, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  %inc = add nsw i32 %29, 1, !taffo.initweight !31, !taffo.info !40
  store i32 %inc, i32* %j, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond6, !llvm.loop !57

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  %inc25 = add nsw i32 %30, 1, !taffo.initweight !31, !taffo.info !40
  store i32 %inc25, i32* %i, align 4, !taffo.initweight !29, !taffo.info !40
  br label %for.cond, !llvm.loop !58

for.end26:                                        ; preds = %for.cond
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
!23 = !{double 0.000000e+00, double 9.375000e-01}
!24 = !{i1 false, !25, i1 false, i2 -1}
!25 = !{double 0.000000e+00, double 4.406250e+00}
!26 = !{i1 false, !27, i1 false, i2 -1}
!27 = !{double 0.000000e+00, double 0x4026A66687F455A8}
!28 = !{!"y"}
!29 = !{i32 1}
!30 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array}
!31 = !{i32 2}
!32 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv}
!33 = !{i32 3}
!34 = distinct !{!34, !12}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array.2}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = !{i1 false, !41, i1 false, i2 1}
!41 = !{double 0.000000e+00, double 1.600000e+01}
!42 = !{i32 4}
!43 = !{i32 6}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv.1}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!51 = !{i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !22, i32 1, !22, i32 1, !24, i32 1, !22, i32 1, !26}
!52 = !{i32 7}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!56 = !{i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !22, i32 1, !22, i32 1, !22, i32 1, !24, i32 1, !26}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
