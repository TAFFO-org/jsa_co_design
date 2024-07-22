; ModuleID = './build/stats/symm/1/symm-standard-1.out.dynamic_instrumented.named.taffotmp.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/symm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [53 x i8] c"target('C') scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,10))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata"
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
@42 = private unnamed_addr constant [9 x i8] c"a::var27\00", align 1
@43 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
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
@80 = private unnamed_addr constant [9 x i8] c"a::var64\00", align 1
@81 = private unnamed_addr constant [9 x i8] c"a::var65\00", align 1
@82 = private unnamed_addr constant [9 x i8] c"a::var66\00", align 1
@83 = private unnamed_addr constant [9 x i8] c"a::var67\00", align 1
@84 = private unnamed_addr constant [9 x i8] c"a::var68\00", align 1
@85 = private unnamed_addr constant [9 x i8] c"a::var69\00", align 1
@86 = private unnamed_addr constant [9 x i8] c"a::var70\00", align 1
@87 = private unnamed_addr constant [9 x i8] c"a::var71\00", align 1
@88 = private unnamed_addr constant [9 x i8] c"a::var72\00", align 1
@89 = private unnamed_addr constant [9 x i8] c"a::var73\00", align 1
@90 = private unnamed_addr constant [9 x i8] c"a::var74\00", align 1
@91 = private unnamed_addr constant [9 x i8] c"a::var75\00", align 1
@92 = private unnamed_addr constant [9 x i8] c"a::var76\00", align 1
@93 = private unnamed_addr constant [9 x i8] c"a::var77\00", align 1
@94 = private unnamed_addr constant [9 x i8] c"a::var78\00", align 1
@95 = private unnamed_addr constant [9 x i8] c"a::var79\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"a::var80\00", align 1
@97 = private unnamed_addr constant [9 x i8] c"a::var81\00", align 1
@98 = private unnamed_addr constant [9 x i8] c"a::var82\00", align 1
@99 = private unnamed_addr constant [9 x i8] c"a::var83\00", align 1
@100 = private unnamed_addr constant [9 x i8] c"a::var84\00", align 1
@101 = private unnamed_addr constant [9 x i8] c"a::var85\00", align 1
@102 = private unnamed_addr constant [9 x i8] c"a::var86\00", align 1
@103 = private unnamed_addr constant [9 x i8] c"a::var87\00", align 1
@104 = private unnamed_addr constant [9 x i8] c"a::var88\00", align 1
@105 = private unnamed_addr constant [9 x i8] c"a::var89\00", align 1
@106 = private unnamed_addr constant [9 x i8] c"a::var90\00", align 1

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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %C = alloca [10 x [16 x float]], align 16
  %A = alloca [10 x [10 x float]], align 16
  %B = alloca [10 x [16 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10, i32* %m, align 4
  store i32 16, i32* %n, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %C3 = bitcast [10 x [16 x float]]* %C to i8*
  %A4 = bitcast [10 x [10 x float]]* %A to i8*
  %B5 = bitcast [10 x [16 x float]]* %B to i8*
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [16 x float]* noundef %arraydecay7), !taffo.originalCall !13
  call void @timer_start()
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %4 = fpext float %"a::var24" to double
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), double %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var25" = load float, float* %beta, align 4
  %6 = fpext float %"a::var25" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i64 0, i64 0
  call void @kernel_symm.2(i32 noundef %2, i32 noundef %3, float noundef %"a::var24", float noundef %"a::var25", [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [16 x float]* noundef %arraydecay10), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i64 0, i64 %idxprom
  %13 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom14
  %"a::var26" = load float, float* %arrayidx15, align 4
  %14 = fpext float %"a::var26" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i64 0, i64 %idxprom16
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var26", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond11, !llvm.loop !15

for.end:                                          ; preds = %for.cond11
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %rem = srem i32 %add, 100
  %"a::var27" = sitofp i32 %rem to float
  %8 = fpext float %"a::var27" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %10 = load i32, i32* %m.addr, align 4
  %"a::var28" = sitofp i32 %10 to float
  %11 = fpext float %"a::var28" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var29" = fdiv float %"a::var27", %"a::var28"
  %13 = fpext float %"a::var29" to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), double %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %15 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %15, i64 %idxprom
  %17 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var29", float* %arrayidx8, align 4
  %18 = load i32, i32* %n.addr, align 4
  %19 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %18, %19
  %20 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %add9, %20
  %rem10 = srem i32 %sub, 100
  %"a::var30" = sitofp i32 %rem10 to float
  %21 = fpext float %"a::var30" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @46, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %23 = load i32, i32* %m.addr, align 4
  %"a::var31" = sitofp i32 %23 to float
  %24 = fpext float %"a::var31" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %26 = fpext float %"a::var32" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %29 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom14
  %30 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float %"a::var32", float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !22

for.end:                                          ; preds = %for.cond3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %32, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc53, %for.end20
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %m.addr, align 4
  %cmp22 = icmp slt i32 %33, %34
  br i1 %cmp22, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond21
  store i32 0, i32* %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc38, %for.body24
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %cmp26 = icmp sle i32 %35, %36
  br i1 %cmp26, label %for.body28, label %for.end40

for.body28:                                       ; preds = %for.cond25
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %37, %38
  %rem30 = srem i32 %add29, 100
  %"a::var33" = sitofp i32 %rem30 to float
  %39 = fpext float %"a::var33" to double
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %41 = load i32, i32* %m.addr, align 4
  %"a::var34" = sitofp i32 %41 to float
  %42 = fpext float %"a::var34" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %44 = fpext float %"a::var35" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %46 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %47 to i64
  %arrayidx35 = getelementptr inbounds [10 x float], [10 x float]* %46, i64 %idxprom34
  %48 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %48 to i64
  %arrayidx37 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx35, i64 0, i64 %idxprom36
  store float %"a::var35", float* %arrayidx37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body28
  %49 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %49, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond25, !llvm.loop !24

for.end40:                                        ; preds = %for.cond25
  %50 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %50, 1
  store i32 %add41, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.end40
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %m.addr, align 4
  %cmp43 = icmp slt i32 %51, %52
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond42
  %53 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %54 to i64
  %arrayidx47 = getelementptr inbounds [10 x float], [10 x float]* %53, i64 %idxprom46
  %55 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %55 to i64
  %arrayidx49 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float -9.990000e+02, float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %56 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %56, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond42, !llvm.loop !25

for.end52:                                        ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %57 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %57, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond21, !llvm.loop !26

for.end55:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !27 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca float, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store float 0.000000e+00, float* %temp2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load float, float* %alpha.addr, align 4
  %7 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  %"a::var36" = load float, float* %arrayidx8, align 4
  %10 = fpext float %"a::var36" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var37" = fmul float %6, %"a::var36"
  %12 = fpext float %"a::var37" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %14, i64 %idxprom9
  %16 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var38" = load float, float* %arrayidx12, align 4
  %17 = fpext float %"a::var38" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var39" = fmul float %"a::var37", %"a::var38"
  %19 = fpext float %"a::var39" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %21 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %21, i64 %idxprom14
  %23 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var40" = load float, float* %arrayidx17, align 4
  %24 = fpext float %"a::var40" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var41" = fadd float %"a::var40", %"a::var39"
  %26 = fpext float %"a::var41" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var41", float* %arrayidx17, align 4
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom18
  %30 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var42" = load float, float* %arrayidx21, align 4
  %31 = fpext float %"a::var42" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %33 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [10 x float], [10 x float]* %33, i64 %idxprom22
  %35 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %35 to i64
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var43" = load float, float* %arrayidx25, align 4
  %36 = fpext float %"a::var43" to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var44" = fmul float %"a::var42", %"a::var43"
  %38 = fpext float %"a::var44" to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var45" = load float, float* %temp2, align 4
  %40 = fpext float %"a::var45" to double
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var46" = fadd float %"a::var45", %"a::var44"
  %42 = fpext float %"a::var46" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @62, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var46", float* %temp2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %44 = load i32, i32* %k, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !28

for.end:                                          ; preds = %for.cond4
  %45 = load float, float* %beta.addr, align 4
  %46 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %47 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %46, i64 %idxprom28
  %48 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %"a::var47" = load float, float* %arrayidx31, align 4
  %49 = fpext float %"a::var47" to double
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var48" = fmul float %45, %"a::var47"
  %51 = fpext float %"a::var48" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var49" = load float, float* %alpha.addr, align 4
  %53 = fpext float %"a::var49" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %55 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %56 to i64
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %55, i64 %idxprom33
  %57 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %57 to i64
  %arrayidx36 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx34, i64 0, i64 %idxprom35
  %"a::var50" = load float, float* %arrayidx36, align 4
  %58 = fpext float %"a::var50" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var51" = fmul float %"a::var49", %"a::var50"
  %60 = fpext float %"a::var51" to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %62 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %63 to i64
  %arrayidx39 = getelementptr inbounds [10 x float], [10 x float]* %62, i64 %idxprom38
  %64 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %64 to i64
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx39, i64 0, i64 %idxprom40
  %"a::var52" = load float, float* %arrayidx41, align 4
  %65 = fpext float %"a::var52" to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var53" = fmul float %"a::var51", %"a::var52"
  %67 = fpext float %"a::var53" to double
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var54" = fadd float %"a::var48", %"a::var53"
  %69 = fpext float %"a::var54" to double
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var55" = load float, float* %alpha.addr, align 4
  %71 = fpext float %"a::var55" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var56" = load float, float* %temp2, align 4
  %73 = fpext float %"a::var56" to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var57" = fmul float %"a::var55", %"a::var56"
  %75 = fpext float %"a::var57" to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var58" = fadd float %"a::var54", %"a::var57"
  %77 = fpext float %"a::var58" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %79 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %80 to i64
  %arrayidx47 = getelementptr inbounds [16 x float], [16 x float]* %79, i64 %idxprom46
  %81 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %81 to i64
  %arrayidx49 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float %"a::var58", float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %82 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %82, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond1, !llvm.loop !29

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %83 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %83, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %rem = srem i32 %add, 100
  %"a::var59" = sitofp i32 %rem to float
  %8 = fpext float %"a::var59" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %10 = load i32, i32* %m.addr, align 4
  %"a::var60" = sitofp i32 %10 to float
  %11 = fpext float %"a::var60" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var61" = fdiv float %"a::var59", %"a::var60"
  %13 = fpext float %"a::var61" to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %15 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %15, i64 %idxprom
  %17 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var61", float* %arrayidx8, align 4
  %18 = load i32, i32* %n.addr, align 4
  %19 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %18, %19
  %20 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %add9, %20
  %rem10 = srem i32 %sub, 100
  %"a::var62" = sitofp i32 %rem10 to float
  %21 = fpext float %"a::var62" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %23 = load i32, i32* %m.addr, align 4
  %"a::var63" = sitofp i32 %23 to float
  %24 = fpext float %"a::var63" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var64" = fdiv float %"a::var62", %"a::var63"
  %26 = fpext float %"a::var64" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %29 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom14
  %30 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  store float %"a::var64", float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !31

for.end:                                          ; preds = %for.cond3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %32, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc53, %for.end20
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %m.addr, align 4
  %cmp22 = icmp slt i32 %33, %34
  br i1 %cmp22, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond21
  store i32 0, i32* %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc38, %for.body24
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %cmp26 = icmp sle i32 %35, %36
  br i1 %cmp26, label %for.body28, label %for.end40

for.body28:                                       ; preds = %for.cond25
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %37, %38
  %rem30 = srem i32 %add29, 100
  %"a::var65" = sitofp i32 %rem30 to float
  %39 = fpext float %"a::var65" to double
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0), double %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %41 = load i32, i32* %m.addr, align 4
  %"a::var66" = sitofp i32 %41 to float
  %42 = fpext float %"a::var66" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @82, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var67" = fdiv float %"a::var65", %"a::var66"
  %44 = fpext float %"a::var67" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @83, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %46 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %47 to i64
  %arrayidx35 = getelementptr inbounds [10 x float], [10 x float]* %46, i64 %idxprom34
  %48 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %48 to i64
  %arrayidx37 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx35, i64 0, i64 %idxprom36
  store float %"a::var67", float* %arrayidx37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body28
  %49 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %49, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond25, !llvm.loop !33

for.end40:                                        ; preds = %for.cond25
  %50 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %50, 1
  store i32 %add41, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.end40
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %m.addr, align 4
  %cmp43 = icmp slt i32 %51, %52
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond42
  %53 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %54 to i64
  %arrayidx47 = getelementptr inbounds [10 x float], [10 x float]* %53, i64 %idxprom46
  %55 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %55 to i64
  %arrayidx49 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float -9.990000e+02, float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %56 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %56, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond42, !llvm.loop !34

for.end52:                                        ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %57 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %57, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond21, !llvm.loop !35

for.end55:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.2(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca [16 x float]*, align 8
  %A.addr = alloca [10 x float]*, align 8
  %B.addr = alloca [16 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca float, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [16 x float]* %C, [16 x float]** %C.addr, align 8
  store [10 x float]* %A, [10 x float]** %A.addr, align 8
  store [16 x float]* %B, [16 x float]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store float 0.000000e+00, float* %temp2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load float, float* %alpha.addr, align 4
  %7 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i64 0, i64 %idxprom7
  %"a::var68" = load float, float* %arrayidx8, align 4
  %10 = fpext float %"a::var68" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var69" = fmul float %6, %"a::var68"
  %12 = fpext float %"a::var69" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %14 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %14, i64 %idxprom9
  %16 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var70" = load float, float* %arrayidx12, align 4
  %17 = fpext float %"a::var70" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var71" = fmul float %"a::var69", %"a::var70"
  %19 = fpext float %"a::var71" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %21 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %21, i64 %idxprom14
  %23 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var72" = load float, float* %arrayidx17, align 4
  %24 = fpext float %"a::var72" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var73" = fadd float %"a::var72", %"a::var71"
  %26 = fpext float %"a::var73" to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @89, i32 0, i32 0), double %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var73", float* %arrayidx17, align 4
  %28 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %29 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 %idxprom18
  %30 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var74" = load float, float* %arrayidx21, align 4
  %31 = fpext float %"a::var74" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %33 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [10 x float], [10 x float]* %33, i64 %idxprom22
  %35 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %35 to i64
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %"a::var75" = load float, float* %arrayidx25, align 4
  %36 = fpext float %"a::var75" to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @91, i32 0, i32 0), double %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var76" = fmul float %"a::var74", %"a::var75"
  %38 = fpext float %"a::var76" to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @92, i32 0, i32 0), double %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var77" = load float, float* %temp2, align 4
  %40 = fpext float %"a::var77" to double
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0), double %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var78" = fadd float %"a::var77", %"a::var76"
  %42 = fpext float %"a::var78" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @94, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var78", float* %temp2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %44 = load i32, i32* %k, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  %45 = load float, float* %beta.addr, align 4
  %46 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %47 to i64
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %46, i64 %idxprom28
  %48 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx29, i64 0, i64 %idxprom30
  %"a::var79" = load float, float* %arrayidx31, align 4
  %49 = fpext float %"a::var79" to double
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0), double %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var80" = fmul float %45, %"a::var79"
  %51 = fpext float %"a::var80" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @96, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var81" = load float, float* %alpha.addr, align 4
  %53 = fpext float %"a::var81" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @97, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %55 = load [16 x float]*, [16 x float]** %B.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %56 to i64
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %55, i64 %idxprom33
  %57 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %57 to i64
  %arrayidx36 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx34, i64 0, i64 %idxprom35
  %"a::var82" = load float, float* %arrayidx36, align 4
  %58 = fpext float %"a::var82" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @98, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var83" = fmul float %"a::var81", %"a::var82"
  %60 = fpext float %"a::var83" to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @99, i32 0, i32 0), double %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %62 = load [10 x float]*, [10 x float]** %A.addr, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %63 to i64
  %arrayidx39 = getelementptr inbounds [10 x float], [10 x float]* %62, i64 %idxprom38
  %64 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %64 to i64
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx39, i64 0, i64 %idxprom40
  %"a::var84" = load float, float* %arrayidx41, align 4
  %65 = fpext float %"a::var84" to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @100, i32 0, i32 0), double %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var85" = fmul float %"a::var83", %"a::var84"
  %67 = fpext float %"a::var85" to double
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @101, i32 0, i32 0), double %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var86" = fadd float %"a::var80", %"a::var85"
  %69 = fpext float %"a::var86" to double
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @102, i32 0, i32 0), double %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var87" = load float, float* %alpha.addr, align 4
  %71 = fpext float %"a::var87" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @103, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var88" = load float, float* %temp2, align 4
  %73 = fpext float %"a::var88" to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @104, i32 0, i32 0), double %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var89" = fmul float %"a::var87", %"a::var88"
  %75 = fpext float %"a::var89" to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @105, i32 0, i32 0), double %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var90" = fadd float %"a::var86", %"a::var89"
  %77 = fpext float %"a::var90" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %79 = load [16 x float]*, [16 x float]** %C.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %80 to i64
  %arrayidx47 = getelementptr inbounds [16 x float], [16 x float]* %79, i64 %idxprom46
  %81 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %81 to i64
  %arrayidx49 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx47, i64 0, i64 %idxprom48
  store float %"a::var90", float* %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %82 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %82, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond1, !llvm.loop !37

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %83 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %83, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond, !llvm.loop !38

for.end55:                                        ; preds = %for.cond
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
!13 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [16 x float]*)* @init_array}
!14 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [16 x float]*)* @kernel_symm}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [16 x float]*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [16 x float]*)* @kernel_symm.2}
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
