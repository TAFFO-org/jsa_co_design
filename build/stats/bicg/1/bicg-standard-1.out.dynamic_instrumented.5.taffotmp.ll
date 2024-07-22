; ModuleID = './build/stats/bicg/1/bicg-standard-1.out.dynamic_instrumented.named.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/bicg.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [53 x i8] c"target('s') scalar(range(VAR_s_MIN,VAR_s_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('q') scalar(range(VAR_q_MIN,VAR_q_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_p_MIN,VAR_p_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_r_MIN,VAR_r_MAX) final)\00", section "llvm.metadata"
@s_float = dso_local global [20 x float] zeroinitializer, align 16
@q_float = dso_local global [22 x float] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 22))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@PrintfFormatStr = global [26 x i8] c"\0ATAFFO_TRACE %s %A %s %s\0A\00"
@PrintfTimerStr = global [17 x i8] c"\0ATRACE_TIMER %s\0A\00"
@0 = private unnamed_addr constant [11 x i8] c"Float_half\00", align 1
@1 = private unnamed_addr constant [13 x i8] c"Float_bfloat\00", align 1
@2 = private unnamed_addr constant [12 x i8] c"Float_float\00", align 1
@3 = private unnamed_addr constant [13 x i8] c"Float_double\00", align 1
@4 = private unnamed_addr constant [15 x i8] c"Float_x86_fp80\00", align 1
@5 = private unnamed_addr constant [12 x i8] c"Float_fp128\00", align 1
@6 = private unnamed_addr constant [16 x i8] c"Float_ppc_fp128\00", align 1
@7 = private unnamed_addr constant [8 x i8] c"a::var0\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@9 = private unnamed_addr constant [8 x i8] c"a::var1\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@11 = private unnamed_addr constant [8 x i8] c"a::var2\00", align 1
@12 = private unnamed_addr constant [8 x i8] c"a::var3\00", align 1
@13 = private unnamed_addr constant [8 x i8] c"a::var4\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"a::var5\00", align 1
@15 = private unnamed_addr constant [8 x i8] c"a::var6\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@17 = private unnamed_addr constant [8 x i8] c"a::var7\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@19 = private unnamed_addr constant [8 x i8] c"a::var8\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"a::var9\00", align 1
@21 = private unnamed_addr constant [9 x i8] c"a::var10\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"a::var11\00", align 1
@23 = private unnamed_addr constant [9 x i8] c"a::var12\00", align 1
@24 = private unnamed_addr constant [9 x i8] c"a::var13\00", align 1
@25 = private unnamed_addr constant [9 x i8] c"a::var14\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@27 = private unnamed_addr constant [9 x i8] c"a::var15\00", align 1
@28 = private unnamed_addr constant [9 x i8] c"a::var16\00", align 1
@29 = private unnamed_addr constant [9 x i8] c"a::var17\00", align 1
@30 = private unnamed_addr constant [9 x i8] c"a::var18\00", align 1
@31 = private unnamed_addr constant [9 x i8] c"a::var19\00", align 1
@32 = private unnamed_addr constant [9 x i8] c"a::var20\00", align 1
@33 = private unnamed_addr constant [9 x i8] c"a::var21\00", align 1
@34 = private unnamed_addr constant [9 x i8] c"a::var22\00", align 1
@35 = private unnamed_addr constant [5 x i8] c"fneg\00", align 1
@36 = private unnamed_addr constant [9 x i8] c"a::var23\00", align 1
@37 = private unnamed_addr constant [12 x i8] c"timer_start\00", align 1
@38 = private unnamed_addr constant [11 x i8] c"timer_stop\00", align 1
@39 = private unnamed_addr constant [9 x i8] c"a::var24\00", align 1
@40 = private unnamed_addr constant [9 x i8] c"a::var25\00", align 1
@41 = private unnamed_addr constant [9 x i8] c"a::var26\00", align 1
@42 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@43 = private unnamed_addr constant [9 x i8] c"a::var27\00", align 1
@44 = private unnamed_addr constant [9 x i8] c"a::var28\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"a::var29\00", align 1
@46 = private unnamed_addr constant [9 x i8] c"a::var30\00", align 1
@47 = private unnamed_addr constant [9 x i8] c"a::var31\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"a::var32\00", align 1
@49 = private unnamed_addr constant [9 x i8] c"a::var33\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"a::var34\00", align 1
@51 = private unnamed_addr constant [9 x i8] c"a::var35\00", align 1
@52 = private unnamed_addr constant [9 x i8] c"a::var36\00", align 1
@53 = private unnamed_addr constant [9 x i8] c"a::var37\00", align 1
@54 = private unnamed_addr constant [9 x i8] c"a::var38\00", align 1
@55 = private unnamed_addr constant [9 x i8] c"a::var39\00", align 1
@56 = private unnamed_addr constant [9 x i8] c"a::var40\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"a::var41\00", align 1
@58 = private unnamed_addr constant [9 x i8] c"a::var42\00", align 1
@59 = private unnamed_addr constant [9 x i8] c"a::var43\00", align 1
@60 = private unnamed_addr constant [9 x i8] c"a::var44\00", align 1
@61 = private unnamed_addr constant [9 x i8] c"a::var45\00", align 1
@62 = private unnamed_addr constant [9 x i8] c"a::var46\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"a::var47\00", align 1
@64 = private unnamed_addr constant [9 x i8] c"a::var48\00", align 1
@65 = private unnamed_addr constant [9 x i8] c"a::var49\00", align 1
@66 = private unnamed_addr constant [9 x i8] c"a::var50\00", align 1
@67 = private unnamed_addr constant [9 x i8] c"a::var51\00", align 1
@68 = private unnamed_addr constant [9 x i8] c"a::var52\00", align 1
@69 = private unnamed_addr constant [9 x i8] c"a::var53\00", align 1
@70 = private unnamed_addr constant [9 x i8] c"a::var54\00", align 1
@71 = private unnamed_addr constant [9 x i8] c"a::var55\00", align 1
@72 = private unnamed_addr constant [9 x i8] c"a::var56\00", align 1
@73 = private unnamed_addr constant [9 x i8] c"a::var57\00", align 1
@74 = private unnamed_addr constant [9 x i8] c"a::var58\00", align 1
@75 = private unnamed_addr constant [9 x i8] c"a::var59\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"a::var60\00", align 1
@77 = private unnamed_addr constant [9 x i8] c"a::var61\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"a::var62\00", align 1
@79 = private unnamed_addr constant [9 x i8] c"a::var63\00", align 1

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
  %0 = fpext float %"a::var0" to double
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), double %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var1" = fdiv float %"a::var0", 1.000000e+01
  %2 = fpext float %"a::var1" to double
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), double %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  store float %"a::var1", float* %x, align 4
  store float 0x3F50624DE0000000, float* %min_tol, align 4
  store float 0.000000e+00, float* %constZeroVal, align 4
  store float 2.000000e+00, float* %constTwoVal, align 4
  store i32 0, i32* %flag, align 4
  %"a::var2" = load float, float* %val.addr, align 4
  %4 = fpext float %"a::var2" to double
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), double %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var3" = load float, float* %constZeroVal, align 4
  %6 = fpext float %"a::var3" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @12, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %cmp = fcmp oeq float %"a::var2", %"a::var3"
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load float, float* %constZeroVal, align 4
  store float %8, float* %x, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %9, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %11 = load float, float* %val.addr, align 4
  %"a::var4" = load float, float* %x, align 4
  %12 = fpext float %"a::var4" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var5" = load float, float* %x, align 4
  %14 = fpext float %"a::var5" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var6" = fmul float %"a::var4", %"a::var5"
  %16 = fpext float %"a::var6" to double
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), double %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var7" = fsub float %11, %"a::var6"
  %18 = fpext float %"a::var7" to double
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), double %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %"a::var8" = load float, float* %constTwoVal, align 4
  %20 = fpext float %"a::var8" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var9" = load float, float* %x, align 4
  %22 = fpext float %"a::var9" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @20, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var10" = fmul float %"a::var8", %"a::var9"
  %24 = fpext float %"a::var10" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var11" = fdiv float %"a::var7", %"a::var10"
  %26 = fpext float %"a::var11" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  store float %"a::var11", float* %dx, align 4
  %"a::var12" = load float, float* %x, align 4
  %28 = fpext float %"a::var12" to double
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), double %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var13" = load float, float* %dx, align 4
  %30 = fpext float %"a::var13" to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), double %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var14" = fadd float %"a::var12", %"a::var13"
  %32 = fpext float %"a::var14" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var14", float* %x, align 4
  %"a::var15" = load float, float* %val.addr, align 4
  %34 = fpext float %"a::var15" to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), double %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var16" = load float, float* %x, align 4
  %36 = fpext float %"a::var16" to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @28, i32 0, i32 0), double %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var17" = load float, float* %x, align 4
  %38 = fpext float %"a::var17" to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), double %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var18" = fmul float %"a::var16", %"a::var17"
  %40 = fpext float %"a::var18" to double
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @30, i32 0, i32 0), double %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var19" = fsub float %"a::var15", %"a::var18"
  %42 = fpext float %"a::var19" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var19", float* %diff, align 4
  %"a::var20" = load float, float* %diff, align 4
  %44 = fpext float %"a::var20" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @32, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var21" = load float, float* %constZeroVal, align 4
  %46 = fpext float %"a::var21" to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), double %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %cmp7 = fcmp oge float %"a::var20", %"a::var21"
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %48 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %49 = load float, float* %diff, align 4
  %"a::var22" = fneg float %49
  %50 = fpext float %"a::var22" to double
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @34, i32 0, i32 0), double %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @35, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %48, %cond.true ], [ %"a::var22", %cond.false ]
  %"a::var23" = load float, float* %min_tol, align 4
  %52 = fpext float %"a::var23" to double
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @36, i32 0, i32 0), double %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
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
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %55 = load float, float* %x, align 4
  ret float %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.funinfo !10 !taffo.initweight !10 {
entry:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @PrintfTimerStr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @37, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !10 !taffo.initweight !10 {
entry:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @PrintfTimerStr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @38, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.funinfo !11 !taffo.initweight !12 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %A = alloca [22 x [20 x float]], align 16
  %s = alloca [20 x float], align 16
  %q = alloca [22 x float], align 16
  %p = alloca [20 x float], align 16
  %r = alloca [22 x float], align 16
  %i = alloca i32, align 4
  %i17 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 22, i32* %n, align 4
  store i32 20, i32* %m, align 4
  %A1 = bitcast [22 x [20 x float]]* %A to i8*
  %s2 = bitcast [20 x float]* %s to i8*
  %q3 = bitcast [22 x float]* %q to i8*
  %p4 = bitcast [20 x float]* %p to i8*
  %r5 = bitcast [22 x float]* %r to i8*
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.originalCall !13
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i64 0, i64 0
  call void @kernel_bicg.2(i32 noundef %2, i32 noundef %3, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i64 0, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %7 = fpext float %"a::var24" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i64 0, i64 %idxprom15
  store float %"a::var24", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i17, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %for.end
  %11 = load i32, i32* %i17, align 4
  %12 = load i32, i32* %n, align 4
  %cmp19 = icmp slt i32 %11, %12
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond18
  %13 = load i32, i32* %i17, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [22 x float], [22 x float]* %q, i64 0, i64 %idxprom21
  %"a::var25" = load float, float* %arrayidx22, align 4
  %14 = fpext float %"a::var25" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %16 = load i32, i32* %i17, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i64 0, i64 %idxprom23
  store float %"a::var25", float* %arrayidx24, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %17 = load i32, i32* %i17, align 4
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, i32* %i17, align 4
  br label %for.cond18, !llvm.loop !16

for.end27:                                        ; preds = %for.cond18
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %r.addr = alloca float*, align 8
  %p.addr = alloca float*, align 8
  %s.addr = alloca float*, align 8
  %q.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %r, float** %r.addr, align 8
  store float* %p, float** %p.addr, align 8
  store float* %s, float** %s.addr, align 8
  store float* %q, float** %q.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3
  %"a::var26" = sitofp i32 %rem to float
  %4 = fpext float %"a::var26" to double
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), double %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %6 = load i32, i32* %m.addr, align 4
  %"a::var27" = sitofp i32 %6 to float
  %7 = fpext float %"a::var27" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %9 = fpext float %"a::var28" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %11 = load float*, float** %p.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %"a::var28", float* %arrayidx, align 4
  %13 = load float*, float** %s.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds float, float* %13, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc33, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body9, label %for.end35

for.body9:                                        ; preds = %for.cond6
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %18, %19
  %"a::var29" = sitofp i32 %rem10 to float
  %20 = fpext float %"a::var29" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %22 = load i32, i32* %n.addr, align 4
  %"a::var30" = sitofp i32 %22 to float
  %23 = fpext float %"a::var30" to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @46, i32 0, i32 0), double %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %"a::var31" = fdiv float %"a::var29", %"a::var30"
  %25 = fpext float %"a::var31" to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), double %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %27 = load float*, float** %r.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds float, float* %27, i64 %idxprom14
  store float %"a::var31", float* %arrayidx15, align 4
  %29 = load float*, float** %q.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds float, float* %29, i64 %idxprom16
  store float 0.000000e+00, float* %arrayidx17, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body9
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %m.addr, align 4
  %cmp19 = icmp slt i32 %31, %32
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %j, align 4
  %add = add nsw i32 %34, 1
  %mul = mul nsw i32 %33, %add
  %35 = load i32, i32* %n.addr, align 4
  %rem22 = srem i32 %mul, %35
  %"a::var32" = sitofp i32 %rem22 to float
  %36 = fpext float %"a::var32" to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), double %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %38 = load i32, i32* %n.addr, align 4
  %"a::var33" = sitofp i32 %38 to float
  %39 = fpext float %"a::var33" to double
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %"a::var34" = fdiv float %"a::var32", %"a::var33"
  %41 = fpext float %"a::var34" to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), double %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %44 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %43, i64 %idxprom26
  %45 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %45 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var34", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %46 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %46, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !23

for.end32:                                        ; preds = %for.cond18
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %47 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %47, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond6, !llvm.loop !24

for.end35:                                        ; preds = %for.cond6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !25 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %s.addr = alloca float*, align 8
  %q.addr = alloca float*, align 8
  %p.addr = alloca float*, align 8
  %r.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %s, float** %s.addr, align 8
  store float* %q, float** %q.addr, align 8
  store float* %p, float** %p.addr, align 8
  store float* %r, float** %r.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc34, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end36

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %q.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc31, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end33

for.body8:                                        ; preds = %for.cond6
  %11 = load float*, float** %s.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  %"a::var35" = load float, float* %arrayidx10, align 4
  %13 = fpext float %"a::var35" to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %15 = load float*, float** %r.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds float, float* %15, i64 %idxprom11
  %"a::var36" = load float, float* %arrayidx12, align 4
  %17 = fpext float %"a::var36" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %19 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %19, i64 %idxprom13
  %21 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var37" = load float, float* %arrayidx16, align 4
  %22 = fpext float %"a::var37" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var38" = fmul float %"a::var36", %"a::var37"
  %24 = fpext float %"a::var38" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var39" = fadd float %"a::var35", %"a::var38"
  %26 = fpext float %"a::var39" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %28 = load float*, float** %s.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds float, float* %28, i64 %idxprom17
  store float %"a::var39", float* %arrayidx18, align 4
  %30 = load float*, float** %q.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds float, float* %30, i64 %idxprom19
  %"a::var40" = load float, float* %arrayidx20, align 4
  %32 = fpext float %"a::var40" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* %34, i64 %idxprom21
  %36 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx22, i64 0, i64 %idxprom23
  %"a::var41" = load float, float* %arrayidx24, align 4
  %37 = fpext float %"a::var41" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %39 = load float*, float** %p.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %40 to i64
  %arrayidx26 = getelementptr inbounds float, float* %39, i64 %idxprom25
  %"a::var42" = load float, float* %arrayidx26, align 4
  %41 = fpext float %"a::var42" to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), double %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var43" = fmul float %"a::var41", %"a::var42"
  %43 = fpext float %"a::var43" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var44" = fadd float %"a::var40", %"a::var43"
  %45 = fpext float %"a::var44" to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %47 = load float*, float** %q.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %48 to i64
  %arrayidx30 = getelementptr inbounds float, float* %47, i64 %idxprom29
  store float %"a::var44", float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body8
  %49 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond6, !llvm.loop !27

for.end33:                                        ; preds = %for.cond6
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %50 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %50, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond1, !llvm.loop !28

for.end36:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %r.addr = alloca float*, align 8
  %p.addr = alloca float*, align 8
  %s.addr = alloca float*, align 8
  %q.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %r, float** %r.addr, align 8
  store float* %p, float** %p.addr, align 8
  store float* %s, float** %s.addr, align 8
  store float* %q, float** %q.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %2, %3
  %"a::var45" = sitofp i32 %rem to float
  %4 = fpext float %"a::var45" to double
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %6 = load i32, i32* %m.addr, align 4
  %"a::var46" = sitofp i32 %6 to float
  %7 = fpext float %"a::var46" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @62, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %"a::var47" = fdiv float %"a::var45", %"a::var46"
  %9 = fpext float %"a::var47" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %11 = load float*, float** %p.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %"a::var47", float* %arrayidx, align 4
  %13 = load float*, float** %s.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds float, float* %13, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc33, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body9, label %for.end35

for.body9:                                        ; preds = %for.cond6
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n.addr, align 4
  %rem10 = srem i32 %18, %19
  %"a::var48" = sitofp i32 %rem10 to float
  %20 = fpext float %"a::var48" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %22 = load i32, i32* %n.addr, align 4
  %"a::var49" = sitofp i32 %22 to float
  %23 = fpext float %"a::var49" to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), double %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %"a::var50" = fdiv float %"a::var48", %"a::var49"
  %25 = fpext float %"a::var50" to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %27 = load float*, float** %r.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds float, float* %27, i64 %idxprom14
  store float %"a::var50", float* %arrayidx15, align 4
  %29 = load float*, float** %q.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds float, float* %29, i64 %idxprom16
  store float 0.000000e+00, float* %arrayidx17, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body9
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %m.addr, align 4
  %cmp19 = icmp slt i32 %31, %32
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %j, align 4
  %add = add nsw i32 %34, 1
  %mul = mul nsw i32 %33, %add
  %35 = load i32, i32* %n.addr, align 4
  %rem22 = srem i32 %mul, %35
  %"a::var51" = sitofp i32 %rem22 to float
  %36 = fpext float %"a::var51" to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %38 = load i32, i32* %n.addr, align 4
  %"a::var52" = sitofp i32 %38 to float
  %39 = fpext float %"a::var52" to double
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %"a::var53" = fdiv float %"a::var51", %"a::var52"
  %41 = fpext float %"a::var53" to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %44 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %43, i64 %idxprom26
  %45 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %45 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var53", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %46 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %46, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !30

for.end32:                                        ; preds = %for.cond18
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %47 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %47, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond6, !llvm.loop !31

for.end35:                                        ; preds = %for.cond6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.2(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %s.addr = alloca float*, align 8
  %q.addr = alloca float*, align 8
  %p.addr = alloca float*, align 8
  %r.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %s, float** %s.addr, align 8
  store float* %q, float** %q.addr, align 8
  store float* %p, float** %p.addr, align 8
  store float* %r, float** %r.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc34, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end36

for.body3:                                        ; preds = %for.cond1
  %7 = load float*, float** %q.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc31, %for.body3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %m.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end33

for.body8:                                        ; preds = %for.cond6
  %11 = load float*, float** %s.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  %"a::var54" = load float, float* %arrayidx10, align 4
  %13 = fpext float %"a::var54" to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %15 = load float*, float** %r.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds float, float* %15, i64 %idxprom11
  %"a::var55" = load float, float* %arrayidx12, align 4
  %17 = fpext float %"a::var55" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %19 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %19, i64 %idxprom13
  %21 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var56" = load float, float* %arrayidx16, align 4
  %22 = fpext float %"a::var56" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var57" = fmul float %"a::var55", %"a::var56"
  %24 = fpext float %"a::var57" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var58" = fadd float %"a::var54", %"a::var57"
  %26 = fpext float %"a::var58" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %28 = load float*, float** %s.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds float, float* %28, i64 %idxprom17
  store float %"a::var58", float* %arrayidx18, align 4
  %30 = load float*, float** %q.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds float, float* %30, i64 %idxprom19
  %"a::var59" = load float, float* %arrayidx20, align 4
  %32 = fpext float %"a::var59" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %34 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* %34, i64 %idxprom21
  %36 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx22, i64 0, i64 %idxprom23
  %"a::var60" = load float, float* %arrayidx24, align 4
  %37 = fpext float %"a::var60" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %39 = load float*, float** %p.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %40 to i64
  %arrayidx26 = getelementptr inbounds float, float* %39, i64 %idxprom25
  %"a::var61" = load float, float* %arrayidx26, align 4
  %41 = fpext float %"a::var61" to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var62" = fmul float %"a::var60", %"a::var61"
  %43 = fpext float %"a::var62" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var63" = fadd float %"a::var59", %"a::var62"
  %45 = fpext float %"a::var63" to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %47 = load float*, float** %q.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %48 to i64
  %arrayidx30 = getelementptr inbounds float, float* %47, i64 %idxprom29
  store float %"a::var63", float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body8
  %49 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond6, !llvm.loop !33

for.end33:                                        ; preds = %for.cond6
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %50 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %50, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond1, !llvm.loop !34

for.end36:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
!13 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array}
!14 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg.2}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
