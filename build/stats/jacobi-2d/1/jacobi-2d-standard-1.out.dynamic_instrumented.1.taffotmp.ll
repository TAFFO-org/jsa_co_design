; ModuleID = './sources/jacobi-2d.c'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-2d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata"

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
  store float %val, float* %val.addr, align 4
  %0 = load float, float* %val.addr, align 4
  %div = fdiv float %0, 1.000000e+01
  store float %div, float* %x, align 4
  store float 0x3F50624DE0000000, float* %min_tol, align 4
  store float 0.000000e+00, float* %constZeroVal, align 4
  store float 2.000000e+00, float* %constTwoVal, align 4
  store i32 0, i32* %flag, align 4
  %1 = load float, float* %val.addr, align 4
  %2 = load float, float* %constZeroVal, align 4
  %cmp = fcmp oeq float %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load float, float* %constZeroVal, align 4
  store float %3, float* %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %6 = load float, float* %val.addr, align 4
  %7 = load float, float* %x, align 4
  %8 = load float, float* %x, align 4
  %mul = fmul float %7, %8
  %sub = fsub float %6, %mul
  %9 = load float, float* %constTwoVal, align 4
  %10 = load float, float* %x, align 4
  %mul3 = fmul float %9, %10
  %div4 = fdiv float %sub, %mul3
  store float %div4, float* %dx, align 4
  %11 = load float, float* %x, align 4
  %12 = load float, float* %dx, align 4
  %add = fadd float %11, %12
  store float %add, float* %x, align 4
  %13 = load float, float* %val.addr, align 4
  %14 = load float, float* %x, align 4
  %15 = load float, float* %x, align 4
  %mul5 = fmul float %14, %15
  %sub6 = fsub float %13, %mul5
  store float %sub6, float* %diff, align 4
  %16 = load float, float* %diff, align 4
  %17 = load float, float* %constZeroVal, align 4
  %cmp7 = fcmp oge float %16, %17
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %18 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %19 = load float, float* %diff, align 4
  %fneg = fneg float %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %18, %cond.true ], [ %fneg, %cond.false ]
  %20 = load float, float* %min_tol, align 4
  %cmp8 = fcmp ole float %cond, %20
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %22 = load float, float* %x, align 4
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
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %A = alloca [15 x [15 x float]], align 16
  %B = alloca [15 x [15 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 15, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [15 x [15 x float]]* %A to i8*
  call void @llvm.var.annotation(i8* %A1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 100, i8* null)
  %B2 = bitcast [15 x [15 x float]]* %B to i8*
  call void @llvm.var.annotation(i8* %B2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 101, i8* null)
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i64 0, i64 0
  call void @init_array(i32 noundef %0, [15 x float]* noundef %arraydecay, [15 x float]* noundef %arraydecay3)
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i64 0, i64 0
  call void @kernel_jacobi_2d(i32 noundef %1, i32 noundef %2, [15 x float]* noundef %arraydecay4, [15 x float]* noundef %arraydecay5)
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i64 0, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i64 0, i64 %idxprom9
  %9 = load float, float* %arrayidx10, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i64 0, i64 %idxprom11
  %11 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i64 0, i64 %idxprom13
  store float %9, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !8

for.end:                                          ; preds = %for.cond6
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end17:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 8
  %B.addr = alloca [15 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 8
  store [15 x float]* %B, [15 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  call void @llvm.var.annotation(i8* %i1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 33, i8* null)
  %j2 = bitcast i32* %j to i8*
  call void @llvm.var.annotation(i8* %j2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 34, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to float
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 2
  %conv6 = sitofp i32 %add to float
  %mul = fmul float %conv, %conv6
  %add7 = fadd float %mul, 2.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %conv8 = sitofp i32 %6 to float
  %div = fdiv float %add7, %conv8
  %7 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i64 0, i64 %idxprom9
  store float %div, float* %arrayidx10, align 4
  %10 = load i32, i32* %i, align 4
  %conv11 = sitofp i32 %10 to float
  %11 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %11, 3
  %conv13 = sitofp i32 %add12 to float
  %mul14 = fmul float %conv11, %conv13
  %add15 = fadd float %mul14, 3.000000e+00
  %12 = load i32, i32* %n.addr, align 4
  %conv16 = sitofp i32 %12 to float
  %div17 = fdiv float %add15, %conv16
  %13 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [15 x float], [15 x float]* %13, i64 %idxprom18
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %div17, float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [15 x float]*, align 8
  %B.addr = alloca [15 x float]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [15 x float]* %A, [15 x float]** %A.addr, align 8
  store [15 x float]* %B, [15 x float]** %B.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc87, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end89

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc37, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end39

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp slt i32 %4, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i64 0, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %10 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %10, i64 %idxprom10
  %12 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %12, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx11, i64 0, i64 %idxprom13
  %13 = load float, float* %arrayidx14, align 4
  %add = fadd float %9, %13
  %14 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [15 x float], [15 x float]* %14, i64 %idxprom15
  %16 = load i32, i32* %j, align 4
  %add17 = add nsw i32 1, %16
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx16, i64 0, i64 %idxprom18
  %17 = load float, float* %arrayidx19, align 4
  %add20 = fadd float %add, %17
  %18 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %add21 = add nsw i32 1, %19
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [15 x float], [15 x float]* %18, i64 %idxprom22
  %20 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %21 = load float, float* %arrayidx25, align 4
  %add26 = fadd float %add20, %21
  %22 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %23 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %23, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [15 x float], [15 x float]* %22, i64 %idxprom28
  %24 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %25 = load float, float* %arrayidx31, align 4
  %add32 = fadd float %add26, %25
  %mul = fmul float 0x3FC99999A0000000, %add32
  %26 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [15 x float], [15 x float]* %26, i64 %idxprom33
  %28 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx34, i64 0, i64 %idxprom35
  store float %mul, float* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !12

for.end:                                          ; preds = %for.cond4
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %30, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond1, !llvm.loop !13

for.end39:                                        ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc84, %for.end39
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 %32, 1
  %cmp42 = icmp slt i32 %31, %sub41
  br i1 %cmp42, label %for.body43, label %for.end86

for.body43:                                       ; preds = %for.cond40
  store i32 1, i32* %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc81, %for.body43
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %n.addr, align 4
  %sub45 = sub nsw i32 %34, 1
  %cmp46 = icmp slt i32 %33, %sub45
  br i1 %cmp46, label %for.body47, label %for.end83

for.body47:                                       ; preds = %for.cond44
  %35 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %35, i64 %idxprom48
  %37 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx49, i64 0, i64 %idxprom50
  %38 = load float, float* %arrayidx51, align 4
  %39 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %40 to i64
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %39, i64 %idxprom52
  %41 = load i32, i32* %j, align 4
  %sub54 = sub nsw i32 %41, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx53, i64 0, i64 %idxprom55
  %42 = load float, float* %arrayidx56, align 4
  %add57 = fadd float %38, %42
  %43 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [15 x float], [15 x float]* %43, i64 %idxprom58
  %45 = load i32, i32* %j, align 4
  %add60 = add nsw i32 1, %45
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx59, i64 0, i64 %idxprom61
  %46 = load float, float* %arrayidx62, align 4
  %add63 = fadd float %add57, %46
  %47 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %48 = load i32, i32* %i, align 4
  %add64 = add nsw i32 1, %48
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [15 x float], [15 x float]* %47, i64 %idxprom65
  %49 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx66, i64 0, i64 %idxprom67
  %50 = load float, float* %arrayidx68, align 4
  %add69 = fadd float %add63, %50
  %51 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %52 = load i32, i32* %i, align 4
  %sub70 = sub nsw i32 %52, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [15 x float], [15 x float]* %51, i64 %idxprom71
  %53 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %53 to i64
  %arrayidx74 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx72, i64 0, i64 %idxprom73
  %54 = load float, float* %arrayidx74, align 4
  %add75 = fadd float %add69, %54
  %mul76 = fmul float 0x3FC99999A0000000, %add75
  %55 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %56 to i64
  %arrayidx78 = getelementptr inbounds [15 x float], [15 x float]* %55, i64 %idxprom77
  %57 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %57 to i64
  %arrayidx80 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx78, i64 0, i64 %idxprom79
  store float %mul76, float* %arrayidx80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.body47
  %58 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %58, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond44, !llvm.loop !14

for.end83:                                        ; preds = %for.cond44
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %59 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %59, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond40, !llvm.loop !15

for.end86:                                        ; preds = %for.cond40
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %60 = load i32, i32* %t, align 4
  %inc88 = add nsw i32 %60, 1
  store i32 %inc88, i32* %t, align 4
  br label %for.cond, !llvm.loop !16

for.end89:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
