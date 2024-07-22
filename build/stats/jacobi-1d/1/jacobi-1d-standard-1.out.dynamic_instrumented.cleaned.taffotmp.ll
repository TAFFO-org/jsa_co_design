; ModuleID = './build/stats/jacobi-1d/1/jacobi-1d-standard-1.out.dynamic_instrumented.1.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x float] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 {
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
  ret float %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_start() #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_stop() #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %A = alloca [15 x float], align 16
  %B = alloca [15 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 15, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [15 x float]* %A to i8*
  %B2 = bitcast [15 x float]* %B to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i64 0, i64 0
  call void @init_array(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay3)
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i64 0, i64 0
  call void @kernel_jacobi_1d(i32 noundef %1, i32 noundef %2, float* noundef %arraydecay4, float* noundef %arraydecay5)
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
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i64 0, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i64 0, i64 %idxprom6
  store float %6, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %A, float* noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to float
  %add = fadd float %conv, 2.000000e+00
  %3 = load i32, i32* %n.addr, align 4
  %conv2 = sitofp i32 %3 to float
  %div = fdiv float %add, %conv2
  %4 = load float*, float** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %conv3 = sitofp i32 %6 to float
  %add4 = fadd float %conv3, 3.000000e+00
  %7 = load i32, i32* %n.addr, align 4
  %conv5 = sitofp i32 %7 to float
  %div6 = fdiv float %add4, %conv5
  %8 = load float*, float** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds float, float* %8, i64 %idxprom7
  store float %div6, float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

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
  %4 = load float*, float** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load float*, float** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds float, float* %7, i64 %idxprom5
  %9 = load float, float* %arrayidx6, align 4
  %add = fadd float %6, %9
  %10 = load float*, float** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %11, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom8
  %12 = load float, float* %arrayidx9, align 4
  %add10 = fadd float %add, %12
  %conv = fpext float %add10 to double
  %mul = fmul double 3.333300e-01, %conv
  %conv11 = fptrunc double %mul to float
  %13 = load float*, float** %B.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds float, float* %13, i64 %idxprom12
  store float %conv11, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %17, 1
  %cmp16 = icmp slt i32 %16, %sub15
  br i1 %cmp16, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond14
  %18 = load float*, float** %B.addr, align 8
  %19 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %19, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %18, i64 %idxprom20
  %20 = load float, float* %arrayidx21, align 4
  %21 = load float*, float** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds float, float* %21, i64 %idxprom22
  %23 = load float, float* %arrayidx23, align 4
  %add24 = fadd float %20, %23
  %24 = load float*, float** %B.addr, align 8
  %25 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %25, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %24, i64 %idxprom26
  %26 = load float, float* %arrayidx27, align 4
  %add28 = fadd float %add24, %26
  %conv29 = fpext float %add28 to double
  %mul30 = fmul double 3.333300e-01, %conv29
  %conv31 = fptrunc double %mul30 to float
  %27 = load float*, float** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds float, float* %27, i64 %idxprom32
  store float %conv31, float* %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body18
  %29 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond14, !llvm.loop !11

for.end36:                                        ; preds = %for.cond14
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %30 = load i32, i32* %t, align 4
  %inc38 = add nsw i32 %30, 1
  store i32 %inc38, i32* %t, align 4
  br label %for.cond, !llvm.loop !12

for.end39:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
