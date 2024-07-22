; ModuleID = './build/bin/fixed/gemm/11/gemm-standard-1-fixed-11.out.ll.1.taffotmp.ll'
source_filename = "./sources/gemm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/gemm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [42 x i8] c"target('C') scalar(range(0.0,7.21) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,0.9375) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.916667) final)\00", section "llvm.metadata"
@C_float = dso_local global [10 x [12 x float]] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
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
define dso_local void @timer_start() #0 !taffo.initweight !11 !taffo.funinfo !11 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !11 !taffo.funinfo !11 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.start !12 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !15, !taffo.info !16
  %beta = alloca float, align 4, !taffo.initweight !15, !taffo.info !18
  %C = alloca [10 x [12 x float]], align 4, !taffo.initweight !15, !taffo.info !20, !taffo.target !22
  %A = alloca [10 x [16 x float]], align 4, !taffo.initweight !15, !taffo.info !23
  %B = alloca [16 x [12 x float]], align 4, !taffo.initweight !15, !taffo.info !25
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 10, i32* %ni, align 4
  store i32 12, i32* %nj, align 4
  store i32 16, i32* %nk, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !27, !taffo.info !16
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !27, !taffo.info !18
  %C3 = bitcast [10 x [12 x float]]* %C to i8*, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %A4 = bitcast [10 x [16 x float]]* %A to i8*, !taffo.initweight !27, !taffo.info !23
  %B5 = bitcast [16 x [12 x float]]* %B to i8*, !taffo.initweight !27, !taffo.info !25
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %arraydecay = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !27, !taffo.info !23
  %arraydecay7 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.initweight !27, !taffo.info !25
  call void @init_array.2(i32 noundef %0, i32 noundef %1, i32 noundef %2, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay6, [12 x float]* noundef %arraydecay7), !taffo.initweight !27, !taffo.info !16, !taffo.originalCall !28
  call void @timer_start()
  %3 = load i32, i32* %ni, align 4
  %4 = load i32, i32* %nj, align 4
  %5 = load i32, i32* %nk, align 4
  %6 = load float, float* %alpha, align 4, !taffo.initweight !27, !taffo.info !16
  %7 = load float, float* %beta, align 4, !taffo.initweight !27, !taffo.info !18
  %arraydecay8 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %arraydecay9 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !27, !taffo.info !23
  %arraydecay10 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.initweight !27, !taffo.info !25
  call void @kernel_gemm.1(i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, [12 x float]* noundef %arraydecay8, [16 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10), !taffo.initweight !29, !taffo.info !16, !taffo.originalCall !30
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %nj, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %12 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 %12, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %13 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %13, !taffo.initweight !29, !taffo.info !20, !taffo.target !22
  %14 = load float, float* %arrayidx14, align 4, !taffo.initweight !31, !taffo.info !20, !taffo.target !22
  %15 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 %15
  %16 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx15, i32 0, i32 %16
  store float %14, float* %arrayidx16, align 4, !taffo.initweight !32, !taffo.info !20, !taffo.target !22
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond11, !llvm.loop !33

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end19:                                        ; preds = %for.cond
  %19 = load i32, i32* %ni, align 4
  %20 = load i32, i32* %nj, align 4
  call void @print_array(i32 noundef %19, i32 noundef %20, [12 x float]* noundef getelementptr inbounds ([10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !35 !taffo.funinfo !36 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !37 !taffo.equivalentChild !38 !taffo.funinfo !39 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %C.addr = alloca [12 x float]*, align 4
  %A.addr = alloca [16 x float]*, align 4
  %B.addr = alloca [12 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !15, !taffo.info !40
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [12 x float]* %C, [12 x float]** %C.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 4
  store [12 x float]* %B, [12 x float]** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !27, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !27, !taffo.info !40
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !31, !taffo.info !40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %5 = load i32, i32* %nj.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !31, !taffo.info !40

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %7 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %mul = mul nsw i32 %6, %7, !taffo.initweight !29, !taffo.info !40
  %add = add nsw i32 %mul, 1, !taffo.initweight !31, !taffo.info !40
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !32, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !42, !taffo.info !40
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !43, !taffo.info !40
  %10 = load [12 x float]*, [12 x float]** %C.addr, align 4
  %11 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !29, !taffo.info !44
  %12 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !29, !taffo.info !44
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !31, !taffo.info !44
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %inc = add nsw i32 %13, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond3, !llvm.loop !45

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc9 = add nsw i32 %14, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc9, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond, !llvm.loop !46

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %16 = load i32, i32* %ni.addr, align 4
  %cmp12 = icmp slt i32 %15, %16, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !31, !taffo.info !40

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %18 = load i32, i32* %nk.addr, align 4
  %cmp16 = icmp slt i32 %17, %18, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !31, !taffo.info !40

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %20 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %add19 = add nsw i32 %20, 1, !taffo.initweight !29, !taffo.info !40
  %mul20 = mul nsw i32 %19, %add19, !taffo.initweight !29, !taffo.info !40
  %21 = load i32, i32* %nk.addr, align 4
  %rem21 = srem i32 %mul20, %21, !taffo.initweight !31, !taffo.info !40
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !32, !taffo.info !40
  %22 = load i32, i32* %nk.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !42, !taffo.info !40
  %23 = load [16 x float]*, [16 x float]** %A.addr, align 4
  %24 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %23, i32 %24, !taffo.initweight !29, !taffo.info !44
  %25 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %25, !taffo.initweight !29, !taffo.info !44
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !31, !taffo.info !44
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %inc28 = add nsw i32 %26, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc28, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond15, !llvm.loop !47

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc31 = add nsw i32 %27, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc31, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond11, !llvm.loop !48

for.end32:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %28 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %29 = load i32, i32* %nk.addr, align 4
  %cmp34 = icmp slt i32 %28, %29, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.initweight !31, !taffo.info !40

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %30 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %31 = load i32, i32* %nj.addr, align 4
  %cmp38 = icmp slt i32 %30, %31, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.initweight !31, !taffo.info !40

for.body40:                                       ; preds = %for.cond37
  %32 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %33 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %add41 = add nsw i32 %33, 2, !taffo.initweight !29, !taffo.info !40
  %mul42 = mul nsw i32 %32, %add41, !taffo.initweight !29, !taffo.info !40
  %34 = load i32, i32* %nj.addr, align 4
  %rem43 = srem i32 %mul42, %34, !taffo.initweight !31, !taffo.info !40
  %conv44 = sitofp i32 %rem43 to float, !taffo.initweight !32, !taffo.info !40
  %35 = load i32, i32* %nj.addr, align 4
  %conv45 = sitofp i32 %35 to float
  %div46 = fdiv float %conv44, %conv45, !taffo.initweight !42, !taffo.info !40
  %36 = load [12 x float]*, [12 x float]** %B.addr, align 4
  %37 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %36, i32 %37, !taffo.initweight !29, !taffo.info !44
  %38 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx48 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx47, i32 0, i32 %38, !taffo.initweight !29, !taffo.info !44
  store float %div46, float* %arrayidx48, align 4, !taffo.initweight !31, !taffo.info !44
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %inc50 = add nsw i32 %39, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc50, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond37, !llvm.loop !49

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %40 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc53 = add nsw i32 %40, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc53, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond33, !llvm.loop !50

for.end54:                                        ; preds = %for.cond33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !37 !taffo.equivalentChild !51 !taffo.funinfo !39 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [12 x float]*, align 4
  %A.addr = alloca [16 x float]*, align 4
  %B.addr = alloca [12 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [12 x float]* %C, [12 x float]** %C.addr, align 4
  store [16 x float]* %A, [16 x float]** %A.addr, align 4
  store [12 x float]* %B, [12 x float]** %B.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [12 x float]*, [12 x float]** %C.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %5, i32 %6
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %7
  %8 = load float, float* %arrayidx4, align 4
  %mul = fmul float %8, %4
  store float %mul, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !52

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nj.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %14 = load float, float* %alpha.addr, align 4
  %15 = load [16 x float]*, [16 x float]** %A.addr, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %15, i32 %16
  %17 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %17
  %18 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %14, %18
  %19 = load [12 x float]*, [12 x float]** %B.addr, align 4
  %20 = load i32, i32* %k, align 4
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %19, i32 %20
  %21 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx14, i32 0, i32 %21
  %22 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %22
  %23 = load [12 x float]*, [12 x float]** %C.addr, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [12 x float], [12 x float]* %23, i32 %24
  %25 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx17, i32 0, i32 %25
  %26 = load float, float* %arrayidx18, align 4
  %add = fadd float %26, %mul16
  store float %add, float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %27 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond8, !llvm.loop !53

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %28 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond5, !llvm.loop !54

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !55

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nj, [12 x float]* noundef %C) #0 !taffo.initweight !56 !taffo.funinfo !57 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %C.addr = alloca [12 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [12 x float]* %C, [12 x float]** %C.addr, align 4
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
  %3 = load i32, i32* %nj.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [12 x float]*, [12 x float]** %C.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !58

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !59

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !60 !taffo.sourceFunction !30 !taffo.funinfo !61 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !31, !taffo.info !16
  %beta.addr = alloca float, align 4, !taffo.initweight !31, !taffo.info !18
  %C.addr = alloca [12 x float]*, align 4, !taffo.initweight !31, !taffo.info !20
  %A.addr = alloca [16 x float]*, align 4, !taffo.initweight !31, !taffo.info !23
  %B.addr = alloca [12 x float]*, align 4, !taffo.initweight !31, !taffo.info !25
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !32, !taffo.info !16
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !32, !taffo.info !18
  store [12 x float]* %C, [12 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  store [16 x float]* %A, [16 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  store [12 x float]* %B, [12 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4, !taffo.initweight !32, !taffo.info !18
  %5 = load [12 x float]*, [12 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %5, i32 %6, !taffo.initweight !42, !taffo.info !20
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %7, !taffo.initweight !43, !taffo.info !20
  %8 = load float, float* %arrayidx4, align 4, !taffo.initweight !62, !taffo.info !20
  %mul = fmul float %8, %4, !taffo.initweight !42, !taffo.info !18
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !43, !taffo.info !18
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !63

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %nk.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nj.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %14 = load float, float* %alpha.addr, align 4, !taffo.initweight !32, !taffo.info !16
  %15 = load [16 x float]*, [16 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  %16 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %15, i32 %16, !taffo.initweight !42, !taffo.info !23
  %17 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %17, !taffo.initweight !43, !taffo.info !23
  %18 = load float, float* %arrayidx12, align 4, !taffo.initweight !62, !taffo.info !23
  %mul13 = fmul float %14, %18, !taffo.initweight !42, !taffo.info !16
  %19 = load [12 x float]*, [12 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %20 = load i32, i32* %k, align 4
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %19, i32 %20, !taffo.initweight !42, !taffo.info !25
  %21 = load i32, i32* %j, align 4
  %arrayidx15 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !43, !taffo.info !25
  %22 = load float, float* %arrayidx15, align 4, !taffo.initweight !62, !taffo.info !25
  %mul16 = fmul float %mul13, %22, !taffo.initweight !43, !taffo.info !16
  %23 = load [12 x float]*, [12 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  %24 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [12 x float], [12 x float]* %23, i32 %24, !taffo.initweight !42, !taffo.info !20
  %25 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx17, i32 0, i32 %25, !taffo.initweight !43, !taffo.info !20
  %26 = load float, float* %arrayidx18, align 4, !taffo.initweight !62, !taffo.info !20
  %add = fadd float %26, %mul16, !taffo.initweight !62, !taffo.info !16
  store float %add, float* %arrayidx18, align 4, !taffo.initweight !62, !taffo.info !20
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %27 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond8, !llvm.loop !64

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %28 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond5, !llvm.loop !65

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !66

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !67 !taffo.sourceFunction !28 !taffo.funinfo !61 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !29, !taffo.info !16
  %beta.addr = alloca float*, align 4, !taffo.initweight !29, !taffo.info !18
  %C.addr = alloca [12 x float]*, align 4, !taffo.initweight !31, !taffo.info !20
  %A.addr = alloca [16 x float]*, align 4, !taffo.initweight !31, !taffo.info !23
  %B.addr = alloca [12 x float]*, align 4, !taffo.initweight !31, !taffo.info !25
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !15, !taffo.info !40
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !31, !taffo.info !16
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !31, !taffo.info !18
  store [12 x float]* %C, [12 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  store [16 x float]* %A, [16 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  store [12 x float]* %B, [12 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !27, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !27, !taffo.info !40
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !31, !taffo.info !16
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !32, !taffo.info !16
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !31, !taffo.info !18
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !32, !taffo.info !18
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !31, !taffo.info !40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %5 = load i32, i32* %nj.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !31, !taffo.info !40

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %7 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %mul = mul nsw i32 %6, %7, !taffo.initweight !29, !taffo.info !40
  %add = add nsw i32 %mul, 1, !taffo.initweight !31, !taffo.info !40
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !32, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !42, !taffo.info !40
  %9 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !43, !taffo.info !40
  %10 = load [12 x float]*, [12 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  %11 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %10, i32 %11, !taffo.initweight !29, !taffo.info !44
  %12 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !29, !taffo.info !44
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !31, !taffo.info !44
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %inc = add nsw i32 %13, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond3, !llvm.loop !68

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc9 = add nsw i32 %14, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc9, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond, !llvm.loop !69

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %15 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %16 = load i32, i32* %ni.addr, align 4
  %cmp12 = icmp slt i32 %15, %16, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !31, !taffo.info !40

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %17 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %18 = load i32, i32* %nk.addr, align 4
  %cmp16 = icmp slt i32 %17, %18, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !31, !taffo.info !40

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %20 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %add19 = add nsw i32 %20, 1, !taffo.initweight !29, !taffo.info !40
  %mul20 = mul nsw i32 %19, %add19, !taffo.initweight !29, !taffo.info !40
  %21 = load i32, i32* %nk.addr, align 4
  %rem21 = srem i32 %mul20, %21, !taffo.initweight !31, !taffo.info !40
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !32, !taffo.info !40
  %22 = load i32, i32* %nk.addr, align 4
  %conv23 = sitofp i32 %22 to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !42, !taffo.info !40
  %23 = load [16 x float]*, [16 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  %24 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %23, i32 %24, !taffo.initweight !29, !taffo.info !44
  %25 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %25, !taffo.initweight !29, !taffo.info !44
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !31, !taffo.info !44
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %inc28 = add nsw i32 %26, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc28, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond15, !llvm.loop !70

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc31 = add nsw i32 %27, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc31, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond11, !llvm.loop !71

for.end32:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %28 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %29 = load i32, i32* %nk.addr, align 4
  %cmp34 = icmp slt i32 %28, %29, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.initweight !31, !taffo.info !40

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %30 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %31 = load i32, i32* %nj.addr, align 4
  %cmp38 = icmp slt i32 %30, %31, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.initweight !31, !taffo.info !40

for.body40:                                       ; preds = %for.cond37
  %32 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %33 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %add41 = add nsw i32 %33, 2, !taffo.initweight !29, !taffo.info !40
  %mul42 = mul nsw i32 %32, %add41, !taffo.initweight !29, !taffo.info !40
  %34 = load i32, i32* %nj.addr, align 4
  %rem43 = srem i32 %mul42, %34, !taffo.initweight !31, !taffo.info !40
  %conv44 = sitofp i32 %rem43 to float, !taffo.initweight !32, !taffo.info !40
  %35 = load i32, i32* %nj.addr, align 4
  %conv45 = sitofp i32 %35 to float
  %div46 = fdiv float %conv44, %conv45, !taffo.initweight !42, !taffo.info !40
  %36 = load [12 x float]*, [12 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %37 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %36, i32 %37, !taffo.initweight !29, !taffo.info !44
  %38 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx48 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx47, i32 0, i32 %38, !taffo.initweight !29, !taffo.info !44
  store float %div46, float* %arrayidx48, align 4, !taffo.initweight !31, !taffo.info !44
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  %inc50 = add nsw i32 %39, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc50, i32* %j, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond37, !llvm.loop !72

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %40 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc53 = add nsw i32 %40, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc53, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond33, !llvm.loop !73

for.end54:                                        ; preds = %for.cond33
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{}
!12 = !{i1 true}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 0}
!16 = !{i1 false, !17, i1 false, i2 -1}
!17 = !{double 1.500000e+00, double 1.500000e+00}
!18 = !{i1 false, !19, i1 false, i2 -1}
!19 = !{double 1.200000e+00, double 1.200000e+00}
!20 = !{i1 false, !21, i1 false, i2 -1}
!21 = !{double 0.000000e+00, double 7.210000e+00}
!22 = !{!"C"}
!23 = !{i1 false, !24, i1 false, i2 -1}
!24 = !{double 0.000000e+00, double 9.375000e-01}
!25 = !{i1 false, !26, i1 false, i2 -1}
!26 = !{double 0.000000e+00, double 9.166670e-01}
!27 = !{i32 1}
!28 = !{void (i32, i32, i32, float*, float*, [12 x float]*, [16 x float]*, [12 x float]*)* @init_array}
!29 = !{i32 2}
!30 = !{void (i32, i32, i32, float, float, [12 x float]*, [16 x float]*, [12 x float]*)* @kernel_gemm}
!31 = !{i32 3}
!32 = !{i32 4}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{void (i32, i32, i32, float*, float*, [12 x float]*, [16 x float]*, [12 x float]*)* @init_array.2}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = !{i1 false, !41, i1 false, i2 1}
!41 = !{double 0.000000e+00, double 1.600000e+01}
!42 = !{i32 5}
!43 = !{i32 6}
!44 = !{i1 false, i1 false, i1 false, i2 1}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = !{void (i32, i32, i32, float, float, [12 x float]*, [16 x float]*, [12 x float]*)* @kernel_gemm.1}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = !{i32 -1, i32 -1, i32 -1}
!57 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = !{i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!61 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !16, i32 1, !18, i32 1, !20, i32 1, !23, i32 1, !25}
!62 = !{i32 7}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = !{i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
