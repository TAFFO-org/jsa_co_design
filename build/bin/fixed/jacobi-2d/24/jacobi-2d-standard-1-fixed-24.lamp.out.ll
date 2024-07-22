; ModuleID = './build/bin/fixed/jacobi-2d/24/jacobi-2d-standard-1-fixed-24.out.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A.u5_27fixp = alloca [15 x [15 x i32]], align 4, !taffo.info !28, !taffo.target !31
  %B.u5_27fixp = alloca [15 x [15 x i32]], align 4, !taffo.info !32
  %arraydecay.u5_27fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  %arraydecay3.u5_27fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !32
  call void @init_array.2_fixp(i32 15, [15 x i32]* %arraydecay.u5_27fixp, [15 x i32]* %arraydecay3.u5_27fixp), !taffo.info !34, !taffo.constinfo !35, !taffo.target !31
  call void @timer_start(), !taffo.constinfo !36
  %arraydecay4.u5_27fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  %arraydecay5.u5_27fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !32
  call void @kernel_jacobi_2d.1_fixp(i32 10, i32 15, [15 x i32]* %arraydecay4.u5_27fixp, [15 x i32]* %arraydecay5.u5_27fixp), !taffo.info !34, !taffo.constinfo !37, !taffo.target !31
  call void @timer_stop(), !taffo.constinfo !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ], !taffo.info !38
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !42
  %cmp7 = icmp slt i32 %j.0, 15, !taffo.info !40
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx.u5_27fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u5_27fixp, i32 0, i32 %i.0, !taffo.info !28, !taffo.target !31
  %arrayidx9.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28, !taffo.target !31
  %u5_27fixp = load i32, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !28, !taffo.target !31
  %0 = uitofp i32 %u5_27fixp to float, !taffo.info !28, !taffo.target !31
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41A0000000000000, !taffo.info !28, !taffo.target !31
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx10 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx11, align 4, !taffo.info !34, !taffo.target !31
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !44, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !46

for.end:                                          ; preds = %for.cond6
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !49

for.end14:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 15, [15 x float]* noundef getelementptr inbounds ([15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [15 x float]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !40
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !40
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !54
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !56
  %add = add nsw i32 %mul, %j.0, !taffo.info !56
  %rem = srem i32 %add, 20, !taffo.info !56, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !54
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !50
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !35
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !58

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !59

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.1_fixp(i32 noundef %tsteps, i32 noundef %n, [15 x i32]* noundef %A.u5_27fixp, [15 x i32]* noundef %B.u5_27fixp) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.sourceFunction !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc65, %for.inc64 ], !taffo.info !40
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc27, %for.inc26 ], !taffo.info !63
  %sub = sub nsw i32 %n, 1, !taffo.info !65, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !54
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ], !taffo.info !63
  %sub5 = sub nsw i32 %n, 1, !taffo.info !65, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !54
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx8.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %u5_27fixp = load i32, i32* %arrayidx8.u5_27fixp, align 4, !taffo.info !28
  %arrayidx9.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %sub10 = sub nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !21
  %arrayidx11.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx9.u5_27fixp, i32 0, i32 %sub10, !taffo.info !28
  %u5_27fixp1 = load i32, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !28
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !28
  %1 = lshr i32 %u5_27fixp1, 1, !taffo.info !28
  %add.u6_26fixp = add i32 %0, %1, !taffo.info !67
  %arrayidx12.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %add13 = add nsw i32 1, %j.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx14.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx12.u5_27fixp, i32 0, i32 %add13, !taffo.info !28
  %u5_27fixp2 = load i32, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !70
  %2 = lshr i32 %u5_27fixp2, 1, !taffo.info !70
  %add15.u6_26fixp = add i32 %add.u6_26fixp, %2, !taffo.info !71
  %add16 = add nsw i32 1, %i.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx17.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %add16, !taffo.info !28
  %arrayidx18.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx17.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %u5_27fixp3 = load i32, i32* %arrayidx18.u5_27fixp, align 4, !taffo.info !70
  %3 = lshr i32 %add15.u6_26fixp, 1, !taffo.info !71
  %4 = lshr i32 %u5_27fixp3, 2, !taffo.info !70
  %add19.u7_25fixp = add i32 %3, %4, !taffo.info !73
  %sub20 = sub nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  %arrayidx21.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %sub20, !taffo.info !28
  %arrayidx22.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx21.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %u5_27fixp4 = load i32, i32* %arrayidx22.u5_27fixp, align 4, !taffo.info !76
  %5 = lshr i32 %u5_27fixp4, 2, !taffo.info !76
  %add23.u7_25fixp = add i32 %add19.u7_25fixp, %5, !taffo.info !77
  %6 = lshr i32 13421773, 1
  %7 = lshr i32 %add23.u7_25fixp, 1, !taffo.info !77
  %8 = ashr i32 %6, 1
  %9 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %7, i32 24), !taffo.info !79
  %mul.u7_25fixp = shl i32 %9, 1, !taffo.info !82, !taffo.constinfo !83
  %arrayidx24.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !32
  %arrayidx25.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx24.u5_27fixp, i32 0, i32 %j.0, !taffo.info !32
  %10 = shl i32 %mul.u7_25fixp, 2, !taffo.info !82, !taffo.constinfo !83
  store i32 %10, i32* %arrayidx25.u5_27fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !87

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %inc27 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !88

for.end28:                                        ; preds = %for.cond1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %i.1 = phi i32 [ 1, %for.end28 ], [ %inc62, %for.inc61 ], !taffo.info !63
  %sub30 = sub nsw i32 %n, 1, !taffo.info !65, !taffo.constinfo !21
  %cmp31 = icmp slt i32 %i.1, %sub30, !taffo.info !54
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc59, %for.inc58 ], !taffo.info !63
  %sub34 = sub nsw i32 %n, 1, !taffo.info !65, !taffo.constinfo !21
  %cmp35 = icmp slt i32 %j.1, %sub34, !taffo.info !54
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %arrayidx37.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %i.1, !taffo.info !32
  %arrayidx38.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx37.u5_27fixp, i32 0, i32 %j.1, !taffo.info !32
  %u5_27fixp5 = load i32, i32* %arrayidx38.u5_27fixp, align 4, !taffo.info !89
  %arrayidx39.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %i.1, !taffo.info !32
  %sub40 = sub nsw i32 %j.1, 1, !taffo.info !56, !taffo.constinfo !21
  %arrayidx41.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx39.u5_27fixp, i32 0, i32 %sub40, !taffo.info !32
  %u5_27fixp6 = load i32, i32* %arrayidx41.u5_27fixp, align 4, !taffo.info !89
  %11 = lshr i32 %u5_27fixp5, 1, !taffo.info !89
  %12 = lshr i32 %u5_27fixp6, 1, !taffo.info !89
  %add42.u6_26fixp = add i32 %11, %12, !taffo.info !90
  %arrayidx43.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %i.1, !taffo.info !32
  %add44 = add nsw i32 1, %j.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx45.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx43.u5_27fixp, i32 0, i32 %add44, !taffo.info !32
  %u5_27fixp7 = load i32, i32* %arrayidx45.u5_27fixp, align 4, !taffo.info !89
  %13 = lshr i32 %add42.u6_26fixp, 1, !taffo.info !90
  %14 = lshr i32 %u5_27fixp7, 2, !taffo.info !89
  %add46.u7_25fixp = add i32 %13, %14, !taffo.info !92
  %add47 = add nsw i32 1, %i.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx48.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %add47, !taffo.info !32
  %arrayidx49.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx48.u5_27fixp, i32 0, i32 %j.1, !taffo.info !32
  %u5_27fixp8 = load i32, i32* %arrayidx49.u5_27fixp, align 4, !taffo.info !94
  %15 = lshr i32 %u5_27fixp8, 2, !taffo.info !94
  %add50.u7_25fixp = add i32 %add46.u7_25fixp, %15, !taffo.info !95
  %sub51 = sub nsw i32 %i.1, 1, !taffo.info !56, !taffo.constinfo !21
  %arrayidx52.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %sub51, !taffo.info !32
  %arrayidx53.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx52.u5_27fixp, i32 0, i32 %j.1, !taffo.info !32
  %u5_27fixp9 = load i32, i32* %arrayidx53.u5_27fixp, align 4, !taffo.info !94
  %16 = lshr i32 %u5_27fixp9, 2, !taffo.info !94
  %add54.u7_25fixp = add i32 %add50.u7_25fixp, %16, !taffo.info !97
  %17 = lshr i32 13421773, 1
  %18 = lshr i32 %add54.u7_25fixp, 1, !taffo.info !97
  %19 = ashr i32 %17, 1
  %20 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %18, i32 24), !taffo.info !99
  %mul55.u7_25fixp = shl i32 %20, 1, !taffo.info !101, !taffo.constinfo !83
  %arrayidx56.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %i.1, !taffo.info !28
  %arrayidx57.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx56.u5_27fixp, i32 0, i32 %j.1, !taffo.info !28
  %21 = shl i32 %mul55.u7_25fixp, 2, !taffo.info !101, !taffo.constinfo !83
  store i32 %21, i32* %arrayidx57.u5_27fixp, align 4, !taffo.info !34
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %inc59 = add nsw i32 %j.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !102

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond29, !llvm.loop !103

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %inc65 = add nsw i32 %t.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !104

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [15 x i32]* noundef %A.u5_27fixp, [15 x i32]* noundef %B.u5_27fixp) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !107 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.info !108, !taffo.initweight !110
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !111, !taffo.initweight !112
  br i1 %cmp, label %for.body, label %for.end21, !taffo.info !108, !taffo.initweight !113

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !108, !taffo.initweight !110
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !111, !taffo.initweight !112
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !108, !taffo.initweight !113

for.body5:                                        ; preds = %for.cond3
  %conv.s5_27fixp = shl i32 %i.0, 27, !taffo.info !114
  %add = add nsw i32 %j.0, 2, !taffo.info !116, !taffo.initweight !112, !taffo.constinfo !21
  %conv6.s6_26fixp = shl i32 %add, 26, !taffo.info !118, !taffo.constinfo !21
  %0 = ashr i32 %conv.s5_27fixp, 5, !taffo.info !114
  %1 = ashr i32 %conv6.s6_26fixp, 4, !taffo.info !118, !taffo.constinfo !21
  %mul.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 22), !taffo.info !120
  %2 = lshr i32 -2147483648, 8
  %add7.s10_22fixp = add i32 %mul.s10_22fixp, %2, !taffo.info !123, !taffo.constinfo !125
  %conv8.u4_28fixp = shl i32 %n, 28, !taffo.info !126
  %3 = lshr i32 %conv8.u4_28fixp, 1, !taffo.info !126
  %4 = ashr i32 %3, 5, !taffo.info !126
  %5 = call i32 @llvm.sdiv.fix.i32(i32 %add7.s10_22fixp, i32 %4, i32 22), !taffo.info !128
  %div.s6_26fixp = shl i32 %5, 4, !taffo.info !130
  %arrayidx.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !131
  %arrayidx9.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !131
  %6 = shl i32 %div.s6_26fixp, 1, !taffo.info !130
  store i32 %6, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !132
  %conv10.s5_27fixp = shl i32 %i.0, 27, !taffo.info !114
  %add11 = add nsw i32 %j.0, 3, !taffo.info !133, !taffo.initweight !112, !taffo.constinfo !21
  %conv12.s6_26fixp = shl i32 %add11, 26, !taffo.info !135, !taffo.constinfo !21
  %7 = ashr i32 %conv10.s5_27fixp, 5, !taffo.info !114
  %8 = ashr i32 %conv12.s6_26fixp, 4, !taffo.info !135, !taffo.constinfo !21
  %mul13.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 22), !taffo.info !136
  %9 = lshr i32 -1073741824, 8
  %add14.s10_22fixp = add i32 %mul13.s10_22fixp, %9, !taffo.info !138, !taffo.constinfo !140
  %conv15.u4_28fixp = shl i32 %n, 28, !taffo.info !126
  %10 = lshr i32 %conv15.u4_28fixp, 1, !taffo.info !126
  %11 = ashr i32 %10, 5, !taffo.info !126
  %12 = call i32 @llvm.sdiv.fix.i32(i32 %add14.s10_22fixp, i32 %11, i32 22), !taffo.info !143
  %div16.s6_26fixp = shl i32 %12, 4, !taffo.info !145
  %arrayidx17.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !146
  %arrayidx18.u5_27fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx17.u5_27fixp, i32 0, i32 %j.0, !taffo.info !146
  %13 = shl i32 %div16.s6_26fixp, 1, !taffo.info !145
  store i32 %13, i32* %arrayidx18.u5_27fixp, align 4, !taffo.info !132
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !147, !taffo.initweight !112, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !149

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.info !147, !taffo.initweight !112, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !150

for.end21:                                        ; preds = %for.cond
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
!1 = !{double 0.000000e+00, double 0x402E22222D5171E3}
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
!30 = !{double 1.333330e-01, double 0x402E22222D5171E3}
!31 = !{!"A"}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 2.000000e-01, double 0x40301111276FB092}
!34 = !{i1 false, !30, i1 false, i2 -1}
!35 = !{i1 false, i1 false, i1 false, i1 false}
!36 = !{i1 false}
!37 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 1.600000e+01}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 1.000000e+00}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 2.560000e+02}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 1.000000e+00, double 2.560000e+02}
!46 = distinct !{!46, !23}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 1.600000e+01}
!49 = distinct !{!49, !23}
!50 = !{i1 false, i1 false, i1 false}
!51 = !{i32 1, !52, i32 1, !0}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.500000e+01, double 1.500000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 1.000000e+00}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 0.000000e+00}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = !{i32 -1, i32 -1, i32 2, i32 2}
!61 = !{i32 1, !16, i32 1, !52, i32 1, !28, i32 1, !32}
!62 = distinct !{null}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 2.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.400000e+01, double 1.400000e+01}
!67 = !{!68, !69, i1 false, i2 -1}
!68 = !{!"fixp", i32 32, i32 26}
!69 = !{double 2.666660e-01, double 0x403E22222D5171E3}
!70 = !{!68, !30, i1 false, i2 -1}
!71 = !{!68, !72, i1 false, i2 -1}
!72 = !{double 3.999990e-01, double 0x40469999A1FD156A}
!73 = !{!74, !75, i1 false, i2 -1}
!74 = !{!"fixp", i32 32, i32 25}
!75 = !{double 5.333320e-01, double 0x404E22222D5171E3}
!76 = !{!74, !30, i1 false, i2 -1}
!77 = !{!74, !78, i1 false, i2 -1}
!78 = !{double 0x3FE55551D68C6930, double 0x4052D5555C52E72E}
!79 = !{!80, !81, i1 false, i2 -1}
!80 = !{!"fixp", i32 -32, i32 24}
!81 = !{double 0x3FC1110E49816485, double 0x402E222234D9FA6F}
!82 = !{!74, !81, i1 false, i2 -1}
!83 = !{!84, i1 false}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!86 = !{i1 false, !33, i1 false, i2 -1}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = !{!68, !33, i1 false, i2 -1}
!90 = !{!68, !91, i1 false, i2 -1}
!91 = !{double 4.000000e-01, double 0x40401111276FB092}
!92 = !{!74, !93, i1 false, i2 -1}
!93 = !{double 0x3FE3333333333334, double 0x40481999BB2788DB}
!94 = !{!74, !33, i1 false, i2 -1}
!95 = !{!74, !96, i1 false, i2 -1}
!96 = !{double 8.000000e-01, double 0x40501111276FB092}
!97 = !{!74, !98, i1 false, i2 -1}
!98 = !{double 1.000000e+00, double 0x40541555714B9CB6}
!99 = !{!80, !100, i1 false, i2 -1}
!100 = !{double 0x3FC99999A0000000, double 0x403011112B73F4DB}
!101 = !{!74, !100, i1 false, i2 -1}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !23}
!105 = !{i32 -1, i32 2, i32 2}
!106 = !{i32 1, !52, i32 1, !28, i32 1, !32}
!107 = distinct !{null}
!108 = !{i1 false, !109, i1 false, i2 -1}
!109 = !{double -1.500000e+01, double 1.500000e+01}
!110 = !{i32 0}
!111 = !{i1 false, !41, i1 false, i2 -1}
!112 = !{i32 2}
!113 = !{i32 3}
!114 = !{!115, !109, i1 false, i2 -1}
!115 = !{!"fixp", i32 -32, i32 27}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double -1.300000e+01, double 1.700000e+01}
!118 = !{!119, !117, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 26}
!120 = !{!121, !122, i1 false, i2 -1}
!121 = !{!"fixp", i32 -32, i32 22}
!122 = !{double -2.550000e+02, double 2.550000e+02}
!123 = !{!121, !124, i1 false, i2 -1}
!124 = !{double -2.530000e+02, double 2.570000e+02}
!125 = !{i1 false, !19}
!126 = !{!127, !53, i1 false, i2 1}
!127 = !{!"fixp", i32 32, i32 28}
!128 = !{!121, !129, i1 false, i2 -1}
!129 = !{double 0xC030DDDDDDDDDDDE, double 0x4031222222222222}
!130 = !{!119, !129, i1 false, i2 -1}
!131 = !{!29, !30, i1 false, i2 1}
!132 = !{i1 false, i1 false, i1 false, i2 1}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double -1.200000e+01, double 1.800000e+01}
!135 = !{!119, !134, i1 false, i2 -1}
!136 = !{!121, !137, i1 false, i2 -1}
!137 = !{double -2.700000e+02, double 2.700000e+02}
!138 = !{!121, !139, i1 false, i2 -1}
!139 = !{double -2.670000e+02, double 2.730000e+02}
!140 = !{i1 false, !141}
!141 = !{i1 false, !142, i1 false, i2 0}
!142 = !{double 3.000000e+00, double 3.000000e+00}
!143 = !{!121, !144, i1 false, i2 -1}
!144 = !{double -1.780000e+01, double 1.820000e+01}
!145 = !{!119, !144, i1 false, i2 -1}
!146 = !{!29, !33, i1 false, i2 1}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double -1.400000e+01, double 1.600000e+01}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
