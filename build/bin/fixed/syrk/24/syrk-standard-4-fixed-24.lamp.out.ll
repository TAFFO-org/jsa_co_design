; ModuleID = './build/bin/fixed/syrk/24/syrk-standard-4-fixed-24.out.ll'
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.equivalentChild !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 {
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
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %0, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %lampsim7, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
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
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %1, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %lampsim7, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !34

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 {
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
  %lampsim2 = and i32 %lampsim, -1
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %3, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -1
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !37

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !38

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !39

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !41 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !42
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !45
  %C.u7_25fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.u3_29fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !50
  %arraydecay.u7_25fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay5.u3_29fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !50
  call void @init_array.4_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u7_25fixp, [10 x i32]* %arraydecay5.u3_29fixp), !taffo.info !53, !taffo.constinfo !54
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 4), !taffo.info !53, !taffo.constinfo !55
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 4), !taffo.info !56, !taffo.constinfo !55
  %arraydecay6.u7_25fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u7_25fixp = bitcast [16 x i32]* %arraydecay6.u7_25fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 16, i32 16, i32* %u7_25fixp, i32 4), !taffo.info !57, !taffo.constinfo !58, !taffo.target !49
  %arraydecay7.u3_29fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !50
  %u3_29fixp = bitcast [10 x i32]* %arraydecay7.u3_29fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u3_29fixp, i32 4), !taffo.info !59, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !60
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !61
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay8.u7_25fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay9.u3_29fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !50
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !61
  call void @kernel_syrk.3_fixp(i32 16, i32 10, i32 %0, i32 %u2_30fixp1, [16 x i32]* %arraydecay8.u7_25fixp, [10 x i32]* %arraydecay9.u3_29fixp), !taffo.info !53, !taffo.constinfo !54
  call void @timer_stop(), !taffo.constinfo !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !62
  %cmp11 = icmp sle i32 %j.0, %i.0, !taffo.info !64
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %arrayidx.u7_25fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u7_25fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx13.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u7_25fixp2 = load i32, i32* %arrayidx13.u7_25fixp, align 4, !taffo.info !47, !taffo.target !49
  %1 = uitofp i32 %u7_25fixp2 to float, !taffo.info !47, !taffo.target !49
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x4180000000000000, !taffo.info !47, !taffo.target !49
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx14 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx15, align 4, !taffo.info !57, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %inc = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond10, !llvm.loop !68

for.end:                                          ; preds = %for.cond10
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !69

for.end18:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !55
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !75
  %add = add nsw i32 %mul, %j.0, !taffo.info !75
  %rem = srem i32 %add, 20, !taffo.info !75, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !73
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !55
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !77
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !78

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !79

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !84 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.3_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u3_29fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u7_25fixp, [10 x i32]* noundef %A.u3_29fixp) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.sourceFunction !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u7_25fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !88
  %0 = lshr i32 %u7_25fixp, 1, !taffo.info !88
  %1 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %2 = ashr i32 %0, 1, !taffo.info !88
  %3 = ashr i32 %1, 6, !taffo.info !45
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !90
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !93
  %5 = shl i32 %mul.u8_24fixp, 1, !taffo.info !93
  store i32 %5, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !94

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !64
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !73
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !64
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !64
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !50
  %arrayidx12.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u3_29fixp, i32 0, i32 %k.0, !taffo.info !50
  %u3_29fixp = load i32, i32* %arrayidx12.u3_29fixp, align 4, !taffo.info !50
  %6 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !61
  %7 = lshr i32 %u3_29fixp, 1, !taffo.info !50
  %8 = ashr i32 %6, 2, !taffo.info !61
  %9 = ashr i32 %7, 2, !taffo.info !50
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !95
  %mul13.u5_27fixp = shl i32 %10, 1, !taffo.info !98
  %arrayidx14.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %j.1, !taffo.info !50
  %arrayidx15.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u3_29fixp, i32 0, i32 %k.0, !taffo.info !50
  %u3_29fixp2 = load i32, i32* %arrayidx15.u3_29fixp, align 4, !taffo.info !100
  %11 = lshr i32 %mul13.u5_27fixp, 1, !taffo.info !98
  %12 = lshr i32 %u3_29fixp2, 1, !taffo.info !100
  %13 = ashr i32 %12, 2, !taffo.info !100
  %14 = call i32 @llvm.smul.fix.i32(i32 %11, i32 %13, i32 26), !taffo.info !101
  %mul16.u5_27fixp = shl i32 %14, 1, !taffo.info !103
  %arrayidx17.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u7_25fixp, i32 %i.0, !taffo.info !47
  %arrayidx18.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17.u7_25fixp, i32 0, i32 %j.1, !taffo.info !47
  %u7_25fixp1 = load i32, i32* %arrayidx18.u7_25fixp, align 4, !taffo.info !88
  %15 = lshr i32 %u7_25fixp1, 1, !taffo.info !88
  %16 = lshr i32 %mul16.u5_27fixp, 3, !taffo.info !103
  %add.u8_24fixp = add i32 %15, %16, !taffo.info !104
  %17 = shl i32 %add.u8_24fixp, 1, !taffo.info !104
  store i32 %17, i32* %arrayidx18.u7_25fixp, align 4, !taffo.info !57
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !106

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !107

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !108

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u7_25fixp, [10 x i32]* noundef %A.u3_29fixp) #0 !taffo.initweight !109 !taffo.funinfo !110 !taffo.sourceFunction !111 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !53, !taffo.constinfo !112
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !56, !taffo.constinfo !114
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !117, !taffo.initweight !118
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !119, !taffo.initweight !120
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !121, !taffo.initweight !123

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !124, !taffo.initweight !118
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !119, !taffo.initweight !120
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !126, !taffo.initweight !123

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !127, !taffo.initweight !120
  %add = add nsw i32 %mul, 1, !taffo.info !129, !taffo.initweight !123, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !131, !taffo.initweight !133
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !134
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !136
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !134
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !136
  %2 = ashr i32 %0, 1, !taffo.info !134
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !137
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !139
  %arrayidx.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !141
  %arrayidx7.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %j.0, !taffo.info !141
  %4 = lshr i32 %div.u1_31fixp, 2, !taffo.info !139
  store i32 %4, i32* %arrayidx7.u3_29fixp, align 4, !taffo.info !142
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !143, !taffo.initweight !120, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !145

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !146, !taffo.initweight !120, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !147

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !117, !taffo.initweight !118
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !119, !taffo.initweight !120
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !121, !taffo.initweight !123

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !124, !taffo.initweight !118
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.info !148, !taffo.initweight !120
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !126, !taffo.initweight !123

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.info !127, !taffo.initweight !120
  %add20 = add nsw i32 %mul19, 2, !taffo.info !149, !taffo.initweight !123, !taffo.constinfo !21
  %rem21 = srem i32 %add20, %m, !taffo.info !151, !taffo.initweight !133
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !153
  %conv23.u4_28fixp = shl i32 %m, 28, !taffo.info !154
  %5 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !153
  %6 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !154
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !155
  %div24.u1_31fixp = shl i32 %7, 4, !taffo.info !158
  %arrayidx25.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u7_25fixp, i32 %i.1, !taffo.info !159
  %arrayidx26.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx25.u7_25fixp, i32 0, i32 %j.1, !taffo.info !159
  %8 = lshr i32 %div24.u1_31fixp, 6, !taffo.info !158
  store i32 %8, i32* %arrayidx26.u7_25fixp, align 4, !taffo.info !142
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !143, !taffo.initweight !120, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !160

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !146, !taffo.initweight !120, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !161

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !164 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %0, !taffo.info !47
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx.u7_25fixp, i32 %j.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !165
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !167
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !165
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !167
  %3 = ashr i32 %1, 2, !taffo.info !165
  %4 = ashr i32 %2, 6, !taffo.info !167
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 22), !taffo.info !168
  %mul.u9_23fixp = shl i32 %5, 1, !taffo.info !171
  %6 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx5.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %6, !taffo.info !47
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx5.u7_25fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u9_23fixp, 2, !taffo.info !171
  store i32 %7, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !172

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !173

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !174 !taffo.sourceFunction !164 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !50
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !50
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !175
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !176
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !175
  %2 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !176
  %3 = ashr i32 %1, 1, !taffo.info !175
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 27), !taffo.info !177
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !178
  %5 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !50
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !50
  %6 = shl i32 %mul.u4_28fixp, 1, !taffo.info !178
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !179

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !180

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

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x405AA50A41A261BF}
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
!24 = !{i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false}
!26 = distinct !{null, null}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null, null}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = !{}
!41 = !{i1 true}
!42 = !{!43, !44, i1 false, i2 -1}
!43 = !{!"fixp", i32 32, i32 30}
!44 = !{double 1.500000e+00, double 1.500000e+00}
!45 = !{!43, !46, i1 false, i2 -1}
!46 = !{double 1.200000e+00, double 1.200000e+00}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 25}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 29}
!52 = !{double 0.000000e+00, double 3.750000e+00}
!53 = !{i1 false, !44, i1 false, i2 -1}
!54 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!55 = !{i1 false, i1 false, i1 false}
!56 = !{i1 false, !46, i1 false, i2 -1}
!57 = !{i1 false, !1, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !52, i1 false, i2 -1}
!60 = !{i1 false}
!61 = !{!51, !44, i1 false, i2 -1}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.700000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.700000e+01}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = !{i32 1, !71, i32 1, !0}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.600000e+01, double 1.600000e+01}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = !{i1 false, i1 false, i1 false, i1 false}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = !{i32 1, i32 -1}
!81 = !{i32 1, !42, i32 1, !82}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 4.000000e+00, double 4.000000e+00}
!84 = !{void (float*, i32)* @scale_scalar}
!85 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!86 = !{i32 1, !71, i32 1, !16, i32 1, !61, i32 1, !45, i32 1, !47, i32 1, !50}
!87 = distinct !{null}
!88 = !{!89, !1, i1 false, i2 -1}
!89 = !{!"fixp", i32 32, i32 24}
!90 = !{!91, !92, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 23}
!92 = !{double 0.000000e+00, double 0x405FF93F81F60EE5}
!93 = !{!89, !92, i1 false, i2 -1}
!94 = distinct !{!94, !23}
!95 = !{!96, !97, i1 false, i2 -1}
!96 = !{!"fixp", i32 -32, i32 26}
!97 = !{double 0.000000e+00, double 5.625000e+00}
!98 = !{!99, !97, i1 false, i2 -1}
!99 = !{!"fixp", i32 32, i32 27}
!100 = !{!99, !52, i1 false, i2 -1}
!101 = !{!96, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 0x4035180000000000}
!103 = !{!99, !102, i1 false, i2 -1}
!104 = !{!89, !105, i1 false, i2 -1}
!105 = !{double 0.000000e+00, double 0x405FEB0A41A261BF}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!110 = !{i32 1, !71, i32 1, !16, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50}
!111 = distinct !{null}
!112 = !{!113, i1 false}
!113 = !{i1 false, !44, i1 false, i2 0}
!114 = !{!115, i1 false}
!115 = !{i1 false, !116, i1 false, i2 0}
!116 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!117 = !{i1 false, !63, i1 false, i2 1}
!118 = !{i32 0}
!119 = !{i1 false, !65, i1 false, i2 1}
!120 = !{i32 2}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 1.600000e+01}
!123 = !{i32 3}
!124 = !{i1 false, !125, i1 false, i2 1}
!125 = !{double 0.000000e+00, double 1.100000e+01}
!126 = !{i1 false, !3, i1 false, i2 1}
!127 = !{i1 false, !128, i1 false, i2 1}
!128 = !{double 0.000000e+00, double 1.600000e+02}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 1.000000e+00, double 1.610000e+02}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 1.500000e+01}
!133 = !{i32 4}
!134 = !{!135, !132, i1 false, i2 1}
!135 = !{!"fixp", i32 32, i32 28}
!136 = !{!99, !72, i1 false, i2 1}
!137 = !{!96, !138, i1 false, i2 1}
!138 = !{double 0.000000e+00, double 9.375000e-01}
!139 = !{!140, !138, i1 false, i2 1}
!140 = !{!"fixp", i32 32, i32 31}
!141 = !{!51, !52, i1 false, i2 1}
!142 = !{i1 false, i1 false, i1 false, i2 1}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 1.000000e+00, double 1.100000e+01}
!145 = distinct !{!145, !23}
!146 = !{i1 false, !67, i1 false, i2 1}
!147 = distinct !{!147, !23}
!148 = !{i1 false, !74, i1 false, i2 1}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double 2.000000e+00, double 1.620000e+02}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 0.000000e+00, double 9.000000e+00}
!153 = !{!135, !152, i1 false, i2 1}
!154 = !{!135, !17, i1 false, i2 1}
!155 = !{!156, !157, i1 false, i2 1}
!156 = !{!"fixp", i32 -32, i32 27}
!157 = !{double 0.000000e+00, double 9.000000e-01}
!158 = !{!140, !157, i1 false, i2 1}
!159 = !{!48, !1, i1 false, i2 1}
!160 = distinct !{!160, !23}
!161 = distinct !{!161, !23}
!162 = !{i32 -1, i32 -1, i32 3, i32 -1}
!163 = !{i32 1, !71, i32 1, !71, i32 1, !47, i32 1, !82}
!164 = !{void (i32, i32, float*, i32)* @scale_2d}
!165 = !{!166, !1, i1 false, i2 -1}
!166 = !{!"fixp", i32 32, i32 23}
!167 = !{!51, !83, i1 false, i2 1}
!168 = !{!169, !170, i1 false, i2 -1}
!169 = !{!"fixp", i32 -32, i32 22}
!170 = !{double 0.000000e+00, double 0x407AA50A41A261BF}
!171 = !{!166, !170, i1 false, i2 -1}
!172 = distinct !{!172, !23}
!173 = distinct !{!173, !23}
!174 = !{i32 1, !71, i32 1, !16, i32 1, !50, i32 1, !82}
!175 = !{!135, !52, i1 false, i2 -1}
!176 = !{!135, !83, i1 false, i2 1}
!177 = !{!156, !132, i1 false, i2 -1}
!178 = !{!135, !132, i1 false, i2 -1}
!179 = distinct !{!179, !23}
!180 = distinct !{!180, !23}
