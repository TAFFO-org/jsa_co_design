; ModuleID = './build/bin/fixed/syr2k/8/syr2k-standard-1-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [18 x i8] c"./sources/syr2k.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [46 x i8] c"target('C') scalar(range(0.0,9.046875) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,0.9375) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,0.9) final)\00", section "llvm.metadata"
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %alpha = alloca float, align 4, !taffo.initweight !15, !taffo.info !16
  %beta = alloca float, align 4, !taffo.initweight !15, !taffo.info !18
  %C = alloca [16 x [16 x float]], align 4, !taffo.initweight !15, !taffo.info !20, !taffo.target !22
  %A = alloca [16 x [10 x float]], align 4, !taffo.initweight !15, !taffo.info !23
  %B = alloca [16 x [10 x float]], align 4, !taffo.initweight !15, !taffo.info !25
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 16, i32* %n, align 4
  store i32 10, i32* %m, align 4
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !27, !taffo.info !16
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !27, !taffo.info !18
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.initweight !27, !taffo.info !23
  %B5 = bitcast [16 x [10 x float]]* %B to i8*, !taffo.initweight !27, !taffo.info !25
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %m, align 4
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %arraydecay6 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !27, !taffo.info !23
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !27, !taffo.info !25
  call void @init_array.2(i32 noundef %0, i32 noundef %1, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.initweight !27, !taffo.info !16, !taffo.originalCall !28
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* %m, align 4
  %4 = load float, float* %alpha, align 4, !taffo.initweight !27, !taffo.info !16
  %5 = load float, float* %beta, align 4, !taffo.initweight !27, !taffo.info !18
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !27, !taffo.info !23
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !27, !taffo.info !25
  call void @kernel_syr2k.1(i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [10 x float]* noundef %arraydecay10), !taffo.initweight !29, !taffo.info !16, !taffo.originalCall !30
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %10, !taffo.initweight !27, !taffo.info !20, !taffo.target !22
  %11 = load i32, i32* %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %11, !taffo.initweight !29, !taffo.info !20, !taffo.target !22
  %12 = load float, float* %arrayidx14, align 4, !taffo.initweight !31, !taffo.info !20, !taffo.target !22
  %13 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %13
  %14 = load i32, i32* %j, align 4
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i32 0, i32 %14
  store float %12, float* %arrayidx16, align 4, !taffo.initweight !32, !taffo.info !20, !taffo.target !22
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond11, !llvm.loop !33

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end19:                                        ; preds = %for.cond
  %17 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %17, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !35 !taffo.funinfo !36 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !37 !taffo.equivalentChild !38 !taffo.funinfo !39 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4
  %beta.addr = alloca float*, align 4
  %C.addr = alloca [16 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !15, !taffo.info !42
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4
  store float* %beta, float** %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [10 x float]* %B, [10 x float]** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !27, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !27, !taffo.info !42
  %0 = load float*, float** %alpha.addr, align 4
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 4
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end18, !taffo.initweight !31, !taffo.info !40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %5 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !29, !taffo.info !42
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !31, !taffo.info !42

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %7 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %mul = mul nsw i32 %6, %7, !taffo.initweight !29, !taffo.info !40
  %add = add nsw i32 %mul, 1, !taffo.initweight !31, !taffo.info !40
  %8 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !32, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !44, !taffo.info !40
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !45, !taffo.info !40
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i32 %11, !taffo.initweight !29, !taffo.info !46
  %12 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !29, !taffo.info !46
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !31, !taffo.info !46
  %13 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %14 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %mul8 = mul nsw i32 %13, %14, !taffo.initweight !29, !taffo.info !40
  %add9 = add nsw i32 %mul8, 2, !taffo.initweight !31, !taffo.info !40
  %15 = load i32, i32* %m.addr, align 4
  %rem10 = srem i32 %add9, %15, !taffo.initweight !32, !taffo.info !40
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !44, !taffo.info !40
  %16 = load i32, i32* %m.addr, align 4
  %conv12 = sitofp i32 %16 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !45, !taffo.info !40
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %18 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %17, i32 %18, !taffo.initweight !29, !taffo.info !46
  %19 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %19, !taffo.initweight !29, !taffo.info !46
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !31, !taffo.info !46
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %inc = add nsw i32 %20, 1, !taffo.initweight !29, !taffo.info !42
  store i32 %inc, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond3, !llvm.loop !47

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc17 = add nsw i32 %21, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc17, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond, !llvm.loop !48

for.end18:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %22 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %23 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %22, %23, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.initweight !31, !taffo.info !40

for.body22:                                       ; preds = %for.cond19
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %24 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %25 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %24, %25, !taffo.initweight !29, !taffo.info !42
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.initweight !31, !taffo.info !42

for.body26:                                       ; preds = %for.cond23
  %26 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %27 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %mul27 = mul nsw i32 %26, %27, !taffo.initweight !29, !taffo.info !40
  %add28 = add nsw i32 %mul27, 3, !taffo.initweight !31, !taffo.info !40
  %28 = load i32, i32* %n.addr, align 4
  %rem29 = srem i32 %add28, %28, !taffo.initweight !32, !taffo.info !40
  %conv30 = sitofp i32 %rem29 to float, !taffo.initweight !44, !taffo.info !40
  %29 = load i32, i32* %m.addr, align 4
  %conv31 = sitofp i32 %29 to float
  %div32 = fdiv float %conv30, %conv31, !taffo.initweight !45, !taffo.info !40
  %30 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %31 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %30, i32 %31, !taffo.initweight !29, !taffo.info !46
  %32 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %32, !taffo.initweight !29, !taffo.info !46
  store float %div32, float* %arrayidx34, align 4, !taffo.initweight !31, !taffo.info !46
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %33 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %inc36 = add nsw i32 %33, 1, !taffo.initweight !29, !taffo.info !42
  store i32 %inc36, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond23, !llvm.loop !49

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %34 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc39 = add nsw i32 %34, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc39, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond19, !llvm.loop !50

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !37 !taffo.equivalentChild !51 !taffo.funinfo !39 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 4
  %A.addr = alloca [10 x float]*, align 4
  %B.addr = alloca [10 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
  store [10 x float]* %A, [10 x float]** %A.addr, align 4
  store [10 x float]* %B, [10 x float]** %B.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i32 %6
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %7
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

for.cond5:                                        ; preds = %for.inc29, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %15 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15
  %16 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %16
  %17 = load float, float* %arrayidx12, align 4
  %18 = load float, float* %alpha.addr, align 4
  %mul13 = fmul float %17, %18
  %19 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %20 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %19, i32 %20
  %21 = load i32, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %21
  %22 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %22
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4
  %24 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24
  %25 = load i32, i32* %k, align 4
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %25
  %26 = load float, float* %arrayidx18, align 4
  %27 = load float, float* %alpha.addr, align 4
  %mul19 = fmul float %26, %27
  %28 = load [10 x float]*, [10 x float]** %A.addr, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %28, i32 %29
  %30 = load i32, i32* %k, align 4
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %30
  %31 = load float, float* %arrayidx21, align 4
  %mul22 = fmul float %mul19, %31
  %add = fadd float %mul16, %mul22
  %32 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %32, i32 %33
  %34 = load i32, i32* %j, align 4
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %34
  %35 = load float, float* %arrayidx24, align 4
  %add25 = fadd float %35, %add
  store float %add25, float* %arrayidx24, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %36 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond8, !llvm.loop !53

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %37 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond5, !llvm.loop !54

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %38 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond, !llvm.loop !55

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %n.addr = alloca i32, align 4
  %C.addr = alloca [16 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 4
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load [16 x float]*, [16 x float]** %C.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !56

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.1(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !58 !taffo.sourceFunction !30 !taffo.funinfo !59 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4, !taffo.initweight !31, !taffo.info !16
  %beta.addr = alloca float, align 4, !taffo.initweight !31, !taffo.info !18
  %C.addr = alloca [16 x float]*, align 4, !taffo.initweight !31, !taffo.info !20
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !31, !taffo.info !23
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !31, !taffo.info !25
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float %alpha, float* %alpha.addr, align 4, !taffo.initweight !32, !taffo.info !16
  store float %beta, float* %beta.addr, align 4, !taffo.initweight !32, !taffo.info !18
  store [16 x float]* %C, [16 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float, float* %beta.addr, align 4, !taffo.initweight !32, !taffo.info !18
  %5 = load [16 x float]*, [16 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %5, i32 %6, !taffo.initweight !44, !taffo.info !20
  %7 = load i32, i32* %j, align 4
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %7, !taffo.initweight !45, !taffo.info !20
  %8 = load float, float* %arrayidx4, align 4, !taffo.initweight !60, !taffo.info !20
  %mul = fmul float %8, %4, !taffo.initweight !44, !taffo.info !18
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !45, !taffo.info !18
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !61

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  %15 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %14, i32 %15, !taffo.initweight !44, !taffo.info !23
  %16 = load i32, i32* %k, align 4
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %16, !taffo.initweight !45, !taffo.info !23
  %17 = load float, float* %arrayidx12, align 4, !taffo.initweight !60, !taffo.info !23
  %18 = load float, float* %alpha.addr, align 4, !taffo.initweight !32, !taffo.info !16
  %mul13 = fmul float %17, %18, !taffo.initweight !44, !taffo.info !16
  %19 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %20 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %19, i32 %20, !taffo.initweight !44, !taffo.info !25
  %21 = load i32, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %21, !taffo.initweight !45, !taffo.info !25
  %22 = load float, float* %arrayidx15, align 4, !taffo.initweight !60, !taffo.info !25
  %mul16 = fmul float %mul13, %22, !taffo.initweight !45, !taffo.info !16
  %23 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %24 = load i32, i32* %j, align 4
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %23, i32 %24, !taffo.initweight !44, !taffo.info !25
  %25 = load i32, i32* %k, align 4
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %25, !taffo.initweight !45, !taffo.info !25
  %26 = load float, float* %arrayidx18, align 4, !taffo.initweight !60, !taffo.info !25
  %27 = load float, float* %alpha.addr, align 4, !taffo.initweight !32, !taffo.info !16
  %mul19 = fmul float %26, %27, !taffo.initweight !44, !taffo.info !16
  %28 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  %29 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %28, i32 %29, !taffo.initweight !44, !taffo.info !23
  %30 = load i32, i32* %k, align 4
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %30, !taffo.initweight !45, !taffo.info !23
  %31 = load float, float* %arrayidx21, align 4, !taffo.initweight !60, !taffo.info !23
  %mul22 = fmul float %mul19, %31, !taffo.initweight !45, !taffo.info !16
  %add = fadd float %mul16, %mul22, !taffo.initweight !60, !taffo.info !16
  %32 = load [16 x float]*, [16 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  %33 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %32, i32 %33, !taffo.initweight !44, !taffo.info !20
  %34 = load i32, i32* %j, align 4
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %34, !taffo.initweight !45, !taffo.info !20
  %35 = load float, float* %arrayidx24, align 4, !taffo.initweight !60, !taffo.info !20
  %add25 = fadd float %35, %add, !taffo.initweight !62, !taffo.info !16
  store float %add25, float* %arrayidx24, align 4, !taffo.initweight !60, !taffo.info !20
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %36 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond8, !llvm.loop !63

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %37 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond5, !llvm.loop !64

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %38 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond, !llvm.loop !65

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !66 !taffo.sourceFunction !28 !taffo.funinfo !59 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 4, !taffo.initweight !29, !taffo.info !16
  %beta.addr = alloca float*, align 4, !taffo.initweight !29, !taffo.info !18
  %C.addr = alloca [16 x float]*, align 4, !taffo.initweight !31, !taffo.info !20
  %A.addr = alloca [10 x float]*, align 4, !taffo.initweight !31, !taffo.info !23
  %B.addr = alloca [10 x float]*, align 4, !taffo.initweight !31, !taffo.info !25
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !40
  %j = alloca i32, align 4, !taffo.initweight !15, !taffo.info !42
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %alpha, float** %alpha.addr, align 4, !taffo.initweight !31, !taffo.info !16
  store float* %beta, float** %beta.addr, align 4, !taffo.initweight !31, !taffo.info !18
  store [16 x float]* %C, [16 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  store [10 x float]* %A, [10 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  store [10 x float]* %B, [10 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !27, !taffo.info !40
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !27, !taffo.info !42
  %0 = load float*, float** %alpha.addr, align 4, !taffo.initweight !31, !taffo.info !16
  store float 1.500000e+00, float* %0, align 4, !taffo.initweight !32, !taffo.info !16
  %1 = load float*, float** %beta.addr, align 4, !taffo.initweight !31, !taffo.info !18
  store float 0x3FF3333340000000, float* %1, align 4, !taffo.initweight !32, !taffo.info !18
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end18, !taffo.initweight !31, !taffo.info !40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %5 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %4, %5, !taffo.initweight !29, !taffo.info !42
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !31, !taffo.info !42

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %7 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %mul = mul nsw i32 %6, %7, !taffo.initweight !29, !taffo.info !40
  %add = add nsw i32 %mul, 1, !taffo.initweight !31, !taffo.info !40
  %8 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %add, %8, !taffo.initweight !32, !taffo.info !40
  %conv = sitofp i32 %rem to float, !taffo.initweight !44, !taffo.info !40
  %9 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %9 to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !45, !taffo.info !40
  %10 = load [10 x float]*, [10 x float]** %A.addr, align 4, !taffo.initweight !32, !taffo.info !23
  %11 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %10, i32 %11, !taffo.initweight !29, !taffo.info !46
  %12 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %12, !taffo.initweight !29, !taffo.info !46
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !31, !taffo.info !46
  %13 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %14 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %mul8 = mul nsw i32 %13, %14, !taffo.initweight !29, !taffo.info !40
  %add9 = add nsw i32 %mul8, 2, !taffo.initweight !31, !taffo.info !40
  %15 = load i32, i32* %m.addr, align 4
  %rem10 = srem i32 %add9, %15, !taffo.initweight !32, !taffo.info !40
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !44, !taffo.info !40
  %16 = load i32, i32* %m.addr, align 4
  %conv12 = sitofp i32 %16 to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !45, !taffo.info !40
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 4, !taffo.initweight !32, !taffo.info !25
  %18 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %17, i32 %18, !taffo.initweight !29, !taffo.info !46
  %19 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %19, !taffo.initweight !29, !taffo.info !46
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !31, !taffo.info !46
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %inc = add nsw i32 %20, 1, !taffo.initweight !29, !taffo.info !42
  store i32 %inc, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond3, !llvm.loop !67

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc17 = add nsw i32 %21, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc17, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond, !llvm.loop !68

for.end18:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %22 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %23 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %22, %23, !taffo.initweight !29, !taffo.info !40
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.initweight !31, !taffo.info !40

for.body22:                                       ; preds = %for.cond19
  store i32 0, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %24 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %25 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %24, %25, !taffo.initweight !29, !taffo.info !42
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.initweight !31, !taffo.info !42

for.body26:                                       ; preds = %for.cond23
  %26 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %27 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %mul27 = mul nsw i32 %26, %27, !taffo.initweight !29, !taffo.info !40
  %add28 = add nsw i32 %mul27, 3, !taffo.initweight !31, !taffo.info !40
  %28 = load i32, i32* %n.addr, align 4
  %rem29 = srem i32 %add28, %28, !taffo.initweight !32, !taffo.info !40
  %conv30 = sitofp i32 %rem29 to float, !taffo.initweight !44, !taffo.info !40
  %29 = load i32, i32* %m.addr, align 4
  %conv31 = sitofp i32 %29 to float
  %div32 = fdiv float %conv30, %conv31, !taffo.initweight !45, !taffo.info !40
  %30 = load [16 x float]*, [16 x float]** %C.addr, align 4, !taffo.initweight !32, !taffo.info !20
  %31 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %30, i32 %31, !taffo.initweight !29, !taffo.info !46
  %32 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %32, !taffo.initweight !29, !taffo.info !46
  store float %div32, float* %arrayidx34, align 4, !taffo.initweight !31, !taffo.info !46
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %33 = load i32, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  %inc36 = add nsw i32 %33, 1, !taffo.initweight !29, !taffo.info !42
  store i32 %inc36, i32* %j, align 4, !taffo.initweight !27, !taffo.info !42
  br label %for.cond23, !llvm.loop !69

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %34 = load i32, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  %inc39 = add nsw i32 %34, 1, !taffo.initweight !29, !taffo.info !40
  store i32 %inc39, i32* %i, align 4, !taffo.initweight !27, !taffo.info !40
  br label %for.cond19, !llvm.loop !70

for.end40:                                        ; preds = %for.cond19
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
!21 = !{double 0.000000e+00, double 0x4022180000000000}
!22 = !{!"C"}
!23 = !{i1 false, !24, i1 false, i2 -1}
!24 = !{double 0.000000e+00, double 9.375000e-01}
!25 = !{i1 false, !26, i1 false, i2 -1}
!26 = !{double 0.000000e+00, double 9.000000e-01}
!27 = !{i32 1}
!28 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array}
!29 = !{i32 2}
!30 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k}
!31 = !{i32 3}
!32 = !{i32 4}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array.2}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = !{i1 false, !41, i1 false, i2 1}
!41 = !{double 0.000000e+00, double 1.600000e+01}
!42 = !{i1 false, !43, i1 false, i2 1}
!43 = !{double 0.000000e+00, double 1.000000e+01}
!44 = !{i32 5}
!45 = !{i32 6}
!46 = !{i1 false, i1 false, i1 false, i2 1}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k.1}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!59 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !16, i32 1, !18, i32 1, !20, i32 1, !23, i32 1, !25}
!60 = !{i32 7}
!61 = distinct !{!61, !10}
!62 = !{i32 8}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
