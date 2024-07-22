; ModuleID = './sources/mvt.c'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,121.599998) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/mvt.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [51 x i8] c"target('x1') scalar(range(0.0,80390.398438) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [51 x i8] c"target('x2') scalar(range(0.0,81574.398438) final)\00", section "llvm.metadata"
@x1_float = dso_local global [20 x float] zeroinitializer, align 4
@x2_float = dso_local global [20 x float] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %A = alloca [20 x [20 x float]], align 4
  %x1 = alloca [20 x float], align 4
  %x2 = alloca [20 x float], align 4
  %y_1 = alloca [20 x float], align 4
  %y_2 = alloca [20 x float], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 20, ptr %n, align 4
  call void @llvm.var.annotation(ptr %A, ptr @.str, ptr @.str.1, i32 113, ptr null)
  call void @llvm.var.annotation(ptr %x1, ptr @.str.2, ptr @.str.1, i32 114, ptr null)
  call void @llvm.var.annotation(ptr %x2, ptr @.str.3, ptr @.str.1, i32 115, ptr null)
  call void @llvm.var.annotation(ptr %y_1, ptr @.str, ptr @.str.1, i32 116, ptr null)
  call void @llvm.var.annotation(ptr %y_2, ptr @.str, ptr @.str.1, i32 117, ptr null)
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [20 x float], ptr %x1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [20 x float], ptr %x2, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [20 x float], ptr %y_1, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [20 x float], ptr %y_2, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  %arraydecay5 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @scale_2d(i32 noundef 20, i32 noundef 20, ptr noundef %arraydecay5, i32 noundef 128)
  %arraydecay6 = getelementptr inbounds [20 x float], ptr %x1, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay6, i32 noundef 128)
  %arraydecay7 = getelementptr inbounds [20 x float], ptr %x2, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay7, i32 noundef 128)
  %arraydecay8 = getelementptr inbounds [20 x float], ptr %y_1, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay8, i32 noundef 128)
  %arraydecay9 = getelementptr inbounds [20 x float], ptr %y_2, i32 0, i32 0
  call void @scale_1d(i32 noundef 20, ptr noundef %arraydecay9, i32 noundef 128)
  call void @timer_start()
  %1 = load i32, ptr %n, align 4
  %arraydecay10 = getelementptr inbounds [20 x float], ptr %x1, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [20 x float], ptr %x2, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [20 x float], ptr %y_1, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [20 x float], ptr %y_2, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [20 x [20 x float]], ptr %A, i32 0, i32 0
  call void @kernel_mvt(i32 noundef %1, ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %arraydecay14)
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
  %arrayidx = getelementptr inbounds [20 x float], ptr %x1, i32 0, i32 %4
  %5 = load float, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], ptr @x1_float, i32 0, i32 %6
  store float %5, ptr %arrayidx15, align 4
  %7 = load i32, ptr %i, align 4
  %arrayidx16 = getelementptr inbounds [20 x float], ptr %x2, i32 0, i32 %7
  %8 = load float, ptr %arrayidx16, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx17 = getelementptr inbounds [20 x float], ptr @x2_float, i32 0, i32 %9
  store float %8, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %11, ptr noundef @x1_float, ptr noundef @x2_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %x1, ptr noundef %x2, ptr noundef %y_1, ptr noundef %y_2, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca ptr, align 4
  %x2.addr = alloca ptr, align 4
  %y_1.addr = alloca ptr, align 4
  %y_2.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x1, ptr %x1.addr, align 4
  store ptr %x2, ptr %x2.addr, align 4
  store ptr %y_1, ptr %y_1.addr, align 4
  store ptr %y_2, ptr %y_2.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.4, ptr @.str.1, i32 38, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.4, ptr @.str.1, i32 39, ptr null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %2, %3
  %conv = sitofp i32 %rem to float
  %4 = load i32, ptr %n.addr, align 4
  %conv1 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv1
  %5 = load ptr, ptr %x1.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %5, i32 %6
  store float %div, ptr %arrayidx, align 4
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, ptr %n.addr, align 4
  %rem2 = srem i32 %add, %8
  %conv3 = sitofp i32 %rem2 to float
  %9 = load i32, ptr %n.addr, align 4
  %conv4 = sitofp i32 %9 to float
  %div5 = fdiv float %conv3, %conv4
  %10 = load ptr, ptr %x2.addr, align 4
  %11 = load i32, ptr %i, align 4
  %arrayidx6 = getelementptr inbounds float, ptr %10, i32 %11
  store float %div5, ptr %arrayidx6, align 4
  %12 = load i32, ptr %i, align 4
  %add7 = add nsw i32 %12, 3
  %13 = load i32, ptr %n.addr, align 4
  %rem8 = srem i32 %add7, %13
  %conv9 = sitofp i32 %rem8 to float
  %14 = load i32, ptr %n.addr, align 4
  %conv10 = sitofp i32 %14 to float
  %div11 = fdiv float %conv9, %conv10
  %15 = load ptr, ptr %y_1.addr, align 4
  %16 = load i32, ptr %i, align 4
  %arrayidx12 = getelementptr inbounds float, ptr %15, i32 %16
  store float %div11, ptr %arrayidx12, align 4
  %17 = load i32, ptr %i, align 4
  %add13 = add nsw i32 %17, 4
  %18 = load i32, ptr %n.addr, align 4
  %rem14 = srem i32 %add13, %18
  %conv15 = sitofp i32 %rem14 to float
  %19 = load i32, ptr %n.addr, align 4
  %conv16 = sitofp i32 %19 to float
  %div17 = fdiv float %conv15, %conv16
  %20 = load ptr, ptr %y_2.addr, align 4
  %21 = load i32, ptr %i, align 4
  %arrayidx18 = getelementptr inbounds float, ptr %20, i32 %21
  store float %div17, ptr %arrayidx18, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %n.addr, align 4
  %cmp20 = icmp slt i32 %22, %23
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond19
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %24, %25
  %26 = load i32, ptr %n.addr, align 4
  %rem23 = srem i32 %mul, %26
  %conv24 = sitofp i32 %rem23 to float
  %27 = load i32, ptr %n.addr, align 4
  %conv25 = sitofp i32 %27 to float
  %div26 = fdiv float %conv24, %conv25
  %28 = load ptr, ptr %A.addr, align 4
  %29 = load i32, ptr %i, align 4
  %arrayidx27 = getelementptr inbounds [20 x float], ptr %28, i32 %29
  %30 = load i32, ptr %j, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], ptr %arrayidx27, i32 0, i32 %30
  store float %div26, ptr %arrayidx28, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %31 = load i32, ptr %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond19, !llvm.loop !16

for.end:                                          ; preds = %for.cond19
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %32 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, ptr noundef %x1, ptr noundef %x2, ptr noundef %y_1, ptr noundef %y_2, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca ptr, align 4
  %x2.addr = alloca ptr, align 4
  %y_1.addr = alloca ptr, align 4
  %y_2.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x1, ptr %x1.addr, align 4
  store ptr %x2, ptr %x2.addr, align 4
  store ptr %y_1, ptr %y_1.addr, align 4
  store ptr %y_2, ptr %y_2.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %x1.addr, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %4, i32 %5
  %6 = load float, ptr %arrayidx, align 4
  %7 = load ptr, ptr %A.addr, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], ptr %7, i32 %8
  %9 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [20 x float], ptr %arrayidx4, i32 0, i32 %9
  %10 = load float, ptr %arrayidx5, align 4
  %11 = load ptr, ptr %y_1.addr, align 4
  %12 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds float, ptr %11, i32 %12
  %13 = load float, ptr %arrayidx6, align 4
  %mul = fmul float %10, %13
  %add = fadd float %6, %mul
  %14 = load ptr, ptr %x1.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds float, ptr %14, i32 %15
  store float %add, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %17 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %n.addr, align 4
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %n.addr, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %22 = load ptr, ptr %x2.addr, align 4
  %23 = load i32, ptr %i, align 4
  %arrayidx17 = getelementptr inbounds float, ptr %22, i32 %23
  %24 = load float, ptr %arrayidx17, align 4
  %25 = load ptr, ptr %A.addr, align 4
  %26 = load i32, ptr %j, align 4
  %arrayidx18 = getelementptr inbounds [20 x float], ptr %25, i32 %26
  %27 = load i32, ptr %i, align 4
  %arrayidx19 = getelementptr inbounds [20 x float], ptr %arrayidx18, i32 0, i32 %27
  %28 = load float, ptr %arrayidx19, align 4
  %29 = load ptr, ptr %y_2.addr, align 4
  %30 = load i32, ptr %j, align 4
  %arrayidx20 = getelementptr inbounds float, ptr %29, i32 %30
  %31 = load float, ptr %arrayidx20, align 4
  %mul21 = fmul float %28, %31
  %add22 = fadd float %24, %mul21
  %32 = load ptr, ptr %x2.addr, align 4
  %33 = load i32, ptr %i, align 4
  %arrayidx23 = getelementptr inbounds float, ptr %32, i32 %33
  store float %add22, ptr %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %34 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, ptr %j, align 4
  br label %for.cond14, !llvm.loop !20

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %35 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond11, !llvm.loop !21

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %x1, ptr noundef %x2) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca ptr, align 4
  %x2.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x1, ptr %x1.addr, align 4
  store ptr %x2, ptr %x2.addr, align 4
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 4
  %5 = load ptr, ptr %x1.addr, align 4
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds float, ptr %5, i32 %6
  %7 = load float, ptr %arrayidx, align 4
  %conv = fpext float %7 to double
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.6, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %n.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %11 = load i32, ptr %i, align 4
  %rem7 = srem i32 %11, 20
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %12 = load ptr, ptr @stderr, align 4
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.5)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %13 = load ptr, ptr @stderr, align 4
  %14 = load ptr, ptr %x2.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx13 = getelementptr inbounds float, ptr %14, i32 %15
  %16 = load float, ptr %arrayidx13, align 4
  %conv14 = fpext float %16 to double
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.6, double noundef %conv14)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %17 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond3, !llvm.loop !23

for.end18:                                        ; preds = %for.cond3
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
