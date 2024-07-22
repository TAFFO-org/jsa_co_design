; ModuleID = './sources/jacobi-2d.c'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(1.066667,120.533333) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-2d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [35 x i8] c"scalar(range(1.6,128.53334) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4
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
  %div = fdiv float %0, 1.000000e+01
  store float %div, ptr %x, align 4
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
  %mul = fmul float %7, %8
  %sub = fsub float %6, %mul
  %9 = load float, ptr %constTwoVal, align 4
  %10 = load float, ptr %x, align 4
  %mul3 = fmul float %9, %10
  %div4 = fdiv float %sub, %mul3
  store float %div4, ptr %dx, align 4
  %11 = load float, ptr %x, align 4
  %12 = load float, ptr %dx, align 4
  %add = fadd float %11, %12
  store float %add, ptr %x, align 4
  %13 = load float, ptr %val.addr, align 4
  %14 = load float, ptr %x, align 4
  %15 = load float, ptr %x, align 4
  %mul5 = fmul float %14, %15
  %sub6 = fsub float %13, %mul5
  store float %sub6, ptr %diff, align 4
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
  %conv = sitofp i32 %6 to float
  %mul = fmul float %5, %conv
  %7 = load ptr, ptr %val.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx1 = getelementptr inbounds float, ptr %7, i32 %8
  store float %mul, ptr %arrayidx1, align 4
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
  %conv = sitofp i32 %11 to float
  %mul = fmul float %10, %conv
  %12 = load ptr, ptr %val.addr, align 4
  %13 = load i32, ptr %i, align 4
  %14 = mul nsw i32 %13, %1
  %arrayidx5 = getelementptr inbounds float, ptr %12, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds float, ptr %arrayidx5, i32 %15
  store float %mul, ptr %arrayidx6, align 4
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
  %conv = sitofp i32 %17 to float
  %mul = fmul float %16, %conv
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
  store float %mul, ptr %arrayidx11, align 4
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
  %A = alloca [15 x [15 x float]], align 4
  %B = alloca [15 x [15 x float]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 15, ptr %n, align 4
  store i32 10, ptr %tsteps, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 100, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.2, ptr @.str.1, i32 101, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [15 x [15 x float]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [15 x [15 x float]], ptr %B, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [15 x [15 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 15, i32 noundef 15, ptr noundef %arraydecay2, i32 noundef 8)
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], ptr %B, i32 0, i32 0
  call void @scale_2d(i32 noundef 15, i32 noundef 15, ptr noundef %arraydecay3, i32 noundef 8)
  call void @timer_start()
  %1 = load i32, ptr %tsteps, align 4
  %2 = load i32, ptr %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], ptr %A, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], ptr %B, i32 0, i32 0
  call void @kernel_jacobi_2d(i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %n, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %7 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [15 x [15 x float]], ptr %A, i32 0, i32 %7
  %8 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [15 x float], ptr %arrayidx, i32 0, i32 %8
  %9 = load float, ptr %arrayidx9, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [15 x [15 x float]], ptr @A_float, i32 0, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [15 x float], ptr %arrayidx10, i32 0, i32 %11
  store float %9, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %12 = load i32, ptr %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond6, !llvm.loop !15

for.end:                                          ; preds = %for.cond6
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end14:                                        ; preds = %for.cond
  %14 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %14, ptr noundef @A_float)
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
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.3, ptr @.str.1, i32 33, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.3, ptr @.str.1, i32 34, ptr null)
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

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %conv = sitofp i32 %4 to float
  %5 = load i32, ptr %j, align 4
  %add = add nsw i32 %5, 2
  %conv4 = sitofp i32 %add to float
  %mul = fmul float %conv, %conv4
  %add5 = fadd float %mul, 2.000000e+00
  %6 = load i32, ptr %n.addr, align 4
  %conv6 = sitofp i32 %6 to float
  %div = fdiv float %add5, %conv6
  %7 = load ptr, ptr %A.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [15 x float], ptr %7, i32 %8
  %9 = load i32, ptr %j, align 4
  %arrayidx7 = getelementptr inbounds [15 x float], ptr %arrayidx, i32 0, i32 %9
  store float %div, ptr %arrayidx7, align 4
  %10 = load i32, ptr %i, align 4
  %conv8 = sitofp i32 %10 to float
  %11 = load i32, ptr %j, align 4
  %add9 = add nsw i32 %11, 3
  %conv10 = sitofp i32 %add9 to float
  %mul11 = fmul float %conv8, %conv10
  %add12 = fadd float %mul11, 3.000000e+00
  %12 = load i32, ptr %n.addr, align 4
  %conv13 = sitofp i32 %12 to float
  %div14 = fdiv float %add12, %conv13
  %13 = load ptr, ptr %B.addr, align 4
  %14 = load i32, ptr %i, align 4
  %arrayidx15 = getelementptr inbounds [15 x float], ptr %13, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx16 = getelementptr inbounds [15 x float], ptr %arrayidx15, i32 0, i32 %15
  store float %div14, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %17 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d(i32 noundef %tsteps, i32 noundef %n, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tsteps, ptr %tsteps.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store i32 0, ptr %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %0 = load i32, ptr %t, align 4
  %1 = load i32, ptr %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %n.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp slt i32 %4, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %A.addr, align 4
  %7 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [15 x float], ptr %6, i32 %7
  %8 = load i32, ptr %j, align 4
  %arrayidx8 = getelementptr inbounds [15 x float], ptr %arrayidx, i32 0, i32 %8
  %9 = load float, ptr %arrayidx8, align 4
  %10 = load ptr, ptr %A.addr, align 4
  %11 = load i32, ptr %i, align 4
  %arrayidx9 = getelementptr inbounds [15 x float], ptr %10, i32 %11
  %12 = load i32, ptr %j, align 4
  %sub10 = sub nsw i32 %12, 1
  %arrayidx11 = getelementptr inbounds [15 x float], ptr %arrayidx9, i32 0, i32 %sub10
  %13 = load float, ptr %arrayidx11, align 4
  %add = fadd float %9, %13
  %14 = load ptr, ptr %A.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx12 = getelementptr inbounds [15 x float], ptr %14, i32 %15
  %16 = load i32, ptr %j, align 4
  %add13 = add nsw i32 1, %16
  %arrayidx14 = getelementptr inbounds [15 x float], ptr %arrayidx12, i32 0, i32 %add13
  %17 = load float, ptr %arrayidx14, align 4
  %add15 = fadd float %add, %17
  %18 = load ptr, ptr %A.addr, align 4
  %19 = load i32, ptr %i, align 4
  %add16 = add nsw i32 1, %19
  %arrayidx17 = getelementptr inbounds [15 x float], ptr %18, i32 %add16
  %20 = load i32, ptr %j, align 4
  %arrayidx18 = getelementptr inbounds [15 x float], ptr %arrayidx17, i32 0, i32 %20
  %21 = load float, ptr %arrayidx18, align 4
  %add19 = fadd float %add15, %21
  %22 = load ptr, ptr %A.addr, align 4
  %23 = load i32, ptr %i, align 4
  %sub20 = sub nsw i32 %23, 1
  %arrayidx21 = getelementptr inbounds [15 x float], ptr %22, i32 %sub20
  %24 = load i32, ptr %j, align 4
  %arrayidx22 = getelementptr inbounds [15 x float], ptr %arrayidx21, i32 0, i32 %24
  %25 = load float, ptr %arrayidx22, align 4
  %add23 = fadd float %add19, %25
  %mul = fmul float 0x3FC99999A0000000, %add23
  %26 = load ptr, ptr %B.addr, align 4
  %27 = load i32, ptr %i, align 4
  %arrayidx24 = getelementptr inbounds [15 x float], ptr %26, i32 %27
  %28 = load i32, ptr %j, align 4
  %arrayidx25 = getelementptr inbounds [15 x float], ptr %arrayidx24, i32 0, i32 %28
  store float %mul, ptr %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %29 = load i32, ptr %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond4, !llvm.loop !19

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %30 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond1, !llvm.loop !20

for.end28:                                        ; preds = %for.cond1
  store i32 1, ptr %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %n.addr, align 4
  %sub30 = sub nsw i32 %32, 1
  %cmp31 = icmp slt i32 %31, %sub30
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  store i32 1, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %33 = load i32, ptr %j, align 4
  %34 = load i32, ptr %n.addr, align 4
  %sub34 = sub nsw i32 %34, 1
  %cmp35 = icmp slt i32 %33, %sub34
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %35 = load ptr, ptr %B.addr, align 4
  %36 = load i32, ptr %i, align 4
  %arrayidx37 = getelementptr inbounds [15 x float], ptr %35, i32 %36
  %37 = load i32, ptr %j, align 4
  %arrayidx38 = getelementptr inbounds [15 x float], ptr %arrayidx37, i32 0, i32 %37
  %38 = load float, ptr %arrayidx38, align 4
  %39 = load ptr, ptr %B.addr, align 4
  %40 = load i32, ptr %i, align 4
  %arrayidx39 = getelementptr inbounds [15 x float], ptr %39, i32 %40
  %41 = load i32, ptr %j, align 4
  %sub40 = sub nsw i32 %41, 1
  %arrayidx41 = getelementptr inbounds [15 x float], ptr %arrayidx39, i32 0, i32 %sub40
  %42 = load float, ptr %arrayidx41, align 4
  %add42 = fadd float %38, %42
  %43 = load ptr, ptr %B.addr, align 4
  %44 = load i32, ptr %i, align 4
  %arrayidx43 = getelementptr inbounds [15 x float], ptr %43, i32 %44
  %45 = load i32, ptr %j, align 4
  %add44 = add nsw i32 1, %45
  %arrayidx45 = getelementptr inbounds [15 x float], ptr %arrayidx43, i32 0, i32 %add44
  %46 = load float, ptr %arrayidx45, align 4
  %add46 = fadd float %add42, %46
  %47 = load ptr, ptr %B.addr, align 4
  %48 = load i32, ptr %i, align 4
  %add47 = add nsw i32 1, %48
  %arrayidx48 = getelementptr inbounds [15 x float], ptr %47, i32 %add47
  %49 = load i32, ptr %j, align 4
  %arrayidx49 = getelementptr inbounds [15 x float], ptr %arrayidx48, i32 0, i32 %49
  %50 = load float, ptr %arrayidx49, align 4
  %add50 = fadd float %add46, %50
  %51 = load ptr, ptr %B.addr, align 4
  %52 = load i32, ptr %i, align 4
  %sub51 = sub nsw i32 %52, 1
  %arrayidx52 = getelementptr inbounds [15 x float], ptr %51, i32 %sub51
  %53 = load i32, ptr %j, align 4
  %arrayidx53 = getelementptr inbounds [15 x float], ptr %arrayidx52, i32 0, i32 %53
  %54 = load float, ptr %arrayidx53, align 4
  %add54 = fadd float %add50, %54
  %mul55 = fmul float 0x3FC99999A0000000, %add54
  %55 = load ptr, ptr %A.addr, align 4
  %56 = load i32, ptr %i, align 4
  %arrayidx56 = getelementptr inbounds [15 x float], ptr %55, i32 %56
  %57 = load i32, ptr %j, align 4
  %arrayidx57 = getelementptr inbounds [15 x float], ptr %arrayidx56, i32 0, i32 %57
  store float %mul55, ptr %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %58 = load i32, ptr %j, align 4
  %inc59 = add nsw i32 %58, 1
  store i32 %inc59, ptr %j, align 4
  br label %for.cond33, !llvm.loop !21

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %59 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %59, 1
  store i32 %inc62, ptr %i, align 4
  br label %for.cond29, !llvm.loop !22

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %60 = load i32, ptr %t, align 4
  %inc65 = add nsw i32 %60, 1
  store i32 %inc65, ptr %t, align 4
  br label %for.cond, !llvm.loop !23

for.end66:                                        ; preds = %for.cond
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
  %arrayidx = getelementptr inbounds [15 x float], ptr %9, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [15 x float], ptr %arrayidx, i32 0, i32 %11
  %12 = load float, ptr %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.5, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !25

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
