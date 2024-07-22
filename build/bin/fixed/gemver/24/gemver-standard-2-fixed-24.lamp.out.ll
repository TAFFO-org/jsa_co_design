; ModuleID = './build/bin/fixed/gemver/24/gemver-standard-2-fixed-24.out.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@w_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !4
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !6
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !8

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !17 !taffo.funinfo !18 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !19
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
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !22
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.equivalentChild !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !33 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 !taffo.equivalentChild !37 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !38

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !39

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !40 !taffo.funinfo !41 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !25
  br label %for.cond4, !llvm.loop !42

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !43

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !44

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.start !46 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !47
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !50
  %A.u2_30fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !53
  %v1.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !55
  %u2.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !58
  %v2.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !60
  %w.u8_24fixp = alloca [20 x i32], align 4, !taffo.info !62, !taffo.target !64
  %x.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !65
  %y.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !67
  %z.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !69
  %arraydecay.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u2_30fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay13.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay14.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u1_31fixp, i32 0, i32 0, !taffo.info !58
  %arraydecay15.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay16.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u8_24fixp, i32 0, i32 0, !taffo.info !62, !taffo.target !64
  %arraydecay17.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u3_29fixp, i32 0, i32 0, !taffo.info !65
  %arraydecay18.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !67
  %arraydecay19.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !69
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u2_30fixp, i32* %arraydecay12.u2_30fixp, i32* %arraydecay13.u1_31fixp, i32* %arraydecay14.u1_31fixp, i32* %arraydecay15.u1_31fixp, i32* %arraydecay16.u8_24fixp, i32* %arraydecay17.u3_29fixp, i32* %arraydecay18.u1_31fixp, i32* %arraydecay19.u1_31fixp), !taffo.info !71, !taffo.constinfo !72
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 2), !taffo.info !71, !taffo.constinfo !73
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 2), !taffo.info !74, !taffo.constinfo !73
  %arraydecay20.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %u2_30fixp2 = bitcast [20 x i32]* %arraydecay20.u2_30fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u2_30fixp2, i32 2), !taffo.info !75, !taffo.constinfo !76
  %arraydecay21.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u2_30fixp, i32 0, i32 0, !taffo.info !53
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u2_30fixp, i32 2), !taffo.info !77, !taffo.constinfo !78
  %arraydecay22.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !55
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u1_31fixp, i32 2), !taffo.info !79, !taffo.constinfo !78
  %arraydecay23.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u1_31fixp, i32 0, i32 0, !taffo.info !58
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay23.u1_31fixp, i32 2), !taffo.info !80, !taffo.constinfo !78
  %arraydecay24.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !60
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay24.u1_31fixp, i32 2), !taffo.info !81, !taffo.constinfo !78
  %arraydecay25.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u8_24fixp, i32 0, i32 0, !taffo.info !62, !taffo.target !64
  call void @scale_1d.7_fixp(i32 20, i32* %arraydecay25.u8_24fixp, i32 2), !taffo.info !82, !taffo.constinfo !78, !taffo.target !64
  %arraydecay26.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u3_29fixp, i32 0, i32 0, !taffo.info !65
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u3_29fixp, i32 2), !taffo.info !83, !taffo.constinfo !78
  %arraydecay27.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !67
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay27.u1_31fixp, i32 2), !taffo.info !84, !taffo.constinfo !78
  %arraydecay28.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !69
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay28.u1_31fixp, i32 2), !taffo.info !85, !taffo.constinfo !78
  call void @timer_start(), !taffo.constinfo !86
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !87
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !88
  %arraydecay29.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u2_30fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay31.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay32.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u1_31fixp, i32 0, i32 0, !taffo.info !58
  %arraydecay33.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay34.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u8_24fixp, i32 0, i32 0, !taffo.info !62, !taffo.target !64
  %arraydecay35.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u3_29fixp, i32 0, i32 0, !taffo.info !65
  %arraydecay36.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !67
  %arraydecay37.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !69
  %0 = lshr i32 %u2_30fixp1, 1, !taffo.info !87
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !88
  call void @kernel_gemver.10_fixp(i32 20, i32 %0, i32 %1, [20 x i32]* %arraydecay29.u2_30fixp, i32* %arraydecay30.u2_30fixp, i32* %arraydecay31.u1_31fixp, i32* %arraydecay32.u1_31fixp, i32* %arraydecay33.u1_31fixp, i32* %arraydecay34.u8_24fixp, i32* %arraydecay35.u3_29fixp, i32* %arraydecay36.u1_31fixp, i32* %arraydecay37.u1_31fixp), !taffo.info !71, !taffo.constinfo !72
  call void @timer_stop(), !taffo.constinfo !86
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !89
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u3_29fixp, i32 0, i32 %i.0, !taffo.info !65
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !65
  %2 = uitofp i32 %u3_29fixp to float, !taffo.info !65
  %lampsim = bitcast float %2 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %3 = fdiv float %lampsim2, 0x41C0000000000000, !taffo.info !65
  %lampsim3 = bitcast float %3 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx38, align 4, !taffo.info !83
  %arrayidx39.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u8_24fixp, i32 0, i32 %i.0, !taffo.info !62, !taffo.target !64
  %u8_24fixp = load i32, i32* %arrayidx39.u8_24fixp, align 4, !taffo.info !62, !taffo.target !64
  %4 = uitofp i32 %u8_24fixp to float, !taffo.info !62, !taffo.target !64
  %lampsim6 = bitcast float %4 to i32
  %lampsim7 = and i32 %lampsim6, -1
  %lampsim8 = bitcast i32 %lampsim7 to float
  %5 = fdiv float %lampsim8, 0x4170000000000000, !taffo.info !62, !taffo.target !64
  %lampsim9 = bitcast float %5 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %lampsim11, float* %arrayidx40, align 4, !taffo.info !82, !taffo.target !64
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !93
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !91
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u2_30fixp, i32 0, i32 %j.0, !taffo.info !52
  %u2_30fixp3 = load i32, i32* %arrayidx45.u2_30fixp, align 4, !taffo.info !52
  %6 = uitofp i32 %u2_30fixp3 to float, !taffo.info !52
  %lampsim12 = bitcast float %6 to i32
  %lampsim13 = and i32 %lampsim12, -1
  %lampsim14 = bitcast i32 %lampsim13 to float
  %7 = fdiv float %lampsim14, 0x41D0000000000000, !taffo.info !52
  %lampsim15 = bitcast float %7 to i32
  %lampsim16 = and i32 %lampsim15, -1
  %lampsim17 = bitcast i32 %lampsim16 to float
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %lampsim17, float* %arrayidx47, align 4, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !95, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !97

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !98, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !100

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !76
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !101 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !91
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !104
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !106
  %add = add nsw i32 %mul, %j.0, !taffo.info !106
  %rem = srem i32 %add, 20, !taffo.info !106, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !104
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv1 = fpext float %2 to double, !taffo.info !4
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !78
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !108

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !109

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !91
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !104
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !106, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !104
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv214 = fpext float %5 to double, !taffo.info !0
  %lampsim5 = bitcast double %conv214 to i64
  %lampsim6 = and i64 %lampsim5, -536870912
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !78
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !110

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !91
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !104
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !106, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !104
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv378 = fpext float %8 to double, !taffo.info !2
  %lampsim9 = bitcast double %conv378 to i64
  %lampsim10 = and i64 %lampsim9, -536870912
  %lampsim11 = bitcast i64 %lampsim10 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim11), !taffo.constinfo !78
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !111

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !112 !taffo.funinfo !113 !taffo.sourceFunction !114 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u1_31fixp, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !117 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %i.0, !taffo.info !55
  %u1_31fixp = load i32, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !55
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !118
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !55
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !118
  %2 = ashr i32 %0, 1, !taffo.info !55
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 29), !taffo.info !119
  %mul.u2_30fixp = shl i32 %3, 1, !taffo.info !121
  %arrayidx1.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %i.0, !taffo.info !55
  %4 = shl i32 %mul.u2_30fixp, 1, !taffo.info !121
  store i32 %4, i32* %arrayidx1.u1_31fixp, align 4, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.funinfo !123 !taffo.sourceFunction !117 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !53
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !124
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !125
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !124
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !125
  %2 = ashr i32 %0, 1, !taffo.info !124
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !126
  %mul.u3_29fixp = shl i32 %3, 1, !taffo.info !129
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !53
  %4 = shl i32 %mul.u3_29fixp, 1, !taffo.info !129
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !77
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.funinfo !131 !taffo.sourceFunction !117 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !62
  %u8_24fixp = load i32, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !132
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !118
  %0 = lshr i32 %u8_24fixp, 1, !taffo.info !132
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !118
  %2 = ashr i32 %0, 1, !taffo.info !132
  %3 = ashr i32 %1, 7, !taffo.info !118
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 22), !taffo.info !134
  %mul.u9_23fixp = shl i32 %4, 1, !taffo.info !137
  %arrayidx1.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !62
  %5 = shl i32 %mul.u9_23fixp, 1, !taffo.info !137
  store i32 %5, i32* %arrayidx1.u8_24fixp, align 4, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u3_29fixp, i32 noundef %beta.u3_29fixp, [20 x i32]* noundef %A.u2_30fixp, i32* noundef %u1.u2_30fixp, i32* noundef %v1.u1_31fixp, i32* noundef %u2.u1_31fixp, i32* noundef %v2.u1_31fixp, i32* noundef %w.u8_24fixp, i32* noundef %x.u3_29fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !139 !taffo.funinfo !140 !taffo.sourceFunction !141 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !91
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !104
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !52
  %u2_30fixp7 = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !142
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %u1.u2_30fixp, i32 %i.0, !taffo.info !53
  %u2_30fixp = load i32, i32* %arrayidx5.u2_30fixp, align 4, !taffo.info !53
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %v1.u1_31fixp, i32 %j.0, !taffo.info !55
  %u1_31fixp = load i32, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !55
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !53
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !55
  %2 = ashr i32 %0, 1, !taffo.info !53
  %3 = ashr i32 %1, 2, !taffo.info !55
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 28), !taffo.info !143
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !145
  %5 = lshr i32 %u2_30fixp7, 1, !taffo.info !142
  %add.u3_29fixp = add i32 %5, %mul.u3_29fixp, !taffo.info !146
  %arrayidx7.u1_31fixp = getelementptr inbounds i32, i32* %u2.u1_31fixp, i32 %i.0, !taffo.info !58
  %u1_31fixp1 = load i32, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !58
  %arrayidx8.u1_31fixp = getelementptr inbounds i32, i32* %v2.u1_31fixp, i32 %j.0, !taffo.info !60
  %u1_31fixp2 = load i32, i32* %arrayidx8.u1_31fixp, align 4, !taffo.info !60
  %6 = lshr i32 %u1_31fixp1, 1, !taffo.info !58
  %7 = lshr i32 %u1_31fixp2, 1, !taffo.info !60
  %8 = ashr i32 %6, 2, !taffo.info !58
  %9 = ashr i32 %7, 2, !taffo.info !60
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 28), !taffo.info !148
  %mul9.u3_29fixp = shl i32 %10, 1, !taffo.info !150
  %add10.u3_29fixp = add i32 %add.u3_29fixp, %mul9.u3_29fixp, !taffo.info !151
  %arrayidx11.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u2_30fixp, i32 0, i32 %j.0, !taffo.info !52
  %11 = shl i32 %add10.u3_29fixp, 1, !taffo.info !151
  store i32 %11, i32* %arrayidx12.u2_30fixp, align 4, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !153

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !154

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !91
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !104
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !91
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !104
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %i.1, !taffo.info !65
  %u3_29fixp = load i32, i32* %arrayidx22.u3_29fixp, align 4, !taffo.info !65
  %arrayidx23.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u2_30fixp, i32 0, i32 %i.1, !taffo.info !52
  %u2_30fixp8 = load i32, i32* %arrayidx24.u2_30fixp, align 4, !taffo.info !142
  %12 = lshr i32 %beta.u3_29fixp, 1, !taffo.info !88
  %13 = lshr i32 %u2_30fixp8, 1, !taffo.info !142
  %14 = ashr i32 %13, 1, !taffo.info !142
  %15 = call i32 @llvm.smul.fix.i32(i32 %12, i32 %14, i32 28), !taffo.info !155
  %mul25.u3_29fixp = shl i32 %15, 1, !taffo.info !157
  %arrayidx26.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %j.1, !taffo.info !67
  %u1_31fixp5 = load i32, i32* %arrayidx26.u1_31fixp, align 4, !taffo.info !67
  %16 = lshr i32 %mul25.u3_29fixp, 1, !taffo.info !157
  %17 = lshr i32 %u1_31fixp5, 1, !taffo.info !67
  %18 = ashr i32 %17, 2, !taffo.info !67
  %19 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %18, i32 28), !taffo.info !158
  %mul27.u3_29fixp = shl i32 %19, 1, !taffo.info !160
  %add28.u3_29fixp = add i32 %u3_29fixp, %mul27.u3_29fixp, !taffo.info !161
  %arrayidx29.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %i.1, !taffo.info !65
  store i32 %add28.u3_29fixp, i32* %arrayidx29.u3_29fixp, align 4, !taffo.info !83
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !163

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !164

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !91
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !104
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %i.2, !taffo.info !65
  %u3_29fixp3 = load i32, i32* %arrayidx39.u3_29fixp, align 4, !taffo.info !65
  %arrayidx40.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.2, !taffo.info !69
  %u1_31fixp6 = load i32, i32* %arrayidx40.u1_31fixp, align 4, !taffo.info !165
  %20 = lshr i32 %u1_31fixp6, 2, !taffo.info !165
  %add41.u3_29fixp = add i32 %u3_29fixp3, %20, !taffo.info !166
  %arrayidx42.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %i.2, !taffo.info !65
  store i32 %add41.u3_29fixp, i32* %arrayidx42.u3_29fixp, align 4, !taffo.info !83
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !168

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !91
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !104
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !91
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !104
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u8_24fixp = getelementptr inbounds i32, i32* %w.u8_24fixp, i32 %i.3, !taffo.info !62
  %u8_24fixp = load i32, i32* %arrayidx52.u8_24fixp, align 4, !taffo.info !62
  %arrayidx53.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u2_30fixp, i32 0, i32 %j.2, !taffo.info !52
  %u2_30fixp9 = load i32, i32* %arrayidx54.u2_30fixp, align 4, !taffo.info !142
  %21 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !87
  %22 = lshr i32 %u2_30fixp9, 1, !taffo.info !142
  %23 = ashr i32 %21, 2, !taffo.info !87
  %24 = ashr i32 %22, 3, !taffo.info !142
  %25 = call i32 @llvm.smul.fix.i32(i32 %23, i32 %24, i32 26), !taffo.info !169
  %mul55.u5_27fixp = shl i32 %25, 1, !taffo.info !172
  %arrayidx56.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %j.2, !taffo.info !65
  %u3_29fixp4 = load i32, i32* %arrayidx56.u3_29fixp, align 4, !taffo.info !174
  %26 = lshr i32 %mul55.u5_27fixp, 1, !taffo.info !172
  %27 = lshr i32 %u3_29fixp4, 1, !taffo.info !174
  %28 = ashr i32 %27, 2, !taffo.info !174
  %29 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %28, i32 26), !taffo.info !175
  %mul57.u5_27fixp = shl i32 %29, 1, !taffo.info !177
  %30 = lshr i32 %mul57.u5_27fixp, 3, !taffo.info !177
  %add58.u8_24fixp = add i32 %u8_24fixp, %30, !taffo.info !178
  %arrayidx59.u8_24fixp = getelementptr inbounds i32, i32* %w.u8_24fixp, i32 %i.3, !taffo.info !62
  store i32 %add58.u8_24fixp, i32* %arrayidx59.u8_24fixp, align 4, !taffo.info !82
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !180

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !181

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !115 !taffo.funinfo !182 !taffo.sourceFunction !117 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !65
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !183
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !185
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !183
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !185
  %2 = ashr i32 %0, 1, !taffo.info !183
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !186
  %mul.u4_28fixp = shl i32 %3, 1, !taffo.info !189
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !65
  %4 = shl i32 %mul.u4_28fixp, 1, !taffo.info !189
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !83
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u2_30fixp, i32* noundef %u1.u2_30fixp, i32* noundef %v1.u1_31fixp, i32* noundef %u2.u1_31fixp, i32* noundef %v2.u1_31fixp, i32* noundef %w.u8_24fixp, i32* noundef %x.u3_29fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !191 !taffo.funinfo !192 !taffo.sourceFunction !193 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !71, !taffo.constinfo !194
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !74, !taffo.constinfo !196
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !199
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !200, !taffo.initweight !202
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !203, !taffo.initweight !204
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !200, !taffo.initweight !205

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !206
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !206
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !199
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !207
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !208
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %u1.u2_30fixp, i32 %i.0, !taffo.info !209
  %3 = lshr i32 %div.u1_31fixp, 1, !taffo.info !208
  store i32 %3, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !210
  %add = add nsw i32 %i.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !212, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !212, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !199
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !213
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !215
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !215
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !216
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !218, !taffo.constinfo !219
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !220, !taffo.constinfo !219
  %arrayidx11.u1_31fixp = getelementptr inbounds i32, i32* %u2.u1_31fixp, i32 %i.0, !taffo.info !222
  store i32 %conv10.u1_31fixp, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !210
  %add12 = add nsw i32 %i.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !212, !taffo.constinfo !25
  %10 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !212, !taffo.constinfo !25
  %11 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !199
  %12 = call i32 @llvm.sdiv.fix.i32(i32 %10, i32 %11, i32 26), !taffo.info !213
  %div14.u2_30fixp = shl i32 %12, 4, !taffo.info !215
  %13 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !215
  %14 = shl i32 4, 28
  %15 = ashr i32 %13, 1, !taffo.info !215
  %16 = call i32 @llvm.sdiv.fix.i32(i32 %15, i32 %14, i32 28), !taffo.info !223
  %div16.u2_30fixp = shl i32 %16, 2, !taffo.info !225, !taffo.constinfo !226
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !229, !taffo.constinfo !226
  %arrayidx18.u1_31fixp = getelementptr inbounds i32, i32* %v1.u1_31fixp, i32 %i.0, !taffo.info !231
  store i32 %conv17.u1_31fixp, i32* %arrayidx18.u1_31fixp, align 4, !taffo.info !210
  %add19 = add nsw i32 %i.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !212, !taffo.constinfo !25
  %17 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !212, !taffo.constinfo !25
  %18 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !199
  %19 = call i32 @llvm.sdiv.fix.i32(i32 %17, i32 %18, i32 26), !taffo.info !213
  %div21.u2_30fixp = shl i32 %19, 4, !taffo.info !215
  %20 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !215
  %21 = shl i32 6, 28
  %22 = ashr i32 %20, 1, !taffo.info !215
  %23 = call i32 @llvm.sdiv.fix.i32(i32 %22, i32 %21, i32 28), !taffo.info !232
  %div23.u2_30fixp = shl i32 %23, 2, !taffo.info !234, !taffo.constinfo !235
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !238, !taffo.constinfo !235
  %arrayidx25.u1_31fixp = getelementptr inbounds i32, i32* %v2.u1_31fixp, i32 %i.0, !taffo.info !240
  store i32 %conv24.u1_31fixp, i32* %arrayidx25.u1_31fixp, align 4, !taffo.info !210
  %add26 = add nsw i32 %i.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !212, !taffo.constinfo !25
  %24 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !212, !taffo.constinfo !25
  %25 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !199
  %26 = call i32 @llvm.sdiv.fix.i32(i32 %24, i32 %25, i32 26), !taffo.info !213
  %div28.u2_30fixp = shl i32 %26, 4, !taffo.info !215
  %27 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !215
  %28 = shl i32 8, 27
  %29 = ashr i32 %27, 2, !taffo.info !215
  %30 = call i32 @llvm.sdiv.fix.i32(i32 %29, i32 %28, i32 27), !taffo.info !241
  %div30.u2_30fixp = shl i32 %30, 3, !taffo.info !243, !taffo.constinfo !244
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !247, !taffo.constinfo !244
  %arrayidx32.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %i.0, !taffo.info !249
  store i32 %conv31.u1_31fixp, i32* %arrayidx32.u1_31fixp, align 4, !taffo.info !210
  %add33 = add nsw i32 %i.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !212, !taffo.constinfo !25
  %31 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !212, !taffo.constinfo !25
  %32 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !199
  %33 = call i32 @llvm.sdiv.fix.i32(i32 %31, i32 %32, i32 26), !taffo.info !213
  %div35.u2_30fixp = shl i32 %33, 4, !taffo.info !215
  %34 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !215
  %35 = shl i32 9, 27
  %36 = ashr i32 %34, 2, !taffo.info !215
  %37 = call i32 @llvm.sdiv.fix.i32(i32 %36, i32 %35, i32 27), !taffo.info !250
  %div37.u2_30fixp = shl i32 %37, 3, !taffo.info !252, !taffo.constinfo !253
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !256, !taffo.constinfo !253
  %arrayidx39.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.0, !taffo.info !258
  store i32 %conv38.u1_31fixp, i32* %arrayidx39.u1_31fixp, align 4, !taffo.info !210
  %arrayidx40.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %i.0, !taffo.info !259
  store i32 0, i32* %arrayidx40.u3_29fixp, align 4, !taffo.info !210, !taffo.constinfo !260
  %arrayidx41.u8_24fixp = getelementptr inbounds i32, i32* %w.u8_24fixp, i32 %i.0, !taffo.info !261
  store i32 0, i32* %arrayidx41.u8_24fixp, align 4, !taffo.info !210, !taffo.constinfo !260
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !200, !taffo.initweight !202
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !203, !taffo.initweight !204
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !200, !taffo.initweight !205

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !262, !taffo.initweight !204
  %rem = srem i32 %mul, %n, !taffo.info !264, !taffo.initweight !205
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !266
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !199
  %38 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !266
  %39 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !199
  %40 = call i32 @llvm.sdiv.fix.i32(i32 %38, i32 %39, i32 26), !taffo.info !267
  %div48.u1_31fixp = shl i32 %40, 5, !taffo.info !268
  %arrayidx49.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !269
  %arrayidx50.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u2_30fixp, i32 0, i32 %j.0, !taffo.info !269
  %41 = lshr i32 %div48.u1_31fixp, 1, !taffo.info !268
  store i32 %41, i32* %arrayidx50.u2_30fixp, align 4, !taffo.info !210
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !270

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !211, !taffo.initweight !204, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !271

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !272 !taffo.funinfo !273 !taffo.sourceFunction !274 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !104
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !91
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !104
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !106
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !52
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !52
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !142
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !125
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !142
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !125
  %3 = ashr i32 %1, 1, !taffo.info !142
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !275
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !277
  %5 = mul nsw i32 %i.0, %m, !taffo.info !106
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !52
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !52
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !277
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !278

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !104, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !279

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

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 5.551250e+00}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x406ABE8B60F1B25F}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 2.662500e+00}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.000000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"NumRegisterParameters", i32 0}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{i1 false, !20}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 1.000000e+01, double 1.000000e+01}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 2.000000e+00, double 2.000000e+00}
!25 = !{i1 false, i1 false}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i32 -1, i32 -1}
!29 = !{i32 0, i1 false, i32 0, i1 false}
!30 = distinct !{null, null}
!31 = !{i32 -1, i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = distinct !{null, null, null, null, null, null, null, null}
!34 = distinct !{!34, !27}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = distinct !{null}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{}
!46 = !{i1 true}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 30}
!49 = !{double 1.500000e+00, double 1.500000e+00}
!50 = !{!48, !51, i1 false, i2 -1}
!51 = !{double 1.200000e+00, double 1.200000e+00}
!52 = !{!48, !5, i1 false, i2 -1}
!53 = !{!48, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 1.900000e+00}
!55 = !{!56, !57, i1 false, i2 -1}
!56 = !{!"fixp", i32 32, i32 31}
!57 = !{double 2.500000e-02, double 5.000000e-01}
!58 = !{!56, !59, i1 false, i2 -1}
!59 = !{double 5.000000e-02, double 1.000000e+00}
!60 = !{!56, !61, i1 false, i2 -1}
!61 = !{double 1.666700e-02, double 3.333330e-01}
!62 = !{!63, !3, i1 false, i2 -1}
!63 = !{!"fixp", i32 32, i32 24}
!64 = !{!"w"}
!65 = !{!66, !1, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 29}
!67 = !{!56, !68, i1 false, i2 -1}
!68 = !{double 1.250000e-02, double 2.500000e-01}
!69 = !{!56, !70, i1 false, i2 -1}
!70 = !{double 1.111100e-02, double 2.222220e-01}
!71 = !{i1 false, !49, i1 false, i2 -1}
!72 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!73 = !{i1 false, i1 false, i1 false}
!74 = !{i1 false, !51, i1 false, i2 -1}
!75 = !{i1 false, !5, i1 false, i2 -1}
!76 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!77 = !{i1 false, !54, i1 false, i2 -1}
!78 = !{i1 false, i1 false, i1 false, i1 false}
!79 = !{i1 false, !57, i1 false, i2 -1}
!80 = !{i1 false, !59, i1 false, i2 -1}
!81 = !{i1 false, !61, i1 false, i2 -1}
!82 = !{i1 false, !3, i1 false, i2 -1}
!83 = !{i1 false, !1, i1 false, i2 -1}
!84 = !{i1 false, !68, i1 false, i2 -1}
!85 = !{i1 false, !70, i1 false, i2 -1}
!86 = !{i1 false}
!87 = !{!66, !49, i1 false, i2 -1}
!88 = !{!66, !51, i1 false, i2 -1}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0.000000e+00, double 2.100000e+01}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0.000000e+00, double 1.000000e+00}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 0.000000e+00, double 4.410000e+02}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 1.000000e+00, double 4.410000e+02}
!97 = distinct !{!97, !27}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 1.000000e+00, double 2.100000e+01}
!100 = distinct !{!100, !27}
!101 = !{i32 1, !102, i32 1, !2, i32 1, !0, i32 1, !4}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 2.000000e+01, double 2.000000e+01}
!104 = !{i1 false, !105, i1 false, i2 0}
!105 = !{double 1.000000e+00, double 1.000000e+00}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 0.000000e+00, double 0.000000e+00}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = !{i32 1, i32 -1}
!113 = !{i32 1, !47, i32 1, !23}
!114 = !{void (float*, i32)* @scale_scalar}
!115 = !{i32 -1, i32 2, i32 -1}
!116 = !{i32 1, !102, i32 1, !55, i32 1, !23}
!117 = !{void (i32, float*, i32)* @scale_1d}
!118 = !{!48, !24, i1 false, i2 1}
!119 = !{!120, !59, i1 false, i2 -1}
!120 = !{!"fixp", i32 -32, i32 29}
!121 = !{!48, !59, i1 false, i2 -1}
!122 = distinct !{!122, !27}
!123 = !{i32 1, !102, i32 1, !53, i32 1, !23}
!124 = !{!66, !54, i1 false, i2 -1}
!125 = !{!66, !24, i1 false, i2 1}
!126 = !{!127, !128, i1 false, i2 -1}
!127 = !{!"fixp", i32 -32, i32 28}
!128 = !{double 0.000000e+00, double 3.800000e+00}
!129 = !{!66, !128, i1 false, i2 -1}
!130 = distinct !{!130, !27}
!131 = !{i32 1, !102, i32 1, !62, i32 1, !23}
!132 = !{!133, !3, i1 false, i2 -1}
!133 = !{!"fixp", i32 32, i32 23}
!134 = !{!135, !136, i1 false, i2 -1}
!135 = !{!"fixp", i32 -32, i32 22}
!136 = !{double 0.000000e+00, double 0x407ABE8B60F1B25F}
!137 = !{!133, !136, i1 false, i2 -1}
!138 = distinct !{!138, !27}
!139 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!140 = !{i32 1, !102, i32 1, !87, i32 1, !88, i32 1, !52, i32 1, !53, i32 1, !55, i32 1, !58, i32 1, !60, i32 1, !62, i32 1, !65, i32 1, !67, i32 1, !69}
!141 = distinct !{null}
!142 = !{!66, !5, i1 false, i2 -1}
!143 = !{!127, !144, i1 false, i2 -1}
!144 = !{double 0.000000e+00, double 0x3FEE666666666666}
!145 = !{!66, !144, i1 false, i2 -1}
!146 = !{!66, !147, i1 false, i2 -1}
!147 = !{double 0.000000e+00, double 3.612500e+00}
!148 = !{!127, !149, i1 false, i2 -1}
!149 = !{double 0x3F4B4EA57F80E9A0, double 3.333330e-01}
!150 = !{!66, !149, i1 false, i2 -1}
!151 = !{!66, !152, i1 false, i2 -1}
!152 = !{double 0x3F4B4EA57F80E9A0, double 0x400F9110E453D20F}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = !{!127, !156, i1 false, i2 -1}
!156 = !{double 0.000000e+00, double 3.195000e+00}
!157 = !{!66, !156, i1 false, i2 -1}
!158 = !{!127, !159, i1 false, i2 -1}
!159 = !{double 0.000000e+00, double 7.987500e-01}
!160 = !{!66, !159, i1 false, i2 -1}
!161 = !{!66, !162, i1 false, i2 -1}
!162 = !{double 0.000000e+00, double 6.350000e+00}
!163 = distinct !{!163, !27}
!164 = distinct !{!164, !27}
!165 = !{!66, !70, i1 false, i2 -1}
!166 = !{!66, !167, i1 false, i2 -1}
!167 = !{double 1.111100e-02, double 0x401718090B417CA2}
!168 = distinct !{!168, !27}
!169 = !{!170, !171, i1 false, i2 -1}
!170 = !{!"fixp", i32 -32, i32 26}
!171 = !{double 0.000000e+00, double 0x400FF33333333334}
!172 = !{!173, !171, i1 false, i2 -1}
!173 = !{!"fixp", i32 32, i32 27}
!174 = !{!173, !1, i1 false, i2 -1}
!175 = !{!170, !176, i1 false, i2 -1}
!176 = !{double 0.000000e+00, double 0x40362B9916872B02}
!177 = !{!173, !176, i1 false, i2 -1}
!178 = !{!63, !179, i1 false, i2 -1}
!179 = !{double 0.000000e+00, double 0x406D83FE83C297BF}
!180 = distinct !{!180, !27}
!181 = distinct !{!181, !27}
!182 = !{i32 1, !102, i32 1, !65, i32 1, !23}
!183 = !{!184, !1, i1 false, i2 -1}
!184 = !{!"fixp", i32 32, i32 28}
!185 = !{!184, !24, i1 false, i2 1}
!186 = !{!187, !188, i1 false, i2 -1}
!187 = !{!"fixp", i32 -32, i32 27}
!188 = !{double 0.000000e+00, double 1.110250e+01}
!189 = !{!184, !188, i1 false, i2 -1}
!190 = distinct !{!190, !27}
!191 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!192 = !{i32 1, !102, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !53, i32 1, !55, i32 1, !58, i32 1, !60, i32 1, !62, i32 1, !65, i32 1, !67, i32 1, !69}
!193 = distinct !{null}
!194 = !{!195, i1 false}
!195 = !{i1 false, !49, i1 false, i2 0}
!196 = !{!197, i1 false}
!197 = !{i1 false, !198, i1 false, i2 0}
!198 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!199 = !{!173, !103, i1 false, i2 1}
!200 = !{i1 false, !201, i1 false, i2 -1}
!201 = !{double 0.000000e+00, double 2.000000e+01}
!202 = !{i32 0}
!203 = !{i1 false, !92, i1 false, i2 -1}
!204 = !{i32 2}
!205 = !{i32 3}
!206 = !{!173, !201, i1 false, i2 -1}
!207 = !{!170, !92, i1 false, i2 1}
!208 = !{!56, !92, i1 false, i2 1}
!209 = !{!48, !54, i1 false, i2 1}
!210 = !{i1 false, i1 false, i1 false, i2 1}
!211 = !{i1 false, !99, i1 false, i2 -1}
!212 = !{!173, !99, i1 false, i2 -1}
!213 = !{!170, !214, i1 false, i2 1}
!214 = !{double 5.000000e-02, double 1.050000e+00}
!215 = !{!48, !214, i1 false, i2 1}
!216 = !{!120, !217, i1 false, i2 1}
!217 = !{double 2.500000e-02, double 5.250000e-01}
!218 = !{!48, !217, i1 false, i2 1}
!219 = !{i1 false, !23}
!220 = !{!56, !221, i1 false, i2 1}
!221 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!222 = !{!56, !59, i1 false, i2 1}
!223 = !{!127, !224, i1 false, i2 1}
!224 = !{double 1.250000e-02, double 2.625000e-01}
!225 = !{!48, !224, i1 false, i2 1}
!226 = !{i1 false, !227}
!227 = !{i1 false, !228, i1 false, i2 0}
!228 = !{double 4.000000e+00, double 4.000000e+00}
!229 = !{!56, !230, i1 false, i2 1}
!230 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!231 = !{!56, !57, i1 false, i2 1}
!232 = !{!127, !233, i1 false, i2 1}
!233 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!234 = !{!48, !233, i1 false, i2 1}
!235 = !{i1 false, !236}
!236 = !{i1 false, !237, i1 false, i2 0}
!237 = !{double 6.000000e+00, double 6.000000e+00}
!238 = !{!56, !239, i1 false, i2 1}
!239 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!240 = !{!56, !61, i1 false, i2 1}
!241 = !{!187, !242, i1 false, i2 1}
!242 = !{double 6.250000e-03, double 1.312500e-01}
!243 = !{!48, !242, i1 false, i2 1}
!244 = !{i1 false, !245}
!245 = !{i1 false, !246, i1 false, i2 0}
!246 = !{double 8.000000e+00, double 8.000000e+00}
!247 = !{!56, !248, i1 false, i2 1}
!248 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!249 = !{!56, !68, i1 false, i2 1}
!250 = !{!187, !251, i1 false, i2 1}
!251 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!252 = !{!48, !251, i1 false, i2 1}
!253 = !{i1 false, !254}
!254 = !{i1 false, !255, i1 false, i2 0}
!255 = !{double 9.000000e+00, double 9.000000e+00}
!256 = !{!56, !257, i1 false, i2 1}
!257 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!258 = !{!56, !70, i1 false, i2 1}
!259 = !{!66, !1, i1 false, i2 1}
!260 = !{!106, i1 false}
!261 = !{!63, !3, i1 false, i2 1}
!262 = !{i1 false, !263, i1 false, i2 -1}
!263 = !{double 0.000000e+00, double 4.000000e+02}
!264 = !{i1 false, !265, i1 false, i2 -1}
!265 = !{double 0.000000e+00, double 1.900000e+01}
!266 = !{!173, !265, i1 false, i2 -1}
!267 = !{!170, !144, i1 false, i2 -1}
!268 = !{!56, !144, i1 false, i2 -1}
!269 = !{!48, !5, i1 false, i2 1}
!270 = distinct !{!270, !27}
!271 = distinct !{!271, !27}
!272 = !{i32 -1, i32 -1, i32 3, i32 -1}
!273 = !{i32 1, !102, i32 1, !102, i32 1, !52, i32 1, !23}
!274 = !{void (i32, i32, float*, i32)* @scale_2d}
!275 = !{!127, !276, i1 false, i2 -1}
!276 = !{double 0.000000e+00, double 5.325000e+00}
!277 = !{!66, !276, i1 false, i2 -1}
!278 = distinct !{!278, !27}
!279 = distinct !{!279, !27}
