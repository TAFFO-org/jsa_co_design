; ModuleID = './build/bin/fixed/gemver/16/gemver-standard-4-fixed-16.out.ll'
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
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !22
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
  %A.u4_28fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !54
  %v1.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !57
  %u2.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !60
  %v2.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !62
  %w.u12_20fixp = alloca [20 x i32], align 4, !taffo.info !64, !taffo.target !66
  %x.u6_26fixp = alloca [20 x i32], align 4, !taffo.info !67
  %y.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !69
  %z.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !71
  %arraydecay.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u3_29fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay13.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay14.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u2_30fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay15.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay16.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u12_20fixp, i32 0, i32 0, !taffo.info !64, !taffo.target !66
  %arraydecay17.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u6_26fixp, i32 0, i32 0, !taffo.info !67
  %arraydecay18.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay19.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !71
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u4_28fixp, i32* %arraydecay12.u3_29fixp, i32* %arraydecay13.u1_31fixp, i32* %arraydecay14.u2_30fixp, i32* %arraydecay15.u1_31fixp, i32* %arraydecay16.u12_20fixp, i32* %arraydecay17.u6_26fixp, i32* %arraydecay18.u1_31fixp, i32* %arraydecay19.u1_31fixp), !taffo.info !73, !taffo.constinfo !74
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 4), !taffo.info !73, !taffo.constinfo !75
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 4), !taffo.info !76, !taffo.constinfo !75
  %arraydecay20.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !52
  %u4_28fixp = bitcast [20 x i32]* %arraydecay20.u4_28fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u4_28fixp, i32 4), !taffo.info !77, !taffo.constinfo !78
  %arraydecay21.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u3_29fixp, i32 0, i32 0, !taffo.info !54
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u3_29fixp, i32 4), !taffo.info !79, !taffo.constinfo !80
  %arraydecay22.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !57
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u1_31fixp, i32 4), !taffo.info !81, !taffo.constinfo !80
  %arraydecay23.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u2_30fixp, i32 0, i32 0, !taffo.info !60
  call void @scale_1d.5_fixp(i32 20, i32* %arraydecay23.u2_30fixp, i32 4), !taffo.info !82, !taffo.constinfo !80
  %arraydecay24.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !62
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay24.u1_31fixp, i32 4), !taffo.info !83, !taffo.constinfo !80
  %arraydecay25.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u12_20fixp, i32 0, i32 0, !taffo.info !64, !taffo.target !66
  call void @scale_1d.7_fixp(i32 20, i32* %arraydecay25.u12_20fixp, i32 4), !taffo.info !84, !taffo.constinfo !80, !taffo.target !66
  %arraydecay26.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u6_26fixp, i32 0, i32 0, !taffo.info !67
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u6_26fixp, i32 4), !taffo.info !85, !taffo.constinfo !80
  %arraydecay27.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !69
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay27.u1_31fixp, i32 4), !taffo.info !86, !taffo.constinfo !80
  %arraydecay28.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !71
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay28.u1_31fixp, i32 4), !taffo.info !87, !taffo.constinfo !80
  call void @timer_start(), !taffo.constinfo !88
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !89
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !90
  %arraydecay29.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u3_29fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay31.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay32.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u2_30fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay33.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay34.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u12_20fixp, i32 0, i32 0, !taffo.info !64, !taffo.target !66
  %arraydecay35.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u6_26fixp, i32 0, i32 0, !taffo.info !67
  %arraydecay36.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay37.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !71
  %0 = lshr i32 %u2_30fixp1, 2, !taffo.info !89
  %1 = lshr i32 %u2_30fixp, 2, !taffo.info !90
  call void @kernel_gemver.10_fixp(i32 20, i32 %0, i32 %1, [20 x i32]* %arraydecay29.u4_28fixp, i32* %arraydecay30.u3_29fixp, i32* %arraydecay31.u1_31fixp, i32* %arraydecay32.u2_30fixp, i32* %arraydecay33.u1_31fixp, i32* %arraydecay34.u12_20fixp, i32* %arraydecay35.u6_26fixp, i32* %arraydecay36.u1_31fixp, i32* %arraydecay37.u1_31fixp), !taffo.info !73, !taffo.constinfo !74
  call void @timer_stop(), !taffo.constinfo !88
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !91
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u6_26fixp, i32 0, i32 %i.0, !taffo.info !67
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !67
  %2 = uitofp i32 %u6_26fixp to float, !taffo.info !67
  %lampsim = bitcast float %2 to i32
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %3 = fdiv float %lampsim2, 0x4190000000000000, !taffo.info !67
  %lampsim3 = bitcast float %3 to i32
  %lampsim4 = and i32 %lampsim3, -256
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx38, align 4, !taffo.info !85
  %arrayidx39.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u12_20fixp, i32 0, i32 %i.0, !taffo.info !64, !taffo.target !66
  %u12_20fixp = load i32, i32* %arrayidx39.u12_20fixp, align 4, !taffo.info !64, !taffo.target !66
  %4 = uitofp i32 %u12_20fixp to float, !taffo.info !64, !taffo.target !66
  %lampsim6 = bitcast float %4 to i32
  %lampsim7 = and i32 %lampsim6, -256
  %lampsim8 = bitcast i32 %lampsim7 to float
  %5 = fdiv float %lampsim8, 0x4130000000000000, !taffo.info !64, !taffo.target !66
  %lampsim9 = bitcast float %5 to i32
  %lampsim10 = and i32 %lampsim9, -256
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %lampsim11, float* %arrayidx40, align 4, !taffo.info !84, !taffo.target !66
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !95
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !93
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u4_28fixp, i32 0, i32 %j.0, !taffo.info !52
  %u4_28fixp2 = load i32, i32* %arrayidx45.u4_28fixp, align 4, !taffo.info !52
  %6 = uitofp i32 %u4_28fixp2 to float, !taffo.info !52
  %lampsim12 = bitcast float %6 to i32
  %lampsim13 = and i32 %lampsim12, -256
  %lampsim14 = bitcast i32 %lampsim13 to float
  %7 = fdiv float %lampsim14, 0x41B0000000000000, !taffo.info !52
  %lampsim15 = bitcast float %7 to i32
  %lampsim16 = and i32 %lampsim15, -256
  %lampsim17 = bitcast i32 %lampsim16 to float
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %lampsim17, float* %arrayidx47, align 4, !taffo.info !77
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !99

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !100, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !102

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !78
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !103 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !93
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !106
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !108
  %add = add nsw i32 %mul, %j.0, !taffo.info !108
  %rem = srem i32 %add, 20, !taffo.info !108, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !106
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !75
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv1 = fpext float %2 to double, !taffo.info !4
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !80
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !110

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !111

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !93
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !106
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !108, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !106
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !75
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv214 = fpext float %5 to double, !taffo.info !0
  %lampsim5 = bitcast double %conv214 to i64
  %lampsim6 = and i64 %lampsim5, -137438953472
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !80
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !112

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !93
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !106
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !108, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !106
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !75
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv378 = fpext float %8 to double, !taffo.info !2
  %lampsim9 = bitcast double %conv378 to i64
  %lampsim10 = and i64 %lampsim9, -137438953472
  %lampsim11 = bitcast i64 %lampsim10 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim11), !taffo.constinfo !80
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !113

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !114 !taffo.funinfo !115 !taffo.sourceFunction !118 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !119 !taffo.funinfo !120 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !54
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !122
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !124
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !122
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !124
  %2 = ashr i32 %0, 2, !taffo.info !122
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !125
  %mul.u5_27fixp = shl i32 %3, 1, !taffo.info !128
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !54
  %4 = shl i32 %mul.u5_27fixp, 2, !taffo.info !128
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !119 !taffo.funinfo !130 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !67
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !131
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !133
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !131
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !133
  %2 = ashr i32 %0, 1, !taffo.info !131
  %3 = ashr i32 %1, 4, !taffo.info !133
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !134
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !137
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !67
  %5 = shl i32 %mul.u7_25fixp, 1, !taffo.info !137
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u1_31fixp, i32 noundef %factor) #0 !taffo.initweight !119 !taffo.funinfo !139 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %i.0, !taffo.info !57
  %u1_31fixp = load i32, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !140
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !133
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !140
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !133
  %2 = ashr i32 %0, 2, !taffo.info !140
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !141
  %mul.u3_29fixp = shl i32 %3, 1, !taffo.info !144
  %arrayidx1.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %i.0, !taffo.info !57
  %4 = shl i32 %mul.u3_29fixp, 2, !taffo.info !144
  store i32 %4, i32* %arrayidx1.u1_31fixp, align 4, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !119 !taffo.funinfo !146 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !60
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !147
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !148
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !147
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !148
  %2 = ashr i32 %0, 2, !taffo.info !147
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !149
  %mul.u4_28fixp = shl i32 %3, 1, !taffo.info !152
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !60
  %4 = shl i32 %mul.u4_28fixp, 2, !taffo.info !152
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, i32* noundef %val.u12_20fixp, i32 noundef %factor) #0 !taffo.initweight !119 !taffo.funinfo !154 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %i.0, !taffo.info !64
  %u12_20fixp = load i32, i32* %arrayidx.u12_20fixp, align 4, !taffo.info !155
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !133
  %0 = lshr i32 %u12_20fixp, 1, !taffo.info !155
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !133
  %2 = ashr i32 %0, 2, !taffo.info !155
  %3 = ashr i32 %1, 11, !taffo.info !133
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 17), !taffo.info !157
  %mul.u14_18fixp = shl i32 %4, 1, !taffo.info !160
  %arrayidx1.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %i.0, !taffo.info !64
  %5 = shl i32 %mul.u14_18fixp, 2, !taffo.info !160
  store i32 %5, i32* %arrayidx1.u12_20fixp, align 4, !taffo.info !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !161

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u4_28fixp, i32* noundef %u1.u3_29fixp, i32* noundef %v1.u1_31fixp, i32* noundef %u2.u2_30fixp, i32* noundef %v2.u1_31fixp, i32* noundef %w.u12_20fixp, i32* noundef %x.u6_26fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !164 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !73, !taffo.constinfo !165
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !76, !taffo.constinfo !167
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !170
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !171, !taffo.initweight !173
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !174, !taffo.initweight !175
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !171, !taffo.initweight !176

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !177
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !177
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !170
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !178
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !179
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %u1.u3_29fixp, i32 %i.0, !taffo.info !180
  %3 = lshr i32 %div.u1_31fixp, 2, !taffo.info !179
  store i32 %3, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !181
  %add = add nsw i32 %i.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !183, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !183, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !170
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !184
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !186
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !186
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !187
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !190, !taffo.constinfo !191
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !192, !taffo.constinfo !191
  %arrayidx11.u2_30fixp = getelementptr inbounds i32, i32* %u2.u2_30fixp, i32 %i.0, !taffo.info !194
  %10 = lshr i32 %conv10.u1_31fixp, 1, !taffo.info !192, !taffo.constinfo !191
  store i32 %10, i32* %arrayidx11.u2_30fixp, align 4, !taffo.info !181
  %add12 = add nsw i32 %i.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !183, !taffo.constinfo !25
  %11 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !183, !taffo.constinfo !25
  %12 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !170
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !184
  %div14.u2_30fixp = shl i32 %13, 4, !taffo.info !186
  %14 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !186
  %15 = shl i32 4, 28
  %16 = ashr i32 %14, 1, !taffo.info !186
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 28), !taffo.info !195
  %div16.u2_30fixp = shl i32 %17, 2, !taffo.info !197, !taffo.constinfo !198
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !199, !taffo.constinfo !198
  %arrayidx18.u1_31fixp = getelementptr inbounds i32, i32* %v1.u1_31fixp, i32 %i.0, !taffo.info !201
  store i32 %conv17.u1_31fixp, i32* %arrayidx18.u1_31fixp, align 4, !taffo.info !181
  %add19 = add nsw i32 %i.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !183, !taffo.constinfo !25
  %18 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !183, !taffo.constinfo !25
  %19 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !170
  %20 = call i32 @llvm.sdiv.fix.i32(i32 %18, i32 %19, i32 26), !taffo.info !184
  %div21.u2_30fixp = shl i32 %20, 4, !taffo.info !186
  %21 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !186
  %22 = shl i32 6, 28
  %23 = ashr i32 %21, 1, !taffo.info !186
  %24 = call i32 @llvm.sdiv.fix.i32(i32 %23, i32 %22, i32 28), !taffo.info !202
  %div23.u2_30fixp = shl i32 %24, 2, !taffo.info !204, !taffo.constinfo !205
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !208, !taffo.constinfo !205
  %arrayidx25.u1_31fixp = getelementptr inbounds i32, i32* %v2.u1_31fixp, i32 %i.0, !taffo.info !210
  store i32 %conv24.u1_31fixp, i32* %arrayidx25.u1_31fixp, align 4, !taffo.info !181
  %add26 = add nsw i32 %i.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !183, !taffo.constinfo !25
  %25 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !183, !taffo.constinfo !25
  %26 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !170
  %27 = call i32 @llvm.sdiv.fix.i32(i32 %25, i32 %26, i32 26), !taffo.info !184
  %div28.u2_30fixp = shl i32 %27, 4, !taffo.info !186
  %28 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !186
  %29 = shl i32 8, 27
  %30 = ashr i32 %28, 2, !taffo.info !186
  %31 = call i32 @llvm.sdiv.fix.i32(i32 %30, i32 %29, i32 27), !taffo.info !211
  %div30.u2_30fixp = shl i32 %31, 3, !taffo.info !213, !taffo.constinfo !214
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !217, !taffo.constinfo !214
  %arrayidx32.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %i.0, !taffo.info !219
  store i32 %conv31.u1_31fixp, i32* %arrayidx32.u1_31fixp, align 4, !taffo.info !181
  %add33 = add nsw i32 %i.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !183, !taffo.constinfo !25
  %32 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !183, !taffo.constinfo !25
  %33 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !170
  %34 = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %33, i32 26), !taffo.info !184
  %div35.u2_30fixp = shl i32 %34, 4, !taffo.info !186
  %35 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !186
  %36 = shl i32 9, 27
  %37 = ashr i32 %35, 2, !taffo.info !186
  %38 = call i32 @llvm.sdiv.fix.i32(i32 %37, i32 %36, i32 27), !taffo.info !220
  %div37.u2_30fixp = shl i32 %38, 3, !taffo.info !222, !taffo.constinfo !223
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !226, !taffo.constinfo !223
  %arrayidx39.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.0, !taffo.info !228
  store i32 %conv38.u1_31fixp, i32* %arrayidx39.u1_31fixp, align 4, !taffo.info !181
  %arrayidx40.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %i.0, !taffo.info !229
  store i32 0, i32* %arrayidx40.u6_26fixp, align 4, !taffo.info !181, !taffo.constinfo !230
  %arrayidx41.u12_20fixp = getelementptr inbounds i32, i32* %w.u12_20fixp, i32 %i.0, !taffo.info !231
  store i32 0, i32* %arrayidx41.u12_20fixp, align 4, !taffo.info !181, !taffo.constinfo !230
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !171, !taffo.initweight !173
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !174, !taffo.initweight !175
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !171, !taffo.initweight !176

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !232, !taffo.initweight !175
  %rem = srem i32 %mul, %n, !taffo.info !234, !taffo.initweight !176
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !236
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !170
  %39 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !236
  %40 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !170
  %41 = call i32 @llvm.sdiv.fix.i32(i32 %39, i32 %40, i32 26), !taffo.info !237
  %div48.u1_31fixp = shl i32 %41, 5, !taffo.info !239
  %arrayidx49.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !240
  %arrayidx50.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u4_28fixp, i32 0, i32 %j.0, !taffo.info !240
  %42 = lshr i32 %div48.u1_31fixp, 3, !taffo.info !239
  store i32 %42, i32* %arrayidx50.u4_28fixp, align 4, !taffo.info !181
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !241

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !182, !taffo.initweight !175, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !242

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u4_28fixp, i32 noundef %beta.u4_28fixp, [20 x i32]* noundef %A.u4_28fixp, i32* noundef %u1.u3_29fixp, i32* noundef %v1.u1_31fixp, i32* noundef %u2.u2_30fixp, i32* noundef %v2.u1_31fixp, i32* noundef %w.u12_20fixp, i32* noundef %x.u6_26fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !243 !taffo.funinfo !244 !taffo.sourceFunction !245 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !93
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !106
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !52
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !52
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %u1.u3_29fixp, i32 %i.0, !taffo.info !54
  %u3_29fixp = load i32, i32* %arrayidx5.u3_29fixp, align 4, !taffo.info !54
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %v1.u1_31fixp, i32 %j.0, !taffo.info !57
  %u1_31fixp = load i32, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !140
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !54
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !140
  %2 = ashr i32 %0, 1, !taffo.info !54
  %3 = ashr i32 %1, 3, !taffo.info !140
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 27), !taffo.info !246
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !247
  %add.u4_28fixp = add i32 %u4_28fixp, %mul.u4_28fixp, !taffo.info !248
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %u2.u2_30fixp, i32 %i.0, !taffo.info !60
  %u2_30fixp = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !60
  %arrayidx8.u1_31fixp = getelementptr inbounds i32, i32* %v2.u1_31fixp, i32 %j.0, !taffo.info !62
  %u1_31fixp1 = load i32, i32* %arrayidx8.u1_31fixp, align 4, !taffo.info !250
  %5 = lshr i32 %u2_30fixp, 1, !taffo.info !60
  %6 = lshr i32 %u1_31fixp1, 1, !taffo.info !250
  %7 = ashr i32 %5, 2, !taffo.info !60
  %8 = ashr i32 %6, 3, !taffo.info !250
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 27), !taffo.info !251
  %mul9.u4_28fixp = shl i32 %9, 1, !taffo.info !253
  %add10.u4_28fixp = add i32 %add.u4_28fixp, %mul9.u4_28fixp, !taffo.info !254
  %arrayidx11.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u4_28fixp, i32 0, i32 %j.0, !taffo.info !52
  store i32 %add10.u4_28fixp, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !77
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !256

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !257

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !93
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !106
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !93
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !106
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %i.1, !taffo.info !67
  %u6_26fixp = load i32, i32* %arrayidx22.u6_26fixp, align 4, !taffo.info !67
  %arrayidx23.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u4_28fixp, i32 0, i32 %i.1, !taffo.info !52
  %u4_28fixp6 = load i32, i32* %arrayidx24.u4_28fixp, align 4, !taffo.info !52
  %10 = lshr i32 %beta.u4_28fixp, 1, !taffo.info !90
  %11 = lshr i32 %u4_28fixp6, 1, !taffo.info !52
  %12 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %11, i32 27), !taffo.info !258
  %mul25.u4_28fixp = shl i32 %12, 1, !taffo.info !260
  %arrayidx26.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %j.1, !taffo.info !69
  %u1_31fixp4 = load i32, i32* %arrayidx26.u1_31fixp, align 4, !taffo.info !261
  %13 = lshr i32 %mul25.u4_28fixp, 1, !taffo.info !260
  %14 = lshr i32 %u1_31fixp4, 1, !taffo.info !261
  %15 = ashr i32 %14, 3, !taffo.info !261
  %16 = call i32 @llvm.smul.fix.i32(i32 %13, i32 %15, i32 27), !taffo.info !262
  %mul27.u4_28fixp = shl i32 %16, 1, !taffo.info !264
  %17 = lshr i32 %mul27.u4_28fixp, 2, !taffo.info !264
  %add28.u6_26fixp = add i32 %u6_26fixp, %17, !taffo.info !265
  %arrayidx29.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %i.1, !taffo.info !67
  store i32 %add28.u6_26fixp, i32* %arrayidx29.u6_26fixp, align 4, !taffo.info !85
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !267

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !268

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !93
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !106
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %i.2, !taffo.info !67
  %u6_26fixp2 = load i32, i32* %arrayidx39.u6_26fixp, align 4, !taffo.info !67
  %arrayidx40.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.2, !taffo.info !71
  %u1_31fixp5 = load i32, i32* %arrayidx40.u1_31fixp, align 4, !taffo.info !71
  %18 = lshr i32 %u1_31fixp5, 5, !taffo.info !71
  %add41.u6_26fixp = add i32 %u6_26fixp2, %18, !taffo.info !269
  %arrayidx42.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %i.2, !taffo.info !67
  store i32 %add41.u6_26fixp, i32* %arrayidx42.u6_26fixp, align 4, !taffo.info !85
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !271

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !93
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !106
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !93
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !106
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u12_20fixp = getelementptr inbounds i32, i32* %w.u12_20fixp, i32 %i.3, !taffo.info !64
  %u12_20fixp = load i32, i32* %arrayidx52.u12_20fixp, align 4, !taffo.info !64
  %arrayidx53.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u4_28fixp, i32 0, i32 %j.2, !taffo.info !52
  %u4_28fixp7 = load i32, i32* %arrayidx54.u4_28fixp, align 4, !taffo.info !52
  %19 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !89
  %20 = lshr i32 %u4_28fixp7, 1, !taffo.info !52
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 27), !taffo.info !272
  %mul55.u4_28fixp = shl i32 %21, 1, !taffo.info !274
  %arrayidx56.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %j.2, !taffo.info !67
  %u6_26fixp3 = load i32, i32* %arrayidx56.u6_26fixp, align 4, !taffo.info !67
  %22 = lshr i32 %mul55.u4_28fixp, 1, !taffo.info !274
  %23 = lshr i32 %u6_26fixp3, 1, !taffo.info !67
  %24 = ashr i32 %22, 5, !taffo.info !274
  %25 = ashr i32 %23, 3, !taffo.info !67
  %26 = call i32 @llvm.smul.fix.i32(i32 %24, i32 %25, i32 22), !taffo.info !275
  %mul57.u9_23fixp = shl i32 %26, 1, !taffo.info !278
  %27 = lshr i32 %mul57.u9_23fixp, 3, !taffo.info !278
  %add58.u12_20fixp = add i32 %u12_20fixp, %27, !taffo.info !280
  %arrayidx59.u12_20fixp = getelementptr inbounds i32, i32* %w.u12_20fixp, i32 %i.3, !taffo.info !64
  store i32 %add58.u12_20fixp, i32* %arrayidx59.u12_20fixp, align 4, !taffo.info !84
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !282

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !283

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !284 !taffo.funinfo !285 !taffo.sourceFunction !286 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !93
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !106
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !108
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %0, !taffo.info !52
  %arrayidx4.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx.u4_28fixp, i32 %j.0, !taffo.info !52
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !287
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !124
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !287
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !124
  %3 = ashr i32 %1, 1, !taffo.info !287
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 26), !taffo.info !288
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !290
  %5 = mul nsw i32 %i.0, %m, !taffo.info !108
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %5, !taffo.info !52
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx5.u4_28fixp, i32 %j.0, !taffo.info !52
  %6 = shl i32 %mul.u5_27fixp, 1, !taffo.info !290
  store i32 %6, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !77
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !291

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !106, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !292

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
!1 = !{double 0.000000e+00, double 0x403F91EB6390C910}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40A9AA50A009F623}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 7.050000e+00}
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
!52 = !{!53, !5, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 28}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 29}
!56 = !{double 0.000000e+00, double 3.800000e+00}
!57 = !{!58, !59, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 31}
!59 = !{double 5.000000e-02, double 1.000000e+00}
!60 = !{!48, !61, i1 false, i2 -1}
!61 = !{double 1.000000e-01, double 2.000000e+00}
!62 = !{!58, !63, i1 false, i2 -1}
!63 = !{double 3.333300e-02, double 6.666670e-01}
!64 = !{!65, !3, i1 false, i2 -1}
!65 = !{!"fixp", i32 32, i32 20}
!66 = !{!"w"}
!67 = !{!68, !1, i1 false, i2 -1}
!68 = !{!"fixp", i32 32, i32 26}
!69 = !{!58, !70, i1 false, i2 -1}
!70 = !{double 2.500000e-02, double 5.000000e-01}
!71 = !{!58, !72, i1 false, i2 -1}
!72 = !{double 2.222200e-02, double 4.444440e-01}
!73 = !{i1 false, !49, i1 false, i2 -1}
!74 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!75 = !{i1 false, i1 false, i1 false}
!76 = !{i1 false, !51, i1 false, i2 -1}
!77 = !{i1 false, !5, i1 false, i2 -1}
!78 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!79 = !{i1 false, !56, i1 false, i2 -1}
!80 = !{i1 false, i1 false, i1 false, i1 false}
!81 = !{i1 false, !59, i1 false, i2 -1}
!82 = !{i1 false, !61, i1 false, i2 -1}
!83 = !{i1 false, !63, i1 false, i2 -1}
!84 = !{i1 false, !3, i1 false, i2 -1}
!85 = !{i1 false, !1, i1 false, i2 -1}
!86 = !{i1 false, !70, i1 false, i2 -1}
!87 = !{i1 false, !72, i1 false, i2 -1}
!88 = !{i1 false}
!89 = !{!53, !49, i1 false, i2 -1}
!90 = !{!53, !51, i1 false, i2 -1}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0.000000e+00, double 2.100000e+01}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 0.000000e+00, double 1.000000e+00}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 0.000000e+00, double 4.410000e+02}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.000000e+00, double 4.410000e+02}
!99 = distinct !{!99, !27}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 1.000000e+00, double 2.100000e+01}
!102 = distinct !{!102, !27}
!103 = !{i32 1, !104, i32 1, !2, i32 1, !0, i32 1, !4}
!104 = !{i1 false, !105, i1 false, i2 0}
!105 = !{double 2.000000e+01, double 2.000000e+01}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 1.000000e+00, double 1.000000e+00}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 0.000000e+00, double 0.000000e+00}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = !{i32 1, i32 -1}
!115 = !{i32 1, !47, i32 1, !116}
!116 = !{i1 false, !117, i1 false, i2 0}
!117 = !{double 4.000000e+00, double 4.000000e+00}
!118 = !{void (float*, i32)* @scale_scalar}
!119 = !{i32 -1, i32 2, i32 -1}
!120 = !{i32 1, !104, i32 1, !54, i32 1, !116}
!121 = !{void (i32, float*, i32)* @scale_1d}
!122 = !{!123, !56, i1 false, i2 -1}
!123 = !{!"fixp", i32 32, i32 27}
!124 = !{!123, !117, i1 false, i2 1}
!125 = !{!126, !127, i1 false, i2 -1}
!126 = !{!"fixp", i32 -32, i32 26}
!127 = !{double 0.000000e+00, double 1.520000e+01}
!128 = !{!123, !127, i1 false, i2 -1}
!129 = distinct !{!129, !27}
!130 = !{i32 1, !104, i32 1, !67, i32 1, !116}
!131 = !{!132, !1, i1 false, i2 -1}
!132 = !{!"fixp", i32 32, i32 25}
!133 = !{!55, !117, i1 false, i2 1}
!134 = !{!135, !136, i1 false, i2 -1}
!135 = !{!"fixp", i32 -32, i32 24}
!136 = !{double 0.000000e+00, double 0x405F91EB6390C910}
!137 = !{!132, !136, i1 false, i2 -1}
!138 = distinct !{!138, !27}
!139 = !{i32 1, !104, i32 1, !57, i32 1, !116}
!140 = !{!55, !59, i1 false, i2 -1}
!141 = !{!142, !143, i1 false, i2 -1}
!142 = !{!"fixp", i32 -32, i32 28}
!143 = !{double 2.000000e-01, double 4.000000e+00}
!144 = !{!55, !143, i1 false, i2 -1}
!145 = distinct !{!145, !27}
!146 = !{i32 1, !104, i32 1, !60, i32 1, !116}
!147 = !{!53, !61, i1 false, i2 -1}
!148 = !{!53, !117, i1 false, i2 1}
!149 = !{!150, !151, i1 false, i2 -1}
!150 = !{!"fixp", i32 -32, i32 27}
!151 = !{double 4.000000e-01, double 8.000000e+00}
!152 = !{!53, !151, i1 false, i2 -1}
!153 = distinct !{!153, !27}
!154 = !{i32 1, !104, i32 1, !64, i32 1, !116}
!155 = !{!156, !3, i1 false, i2 -1}
!156 = !{!"fixp", i32 32, i32 18}
!157 = !{!158, !159, i1 false, i2 -1}
!158 = !{!"fixp", i32 -32, i32 17}
!159 = !{double 0.000000e+00, double 0x40C9AA50A009F623}
!160 = !{!156, !159, i1 false, i2 -1}
!161 = distinct !{!161, !27}
!162 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!163 = !{i32 1, !104, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !60, i32 1, !62, i32 1, !64, i32 1, !67, i32 1, !69, i32 1, !71}
!164 = distinct !{null}
!165 = !{!166, i1 false}
!166 = !{i1 false, !49, i1 false, i2 0}
!167 = !{!168, i1 false}
!168 = !{i1 false, !169, i1 false, i2 0}
!169 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!170 = !{!123, !105, i1 false, i2 1}
!171 = !{i1 false, !172, i1 false, i2 -1}
!172 = !{double 0.000000e+00, double 2.000000e+01}
!173 = !{i32 0}
!174 = !{i1 false, !94, i1 false, i2 -1}
!175 = !{i32 2}
!176 = !{i32 3}
!177 = !{!123, !172, i1 false, i2 -1}
!178 = !{!126, !94, i1 false, i2 1}
!179 = !{!58, !94, i1 false, i2 1}
!180 = !{!55, !56, i1 false, i2 1}
!181 = !{i1 false, i1 false, i1 false, i2 1}
!182 = !{i1 false, !101, i1 false, i2 -1}
!183 = !{!123, !101, i1 false, i2 -1}
!184 = !{!126, !185, i1 false, i2 1}
!185 = !{double 5.000000e-02, double 1.050000e+00}
!186 = !{!48, !185, i1 false, i2 1}
!187 = !{!188, !189, i1 false, i2 1}
!188 = !{!"fixp", i32 -32, i32 29}
!189 = !{double 2.500000e-02, double 5.250000e-01}
!190 = !{!48, !189, i1 false, i2 1}
!191 = !{i1 false, !23}
!192 = !{!58, !193, i1 false, i2 1}
!193 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!194 = !{!48, !61, i1 false, i2 1}
!195 = !{!142, !196, i1 false, i2 1}
!196 = !{double 1.250000e-02, double 2.625000e-01}
!197 = !{!48, !196, i1 false, i2 1}
!198 = !{i1 false, !116}
!199 = !{!58, !200, i1 false, i2 1}
!200 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!201 = !{!58, !59, i1 false, i2 1}
!202 = !{!142, !203, i1 false, i2 1}
!203 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!204 = !{!48, !203, i1 false, i2 1}
!205 = !{i1 false, !206}
!206 = !{i1 false, !207, i1 false, i2 0}
!207 = !{double 6.000000e+00, double 6.000000e+00}
!208 = !{!58, !209, i1 false, i2 1}
!209 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!210 = !{!58, !63, i1 false, i2 1}
!211 = !{!150, !212, i1 false, i2 1}
!212 = !{double 6.250000e-03, double 1.312500e-01}
!213 = !{!48, !212, i1 false, i2 1}
!214 = !{i1 false, !215}
!215 = !{i1 false, !216, i1 false, i2 0}
!216 = !{double 8.000000e+00, double 8.000000e+00}
!217 = !{!58, !218, i1 false, i2 1}
!218 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!219 = !{!58, !70, i1 false, i2 1}
!220 = !{!150, !221, i1 false, i2 1}
!221 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!222 = !{!48, !221, i1 false, i2 1}
!223 = !{i1 false, !224}
!224 = !{i1 false, !225, i1 false, i2 0}
!225 = !{double 9.000000e+00, double 9.000000e+00}
!226 = !{!58, !227, i1 false, i2 1}
!227 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!228 = !{!58, !72, i1 false, i2 1}
!229 = !{!68, !1, i1 false, i2 1}
!230 = !{!108, i1 false}
!231 = !{!65, !3, i1 false, i2 1}
!232 = !{i1 false, !233, i1 false, i2 -1}
!233 = !{double 0.000000e+00, double 4.000000e+02}
!234 = !{i1 false, !235, i1 false, i2 -1}
!235 = !{double 0.000000e+00, double 1.900000e+01}
!236 = !{!123, !235, i1 false, i2 -1}
!237 = !{!126, !238, i1 false, i2 -1}
!238 = !{double 0.000000e+00, double 0x3FEE666666666666}
!239 = !{!58, !238, i1 false, i2 -1}
!240 = !{!53, !5, i1 false, i2 1}
!241 = distinct !{!241, !27}
!242 = distinct !{!242, !27}
!243 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!244 = !{i32 1, !104, i32 1, !89, i32 1, !90, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !60, i32 1, !62, i32 1, !64, i32 1, !67, i32 1, !69, i32 1, !71}
!245 = distinct !{null}
!246 = !{!150, !56, i1 false, i2 -1}
!247 = !{!53, !56, i1 false, i2 -1}
!248 = !{!53, !249, i1 false, i2 -1}
!249 = !{double 0.000000e+00, double 1.085000e+01}
!250 = !{!48, !63, i1 false, i2 -1}
!251 = !{!150, !252, i1 false, i2 -1}
!252 = !{double 0x3F6B4E6FCF9BB427, double 0x3FF55556084A515D}
!253 = !{!53, !252, i1 false, i2 -1}
!254 = !{!53, !255, i1 false, i2 -1}
!255 = !{double 0x3F6B4E6FCF9BB427, double 0x40285DDDF43C7D5F}
!256 = distinct !{!256, !27}
!257 = distinct !{!257, !27}
!258 = !{!150, !259, i1 false, i2 -1}
!259 = !{double 0.000000e+00, double 0x4020EB851EB851EB}
!260 = !{!53, !259, i1 false, i2 -1}
!261 = !{!55, !70, i1 false, i2 -1}
!262 = !{!150, !263, i1 false, i2 -1}
!263 = !{double 0.000000e+00, double 0x4010EB851EB851EB}
!264 = !{!53, !263, i1 false, i2 -1}
!265 = !{!68, !266, i1 false, i2 -1}
!266 = !{double 0.000000e+00, double 0x4041E666559F6EC5}
!267 = distinct !{!267, !27}
!268 = distinct !{!268, !27}
!269 = !{!68, !270, i1 false, i2 -1}
!270 = !{double 2.222200e-02, double 0x404001D93C46D82B}
!271 = distinct !{!271, !27}
!272 = !{!150, !273, i1 false, i2 -1}
!273 = !{double 0.000000e+00, double 1.057500e+01}
!274 = !{!53, !273, i1 false, i2 -1}
!275 = !{!276, !277, i1 false, i2 -1}
!276 = !{!"fixp", i32 -32, i32 22}
!277 = !{double 0.000000e+00, double 0x4074DDA4C701B1B0}
!278 = !{!279, !277, i1 false, i2 -1}
!279 = !{!"fixp", i32 32, i32 23}
!280 = !{!65, !281, i1 false, i2 -1}
!281 = !{double 0.000000e+00, double 0x40AC460538EA2C59}
!282 = distinct !{!282, !27}
!283 = distinct !{!283, !27}
!284 = !{i32 -1, i32 -1, i32 3, i32 -1}
!285 = !{i32 1, !104, i32 1, !104, i32 1, !52, i32 1, !116}
!286 = !{void (i32, i32, float*, i32)* @scale_2d}
!287 = !{!123, !5, i1 false, i2 -1}
!288 = !{!126, !289, i1 false, i2 -1}
!289 = !{double 0.000000e+00, double 2.820000e+01}
!290 = !{!123, !289, i1 false, i2 -1}
!291 = distinct !{!291, !27}
!292 = distinct !{!292, !27}
