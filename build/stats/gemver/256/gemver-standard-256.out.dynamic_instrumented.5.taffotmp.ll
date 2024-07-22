; ModuleID = './build/stats/gemver/256/gemver-standard-256.out.dynamic_instrumented.named.taffotmp.ll'
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
@62 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"a::var46\00", align 1
@64 = private unnamed_addr constant [9 x i8] c"a::var47\00", align 1
@65 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
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
@135 = private unnamed_addr constant [10 x i8] c"a::var117\00", align 1
@136 = private unnamed_addr constant [10 x i8] c"a::var118\00", align 1
@137 = private unnamed_addr constant [10 x i8] c"a::var119\00", align 1
@138 = private unnamed_addr constant [10 x i8] c"a::var120\00", align 1
@139 = private unnamed_addr constant [10 x i8] c"a::var121\00", align 1
@140 = private unnamed_addr constant [10 x i8] c"a::var122\00", align 1
@141 = private unnamed_addr constant [10 x i8] c"a::var123\00", align 1
@142 = private unnamed_addr constant [10 x i8] c"a::var124\00", align 1
@143 = private unnamed_addr constant [10 x i8] c"a::var125\00", align 1
@144 = private unnamed_addr constant [10 x i8] c"a::var126\00", align 1
@145 = private unnamed_addr constant [10 x i8] c"a::var127\00", align 1
@146 = private unnamed_addr constant [10 x i8] c"a::var128\00", align 1
@147 = private unnamed_addr constant [10 x i8] c"a::var129\00", align 1
@148 = private unnamed_addr constant [10 x i8] c"a::var130\00", align 1
@149 = private unnamed_addr constant [10 x i8] c"a::var131\00", align 1
@150 = private unnamed_addr constant [10 x i8] c"a::var132\00", align 1
@151 = private unnamed_addr constant [10 x i8] c"a::var133\00", align 1
@152 = private unnamed_addr constant [10 x i8] c"a::var134\00", align 1
@153 = private unnamed_addr constant [10 x i8] c"a::var135\00", align 1
@154 = private unnamed_addr constant [10 x i8] c"a::var136\00", align 1
@155 = private unnamed_addr constant [10 x i8] c"a::var137\00", align 1
@156 = private unnamed_addr constant [10 x i8] c"a::var138\00", align 1
@157 = private unnamed_addr constant [10 x i8] c"a::var139\00", align 1
@158 = private unnamed_addr constant [10 x i8] c"a::var140\00", align 1
@159 = private unnamed_addr constant [10 x i8] c"a::var141\00", align 1
@160 = private unnamed_addr constant [10 x i8] c"a::var142\00", align 1
@161 = private unnamed_addr constant [10 x i8] c"a::var143\00", align 1
@162 = private unnamed_addr constant [10 x i8] c"a::var144\00", align 1
@163 = private unnamed_addr constant [10 x i8] c"a::var145\00", align 1
@164 = private unnamed_addr constant [10 x i8] c"a::var146\00", align 1
@165 = private unnamed_addr constant [10 x i8] c"a::var147\00", align 1
@166 = private unnamed_addr constant [10 x i8] c"a::var148\00", align 1
@167 = private unnamed_addr constant [10 x i8] c"a::var149\00", align 1
@168 = private unnamed_addr constant [10 x i8] c"a::var150\00", align 1
@169 = private unnamed_addr constant [10 x i8] c"a::var151\00", align 1
@170 = private unnamed_addr constant [10 x i8] c"a::var152\00", align 1
@171 = private unnamed_addr constant [10 x i8] c"a::var153\00", align 1
@172 = private unnamed_addr constant [10 x i8] c"a::var154\00", align 1
@173 = private unnamed_addr constant [10 x i8] c"a::var155\00", align 1
@174 = private unnamed_addr constant [10 x i8] c"a::var156\00", align 1
@175 = private unnamed_addr constant [10 x i8] c"a::var157\00", align 1
@176 = private unnamed_addr constant [10 x i8] c"a::var158\00", align 1
@177 = private unnamed_addr constant [10 x i8] c"a::var159\00", align 1
@178 = private unnamed_addr constant [10 x i8] c"a::var160\00", align 1
@179 = private unnamed_addr constant [10 x i8] c"a::var161\00", align 1
@180 = private unnamed_addr constant [10 x i8] c"a::var162\00", align 1
@181 = private unnamed_addr constant [10 x i8] c"a::var163\00", align 1
@182 = private unnamed_addr constant [10 x i8] c"a::var164\00", align 1
@183 = private unnamed_addr constant [10 x i8] c"a::var165\00", align 1
@184 = private unnamed_addr constant [10 x i8] c"a::var166\00", align 1
@185 = private unnamed_addr constant [10 x i8] c"a::var167\00", align 1
@186 = private unnamed_addr constant [10 x i8] c"a::var168\00", align 1
@187 = private unnamed_addr constant [10 x i8] c"a::var169\00", align 1
@188 = private unnamed_addr constant [10 x i8] c"a::var170\00", align 1
@189 = private unnamed_addr constant [10 x i8] c"a::var171\00", align 1
@190 = private unnamed_addr constant [10 x i8] c"a::var172\00", align 1
@191 = private unnamed_addr constant [10 x i8] c"a::var173\00", align 1
@192 = private unnamed_addr constant [10 x i8] c"a::var174\00", align 1
@193 = private unnamed_addr constant [10 x i8] c"a::var175\00", align 1
@194 = private unnamed_addr constant [10 x i8] c"a::var176\00", align 1
@195 = private unnamed_addr constant [10 x i8] c"a::var177\00", align 1
@196 = private unnamed_addr constant [10 x i8] c"a::var178\00", align 1
@197 = private unnamed_addr constant [10 x i8] c"a::var179\00", align 1
@198 = private unnamed_addr constant [10 x i8] c"a::var180\00", align 1
@199 = private unnamed_addr constant [10 x i8] c"a::var181\00", align 1
@200 = private unnamed_addr constant [10 x i8] c"a::var182\00", align 1
@201 = private unnamed_addr constant [10 x i8] c"a::var183\00", align 1
@202 = private unnamed_addr constant [10 x i8] c"a::var184\00", align 1
@203 = private unnamed_addr constant [10 x i8] c"a::var185\00", align 1
@204 = private unnamed_addr constant [10 x i8] c"a::var186\00", align 1
@205 = private unnamed_addr constant [10 x i8] c"a::var187\00", align 1
@206 = private unnamed_addr constant [10 x i8] c"a::var188\00", align 1
@207 = private unnamed_addr constant [10 x i8] c"a::var189\00", align 1
@208 = private unnamed_addr constant [10 x i8] c"a::var190\00", align 1

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 !taffo.equivalentChild !12 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.equivalentChild !15 {
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
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !17 !taffo.initweight !18 !taffo.equivalentChild !19 {
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
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %24, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !22 !taffo.initweight !23 {
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
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %34 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.funinfo !27 !taffo.initweight !27 {
entry:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @PrintfTimerStr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @47, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.funinfo !27 !taffo.initweight !27 {
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
  call void @init_array.12(i32 noundef %0, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.originalCall !28
  call void @scale_scalar.2(float* noundef %alpha, i32 noundef 256), !taffo.originalCall !29
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 256), !taffo.originalCall !29
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %1 = bitcast [20 x float]* %arraydecay20 to float*
  call void @scale_2d.11(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 256), !taffo.originalCall !30
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  call void @scale_1d.10(i32 noundef 20, float* noundef %arraydecay21, i32 noundef 256), !taffo.originalCall !31
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  call void @scale_1d.9(i32 noundef 20, float* noundef %arraydecay22, i32 noundef 256), !taffo.originalCall !31
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  call void @scale_1d.8(i32 noundef 20, float* noundef %arraydecay23, i32 noundef 256), !taffo.originalCall !31
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  call void @scale_1d.7(i32 noundef 20, float* noundef %arraydecay24, i32 noundef 256), !taffo.originalCall !31
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  call void @scale_1d.6(i32 noundef 20, float* noundef %arraydecay25, i32 noundef 256), !taffo.originalCall !31
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  call void @scale_1d.5(i32 noundef 20, float* noundef %arraydecay26, i32 noundef 256), !taffo.originalCall !31
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay27, i32 noundef 256), !taffo.originalCall !31
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay28, i32 noundef 256), !taffo.originalCall !31
  call void @timer_start()
  %2 = load i32, i32* %n, align 4
  %"a::var33" = load float, float* %alpha, align 4
  %3 = fpext float %"a::var33" to double
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), double %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var34" = load float, float* %beta, align 4
  %5 = fpext float %"a::var34" to double
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), double %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %arraydecay29 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [20 x float], [20 x float]* %u1, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [20 x float], [20 x float]* %v1, i64 0, i64 0
  %arraydecay32 = getelementptr inbounds [20 x float], [20 x float]* %u2, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [20 x float], [20 x float]* %v2, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [20 x float], [20 x float]* %y, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [20 x float], [20 x float]* %z, i64 0, i64 0
  call void @kernel_gemver.13(i32 noundef %2, float noundef %"a::var33", float noundef %"a::var34", [20 x float]* noundef %arraydecay29, float* noundef %arraydecay30, float* noundef %arraydecay31, float* noundef %arraydecay32, float* noundef %arraydecay33, float* noundef %arraydecay34, float* noundef %arraydecay35, float* noundef %arraydecay36, float* noundef %arraydecay37), !taffo.originalCall !32
  call void @timer_stop()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i64 0, i64 %idxprom
  %"a::var35" = load float, float* %arrayidx, align 4
  %10 = fpext float %"a::var35" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %12 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %12 to i64
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i64 0, i64 %idxprom38
  store float %"a::var35", float* %arrayidx39, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %13 to i64
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %w, i64 0, i64 %idxprom40
  %"a::var36" = load float, float* %arrayidx41, align 4
  %14 = fpext float %"a::var36" to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), double %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %16 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %16 to i64
  %arrayidx43 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i64 0, i64 %idxprom42
  store float %"a::var36", float* %arrayidx43, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %n, align 4
  %cmp45 = icmp slt i32 %17, %18
  br i1 %cmp45, label %for.body46, label %for.end

for.body46:                                       ; preds = %for.cond44
  %19 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %19 to i64
  %arrayidx48 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i64 0, i64 %idxprom47
  %20 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %20 to i64
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx48, i64 0, i64 %idxprom49
  %"a::var37" = load float, float* %arrayidx50, align 4
  %21 = fpext float %"a::var37" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %23 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %23 to i64
  %arrayidx52 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i64 0, i64 %idxprom51
  %24 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %24 to i64
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i64 0, i64 %idxprom53
  store float %"a::var37", float* %arrayidx54, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body46
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond44, !llvm.loop !33

for.end:                                          ; preds = %for.cond44
  br label %for.inc55

for.inc55:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %26, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end57:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.funinfo !22 !taffo.initweight !23 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !35 !taffo.initweight !36 !taffo.equivalentChild !37 {
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
  %"a::var38" = sitofp i32 %2 to float
  %3 = fpext float %"a::var38" to double
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), double %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  store float %"a::var38", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %"a::var39" = sitofp i32 %7 to float
  %8 = fpext float %"a::var39" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var40" = load float, float* %fn, align 4
  %10 = fpext float %"a::var40" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var41" = fdiv float %"a::var39", %"a::var40"
  %12 = fpext float %"a::var41" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %14 = load float*, float** %u1.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  store float %"a::var41", float* %arrayidx, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %"a::var42" = sitofp i32 %add to float
  %17 = fpext float %"a::var42" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var43" = load float, float* %fn, align 4
  %19 = fpext float %"a::var43" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var44" = fdiv float %"a::var42", %"a::var43"
  %21 = fpext float %"a::var44" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var45" = fpext float %"a::var44" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), double %"a::var45", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var46" = fdiv double %"a::var45", 2.000000e+00
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), double %"a::var46", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var47" = fptrunc double %"a::var46" to float
  %25 = fpext float %"a::var47" to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0), double %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %27 = load float*, float** %u2.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds float, float* %27, i64 %idxprom11
  store float %"a::var47", float* %arrayidx12, align 4
  %29 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %29, 1
  %"a::var48" = sitofp i32 %add13 to float
  %30 = fpext float %"a::var48" to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), double %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var49" = load float, float* %fn, align 4
  %32 = fpext float %"a::var49" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var50" = fdiv float %"a::var48", %"a::var49"
  %34 = fpext float %"a::var50" to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), double %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var51" = fpext float %"a::var50" to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0), double %"a::var51", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var52" = fdiv double %"a::var51", 4.000000e+00
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), double %"a::var52", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var53" = fptrunc double %"a::var52" to float
  %38 = fpext float %"a::var53" to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0), double %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %40 = load float*, float** %v1.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %41 to i64
  %arrayidx20 = getelementptr inbounds float, float* %40, i64 %idxprom19
  store float %"a::var53", float* %arrayidx20, align 4
  %42 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %42, 1
  %"a::var54" = sitofp i32 %add21 to float
  %43 = fpext float %"a::var54" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var55" = load float, float* %fn, align 4
  %45 = fpext float %"a::var55" to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), double %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var56" = fdiv float %"a::var54", %"a::var55"
  %47 = fpext float %"a::var56" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var57" = fpext float %"a::var56" to double
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0), double %"a::var57", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var58" = fdiv double %"a::var57", 6.000000e+00
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), double %"a::var58", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var59" = fptrunc double %"a::var58" to float
  %51 = fpext float %"a::var59" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %53 = load float*, float** %v2.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %54 to i64
  %arrayidx28 = getelementptr inbounds float, float* %53, i64 %idxprom27
  store float %"a::var59", float* %arrayidx28, align 4
  %55 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %55, 1
  %"a::var60" = sitofp i32 %add29 to float
  %56 = fpext float %"a::var60" to double
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), double %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var61" = load float, float* %fn, align 4
  %58 = fpext float %"a::var61" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var62" = fdiv float %"a::var60", %"a::var61"
  %60 = fpext float %"a::var62" to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), double %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var63" = fpext float %"a::var62" to double
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0), double %"a::var63", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var64" = fdiv double %"a::var63", 8.000000e+00
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @82, i32 0, i32 0), double %"a::var64", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var65" = fptrunc double %"a::var64" to float
  %64 = fpext float %"a::var65" to double
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @83, i32 0, i32 0), double %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %66 = load float*, float** %y.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %67 to i64
  %arrayidx36 = getelementptr inbounds float, float* %66, i64 %idxprom35
  store float %"a::var65", float* %arrayidx36, align 4
  %68 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %68, 1
  %"a::var66" = sitofp i32 %add37 to float
  %69 = fpext float %"a::var66" to double
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0), double %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var67" = load float, float* %fn, align 4
  %71 = fpext float %"a::var67" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var68" = fdiv float %"a::var66", %"a::var67"
  %73 = fpext float %"a::var68" to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), double %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var69" = fpext float %"a::var68" to double
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0), double %"a::var69", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var70" = fdiv double %"a::var69", 9.000000e+00
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), double %"a::var70", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var71" = fptrunc double %"a::var70" to float
  %77 = fpext float %"a::var71" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @89, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %79 = load float*, float** %z.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %80 to i64
  %arrayidx44 = getelementptr inbounds float, float* %79, i64 %idxprom43
  store float %"a::var71", float* %arrayidx44, align 4
  %81 = load float*, float** %x.addr, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %82 to i64
  %arrayidx46 = getelementptr inbounds float, float* %81, i64 %idxprom45
  store float 0.000000e+00, float* %arrayidx46, align 4
  %83 = load float*, float** %w.addr, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %84 to i64
  %arrayidx48 = getelementptr inbounds float, float* %83, i64 %idxprom47
  store float 0.000000e+00, float* %arrayidx48, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %for.body
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %85, %86
  br i1 %cmp50, label %for.body52, label %for.end

for.body52:                                       ; preds = %for.cond49
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %87, %88
  %89 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %89
  %"a::var72" = sitofp i32 %rem to float
  %90 = fpext float %"a::var72" to double
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), double %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %92 = load i32, i32* %n.addr, align 4
  %"a::var73" = sitofp i32 %92 to float
  %93 = fpext float %"a::var73" to double
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @91, i32 0, i32 0), double %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var74" = fdiv float %"a::var72", %"a::var73"
  %95 = fpext float %"a::var74" to double
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @92, i32 0, i32 0), double %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %97 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %98 to i64
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %97, i64 %idxprom56
  %99 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %99 to i64
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx57, i64 0, i64 %idxprom58
  store float %"a::var74", float* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body52
  %100 = load i32, i32* %j, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond49, !llvm.loop !38

for.end:                                          ; preds = %for.cond49
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %101 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %101, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond, !llvm.loop !39

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !35 !taffo.initweight !36 !taffo.equivalentChild !40 {
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
  %"a::var75" = load float, float* %arrayidx5, align 4
  %7 = fpext float %"a::var75" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %9 = load float*, float** %u1.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %"a::var76" = load float, float* %arrayidx7, align 4
  %11 = fpext float %"a::var76" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @94, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %13 = load float*, float** %v1.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds float, float* %13, i64 %idxprom8
  %"a::var77" = load float, float* %arrayidx9, align 4
  %15 = fpext float %"a::var77" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var78" = fmul float %"a::var76", %"a::var77"
  %17 = fpext float %"a::var78" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @96, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var79" = fadd float %"a::var75", %"a::var78"
  %19 = fpext float %"a::var79" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @97, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %21 = load float*, float** %u2.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds float, float* %21, i64 %idxprom10
  %"a::var80" = load float, float* %arrayidx11, align 4
  %23 = fpext float %"a::var80" to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @98, i32 0, i32 0), double %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %25 = load float*, float** %v2.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds float, float* %25, i64 %idxprom12
  %"a::var81" = load float, float* %arrayidx13, align 4
  %27 = fpext float %"a::var81" to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @99, i32 0, i32 0), double %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var82" = fmul float %"a::var80", %"a::var81"
  %29 = fpext float %"a::var82" to double
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @100, i32 0, i32 0), double %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var83" = fadd float %"a::var79", %"a::var82"
  %31 = fpext float %"a::var83" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @101, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %34 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom16
  %35 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %35 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var83", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !41

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %37, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc45, %for.end22
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %38, %39
  br i1 %cmp24, label %for.body25, label %for.end47

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc42, %for.body25
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %40, %41
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond26
  %42 = load float*, float** %x.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds float, float* %42, i64 %idxprom29
  %"a::var84" = load float, float* %arrayidx30, align 4
  %44 = fpext float %"a::var84" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @102, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var85" = load float, float* %beta.addr, align 4
  %46 = fpext float %"a::var85" to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @103, i32 0, i32 0), double %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %48 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %49 to i64
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* %48, i64 %idxprom31
  %50 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i64 0, i64 %idxprom33
  %"a::var86" = load float, float* %arrayidx34, align 4
  %51 = fpext float %"a::var86" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @104, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var87" = fmul float %"a::var85", %"a::var86"
  %53 = fpext float %"a::var87" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @105, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %55 = load float*, float** %y.addr, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %56 to i64
  %arrayidx37 = getelementptr inbounds float, float* %55, i64 %idxprom36
  %"a::var88" = load float, float* %arrayidx37, align 4
  %57 = fpext float %"a::var88" to double
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0), double %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var89" = fmul float %"a::var87", %"a::var88"
  %59 = fpext float %"a::var89" to double
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @107, i32 0, i32 0), double %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var90" = fadd float %"a::var84", %"a::var89"
  %61 = fpext float %"a::var90" to double
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @108, i32 0, i32 0), double %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %63 = load float*, float** %x.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %64 to i64
  %arrayidx41 = getelementptr inbounds float, float* %63, i64 %idxprom40
  store float %"a::var90", float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28
  %65 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %65, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond26, !llvm.loop !43

for.end44:                                        ; preds = %for.cond26
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %66 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %66, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond23, !llvm.loop !44

for.end47:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %67, %68
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %69 = load float*, float** %x.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %70 to i64
  %arrayidx52 = getelementptr inbounds float, float* %69, i64 %idxprom51
  %"a::var91" = load float, float* %arrayidx52, align 4
  %71 = fpext float %"a::var91" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @109, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %73 = load float*, float** %z.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %74 to i64
  %arrayidx54 = getelementptr inbounds float, float* %73, i64 %idxprom53
  %"a::var92" = load float, float* %arrayidx54, align 4
  %75 = fpext float %"a::var92" to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @110, i32 0, i32 0), double %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var93" = fadd float %"a::var91", %"a::var92"
  %77 = fpext float %"a::var93" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @111, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %79 = load float*, float** %x.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %80 to i64
  %arrayidx57 = getelementptr inbounds float, float* %79, i64 %idxprom56
  store float %"a::var93", float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %81 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %81, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond48, !llvm.loop !45

for.end60:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc83, %for.end60
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp slt i32 %82, %83
  br i1 %cmp62, label %for.body63, label %for.end85

for.body63:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc80, %for.body63
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %84, %85
  br i1 %cmp65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond64
  %86 = load float*, float** %w.addr, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %87 to i64
  %arrayidx68 = getelementptr inbounds float, float* %86, i64 %idxprom67
  %"a::var94" = load float, float* %arrayidx68, align 4
  %88 = fpext float %"a::var94" to double
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @112, i32 0, i32 0), double %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var95" = load float, float* %alpha.addr, align 4
  %90 = fpext float %"a::var95" to double
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @113, i32 0, i32 0), double %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %92 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %93 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %92, i64 %idxprom69
  %94 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %94 to i64
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx70, i64 0, i64 %idxprom71
  %"a::var96" = load float, float* %arrayidx72, align 4
  %95 = fpext float %"a::var96" to double
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @114, i32 0, i32 0), double %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var97" = fmul float %"a::var95", %"a::var96"
  %97 = fpext float %"a::var97" to double
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @115, i32 0, i32 0), double %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %99 = load float*, float** %x.addr, align 8
  %100 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %100 to i64
  %arrayidx75 = getelementptr inbounds float, float* %99, i64 %idxprom74
  %"a::var98" = load float, float* %arrayidx75, align 4
  %101 = fpext float %"a::var98" to double
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @116, i32 0, i32 0), double %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var99" = fmul float %"a::var97", %"a::var98"
  %103 = fpext float %"a::var99" to double
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @117, i32 0, i32 0), double %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var100" = fadd float %"a::var94", %"a::var99"
  %105 = fpext float %"a::var100" to double
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @118, i32 0, i32 0), double %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %107 = load float*, float** %w.addr, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %108 to i64
  %arrayidx79 = getelementptr inbounds float, float* %107, i64 %idxprom78
  store float %"a::var100", float* %arrayidx79, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66
  %109 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %109, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond64, !llvm.loop !46

for.end82:                                        ; preds = %for.cond64
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %110 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %110, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond61, !llvm.loop !47

for.end85:                                        ; preds = %for.cond61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 !taffo.sourceFunction !29 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !10 !taffo.initweight !11 !taffo.sourceFunction !29 {
entry:
  %val.addr = alloca float*, align 8
  %factor.addr = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %factor, i32* %factor.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var101" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var101" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var102" = sitofp i32 %8 to float
  %9 = fpext float %"a::var102" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @120, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var103" = fmul float %"a::var101", %"a::var102"
  %11 = fpext float %"a::var103" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var103", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var104" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var104" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @122, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var105" = sitofp i32 %8 to float
  %9 = fpext float %"a::var105" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @123, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var106" = fmul float %"a::var104", %"a::var105"
  %11 = fpext float %"a::var106" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @124, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var106", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var107" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var107" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @125, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var108" = sitofp i32 %8 to float
  %9 = fpext float %"a::var108" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @126, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var109" = fmul float %"a::var107", %"a::var108"
  %11 = fpext float %"a::var109" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @127, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var109", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var110" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var110" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @128, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var111" = sitofp i32 %8 to float
  %9 = fpext float %"a::var111" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @129, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var112" = fmul float %"a::var110", %"a::var111"
  %11 = fpext float %"a::var112" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @130, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var112", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var113" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var113" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @131, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var114" = sitofp i32 %8 to float
  %9 = fpext float %"a::var114" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @132, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var115" = fmul float %"a::var113", %"a::var114"
  %11 = fpext float %"a::var115" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @133, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var115", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var116" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var116" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @134, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var117" = sitofp i32 %8 to float
  %9 = fpext float %"a::var117" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @135, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var118" = fmul float %"a::var116", %"a::var117"
  %11 = fpext float %"a::var118" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @136, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var118", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.9(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var119" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var119" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @137, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var120" = sitofp i32 %8 to float
  %9 = fpext float %"a::var120" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @138, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var121" = fmul float %"a::var119", %"a::var120"
  %11 = fpext float %"a::var121" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @139, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var121", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.10(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !13 !taffo.initweight !14 !taffo.sourceFunction !31 {
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
  %"a::var122" = load float, float* %arrayidx, align 4
  %6 = fpext float %"a::var122" to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @140, i32 0, i32 0), double %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %8 = load i32, i32* %factor.addr, align 4
  %"a::var123" = sitofp i32 %8 to float
  %9 = fpext float %"a::var123" to double
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @141, i32 0, i32 0), double %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var124" = fmul float %"a::var122", %"a::var123"
  %11 = fpext float %"a::var124" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @142, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %13 = load float*, float** %val.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 %idxprom1
  store float %"a::var124", float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.11(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.funinfo !17 !taffo.initweight !18 !taffo.sourceFunction !30 {
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
  %"a::var125" = load float, float* %arrayidx5, align 4
  %12 = fpext float %"a::var125" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @143, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %14 = load i32, i32* %factor.addr, align 4
  %"a::var126" = sitofp i32 %14 to float
  %15 = fpext float %"a::var126" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @144, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var127" = fmul float %"a::var125", %"a::var126"
  %17 = fpext float %"a::var127" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @145, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %19 = load float*, float** %val.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = mul nsw i64 %idxprom6, %3
  %arrayidx7 = getelementptr inbounds float, float* %19, i64 %21
  %22 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %22 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arrayidx7, i64 %idxprom8
  store float %"a::var127", float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !56

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %24, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !35 !taffo.initweight !36 !taffo.sourceFunction !28 {
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
  %"a::var128" = sitofp i32 %2 to float
  %3 = fpext float %"a::var128" to double
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @146, i32 0, i32 0), double %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  store float %"a::var128", float* %fn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %"a::var129" = sitofp i32 %7 to float
  %8 = fpext float %"a::var129" to double
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @147, i32 0, i32 0), double %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var130" = load float, float* %fn, align 4
  %10 = fpext float %"a::var130" to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @148, i32 0, i32 0), double %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var131" = fdiv float %"a::var129", %"a::var130"
  %12 = fpext float %"a::var131" to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @149, i32 0, i32 0), double %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %14 = load float*, float** %u1.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  store float %"a::var131", float* %arrayidx, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %"a::var132" = sitofp i32 %add to float
  %17 = fpext float %"a::var132" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @150, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var133" = load float, float* %fn, align 4
  %19 = fpext float %"a::var133" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @151, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var134" = fdiv float %"a::var132", %"a::var133"
  %21 = fpext float %"a::var134" to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @152, i32 0, i32 0), double %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var135" = fpext float %"a::var134" to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @153, i32 0, i32 0), double %"a::var135", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var136" = fdiv double %"a::var135", 2.000000e+00
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @154, i32 0, i32 0), double %"a::var136", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var137" = fptrunc double %"a::var136" to float
  %25 = fpext float %"a::var137" to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @155, i32 0, i32 0), double %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %27 = load float*, float** %u2.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds float, float* %27, i64 %idxprom11
  store float %"a::var137", float* %arrayidx12, align 4
  %29 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %29, 1
  %"a::var138" = sitofp i32 %add13 to float
  %30 = fpext float %"a::var138" to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @156, i32 0, i32 0), double %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var139" = load float, float* %fn, align 4
  %32 = fpext float %"a::var139" to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @157, i32 0, i32 0), double %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var140" = fdiv float %"a::var138", %"a::var139"
  %34 = fpext float %"a::var140" to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @158, i32 0, i32 0), double %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var141" = fpext float %"a::var140" to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @159, i32 0, i32 0), double %"a::var141", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var142" = fdiv double %"a::var141", 4.000000e+00
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @160, i32 0, i32 0), double %"a::var142", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var143" = fptrunc double %"a::var142" to float
  %38 = fpext float %"a::var143" to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @161, i32 0, i32 0), double %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %40 = load float*, float** %v1.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %41 to i64
  %arrayidx20 = getelementptr inbounds float, float* %40, i64 %idxprom19
  store float %"a::var143", float* %arrayidx20, align 4
  %42 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %42, 1
  %"a::var144" = sitofp i32 %add21 to float
  %43 = fpext float %"a::var144" to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @162, i32 0, i32 0), double %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var145" = load float, float* %fn, align 4
  %45 = fpext float %"a::var145" to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @163, i32 0, i32 0), double %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var146" = fdiv float %"a::var144", %"a::var145"
  %47 = fpext float %"a::var146" to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @164, i32 0, i32 0), double %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var147" = fpext float %"a::var146" to double
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @165, i32 0, i32 0), double %"a::var147", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var148" = fdiv double %"a::var147", 6.000000e+00
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @166, i32 0, i32 0), double %"a::var148", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var149" = fptrunc double %"a::var148" to float
  %51 = fpext float %"a::var149" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @167, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %53 = load float*, float** %v2.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %54 to i64
  %arrayidx28 = getelementptr inbounds float, float* %53, i64 %idxprom27
  store float %"a::var149", float* %arrayidx28, align 4
  %55 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %55, 1
  %"a::var150" = sitofp i32 %add29 to float
  %56 = fpext float %"a::var150" to double
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @168, i32 0, i32 0), double %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var151" = load float, float* %fn, align 4
  %58 = fpext float %"a::var151" to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @169, i32 0, i32 0), double %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var152" = fdiv float %"a::var150", %"a::var151"
  %60 = fpext float %"a::var152" to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @170, i32 0, i32 0), double %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var153" = fpext float %"a::var152" to double
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @171, i32 0, i32 0), double %"a::var153", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var154" = fdiv double %"a::var153", 8.000000e+00
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @172, i32 0, i32 0), double %"a::var154", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var155" = fptrunc double %"a::var154" to float
  %64 = fpext float %"a::var155" to double
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @173, i32 0, i32 0), double %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %66 = load float*, float** %y.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %67 to i64
  %arrayidx36 = getelementptr inbounds float, float* %66, i64 %idxprom35
  store float %"a::var155", float* %arrayidx36, align 4
  %68 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %68, 1
  %"a::var156" = sitofp i32 %add37 to float
  %69 = fpext float %"a::var156" to double
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @174, i32 0, i32 0), double %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var157" = load float, float* %fn, align 4
  %71 = fpext float %"a::var157" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @175, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var158" = fdiv float %"a::var156", %"a::var157"
  %73 = fpext float %"a::var158" to double
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @176, i32 0, i32 0), double %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var159" = fpext float %"a::var158" to double
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @177, i32 0, i32 0), double %"a::var159", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  %"a::var160" = fdiv double %"a::var159", 9.000000e+00
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @178, i32 0, i32 0), double %"a::var160", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %"a::var161" = fptrunc double %"a::var160" to float
  %77 = fpext float %"a::var161" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @179, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0))
  %79 = load float*, float** %z.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %80 to i64
  %arrayidx44 = getelementptr inbounds float, float* %79, i64 %idxprom43
  store float %"a::var161", float* %arrayidx44, align 4
  %81 = load float*, float** %x.addr, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %82 to i64
  %arrayidx46 = getelementptr inbounds float, float* %81, i64 %idxprom45
  store float 0.000000e+00, float* %arrayidx46, align 4
  %83 = load float*, float** %w.addr, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %84 to i64
  %arrayidx48 = getelementptr inbounds float, float* %83, i64 %idxprom47
  store float 0.000000e+00, float* %arrayidx48, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %for.body
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp slt i32 %85, %86
  br i1 %cmp50, label %for.body52, label %for.end

for.body52:                                       ; preds = %for.cond49
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %87, %88
  %89 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %89
  %"a::var162" = sitofp i32 %rem to float
  %90 = fpext float %"a::var162" to double
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @180, i32 0, i32 0), double %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %92 = load i32, i32* %n.addr, align 4
  %"a::var163" = sitofp i32 %92 to float
  %93 = fpext float %"a::var163" to double
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @181, i32 0, i32 0), double %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  %"a::var164" = fdiv float %"a::var162", %"a::var163"
  %95 = fpext float %"a::var164" to double
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @182, i32 0, i32 0), double %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %97 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %98 to i64
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %97, i64 %idxprom56
  %99 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %99 to i64
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx57, i64 0, i64 %idxprom58
  store float %"a::var164", float* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body52
  %100 = load i32, i32* %j, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond49, !llvm.loop !58

for.end:                                          ; preds = %for.cond49
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %101 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %101, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond, !llvm.loop !59

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.13(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.funinfo !35 !taffo.initweight !36 !taffo.sourceFunction !32 {
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
  %"a::var165" = load float, float* %arrayidx5, align 4
  %7 = fpext float %"a::var165" to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @183, i32 0, i32 0), double %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %9 = load float*, float** %u1.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %"a::var166" = load float, float* %arrayidx7, align 4
  %11 = fpext float %"a::var166" to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @184, i32 0, i32 0), double %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %13 = load float*, float** %v1.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds float, float* %13, i64 %idxprom8
  %"a::var167" = load float, float* %arrayidx9, align 4
  %15 = fpext float %"a::var167" to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @185, i32 0, i32 0), double %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var168" = fmul float %"a::var166", %"a::var167"
  %17 = fpext float %"a::var168" to double
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @186, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var169" = fadd float %"a::var165", %"a::var168"
  %19 = fpext float %"a::var169" to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @187, i32 0, i32 0), double %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %21 = load float*, float** %u2.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds float, float* %21, i64 %idxprom10
  %"a::var170" = load float, float* %arrayidx11, align 4
  %23 = fpext float %"a::var170" to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @188, i32 0, i32 0), double %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %25 = load float*, float** %v2.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds float, float* %25, i64 %idxprom12
  %"a::var171" = load float, float* %arrayidx13, align 4
  %27 = fpext float %"a::var171" to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @189, i32 0, i32 0), double %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var172" = fmul float %"a::var170", %"a::var171"
  %29 = fpext float %"a::var172" to double
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @190, i32 0, i32 0), double %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var173" = fadd float %"a::var169", %"a::var172"
  %31 = fpext float %"a::var173" to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @191, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %33 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %34 to i64
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %33, i64 %idxprom16
  %35 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %35 to i64
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i64 0, i64 %idxprom18
  store float %"a::var173", float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !60

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %37, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !61

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc45, %for.end22
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %38, %39
  br i1 %cmp24, label %for.body25, label %for.end47

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc42, %for.body25
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %40, %41
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond26
  %42 = load float*, float** %x.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds float, float* %42, i64 %idxprom29
  %"a::var174" = load float, float* %arrayidx30, align 4
  %44 = fpext float %"a::var174" to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @192, i32 0, i32 0), double %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var175" = load float, float* %beta.addr, align 4
  %46 = fpext float %"a::var175" to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @193, i32 0, i32 0), double %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %48 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %49 to i64
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* %48, i64 %idxprom31
  %50 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i64 0, i64 %idxprom33
  %"a::var176" = load float, float* %arrayidx34, align 4
  %51 = fpext float %"a::var176" to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @194, i32 0, i32 0), double %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var177" = fmul float %"a::var175", %"a::var176"
  %53 = fpext float %"a::var177" to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @195, i32 0, i32 0), double %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %55 = load float*, float** %y.addr, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %56 to i64
  %arrayidx37 = getelementptr inbounds float, float* %55, i64 %idxprom36
  %"a::var178" = load float, float* %arrayidx37, align 4
  %57 = fpext float %"a::var178" to double
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @196, i32 0, i32 0), double %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var179" = fmul float %"a::var177", %"a::var178"
  %59 = fpext float %"a::var179" to double
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @197, i32 0, i32 0), double %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var180" = fadd float %"a::var174", %"a::var179"
  %61 = fpext float %"a::var180" to double
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @198, i32 0, i32 0), double %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %63 = load float*, float** %x.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %64 to i64
  %arrayidx41 = getelementptr inbounds float, float* %63, i64 %idxprom40
  store float %"a::var180", float* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28
  %65 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %65, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond26, !llvm.loop !62

for.end44:                                        ; preds = %for.cond26
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %66 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %66, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond23, !llvm.loop !63

for.end47:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %67, %68
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %69 = load float*, float** %x.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %70 to i64
  %arrayidx52 = getelementptr inbounds float, float* %69, i64 %idxprom51
  %"a::var181" = load float, float* %arrayidx52, align 4
  %71 = fpext float %"a::var181" to double
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @199, i32 0, i32 0), double %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %73 = load float*, float** %z.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %74 to i64
  %arrayidx54 = getelementptr inbounds float, float* %73, i64 %idxprom53
  %"a::var182" = load float, float* %arrayidx54, align 4
  %75 = fpext float %"a::var182" to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @200, i32 0, i32 0), double %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var183" = fadd float %"a::var181", %"a::var182"
  %77 = fpext float %"a::var183" to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @201, i32 0, i32 0), double %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %79 = load float*, float** %x.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %80 to i64
  %arrayidx57 = getelementptr inbounds float, float* %79, i64 %idxprom56
  store float %"a::var183", float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %81 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %81, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond48, !llvm.loop !64

for.end60:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc83, %for.end60
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp slt i32 %82, %83
  br i1 %cmp62, label %for.body63, label %for.end85

for.body63:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc80, %for.body63
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %84, %85
  br i1 %cmp65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond64
  %86 = load float*, float** %w.addr, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %87 to i64
  %arrayidx68 = getelementptr inbounds float, float* %86, i64 %idxprom67
  %"a::var184" = load float, float* %arrayidx68, align 4
  %88 = fpext float %"a::var184" to double
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @202, i32 0, i32 0), double %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var185" = load float, float* %alpha.addr, align 4
  %90 = fpext float %"a::var185" to double
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @203, i32 0, i32 0), double %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %92 = load [20 x float]*, [20 x float]** %A.addr, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %93 to i64
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %92, i64 %idxprom69
  %94 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %94 to i64
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx70, i64 0, i64 %idxprom71
  %"a::var186" = load float, float* %arrayidx72, align 4
  %95 = fpext float %"a::var186" to double
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @204, i32 0, i32 0), double %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var187" = fmul float %"a::var185", %"a::var186"
  %97 = fpext float %"a::var187" to double
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @205, i32 0, i32 0), double %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %99 = load float*, float** %x.addr, align 8
  %100 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %100 to i64
  %arrayidx75 = getelementptr inbounds float, float* %99, i64 %idxprom74
  %"a::var188" = load float, float* %arrayidx75, align 4
  %101 = fpext float %"a::var188" to double
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @206, i32 0, i32 0), double %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %"a::var189" = fmul float %"a::var187", %"a::var188"
  %103 = fpext float %"a::var189" to double
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @207, i32 0, i32 0), double %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %"a::var190" = fadd float %"a::var184", %"a::var189"
  %105 = fpext float %"a::var190" to double
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @PrintfFormatStr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @208, i32 0, i32 0), double %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  %107 = load float*, float** %w.addr, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %108 to i64
  %arrayidx79 = getelementptr inbounds float, float* %107, i64 %idxprom78
  store float %"a::var190", float* %arrayidx79, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66
  %109 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %109, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond64, !llvm.loop !65

for.end82:                                        ; preds = %for.cond64
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %110 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %110, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond61, !llvm.loop !66

for.end85:                                        ; preds = %for.cond61
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
!10 = !{i32 0, i1 false, i32 0, i1 false}
!11 = !{i32 -1, i32 -1}
!12 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!13 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!14 = !{i32 -1, i32 -1, i32 -1}
!15 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.5, void (i32, float*, i32)* @scale_1d.6, void (i32, float*, i32)* @scale_1d.7, void (i32, float*, i32)* @scale_1d.8, void (i32, float*, i32)* @scale_1d.9, void (i32, float*, i32)* @scale_1d.10}
!16 = distinct !{!16, !9}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{void (i32, i32, float*, i32)* @scale_2d.11}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!23 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = !{}
!28 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array}
!29 = !{void (float*, i32)* @scale_scalar}
!30 = !{void (i32, i32, float*, i32)* @scale_2d}
!31 = !{void (i32, float*, i32)* @scale_1d}
!32 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array.12}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver.13}
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
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
