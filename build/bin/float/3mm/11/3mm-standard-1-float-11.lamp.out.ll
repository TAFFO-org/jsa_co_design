; ModuleID = './build/bin/float/3mm/11/3mm-standard-1-float-11.out.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.108333) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/3mm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.166667) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,0.175) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,0.128) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.183333) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.18) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [46 x i8] c"target('G') scalar(range(0.0,0.054283) final)\00", section "llvm.metadata"
@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 14))\00", section "llvm.metadata"
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %E = alloca [6 x [8 x float]], align 4
  %A = alloca [6 x [10 x float]], align 4
  %B = alloca [10 x [8 x float]], align 4
  %F = alloca [8 x [12 x float]], align 4
  %C = alloca [8 x [14 x float]], align 4
  %D = alloca [14 x [12 x float]], align 4
  %G = alloca [6 x [12 x float]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 6, ptr %ni, align 4
  store i32 8, ptr %nj, align 4
  store i32 10, ptr %nk, align 4
  store i32 12, ptr %nl, align 4
  store i32 14, ptr %nm, align 4
  call void @llvm.var.annotation(ptr %E, ptr @.str, ptr @.str.1, i32 143, ptr null)
  call void @llvm.var.annotation(ptr %A, ptr @.str.2, ptr @.str.1, i32 144, ptr null)
  call void @llvm.var.annotation(ptr %B, ptr @.str.3, ptr @.str.1, i32 145, ptr null)
  call void @llvm.var.annotation(ptr %F, ptr @.str.4, ptr @.str.1, i32 146, ptr null)
  call void @llvm.var.annotation(ptr %C, ptr @.str.5, ptr @.str.1, i32 147, ptr null)
  call void @llvm.var.annotation(ptr %D, ptr @.str.6, ptr @.str.1, i32 148, ptr null)
  call void @llvm.var.annotation(ptr %G, ptr @.str.7, ptr @.str.1, i32 149, ptr null)
  %0 = load i32, ptr %ni, align 4
  %1 = load i32, ptr %nj, align 4
  %2 = load i32, ptr %nk, align 4
  %3 = load i32, ptr %nl, align 4
  %4 = load i32, ptr %nm, align 4
  %arraydecay = getelementptr inbounds [6 x [10 x float]], ptr %A, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [10 x [8 x float]], ptr %B, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [8 x [14 x float]], ptr %C, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [14 x [12 x float]], ptr %D, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [6 x [8 x float]], ptr %E, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [8 x [12 x float]], ptr %F, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [6 x [12 x float]], ptr %G, i32 0, i32 0
  call void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arraydecay6)
  call void @timer_start()
  %5 = load i32, ptr %ni, align 4
  %6 = load i32, ptr %nj, align 4
  %7 = load i32, ptr %nk, align 4
  %8 = load i32, ptr %nl, align 4
  %9 = load i32, ptr %nm, align 4
  %arraydecay7 = getelementptr inbounds [6 x [8 x float]], ptr %E, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [6 x [10 x float]], ptr %A, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [10 x [8 x float]], ptr %B, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [8 x [12 x float]], ptr %F, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [8 x [14 x float]], ptr %C, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [14 x [12 x float]], ptr %D, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], ptr %G, i32 0, i32 0
  call void @kernel_3mm(i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %arraydecay7, ptr noundef %arraydecay8, ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %arraydecay13)
  call void @timer_stop()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %ni, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %nl, align 4
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %14 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [6 x [12 x float]], ptr %G, i32 0, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx17 = getelementptr inbounds [12 x float], ptr %arrayidx, i32 0, i32 %15
  %16 = load float, ptr %arrayidx17, align 4
  %17 = load i32, ptr %i, align 4
  %arrayidx18 = getelementptr inbounds [6 x [12 x float]], ptr @G_float, i32 0, i32 %17
  %18 = load i32, ptr %j, align 4
  %arrayidx19 = getelementptr inbounds [12 x float], ptr %arrayidx18, i32 0, i32 %18
  store float %16, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond14, !llvm.loop !9

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end22:                                        ; preds = %for.cond
  %21 = load i32, ptr %ni, align 4
  %22 = load i32, ptr %nl, align 4
  call void @print_array(i32 noundef %21, i32 noundef %22, ptr noundef @G_float)
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(ptr, ptr, ptr, i32, ptr) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, ptr noundef %A, ptr noundef %B, ptr noundef %C, ptr noundef %D, ptr noundef %E, ptr noundef %F, ptr noundef %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %C.addr = alloca ptr, align 4
  %D.addr = alloca ptr, align 4
  %E.addr = alloca ptr, align 4
  %F.addr = alloca ptr, align 4
  %G.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, ptr %ni.addr, align 4
  store i32 %nj, ptr %nj.addr, align 4
  store i32 %nk, ptr %nk.addr, align 4
  store i32 %nl, ptr %nl.addr, align 4
  store i32 %nm, ptr %nm.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store ptr %C, ptr %C.addr, align 4
  store ptr %D, ptr %D.addr, align 4
  store ptr %E, ptr %E.addr, align 4
  store ptr %F, ptr %F.addr, align 4
  store ptr %G, ptr %G.addr, align 4
  call void @llvm.var.annotation(ptr %i, ptr @.str.8, ptr @.str.1, i32 40, ptr null)
  call void @llvm.var.annotation(ptr %j, ptr @.str.8, ptr @.str.1, i32 41, ptr null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %nk.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, 1
  %6 = load i32, ptr %ni.addr, align 4
  %rem = srem i32 %add, %6
  %conv1 = sitofp i32 %rem to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %7 = load i32, ptr %ni.addr, align 4
  %mul4 = mul nsw i32 5, %7
  %conv54 = sitofp i32 %mul4 to float
  %lampsim5 = bitcast float %conv54 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %div8 = fdiv float %lampsim3, %lampsim7
  %lampsim9 = bitcast float %div8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %8 = load ptr, ptr %A.addr, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [10 x float], ptr %8, i32 %9
  %10 = load i32, ptr %j, align 4
  %arrayidx6 = getelementptr inbounds [10 x float], ptr %arrayidx, i32 0, i32 %10
  store float %lampsim11, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end9
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %nk.addr, align 4
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %for.body13, label %for.end33

for.body13:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc28, %for.body13
  %15 = load i32, ptr %j, align 4
  %16 = load i32, ptr %nj.addr, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body17, label %for.end30

for.body17:                                       ; preds = %for.cond14
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %j, align 4
  %add18 = add nsw i32 %18, 1
  %mul19 = mul nsw i32 %17, %add18
  %add20 = add nsw i32 %mul19, 2
  %19 = load i32, ptr %nj.addr, align 4
  %rem21 = srem i32 %add20, %19
  %conv2212 = sitofp i32 %rem21 to float
  %lampsim13 = bitcast float %conv2212 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %20 = load i32, ptr %nj.addr, align 4
  %mul23 = mul nsw i32 5, %20
  %conv2416 = sitofp i32 %mul23 to float
  %lampsim17 = bitcast float %conv2416 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  %div2520 = fdiv float %lampsim15, %lampsim19
  %lampsim21 = bitcast float %div2520 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  %21 = load ptr, ptr %B.addr, align 4
  %22 = load i32, ptr %i, align 4
  %arrayidx26 = getelementptr inbounds [8 x float], ptr %21, i32 %22
  %23 = load i32, ptr %j, align 4
  %arrayidx27 = getelementptr inbounds [8 x float], ptr %arrayidx26, i32 0, i32 %23
  store float %lampsim23, ptr %arrayidx27, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %for.body17
  %24 = load i32, ptr %j, align 4
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, ptr %j, align 4
  br label %for.cond14, !llvm.loop !13

for.end30:                                        ; preds = %for.cond14
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %25 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond10, !llvm.loop !14

for.end33:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc54, %for.end33
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %nj.addr, align 4
  %cmp35 = icmp slt i32 %26, %27
  br i1 %cmp35, label %for.body37, label %for.end56

for.body37:                                       ; preds = %for.cond34
  store i32 0, ptr %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc51, %for.body37
  %28 = load i32, ptr %j, align 4
  %29 = load i32, ptr %nm.addr, align 4
  %cmp39 = icmp slt i32 %28, %29
  br i1 %cmp39, label %for.body41, label %for.end53

for.body41:                                       ; preds = %for.cond38
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %j, align 4
  %add42 = add nsw i32 %31, 3
  %mul43 = mul nsw i32 %30, %add42
  %32 = load i32, ptr %nl.addr, align 4
  %rem44 = srem i32 %mul43, %32
  %conv4524 = sitofp i32 %rem44 to float
  %lampsim25 = bitcast float %conv4524 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %33 = load i32, ptr %nl.addr, align 4
  %mul46 = mul nsw i32 5, %33
  %conv4728 = sitofp i32 %mul46 to float
  %lampsim29 = bitcast float %conv4728 to i32
  %lampsim30 = and i32 %lampsim29, -8192
  %lampsim31 = bitcast i32 %lampsim30 to float
  %div4832 = fdiv float %lampsim27, %lampsim31
  %lampsim33 = bitcast float %div4832 to i32
  %lampsim34 = and i32 %lampsim33, -8192
  %lampsim35 = bitcast i32 %lampsim34 to float
  %34 = load ptr, ptr %C.addr, align 4
  %35 = load i32, ptr %i, align 4
  %arrayidx49 = getelementptr inbounds [14 x float], ptr %34, i32 %35
  %36 = load i32, ptr %j, align 4
  %arrayidx50 = getelementptr inbounds [14 x float], ptr %arrayidx49, i32 0, i32 %36
  store float %lampsim35, ptr %arrayidx50, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body41
  %37 = load i32, ptr %j, align 4
  %inc52 = add nsw i32 %37, 1
  store i32 %inc52, ptr %j, align 4
  br label %for.cond38, !llvm.loop !15

for.end53:                                        ; preds = %for.cond38
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %38 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %38, 1
  store i32 %inc55, ptr %i, align 4
  br label %for.cond34, !llvm.loop !16

for.end56:                                        ; preds = %for.cond34
  store i32 0, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc78, %for.end56
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %nm.addr, align 4
  %cmp58 = icmp slt i32 %39, %40
  br i1 %cmp58, label %for.body60, label %for.end80

for.body60:                                       ; preds = %for.cond57
  store i32 0, ptr %j, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc75, %for.body60
  %41 = load i32, ptr %j, align 4
  %42 = load i32, ptr %nl.addr, align 4
  %cmp62 = icmp slt i32 %41, %42
  br i1 %cmp62, label %for.body64, label %for.end77

for.body64:                                       ; preds = %for.cond61
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %j, align 4
  %add65 = add nsw i32 %44, 2
  %mul66 = mul nsw i32 %43, %add65
  %add67 = add nsw i32 %mul66, 2
  %45 = load i32, ptr %nk.addr, align 4
  %rem68 = srem i32 %add67, %45
  %conv6936 = sitofp i32 %rem68 to float
  %lampsim37 = bitcast float %conv6936 to i32
  %lampsim38 = and i32 %lampsim37, -8192
  %lampsim39 = bitcast i32 %lampsim38 to float
  %46 = load i32, ptr %nk.addr, align 4
  %mul70 = mul nsw i32 5, %46
  %conv7140 = sitofp i32 %mul70 to float
  %lampsim41 = bitcast float %conv7140 to i32
  %lampsim42 = and i32 %lampsim41, -8192
  %lampsim43 = bitcast i32 %lampsim42 to float
  %div7244 = fdiv float %lampsim39, %lampsim43
  %lampsim45 = bitcast float %div7244 to i32
  %lampsim46 = and i32 %lampsim45, -8192
  %lampsim47 = bitcast i32 %lampsim46 to float
  %47 = load ptr, ptr %D.addr, align 4
  %48 = load i32, ptr %i, align 4
  %arrayidx73 = getelementptr inbounds [12 x float], ptr %47, i32 %48
  %49 = load i32, ptr %j, align 4
  %arrayidx74 = getelementptr inbounds [12 x float], ptr %arrayidx73, i32 0, i32 %49
  store float %lampsim47, ptr %arrayidx74, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.body64
  %50 = load i32, ptr %j, align 4
  %inc76 = add nsw i32 %50, 1
  store i32 %inc76, ptr %j, align 4
  br label %for.cond61, !llvm.loop !17

for.end77:                                        ; preds = %for.cond61
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %51 = load i32, ptr %i, align 4
  %inc79 = add nsw i32 %51, 1
  store i32 %inc79, ptr %i, align 4
  br label %for.cond57, !llvm.loop !18

for.end80:                                        ; preds = %for.cond57
  store i32 0, ptr %i, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc94, %for.end80
  %52 = load i32, ptr %i, align 4
  %53 = load i32, ptr %ni.addr, align 4
  %cmp82 = icmp slt i32 %52, %53
  br i1 %cmp82, label %for.body84, label %for.end96

for.body84:                                       ; preds = %for.cond81
  store i32 0, ptr %j, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc91, %for.body84
  %54 = load i32, ptr %j, align 4
  %55 = load i32, ptr %nj.addr, align 4
  %cmp86 = icmp slt i32 %54, %55
  br i1 %cmp86, label %for.body88, label %for.end93

for.body88:                                       ; preds = %for.cond85
  %56 = load ptr, ptr %E.addr, align 4
  %57 = load i32, ptr %i, align 4
  %arrayidx89 = getelementptr inbounds [8 x float], ptr %56, i32 %57
  %58 = load i32, ptr %j, align 4
  %arrayidx90 = getelementptr inbounds [8 x float], ptr %arrayidx89, i32 0, i32 %58
  store float 0.000000e+00, ptr %arrayidx90, align 4
  br label %for.inc91

for.inc91:                                        ; preds = %for.body88
  %59 = load i32, ptr %j, align 4
  %inc92 = add nsw i32 %59, 1
  store i32 %inc92, ptr %j, align 4
  br label %for.cond85, !llvm.loop !19

for.end93:                                        ; preds = %for.cond85
  br label %for.inc94

for.inc94:                                        ; preds = %for.end93
  %60 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %60, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond81, !llvm.loop !20

for.end96:                                        ; preds = %for.cond81
  store i32 0, ptr %i, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc110, %for.end96
  %61 = load i32, ptr %i, align 4
  %62 = load i32, ptr %nj.addr, align 4
  %cmp98 = icmp slt i32 %61, %62
  br i1 %cmp98, label %for.body100, label %for.end112

for.body100:                                      ; preds = %for.cond97
  store i32 0, ptr %j, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc107, %for.body100
  %63 = load i32, ptr %j, align 4
  %64 = load i32, ptr %nl.addr, align 4
  %cmp102 = icmp slt i32 %63, %64
  br i1 %cmp102, label %for.body104, label %for.end109

for.body104:                                      ; preds = %for.cond101
  %65 = load ptr, ptr %F.addr, align 4
  %66 = load i32, ptr %i, align 4
  %arrayidx105 = getelementptr inbounds [12 x float], ptr %65, i32 %66
  %67 = load i32, ptr %j, align 4
  %arrayidx106 = getelementptr inbounds [12 x float], ptr %arrayidx105, i32 0, i32 %67
  store float 0.000000e+00, ptr %arrayidx106, align 4
  br label %for.inc107

for.inc107:                                       ; preds = %for.body104
  %68 = load i32, ptr %j, align 4
  %inc108 = add nsw i32 %68, 1
  store i32 %inc108, ptr %j, align 4
  br label %for.cond101, !llvm.loop !21

for.end109:                                       ; preds = %for.cond101
  br label %for.inc110

for.inc110:                                       ; preds = %for.end109
  %69 = load i32, ptr %i, align 4
  %inc111 = add nsw i32 %69, 1
  store i32 %inc111, ptr %i, align 4
  br label %for.cond97, !llvm.loop !22

for.end112:                                       ; preds = %for.cond97
  store i32 0, ptr %i, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc126, %for.end112
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %ni.addr, align 4
  %cmp114 = icmp slt i32 %70, %71
  br i1 %cmp114, label %for.body116, label %for.end128

for.body116:                                      ; preds = %for.cond113
  store i32 0, ptr %j, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc123, %for.body116
  %72 = load i32, ptr %j, align 4
  %73 = load i32, ptr %nl.addr, align 4
  %cmp118 = icmp slt i32 %72, %73
  br i1 %cmp118, label %for.body120, label %for.end125

for.body120:                                      ; preds = %for.cond117
  %74 = load ptr, ptr %G.addr, align 4
  %75 = load i32, ptr %i, align 4
  %arrayidx121 = getelementptr inbounds [12 x float], ptr %74, i32 %75
  %76 = load i32, ptr %j, align 4
  %arrayidx122 = getelementptr inbounds [12 x float], ptr %arrayidx121, i32 0, i32 %76
  store float 0.000000e+00, ptr %arrayidx122, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %for.body120
  %77 = load i32, ptr %j, align 4
  %inc124 = add nsw i32 %77, 1
  store i32 %inc124, ptr %j, align 4
  br label %for.cond117, !llvm.loop !23

for.end125:                                       ; preds = %for.cond117
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %78 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %78, 1
  store i32 %inc127, ptr %i, align 4
  br label %for.cond113, !llvm.loop !24

for.end128:                                       ; preds = %for.cond113
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, ptr noundef %E, ptr noundef %A, ptr noundef %B, ptr noundef %F, ptr noundef %C, ptr noundef %D, ptr noundef %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %B.addr = alloca ptr, align 4
  %F.addr = alloca ptr, align 4
  %C.addr = alloca ptr, align 4
  %D.addr = alloca ptr, align 4
  %G.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, ptr %ni.addr, align 4
  store i32 %nj, ptr %nj.addr, align 4
  store i32 %nk, ptr %nk.addr, align 4
  store i32 %nl, ptr %nl.addr, align 4
  store i32 %nm, ptr %nm.addr, align 4
  store ptr %E, ptr %E.addr, align 4
  store ptr %A, ptr %A.addr, align 4
  store ptr %B, ptr %B.addr, align 4
  store ptr %F, ptr %F.addr, align 4
  store ptr %C, ptr %C.addr, align 4
  store ptr %D, ptr %D.addr, align 4
  store ptr %G, ptr %G.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %E.addr, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [8 x float], ptr %4, i32 %5
  %6 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds [8 x float], ptr %arrayidx, i32 0, i32 %6
  store float 0.000000e+00, ptr %arrayidx4, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %nk.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load ptr, ptr %A.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds [10 x float], ptr %9, i32 %10
  %11 = load i32, ptr %k, align 4
  %arrayidx9 = getelementptr inbounds [10 x float], ptr %arrayidx8, i32 0, i32 %11
  %12 = load float, ptr %arrayidx9, align 4
  %13 = load ptr, ptr %B.addr, align 4
  %14 = load i32, ptr %k, align 4
  %arrayidx10 = getelementptr inbounds [8 x float], ptr %13, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [8 x float], ptr %arrayidx10, i32 0, i32 %15
  %16 = load float, ptr %arrayidx11, align 4
  %mul1 = fmul float %12, %16
  %lampsim = bitcast float %mul1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %17 = load ptr, ptr %E.addr, align 4
  %18 = load i32, ptr %i, align 4
  %arrayidx12 = getelementptr inbounds [8 x float], ptr %17, i32 %18
  %19 = load i32, ptr %j, align 4
  %arrayidx13 = getelementptr inbounds [8 x float], ptr %arrayidx12, i32 0, i32 %19
  %20 = load float, ptr %arrayidx13, align 4
  %add4 = fadd float %20, %lampsim3
  %lampsim5 = bitcast float %add4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  store float %lampsim7, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %21 = load i32, ptr %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond5, !llvm.loop !25

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %22 = load i32, ptr %j, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, ptr %j, align 4
  br label %for.cond1, !llvm.loop !26

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %23 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end19:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nj.addr, align 4
  %cmp21 = icmp slt i32 %24, %25
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  store i32 0, ptr %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %26 = load i32, ptr %j, align 4
  %27 = load i32, ptr %nl.addr, align 4
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %28 = load ptr, ptr %F.addr, align 4
  %29 = load i32, ptr %i, align 4
  %arrayidx26 = getelementptr inbounds [12 x float], ptr %28, i32 %29
  %30 = load i32, ptr %j, align 4
  %arrayidx27 = getelementptr inbounds [12 x float], ptr %arrayidx26, i32 0, i32 %30
  store float 0.000000e+00, ptr %arrayidx27, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %31 = load i32, ptr %k, align 4
  %32 = load i32, ptr %nm.addr, align 4
  %cmp29 = icmp slt i32 %31, %32
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %33 = load ptr, ptr %C.addr, align 4
  %34 = load i32, ptr %i, align 4
  %arrayidx31 = getelementptr inbounds [14 x float], ptr %33, i32 %34
  %35 = load i32, ptr %k, align 4
  %arrayidx32 = getelementptr inbounds [14 x float], ptr %arrayidx31, i32 0, i32 %35
  %36 = load float, ptr %arrayidx32, align 4
  %37 = load ptr, ptr %D.addr, align 4
  %38 = load i32, ptr %k, align 4
  %arrayidx33 = getelementptr inbounds [12 x float], ptr %37, i32 %38
  %39 = load i32, ptr %j, align 4
  %arrayidx34 = getelementptr inbounds [12 x float], ptr %arrayidx33, i32 0, i32 %39
  %40 = load float, ptr %arrayidx34, align 4
  %mul358 = fmul float %36, %40
  %lampsim9 = bitcast float %mul358 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %41 = load ptr, ptr %F.addr, align 4
  %42 = load i32, ptr %i, align 4
  %arrayidx36 = getelementptr inbounds [12 x float], ptr %41, i32 %42
  %43 = load i32, ptr %j, align 4
  %arrayidx37 = getelementptr inbounds [12 x float], ptr %arrayidx36, i32 0, i32 %43
  %44 = load float, ptr %arrayidx37, align 4
  %add3812 = fadd float %44, %lampsim11
  %lampsim13 = bitcast float %add3812 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  store float %lampsim15, ptr %arrayidx37, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %45 = load i32, ptr %k, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, ptr %k, align 4
  br label %for.cond28, !llvm.loop !28

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %46 = load i32, ptr %j, align 4
  %inc43 = add nsw i32 %46, 1
  store i32 %inc43, ptr %j, align 4
  br label %for.cond23, !llvm.loop !29

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %47 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond20, !llvm.loop !30

for.end47:                                        ; preds = %for.cond20
  store i32 0, ptr %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %48 = load i32, ptr %i, align 4
  %49 = load i32, ptr %ni.addr, align 4
  %cmp49 = icmp slt i32 %48, %49
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  store i32 0, ptr %j, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %50 = load i32, ptr %j, align 4
  %51 = load i32, ptr %nl.addr, align 4
  %cmp52 = icmp slt i32 %50, %51
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %52 = load ptr, ptr %G.addr, align 4
  %53 = load i32, ptr %i, align 4
  %arrayidx54 = getelementptr inbounds [12 x float], ptr %52, i32 %53
  %54 = load i32, ptr %j, align 4
  %arrayidx55 = getelementptr inbounds [12 x float], ptr %arrayidx54, i32 0, i32 %54
  store float 0.000000e+00, ptr %arrayidx55, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %55 = load i32, ptr %k, align 4
  %56 = load i32, ptr %nj.addr, align 4
  %cmp57 = icmp slt i32 %55, %56
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %57 = load ptr, ptr %E.addr, align 4
  %58 = load i32, ptr %i, align 4
  %arrayidx59 = getelementptr inbounds [8 x float], ptr %57, i32 %58
  %59 = load i32, ptr %k, align 4
  %arrayidx60 = getelementptr inbounds [8 x float], ptr %arrayidx59, i32 0, i32 %59
  %60 = load float, ptr %arrayidx60, align 4
  %61 = load ptr, ptr %F.addr, align 4
  %62 = load i32, ptr %k, align 4
  %arrayidx61 = getelementptr inbounds [12 x float], ptr %61, i32 %62
  %63 = load i32, ptr %j, align 4
  %arrayidx62 = getelementptr inbounds [12 x float], ptr %arrayidx61, i32 0, i32 %63
  %64 = load float, ptr %arrayidx62, align 4
  %mul6316 = fmul float %60, %64
  %lampsim17 = bitcast float %mul6316 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  %65 = load ptr, ptr %G.addr, align 4
  %66 = load i32, ptr %i, align 4
  %arrayidx64 = getelementptr inbounds [12 x float], ptr %65, i32 %66
  %67 = load i32, ptr %j, align 4
  %arrayidx65 = getelementptr inbounds [12 x float], ptr %arrayidx64, i32 0, i32 %67
  %68 = load float, ptr %arrayidx65, align 4
  %add6620 = fadd float %68, %lampsim19
  %lampsim21 = bitcast float %add6620 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  store float %lampsim23, ptr %arrayidx65, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %69 = load i32, ptr %k, align 4
  %inc68 = add nsw i32 %69, 1
  store i32 %inc68, ptr %k, align 4
  br label %for.cond56, !llvm.loop !31

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %70 = load i32, ptr %j, align 4
  %inc71 = add nsw i32 %70, 1
  store i32 %inc71, ptr %j, align 4
  br label %for.cond51, !llvm.loop !32

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %71 = load i32, ptr %i, align 4
  %inc74 = add nsw i32 %71, 1
  store i32 %inc74, ptr %i, align 4
  br label %for.cond48, !llvm.loop !33

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, ptr noundef %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %G.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, ptr %ni.addr, align 4
  store i32 %nl, ptr %nl.addr, align 4
  store ptr %G, ptr %G.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %nl.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %ni.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %6
  %rem = srem i32 %add, 20
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr @stderr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %8 = load ptr, ptr @stderr, align 4
  %9 = load ptr, ptr %G.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [12 x float], ptr %9, i32 %10
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [12 x float], ptr %arrayidx, i32 0, i32 %11
  %12 = load float, ptr %arrayidx5, align 4
  %conv1 = fpext float %12 to double
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.10, double noundef %lampsim3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !34

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !35

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
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
