; ModuleID = './build/bin/fixed/jacobi-2d/16/jacobi-2d-standard-1-fixed-16.out.ll.1.taffotmp.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [52 x i8] c"target('A') scalar(range(0.133333,15.066667) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-2d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [35 x i8] c"scalar(range(0.2,16.066668) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4
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
  %A = alloca [15 x [15 x float]], align 4, !taffo.initweight !15, !taffo.target !16, !taffo.info !17
  %B = alloca [15 x [15 x float]], align 4, !taffo.initweight !15, !taffo.info !19
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 15, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [15 x [15 x float]]* %A to i8*, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %B2 = bitcast [15 x [15 x float]]* %B to i8*, !taffo.initweight !21, !taffo.info !19
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.initweight !21, !taffo.info !19
  call void @init_array.2(i32 noundef %0, [15 x float]* noundef %arraydecay, [15 x float]* noundef %arraydecay3), !taffo.initweight !22, !taffo.target !16, !taffo.info !17, !taffo.originalCall !23
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.initweight !21, !taffo.info !19
  call void @kernel_jacobi_2d.1(i32 noundef %1, i32 noundef %2, [15 x float]* noundef %arraydecay4, [15 x float]* noundef %arraydecay5), !taffo.initweight !22, !taffo.target !16, !taffo.info !17, !taffo.originalCall !24
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 %7, !taffo.initweight !21, !taffo.target !16, !taffo.info !17
  %8 = load i32, i32* %j, align 4
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %8, !taffo.initweight !22, !taffo.target !16, !taffo.info !17
  %9 = load float, float* %arrayidx9, align 4, !taffo.initweight !25, !taffo.target !16, !taffo.info !17
  %10 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx10, i32 0, i32 %11
  store float %9, float* %arrayidx11, align 4, !taffo.initweight !26, !taffo.target !16, !taffo.info !17
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !27

for.end:                                          ; preds = %for.cond6
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end14:                                        ; preds = %for.cond
  %14 = load i32, i32* %n, align 4
  call void @print_array(i32 noundef %14, [15 x float]* noundef getelementptr inbounds ([15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !29 !taffo.funinfo !30 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !31 !taffo.equivalentChild !32 !taffo.funinfo !33 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 4
  %B.addr = alloca [15 x float]*, align 4
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !34
  %j = alloca i32, align 4, !taffo.initweight !15, !taffo.info !34
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 4
  store [15 x float]* %B, [15 x float]** %B.addr, align 4
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !21, !taffo.info !34
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !21, !taffo.info !34
  store i32 0, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !22, !taffo.info !34
  br i1 %cmp, label %for.body, label %for.end21, !taffo.initweight !25, !taffo.info !34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, %3, !taffo.initweight !22, !taffo.info !34
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !25, !taffo.info !34

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %conv = sitofp i32 %4 to float, !taffo.initweight !22, !taffo.info !34
  %5 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %add = add nsw i32 %5, 2, !taffo.initweight !22, !taffo.info !34
  %conv6 = sitofp i32 %add to float, !taffo.initweight !25, !taffo.info !34
  %mul = fmul float %conv, %conv6, !taffo.initweight !25, !taffo.info !34
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !26, !taffo.info !34
  %6 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %6 to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !36, !taffo.info !34
  %7 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %8 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %7, i32 %8, !taffo.initweight !22, !taffo.info !37
  %9 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !22, !taffo.info !37
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !25, !taffo.info !37
  %10 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %conv10 = sitofp i32 %10 to float, !taffo.initweight !22, !taffo.info !34
  %11 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %add11 = add nsw i32 %11, 3, !taffo.initweight !22, !taffo.info !34
  %conv12 = sitofp i32 %add11 to float, !taffo.initweight !25, !taffo.info !34
  %mul13 = fmul float %conv10, %conv12, !taffo.initweight !25, !taffo.info !34
  %add14 = fadd float %mul13, 3.000000e+00, !taffo.initweight !26, !taffo.info !34
  %12 = load i32, i32* %n.addr, align 4
  %conv15 = sitofp i32 %12 to float
  %div16 = fdiv float %add14, %conv15, !taffo.initweight !36, !taffo.info !34
  %13 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %14 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %13, i32 %14, !taffo.initweight !22, !taffo.info !37
  %15 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %15, !taffo.initweight !22, !taffo.info !37
  store float %div16, float* %arrayidx18, align 4, !taffo.initweight !25, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %16 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %inc = add nsw i32 %16, 1, !taffo.initweight !22, !taffo.info !34
  store i32 %inc, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond3, !llvm.loop !38

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %inc20 = add nsw i32 %17, 1, !taffo.initweight !22, !taffo.info !34
  store i32 %inc20, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond, !llvm.loop !39

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !40 !taffo.equivalentChild !41 !taffo.funinfo !42 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 4
  %B.addr = alloca [15 x float]*, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 4
  store [15 x float]* %B, [15 x float]** %B.addr, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp slt i32 %4, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %6, i32 %7
  %8 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %8
  %9 = load float, float* %arrayidx8, align 4
  %10 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %11 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %10, i32 %11
  %12 = load i32, i32* %j, align 4
  %sub10 = sub nsw i32 %12, 1
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx9, i32 0, i32 %sub10
  %13 = load float, float* %arrayidx11, align 4
  %add = fadd float %9, %13
  %14 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [15 x float], [15 x float]* %14, i32 %15
  %16 = load i32, i32* %j, align 4
  %add13 = add nsw i32 1, %16
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %add13
  %17 = load float, float* %arrayidx14, align 4
  %add15 = fadd float %add, %17
  %18 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %19 = load i32, i32* %i, align 4
  %add16 = add nsw i32 1, %19
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %18, i32 %add16
  %20 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %20
  %21 = load float, float* %arrayidx18, align 4
  %add19 = fadd float %add15, %21
  %22 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %23 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %23, 1
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %22, i32 %sub20
  %24 = load i32, i32* %j, align 4
  %arrayidx22 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx21, i32 0, i32 %24
  %25 = load float, float* %arrayidx22, align 4
  %add23 = fadd float %add19, %25
  %mul = fmul float 0x3FC99999A0000000, %add23
  %26 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %27 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [15 x float], [15 x float]* %26, i32 %27
  %28 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx24, i32 0, i32 %28
  store float %mul, float* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !43

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond1, !llvm.loop !44

for.end28:                                        ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %n.addr, align 4
  %sub30 = sub nsw i32 %32, 1
  %cmp31 = icmp slt i32 %31, %sub30
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  store i32 1, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %n.addr, align 4
  %sub34 = sub nsw i32 %34, 1
  %cmp35 = icmp slt i32 %33, %sub34
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %35 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %36 = load i32, i32* %i, align 4
  %arrayidx37 = getelementptr inbounds [15 x float], [15 x float]* %35, i32 %36
  %37 = load i32, i32* %j, align 4
  %arrayidx38 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx37, i32 0, i32 %37
  %38 = load float, float* %arrayidx38, align 4
  %39 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %40 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds [15 x float], [15 x float]* %39, i32 %40
  %41 = load i32, i32* %j, align 4
  %sub40 = sub nsw i32 %41, 1
  %arrayidx41 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx39, i32 0, i32 %sub40
  %42 = load float, float* %arrayidx41, align 4
  %add42 = fadd float %38, %42
  %43 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %44 = load i32, i32* %i, align 4
  %arrayidx43 = getelementptr inbounds [15 x float], [15 x float]* %43, i32 %44
  %45 = load i32, i32* %j, align 4
  %add44 = add nsw i32 1, %45
  %arrayidx45 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx43, i32 0, i32 %add44
  %46 = load float, float* %arrayidx45, align 4
  %add46 = fadd float %add42, %46
  %47 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %48 = load i32, i32* %i, align 4
  %add47 = add nsw i32 1, %48
  %arrayidx48 = getelementptr inbounds [15 x float], [15 x float]* %47, i32 %add47
  %49 = load i32, i32* %j, align 4
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx48, i32 0, i32 %49
  %50 = load float, float* %arrayidx49, align 4
  %add50 = fadd float %add46, %50
  %51 = load [15 x float]*, [15 x float]** %B.addr, align 4
  %52 = load i32, i32* %i, align 4
  %sub51 = sub nsw i32 %52, 1
  %arrayidx52 = getelementptr inbounds [15 x float], [15 x float]* %51, i32 %sub51
  %53 = load i32, i32* %j, align 4
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx52, i32 0, i32 %53
  %54 = load float, float* %arrayidx53, align 4
  %add54 = fadd float %add50, %54
  %mul55 = fmul float 0x3FC99999A0000000, %add54
  %55 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %56 = load i32, i32* %i, align 4
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %55, i32 %56
  %57 = load i32, i32* %j, align 4
  %arrayidx57 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx56, i32 0, i32 %57
  store float %mul55, float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %58 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %58, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond33, !llvm.loop !45

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %59 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %59, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond29, !llvm.loop !46

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %60 = load i32, i32* %t, align 4
  %inc65 = add nsw i32 %60, 1
  store i32 %inc65, i32* %t, align 4
  br label %for.cond, !llvm.loop !47

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [15 x float]* noundef %A) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 4
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
  %9 = load [15 x float]*, [15 x float]** %A.addr, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %9, i32 %10
  %11 = load i32, i32* %j, align 4
  %arrayidx5 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %11
  %12 = load float, float* %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !48

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !14 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.1(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !50 !taffo.sourceFunction !24 !taffo.funinfo !51 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 4, !taffo.initweight !25, !taffo.info !17
  %B.addr = alloca [15 x float]*, align 4, !taffo.initweight !25, !taffo.info !19
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  store [15 x float]* %B, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp slt i32 %4, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %6, i32 %7, !taffo.initweight !36, !taffo.info !17
  %8 = load i32, i32* %j, align 4
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %8, !taffo.initweight !52, !taffo.info !17
  %9 = load float, float* %arrayidx8, align 4, !taffo.initweight !53, !taffo.info !17
  %10 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %11 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %10, i32 %11, !taffo.initweight !36, !taffo.info !17
  %12 = load i32, i32* %j, align 4
  %sub10 = sub nsw i32 %12, 1
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx9, i32 0, i32 %sub10, !taffo.initweight !52, !taffo.info !17
  %13 = load float, float* %arrayidx11, align 4, !taffo.initweight !53, !taffo.info !17
  %add = fadd float %9, %13, !taffo.initweight !54, !taffo.info !17
  %14 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %15 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [15 x float], [15 x float]* %14, i32 %15, !taffo.initweight !36, !taffo.info !17
  %16 = load i32, i32* %j, align 4
  %add13 = add nsw i32 1, %16
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %add13, !taffo.initweight !52, !taffo.info !17
  %17 = load float, float* %arrayidx14, align 4, !taffo.initweight !53, !taffo.info !17
  %add15 = fadd float %add, %17, !taffo.initweight !54, !taffo.info !17
  %18 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %19 = load i32, i32* %i, align 4
  %add16 = add nsw i32 1, %19
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %18, i32 %add16, !taffo.initweight !36, !taffo.info !17
  %20 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %20, !taffo.initweight !52, !taffo.info !17
  %21 = load float, float* %arrayidx18, align 4, !taffo.initweight !53, !taffo.info !17
  %add19 = fadd float %add15, %21, !taffo.initweight !54, !taffo.info !17
  %22 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %23 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %23, 1
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %22, i32 %sub20, !taffo.initweight !36, !taffo.info !17
  %24 = load i32, i32* %j, align 4
  %arrayidx22 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx21, i32 0, i32 %24, !taffo.initweight !52, !taffo.info !17
  %25 = load float, float* %arrayidx22, align 4, !taffo.initweight !53, !taffo.info !17
  %add23 = fadd float %add19, %25, !taffo.initweight !54, !taffo.info !17
  %mul = fmul float 0x3FC99999A0000000, %add23, !taffo.initweight !55, !taffo.info !17
  %26 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %27 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [15 x float], [15 x float]* %26, i32 %27, !taffo.initweight !36, !taffo.info !19
  %28 = load i32, i32* %j, align 4
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx24, i32 0, i32 %28, !taffo.initweight !52, !taffo.info !19
  store float %mul, float* %arrayidx25, align 4, !taffo.initweight !53, !taffo.info !19
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !56

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond1, !llvm.loop !57

for.end28:                                        ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %n.addr, align 4
  %sub30 = sub nsw i32 %32, 1
  %cmp31 = icmp slt i32 %31, %sub30
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  store i32 1, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %n.addr, align 4
  %sub34 = sub nsw i32 %34, 1
  %cmp35 = icmp slt i32 %33, %sub34
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %35 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %36 = load i32, i32* %i, align 4
  %arrayidx37 = getelementptr inbounds [15 x float], [15 x float]* %35, i32 %36, !taffo.initweight !36, !taffo.info !19
  %37 = load i32, i32* %j, align 4
  %arrayidx38 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx37, i32 0, i32 %37, !taffo.initweight !52, !taffo.info !19
  %38 = load float, float* %arrayidx38, align 4, !taffo.initweight !53, !taffo.info !19
  %39 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %40 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds [15 x float], [15 x float]* %39, i32 %40, !taffo.initweight !36, !taffo.info !19
  %41 = load i32, i32* %j, align 4
  %sub40 = sub nsw i32 %41, 1
  %arrayidx41 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx39, i32 0, i32 %sub40, !taffo.initweight !52, !taffo.info !19
  %42 = load float, float* %arrayidx41, align 4, !taffo.initweight !53, !taffo.info !19
  %add42 = fadd float %38, %42, !taffo.initweight !54, !taffo.info !19
  %43 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %44 = load i32, i32* %i, align 4
  %arrayidx43 = getelementptr inbounds [15 x float], [15 x float]* %43, i32 %44, !taffo.initweight !36, !taffo.info !19
  %45 = load i32, i32* %j, align 4
  %add44 = add nsw i32 1, %45
  %arrayidx45 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx43, i32 0, i32 %add44, !taffo.initweight !52, !taffo.info !19
  %46 = load float, float* %arrayidx45, align 4, !taffo.initweight !53, !taffo.info !19
  %add46 = fadd float %add42, %46, !taffo.initweight !54, !taffo.info !19
  %47 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %48 = load i32, i32* %i, align 4
  %add47 = add nsw i32 1, %48
  %arrayidx48 = getelementptr inbounds [15 x float], [15 x float]* %47, i32 %add47, !taffo.initweight !36, !taffo.info !19
  %49 = load i32, i32* %j, align 4
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx48, i32 0, i32 %49, !taffo.initweight !52, !taffo.info !19
  %50 = load float, float* %arrayidx49, align 4, !taffo.initweight !53, !taffo.info !19
  %add50 = fadd float %add46, %50, !taffo.initweight !54, !taffo.info !19
  %51 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %52 = load i32, i32* %i, align 4
  %sub51 = sub nsw i32 %52, 1
  %arrayidx52 = getelementptr inbounds [15 x float], [15 x float]* %51, i32 %sub51, !taffo.initweight !36, !taffo.info !19
  %53 = load i32, i32* %j, align 4
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx52, i32 0, i32 %53, !taffo.initweight !52, !taffo.info !19
  %54 = load float, float* %arrayidx53, align 4, !taffo.initweight !53, !taffo.info !19
  %add54 = fadd float %add50, %54, !taffo.initweight !54, !taffo.info !19
  %mul55 = fmul float 0x3FC99999A0000000, %add54, !taffo.initweight !55, !taffo.info !19
  %55 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %56 = load i32, i32* %i, align 4
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %55, i32 %56, !taffo.initweight !36, !taffo.info !17
  %57 = load i32, i32* %j, align 4
  %arrayidx57 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx56, i32 0, i32 %57, !taffo.initweight !52, !taffo.info !17
  store float %mul55, float* %arrayidx57, align 4, !taffo.initweight !53, !taffo.info !17
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %58 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %58, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond33, !llvm.loop !58

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %59 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %59, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond29, !llvm.loop !59

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %60 = load i32, i32* %t, align 4
  %inc65 = add nsw i32 %60, 1
  store i32 %inc65, i32* %t, align 4
  br label %for.cond, !llvm.loop !60

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !61 !taffo.sourceFunction !23 !taffo.funinfo !62 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 4, !taffo.initweight !25, !taffo.info !17
  %B.addr = alloca [15 x float]*, align 4, !taffo.initweight !25, !taffo.info !19
  %i = alloca i32, align 4, !taffo.initweight !15, !taffo.info !34
  %j = alloca i32, align 4, !taffo.initweight !15, !taffo.info !34
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  store [15 x float]* %B, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %i1 = bitcast i32* %i to i8*, !taffo.initweight !21, !taffo.info !34
  %j2 = bitcast i32* %j to i8*, !taffo.initweight !21, !taffo.info !34
  store i32 0, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1, !taffo.initweight !22, !taffo.info !34
  br i1 %cmp, label %for.body, label %for.end21, !taffo.initweight !25, !taffo.info !34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, %3, !taffo.initweight !22, !taffo.info !34
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !25, !taffo.info !34

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %conv = sitofp i32 %4 to float, !taffo.initweight !22, !taffo.info !34
  %5 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %add = add nsw i32 %5, 2, !taffo.initweight !22, !taffo.info !34
  %conv6 = sitofp i32 %add to float, !taffo.initweight !25, !taffo.info !34
  %mul = fmul float %conv, %conv6, !taffo.initweight !25, !taffo.info !34
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !26, !taffo.info !34
  %6 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %6 to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !36, !taffo.info !34
  %7 = load [15 x float]*, [15 x float]** %A.addr, align 4, !taffo.initweight !26, !taffo.info !17
  %8 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %7, i32 %8, !taffo.initweight !22, !taffo.info !37
  %9 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %9, !taffo.initweight !22, !taffo.info !37
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !25, !taffo.info !37
  %10 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %conv10 = sitofp i32 %10 to float, !taffo.initweight !22, !taffo.info !34
  %11 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %add11 = add nsw i32 %11, 3, !taffo.initweight !22, !taffo.info !34
  %conv12 = sitofp i32 %add11 to float, !taffo.initweight !25, !taffo.info !34
  %mul13 = fmul float %conv10, %conv12, !taffo.initweight !25, !taffo.info !34
  %add14 = fadd float %mul13, 3.000000e+00, !taffo.initweight !26, !taffo.info !34
  %12 = load i32, i32* %n.addr, align 4
  %conv15 = sitofp i32 %12 to float
  %div16 = fdiv float %add14, %conv15, !taffo.initweight !36, !taffo.info !34
  %13 = load [15 x float]*, [15 x float]** %B.addr, align 4, !taffo.initweight !26, !taffo.info !19
  %14 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %13, i32 %14, !taffo.initweight !22, !taffo.info !37
  %15 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %15, !taffo.initweight !22, !taffo.info !37
  store float %div16, float* %arrayidx18, align 4, !taffo.initweight !25, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %16 = load i32, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  %inc = add nsw i32 %16, 1, !taffo.initweight !22, !taffo.info !34
  store i32 %inc, i32* %j, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond3, !llvm.loop !63

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  %inc20 = add nsw i32 %17, 1, !taffo.initweight !22, !taffo.info !34
  store i32 %inc20, i32* %i, align 4, !taffo.initweight !21, !taffo.info !34
  br label %for.cond, !llvm.loop !64

for.end21:                                        ; preds = %for.cond
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
!18 = !{double 1.333330e-01, double 0x402E22222D5171E3}
!19 = !{i1 false, !20, i1 false, i2 -1}
!20 = !{double 2.000000e-01, double 0x40301111276FB092}
!21 = !{i32 1}
!22 = !{i32 2}
!23 = !{void (i32, [15 x float]*, [15 x float]*)* @init_array}
!24 = !{void (i32, i32, [15 x float]*, [15 x float]*)* @kernel_jacobi_2d}
!25 = !{i32 3}
!26 = !{i32 4}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = !{i32 -1, i32 -1, i32 -1}
!32 = !{void (i32, [15 x float]*, [15 x float]*)* @init_array.2}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{i1 false, !35, i1 false, i2 -1}
!35 = !{double -1.500000e+01, double 1.500000e+01}
!36 = !{i32 5}
!37 = !{i1 false, i1 false, i1 false, i2 1}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{void (i32, i32, [15 x float]*, [15 x float]*)* @kernel_jacobi_2d.1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = !{i32 -1, i32 -1, i32 2, i32 2}
!51 = !{i32 0, i1 false, i32 0, i1 false, i32 1, !17, i32 1, !19}
!52 = !{i32 6}
!53 = !{i32 7}
!54 = !{i32 8}
!55 = !{i32 9}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = !{i32 -1, i32 2, i32 2}
!62 = !{i32 0, i1 false, i32 1, !17, i32 1, !19}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
