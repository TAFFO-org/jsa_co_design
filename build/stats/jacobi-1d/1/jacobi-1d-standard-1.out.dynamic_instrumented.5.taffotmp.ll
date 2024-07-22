; ModuleID = './build/stats/jacobi-1d/1/jacobi-1d-standard-1.out.dynamic_instrumented.named.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [15 x float] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata"
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
@41 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@42 = private unnamed_addr constant [9 x i8] c"a::var26\00", align 1
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
@55 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@56 = private unnamed_addr constant [9 x i8] c"a::var39\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"a::var40\00", align 1
@58 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@59 = private unnamed_addr constant [9 x i8] c"a::var41\00", align 1
@60 = private unnamed_addr constant [9 x i8] c"a::var42\00", align 1
@61 = private unnamed_addr constant [9 x i8] c"a::var43\00", align 1
@62 = private unnamed_addr constant [9 x i8] c"a::var44\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"a::var45\00", align 1
@64 = private unnamed_addr constant [9 x i8] c"a::var46\00", align 1
@65 = private unnamed_addr constant [9 x i8] c"a::var47\00", align 1
@66 = private unnamed_addr constant [9 x i8] c"a::var48\00", align 1
@67 = private unnamed_addr constant [9 x i8] c"a::var49\00", align 1
@68 = private unnamed_addr constant [9 x i8] c"a::var50\00", align 1
@69 = private unnamed_addr constant [9 x i8] c"a::var51\00", align 1
@70 = private unnamed_addr constant [9 x i8] c"a::var52\00", align 1
@71 = private unnamed_addr constant [9 x i8] c"a::var53\00", align 1
@72 = private unnamed_addr constant [9 x i8] c"a::var54\00", align 1
@73 = private unnamed_addr constant [9 x i8] c"a::var55\00", align 1
@74 = private unnamed_addr constant [9 x i8] c"a::var56\00", align 1
@75 = private unnamed_addr constant [9 x i8] c"a::var57\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"a::var58\00", align 1
@77 = private unnamed_addr constant [9 x i8] c"a::var59\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"a::var60\00", align 1
@79 = private unnamed_addr constant [9 x i8] c"a::var61\00", align 1
@80 = private unnamed_addr constant [9 x i8] c"a::var62\00", align 1
@81 = private unnamed_addr constant [9 x i8] c"a::var63\00", align 1
@82 = private unnamed_addr constant [9 x i8] c"a::var64\00", align 1
@83 = private unnamed_addr constant [9 x i8] c"a::var65\00", align 1
@84 = private unnamed_addr constant [9 x i8] c"a::var66\00", align 1
@85 = private unnamed_addr constant [9 x i8] c"a::var67\00", align 1
@86 = private unnamed_addr constant [9 x i8] c"a::var68\00", align 1
@87 = private unnamed_addr constant [9 x i8] c"a::var69\00", align 1
@88 = private unnamed_addr constant [9 x i8] c"a::var70\00", align 1
@89 = private unnamed_addr constant [9 x i8] c"a::var71\00", align 1
@90 = private unnamed_addr constant [9 x i8] c"a::var72\00", align 1

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
  %6 = fpext float %"a::var24" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i64 0, i64 %idxprom6
  store float %"a::var24", float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
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
  %3 = fpext float %"a::var25" to double
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), double %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var26" = fadd float %"a::var25", 2.000000e+00
  %5 = fpext float %"a::var26" to double
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), double %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %7 = load i32, i32* %n.addr, align 4
  %"a::var27" = sitofp i32 %7 to float
  %8 = fpext float %"a::var27" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %10 = fpext float %"a::var28" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %12 = load float*, float** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds float, float* %12, i64 %idxprom
  store float %"a::var28", float* %arrayidx, align 4
  %14 = load i32, i32* %i, align 4
  %"a::var29" = sitofp i32 %14 to float
  %15 = fpext float %"a::var29" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var30" = fadd float %"a::var29", 3.000000e+00
  %17 = fpext float %"a::var30" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @46, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %19 = load i32, i32* %n.addr, align 4
  %"a::var31" = sitofp i32 %19 to float
  %20 = fpext float %"a::var31" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var32" = fdiv float %"a::var30", %"a::var31"
  %22 = fpext float %"a::var32" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %24 = load float*, float** %B.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds float, float* %24, i64 %idxprom7
  store float %"a::var32", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
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
  %6 = fpext float %"a::var33" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load float*, float** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom5
  %"a::var34" = load float, float* %arrayidx6, align 4
  %10 = fpext float %"a::var34" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var35" = fadd float %"a::var33", %"a::var34"
  %12 = fpext float %"a::var35" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %14 = load float*, float** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %"a::var36" = load float, float* %arrayidx9, align 4
  %16 = fpext float %"a::var36" to double
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var37" = fadd float %"a::var35", %"a::var36"
  %18 = fpext float %"a::var37" to double
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var38" = fpext float %"a::var37" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %"a::var38", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0))
  %"a::var39" = fmul double 3.333300e-01, %"a::var38"
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %"a::var39", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var40" = fptrunc double %"a::var39" to float
  %22 = fpext float %"a::var40" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @58, i32 0, i32 0))
  %24 = load float*, float** %B.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds float, float* %24, i64 %idxprom12
  store float %"a::var40", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !25

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %28, 1
  %cmp16 = icmp slt i32 %27, %sub15
  br i1 %cmp16, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond14
  %29 = load float*, float** %B.addr, align 8
  %30 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %30, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %29, i64 %idxprom20
  %"a::var41" = load float, float* %arrayidx21, align 4
  %31 = fpext float %"a::var41" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %33 = load float*, float** %B.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds float, float* %33, i64 %idxprom22
  %"a::var42" = load float, float* %arrayidx23, align 4
  %35 = fpext float %"a::var42" to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var43" = fadd float %"a::var41", %"a::var42"
  %37 = fpext float %"a::var43" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %39 = load float*, float** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %40, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %39, i64 %idxprom26
  %"a::var44" = load float, float* %arrayidx27, align 4
  %41 = fpext float %"a::var44" to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @62, i32 0, i32 0), double %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var45" = fadd float %"a::var43", %"a::var44"
  %43 = fpext float %"a::var45" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var46" = fpext float %"a::var45" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %"a::var46", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0))
  %"a::var47" = fmul double 3.333300e-01, %"a::var46"
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), double %"a::var47", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var48" = fptrunc double %"a::var47" to float
  %47 = fpext float %"a::var48" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @58, i32 0, i32 0))
  %49 = load float*, float** %A.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %50 to i64
  %arrayidx33 = getelementptr inbounds float, float* %49, i64 %idxprom32
  store float %"a::var48", float* %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body18
  %51 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %51, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond14, !llvm.loop !26

for.end36:                                        ; preds = %for.cond14
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %52 = load i32, i32* %t, align 4
  %inc38 = add nsw i32 %52, 1
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
  %3 = fpext float %"a::var49" to double
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var50" = fadd float %"a::var49", 2.000000e+00
  %5 = fpext float %"a::var50" to double
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %7 = load i32, i32* %n.addr, align 4
  %"a::var51" = sitofp i32 %7 to float
  %8 = fpext float %"a::var51" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var52" = fdiv float %"a::var50", %"a::var51"
  %10 = fpext float %"a::var52" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %12 = load float*, float** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds float, float* %12, i64 %idxprom
  store float %"a::var52", float* %arrayidx, align 4
  %14 = load i32, i32* %i, align 4
  %"a::var53" = sitofp i32 %14 to float
  %15 = fpext float %"a::var53" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var54" = fadd float %"a::var53", 3.000000e+00
  %17 = fpext float %"a::var54" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %19 = load i32, i32* %n.addr, align 4
  %"a::var55" = sitofp i32 %19 to float
  %20 = fpext float %"a::var55" to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var56" = fdiv float %"a::var54", %"a::var55"
  %22 = fpext float %"a::var56" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %24 = load float*, float** %B.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds float, float* %24, i64 %idxprom7
  store float %"a::var56", float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
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
  %6 = fpext float %"a::var57" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load float*, float** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom5
  %"a::var58" = load float, float* %arrayidx6, align 4
  %10 = fpext float %"a::var58" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var59" = fadd float %"a::var57", %"a::var58"
  %12 = fpext float %"a::var59" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %14 = load float*, float** %A.addr, align 8
  %15 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %"a::var60" = load float, float* %arrayidx9, align 4
  %16 = fpext float %"a::var60" to double
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var61" = fadd float %"a::var59", %"a::var60"
  %18 = fpext float %"a::var61" to double
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var62" = fpext float %"a::var61" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), double %"a::var62", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0))
  %"a::var63" = fmul double 3.333300e-01, %"a::var62"
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0), double %"a::var63", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var64" = fptrunc double %"a::var63" to float
  %22 = fpext float %"a::var64" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @82, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @58, i32 0, i32 0))
  %24 = load float*, float** %B.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds float, float* %24, i64 %idxprom12
  store float %"a::var64", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !29

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %28, 1
  %cmp16 = icmp slt i32 %27, %sub15
  br i1 %cmp16, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond14
  %29 = load float*, float** %B.addr, align 8
  %30 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %30, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %29, i64 %idxprom20
  %"a::var65" = load float, float* %arrayidx21, align 4
  %31 = fpext float %"a::var65" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @83, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %33 = load float*, float** %B.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds float, float* %33, i64 %idxprom22
  %"a::var66" = load float, float* %arrayidx23, align 4
  %35 = fpext float %"a::var66" to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0), double %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var67" = fadd float %"a::var65", %"a::var66"
  %37 = fpext float %"a::var67" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %39 = load float*, float** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %40, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, float* %39, i64 %idxprom26
  %"a::var68" = load float, float* %arrayidx27, align 4
  %41 = fpext float %"a::var68" to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), double %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var69" = fadd float %"a::var67", %"a::var68"
  %43 = fpext float %"a::var69" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var70" = fpext float %"a::var69" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), double %"a::var70", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0))
  %"a::var71" = fmul double 3.333300e-01, %"a::var70"
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @89, i32 0, i32 0), double %"a::var71", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var72" = fptrunc double %"a::var71" to float
  %47 = fpext float %"a::var72" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @58, i32 0, i32 0))
  %49 = load float*, float** %A.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %50 to i64
  %arrayidx33 = getelementptr inbounds float, float* %49, i64 %idxprom32
  store float %"a::var72", float* %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body18
  %51 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %51, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond14, !llvm.loop !30

for.end36:                                        ; preds = %for.cond14
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %52 = load i32, i32* %t, align 4
  %inc38 = add nsw i32 %52, 1
  store i32 %inc38, i32* %t, align 4
  br label %for.cond, !llvm.loop !31

for.end39:                                        ; preds = %for.cond
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
