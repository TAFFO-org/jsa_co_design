; ModuleID = './build/bin/fixed/gemver/8/gemver-standard-1-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,1.115625) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.95) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [33 x i8] c"scalar(range(0.0125,0.25) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [31 x i8] c"scalar(range(0.025,0.5) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [39 x i8] c"scalar(range(0.008333,0.166667) final)\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [47 x i8] c"target('w') scalar(range(0.0,18.203592) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,1.132656) final)\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [35 x i8] c"scalar(range(0.00625,0.125) final)\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [39 x i8] c"scalar(range(0.005556,0.111111) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 4
@w_float = dso_local global [20 x float] zeroinitializer, align 4
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !17, !taffo.info !22
  %u1 = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !24
  %v1 = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !26
  %u2 = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !28
  %v2 = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !30
  %w = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !32, !taffo.target !34
  %x = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !35
  %y = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !37
  %z = alloca [20 x float], align 4, !taffo.initweight !17, !taffo.info !39
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 20, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !41, !taffo.info !18
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !41, !taffo.info !20
  %A3 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !41, !taffo.info !22
  %u14 = bitcast [20 x float]* %u1 to i8*, !taffo.initweight !41, !taffo.info !24
  %v15 = bitcast [20 x float]* %v1 to i8*, !taffo.initweight !41, !taffo.info !26
  %u26 = bitcast [20 x float]* %u2 to i8*, !taffo.initweight !41, !taffo.info !28
  %v27 = bitcast [20 x float]* %v2 to i8*, !taffo.initweight !41, !taffo.info !30
  %w8 = bitcast [20 x float]* %w to i8*, !taffo.initweight !41, !taffo.info !32, !taffo.target !34
  %x9 = bitcast [20 x float]* %x to i8*, !taffo.initweight !41, !taffo.info !35
  %y10 = bitcast [20 x float]* %y to i8*, !taffo.initweight !41, !taffo.info !37
  %z11 = bitcast [20 x float]* %z to i8*, !taffo.initweight !41, !taffo.info !39
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !22
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !41, !taffo.info !24
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !41, !taffo.info !26
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !41, !taffo.info !28
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !41, !taffo.info !30
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !41, !taffo.info !32, !taffo.target !34
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !41, !taffo.info !35
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @init_array.2(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.initweight !41, !taffo.info !18, !taffo.originalCall !42
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %2 = load float, float* %alpha, align 4, !taffo.initweight !41, !taffo.info !18
  %3 = load float, float* %beta, align 4, !taffo.initweight !41, !taffo.info !20
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !22
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !41, !taffo.info !24
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !41, !taffo.info !26
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !41, !taffo.info !28
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !41, !taffo.info !30
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !41, !taffo.info !32, !taffo.target !34
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !41, !taffo.info !35
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39
  call void @kernel_gemver.1(i32 noundef %1, float noundef %2, float noundef %3, [20 x float]* noundef %arraydecay20, float* noundef %arraydecay21, float* noundef %arraydecay22, float* noundef %arraydecay23, float* noundef %arraydecay24, float* noundef %arraydecay25, float* noundef %arraydecay26, float* noundef %arraydecay27, float* noundef %arraydecay28), !taffo.initweight !43, !taffo.info !18, !taffo.originalCall !44
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %6, !taffo.initweight !41, !taffo.info !35
  %7 = load float, float* %arrayidx, align 4, !taffo.initweight !43, !taffo.info !35
  %8 = load i32, i32* %i, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %8
  store float %7, float* %arrayidx29, align 4, !taffo.initweight !45, !taffo.info !35
  %9 = load i32, i32* %i, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %9, !taffo.initweight !41, !taffo.info !32, !taffo.target !34
  %10 = load float, float* %arrayidx30, align 4, !taffo.initweight !43, !taffo.info !32, !taffo.target !34
  %11 = load i32, i32* %i, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %11
  store float %10, float* %arrayidx31, align 4, !taffo.initweight !45, !taffo.info !32, !taffo.target !34
  store i32 0, i32* %j, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %n, align 4
  %cmp33 = icmp slt i32 %12, %13
  br i1 %cmp33, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond32
  %14 = load i32, i32* %i, align 4
  %arrayidx35 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %14, !taffo.initweight !41, !taffo.info !22
  %15 = load i32, i32* %j, align 4
  %arrayidx36 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx35, i32 0, i32 %15, !taffo.initweight !43, !taffo.info !22
  %16 = load float, float* %arrayidx36, align 4, !taffo.initweight !45, !taffo.info !22
  %17 = load i32, i32* %i, align 4
  %arrayidx37 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %17
  %18 = load i32, i32* %j, align 4
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %18
  store float %16, float* %arrayidx38, align 4, !taffo.initweight !46, !taffo.info !22
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond32, !llvm.loop !47

for.end:                                          ; preds = %for.cond32
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %20, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

for.end41:                                        ; preds = %for.cond
  %21 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %21, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !49 !taffo.funinfo !50 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !51 !taffo.equivalentChild !52 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %u1.addr = alloca float*, align 4
  %v1.addr = alloca float*, align 4
  %u2.addr = alloca float*, align 4
  %v2.addr = alloca float*, align 4
  %w.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %z.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !54
  %fn = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %u1, float** %u1.addr, align 4
  store float* %v1, float** %v1.addr, align 4
  store float* %u2, float** %u2.addr, align 4
  store float* %v2, float** %v2.addr, align 4
  store float* %w, float** %w.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %z, float** %z.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !41, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !41, !taffo.info !54
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !41, !taffo.info !10
  %2 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %2 to float, !taffo.initweight !43, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %3 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !45, !taffo.info !54

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %conv5 = sitofp i32 %5 to float, !taffo.initweight !43, !taffo.info !54
  %6 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div = fdiv float %conv5, %6, !taffo.initweight !43, !taffo.info !10
  %7 = load float*, float** %u1.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !43, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !45, !taffo.info !10
  %9 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add = add nsw i32 %9, 1, !taffo.initweight !43, !taffo.info !54
  %conv6 = sitofp i32 %add to float, !taffo.initweight !45, !taffo.info !54
  %10 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div7 = fdiv float %conv6, %10, !taffo.initweight !43, !taffo.info !10
  %conv8 = fpext float %div7 to double, !taffo.initweight !45, !taffo.info !10
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !9, !taffo.info !10
  %11 = load float*, float** %u2.addr, align 4
  %12 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx11 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !43, !taffo.info !10
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !45, !taffo.info !10
  %13 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add12 = add nsw i32 %13, 1, !taffo.initweight !43, !taffo.info !54
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !45, !taffo.info !54
  %14 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div14 = fdiv float %conv13, %14, !taffo.initweight !43, !taffo.info !10
  %conv15 = fpext float %div14 to double, !taffo.initweight !45, !taffo.info !10
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !9, !taffo.info !10
  %15 = load float*, float** %v1.addr, align 4
  %16 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx18 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !43, !taffo.info !10
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !45, !taffo.info !10
  %17 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add19 = add nsw i32 %17, 1, !taffo.initweight !43, !taffo.info !54
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !45, !taffo.info !54
  %18 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div21 = fdiv float %conv20, %18, !taffo.initweight !43, !taffo.info !10
  %conv22 = fpext float %div21 to double, !taffo.initweight !45, !taffo.info !10
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !9, !taffo.info !10
  %19 = load float*, float** %v2.addr, align 4
  %20 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx25 = getelementptr inbounds float, float* %19, i32 %20, !taffo.initweight !43, !taffo.info !10
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !45, !taffo.info !10
  %21 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add26 = add nsw i32 %21, 1, !taffo.initweight !43, !taffo.info !54
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !45, !taffo.info !54
  %22 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div28 = fdiv float %conv27, %22, !taffo.initweight !43, !taffo.info !10
  %conv29 = fpext float %div28 to double, !taffo.initweight !45, !taffo.info !10
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !9, !taffo.info !10
  %23 = load float*, float** %y.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx32 = getelementptr inbounds float, float* %23, i32 %24, !taffo.initweight !43, !taffo.info !10
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !45, !taffo.info !10
  %25 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add33 = add nsw i32 %25, 1, !taffo.initweight !43, !taffo.info !54
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !45, !taffo.info !54
  %26 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div35 = fdiv float %conv34, %26, !taffo.initweight !43, !taffo.info !10
  %conv36 = fpext float %div35 to double, !taffo.initweight !45, !taffo.info !10
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !9, !taffo.info !10
  %27 = load float*, float** %z.addr, align 4
  %28 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx39 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !43, !taffo.info !10
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !45, !taffo.info !10
  %29 = load float*, float** %x.addr, align 4
  %30 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx40 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !45, !taffo.info !10
  %31 = load float*, float** %w.addr, align 4
  %32 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx41 = getelementptr inbounds float, float* %31, i32 %32, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !45, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %34 = load i32, i32* %n.addr, align 4
  %cmp43 = icmp slt i32 %33, %34, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !45, !taffo.info !54

for.body45:                                       ; preds = %for.cond42
  %35 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %36 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %mul = mul nsw i32 %35, %36, !taffo.initweight !43, !taffo.info !54
  %37 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %37, !taffo.initweight !45, !taffo.info !54
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !46, !taffo.info !54
  %38 = load i32, i32* %n.addr, align 4
  %conv47 = sitofp i32 %38 to float
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !9, !taffo.info !54
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %40 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %39, i32 %40, !taffo.initweight !43, !taffo.info !10
  %41 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %41, !taffo.initweight !43, !taffo.info !10
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !45, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %42 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %inc = add nsw i32 %42, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond42, !llvm.loop !56

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %inc52 = add nsw i32 %43, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc52, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond, !llvm.loop !57

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !51 !taffo.equivalentChild !58 !taffo.funinfo !53 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [20 x float]*, align 4
  %u1.addr = alloca float*, align 4
  %v1.addr = alloca float*, align 4
  %u2.addr = alloca float*, align 4
  %v2.addr = alloca float*, align 4
  %w.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %y.addr = alloca float*, align 4
  %z.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 4
  store float* %u1, float** %u1.addr, align 4
  store float* %v1, float** %v1.addr, align 4
  store float* %u2, float** %u2.addr, align 4
  store float* %v2, float** %v2.addr, align 4
  store float* %w, float** %w.addr, align 4
  store float* %x, float** %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  store float* %z, float** %z.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i32 %5
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %6
  %7 = load float, float* %arrayidx4, align 4
  %8 = load float*, float** %u1.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %8, i32 %9
  %10 = load float, float* %arrayidx5, align 4
  %11 = load float*, float** %v1.addr, align 4
  %12 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %11, i32 %12
  %13 = load float, float* %arrayidx6, align 4
  %mul = fmul float %10, %13
  %add = fadd float %7, %mul
  %14 = load float*, float** %u2.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds float, float* %14, i32 %15
  %16 = load float, float* %arrayidx7, align 4
  %17 = load float*, float** %v2.addr, align 4
  %18 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %17, i32 %18
  %19 = load float, float* %arrayidx8, align 4
  %mul9 = fmul float %16, %19
  %add10 = fadd float %add, %mul9
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %22
  store float %add10, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !59

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !60

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %29 = load float*, float** %x.addr, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %29, i32 %30
  %31 = load float, float* %arrayidx22, align 4
  %32 = load float, float* %beta.addr, align 4
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %34 = load i32, i32* %j, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %33, i32 %34
  %35 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %35
  %36 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %32, %36
  %37 = load float*, float** %y.addr, align 4
  %38 = load i32, i32* %j, align 4
  %arrayidx26 = getelementptr inbounds float, float* %37, i32 %38
  %39 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %mul25, %39
  %add28 = fadd float %31, %mul27
  %40 = load float*, float** %x.addr, align 4
  %41 = load i32, i32* %i, align 4
  %arrayidx29 = getelementptr inbounds float, float* %40, i32 %41
  store float %add28, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond19, !llvm.loop !61

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond16, !llvm.loop !62

for.end35:                                        ; preds = %for.cond16
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %46 = load float*, float** %x.addr, align 4
  %47 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds float, float* %46, i32 %47
  %48 = load float, float* %arrayidx39, align 4
  %49 = load float*, float** %z.addr, align 4
  %50 = load i32, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds float, float* %49, i32 %50
  %51 = load float, float* %arrayidx40, align 4
  %add41 = fadd float %48, %51
  %52 = load float*, float** %x.addr, align 4
  %53 = load i32, i32* %i, align 4
  %arrayidx42 = getelementptr inbounds float, float* %52, i32 %53
  store float %add41, float* %arrayidx42, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %54 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond36, !llvm.loop !63

for.end45:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %57, %58
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %59 = load float*, float** %w.addr, align 4
  %60 = load i32, i32* %i, align 4
  %arrayidx52 = getelementptr inbounds float, float* %59, i32 %60
  %61 = load float, float* %arrayidx52, align 4
  %62 = load float, float* %alpha.addr, align 4
  %63 = load [20 x float]*, [20 x float]** %A.addr, align 4
  %64 = load i32, i32* %i, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %63, i32 %64
  %65 = load i32, i32* %j, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %65
  %66 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %62, %66
  %67 = load float*, float** %x.addr, align 4
  %68 = load i32, i32* %j, align 4
  %arrayidx56 = getelementptr inbounds float, float* %67, i32 %68
  %69 = load float, float* %arrayidx56, align 4
  %mul57 = fmul float %mul55, %69
  %add58 = fadd float %61, %mul57
  %70 = load float*, float** %w.addr, align 4
  %71 = load i32, i32* %i, align 4
  %arrayidx59 = getelementptr inbounds float, float* %70, i32 %71
  store float %add58, float* %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %72 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond49, !llvm.loop !64

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %73 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %73, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond46, !llvm.loop !65

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !66 !taffo.funinfo !67 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca float*, align 4
  %x.addr = alloca float*, align 4
  %A.addr = alloca [20 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %w, float** %w.addr, align 4
  store float* %x, float** %x.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !68

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !69

for.end9:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %15, %16
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %17 = load i32, i32* %i, align 4
  %rem14 = srem i32 %17, 20
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %20 = load float*, float** %x.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds float, float* %20, i32 %21
  %22 = load float, float* %arrayidx20, align 4
  %conv21 = fpext float %22 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21)
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %23 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond10, !llvm.loop !70

for.end25:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %26 = load i32, i32* %i, align 4
  %rem30 = srem i32 %26, 20
  %cmp31 = icmp eq i32 %rem30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %29 = load float*, float** %w.addr, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx36 = getelementptr inbounds float, float* %29, i32 %30
  %31 = load float, float* %arrayidx36, align 4
  %conv37 = fpext float %31 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37)
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %32 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond26, !llvm.loop !71

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !15 !taffo.funinfo !16 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.1(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !72 !taffo.sourceFunction !44 !taffo.funinfo !73 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !45, !taffo.info !18
  %beta.addr = alloca float, align 4, !taffo.initweight !45, !taffo.info !20
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !45, !taffo.info !22
  %u1.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !24
  %v1.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !26
  %u2.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !28
  %v2.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !30
  %w.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !32
  %x.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !35
  %y.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !37
  %z.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !39
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !46, !taffo.info !18
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !46, !taffo.info !20
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  store float* %u1, float** %u1.addr, align 4, !taffo.initweight !46, !taffo.info !24
  store float* %v1, float** %v1.addr, align 4, !taffo.initweight !46, !taffo.info !26
  store float* %u2, float** %u2.addr, align 4, !taffo.initweight !46, !taffo.info !28
  store float* %v2, float** %v2.addr, align 4, !taffo.initweight !46, !taffo.info !30
  store float* %w, float** %w.addr, align 4, !taffo.initweight !46, !taffo.info !32
  store float* %x, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  store float* %y, float** %y.addr, align 4, !taffo.initweight !46, !taffo.info !37
  store float* %z, float** %z.addr, align 4, !taffo.initweight !46, !taffo.info !39
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i32 %5, !taffo.initweight !9, !taffo.info !22
  %6 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %6, !taffo.initweight !74, !taffo.info !22
  %7 = load float, float* %arrayidx4, align 4, !taffo.initweight !75, !taffo.info !22
  %8 = load float*, float** %u1.addr, align 4, !taffo.initweight !46, !taffo.info !24
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %8, i32 %9, !taffo.initweight !9, !taffo.info !24
  %10 = load float, float* %arrayidx5, align 4, !taffo.initweight !74, !taffo.info !24
  %11 = load float*, float** %v1.addr, align 4, !taffo.initweight !46, !taffo.info !26
  %12 = load i32, i32* %j, align 4
  %arrayidx6 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !9, !taffo.info !26
  %13 = load float, float* %arrayidx6, align 4, !taffo.initweight !74, !taffo.info !26
  %mul = fmul float %10, %13, !taffo.initweight !75, !taffo.info !24
  %add = fadd float %7, %mul, !taffo.initweight !76, !taffo.info !22
  %14 = load float*, float** %u2.addr, align 4, !taffo.initweight !46, !taffo.info !28
  %15 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds float, float* %14, i32 %15, !taffo.initweight !9, !taffo.info !28
  %16 = load float, float* %arrayidx7, align 4, !taffo.initweight !74, !taffo.info !28
  %17 = load float*, float** %v2.addr, align 4, !taffo.initweight !46, !taffo.info !30
  %18 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds float, float* %17, i32 %18, !taffo.initweight !9, !taffo.info !30
  %19 = load float, float* %arrayidx8, align 4, !taffo.initweight !74, !taffo.info !30
  %mul9 = fmul float %16, %19, !taffo.initweight !75, !taffo.info !28
  %add10 = fadd float %add, %mul9, !taffo.initweight !76, !taffo.info !28
  %20 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  %21 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %20, i32 %21, !taffo.initweight !9, !taffo.info !22
  %22 = load i32, i32* %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %22, !taffo.initweight !74, !taffo.info !22
  store float %add10, float* %arrayidx12, align 4, !taffo.initweight !75, !taffo.info !22
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !77

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !78

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %29 = load float*, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  %30 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !9, !taffo.info !35
  %31 = load float, float* %arrayidx22, align 4, !taffo.initweight !74, !taffo.info !35
  %32 = load float, float* %beta.addr, align 4, !taffo.initweight !46, !taffo.info !20
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  %34 = load i32, i32* %j, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %33, i32 %34, !taffo.initweight !9, !taffo.info !22
  %35 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %35, !taffo.initweight !74, !taffo.info !22
  %36 = load float, float* %arrayidx24, align 4, !taffo.initweight !75, !taffo.info !22
  %mul25 = fmul float %32, %36, !taffo.initweight !9, !taffo.info !20
  %37 = load float*, float** %y.addr, align 4, !taffo.initweight !46, !taffo.info !37
  %38 = load i32, i32* %j, align 4
  %arrayidx26 = getelementptr inbounds float, float* %37, i32 %38, !taffo.initweight !9, !taffo.info !37
  %39 = load float, float* %arrayidx26, align 4, !taffo.initweight !74, !taffo.info !37
  %mul27 = fmul float %mul25, %39, !taffo.initweight !74, !taffo.info !20
  %add28 = fadd float %31, %mul27, !taffo.initweight !75, !taffo.info !20
  %40 = load float*, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  %41 = load i32, i32* %i, align 4
  %arrayidx29 = getelementptr inbounds float, float* %40, i32 %41, !taffo.initweight !9, !taffo.info !35
  store float %add28, float* %arrayidx29, align 4, !taffo.initweight !74, !taffo.info !35
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond19, !llvm.loop !79

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond16, !llvm.loop !80

for.end35:                                        ; preds = %for.cond16
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %46 = load float*, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  %47 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds float, float* %46, i32 %47, !taffo.initweight !9, !taffo.info !35
  %48 = load float, float* %arrayidx39, align 4, !taffo.initweight !74, !taffo.info !35
  %49 = load float*, float** %z.addr, align 4, !taffo.initweight !46, !taffo.info !39
  %50 = load i32, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds float, float* %49, i32 %50, !taffo.initweight !9, !taffo.info !39
  %51 = load float, float* %arrayidx40, align 4, !taffo.initweight !74, !taffo.info !39
  %add41 = fadd float %48, %51, !taffo.initweight !75, !taffo.info !35
  %52 = load float*, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  %53 = load i32, i32* %i, align 4
  %arrayidx42 = getelementptr inbounds float, float* %52, i32 %53, !taffo.initweight !9, !taffo.info !35
  store float %add41, float* %arrayidx42, align 4, !taffo.initweight !74, !taffo.info !35
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %54 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond36, !llvm.loop !81

for.end45:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %57, %58
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %59 = load float*, float** %w.addr, align 4, !taffo.initweight !46, !taffo.info !32
  %60 = load i32, i32* %i, align 4
  %arrayidx52 = getelementptr inbounds float, float* %59, i32 %60, !taffo.initweight !9, !taffo.info !32
  %61 = load float, float* %arrayidx52, align 4, !taffo.initweight !74, !taffo.info !32
  %62 = load float, float* %alpha.addr, align 4, !taffo.initweight !46, !taffo.info !18
  %63 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  %64 = load i32, i32* %i, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %63, i32 %64, !taffo.initweight !9, !taffo.info !22
  %65 = load i32, i32* %j, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %65, !taffo.initweight !74, !taffo.info !22
  %66 = load float, float* %arrayidx54, align 4, !taffo.initweight !75, !taffo.info !22
  %mul55 = fmul float %62, %66, !taffo.initweight !9, !taffo.info !18
  %67 = load float*, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  %68 = load i32, i32* %j, align 4
  %arrayidx56 = getelementptr inbounds float, float* %67, i32 %68, !taffo.initweight !9, !taffo.info !35
  %69 = load float, float* %arrayidx56, align 4, !taffo.initweight !74, !taffo.info !35
  %mul57 = fmul float %mul55, %69, !taffo.initweight !74, !taffo.info !18
  %add58 = fadd float %61, %mul57, !taffo.initweight !75, !taffo.info !18
  %70 = load float*, float** %w.addr, align 4, !taffo.initweight !46, !taffo.info !32
  %71 = load i32, i32* %i, align 4
  %arrayidx59 = getelementptr inbounds float, float* %70, i32 %71, !taffo.initweight !9, !taffo.info !32
  store float %add58, float* %arrayidx59, align 4, !taffo.initweight !74, !taffo.info !32
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %72 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond49, !llvm.loop !82

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %73 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %73, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond46, !llvm.loop !83

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !84 !taffo.sourceFunction !42 !taffo.funinfo !73 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !43, !taffo.info !18
  %beta.addr = alloca float*, align 4, !taffo.initweight !43, !taffo.info !20
  %A.addr = alloca [20 x float]*, align 4, !taffo.initweight !45, !taffo.info !22
  %u1.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !24
  %v1.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !26
  %u2.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !28
  %v2.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !30
  %w.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !32
  %x.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !35
  %y.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !37
  %z.addr = alloca float*, align 4, !taffo.initweight !45, !taffo.info !39
  %i = alloca i32, align 4, !taffo.initweight !17, !taffo.info !54
  %j = alloca i32, align 4, !taffo.initweight !17, !taffo.info !54
  %fn = alloca float, align 4, !taffo.initweight !17, !taffo.info !10
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !45, !taffo.info !18
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !45, !taffo.info !20
  store [20 x float]* %A, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  store float* %u1, float** %u1.addr, align 4, !taffo.initweight !46, !taffo.info !24
  store float* %v1, float** %v1.addr, align 4, !taffo.initweight !46, !taffo.info !26
  store float* %u2, float** %u2.addr, align 4, !taffo.initweight !46, !taffo.info !28
  store float* %v2, float** %v2.addr, align 4, !taffo.initweight !46, !taffo.info !30
  store float* %w, float** %w.addr, align 4, !taffo.initweight !46, !taffo.info !32
  store float* %x, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  store float* %y, float** %y.addr, align 4, !taffo.initweight !46, !taffo.info !37
  store float* %z, float** %z.addr, align 4, !taffo.initweight !46, !taffo.info !39
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !41, !taffo.info !54
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !41, !taffo.info !54
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !45, !taffo.info !18
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !46, !taffo.info !18
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !45, !taffo.info !20
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !46, !taffo.info !20
  %fn3 = bitcast float* %fn to i8*, !taffo.initweight !41, !taffo.info !10
  %2 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %2 to float, !taffo.initweight !43, !taffo.info !10
  store float %conv, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  store i32 0, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %3 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !45, !taffo.info !54

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %conv5 = sitofp i32 %5 to float, !taffo.initweight !43, !taffo.info !54
  %6 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div = fdiv float %conv5, %6, !taffo.initweight !43, !taffo.info !10
  %7 = load float*, float** %u1.addr, align 4, !taffo.initweight !46, !taffo.info !24
  %8 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !43, !taffo.info !10
  store float %div, float* %arrayidx, align 4, !taffo.initweight !45, !taffo.info !10
  %9 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add = add nsw i32 %9, 1, !taffo.initweight !43, !taffo.info !54
  %conv6 = sitofp i32 %add to float, !taffo.initweight !45, !taffo.info !54
  %10 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div7 = fdiv float %conv6, %10, !taffo.initweight !43, !taffo.info !10
  %conv8 = fpext float %div7 to double, !taffo.initweight !45, !taffo.info !10
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !9, !taffo.info !10
  %11 = load float*, float** %u2.addr, align 4, !taffo.initweight !46, !taffo.info !28
  %12 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx11 = getelementptr inbounds float, float* %11, i32 %12, !taffo.initweight !43, !taffo.info !10
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !45, !taffo.info !10
  %13 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add12 = add nsw i32 %13, 1, !taffo.initweight !43, !taffo.info !54
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !45, !taffo.info !54
  %14 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div14 = fdiv float %conv13, %14, !taffo.initweight !43, !taffo.info !10
  %conv15 = fpext float %div14 to double, !taffo.initweight !45, !taffo.info !10
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !9, !taffo.info !10
  %15 = load float*, float** %v1.addr, align 4, !taffo.initweight !46, !taffo.info !26
  %16 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx18 = getelementptr inbounds float, float* %15, i32 %16, !taffo.initweight !43, !taffo.info !10
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !45, !taffo.info !10
  %17 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add19 = add nsw i32 %17, 1, !taffo.initweight !43, !taffo.info !54
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !45, !taffo.info !54
  %18 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div21 = fdiv float %conv20, %18, !taffo.initweight !43, !taffo.info !10
  %conv22 = fpext float %div21 to double, !taffo.initweight !45, !taffo.info !10
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !9, !taffo.info !10
  %19 = load float*, float** %v2.addr, align 4, !taffo.initweight !46, !taffo.info !30
  %20 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx25 = getelementptr inbounds float, float* %19, i32 %20, !taffo.initweight !43, !taffo.info !10
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !45, !taffo.info !10
  %21 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add26 = add nsw i32 %21, 1, !taffo.initweight !43, !taffo.info !54
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !45, !taffo.info !54
  %22 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div28 = fdiv float %conv27, %22, !taffo.initweight !43, !taffo.info !10
  %conv29 = fpext float %div28 to double, !taffo.initweight !45, !taffo.info !10
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !9, !taffo.info !10
  %23 = load float*, float** %y.addr, align 4, !taffo.initweight !46, !taffo.info !37
  %24 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx32 = getelementptr inbounds float, float* %23, i32 %24, !taffo.initweight !43, !taffo.info !10
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !45, !taffo.info !10
  %25 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %add33 = add nsw i32 %25, 1, !taffo.initweight !43, !taffo.info !54
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !45, !taffo.info !54
  %26 = load float, float* %fn, align 4, !taffo.initweight !41, !taffo.info !10
  %div35 = fdiv float %conv34, %26, !taffo.initweight !43, !taffo.info !10
  %conv36 = fpext float %div35 to double, !taffo.initweight !45, !taffo.info !10
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !46, !taffo.info !10
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !9, !taffo.info !10
  %27 = load float*, float** %z.addr, align 4, !taffo.initweight !46, !taffo.info !39
  %28 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx39 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !43, !taffo.info !10
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !45, !taffo.info !10
  %29 = load float*, float** %x.addr, align 4, !taffo.initweight !46, !taffo.info !35
  %30 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx40 = getelementptr inbounds float, float* %29, i32 %30, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !45, !taffo.info !10
  %31 = load float*, float** %w.addr, align 4, !taffo.initweight !46, !taffo.info !32
  %32 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx41 = getelementptr inbounds float, float* %31, i32 %32, !taffo.initweight !43, !taffo.info !10
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !45, !taffo.info !10
  store i32 0, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %34 = load i32, i32* %n.addr, align 4
  %cmp43 = icmp slt i32 %33, %34, !taffo.initweight !43, !taffo.info !54
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !45, !taffo.info !54

for.body45:                                       ; preds = %for.cond42
  %35 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %36 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %mul = mul nsw i32 %35, %36, !taffo.initweight !43, !taffo.info !54
  %37 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %37, !taffo.initweight !45, !taffo.info !54
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !46, !taffo.info !54
  %38 = load i32, i32* %n.addr, align 4
  %conv47 = sitofp i32 %38 to float
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !9, !taffo.info !54
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 4, !taffo.initweight !46, !taffo.info !22
  %40 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %39, i32 %40, !taffo.initweight !43, !taffo.info !10
  %41 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %41, !taffo.initweight !43, !taffo.info !10
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !45, !taffo.info !10
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %42 = load i32, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  %inc = add nsw i32 %42, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc, i32* %j, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond42, !llvm.loop !85

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %43 = load i32, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  %inc52 = add nsw i32 %43, 1, !taffo.initweight !43, !taffo.info !54
  store i32 %inc52, i32* %i, align 4, !taffo.initweight !41, !taffo.info !54
  br label %for.cond, !llvm.loop !86

for.end53:                                        ; preds = %for.cond
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
!23 = !{double 0.000000e+00, double 0x3FF1D9999999999A}
!24 = !{i1 false, !25, i1 false, i2 -1}
!25 = !{double 0.000000e+00, double 0x3FEE666666666666}
!26 = !{i1 false, !27, i1 false, i2 -1}
!27 = !{double 1.250000e-02, double 2.500000e-01}
!28 = !{i1 false, !29, i1 false, i2 -1}
!29 = !{double 2.500000e-02, double 5.000000e-01}
!30 = !{i1 false, !31, i1 false, i2 -1}
!31 = !{double 8.333000e-03, double 1.666670e-01}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double 0.000000e+00, double 0x4032341E9AF5BA2C}
!34 = !{!"w"}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 0.000000e+00, double 0x3FF21F5BE5D9E40D}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 6.250000e-03, double 1.250000e-01}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 5.556000e-03, double 1.111110e-01}
!41 = !{i32 1}
!42 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array}
!43 = !{i32 2}
!44 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver}
!45 = !{i32 3}
!46 = !{i32 4}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!50 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!51 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!52 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array.2}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = !{i1 false, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 2.000000e+01}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver.1}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!67 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!73 = !{i32 0, i1 false, i32 1, !18, i32 1, !20, i32 1, !22, i32 1, !24, i32 1, !26, i32 1, !28, i32 1, !30, i32 1, !32, i32 1, !35, i32 1, !37, i32 1, !39}
!74 = !{i32 6}
!75 = !{i32 7}
!76 = !{i32 8}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
