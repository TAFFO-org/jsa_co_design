; ModuleID = './build/bin/fixed/syrk/24/syrk-standard-1-fixed-24.out.ll'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -1
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
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -1
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -1
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -1
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -1
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -1
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
  %C.u4_28fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !33, !taffo.target !35
  %A.u1_31fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !36
  %arraydecay.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay5.u1_31fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  call void @init_array.2_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u4_28fixp, [10 x i32]* %arraydecay5.u1_31fixp), !taffo.info !39, !taffo.constinfo !40
  call void @timer_start(), !taffo.constinfo !41
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !28
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !42
  %arraydecay6.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay7.u1_31fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %0 = lshr i32 %u2_30fixp1, 2, !taffo.info !42
  call void @kernel_syrk.1_fixp(i32 16, i32 10, i32 %u2_30fixp, i32 %0, [16 x i32]* %arraydecay6.u4_28fixp, [10 x i32]* %arraydecay7.u1_31fixp), !taffo.info !39, !taffo.constinfo !40
  call void @timer_stop(), !taffo.constinfo !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !45
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !43
  %cmp9 = icmp sle i32 %j.0, %i.0, !taffo.info !45
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %arrayidx.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u4_28fixp, i32 0, i32 %i.0, !taffo.info !33, !taffo.target !35
  %arrayidx11.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !33, !taffo.target !35
  %u4_28fixp = load i32, i32* %arrayidx11.u4_28fixp, align 4, !taffo.info !33, !taffo.target !35
  %1 = uitofp i32 %u4_28fixp to float, !taffo.info !33, !taffo.target !35
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x41B0000000000000, !taffo.info !33, !taffo.target !35
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx13, align 4, !taffo.info !47, !taffo.target !35
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !48, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !50

for.end:                                          ; preds = %for.cond8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !48, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !51

for.end16:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !52
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !25 !taffo.funinfo !53 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !45
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !56
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !58
  %add = add nsw i32 %mul, %j.0, !taffo.info !58
  %rem = srem i32 %add, 20, !taffo.info !58, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !56
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !52
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !61

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !62

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.1_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u4_28fixp, [16 x i32]* noundef %C.u4_28fixp, [10 x i32]* noundef %A.u1_31fixp) #0 !taffo.initweight !63 !taffo.funinfo !64 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !45
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !45
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !33
  %arrayidx4.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !33
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !33
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !33
  %1 = lshr i32 %beta.u4_28fixp, 1, !taffo.info !42
  %2 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !66
  %mul.u4_28fixp = shl i32 %2, 1, !taffo.info !69
  store i32 %mul.u4_28fixp, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !45
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !56
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !45
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !45
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !36
  %arrayidx12.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u1_31fixp, i32 0, i32 %k.0, !taffo.info !36
  %u1_31fixp = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !72
  %3 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !28
  %4 = lshr i32 %u1_31fixp, 1, !taffo.info !72
  %5 = ashr i32 %4, 1, !taffo.info !72
  %6 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %5, i32 29), !taffo.info !73
  %mul13.u2_30fixp = shl i32 %6, 1, !taffo.info !76
  %arrayidx14.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %j.1, !taffo.info !36
  %arrayidx15.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u1_31fixp, i32 0, i32 %k.0, !taffo.info !36
  %u1_31fixp2 = load i32, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !72
  %7 = lshr i32 %mul13.u2_30fixp, 1, !taffo.info !76
  %8 = lshr i32 %u1_31fixp2, 1, !taffo.info !72
  %9 = ashr i32 %7, 2, !taffo.info !76
  %10 = ashr i32 %8, 3, !taffo.info !72
  %11 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !77
  %mul16.u4_28fixp = shl i32 %11, 1, !taffo.info !79
  %arrayidx17.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !33
  %arrayidx18.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17.u4_28fixp, i32 0, i32 %j.1, !taffo.info !33
  %u4_28fixp1 = load i32, i32* %arrayidx18.u4_28fixp, align 4, !taffo.info !33
  %add.u4_28fixp = add i32 %u4_28fixp1, %mul16.u4_28fixp, !taffo.info !80
  store i32 %add.u4_28fixp, i32* %arrayidx18.u4_28fixp, align 4, !taffo.info !47
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !82

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !83

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !84

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u4_28fixp, [10 x i32]* noundef %A.u1_31fixp) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.sourceFunction !87 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !39, !taffo.constinfo !88
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !70, !taffo.constinfo !90
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !93, !taffo.initweight !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !95, !taffo.initweight !96
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !97, !taffo.initweight !99

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !100, !taffo.initweight !94
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !95, !taffo.initweight !96
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !102, !taffo.initweight !99

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !103, !taffo.initweight !96
  %add = add nsw i32 %mul, 1, !taffo.info !105, !taffo.initweight !99, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !107, !taffo.initweight !109
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !110
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !111
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !110
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !111
  %2 = ashr i32 %0, 1, !taffo.info !110
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !113
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !115
  %arrayidx.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !115
  %arrayidx7.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !115
  store i32 %div.u1_31fixp, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !116
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !117, !taffo.initweight !96, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !119

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !120, !taffo.initweight !96, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !121

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !93, !taffo.initweight !94
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !95, !taffo.initweight !96
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !97, !taffo.initweight !99

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !100, !taffo.initweight !94
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.info !122, !taffo.initweight !96
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !102, !taffo.initweight !99

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.info !103, !taffo.initweight !96
  %add20 = add nsw i32 %mul19, 2, !taffo.info !123, !taffo.initweight !99, !taffo.constinfo !21
  %rem21 = srem i32 %add20, %m, !taffo.info !125, !taffo.initweight !109
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !127
  %conv23.u4_28fixp = shl i32 %m, 28, !taffo.info !128
  %4 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !127
  %5 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !128
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 27), !taffo.info !129
  %div24.u1_31fixp = shl i32 %6, 4, !taffo.info !131
  %arrayidx25.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u4_28fixp, i32 %i.1, !taffo.info !132
  %arrayidx26.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx25.u4_28fixp, i32 0, i32 %j.1, !taffo.info !132
  %7 = lshr i32 %div24.u1_31fixp, 3, !taffo.info !131
  store i32 %7, i32* %arrayidx26.u4_28fixp, align 4, !taffo.info !116
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !117, !taffo.initweight !96, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !133

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !120, !taffo.initweight !96, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !134

for.end32:                                        ; preds = %for.cond11
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
!1 = !{double 0.000000e+00, double 0x401D2A28FE260B2D}
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
!39 = !{i1 false, !30, i1 false, i2 -1}
!40 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!41 = !{i1 false}
!42 = !{!34, !32, i1 false, i2 -1}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 0.000000e+00, double 1.700000e+01}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.000000e+00}
!47 = !{i1 false, !1, i1 false, i2 -1}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 1.700000e+01}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = !{i1 false, i1 false, i1 false}
!53 = !{i32 1, !54, i32 1, !0}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.600000e+01, double 1.600000e+01}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 1.000000e+00}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 0.000000e+00}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!64 = !{i32 1, !54, i32 1, !16, i32 1, !28, i32 1, !42, i32 1, !33, i32 1, !36}
!65 = distinct !{null}
!66 = !{!67, !68, i1 false, i2 -1}
!67 = !{!"fixp", i32 -32, i32 27}
!68 = !{double 0.000000e+00, double 0x40217FB23216D381}
!69 = !{!34, !68, i1 false, i2 -1}
!70 = !{i1 false, !32, i1 false, i2 -1}
!71 = distinct !{!71, !23}
!72 = !{!29, !38, i1 false, i2 -1}
!73 = !{!74, !75, i1 false, i2 -1}
!74 = !{!"fixp", i32 -32, i32 29}
!75 = !{double 0.000000e+00, double 1.406250e+00}
!76 = !{!29, !75, i1 false, i2 -1}
!77 = !{!67, !78, i1 false, i2 -1}
!78 = !{double 0.000000e+00, double 0x3FF5180000000000}
!79 = !{!34, !78, i1 false, i2 -1}
!80 = !{!34, !81, i1 false, i2 -1}
!81 = !{double 0.000000e+00, double 0x402138147F130596}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!86 = !{i32 1, !54, i32 1, !16, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !36}
!87 = distinct !{null}
!88 = !{!89, i1 false}
!89 = !{i1 false, !30, i1 false, i2 0}
!90 = !{!91, i1 false}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!93 = !{i1 false, !44, i1 false, i2 1}
!94 = !{i32 0}
!95 = !{i1 false, !46, i1 false, i2 1}
!96 = !{i32 2}
!97 = !{i1 false, !98, i1 false, i2 1}
!98 = !{double 0.000000e+00, double 1.600000e+01}
!99 = !{i32 3}
!100 = !{i1 false, !101, i1 false, i2 1}
!101 = !{double 0.000000e+00, double 1.100000e+01}
!102 = !{i1 false, !3, i1 false, i2 1}
!103 = !{i1 false, !104, i1 false, i2 1}
!104 = !{double 0.000000e+00, double 1.600000e+02}
!105 = !{i1 false, !106, i1 false, i2 1}
!106 = !{double 1.000000e+00, double 1.610000e+02}
!107 = !{i1 false, !108, i1 false, i2 1}
!108 = !{double 0.000000e+00, double 1.500000e+01}
!109 = !{i32 4}
!110 = !{!34, !108, i1 false, i2 1}
!111 = !{!112, !55, i1 false, i2 1}
!112 = !{!"fixp", i32 32, i32 27}
!113 = !{!114, !38, i1 false, i2 1}
!114 = !{!"fixp", i32 -32, i32 26}
!115 = !{!37, !38, i1 false, i2 1}
!116 = !{i1 false, i1 false, i1 false, i2 1}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 1.000000e+00, double 1.100000e+01}
!119 = distinct !{!119, !23}
!120 = !{i1 false, !49, i1 false, i2 1}
!121 = distinct !{!121, !23}
!122 = !{i1 false, !57, i1 false, i2 1}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 2.000000e+00, double 1.620000e+02}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 0.000000e+00, double 9.000000e+00}
!127 = !{!34, !126, i1 false, i2 1}
!128 = !{!34, !17, i1 false, i2 1}
!129 = !{!67, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 9.000000e-01}
!131 = !{!37, !130, i1 false, i2 1}
!132 = !{!34, !1, i1 false, i2 1}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
