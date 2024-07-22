; ModuleID = './build/stats/ludcmp/1/ludcmp-standard-1.out.dynamic_instrumented.named.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_b_MIN,VAR_b_MAX) final)\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [53 x i8] c"target('x') scalar(range(VAR_x_MIN,VAR_x_MAX) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_y_MIN,VAR_y_MAX) final)\00", section "llvm.metadata"
@x_float = dso_local global [20 x float] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata"
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
@46 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@47 = private unnamed_addr constant [9 x i8] c"a::var30\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"a::var31\00", align 1
@49 = private unnamed_addr constant [9 x i8] c"a::var32\00", align 1
@50 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@51 = private unnamed_addr constant [9 x i8] c"a::var33\00", align 1
@52 = private unnamed_addr constant [9 x i8] c"a::var34\00", align 1
@53 = private unnamed_addr constant [9 x i8] c"a::var35\00", align 1
@54 = private unnamed_addr constant [9 x i8] c"a::var36\00", align 1
@55 = private unnamed_addr constant [9 x i8] c"a::var37\00", align 1
@56 = private unnamed_addr constant [9 x i8] c"a::var38\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"a::var39\00", align 1
@58 = private unnamed_addr constant [9 x i8] c"a::var40\00", align 1
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
@91 = private unnamed_addr constant [9 x i8] c"a::var73\00", align 1
@92 = private unnamed_addr constant [9 x i8] c"a::var74\00", align 1
@93 = private unnamed_addr constant [9 x i8] c"a::var75\00", align 1
@94 = private unnamed_addr constant [9 x i8] c"a::var76\00", align 1
@95 = private unnamed_addr constant [9 x i8] c"a::var77\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"a::var78\00", align 1
@97 = private unnamed_addr constant [9 x i8] c"a::var79\00", align 1
@98 = private unnamed_addr constant [9 x i8] c"a::var80\00", align 1
@99 = private unnamed_addr constant [9 x i8] c"a::var81\00", align 1
@100 = private unnamed_addr constant [9 x i8] c"a::var82\00", align 1
@101 = private unnamed_addr constant [9 x i8] c"a::var83\00", align 1
@102 = private unnamed_addr constant [9 x i8] c"a::var84\00", align 1
@103 = private unnamed_addr constant [9 x i8] c"a::var85\00", align 1
@104 = private unnamed_addr constant [9 x i8] c"a::var86\00", align 1
@105 = private unnamed_addr constant [9 x i8] c"a::var87\00", align 1
@106 = private unnamed_addr constant [9 x i8] c"a::var88\00", align 1
@107 = private unnamed_addr constant [9 x i8] c"a::var89\00", align 1
@108 = private unnamed_addr constant [9 x i8] c"a::var90\00", align 1
@109 = private unnamed_addr constant [9 x i8] c"a::var91\00", align 1
@110 = private unnamed_addr constant [9 x i8] c"a::var92\00", align 1
@111 = private unnamed_addr constant [9 x i8] c"a::var93\00", align 1
@112 = private unnamed_addr constant [9 x i8] c"a::var94\00", align 1
@113 = private unnamed_addr constant [9 x i8] c"a::var95\00", align 1
@114 = private unnamed_addr constant [9 x i8] c"a::var96\00", align 1
@115 = private unnamed_addr constant [9 x i8] c"a::var97\00", align 1
@116 = private unnamed_addr constant [9 x i8] c"a::var98\00", align 1
@117 = private unnamed_addr constant [9 x i8] c"a::var99\00", align 1
@118 = private unnamed_addr constant [10 x i8] c"a::var100\00", align 1
@119 = private unnamed_addr constant [10 x i8] c"a::var101\00", align 1
@120 = private unnamed_addr constant [10 x i8] c"a::var102\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"a::var103\00", align 1
@122 = private unnamed_addr constant [10 x i8] c"a::var104\00", align 1
@123 = private unnamed_addr constant [10 x i8] c"a::var105\00", align 1
@124 = private unnamed_addr constant [10 x i8] c"a::var106\00", align 1
@125 = private unnamed_addr constant [10 x i8] c"a::var107\00", align 1
@126 = private unnamed_addr constant [10 x i8] c"a::var108\00", align 1
@127 = private unnamed_addr constant [10 x i8] c"a::var109\00", align 1
@128 = private unnamed_addr constant [10 x i8] c"a::var110\00", align 1
@129 = private unnamed_addr constant [10 x i8] c"a::var111\00", align 1
@130 = private unnamed_addr constant [10 x i8] c"a::var112\00", align 1
@131 = private unnamed_addr constant [10 x i8] c"a::var113\00", align 1
@132 = private unnamed_addr constant [10 x i8] c"a::var114\00", align 1
@133 = private unnamed_addr constant [10 x i8] c"a::var115\00", align 1
@134 = private unnamed_addr constant [10 x i8] c"a::var116\00", align 1

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
  %A = alloca [20 x [20 x float]], align 16
  %B = alloca [20 x [20 x float]], align 16
  %b = alloca [20 x float], align 16
  %x = alloca [20 x float], align 16
  %y = alloca [20 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %n, align 4
  %A1 = bitcast [20 x [20 x float]]* %A to i8*
  %B2 = bitcast [20 x [20 x float]]* %B to i8*
  %b3 = bitcast [20 x float]* %b to i8*
  %x4 = bitcast [20 x float]* %x to i8*
  %y5 = bitcast [20 x float]* %y to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @init_array.1(i32 noundef %0, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.originalCall !13
  call void @timer_start()
  %1 = load i32, i32* %n, align 4
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %b, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @kernel_ludcmp.2(i32 noundef %1, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13), !taffo.originalCall !14
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %5 = fpext float %"a::var24" to double
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), double %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %7 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i64 0, i64 %idxprom14
  store float %"a::var24", float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !16 !taffo.initweight !17 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.equivalentChild !20 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %B.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store [20 x float]* %B, [20 x float]** %B.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %fn3 = bitcast float* %fn to i8*
  %0 = load i32, i32* %n.addr, align 4
  %"a::var25" = sitofp i32 %0 to float
  %1 = fpext float %"a::var25" to double
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), double %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  store float %"a::var25", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float*, float** %x.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %7 = load float*, float** %y.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds float, float* %7, i64 %idxprom5
  store float 0.000000e+00, float* %arrayidx6, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %"a::var26" = sitofp i32 %add to float
  %10 = fpext float %"a::var26" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var27" = load float, float* %fn, align 4
  %12 = fpext float %"a::var27" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var28" = fdiv float %"a::var26", %"a::var27"
  %14 = fpext float %"a::var28" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var29" = fpext float %"a::var28" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), double %"a::var29", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0))
  %"a::var30" = fdiv double %"a::var29", 2.000000e+00
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), double %"a::var30", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var31" = fadd double %"a::var30", 4.000000e+00
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), double %"a::var31", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var32" = fptrunc double %"a::var31" to float
  %19 = fpext float %"a::var32" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @50, i32 0, i32 0))
  %21 = load float*, float** %b.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds float, float* %21, i64 %idxprom12
  store float %"a::var32", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %for.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %24, %25
  br i1 %cmp15, label %for.body17, label %for.end51

for.body17:                                       ; preds = %for.cond14
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body17
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %26, %27
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %28 = load i32, i32* %j, align 4
  %sub = sub nsw i32 0, %28
  %29 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %29
  %"a::var33" = sitofp i32 %rem to float
  %30 = fpext float %"a::var33" to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %32 = load i32, i32* %n.addr, align 4
  %"a::var34" = sitofp i32 %32 to float
  %33 = fpext float %"a::var34" to double
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var35" = fdiv float %"a::var33", %"a::var34"
  %35 = fpext float %"a::var35" to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var36" = fadd float %"a::var35", 1.000000e+00
  %37 = fpext float %"a::var36" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %39, i64 %idxprom26
  %41 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %41 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var36", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !22

for.end32:                                        ; preds = %for.cond18
  %43 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %43, 1
  store i32 %add33, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end32
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp slt i32 %44, %45
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond34
  %46 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %46, i64 %idxprom38
  %48 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i64 0, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %49 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond34, !llvm.loop !23

for.end44:                                        ; preds = %for.cond34
  %50 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %50, i64 %idxprom45
  %52 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %52 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i64 0, i64 %idxprom47
  store float 1.000000e+00, float* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.end44
  %53 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %53, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond14, !llvm.loop !24

for.end51:                                        ; preds = %for.cond14
  store i32 0, i32* %r, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %for.end51
  %54 = load i32, i32* %r, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp53 = icmp slt i32 %54, %55
  br i1 %cmp53, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond52
  store i32 0, i32* %s, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.body55
  %56 = load i32, i32* %s, align 4
  %57 = load i32, i32* %n.addr, align 4
  %cmp57 = icmp slt i32 %56, %57
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %58 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %59 = load i32, i32* %r, align 4
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %58, i64 %idxprom60
  %60 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %60 to i64
  %arrayidx63 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i64 0, i64 %idxprom62
  store float 0.000000e+00, float* %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %61 = load i32, i32* %s, align 4
  %inc65 = add nsw i32 %61, 1
  store i32 %inc65, i32* %s, align 4
  br label %for.cond56, !llvm.loop !25

for.end66:                                        ; preds = %for.cond56
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %62 = load i32, i32* %r, align 4
  %inc68 = add nsw i32 %62, 1
  store i32 %inc68, i32* %r, align 4
  br label %for.cond52, !llvm.loop !26

for.end69:                                        ; preds = %for.cond52
  store i32 0, i32* %t, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %63 = load i32, i32* %t, align 4
  %64 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %63, %64
  br i1 %cmp71, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc98, %for.body73
  %65 = load i32, i32* %r, align 4
  %66 = load i32, i32* %n.addr, align 4
  %cmp75 = icmp slt i32 %65, %66
  br i1 %cmp75, label %for.body77, label %for.end100

for.body77:                                       ; preds = %for.cond74
  store i32 0, i32* %s, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc95, %for.body77
  %67 = load i32, i32* %s, align 4
  %68 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp slt i32 %67, %68
  br i1 %cmp79, label %for.body81, label %for.end97

for.body81:                                       ; preds = %for.cond78
  %69 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %70 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* %69, i64 %idxprom82
  %71 = load i32, i32* %t, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx83, i64 0, i64 %idxprom84
  %"a::var37" = load float, float* %arrayidx85, align 4
  %72 = fpext float %"a::var37" to double
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), double %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %74 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %75 = load i32, i32* %s, align 4
  %idxprom86 = sext i32 %75 to i64
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* %74, i64 %idxprom86
  %76 = load i32, i32* %t, align 4
  %idxprom88 = sext i32 %76 to i64
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx87, i64 0, i64 %idxprom88
  %"a::var38" = load float, float* %arrayidx89, align 4
  %77 = fpext float %"a::var38" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var39" = fmul float %"a::var37", %"a::var38"
  %79 = fpext float %"a::var39" to double
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %81 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %82 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %82 to i64
  %arrayidx91 = getelementptr inbounds [20 x float], [20 x float]* %81, i64 %idxprom90
  %83 = load i32, i32* %s, align 4
  %idxprom92 = sext i32 %83 to i64
  %arrayidx93 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx91, i64 0, i64 %idxprom92
  %"a::var40" = load float, float* %arrayidx93, align 4
  %84 = fpext float %"a::var40" to double
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), double %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var41" = fadd float %"a::var40", %"a::var39"
  %86 = fpext float %"a::var41" to double
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var41", float* %arrayidx93, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body81
  %88 = load i32, i32* %s, align 4
  %inc96 = add nsw i32 %88, 1
  store i32 %inc96, i32* %s, align 4
  br label %for.cond78, !llvm.loop !27

for.end97:                                        ; preds = %for.cond78
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %89 = load i32, i32* %r, align 4
  %inc99 = add nsw i32 %89, 1
  store i32 %inc99, i32* %r, align 4
  br label %for.cond74, !llvm.loop !28

for.end100:                                       ; preds = %for.cond74
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %90 = load i32, i32* %t, align 4
  %inc102 = add nsw i32 %90, 1
  store i32 %inc102, i32* %t, align 4
  br label %for.cond70, !llvm.loop !29

for.end103:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.end103
  %91 = load i32, i32* %r, align 4
  %92 = load i32, i32* %n.addr, align 4
  %cmp105 = icmp slt i32 %91, %92
  br i1 %cmp105, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  store i32 0, i32* %s, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc120, %for.body107
  %93 = load i32, i32* %s, align 4
  %94 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp slt i32 %93, %94
  br i1 %cmp109, label %for.body111, label %for.end122

for.body111:                                      ; preds = %for.cond108
  %95 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %96 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %96 to i64
  %arrayidx113 = getelementptr inbounds [20 x float], [20 x float]* %95, i64 %idxprom112
  %97 = load i32, i32* %s, align 4
  %idxprom114 = sext i32 %97 to i64
  %arrayidx115 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx113, i64 0, i64 %idxprom114
  %"a::var42" = load float, float* %arrayidx115, align 4
  %98 = fpext float %"a::var42" to double
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %100 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %101 = load i32, i32* %r, align 4
  %idxprom116 = sext i32 %101 to i64
  %arrayidx117 = getelementptr inbounds [20 x float], [20 x float]* %100, i64 %idxprom116
  %102 = load i32, i32* %s, align 4
  %idxprom118 = sext i32 %102 to i64
  %arrayidx119 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float %"a::var42", float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body111
  %103 = load i32, i32* %s, align 4
  %inc121 = add nsw i32 %103, 1
  store i32 %inc121, i32* %s, align 4
  br label %for.cond108, !llvm.loop !30

for.end122:                                       ; preds = %for.cond108
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %104 = load i32, i32* %r, align 4
  %inc124 = add nsw i32 %104, 1
  store i32 %inc124, i32* %r, align 4
  br label %for.cond104, !llvm.loop !31

for.end125:                                       ; preds = %for.cond104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.equivalentChild !32 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %w1 = bitcast float* %w to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom5
  %"a::var43" = load float, float* %arrayidx6, align 4
  %7 = fpext float %"a::var43" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var43", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %11 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %11, i64 %idxprom10
  %13 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i64 0, i64 %idxprom12
  %"a::var44" = load float, float* %arrayidx13, align 4
  %14 = fpext float %"a::var44" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @62, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %16 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %16, i64 %idxprom14
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var45" = load float, float* %arrayidx17, align 4
  %19 = fpext float %"a::var45" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var46" = fmul float %"a::var44", %"a::var45"
  %21 = fpext float %"a::var46" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var47" = load float, float* %w, align 4
  %23 = fpext float %"a::var47" to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), double %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var48" = fsub float %"a::var47", %"a::var46"
  %25 = fpext float %"a::var48" to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var48", float* %w, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !33

for.end:                                          ; preds = %for.cond7
  %28 = load float, float* %w, align 4
  %29 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %29, i64 %idxprom18
  %31 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %31 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var49" = load float, float* %arrayidx21, align 4
  %32 = fpext float %"a::var49" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var50" = fdiv float %28, %"a::var49"
  %34 = fpext float %"a::var50" to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %36 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %36, i64 %idxprom22
  %38 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var50", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %39 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %39, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond2, !llvm.loop !34

for.end28:                                        ; preds = %for.cond2
  %40 = load i32, i32* %i, align 4
  store i32 %40, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc56, %for.end28
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %41, %42
  br i1 %cmp30, label %for.body31, label %for.end58

for.body31:                                       ; preds = %for.cond29
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %44 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %43, i64 %idxprom32
  %45 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %"a::var51" = load float, float* %arrayidx35, align 4
  %46 = fpext float %"a::var51" to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var51", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.body31
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %48, %49
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  %50 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %50, i64 %idxprom39
  %52 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx40, i64 0, i64 %idxprom41
  %"a::var52" = load float, float* %arrayidx42, align 4
  %53 = fpext float %"a::var52" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %55 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %56 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %56 to i64
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %55, i64 %idxprom43
  %57 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i64 0, i64 %idxprom45
  %"a::var53" = load float, float* %arrayidx46, align 4
  %58 = fpext float %"a::var53" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var54" = fmul float %"a::var52", %"a::var53"
  %60 = fpext float %"a::var54" to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var55" = load float, float* %w, align 4
  %62 = fpext float %"a::var55" to double
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var56" = fsub float %"a::var55", %"a::var54"
  %64 = fpext float %"a::var56" to double
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var56", float* %w, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38
  %66 = load i32, i32* %k, align 4
  %inc50 = add nsw i32 %66, 1
  store i32 %inc50, i32* %k, align 4
  br label %for.cond36, !llvm.loop !35

for.end51:                                        ; preds = %for.cond36
  %67 = load float, float* %w, align 4
  %68 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %69 to i64
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %68, i64 %idxprom52
  %70 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %70 to i64
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i64 0, i64 %idxprom54
  store float %67, float* %arrayidx55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end51
  %71 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %71, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond29, !llvm.loop !36

for.end58:                                        ; preds = %for.cond29
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %72 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %72, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond, !llvm.loop !37

for.end61:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end61
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %n.addr, align 4
  %cmp63 = icmp slt i32 %73, %74
  br i1 %cmp63, label %for.body64, label %for.end85

for.body64:                                       ; preds = %for.cond62
  %75 = load float*, float** %b.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %76 to i64
  %arrayidx66 = getelementptr inbounds float, float* %75, i64 %idxprom65
  %"a::var57" = load float, float* %arrayidx66, align 4
  %77 = fpext float %"a::var57" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var57", float* %w, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc78, %for.body64
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %79, %80
  br i1 %cmp68, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond67
  %81 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %82 to i64
  %arrayidx71 = getelementptr inbounds [20 x float], [20 x float]* %81, i64 %idxprom70
  %83 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %83 to i64
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx71, i64 0, i64 %idxprom72
  %"a::var58" = load float, float* %arrayidx73, align 4
  %84 = fpext float %"a::var58" to double
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %86 = load float*, float** %y.addr, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %87 to i64
  %arrayidx75 = getelementptr inbounds float, float* %86, i64 %idxprom74
  %"a::var59" = load float, float* %arrayidx75, align 4
  %88 = fpext float %"a::var59" to double
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var60" = fmul float %"a::var58", %"a::var59"
  %90 = fpext float %"a::var60" to double
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var61" = load float, float* %w, align 4
  %92 = fpext float %"a::var61" to double
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var62" = fsub float %"a::var61", %"a::var60"
  %94 = fpext float %"a::var62" to double
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), double %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var62", float* %w, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body69
  %96 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %96, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond67, !llvm.loop !38

for.end80:                                        ; preds = %for.cond67
  %97 = load float, float* %w, align 4
  %98 = load float*, float** %y.addr, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %99 to i64
  %arrayidx82 = getelementptr inbounds float, float* %98, i64 %idxprom81
  store float %97, float* %arrayidx82, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %for.end80
  %100 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %100, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond62, !llvm.loop !39

for.end85:                                        ; preds = %for.cond62
  %101 = load i32, i32* %n.addr, align 4
  %sub86 = sub nsw i32 %101, 1
  store i32 %sub86, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc113, %for.end85
  %102 = load i32, i32* %i, align 4
  %cmp88 = icmp sge i32 %102, 0
  br i1 %cmp88, label %for.body89, label %for.end114

for.body89:                                       ; preds = %for.cond87
  %103 = load float*, float** %y.addr, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %104 to i64
  %arrayidx91 = getelementptr inbounds float, float* %103, i64 %idxprom90
  %"a::var63" = load float, float* %arrayidx91, align 4
  %105 = fpext float %"a::var63" to double
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0), double %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var63", float* %w, align 4
  %107 = load i32, i32* %i, align 4
  %add = add nsw i32 %107, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc103, %for.body89
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %108, %109
  br i1 %cmp93, label %for.body94, label %for.end105

for.body94:                                       ; preds = %for.cond92
  %110 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %111 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %111 to i64
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %110, i64 %idxprom95
  %112 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %112 to i64
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i64 0, i64 %idxprom97
  %"a::var64" = load float, float* %arrayidx98, align 4
  %113 = fpext float %"a::var64" to double
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @82, i32 0, i32 0), double %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %115 = load float*, float** %x.addr, align 8
  %116 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %116 to i64
  %arrayidx100 = getelementptr inbounds float, float* %115, i64 %idxprom99
  %"a::var65" = load float, float* %arrayidx100, align 4
  %117 = fpext float %"a::var65" to double
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @83, i32 0, i32 0), double %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var66" = fmul float %"a::var64", %"a::var65"
  %119 = fpext float %"a::var66" to double
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0), double %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var67" = load float, float* %w, align 4
  %121 = fpext float %"a::var67" to double
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), double %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var68" = fsub float %"a::var67", %"a::var66"
  %123 = fpext float %"a::var68" to double
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), double %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var68", float* %w, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body94
  %125 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %125, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond92, !llvm.loop !40

for.end105:                                       ; preds = %for.cond92
  %126 = load float, float* %w, align 4
  %127 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %128 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %128 to i64
  %arrayidx107 = getelementptr inbounds [20 x float], [20 x float]* %127, i64 %idxprom106
  %129 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %129 to i64
  %arrayidx109 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx107, i64 0, i64 %idxprom108
  %"a::var69" = load float, float* %arrayidx109, align 4
  %130 = fpext float %"a::var69" to double
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0), double %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var70" = fdiv float %126, %"a::var69"
  %132 = fpext float %"a::var70" to double
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), double %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %134 = load float*, float** %x.addr, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %135 to i64
  %arrayidx112 = getelementptr inbounds float, float* %134, i64 %idxprom111
  store float %"a::var70", float* %arrayidx112, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.end105
  %136 = load i32, i32* %i, align 4
  %dec = add nsw i32 %136, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond87, !llvm.loop !41

for.end114:                                       ; preds = %for.cond87
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.1(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !18 !taffo.initweight !19 !taffo.sourceFunction !13 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %B.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca float, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store [20 x float]* %B, [20 x float]** %B.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %fn3 = bitcast float* %fn to i8*
  %0 = load i32, i32* %n.addr, align 4
  %"a::var71" = sitofp i32 %0 to float
  %1 = fpext float %"a::var71" to double
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @89, i32 0, i32 0), double %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  store float %"a::var71", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float*, float** %x.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %7 = load float*, float** %y.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds float, float* %7, i64 %idxprom5
  store float 0.000000e+00, float* %arrayidx6, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %"a::var72" = sitofp i32 %add to float
  %10 = fpext float %"a::var72" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var73" = load float, float* %fn, align 4
  %12 = fpext float %"a::var73" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @91, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var74" = fdiv float %"a::var72", %"a::var73"
  %14 = fpext float %"a::var74" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @92, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var75" = fpext float %"a::var74" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0), double %"a::var75", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0))
  %"a::var76" = fdiv double %"a::var75", 2.000000e+00
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @94, i32 0, i32 0), double %"a::var76", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var77" = fadd double %"a::var76", 4.000000e+00
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0), double %"a::var77", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var78" = fptrunc double %"a::var77" to float
  %19 = fpext float %"a::var78" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @96, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @50, i32 0, i32 0))
  %21 = load float*, float** %b.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds float, float* %21, i64 %idxprom12
  store float %"a::var78", float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %for.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %24, %25
  br i1 %cmp15, label %for.body17, label %for.end51

for.body17:                                       ; preds = %for.cond14
  store i32 0, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body17
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %i, align 4
  %cmp19 = icmp sle i32 %26, %27
  br i1 %cmp19, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond18
  %28 = load i32, i32* %j, align 4
  %sub = sub nsw i32 0, %28
  %29 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %sub, %29
  %"a::var79" = sitofp i32 %rem to float
  %30 = fpext float %"a::var79" to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @97, i32 0, i32 0), double %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %32 = load i32, i32* %n.addr, align 4
  %"a::var80" = sitofp i32 %32 to float
  %33 = fpext float %"a::var80" to double
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @98, i32 0, i32 0), double %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %"a::var81" = fdiv float %"a::var79", %"a::var80"
  %35 = fpext float %"a::var81" to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @99, i32 0, i32 0), double %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var82" = fadd float %"a::var81", 1.000000e+00
  %37 = fpext float %"a::var82" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @100, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %39 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %39, i64 %idxprom26
  %41 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %41 to i64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx27, i64 0, i64 %idxprom28
  store float %"a::var82", float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %42 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond18, !llvm.loop !43

for.end32:                                        ; preds = %for.cond18
  %43 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %43, 1
  store i32 %add33, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end32
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp slt i32 %44, %45
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond34
  %46 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %46, i64 %idxprom38
  %48 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i64 0, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %49 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond34, !llvm.loop !44

for.end44:                                        ; preds = %for.cond34
  %50 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %50, i64 %idxprom45
  %52 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %52 to i64
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i64 0, i64 %idxprom47
  store float 1.000000e+00, float* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.end44
  %53 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %53, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond14, !llvm.loop !45

for.end51:                                        ; preds = %for.cond14
  store i32 0, i32* %r, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %for.end51
  %54 = load i32, i32* %r, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp53 = icmp slt i32 %54, %55
  br i1 %cmp53, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond52
  store i32 0, i32* %s, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.body55
  %56 = load i32, i32* %s, align 4
  %57 = load i32, i32* %n.addr, align 4
  %cmp57 = icmp slt i32 %56, %57
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %58 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %59 = load i32, i32* %r, align 4
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds [20 x float], [20 x float]* %58, i64 %idxprom60
  %60 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %60 to i64
  %arrayidx63 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i64 0, i64 %idxprom62
  store float 0.000000e+00, float* %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %61 = load i32, i32* %s, align 4
  %inc65 = add nsw i32 %61, 1
  store i32 %inc65, i32* %s, align 4
  br label %for.cond56, !llvm.loop !46

for.end66:                                        ; preds = %for.cond56
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %62 = load i32, i32* %r, align 4
  %inc68 = add nsw i32 %62, 1
  store i32 %inc68, i32* %r, align 4
  br label %for.cond52, !llvm.loop !47

for.end69:                                        ; preds = %for.cond52
  store i32 0, i32* %t, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %63 = load i32, i32* %t, align 4
  %64 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %63, %64
  br i1 %cmp71, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc98, %for.body73
  %65 = load i32, i32* %r, align 4
  %66 = load i32, i32* %n.addr, align 4
  %cmp75 = icmp slt i32 %65, %66
  br i1 %cmp75, label %for.body77, label %for.end100

for.body77:                                       ; preds = %for.cond74
  store i32 0, i32* %s, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc95, %for.body77
  %67 = load i32, i32* %s, align 4
  %68 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp slt i32 %67, %68
  br i1 %cmp79, label %for.body81, label %for.end97

for.body81:                                       ; preds = %for.cond78
  %69 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %70 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* %69, i64 %idxprom82
  %71 = load i32, i32* %t, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx83, i64 0, i64 %idxprom84
  %"a::var83" = load float, float* %arrayidx85, align 4
  %72 = fpext float %"a::var83" to double
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @101, i32 0, i32 0), double %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %74 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %75 = load i32, i32* %s, align 4
  %idxprom86 = sext i32 %75 to i64
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* %74, i64 %idxprom86
  %76 = load i32, i32* %t, align 4
  %idxprom88 = sext i32 %76 to i64
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx87, i64 0, i64 %idxprom88
  %"a::var84" = load float, float* %arrayidx89, align 4
  %77 = fpext float %"a::var84" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @102, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var85" = fmul float %"a::var83", %"a::var84"
  %79 = fpext float %"a::var85" to double
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @103, i32 0, i32 0), double %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %81 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %82 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %82 to i64
  %arrayidx91 = getelementptr inbounds [20 x float], [20 x float]* %81, i64 %idxprom90
  %83 = load i32, i32* %s, align 4
  %idxprom92 = sext i32 %83 to i64
  %arrayidx93 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx91, i64 0, i64 %idxprom92
  %"a::var86" = load float, float* %arrayidx93, align 4
  %84 = fpext float %"a::var86" to double
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @104, i32 0, i32 0), double %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var87" = fadd float %"a::var86", %"a::var85"
  %86 = fpext float %"a::var87" to double
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @105, i32 0, i32 0), double %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  store float %"a::var87", float* %arrayidx93, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body81
  %88 = load i32, i32* %s, align 4
  %inc96 = add nsw i32 %88, 1
  store i32 %inc96, i32* %s, align 4
  br label %for.cond78, !llvm.loop !48

for.end97:                                        ; preds = %for.cond78
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %89 = load i32, i32* %r, align 4
  %inc99 = add nsw i32 %89, 1
  store i32 %inc99, i32* %r, align 4
  br label %for.cond74, !llvm.loop !49

for.end100:                                       ; preds = %for.cond74
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %90 = load i32, i32* %t, align 4
  %inc102 = add nsw i32 %90, 1
  store i32 %inc102, i32* %t, align 4
  br label %for.cond70, !llvm.loop !50

for.end103:                                       ; preds = %for.cond70
  store i32 0, i32* %r, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.end103
  %91 = load i32, i32* %r, align 4
  %92 = load i32, i32* %n.addr, align 4
  %cmp105 = icmp slt i32 %91, %92
  br i1 %cmp105, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  store i32 0, i32* %s, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc120, %for.body107
  %93 = load i32, i32* %s, align 4
  %94 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp slt i32 %93, %94
  br i1 %cmp109, label %for.body111, label %for.end122

for.body111:                                      ; preds = %for.cond108
  %95 = load [20 x float]*, [20 x float]** %B.addr, align 8
  %96 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %96 to i64
  %arrayidx113 = getelementptr inbounds [20 x float], [20 x float]* %95, i64 %idxprom112
  %97 = load i32, i32* %s, align 4
  %idxprom114 = sext i32 %97 to i64
  %arrayidx115 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx113, i64 0, i64 %idxprom114
  %"a::var88" = load float, float* %arrayidx115, align 4
  %98 = fpext float %"a::var88" to double
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0), double %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %100 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %101 = load i32, i32* %r, align 4
  %idxprom116 = sext i32 %101 to i64
  %arrayidx117 = getelementptr inbounds [20 x float], [20 x float]* %100, i64 %idxprom116
  %102 = load i32, i32* %s, align 4
  %idxprom118 = sext i32 %102 to i64
  %arrayidx119 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx117, i64 0, i64 %idxprom118
  store float %"a::var88", float* %arrayidx119, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body111
  %103 = load i32, i32* %s, align 4
  %inc121 = add nsw i32 %103, 1
  store i32 %inc121, i32* %s, align 4
  br label %for.cond108, !llvm.loop !51

for.end122:                                       ; preds = %for.cond108
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %104 = load i32, i32* %r, align 4
  %inc124 = add nsw i32 %104, 1
  store i32 %inc124, i32* %r, align 4
  br label %for.cond104, !llvm.loop !52

for.end125:                                       ; preds = %for.cond104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.2(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.funinfo !16 !taffo.initweight !17 !taffo.sourceFunction !14 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [20 x float]*, align 8
  %b.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store [20 x float]* %A, [20 x float]** %A.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %w1 = bitcast float* %w to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  %4 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i64 0, i64 %idxprom5
  %"a::var89" = load float, float* %arrayidx6, align 4
  %7 = fpext float %"a::var89" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @107, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var89", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %11 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %11, i64 %idxprom10
  %13 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i64 0, i64 %idxprom12
  %"a::var90" = load float, float* %arrayidx13, align 4
  %14 = fpext float %"a::var90" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @108, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %16 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %16, i64 %idxprom14
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var91" = load float, float* %arrayidx17, align 4
  %19 = fpext float %"a::var91" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @109, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var92" = fmul float %"a::var90", %"a::var91"
  %21 = fpext float %"a::var92" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @110, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var93" = load float, float* %w, align 4
  %23 = fpext float %"a::var93" to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @111, i32 0, i32 0), double %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var94" = fsub float %"a::var93", %"a::var92"
  %25 = fpext float %"a::var94" to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @112, i32 0, i32 0), double %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var94", float* %w, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !53

for.end:                                          ; preds = %for.cond7
  %28 = load float, float* %w, align 4
  %29 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %29, i64 %idxprom18
  %31 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %31 to i64
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var95" = load float, float* %arrayidx21, align 4
  %32 = fpext float %"a::var95" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @113, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var96" = fdiv float %28, %"a::var95"
  %34 = fpext float %"a::var96" to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @114, i32 0, i32 0), double %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %36 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %36, i64 %idxprom22
  %38 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i64 0, i64 %idxprom24
  store float %"a::var96", float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %39 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %39, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond2, !llvm.loop !54

for.end28:                                        ; preds = %for.cond2
  %40 = load i32, i32* %i, align 4
  store i32 %40, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc56, %for.end28
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %41, %42
  br i1 %cmp30, label %for.body31, label %for.end58

for.body31:                                       ; preds = %for.cond29
  %43 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %44 to i64
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %43, i64 %idxprom32
  %45 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i64 0, i64 %idxprom34
  %"a::var97" = load float, float* %arrayidx35, align 4
  %46 = fpext float %"a::var97" to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @115, i32 0, i32 0), double %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var97", float* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.body31
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %48, %49
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  %50 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %50, i64 %idxprom39
  %52 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx40, i64 0, i64 %idxprom41
  %"a::var98" = load float, float* %arrayidx42, align 4
  %53 = fpext float %"a::var98" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @116, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %55 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %56 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %56 to i64
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %55, i64 %idxprom43
  %57 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx44, i64 0, i64 %idxprom45
  %"a::var99" = load float, float* %arrayidx46, align 4
  %58 = fpext float %"a::var99" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @117, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var100" = fmul float %"a::var98", %"a::var99"
  %60 = fpext float %"a::var100" to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @118, i32 0, i32 0), double %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var101" = load float, float* %w, align 4
  %62 = fpext float %"a::var101" to double
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0), double %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var102" = fsub float %"a::var101", %"a::var100"
  %64 = fpext float %"a::var102" to double
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @120, i32 0, i32 0), double %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var102", float* %w, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38
  %66 = load i32, i32* %k, align 4
  %inc50 = add nsw i32 %66, 1
  store i32 %inc50, i32* %k, align 4
  br label %for.cond36, !llvm.loop !55

for.end51:                                        ; preds = %for.cond36
  %67 = load float, float* %w, align 4
  %68 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %69 to i64
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %68, i64 %idxprom52
  %70 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %70 to i64
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i64 0, i64 %idxprom54
  store float %67, float* %arrayidx55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end51
  %71 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %71, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond29, !llvm.loop !56

for.end58:                                        ; preds = %for.cond29
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %72 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %72, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end61:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end61
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %n.addr, align 4
  %cmp63 = icmp slt i32 %73, %74
  br i1 %cmp63, label %for.body64, label %for.end85

for.body64:                                       ; preds = %for.cond62
  %75 = load float*, float** %b.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %76 to i64
  %arrayidx66 = getelementptr inbounds float, float* %75, i64 %idxprom65
  %"a::var103" = load float, float* %arrayidx66, align 4
  %77 = fpext float %"a::var103" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var103", float* %w, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc78, %for.body64
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %79, %80
  br i1 %cmp68, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond67
  %81 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %82 to i64
  %arrayidx71 = getelementptr inbounds [20 x float], [20 x float]* %81, i64 %idxprom70
  %83 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %83 to i64
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx71, i64 0, i64 %idxprom72
  %"a::var104" = load float, float* %arrayidx73, align 4
  %84 = fpext float %"a::var104" to double
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @122, i32 0, i32 0), double %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %86 = load float*, float** %y.addr, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %87 to i64
  %arrayidx75 = getelementptr inbounds float, float* %86, i64 %idxprom74
  %"a::var105" = load float, float* %arrayidx75, align 4
  %88 = fpext float %"a::var105" to double
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @123, i32 0, i32 0), double %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var106" = fmul float %"a::var104", %"a::var105"
  %90 = fpext float %"a::var106" to double
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @124, i32 0, i32 0), double %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var107" = load float, float* %w, align 4
  %92 = fpext float %"a::var107" to double
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @125, i32 0, i32 0), double %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var108" = fsub float %"a::var107", %"a::var106"
  %94 = fpext float %"a::var108" to double
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @126, i32 0, i32 0), double %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var108", float* %w, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body69
  %96 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %96, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond67, !llvm.loop !58

for.end80:                                        ; preds = %for.cond67
  %97 = load float, float* %w, align 4
  %98 = load float*, float** %y.addr, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %99 to i64
  %arrayidx82 = getelementptr inbounds float, float* %98, i64 %idxprom81
  store float %97, float* %arrayidx82, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %for.end80
  %100 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %100, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond62, !llvm.loop !59

for.end85:                                        ; preds = %for.cond62
  %101 = load i32, i32* %n.addr, align 4
  %sub86 = sub nsw i32 %101, 1
  store i32 %sub86, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc113, %for.end85
  %102 = load i32, i32* %i, align 4
  %cmp88 = icmp sge i32 %102, 0
  br i1 %cmp88, label %for.body89, label %for.end114

for.body89:                                       ; preds = %for.cond87
  %103 = load float*, float** %y.addr, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %104 to i64
  %arrayidx91 = getelementptr inbounds float, float* %103, i64 %idxprom90
  %"a::var109" = load float, float* %arrayidx91, align 4
  %105 = fpext float %"a::var109" to double
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @127, i32 0, i32 0), double %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  store float %"a::var109", float* %w, align 4
  %107 = load i32, i32* %i, align 4
  %add = add nsw i32 %107, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc103, %for.body89
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %108, %109
  br i1 %cmp93, label %for.body94, label %for.end105

for.body94:                                       ; preds = %for.cond92
  %110 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %111 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %111 to i64
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %110, i64 %idxprom95
  %112 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %112 to i64
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i64 0, i64 %idxprom97
  %"a::var110" = load float, float* %arrayidx98, align 4
  %113 = fpext float %"a::var110" to double
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @128, i32 0, i32 0), double %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %115 = load float*, float** %x.addr, align 8
  %116 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %116 to i64
  %arrayidx100 = getelementptr inbounds float, float* %115, i64 %idxprom99
  %"a::var111" = load float, float* %arrayidx100, align 4
  %117 = fpext float %"a::var111" to double
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @129, i32 0, i32 0), double %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var112" = fmul float %"a::var110", %"a::var111"
  %119 = fpext float %"a::var112" to double
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @130, i32 0, i32 0), double %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var113" = load float, float* %w, align 4
  %121 = fpext float %"a::var113" to double
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @131, i32 0, i32 0), double %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var114" = fsub float %"a::var113", %"a::var112"
  %123 = fpext float %"a::var114" to double
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @132, i32 0, i32 0), double %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  store float %"a::var114", float* %w, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body94
  %125 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %125, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond92, !llvm.loop !60

for.end105:                                       ; preds = %for.cond92
  %126 = load float, float* %w, align 4
  %127 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %128 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %128 to i64
  %arrayidx107 = getelementptr inbounds [20 x float], [20 x float]* %127, i64 %idxprom106
  %129 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %129 to i64
  %arrayidx109 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx107, i64 0, i64 %idxprom108
  %"a::var115" = load float, float* %arrayidx109, align 4
  %130 = fpext float %"a::var115" to double
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @133, i32 0, i32 0), double %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var116" = fdiv float %126, %"a::var115"
  %132 = fpext float %"a::var116" to double
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @134, i32 0, i32 0), double %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %134 = load float*, float** %x.addr, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %135 to i64
  %arrayidx112 = getelementptr inbounds float, float* %134, i64 %idxprom111
  store float %"a::var116", float* %arrayidx112, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.end105
  %136 = load i32, i32* %i, align 4
  %dec = add nsw i32 %136, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond87, !llvm.loop !61

for.end114:                                       ; preds = %for.cond87
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
!13 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array}
!14 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp}
!15 = distinct !{!15, !9}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array.1}
!21 = distinct !{!21, !9}
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
!32 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp.2}
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
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
