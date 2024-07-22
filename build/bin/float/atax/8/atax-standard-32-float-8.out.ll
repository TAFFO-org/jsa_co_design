; ModuleID = './sources/atax.c'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,6.72) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/atax.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [36 x i8] c"scalar(range(32.0,62.545456) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [51 x i8] c"target('y') scalar(range(0.0,252035.078125) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,3906.560059) final)\00", section "llvm.metadata"
@y_float = dso_local global [22 x float] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 22) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca [20 x [22 x float]], align 4
  %x = alloca [22 x float], align 4
  %y = alloca [22 x float], align 4
  %tmp = alloca [20 x float], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 20, ptr %m, align 4
  store i32 22, ptr %n, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 111, ptr null)
  call void @llvm.var.annotation(ptr %x, ptr @.str.2, ptr @.str.1, i32 112, ptr null)
  call void @llvm.var.annotation(ptr %y, ptr @.str.3, ptr @.str.1, i32 113, ptr null)
  call void @llvm.var.annotation(ptr %tmp, ptr @.str.4, ptr @.str.1, i32 114, ptr null)
  %0 = load i32, ptr %m, align 4
  %1 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [20 x [22 x float]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [22 x float], ptr %x, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [22 x float], ptr %y, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [20 x float], ptr %tmp, i32 0, i32 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3)
  %arraydecay4 = getelementptr inbounds [20 x [22 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 20, i32 noundef 22, ptr noundef %arraydecay4, i32 noundef 32)
  %arraydecay5 = getelementptr inbounds [22 x float], ptr %x, i32 0, i32 0
  call void @scale_1d(i32 noundef 22, ptr noundef %arraydecay5, i32 noundef 32)
  %arraydecay6 = getelementptr inbounds [22 x float], ptr %y, i32 0, i32 0
  call void @scale_1d(i32 noundef 22, ptr noundef %arraydecay6, i32 noundef 32)
  %arraydecay7 = getelementptr inbounds [20 x float], ptr %tmp, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay7, i32 noundef 32)
  call void @timer_start()
  %2 = load i32, ptr %m, align 4
  %3 = load i32, ptr %n, align 4
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], ptr %A, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [22 x float], ptr %x, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [22 x float], ptr %y, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [20 x float], ptr %tmp, i32 0, i32 0
  call void @kernel_atax(i32 noundef %2, i32 noundef %3, ptr noundef %arraydecay8, ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %arraydecay11)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [22 x float], ptr %y, i32 0, i32 %5
  %6 = load float, ptr %arrayidx, align 4
  %7 = load i32, ptr %i, align 4
  %arrayidx12 = getelementptr inbounds [22 x float], ptr @y_float, i32 0, i32 %7
  store float %6, ptr %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %9, ptr noundef @y_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, ptr noundef %A, ptr noundef %x, ptr noundef %y, ptr noundef %tmp) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %tmp.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 4
  store ptr %tmp, ptr %tmp.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.5, ptr @.str.1, i32 37, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.5, ptr @.str.1, i32 38, ptr null)
  call void @llvm.var.annotation(ptr %fn, ptr @.str.6, ptr @.str.1, i32 39, ptr null)
  %0 = load i32, ptr %n.addr, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, ptr %fn, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %conv2 = sitofp i32 %3 to float
  %4 = load float, ptr %fn, align 4
  %div = fdiv float %conv2, %4
  %add = fadd float 1.000000e+00, %div
  %5 = load ptr, ptr %x.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %5, i32 %6
  store float %add, ptr %arrayidx, align 4
  %7 = load ptr, ptr %y.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx3 = getelementptr inbounds float, ptr %7, i32 %8
  store float 0.000000e+00, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %m.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond4
  %12 = load ptr, ptr %tmp.addr, align 4
  %13 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds float, ptr %12, i32 %13
  store float 0.000000e+00, ptr %arrayidx8, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %for.body7
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %n.addr, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body12, label %for.end21

for.body12:                                       ; preds = %for.cond9
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %j, align 4
  %add13 = add nsw i32 %16, %17
  %18 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %add13, %18
  %conv14 = sitofp i32 %rem to float
  %19 = load i32, ptr %m.addr, align 4
  %mul = mul nsw i32 5, %19
  %conv15 = sitofp i32 %mul to float
  %div16 = fdiv float %conv14, %conv15
  %20 = load ptr, ptr %A.addr, align 4
  %21 = load i32, ptr %i, align 4
  %arrayidx17 = getelementptr inbounds [22 x float], ptr %20, i32 %21
  %22 = load i32, ptr %j, align 4
  %arrayidx18 = getelementptr inbounds [22 x float], ptr %arrayidx17, i32 0, i32 %22
  store float %div16, ptr %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body12
  %23 = load i32, ptr %j, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, ptr %j, align 4
  br label %for.cond9, !llvm.loop !17

for.end21:                                        ; preds = %for.cond9
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %24 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond4, !llvm.loop !18

for.end24:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax(i32 noundef %m, i32 noundef %n, ptr noundef %A, ptr noundef %x, ptr noundef %y, ptr noundef %tmp) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %tmp.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 4
  store ptr %tmp, ptr %tmp.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %y.addr, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %2, i32 %3
  store float 0.000000e+00, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %m.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %tmp.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx4 = getelementptr inbounds float, ptr %7, i32 %8
  store float 0.000000e+00, ptr %arrayidx4, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %9 = load i32, ptr %j, align 4
  %10 = load i32, ptr %n.addr, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %11 = load ptr, ptr %tmp.addr, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds float, ptr %11, i32 %12
  %13 = load float, ptr %arrayidx8, align 4
  %14 = load ptr, ptr %A.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx9 = getelementptr inbounds [22 x float], ptr %14, i32 %15
  %16 = load i32, ptr %j, align 4
  %arrayidx10 = getelementptr inbounds [22 x float], ptr %arrayidx9, i32 0, i32 %16
  %17 = load float, ptr %arrayidx10, align 4
  %18 = load ptr, ptr %x.addr, align 4
  %19 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds float, ptr %18, i32 %19
  %20 = load float, ptr %arrayidx11, align 4
  %mul = fmul float %17, %20
  %add = fadd float %13, %mul
  %21 = load ptr, ptr %tmp.addr, align 4
  %22 = load i32, ptr %i, align 4
  %arrayidx12 = getelementptr inbounds float, ptr %21, i32 %22
  store float %add, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %23 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond5, !llvm.loop !20

for.end15:                                        ; preds = %for.cond5
  store i32 0, ptr %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %24 = load i32, ptr %j, align 4
  %25 = load i32, ptr %n.addr, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %26 = load ptr, ptr %y.addr, align 4
  %27 = load i32, ptr %j, align 4
  %arrayidx19 = getelementptr inbounds float, ptr %26, i32 %27
  %28 = load float, ptr %arrayidx19, align 4
  %29 = load ptr, ptr %A.addr, align 4
  %30 = load i32, ptr %i, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], ptr %29, i32 %30
  %31 = load i32, ptr %j, align 4
  %arrayidx21 = getelementptr inbounds [22 x float], ptr %arrayidx20, i32 0, i32 %31
  %32 = load float, ptr %arrayidx21, align 4
  %33 = load ptr, ptr %tmp.addr, align 4
  %34 = load i32, ptr %i, align 4
  %arrayidx22 = getelementptr inbounds float, ptr %33, i32 %34
  %35 = load float, ptr %arrayidx22, align 4
  %mul23 = fmul float %32, %35
  %add24 = fadd float %28, %mul23
  %36 = load ptr, ptr %y.addr, align 4
  %37 = load i32, ptr %j, align 4
  %arrayidx25 = getelementptr inbounds float, ptr %36, i32 %37
  store float %add24, ptr %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %38 = load i32, ptr %j, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, ptr %j, align 4
  br label %for.cond16, !llvm.loop !21

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %39 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond1, !llvm.loop !22

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %y, ptr %y.addr, align 4
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 4
  %5 = load ptr, ptr %y.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %5, i32 %6
  %7 = load float, ptr %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

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
