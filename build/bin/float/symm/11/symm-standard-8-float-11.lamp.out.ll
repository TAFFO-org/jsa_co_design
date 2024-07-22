; ModuleID = './build/bin/float/symm/11/symm-standard-8-float-11.out.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/symm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [49 x i8] c"target('C') scalar(range(0.0,2744.640137) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [34 x i8] c"scalar(range(-7992.0,14.4) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [30 x i8] c"scalar(range(0.8,20.0) final)\00", section "llvm.metadata"
@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,10))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %C = alloca [10 x [16 x float]], align 4
  %A = alloca [10 x [10 x float]], align 4
  %B = alloca [10 x [16 x float]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 10, ptr %m, align 4
  store i32 16, ptr %n, align 4
  call void @llvm.var.annotation(ptr %alpha, ptr @.str, ptr @.str.1, i32 122, ptr null)
  call void @llvm.var.annotation(ptr %beta, ptr @.str.2, ptr @.str.1, i32 123, ptr null)
  call void @llvm.var.annotation(ptr %C, ptr @.str.3, ptr @.str.1, i32 124, ptr null)
  call void @llvm.var.annotation(ptr %A, ptr @.str.4, ptr @.str.1, i32 125, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.5, ptr @.str.1, i32 126, ptr null)
  %0 = load i32, ptr %m, align 4
  %1 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [10 x [16 x float]], ptr %C, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [10 x [10 x float]], ptr %A, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [10 x [16 x float]], ptr %B, i32 0, i32 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %alpha, ptr noundef %beta, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  call void @scale_scalar(ptr noundef %alpha, i32 noundef 8)
  call void @scale_scalar(ptr noundef %beta, i32 noundef 8)
  %arraydecay3 = getelementptr inbounds [10 x [16 x float]], ptr %C, i32 0, i32 0
  call void @scale_2d(i32 noundef 10, i32 noundef 16, ptr noundef %arraydecay3, i32 noundef 8)
  %arraydecay4 = getelementptr inbounds [10 x [10 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 10, i32 noundef 10, ptr noundef %arraydecay4, i32 noundef 8)
  %arraydecay5 = getelementptr inbounds [10 x [16 x float]], ptr %B, i32 0, i32 0
  call void @scale_2d(i32 noundef 10, i32 noundef 16, ptr noundef %arraydecay5, i32 noundef 8)
  call void @timer_start()
  %2 = load i32, ptr %m, align 4
  %3 = load i32, ptr %n, align 4
  %4 = load float, ptr %alpha, align 4
  %5 = load float, ptr %beta, align 4
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], ptr %C, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [10 x [10 x float]], ptr %A, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], ptr %B, i32 0, i32 0
  call void @kernel_symm(i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, ptr noundef %arraydecay6, ptr noundef %arraydecay7, ptr noundef %arraydecay8)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %m, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %n, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [10 x [16 x float]], ptr %C, i32 0, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [16 x float], ptr %arrayidx, i32 0, i32 %11
  %12 = load float, ptr %arrayidx12, align 4
  %13 = load i32, ptr %i, align 4
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], ptr @C_float, i32 0, i32 %13
  %14 = load i32, ptr %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], ptr %arrayidx13, i32 0, i32 %14
  store float %12, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %15 = load i32, ptr %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond9, !llvm.loop !15

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end17:                                        ; preds = %for.cond
  %17 = load i32, ptr %m, align 4
  %18 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %17, i32 noundef %18, ptr noundef @C_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %beta, ptr noundef %C, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 4
  %beta.addr = alloca ptr, align 4
  %C.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 4
  store ptr %beta, ptr %beta.addr, align 4
  store ptr %C, ptr %C.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.6, ptr @.str.1, i32 37, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.7, ptr @.str.1, i32 38, ptr null)
  %0 = load ptr, ptr %alpha.addr, align 4
  store float 1.500000e+00, ptr %0, align 4
  %1 = load ptr, ptr %beta.addr, align 4
  store float 0x3FF3333340000000, ptr %1, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %add = add nsw i32 %6, %7
  %rem = srem i32 %add, 100
  %conv1 = sitofp i32 %rem to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %8 = load i32, ptr %m.addr, align 4
  %conv44 = sitofp i32 %8 to float
  %lampsim5 = bitcast float %conv44 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %div8 = fdiv float %lampsim3, %lampsim7
  %lampsim9 = bitcast float %div8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %9 = load ptr, ptr %C.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], ptr %9, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], ptr %arrayidx, i32 0, i32 %11
  store float %lampsim11, ptr %arrayidx5, align 4
  %12 = load i32, ptr %n.addr, align 4
  %13 = load i32, ptr %i, align 4
  %add6 = add nsw i32 %12, %13
  %14 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %add6, %14
  %rem7 = srem i32 %sub, 100
  %conv812 = sitofp i32 %rem7 to float
  %lampsim13 = bitcast float %conv812 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %15 = load i32, ptr %m.addr, align 4
  %conv916 = sitofp i32 %15 to float
  %lampsim17 = bitcast float %conv916 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  %div1020 = fdiv float %lampsim15, %lampsim19
  %lampsim21 = bitcast float %div1020 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  %16 = load ptr, ptr %B.addr, align 4
  %17 = load i32, ptr %i, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], ptr %16, i32 %17
  %18 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [16 x float], ptr %arrayidx11, i32 0, i32 %18
  store float %lampsim23, ptr %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end15:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc44, %for.end15
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %m.addr, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %for.body19, label %for.end46

for.body19:                                       ; preds = %for.cond16
  store i32 0, ptr %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc31, %for.body19
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %i, align 4
  %cmp21 = icmp sle i32 %23, %24
  br i1 %cmp21, label %for.body23, label %for.end33

for.body23:                                       ; preds = %for.cond20
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %j, align 4
  %add24 = add nsw i32 %25, %26
  %rem25 = srem i32 %add24, 100
  %conv2624 = sitofp i32 %rem25 to float
  %lampsim25 = bitcast float %conv2624 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %27 = load i32, ptr %m.addr, align 4
  %conv2728 = sitofp i32 %27 to float
  %lampsim29 = bitcast float %conv2728 to i32
  %lampsim30 = and i32 %lampsim29, -8192
  %lampsim31 = bitcast i32 %lampsim30 to float
  %div2832 = fdiv float %lampsim27, %lampsim31
  %lampsim33 = bitcast float %div2832 to i32
  %lampsim34 = and i32 %lampsim33, -8192
  %lampsim35 = bitcast i32 %lampsim34 to float
  %28 = load ptr, ptr %A.addr, align 4
  %29 = load i32, ptr %i, align 4
  %arrayidx29 = getelementptr inbounds [10 x float], ptr %28, i32 %29
  %30 = load i32, ptr %j, align 4
  %arrayidx30 = getelementptr inbounds [10 x float], ptr %arrayidx29, i32 0, i32 %30
  store float %lampsim35, ptr %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body23
  %31 = load i32, ptr %j, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, ptr %j, align 4
  br label %for.cond20, !llvm.loop !19

for.end33:                                        ; preds = %for.cond20
  %32 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %32, 1
  store i32 %add34, ptr %j, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc41, %for.end33
  %33 = load i32, ptr %j, align 4
  %34 = load i32, ptr %m.addr, align 4
  %cmp36 = icmp slt i32 %33, %34
  br i1 %cmp36, label %for.body38, label %for.end43

for.body38:                                       ; preds = %for.cond35
  %35 = load ptr, ptr %A.addr, align 4
  %36 = load i32, ptr %i, align 4
  %arrayidx39 = getelementptr inbounds [10 x float], ptr %35, i32 %36
  %37 = load i32, ptr %j, align 4
  %arrayidx40 = getelementptr inbounds [10 x float], ptr %arrayidx39, i32 0, i32 %37
  store float -9.990000e+02, ptr %arrayidx40, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body38
  %38 = load i32, ptr %j, align 4
  %inc42 = add nsw i32 %38, 1
  store i32 %inc42, ptr %j, align 4
  br label %for.cond35, !llvm.loop !20

for.end43:                                        ; preds = %for.cond35
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %39 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %39, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond16, !llvm.loop !21

for.end46:                                        ; preds = %for.cond16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, ptr noundef %C, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca float, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store float %alpha, ptr %alpha.addr, align 4
  store float %beta, ptr %beta.addr, align 4
  store ptr %C, ptr %C.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  store float 0.000000e+00, ptr %temp2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load float, ptr %alpha.addr, align 4
  %7 = load ptr, ptr %B.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], ptr %7, i32 %8
  %9 = load i32, ptr %j, align 4
  %arrayidx7 = getelementptr inbounds [16 x float], ptr %arrayidx, i32 0, i32 %9
  %10 = load float, ptr %arrayidx7, align 4
  %mul1 = fmul float %6, %10
  %lampsim = bitcast float %mul1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %11 = load ptr, ptr %A.addr, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds [10 x float], ptr %11, i32 %12
  %13 = load i32, ptr %k, align 4
  %arrayidx9 = getelementptr inbounds [10 x float], ptr %arrayidx8, i32 0, i32 %13
  %14 = load float, ptr %arrayidx9, align 4
  %mul104 = fmul float %lampsim3, %14
  %lampsim5 = bitcast float %mul104 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %15 = load ptr, ptr %C.addr, align 4
  %16 = load i32, ptr %k, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], ptr %15, i32 %16
  %17 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [16 x float], ptr %arrayidx11, i32 0, i32 %17
  %18 = load float, ptr %arrayidx12, align 4
  %add8 = fadd float %18, %lampsim7
  %lampsim9 = bitcast float %add8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  store float %lampsim11, ptr %arrayidx12, align 4
  %19 = load ptr, ptr %B.addr, align 4
  %20 = load i32, ptr %k, align 4
  %arrayidx13 = getelementptr inbounds [16 x float], ptr %19, i32 %20
  %21 = load i32, ptr %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], ptr %arrayidx13, i32 0, i32 %21
  %22 = load float, ptr %arrayidx14, align 4
  %23 = load ptr, ptr %A.addr, align 4
  %24 = load i32, ptr %i, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], ptr %23, i32 %24
  %25 = load i32, ptr %k, align 4
  %arrayidx16 = getelementptr inbounds [10 x float], ptr %arrayidx15, i32 0, i32 %25
  %26 = load float, ptr %arrayidx16, align 4
  %mul1712 = fmul float %22, %26
  %lampsim13 = bitcast float %mul1712 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %27 = load float, ptr %temp2, align 4
  %add1816 = fadd float %27, %lampsim15
  %lampsim17 = bitcast float %add1816 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %temp2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %28 = load i32, ptr %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !22

for.end:                                          ; preds = %for.cond4
  %29 = load float, ptr %beta.addr, align 4
  %30 = load ptr, ptr %C.addr, align 4
  %31 = load i32, ptr %i, align 4
  %arrayidx19 = getelementptr inbounds [16 x float], ptr %30, i32 %31
  %32 = load i32, ptr %j, align 4
  %arrayidx20 = getelementptr inbounds [16 x float], ptr %arrayidx19, i32 0, i32 %32
  %33 = load float, ptr %arrayidx20, align 4
  %mul2120 = fmul float %29, %33
  %lampsim21 = bitcast float %mul2120 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  %34 = load float, ptr %alpha.addr, align 4
  %35 = load ptr, ptr %B.addr, align 4
  %36 = load i32, ptr %i, align 4
  %arrayidx22 = getelementptr inbounds [16 x float], ptr %35, i32 %36
  %37 = load i32, ptr %j, align 4
  %arrayidx23 = getelementptr inbounds [16 x float], ptr %arrayidx22, i32 0, i32 %37
  %38 = load float, ptr %arrayidx23, align 4
  %mul2424 = fmul float %34, %38
  %lampsim25 = bitcast float %mul2424 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %39 = load ptr, ptr %A.addr, align 4
  %40 = load i32, ptr %i, align 4
  %arrayidx25 = getelementptr inbounds [10 x float], ptr %39, i32 %40
  %41 = load i32, ptr %i, align 4
  %arrayidx26 = getelementptr inbounds [10 x float], ptr %arrayidx25, i32 0, i32 %41
  %42 = load float, ptr %arrayidx26, align 4
  %mul2728 = fmul float %lampsim27, %42
  %lampsim29 = bitcast float %mul2728 to i32
  %lampsim30 = and i32 %lampsim29, -8192
  %lampsim31 = bitcast i32 %lampsim30 to float
  %add2832 = fadd float %lampsim23, %lampsim31
  %lampsim33 = bitcast float %add2832 to i32
  %lampsim34 = and i32 %lampsim33, -8192
  %lampsim35 = bitcast i32 %lampsim34 to float
  %43 = load float, ptr %alpha.addr, align 4
  %44 = load float, ptr %temp2, align 4
  %mul2936 = fmul float %43, %44
  %lampsim37 = bitcast float %mul2936 to i32
  %lampsim38 = and i32 %lampsim37, -8192
  %lampsim39 = bitcast i32 %lampsim38 to float
  %add3040 = fadd float %lampsim35, %lampsim39
  %lampsim41 = bitcast float %add3040 to i32
  %lampsim42 = and i32 %lampsim41, -8192
  %lampsim43 = bitcast i32 %lampsim42 to float
  %45 = load ptr, ptr %C.addr, align 4
  %46 = load i32, ptr %i, align 4
  %arrayidx31 = getelementptr inbounds [16 x float], ptr %45, i32 %46
  %47 = load i32, ptr %j, align 4
  %arrayidx32 = getelementptr inbounds [16 x float], ptr %arrayidx31, i32 0, i32 %47
  store float %lampsim43, ptr %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %48 = load i32, ptr %j, align 4
  %inc34 = add nsw i32 %48, 1
  store i32 %inc34, ptr %j, align 4
  br label %for.cond1, !llvm.loop !23

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %49 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %49, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, ptr noundef %C) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %C.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %C, ptr %C.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %m.addr, align 4
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
  %5 = load i32, ptr %m.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr @stderr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load ptr, ptr @stderr, align 4
  %9 = load ptr, ptr %C.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], ptr %9, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], ptr %arrayidx, i32 0, i32 %11
  %12 = load float, ptr %arrayidx5, align 4
  %conv1 = fpext float %12 to double
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.9, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end9:                                         ; preds = %for.cond
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
