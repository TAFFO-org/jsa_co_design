; ModuleID = './build/bin/fixed/mvt/16/mvt-standard-4-fixed-16.out.ll'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x1_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@x2_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !4
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !17
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -256
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
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -256
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !20
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -256
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -256
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -256
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -256
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -256
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.equivalentChild !30 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv1 = sitofp i32 %factor to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %0, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %lampsim7, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !34 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv1 = sitofp i32 %factor to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %1, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %lampsim7, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !35

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !36

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !37 !taffo.funinfo !38 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv1 = sitofp i32 %factor to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %3, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %lampsim7, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !23
  br label %for.cond4, !llvm.loop !39

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !40

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !41

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !42 !taffo.funinfo !42 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !42 !taffo.funinfo !42 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.start !43 {
entry:
  %A.u3_29fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !44
  %x1.u7_25fixp = alloca [20 x i32], align 4, !taffo.info !47, !taffo.target !49
  %x2.u7_25fixp = alloca [20 x i32], align 4, !taffo.info !50, !taffo.target !51
  %y_1.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !44
  %y_2.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !44
  %arraydecay.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u7_25fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  %arraydecay7.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_1.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay8.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_2.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay9.u3_29fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !44
  call void @init_array.6_fixp(i32 20, i32* %arraydecay.u7_25fixp, i32* %arraydecay6.u7_25fixp, i32* %arraydecay7.u3_29fixp, i32* %arraydecay8.u3_29fixp, [20 x i32]* %arraydecay9.u3_29fixp), !taffo.info !52, !taffo.constinfo !53
  %arraydecay10.u3_29fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %u3_29fixp = bitcast [20 x i32]* %arraydecay10.u3_29fixp to i32*, !taffo.info !44
  call void @scale_2d.7_fixp(i32 20, i32 20, i32* %u3_29fixp, i32 4), !taffo.info !52, !taffo.constinfo !54
  %arraydecay11.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay11.u7_25fixp, i32 4), !taffo.info !55, !taffo.constinfo !56, !taffo.target !49
  %arraydecay12.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u7_25fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay12.u7_25fixp, i32 4), !taffo.info !57, !taffo.constinfo !56, !taffo.target !51
  %arraydecay13.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_1.u3_29fixp, i32 0, i32 0, !taffo.info !44
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay13.u3_29fixp, i32 4), !taffo.info !52, !taffo.constinfo !56
  %arraydecay14.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_2.u3_29fixp, i32 0, i32 0, !taffo.info !44
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay14.u3_29fixp, i32 4), !taffo.info !52, !taffo.constinfo !56
  call void @timer_start(), !taffo.constinfo !58
  %arraydecay15.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay16.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u7_25fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  %arraydecay17.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_1.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay18.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_2.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay19.u3_29fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !44
  call void @kernel_mvt.4_fixp(i32 20, i32* %arraydecay15.u7_25fixp, i32* %arraydecay16.u7_25fixp, i32* %arraydecay17.u3_29fixp, i32* %arraydecay18.u3_29fixp, [20 x i32]* %arraydecay19.u3_29fixp), !taffo.info !52, !taffo.constinfo !53
  call void @timer_stop(), !taffo.constinfo !58
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !59
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !61
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u7_25fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %u7_25fixp1 = load i32, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u7_25fixp1 to float, !taffo.info !47, !taffo.target !49
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4180000000000000, !taffo.info !47, !taffo.target !49
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -256
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx20, align 4, !taffo.info !55, !taffo.target !49
  %arrayidx21.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u7_25fixp, i32 0, i32 %i.0, !taffo.info !50, !taffo.target !51
  %u7_25fixp = load i32, i32* %arrayidx21.u7_25fixp, align 4, !taffo.info !50, !taffo.target !51
  %2 = uitofp i32 %u7_25fixp to float, !taffo.info !50, !taffo.target !51
  %lampsim6 = bitcast float %2 to i32
  %lampsim7 = and i32 %lampsim6, -256
  %lampsim8 = bitcast i32 %lampsim7 to float
  %3 = fdiv float %lampsim8, 0x4180000000000000, !taffo.info !50, !taffo.target !51
  %lampsim9 = bitcast float %3 to i32
  %lampsim10 = and i32 %lampsim9, -256
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %i.0, !taffo.info !2
  store float %lampsim11, float* %arrayidx22, align 4, !taffo.info !57, !taffo.target !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0)), !taffo.constinfo !56
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !28 !taffo.funinfo !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !71, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !69
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !56
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !61
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !69
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !71, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !69
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv144 = fpext float %5 to double, !taffo.info !2
  %lampsim5 = bitcast double %conv144 to i64
  %lampsim6 = and i64 %lampsim5, -137438953472
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !56
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !75

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !26 !taffo.funinfo !27 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !76 !taffo.funinfo !77 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %i.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !81
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !83
  %0 = lshr i32 %u7_25fixp, 1, !taffo.info !81
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !83
  %2 = ashr i32 %0, 2, !taffo.info !81
  %3 = ashr i32 %1, 6, !taffo.info !83
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 22), !taffo.info !84
  %mul.u9_23fixp = shl i32 %4, 1, !taffo.info !87
  %arrayidx1.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %i.0, !taffo.info !47
  %5 = shl i32 %mul.u9_23fixp, 2, !taffo.info !87
  store i32 %5, i32* %arrayidx1.u7_25fixp, align 4, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !76 !taffo.funinfo !89 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !44
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !90
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !92
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !90
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !92
  %2 = ashr i32 %0, 2, !taffo.info !90
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !93
  %mul.u5_27fixp = shl i32 %3, 1, !taffo.info !96
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !44
  %4 = shl i32 %mul.u5_27fixp, 2, !taffo.info !96
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.4_fixp(i32 noundef %n, i32* noundef %x1.u7_25fixp, i32* noundef %x2.u7_25fixp, i32* noundef %y_1.u3_29fixp, i32* noundef %y_2.u3_29fixp, [20 x i32]* noundef %A.u3_29fixp) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !100 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !61
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %x1.u7_25fixp, i32 %i.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !47
  %arrayidx4.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !44
  %arrayidx5.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx4.u3_29fixp, i32 0, i32 %j.0, !taffo.info !44
  %u3_29fixp3 = load i32, i32* %arrayidx5.u3_29fixp, align 4, !taffo.info !101
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %y_1.u3_29fixp, i32 %j.0, !taffo.info !44
  %u3_29fixp = load i32, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !101
  %0 = lshr i32 %u3_29fixp3, 1, !taffo.info !101
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !101
  %2 = ashr i32 %0, 1, !taffo.info !101
  %3 = ashr i32 %1, 1, !taffo.info !101
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 27), !taffo.info !103
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !106
  %5 = lshr i32 %mul.u4_28fixp, 3, !taffo.info !106
  %add.u7_25fixp = add i32 %u7_25fixp, %5, !taffo.info !107
  %arrayidx7.u7_25fixp = getelementptr inbounds i32, i32* %x1.u7_25fixp, i32 %i.0, !taffo.info !47
  store i32 %add.u7_25fixp, i32* %arrayidx7.u7_25fixp, align 4, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !109

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !110

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ], !taffo.info !61
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !69
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ], !taffo.info !61
  %cmp15 = icmp slt i32 %j.1, %n, !taffo.info !69
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17.u7_25fixp = getelementptr inbounds i32, i32* %x2.u7_25fixp, i32 %i.1, !taffo.info !50
  %u7_25fixp1 = load i32, i32* %arrayidx17.u7_25fixp, align 4, !taffo.info !50
  %arrayidx18.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u3_29fixp, i32 %j.1, !taffo.info !44
  %arrayidx19.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx18.u3_29fixp, i32 0, i32 %i.1, !taffo.info !44
  %u3_29fixp4 = load i32, i32* %arrayidx19.u3_29fixp, align 4, !taffo.info !101
  %arrayidx20.u3_29fixp = getelementptr inbounds i32, i32* %y_2.u3_29fixp, i32 %j.1, !taffo.info !44
  %u3_29fixp2 = load i32, i32* %arrayidx20.u3_29fixp, align 4, !taffo.info !101
  %6 = lshr i32 %u3_29fixp4, 1, !taffo.info !101
  %7 = lshr i32 %u3_29fixp2, 1, !taffo.info !101
  %8 = ashr i32 %6, 1, !taffo.info !101
  %9 = ashr i32 %7, 1, !taffo.info !101
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 27), !taffo.info !103
  %mul21.u4_28fixp = shl i32 %10, 1, !taffo.info !106
  %11 = lshr i32 %mul21.u4_28fixp, 3, !taffo.info !106
  %add22.u7_25fixp = add i32 %u7_25fixp1, %11, !taffo.info !111
  %arrayidx23.u7_25fixp = getelementptr inbounds i32, i32* %x2.u7_25fixp, i32 %i.1, !taffo.info !50
  store i32 %add22.u7_25fixp, i32* %arrayidx23.u7_25fixp, align 4, !taffo.info !57
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond14, !llvm.loop !113

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond11, !llvm.loop !114

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6_fixp(i32 noundef %n, i32* noundef %x1.u7_25fixp, i32* noundef %x2.u7_25fixp, i32* noundef %y_1.u3_29fixp, i32* noundef %y_2.u3_29fixp, [20 x i32]* noundef %A.u3_29fixp) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !115 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.info !116, !taffo.initweight !117
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !118, !taffo.initweight !119
  br i1 %cmp, label %for.body, label %for.end33, !taffo.info !120, !taffo.initweight !122

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !123, !taffo.initweight !119
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !125
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !126
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !125
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !126
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !127
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !129
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %x1.u7_25fixp, i32 %i.0, !taffo.info !131
  %3 = lshr i32 %div.u1_31fixp, 6, !taffo.info !129
  store i32 %3, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !132
  %add = add nsw i32 %i.0, 1, !taffo.info !133, !taffo.initweight !119, !taffo.constinfo !23
  %rem4 = srem i32 %add, %n, !taffo.info !123, !taffo.initweight !122
  %conv5.u5_27fixp = shl i32 %rem4, 27, !taffo.info !125
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !126
  %4 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !125
  %5 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !126
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !127
  %div7.u1_31fixp = shl i32 %6, 5, !taffo.info !129
  %arrayidx8.u7_25fixp = getelementptr inbounds i32, i32* %x2.u7_25fixp, i32 %i.0, !taffo.info !134
  %7 = lshr i32 %div7.u1_31fixp, 6, !taffo.info !129
  store i32 %7, i32* %arrayidx8.u7_25fixp, align 4, !taffo.info !132
  %add9 = add nsw i32 %i.0, 3, !taffo.info !135, !taffo.initweight !119, !taffo.constinfo !23
  %rem10 = srem i32 %add9, %n, !taffo.info !123, !taffo.initweight !122
  %conv11.u5_27fixp = shl i32 %rem10, 27, !taffo.info !125
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !126
  %8 = lshr i32 %conv11.u5_27fixp, 1, !taffo.info !125
  %9 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !126
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !127
  %div13.u1_31fixp = shl i32 %10, 5, !taffo.info !129
  %arrayidx14.u3_29fixp = getelementptr inbounds i32, i32* %y_1.u3_29fixp, i32 %i.0, !taffo.info !137
  %11 = lshr i32 %div13.u1_31fixp, 2, !taffo.info !129
  store i32 %11, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !132
  %add15 = add nsw i32 %i.0, 4, !taffo.info !138, !taffo.initweight !119, !taffo.constinfo !23
  %rem16 = srem i32 %add15, %n, !taffo.info !123, !taffo.initweight !122
  %conv17.u5_27fixp = shl i32 %rem16, 27, !taffo.info !125
  %conv18.u5_27fixp = shl i32 %n, 27, !taffo.info !126
  %12 = lshr i32 %conv17.u5_27fixp, 1, !taffo.info !125
  %13 = lshr i32 %conv18.u5_27fixp, 1, !taffo.info !126
  %14 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %13, i32 26), !taffo.info !127
  %div19.u1_31fixp = shl i32 %14, 5, !taffo.info !129
  %arrayidx20.u3_29fixp = getelementptr inbounds i32, i32* %y_2.u3_29fixp, i32 %i.0, !taffo.info !137
  %15 = lshr i32 %div19.u1_31fixp, 2, !taffo.info !129
  store i32 %15, i32* %arrayidx20.u3_29fixp, align 4, !taffo.info !132
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !116, !taffo.initweight !117
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.info !118, !taffo.initweight !119
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.info !120, !taffo.initweight !122

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !140, !taffo.initweight !119
  %rem25 = srem i32 %mul, %n, !taffo.info !123, !taffo.initweight !122
  %conv26.u5_27fixp = shl i32 %rem25, 27, !taffo.info !125
  %conv27.u5_27fixp = shl i32 %n, 27, !taffo.info !126
  %16 = lshr i32 %conv26.u5_27fixp, 1, !taffo.info !125
  %17 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !126
  %18 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %17, i32 26), !taffo.info !127
  %div28.u1_31fixp = shl i32 %18, 5, !taffo.info !129
  %arrayidx29.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !137
  %arrayidx30.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx29.u3_29fixp, i32 0, i32 %j.0, !taffo.info !137
  %19 = lshr i32 %div28.u1_31fixp, 2, !taffo.info !129
  store i32 %19, i32* %arrayidx30.u3_29fixp, align 4, !taffo.info !132
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !133, !taffo.initweight !119, !taffo.constinfo !23
  br label %for.cond21, !llvm.loop !142

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.info !133, !taffo.initweight !119, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !143

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !144 !taffo.funinfo !145 !taffo.sourceFunction !146 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !61
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !71
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !44
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !44
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !90
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !92
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !90
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !92
  %3 = ashr i32 %1, 2, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 26), !taffo.info !93
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !96
  %5 = mul nsw i32 %i.0, %m, !taffo.info !71
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !44
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !44
  %6 = shl i32 %mul.u5_27fixp, 2, !taffo.info !96
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !52
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !147

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !148

for.end9:                                         ; preds = %for.cond
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

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x405473331E3A7DAA}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x405466665E02EA96}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.000000e+01}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"NumRegisterParameters", i32 0}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.000000e+01, double 1.000000e+01}
!20 = !{!21, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 2.000000e+00, double 2.000000e+00}
!23 = !{i1 false, i1 false}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false}
!28 = !{i32 -1, i32 -1, i32 -1}
!29 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!30 = distinct !{null, null, null, null}
!31 = distinct !{!31, !25}
!32 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = distinct !{null}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = !{}
!43 = !{i1 true}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 29}
!46 = !{double 0.000000e+00, double 3.800000e+00}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 25}
!49 = !{!"x1"}
!50 = !{!48, !3, i1 false, i2 -1}
!51 = !{!"x2"}
!52 = !{i1 false, !46, i1 false, i2 -1}
!53 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!54 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!55 = !{i1 false, !1, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, !3, i1 false, i2 -1}
!58 = !{i1 false}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 2.100000e+01}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 1.000000e+00}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 2.100000e+01}
!65 = distinct !{!65, !25}
!66 = !{i32 1, !67, i32 1, !0, i32 1, !2}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 2.000000e+01, double 2.000000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 0.000000e+00}
!73 = !{i1 false, i1 false, i1 false}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = !{i32 -1, i32 2, i32 -1}
!77 = !{i32 1, !67, i32 1, !47, i32 1, !78}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 4.000000e+00, double 4.000000e+00}
!80 = !{void (i32, float*, i32)* @scale_1d}
!81 = !{!82, !1, i1 false, i2 -1}
!82 = !{!"fixp", i32 32, i32 23}
!83 = !{!45, !79, i1 false, i2 1}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 -32, i32 22}
!86 = !{double 0.000000e+00, double 0x407473331E3A7DAA}
!87 = !{!82, !86, i1 false, i2 -1}
!88 = distinct !{!88, !25}
!89 = !{i32 1, !67, i32 1, !44, i32 1, !78}
!90 = !{!91, !46, i1 false, i2 -1}
!91 = !{!"fixp", i32 32, i32 27}
!92 = !{!91, !79, i1 false, i2 1}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 -32, i32 26}
!95 = !{double 0.000000e+00, double 1.520000e+01}
!96 = !{!91, !95, i1 false, i2 -1}
!97 = distinct !{!97, !25}
!98 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!99 = !{i32 1, !67, i32 1, !47, i32 1, !50, i32 1, !44, i32 1, !44, i32 1, !44}
!100 = distinct !{null}
!101 = !{!102, !46, i1 false, i2 -1}
!102 = !{!"fixp", i32 32, i32 28}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 -32, i32 27}
!105 = !{double 0.000000e+00, double 1.444000e+01}
!106 = !{!102, !105, i1 false, i2 -1}
!107 = !{!48, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 0x40580F5C13FD0D06}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = !{!48, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 0x4058028F53C579F2}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{null}
!116 = !{i1 false, !60, i1 false, i2 1}
!117 = !{i32 0}
!118 = !{i1 false, !62, i1 false, i2 1}
!119 = !{i32 2}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 0.000000e+00, double 2.000000e+01}
!122 = !{i32 3}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 1.900000e+01}
!125 = !{!91, !124, i1 false, i2 1}
!126 = !{!91, !68, i1 false, i2 1}
!127 = !{!94, !128, i1 false, i2 1}
!128 = !{double 0.000000e+00, double 0x3FEE666666666666}
!129 = !{!130, !128, i1 false, i2 1}
!130 = !{!"fixp", i32 32, i32 31}
!131 = !{!48, !1, i1 false, i2 1}
!132 = !{i1 false, i1 false, i1 false, i2 1}
!133 = !{i1 false, !64, i1 false, i2 1}
!134 = !{!48, !3, i1 false, i2 1}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 3.000000e+00, double 2.300000e+01}
!137 = !{!45, !46, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 4.000000e+00, double 2.400000e+01}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 4.000000e+02}
!142 = distinct !{!142, !25}
!143 = distinct !{!143, !25}
!144 = !{i32 -1, i32 -1, i32 3, i32 -1}
!145 = !{i32 1, !67, i32 1, !67, i32 1, !44, i32 1, !78}
!146 = !{void (i32, i32, float*, i32)* @scale_2d}
!147 = distinct !{!147, !25}
!148 = distinct !{!148, !25}
