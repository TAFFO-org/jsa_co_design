; ModuleID = './build/stats/jacobi-1d/1/jacobi-1d-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x float] zeroinitializer, align 16
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
  %A = alloca [15 x float], align 16
  %B = alloca [15 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 15, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [15 x float]* %A to i8*
  %B2 = bitcast [15 x float]* %B to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %tsteps, align 4
  %2 = load i32, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i64 0, i64 0
  call void @kernel_jacobi_1d.2(i32 noundef %1, i32 noundef %2, float* noundef %arraydecay4, float* noundef %arraydecay5), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i64 0, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i64 0, i64 %idxprom6
  store float %"a::var24", float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !16 !taffo.initweight !17 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !20 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %"a::var25" = sitofp i32 %2 to float
  %"a::var26" = fadd float %"a::var25", 2.000000e+00
  %3 = load i32, i32* %n.addr, align 4
  %"a::var27" = sitofp i32 %3 to float
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %4 = load float*, float** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %"a::var28", float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %"a::var29" = sitofp i32 %6 to float
  %"a::var30" = fadd float %"a::var29", 3.000000e+00
  %7 = load i32, i32* %n.addr, align 4
  %"a::var31" = sitofp i32 %7 to float
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %8 = load float*, float** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds float, float* %8, i64 %idxprom7
  store float %"a::var32", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.funinfo !22 !taffo.initweight !23 !taffo.equivalentChild !24 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float*, float** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %"a::var33" = load float, float* %arrayidx, align 4
  %6 = load float*, float** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds float, float* %6, i64 %idxprom5
  %"a::var34" = load float, float* %arrayidx6, align 4
  %"a::var35" = fadd float %"a::var33", %"a::var34"
  %8 = load float*, float** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %9, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds float, float* %8, i64 %idxprom8
  %"a::var36" = load float, float* %arrayidx9, align 4
  %"a::var37" = fadd float %"a::var35", %"a::var36"
  %"a::var38" = fpext float %"a::var37" to double
  %"a::var39" = fmul double 3.333300e-01, %"a::var38"
  %"a::var40" = fptrunc double %"a::var39" to float
  %10 = load float*, float** %B.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds float, float* %10, i64 %idxprom12
  store float %"a::var40", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !25

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %14, 1
  %cmp16 = icmp slt i32 %13, %sub15
  br i1 %cmp16, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond14
  %15 = load float*, float** %B.addr, align 8
  %16 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %16, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %15, i64 %idxprom20
  %"a::var41" = load float, float* %arrayidx21, align 4
  %17 = load float*, float** %B.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds float, float* %17, i64 %idxprom22
  %"a::var42" = load float, float* %arrayidx23, align 4
  %"a::var43" = fadd float %"a::var41", %"a::var42"
  %19 = load float*, float** %B.addr, align 8
  %20 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %20, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %19, i64 %idxprom26
  %"a::var44" = load float, float* %arrayidx27, align 4
  %"a::var45" = fadd float %"a::var43", %"a::var44"
  %"a::var46" = fpext float %"a::var45" to double
  %"a::var47" = fmul double 3.333300e-01, %"a::var46"
  %"a::var48" = fptrunc double %"a::var47" to float
  %21 = load float*, float** %A.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds float, float* %21, i64 %idxprom32
  store float %"a::var48", float* %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body18
  %23 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %23, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond14, !llvm.loop !26

for.end36:                                        ; preds = %for.cond14
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %24 = load i32, i32* %t, align 4
  %inc38 = add nsw i32 %24, 1
  store i32 %inc38, i32* %t, align 4
  br label %for.cond, !llvm.loop !27

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %"a::var49" = sitofp i32 %2 to float
  %"a::var50" = fadd float %"a::var49", 2.000000e+00
  %3 = load i32, i32* %n.addr, align 4
  %"a::var51" = sitofp i32 %3 to float
  %"a::var52" = fdiv float %"a::var50", %"a::var51"
  %4 = load float*, float** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %"a::var52", float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %"a::var53" = sitofp i32 %6 to float
  %"a::var54" = fadd float %"a::var53", 3.000000e+00
  %7 = load i32, i32* %n.addr, align 4
  %"a::var55" = sitofp i32 %7 to float
  %"a::var56" = fdiv float %"a::var54", %"a::var55"
  %8 = load float*, float** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds float, float* %8, i64 %idxprom7
  store float %"a::var56", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.2(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.funinfo !22 !taffo.initweight !23 !taffo.sourceFunction !14 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load float*, float** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %"a::var57" = load float, float* %arrayidx, align 4
  %6 = load float*, float** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds float, float* %6, i64 %idxprom5
  %"a::var58" = load float, float* %arrayidx6, align 4
  %"a::var59" = fadd float %"a::var57", %"a::var58"
  %8 = load float*, float** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %9, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds float, float* %8, i64 %idxprom8
  %"a::var60" = load float, float* %arrayidx9, align 4
  %"a::var61" = fadd float %"a::var59", %"a::var60"
  %"a::var62" = fpext float %"a::var61" to double
  %"a::var63" = fmul double 3.333300e-01, %"a::var62"
  %"a::var64" = fptrunc double %"a::var63" to float
  %10 = load float*, float** %B.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds float, float* %10, i64 %idxprom12
  store float %"a::var64", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !29

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %14, 1
  %cmp16 = icmp slt i32 %13, %sub15
  br i1 %cmp16, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond14
  %15 = load float*, float** %B.addr, align 8
  %16 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %16, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %15, i64 %idxprom20
  %"a::var65" = load float, float* %arrayidx21, align 4
  %17 = load float*, float** %B.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds float, float* %17, i64 %idxprom22
  %"a::var66" = load float, float* %arrayidx23, align 4
  %"a::var67" = fadd float %"a::var65", %"a::var66"
  %19 = load float*, float** %B.addr, align 8
  %20 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %20, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %19, i64 %idxprom26
  %"a::var68" = load float, float* %arrayidx27, align 4
  %"a::var69" = fadd float %"a::var67", %"a::var68"
  %"a::var70" = fpext float %"a::var69" to double
  %"a::var71" = fmul double 3.333300e-01, %"a::var70"
  %"a::var72" = fptrunc double %"a::var71" to float
  %21 = load float*, float** %A.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds float, float* %21, i64 %idxprom32
  store float %"a::var72", float* %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body18
  %23 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %23, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond14, !llvm.loop !30

for.end36:                                        ; preds = %for.cond14
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %24 = load i32, i32* %t, align 4
  %inc38 = add nsw i32 %24, 1
  store i32 %inc38, i32* %t, align 4
  br label %for.cond, !llvm.loop !31

for.end39:                                        ; preds = %for.cond
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
!13 = !{void (i32, float*, float*)* @init_array}
!14 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, float*, float*)* @init_array.1}
!21 = distinct !{!21, !9}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!23 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!24 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d.2}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
