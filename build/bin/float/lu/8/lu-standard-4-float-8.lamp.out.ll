; ModuleID = './build/bin/float/lu/8/lu-standard-4-float-8.out.ll'
source_filename = "./sources/lu.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"target('A') scalar(range(0.1,32.689999) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"./sources/lu.c\00", section "llvm.metadata"
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(-20, 20))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
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
  %lampsim2 = and i32 %lampsim, -65536
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
  %lampsim6 = and i32 %lampsim5, -65536
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %6, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %9 = load float, ptr %constTwoVal, align 4
  %10 = load float, ptr %x, align 4
  %mul312 = fmul float %9, %10
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -65536
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %dx, align 4
  %11 = load float, ptr %x, align 4
  %12 = load float, ptr %dx, align 4
  %add20 = fadd float %11, %12
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -65536
  %lampsim23 = bitcast i32 %lampsim22 to float
  store float %lampsim23, ptr %x, align 4
  %13 = load float, ptr %val.addr, align 4
  %14 = load float, ptr %x, align 4
  %15 = load float, ptr %x, align 4
  %mul524 = fmul float %14, %15
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -65536
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %13, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %5, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %10, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %16, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 20, ptr %n, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 121, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 20, i32 noundef 20, ptr noundef %arraydecay1, i32 noundef 4)
  call void @timer_start()
  %1 = load i32, ptr %n, align 4
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @kernel_lu(i32 noundef %1, ptr noundef %arraydecay2)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp sle i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 %6
  %7 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds [20 x float], ptr %arrayidx, i32 0, i32 %7
  %8 = load float, ptr %arrayidx6, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], ptr @A_float, i32 0, i32 %9
  %10 = load i32, ptr %j, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], ptr %arrayidx7, i32 0, i32 %10
  store float %8, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !15

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end11:                                        ; preds = %for.cond
  %13 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %13, ptr noundef @A_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [20 x [20 x float]], align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.2, ptr @.str.1, i32 33, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.2, ptr @.str.1, i32 34, ptr null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %j, align 4
  %sub = sub nsw i32 0, %4
  %5 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %sub, %5
  %conv1 = sitofp i32 %rem to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %6 = load i32, ptr %n.addr, align 4
  %conv44 = sitofp i32 %6 to float
  %lampsim5 = bitcast float %conv44 to i32
  %lampsim6 = and i32 %lampsim5, -65536
  %lampsim7 = bitcast i32 %lampsim6 to float
  %div8 = fdiv float %lampsim3, %lampsim7
  %lampsim9 = bitcast float %div8 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %add12 = fadd float %lampsim11, 1.000000e+00
  %lampsim13 = bitcast float %add12 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %7 = load ptr, ptr %A.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %7, i32 %8
  %9 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], ptr %arrayidx, i32 0, i32 %9
  store float %lampsim15, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  %11 = load i32, ptr %i, align 4
  %add6 = add nsw i32 %11, 1
  store i32 %add6, ptr %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %n.addr, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %for.body10, label %for.end15

for.body10:                                       ; preds = %for.cond7
  %14 = load ptr, ptr %A.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], ptr %14, i32 %15
  %16 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], ptr %arrayidx11, i32 0, i32 %16
  store float 0.000000e+00, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body10
  %17 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond7, !llvm.loop !18

for.end15:                                        ; preds = %for.cond7
  %18 = load ptr, ptr %A.addr, align 4
  %19 = load i32, ptr %i, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], ptr %18, i32 %19
  %20 = load i32, ptr %i, align 4
  %arrayidx17 = getelementptr inbounds [20 x float], ptr %arrayidx16, i32 0, i32 %20
  store float 1.000000e+00, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end15
  %21 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end20:                                        ; preds = %for.cond
  call void @llvm.var.annotation(ptr %B, ptr @.str.3, ptr @.str.1, i32 49, ptr null)
  store i32 0, ptr %r, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc34, %for.end20
  %22 = load i32, ptr %r, align 4
  %23 = load i32, ptr %n.addr, align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body24, label %for.end36

for.body24:                                       ; preds = %for.cond21
  store i32 0, ptr %s, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc31, %for.body24
  %24 = load i32, ptr %s, align 4
  %25 = load i32, ptr %n.addr, align 4
  %cmp26 = icmp slt i32 %24, %25
  br i1 %cmp26, label %for.body28, label %for.end33

for.body28:                                       ; preds = %for.cond25
  %26 = load i32, ptr %r, align 4
  %arrayidx29 = getelementptr inbounds [20 x [20 x float]], ptr %B, i32 0, i32 %26
  %27 = load i32, ptr %s, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], ptr %arrayidx29, i32 0, i32 %27
  store float 0.000000e+00, ptr %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body28
  %28 = load i32, ptr %s, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, ptr %s, align 4
  br label %for.cond25, !llvm.loop !20

for.end33:                                        ; preds = %for.cond25
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %29 = load i32, ptr %r, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, ptr %r, align 4
  br label %for.cond21, !llvm.loop !21

for.end36:                                        ; preds = %for.cond21
  store i32 0, ptr %t, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc62, %for.end36
  %30 = load i32, ptr %t, align 4
  %31 = load i32, ptr %n.addr, align 4
  %cmp38 = icmp slt i32 %30, %31
  br i1 %cmp38, label %for.body40, label %for.end64

for.body40:                                       ; preds = %for.cond37
  store i32 0, ptr %r, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc59, %for.body40
  %32 = load i32, ptr %r, align 4
  %33 = load i32, ptr %n.addr, align 4
  %cmp42 = icmp slt i32 %32, %33
  br i1 %cmp42, label %for.body44, label %for.end61

for.body44:                                       ; preds = %for.cond41
  store i32 0, ptr %s, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc56, %for.body44
  %34 = load i32, ptr %s, align 4
  %35 = load i32, ptr %n.addr, align 4
  %cmp46 = icmp slt i32 %34, %35
  br i1 %cmp46, label %for.body48, label %for.end58

for.body48:                                       ; preds = %for.cond45
  %36 = load ptr, ptr %A.addr, align 4
  %37 = load i32, ptr %r, align 4
  %arrayidx49 = getelementptr inbounds [20 x float], ptr %36, i32 %37
  %38 = load i32, ptr %t, align 4
  %arrayidx50 = getelementptr inbounds [20 x float], ptr %arrayidx49, i32 0, i32 %38
  %39 = load float, ptr %arrayidx50, align 4
  %40 = load ptr, ptr %A.addr, align 4
  %41 = load i32, ptr %s, align 4
  %arrayidx51 = getelementptr inbounds [20 x float], ptr %40, i32 %41
  %42 = load i32, ptr %t, align 4
  %arrayidx52 = getelementptr inbounds [20 x float], ptr %arrayidx51, i32 0, i32 %42
  %43 = load float, ptr %arrayidx52, align 4
  %mul16 = fmul float %39, %43
  %lampsim17 = bitcast float %mul16 to i32
  %lampsim18 = and i32 %lampsim17, -65536
  %lampsim19 = bitcast i32 %lampsim18 to float
  %44 = load i32, ptr %r, align 4
  %arrayidx53 = getelementptr inbounds [20 x [20 x float]], ptr %B, i32 0, i32 %44
  %45 = load i32, ptr %s, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], ptr %arrayidx53, i32 0, i32 %45
  %46 = load float, ptr %arrayidx54, align 4
  %add5520 = fadd float %46, %lampsim19
  %lampsim21 = bitcast float %add5520 to i32
  %lampsim22 = and i32 %lampsim21, -65536
  %lampsim23 = bitcast i32 %lampsim22 to float
  store float %lampsim23, ptr %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body48
  %47 = load i32, ptr %s, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, ptr %s, align 4
  br label %for.cond45, !llvm.loop !22

for.end58:                                        ; preds = %for.cond45
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %48 = load i32, ptr %r, align 4
  %inc60 = add nsw i32 %48, 1
  store i32 %inc60, ptr %r, align 4
  br label %for.cond41, !llvm.loop !23

for.end61:                                        ; preds = %for.cond41
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %49 = load i32, ptr %t, align 4
  %inc63 = add nsw i32 %49, 1
  store i32 %inc63, ptr %t, align 4
  br label %for.cond37, !llvm.loop !24

for.end64:                                        ; preds = %for.cond37
  store i32 0, ptr %r, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc80, %for.end64
  %50 = load i32, ptr %r, align 4
  %51 = load i32, ptr %n.addr, align 4
  %cmp66 = icmp slt i32 %50, %51
  br i1 %cmp66, label %for.body68, label %for.end82

for.body68:                                       ; preds = %for.cond65
  store i32 0, ptr %s, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body68
  %52 = load i32, ptr %s, align 4
  %53 = load i32, ptr %n.addr, align 4
  %cmp70 = icmp slt i32 %52, %53
  br i1 %cmp70, label %for.body72, label %for.end79

for.body72:                                       ; preds = %for.cond69
  %54 = load i32, ptr %r, align 4
  %arrayidx73 = getelementptr inbounds [20 x [20 x float]], ptr %B, i32 0, i32 %54
  %55 = load i32, ptr %s, align 4
  %arrayidx74 = getelementptr inbounds [20 x float], ptr %arrayidx73, i32 0, i32 %55
  %56 = load float, ptr %arrayidx74, align 4
  %57 = load ptr, ptr %A.addr, align 4
  %58 = load i32, ptr %r, align 4
  %arrayidx75 = getelementptr inbounds [20 x float], ptr %57, i32 %58
  %59 = load i32, ptr %s, align 4
  %arrayidx76 = getelementptr inbounds [20 x float], ptr %arrayidx75, i32 0, i32 %59
  store float %56, ptr %arrayidx76, align 4
  br label %for.inc77

for.inc77:                                        ; preds = %for.body72
  %60 = load i32, ptr %s, align 4
  %inc78 = add nsw i32 %60, 1
  store i32 %inc78, ptr %s, align 4
  br label %for.cond69, !llvm.loop !25

for.end79:                                        ; preds = %for.cond69
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %61 = load i32, ptr %r, align 4
  %inc81 = add nsw i32 %61, 1
  store i32 %inc81, ptr %r, align 4
  br label %for.cond65, !llvm.loop !26

for.end82:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca float, align 4
  %tmp25 = alloca float, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %j, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  call void @llvm.var.annotation(ptr %tmp, ptr @.str.3, ptr @.str.1, i32 99, ptr null)
  %6 = load ptr, ptr %A.addr, align 4
  %7 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [20 x float], ptr %6, i32 %7
  %8 = load i32, ptr %k, align 4
  %arrayidx7 = getelementptr inbounds [20 x float], ptr %arrayidx, i32 0, i32 %8
  %9 = load float, ptr %arrayidx7, align 4
  %10 = load ptr, ptr %A.addr, align 4
  %11 = load i32, ptr %k, align 4
  %arrayidx8 = getelementptr inbounds [20 x float], ptr %10, i32 %11
  %12 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], ptr %arrayidx8, i32 0, i32 %12
  %13 = load float, ptr %arrayidx9, align 4
  %mul1 = fmul float %9, %13
  %lampsim = bitcast float %mul1 to i32
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  store float %lampsim3, ptr %tmp, align 4
  %14 = load float, ptr %tmp, align 4
  %15 = load ptr, ptr %A.addr, align 4
  %16 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], ptr %15, i32 %16
  %17 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], ptr %arrayidx10, i32 0, i32 %17
  %18 = load float, ptr %arrayidx11, align 4
  %sub4 = fsub float %18, %14
  %lampsim5 = bitcast float %sub4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
  %lampsim7 = bitcast i32 %lampsim6 to float
  store float %lampsim7, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !27

for.end:                                          ; preds = %for.cond4
  %20 = load ptr, ptr %A.addr, align 4
  %21 = load i32, ptr %j, align 4
  %arrayidx12 = getelementptr inbounds [20 x float], ptr %20, i32 %21
  %22 = load i32, ptr %j, align 4
  %arrayidx13 = getelementptr inbounds [20 x float], ptr %arrayidx12, i32 0, i32 %22
  %23 = load float, ptr %arrayidx13, align 4
  %24 = load ptr, ptr %A.addr, align 4
  %25 = load i32, ptr %i, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], ptr %24, i32 %25
  %26 = load i32, ptr %j, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], ptr %arrayidx14, i32 0, i32 %26
  %27 = load float, ptr %arrayidx15, align 4
  %div8 = fdiv float %27, %23
  %lampsim9 = bitcast float %div8 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
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

for.cond19:                                       ; preds = %for.inc37, %for.end18
  %30 = load i32, ptr %j, align 4
  %31 = load i32, ptr %n.addr, align 4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond19
  store i32 0, ptr %k, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc34, %for.body21
  %32 = load i32, ptr %k, align 4
  %33 = load i32, ptr %i, align 4
  %cmp23 = icmp slt i32 %32, %33
  br i1 %cmp23, label %for.body24, label %for.end36

for.body24:                                       ; preds = %for.cond22
  call void @llvm.var.annotation(ptr %tmp25, ptr @.str.3, ptr @.str.1, i32 106, ptr null)
  %34 = load ptr, ptr %A.addr, align 4
  %35 = load i32, ptr %i, align 4
  %arrayidx26 = getelementptr inbounds [20 x float], ptr %34, i32 %35
  %36 = load i32, ptr %k, align 4
  %arrayidx27 = getelementptr inbounds [20 x float], ptr %arrayidx26, i32 0, i32 %36
  %37 = load float, ptr %arrayidx27, align 4
  %38 = load ptr, ptr %A.addr, align 4
  %39 = load i32, ptr %k, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], ptr %38, i32 %39
  %40 = load i32, ptr %j, align 4
  %arrayidx29 = getelementptr inbounds [20 x float], ptr %arrayidx28, i32 0, i32 %40
  %41 = load float, ptr %arrayidx29, align 4
  %mul3012 = fmul float %37, %41
  %lampsim13 = bitcast float %mul3012 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  store float %lampsim15, ptr %tmp25, align 4
  %42 = load float, ptr %tmp25, align 4
  %43 = load ptr, ptr %A.addr, align 4
  %44 = load i32, ptr %i, align 4
  %arrayidx31 = getelementptr inbounds [20 x float], ptr %43, i32 %44
  %45 = load i32, ptr %j, align 4
  %arrayidx32 = getelementptr inbounds [20 x float], ptr %arrayidx31, i32 0, i32 %45
  %46 = load float, ptr %arrayidx32, align 4
  %sub3316 = fsub float %46, %42
  %lampsim17 = bitcast float %sub3316 to i32
  %lampsim18 = and i32 %lampsim17, -65536
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, ptr %arrayidx32, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body24
  %47 = load i32, ptr %k, align 4
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, ptr %k, align 4
  br label %for.cond22, !llvm.loop !29

for.end36:                                        ; preds = %for.cond22
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %48 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %48, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond19, !llvm.loop !30

for.end39:                                        ; preds = %for.cond19
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %49 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %49, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond, !llvm.loop !31

for.end42:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.4)
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
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.5, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !33

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
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
