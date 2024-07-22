; ModuleID = './build/bin/fixed/gemver/24/gemver-standard-64-fixed-24.out.ll'
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
  %A.u11_21fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u6_26fixp = alloca [20 x i32], align 4, !taffo.info !54
  %v1.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !57
  %u2.u6_26fixp = alloca [20 x i32], align 4, !taffo.info !60
  %v2.u4_28fixp = alloca [20 x i32], align 4, !taffo.info !62
  %w = alloca [20 x float], align 4, !taffo.info !65, !taffo.initweight !67, !taffo.target !68
  %x.u17_15fixp = alloca [20 x i32], align 4, !taffo.info !69
  %y.u4_28fixp = alloca [20 x i32], align 4, !taffo.info !71
  %z.u4_28fixp = alloca [20 x i32], align 4, !taffo.info !73
  %arraydecay.u11_21fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u11_21fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u6_26fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay13.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u5_27fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay14.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u6_26fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay15.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u4_28fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay16.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !75, !taffo.target !68
  %arraydecay17.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u17_15fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay18.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !71
  %arraydecay19.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u4_28fixp, i32 0, i32 0, !taffo.info !73
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u11_21fixp, i32* %arraydecay12.u6_26fixp, i32* %arraydecay13.u5_27fixp, i32* %arraydecay14.u6_26fixp, i32* %arraydecay15.u4_28fixp, float* %arraydecay16.flt.1flp, i32* %arraydecay17.u17_15fixp, i32* %arraydecay18.u4_28fixp, i32* %arraydecay19.u4_28fixp), !taffo.info !76, !taffo.constinfo !77
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 64), !taffo.info !76, !taffo.constinfo !78
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 64), !taffo.info !79, !taffo.constinfo !78
  %arraydecay20.u11_21fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u11_21fixp, i32 0, i32 0, !taffo.info !52
  %u11_21fixp = bitcast [20 x i32]* %arraydecay20.u11_21fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u11_21fixp, i32 64), !taffo.info !80, !taffo.constinfo !81
  %arraydecay21.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u6_26fixp, i32 0, i32 0, !taffo.info !54
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u6_26fixp, i32 64), !taffo.info !82, !taffo.constinfo !83
  %arraydecay22.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u5_27fixp, i32 0, i32 0, !taffo.info !57
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u5_27fixp, i32 64), !taffo.info !84, !taffo.constinfo !83
  %arraydecay23.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u6_26fixp, i32 0, i32 0, !taffo.info !60
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay23.u6_26fixp, i32 64), !taffo.info !85, !taffo.constinfo !83
  %arraydecay24.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u4_28fixp, i32 0, i32 0, !taffo.info !62
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay24.u4_28fixp, i32 64), !taffo.info !86, !taffo.constinfo !83
  %arraydecay25.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !75, !taffo.target !68
  call void @scale_1d.7_fixp(i32 20, float* %arraydecay25.flt.1flp, i32 64), !taffo.info !87, !taffo.constinfo !83, !taffo.target !68
  %arraydecay26.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u17_15fixp, i32 0, i32 0, !taffo.info !69
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u17_15fixp, i32 64), !taffo.info !88, !taffo.constinfo !83
  %arraydecay27.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !71
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay27.u4_28fixp, i32 64), !taffo.info !89, !taffo.constinfo !83
  %arraydecay28.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u4_28fixp, i32 0, i32 0, !taffo.info !73
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay28.u4_28fixp, i32 64), !taffo.info !90, !taffo.constinfo !83
  call void @timer_start(), !taffo.constinfo !91
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !47
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !50
  %arraydecay29.u11_21fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u11_21fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u6_26fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay31.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u5_27fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay32.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u6_26fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay33.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u4_28fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay34.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !75, !taffo.target !68
  %arraydecay35.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u17_15fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay36.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !71
  %arraydecay37.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u4_28fixp, i32 0, i32 0, !taffo.info !73
  call void @kernel_gemver.10_fixp(i32 20, i32 %u2_30fixp1, i32 %u2_30fixp, [20 x i32]* %arraydecay29.u11_21fixp, i32* %arraydecay30.u6_26fixp, i32* %arraydecay31.u5_27fixp, i32* %arraydecay32.u6_26fixp, i32* %arraydecay33.u4_28fixp, float* %arraydecay34.flt.1flp, i32* %arraydecay35.u17_15fixp, i32* %arraydecay36.u4_28fixp, i32* %arraydecay37.u4_28fixp), !taffo.info !76, !taffo.constinfo !77
  call void @timer_stop(), !taffo.constinfo !91
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !94
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u17_15fixp, i32 0, i32 %i.0, !taffo.info !69
  %u17_15fixp = load i32, i32* %arrayidx.u17_15fixp, align 4, !taffo.info !69
  %0 = uitofp i32 %u17_15fixp to float, !taffo.info !69
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 3.276800e+04, !taffo.info !69
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx38, align 4, !taffo.info !88
  %arrayidx39.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %i.0, !taffo.info !65, !taffo.initweight !75, !taffo.target !68
  %.flt.fallback.1flp = load float, float* %arrayidx39.flt.1flp, align 4, !taffo.info !65, !taffo.initweight !96, !taffo.target !68
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %.flt.fallback.1flp, float* %arrayidx40, align 4, !taffo.info !87, !taffo.target !68
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !97
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !94
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u11_21fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u11_21fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u11_21fixp, i32 0, i32 %j.0, !taffo.info !52
  %u11_21fixp2 = load i32, i32* %arrayidx45.u11_21fixp, align 4, !taffo.info !52
  %2 = uitofp i32 %u11_21fixp2 to float, !taffo.info !52
  %lampsim6 = bitcast float %2 to i32
  %lampsim7 = and i32 %lampsim6, -1
  %lampsim8 = bitcast i32 %lampsim7 to float
  %3 = fdiv float %lampsim8, 0x4140000000000000, !taffo.info !52
  %lampsim9 = bitcast float %3 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %lampsim11, float* %arrayidx47, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !101

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !102, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !104

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !81
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !105 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !108
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !110
  %add = add nsw i32 %mul, %j.0, !taffo.info !110
  %rem = srem i32 %add, 20, !taffo.info !110, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !108
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !78
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !83
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !112

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !113

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !94
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !108
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !110, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !108
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv214 = fpext float %5 to double, !taffo.info !0
  %lampsim5 = bitcast double %conv214 to i64
  %lampsim6 = and i64 %lampsim5, -536870912
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !83
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !114

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !94
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !108
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !110, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !108
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv378 = fpext float %8 to double, !taffo.info !2
  %lampsim9 = bitcast double %conv378 to i64
  %lampsim10 = and i64 %lampsim9, -536870912
  %lampsim11 = bitcast i64 %lampsim10 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim11), !taffo.constinfo !83
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !115

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !116 !taffo.funinfo !117 !taffo.sourceFunction !120 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !121 !taffo.funinfo !122 !taffo.sourceFunction !123 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !54
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !54
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !124
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !124
  %2 = ashr i32 %0, 6, !taffo.info !54
  %3 = ashr i32 %1, 5, !taffo.info !124
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 19), !taffo.info !126
  %mul.u12_20fixp = shl i32 %4, 1, !taffo.info !129
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u12_20fixp, 6, !taffo.info !129
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !121 !taffo.funinfo !132 !taffo.sourceFunction !123 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.flt.1flp = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !65, !taffo.initweight !133
  %.flt.fallback.1flp = load float, float* %arrayidx.flt.1flp, align 4, !taffo.info !65, !taffo.initweight !134
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !124
  %0 = uitofp i32 %conv.u7_25fixp to float, !taffo.info !124
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4180000000000000, !taffo.info !124
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %mul.1flp6 = fmul float %.flt.fallback.1flp, %lampsim5, !taffo.info !135
  %lampsim7 = bitcast float %mul.1flp6 to i32
  %lampsim8 = and i32 %lampsim7, -1
  %lampsim9 = bitcast i32 %lampsim8 to float
  %arrayidx1.flt.1flp = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !65, !taffo.initweight !133
  store float %lampsim9, float* %arrayidx1.flt.1flp, align 4, !taffo.info !87
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !121 !taffo.funinfo !139 !taffo.sourceFunction !123 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !62
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !62
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !124
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !62
  %1 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !124
  %2 = ashr i32 %0, 6, !taffo.info !62
  %3 = ashr i32 %1, 3, !taffo.info !124
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 21), !taffo.info !140
  %mul.u10_22fixp = shl i32 %4, 1, !taffo.info !143
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !62
  %5 = shl i32 %mul.u10_22fixp, 6, !taffo.info !143
  store i32 %5, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u17_15fixp, i32 noundef %factor) #0 !taffo.initweight !121 !taffo.funinfo !146 !taffo.sourceFunction !123 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u17_15fixp = getelementptr inbounds i32, i32* %val.u17_15fixp, i32 %i.0, !taffo.info !69
  %u17_15fixp = load i32, i32* %arrayidx.u17_15fixp, align 4, !taffo.info !69
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !124
  %0 = lshr i32 %u17_15fixp, 1, !taffo.info !69
  %1 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !124
  %2 = ashr i32 %0, 6, !taffo.info !69
  %3 = ashr i32 %1, 16, !taffo.info !124
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 8), !taffo.info !147
  %mul.u23_9fixp = shl i32 %4, 1, !taffo.info !150
  %arrayidx1.u17_15fixp = getelementptr inbounds i32, i32* %val.u17_15fixp, i32 %i.0, !taffo.info !69
  %5 = shl i32 %mul.u23_9fixp, 6, !taffo.info !150
  store i32 %5, i32* %arrayidx1.u17_15fixp, align 4, !taffo.info !88
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !121 !taffo.funinfo !153 !taffo.sourceFunction !123 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !57
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !57
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !124
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !57
  %1 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !124
  %2 = ashr i32 %0, 6, !taffo.info !57
  %3 = ashr i32 %1, 4, !taffo.info !124
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 20), !taffo.info !154
  %mul.u11_21fixp = shl i32 %4, 1, !taffo.info !157
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !57
  %5 = shl i32 %mul.u11_21fixp, 6, !taffo.info !157
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u11_21fixp, i32* noundef %u1.u6_26fixp, i32* noundef %v1.u5_27fixp, i32* noundef %u2.u6_26fixp, i32* noundef %v2.u4_28fixp, float* noundef %w, i32* noundef %x.u17_15fixp, i32* noundef %y.u4_28fixp, i32* noundef %z.u4_28fixp) #0 !taffo.initweight !159 !taffo.funinfo !160 !taffo.sourceFunction !161 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !76, !taffo.constinfo !162
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !79, !taffo.constinfo !164
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !167
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !168, !taffo.initweight !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !170, !taffo.initweight !96
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !168, !taffo.initweight !171

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !172
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !172
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !167
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !173
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !175
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %u1.u6_26fixp, i32 %i.0, !taffo.info !177
  %3 = lshr i32 %div.u1_31fixp, 5, !taffo.info !175
  store i32 %3, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !178
  %add = add nsw i32 %i.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !180, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !180, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !167
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !181
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !183
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !183
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !184
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !187, !taffo.constinfo !188
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !189, !taffo.constinfo !188
  %arrayidx11.u6_26fixp = getelementptr inbounds i32, i32* %u2.u6_26fixp, i32 %i.0, !taffo.info !191
  %10 = lshr i32 %conv10.u1_31fixp, 5, !taffo.info !189, !taffo.constinfo !188
  store i32 %10, i32* %arrayidx11.u6_26fixp, align 4, !taffo.info !178
  %add12 = add nsw i32 %i.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !180, !taffo.constinfo !25
  %11 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !180, !taffo.constinfo !25
  %12 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !167
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !181
  %div14.u2_30fixp = shl i32 %13, 4, !taffo.info !183
  %14 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !183
  %15 = shl i32 4, 28
  %16 = ashr i32 %14, 1, !taffo.info !183
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 28), !taffo.info !192
  %div16.u2_30fixp = shl i32 %17, 2, !taffo.info !195, !taffo.constinfo !196
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !199, !taffo.constinfo !196
  %arrayidx18.u5_27fixp = getelementptr inbounds i32, i32* %v1.u5_27fixp, i32 %i.0, !taffo.info !201
  %18 = lshr i32 %conv17.u1_31fixp, 4, !taffo.info !199, !taffo.constinfo !196
  store i32 %18, i32* %arrayidx18.u5_27fixp, align 4, !taffo.info !178
  %add19 = add nsw i32 %i.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !180, !taffo.constinfo !25
  %19 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !180, !taffo.constinfo !25
  %20 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !167
  %21 = call i32 @llvm.sdiv.fix.i32(i32 %19, i32 %20, i32 26), !taffo.info !181
  %div21.u2_30fixp = shl i32 %21, 4, !taffo.info !183
  %22 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !183
  %23 = shl i32 6, 28
  %24 = ashr i32 %22, 1, !taffo.info !183
  %25 = call i32 @llvm.sdiv.fix.i32(i32 %24, i32 %23, i32 28), !taffo.info !202
  %div23.u2_30fixp = shl i32 %25, 2, !taffo.info !204, !taffo.constinfo !205
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !208, !taffo.constinfo !205
  %arrayidx25.u4_28fixp = getelementptr inbounds i32, i32* %v2.u4_28fixp, i32 %i.0, !taffo.info !210
  %26 = lshr i32 %conv24.u1_31fixp, 3, !taffo.info !208, !taffo.constinfo !205
  store i32 %26, i32* %arrayidx25.u4_28fixp, align 4, !taffo.info !178
  %add26 = add nsw i32 %i.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !180, !taffo.constinfo !25
  %27 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !180, !taffo.constinfo !25
  %28 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !167
  %29 = call i32 @llvm.sdiv.fix.i32(i32 %27, i32 %28, i32 26), !taffo.info !181
  %div28.u2_30fixp = shl i32 %29, 4, !taffo.info !183
  %30 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !183
  %31 = shl i32 8, 27
  %32 = ashr i32 %30, 2, !taffo.info !183
  %33 = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %31, i32 27), !taffo.info !211
  %div30.u2_30fixp = shl i32 %33, 3, !taffo.info !214, !taffo.constinfo !215
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !218, !taffo.constinfo !215
  %arrayidx32.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !220
  %34 = lshr i32 %conv31.u1_31fixp, 3, !taffo.info !218, !taffo.constinfo !215
  store i32 %34, i32* %arrayidx32.u4_28fixp, align 4, !taffo.info !178
  %add33 = add nsw i32 %i.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !180, !taffo.constinfo !25
  %35 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !180, !taffo.constinfo !25
  %36 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !167
  %37 = call i32 @llvm.sdiv.fix.i32(i32 %35, i32 %36, i32 26), !taffo.info !181
  %div35.u2_30fixp = shl i32 %37, 4, !taffo.info !183
  %38 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !183
  %39 = shl i32 9, 27
  %40 = ashr i32 %38, 2, !taffo.info !183
  %41 = call i32 @llvm.sdiv.fix.i32(i32 %40, i32 %39, i32 27), !taffo.info !221
  %div37.u2_30fixp = shl i32 %41, 3, !taffo.info !223, !taffo.constinfo !224
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !227, !taffo.constinfo !224
  %arrayidx39.u4_28fixp = getelementptr inbounds i32, i32* %z.u4_28fixp, i32 %i.0, !taffo.info !229
  %42 = lshr i32 %conv38.u1_31fixp, 3, !taffo.info !227, !taffo.constinfo !224
  store i32 %42, i32* %arrayidx39.u4_28fixp, align 4, !taffo.info !178
  %arrayidx40.u17_15fixp = getelementptr inbounds i32, i32* %x.u17_15fixp, i32 %i.0, !taffo.info !230
  store i32 0, i32* %arrayidx40.u17_15fixp, align 4, !taffo.info !178, !taffo.constinfo !231
  %arrayidx41.flt.1flp = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.info !232, !taffo.initweight !96
  store float 0.000000e+00, float* %arrayidx41.flt.1flp, align 4, !taffo.info !178, !taffo.constinfo !231
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !168, !taffo.initweight !67
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !170, !taffo.initweight !96
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !168, !taffo.initweight !171

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !233, !taffo.initweight !96
  %rem = srem i32 %mul, %n, !taffo.info !235, !taffo.initweight !171
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !237
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !167
  %43 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !237
  %44 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !167
  %45 = call i32 @llvm.sdiv.fix.i32(i32 %43, i32 %44, i32 26), !taffo.info !238
  %div48.u1_31fixp = shl i32 %45, 5, !taffo.info !240
  %arrayidx49.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u11_21fixp, i32 %i.0, !taffo.info !241
  %arrayidx50.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u11_21fixp, i32 0, i32 %j.0, !taffo.info !241
  %46 = lshr i32 %div48.u1_31fixp, 10, !taffo.info !240
  store i32 %46, i32* %arrayidx50.u11_21fixp, align 4, !taffo.info !178
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !242

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !179, !taffo.initweight !96, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !243

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u11_21fixp, i32* noundef %u1.u6_26fixp, i32* noundef %v1.u5_27fixp, i32* noundef %u2.u6_26fixp, i32* noundef %v2.u4_28fixp, float* noundef %w, i32* noundef %x.u17_15fixp, i32* noundef %y.u4_28fixp, i32* noundef %z.u4_28fixp) #0 !taffo.initweight !244 !taffo.funinfo !160 !taffo.sourceFunction !245 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !108
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u11_21fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u11_21fixp, i32 0, i32 %j.0, !taffo.info !52
  %u11_21fixp = load i32, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !246
  %arrayidx5.u6_26fixp = getelementptr inbounds i32, i32* %u1.u6_26fixp, i32 %i.0, !taffo.info !54
  %u6_26fixp = load i32, i32* %arrayidx5.u6_26fixp, align 4, !taffo.info !54
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %v1.u5_27fixp, i32 %j.0, !taffo.info !57
  %u5_27fixp = load i32, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !57
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !54
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !57
  %2 = ashr i32 %0, 6, !taffo.info !54
  %3 = ashr i32 %1, 7, !taffo.info !57
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 19), !taffo.info !247
  %mul.u12_20fixp = shl i32 %4, 1, !taffo.info !249
  %5 = lshr i32 %u11_21fixp, 1, !taffo.info !246
  %add.u12_20fixp = add i32 %5, %mul.u12_20fixp, !taffo.info !250
  %arrayidx7.u6_26fixp = getelementptr inbounds i32, i32* %u2.u6_26fixp, i32 %i.0, !taffo.info !60
  %u6_26fixp1 = load i32, i32* %arrayidx7.u6_26fixp, align 4, !taffo.info !60
  %arrayidx8.u4_28fixp = getelementptr inbounds i32, i32* %v2.u4_28fixp, i32 %j.0, !taffo.info !62
  %u4_28fixp = load i32, i32* %arrayidx8.u4_28fixp, align 4, !taffo.info !62
  %6 = lshr i32 %u6_26fixp1, 1, !taffo.info !60
  %7 = lshr i32 %u4_28fixp, 1, !taffo.info !62
  %8 = ashr i32 %6, 3, !taffo.info !60
  %9 = ashr i32 %7, 5, !taffo.info !62
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 22), !taffo.info !252
  %mul9.u9_23fixp = shl i32 %10, 1, !taffo.info !255
  %11 = lshr i32 %mul9.u9_23fixp, 3, !taffo.info !255
  %add10.u12_20fixp = add i32 %add.u12_20fixp, %11, !taffo.info !257
  %arrayidx11.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u11_21fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u11_21fixp, i32 0, i32 %j.0, !taffo.info !52
  %12 = shl i32 %add10.u12_20fixp, 1, !taffo.info !257
  store i32 %12, i32* %arrayidx12.u11_21fixp, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !259

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !260

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !94
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !108
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !94
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !108
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u17_15fixp = getelementptr inbounds i32, i32* %x.u17_15fixp, i32 %i.1, !taffo.info !69
  %u17_15fixp = load i32, i32* %arrayidx22.u17_15fixp, align 4, !taffo.info !69
  %arrayidx23.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u11_21fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u11_21fixp, i32 0, i32 %i.1, !taffo.info !52
  %u11_21fixp6 = load i32, i32* %arrayidx24.u11_21fixp, align 4, !taffo.info !52
  %13 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !50
  %14 = lshr i32 %u11_21fixp6, 1, !taffo.info !52
  %15 = ashr i32 %13, 9, !taffo.info !50
  %16 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %14, i32 20), !taffo.info !261
  %mul25.u11_21fixp = shl i32 %16, 1, !taffo.info !263
  %arrayidx26.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %j.1, !taffo.info !71
  %u4_28fixp4 = load i32, i32* %arrayidx26.u4_28fixp, align 4, !taffo.info !71
  %17 = lshr i32 %mul25.u11_21fixp, 1, !taffo.info !263
  %18 = lshr i32 %u4_28fixp4, 1, !taffo.info !71
  %19 = ashr i32 %17, 3, !taffo.info !263
  %20 = ashr i32 %18, 10, !taffo.info !71
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 17), !taffo.info !264
  %mul27.u14_18fixp = shl i32 %21, 1, !taffo.info !267
  %22 = lshr i32 %mul27.u14_18fixp, 3, !taffo.info !267
  %add28.u17_15fixp = add i32 %u17_15fixp, %22, !taffo.info !269
  %arrayidx29.u17_15fixp = getelementptr inbounds i32, i32* %x.u17_15fixp, i32 %i.1, !taffo.info !69
  store i32 %add28.u17_15fixp, i32* %arrayidx29.u17_15fixp, align 4, !taffo.info !88
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !271

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !272

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !94
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !108
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u17_15fixp = getelementptr inbounds i32, i32* %x.u17_15fixp, i32 %i.2, !taffo.info !69
  %u17_15fixp2 = load i32, i32* %arrayidx39.u17_15fixp, align 4, !taffo.info !69
  %arrayidx40.u4_28fixp = getelementptr inbounds i32, i32* %z.u4_28fixp, i32 %i.2, !taffo.info !73
  %u4_28fixp5 = load i32, i32* %arrayidx40.u4_28fixp, align 4, !taffo.info !73
  %23 = lshr i32 %u4_28fixp5, 13, !taffo.info !73
  %add41.u17_15fixp = add i32 %u17_15fixp2, %23, !taffo.info !273
  %arrayidx42.u17_15fixp = getelementptr inbounds i32, i32* %x.u17_15fixp, i32 %i.2, !taffo.info !69
  store i32 %add41.u17_15fixp, i32* %arrayidx42.u17_15fixp, align 4, !taffo.info !88
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !275

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !94
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !108
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !94
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !108
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.flt.1flp = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !65, !taffo.initweight !133
  %.flt.fallback.1flp = load float, float* %arrayidx52.flt.1flp, align 4, !taffo.info !65, !taffo.initweight !134
  %arrayidx53.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u11_21fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u11_21fixp, i32 0, i32 %j.2, !taffo.info !52
  %u11_21fixp7 = load i32, i32* %arrayidx54.u11_21fixp, align 4, !taffo.info !52
  %24 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !47
  %25 = lshr i32 %u11_21fixp7, 1, !taffo.info !52
  %26 = ashr i32 %24, 9, !taffo.info !47
  %27 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %25, i32 20), !taffo.info !276
  %mul55.u11_21fixp = shl i32 %27, 1, !taffo.info !278
  %arrayidx56.u17_15fixp = getelementptr inbounds i32, i32* %x.u17_15fixp, i32 %j.2, !taffo.info !69
  %u17_15fixp3 = load i32, i32* %arrayidx56.u17_15fixp, align 4, !taffo.info !69
  %28 = lshr i32 %mul55.u11_21fixp, 1, !taffo.info !278
  %29 = lshr i32 %u17_15fixp3, 1, !taffo.info !69
  %30 = ashr i32 %28, 17, !taffo.info !278
  %31 = ashr i32 %29, 11, !taffo.info !69
  %32 = call i32 @llvm.smul.fix.i32(i32 %30, i32 %31, i32 3), !taffo.info !279
  %mul57.u28_4fixp = shl i32 %32, 1, !taffo.info !282
  %33 = uitofp i32 %mul57.u28_4fixp to float, !taffo.info !282
  %lampsim = bitcast float %33 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %34 = fdiv float %lampsim2, 1.600000e+01, !taffo.info !282
  %lampsim3 = bitcast float %34 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %add58.1flp6 = fadd float %.flt.fallback.1flp, %lampsim5, !taffo.info !284
  %lampsim7 = bitcast float %add58.1flp6 to i32
  %lampsim8 = and i32 %lampsim7, -1
  %lampsim9 = bitcast i32 %lampsim8 to float
  %arrayidx59.flt.1flp = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !65, !taffo.initweight !133
  store float %lampsim9, float* %arrayidx59.flt.1flp, align 4, !taffo.info !87
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !287

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !288

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !289 !taffo.funinfo !290 !taffo.sourceFunction !291 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !94
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !108
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !108
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !110
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %0, !taffo.info !52
  %arrayidx4.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx.u11_21fixp, i32 %j.0, !taffo.info !52
  %u11_21fixp = load i32, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !52
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !124
  %1 = lshr i32 %u11_21fixp, 1, !taffo.info !52
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !124
  %3 = ashr i32 %1, 6, !taffo.info !52
  %4 = ashr i32 %2, 10, !taffo.info !124
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 14), !taffo.info !292
  %mul.u17_15fixp = shl i32 %5, 1, !taffo.info !295
  %6 = mul nsw i32 %i.0, %m, !taffo.info !110
  %arrayidx5.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %6, !taffo.info !52
  %arrayidx6.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx5.u11_21fixp, i32 %j.0, !taffo.info !52
  %7 = shl i32 %mul.u17_15fixp, 6, !taffo.info !295
  store i32 %7, i32* %arrayidx6.u11_21fixp, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !296

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !108, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !297

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
!1 = !{double 0.000000e+00, double 0x40F6459080000000}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x41D41CCAE0000000}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x409495555FFE6D59}
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
!53 = !{!"fixp", i32 32, i32 21}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 26}
!56 = !{double 0.000000e+00, double 0x404E66665E02EA96}
!57 = !{!58, !59, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 27}
!59 = !{double 8.000000e-01, double 1.600000e+01}
!60 = !{!55, !61, i1 false, i2 -1}
!61 = !{double 1.600000e+00, double 3.200000e+01}
!62 = !{!63, !64, i1 false, i2 -1}
!63 = !{!"fixp", i32 32, i32 28}
!64 = !{double 5.333330e-01, double 0x402555556084A516}
!65 = !{!66, !3, i1 false, i2 -1}
!66 = !{!"float", i32 1, double 0x41D41CCAE0000000}
!67 = !{i32 0}
!68 = !{!"w"}
!69 = !{!70, !1, i1 false, i2 -1}
!70 = !{!"fixp", i32 32, i32 15}
!71 = !{!63, !72, i1 false, i2 -1}
!72 = !{double 4.000000e-01, double 8.000000e+00}
!73 = !{!63, !74, i1 false, i2 -1}
!74 = !{double 3.555560e-01, double 0x401C71C714FCE747}
!75 = !{i32 1}
!76 = !{i1 false, !49, i1 false, i2 -1}
!77 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!78 = !{i1 false, i1 false, i1 false}
!79 = !{i1 false, !51, i1 false, i2 -1}
!80 = !{i1 false, !5, i1 false, i2 -1}
!81 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!82 = !{i1 false, !56, i1 false, i2 -1}
!83 = !{i1 false, i1 false, i1 false, i1 false}
!84 = !{i1 false, !59, i1 false, i2 -1}
!85 = !{i1 false, !61, i1 false, i2 -1}
!86 = !{i1 false, !64, i1 false, i2 -1}
!87 = !{i1 false, !3, i1 false, i2 -1}
!88 = !{i1 false, !1, i1 false, i2 -1}
!89 = !{i1 false, !72, i1 false, i2 -1}
!90 = !{i1 false, !74, i1 false, i2 -1}
!91 = !{i1 false}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 2.100000e+01}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0.000000e+00, double 1.000000e+00}
!96 = !{i32 2}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 0.000000e+00, double 4.410000e+02}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.000000e+00, double 4.410000e+02}
!101 = distinct !{!101, !27}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 1.000000e+00, double 2.100000e+01}
!104 = distinct !{!104, !27}
!105 = !{i32 1, !106, i32 1, !2, i32 1, !0, i32 1, !4}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 2.000000e+01, double 2.000000e+01}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 1.000000e+00, double 1.000000e+00}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 0.000000e+00, double 0.000000e+00}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = !{i32 1, i32 -1}
!117 = !{i32 1, !47, i32 1, !118}
!118 = !{i1 false, !119, i1 false, i2 0}
!119 = !{double 6.400000e+01, double 6.400000e+01}
!120 = !{void (float*, i32)* @scale_scalar}
!121 = !{i32 -1, i32 2, i32 -1}
!122 = !{i32 1, !106, i32 1, !54, i32 1, !118}
!123 = !{void (i32, float*, i32)* @scale_1d}
!124 = !{!125, !119, i1 false, i2 1}
!125 = !{!"fixp", i32 32, i32 25}
!126 = !{!127, !128, i1 false, i2 -1}
!127 = !{!"fixp", i32 -32, i32 19}
!128 = !{double 0.000000e+00, double 0x40AE66665E02EA96}
!129 = !{!130, !128, i1 false, i2 -1}
!130 = !{!"fixp", i32 32, i32 20}
!131 = distinct !{!131, !27}
!132 = !{i32 1, !106, i32 1, !65, i32 1, !118}
!133 = !{i32 5}
!134 = !{i32 6}
!135 = !{!136, !137, i1 false, i2 -1}
!136 = !{!"float", i32 1, double 0x42341CCAE0000000}
!137 = !{double 0.000000e+00, double 0x42341CCAE0000000}
!138 = distinct !{!138, !27}
!139 = !{i32 1, !106, i32 1, !62, i32 1, !118}
!140 = !{!141, !142, i1 false, i2 -1}
!141 = !{!"fixp", i32 -32, i32 21}
!142 = !{double 0x404111105E1C1509, double 0x408555556084A516}
!143 = !{!144, !142, i1 false, i2 -1}
!144 = !{!"fixp", i32 32, i32 22}
!145 = distinct !{!145, !27}
!146 = !{i32 1, !106, i32 1, !69, i32 1, !118}
!147 = !{!148, !149, i1 false, i2 -1}
!148 = !{!"fixp", i32 -32, i32 8}
!149 = !{double 0.000000e+00, double 0x4156459080000000}
!150 = !{!151, !149, i1 false, i2 -1}
!151 = !{!"fixp", i32 32, i32 9}
!152 = distinct !{!152, !27}
!153 = !{i32 1, !106, i32 1, !57, i32 1, !118}
!154 = !{!155, !156, i1 false, i2 -1}
!155 = !{!"fixp", i32 -32, i32 20}
!156 = !{double 5.120000e+01, double 1.024000e+03}
!157 = !{!53, !156, i1 false, i2 -1}
!158 = distinct !{!158, !27}
!159 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!160 = !{i32 1, !106, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !60, i32 1, !62, i32 1, !65, i32 1, !69, i32 1, !71, i32 1, !73}
!161 = distinct !{null}
!162 = !{!163, i1 false}
!163 = !{i1 false, !49, i1 false, i2 0}
!164 = !{!165, i1 false}
!165 = !{i1 false, !166, i1 false, i2 0}
!166 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!167 = !{!58, !107, i1 false, i2 1}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 2.000000e+01}
!170 = !{i1 false, !95, i1 false, i2 -1}
!171 = !{i32 3}
!172 = !{!58, !169, i1 false, i2 -1}
!173 = !{!174, !95, i1 false, i2 1}
!174 = !{!"fixp", i32 -32, i32 26}
!175 = !{!176, !95, i1 false, i2 1}
!176 = !{!"fixp", i32 32, i32 31}
!177 = !{!55, !56, i1 false, i2 1}
!178 = !{i1 false, i1 false, i1 false, i2 1}
!179 = !{i1 false, !103, i1 false, i2 -1}
!180 = !{!58, !103, i1 false, i2 -1}
!181 = !{!174, !182, i1 false, i2 1}
!182 = !{double 5.000000e-02, double 1.050000e+00}
!183 = !{!48, !182, i1 false, i2 1}
!184 = !{!185, !186, i1 false, i2 1}
!185 = !{!"fixp", i32 -32, i32 29}
!186 = !{double 2.500000e-02, double 5.250000e-01}
!187 = !{!48, !186, i1 false, i2 1}
!188 = !{i1 false, !23}
!189 = !{!176, !190, i1 false, i2 1}
!190 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!191 = !{!55, !61, i1 false, i2 1}
!192 = !{!193, !194, i1 false, i2 1}
!193 = !{!"fixp", i32 -32, i32 28}
!194 = !{double 1.250000e-02, double 2.625000e-01}
!195 = !{!48, !194, i1 false, i2 1}
!196 = !{i1 false, !197}
!197 = !{i1 false, !198, i1 false, i2 0}
!198 = !{double 4.000000e+00, double 4.000000e+00}
!199 = !{!176, !200, i1 false, i2 1}
!200 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!201 = !{!58, !59, i1 false, i2 1}
!202 = !{!193, !203, i1 false, i2 1}
!203 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!204 = !{!48, !203, i1 false, i2 1}
!205 = !{i1 false, !206}
!206 = !{i1 false, !207, i1 false, i2 0}
!207 = !{double 6.000000e+00, double 6.000000e+00}
!208 = !{!176, !209, i1 false, i2 1}
!209 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!210 = !{!63, !64, i1 false, i2 1}
!211 = !{!212, !213, i1 false, i2 1}
!212 = !{!"fixp", i32 -32, i32 27}
!213 = !{double 6.250000e-03, double 1.312500e-01}
!214 = !{!48, !213, i1 false, i2 1}
!215 = !{i1 false, !216}
!216 = !{i1 false, !217, i1 false, i2 0}
!217 = !{double 8.000000e+00, double 8.000000e+00}
!218 = !{!176, !219, i1 false, i2 1}
!219 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!220 = !{!63, !72, i1 false, i2 1}
!221 = !{!212, !222, i1 false, i2 1}
!222 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!223 = !{!48, !222, i1 false, i2 1}
!224 = !{i1 false, !225}
!225 = !{i1 false, !226, i1 false, i2 0}
!226 = !{double 9.000000e+00, double 9.000000e+00}
!227 = !{!176, !228, i1 false, i2 1}
!228 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!229 = !{!63, !74, i1 false, i2 1}
!230 = !{!70, !1, i1 false, i2 1}
!231 = !{!110, i1 false}
!232 = !{!66, !3, i1 false, i2 1}
!233 = !{i1 false, !234, i1 false, i2 -1}
!234 = !{double 0.000000e+00, double 4.000000e+02}
!235 = !{i1 false, !236, i1 false, i2 -1}
!236 = !{double 0.000000e+00, double 1.900000e+01}
!237 = !{!58, !236, i1 false, i2 -1}
!238 = !{!174, !239, i1 false, i2 -1}
!239 = !{double 0.000000e+00, double 0x3FEE666666666666}
!240 = !{!176, !239, i1 false, i2 -1}
!241 = !{!53, !5, i1 false, i2 1}
!242 = distinct !{!242, !27}
!243 = distinct !{!243, !27}
!244 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!245 = distinct !{null}
!246 = !{!130, !5, i1 false, i2 -1}
!247 = !{!127, !248, i1 false, i2 -1}
!248 = !{double 0.000000e+00, double 0x408E66665E02EA96}
!249 = !{!130, !248, i1 false, i2 -1}
!250 = !{!130, !251, i1 false, i2 -1}
!251 = !{double 0.000000e+00, double 0x40A1E444477FF152}
!252 = !{!253, !254, i1 false, i2 -1}
!253 = !{!"fixp", i32 -32, i32 22}
!254 = !{double 0x3FEB4E80969354DC, double 0x407555556084A516}
!255 = !{!256, !254, i1 false, i2 -1}
!256 = !{!"fixp", i32 32, i32 23}
!257 = !{!130, !258, i1 false, i2 -1}
!258 = !{double 0x3FEB4E80969354DC, double 0x40A48EEEF39085F5}
!259 = distinct !{!259, !27}
!260 = distinct !{!260, !27}
!261 = !{!155, !262, i1 false, i2 -1}
!262 = !{double 0.000000e+00, double 0x4098B3333FFE1CD1}
!263 = !{!53, !262, i1 false, i2 -1}
!264 = !{!265, !266, i1 false, i2 -1}
!265 = !{!"fixp", i32 -32, i32 17}
!266 = !{double 0.000000e+00, double 0x40C8B3333FFE1CD1}
!267 = !{!268, !266, i1 false, i2 -1}
!268 = !{!"fixp", i32 32, i32 18}
!269 = !{!70, !270, i1 false, i2 -1}
!270 = !{double 0.000000e+00, double 0x40F95BF6E7FFC39A}
!271 = distinct !{!271, !27}
!272 = distinct !{!272, !27}
!273 = !{!70, !274, i1 false, i2 -1}
!274 = !{double 3.555560e-01, double 0x40F64602471C53F4}
!275 = distinct !{!275, !27}
!276 = !{!155, !277, i1 false, i2 -1}
!277 = !{double 0.000000e+00, double 0x409EE0000FFDA406}
!278 = !{!53, !277, i1 false, i2 -1}
!279 = !{!280, !281, i1 false, i2 -1}
!280 = !{!"fixp", i32 -32, i32 3}
!281 = !{double 0.000000e+00, double 0x41A57D1E76A123E3}
!282 = !{!283, !281, i1 false, i2 -1}
!283 = !{!"fixp", i32 32, i32 4}
!284 = !{!285, !286, i1 false, i2 -1}
!285 = !{!"float", i32 1, double 0x41D6CC6EAED4247C}
!286 = !{double 0.000000e+00, double 0x41D6CC6EAED4247C}
!287 = distinct !{!287, !27}
!288 = distinct !{!288, !27}
!289 = !{i32 -1, i32 -1, i32 3, i32 -1}
!290 = !{i32 1, !106, i32 1, !106, i32 1, !52, i32 1, !118}
!291 = !{void (i32, i32, float*, i32)* @scale_2d}
!292 = !{!293, !294, i1 false, i2 -1}
!293 = !{!"fixp", i32 -32, i32 14}
!294 = !{double 0.000000e+00, double 0x40F495555FFE6D59}
!295 = !{!70, !294, i1 false, i2 -1}
!296 = distinct !{!296, !27}
!297 = distinct !{!297, !27}
