; ModuleID = './build/stats/2mm/1/2mm-standard-1.out.dynamic_instrumented.named.taffotmp.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"scalar(range(VAR_alpha_MIN,VAR_alpha_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/2mm.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar(range(VAR_beta_MIN,VAR_beta_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [45 x i8] c"scalar(range(VAR_tmp_MIN,VAR_tmp_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_C_MIN,VAR_C_MAX) final)\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [53 x i8] c"target('D') scalar(range(VAR_D_MIN,VAR_D_MAX) final)\00", section "llvm.metadata"
@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 12) final)\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 14) final)\00", section "llvm.metadata"
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %tmp = alloca [8 x [10 x float]], align 16
  %A = alloca [8 x [12 x float]], align 16
  %B = alloca [12 x [10 x float]], align 16
  %C = alloca [10 x [14 x float]], align 16
  %D = alloca [8 x [14 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 8, i32* %ni, align 4
  store i32 10, i32* %nj, align 4
  store i32 12, i32* %nk, align 4
  store i32 14, i32* %nl, align 4
  %alpha1 = bitcast float* %alpha to i8*
  %beta2 = bitcast float* %beta to i8*
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*
  %A4 = bitcast [8 x [12 x float]]* %A to i8*
  %B5 = bitcast [12 x [10 x float]]* %B to i8*
  %C6 = bitcast [10 x [14 x float]]* %C to i8*
  %D7 = bitcast [8 x [14 x float]]* %D to i8*
  %0 = load i32, i32* %ni, align 4
  %1 = load i32, i32* %nj, align 4
  %2 = load i32, i32* %nk, align 4
  %3 = load i32, i32* %nl, align 4
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.originalCall !13
  call void @timer_start()
  %4 = load i32, i32* %ni, align 4
  %5 = load i32, i32* %nj, align 4
  %6 = load i32, i32* %nk, align 4
  %7 = load i32, i32* %nl, align 4
  %"a::var24" = load float, float* %alpha, align 4
  %8 = fpext float %"a::var24" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var25" = load float, float* %beta, align 4
  %10 = fpext float %"a::var25" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %arraydecay12 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 0
  call void @kernel_2mm.2(i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %"a::var24", float noundef %"a::var25", [10 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13, [10 x float]* noundef %arraydecay14, [14 x float]* noundef %arraydecay15, [14 x float]* noundef %arraydecay16), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %ni, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %nl, align 4
  %cmp18 = icmp slt i32 %14, %15
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i64 0, i64 %idxprom
  %17 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i64 0, i64 %idxprom20
  %"a::var26" = load float, float* %arrayidx21, align 4
  %18 = fpext float %"a::var26" to double
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), double %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i64 0, i64 %idxprom22
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var26", float* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond17, !llvm.loop !15

for.end:                                          ; preds = %for.cond17
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end28:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !17 !taffo.initweight !18 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [12 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [14 x float]*, align 8
  %tmp.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [12 x float]* %A, [12 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [14 x float]* %D, [14 x float]** %D.addr, align 8
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8
  %"a::var27" = sitofp i32 %rem to float
  %9 = fpext float %"a::var27" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %11 = load i32, i32* %ni.addr, align 4
  %"a::var28" = sitofp i32 %11 to float
  %12 = fpext float %"a::var28" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var29" = fdiv float %"a::var27", %"a::var28"
  %14 = fpext float %"a::var29" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %16 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %16, i64 %idxprom
  %18 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var29", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !22

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nk.addr, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %for.body15, label %for.end35

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %nj.addr, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond16
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %26, 1
  %mul21 = mul nsw i32 %25, %add20
  %27 = load i32, i32* %nj.addr, align 4
  %rem22 = srem i32 %mul21, %27
  %"a::var30" = sitofp i32 %rem22 to float
  %28 = fpext float %"a::var30" to double
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @46, i32 0, i32 0), double %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %30 = load i32, i32* %nj.addr, align 4
  %"a::var31" = sitofp i32 %30 to float
  %31 = fpext float %"a::var31" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %33 = fpext float %"a::var32" to double
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), double %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %35 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %arrayidx27 = getelementptr inbounds [10 x float], [10 x float]* %35, i64 %idxprom26
  %37 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var32", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %38 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !24

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %39 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %39, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !25

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc58, %for.end35
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %nj.addr, align 4
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %for.body39, label %for.end60

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc55, %for.body39
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %nl.addr, align 4
  %cmp41 = icmp slt i32 %42, %43
  br i1 %cmp41, label %for.body43, label %for.end57

for.body43:                                       ; preds = %for.cond40
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %45, 3
  %mul45 = mul nsw i32 %44, %add44
  %add46 = add nsw i32 %mul45, 1
  %46 = load i32, i32* %nl.addr, align 4
  %rem47 = srem i32 %add46, %46
  %"a::var33" = sitofp i32 %rem47 to float
  %47 = fpext float %"a::var33" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %49 = load i32, i32* %nl.addr, align 4
  %"a::var34" = sitofp i32 %49 to float
  %50 = fpext float %"a::var34" to double
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), double %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %52 = fpext float %"a::var35" to double
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %54 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %55 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %54, i64 %idxprom51
  %56 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %"a::var35", float* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body43
  %57 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %57, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond40, !llvm.loop !26

for.end57:                                        ; preds = %for.cond40
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %58 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %58, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond36, !llvm.loop !27

for.end60:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc82, %for.end60
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %ni.addr, align 4
  %cmp62 = icmp slt i32 %59, %60
  br i1 %cmp62, label %for.body64, label %for.end84

for.body64:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc79, %for.body64
  %61 = load i32, i32* %j, align 4
  %62 = load i32, i32* %nl.addr, align 4
  %cmp66 = icmp slt i32 %61, %62
  br i1 %cmp66, label %for.body68, label %for.end81

for.body68:                                       ; preds = %for.cond65
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %j, align 4
  %add69 = add nsw i32 %64, 2
  %mul70 = mul nsw i32 %63, %add69
  %65 = load i32, i32* %nk.addr, align 4
  %rem71 = srem i32 %mul70, %65
  %"a::var36" = sitofp i32 %rem71 to float
  %66 = fpext float %"a::var36" to double
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %68 = load i32, i32* %nk.addr, align 4
  %"a::var37" = sitofp i32 %68 to float
  %69 = fpext float %"a::var37" to double
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var38" = fdiv float %"a::var36", %"a::var37"
  %71 = fpext float %"a::var38" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %73 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %74 to i64
  %arrayidx76 = getelementptr inbounds [14 x float], [14 x float]* %73, i64 %idxprom75
  %75 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx76, i64 0, i64 %idxprom77
  store float %"a::var38", float* %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body68
  %76 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %76, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond65, !llvm.loop !28

for.end81:                                        ; preds = %for.cond65
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %77 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %77, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond61, !llvm.loop !29

for.end84:                                        ; preds = %for.cond61
  store i32 0, i32* %i, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %for.end84
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %ni.addr, align 4
  %cmp86 = icmp slt i32 %78, %79
  br i1 %cmp86, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond85
  store i32 0, i32* %j, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc97, %for.body88
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %nj.addr, align 4
  %cmp90 = icmp slt i32 %80, %81
  br i1 %cmp90, label %for.body92, label %for.end99

for.body92:                                       ; preds = %for.cond89
  %82 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %83 to i64
  %arrayidx94 = getelementptr inbounds [10 x float], [10 x float]* %82, i64 %idxprom93
  %84 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %84 to i64
  %arrayidx96 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx94, i64 0, i64 %idxprom95
  store float 0.000000e+00, float* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body92
  %85 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %85, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond89, !llvm.loop !30

for.end99:                                        ; preds = %for.cond89
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %86 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %86, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond85, !llvm.loop !31

for.end102:                                       ; preds = %for.cond85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !32 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %tmp.addr = alloca [10 x float]*, align 8
  %A.addr = alloca [12 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [14 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 8
  store [12 x float]* %A, [12 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [14 x float]* %D, [14 x float]** %D.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end24

for.body3:                                        ; preds = %for.cond1
  %4 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %9 = load float, float* %alpha.addr, align 4
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var39" = load float, float* %arrayidx12, align 4
  %13 = fpext float %"a::var39" to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), double %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var40" = fmul float %9, %"a::var39"
  %15 = fpext float %"a::var40" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %18 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 %idxprom13
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var41" = load float, float* %arrayidx16, align 4
  %20 = fpext float %"a::var41" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var42" = fmul float %"a::var40", %"a::var41"
  %22 = fpext float %"a::var42" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %24 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [10 x float], [10 x float]* %24, i64 %idxprom18
  %26 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var43" = load float, float* %arrayidx21, align 4
  %27 = fpext float %"a::var43" to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var44" = fadd float %"a::var43", %"a::var42"
  %29 = fpext float %"a::var44" to double
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var44", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %31 = load i32, i32* %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !33

for.end:                                          ; preds = %for.cond6
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %32 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond1, !llvm.loop !34

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %33 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %33, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !35

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc62, %for.end27
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %ni.addr, align 4
  %cmp29 = icmp slt i32 %34, %35
  br i1 %cmp29, label %for.body30, label %for.end64

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc59, %for.body30
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %nl.addr, align 4
  %cmp32 = icmp slt i32 %36, %37
  br i1 %cmp32, label %for.body33, label %for.end61

for.body33:                                       ; preds = %for.cond31
  %38 = load float, float* %beta.addr, align 4
  %39 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %39, i64 %idxprom34
  %41 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i64 0, i64 %idxprom36
  %"a::var45" = load float, float* %arrayidx37, align 4
  %42 = fpext float %"a::var45" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var46" = fmul float %"a::var45", %38
  %44 = fpext float %"a::var46" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @62, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  store float %"a::var46", float* %arrayidx37, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.body33
  %46 = load i32, i32* %k, align 4
  %47 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %46, %47
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %48 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %49 to i64
  %arrayidx43 = getelementptr inbounds [10 x float], [10 x float]* %48, i64 %idxprom42
  %50 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx43, i64 0, i64 %idxprom44
  %"a::var47" = load float, float* %arrayidx45, align 4
  %51 = fpext float %"a::var47" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %53 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %54 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %54 to i64
  %arrayidx47 = getelementptr inbounds [14 x float], [14 x float]* %53, i64 %idxprom46
  %55 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %55 to i64
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx47, i64 0, i64 %idxprom48
  %"a::var48" = load float, float* %arrayidx49, align 4
  %56 = fpext float %"a::var48" to double
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var49" = fmul float %"a::var47", %"a::var48"
  %58 = fpext float %"a::var49" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %60 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %61 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %60, i64 %idxprom51
  %62 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %62 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %"a::var50" = load float, float* %arrayidx54, align 4
  %63 = fpext float %"a::var50" to double
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var51" = fadd float %"a::var50", %"a::var49"
  %65 = fpext float %"a::var51" to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var51", float* %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41
  %67 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond39, !llvm.loop !36

for.end58:                                        ; preds = %for.cond39
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %68 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %68, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond31, !llvm.loop !37

for.end61:                                        ; preds = %for.cond31
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %69 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %69, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond28, !llvm.loop !38

for.end64:                                        ; preds = %for.cond28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !13 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %A.addr = alloca [12 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [14 x float]*, align 8
  %tmp.addr = alloca [10 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store [12 x float]* %A, [12 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [14 x float]* %D, [14 x float]** %D.addr, align 8
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %0 = load float*, float** %alpha.addr, align 8
  store float 1.500000e+00, float* %0, align 4
  %1 = load float*, float** %beta.addr, align 8
  store float 0x3FF3333340000000, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %nk.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %ni.addr, align 4
  %rem = srem i32 %add, %8
  %"a::var52" = sitofp i32 %rem to float
  %9 = fpext float %"a::var52" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %11 = load i32, i32* %ni.addr, align 4
  %"a::var53" = sitofp i32 %11 to float
  %12 = fpext float %"a::var53" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var54" = fdiv float %"a::var52", %"a::var53"
  %14 = fpext float %"a::var54" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %16 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %16, i64 %idxprom
  %18 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom7
  store float %"a::var54", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !39

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !40

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nk.addr, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %for.body15, label %for.end35

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %nj.addr, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond16
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %26, 1
  %mul21 = mul nsw i32 %25, %add20
  %27 = load i32, i32* %nj.addr, align 4
  %rem22 = srem i32 %mul21, %27
  %"a::var55" = sitofp i32 %rem22 to float
  %28 = fpext float %"a::var55" to double
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %30 = load i32, i32* %nj.addr, align 4
  %"a::var56" = sitofp i32 %30 to float
  %31 = fpext float %"a::var56" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var57" = fdiv float %"a::var55", %"a::var56"
  %33 = fpext float %"a::var57" to double
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %35 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %arrayidx27 = getelementptr inbounds [10 x float], [10 x float]* %35, i64 %idxprom26
  %37 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var57", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %38 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond16, !llvm.loop !41

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %39 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %39, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond12, !llvm.loop !42

for.end35:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc58, %for.end35
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %nj.addr, align 4
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %for.body39, label %for.end60

for.body39:                                       ; preds = %for.cond36
  store i32 0, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc55, %for.body39
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %nl.addr, align 4
  %cmp41 = icmp slt i32 %42, %43
  br i1 %cmp41, label %for.body43, label %for.end57

for.body43:                                       ; preds = %for.cond40
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %45, 3
  %mul45 = mul nsw i32 %44, %add44
  %add46 = add nsw i32 %mul45, 1
  %46 = load i32, i32* %nl.addr, align 4
  %rem47 = srem i32 %add46, %46
  %"a::var58" = sitofp i32 %rem47 to float
  %47 = fpext float %"a::var58" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %49 = load i32, i32* %nl.addr, align 4
  %"a::var59" = sitofp i32 %49 to float
  %50 = fpext float %"a::var59" to double
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var60" = fdiv float %"a::var58", %"a::var59"
  %52 = fpext float %"a::var60" to double
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %54 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %55 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %54, i64 %idxprom51
  %56 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %"a::var60", float* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body43
  %57 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %57, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond40, !llvm.loop !43

for.end57:                                        ; preds = %for.cond40
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %58 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %58, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond36, !llvm.loop !44

for.end60:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc82, %for.end60
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %ni.addr, align 4
  %cmp62 = icmp slt i32 %59, %60
  br i1 %cmp62, label %for.body64, label %for.end84

for.body64:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc79, %for.body64
  %61 = load i32, i32* %j, align 4
  %62 = load i32, i32* %nl.addr, align 4
  %cmp66 = icmp slt i32 %61, %62
  br i1 %cmp66, label %for.body68, label %for.end81

for.body68:                                       ; preds = %for.cond65
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %j, align 4
  %add69 = add nsw i32 %64, 2
  %mul70 = mul nsw i32 %63, %add69
  %65 = load i32, i32* %nk.addr, align 4
  %rem71 = srem i32 %mul70, %65
  %"a::var61" = sitofp i32 %rem71 to float
  %66 = fpext float %"a::var61" to double
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %68 = load i32, i32* %nk.addr, align 4
  %"a::var62" = sitofp i32 %68 to float
  %69 = fpext float %"a::var62" to double
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  %"a::var63" = fdiv float %"a::var61", %"a::var62"
  %71 = fpext float %"a::var63" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %73 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %74 to i64
  %arrayidx76 = getelementptr inbounds [14 x float], [14 x float]* %73, i64 %idxprom75
  %75 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx76, i64 0, i64 %idxprom77
  store float %"a::var63", float* %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body68
  %76 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %76, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond65, !llvm.loop !45

for.end81:                                        ; preds = %for.cond65
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %77 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %77, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond61, !llvm.loop !46

for.end84:                                        ; preds = %for.cond61
  store i32 0, i32* %i, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %for.end84
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %ni.addr, align 4
  %cmp86 = icmp slt i32 %78, %79
  br i1 %cmp86, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond85
  store i32 0, i32* %j, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc97, %for.body88
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %nj.addr, align 4
  %cmp90 = icmp slt i32 %80, %81
  br i1 %cmp90, label %for.body92, label %for.end99

for.body92:                                       ; preds = %for.cond89
  %82 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %83 to i64
  %arrayidx94 = getelementptr inbounds [10 x float], [10 x float]* %82, i64 %idxprom93
  %84 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %84 to i64
  %arrayidx96 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx94, i64 0, i64 %idxprom95
  store float 0.000000e+00, float* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body92
  %85 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %85, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond89, !llvm.loop !47

for.end99:                                        ; preds = %for.cond89
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %86 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %86, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond85, !llvm.loop !48

for.end102:                                       ; preds = %for.cond85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !14 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %tmp.addr = alloca [10 x float]*, align 8
  %A.addr = alloca [12 x float]*, align 8
  %B.addr = alloca [10 x float]*, align 8
  %C.addr = alloca [14 x float]*, align 8
  %D.addr = alloca [14 x float]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store [10 x float]* %tmp, [10 x float]** %tmp.addr, align 8
  store [12 x float]* %A, [12 x float]** %A.addr, align 8
  store [10 x float]* %B, [10 x float]** %B.addr, align 8
  store [14 x float]* %C, [14 x float]** %C.addr, align 8
  store [14 x float]* %D, [14 x float]** %D.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end24

for.body3:                                        ; preds = %for.cond1
  %4 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i64 0, i64 %idxprom4
  store float 0.000000e+00, float* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %9 = load float, float* %alpha.addr, align 4
  %10 = load [12 x float]*, [12 x float]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 %idxprom9
  %12 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx10, i64 0, i64 %idxprom11
  %"a::var64" = load float, float* %arrayidx12, align 4
  %13 = fpext float %"a::var64" to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), double %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var65" = fmul float %9, %"a::var64"
  %15 = fpext float %"a::var65" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %17 = load [10 x float]*, [10 x float]** %B.addr, align 8
  %18 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 %idxprom13
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i64 0, i64 %idxprom15
  %"a::var66" = load float, float* %arrayidx16, align 4
  %20 = fpext float %"a::var66" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @82, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var67" = fmul float %"a::var65", %"a::var66"
  %22 = fpext float %"a::var67" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @83, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %24 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [10 x float], [10 x float]* %24, i64 %idxprom18
  %26 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var68" = load float, float* %arrayidx21, align 4
  %27 = fpext float %"a::var68" to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0), double %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var69" = fadd float %"a::var68", %"a::var67"
  %29 = fpext float %"a::var69" to double
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), double %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var69", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %31 = load i32, i32* %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !49

for.end:                                          ; preds = %for.cond6
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %32 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond1, !llvm.loop !50

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %33 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %33, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc62, %for.end27
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %ni.addr, align 4
  %cmp29 = icmp slt i32 %34, %35
  br i1 %cmp29, label %for.body30, label %for.end64

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc59, %for.body30
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %nl.addr, align 4
  %cmp32 = icmp slt i32 %36, %37
  br i1 %cmp32, label %for.body33, label %for.end61

for.body33:                                       ; preds = %for.cond31
  %38 = load float, float* %beta.addr, align 4
  %39 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %39, i64 %idxprom34
  %41 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i64 0, i64 %idxprom36
  %"a::var70" = load float, float* %arrayidx37, align 4
  %42 = fpext float %"a::var70" to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), double %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var71" = fmul float %"a::var70", %38
  %44 = fpext float %"a::var71" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  store float %"a::var71", float* %arrayidx37, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.body33
  %46 = load i32, i32* %k, align 4
  %47 = load i32, i32* %nj.addr, align 4
  %cmp40 = icmp slt i32 %46, %47
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %48 = load [10 x float]*, [10 x float]** %tmp.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %49 to i64
  %arrayidx43 = getelementptr inbounds [10 x float], [10 x float]* %48, i64 %idxprom42
  %50 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx43, i64 0, i64 %idxprom44
  %"a::var72" = load float, float* %arrayidx45, align 4
  %51 = fpext float %"a::var72" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %53 = load [14 x float]*, [14 x float]** %C.addr, align 8
  %54 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %54 to i64
  %arrayidx47 = getelementptr inbounds [14 x float], [14 x float]* %53, i64 %idxprom46
  %55 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %55 to i64
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx47, i64 0, i64 %idxprom48
  %"a::var73" = load float, float* %arrayidx49, align 4
  %56 = fpext float %"a::var73" to double
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @89, i32 0, i32 0), double %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var74" = fmul float %"a::var72", %"a::var73"
  %58 = fpext float %"a::var74" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %60 = load [14 x float]*, [14 x float]** %D.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %61 to i64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %60, i64 %idxprom51
  %62 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %62 to i64
  %arrayidx54 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx52, i64 0, i64 %idxprom53
  %"a::var75" = load float, float* %arrayidx54, align 4
  %63 = fpext float %"a::var75" to double
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @91, i32 0, i32 0), double %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var76" = fadd float %"a::var75", %"a::var74"
  %65 = fpext float %"a::var76" to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @92, i32 0, i32 0), double %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var76", float* %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41
  %67 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond39, !llvm.loop !52

for.end58:                                        ; preds = %for.cond39
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %68 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %68, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond31, !llvm.loop !53

for.end61:                                        ; preds = %for.cond31
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %69 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %69, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond28, !llvm.loop !54

for.end64:                                        ; preds = %for.cond28
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
!13 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array}
!14 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array.1}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm.2}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
