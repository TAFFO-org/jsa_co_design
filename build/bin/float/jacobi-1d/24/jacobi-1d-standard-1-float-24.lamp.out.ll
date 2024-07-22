; ModuleID = './build/bin/float/jacobi-1d/24/jacobi-1d-standard-1-float-24.out.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"target('A') scalar(range(0.133333,1.066667) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(0.2,1.133333) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x float] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  store float %val, ptr %val.addr, align 4
  %0 = load float, ptr %val.addr, align 4
  %div1 = fdiv float %0, 1.000000e+01
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  store float %lampsim3, ptr %x, align 4
  store float 0x3F50624DE0000000, ptr %min_tol, align 4
  store float 0.000000e+00, ptr %constZeroVal, align 4
  store float 2.000000e+00, ptr %constTwoVal, align 4
  store i32 0, ptr %flag, align 4
  %1 = load float, ptr %val.addr, align 4
  %2 = load float, ptr %constZeroVal, align 4
  %cmp = fcmp oeq float %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load float, ptr %constZeroVal, align 4
  store float %3, ptr %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %4, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %6 = load float, ptr %val.addr, align 4
  %7 = load float, ptr %x, align 4
  %8 = load float, ptr %x, align 4
  %mul4 = fmul float %7, %8
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %6, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %9 = load float, ptr %constTwoVal, align 4
  %10 = load float, ptr %x, align 4
  %mul312 = fmul float %9, %10
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -1
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -1
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %dx, align 4
  %11 = load float, ptr %x, align 4
  %12 = load float, ptr %dx, align 4
  %add20 = fadd float %11, %12
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -1
  %lampsim23 = bitcast i32 %lampsim22 to float
  store float %lampsim23, ptr %x, align 4
  %13 = load float, ptr %val.addr, align 4
  %14 = load float, ptr %x, align 4
  %15 = load float, ptr %x, align 4
  %mul524 = fmul float %14, %15
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -1
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %13, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -1
  %lampsim31 = bitcast i32 %lampsim30 to float
  store float %lampsim31, ptr %diff, align 4
  %16 = load float, ptr %diff, align 4
  %17 = load float, ptr %constZeroVal, align 4
  %cmp7 = fcmp oge float %16, %17
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %18 = load float, ptr %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %19 = load float, ptr %diff, align 4
  %fneg = fneg float %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %18, %cond.true ], [ %fneg, %cond.false ]
  %20 = load float, ptr %min_tol, align 4
  %cmp8 = fcmp ole float %cond, %20
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  store i32 1, ptr %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, ptr %x, align 4
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
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 4
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %A = alloca [15 x float], align 4
  %B = alloca [15 x float], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 15, ptr %n, align 4
  store i32 10, ptr %tsteps, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 96, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.2, ptr @.str.1, i32 97, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [15 x float], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [15 x float], ptr %B, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  call void @timer_start()
  %1 = load i32, ptr %tsteps, align 4
  %2 = load i32, ptr %n, align 4
  %arraydecay2 = getelementptr inbounds [15 x float], ptr %A, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [15 x float], ptr %B, i32 0, i32 0
  call void @kernel_jacobi_1d(i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay2, ptr noundef %arraydecay3)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [15 x float], ptr %A, i32 0, i32 %5
  %6 = load float, ptr %arrayidx, align 4
  %7 = load i32, ptr %i, align 4
  %arrayidx4 = getelementptr inbounds [15 x float], ptr @A_float, i32 0, i32 %7
  store float %6, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %9, ptr noundef @A_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.3, ptr @.str.1, i32 33, ptr null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %conv3 = sitofp i32 %2 to float
  %lampsim = bitcast float %conv3 to i32
  %lampsim4 = and i32 %lampsim, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %add6 = fadd float %lampsim5, 2.000000e+00
  %lampsim7 = bitcast float %add6 to i32
  %lampsim8 = and i32 %lampsim7, -1
  %lampsim9 = bitcast i32 %lampsim8 to float
  %3 = load i32, ptr %n.addr, align 4
  %conv110 = sitofp i32 %3 to float
  %lampsim11 = bitcast float %conv110 to i32
  %lampsim12 = and i32 %lampsim11, -1
  %lampsim13 = bitcast i32 %lampsim12 to float
  %div14 = fdiv float %lampsim9, %lampsim13
  %lampsim15 = bitcast float %div14 to i32
  %lampsim16 = and i32 %lampsim15, -1
  %lampsim17 = bitcast i32 %lampsim16 to float
  %4 = load ptr, ptr %A.addr, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %4, i32 %5
  store float %lampsim17, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %conv218 = sitofp i32 %6 to float
  %lampsim19 = bitcast float %conv218 to i32
  %lampsim20 = and i32 %lampsim19, -1
  %lampsim21 = bitcast i32 %lampsim20 to float
  %add322 = fadd float %lampsim21, 3.000000e+00
  %lampsim23 = bitcast float %add322 to i32
  %lampsim24 = and i32 %lampsim23, -1
  %lampsim25 = bitcast i32 %lampsim24 to float
  %7 = load i32, ptr %n.addr, align 4
  %conv426 = sitofp i32 %7 to float
  %lampsim27 = bitcast float %conv426 to i32
  %lampsim28 = and i32 %lampsim27, -1
  %lampsim29 = bitcast i32 %lampsim28 to float
  %div530 = fdiv float %lampsim25, %lampsim29
  %lampsim31 = bitcast float %div530 to i32
  %lampsim32 = and i32 %lampsim31, -1
  %lampsim33 = bitcast i32 %lampsim32 to float
  %8 = load ptr, ptr %B.addr, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx6 = getelementptr inbounds float, ptr %8, i32 %9
  store float %lampsim33, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, ptr %tsteps.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store i32 0, ptr %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, ptr %t, align 4
  %1 = load i32, ptr %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %A.addr, align 4
  %5 = load i32, ptr %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %arrayidx = getelementptr inbounds float, ptr %4, i32 %sub4
  %6 = load float, ptr %arrayidx, align 4
  %7 = load ptr, ptr %A.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx5 = getelementptr inbounds float, ptr %7, i32 %8
  %9 = load float, ptr %arrayidx5, align 4
  %add1 = fadd float %6, %9
  %lampsim = bitcast float %add1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %10 = load ptr, ptr %A.addr, align 4
  %11 = load i32, ptr %i, align 4
  %add6 = add nsw i32 %11, 1
  %arrayidx7 = getelementptr inbounds float, ptr %10, i32 %add6
  %12 = load float, ptr %arrayidx7, align 4
  %add84 = fadd float %lampsim3, %12
  %lampsim5 = bitcast float %add84 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %conv8 = fpext float %lampsim7 to double
  %lampsim9 = bitcast double %conv8 to i64
  %lampsim10 = and i64 %lampsim9, -536870912
  %lampsim11 = bitcast i64 %lampsim10 to double
  %mul12 = fmul double 3.333300e-01, %lampsim11
  %lampsim13 = bitcast double %mul12 to i64
  %lampsim14 = and i64 %lampsim13, -536870912
  %lampsim15 = bitcast i64 %lampsim14 to double
  %conv916 = fptrunc double %lampsim15 to float
  %lampsim17 = bitcast float %conv916 to i32
  %lampsim18 = and i32 %lampsim17, -1
  %lampsim19 = bitcast i32 %lampsim18 to float
  %13 = load ptr, ptr %B.addr, align 4
  %14 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds float, ptr %13, i32 %14
  store float %lampsim19, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  store i32 1, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %n.addr, align 4
  %sub12 = sub nsw i32 %17, 1
  %cmp13 = icmp slt i32 %16, %sub12
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %18 = load ptr, ptr %B.addr, align 4
  %19 = load i32, ptr %i, align 4
  %sub16 = sub nsw i32 %19, 1
  %arrayidx17 = getelementptr inbounds float, ptr %18, i32 %sub16
  %20 = load float, ptr %arrayidx17, align 4
  %21 = load ptr, ptr %B.addr, align 4
  %22 = load i32, ptr %i, align 4
  %arrayidx18 = getelementptr inbounds float, ptr %21, i32 %22
  %23 = load float, ptr %arrayidx18, align 4
  %add1920 = fadd float %20, %23
  %lampsim21 = bitcast float %add1920 to i32
  %lampsim22 = and i32 %lampsim21, -1
  %lampsim23 = bitcast i32 %lampsim22 to float
  %24 = load ptr, ptr %B.addr, align 4
  %25 = load i32, ptr %i, align 4
  %add20 = add nsw i32 %25, 1
  %arrayidx21 = getelementptr inbounds float, ptr %24, i32 %add20
  %26 = load float, ptr %arrayidx21, align 4
  %add2224 = fadd float %lampsim23, %26
  %lampsim25 = bitcast float %add2224 to i32
  %lampsim26 = and i32 %lampsim25, -1
  %lampsim27 = bitcast i32 %lampsim26 to float
  %conv2328 = fpext float %lampsim27 to double
  %lampsim29 = bitcast double %conv2328 to i64
  %lampsim30 = and i64 %lampsim29, -536870912
  %lampsim31 = bitcast i64 %lampsim30 to double
  %mul2432 = fmul double 3.333300e-01, %lampsim31
  %lampsim33 = bitcast double %mul2432 to i64
  %lampsim34 = and i64 %lampsim33, -536870912
  %lampsim35 = bitcast i64 %lampsim34 to double
  %conv2536 = fptrunc double %lampsim35 to float
  %lampsim37 = bitcast float %conv2536 to i32
  %lampsim38 = and i32 %lampsim37, -1
  %lampsim39 = bitcast i32 %lampsim38 to float
  %27 = load ptr, ptr %A.addr, align 4
  %28 = load i32, ptr %i, align 4
  %arrayidx26 = getelementptr inbounds float, ptr %27, i32 %28
  store float %lampsim39, ptr %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %29 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond11, !llvm.loop !12

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %30 = load i32, ptr %t, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, ptr %t, align 4
  br label %for.cond, !llvm.loop !13

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 20
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 4
  %5 = load ptr, ptr %A.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %5, i32 %6
  %7 = load float, ptr %arrayidx, align 4
  %conv1 = fpext float %7 to double
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.5, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
