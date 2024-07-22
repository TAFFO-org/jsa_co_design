; ModuleID = './build/stats/gemver/1/gemver-standard-1.out.dynamic_instrumented.taffoinit.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_u1_MIN,VAR_u1_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_v1_MIN,VAR_v1_MAX) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_u2_MIN,VAR_u2_MAX) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [43 x i8] c"scalar(range(VAR_v2_MIN,VAR_v2_MAX) final)\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [53 x i8] c"target('w') scalar(range(VAR_w_MIN,VAR_w_MAX) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_z_MIN,VAR_z_MAX) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 16
@w_float = dso_local global [20 x float] zeroinitializer, align 16
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"

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
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %A = alloca [20 x [20 x float]], align 16
  %u1 = alloca [20 x float], align 16
  %v1 = alloca [20 x float], align 16
  %u2 = alloca [20 x float], align 16
  %v2 = alloca [20 x float], align 16
  %w = alloca [20 x float], align 16
  %x = alloca [20 x float], align 16
  %y = alloca [20 x float], align 16
  %z = alloca [20 x float], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %A3 = bitcast [20 x [20 x float]]* %A to i8*
  %u14 = bitcast [20 x float]* %u1 to i8*
  %v15 = bitcast [20 x float]* %v1 to i8*
  %u26 = bitcast [20 x float]* %u2 to i8*
  %v27 = bitcast [20 x float]* %v2 to i8*
  %w8 = bitcast [20 x float]* %w to i8*
  %x9 = bitcast [20 x float]* %x to i8*
  %y10 = bitcast [20 x float]* %y to i8*
  %z11 = bitcast [20 x float]* %z to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %"a::var25" = load float, float* %beta, align 4
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @kernel_gemver.2(i32 noundef %1, float noundef %"a::var24", float noundef %"a::var25", [20 x float]* noundef %arraydecay20, float* noundef %arraydecay21, float* noundef %arraydecay22, float* noundef %arraydecay23, float* noundef %arraydecay24, float* noundef %arraydecay25, float* noundef %arraydecay26, float* noundef %arraydecay27, float* noundef %arraydecay28), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 %idxprom
  %"a::var26" = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %5 to i64
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i64 0, i64 %idxprom29
  store float %"a::var26", float* %arrayidx30, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %6 to i64
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 %idxprom31
  %"a::var27" = load float, float* %arrayidx32, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %7 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i64 0, i64 %idxprom33
  store float %"a::var27", float* %arrayidx34, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n, align 4
  %cmp36 = icmp slt i32 %8, %9
  br i1 %cmp36, label %for.body37, label %for.end

for.body37:                                       ; preds = %for.cond35
  %10 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %10 to i64
  %arrayidx39 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 %idxprom38
  %11 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %11 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i64 0, i64 %idxprom40
  %"a::var28" = load float, float* %arrayidx41, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %12 to i64
  %arrayidx43 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i64 0, i64 %idxprom42
  %13 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %13 to i64
  %arrayidx45 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx43, i64 0, i64 %idxprom44
  store float %"a::var28", float* %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body37
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond35, !llvm.loop !15

for.end:                                          ; preds = %for.cond35
  br label %for.inc46

for.inc46:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %15, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end48:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [20 x float]*, align 8
  %u1.addr = alloca float*, align 8
  %v1.addr = alloca float*, align 8
  %u2.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %w.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %u1, float** %u1.addr, align 8
  store float* %v1, float** %v1.addr, align 8
  store float* %u2, float** %u2.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store float* %w, float** %w.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %z, float** %z.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  %fn3 = bitcast float* %fn to i8*
  %2 = load i32, i32* %n.addr, align 4
  %"a::var29" = sitofp i32 %2 to float
  store float %"a::var29", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %"a::var30" = sitofp i32 %5 to float
  %"a::var31" = load float, float* %fn, align 4
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %6 = load float*, float** %u1.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float %"a::var32", float* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %"a::var33" = sitofp i32 %add to float
  %"a::var34" = load float, float* %fn, align 4
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %"a::var36" = fpext float %"a::var35" to double
  %"a::var37" = fdiv double %"a::var36", 2.000000e+00
  %"a::var38" = fptrunc double %"a::var37" to float
  %9 = load float*, float** %u2.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds float, float* %9, i64 %idxprom11
  store float %"a::var38", float* %arrayidx12, align 4
  %11 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %11, 1
  %"a::var39" = sitofp i32 %add13 to float
  %"a::var40" = load float, float* %fn, align 4
  %"a::var41" = fdiv float %"a::var39", %"a::var40"
  %"a::var42" = fpext float %"a::var41" to double
  %"a::var43" = fdiv double %"a::var42", 4.000000e+00
  %"a::var44" = fptrunc double %"a::var43" to float
  %12 = load float*, float** %v1.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds float, float* %12, i64 %idxprom19
  store float %"a::var44", float* %arrayidx20, align 4
  %14 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %14, 1
  %"a::var45" = sitofp i32 %add21 to float
  %"a::var46" = load float, float* %fn, align 4
  %"a::var47" = fdiv float %"a::var45", %"a::var46"
  %"a::var48" = fpext float %"a::var47" to double
  %"a::var49" = fdiv double %"a::var48", 6.000000e+00
  %"a::var50" = fptrunc double %"a::var49" to float
  %15 = load float*, float** %v2.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds float, float* %15, i64 %idxprom27
  store float %"a::var50", float* %arrayidx28, align 4
  %17 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %17, 1
  %"a::var51" = sitofp i32 %add29 to float
  %"a::var52" = load float, float* %fn, align 4
  %"a::var53" = fdiv float %"a::var51", %"a::var52"
  %"a::var54" = fpext float %"a::var53" to double
  %"a::var55" = fdiv double %"a::var54", 8.000000e+00
  %"a::var56" = fptrunc double %"a::var55" to float
  %18 = load float*, float** %y.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds float, float* %18, i64 %idxprom35
  store float %"a::var56", float* %arrayidx36, align 4
  %20 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %20, 1
  %"a::var57" = sitofp i32 %add37 to float
  %"a::var58" = load float, float* %fn, align 4
  %"a::var59" = fdiv float %"a::var57", %"a::var58"
  %"a::var60" = fpext float %"a::var59" to double
  %"a::var61" = fdiv double %"a::var60", 9.000000e+00
  %"a::var62" = fptrunc double %"a::var61" to float
  %21 = load float*, float** %z.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds float, float* %21, i64 %idxprom43
  store float %"a::var62", float* %arrayidx44, align 4
  %23 = load float*, float** %x.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds float, float* %23, i64 %idxprom45
  store float 0.000000e+00, float* %arrayidx46, align 4
  %25 = load float*, float** %w.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds float, float* %25, i64 %idxprom47
  store float 0.000000e+00, float* %arrayidx48, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %27, %28
  br i1 %cmp50, label %for.body52, label %for.end

for.body52:                                       ; preds = %for.cond49
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %29, %30
  %31 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %31
  %"a::var63" = sitofp i32 %rem to float
  %32 = load i32, i32* %n.addr, align 4
  %"a::var64" = sitofp i32 %32 to float
  %"a::var65" = fdiv float %"a::var63", %"a::var64"
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %34 to i64
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom56
  %35 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx57, i64 0, i64 %idxprom58
  store float %"a::var65", float* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body52
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond49, !llvm.loop !22

for.end:                                          ; preds = %for.cond49
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %37, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !24 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [20 x float]*, align 8
  %u1.addr = alloca float*, align 8
  %v1.addr = alloca float*, align 8
  %u2.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %w.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %u1, float** %u1.addr, align 8
  store float* %v1, float** %v1.addr, align 8
  store float* %u2, float** %u2.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store float* %w, float** %w.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %z, float** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom4
  %"a::var66" = load float, float* %arrayidx5, align 4
  %7 = load float*, float** %u1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds float, float* %7, i64 %idxprom6
  %"a::var67" = load float, float* %arrayidx7, align 4
  %9 = load float*, float** %v1.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 %idxprom8
  %"a::var68" = load float, float* %arrayidx9, align 4
  %"a::var69" = fmul float %"a::var67", %"a::var68"
  %"a::var70" = fadd float %"a::var66", %"a::var69"
  %11 = load float*, float** %u2.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  %"a::var71" = load float, float* %arrayidx11, align 4
  %13 = load float*, float** %v2.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds float, float* %13, i64 %idxprom12
  %"a::var72" = load float, float* %arrayidx13, align 4
  %"a::var73" = fmul float %"a::var71", %"a::var72"
  %"a::var74" = fadd float %"a::var70", %"a::var73"
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %15, i64 %idxprom16
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var74", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc45, %for.end22
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %20, %21
  br i1 %cmp24, label %for.body25, label %for.end47

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc42, %for.body25
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond26
  %24 = load float*, float** %x.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds float, float* %24, i64 %idxprom29
  %"a::var75" = load float, float* %arrayidx30, align 4
  %"a::var76" = load float, float* %beta.addr, align 4
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 %idxprom31
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i64 0, i64 %idxprom33
  %"a::var77" = load float, float* %arrayidx34, align 4
  %"a::var78" = fmul float %"a::var76", %"a::var77"
  %29 = load float*, float** %y.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds float, float* %29, i64 %idxprom36
  %"a::var79" = load float, float* %arrayidx37, align 4
  %"a::var80" = fmul float %"a::var78", %"a::var79"
  %"a::var81" = fadd float %"a::var75", %"a::var80"
  %31 = load float*, float** %x.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds float, float* %31, i64 %idxprom40
  store float %"a::var81", float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28
  %33 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %33, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond26, !llvm.loop !27

for.end44:                                        ; preds = %for.cond26
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %34 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %34, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond23, !llvm.loop !28

for.end47:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %35, %36
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %37 = load float*, float** %x.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds float, float* %37, i64 %idxprom51
  %"a::var82" = load float, float* %arrayidx52, align 4
  %39 = load float*, float** %z.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds float, float* %39, i64 %idxprom53
  %"a::var83" = load float, float* %arrayidx54, align 4
  %"a::var84" = fadd float %"a::var82", %"a::var83"
  %41 = load float*, float** %x.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds float, float* %41, i64 %idxprom56
  store float %"a::var84", float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %43 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond48, !llvm.loop !29

for.end60:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc83, %for.end60
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp slt i32 %44, %45
  br i1 %cmp62, label %for.body63, label %for.end85

for.body63:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc80, %for.body63
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %46, %47
  br i1 %cmp65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond64
  %48 = load float*, float** %w.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds float, float* %48, i64 %idxprom67
  %"a::var85" = load float, float* %arrayidx68, align 4
  %"a::var86" = load float, float* %alpha.addr, align 4
  %50 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %51 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %50, i64 %idxprom69
  %52 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %52 to i64
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx70, i64 0, i64 %idxprom71
  %"a::var87" = load float, float* %arrayidx72, align 4
  %"a::var88" = fmul float %"a::var86", %"a::var87"
  %53 = load float*, float** %x.addr, align 8
  %54 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %54 to i64
  %arrayidx75 = getelementptr inbounds float, float* %53, i64 %idxprom74
  %"a::var89" = load float, float* %arrayidx75, align 4
  %"a::var90" = fmul float %"a::var88", %"a::var89"
  %"a::var91" = fadd float %"a::var85", %"a::var90"
  %55 = load float*, float** %w.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %56 to i64
  %arrayidx79 = getelementptr inbounds float, float* %55, i64 %idxprom78
  store float %"a::var91", float* %arrayidx79, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66
  %57 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %57, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond64, !llvm.loop !30

for.end82:                                        ; preds = %for.cond64
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %58 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %58, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond61, !llvm.loop !31

for.end85:                                        ; preds = %for.cond61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [20 x float]*, align 8
  %u1.addr = alloca float*, align 8
  %v1.addr = alloca float*, align 8
  %u2.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %w.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %u1, float** %u1.addr, align 8
  store float* %v1, float** %v1.addr, align 8
  store float* %u2, float** %u2.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store float* %w, float** %w.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %z, float** %z.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  %fn3 = bitcast float* %fn to i8*
  %2 = load i32, i32* %n.addr, align 4
  %"a::var92" = sitofp i32 %2 to float
  store float %"a::var92", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %"a::var93" = sitofp i32 %5 to float
  %"a::var94" = load float, float* %fn, align 4
  %"a::var95" = fdiv float %"a::var93", %"a::var94"
  %6 = load float*, float** %u1.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float %"a::var95", float* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %"a::var96" = sitofp i32 %add to float
  %"a::var97" = load float, float* %fn, align 4
  %"a::var98" = fdiv float %"a::var96", %"a::var97"
  %"a::var99" = fpext float %"a::var98" to double
  %"a::var100" = fdiv double %"a::var99", 2.000000e+00
  %"a::var101" = fptrunc double %"a::var100" to float
  %9 = load float*, float** %u2.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds float, float* %9, i64 %idxprom11
  store float %"a::var101", float* %arrayidx12, align 4
  %11 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %11, 1
  %"a::var102" = sitofp i32 %add13 to float
  %"a::var103" = load float, float* %fn, align 4
  %"a::var104" = fdiv float %"a::var102", %"a::var103"
  %"a::var105" = fpext float %"a::var104" to double
  %"a::var106" = fdiv double %"a::var105", 4.000000e+00
  %"a::var107" = fptrunc double %"a::var106" to float
  %12 = load float*, float** %v1.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds float, float* %12, i64 %idxprom19
  store float %"a::var107", float* %arrayidx20, align 4
  %14 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %14, 1
  %"a::var108" = sitofp i32 %add21 to float
  %"a::var109" = load float, float* %fn, align 4
  %"a::var110" = fdiv float %"a::var108", %"a::var109"
  %"a::var111" = fpext float %"a::var110" to double
  %"a::var112" = fdiv double %"a::var111", 6.000000e+00
  %"a::var113" = fptrunc double %"a::var112" to float
  %15 = load float*, float** %v2.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds float, float* %15, i64 %idxprom27
  store float %"a::var113", float* %arrayidx28, align 4
  %17 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %17, 1
  %"a::var114" = sitofp i32 %add29 to float
  %"a::var115" = load float, float* %fn, align 4
  %"a::var116" = fdiv float %"a::var114", %"a::var115"
  %"a::var117" = fpext float %"a::var116" to double
  %"a::var118" = fdiv double %"a::var117", 8.000000e+00
  %"a::var119" = fptrunc double %"a::var118" to float
  %18 = load float*, float** %y.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds float, float* %18, i64 %idxprom35
  store float %"a::var119", float* %arrayidx36, align 4
  %20 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %20, 1
  %"a::var120" = sitofp i32 %add37 to float
  %"a::var121" = load float, float* %fn, align 4
  %"a::var122" = fdiv float %"a::var120", %"a::var121"
  %"a::var123" = fpext float %"a::var122" to double
  %"a::var124" = fdiv double %"a::var123", 9.000000e+00
  %"a::var125" = fptrunc double %"a::var124" to float
  %21 = load float*, float** %z.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds float, float* %21, i64 %idxprom43
  store float %"a::var125", float* %arrayidx44, align 4
  %23 = load float*, float** %x.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds float, float* %23, i64 %idxprom45
  store float 0.000000e+00, float* %arrayidx46, align 4
  %25 = load float*, float** %w.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds float, float* %25, i64 %idxprom47
  store float 0.000000e+00, float* %arrayidx48, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %27, %28
  br i1 %cmp50, label %for.body52, label %for.end

for.body52:                                       ; preds = %for.cond49
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %29, %30
  %31 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %31
  %"a::var126" = sitofp i32 %rem to float
  %32 = load i32, i32* %n.addr, align 4
  %"a::var127" = sitofp i32 %32 to float
  %"a::var128" = fdiv float %"a::var126", %"a::var127"
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %34 to i64
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom56
  %35 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx57, i64 0, i64 %idxprom58
  store float %"a::var128", float* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body52
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond49, !llvm.loop !32

for.end:                                          ; preds = %for.cond49
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %37, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond, !llvm.loop !33

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.2(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %A.addr = alloca [20 x float]*, align 8
  %u1.addr = alloca float*, align 8
  %v1.addr = alloca float*, align 8
  %u2.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %w.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %u1, float** %u1.addr, align 8
  store float* %v1, float** %v1.addr, align 8
  store float* %u2, float** %u2.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store float* %w, float** %w.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store float* %z, float** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom4
  %"a::var129" = load float, float* %arrayidx5, align 4
  %7 = load float*, float** %u1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds float, float* %7, i64 %idxprom6
  %"a::var130" = load float, float* %arrayidx7, align 4
  %9 = load float*, float** %v1.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 %idxprom8
  %"a::var131" = load float, float* %arrayidx9, align 4
  %"a::var132" = fmul float %"a::var130", %"a::var131"
  %"a::var133" = fadd float %"a::var129", %"a::var132"
  %11 = load float*, float** %u2.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  %"a::var134" = load float, float* %arrayidx11, align 4
  %13 = load float*, float** %v2.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds float, float* %13, i64 %idxprom12
  %"a::var135" = load float, float* %arrayidx13, align 4
  %"a::var136" = fmul float %"a::var134", %"a::var135"
  %"a::var137" = fadd float %"a::var133", %"a::var136"
  %15 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %15, i64 %idxprom16
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var137", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !34

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !35

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc45, %for.end22
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %20, %21
  br i1 %cmp24, label %for.body25, label %for.end47

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc42, %for.body25
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond26
  %24 = load float*, float** %x.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds float, float* %24, i64 %idxprom29
  %"a::var138" = load float, float* %arrayidx30, align 4
  %"a::var139" = load float, float* %beta.addr, align 4
  %26 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* %26, i64 %idxprom31
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i64 0, i64 %idxprom33
  %"a::var140" = load float, float* %arrayidx34, align 4
  %"a::var141" = fmul float %"a::var139", %"a::var140"
  %29 = load float*, float** %y.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds float, float* %29, i64 %idxprom36
  %"a::var142" = load float, float* %arrayidx37, align 4
  %"a::var143" = fmul float %"a::var141", %"a::var142"
  %"a::var144" = fadd float %"a::var138", %"a::var143"
  %31 = load float*, float** %x.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds float, float* %31, i64 %idxprom40
  store float %"a::var144", float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28
  %33 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %33, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond26, !llvm.loop !36

for.end44:                                        ; preds = %for.cond26
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %34 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %34, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond23, !llvm.loop !37

for.end47:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %35, %36
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %37 = load float*, float** %x.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds float, float* %37, i64 %idxprom51
  %"a::var145" = load float, float* %arrayidx52, align 4
  %39 = load float*, float** %z.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds float, float* %39, i64 %idxprom53
  %"a::var146" = load float, float* %arrayidx54, align 4
  %"a::var147" = fadd float %"a::var145", %"a::var146"
  %41 = load float*, float** %x.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds float, float* %41, i64 %idxprom56
  store float %"a::var147", float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %43 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond48, !llvm.loop !38

for.end60:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc83, %for.end60
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp slt i32 %44, %45
  br i1 %cmp62, label %for.body63, label %for.end85

for.body63:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc80, %for.body63
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %46, %47
  br i1 %cmp65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond64
  %48 = load float*, float** %w.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds float, float* %48, i64 %idxprom67
  %"a::var148" = load float, float* %arrayidx68, align 4
  %"a::var149" = load float, float* %alpha.addr, align 4
  %50 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %51 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %50, i64 %idxprom69
  %52 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %52 to i64
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx70, i64 0, i64 %idxprom71
  %"a::var150" = load float, float* %arrayidx72, align 4
  %"a::var151" = fmul float %"a::var149", %"a::var150"
  %53 = load float*, float** %x.addr, align 8
  %54 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %54 to i64
  %arrayidx75 = getelementptr inbounds float, float* %53, i64 %idxprom74
  %"a::var152" = load float, float* %arrayidx75, align 4
  %"a::var153" = fmul float %"a::var151", %"a::var152"
  %"a::var154" = fadd float %"a::var148", %"a::var153"
  %55 = load float*, float** %w.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %56 to i64
  %arrayidx79 = getelementptr inbounds float, float* %55, i64 %idxprom78
  store float %"a::var154", float* %arrayidx79, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66
  %57 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %57, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond64, !llvm.loop !39

for.end82:                                        ; preds = %for.cond64
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %58 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %58, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond61, !llvm.loop !40

for.end85:                                        ; preds = %for.cond61
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
!5 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!6 = !{i32 0, i1 false}
!7 = !{i32 -1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{}
!11 = !{i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1, i32 -1}
!13 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array}
!14 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver.2}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
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
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
