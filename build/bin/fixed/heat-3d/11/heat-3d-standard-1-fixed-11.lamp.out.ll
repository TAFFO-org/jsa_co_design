; ModuleID = './build/bin/fixed/heat-3d/11/heat-3d-standard-1-fixed-11.out.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -8192
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
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -8192
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
  %A.u5_27fixp = alloca [5 x [5 x [5 x i32]]], align 4, !taffo.info !28, !taffo.target !31
  %B.u5_27fixp = alloca [5 x [5 x [5 x i32]]], align 4, !taffo.info !28
  %arraydecay.u5_27fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  %arraydecay3.u5_27fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !28
  call void @init_array.2_fixp(i32 5, [5 x [5 x i32]]* %arraydecay.u5_27fixp, [5 x [5 x i32]]* %arraydecay3.u5_27fixp), !taffo.info !32, !taffo.constinfo !33, !taffo.target !31
  call void @timer_start(), !taffo.constinfo !34
  %arraydecay4.u5_27fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  %arraydecay5.u5_27fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !28
  call void @kernel_heat_3d.1_fixp(i32 10, i32 5, [5 x [5 x i32]]* %arraydecay4.u5_27fixp, [5 x [5 x i32]]* %arraydecay5.u5_27fixp), !taffo.info !32, !taffo.constinfo !35, !taffo.target !31
  call void @timer_stop(), !taffo.constinfo !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !36
  %cmp = icmp slt i32 %i.0, 5, !taffo.info !38
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !40
  %cmp7 = icmp slt i32 %j.0, 5, !taffo.info !38
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %k.0 = phi i32 [ 0, %for.body8 ], [ %inc, %for.inc ], !taffo.info !42
  %cmp10 = icmp slt i32 %k.0, 5, !taffo.info !38
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx.u5_27fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u5_27fixp, i32 0, i32 %i.0, !taffo.info !28, !taffo.target !31
  %arrayidx12.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28, !taffo.target !31
  %arrayidx13.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx12.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28, !taffo.target !31
  %u5_27fixp = load i32, i32* %arrayidx13.u5_27fixp, align 4, !taffo.info !28, !taffo.target !31
  %0 = uitofp i32 %u5_27fixp to float, !taffo.info !28, !taffo.target !31
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41A0000000000000, !taffo.info !28, !taffo.target !31
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx14 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx16, align 4, !taffo.info !32, !taffo.target !31
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !44, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !46

for.end:                                          ; preds = %for.cond9
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !47, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !49

for.end19:                                        ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !50, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !52

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 5, [5 x [5 x float]]* noundef getelementptr inbounds ([5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 0)), !taffo.constinfo !53
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [5 x [5 x float]]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !38
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !57
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !38
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !57
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !38
  %cmp5 = icmp slt i32 %k.0, %n, !taffo.info !57
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %n, !taffo.info !59
  %mul7 = mul nsw i32 %mul, %n, !taffo.info !59
  %mul8 = mul nsw i32 %j.0, %n, !taffo.info !59
  %add = add nsw i32 %mul7, %mul8, !taffo.info !59
  %add9 = add nsw i32 %add, %k.0, !taffo.info !59
  %rem = srem i32 %add9, 20, !taffo.info !59, !taffo.constinfo !21
  %cmp10 = icmp eq i32 %rem, 0, !taffo.info !57
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !53
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !0
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !0
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !33
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !61

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !62

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !63

for.end19:                                        ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.1_fixp(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x i32]]* noundef %A.u5_27fixp, [5 x [5 x i32]]* noundef %B.u5_27fixp) #0 !taffo.initweight !64 !taffo.funinfo !65 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %t.0 = phi i32 [ 1, %entry ], [ %inc145, %for.inc144 ], !taffo.info !67
  %cmp = icmp sle i32 %t.0, 10, !taffo.info !38
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc67, %for.inc66 ], !taffo.info !67
  %sub = sub nsw i32 %n, 1, !taffo.info !69, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !38
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc64, %for.inc63 ], !taffo.info !67
  %sub5 = sub nsw i32 %n, 1, !taffo.info !69, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !38
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 1, %for.body7 ], [ %inc, %for.inc ], !taffo.info !67
  %sub9 = sub nsw i32 %n, 1, !taffo.info !69, !taffo.constinfo !21
  %cmp10 = icmp slt i32 %k.0, %sub9, !taffo.info !38
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %add = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %add, !taffo.info !28
  %arrayidx12.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx13.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx12.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp = load i32, i32* %arrayidx13.u5_27fixp, align 4, !taffo.info !28
  %arrayidx14.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx15.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx14.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx16.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx15.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp1 = load i32, i32* %arrayidx16.u5_27fixp, align 4, !taffo.info !73
  %0 = shl i32 2, 29
  %1 = lshr i32 %u5_27fixp1, 1, !taffo.info !73
  %2 = ashr i32 %0, 4
  %3 = ashr i32 %1, 1, !taffo.info !73
  %mul.s7_25fixp = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 25), !taffo.info !75
  %4 = lshr i32 %u5_27fixp, 2, !taffo.info !28
  %sub17.s7_25fixp = sub i32 %4, %mul.s7_25fixp, !taffo.info !78
  %sub18 = sub nsw i32 %i.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx19.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %sub18, !taffo.info !28
  %arrayidx20.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx19.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx21.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx20.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp2 = load i32, i32* %arrayidx21.u5_27fixp, align 4, !taffo.info !28
  %5 = lshr i32 %u5_27fixp2, 2, !taffo.info !28
  %add22.s7_25fixp = add i32 %sub17.s7_25fixp, %5, !taffo.info !80
  %6 = lshr i32 1, 1
  %7 = ashr i32 %add22.s7_25fixp, 23, !taffo.info !80
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 2), !taffo.info !82
  %mul23.s5_27fixp = shl i32 %8, 25, !taffo.info !85, !taffo.constinfo !87
  %arrayidx24.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %add25 = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx26.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx24.u5_27fixp, i32 0, i32 %add25, !taffo.info !28
  %arrayidx27.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx26.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp3 = load i32, i32* %arrayidx27.u5_27fixp, align 4, !taffo.info !28
  %arrayidx28.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx29.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx28.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx30.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx29.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp4 = load i32, i32* %arrayidx30.u5_27fixp, align 4, !taffo.info !73
  %9 = shl i32 2, 29
  %10 = lshr i32 %u5_27fixp4, 1, !taffo.info !73
  %11 = ashr i32 %9, 4
  %12 = ashr i32 %10, 1, !taffo.info !73
  %mul31.s7_25fixp = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 25), !taffo.info !75
  %13 = lshr i32 %u5_27fixp3, 2, !taffo.info !28
  %sub32.s7_25fixp = sub i32 %13, %mul31.s7_25fixp, !taffo.info !78
  %arrayidx33.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx35.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx33.u5_27fixp, i32 0, i32 %sub34, !taffo.info !28
  %arrayidx36.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx35.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp5 = load i32, i32* %arrayidx36.u5_27fixp, align 4, !taffo.info !28
  %14 = lshr i32 %u5_27fixp5, 2, !taffo.info !28
  %add37.s7_25fixp = add i32 %sub32.s7_25fixp, %14, !taffo.info !80
  %15 = lshr i32 1, 1
  %16 = ashr i32 %add37.s7_25fixp, 23, !taffo.info !80
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 2), !taffo.info !82
  %mul38.s5_27fixp = shl i32 %17, 25, !taffo.info !85, !taffo.constinfo !87
  %18 = ashr i32 %mul23.s5_27fixp, 1, !taffo.info !85, !taffo.constinfo !87
  %19 = ashr i32 %mul38.s5_27fixp, 1, !taffo.info !85, !taffo.constinfo !87
  %add39.s6_26fixp = add i32 %18, %19, !taffo.info !90
  %arrayidx40.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx41.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx40.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %add42 = add nsw i32 %k.0, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx43.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx41.u5_27fixp, i32 0, i32 %add42, !taffo.info !28
  %u5_27fixp6 = load i32, i32* %arrayidx43.u5_27fixp, align 4, !taffo.info !28
  %arrayidx44.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx45.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx44.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx46.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx45.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp7 = load i32, i32* %arrayidx46.u5_27fixp, align 4, !taffo.info !73
  %20 = shl i32 2, 29
  %21 = lshr i32 %u5_27fixp7, 1, !taffo.info !73
  %22 = ashr i32 %20, 4
  %23 = ashr i32 %21, 1, !taffo.info !73
  %mul47.s7_25fixp = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 25), !taffo.info !75
  %24 = lshr i32 %u5_27fixp6, 2, !taffo.info !28
  %sub48.s7_25fixp = sub i32 %24, %mul47.s7_25fixp, !taffo.info !78
  %arrayidx49.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx50.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx49.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %sub51 = sub nsw i32 %k.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx52.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx50.u5_27fixp, i32 0, i32 %sub51, !taffo.info !28
  %u5_27fixp8 = load i32, i32* %arrayidx52.u5_27fixp, align 4, !taffo.info !28
  %25 = lshr i32 %u5_27fixp8, 2, !taffo.info !28
  %add53.s7_25fixp = add i32 %sub48.s7_25fixp, %25, !taffo.info !80
  %26 = lshr i32 1, 1
  %27 = ashr i32 %add53.s7_25fixp, 23, !taffo.info !80
  %28 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %27, i32 2), !taffo.info !82
  %mul54.s6_26fixp = shl i32 %28, 24, !taffo.info !93, !taffo.constinfo !87
  %29 = ashr i32 %add39.s6_26fixp, 1, !taffo.info !90
  %30 = ashr i32 %mul54.s6_26fixp, 1, !taffo.info !93, !taffo.constinfo !87
  %add55.s7_25fixp = add i32 %29, %30, !taffo.info !94
  %arrayidx56.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx57.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx56.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx58.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx57.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %u5_27fixp9 = load i32, i32* %arrayidx58.u5_27fixp, align 4, !taffo.info !28
  %31 = lshr i32 %u5_27fixp9, 2, !taffo.info !28
  %add59.s7_25fixp = add i32 %add55.s7_25fixp, %31, !taffo.info !96
  %arrayidx60.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx61.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx60.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %arrayidx62.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx61.u5_27fixp, i32 0, i32 %k.0, !taffo.info !28
  %32 = shl i32 %add59.s7_25fixp, 2, !taffo.info !96
  store i32 %32, i32* %arrayidx62.u5_27fixp, align 4, !taffo.info !32
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !98

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !99

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !100

for.end68:                                        ; preds = %for.cond1
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %i.1 = phi i32 [ 1, %for.end68 ], [ %inc142, %for.inc141 ], !taffo.info !67
  %sub70 = sub nsw i32 %n, 1, !taffo.info !69, !taffo.constinfo !21
  %cmp71 = icmp slt i32 %i.1, %sub70, !taffo.info !38
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %j.1 = phi i32 [ 1, %for.body72 ], [ %inc139, %for.inc138 ], !taffo.info !67
  %sub74 = sub nsw i32 %n, 1, !taffo.info !69, !taffo.constinfo !21
  %cmp75 = icmp slt i32 %j.1, %sub74, !taffo.info !38
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %k.1 = phi i32 [ 1, %for.body76 ], [ %inc136, %for.inc135 ], !taffo.info !67
  %sub78 = sub nsw i32 %n, 1, !taffo.info !69, !taffo.constinfo !21
  %cmp79 = icmp slt i32 %k.1, %sub78, !taffo.info !38
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %add81 = add nsw i32 %i.1, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx82.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %add81, !taffo.info !28
  %arrayidx83.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx82.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx84.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx83.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp10 = load i32, i32* %arrayidx84.u5_27fixp, align 4, !taffo.info !28
  %arrayidx85.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx86.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx85.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx87.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx86.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp11 = load i32, i32* %arrayidx87.u5_27fixp, align 4, !taffo.info !73
  %33 = shl i32 2, 29
  %34 = lshr i32 %u5_27fixp11, 1, !taffo.info !73
  %35 = ashr i32 %33, 4
  %36 = ashr i32 %34, 1, !taffo.info !73
  %mul88.s7_25fixp = call i32 @llvm.smul.fix.i32(i32 %35, i32 %36, i32 25), !taffo.info !75
  %37 = lshr i32 %u5_27fixp10, 2, !taffo.info !28
  %sub89.s7_25fixp = sub i32 %37, %mul88.s7_25fixp, !taffo.info !78
  %sub90 = sub nsw i32 %i.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx91.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %sub90, !taffo.info !28
  %arrayidx92.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx91.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx93.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx92.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp12 = load i32, i32* %arrayidx93.u5_27fixp, align 4, !taffo.info !28
  %38 = lshr i32 %u5_27fixp12, 2, !taffo.info !28
  %add94.s7_25fixp = add i32 %sub89.s7_25fixp, %38, !taffo.info !80
  %39 = lshr i32 1, 1
  %40 = ashr i32 %add94.s7_25fixp, 23, !taffo.info !80
  %41 = call i32 @llvm.smul.fix.i32(i32 %39, i32 %40, i32 2), !taffo.info !82
  %mul95.s5_27fixp = shl i32 %41, 25, !taffo.info !85, !taffo.constinfo !87
  %arrayidx96.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %add97 = add nsw i32 %j.1, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx98.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx96.u5_27fixp, i32 0, i32 %add97, !taffo.info !28
  %arrayidx99.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx98.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp13 = load i32, i32* %arrayidx99.u5_27fixp, align 4, !taffo.info !28
  %arrayidx100.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx101.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx100.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx102.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx101.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp14 = load i32, i32* %arrayidx102.u5_27fixp, align 4, !taffo.info !73
  %42 = shl i32 2, 29
  %43 = lshr i32 %u5_27fixp14, 1, !taffo.info !73
  %44 = ashr i32 %42, 4
  %45 = ashr i32 %43, 1, !taffo.info !73
  %mul103.s7_25fixp = call i32 @llvm.smul.fix.i32(i32 %44, i32 %45, i32 25), !taffo.info !75
  %46 = lshr i32 %u5_27fixp13, 2, !taffo.info !28
  %sub104.s7_25fixp = sub i32 %46, %mul103.s7_25fixp, !taffo.info !78
  %arrayidx105.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %sub106 = sub nsw i32 %j.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx107.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx105.u5_27fixp, i32 0, i32 %sub106, !taffo.info !28
  %arrayidx108.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx107.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp15 = load i32, i32* %arrayidx108.u5_27fixp, align 4, !taffo.info !28
  %47 = lshr i32 %u5_27fixp15, 2, !taffo.info !28
  %add109.s7_25fixp = add i32 %sub104.s7_25fixp, %47, !taffo.info !80
  %48 = lshr i32 1, 1
  %49 = ashr i32 %add109.s7_25fixp, 23, !taffo.info !80
  %50 = call i32 @llvm.smul.fix.i32(i32 %48, i32 %49, i32 2), !taffo.info !82
  %mul110.s5_27fixp = shl i32 %50, 25, !taffo.info !85, !taffo.constinfo !87
  %51 = ashr i32 %mul95.s5_27fixp, 1, !taffo.info !85, !taffo.constinfo !87
  %52 = ashr i32 %mul110.s5_27fixp, 1, !taffo.info !85, !taffo.constinfo !87
  %add111.s6_26fixp = add i32 %51, %52, !taffo.info !90
  %arrayidx112.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx113.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx112.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %add114 = add nsw i32 %k.1, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx115.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx113.u5_27fixp, i32 0, i32 %add114, !taffo.info !28
  %u5_27fixp16 = load i32, i32* %arrayidx115.u5_27fixp, align 4, !taffo.info !28
  %arrayidx116.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx117.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx116.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx118.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx117.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp17 = load i32, i32* %arrayidx118.u5_27fixp, align 4, !taffo.info !73
  %53 = shl i32 2, 29
  %54 = lshr i32 %u5_27fixp17, 1, !taffo.info !73
  %55 = ashr i32 %53, 4
  %56 = ashr i32 %54, 1, !taffo.info !73
  %mul119.s7_25fixp = call i32 @llvm.smul.fix.i32(i32 %55, i32 %56, i32 25), !taffo.info !75
  %57 = lshr i32 %u5_27fixp16, 2, !taffo.info !28
  %sub120.s7_25fixp = sub i32 %57, %mul119.s7_25fixp, !taffo.info !78
  %arrayidx121.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx122.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx121.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %sub123 = sub nsw i32 %k.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx124.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx122.u5_27fixp, i32 0, i32 %sub123, !taffo.info !28
  %u5_27fixp18 = load i32, i32* %arrayidx124.u5_27fixp, align 4, !taffo.info !28
  %58 = lshr i32 %u5_27fixp18, 2, !taffo.info !28
  %add125.s7_25fixp = add i32 %sub120.s7_25fixp, %58, !taffo.info !80
  %59 = lshr i32 1, 1
  %60 = ashr i32 %add125.s7_25fixp, 23, !taffo.info !80
  %61 = call i32 @llvm.smul.fix.i32(i32 %59, i32 %60, i32 2), !taffo.info !82
  %mul126.s6_26fixp = shl i32 %61, 24, !taffo.info !93, !taffo.constinfo !87
  %62 = ashr i32 %add111.s6_26fixp, 1, !taffo.info !90
  %63 = ashr i32 %mul126.s6_26fixp, 1, !taffo.info !93, !taffo.constinfo !87
  %add127.s7_25fixp = add i32 %62, %63, !taffo.info !94
  %arrayidx128.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx129.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx128.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx130.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx129.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %u5_27fixp19 = load i32, i32* %arrayidx130.u5_27fixp, align 4, !taffo.info !28
  %64 = lshr i32 %u5_27fixp19, 2, !taffo.info !28
  %add131.s7_25fixp = add i32 %add127.s7_25fixp, %64, !taffo.info !96
  %arrayidx132.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx133.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx132.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %arrayidx134.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx133.u5_27fixp, i32 0, i32 %k.1, !taffo.info !28
  %65 = shl i32 %add131.s7_25fixp, 2, !taffo.info !96
  store i32 %65, i32* %arrayidx134.u5_27fixp, align 4, !taffo.info !32
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %inc136 = add nsw i32 %k.1, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond77, !llvm.loop !101

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.1, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond73, !llvm.loop !102

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %inc142 = add nsw i32 %i.1, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !103

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %inc145 = add nsw i32 %t.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !104

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [5 x [5 x i32]]* noundef %A.u5_27fixp, [5 x [5 x i32]]* noundef %B.u5_27fixp) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !107 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !108, !taffo.initweight !110
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !111, !taffo.initweight !112
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !108, !taffo.initweight !113

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !108, !taffo.initweight !110
  %cmp5 = icmp slt i32 %j.0, %n, !taffo.info !111, !taffo.initweight !112
  br i1 %cmp5, label %for.body6, label %for.end19, !taffo.info !108, !taffo.initweight !113

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !108, !taffo.initweight !110
  %cmp8 = icmp slt i32 %k.0, %n, !taffo.info !111, !taffo.initweight !112
  br i1 %cmp8, label %for.body9, label %for.end, !taffo.info !108, !taffo.initweight !113

for.body9:                                        ; preds = %for.cond7
  %add = add nsw i32 %i.0, %j.0, !taffo.info !114, !taffo.initweight !112
  %sub = sub nsw i32 %n, %k.0, !taffo.info !116, !taffo.initweight !112
  %add10 = add nsw i32 %add, %sub, !taffo.info !118, !taffo.initweight !113
  %conv.s9_23fixp = shl i32 %add10, 23, !taffo.info !120
  %0 = shl i32 10, 27
  %1 = ashr i32 %conv.s9_23fixp, 3, !taffo.info !120
  %2 = ashr i32 %0, 7
  %mul.s12_20fixp = call i32 @llvm.smul.fix.i32(i32 %1, i32 %2, i32 20), !taffo.info !122
  %conv11.u3_29fixp = shl i32 %n, 29, !taffo.info !125
  %3 = lshr i32 %conv11.u3_29fixp, 1, !taffo.info !125
  %4 = ashr i32 %3, 8, !taffo.info !125
  %div.s12_20fixp = call i32 @llvm.sdiv.fix.i32(i32 %mul.s12_20fixp, i32 %4, i32 20), !taffo.info !127
  %arrayidx.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u5_27fixp, i32 %i.0, !taffo.info !129
  %arrayidx12.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !129
  %arrayidx13.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx12.u5_27fixp, i32 0, i32 %k.0, !taffo.info !129
  %5 = shl i32 %div.s12_20fixp, 7, !taffo.info !127
  store i32 %5, i32* %arrayidx13.u5_27fixp, align 4, !taffo.info !130
  %arrayidx14.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u5_27fixp, i32 %i.0, !taffo.info !129
  %arrayidx15.u5_27fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx14.u5_27fixp, i32 0, i32 %j.0, !taffo.info !129
  %arrayidx16.u5_27fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx15.u5_27fixp, i32 0, i32 %k.0, !taffo.info !129
  %6 = shl i32 %div.s12_20fixp, 7, !taffo.info !127
  store i32 %6, i32* %arrayidx16.u5_27fixp, align 4, !taffo.info !130
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.info !131, !taffo.initweight !112, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !133

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !131, !taffo.initweight !112, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !134

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !131, !taffo.initweight !112, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !135

for.end22:                                        ; preds = %for.cond
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
!1 = !{double 0.000000e+00, double 2.600000e+01}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!29 = !{!"fixp", i32 32, i32 27}
!30 = !{double 2.000000e+00, double 2.600000e+01}
!31 = !{!"A"}
!32 = !{i1 false, !30, i1 false, i2 -1}
!33 = !{i1 false, i1 false, i1 false, i1 false}
!34 = !{i1 false}
!35 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 0.000000e+00, double 6.000000e+00}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 1.000000e+00}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 3.600000e+01}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 2.160000e+02}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 1.000000e+00, double 2.160000e+02}
!46 = distinct !{!46, !23}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 3.600000e+01}
!49 = distinct !{!49, !23}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 1.000000e+00, double 6.000000e+00}
!52 = distinct !{!52, !23}
!53 = !{i1 false, i1 false, i1 false}
!54 = !{i32 1, !55, i32 1, !0}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 5.000000e+00, double 5.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 1.000000e+00}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 0.000000e+00}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = !{i32 -1, i32 -1, i32 2, i32 2}
!65 = !{i32 1, !16, i32 1, !55, i32 1, !28, i32 1, !28}
!66 = distinct !{null}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 1.200000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 4.000000e+00, double 4.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 2.000000e+00, double 1.200000e+01}
!73 = !{!74, !30, i1 false, i2 -1}
!74 = !{!"fixp", i32 32, i32 26}
!75 = !{!76, !77, i1 false, i2 -1}
!76 = !{!"fixp", i32 -32, i32 25}
!77 = !{double 4.000000e+00, double 5.200000e+01}
!78 = !{!76, !79, i1 false, i2 -1}
!79 = !{double -5.000000e+01, double 2.200000e+01}
!80 = !{!76, !81, i1 false, i2 -1}
!81 = !{double -4.800000e+01, double 4.800000e+01}
!82 = !{!83, !84, i1 false, i2 -1}
!83 = !{!"fixp", i32 -32, i32 2}
!84 = !{double -6.000000e+00, double 6.000000e+00}
!85 = !{!86, !84, i1 false, i2 -1}
!86 = !{!"fixp", i32 -32, i32 27}
!87 = !{!88, i1 false}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.250000e-01, double 1.250000e-01}
!90 = !{!91, !92, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 26}
!92 = !{double -1.200000e+01, double 1.200000e+01}
!93 = !{!91, !84, i1 false, i2 -1}
!94 = !{!76, !95, i1 false, i2 -1}
!95 = !{double -1.800000e+01, double 1.800000e+01}
!96 = !{!76, !97, i1 false, i2 -1}
!97 = !{double -1.600000e+01, double 4.400000e+01}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !23}
!105 = !{i32 -1, i32 2, i32 2}
!106 = !{i32 1, !55, i32 1, !28, i32 1, !28}
!107 = distinct !{null}
!108 = !{i1 false, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 8.000000e+01}
!110 = !{i32 0}
!111 = !{i1 false, !39, i1 false, i2 -1}
!112 = !{i32 2}
!113 = !{i32 3}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 1.600000e+02}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double -7.500000e+01, double 5.000000e+00}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double -7.500000e+01, double 1.650000e+02}
!120 = !{!121, !119, i1 false, i2 -1}
!121 = !{!"fixp", i32 -32, i32 23}
!122 = !{!123, !124, i1 false, i2 -1}
!123 = !{!"fixp", i32 -32, i32 20}
!124 = !{double -7.500000e+02, double 1.650000e+03}
!125 = !{!126, !56, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 29}
!127 = !{!123, !128, i1 false, i2 -1}
!128 = !{double -1.500000e+02, double 3.300000e+02}
!129 = !{!29, !30, i1 false, i2 1}
!130 = !{i1 false, i1 false, i1 false, i2 1}
!131 = !{i1 false, !132, i1 false, i2 -1}
!132 = !{double 1.000000e+00, double 8.100000e+01}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
!135 = distinct !{!135, !23}
