; ModuleID = './build/bin/float/ludcmp/11/ludcmp-standard-128-float-11.out.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"scalar(range(0.1,1046.079956) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [39 x i8] c"scalar(range(128.0,1046.079956) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [38 x i8] c"scalar(range(515.200012,576.0) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [52 x i8] c"target('x') scalar(range(-0.037947,3.998521) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,515.200012) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %lampsim2 = and i32 %lampsim, -8192
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
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %6, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %9 = load float, ptr %constTwoVal, align 4
  %10 = load float, ptr %x, align 4
  %mul312 = fmul float %9, %10
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %dx, align 4
  %11 = load float, ptr %x, align 4
  %12 = load float, ptr %dx, align 4
  %add20 = fadd float %11, %12
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  store float %lampsim23, ptr %x, align 4
  %13 = load float, ptr %val.addr, align 4
  %14 = load float, ptr %x, align 4
  %15 = load float, ptr %x, align 4
  %mul524 = fmul float %14, %15
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %13, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -8192
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
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %5, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
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
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %10, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
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
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %16, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
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
  %A = alloca [20 x [20 x float]], align 4
  %B = alloca [20 x [20 x float]], align 4
  %b = alloca [20 x float], align 4
  %x = alloca [20 x float], align 4
  %y = alloca [20 x float], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 20, ptr %n, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 166, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.2, ptr @.str.1, i32 167, ptr null)
  call void @llvm.var.annotation(ptr %b, ptr @.str.3, ptr @.str.1, i32 168, ptr null)
  call void @llvm.var.annotation(ptr %x, ptr @.str.4, ptr @.str.1, i32 169, ptr null)
  call void @llvm.var.annotation(ptr %y, ptr @.str.5, ptr @.str.1, i32 170, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [20 x [20 x float]], ptr %B, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [20 x float], ptr %b, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [20 x float], ptr %y, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  %arraydecay5 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 20, i32 noundef 20, ptr noundef %arraydecay5, i32 noundef 128)
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], ptr %B, i32 0, i32 0
  call void @scale_2d(i32 noundef 20, i32 noundef 20, ptr noundef %arraydecay6, i32 noundef 128)
  %arraydecay7 = getelementptr inbounds [20 x float], ptr %b, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay7, i32 noundef 128)
  %arraydecay8 = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay8, i32 noundef 128)
  %arraydecay9 = getelementptr inbounds [20 x float], ptr %y, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay9, i32 noundef 128)
  call void @timer_start()
  %1 = load i32, ptr %n, align 4
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [20 x float], ptr %b, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [20 x float], ptr %y, i32 0, i32 0
  call void @kernel_ludcmp(i32 noundef %1, ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %arraydecay13)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 %4
  %5 = load float, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], ptr @x_float, i32 0, i32 %6
  store float %5, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %8, ptr noundef @x_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %A, ptr noundef %B, ptr noundef %b, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store ptr %b, ptr %b.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.6, ptr @.str.1, i32 37, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.6, ptr @.str.1, i32 38, ptr null)
  call void @llvm.var.annotation(ptr %fn, ptr @.str.7, ptr @.str.1, i32 39, ptr null)
  %0 = load i32, ptr %n.addr, align 4
  %conv1 = sitofp i32 %0 to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  store float %lampsim3, ptr %fn, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %x.addr, align 4
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %3, i32 %4
  store float 0.000000e+00, ptr %arrayidx, align 4
  %5 = load ptr, ptr %y.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx2 = getelementptr inbounds float, ptr %5, i32 %6
  store float 0.000000e+00, ptr %arrayidx2, align 4
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 %7, 1
  %conv34 = sitofp i32 %add to float
  %lampsim5 = bitcast float %conv34 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %8 = load float, ptr %fn, align 4
  %div8 = fdiv float %lampsim7, %8
  %lampsim9 = bitcast float %div8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %conv412 = fpext float %lampsim11 to double
  %lampsim13 = bitcast double %conv412 to i64
  %lampsim14 = and i64 %lampsim13, -4398046511104
  %lampsim15 = bitcast i64 %lampsim14 to double
  %div516 = fdiv double %lampsim15, 2.000000e+00
  %lampsim17 = bitcast double %div516 to i64
  %lampsim18 = and i64 %lampsim17, -4398046511104
  %lampsim19 = bitcast i64 %lampsim18 to double
  %add620 = fadd double %lampsim19, 4.000000e+00
  %lampsim21 = bitcast double %add620 to i64
  %lampsim22 = and i64 %lampsim21, -4398046511104
  %lampsim23 = bitcast i64 %lampsim22 to double
  %conv724 = fptrunc double %lampsim23 to float
  %lampsim25 = bitcast float %conv724 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %9 = load ptr, ptr %b.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds float, ptr %9, i32 %10
  store float %lampsim27, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc38, %for.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %n.addr, align 4
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body12, label %for.end40

for.body12:                                       ; preds = %for.cond9
  store i32 0, ptr %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.body12
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %i, align 4
  %cmp14 = icmp sle i32 %14, %15
  br i1 %cmp14, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond13
  %16 = load i32, ptr %j, align 4
  %sub = sub nsw i32 0, %16
  %17 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %sub, %17
  %conv1728 = sitofp i32 %rem to float
  %lampsim29 = bitcast float %conv1728 to i32
  %lampsim30 = and i32 %lampsim29, -8192
  %lampsim31 = bitcast i32 %lampsim30 to float
  %18 = load i32, ptr %n.addr, align 4
  %conv1832 = sitofp i32 %18 to float
  %lampsim33 = bitcast float %conv1832 to i32
  %lampsim34 = and i32 %lampsim33, -8192
  %lampsim35 = bitcast i32 %lampsim34 to float
  %div1936 = fdiv float %lampsim31, %lampsim35
  %lampsim37 = bitcast float %div1936 to i32
  %lampsim38 = and i32 %lampsim37, -8192
  %lampsim39 = bitcast i32 %lampsim38 to float
  %add2040 = fadd float %lampsim39, 1.000000e+00
  %lampsim41 = bitcast float %add2040 to i32
  %lampsim42 = and i32 %lampsim41, -8192
  %lampsim43 = bitcast i32 %lampsim42 to float
  %19 = load ptr, ptr %A.addr, align 4
  %20 = load i32, ptr %i, align 4
  %arrayidx21 = getelementptr inbounds [20 x float], ptr %19, i32 %20
  %21 = load i32, ptr %j, align 4
  %arrayidx22 = getelementptr inbounds [20 x float], ptr %arrayidx21, i32 0, i32 %21
  store float %lampsim43, ptr %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %22 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond13, !llvm.loop !17

for.end25:                                        ; preds = %for.cond13
  %23 = load i32, ptr %i, align 4
  %add26 = add nsw i32 %23, 1
  store i32 %add26, ptr %j, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc33, %for.end25
  %24 = load i32, ptr %j, align 4
  %25 = load i32, ptr %n.addr, align 4
  %cmp28 = icmp slt i32 %24, %25
  br i1 %cmp28, label %for.body30, label %for.end35

for.body30:                                       ; preds = %for.cond27
  %26 = load ptr, ptr %A.addr, align 4
  %27 = load i32, ptr %i, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], ptr %26, i32 %27
  %28 = load i32, ptr %j, align 4
  %arrayidx32 = getelementptr inbounds [20 x float], ptr %arrayidx31, i32 0, i32 %28
  store float 0.000000e+00, ptr %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body30
  %29 = load i32, ptr %j, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, ptr %j, align 4
  br label %for.cond27, !llvm.loop !18

for.end35:                                        ; preds = %for.cond27
  %30 = load ptr, ptr %A.addr, align 4
  %31 = load i32, ptr %i, align 4
  %arrayidx36 = getelementptr inbounds [20 x float], ptr %30, i32 %31
  %32 = load i32, ptr %i, align 4
  %arrayidx37 = getelementptr inbounds [20 x float], ptr %arrayidx36, i32 0, i32 %32
  store float 1.000000e+00, ptr %arrayidx37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.end35
  %33 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, ptr %i, align 4
  br label %for.cond9, !llvm.loop !19

for.end40:                                        ; preds = %for.cond9
  store i32 0, ptr %r, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc54, %for.end40
  %34 = load i32, ptr %r, align 4
  %35 = load i32, ptr %n.addr, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body44, label %for.end56

for.body44:                                       ; preds = %for.cond41
  store i32 0, ptr %s, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc51, %for.body44
  %36 = load i32, ptr %s, align 4
  %37 = load i32, ptr %n.addr, align 4
  %cmp46 = icmp slt i32 %36, %37
  br i1 %cmp46, label %for.body48, label %for.end53

for.body48:                                       ; preds = %for.cond45
  %38 = load ptr, ptr %B.addr, align 4
  %39 = load i32, ptr %r, align 4
  %arrayidx49 = getelementptr inbounds [20 x float], ptr %38, i32 %39
  %40 = load i32, ptr %s, align 4
  %arrayidx50 = getelementptr inbounds [20 x float], ptr %arrayidx49, i32 0, i32 %40
  store float 0.000000e+00, ptr %arrayidx50, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body48
  %41 = load i32, ptr %s, align 4
  %inc52 = add nsw i32 %41, 1
  store i32 %inc52, ptr %s, align 4
  br label %for.cond45, !llvm.loop !20

for.end53:                                        ; preds = %for.cond45
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %42 = load i32, ptr %r, align 4
  %inc55 = add nsw i32 %42, 1
  store i32 %inc55, ptr %r, align 4
  br label %for.cond41, !llvm.loop !21

for.end56:                                        ; preds = %for.cond41
  store i32 0, ptr %t, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc82, %for.end56
  %43 = load i32, ptr %t, align 4
  %44 = load i32, ptr %n.addr, align 4
  %cmp58 = icmp slt i32 %43, %44
  br i1 %cmp58, label %for.body60, label %for.end84

for.body60:                                       ; preds = %for.cond57
  store i32 0, ptr %r, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc79, %for.body60
  %45 = load i32, ptr %r, align 4
  %46 = load i32, ptr %n.addr, align 4
  %cmp62 = icmp slt i32 %45, %46
  br i1 %cmp62, label %for.body64, label %for.end81

for.body64:                                       ; preds = %for.cond61
  store i32 0, ptr %s, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc76, %for.body64
  %47 = load i32, ptr %s, align 4
  %48 = load i32, ptr %n.addr, align 4
  %cmp66 = icmp slt i32 %47, %48
  br i1 %cmp66, label %for.body68, label %for.end78

for.body68:                                       ; preds = %for.cond65
  %49 = load ptr, ptr %A.addr, align 4
  %50 = load i32, ptr %r, align 4
  %arrayidx69 = getelementptr inbounds [20 x float], ptr %49, i32 %50
  %51 = load i32, ptr %t, align 4
  %arrayidx70 = getelementptr inbounds [20 x float], ptr %arrayidx69, i32 0, i32 %51
  %52 = load float, ptr %arrayidx70, align 4
  %53 = load ptr, ptr %A.addr, align 4
  %54 = load i32, ptr %s, align 4
  %arrayidx71 = getelementptr inbounds [20 x float], ptr %53, i32 %54
  %55 = load i32, ptr %t, align 4
  %arrayidx72 = getelementptr inbounds [20 x float], ptr %arrayidx71, i32 0, i32 %55
  %56 = load float, ptr %arrayidx72, align 4
  %mul44 = fmul float %52, %56
  %lampsim45 = bitcast float %mul44 to i32
  %lampsim46 = and i32 %lampsim45, -8192
  %lampsim47 = bitcast i32 %lampsim46 to float
  %57 = load ptr, ptr %B.addr, align 4
  %58 = load i32, ptr %r, align 4
  %arrayidx73 = getelementptr inbounds [20 x float], ptr %57, i32 %58
  %59 = load i32, ptr %s, align 4
  %arrayidx74 = getelementptr inbounds [20 x float], ptr %arrayidx73, i32 0, i32 %59
  %60 = load float, ptr %arrayidx74, align 4
  %add7548 = fadd float %60, %lampsim47
  %lampsim49 = bitcast float %add7548 to i32
  %lampsim50 = and i32 %lampsim49, -8192
  %lampsim51 = bitcast i32 %lampsim50 to float
  store float %lampsim51, ptr %arrayidx74, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body68
  %61 = load i32, ptr %s, align 4
  %inc77 = add nsw i32 %61, 1
  store i32 %inc77, ptr %s, align 4
  br label %for.cond65, !llvm.loop !22

for.end78:                                        ; preds = %for.cond65
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  %62 = load i32, ptr %r, align 4
  %inc80 = add nsw i32 %62, 1
  store i32 %inc80, ptr %r, align 4
  br label %for.cond61, !llvm.loop !23

for.end81:                                        ; preds = %for.cond61
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %63 = load i32, ptr %t, align 4
  %inc83 = add nsw i32 %63, 1
  store i32 %inc83, ptr %t, align 4
  br label %for.cond57, !llvm.loop !24

for.end84:                                        ; preds = %for.cond57
  store i32 0, ptr %r, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %for.end84
  %64 = load i32, ptr %r, align 4
  %65 = load i32, ptr %n.addr, align 4
  %cmp86 = icmp slt i32 %64, %65
  br i1 %cmp86, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond85
  store i32 0, ptr %s, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc97, %for.body88
  %66 = load i32, ptr %s, align 4
  %67 = load i32, ptr %n.addr, align 4
  %cmp90 = icmp slt i32 %66, %67
  br i1 %cmp90, label %for.body92, label %for.end99

for.body92:                                       ; preds = %for.cond89
  %68 = load ptr, ptr %B.addr, align 4
  %69 = load i32, ptr %r, align 4
  %arrayidx93 = getelementptr inbounds [20 x float], ptr %68, i32 %69
  %70 = load i32, ptr %s, align 4
  %arrayidx94 = getelementptr inbounds [20 x float], ptr %arrayidx93, i32 0, i32 %70
  %71 = load float, ptr %arrayidx94, align 4
  %72 = load ptr, ptr %A.addr, align 4
  %73 = load i32, ptr %r, align 4
  %arrayidx95 = getelementptr inbounds [20 x float], ptr %72, i32 %73
  %74 = load i32, ptr %s, align 4
  %arrayidx96 = getelementptr inbounds [20 x float], ptr %arrayidx95, i32 0, i32 %74
  store float %71, ptr %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body92
  %75 = load i32, ptr %s, align 4
  %inc98 = add nsw i32 %75, 1
  store i32 %inc98, ptr %s, align 4
  br label %for.cond89, !llvm.loop !25

for.end99:                                        ; preds = %for.cond89
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %76 = load i32, ptr %r, align 4
  %inc101 = add nsw i32 %76, 1
  store i32 %inc101, ptr %r, align 4
  br label %for.cond85, !llvm.loop !26

for.end102:                                       ; preds = %for.cond85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, ptr noundef %A, ptr noundef %b, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %b, ptr %b.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 4
  call void @llvm.var.annotation(ptr %w, ptr @.str.8, ptr @.str.1, i32 122, ptr null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %A.addr, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %4, i32 %5
  %6 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], ptr %arrayidx, i32 0, i32 %6
  %7 = load float, ptr %arrayidx4, align 4
  store float %7, ptr %w, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %8 = load i32, ptr %k, align 4
  %9 = load i32, ptr %j, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %A.addr, align 4
  %11 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], ptr %10, i32 %11
  %12 = load i32, ptr %k, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], ptr %arrayidx8, i32 0, i32 %12
  %13 = load float, ptr %arrayidx9, align 4
  %14 = load ptr, ptr %A.addr, align 4
  %15 = load i32, ptr %k, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], ptr %14, i32 %15
  %16 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], ptr %arrayidx10, i32 0, i32 %16
  %17 = load float, ptr %arrayidx11, align 4
  %mul1 = fmul float %13, %17
  %lampsim = bitcast float %mul1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %18 = load float, ptr %w, align 4
  %sub4 = fsub float %18, %lampsim3
  %lampsim5 = bitcast float %sub4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  store float %lampsim7, ptr %w, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond5, !llvm.loop !27

for.end:                                          ; preds = %for.cond5
  %20 = load float, ptr %w, align 4
  %21 = load ptr, ptr %A.addr, align 4
  %22 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], ptr %21, i32 %22
  %23 = load i32, ptr %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], ptr %arrayidx12, i32 0, i32 %23
  %24 = load float, ptr %arrayidx13, align 4
  %div8 = fdiv float %20, %24
  %lampsim9 = bitcast float %div8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %25 = load ptr, ptr %A.addr, align 4
  %26 = load i32, ptr %i, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], ptr %25, i32 %26
  %27 = load i32, ptr %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], ptr %arrayidx14, i32 0, i32 %27
  store float %lampsim11, ptr %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %28 = load i32, ptr %j, align 4
  %inc17 = add nsw i32 %28, 1
  store i32 %inc17, ptr %j, align 4
  br label %for.cond1, !llvm.loop !28

for.end18:                                        ; preds = %for.cond1
  %29 = load i32, ptr %i, align 4
  store i32 %29, ptr %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %30 = load i32, ptr %j, align 4
  %31 = load i32, ptr %n.addr, align 4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body21, label %for.end40

for.body21:                                       ; preds = %for.cond19
  %32 = load ptr, ptr %A.addr, align 4
  %33 = load i32, ptr %i, align 4
  %arrayidx22 = getelementptr inbounds [20 x float], ptr %32, i32 %33
  %34 = load i32, ptr %j, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], ptr %arrayidx22, i32 0, i32 %34
  %35 = load float, ptr %arrayidx23, align 4
  store float %35, ptr %w, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc33, %for.body21
  %36 = load i32, ptr %k, align 4
  %37 = load i32, ptr %i, align 4
  %cmp25 = icmp slt i32 %36, %37
  br i1 %cmp25, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.cond24
  %38 = load ptr, ptr %A.addr, align 4
  %39 = load i32, ptr %i, align 4
  %arrayidx27 = getelementptr inbounds [20 x float], ptr %38, i32 %39
  %40 = load i32, ptr %k, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], ptr %arrayidx27, i32 0, i32 %40
  %41 = load float, ptr %arrayidx28, align 4
  %42 = load ptr, ptr %A.addr, align 4
  %43 = load i32, ptr %k, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], ptr %42, i32 %43
  %44 = load i32, ptr %j, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], ptr %arrayidx29, i32 0, i32 %44
  %45 = load float, ptr %arrayidx30, align 4
  %mul3112 = fmul float %41, %45
  %lampsim13 = bitcast float %mul3112 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %46 = load float, ptr %w, align 4
  %sub3216 = fsub float %46, %lampsim15
  %lampsim17 = bitcast float %sub3216 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %w, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body26
  %47 = load i32, ptr %k, align 4
  %inc34 = add nsw i32 %47, 1
  store i32 %inc34, ptr %k, align 4
  br label %for.cond24, !llvm.loop !29

for.end35:                                        ; preds = %for.cond24
  %48 = load float, ptr %w, align 4
  %49 = load ptr, ptr %A.addr, align 4
  %50 = load i32, ptr %i, align 4
  %arrayidx36 = getelementptr inbounds [20 x float], ptr %49, i32 %50
  %51 = load i32, ptr %j, align 4
  %arrayidx37 = getelementptr inbounds [20 x float], ptr %arrayidx36, i32 0, i32 %51
  store float %48, ptr %arrayidx37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.end35
  %52 = load i32, ptr %j, align 4
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, ptr %j, align 4
  br label %for.cond19, !llvm.loop !30

for.end40:                                        ; preds = %for.cond19
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %53 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %53, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond, !llvm.loop !31

for.end43:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc60, %for.end43
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %n.addr, align 4
  %cmp45 = icmp slt i32 %54, %55
  br i1 %cmp45, label %for.body46, label %for.end62

for.body46:                                       ; preds = %for.cond44
  %56 = load ptr, ptr %b.addr, align 4
  %57 = load i32, ptr %i, align 4
  %arrayidx47 = getelementptr inbounds float, ptr %56, i32 %57
  %58 = load float, ptr %arrayidx47, align 4
  store float %58, ptr %w, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc56, %for.body46
  %59 = load i32, ptr %j, align 4
  %60 = load i32, ptr %i, align 4
  %cmp49 = icmp slt i32 %59, %60
  br i1 %cmp49, label %for.body50, label %for.end58

for.body50:                                       ; preds = %for.cond48
  %61 = load ptr, ptr %A.addr, align 4
  %62 = load i32, ptr %i, align 4
  %arrayidx51 = getelementptr inbounds [20 x float], ptr %61, i32 %62
  %63 = load i32, ptr %j, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], ptr %arrayidx51, i32 0, i32 %63
  %64 = load float, ptr %arrayidx52, align 4
  %65 = load ptr, ptr %y.addr, align 4
  %66 = load i32, ptr %j, align 4
  %arrayidx53 = getelementptr inbounds float, ptr %65, i32 %66
  %67 = load float, ptr %arrayidx53, align 4
  %mul5420 = fmul float %64, %67
  %lampsim21 = bitcast float %mul5420 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  %68 = load float, ptr %w, align 4
  %sub5524 = fsub float %68, %lampsim23
  %lampsim25 = bitcast float %sub5524 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  store float %lampsim27, ptr %w, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body50
  %69 = load i32, ptr %j, align 4
  %inc57 = add nsw i32 %69, 1
  store i32 %inc57, ptr %j, align 4
  br label %for.cond48, !llvm.loop !32

for.end58:                                        ; preds = %for.cond48
  %70 = load float, ptr %w, align 4
  %71 = load ptr, ptr %y.addr, align 4
  %72 = load i32, ptr %i, align 4
  %arrayidx59 = getelementptr inbounds float, ptr %71, i32 %72
  store float %70, ptr %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.end58
  %73 = load i32, ptr %i, align 4
  %inc61 = add nsw i32 %73, 1
  store i32 %inc61, ptr %i, align 4
  br label %for.cond44, !llvm.loop !33

for.end62:                                        ; preds = %for.cond44
  %74 = load i32, ptr %n.addr, align 4
  %sub63 = sub nsw i32 %74, 1
  store i32 %sub63, ptr %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc83, %for.end62
  %75 = load i32, ptr %i, align 4
  %cmp65 = icmp sge i32 %75, 0
  br i1 %cmp65, label %for.body66, label %for.end84

for.body66:                                       ; preds = %for.cond64
  %76 = load ptr, ptr %y.addr, align 4
  %77 = load i32, ptr %i, align 4
  %arrayidx67 = getelementptr inbounds float, ptr %76, i32 %77
  %78 = load float, ptr %arrayidx67, align 4
  store float %78, ptr %w, align 4
  %79 = load i32, ptr %i, align 4
  %add = add nsw i32 %79, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc76, %for.body66
  %80 = load i32, ptr %j, align 4
  %81 = load i32, ptr %n.addr, align 4
  %cmp69 = icmp slt i32 %80, %81
  br i1 %cmp69, label %for.body70, label %for.end78

for.body70:                                       ; preds = %for.cond68
  %82 = load ptr, ptr %A.addr, align 4
  %83 = load i32, ptr %i, align 4
  %arrayidx71 = getelementptr inbounds [20 x float], ptr %82, i32 %83
  %84 = load i32, ptr %j, align 4
  %arrayidx72 = getelementptr inbounds [20 x float], ptr %arrayidx71, i32 0, i32 %84
  %85 = load float, ptr %arrayidx72, align 4
  %86 = load ptr, ptr %x.addr, align 4
  %87 = load i32, ptr %j, align 4
  %arrayidx73 = getelementptr inbounds float, ptr %86, i32 %87
  %88 = load float, ptr %arrayidx73, align 4
  %mul7428 = fmul float %85, %88
  %lampsim29 = bitcast float %mul7428 to i32
  %lampsim30 = and i32 %lampsim29, -8192
  %lampsim31 = bitcast i32 %lampsim30 to float
  %89 = load float, ptr %w, align 4
  %sub7532 = fsub float %89, %lampsim31
  %lampsim33 = bitcast float %sub7532 to i32
  %lampsim34 = and i32 %lampsim33, -8192
  %lampsim35 = bitcast i32 %lampsim34 to float
  store float %lampsim35, ptr %w, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %90 = load i32, ptr %j, align 4
  %inc77 = add nsw i32 %90, 1
  store i32 %inc77, ptr %j, align 4
  br label %for.cond68, !llvm.loop !34

for.end78:                                        ; preds = %for.cond68
  %91 = load float, ptr %w, align 4
  %92 = load ptr, ptr %A.addr, align 4
  %93 = load i32, ptr %i, align 4
  %arrayidx79 = getelementptr inbounds [20 x float], ptr %92, i32 %93
  %94 = load i32, ptr %i, align 4
  %arrayidx80 = getelementptr inbounds [20 x float], ptr %arrayidx79, i32 0, i32 %94
  %95 = load float, ptr %arrayidx80, align 4
  %div8136 = fdiv float %91, %95
  %lampsim37 = bitcast float %div8136 to i32
  %lampsim38 = and i32 %lampsim37, -8192
  %lampsim39 = bitcast i32 %lampsim38 to float
  %96 = load ptr, ptr %x.addr, align 4
  %97 = load i32, ptr %i, align 4
  %arrayidx82 = getelementptr inbounds float, ptr %96, i32 %97
  store float %lampsim39, ptr %arrayidx82, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %for.end78
  %98 = load i32, ptr %i, align 4
  %dec = add nsw i32 %98, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond64, !llvm.loop !35

for.end84:                                        ; preds = %for.cond64
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %x) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x, ptr %x.addr, align 4
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 4
  %5 = load ptr, ptr %x.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %5, i32 %6
  %7 = load float, ptr %arrayidx, align 4
  %conv1 = fpext float %7 to double
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.10, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !36

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
!6 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
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
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
