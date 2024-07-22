; ModuleID = './build/bin/fixed/atax/24/atax-standard-1-fixed-24.out.ll.1.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.21) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/atax.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(1.0,1.954545) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [44 x i8] c"target('y') scalar(range(0.0,7.6915) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,3.815) final)\00", section "llvm.metadata"
@y_float = dso_local global [22 x float] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 22) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [22 x float]], align 4, !taffo.initweight !17, !taffo.info !18
  %x = alloca [22 x float], align 4, !taffo.initweight !17, !taffo.info !20
  %y = alloca [22 x float], align 4, !taffo.initweight !17, !taffo.info !22, !taffo.target !24
  %tmp = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !25
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %m, align 4
  store i32 22, i32* %n, align 4
  %A1 = bitcast [20 x [22 x float]]* %A to i8*, !taffo.initweight !27, !taffo.info !18
  %x2 = bitcast [22 x float]* %x to i8*, !taffo.initweight !27, !taffo.info !20
  %y3 = bitcast [22 x float]* %y to i8*, !taffo.initweight !27, !taffo.info !22, !taffo.target !24
  %tmp4 = bitcast [20 x float]* %tmp to i8*, !taffo.initweight !27, !taffo.info !25
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !27, !taffo.info !18
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !27, !taffo.info !20
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !27, !taffo.info !22, !taffo.target !24
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !27, !taffo.info !25
  call void @init_array.2(i32 noundef %0, i32 noundef %1, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.initweight !28, !taffo.info !18, !taffo.originalCall !29
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !27, !taffo.info !18
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !27, !taffo.info !20
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !27, !taffo.info !22, !taffo.target !24
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !27, !taffo.info !25
  call void @kernel_atax.1(i32 noundef %2, i32 noundef %3, [22 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.initweight !28, !taffo.info !18, !taffo.originalCall !30
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %5, !taffo.initweight !27, !taffo.info !22, !taffo.target !24
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !28, !taffo.info !22, !taffo.target !24
  %7 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %7
  store float %6, float* %arrayidx12, align 4, !taffo.initweight !31, !taffo.info !22, !taffo.target !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %9, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !33 !taffo.funinfo !34 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !35 !taffo.equivalentChild !36 !taffo.funinfo !37 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %tmp.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !38
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !38
  %fn = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !27, !taffo.info !38
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !27, !taffo.info !38
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !27, !taffo.info !10
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !28, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !27, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !28, !taffo.info !38
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !31, !taffo.info !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %conv5 = sitofp i32 %3 to float, !taffo.initweight !28, !taffo.info !38
  %4 = load float, float* %fn, align 4, !taffo.initweight !27, !taffo.info !10
  %div = fdiv float %conv5, %4, !taffo.initweight !28, !taffo.info !10
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !31, !taffo.info !10
  %5 = load float*, float** %x.addr, align 4
  %6 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !28, !taffo.info !10
  store float %add, float* %arrayidx, align 4, !taffo.initweight !31, !taffo.info !10
  %7 = load float*, float** %y.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx6 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !28, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !31, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %inc = add nsw i32 %9, 1, !taffo.initweight !28, !taffo.info !38
  store i32 %inc, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %11 = load i32, i32* %m.addr, align 4
  %cmp8 = icmp slt i32 %10, %11, !taffo.initweight !28, !taffo.info !38
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !31, !taffo.info !38

for.body10:                                       ; preds = %for.cond7
  %12 = load float*, float** %tmp.addr, align 4
  %13 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx11 = getelementptr inbounds float, float* %12, i32 %13, !taffo.initweight !28, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !31, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %14 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %15 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %14, %15, !taffo.initweight !28, !taffo.info !38
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !31, !taffo.info !38

for.body15:                                       ; preds = %for.cond12
  %16 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %17 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %add16 = add nsw i32 %16, %17, !taffo.initweight !28, !taffo.info !38
  %18 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add16, %18, !taffo.initweight !31, !taffo.info !38
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !41, !taffo.info !38
  %19 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 5, %19
  %conv18 = sitofp i32 %mul to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !9, !taffo.info !38
  %20 = load [22 x float]*, [22 x float]** %A.addr, align 4
  %21 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %20, i32 %21, !taffo.initweight !28, !taffo.info !10
  %22 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %22, !taffo.initweight !28, !taffo.info !10
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !31, !taffo.info !10
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %23 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %inc23 = add nsw i32 %23, 1, !taffo.initweight !28, !taffo.info !38
  store i32 %inc23, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond12, !llvm.loop !42

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %24 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %inc26 = add nsw i32 %24, 1, !taffo.initweight !28, !taffo.info !38
  store i32 %inc26, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond7, !llvm.loop !43

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !35 !taffo.equivalentChild !44 !taffo.funinfo !37 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %tmp.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %tmp, float** %tmp.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %y.addr, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %tmp.addr, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %tmp.addr, align 4
  %12 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12
  %13 = load float, float* %arrayidx8, align 4
  %14 = load [22 x float]*, [22 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %14, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %16
  %17 = load float, float* %arrayidx10, align 4
  %18 = load float*, float** %x.addr, align 4
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds float, float* %18, i32 %19
  %20 = load float, float* %arrayidx11, align 4
  %mul = fmul float %17, %20
  %add = fadd float %13, %mul
  %21 = load float*, float** %tmp.addr, align 4
  %22 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22
  store float %add, float* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %23 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond5, !llvm.loop !46

for.end15:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %26 = load float*, float** %y.addr, align 4
  %27 = load i32, i32* %j, align 4
  %arrayidx19 = getelementptr inbounds float, float* %26, i32 %27
  %28 = load float, float* %arrayidx19, align 4
  %29 = load [22 x float]*, [22 x float]** %A.addr, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %29, i32 %30
  %31 = load i32, i32* %j, align 4
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %31
  %32 = load float, float* %arrayidx21, align 4
  %33 = load float*, float** %tmp.addr, align 4
  %34 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %33, i32 %34
  %35 = load float, float* %arrayidx22, align 4
  %mul23 = fmul float %32, %35
  %add24 = fadd float %28, %mul23
  %36 = load float*, float** %y.addr, align 4
  %37 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds float, float* %36, i32 %37
  store float %add24, float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %38 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond16, !llvm.loop !47

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %39 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond1, !llvm.loop !48

for.end31:                                        ; preds = %for.cond1
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
define internal void @kernel_atax.1(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !50 !taffo.sourceFunction !30 !taffo.funinfo !51 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4, !taffo.initweight !31, !taffo.info !18
  %x.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !20
  %y.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !22
  %tmp.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !25
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4, !taffo.initweight !41, !taffo.info !18
  store float* %x, float** %x.addr, align 4, !taffo.initweight !41, !taffo.info !20
  store float* %y, float** %y.addr, align 4, !taffo.initweight !41, !taffo.info !22
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %y.addr, align 4, !taffo.initweight !41, !taffo.info !22
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3, !taffo.initweight !9, !taffo.info !22
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !25
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  %12 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !9, !taffo.info !25
  %13 = load float, float* %arrayidx8, align 4, !taffo.initweight !53, !taffo.info !25
  %14 = load [22 x float]*, [22 x float]** %A.addr, align 4, !taffo.initweight !41, !taffo.info !18
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %14, i32 %15, !taffo.initweight !9, !taffo.info !18
  %16 = load i32, i32* %j, align 4
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %16, !taffo.initweight !53, !taffo.info !18
  %17 = load float, float* %arrayidx10, align 4, !taffo.initweight !54, !taffo.info !18
  %18 = load float*, float** %x.addr, align 4, !taffo.initweight !41, !taffo.info !20
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds float, float* %18, i32 %19, !taffo.initweight !9, !taffo.info !20
  %20 = load float, float* %arrayidx11, align 4, !taffo.initweight !53, !taffo.info !20
  %mul = fmul float %17, %20, !taffo.initweight !54, !taffo.info !20
  %add = fadd float %13, %mul, !taffo.initweight !54, !taffo.info !25
  %21 = load float*, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  %22 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22, !taffo.initweight !9, !taffo.info !25
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !53, !taffo.info !25
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %23 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond5, !llvm.loop !55

for.end15:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %26 = load float*, float** %y.addr, align 4, !taffo.initweight !41, !taffo.info !22
  %27 = load i32, i32* %j, align 4
  %arrayidx19 = getelementptr inbounds float, float* %26, i32 %27, !taffo.initweight !9, !taffo.info !22
  %28 = load float, float* %arrayidx19, align 4, !taffo.initweight !53, !taffo.info !22
  %29 = load [22 x float]*, [22 x float]** %A.addr, align 4, !taffo.initweight !41, !taffo.info !18
  %30 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %29, i32 %30, !taffo.initweight !9, !taffo.info !18
  %31 = load i32, i32* %j, align 4
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %31, !taffo.initweight !53, !taffo.info !18
  %32 = load float, float* %arrayidx21, align 4, !taffo.initweight !54, !taffo.info !18
  %33 = load float*, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  %34 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %33, i32 %34, !taffo.initweight !9, !taffo.info !25
  %35 = load float, float* %arrayidx22, align 4, !taffo.initweight !53, !taffo.info !25
  %mul23 = fmul float %32, %35, !taffo.initweight !54, !taffo.info !25
  %add24 = fadd float %28, %mul23, !taffo.initweight !54, !taffo.info !22
  %36 = load float*, float** %y.addr, align 4, !taffo.initweight !41, !taffo.info !22
  %37 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds float, float* %36, i32 %37, !taffo.initweight !9, !taffo.info !22
  store float %add24, float* %arrayidx25, align 4, !taffo.initweight !53, !taffo.info !22
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %38 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond16, !llvm.loop !56

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %39 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond1, !llvm.loop !57

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !50 !taffo.sourceFunction !29 !taffo.funinfo !51 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [22 x float]*, align 4, !taffo.initweight !31, !taffo.info !18
  %x.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !20
  %y.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !22
  %tmp.addr = alloca float*, align 4, !taffo.initweight !31, !taffo.info !25
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !38
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !38
  %fn = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [22 x float]* %A, [22 x float]** %A.addr, align 4, !taffo.initweight !41, !taffo.info !18
  store float* %x, float** %x.addr, align 4, !taffo.initweight !41, !taffo.info !20
  store float* %y, float** %y.addr, align 4, !taffo.initweight !41, !taffo.info !22
  store float* %tmp, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !27, !taffo.info !38
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !27, !taffo.info !38
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !27, !taffo.info !10
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !28, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !27, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2, !taffo.initweight !28, !taffo.info !38
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !31, !taffo.info !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %conv5 = sitofp i32 %3 to float, !taffo.initweight !28, !taffo.info !38
  %4 = load float, float* %fn, align 4, !taffo.initweight !27, !taffo.info !10
  %div = fdiv float %conv5, %4, !taffo.initweight !28, !taffo.info !10
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !31, !taffo.info !10
  %5 = load float*, float** %x.addr, align 4, !taffo.initweight !41, !taffo.info !20
  %6 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !28, !taffo.info !10
  store float %add, float* %arrayidx, align 4, !taffo.initweight !31, !taffo.info !10
  %7 = load float*, float** %y.addr, align 4, !taffo.initweight !41, !taffo.info !22
  %8 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx6 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !28, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !31, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %inc = add nsw i32 %9, 1, !taffo.initweight !28, !taffo.info !38
  store i32 %inc, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %11 = load i32, i32* %m.addr, align 4
  %cmp8 = icmp slt i32 %10, %11, !taffo.initweight !28, !taffo.info !38
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !31, !taffo.info !38

for.body10:                                       ; preds = %for.cond7
  %12 = load float*, float** %tmp.addr, align 4, !taffo.initweight !41, !taffo.info !25
  %13 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx11 = getelementptr inbounds float, float* %12, i32 %13, !taffo.initweight !28, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !31, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %14 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %15 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %14, %15, !taffo.initweight !28, !taffo.info !38
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !31, !taffo.info !38

for.body15:                                       ; preds = %for.cond12
  %16 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %17 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %add16 = add nsw i32 %16, %17, !taffo.initweight !28, !taffo.info !38
  %18 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add16, %18, !taffo.initweight !31, !taffo.info !38
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !41, !taffo.info !38
  %19 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 5, %19
  %conv18 = sitofp i32 %mul to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !9, !taffo.info !38
  %20 = load [22 x float]*, [22 x float]** %A.addr, align 4, !taffo.initweight !41, !taffo.info !18
  %21 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %20, i32 %21, !taffo.initweight !28, !taffo.info !10
  %22 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %22, !taffo.initweight !28, !taffo.info !10
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !31, !taffo.info !10
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %23 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  %inc23 = add nsw i32 %23, 1, !taffo.initweight !28, !taffo.info !38
  store i32 %inc23, i32* %j, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond12, !llvm.loop !59

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %24 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  %inc26 = add nsw i32 %24, 1, !taffo.initweight !28, !taffo.info !38
  store i32 %inc26, i32* %i, align 4, !taffo.initweight !27, !taffo.info !38
  br label %for.cond7, !llvm.loop !60

for.end27:                                        ; preds = %for.cond7
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
!19 = !{double 0.000000e+00, double 2.100000e-01}
!20 = !{i1 false, !21, i1 false, i2 -1}
!21 = !{double 1.000000e+00, double 0x3FFF45D0FA58F712}
!22 = !{i1 false, !23, i1 false, i2 -1}
!23 = !{double 0.000000e+00, double 7.691500e+00}
!24 = !{!"y"}
!25 = !{i1 false, !26, i1 false, i2 -1}
!26 = !{double 0.000000e+00, double 3.815000e+00}
!27 = !{i32 1}
!28 = !{i32 2}
!29 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array}
!30 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax}
!31 = !{i32 3}
!32 = distinct !{!32, !12}
!33 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array.2}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{i1 false, !39, i1 false, i2 -1}
!39 = !{double 0.000000e+00, double 2.200000e+01}
!40 = distinct !{!40, !12}
!41 = !{i32 4}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax.1}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!51 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !22, i32 1, !25}
!52 = distinct !{!52, !12}
!53 = !{i32 6}
!54 = !{i32 7}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
