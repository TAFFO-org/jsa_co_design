; ModuleID = './sources/trmm.c'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/trmm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,1.0) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [46 x i8] c"target('B') scalar(range(0.0,5.765625) final)\00", section "llvm.metadata"
@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata"
@stderr = external global ptr, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1

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
  %A = alloca [10 x [10 x float]], align 4
  %B = alloca [10 x [16 x float]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 10, ptr %m, align 4
  store i32 16, ptr %n, align 4
  call void @llvm.var.annotation(ptr %alpha, ptr @.str, ptr @.str.1, i32 115, ptr null)
  call void @llvm.var.annotation(ptr %A, ptr @.str.2, ptr @.str.1, i32 116, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.3, ptr @.str.1, i32 117, ptr null)
  %0 = load i32, ptr %m, align 4
  %1 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [10 x [10 x float]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [10 x [16 x float]], ptr %B, i32 0, i32 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %alpha, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  call void @timer_start()
  %2 = load i32, ptr %m, align 4
  %3 = load i32, ptr %n, align 4
  %4 = load float, ptr %alpha, align 4
  %arraydecay2 = getelementptr inbounds [10 x [10 x float]], ptr %A, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [10 x [16 x float]], ptr %B, i32 0, i32 0
  call void @kernel_trmm(i32 noundef %2, i32 noundef %3, float noundef %4, ptr noundef %arraydecay2, ptr noundef %arraydecay3)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %m, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %n, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [10 x [16 x float]], ptr %B, i32 0, i32 %9
  %10 = load i32, ptr %j, align 4
  %arrayidx7 = getelementptr inbounds [16 x float], ptr %arrayidx, i32 0, i32 %10
  %11 = load float, ptr %arrayidx7, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds [10 x [16 x float]], ptr @B_float, i32 0, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [16 x float], ptr %arrayidx8, i32 0, i32 %13
  store float %11, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end12:                                        ; preds = %for.cond
  %16 = load i32, ptr %m, align 4
  %17 = load i32, ptr %n, align 4
  call void @print_array(i32 noundef %16, i32 noundef %17, ptr noundef @B_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.4, ptr @.str.1, i32 35, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.5, ptr @.str.1, i32 36, ptr null)
  %0 = load ptr, ptr %alpha.addr, align 4
  store float 1.500000e+00, ptr %0, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %m.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %j, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, ptr %m.addr, align 4
  %rem = srem i32 %add, %9
  %conv = sitofp i32 %rem to float
  %10 = load i32, ptr %m.addr, align 4
  %conv5 = sitofp i32 %10 to float
  %div = fdiv float %conv, %conv5
  %11 = load ptr, ptr %A.addr, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [10 x float], ptr %11, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds [10 x float], ptr %arrayidx, i32 0, i32 %13
  store float %div, ptr %arrayidx6, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %14 = load ptr, ptr %A.addr, align 4
  %15 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds [10 x float], ptr %14, i32 %15
  %16 = load i32, ptr %j, align 4
  %arrayidx8 = getelementptr inbounds [10 x float], ptr %arrayidx7, i32 0, i32 %16
  store float 0.000000e+00, ptr %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  %18 = load ptr, ptr %A.addr, align 4
  %19 = load i32, ptr %i, align 4
  %arrayidx9 = getelementptr inbounds [10 x float], ptr %18, i32 %19
  %20 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [10 x float], ptr %arrayidx9, i32 0, i32 %20
  store float 1.000000e+00, ptr %arrayidx10, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.end
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %n.addr, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %for.body14, label %for.end24

for.body14:                                       ; preds = %for.cond11
  %23 = load i32, ptr %n.addr, align 4
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %24, %25
  %add15 = add nsw i32 %23, %sub
  %26 = load i32, ptr %n.addr, align 4
  %rem16 = srem i32 %add15, %26
  %conv17 = sitofp i32 %rem16 to float
  %27 = load i32, ptr %n.addr, align 4
  %conv18 = sitofp i32 %27 to float
  %div19 = fdiv float %conv17, %conv18
  %28 = load ptr, ptr %B.addr, align 4
  %29 = load i32, ptr %i, align 4
  %arrayidx20 = getelementptr inbounds [16 x float], ptr %28, i32 %29
  %30 = load i32, ptr %j, align 4
  %arrayidx21 = getelementptr inbounds [16 x float], ptr %arrayidx20, i32 0, i32 %30
  store float %div19, ptr %arrayidx21, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body14
  %31 = load i32, ptr %j, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, ptr %j, align 4
  br label %for.cond11, !llvm.loop !12

for.end24:                                        ; preds = %for.cond11
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %32 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %32, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %m, i32 noundef %n, float noundef %alpha, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store float %alpha, ptr %alpha.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, ptr %k, align 4
  %6 = load i32, ptr %m.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load ptr, ptr %A.addr, align 4
  %8 = load i32, ptr %k, align 4
  %arrayidx = getelementptr inbounds [10 x float], ptr %7, i32 %8
  %9 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds [10 x float], ptr %arrayidx, i32 0, i32 %9
  %10 = load float, ptr %arrayidx7, align 4
  %11 = load ptr, ptr %B.addr, align 4
  %12 = load i32, ptr %k, align 4
  %arrayidx8 = getelementptr inbounds [16 x float], ptr %11, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [16 x float], ptr %arrayidx8, i32 0, i32 %13
  %14 = load float, ptr %arrayidx9, align 4
  %mul = fmul float %10, %14
  %15 = load ptr, ptr %B.addr, align 4
  %16 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], ptr %15, i32 %16
  %17 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [16 x float], ptr %arrayidx10, i32 0, i32 %17
  %18 = load float, ptr %arrayidx11, align 4
  %add12 = fadd float %18, %mul
  store float %add12, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !14

for.end:                                          ; preds = %for.cond4
  %20 = load float, ptr %alpha.addr, align 4
  %21 = load ptr, ptr %B.addr, align 4
  %22 = load i32, ptr %i, align 4
  %arrayidx13 = getelementptr inbounds [16 x float], ptr %21, i32 %22
  %23 = load i32, ptr %j, align 4
  %arrayidx14 = getelementptr inbounds [16 x float], ptr %arrayidx13, i32 0, i32 %23
  %24 = load float, ptr %arrayidx14, align 4
  %mul15 = fmul float %20, %24
  %25 = load ptr, ptr %B.addr, align 4
  %26 = load i32, ptr %i, align 4
  %arrayidx16 = getelementptr inbounds [16 x float], ptr %25, i32 %26
  %27 = load i32, ptr %j, align 4
  %arrayidx17 = getelementptr inbounds [16 x float], ptr %arrayidx16, i32 0, i32 %27
  store float %mul15, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %28 = load i32, ptr %j, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, ptr %j, align 4
  br label %for.cond1, !llvm.loop !15

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %29 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, ptr noundef %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %B.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %B, ptr %B.addr, align 4
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load ptr, ptr @stderr, align 4
  %9 = load ptr, ptr %B.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [16 x float], ptr %9, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [16 x float], ptr %arrayidx, i32 0, i32 %11
  %12 = load float, ptr %arrayidx5, align 4
  %conv = fpext float %12 to double
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.7, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

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
