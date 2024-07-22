; ModuleID = './build/bin/fixed/gemm/8/gemm-standard-1-fixed-8.out.ll'
source_filename = "./sources/gemm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %lampsim3, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul4 = fmul float %x.0, %x.0
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -65536
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -65536
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -65536
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -65536
  %lampsim31 = bitcast i32 %lampsim30 to float
  %cmp7 = fcmp oge float %lampsim31, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %lampsim31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %lampsim31, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %lampsim23, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !28
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !31
  %C.u4_28fixp = alloca [10 x [12 x i32]], align 4, !taffo.info !33, !taffo.target !35
  %A.u1_31fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !36
  %B.u1_31fixp = alloca [16 x [12 x i32]], align 4, !taffo.info !39
  %arraydecay.u4_28fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay6.u1_31fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay7.u1_31fixp = getelementptr inbounds [16 x [12 x i32]], [16 x [12 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !39
  call void @init_array.2_fixp(i32 10, i32 12, i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u4_28fixp, [16 x i32]* %arraydecay6.u1_31fixp, [12 x i32]* %arraydecay7.u1_31fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_start(), !taffo.constinfo !43
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !28
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !44
  %arraydecay8.u4_28fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay9.u1_31fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay10.u1_31fixp = getelementptr inbounds [16 x [12 x i32]], [16 x [12 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !39
  %0 = lshr i32 %u2_30fixp1, 2, !taffo.info !44
  call void @kernel_gemm.1_fixp(i32 10, i32 12, i32 16, i32 %u2_30fixp, i32 %0, [12 x i32]* %arraydecay8.u4_28fixp, [16 x i32]* %arraydecay9.u1_31fixp, [12 x i32]* %arraydecay10.u1_31fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_stop(), !taffo.constinfo !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp12 = icmp slt i32 %j.0, 12, !taffo.info !47
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx.u4_28fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u4_28fixp, i32 0, i32 %i.0, !taffo.info !33, !taffo.target !35
  %arrayidx14.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !33, !taffo.target !35
  %u4_28fixp = load i32, i32* %arrayidx14.u4_28fixp, align 4, !taffo.info !33, !taffo.target !35
  %1 = uitofp i32 %u4_28fixp to float, !taffo.info !33, !taffo.target !35
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x41B0000000000000, !taffo.info !33, !taffo.target !35
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx15 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx16, align 4, !taffo.info !51, !taffo.target !35
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !52, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !54

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !57

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !58
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nj, [12 x float]* noundef %C) #0 !taffo.initweight !59 !taffo.funinfo !60 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !47
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !65
  %add = add nsw i32 %mul, %j.0, !taffo.info !65
  %rem = srem i32 %add, 20, !taffo.info !65, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !63
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !68

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !69

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm.1_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u4_28fixp, [12 x i32]* noundef %C.u4_28fixp, [16 x i32]* noundef %A.u1_31fixp, [12 x i32]* noundef %B.u1_31fixp) #0 !taffo.initweight !70 !taffo.funinfo !71 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !47
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !33
  %arrayidx4.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !33
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !33
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !33
  %1 = lshr i32 %beta.u4_28fixp, 1, !taffo.info !44
  %2 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !75
  %mul.u4_28fixp = shl i32 %2, 1, !taffo.info !78
  store i32 %mul.u4_28fixp, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !80

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !47
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !63
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !47
  %cmp9 = icmp slt i32 %j.1, %nj, !taffo.info !63
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !36
  %arrayidx12.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx11.u1_31fixp, i32 0, i32 %k.0, !taffo.info !36
  %u1_31fixp = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !81
  %3 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !28
  %4 = lshr i32 %u1_31fixp, 1, !taffo.info !81
  %5 = ashr i32 %4, 1, !taffo.info !81
  %6 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %5, i32 29), !taffo.info !82
  %mul13.u2_30fixp = shl i32 %6, 1, !taffo.info !85
  %arrayidx14.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %B.u1_31fixp, i32 %k.0, !taffo.info !39
  %arrayidx15.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx14.u1_31fixp, i32 0, i32 %j.1, !taffo.info !39
  %u1_31fixp2 = load i32, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !86
  %7 = lshr i32 %mul13.u2_30fixp, 1, !taffo.info !85
  %8 = lshr i32 %u1_31fixp2, 1, !taffo.info !86
  %9 = ashr i32 %7, 2, !taffo.info !85
  %10 = ashr i32 %8, 3, !taffo.info !86
  %11 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !87
  %mul16.u4_28fixp = shl i32 %11, 1, !taffo.info !89
  %arrayidx17.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !33
  %arrayidx18.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx17.u4_28fixp, i32 0, i32 %j.1, !taffo.info !33
  %u4_28fixp1 = load i32, i32* %arrayidx18.u4_28fixp, align 4, !taffo.info !33
  %add.u4_28fixp = add i32 %u4_28fixp1, %mul16.u4_28fixp, !taffo.info !90
  store i32 %add.u4_28fixp, i32* %arrayidx18.u4_28fixp, align 4, !taffo.info !51
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !92

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !93

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !94

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %C.u4_28fixp, [16 x i32]* noundef %A.u1_31fixp, [12 x i32]* noundef %B.u1_31fixp) #0 !taffo.initweight !95 !taffo.funinfo !96 !taffo.sourceFunction !97 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !41, !taffo.constinfo !98
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !79, !taffo.constinfo !100
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !103, !taffo.initweight !105
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !106, !taffo.initweight !107
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !108, !taffo.initweight !110

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !103, !taffo.initweight !105
  %cmp4 = icmp slt i32 %j.0, %nj, !taffo.info !106, !taffo.initweight !107
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !108, !taffo.initweight !110

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !111, !taffo.initweight !107
  %add = add nsw i32 %mul, 1, !taffo.info !113, !taffo.initweight !110, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !115, !taffo.initweight !117
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !118
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !119
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !118
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !119
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !120
  %div.u1_31fixp = shl i32 %2, 4, !taffo.info !122
  %arrayidx.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !123
  %arrayidx7.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !123
  %3 = lshr i32 %div.u1_31fixp, 3, !taffo.info !122
  store i32 %3, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !124
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !127

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !128

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !103, !taffo.initweight !105
  %cmp12 = icmp slt i32 %i.1, %ni, !taffo.info !106, !taffo.initweight !107
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !108, !taffo.initweight !110

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !103, !taffo.initweight !105
  %cmp16 = icmp slt i32 %j.1, %nk, !taffo.info !106, !taffo.initweight !107
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !108, !taffo.initweight !110

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !129, !taffo.initweight !107
  %rem21 = srem i32 %mul20, %nk, !taffo.info !131, !taffo.initweight !110
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !133
  %conv23.u5_27fixp = shl i32 %nk, 27, !taffo.info !134
  %4 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !133
  %5 = lshr i32 %conv23.u5_27fixp, 1, !taffo.info !134
  %6 = ashr i32 %4, 1, !taffo.info !133
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 26), !taffo.info !136
  %div24.u1_31fixp = shl i32 %7, 5, !taffo.info !138
  %arrayidx25.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !138
  %arrayidx26.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx25.u1_31fixp, i32 0, i32 %j.1, !taffo.info !138
  store i32 %div24.u1_31fixp, i32* %arrayidx26.u1_31fixp, align 4, !taffo.info !124
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !139

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !140

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc53, %for.inc52 ], !taffo.info !103, !taffo.initweight !105
  %cmp34 = icmp slt i32 %i.2, %nk, !taffo.info !106, !taffo.initweight !107
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.info !108, !taffo.initweight !110

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc50, %for.inc49 ], !taffo.info !103, !taffo.initweight !105
  %cmp38 = icmp slt i32 %j.2, %nj, !taffo.info !106, !taffo.initweight !107
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.info !108, !taffo.initweight !110

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 2, !taffo.info !141, !taffo.initweight !107, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !143, !taffo.initweight !107
  %rem43 = srem i32 %mul42, %nj, !taffo.info !145, !taffo.initweight !110
  %conv44.u4_28fixp = shl i32 %rem43, 28, !taffo.info !146
  %conv45.u4_28fixp = shl i32 %nj, 28, !taffo.info !147
  %8 = lshr i32 %conv44.u4_28fixp, 1, !taffo.info !146
  %9 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !147
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 27), !taffo.info !148
  %div46.u1_31fixp = shl i32 %10, 4, !taffo.info !150
  %arrayidx47.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %B.u1_31fixp, i32 %i.2, !taffo.info !151
  %arrayidx48.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx47.u1_31fixp, i32 0, i32 %j.2, !taffo.info !151
  store i32 %div46.u1_31fixp, i32* %arrayidx48.u1_31fixp, align 4, !taffo.info !124
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %inc50 = add nsw i32 %j.2, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !152

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %inc53 = add nsw i32 %i.2, 1, !taffo.info !125, !taffo.initweight !107, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !153

for.end54:                                        ; preds = %for.cond33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 7.210000e+00}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 30}
!30 = !{double 1.500000e+00, double 1.500000e+00}
!31 = !{!29, !32, i1 false, i2 -1}
!32 = !{double 1.200000e+00, double 1.200000e+00}
!33 = !{!34, !1, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 28}
!35 = !{!"C"}
!36 = !{!37, !38, i1 false, i2 -1}
!37 = !{!"fixp", i32 32, i32 31}
!38 = !{double 0.000000e+00, double 9.375000e-01}
!39 = !{!37, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 9.166670e-01}
!41 = !{i1 false, !30, i1 false, i2 -1}
!42 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!43 = !{i1 false}
!44 = !{!34, !32, i1 false, i2 -1}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.100000e+01}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 1.430000e+02}
!51 = !{i1 false, !1, i1 false, i2 -1}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 1.430000e+02}
!54 = distinct !{!54, !23}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 1.100000e+01}
!57 = distinct !{!57, !23}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = !{i32 -1, i32 -1, i32 -1}
!60 = !{i32 1, !16, i32 1, !61, i32 1, !0}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.200000e+01, double 1.200000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 0.000000e+00}
!67 = !{i1 false, i1 false, i1 false}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = !{i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!71 = !{i32 1, !16, i32 1, !61, i32 1, !72, i32 1, !28, i32 1, !44, i32 1, !33, i32 1, !36, i32 1, !39}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.600000e+01, double 1.600000e+01}
!74 = distinct !{null}
!75 = !{!76, !77, i1 false, i2 -1}
!76 = !{!"fixp", i32 -32, i32 27}
!77 = !{double 0.000000e+00, double 8.652000e+00}
!78 = !{!34, !77, i1 false, i2 -1}
!79 = !{i1 false, !32, i1 false, i2 -1}
!80 = distinct !{!80, !23}
!81 = !{!29, !38, i1 false, i2 -1}
!82 = !{!83, !84, i1 false, i2 -1}
!83 = !{!"fixp", i32 -32, i32 29}
!84 = !{double 0.000000e+00, double 1.406250e+00}
!85 = !{!29, !84, i1 false, i2 -1}
!86 = !{!29, !40, i1 false, i2 -1}
!87 = !{!76, !88, i1 false, i2 -1}
!88 = !{double 0.000000e+00, double 0x3FF4A0007DD44135}
!89 = !{!34, !88, i1 false, i2 -1}
!90 = !{!34, !91, i1 false, i2 -1}
!91 = !{double 0.000000e+00, double 0x4020FF852E72DA12}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23}
!94 = distinct !{!94, !23}
!95 = !{i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!96 = !{i32 1, !16, i32 1, !61, i32 1, !72, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !36, i32 1, !39}
!97 = distinct !{null}
!98 = !{!99, i1 false}
!99 = !{i1 false, !30, i1 false, i2 0}
!100 = !{!101, i1 false}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!103 = !{i1 false, !104, i1 false, i2 1}
!104 = !{double 0.000000e+00, double 1.700000e+01}
!105 = !{i32 0}
!106 = !{i1 false, !48, i1 false, i2 1}
!107 = !{i32 2}
!108 = !{i1 false, !109, i1 false, i2 1}
!109 = !{double 0.000000e+00, double 1.600000e+01}
!110 = !{i32 3}
!111 = !{i1 false, !112, i1 false, i2 1}
!112 = !{double 0.000000e+00, double 2.560000e+02}
!113 = !{i1 false, !114, i1 false, i2 1}
!114 = !{double 1.000000e+00, double 2.570000e+02}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 0.000000e+00, double 9.000000e+00}
!117 = !{i32 4}
!118 = !{!34, !116, i1 false, i2 1}
!119 = !{!34, !17, i1 false, i2 1}
!120 = !{!76, !121, i1 false, i2 1}
!121 = !{double 0.000000e+00, double 9.000000e-01}
!122 = !{!37, !121, i1 false, i2 1}
!123 = !{!34, !1, i1 false, i2 1}
!124 = !{i1 false, i1 false, i1 false, i2 1}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 1.000000e+00, double 1.700000e+01}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 2.720000e+02}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 1.500000e+01}
!133 = !{!34, !132, i1 false, i2 1}
!134 = !{!135, !73, i1 false, i2 1}
!135 = !{!"fixp", i32 32, i32 27}
!136 = !{!137, !38, i1 false, i2 1}
!137 = !{!"fixp", i32 -32, i32 26}
!138 = !{!37, !38, i1 false, i2 1}
!139 = distinct !{!139, !23}
!140 = distinct !{!140, !23}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 2.000000e+00, double 1.800000e+01}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 2.880000e+02}
!145 = !{i1 false, !46, i1 false, i2 1}
!146 = !{!34, !46, i1 false, i2 1}
!147 = !{!34, !62, i1 false, i2 1}
!148 = !{!76, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 0x3FED555555555555}
!150 = !{!37, !149, i1 false, i2 1}
!151 = !{!37, !40, i1 false, i2 1}
!152 = distinct !{!152, !23}
!153 = distinct !{!153, !23}
