; ModuleID = './build/bin/fixed/jacobi-1d/8/jacobi-1d-standard-1-fixed-8.out.ll.1.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [51 x i8] c"target('A') scalar(range(0.133333,1.066667) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(0.2,1.133333) final)\00", section "llvm.metadata"
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
  %tsteps = alloca i32, align 4
  %A = alloca [15 x float], align 4, !taffo.initweight !15, !taffo.target !16, !taffo.info !17
  %B = alloca [15 x float], align 4, !taffo.initweight !15, !taffo.info !19
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 15, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [15 x float]* %A to i8*, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %B2 = bitcast [15 x float]* %B to i8*, !taffo.initweight !21, !taffo.info !19
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !21, !taffo.info !19
  call void @init_array.2(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.initweight !22, !taffo.target !16, !taffo.info !17, !taffo.originalCall !23
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !21, !taffo.info !19
  call void @kernel_jacobi_1d.1(i32 noundef %1, i32 noundef %2, float* noundef %arraydecay4, float* noundef %arraydecay5), !taffo.initweight !22, !taffo.target !16, !taffo.info !17, !taffo.originalCall !24
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
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 %5, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !22, !taffo.target !16, !taffo.info !17
  %7 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %7
  store float %6, float* %arrayidx6, align 4, !taffo.initweight !25, !taffo.target !16, !taffo.info !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %9, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !27 !taffo.funinfo !28 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !29 !taffo.equivalentChild !30 !taffo.funinfo !31 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4
  %B.addr = alloca float*, align 4
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !32
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4
  store float* %B, float** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !21, !taffo.info !32
  store i32 0, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !25, !taffo.info !32

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %conv = sitofp i32 %2 to float, !taffo.initweight !22, !taffo.info !32
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !25, !taffo.info !32
  %3 = load i32, i32* %n.addr, align 4
  %conv2 = sitofp i32 %3 to float
  %div = fdiv float %add, %conv2, !taffo.initweight !34, !taffo.info !32
  %4 = load float*, float** %A.addr, align 4
  %5 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !22, !taffo.info !35
  store float %div, float* %arrayidx, align 4, !taffo.initweight !25, !taffo.info !35
  %6 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %conv3 = sitofp i32 %6 to float, !taffo.initweight !22, !taffo.info !32
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !25, !taffo.info !32
  %7 = load i32, i32* %n.addr, align 4
  %conv5 = sitofp i32 %7 to float
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !34, !taffo.info !32
  %8 = load float*, float** %B.addr, align 4
  %9 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx7 = getelementptr inbounds float, float* %8, i32 %9, !taffo.initweight !22, !taffo.info !35
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !25, !taffo.info !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %inc = add nsw i32 %10, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !37 !taffo.equivalentChild !38 !taffo.funinfo !39 {
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
  br label %for.cond1, !llvm.loop !40

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
  br label %for.cond11, !llvm.loop !41

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %30 = load i32, i32* %t, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %t, align 4
  br label %for.cond, !llvm.loop !42

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !13 !taffo.funinfo !14 {
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
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.1(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !44 !taffo.sourceFunction !24 !taffo.funinfo !45 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4, !taffo.initweight !25, !taffo.info !17
  %B.addr = alloca float*, align 4, !taffo.initweight !25, !taffo.info !19
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  store float* %B, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
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
  %4 = load float*, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  %5 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %arrayidx = getelementptr inbounds float, float* %4, i32 %sub4, !taffo.initweight !46, !taffo.info !17
  %6 = load float, float* %arrayidx, align 4, !taffo.initweight !47, !taffo.info !17
  %7 = load float*, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds float, float* %7, i32 %8, !taffo.initweight !46, !taffo.info !17
  %9 = load float, float* %arrayidx5, align 4, !taffo.initweight !47, !taffo.info !17
  %add = fadd float %6, %9, !taffo.initweight !48, !taffo.info !17
  %10 = load float*, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  %11 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, 1
  %arrayidx7 = getelementptr inbounds float, float* %10, i32 %add6, !taffo.initweight !46, !taffo.info !17
  %12 = load float, float* %arrayidx7, align 4, !taffo.initweight !47, !taffo.info !17
  %add8 = fadd float %add, %12, !taffo.initweight !48, !taffo.info !17
  %conv = fpext float %add8 to double, !taffo.initweight !49, !taffo.info !17
  %mul = fmul double 3.333300e-01, %conv, !taffo.initweight !50, !taffo.info !17
  %conv9 = fptrunc double %mul to float, !taffo.initweight !51, !taffo.info !17
  %13 = load float*, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
  %14 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds float, float* %13, i32 %14, !taffo.initweight !46, !taffo.info !19
  store float %conv9, float* %arrayidx10, align 4, !taffo.initweight !47, !taffo.info !19
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !52

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
  %18 = load float*, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
  %19 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %19, 1
  %arrayidx17 = getelementptr inbounds float, float* %18, i32 %sub16, !taffo.initweight !46, !taffo.info !19
  %20 = load float, float* %arrayidx17, align 4, !taffo.initweight !47, !taffo.info !19
  %21 = load float*, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
  %22 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds float, float* %21, i32 %22, !taffo.initweight !46, !taffo.info !19
  %23 = load float, float* %arrayidx18, align 4, !taffo.initweight !47, !taffo.info !19
  %add19 = fadd float %20, %23, !taffo.initweight !48, !taffo.info !19
  %24 = load float*, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
  %25 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %25, 1
  %arrayidx21 = getelementptr inbounds float, float* %24, i32 %add20, !taffo.initweight !46, !taffo.info !19
  %26 = load float, float* %arrayidx21, align 4, !taffo.initweight !47, !taffo.info !19
  %add22 = fadd float %add19, %26, !taffo.initweight !48, !taffo.info !19
  %conv23 = fpext float %add22 to double, !taffo.initweight !49, !taffo.info !19
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.initweight !50, !taffo.info !19
  %conv25 = fptrunc double %mul24 to float, !taffo.initweight !51, !taffo.info !19
  %27 = load float*, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  %28 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds float, float* %27, i32 %28, !taffo.initweight !46, !taffo.info !17
  store float %conv25, float* %arrayidx26, align 4, !taffo.initweight !47, !taffo.info !17
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond11, !llvm.loop !53

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %30 = load i32, i32* %t, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %t, align 4
  br label %for.cond, !llvm.loop !54

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !55 !taffo.sourceFunction !23 !taffo.funinfo !56 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 4, !taffo.initweight !25, !taffo.info !17
  %B.addr = alloca float*, align 4, !taffo.initweight !25, !taffo.info !19
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !32
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  store float* %B, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !21, !taffo.info !32
  store i32 0, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !22, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !25, !taffo.info !32

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %conv = sitofp i32 %2 to float, !taffo.initweight !22, !taffo.info !32
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !25, !taffo.info !32
  %3 = load i32, i32* %n.addr, align 4
  %conv2 = sitofp i32 %3 to float
  %div = fdiv float %add, %conv2, !taffo.initweight !34, !taffo.info !32
  %4 = load float*, float** %A.addr, align 4, !taffo.initweight !34, !taffo.info !17
  %5 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx = getelementptr inbounds float, float* %4, i32 %5, !taffo.initweight !22, !taffo.info !35
  store float %div, float* %arrayidx, align 4, !taffo.initweight !25, !taffo.info !35
  %6 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %conv3 = sitofp i32 %6 to float, !taffo.initweight !22, !taffo.info !32
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !25, !taffo.info !32
  %7 = load i32, i32* %n.addr, align 4
  %conv5 = sitofp i32 %7 to float
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !34, !taffo.info !32
  %8 = load float*, float** %B.addr, align 4, !taffo.initweight !34, !taffo.info !19
  %9 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %arrayidx7 = getelementptr inbounds float, float* %8, i32 %9, !taffo.initweight !22, !taffo.info !35
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !25, !taffo.info !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  %inc = add nsw i32 %10, 1, !taffo.initweight !22, !taffo.info !32
  store i32 %inc, i32* %i, align 4, !taffo.initweight !21, !taffo.info !32
  br label %for.cond, !llvm.loop !57

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
!11 = !{}
!12 = !{i1 true}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 0}
!16 = !{!"A"}
!17 = !{i1 false, !18, i1 false, i2 -1}
!18 = !{double 1.333330e-01, double 0x3FF111116A8B8F15}
!19 = !{i1 false, !20, i1 false, i2 -1}
!20 = !{double 2.000000e-01, double 0x3FF22221C8A7A41E}
!21 = !{i32 1}
!22 = !{i32 2}
!23 = !{void (i32, float*, float*)* @init_array}
!24 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d}
!25 = !{i32 3}
!26 = distinct !{!26, !10}
!27 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = !{i32 -1, i32 -1, i32 -1}
!30 = !{void (i32, float*, float*)* @init_array.2}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = !{i1 false, !33, i1 false, i2 -1}
!33 = !{double -1.500000e+01, double 1.500000e+01}
!34 = !{i32 4}
!35 = !{i1 false, i1 false, i1 false, i2 1}
!36 = distinct !{!36, !10}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d.1}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = !{i32 -1, i32 -1, i32 2, i32 2}
!45 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !17, i32 1, !19}
!46 = !{i32 5}
!47 = !{i32 6}
!48 = !{i32 7}
!49 = !{i32 8}
!50 = !{i32 9}
!51 = !{i32 10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = !{i32 -1, i32 2, i32 2}
!56 = !{i32 0, i1 false, i32 1, !17, i32 1, !19}
!57 = distinct !{!57, !10}
