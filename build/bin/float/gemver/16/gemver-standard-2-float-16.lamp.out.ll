; ModuleID = './build/bin/float/gemver/16/gemver-standard-2-float-16.out.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,2.6625) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,1.9) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [31 x i8] c"scalar(range(0.025,0.5) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [30 x i8] c"scalar(range(0.05,1.0) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [39 x i8] c"scalar(range(0.016667,0.333333) final)\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [48 x i8] c"target('w') scalar(range(0.0,213.954514) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [33 x i8] c"scalar(range(0.0,5.55125) final)\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [33 x i8] c"scalar(range(0.0125,0.25) final)\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [39 x i8] c"scalar(range(0.011111,0.222222) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 4
@w_float = dso_local global [20 x float] zeroinitializer, align 4
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %lampsim2 = and i32 %lampsim, -256
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
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %6, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -256
  %lampsim11 = bitcast i32 %lampsim10 to float
  %9 = load float, ptr %constTwoVal, align 4
  %10 = load float, ptr %x, align 4
  %mul312 = fmul float %9, %10
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -256
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -256
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %dx, align 4
  %11 = load float, ptr %x, align 4
  %12 = load float, ptr %dx, align 4
  %add20 = fadd float %11, %12
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -256
  %lampsim23 = bitcast i32 %lampsim22 to float
  store float %lampsim23, ptr %x, align 4
  %13 = load float, ptr %val.addr, align 4
  %14 = load float, ptr %x, align 4
  %15 = load float, ptr %x, align 4
  %mul524 = fmul float %14, %15
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -256
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %13, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -256
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
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %5, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
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
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %10, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
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
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %16, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
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
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %A = alloca [20 x [20 x float]], align 4
  %u1 = alloca [20 x float], align 4
  %v1 = alloca [20 x float], align 4
  %u2 = alloca [20 x float], align 4
  %v2 = alloca [20 x float], align 4
  %w = alloca [20 x float], align 4
  %x = alloca [20 x float], align 4
  %y = alloca [20 x float], align 4
  %z = alloca [20 x float], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 20, ptr %n, align 4
  call void @llvm.var.annotation(ptr %alpha, ptr @.str, ptr @.str.1, i32 153, ptr null)
  call void @llvm.var.annotation(ptr %beta, ptr @.str.2, ptr @.str.1, i32 154, ptr null)
  call void @llvm.var.annotation(ptr %A, ptr @.str.3, ptr @.str.1, i32 155, ptr null)
  call void @llvm.var.annotation(ptr %u1, ptr @.str.4, ptr @.str.1, i32 156, ptr null)
  call void @llvm.var.annotation(ptr %v1, ptr @.str.5, ptr @.str.1, i32 157, ptr null)
  call void @llvm.var.annotation(ptr %u2, ptr @.str.6, ptr @.str.1, i32 158, ptr null)
  call void @llvm.var.annotation(ptr %v2, ptr @.str.7, ptr @.str.1, i32 159, ptr null)
  call void @llvm.var.annotation(ptr %w, ptr @.str.8, ptr @.str.1, i32 160, ptr null)
  call void @llvm.var.annotation(ptr %x, ptr @.str.9, ptr @.str.1, i32 161, ptr null)
  call void @llvm.var.annotation(ptr %y, ptr @.str.10, ptr @.str.1, i32 162, ptr null)
  call void @llvm.var.annotation(ptr %z, ptr @.str.11, ptr @.str.1, i32 163, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [20 x float], ptr %u1, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [20 x float], ptr %v1, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [20 x float], ptr %u2, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [20 x float], ptr %v2, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [20 x float], ptr %w, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [20 x float], ptr %y, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [20 x float], ptr %z, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %alpha, ptr noundef %beta, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arraydecay7, ptr noundef %arraydecay8)
  call void @scale_scalar(ptr noundef %alpha, i32 noundef 2)
  call void @scale_scalar(ptr noundef %beta, i32 noundef 2)
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 20, i32 noundef 20, ptr noundef %arraydecay9, i32 noundef 2)
  %arraydecay10 = getelementptr inbounds [20 x float], ptr %u1, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay10, i32 noundef 2)
  %arraydecay11 = getelementptr inbounds [20 x float], ptr %v1, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay11, i32 noundef 2)
  %arraydecay12 = getelementptr inbounds [20 x float], ptr %u2, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay12, i32 noundef 2)
  %arraydecay13 = getelementptr inbounds [20 x float], ptr %v2, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay13, i32 noundef 2)
  %arraydecay14 = getelementptr inbounds [20 x float], ptr %w, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay14, i32 noundef 2)
  %arraydecay15 = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay15, i32 noundef 2)
  %arraydecay16 = getelementptr inbounds [20 x float], ptr %y, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay16, i32 noundef 2)
  %arraydecay17 = getelementptr inbounds [20 x float], ptr %z, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay17, i32 noundef 2)
  call void @timer_start()
  %1 = load i32, ptr %n, align 4
  %2 = load float, ptr %alpha, align 4
  %3 = load float, ptr %beta, align 4
  %arraydecay18 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [20 x float], ptr %u1, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [20 x float], ptr %v1, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [20 x float], ptr %u2, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [20 x float], ptr %v2, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [20 x float], ptr %w, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [20 x float], ptr %y, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [20 x float], ptr %z, i32 0, i32 0
  call void @kernel_gemver(i32 noundef %1, float noundef %2, float noundef %3, ptr noundef %arraydecay18, ptr noundef %arraydecay19, ptr noundef %arraydecay20, ptr noundef %arraydecay21, ptr noundef %arraydecay22, ptr noundef %arraydecay23, ptr noundef %arraydecay24, ptr noundef %arraydecay25, ptr noundef %arraydecay26)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %x, i32 0, i32 %6
  %7 = load float, ptr %arrayidx, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx27 = getelementptr inbounds [20 x float], ptr @x_float, i32 0, i32 %8
  store float %7, ptr %arrayidx27, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], ptr %w, i32 0, i32 %9
  %10 = load float, ptr %arrayidx28, align 4
  %11 = load i32, ptr %i, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], ptr @w_float, i32 0, i32 %11
  store float %10, ptr %arrayidx29, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %for.body
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %n, align 4
  %cmp31 = icmp slt i32 %12, %13
  br i1 %cmp31, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond30
  %14 = load i32, ptr %i, align 4
  %arrayidx33 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx34 = getelementptr inbounds [20 x float], ptr %arrayidx33, i32 0, i32 %15
  %16 = load float, ptr %arrayidx34, align 4
  %17 = load i32, ptr %i, align 4
  %arrayidx35 = getelementptr inbounds [20 x [20 x float]], ptr @A_float, i32 0, i32 %17
  %18 = load i32, ptr %j, align 4
  %arrayidx36 = getelementptr inbounds [20 x float], ptr %arrayidx35, i32 0, i32 %18
  store float %16, ptr %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body32
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond30, !llvm.loop !15

for.end:                                          ; preds = %for.cond30
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %20, 1
  store i32 %inc38, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end39:                                        ; preds = %for.cond
  %21 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %21, ptr noundef @w_float, ptr noundef @x_float, ptr noundef @A_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %alpha, ptr noundef %beta, ptr noundef %A, ptr noundef %u1, ptr noundef %v1, ptr noundef %u2, ptr noundef %v2, ptr noundef %w, ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 4
  %beta.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %u1.addr = alloca ptr, align 4
  %v1.addr = alloca ptr, align 4
  %u2.addr = alloca ptr, align 4
  %v2.addr = alloca ptr, align 4
  %w.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %z.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 4
  store ptr %beta, ptr %beta.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %u1, ptr %u1.addr, align 4
  store ptr %v1, ptr %v1.addr, align 4
  store ptr %u2, ptr %u2.addr, align 4
  store ptr %v2, ptr %v2.addr, align 4
  store ptr %w, ptr %w.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 4
  store ptr %z, ptr %z.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.12, ptr @.str.1, i32 45, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.12, ptr @.str.1, i32 46, ptr null)
  %0 = load ptr, ptr %alpha.addr, align 4
  store float 1.500000e+00, ptr %0, align 4
  %1 = load ptr, ptr %beta.addr, align 4
  store float 0x3FF3333340000000, ptr %1, align 4
  call void @llvm.var.annotation(ptr %fn, ptr @.str.13, ptr @.str.1, i32 51, ptr null)
  %2 = load i32, ptr %n.addr, align 4
  %conv1 = sitofp i32 %2 to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  store float %lampsim3, ptr %fn, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %conv25 = sitofp i32 %5 to float
  %lampsim6 = bitcast float %conv25 to i32
  %lampsim7 = and i32 %lampsim6, -256
  %lampsim8 = bitcast i32 %lampsim7 to float
  %6 = load float, ptr %fn, align 4
  %div9 = fdiv float %lampsim8, %6
  %lampsim10 = bitcast float %div9 to i32
  %lampsim11 = and i32 %lampsim10, -256
  %lampsim12 = bitcast i32 %lampsim11 to float
  %7 = load ptr, ptr %u1.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %7, i32 %8
  store float %lampsim12, ptr %arrayidx, align 4
  %9 = load i32, ptr %i, align 4
  %add = add nsw i32 %9, 1
  %conv313 = sitofp i32 %add to float
  %lampsim14 = bitcast float %conv313 to i32
  %lampsim15 = and i32 %lampsim14, -256
  %lampsim16 = bitcast i32 %lampsim15 to float
  %10 = load float, ptr %fn, align 4
  %div417 = fdiv float %lampsim16, %10
  %lampsim18 = bitcast float %div417 to i32
  %lampsim19 = and i32 %lampsim18, -256
  %lampsim20 = bitcast i32 %lampsim19 to float
  %conv521 = fpext float %lampsim20 to double
  %lampsim22 = bitcast double %conv521 to i64
  %lampsim23 = and i64 %lampsim22, -137438953472
  %lampsim24 = bitcast i64 %lampsim23 to double
  %div625 = fdiv double %lampsim24, 2.000000e+00
  %lampsim26 = bitcast double %div625 to i64
  %lampsim27 = and i64 %lampsim26, -137438953472
  %lampsim28 = bitcast i64 %lampsim27 to double
  %conv729 = fptrunc double %lampsim28 to float
  %lampsim30 = bitcast float %conv729 to i32
  %lampsim31 = and i32 %lampsim30, -256
  %lampsim32 = bitcast i32 %lampsim31 to float
  %11 = load ptr, ptr %u2.addr, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds float, ptr %11, i32 %12
  store float %lampsim32, ptr %arrayidx8, align 4
  %13 = load i32, ptr %i, align 4
  %add9 = add nsw i32 %13, 1
  %conv1033 = sitofp i32 %add9 to float
  %lampsim34 = bitcast float %conv1033 to i32
  %lampsim35 = and i32 %lampsim34, -256
  %lampsim36 = bitcast i32 %lampsim35 to float
  %14 = load float, ptr %fn, align 4
  %div1137 = fdiv float %lampsim36, %14
  %lampsim38 = bitcast float %div1137 to i32
  %lampsim39 = and i32 %lampsim38, -256
  %lampsim40 = bitcast i32 %lampsim39 to float
  %conv1241 = fpext float %lampsim40 to double
  %lampsim42 = bitcast double %conv1241 to i64
  %lampsim43 = and i64 %lampsim42, -137438953472
  %lampsim44 = bitcast i64 %lampsim43 to double
  %div1345 = fdiv double %lampsim44, 4.000000e+00
  %lampsim46 = bitcast double %div1345 to i64
  %lampsim47 = and i64 %lampsim46, -137438953472
  %lampsim48 = bitcast i64 %lampsim47 to double
  %conv1449 = fptrunc double %lampsim48 to float
  %lampsim50 = bitcast float %conv1449 to i32
  %lampsim51 = and i32 %lampsim50, -256
  %lampsim52 = bitcast i32 %lampsim51 to float
  %15 = load ptr, ptr %v1.addr, align 4
  %16 = load i32, ptr %i, align 4
  %arrayidx15 = getelementptr inbounds float, ptr %15, i32 %16
  store float %lampsim52, ptr %arrayidx15, align 4
  %17 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %17, 1
  %conv1753 = sitofp i32 %add16 to float
  %lampsim54 = bitcast float %conv1753 to i32
  %lampsim55 = and i32 %lampsim54, -256
  %lampsim56 = bitcast i32 %lampsim55 to float
  %18 = load float, ptr %fn, align 4
  %div1857 = fdiv float %lampsim56, %18
  %lampsim58 = bitcast float %div1857 to i32
  %lampsim59 = and i32 %lampsim58, -256
  %lampsim60 = bitcast i32 %lampsim59 to float
  %conv1961 = fpext float %lampsim60 to double
  %lampsim62 = bitcast double %conv1961 to i64
  %lampsim63 = and i64 %lampsim62, -137438953472
  %lampsim64 = bitcast i64 %lampsim63 to double
  %div2065 = fdiv double %lampsim64, 6.000000e+00
  %lampsim66 = bitcast double %div2065 to i64
  %lampsim67 = and i64 %lampsim66, -137438953472
  %lampsim68 = bitcast i64 %lampsim67 to double
  %conv2169 = fptrunc double %lampsim68 to float
  %lampsim70 = bitcast float %conv2169 to i32
  %lampsim71 = and i32 %lampsim70, -256
  %lampsim72 = bitcast i32 %lampsim71 to float
  %19 = load ptr, ptr %v2.addr, align 4
  %20 = load i32, ptr %i, align 4
  %arrayidx22 = getelementptr inbounds float, ptr %19, i32 %20
  store float %lampsim72, ptr %arrayidx22, align 4
  %21 = load i32, ptr %i, align 4
  %add23 = add nsw i32 %21, 1
  %conv2473 = sitofp i32 %add23 to float
  %lampsim74 = bitcast float %conv2473 to i32
  %lampsim75 = and i32 %lampsim74, -256
  %lampsim76 = bitcast i32 %lampsim75 to float
  %22 = load float, ptr %fn, align 4
  %div2577 = fdiv float %lampsim76, %22
  %lampsim78 = bitcast float %div2577 to i32
  %lampsim79 = and i32 %lampsim78, -256
  %lampsim80 = bitcast i32 %lampsim79 to float
  %conv2681 = fpext float %lampsim80 to double
  %lampsim82 = bitcast double %conv2681 to i64
  %lampsim83 = and i64 %lampsim82, -137438953472
  %lampsim84 = bitcast i64 %lampsim83 to double
  %div2785 = fdiv double %lampsim84, 8.000000e+00
  %lampsim86 = bitcast double %div2785 to i64
  %lampsim87 = and i64 %lampsim86, -137438953472
  %lampsim88 = bitcast i64 %lampsim87 to double
  %conv2889 = fptrunc double %lampsim88 to float
  %lampsim90 = bitcast float %conv2889 to i32
  %lampsim91 = and i32 %lampsim90, -256
  %lampsim92 = bitcast i32 %lampsim91 to float
  %23 = load ptr, ptr %y.addr, align 4
  %24 = load i32, ptr %i, align 4
  %arrayidx29 = getelementptr inbounds float, ptr %23, i32 %24
  store float %lampsim92, ptr %arrayidx29, align 4
  %25 = load i32, ptr %i, align 4
  %add30 = add nsw i32 %25, 1
  %conv3193 = sitofp i32 %add30 to float
  %lampsim94 = bitcast float %conv3193 to i32
  %lampsim95 = and i32 %lampsim94, -256
  %lampsim96 = bitcast i32 %lampsim95 to float
  %26 = load float, ptr %fn, align 4
  %div3297 = fdiv float %lampsim96, %26
  %lampsim98 = bitcast float %div3297 to i32
  %lampsim99 = and i32 %lampsim98, -256
  %lampsim100 = bitcast i32 %lampsim99 to float
  %conv33101 = fpext float %lampsim100 to double
  %lampsim102 = bitcast double %conv33101 to i64
  %lampsim103 = and i64 %lampsim102, -137438953472
  %lampsim104 = bitcast i64 %lampsim103 to double
  %div34105 = fdiv double %lampsim104, 9.000000e+00
  %lampsim106 = bitcast double %div34105 to i64
  %lampsim107 = and i64 %lampsim106, -137438953472
  %lampsim108 = bitcast i64 %lampsim107 to double
  %conv35109 = fptrunc double %lampsim108 to float
  %lampsim110 = bitcast float %conv35109 to i32
  %lampsim111 = and i32 %lampsim110, -256
  %lampsim112 = bitcast i32 %lampsim111 to float
  %27 = load ptr, ptr %z.addr, align 4
  %28 = load i32, ptr %i, align 4
  %arrayidx36 = getelementptr inbounds float, ptr %27, i32 %28
  store float %lampsim112, ptr %arrayidx36, align 4
  %29 = load ptr, ptr %x.addr, align 4
  %30 = load i32, ptr %i, align 4
  %arrayidx37 = getelementptr inbounds float, ptr %29, i32 %30
  store float 0.000000e+00, ptr %arrayidx37, align 4
  %31 = load ptr, ptr %w.addr, align 4
  %32 = load i32, ptr %i, align 4
  %arrayidx38 = getelementptr inbounds float, ptr %31, i32 %32
  store float 0.000000e+00, ptr %arrayidx38, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %for.body
  %33 = load i32, ptr %j, align 4
  %34 = load i32, ptr %n.addr, align 4
  %cmp40 = icmp slt i32 %33, %34
  br i1 %cmp40, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond39
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %35, %36
  %37 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %mul, %37
  %conv43113 = sitofp i32 %rem to float
  %lampsim114 = bitcast float %conv43113 to i32
  %lampsim115 = and i32 %lampsim114, -256
  %lampsim116 = bitcast i32 %lampsim115 to float
  %38 = load i32, ptr %n.addr, align 4
  %conv44117 = sitofp i32 %38 to float
  %lampsim118 = bitcast float %conv44117 to i32
  %lampsim119 = and i32 %lampsim118, -256
  %lampsim120 = bitcast i32 %lampsim119 to float
  %div45121 = fdiv float %lampsim116, %lampsim120
  %lampsim122 = bitcast float %div45121 to i32
  %lampsim123 = and i32 %lampsim122, -256
  %lampsim124 = bitcast i32 %lampsim123 to float
  %39 = load ptr, ptr %A.addr, align 4
  %40 = load i32, ptr %i, align 4
  %arrayidx46 = getelementptr inbounds [20 x float], ptr %39, i32 %40
  %41 = load i32, ptr %j, align 4
  %arrayidx47 = getelementptr inbounds [20 x float], ptr %arrayidx46, i32 0, i32 %41
  store float %lampsim124, ptr %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body42
  %42 = load i32, ptr %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond39, !llvm.loop !17

for.end:                                          ; preds = %for.cond39
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %43 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %43, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end50:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, ptr noundef %A, ptr noundef %u1, ptr noundef %v1, ptr noundef %u2, ptr noundef %v2, ptr noundef %w, ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca ptr, align 4
  %u1.addr = alloca ptr, align 4
  %v1.addr = alloca ptr, align 4
  %u2.addr = alloca ptr, align 4
  %v2.addr = alloca ptr, align 4
  %w.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %z.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store float %alpha, ptr %alpha.addr, align 4
  store float %beta, ptr %beta.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %u1, ptr %u1.addr, align 4
  store ptr %v1, ptr %v1.addr, align 4
  store ptr %u2, ptr %u2.addr, align 4
  store ptr %v2, ptr %v2.addr, align 4
  store ptr %w, ptr %w.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 4
  store ptr %z, ptr %z.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %A.addr, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %4, i32 %5
  %6 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], ptr %arrayidx, i32 0, i32 %6
  %7 = load float, ptr %arrayidx4, align 4
  %8 = load ptr, ptr %u1.addr, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx5 = getelementptr inbounds float, ptr %8, i32 %9
  %10 = load float, ptr %arrayidx5, align 4
  %11 = load ptr, ptr %v1.addr, align 4
  %12 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds float, ptr %11, i32 %12
  %13 = load float, ptr %arrayidx6, align 4
  %mul1 = fmul float %10, %13
  %lampsim = bitcast float %mul1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %add4 = fadd float %7, %lampsim3
  %lampsim5 = bitcast float %add4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %14 = load ptr, ptr %u2.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds float, ptr %14, i32 %15
  %16 = load float, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %v2.addr, align 4
  %18 = load i32, ptr %j, align 4
  %arrayidx8 = getelementptr inbounds float, ptr %17, i32 %18
  %19 = load float, ptr %arrayidx8, align 4
  %mul98 = fmul float %16, %19
  %lampsim9 = bitcast float %mul98 to i32
  %lampsim10 = and i32 %lampsim9, -256
  %lampsim11 = bitcast i32 %lampsim10 to float
  %add1012 = fadd float %lampsim7, %lampsim11
  %lampsim13 = bitcast float %add1012 to i32
  %lampsim14 = and i32 %lampsim13, -256
  %lampsim15 = bitcast i32 %lampsim14 to float
  %20 = load ptr, ptr %A.addr, align 4
  %21 = load i32, ptr %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], ptr %20, i32 %21
  %22 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], ptr %arrayidx11, i32 0, i32 %22
  store float %lampsim15, ptr %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end15:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %n.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %n.addr, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %29 = load ptr, ptr %x.addr, align 4
  %30 = load i32, ptr %i, align 4
  %arrayidx22 = getelementptr inbounds float, ptr %29, i32 %30
  %31 = load float, ptr %arrayidx22, align 4
  %32 = load float, ptr %beta.addr, align 4
  %33 = load ptr, ptr %A.addr, align 4
  %34 = load i32, ptr %j, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], ptr %33, i32 %34
  %35 = load i32, ptr %i, align 4
  %arrayidx24 = getelementptr inbounds [20 x float], ptr %arrayidx23, i32 0, i32 %35
  %36 = load float, ptr %arrayidx24, align 4
  %mul2516 = fmul float %32, %36
  %lampsim17 = bitcast float %mul2516 to i32
  %lampsim18 = and i32 %lampsim17, -256
  %lampsim19 = bitcast i32 %lampsim18 to float
  %37 = load ptr, ptr %y.addr, align 4
  %38 = load i32, ptr %j, align 4
  %arrayidx26 = getelementptr inbounds float, ptr %37, i32 %38
  %39 = load float, ptr %arrayidx26, align 4
  %mul2720 = fmul float %lampsim19, %39
  %lampsim21 = bitcast float %mul2720 to i32
  %lampsim22 = and i32 %lampsim21, -256
  %lampsim23 = bitcast i32 %lampsim22 to float
  %add2824 = fadd float %31, %lampsim23
  %lampsim25 = bitcast float %add2824 to i32
  %lampsim26 = and i32 %lampsim25, -256
  %lampsim27 = bitcast i32 %lampsim26 to float
  %40 = load ptr, ptr %x.addr, align 4
  %41 = load i32, ptr %i, align 4
  %arrayidx29 = getelementptr inbounds float, ptr %40, i32 %41
  store float %lampsim27, ptr %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, ptr %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, ptr %j, align 4
  br label %for.cond19, !llvm.loop !21

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %43 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond16, !llvm.loop !22

for.end35:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %n.addr, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %46 = load ptr, ptr %x.addr, align 4
  %47 = load i32, ptr %i, align 4
  %arrayidx39 = getelementptr inbounds float, ptr %46, i32 %47
  %48 = load float, ptr %arrayidx39, align 4
  %49 = load ptr, ptr %z.addr, align 4
  %50 = load i32, ptr %i, align 4
  %arrayidx40 = getelementptr inbounds float, ptr %49, i32 %50
  %51 = load float, ptr %arrayidx40, align 4
  %add4128 = fadd float %48, %51
  %lampsim29 = bitcast float %add4128 to i32
  %lampsim30 = and i32 %lampsim29, -256
  %lampsim31 = bitcast i32 %lampsim30 to float
  %52 = load ptr, ptr %x.addr, align 4
  %53 = load i32, ptr %i, align 4
  %arrayidx42 = getelementptr inbounds float, ptr %52, i32 %53
  store float %lampsim31, ptr %arrayidx42, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %54 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond36, !llvm.loop !23

for.end45:                                        ; preds = %for.cond36
  store i32 0, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %n.addr, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  store i32 0, ptr %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %57 = load i32, ptr %j, align 4
  %58 = load i32, ptr %n.addr, align 4
  %cmp50 = icmp slt i32 %57, %58
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %59 = load ptr, ptr %w.addr, align 4
  %60 = load i32, ptr %i, align 4
  %arrayidx52 = getelementptr inbounds float, ptr %59, i32 %60
  %61 = load float, ptr %arrayidx52, align 4
  %62 = load float, ptr %alpha.addr, align 4
  %63 = load ptr, ptr %A.addr, align 4
  %64 = load i32, ptr %i, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], ptr %63, i32 %64
  %65 = load i32, ptr %j, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], ptr %arrayidx53, i32 0, i32 %65
  %66 = load float, ptr %arrayidx54, align 4
  %mul5532 = fmul float %62, %66
  %lampsim33 = bitcast float %mul5532 to i32
  %lampsim34 = and i32 %lampsim33, -256
  %lampsim35 = bitcast i32 %lampsim34 to float
  %67 = load ptr, ptr %x.addr, align 4
  %68 = load i32, ptr %j, align 4
  %arrayidx56 = getelementptr inbounds float, ptr %67, i32 %68
  %69 = load float, ptr %arrayidx56, align 4
  %mul5736 = fmul float %lampsim35, %69
  %lampsim37 = bitcast float %mul5736 to i32
  %lampsim38 = and i32 %lampsim37, -256
  %lampsim39 = bitcast i32 %lampsim38 to float
  %add5840 = fadd float %61, %lampsim39
  %lampsim41 = bitcast float %add5840 to i32
  %lampsim42 = and i32 %lampsim41, -256
  %lampsim43 = bitcast i32 %lampsim42 to float
  %70 = load ptr, ptr %w.addr, align 4
  %71 = load i32, ptr %i, align 4
  %arrayidx59 = getelementptr inbounds float, ptr %70, i32 %71
  store float %lampsim43, ptr %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %72 = load i32, ptr %j, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, ptr %j, align 4
  br label %for.cond49, !llvm.loop !24

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %73 = load i32, ptr %i, align 4
  %inc64 = add nsw i32 %73, 1
  store i32 %inc64, ptr %i, align 4
  br label %for.cond46, !llvm.loop !25

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %w, ptr noundef %x, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %w, ptr %w.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr @stderr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load ptr, ptr @stderr, align 4
  %9 = load ptr, ptr %A.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %9, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], ptr %arrayidx, i32 0, i32 %11
  %12 = load float, ptr %arrayidx5, align 4
  %conv1 = fpext float %12 to double
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.15, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !26

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %n.addr, align 4
  %cmp11 = icmp slt i32 %15, %16
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %17 = load i32, ptr %i, align 4
  %rem14 = srem i32 %17, 20
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %18 = load ptr, ptr @stderr, align 4
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.14)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %19 = load ptr, ptr @stderr, align 4
  %20 = load ptr, ptr %x.addr, align 4
  %21 = load i32, ptr %i, align 4
  %arrayidx20 = getelementptr inbounds float, ptr %20, i32 %21
  %22 = load float, ptr %arrayidx20, align 4
  %conv214 = fpext float %22 to double
  %lampsim5 = bitcast double %conv214 to i64
  %lampsim6 = and i64 %lampsim5, -137438953472
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.15, double noundef %lampsim7)
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %23 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond10, !llvm.loop !28

for.end25:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %n.addr, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %26 = load i32, ptr %i, align 4
  %rem30 = srem i32 %26, 20
  %cmp31 = icmp eq i32 %rem30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %27 = load ptr, ptr @stderr, align 4
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.14)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %28 = load ptr, ptr @stderr, align 4
  %29 = load ptr, ptr %w.addr, align 4
  %30 = load i32, ptr %i, align 4
  %arrayidx36 = getelementptr inbounds float, ptr %29, i32 %30
  %31 = load float, ptr %arrayidx36, align 4
  %conv378 = fpext float %31 to double
  %lampsim9 = bitcast double %conv378 to i64
  %lampsim10 = and i64 %lampsim9, -137438953472
  %lampsim11 = bitcast i64 %lampsim10 to double
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.15, double noundef %lampsim11)
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %32 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond26, !llvm.loop !29

for.end41:                                        ; preds = %for.cond26
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
