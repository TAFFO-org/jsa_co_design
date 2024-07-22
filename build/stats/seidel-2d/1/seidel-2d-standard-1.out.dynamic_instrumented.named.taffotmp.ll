; ModuleID = './build/stats/seidel-2d/1/seidel-2d-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/seidel-2d.c\00", section "llvm.metadata"
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(-20, 20) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

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
  %A = alloca [20 x [20 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, [20 x float]* noundef %arraydecay), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  call void @kernel_seidel_2d.2(i32 noundef %1, i32 noundef %2, [20 x float]* noundef %arraydecay2), !taffo.originalCall !14
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom6
  %"a::var24" = load float, float* %arrayidx7, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i64 0, i64 %idxprom8
  %10 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i64 0, i64 %idxprom10
  store float %"a::var24", float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !15

for.end:                                          ; preds = %for.cond3
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end14:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.funinfo !11 !taffo.initweight !12 !taffo.equivalentChild !19 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end13

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
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom9
  store float %"a::var30", float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !20

for.end:                                          ; preds = %for.cond3
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.funinfo !22 !taffo.initweight !23 !taffo.equivalentChild !24 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %term1 = alloca float, align 4
  %term2 = alloca float, align 4
  %sum = alloca float, align 4
  %div = alloca float, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc74, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc71, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub2 = sub nsw i32 %3, 2
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end73

for.body4:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %sub6 = sub nsw i32 %5, 2
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %term19 = bitcast float* %term1 to i8*
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %sub10 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub10 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %8, 1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom12
  %"a::var31" = load float, float* %arrayidx13, align 4
  %9 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %10, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 %idxprom15
  %11 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx16, i64 0, i64 %idxprom17
  %"a::var32" = load float, float* %arrayidx18, align 4
  %"a::var33" = fadd float %"a::var31", %"a::var32"
  %12 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %13, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %12, i64 %idxprom20
  %14 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %14, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i64 0, i64 %idxprom23
  %"a::var34" = load float, float* %arrayidx24, align 4
  %"a::var35" = fadd float %"a::var33", %"a::var34"
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %15, i64 %idxprom26
  %17 = load i32, i32* %j, align 4
  %sub28 = sub nsw i32 %17, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom29
  %"a::var36" = load float, float* %arrayidx30, align 4
  %"a::var37" = fadd float %"a::var35", %"a::var36"
  store float %"a::var37", float* %term1, align 4
  %term232 = bitcast float* %term2 to i8*
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %18, i64 %idxprom33
  %20 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i64 0, i64 %idxprom35
  %"a::var38" = load float, float* %arrayidx36, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom37
  %23 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %23, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i64 0, i64 %idxprom40
  %"a::var39" = load float, float* %arrayidx41, align 4
  %"a::var40" = fadd float %"a::var38", %"a::var39"
  %24 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %25 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %25, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [20 x float], [20 x float]* %24, i64 %idxprom44
  %26 = load i32, i32* %j, align 4
  %sub46 = sub nsw i32 %26, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx45, i64 0, i64 %idxprom47
  %"a::var41" = load float, float* %arrayidx48, align 4
  %"a::var42" = fadd float %"a::var40", %"a::var41"
  %27 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %28, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 %idxprom51
  %29 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %"a::var43" = load float, float* %arrayidx54, align 4
  %"a::var44" = fadd float %"a::var42", %"a::var43"
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %31 = load i32, i32* %i, align 4
  %add56 = add nsw i32 %31, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [20 x float], [20 x float]* %30, i64 %idxprom57
  %32 = load i32, i32* %j, align 4
  %add59 = add nsw i32 %32, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx58, i64 0, i64 %idxprom60
  %"a::var45" = load float, float* %arrayidx61, align 4
  %"a::var46" = fadd float %"a::var44", %"a::var45"
  store float %"a::var46", float* %term2, align 4
  %sum63 = bitcast float* %sum to i8*
  %"a::var47" = load float, float* %term1, align 4
  %"a::var48" = load float, float* %term2, align 4
  %"a::var49" = fadd float %"a::var47", %"a::var48"
  store float %"a::var49", float* %sum, align 4
  %div65 = bitcast float* %div to i8*
  %"a::var50" = load float, float* %sum, align 4
  %"a::var51" = fdiv float %"a::var50", 9.000000e+00
  store float %"a::var51", float* %div, align 4
  %"a::var52" = load float, float* %div, align 4
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %34 to i64
  %arrayidx68 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom67
  %35 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %35 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx68, i64 0, i64 %idxprom69
  store float %"a::var52", float* %arrayidx70, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5, !llvm.loop !25

for.end:                                          ; preds = %for.cond5
  br label %for.inc71

for.inc71:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %37, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond1, !llvm.loop !26

for.end73:                                        ; preds = %for.cond1
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %38 = load i32, i32* %t, align 4
  %inc75 = add nsw i32 %38, 1
  store i32 %inc75, i32* %t, align 4
  br label %for.cond, !llvm.loop !27

for.end76:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.funinfo !11 !taffo.initweight !12 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end13

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
  %"a::var53" = sitofp i32 %4 to float
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 2
  %"a::var54" = sitofp i32 %add to float
  %"a::var55" = fmul float %"a::var53", %"a::var54"
  %"a::var56" = fadd float %"a::var55", 2.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %"a::var57" = sitofp i32 %6 to float
  %"a::var58" = fdiv float %"a::var56", %"a::var57"
  %7 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom9
  store float %"a::var58", float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !28

for.end:                                          ; preds = %for.cond3
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.2(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.funinfo !22 !taffo.initweight !23 !taffo.sourceFunction !14 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %term1 = alloca float, align 4
  %term2 = alloca float, align 4
  %sum = alloca float, align 4
  %div = alloca float, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc74, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc71, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub2 = sub nsw i32 %3, 2
  %cmp3 = icmp sle i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end73

for.body4:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %sub6 = sub nsw i32 %5, 2
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %term19 = bitcast float* %term1 to i8*
  %6 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %sub10 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub10 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %8, 1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom12
  %"a::var59" = load float, float* %arrayidx13, align 4
  %9 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %10, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 %idxprom15
  %11 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx16, i64 0, i64 %idxprom17
  %"a::var60" = load float, float* %arrayidx18, align 4
  %"a::var61" = fadd float %"a::var59", %"a::var60"
  %12 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %13, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %12, i64 %idxprom20
  %14 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %14, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i64 0, i64 %idxprom23
  %"a::var62" = load float, float* %arrayidx24, align 4
  %"a::var63" = fadd float %"a::var61", %"a::var62"
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %15, i64 %idxprom26
  %17 = load i32, i32* %j, align 4
  %sub28 = sub nsw i32 %17, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom29
  %"a::var64" = load float, float* %arrayidx30, align 4
  %"a::var65" = fadd float %"a::var63", %"a::var64"
  store float %"a::var65", float* %term1, align 4
  %term232 = bitcast float* %term2 to i8*
  %18 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %18, i64 %idxprom33
  %20 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i64 0, i64 %idxprom35
  %"a::var66" = load float, float* %arrayidx36, align 4
  %21 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %21, i64 %idxprom37
  %23 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %23, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i64 0, i64 %idxprom40
  %"a::var67" = load float, float* %arrayidx41, align 4
  %"a::var68" = fadd float %"a::var66", %"a::var67"
  %24 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %25 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %25, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [20 x float], [20 x float]* %24, i64 %idxprom44
  %26 = load i32, i32* %j, align 4
  %sub46 = sub nsw i32 %26, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx45, i64 0, i64 %idxprom47
  %"a::var69" = load float, float* %arrayidx48, align 4
  %"a::var70" = fadd float %"a::var68", %"a::var69"
  %27 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %28 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %28, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %27, i64 %idxprom51
  %29 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %"a::var71" = load float, float* %arrayidx54, align 4
  %"a::var72" = fadd float %"a::var70", %"a::var71"
  %30 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %31 = load i32, i32* %i, align 4
  %add56 = add nsw i32 %31, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [20 x float], [20 x float]* %30, i64 %idxprom57
  %32 = load i32, i32* %j, align 4
  %add59 = add nsw i32 %32, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx58, i64 0, i64 %idxprom60
  %"a::var73" = load float, float* %arrayidx61, align 4
  %"a::var74" = fadd float %"a::var72", %"a::var73"
  store float %"a::var74", float* %term2, align 4
  %sum63 = bitcast float* %sum to i8*
  %"a::var75" = load float, float* %term1, align 4
  %"a::var76" = load float, float* %term2, align 4
  %"a::var77" = fadd float %"a::var75", %"a::var76"
  store float %"a::var77", float* %sum, align 4
  %div65 = bitcast float* %div to i8*
  %"a::var78" = load float, float* %sum, align 4
  %"a::var79" = fdiv float %"a::var78", 9.000000e+00
  store float %"a::var79", float* %div, align 4
  %"a::var80" = load float, float* %div, align 4
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %34 to i64
  %arrayidx68 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom67
  %35 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %35 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx68, i64 0, i64 %idxprom69
  store float %"a::var80", float* %arrayidx70, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5, !llvm.loop !30

for.end:                                          ; preds = %for.cond5
  br label %for.inc71

for.inc71:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %37, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond1, !llvm.loop !31

for.end73:                                        ; preds = %for.cond1
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %38 = load i32, i32* %t, align 4
  %inc75 = add nsw i32 %38, 1
  store i32 %inc75, i32* %t, align 4
  br label %for.cond, !llvm.loop !32

for.end76:                                        ; preds = %for.cond
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
!13 = !{void (i32, [20 x float]*)* @init_array}
!14 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{void (i32, [20 x float]*)* @init_array.1}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!23 = !{i32 -1, i32 -1, i32 -1}
!24 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d.2}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
