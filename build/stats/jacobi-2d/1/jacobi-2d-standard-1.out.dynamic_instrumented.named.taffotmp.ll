; ModuleID = './build/stats/jacobi-2d/1/jacobi-2d-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-2d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.funinfo !6 !taffo.initweight !7 {
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
  %"a::var0" = load float, float* %val.addr, align 4
  %"a::var1" = fdiv float %"a::var0", 1.000000e+01
  store float %"a::var1", float* %x, align 4
  store float 0x3F50624DE0000000, float* %min_tol, align 4
  store float 0.000000e+00, float* %constZeroVal, align 4
  store float 2.000000e+00, float* %constTwoVal, align 4
  store i32 0, i32* %flag, align 4
  %"a::var2" = load float, float* %val.addr, align 4
  %"a::var3" = load float, float* %constZeroVal, align 4
  %cmp = fcmp oeq float %"a::var2", %"a::var3"
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load float, float* %constZeroVal, align 4
  store float %0, float* %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %3 = load float, float* %val.addr, align 4
  %"a::var4" = load float, float* %x, align 4
  %"a::var5" = load float, float* %x, align 4
  %"a::var6" = fmul float %"a::var4", %"a::var5"
  %"a::var7" = fsub float %3, %"a::var6"
  %"a::var8" = load float, float* %constTwoVal, align 4
  %"a::var9" = load float, float* %x, align 4
  %"a::var10" = fmul float %"a::var8", %"a::var9"
  %"a::var11" = fdiv float %"a::var7", %"a::var10"
  store float %"a::var11", float* %dx, align 4
  %"a::var12" = load float, float* %x, align 4
  %"a::var13" = load float, float* %dx, align 4
  %"a::var14" = fadd float %"a::var12", %"a::var13"
  store float %"a::var14", float* %x, align 4
  %"a::var15" = load float, float* %val.addr, align 4
  %"a::var16" = load float, float* %x, align 4
  %"a::var17" = load float, float* %x, align 4
  %"a::var18" = fmul float %"a::var16", %"a::var17"
  %"a::var19" = fsub float %"a::var15", %"a::var18"
  store float %"a::var19", float* %diff, align 4
  %"a::var20" = load float, float* %diff, align 4
  %"a::var21" = load float, float* %constZeroVal, align 4
  %cmp7 = fcmp oge float %"a::var20", %"a::var21"
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %4 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %5 = load float, float* %diff, align 4
  %"a::var22" = fneg float %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %4, %cond.true ], [ %"a::var22", %cond.false ]
  %"a::var23" = load float, float* %min_tol, align 4
  %cmp8 = fcmp ole float %cond, %"a::var23"
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %7 = load float, float* %x, align 4
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.funinfo !10 !taffo.initweight !10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !10 !taffo.initweight !10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.funinfo !11 !taffo.initweight !12 {
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
  %B2 = bitcast [15 x [15 x float]]* %B to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, [15 x float]* noundef %arraydecay, [15 x float]* noundef %arraydecay3), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i64 0, i64 0
  call void @kernel_jacobi_2d.2(i32 noundef %1, i32 noundef %2, [15 x float]* noundef %arraydecay4, [15 x float]* noundef %arraydecay5), !taffo.originalCall !14
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
  %"a::var24" = load float, float* %arrayidx10, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i64 0, i64 %idxprom11
  %10 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i64 0, i64 %idxprom13
  store float %"a::var24", float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !15

for.end:                                          ; preds = %for.cond6
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end17:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var25" = sitofp i32 %4 to float
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 2
  %"a::var26" = sitofp i32 %add to float
  %"a::var27" = fmul float %"a::var25", %"a::var26"
  %"a::var28" = fadd float %"a::var27", 2.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %"a::var29" = sitofp i32 %6 to float
  %"a::var30" = fdiv float %"a::var28", %"a::var29"
  %7 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i64 0, i64 %idxprom9
  store float %"a::var30", float* %arrayidx10, align 4
  %10 = load i32, i32* %i, align 4
  %"a::var31" = sitofp i32 %10 to float
  %11 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %11, 3
  %"a::var32" = sitofp i32 %add12 to float
  %"a::var33" = fmul float %"a::var31", %"a::var32"
  %"a::var34" = fadd float %"a::var33", 3.000000e+00
  %12 = load i32, i32* %n.addr, align 4
  %"a::var35" = sitofp i32 %12 to float
  %"a::var36" = fdiv float %"a::var34", %"a::var35"
  %13 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [15 x float], [15 x float]* %13, i64 %idxprom18
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %"a::var36", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !22

for.end:                                          ; preds = %for.cond3
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.funinfo !24 !taffo.initweight !25 !taffo.equivalentChild !26 {
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
  %"a::var37" = load float, float* %arrayidx9, align 4
  %9 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %9, i64 %idxprom10
  %11 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %11, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx11, i64 0, i64 %idxprom13
  %"a::var38" = load float, float* %arrayidx14, align 4
  %"a::var39" = fadd float %"a::var37", %"a::var38"
  %12 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [15 x float], [15 x float]* %12, i64 %idxprom15
  %14 = load i32, i32* %j, align 4
  %add17 = add nsw i32 1, %14
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx16, i64 0, i64 %idxprom18
  %"a::var40" = load float, float* %arrayidx19, align 4
  %"a::var41" = fadd float %"a::var39", %"a::var40"
  %15 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %add21 = add nsw i32 1, %16
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [15 x float], [15 x float]* %15, i64 %idxprom22
  %17 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var42" = load float, float* %arrayidx25, align 4
  %"a::var43" = fadd float %"a::var41", %"a::var42"
  %18 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %19, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [15 x float], [15 x float]* %18, i64 %idxprom28
  %20 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %"a::var44" = load float, float* %arrayidx31, align 4
  %"a::var45" = fadd float %"a::var43", %"a::var44"
  %"a::var46" = fmul float 0x3FC99999A0000000, %"a::var45"
  %21 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [15 x float], [15 x float]* %21, i64 %idxprom33
  %23 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx34, i64 0, i64 %idxprom35
  store float %"a::var46", float* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !27

for.end:                                          ; preds = %for.cond4
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %25, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond1, !llvm.loop !28

for.end39:                                        ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc84, %for.end39
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 %27, 1
  %cmp42 = icmp slt i32 %26, %sub41
  br i1 %cmp42, label %for.body43, label %for.end86

for.body43:                                       ; preds = %for.cond40
  store i32 1, i32* %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc81, %for.body43
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %n.addr, align 4
  %sub45 = sub nsw i32 %29, 1
  %cmp46 = icmp slt i32 %28, %sub45
  br i1 %cmp46, label %for.body47, label %for.end83

for.body47:                                       ; preds = %for.cond44
  %30 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %30, i64 %idxprom48
  %32 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx49, i64 0, i64 %idxprom50
  %"a::var47" = load float, float* %arrayidx51, align 4
  %33 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %33, i64 %idxprom52
  %35 = load i32, i32* %j, align 4
  %sub54 = sub nsw i32 %35, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx53, i64 0, i64 %idxprom55
  %"a::var48" = load float, float* %arrayidx56, align 4
  %"a::var49" = fadd float %"a::var47", %"a::var48"
  %36 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [15 x float], [15 x float]* %36, i64 %idxprom58
  %38 = load i32, i32* %j, align 4
  %add60 = add nsw i32 1, %38
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx59, i64 0, i64 %idxprom61
  %"a::var50" = load float, float* %arrayidx62, align 4
  %"a::var51" = fadd float %"a::var49", %"a::var50"
  %39 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %add64 = add nsw i32 1, %40
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [15 x float], [15 x float]* %39, i64 %idxprom65
  %41 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %41 to i64
  %arrayidx68 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx66, i64 0, i64 %idxprom67
  %"a::var52" = load float, float* %arrayidx68, align 4
  %"a::var53" = fadd float %"a::var51", %"a::var52"
  %42 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %43 = load i32, i32* %i, align 4
  %sub70 = sub nsw i32 %43, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [15 x float], [15 x float]* %42, i64 %idxprom71
  %44 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %44 to i64
  %arrayidx74 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx72, i64 0, i64 %idxprom73
  %"a::var54" = load float, float* %arrayidx74, align 4
  %"a::var55" = fadd float %"a::var53", %"a::var54"
  %"a::var56" = fmul float 0x3FC99999A0000000, %"a::var55"
  %45 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %46 to i64
  %arrayidx78 = getelementptr inbounds [15 x float], [15 x float]* %45, i64 %idxprom77
  %47 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %47 to i64
  %arrayidx80 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx78, i64 0, i64 %idxprom79
  store float %"a::var56", float* %arrayidx80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.body47
  %48 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %48, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond44, !llvm.loop !29

for.end83:                                        ; preds = %for.cond44
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %49 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %49, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond40, !llvm.loop !30

for.end86:                                        ; preds = %for.cond40
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %50 = load i32, i32* %t, align 4
  %inc88 = add nsw i32 %50, 1
  store i32 %inc88, i32* %t, align 4
  br label %for.cond, !llvm.loop !31

for.end89:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
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
  %j2 = bitcast i32* %j to i8*
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
  %"a::var57" = sitofp i32 %4 to float
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 2
  %"a::var58" = sitofp i32 %add to float
  %"a::var59" = fmul float %"a::var57", %"a::var58"
  %"a::var60" = fadd float %"a::var59", 2.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %"a::var61" = sitofp i32 %6 to float
  %"a::var62" = fdiv float %"a::var60", %"a::var61"
  %7 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i64 0, i64 %idxprom9
  store float %"a::var62", float* %arrayidx10, align 4
  %10 = load i32, i32* %i, align 4
  %"a::var63" = sitofp i32 %10 to float
  %11 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %11, 3
  %"a::var64" = sitofp i32 %add12 to float
  %"a::var65" = fmul float %"a::var63", %"a::var64"
  %"a::var66" = fadd float %"a::var65", 3.000000e+00
  %12 = load i32, i32* %n.addr, align 4
  %"a::var67" = sitofp i32 %12 to float
  %"a::var68" = fdiv float %"a::var66", %"a::var67"
  %13 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [15 x float], [15 x float]* %13, i64 %idxprom18
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %"a::var68", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !32

for.end:                                          ; preds = %for.cond3
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond, !llvm.loop !33

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.2(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.funinfo !24 !taffo.initweight !25 !taffo.sourceFunction !14 {
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
  %"a::var69" = load float, float* %arrayidx9, align 4
  %9 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %9, i64 %idxprom10
  %11 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %11, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx11, i64 0, i64 %idxprom13
  %"a::var70" = load float, float* %arrayidx14, align 4
  %"a::var71" = fadd float %"a::var69", %"a::var70"
  %12 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [15 x float], [15 x float]* %12, i64 %idxprom15
  %14 = load i32, i32* %j, align 4
  %add17 = add nsw i32 1, %14
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx16, i64 0, i64 %idxprom18
  %"a::var72" = load float, float* %arrayidx19, align 4
  %"a::var73" = fadd float %"a::var71", %"a::var72"
  %15 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %add21 = add nsw i32 1, %16
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [15 x float], [15 x float]* %15, i64 %idxprom22
  %17 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var74" = load float, float* %arrayidx25, align 4
  %"a::var75" = fadd float %"a::var73", %"a::var74"
  %18 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %19, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [15 x float], [15 x float]* %18, i64 %idxprom28
  %20 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %"a::var76" = load float, float* %arrayidx31, align 4
  %"a::var77" = fadd float %"a::var75", %"a::var76"
  %"a::var78" = fmul float 0x3FC99999A0000000, %"a::var77"
  %21 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [15 x float], [15 x float]* %21, i64 %idxprom33
  %23 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx34, i64 0, i64 %idxprom35
  store float %"a::var78", float* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !34

for.end:                                          ; preds = %for.cond4
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %25, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond1, !llvm.loop !35

for.end39:                                        ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc84, %for.end39
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 %27, 1
  %cmp42 = icmp slt i32 %26, %sub41
  br i1 %cmp42, label %for.body43, label %for.end86

for.body43:                                       ; preds = %for.cond40
  store i32 1, i32* %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc81, %for.body43
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %n.addr, align 4
  %sub45 = sub nsw i32 %29, 1
  %cmp46 = icmp slt i32 %28, %sub45
  br i1 %cmp46, label %for.body47, label %for.end83

for.body47:                                       ; preds = %for.cond44
  %30 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %30, i64 %idxprom48
  %32 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx49, i64 0, i64 %idxprom50
  %"a::var79" = load float, float* %arrayidx51, align 4
  %33 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %33, i64 %idxprom52
  %35 = load i32, i32* %j, align 4
  %sub54 = sub nsw i32 %35, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx53, i64 0, i64 %idxprom55
  %"a::var80" = load float, float* %arrayidx56, align 4
  %"a::var81" = fadd float %"a::var79", %"a::var80"
  %36 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [15 x float], [15 x float]* %36, i64 %idxprom58
  %38 = load i32, i32* %j, align 4
  %add60 = add nsw i32 1, %38
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx59, i64 0, i64 %idxprom61
  %"a::var82" = load float, float* %arrayidx62, align 4
  %"a::var83" = fadd float %"a::var81", %"a::var82"
  %39 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %add64 = add nsw i32 1, %40
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [15 x float], [15 x float]* %39, i64 %idxprom65
  %41 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %41 to i64
  %arrayidx68 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx66, i64 0, i64 %idxprom67
  %"a::var84" = load float, float* %arrayidx68, align 4
  %"a::var85" = fadd float %"a::var83", %"a::var84"
  %42 = load [15 x float]*, [15 x float]** %B.addr, align 8
  %43 = load i32, i32* %i, align 4
  %sub70 = sub nsw i32 %43, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [15 x float], [15 x float]* %42, i64 %idxprom71
  %44 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %44 to i64
  %arrayidx74 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx72, i64 0, i64 %idxprom73
  %"a::var86" = load float, float* %arrayidx74, align 4
  %"a::var87" = fadd float %"a::var85", %"a::var86"
  %"a::var88" = fmul float 0x3FC99999A0000000, %"a::var87"
  %45 = load [15 x float]*, [15 x float]** %A.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %46 to i64
  %arrayidx78 = getelementptr inbounds [15 x float], [15 x float]* %45, i64 %idxprom77
  %47 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %47 to i64
  %arrayidx80 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx78, i64 0, i64 %idxprom79
  store float %"a::var88", float* %arrayidx80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.body47
  %48 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %48, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond44, !llvm.loop !36

for.end83:                                        ; preds = %for.cond44
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %49 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %49, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond40, !llvm.loop !37

for.end86:                                        ; preds = %for.cond40
  br label %for.inc87

for.inc87:                                        ; preds = %for.end86
  %50 = load i32, i32* %t, align 4
  %inc88 = add nsw i32 %50, 1
  store i32 %inc88, i32* %t, align 4
  br label %for.cond, !llvm.loop !38

for.end89:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!6 = !{i32 0, i1 false}
!7 = !{i32 -1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{}
!11 = !{i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1, i32 -1}
!13 = !{void (i32, [15 x float]*, [15 x float]*)* @init_array}
!14 = !{void (i32, i32, [15 x float]*, [15 x float]*)* @kernel_jacobi_2d}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, [15 x float]*, [15 x float]*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!25 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!26 = !{void (i32, i32, [15 x float]*, [15 x float]*)* @kernel_jacobi_2d.2}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
