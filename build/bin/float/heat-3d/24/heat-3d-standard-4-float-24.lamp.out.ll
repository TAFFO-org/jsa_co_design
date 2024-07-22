; ModuleID = './build/bin/float/heat-3d/24/heat-3d-standard-4-float-24.out.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"target('A') scalar(range(8.0,104.0) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/heat-3d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [31 x i8] c"scalar(range(8.0,104.0) final)\00", section "llvm.metadata"
@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 80) final)\00", section "llvm.metadata"
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(ptr noundef %val, i32 noundef %factor) #0 {
entry:
  %val.addr = alloca ptr, align 4
  %factor.addr = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 4
  store i32 %factor, ptr %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, ptr noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %val, ptr %val.addr, align 4
  store i32 %factor, ptr %factor.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %val.addr, align 4
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %3, i32 %4
  %5 = load float, ptr %arrayidx, align 4
  %6 = load i32, ptr %factor.addr, align 4
  %conv1 = sitofp i32 %6 to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %5, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %7 = load ptr, ptr %val.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx1 = getelementptr inbounds float, ptr %7, i32 %8
  store float %lampsim7, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, ptr noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %val, ptr %val.addr, align 4
  store i32 %factor, ptr %factor.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %m.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %m.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %val.addr, align 4
  %7 = load i32, ptr %i, align 4
  %8 = mul nsw i32 %7, %1
  %arrayidx = getelementptr inbounds float, ptr %6, i32 %8
  %9 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds float, ptr %arrayidx, i32 %9
  %10 = load float, ptr %arrayidx4, align 4
  %11 = load i32, ptr %factor.addr, align 4
  %conv1 = sitofp i32 %11 to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %10, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %12 = load ptr, ptr %val.addr, align 4
  %13 = load i32, ptr %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, ptr %12, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds float, ptr %arrayidx5, i32 %15
  store float %lampsim7, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, ptr noundef %val, i32 noundef %factor) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %p, ptr %p.addr, align 4
  store ptr %val, ptr %val.addr, align 4
  store i32 %factor, ptr %factor.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %m.addr, align 4
  %2 = load i32, ptr %p.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %p.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load ptr, ptr %val.addr, align 4
  %10 = load i32, ptr %i, align 4
  %11 = mul nuw i32 %1, %2
  %12 = mul nsw i32 %10, %11
  %arrayidx = getelementptr inbounds float, ptr %9, i32 %12
  %13 = load i32, ptr %j, align 4
  %14 = mul nsw i32 %13, %2
  %arrayidx7 = getelementptr inbounds float, ptr %arrayidx, i32 %14
  %15 = load i32, ptr %k, align 4
  %arrayidx8 = getelementptr inbounds float, ptr %arrayidx7, i32 %15
  %16 = load float, ptr %arrayidx8, align 4
  %17 = load i32, ptr %factor.addr, align 4
  %conv1 = sitofp i32 %17 to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %16, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %18 = load ptr, ptr %val.addr, align 4
  %19 = load i32, ptr %i, align 4
  %20 = mul nuw i32 %1, %2
  %21 = mul nsw i32 %19, %20
  %arrayidx9 = getelementptr inbounds float, ptr %18, i32 %21
  %22 = load i32, ptr %j, align 4
  %23 = mul nsw i32 %22, %2
  %arrayidx10 = getelementptr inbounds float, ptr %arrayidx9, i32 %23
  %24 = load i32, ptr %k, align 4
  %arrayidx11 = getelementptr inbounds float, ptr %arrayidx10, i32 %24
  store float %lampsim7, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %25 = load i32, ptr %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %26 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond1, !llvm.loop !13

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %27 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end17:                                        ; preds = %for.cond
  ret void
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
  %A = alloca [5 x [5 x [5 x float]]], align 4
  %B = alloca [5 x [5 x [5 x float]]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 5, ptr %n, align 4
  store i32 10, ptr %tsteps, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 113, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.2, ptr @.str.1, i32 114, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %B, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %A, i32 0, i32 0
  call void @scale_3d(i32 noundef 5, i32 noundef 5, i32 noundef 5, ptr noundef %arraydecay2, i32 noundef 4)
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %B, i32 0, i32 0
  call void @scale_3d(i32 noundef 5, i32 noundef 5, i32 noundef 5, ptr noundef %arraydecay3, i32 noundef 4)
  call void @timer_start()
  %1 = load i32, ptr %tsteps, align 4
  %2 = load i32, ptr %n, align 4
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %A, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %B, i32 0, i32 0
  call void @kernel_heat_3d(i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %for.body
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %n, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  store i32 0, ptr %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %n, align 4
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %9 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], ptr %A, i32 0, i32 %9
  %10 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx, i32 0, i32 %10
  %11 = load i32, ptr %k, align 4
  %arrayidx13 = getelementptr inbounds [5 x float], ptr %arrayidx12, i32 0, i32 %11
  %12 = load float, ptr %arrayidx13, align 4
  %13 = load i32, ptr %i, align 4
  %arrayidx14 = getelementptr inbounds [5 x [5 x [5 x float]]], ptr @A_float, i32 0, i32 %13
  %14 = load i32, ptr %j, align 4
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx14, i32 0, i32 %14
  %15 = load i32, ptr %k, align 4
  %arrayidx16 = getelementptr inbounds [5 x float], ptr %arrayidx15, i32 0, i32 %15
  store float %12, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %16 = load i32, ptr %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond9, !llvm.loop !15

for.end:                                          ; preds = %for.cond9
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %17 = load i32, ptr %j, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, ptr %j, align 4
  br label %for.cond6, !llvm.loop !16

for.end19:                                        ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %18 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end22:                                        ; preds = %for.cond
  %19 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %19, ptr noundef @A_float)
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
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.3, ptr @.str.1, i32 33, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.3, ptr @.str.1, i32 34, ptr null)
  call void @llvm.var.annotation(ptr %k, ptr @.str.3, ptr @.str.1, i32 35, ptr null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, ptr %n.addr, align 4
  %9 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %8, %9
  %add7 = add nsw i32 %add, %sub
  %conv1 = sitofp i32 %add7 to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %lampsim3, 1.000000e+01
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %10 = load i32, ptr %n.addr, align 4
  %conv88 = sitofp i32 %10 to float
  %lampsim9 = bitcast float %conv88 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %div12 = fdiv float %lampsim7, %lampsim11
  %lampsim13 = bitcast float %div12 to i32
  %lampsim14 = and i32 %lampsim13, -1
  %lampsim15 = bitcast i32 %lampsim14 to float
  %11 = load ptr, ptr %B.addr, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], ptr %11, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx, i32 0, i32 %13
  %14 = load i32, ptr %k, align 4
  %arrayidx10 = getelementptr inbounds [5 x float], ptr %arrayidx9, i32 0, i32 %14
  store float %lampsim15, ptr %arrayidx10, align 4
  %15 = load ptr, ptr %A.addr, align 4
  %16 = load i32, ptr %i, align 4
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], ptr %15, i32 %16
  %17 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx11, i32 0, i32 %17
  %18 = load i32, ptr %k, align 4
  %arrayidx13 = getelementptr inbounds [5 x float], ptr %arrayidx12, i32 0, i32 %18
  store float %lampsim15, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !18

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %20 = load i32, ptr %j, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, ptr %j, align 4
  br label %for.cond1, !llvm.loop !19

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %21 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %tsteps, ptr %tsteps.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store i32 1, ptr %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %0 = load i32, ptr %t, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %n.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %cmp6 = icmp slt i32 %3, %sub5
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  store i32 1, ptr %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %5 = load i32, ptr %k, align 4
  %6 = load i32, ptr %n.addr, align 4
  %sub9 = sub nsw i32 %6, 1
  %cmp10 = icmp slt i32 %5, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %7 = load ptr, ptr %A.addr, align 4
  %8 = load i32, ptr %i, align 4
  %add = add nsw i32 %8, 1
  %arrayidx = getelementptr inbounds [5 x [5 x float]], ptr %7, i32 %add
  %9 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx, i32 0, i32 %9
  %10 = load i32, ptr %k, align 4
  %arrayidx13 = getelementptr inbounds [5 x float], ptr %arrayidx12, i32 0, i32 %10
  %11 = load float, ptr %arrayidx13, align 4
  %12 = load ptr, ptr %A.addr, align 4
  %13 = load i32, ptr %i, align 4
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], ptr %12, i32 %13
  %14 = load i32, ptr %j, align 4
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx14, i32 0, i32 %14
  %15 = load i32, ptr %k, align 4
  %arrayidx16 = getelementptr inbounds [5 x float], ptr %arrayidx15, i32 0, i32 %15
  %16 = load float, ptr %arrayidx16, align 4
  %mul1 = fmul float 2.000000e+00, %16
  %lampsim = bitcast float %mul1 to i32
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %sub174 = fsub float %11, %lampsim3
  %lampsim5 = bitcast float %sub174 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %17 = load ptr, ptr %A.addr, align 4
  %18 = load i32, ptr %i, align 4
  %sub18 = sub nsw i32 %18, 1
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], ptr %17, i32 %sub18
  %19 = load i32, ptr %j, align 4
  %arrayidx20 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx19, i32 0, i32 %19
  %20 = load i32, ptr %k, align 4
  %arrayidx21 = getelementptr inbounds [5 x float], ptr %arrayidx20, i32 0, i32 %20
  %21 = load float, ptr %arrayidx21, align 4
  %add228 = fadd float %lampsim7, %21
  %lampsim9 = bitcast float %add228 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul2312 = fmul float 1.250000e-01, %lampsim11
  %lampsim13 = bitcast float %mul2312 to i32
  %lampsim14 = and i32 %lampsim13, -1
  %lampsim15 = bitcast i32 %lampsim14 to float
  %22 = load ptr, ptr %A.addr, align 4
  %23 = load i32, ptr %i, align 4
  %arrayidx24 = getelementptr inbounds [5 x [5 x float]], ptr %22, i32 %23
  %24 = load i32, ptr %j, align 4
  %add25 = add nsw i32 %24, 1
  %arrayidx26 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx24, i32 0, i32 %add25
  %25 = load i32, ptr %k, align 4
  %arrayidx27 = getelementptr inbounds [5 x float], ptr %arrayidx26, i32 0, i32 %25
  %26 = load float, ptr %arrayidx27, align 4
  %27 = load ptr, ptr %A.addr, align 4
  %28 = load i32, ptr %i, align 4
  %arrayidx28 = getelementptr inbounds [5 x [5 x float]], ptr %27, i32 %28
  %29 = load i32, ptr %j, align 4
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx28, i32 0, i32 %29
  %30 = load i32, ptr %k, align 4
  %arrayidx30 = getelementptr inbounds [5 x float], ptr %arrayidx29, i32 0, i32 %30
  %31 = load float, ptr %arrayidx30, align 4
  %mul3116 = fmul float 2.000000e+00, %31
  %lampsim17 = bitcast float %mul3116 to i32
  %lampsim18 = and i32 %lampsim17, -1
  %lampsim19 = bitcast i32 %lampsim18 to float
  %sub3220 = fsub float %26, %lampsim19
  %lampsim21 = bitcast float %sub3220 to i32
  %lampsim22 = and i32 %lampsim21, -1
  %lampsim23 = bitcast i32 %lampsim22 to float
  %32 = load ptr, ptr %A.addr, align 4
  %33 = load i32, ptr %i, align 4
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], ptr %32, i32 %33
  %34 = load i32, ptr %j, align 4
  %sub34 = sub nsw i32 %34, 1
  %arrayidx35 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx33, i32 0, i32 %sub34
  %35 = load i32, ptr %k, align 4
  %arrayidx36 = getelementptr inbounds [5 x float], ptr %arrayidx35, i32 0, i32 %35
  %36 = load float, ptr %arrayidx36, align 4
  %add3724 = fadd float %lampsim23, %36
  %lampsim25 = bitcast float %add3724 to i32
  %lampsim26 = and i32 %lampsim25, -1
  %lampsim27 = bitcast i32 %lampsim26 to float
  %mul3828 = fmul float 1.250000e-01, %lampsim27
  %lampsim29 = bitcast float %mul3828 to i32
  %lampsim30 = and i32 %lampsim29, -1
  %lampsim31 = bitcast i32 %lampsim30 to float
  %add3932 = fadd float %lampsim15, %lampsim31
  %lampsim33 = bitcast float %add3932 to i32
  %lampsim34 = and i32 %lampsim33, -1
  %lampsim35 = bitcast i32 %lampsim34 to float
  %37 = load ptr, ptr %A.addr, align 4
  %38 = load i32, ptr %i, align 4
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], ptr %37, i32 %38
  %39 = load i32, ptr %j, align 4
  %arrayidx41 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx40, i32 0, i32 %39
  %40 = load i32, ptr %k, align 4
  %add42 = add nsw i32 %40, 1
  %arrayidx43 = getelementptr inbounds [5 x float], ptr %arrayidx41, i32 0, i32 %add42
  %41 = load float, ptr %arrayidx43, align 4
  %42 = load ptr, ptr %A.addr, align 4
  %43 = load i32, ptr %i, align 4
  %arrayidx44 = getelementptr inbounds [5 x [5 x float]], ptr %42, i32 %43
  %44 = load i32, ptr %j, align 4
  %arrayidx45 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx44, i32 0, i32 %44
  %45 = load i32, ptr %k, align 4
  %arrayidx46 = getelementptr inbounds [5 x float], ptr %arrayidx45, i32 0, i32 %45
  %46 = load float, ptr %arrayidx46, align 4
  %mul4736 = fmul float 2.000000e+00, %46
  %lampsim37 = bitcast float %mul4736 to i32
  %lampsim38 = and i32 %lampsim37, -1
  %lampsim39 = bitcast i32 %lampsim38 to float
  %sub4840 = fsub float %41, %lampsim39
  %lampsim41 = bitcast float %sub4840 to i32
  %lampsim42 = and i32 %lampsim41, -1
  %lampsim43 = bitcast i32 %lampsim42 to float
  %47 = load ptr, ptr %A.addr, align 4
  %48 = load i32, ptr %i, align 4
  %arrayidx49 = getelementptr inbounds [5 x [5 x float]], ptr %47, i32 %48
  %49 = load i32, ptr %j, align 4
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx49, i32 0, i32 %49
  %50 = load i32, ptr %k, align 4
  %sub51 = sub nsw i32 %50, 1
  %arrayidx52 = getelementptr inbounds [5 x float], ptr %arrayidx50, i32 0, i32 %sub51
  %51 = load float, ptr %arrayidx52, align 4
  %add5344 = fadd float %lampsim43, %51
  %lampsim45 = bitcast float %add5344 to i32
  %lampsim46 = and i32 %lampsim45, -1
  %lampsim47 = bitcast i32 %lampsim46 to float
  %mul5448 = fmul float 1.250000e-01, %lampsim47
  %lampsim49 = bitcast float %mul5448 to i32
  %lampsim50 = and i32 %lampsim49, -1
  %lampsim51 = bitcast i32 %lampsim50 to float
  %add5552 = fadd float %lampsim35, %lampsim51
  %lampsim53 = bitcast float %add5552 to i32
  %lampsim54 = and i32 %lampsim53, -1
  %lampsim55 = bitcast i32 %lampsim54 to float
  %52 = load ptr, ptr %A.addr, align 4
  %53 = load i32, ptr %i, align 4
  %arrayidx56 = getelementptr inbounds [5 x [5 x float]], ptr %52, i32 %53
  %54 = load i32, ptr %j, align 4
  %arrayidx57 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx56, i32 0, i32 %54
  %55 = load i32, ptr %k, align 4
  %arrayidx58 = getelementptr inbounds [5 x float], ptr %arrayidx57, i32 0, i32 %55
  %56 = load float, ptr %arrayidx58, align 4
  %add5956 = fadd float %lampsim55, %56
  %lampsim57 = bitcast float %add5956 to i32
  %lampsim58 = and i32 %lampsim57, -1
  %lampsim59 = bitcast i32 %lampsim58 to float
  %57 = load ptr, ptr %B.addr, align 4
  %58 = load i32, ptr %i, align 4
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], ptr %57, i32 %58
  %59 = load i32, ptr %j, align 4
  %arrayidx61 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx60, i32 0, i32 %59
  %60 = load i32, ptr %k, align 4
  %arrayidx62 = getelementptr inbounds [5 x float], ptr %arrayidx61, i32 0, i32 %60
  store float %lampsim59, ptr %arrayidx62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %61 = load i32, ptr %k, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond8, !llvm.loop !21

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %62 = load i32, ptr %j, align 4
  %inc64 = add nsw i32 %62, 1
  store i32 %inc64, ptr %j, align 4
  br label %for.cond4, !llvm.loop !22

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %63 = load i32, ptr %i, align 4
  %inc67 = add nsw i32 %63, 1
  store i32 %inc67, ptr %i, align 4
  br label %for.cond1, !llvm.loop !23

for.end68:                                        ; preds = %for.cond1
  store i32 1, ptr %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %64 = load i32, ptr %i, align 4
  %65 = load i32, ptr %n.addr, align 4
  %sub70 = sub nsw i32 %65, 1
  %cmp71 = icmp slt i32 %64, %sub70
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  store i32 1, ptr %j, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %66 = load i32, ptr %j, align 4
  %67 = load i32, ptr %n.addr, align 4
  %sub74 = sub nsw i32 %67, 1
  %cmp75 = icmp slt i32 %66, %sub74
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  store i32 1, ptr %k, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %68 = load i32, ptr %k, align 4
  %69 = load i32, ptr %n.addr, align 4
  %sub78 = sub nsw i32 %69, 1
  %cmp79 = icmp slt i32 %68, %sub78
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %70 = load ptr, ptr %B.addr, align 4
  %71 = load i32, ptr %i, align 4
  %add81 = add nsw i32 %71, 1
  %arrayidx82 = getelementptr inbounds [5 x [5 x float]], ptr %70, i32 %add81
  %72 = load i32, ptr %j, align 4
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx82, i32 0, i32 %72
  %73 = load i32, ptr %k, align 4
  %arrayidx84 = getelementptr inbounds [5 x float], ptr %arrayidx83, i32 0, i32 %73
  %74 = load float, ptr %arrayidx84, align 4
  %75 = load ptr, ptr %B.addr, align 4
  %76 = load i32, ptr %i, align 4
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], ptr %75, i32 %76
  %77 = load i32, ptr %j, align 4
  %arrayidx86 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx85, i32 0, i32 %77
  %78 = load i32, ptr %k, align 4
  %arrayidx87 = getelementptr inbounds [5 x float], ptr %arrayidx86, i32 0, i32 %78
  %79 = load float, ptr %arrayidx87, align 4
  %mul8860 = fmul float 2.000000e+00, %79
  %lampsim61 = bitcast float %mul8860 to i32
  %lampsim62 = and i32 %lampsim61, -1
  %lampsim63 = bitcast i32 %lampsim62 to float
  %sub8964 = fsub float %74, %lampsim63
  %lampsim65 = bitcast float %sub8964 to i32
  %lampsim66 = and i32 %lampsim65, -1
  %lampsim67 = bitcast i32 %lampsim66 to float
  %80 = load ptr, ptr %B.addr, align 4
  %81 = load i32, ptr %i, align 4
  %sub90 = sub nsw i32 %81, 1
  %arrayidx91 = getelementptr inbounds [5 x [5 x float]], ptr %80, i32 %sub90
  %82 = load i32, ptr %j, align 4
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx91, i32 0, i32 %82
  %83 = load i32, ptr %k, align 4
  %arrayidx93 = getelementptr inbounds [5 x float], ptr %arrayidx92, i32 0, i32 %83
  %84 = load float, ptr %arrayidx93, align 4
  %add9468 = fadd float %lampsim67, %84
  %lampsim69 = bitcast float %add9468 to i32
  %lampsim70 = and i32 %lampsim69, -1
  %lampsim71 = bitcast i32 %lampsim70 to float
  %mul9572 = fmul float 1.250000e-01, %lampsim71
  %lampsim73 = bitcast float %mul9572 to i32
  %lampsim74 = and i32 %lampsim73, -1
  %lampsim75 = bitcast i32 %lampsim74 to float
  %85 = load ptr, ptr %B.addr, align 4
  %86 = load i32, ptr %i, align 4
  %arrayidx96 = getelementptr inbounds [5 x [5 x float]], ptr %85, i32 %86
  %87 = load i32, ptr %j, align 4
  %add97 = add nsw i32 %87, 1
  %arrayidx98 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx96, i32 0, i32 %add97
  %88 = load i32, ptr %k, align 4
  %arrayidx99 = getelementptr inbounds [5 x float], ptr %arrayidx98, i32 0, i32 %88
  %89 = load float, ptr %arrayidx99, align 4
  %90 = load ptr, ptr %B.addr, align 4
  %91 = load i32, ptr %i, align 4
  %arrayidx100 = getelementptr inbounds [5 x [5 x float]], ptr %90, i32 %91
  %92 = load i32, ptr %j, align 4
  %arrayidx101 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx100, i32 0, i32 %92
  %93 = load i32, ptr %k, align 4
  %arrayidx102 = getelementptr inbounds [5 x float], ptr %arrayidx101, i32 0, i32 %93
  %94 = load float, ptr %arrayidx102, align 4
  %mul10376 = fmul float 2.000000e+00, %94
  %lampsim77 = bitcast float %mul10376 to i32
  %lampsim78 = and i32 %lampsim77, -1
  %lampsim79 = bitcast i32 %lampsim78 to float
  %sub10480 = fsub float %89, %lampsim79
  %lampsim81 = bitcast float %sub10480 to i32
  %lampsim82 = and i32 %lampsim81, -1
  %lampsim83 = bitcast i32 %lampsim82 to float
  %95 = load ptr, ptr %B.addr, align 4
  %96 = load i32, ptr %i, align 4
  %arrayidx105 = getelementptr inbounds [5 x [5 x float]], ptr %95, i32 %96
  %97 = load i32, ptr %j, align 4
  %sub106 = sub nsw i32 %97, 1
  %arrayidx107 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx105, i32 0, i32 %sub106
  %98 = load i32, ptr %k, align 4
  %arrayidx108 = getelementptr inbounds [5 x float], ptr %arrayidx107, i32 0, i32 %98
  %99 = load float, ptr %arrayidx108, align 4
  %add10984 = fadd float %lampsim83, %99
  %lampsim85 = bitcast float %add10984 to i32
  %lampsim86 = and i32 %lampsim85, -1
  %lampsim87 = bitcast i32 %lampsim86 to float
  %mul11088 = fmul float 1.250000e-01, %lampsim87
  %lampsim89 = bitcast float %mul11088 to i32
  %lampsim90 = and i32 %lampsim89, -1
  %lampsim91 = bitcast i32 %lampsim90 to float
  %add11192 = fadd float %lampsim75, %lampsim91
  %lampsim93 = bitcast float %add11192 to i32
  %lampsim94 = and i32 %lampsim93, -1
  %lampsim95 = bitcast i32 %lampsim94 to float
  %100 = load ptr, ptr %B.addr, align 4
  %101 = load i32, ptr %i, align 4
  %arrayidx112 = getelementptr inbounds [5 x [5 x float]], ptr %100, i32 %101
  %102 = load i32, ptr %j, align 4
  %arrayidx113 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx112, i32 0, i32 %102
  %103 = load i32, ptr %k, align 4
  %add114 = add nsw i32 %103, 1
  %arrayidx115 = getelementptr inbounds [5 x float], ptr %arrayidx113, i32 0, i32 %add114
  %104 = load float, ptr %arrayidx115, align 4
  %105 = load ptr, ptr %B.addr, align 4
  %106 = load i32, ptr %i, align 4
  %arrayidx116 = getelementptr inbounds [5 x [5 x float]], ptr %105, i32 %106
  %107 = load i32, ptr %j, align 4
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx116, i32 0, i32 %107
  %108 = load i32, ptr %k, align 4
  %arrayidx118 = getelementptr inbounds [5 x float], ptr %arrayidx117, i32 0, i32 %108
  %109 = load float, ptr %arrayidx118, align 4
  %mul11996 = fmul float 2.000000e+00, %109
  %lampsim97 = bitcast float %mul11996 to i32
  %lampsim98 = and i32 %lampsim97, -1
  %lampsim99 = bitcast i32 %lampsim98 to float
  %sub120100 = fsub float %104, %lampsim99
  %lampsim101 = bitcast float %sub120100 to i32
  %lampsim102 = and i32 %lampsim101, -1
  %lampsim103 = bitcast i32 %lampsim102 to float
  %110 = load ptr, ptr %B.addr, align 4
  %111 = load i32, ptr %i, align 4
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], ptr %110, i32 %111
  %112 = load i32, ptr %j, align 4
  %arrayidx122 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx121, i32 0, i32 %112
  %113 = load i32, ptr %k, align 4
  %sub123 = sub nsw i32 %113, 1
  %arrayidx124 = getelementptr inbounds [5 x float], ptr %arrayidx122, i32 0, i32 %sub123
  %114 = load float, ptr %arrayidx124, align 4
  %add125104 = fadd float %lampsim103, %114
  %lampsim105 = bitcast float %add125104 to i32
  %lampsim106 = and i32 %lampsim105, -1
  %lampsim107 = bitcast i32 %lampsim106 to float
  %mul126108 = fmul float 1.250000e-01, %lampsim107
  %lampsim109 = bitcast float %mul126108 to i32
  %lampsim110 = and i32 %lampsim109, -1
  %lampsim111 = bitcast i32 %lampsim110 to float
  %add127112 = fadd float %lampsim95, %lampsim111
  %lampsim113 = bitcast float %add127112 to i32
  %lampsim114 = and i32 %lampsim113, -1
  %lampsim115 = bitcast i32 %lampsim114 to float
  %115 = load ptr, ptr %B.addr, align 4
  %116 = load i32, ptr %i, align 4
  %arrayidx128 = getelementptr inbounds [5 x [5 x float]], ptr %115, i32 %116
  %117 = load i32, ptr %j, align 4
  %arrayidx129 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx128, i32 0, i32 %117
  %118 = load i32, ptr %k, align 4
  %arrayidx130 = getelementptr inbounds [5 x float], ptr %arrayidx129, i32 0, i32 %118
  %119 = load float, ptr %arrayidx130, align 4
  %add131116 = fadd float %lampsim115, %119
  %lampsim117 = bitcast float %add131116 to i32
  %lampsim118 = and i32 %lampsim117, -1
  %lampsim119 = bitcast i32 %lampsim118 to float
  %120 = load ptr, ptr %A.addr, align 4
  %121 = load i32, ptr %i, align 4
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], ptr %120, i32 %121
  %122 = load i32, ptr %j, align 4
  %arrayidx133 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx132, i32 0, i32 %122
  %123 = load i32, ptr %k, align 4
  %arrayidx134 = getelementptr inbounds [5 x float], ptr %arrayidx133, i32 0, i32 %123
  store float %lampsim119, ptr %arrayidx134, align 4
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %124 = load i32, ptr %k, align 4
  %inc136 = add nsw i32 %124, 1
  store i32 %inc136, ptr %k, align 4
  br label %for.cond77, !llvm.loop !24

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %125 = load i32, ptr %j, align 4
  %inc139 = add nsw i32 %125, 1
  store i32 %inc139, ptr %j, align 4
  br label %for.cond73, !llvm.loop !25

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %126 = load i32, ptr %i, align 4
  %inc142 = add nsw i32 %126, 1
  store i32 %inc142, ptr %i, align 4
  br label %for.cond69, !llvm.loop !26

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %127 = load i32, ptr %t, align 4
  %inc145 = add nsw i32 %127, 1
  store i32 %inc145, ptr %t, align 4
  br label %for.cond, !llvm.loop !27

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %n.addr, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, ptr %n.addr, align 4
  %mul7 = mul nsw i32 %mul, %8
  %9 = load i32, ptr %j, align 4
  %10 = load i32, ptr %n.addr, align 4
  %mul8 = mul nsw i32 %9, %10
  %add = add nsw i32 %mul7, %mul8
  %11 = load i32, ptr %k, align 4
  %add9 = add nsw i32 %add, %11
  %rem = srem i32 %add9, 20
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %12 = load ptr, ptr @stderr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %13 = load ptr, ptr @stderr, align 4
  %14 = load ptr, ptr %A.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], ptr %14, i32 %15
  %16 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], ptr %arrayidx, i32 0, i32 %16
  %17 = load i32, ptr %k, align 4
  %arrayidx12 = getelementptr inbounds [5 x float], ptr %arrayidx11, i32 0, i32 %17
  %18 = load float, ptr %arrayidx12, align 4
  %conv1 = fpext float %18 to double
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.5, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !28

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %20 = load i32, ptr %j, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, ptr %j, align 4
  br label %for.cond1, !llvm.loop !29

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %21 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !30

for.end19:                                        ; preds = %for.cond
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
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
