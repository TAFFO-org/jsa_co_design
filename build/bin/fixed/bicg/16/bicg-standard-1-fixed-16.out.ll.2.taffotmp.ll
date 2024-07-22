; ModuleID = './build/bin/fixed/bicg/16/bicg-standard-1-fixed-16.out.ll.1.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.954545) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/bicg.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [46 x i8] c"target('s') scalar(range(0.0,6.840909) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [46 x i8] c"target('q') scalar(range(0.0,6.045455) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.95) final)\00", section "llvm.metadata"
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
  %m = alloca i32, align 4
  %A = alloca [22 x [20 x float]], align 4, !taffo.initweight !17, !taffo.info !18
  %s = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !20, !taffo.target !22
  %q = alloca [22 x float], align 4, !taffo.initweight !17, !taffo.info !23, !taffo.target !25
  %p = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !26
  %r = alloca [22 x float], align 4, !taffo.initweight !17, !taffo.info !18
  %i = alloca i32, align 4
  %i16 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 22, i32* %n, align 4
  store i32 20, i32* %m, align 4
  %A1 = bitcast [22 x [20 x float]]* %A to i8*, !taffo.initweight !28, !taffo.info !18
  %s2 = bitcast [20 x float]* %s to i8*, !taffo.initweight !28, !taffo.info !20, !taffo.target !22
  %q3 = bitcast [22 x float]* %q to i8*, !taffo.initweight !28, !taffo.info !23, !taffo.target !25
  %p4 = bitcast [20 x float]* %p to i8*, !taffo.initweight !28, !taffo.info !26
  %r5 = bitcast [22 x float]* %r to i8*, !taffo.initweight !28, !taffo.info !18
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !28, !taffo.info !18
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !28, !taffo.info !18
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !28, !taffo.info !26
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !28, !taffo.info !20, !taffo.target !22
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !28, !taffo.info !23, !taffo.target !25
  call void @init_array.2(i32 noundef %0, i32 noundef %1, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !29, !taffo.info !18, !taffo.originalCall !30
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !28, !taffo.info !18
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !28, !taffo.info !20, !taffo.target !22
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !28, !taffo.info !23, !taffo.target !25
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !28, !taffo.info !26
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !28, !taffo.info !18
  call void @kernel_bicg.1(i32 noundef %2, i32 noundef %3, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14), !taffo.initweight !29, !taffo.info !18, !taffo.originalCall !31
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 %6, !taffo.initweight !28, !taffo.info !20, !taffo.target !22
  %7 = load float, float* %arrayidx, align 4, !taffo.initweight !29, !taffo.info !20, !taffo.target !22
  %8 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %8
  store float %7, float* %arrayidx15, align 4, !taffo.initweight !32, !taffo.info !20, !taffo.target !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end
  %10 = load i32, i32* %i16, align 4
  %11 = load i32, i32* %n, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %12 = load i32, i32* %i16, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 %12, !taffo.initweight !28, !taffo.info !23, !taffo.target !25
  %13 = load float, float* %arrayidx20, align 4, !taffo.initweight !29, !taffo.info !23, !taffo.target !25
  %14 = load i32, i32* %i16, align 4
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %14
  store float %13, float* %arrayidx21, align 4, !taffo.initweight !32, !taffo.info !23, !taffo.target !25
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %15 = load i32, i32* %i16, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %i16, align 4
  br label %for.cond17, !llvm.loop !34

for.end24:                                        ; preds = %for.cond17
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %16, i32 noundef %17, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !35 !taffo.funinfo !36 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !37 !taffo.equivalentChild !38 !taffo.funinfo !39 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4
  %r.addr = alloca float*, align 4
  %p.addr = alloca float*, align 4
  %s.addr = alloca float*, align 4
  %q.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !42
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %r, float** %r.addr, align 4
  store float* %p, float** %p.addr, align 4
  store float* %s, float** %s.addr, align 4
  store float* %q, float** %q.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !28, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !28, !taffo.info !42
  store i32 0, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !32, !taffo.info !40

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3, !taffo.initweight !29, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !32, !taffo.info !40
  %4 = load i32, i32* %m.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !44, !taffo.info !40
  %5 = load float*, float** %p.addr, align 4
  %6 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !29, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !32, !taffo.info !10
  %7 = load float*, float** %s.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !29, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !32, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %inc = add nsw i32 %9, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %11 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %10, %11, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !32, !taffo.info !40

for.body8:                                        ; preds = %for.cond5
  %12 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %13 = load i32, i32* %n.addr, align 4
  %rem9 = srem i32 %12, %13, !taffo.initweight !29, !taffo.info !40
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !32, !taffo.info !40
  %14 = load i32, i32* %n.addr, align 4
  %conv11 = sitofp i32 %14 to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !44, !taffo.info !40
  %15 = load float*, float** %r.addr, align 4
  %16 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx13 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !29, !taffo.info !10
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !32, !taffo.info !10
  %17 = load float*, float** %q.addr, align 4
  %18 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx14 = getelementptr inbounds float, float* %17, i32 %18, !taffo.initweight !29, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !32, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %19 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %20 = load i32, i32* %m.addr, align 4
  %cmp16 = icmp slt i32 %19, %20, !taffo.initweight !29, !taffo.info !42
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !32, !taffo.info !42

for.body18:                                       ; preds = %for.cond15
  %21 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %22 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %add = add nsw i32 %22, 1, !taffo.initweight !29, !taffo.info !42
  %mul = mul nsw i32 %21, %add, !taffo.initweight !29, !taffo.info !40
  %23 = load i32, i32* %n.addr, align 4
  %rem19 = srem i32 %mul, %23, !taffo.initweight !32, !taffo.info !40
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !44, !taffo.info !40
  %24 = load i32, i32* %n.addr, align 4
  %conv21 = sitofp i32 %24 to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !9, !taffo.info !40
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %26 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26, !taffo.initweight !29, !taffo.info !10
  %27 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %27, !taffo.initweight !29, !taffo.info !10
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !32, !taffo.info !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %28 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %inc26 = add nsw i32 %28, 1, !taffo.initweight !29, !taffo.info !42
  store i32 %inc26, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  br label %for.cond15, !llvm.loop !46

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %inc29 = add nsw i32 %29, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc29, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond5, !llvm.loop !47

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !37 !taffo.equivalentChild !48 !taffo.funinfo !39 {
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
  br label %for.cond, !llvm.loop !49

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
  br label %for.cond5, !llvm.loop !50

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %36 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond1, !llvm.loop !51

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !52 !taffo.funinfo !53 {
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
  br label %for.cond, !llvm.loop !54

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
  br label %for.cond3, !llvm.loop !55

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !15 !taffo.funinfo !16 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.1(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !56 !taffo.sourceFunction !31 !taffo.funinfo !57 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !32, !taffo.info !18
  %s.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !20
  %q.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !23
  %p.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !26
  %r.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !18
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !44, !taffo.info !18
  store float* %s, float** %s.addr, align 4, !taffo.initweight !44, !taffo.info !20
  store float* %q, float** %q.addr, align 4, !taffo.initweight !44, !taffo.info !23
  store float* %p, float** %p.addr, align 4, !taffo.initweight !44, !taffo.info !26
  store float* %r, float** %r.addr, align 4, !taffo.initweight !44, !taffo.info !18
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %s.addr, align 4, !taffo.initweight !44, !taffo.info !20
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds float, float* %2, i32 %3, !taffo.initweight !9, !taffo.info !20
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %q.addr, align 4, !taffo.initweight !44, !taffo.info !23
  %8 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !9, !taffo.info !23
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %11 = load float*, float** %s.addr, align 4, !taffo.initweight !44, !taffo.info !20
  %12 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !9, !taffo.info !20
  %13 = load float, float* %arrayidx8, align 4, !taffo.initweight !59, !taffo.info !20
  %14 = load float*, float** %r.addr, align 4, !taffo.initweight !44, !taffo.info !18
  %15 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds float, float* %14, i32 %15, !taffo.initweight !9, !taffo.info !18
  %16 = load float, float* %arrayidx9, align 4, !taffo.initweight !59, !taffo.info !18
  %17 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !44, !taffo.info !18
  %18 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %17, i32 %18, !taffo.initweight !9, !taffo.info !18
  %19 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %19, !taffo.initweight !59, !taffo.info !18
  %20 = load float, float* %arrayidx11, align 4, !taffo.initweight !60, !taffo.info !18
  %mul = fmul float %16, %20, !taffo.initweight !60, !taffo.info !18
  %add = fadd float %13, %mul, !taffo.initweight !60, !taffo.info !20
  %21 = load float*, float** %s.addr, align 4, !taffo.initweight !44, !taffo.info !20
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds float, float* %21, i32 %22, !taffo.initweight !9, !taffo.info !20
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !59, !taffo.info !20
  %23 = load float*, float** %q.addr, align 4, !taffo.initweight !44, !taffo.info !23
  %24 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds float, float* %23, i32 %24, !taffo.initweight !9, !taffo.info !23
  %25 = load float, float* %arrayidx13, align 4, !taffo.initweight !59, !taffo.info !23
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !44, !taffo.info !18
  %27 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %26, i32 %27, !taffo.initweight !9, !taffo.info !18
  %28 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %28, !taffo.initweight !59, !taffo.info !18
  %29 = load float, float* %arrayidx15, align 4, !taffo.initweight !60, !taffo.info !18
  %30 = load float*, float** %p.addr, align 4, !taffo.initweight !44, !taffo.info !26
  %31 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds float, float* %30, i32 %31, !taffo.initweight !9, !taffo.info !26
  %32 = load float, float* %arrayidx16, align 4, !taffo.initweight !59, !taffo.info !26
  %mul17 = fmul float %29, %32, !taffo.initweight !60, !taffo.info !26
  %add18 = fadd float %25, %mul17, !taffo.initweight !60, !taffo.info !23
  %33 = load float*, float** %q.addr, align 4, !taffo.initweight !44, !taffo.info !23
  %34 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds float, float* %33, i32 %34, !taffo.initweight !9, !taffo.info !23
  store float %add18, float* %arrayidx19, align 4, !taffo.initweight !59, !taffo.info !23
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %35 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond5, !llvm.loop !61

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %36 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond1, !llvm.loop !62

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !56 !taffo.sourceFunction !30 !taffo.funinfo !63 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !32, !taffo.info !18
  %r.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !18
  %p.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !26
  %s.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !20
  %q.addr = alloca float*, align 4, !taffo.initweight !32, !taffo.info !23
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !42
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !44, !taffo.info !18
  store float* %r, float** %r.addr, align 4, !taffo.initweight !44, !taffo.info !18
  store float* %p, float** %p.addr, align 4, !taffo.initweight !44, !taffo.info !26
  store float* %s, float** %s.addr, align 4, !taffo.initweight !44, !taffo.info !20
  store float* %q, float** %q.addr, align 4, !taffo.initweight !44, !taffo.info !23
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !28, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !28, !taffo.info !42
  store i32 0, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !32, !taffo.info !40

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3, !taffo.initweight !29, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !32, !taffo.info !40
  %4 = load i32, i32* %m.addr, align 4
  %conv3 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !44, !taffo.info !40
  %5 = load float*, float** %p.addr, align 4, !taffo.initweight !44, !taffo.info !26
  %6 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx = getelementptr inbounds float, float* %5, i32 %6, !taffo.initweight !29, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !32, !taffo.info !10
  %7 = load float*, float** %s.addr, align 4, !taffo.initweight !44, !taffo.info !20
  %8 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx4 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !29, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !32, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %inc = add nsw i32 %9, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %10 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %11 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %10, %11, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !32, !taffo.info !40

for.body8:                                        ; preds = %for.cond5
  %12 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %13 = load i32, i32* %n.addr, align 4
  %rem9 = srem i32 %12, %13, !taffo.initweight !29, !taffo.info !40
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !32, !taffo.info !40
  %14 = load i32, i32* %n.addr, align 4
  %conv11 = sitofp i32 %14 to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !44, !taffo.info !40
  %15 = load float*, float** %r.addr, align 4, !taffo.initweight !44, !taffo.info !18
  %16 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx13 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !29, !taffo.info !10
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !32, !taffo.info !10
  %17 = load float*, float** %q.addr, align 4, !taffo.initweight !44, !taffo.info !23
  %18 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx14 = getelementptr inbounds float, float* %17, i32 %18, !taffo.initweight !29, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !32, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %19 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %20 = load i32, i32* %m.addr, align 4
  %cmp16 = icmp slt i32 %19, %20, !taffo.initweight !29, !taffo.info !42
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !32, !taffo.info !42

for.body18:                                       ; preds = %for.cond15
  %21 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %22 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %add = add nsw i32 %22, 1, !taffo.initweight !29, !taffo.info !42
  %mul = mul nsw i32 %21, %add, !taffo.initweight !29, !taffo.info !40
  %23 = load i32, i32* %n.addr, align 4
  %rem19 = srem i32 %mul, %23, !taffo.initweight !32, !taffo.info !40
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !44, !taffo.info !40
  %24 = load i32, i32* %n.addr, align 4
  %conv21 = sitofp i32 %24 to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !9, !taffo.info !40
  %25 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !44, !taffo.info !18
  %26 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %25, i32 %26, !taffo.initweight !29, !taffo.info !10
  %27 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %27, !taffo.initweight !29, !taffo.info !10
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !32, !taffo.info !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %28 = load i32, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  %inc26 = add nsw i32 %28, 1, !taffo.initweight !29, !taffo.info !42
  store i32 %inc26, i32* %j, align 4, !taffo.initweight !28, !taffo.info !42
  br label %for.cond15, !llvm.loop !65

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  %inc29 = add nsw i32 %29, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc29, i32* %i, align 4, !taffo.initweight !28, !taffo.info !40
  br label %for.cond5, !llvm.loop !66

for.end30:                                        ; preds = %for.cond5
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
!19 = !{double 0.000000e+00, double 0x3FEE8BA1F4B1EE24}
!20 = !{i1 false, !21, i1 false, i2 -1}
!21 = !{double 0.000000e+00, double 0x401B5D173FB7A5F4}
!22 = !{!"s"}
!23 = !{i1 false, !24, i1 false, i2 -1}
!24 = !{double 0.000000e+00, double 0x40182E8BC169C23B}
!25 = !{!"q"}
!26 = !{i1 false, !27, i1 false, i2 -1}
!27 = !{double 0.000000e+00, double 0x3FEE666666666666}
!28 = !{i32 1}
!29 = !{i32 2}
!30 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array}
!31 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg}
!32 = !{i32 3}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array.2}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = !{i1 false, !41, i1 false, i2 1}
!41 = !{double 0.000000e+00, double 2.200000e+01}
!42 = !{i1 false, !43, i1 false, i2 1}
!43 = !{double 0.000000e+00, double 2.000000e+01}
!44 = !{i32 4}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg.1}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!57 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !23, i32 1, !26, i32 1, !18}
!58 = distinct !{!58, !12}
!59 = !{i32 6}
!60 = !{i32 7}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !18, i32 1, !18, i32 1, !26, i32 1, !20, i32 1, !23}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
