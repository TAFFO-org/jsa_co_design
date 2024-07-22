; ModuleID = './build/stats/heat-3d/128/heat-3d-standard-128.out.dynamic_instrumented.named.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"target('A') scalar(range(VAR_A_MIN,VAR_A_MAX) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/heat-3d.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [41 x i8] c"scalar(range(VAR_B_MIN,VAR_B_MAX) final)\00", section "llvm.metadata"
@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 80) final)\00", section "llvm.metadata"
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
@37 = private unnamed_addr constant [9 x i8] c"a::var24\00", align 1
@38 = private unnamed_addr constant [9 x i8] c"a::var25\00", align 1
@39 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@40 = private unnamed_addr constant [9 x i8] c"a::var26\00", align 1
@41 = private unnamed_addr constant [9 x i8] c"a::var27\00", align 1
@42 = private unnamed_addr constant [9 x i8] c"a::var28\00", align 1
@43 = private unnamed_addr constant [9 x i8] c"a::var29\00", align 1
@44 = private unnamed_addr constant [9 x i8] c"a::var30\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"a::var31\00", align 1
@46 = private unnamed_addr constant [9 x i8] c"a::var32\00", align 1
@47 = private unnamed_addr constant [12 x i8] c"timer_start\00", align 1
@48 = private unnamed_addr constant [11 x i8] c"timer_stop\00", align 1
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
@107 = private unnamed_addr constant [9 x i8] c"a::var91\00", align 1
@108 = private unnamed_addr constant [9 x i8] c"a::var92\00", align 1
@109 = private unnamed_addr constant [9 x i8] c"a::var93\00", align 1
@110 = private unnamed_addr constant [9 x i8] c"a::var94\00", align 1
@111 = private unnamed_addr constant [9 x i8] c"a::var95\00", align 1
@112 = private unnamed_addr constant [9 x i8] c"a::var96\00", align 1
@113 = private unnamed_addr constant [9 x i8] c"a::var97\00", align 1
@114 = private unnamed_addr constant [9 x i8] c"a::var98\00", align 1
@115 = private unnamed_addr constant [9 x i8] c"a::var99\00", align 1
@116 = private unnamed_addr constant [10 x i8] c"a::var100\00", align 1
@117 = private unnamed_addr constant [10 x i8] c"a::var101\00", align 1
@118 = private unnamed_addr constant [10 x i8] c"a::var102\00", align 1
@119 = private unnamed_addr constant [10 x i8] c"a::var103\00", align 1
@120 = private unnamed_addr constant [10 x i8] c"a::var104\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"a::var105\00", align 1
@122 = private unnamed_addr constant [10 x i8] c"a::var106\00", align 1
@123 = private unnamed_addr constant [10 x i8] c"a::var107\00", align 1
@124 = private unnamed_addr constant [10 x i8] c"a::var108\00", align 1
@125 = private unnamed_addr constant [10 x i8] c"a::var109\00", align 1
@126 = private unnamed_addr constant [10 x i8] c"a::var110\00", align 1
@127 = private unnamed_addr constant [10 x i8] c"a::var111\00", align 1
@128 = private unnamed_addr constant [10 x i8] c"a::var112\00", align 1
@129 = private unnamed_addr constant [10 x i8] c"a::var113\00", align 1
@130 = private unnamed_addr constant [10 x i8] c"a::var114\00", align 1
@131 = private unnamed_addr constant [10 x i8] c"a::var115\00", align 1
@132 = private unnamed_addr constant [10 x i8] c"a::var116\00", align 1
@133 = private unnamed_addr constant [10 x i8] c"a::var117\00", align 1
@134 = private unnamed_addr constant [10 x i8] c"a::var118\00", align 1
@135 = private unnamed_addr constant [10 x i8] c"a::var119\00", align 1
@136 = private unnamed_addr constant [10 x i8] c"a::var120\00", align 1
@137 = private unnamed_addr constant [10 x i8] c"a::var121\00", align 1
@138 = private unnamed_addr constant [10 x i8] c"a::var122\00", align 1
@139 = private unnamed_addr constant [10 x i8] c"a::var123\00", align 1
@140 = private unnamed_addr constant [10 x i8] c"a::var124\00", align 1
@141 = private unnamed_addr constant [10 x i8] c"a::var125\00", align 1
@142 = private unnamed_addr constant [10 x i8] c"a::var126\00", align 1
@143 = private unnamed_addr constant [10 x i8] c"a::var127\00", align 1
@144 = private unnamed_addr constant [10 x i8] c"a::var128\00", align 1
@145 = private unnamed_addr constant [10 x i8] c"a::var129\00", align 1
@146 = private unnamed_addr constant [10 x i8] c"a::var130\00", align 1
@147 = private unnamed_addr constant [10 x i8] c"a::var131\00", align 1
@148 = private unnamed_addr constant [10 x i8] c"a::var132\00", align 1
@149 = private unnamed_addr constant [10 x i8] c"a::var133\00", align 1
@150 = private unnamed_addr constant [10 x i8] c"a::var134\00", align 1
@151 = private unnamed_addr constant [10 x i8] c"a::var135\00", align 1
@152 = private unnamed_addr constant [10 x i8] c"a::var136\00", align 1
@153 = private unnamed_addr constant [10 x i8] c"a::var137\00", align 1
@154 = private unnamed_addr constant [10 x i8] c"a::var138\00", align 1
@155 = private unnamed_addr constant [10 x i8] c"a::var139\00", align 1
@156 = private unnamed_addr constant [10 x i8] c"a::var140\00", align 1
@157 = private unnamed_addr constant [10 x i8] c"a::var141\00", align 1
@158 = private unnamed_addr constant [10 x i8] c"a::var142\00", align 1
@159 = private unnamed_addr constant [10 x i8] c"a::var143\00", align 1
@160 = private unnamed_addr constant [10 x i8] c"a::var144\00", align 1
@161 = private unnamed_addr constant [10 x i8] c"a::var145\00", align 1
@162 = private unnamed_addr constant [10 x i8] c"a::var146\00", align 1
@163 = private unnamed_addr constant [10 x i8] c"a::var147\00", align 1

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !12 !taffo.initweight !13 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load float*, float** %val.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %"a::var24" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var24" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var25" = sitofp i32 %8 to float
  %9 = fpext float %"a::var25" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @38, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var26" = fmul float %"a::var24", %"a::var25"
  %11 = fpext float %"a::var26" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var26", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !15 !taffo.initweight !16 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %m.addr, align 4
  %3 = zext i32 %2 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load float*, float** %val.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds float, float* %8, i64 %10
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds float, float* %arrayidx, i64 %idxprom4
  %"a::var27" = load float, float* %arrayidx5, align 4
  %12 = fpext float %"a::var27" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %14 = load i32, i32* %factor.addr, align 4
  %"a::var28" = sitofp i32 %14 to float
  %15 = fpext float %"a::var28" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var29" = fmul float %"a::var27", %"a::var28"
  %17 = fpext float %"a::var29" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %19 = load float*, float** %val.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %19, i64 %21
  %22 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %22 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var29", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %24, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.equivalentChild !21 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %m.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, i32* %p.addr, align 4
  %5 = zext i32 %4 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %p.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %12 = load float*, float** %val.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nuw i64 %3, %5
  %15 = mul nsw i64 %idxprom, %14
  %arrayidx = getelementptr inbounds float, float* %12, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = mul nsw i64 %idxprom7, %5
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx, i64 %17
  %18 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx8, i64 %idxprom9
  %"a::var30" = load float, float* %arrayidx10, align 4
  %19 = fpext float %"a::var30" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %21 = load i32, i32* %factor.addr, align 4
  %"a::var31" = sitofp i32 %21 to float
  %22 = fpext float %"a::var31" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var32" = fmul float %"a::var30", %"a::var31"
  %24 = fpext float %"a::var32" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @46, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %26 = load float*, float** %val.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %27 to i64
  %28 = mul nuw i64 %3, %5
  %29 = mul nsw i64 %idxprom11, %28
  %arrayidx12 = getelementptr inbounds float, float* %26, i64 %29
  %30 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = mul nsw i64 %idxprom13, %5
  %arrayidx14 = getelementptr inbounds float, float* %arrayidx12, i64 %31
  %32 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %32 to i64
  %arrayidx16 = getelementptr inbounds float, float* %arrayidx14, i64 %idxprom15
  store float %"a::var32", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %33 = load i32, i32* %k, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !22

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %34 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !23

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.funinfo !25 !taffo.initweight !25 {
entry:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @PrintfTimerStr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @47, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !25 !taffo.initweight !25 {
entry:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @PrintfTimerStr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @48, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.funinfo !10 !taffo.initweight !11 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %A = alloca [5 x [5 x [5 x float]]], align 16
  %B = alloca [5 x [5 x [5 x float]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 5, i32* %n, align 4
  store i32 10, i32* %tsteps, align 4
  %A1 = bitcast [5 x [5 x [5 x float]]]* %A to i8*
  %B2 = bitcast [5 x [5 x [5 x float]]]* %B to i8*
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  call void @init_array.3(i32 noundef %0, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3), !taffo.originalCall !26
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %1 = bitcast [5 x [5 x float]]* %arraydecay4 to float*
  call void @scale_3d.2(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %1, i32 noundef 128), !taffo.originalCall !27
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  %2 = bitcast [5 x [5 x float]]* %arraydecay5 to float*
  call void @scale_3d.1(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %2, i32 noundef 128), !taffo.originalCall !27
  call void @timer_start()
  %3 = load i32, i32* %tsteps, align 4
  %4 = load i32, i32* %n, align 4
  %arraydecay6 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i64 0, i64 0
  call void @kernel_heat_3d.4(i32 noundef %3, i32 noundef %4, [5 x [5 x float]]* noundef %arraydecay6, [5 x [5 x float]]* noundef %arraydecay7), !taffo.originalCall !28
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc24, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %7, %8
  br i1 %cmp9, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond8
  store i32 0, i32* %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %9, %10
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i64 0, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom14
  %13 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i64 0, i64 %idxprom16
  %"a::var33" = load float, float* %arrayidx17, align 4
  %14 = fpext float %"a::var33" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i64 0, i64 %idxprom18
  %17 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i64 0, i64 %idxprom20
  %18 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx21, i64 0, i64 %idxprom22
  store float %"a::var33", float* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond11, !llvm.loop !29

for.end:                                          ; preds = %for.cond11
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond8, !llvm.loop !30

for.end26:                                        ; preds = %for.cond8
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %21 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

for.end29:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !19 !taffo.initweight !20 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.equivalentChild !32 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 8
  %B.addr = alloca [5 x [5 x float]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 8
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %k3 = bitcast i32* %k to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp slt i32 %4, %5
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %8, %9
  %add10 = add nsw i32 %add, %sub
  %"a::var34" = sitofp i32 %add10 to float
  %10 = fpext float %"a::var34" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var35" = fmul float %"a::var34", 1.000000e+01
  %12 = fpext float %"a::var35" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %14 = load i32, i32* %n.addr, align 4
  %"a::var36" = sitofp i32 %14 to float
  %15 = fpext float %"a::var36" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var37" = fdiv float %"a::var35", %"a::var36"
  %17 = fpext float %"a::var37" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %19 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %19, i64 %idxprom
  %21 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom12
  %22 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i64 0, i64 %idxprom14
  store float %"a::var37", float* %arrayidx15, align 4
  %23 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %23, i64 %idxprom16
  %25 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %26 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %"a::var37", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !33

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond4, !llvm.loop !34

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !35

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !15 !taffo.initweight !16 !taffo.equivalentChild !36 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 8
  %B.addr = alloca [5 x [5 x float]]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 8
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 8
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc209, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end211

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc98, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body3, label %for.end100

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc95, %for.body3
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %cmp6 = icmp slt i32 %3, %sub5
  br i1 %cmp6, label %for.body7, label %for.end97

for.body7:                                        ; preds = %for.cond4
  store i32 1, i32* %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 %6, 1
  %cmp10 = icmp slt i32 %5, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %7 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom12
  %10 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %"a::var38" = load float, float* %arrayidx15, align 4
  %11 = fpext float %"a::var38" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %13 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %13, i64 %idxprom16
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %16 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var39" = load float, float* %arrayidx21, align 4
  %17 = fpext float %"a::var39" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var40" = fmul float 2.000000e+00, %"a::var39"
  %19 = fpext float %"a::var40" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var41" = fsub float %"a::var38", %"a::var40"
  %21 = fpext float %"a::var41" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %23 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %24, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %23, i64 %idxprom24
  %25 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx25, i64 0, i64 %idxprom26
  %26 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx27, i64 0, i64 %idxprom28
  %"a::var42" = load float, float* %arrayidx29, align 4
  %27 = fpext float %"a::var42" to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), double %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var43" = fadd float %"a::var41", %"a::var42"
  %29 = fpext float %"a::var43" to double
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var44" = fmul float 1.250000e-01, %"a::var43"
  %31 = fpext float %"a::var44" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %33 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %33, i64 %idxprom32
  %35 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %35, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i64 0, i64 %idxprom35
  %36 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %36 to i64
  %arrayidx38 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx36, i64 0, i64 %idxprom37
  %"a::var45" = load float, float* %arrayidx38, align 4
  %37 = fpext float %"a::var45" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %39 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %39, i64 %idxprom39
  %41 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i64 0, i64 %idxprom41
  %42 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %42 to i64
  %arrayidx44 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx42, i64 0, i64 %idxprom43
  %"a::var46" = load float, float* %arrayidx44, align 4
  %43 = fpext float %"a::var46" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @62, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var47" = fmul float 2.000000e+00, %"a::var46"
  %45 = fpext float %"a::var47" to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var48" = fsub float %"a::var45", %"a::var47"
  %47 = fpext float %"a::var48" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %49 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %50 to i64
  %arrayidx48 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %49, i64 %idxprom47
  %51 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %51, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx48, i64 0, i64 %idxprom50
  %52 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %52 to i64
  %arrayidx53 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx51, i64 0, i64 %idxprom52
  %"a::var49" = load float, float* %arrayidx53, align 4
  %53 = fpext float %"a::var49" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var50" = fadd float %"a::var48", %"a::var49"
  %55 = fpext float %"a::var50" to double
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var51" = fmul float 1.250000e-01, %"a::var50"
  %57 = fpext float %"a::var51" to double
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var52" = fadd float %"a::var44", %"a::var51"
  %59 = fpext float %"a::var52" to double
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %61 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %62 to i64
  %arrayidx58 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %61, i64 %idxprom57
  %63 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %63 to i64
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx58, i64 0, i64 %idxprom59
  %64 = load i32, i32* %k, align 4
  %add61 = add nsw i32 %64, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx60, i64 0, i64 %idxprom62
  %"a::var53" = load float, float* %arrayidx63, align 4
  %65 = fpext float %"a::var53" to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %67 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %68 to i64
  %arrayidx65 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %67, i64 %idxprom64
  %69 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %69 to i64
  %arrayidx67 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx65, i64 0, i64 %idxprom66
  %70 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %70 to i64
  %arrayidx69 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx67, i64 0, i64 %idxprom68
  %"a::var54" = load float, float* %arrayidx69, align 4
  %71 = fpext float %"a::var54" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var55" = fmul float 2.000000e+00, %"a::var54"
  %73 = fpext float %"a::var55" to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var56" = fsub float %"a::var53", %"a::var55"
  %75 = fpext float %"a::var56" to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %77 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %78 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %77, i64 %idxprom72
  %79 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %79 to i64
  %arrayidx75 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx73, i64 0, i64 %idxprom74
  %80 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %80, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx75, i64 0, i64 %idxprom77
  %"a::var57" = load float, float* %arrayidx78, align 4
  %81 = fpext float %"a::var57" to double
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var58" = fadd float %"a::var56", %"a::var57"
  %83 = fpext float %"a::var58" to double
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var59" = fmul float 1.250000e-01, %"a::var58"
  %85 = fpext float %"a::var59" to double
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var60" = fadd float %"a::var52", %"a::var59"
  %87 = fpext float %"a::var60" to double
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %89 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %90 to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %89, i64 %idxprom82
  %91 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %91 to i64
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx83, i64 0, i64 %idxprom84
  %92 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %92 to i64
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx85, i64 0, i64 %idxprom86
  %"a::var61" = load float, float* %arrayidx87, align 4
  %93 = fpext float %"a::var61" to double
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var62" = fadd float %"a::var60", %"a::var61"
  %95 = fpext float %"a::var62" to double
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %97 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %98 to i64
  %arrayidx90 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %97, i64 %idxprom89
  %99 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %99 to i64
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx90, i64 0, i64 %idxprom91
  %100 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %100 to i64
  %arrayidx94 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i64 0, i64 %idxprom93
  store float %"a::var62", float* %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %101 = load i32, i32* %k, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8, !llvm.loop !37

for.end:                                          ; preds = %for.cond8
  br label %for.inc95

for.inc95:                                        ; preds = %for.end
  %102 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %102, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond4, !llvm.loop !38

for.end97:                                        ; preds = %for.cond4
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %103 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %103, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond1, !llvm.loop !39

for.end100:                                       ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc206, %for.end100
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %n.addr, align 4
  %sub102 = sub nsw i32 %105, 1
  %cmp103 = icmp slt i32 %104, %sub102
  br i1 %cmp103, label %for.body104, label %for.end208

for.body104:                                      ; preds = %for.cond101
  store i32 1, i32* %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc203, %for.body104
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %n.addr, align 4
  %sub106 = sub nsw i32 %107, 1
  %cmp107 = icmp slt i32 %106, %sub106
  br i1 %cmp107, label %for.body108, label %for.end205

for.body108:                                      ; preds = %for.cond105
  store i32 1, i32* %k, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc200, %for.body108
  %108 = load i32, i32* %k, align 4
  %109 = load i32, i32* %n.addr, align 4
  %sub110 = sub nsw i32 %109, 1
  %cmp111 = icmp slt i32 %108, %sub110
  br i1 %cmp111, label %for.body112, label %for.end202

for.body112:                                      ; preds = %for.cond109
  %110 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %111 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %111, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %110, i64 %idxprom114
  %112 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %112 to i64
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx115, i64 0, i64 %idxprom116
  %113 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %113 to i64
  %arrayidx119 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i64 0, i64 %idxprom118
  %"a::var63" = load float, float* %arrayidx119, align 4
  %114 = fpext float %"a::var63" to double
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %116 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %117 to i64
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %116, i64 %idxprom120
  %118 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %118 to i64
  %arrayidx123 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i64 0, i64 %idxprom122
  %119 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %119 to i64
  %arrayidx125 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx123, i64 0, i64 %idxprom124
  %"a::var64" = load float, float* %arrayidx125, align 4
  %120 = fpext float %"a::var64" to double
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), double %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var65" = fmul float 2.000000e+00, %"a::var64"
  %122 = fpext float %"a::var65" to double
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0), double %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var66" = fsub float %"a::var63", %"a::var65"
  %124 = fpext float %"a::var66" to double
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @82, i32 0, i32 0), double %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %126 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %127 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %127, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %126, i64 %idxprom129
  %128 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %128 to i64
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx130, i64 0, i64 %idxprom131
  %129 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %129 to i64
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx132, i64 0, i64 %idxprom133
  %"a::var67" = load float, float* %arrayidx134, align 4
  %130 = fpext float %"a::var67" to double
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @83, i32 0, i32 0), double %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var68" = fadd float %"a::var66", %"a::var67"
  %132 = fpext float %"a::var68" to double
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0), double %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var69" = fmul float 1.250000e-01, %"a::var68"
  %134 = fpext float %"a::var69" to double
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), double %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %136 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %137 to i64
  %arrayidx138 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %136, i64 %idxprom137
  %138 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %138, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx138, i64 0, i64 %idxprom140
  %139 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %139 to i64
  %arrayidx143 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx141, i64 0, i64 %idxprom142
  %"a::var70" = load float, float* %arrayidx143, align 4
  %140 = fpext float %"a::var70" to double
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), double %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %142 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %143 to i64
  %arrayidx145 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %142, i64 %idxprom144
  %144 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %144 to i64
  %arrayidx147 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx145, i64 0, i64 %idxprom146
  %145 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %145 to i64
  %arrayidx149 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx147, i64 0, i64 %idxprom148
  %"a::var71" = load float, float* %arrayidx149, align 4
  %146 = fpext float %"a::var71" to double
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0), double %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var72" = fmul float 2.000000e+00, %"a::var71"
  %148 = fpext float %"a::var72" to double
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), double %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var73" = fsub float %"a::var70", %"a::var72"
  %150 = fpext float %"a::var73" to double
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @89, i32 0, i32 0), double %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %152 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %153 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %153 to i64
  %arrayidx153 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %152, i64 %idxprom152
  %154 = load i32, i32* %j, align 4
  %sub154 = sub nsw i32 %154, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx153, i64 0, i64 %idxprom155
  %155 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %155 to i64
  %arrayidx158 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx156, i64 0, i64 %idxprom157
  %"a::var74" = load float, float* %arrayidx158, align 4
  %156 = fpext float %"a::var74" to double
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), double %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var75" = fadd float %"a::var73", %"a::var74"
  %158 = fpext float %"a::var75" to double
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @91, i32 0, i32 0), double %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var76" = fmul float 1.250000e-01, %"a::var75"
  %160 = fpext float %"a::var76" to double
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @92, i32 0, i32 0), double %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var77" = fadd float %"a::var69", %"a::var76"
  %162 = fpext float %"a::var77" to double
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0), double %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %164 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %165 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %165 to i64
  %arrayidx163 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %164, i64 %idxprom162
  %166 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %166 to i64
  %arrayidx165 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx163, i64 0, i64 %idxprom164
  %167 = load i32, i32* %k, align 4
  %add166 = add nsw i32 %167, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx165, i64 0, i64 %idxprom167
  %"a::var78" = load float, float* %arrayidx168, align 4
  %168 = fpext float %"a::var78" to double
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @94, i32 0, i32 0), double %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %170 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %171 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %171 to i64
  %arrayidx170 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %170, i64 %idxprom169
  %172 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %172 to i64
  %arrayidx172 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx170, i64 0, i64 %idxprom171
  %173 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %173 to i64
  %arrayidx174 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx172, i64 0, i64 %idxprom173
  %"a::var79" = load float, float* %arrayidx174, align 4
  %174 = fpext float %"a::var79" to double
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0), double %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var80" = fmul float 2.000000e+00, %"a::var79"
  %176 = fpext float %"a::var80" to double
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @96, i32 0, i32 0), double %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var81" = fsub float %"a::var78", %"a::var80"
  %178 = fpext float %"a::var81" to double
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @97, i32 0, i32 0), double %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %180 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %181 to i64
  %arrayidx178 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %180, i64 %idxprom177
  %182 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %182 to i64
  %arrayidx180 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx178, i64 0, i64 %idxprom179
  %183 = load i32, i32* %k, align 4
  %sub181 = sub nsw i32 %183, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx180, i64 0, i64 %idxprom182
  %"a::var82" = load float, float* %arrayidx183, align 4
  %184 = fpext float %"a::var82" to double
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @98, i32 0, i32 0), double %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var83" = fadd float %"a::var81", %"a::var82"
  %186 = fpext float %"a::var83" to double
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @99, i32 0, i32 0), double %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var84" = fmul float 1.250000e-01, %"a::var83"
  %188 = fpext float %"a::var84" to double
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @100, i32 0, i32 0), double %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var85" = fadd float %"a::var77", %"a::var84"
  %190 = fpext float %"a::var85" to double
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @101, i32 0, i32 0), double %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %192 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %193 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %193 to i64
  %arrayidx188 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %192, i64 %idxprom187
  %194 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %194 to i64
  %arrayidx190 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx188, i64 0, i64 %idxprom189
  %195 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %195 to i64
  %arrayidx192 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx190, i64 0, i64 %idxprom191
  %"a::var86" = load float, float* %arrayidx192, align 4
  %196 = fpext float %"a::var86" to double
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @102, i32 0, i32 0), double %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var87" = fadd float %"a::var85", %"a::var86"
  %198 = fpext float %"a::var87" to double
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @103, i32 0, i32 0), double %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %200 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %201 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %201 to i64
  %arrayidx195 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %200, i64 %idxprom194
  %202 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %202 to i64
  %arrayidx197 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx195, i64 0, i64 %idxprom196
  %203 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %203 to i64
  %arrayidx199 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx197, i64 0, i64 %idxprom198
  store float %"a::var87", float* %arrayidx199, align 4
  br label %for.inc200

for.inc200:                                       ; preds = %for.body112
  %204 = load i32, i32* %k, align 4
  %inc201 = add nsw i32 %204, 1
  store i32 %inc201, i32* %k, align 4
  br label %for.cond109, !llvm.loop !40

for.end202:                                       ; preds = %for.cond109
  br label %for.inc203

for.inc203:                                       ; preds = %for.end202
  %205 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %205, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond105, !llvm.loop !41

for.end205:                                       ; preds = %for.cond105
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %206 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %206, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond101, !llvm.loop !42

for.end208:                                       ; preds = %for.cond101
  br label %for.inc209

for.inc209:                                       ; preds = %for.end208
  %207 = load i32, i32* %t, align 4
  %inc210 = add nsw i32 %207, 1
  store i32 %inc210, i32* %t, align 4
  br label %for.cond, !llvm.loop !43

for.end211:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_3d.1(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !27 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %m.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, i32* %p.addr, align 4
  %5 = zext i32 %4 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %p.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %12 = load float*, float** %val.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nuw i64 %3, %5
  %15 = mul nsw i64 %idxprom, %14
  %arrayidx = getelementptr inbounds float, float* %12, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = mul nsw i64 %idxprom7, %5
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx, i64 %17
  %18 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx8, i64 %idxprom9
  %"a::var88" = load float, float* %arrayidx10, align 4
  %19 = fpext float %"a::var88" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @104, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %21 = load i32, i32* %factor.addr, align 4
  %"a::var89" = sitofp i32 %21 to float
  %22 = fpext float %"a::var89" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @105, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var90" = fmul float %"a::var88", %"a::var89"
  %24 = fpext float %"a::var90" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %26 = load float*, float** %val.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %27 to i64
  %28 = mul nuw i64 %3, %5
  %29 = mul nsw i64 %idxprom11, %28
  %arrayidx12 = getelementptr inbounds float, float* %26, i64 %29
  %30 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = mul nsw i64 %idxprom13, %5
  %arrayidx14 = getelementptr inbounds float, float* %arrayidx12, i64 %31
  %32 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %32 to i64
  %arrayidx16 = getelementptr inbounds float, float* %arrayidx14, i64 %idxprom15
  store float %"a::var90", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %33 = load i32, i32* %k, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !44

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %34 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !45

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !46

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_3d.2(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !19 !taffo.initweight !20 !taffo.sourceFunction !27 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %m.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, i32* %p.addr, align 4
  %5 = zext i32 %4 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %p.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %12 = load float*, float** %val.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nuw i64 %3, %5
  %15 = mul nsw i64 %idxprom, %14
  %arrayidx = getelementptr inbounds float, float* %12, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = mul nsw i64 %idxprom7, %5
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx, i64 %17
  %18 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx8, i64 %idxprom9
  %"a::var91" = load float, float* %arrayidx10, align 4
  %19 = fpext float %"a::var91" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @107, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %21 = load i32, i32* %factor.addr, align 4
  %"a::var92" = sitofp i32 %21 to float
  %22 = fpext float %"a::var92" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @108, i32 0, i32 0), double %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var93" = fmul float %"a::var91", %"a::var92"
  %24 = fpext float %"a::var93" to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @109, i32 0, i32 0), double %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %26 = load float*, float** %val.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %27 to i64
  %28 = mul nuw i64 %3, %5
  %29 = mul nsw i64 %idxprom11, %28
  %arrayidx12 = getelementptr inbounds float, float* %26, i64 %29
  %30 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = mul nsw i64 %idxprom13, %5
  %arrayidx14 = getelementptr inbounds float, float* %arrayidx12, i64 %31
  %32 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %32 to i64
  %arrayidx16 = getelementptr inbounds float, float* %arrayidx14, i64 %idxprom15
  store float %"a::var93", float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %33 = load i32, i32* %k, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !47

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %34 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !48

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !12 !taffo.initweight !13 !taffo.sourceFunction !26 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 8
  %B.addr = alloca [5 x [5 x float]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 8
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 8
  %i1 = bitcast i32* %i to i8*
  %j2 = bitcast i32* %j to i8*
  %k3 = bitcast i32* %k to i8*
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp slt i32 %4, %5
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %8, %9
  %add10 = add nsw i32 %add, %sub
  %"a::var94" = sitofp i32 %add10 to float
  %10 = fpext float %"a::var94" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @110, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var95" = fmul float %"a::var94", 1.000000e+01
  %12 = fpext float %"a::var95" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @111, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %14 = load i32, i32* %n.addr, align 4
  %"a::var96" = sitofp i32 %14 to float
  %15 = fpext float %"a::var96" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @112, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var97" = fdiv float %"a::var95", %"a::var96"
  %17 = fpext float %"a::var97" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @113, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %19 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %19, i64 %idxprom
  %21 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom12
  %22 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i64 0, i64 %idxprom14
  store float %"a::var97", float* %arrayidx15, align 4
  %23 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %23, i64 %idxprom16
  %25 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %26 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %"a::var97", float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !50

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond4, !llvm.loop !51

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.4(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.funinfo !15 !taffo.initweight !16 !taffo.sourceFunction !28 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [5 x [5 x float]]*, align 8
  %B.addr = alloca [5 x [5 x float]]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [5 x [5 x float]]* %A, [5 x [5 x float]]** %A.addr, align 8
  store [5 x [5 x float]]* %B, [5 x [5 x float]]** %B.addr, align 8
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc209, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end211

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc98, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body3, label %for.end100

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc95, %for.body3
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %cmp6 = icmp slt i32 %3, %sub5
  br i1 %cmp6, label %for.body7, label %for.end97

for.body7:                                        ; preds = %for.cond4
  store i32 1, i32* %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 %6, 1
  %cmp10 = icmp slt i32 %5, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %7 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i64 0, i64 %idxprom12
  %10 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i64 0, i64 %idxprom14
  %"a::var98" = load float, float* %arrayidx15, align 4
  %11 = fpext float %"a::var98" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @114, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %13 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %13, i64 %idxprom16
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx17, i64 0, i64 %idxprom18
  %16 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx19, i64 0, i64 %idxprom20
  %"a::var99" = load float, float* %arrayidx21, align 4
  %17 = fpext float %"a::var99" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @115, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var100" = fmul float 2.000000e+00, %"a::var99"
  %19 = fpext float %"a::var100" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @116, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var101" = fsub float %"a::var98", %"a::var100"
  %21 = fpext float %"a::var101" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @117, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %23 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %24 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %24, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %23, i64 %idxprom24
  %25 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx25, i64 0, i64 %idxprom26
  %26 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx27, i64 0, i64 %idxprom28
  %"a::var102" = load float, float* %arrayidx29, align 4
  %27 = fpext float %"a::var102" to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @118, i32 0, i32 0), double %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var103" = fadd float %"a::var101", %"a::var102"
  %29 = fpext float %"a::var103" to double
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0), double %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var104" = fmul float 1.250000e-01, %"a::var103"
  %31 = fpext float %"a::var104" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @120, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %33 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %33, i64 %idxprom32
  %35 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %35, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i64 0, i64 %idxprom35
  %36 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %36 to i64
  %arrayidx38 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx36, i64 0, i64 %idxprom37
  %"a::var105" = load float, float* %arrayidx38, align 4
  %37 = fpext float %"a::var105" to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %39 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %39, i64 %idxprom39
  %41 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i64 0, i64 %idxprom41
  %42 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %42 to i64
  %arrayidx44 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx42, i64 0, i64 %idxprom43
  %"a::var106" = load float, float* %arrayidx44, align 4
  %43 = fpext float %"a::var106" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @122, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var107" = fmul float 2.000000e+00, %"a::var106"
  %45 = fpext float %"a::var107" to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @123, i32 0, i32 0), double %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var108" = fsub float %"a::var105", %"a::var107"
  %47 = fpext float %"a::var108" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @124, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %49 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %50 to i64
  %arrayidx48 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %49, i64 %idxprom47
  %51 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %51, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx48, i64 0, i64 %idxprom50
  %52 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %52 to i64
  %arrayidx53 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx51, i64 0, i64 %idxprom52
  %"a::var109" = load float, float* %arrayidx53, align 4
  %53 = fpext float %"a::var109" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @125, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var110" = fadd float %"a::var108", %"a::var109"
  %55 = fpext float %"a::var110" to double
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @126, i32 0, i32 0), double %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var111" = fmul float 1.250000e-01, %"a::var110"
  %57 = fpext float %"a::var111" to double
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @127, i32 0, i32 0), double %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var112" = fadd float %"a::var104", %"a::var111"
  %59 = fpext float %"a::var112" to double
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @128, i32 0, i32 0), double %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %61 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %62 to i64
  %arrayidx58 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %61, i64 %idxprom57
  %63 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %63 to i64
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx58, i64 0, i64 %idxprom59
  %64 = load i32, i32* %k, align 4
  %add61 = add nsw i32 %64, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx60, i64 0, i64 %idxprom62
  %"a::var113" = load float, float* %arrayidx63, align 4
  %65 = fpext float %"a::var113" to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @129, i32 0, i32 0), double %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %67 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %68 to i64
  %arrayidx65 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %67, i64 %idxprom64
  %69 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %69 to i64
  %arrayidx67 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx65, i64 0, i64 %idxprom66
  %70 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %70 to i64
  %arrayidx69 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx67, i64 0, i64 %idxprom68
  %"a::var114" = load float, float* %arrayidx69, align 4
  %71 = fpext float %"a::var114" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @130, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var115" = fmul float 2.000000e+00, %"a::var114"
  %73 = fpext float %"a::var115" to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @131, i32 0, i32 0), double %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var116" = fsub float %"a::var113", %"a::var115"
  %75 = fpext float %"a::var116" to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @132, i32 0, i32 0), double %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %77 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %78 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %77, i64 %idxprom72
  %79 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %79 to i64
  %arrayidx75 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx73, i64 0, i64 %idxprom74
  %80 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %80, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx75, i64 0, i64 %idxprom77
  %"a::var117" = load float, float* %arrayidx78, align 4
  %81 = fpext float %"a::var117" to double
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @133, i32 0, i32 0), double %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var118" = fadd float %"a::var116", %"a::var117"
  %83 = fpext float %"a::var118" to double
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @134, i32 0, i32 0), double %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var119" = fmul float 1.250000e-01, %"a::var118"
  %85 = fpext float %"a::var119" to double
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @135, i32 0, i32 0), double %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var120" = fadd float %"a::var112", %"a::var119"
  %87 = fpext float %"a::var120" to double
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @136, i32 0, i32 0), double %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %89 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %90 to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %89, i64 %idxprom82
  %91 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %91 to i64
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx83, i64 0, i64 %idxprom84
  %92 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %92 to i64
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx85, i64 0, i64 %idxprom86
  %"a::var121" = load float, float* %arrayidx87, align 4
  %93 = fpext float %"a::var121" to double
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @137, i32 0, i32 0), double %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var122" = fadd float %"a::var120", %"a::var121"
  %95 = fpext float %"a::var122" to double
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @138, i32 0, i32 0), double %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %97 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %98 to i64
  %arrayidx90 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %97, i64 %idxprom89
  %99 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %99 to i64
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx90, i64 0, i64 %idxprom91
  %100 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %100 to i64
  %arrayidx94 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i64 0, i64 %idxprom93
  store float %"a::var122", float* %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %101 = load i32, i32* %k, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8, !llvm.loop !53

for.end:                                          ; preds = %for.cond8
  br label %for.inc95

for.inc95:                                        ; preds = %for.end
  %102 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %102, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond4, !llvm.loop !54

for.end97:                                        ; preds = %for.cond4
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %103 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %103, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond1, !llvm.loop !55

for.end100:                                       ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc206, %for.end100
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %n.addr, align 4
  %sub102 = sub nsw i32 %105, 1
  %cmp103 = icmp slt i32 %104, %sub102
  br i1 %cmp103, label %for.body104, label %for.end208

for.body104:                                      ; preds = %for.cond101
  store i32 1, i32* %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc203, %for.body104
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %n.addr, align 4
  %sub106 = sub nsw i32 %107, 1
  %cmp107 = icmp slt i32 %106, %sub106
  br i1 %cmp107, label %for.body108, label %for.end205

for.body108:                                      ; preds = %for.cond105
  store i32 1, i32* %k, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc200, %for.body108
  %108 = load i32, i32* %k, align 4
  %109 = load i32, i32* %n.addr, align 4
  %sub110 = sub nsw i32 %109, 1
  %cmp111 = icmp slt i32 %108, %sub110
  br i1 %cmp111, label %for.body112, label %for.end202

for.body112:                                      ; preds = %for.cond109
  %110 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %111 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %111, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %110, i64 %idxprom114
  %112 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %112 to i64
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx115, i64 0, i64 %idxprom116
  %113 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %113 to i64
  %arrayidx119 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i64 0, i64 %idxprom118
  %"a::var123" = load float, float* %arrayidx119, align 4
  %114 = fpext float %"a::var123" to double
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @139, i32 0, i32 0), double %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %116 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %117 to i64
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %116, i64 %idxprom120
  %118 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %118 to i64
  %arrayidx123 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i64 0, i64 %idxprom122
  %119 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %119 to i64
  %arrayidx125 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx123, i64 0, i64 %idxprom124
  %"a::var124" = load float, float* %arrayidx125, align 4
  %120 = fpext float %"a::var124" to double
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @140, i32 0, i32 0), double %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var125" = fmul float 2.000000e+00, %"a::var124"
  %122 = fpext float %"a::var125" to double
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @141, i32 0, i32 0), double %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var126" = fsub float %"a::var123", %"a::var125"
  %124 = fpext float %"a::var126" to double
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @142, i32 0, i32 0), double %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %126 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %127 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %127, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %126, i64 %idxprom129
  %128 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %128 to i64
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx130, i64 0, i64 %idxprom131
  %129 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %129 to i64
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx132, i64 0, i64 %idxprom133
  %"a::var127" = load float, float* %arrayidx134, align 4
  %130 = fpext float %"a::var127" to double
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @143, i32 0, i32 0), double %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var128" = fadd float %"a::var126", %"a::var127"
  %132 = fpext float %"a::var128" to double
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @144, i32 0, i32 0), double %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var129" = fmul float 1.250000e-01, %"a::var128"
  %134 = fpext float %"a::var129" to double
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @145, i32 0, i32 0), double %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %136 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %137 to i64
  %arrayidx138 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %136, i64 %idxprom137
  %138 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %138, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx138, i64 0, i64 %idxprom140
  %139 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %139 to i64
  %arrayidx143 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx141, i64 0, i64 %idxprom142
  %"a::var130" = load float, float* %arrayidx143, align 4
  %140 = fpext float %"a::var130" to double
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @146, i32 0, i32 0), double %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %142 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %143 to i64
  %arrayidx145 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %142, i64 %idxprom144
  %144 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %144 to i64
  %arrayidx147 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx145, i64 0, i64 %idxprom146
  %145 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %145 to i64
  %arrayidx149 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx147, i64 0, i64 %idxprom148
  %"a::var131" = load float, float* %arrayidx149, align 4
  %146 = fpext float %"a::var131" to double
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @147, i32 0, i32 0), double %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var132" = fmul float 2.000000e+00, %"a::var131"
  %148 = fpext float %"a::var132" to double
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @148, i32 0, i32 0), double %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var133" = fsub float %"a::var130", %"a::var132"
  %150 = fpext float %"a::var133" to double
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @149, i32 0, i32 0), double %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %152 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %153 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %153 to i64
  %arrayidx153 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %152, i64 %idxprom152
  %154 = load i32, i32* %j, align 4
  %sub154 = sub nsw i32 %154, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx153, i64 0, i64 %idxprom155
  %155 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %155 to i64
  %arrayidx158 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx156, i64 0, i64 %idxprom157
  %"a::var134" = load float, float* %arrayidx158, align 4
  %156 = fpext float %"a::var134" to double
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @150, i32 0, i32 0), double %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var135" = fadd float %"a::var133", %"a::var134"
  %158 = fpext float %"a::var135" to double
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @151, i32 0, i32 0), double %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var136" = fmul float 1.250000e-01, %"a::var135"
  %160 = fpext float %"a::var136" to double
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @152, i32 0, i32 0), double %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var137" = fadd float %"a::var129", %"a::var136"
  %162 = fpext float %"a::var137" to double
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @153, i32 0, i32 0), double %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %164 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %165 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %165 to i64
  %arrayidx163 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %164, i64 %idxprom162
  %166 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %166 to i64
  %arrayidx165 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx163, i64 0, i64 %idxprom164
  %167 = load i32, i32* %k, align 4
  %add166 = add nsw i32 %167, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx165, i64 0, i64 %idxprom167
  %"a::var138" = load float, float* %arrayidx168, align 4
  %168 = fpext float %"a::var138" to double
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @154, i32 0, i32 0), double %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %170 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %171 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %171 to i64
  %arrayidx170 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %170, i64 %idxprom169
  %172 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %172 to i64
  %arrayidx172 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx170, i64 0, i64 %idxprom171
  %173 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %173 to i64
  %arrayidx174 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx172, i64 0, i64 %idxprom173
  %"a::var139" = load float, float* %arrayidx174, align 4
  %174 = fpext float %"a::var139" to double
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @155, i32 0, i32 0), double %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var140" = fmul float 2.000000e+00, %"a::var139"
  %176 = fpext float %"a::var140" to double
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @156, i32 0, i32 0), double %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var141" = fsub float %"a::var138", %"a::var140"
  %178 = fpext float %"a::var141" to double
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @157, i32 0, i32 0), double %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0))
  %180 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %181 to i64
  %arrayidx178 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %180, i64 %idxprom177
  %182 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %182 to i64
  %arrayidx180 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx178, i64 0, i64 %idxprom179
  %183 = load i32, i32* %k, align 4
  %sub181 = sub nsw i32 %183, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx180, i64 0, i64 %idxprom182
  %"a::var142" = load float, float* %arrayidx183, align 4
  %184 = fpext float %"a::var142" to double
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @158, i32 0, i32 0), double %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var143" = fadd float %"a::var141", %"a::var142"
  %186 = fpext float %"a::var143" to double
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @159, i32 0, i32 0), double %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %"a::var144" = fmul float 1.250000e-01, %"a::var143"
  %188 = fpext float %"a::var144" to double
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @160, i32 0, i32 0), double %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var145" = fadd float %"a::var137", %"a::var144"
  %190 = fpext float %"a::var145" to double
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @161, i32 0, i32 0), double %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %192 = load [5 x [5 x float]]*, [5 x [5 x float]]** %B.addr, align 8
  %193 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %193 to i64
  %arrayidx188 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %192, i64 %idxprom187
  %194 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %194 to i64
  %arrayidx190 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx188, i64 0, i64 %idxprom189
  %195 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %195 to i64
  %arrayidx192 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx190, i64 0, i64 %idxprom191
  %"a::var146" = load float, float* %arrayidx192, align 4
  %196 = fpext float %"a::var146" to double
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @162, i32 0, i32 0), double %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var147" = fadd float %"a::var145", %"a::var146"
  %198 = fpext float %"a::var147" to double
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @163, i32 0, i32 0), double %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %200 = load [5 x [5 x float]]*, [5 x [5 x float]]** %A.addr, align 8
  %201 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %201 to i64
  %arrayidx195 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %200, i64 %idxprom194
  %202 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %202 to i64
  %arrayidx197 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx195, i64 0, i64 %idxprom196
  %203 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %203 to i64
  %arrayidx199 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx197, i64 0, i64 %idxprom198
  store float %"a::var147", float* %arrayidx199, align 4
  br label %for.inc200

for.inc200:                                       ; preds = %for.body112
  %204 = load i32, i32* %k, align 4
  %inc201 = add nsw i32 %204, 1
  store i32 %inc201, i32* %k, align 4
  br label %for.cond109, !llvm.loop !56

for.end202:                                       ; preds = %for.cond109
  br label %for.inc203

for.inc203:                                       ; preds = %for.end202
  %205 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %205, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond105, !llvm.loop !57

for.end205:                                       ; preds = %for.cond105
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %206 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %206, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond101, !llvm.loop !58

for.end208:                                       ; preds = %for.cond101
  br label %for.inc209

for.inc209:                                       ; preds = %for.end208
  %207 = load i32, i32* %t, align 4
  %inc210 = add nsw i32 %207, 1
  store i32 %inc210, i32* %t, align 4
  br label %for.cond, !llvm.loop !59

for.end211:                                       ; preds = %for.cond
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
!10 = !{i32 0, i1 false, i32 0, i1 false}
!11 = !{i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1}
!14 = distinct !{!14, !9}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!16 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{void (i32, i32, i32, float*, i32)* @scale_3d.1, void (i32, i32, i32, float*, i32)* @scale_3d.2}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{}
!26 = !{void (i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @init_array}
!27 = !{void (i32, i32, i32, float*, i32)* @scale_3d}
!28 = !{void (i32, i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @kernel_heat_3d}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = !{void (i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @init_array.3}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = !{void (i32, i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @kernel_heat_3d.4}
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
