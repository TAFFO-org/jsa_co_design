; ModuleID = './build/bin/fixed/gemver/8/gemver-standard-32-fixed-8.out.ll'
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
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !22
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %0, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %1, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %3, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %A.u9_23fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !54
  %v1.u4_28fixp = alloca [20 x i32], align 4, !taffo.info !57
  %u2.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !60
  %v2.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !62
  %w.u26_6fixp = alloca [20 x i32], align 4, !taffo.info !65, !taffo.target !67
  %x.u14_18fixp = alloca [20 x i32], align 4, !taffo.info !68
  %y.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !70
  %z.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !72
  %arraydecay.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u5_27fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay13.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u4_28fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay14.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u5_27fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay15.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u3_29fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay16.u26_6fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u26_6fixp, i32 0, i32 0, !taffo.info !65, !taffo.target !67
  %arraydecay17.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u14_18fixp, i32 0, i32 0, !taffo.info !68
  %arraydecay18.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u3_29fixp, i32 0, i32 0, !taffo.info !70
  %arraydecay19.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u3_29fixp, i32 0, i32 0, !taffo.info !72
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u9_23fixp, i32* %arraydecay12.u5_27fixp, i32* %arraydecay13.u4_28fixp, i32* %arraydecay14.u5_27fixp, i32* %arraydecay15.u3_29fixp, i32* %arraydecay16.u26_6fixp, i32* %arraydecay17.u14_18fixp, i32* %arraydecay18.u3_29fixp, i32* %arraydecay19.u3_29fixp), !taffo.info !74, !taffo.constinfo !75
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 32), !taffo.info !74, !taffo.constinfo !76
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 32), !taffo.info !77, !taffo.constinfo !76
  %arraydecay20.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !52
  %u9_23fixp = bitcast [20 x i32]* %arraydecay20.u9_23fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u9_23fixp, i32 32), !taffo.info !78, !taffo.constinfo !79
  %arraydecay21.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u5_27fixp, i32 0, i32 0, !taffo.info !54
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u5_27fixp, i32 32), !taffo.info !80, !taffo.constinfo !81
  %arraydecay22.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u4_28fixp, i32 0, i32 0, !taffo.info !57
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u4_28fixp, i32 32), !taffo.info !82, !taffo.constinfo !81
  %arraydecay23.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u5_27fixp, i32 0, i32 0, !taffo.info !60
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay23.u5_27fixp, i32 32), !taffo.info !83, !taffo.constinfo !81
  %arraydecay24.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u3_29fixp, i32 0, i32 0, !taffo.info !62
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay24.u3_29fixp, i32 32), !taffo.info !84, !taffo.constinfo !81
  %arraydecay25.u26_6fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u26_6fixp, i32 0, i32 0, !taffo.info !65, !taffo.target !67
  call void @scale_1d.7_fixp(i32 20, i32* %arraydecay25.u26_6fixp, i32 32), !taffo.info !85, !taffo.constinfo !81, !taffo.target !67
  %arraydecay26.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u14_18fixp, i32 0, i32 0, !taffo.info !68
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u14_18fixp, i32 32), !taffo.info !86, !taffo.constinfo !81
  %arraydecay27.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u3_29fixp, i32 0, i32 0, !taffo.info !70
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay27.u3_29fixp, i32 32), !taffo.info !87, !taffo.constinfo !81
  %arraydecay28.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u3_29fixp, i32 0, i32 0, !taffo.info !72
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay28.u3_29fixp, i32 32), !taffo.info !88, !taffo.constinfo !81
  call void @timer_start(), !taffo.constinfo !89
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !47
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !50
  %arraydecay29.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u5_27fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay31.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u4_28fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay32.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u5_27fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay33.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u3_29fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay34.u26_6fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u26_6fixp, i32 0, i32 0, !taffo.info !65, !taffo.target !67
  %arraydecay35.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u14_18fixp, i32 0, i32 0, !taffo.info !68
  %arraydecay36.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u3_29fixp, i32 0, i32 0, !taffo.info !70
  %arraydecay37.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u3_29fixp, i32 0, i32 0, !taffo.info !72
  call void @kernel_gemver.10_fixp(i32 20, i32 %u2_30fixp1, i32 %u2_30fixp, [20 x i32]* %arraydecay29.u9_23fixp, i32* %arraydecay30.u5_27fixp, i32* %arraydecay31.u4_28fixp, i32* %arraydecay32.u5_27fixp, i32* %arraydecay33.u3_29fixp, i32* %arraydecay34.u26_6fixp, i32* %arraydecay35.u14_18fixp, i32* %arraydecay36.u3_29fixp, i32* %arraydecay37.u3_29fixp), !taffo.info !74, !taffo.constinfo !75
  call void @timer_stop(), !taffo.constinfo !89
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !90
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u14_18fixp, i32 0, i32 %i.0, !taffo.info !68
  %u14_18fixp = load i32, i32* %arrayidx.u14_18fixp, align 4, !taffo.info !68
  %0 = uitofp i32 %u14_18fixp to float, !taffo.info !68
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 2.621440e+05, !taffo.info !68
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx38, align 4, !taffo.info !86
  %arrayidx39.u26_6fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u26_6fixp, i32 0, i32 %i.0, !taffo.info !65, !taffo.target !67
  %u26_6fixp = load i32, i32* %arrayidx39.u26_6fixp, align 4, !taffo.info !65, !taffo.target !67
  %2 = uitofp i32 %u26_6fixp to float, !taffo.info !65, !taffo.target !67
  %lampsim6 = bitcast float %2 to i32
  %lampsim7 = and i32 %lampsim6, -65536
  %lampsim8 = bitcast i32 %lampsim7 to float
  %3 = fdiv float %lampsim8, 6.400000e+01, !taffo.info !65, !taffo.target !67
  %lampsim9 = bitcast float %3 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %lampsim11, float* %arrayidx40, align 4, !taffo.info !85, !taffo.target !67
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !92
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u9_23fixp, i32 0, i32 %j.0, !taffo.info !52
  %u9_23fixp2 = load i32, i32* %arrayidx45.u9_23fixp, align 4, !taffo.info !52
  %4 = uitofp i32 %u9_23fixp2 to float, !taffo.info !52
  %lampsim12 = bitcast float %4 to i32
  %lampsim13 = and i32 %lampsim12, -65536
  %lampsim14 = bitcast i32 %lampsim13 to float
  %5 = fdiv float %lampsim14, 0x4160000000000000, !taffo.info !52
  %lampsim15 = bitcast float %5 to i32
  %lampsim16 = and i32 %lampsim15, -65536
  %lampsim17 = bitcast i32 %lampsim16 to float
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %lampsim17, float* %arrayidx47, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !98

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !101

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !79
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !92
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !107
  %add = add nsw i32 %mul, %j.0, !taffo.info !107
  %rem = srem i32 %add, 20, !taffo.info !107, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !105
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv1 = fpext float %2 to double, !taffo.info !4
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !81
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !109

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !110

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !92
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !105
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !107, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !105
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv214 = fpext float %5 to double, !taffo.info !0
  %lampsim5 = bitcast double %conv214 to i64
  %lampsim6 = and i64 %lampsim5, -35184372088832
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !81
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !111

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !92
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !105
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !107, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !105
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv378 = fpext float %8 to double, !taffo.info !2
  %lampsim9 = bitcast double %conv378 to i64
  %lampsim10 = and i64 %lampsim9, -35184372088832
  %lampsim11 = bitcast i64 %lampsim10 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim11), !taffo.constinfo !81
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !112

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !113 !taffo.funinfo !114 !taffo.sourceFunction !117 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !54
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !54
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !121
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !121
  %2 = ashr i32 %0, 5, !taffo.info !54
  %3 = ashr i32 %1, 4, !taffo.info !121
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 21), !taffo.info !123
  %mul.u10_22fixp = shl i32 %4, 1, !taffo.info !126
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u10_22fixp, 5, !taffo.info !126
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, i32* noundef %val.u26_6fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !129 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u26_6fixp = getelementptr inbounds i32, i32* %val.u26_6fixp, i32 %i.0, !taffo.info !65
  %u26_6fixp = load i32, i32* %arrayidx.u26_6fixp, align 4, !taffo.info !65
  %0 = uitofp i32 %u26_6fixp to float, !taffo.info !65
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 6.400000e+01, !taffo.info !65
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !121
  %2 = uitofp i32 %conv.u6_26fixp to float, !taffo.info !121
  %lampsim6 = bitcast float %2 to i32
  %lampsim7 = and i32 %lampsim6, -65536
  %lampsim8 = bitcast i32 %lampsim7 to float
  %3 = fdiv float %lampsim8, 0x4190000000000000, !taffo.info !121
  %lampsim9 = bitcast float %3 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul.1flp12 = fmul float %lampsim5, %lampsim11, !taffo.info !130
  %lampsim13 = bitcast float %mul.1flp12 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %arrayidx1.u26_6fixp = getelementptr inbounds i32, i32* %val.u26_6fixp, i32 %i.0, !taffo.info !65
  %4 = fmul float 6.400000e+01, %lampsim15, !taffo.info !130
  %lampsim16 = bitcast float %4 to i32
  %lampsim17 = and i32 %lampsim16, -65536
  %lampsim18 = bitcast i32 %lampsim17 to float
  %5 = fptoui float %lampsim18 to i32, !taffo.info !130
  store i32 %5, i32* %arrayidx1.u26_6fixp, align 4, !taffo.info !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !134 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !62
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !62
  %conv.u8_24fixp = shl i32 %factor, 24, !taffo.info !135
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !62
  %1 = lshr i32 %conv.u8_24fixp, 1, !taffo.info !135
  %2 = ashr i32 %0, 5, !taffo.info !62
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 23), !taffo.info !137
  %mul.u8_24fixp = shl i32 %3, 1, !taffo.info !140
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !62
  %4 = shl i32 %mul.u8_24fixp, 5, !taffo.info !140
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !141

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u14_18fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !142 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u14_18fixp = getelementptr inbounds i32, i32* %val.u14_18fixp, i32 %i.0, !taffo.info !68
  %u14_18fixp = load i32, i32* %arrayidx.u14_18fixp, align 4, !taffo.info !68
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !121
  %0 = lshr i32 %u14_18fixp, 1, !taffo.info !68
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !121
  %2 = ashr i32 %0, 5, !taffo.info !68
  %3 = ashr i32 %1, 13, !taffo.info !121
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 12), !taffo.info !143
  %mul.u19_13fixp = shl i32 %4, 1, !taffo.info !146
  %arrayidx1.u14_18fixp = getelementptr inbounds i32, i32* %val.u14_18fixp, i32 %i.0, !taffo.info !68
  %5 = shl i32 %mul.u19_13fixp, 5, !taffo.info !146
  store i32 %5, i32* %arrayidx1.u14_18fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !148

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u9_23fixp, i32* noundef %u1.u5_27fixp, i32* noundef %v1.u4_28fixp, i32* noundef %u2.u5_27fixp, i32* noundef %v2.u3_29fixp, i32* noundef %w.u26_6fixp, i32* noundef %x.u14_18fixp, i32* noundef %y.u3_29fixp, i32* noundef %z.u3_29fixp) #0 !taffo.initweight !149 !taffo.funinfo !150 !taffo.sourceFunction !151 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !92
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !52
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !152
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %u1.u5_27fixp, i32 %i.0, !taffo.info !54
  %u5_27fixp = load i32, i32* %arrayidx5.u5_27fixp, align 4, !taffo.info !54
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %v1.u4_28fixp, i32 %j.0, !taffo.info !57
  %u4_28fixp = load i32, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !57
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !54
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !57
  %2 = ashr i32 %0, 5, !taffo.info !54
  %3 = ashr i32 %1, 6, !taffo.info !57
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 21), !taffo.info !153
  %mul.u10_22fixp = shl i32 %4, 1, !taffo.info !155
  %5 = lshr i32 %u9_23fixp, 1, !taffo.info !152
  %add.u10_22fixp = add i32 %5, %mul.u10_22fixp, !taffo.info !156
  %arrayidx7.u5_27fixp = getelementptr inbounds i32, i32* %u2.u5_27fixp, i32 %i.0, !taffo.info !60
  %u5_27fixp1 = load i32, i32* %arrayidx7.u5_27fixp, align 4, !taffo.info !158
  %arrayidx8.u3_29fixp = getelementptr inbounds i32, i32* %v2.u3_29fixp, i32 %j.0, !taffo.info !62
  %u3_29fixp = load i32, i32* %arrayidx8.u3_29fixp, align 4, !taffo.info !62
  %6 = lshr i32 %u5_27fixp1, 1, !taffo.info !158
  %7 = lshr i32 %u3_29fixp, 1, !taffo.info !62
  %8 = ashr i32 %6, 2, !taffo.info !158
  %9 = ashr i32 %7, 4, !taffo.info !62
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 24), !taffo.info !160
  %mul9.u7_25fixp = shl i32 %10, 1, !taffo.info !163
  %11 = lshr i32 %mul9.u7_25fixp, 3, !taffo.info !163
  %add10.u10_22fixp = add i32 %add.u10_22fixp, %11, !taffo.info !164
  %arrayidx11.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u9_23fixp, i32 0, i32 %j.0, !taffo.info !52
  %12 = shl i32 %add10.u10_22fixp, 1, !taffo.info !164
  store i32 %12, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !166

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !167

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !92
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !105
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !92
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !105
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u14_18fixp = getelementptr inbounds i32, i32* %x.u14_18fixp, i32 %i.1, !taffo.info !68
  %u14_18fixp = load i32, i32* %arrayidx22.u14_18fixp, align 4, !taffo.info !68
  %arrayidx23.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u9_23fixp, i32 0, i32 %i.1, !taffo.info !52
  %u9_23fixp6 = load i32, i32* %arrayidx24.u9_23fixp, align 4, !taffo.info !52
  %13 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !50
  %14 = lshr i32 %u9_23fixp6, 1, !taffo.info !52
  %15 = ashr i32 %13, 9, !taffo.info !50
  %16 = ashr i32 %14, 2, !taffo.info !52
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 20), !taffo.info !168
  %mul25.u11_21fixp = shl i32 %17, 1, !taffo.info !171
  %arrayidx26.u3_29fixp = getelementptr inbounds i32, i32* %y.u3_29fixp, i32 %j.1, !taffo.info !70
  %u3_29fixp4 = load i32, i32* %arrayidx26.u3_29fixp, align 4, !taffo.info !70
  %18 = lshr i32 %mul25.u11_21fixp, 1, !taffo.info !171
  %19 = lshr i32 %u3_29fixp4, 1, !taffo.info !70
  %20 = ashr i32 %19, 8, !taffo.info !70
  %21 = call i32 @llvm.smul.fix.i32(i32 %18, i32 %20, i32 20), !taffo.info !173
  %mul27.u11_21fixp = shl i32 %21, 1, !taffo.info !175
  %22 = lshr i32 %mul27.u11_21fixp, 3, !taffo.info !175
  %add28.u14_18fixp = add i32 %u14_18fixp, %22, !taffo.info !176
  %arrayidx29.u14_18fixp = getelementptr inbounds i32, i32* %x.u14_18fixp, i32 %i.1, !taffo.info !68
  store i32 %add28.u14_18fixp, i32* %arrayidx29.u14_18fixp, align 4, !taffo.info !86
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !178

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !179

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !92
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !105
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u14_18fixp = getelementptr inbounds i32, i32* %x.u14_18fixp, i32 %i.2, !taffo.info !68
  %u14_18fixp2 = load i32, i32* %arrayidx39.u14_18fixp, align 4, !taffo.info !68
  %arrayidx40.u3_29fixp = getelementptr inbounds i32, i32* %z.u3_29fixp, i32 %i.2, !taffo.info !72
  %u3_29fixp5 = load i32, i32* %arrayidx40.u3_29fixp, align 4, !taffo.info !72
  %23 = lshr i32 %u3_29fixp5, 11, !taffo.info !72
  %add41.u14_18fixp = add i32 %u14_18fixp2, %23, !taffo.info !180
  %arrayidx42.u14_18fixp = getelementptr inbounds i32, i32* %x.u14_18fixp, i32 %i.2, !taffo.info !68
  store i32 %add41.u14_18fixp, i32* %arrayidx42.u14_18fixp, align 4, !taffo.info !86
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !182

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !92
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !105
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !92
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !105
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u26_6fixp = getelementptr inbounds i32, i32* %w.u26_6fixp, i32 %i.3, !taffo.info !65
  %u26_6fixp = load i32, i32* %arrayidx52.u26_6fixp, align 4, !taffo.info !65
  %arrayidx53.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u9_23fixp, i32 0, i32 %j.2, !taffo.info !52
  %u9_23fixp7 = load i32, i32* %arrayidx54.u9_23fixp, align 4, !taffo.info !52
  %24 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !47
  %25 = lshr i32 %u9_23fixp7, 1, !taffo.info !52
  %26 = ashr i32 %24, 7, !taffo.info !47
  %27 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %25, i32 22), !taffo.info !183
  %mul55.u9_23fixp = shl i32 %27, 1, !taffo.info !186
  %arrayidx56.u14_18fixp = getelementptr inbounds i32, i32* %x.u14_18fixp, i32 %j.2, !taffo.info !68
  %u14_18fixp3 = load i32, i32* %arrayidx56.u14_18fixp, align 4, !taffo.info !68
  %28 = lshr i32 %mul55.u9_23fixp, 1, !taffo.info !186
  %29 = lshr i32 %u14_18fixp3, 1, !taffo.info !68
  %30 = ashr i32 %28, 14, !taffo.info !186
  %31 = ashr i32 %29, 9, !taffo.info !68
  %32 = call i32 @llvm.smul.fix.i32(i32 %30, i32 %31, i32 8), !taffo.info !187
  %mul57.u23_9fixp = shl i32 %32, 1, !taffo.info !190
  %33 = lshr i32 %mul57.u23_9fixp, 3, !taffo.info !190
  %add58.u26_6fixp = add i32 %u26_6fixp, %33, !taffo.info !192
  %arrayidx59.u26_6fixp = getelementptr inbounds i32, i32* %w.u26_6fixp, i32 %i.3, !taffo.info !65
  store i32 %add58.u26_6fixp, i32* %arrayidx59.u26_6fixp, align 4, !taffo.info !85
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !194

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !195

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !196 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !57
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !57
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !121
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !57
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !121
  %2 = ashr i32 %0, 5, !taffo.info !57
  %3 = ashr i32 %1, 3, !taffo.info !121
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 22), !taffo.info !197
  %mul.u9_23fixp = shl i32 %4, 1, !taffo.info !199
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !57
  %5 = shl i32 %mul.u9_23fixp, 5, !taffo.info !199
  store i32 %5, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u9_23fixp, i32* noundef %u1.u5_27fixp, i32* noundef %v1.u4_28fixp, i32* noundef %u2.u5_27fixp, i32* noundef %v2.u3_29fixp, i32* noundef %w.u26_6fixp, i32* noundef %x.u14_18fixp, i32* noundef %y.u3_29fixp, i32* noundef %z.u3_29fixp) #0 !taffo.initweight !201 !taffo.funinfo !150 !taffo.sourceFunction !202 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !74, !taffo.constinfo !203
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !77, !taffo.constinfo !205
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !208
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !209, !taffo.initweight !211
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !212, !taffo.initweight !213
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !209, !taffo.initweight !214

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !215
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !215
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !208
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !216
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !218
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %u1.u5_27fixp, i32 %i.0, !taffo.info !220
  %3 = lshr i32 %div.u1_31fixp, 4, !taffo.info !218
  store i32 %3, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !221
  %add = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !223, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !208
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !224
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !226
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !226
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !227
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !230, !taffo.constinfo !231
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !232, !taffo.constinfo !231
  %arrayidx11.u5_27fixp = getelementptr inbounds i32, i32* %u2.u5_27fixp, i32 %i.0, !taffo.info !234
  %10 = lshr i32 %conv10.u1_31fixp, 4, !taffo.info !232, !taffo.constinfo !231
  store i32 %10, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !221
  %add12 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !223, !taffo.constinfo !25
  %11 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %12 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !208
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !224
  %div14.u2_30fixp = shl i32 %13, 4, !taffo.info !226
  %14 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !226
  %15 = shl i32 4, 28
  %16 = ashr i32 %14, 1, !taffo.info !226
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 28), !taffo.info !235
  %div16.u2_30fixp = shl i32 %17, 2, !taffo.info !238, !taffo.constinfo !239
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !242, !taffo.constinfo !239
  %arrayidx18.u4_28fixp = getelementptr inbounds i32, i32* %v1.u4_28fixp, i32 %i.0, !taffo.info !244
  %18 = lshr i32 %conv17.u1_31fixp, 3, !taffo.info !242, !taffo.constinfo !239
  store i32 %18, i32* %arrayidx18.u4_28fixp, align 4, !taffo.info !221
  %add19 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !223, !taffo.constinfo !25
  %19 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %20 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !208
  %21 = call i32 @llvm.sdiv.fix.i32(i32 %19, i32 %20, i32 26), !taffo.info !224
  %div21.u2_30fixp = shl i32 %21, 4, !taffo.info !226
  %22 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !226
  %23 = shl i32 6, 28
  %24 = ashr i32 %22, 1, !taffo.info !226
  %25 = call i32 @llvm.sdiv.fix.i32(i32 %24, i32 %23, i32 28), !taffo.info !245
  %div23.u2_30fixp = shl i32 %25, 2, !taffo.info !247, !taffo.constinfo !248
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !251, !taffo.constinfo !248
  %arrayidx25.u3_29fixp = getelementptr inbounds i32, i32* %v2.u3_29fixp, i32 %i.0, !taffo.info !253
  %26 = lshr i32 %conv24.u1_31fixp, 2, !taffo.info !251, !taffo.constinfo !248
  store i32 %26, i32* %arrayidx25.u3_29fixp, align 4, !taffo.info !221
  %add26 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !223, !taffo.constinfo !25
  %27 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %28 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !208
  %29 = call i32 @llvm.sdiv.fix.i32(i32 %27, i32 %28, i32 26), !taffo.info !224
  %div28.u2_30fixp = shl i32 %29, 4, !taffo.info !226
  %30 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !226
  %31 = shl i32 8, 27
  %32 = ashr i32 %30, 2, !taffo.info !226
  %33 = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %31, i32 27), !taffo.info !254
  %div30.u2_30fixp = shl i32 %33, 3, !taffo.info !257, !taffo.constinfo !258
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !261, !taffo.constinfo !258
  %arrayidx32.u3_29fixp = getelementptr inbounds i32, i32* %y.u3_29fixp, i32 %i.0, !taffo.info !263
  %34 = lshr i32 %conv31.u1_31fixp, 2, !taffo.info !261, !taffo.constinfo !258
  store i32 %34, i32* %arrayidx32.u3_29fixp, align 4, !taffo.info !221
  %add33 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !223, !taffo.constinfo !25
  %35 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %36 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !208
  %37 = call i32 @llvm.sdiv.fix.i32(i32 %35, i32 %36, i32 26), !taffo.info !224
  %div35.u2_30fixp = shl i32 %37, 4, !taffo.info !226
  %38 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !226
  %39 = shl i32 9, 27
  %40 = ashr i32 %38, 2, !taffo.info !226
  %41 = call i32 @llvm.sdiv.fix.i32(i32 %40, i32 %39, i32 27), !taffo.info !264
  %div37.u2_30fixp = shl i32 %41, 3, !taffo.info !266, !taffo.constinfo !267
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !270, !taffo.constinfo !267
  %arrayidx39.u3_29fixp = getelementptr inbounds i32, i32* %z.u3_29fixp, i32 %i.0, !taffo.info !272
  %42 = lshr i32 %conv38.u1_31fixp, 2, !taffo.info !270, !taffo.constinfo !267
  store i32 %42, i32* %arrayidx39.u3_29fixp, align 4, !taffo.info !221
  %arrayidx40.u14_18fixp = getelementptr inbounds i32, i32* %x.u14_18fixp, i32 %i.0, !taffo.info !273
  store i32 0, i32* %arrayidx40.u14_18fixp, align 4, !taffo.info !221, !taffo.constinfo !274
  %arrayidx41.u26_6fixp = getelementptr inbounds i32, i32* %w.u26_6fixp, i32 %i.0, !taffo.info !275
  store i32 0, i32* %arrayidx41.u26_6fixp, align 4, !taffo.info !221, !taffo.constinfo !274
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !209, !taffo.initweight !211
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !212, !taffo.initweight !213
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !209, !taffo.initweight !214

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !276, !taffo.initweight !213
  %rem = srem i32 %mul, %n, !taffo.info !278, !taffo.initweight !214
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !280
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !208
  %43 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !280
  %44 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !208
  %45 = call i32 @llvm.sdiv.fix.i32(i32 %43, i32 %44, i32 26), !taffo.info !281
  %div48.u1_31fixp = shl i32 %45, 5, !taffo.info !283
  %arrayidx49.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !284
  %arrayidx50.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u9_23fixp, i32 0, i32 %j.0, !taffo.info !284
  %46 = lshr i32 %div48.u1_31fixp, 8, !taffo.info !283
  store i32 %46, i32* %arrayidx50.u9_23fixp, align 4, !taffo.info !221
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !285

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !213, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !286

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !287 !taffo.funinfo !288 !taffo.sourceFunction !289 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !92
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !107
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %0, !taffo.info !52
  %arrayidx4.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx.u9_23fixp, i32 %j.0, !taffo.info !52
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !52
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !121
  %1 = lshr i32 %u9_23fixp, 1, !taffo.info !52
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !121
  %3 = ashr i32 %1, 5, !taffo.info !52
  %4 = ashr i32 %2, 8, !taffo.info !121
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 17), !taffo.info !290
  %mul.u14_18fixp = shl i32 %5, 1, !taffo.info !293
  %6 = mul nsw i32 %i.0, %m, !taffo.info !107
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %6, !taffo.info !52
  %arrayidx6.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx5.u9_23fixp, i32 %j.0, !taffo.info !52
  %7 = shl i32 %mul.u14_18fixp, 5, !taffo.info !293
  store i32 %7, i32* %arrayidx6.u9_23fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !294

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !295

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
!1 = !{double 0.000000e+00, double 0x40C6D8D15FFE6D59}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x41859442A0000000}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x4074A2221FAFC8B0}
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
!53 = !{!"fixp", i32 32, i32 23}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 27}
!56 = !{double 0.000000e+00, double 3.040000e+01}
!57 = !{!58, !59, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 28}
!59 = !{double 4.000000e-01, double 8.000000e+00}
!60 = !{!55, !61, i1 false, i2 -1}
!61 = !{double 8.000000e-01, double 1.600000e+01}
!62 = !{!63, !64, i1 false, i2 -1}
!63 = !{!"fixp", i32 32, i32 29}
!64 = !{double 2.666670e-01, double 0x401555553EF6B5D4}
!65 = !{!66, !3, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 6}
!67 = !{!"w"}
!68 = !{!69, !1, i1 false, i2 -1}
!69 = !{!"fixp", i32 32, i32 18}
!70 = !{!63, !71, i1 false, i2 -1}
!71 = !{double 2.000000e-01, double 4.000000e+00}
!72 = !{!63, !73, i1 false, i2 -1}
!73 = !{double 1.777780e-01, double 0x400C71C75818C5CA}
!74 = !{i1 false, !49, i1 false, i2 -1}
!75 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!76 = !{i1 false, i1 false, i1 false}
!77 = !{i1 false, !51, i1 false, i2 -1}
!78 = !{i1 false, !5, i1 false, i2 -1}
!79 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!80 = !{i1 false, !56, i1 false, i2 -1}
!81 = !{i1 false, i1 false, i1 false, i1 false}
!82 = !{i1 false, !59, i1 false, i2 -1}
!83 = !{i1 false, !61, i1 false, i2 -1}
!84 = !{i1 false, !64, i1 false, i2 -1}
!85 = !{i1 false, !3, i1 false, i2 -1}
!86 = !{i1 false, !1, i1 false, i2 -1}
!87 = !{i1 false, !71, i1 false, i2 -1}
!88 = !{i1 false, !73, i1 false, i2 -1}
!89 = !{i1 false}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 2.100000e+01}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 1.000000e+00}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0.000000e+00, double 4.410000e+02}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 1.000000e+00, double 4.410000e+02}
!98 = distinct !{!98, !27}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.000000e+00, double 2.100000e+01}
!101 = distinct !{!101, !27}
!102 = !{i32 1, !103, i32 1, !2, i32 1, !0, i32 1, !4}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 2.000000e+01, double 2.000000e+01}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 1.000000e+00, double 1.000000e+00}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 0.000000e+00, double 0.000000e+00}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27}
!113 = !{i32 1, i32 -1}
!114 = !{i32 1, !47, i32 1, !115}
!115 = !{i1 false, !116, i1 false, i2 0}
!116 = !{double 3.200000e+01, double 3.200000e+01}
!117 = !{void (float*, i32)* @scale_scalar}
!118 = !{i32 -1, i32 2, i32 -1}
!119 = !{i32 1, !103, i32 1, !54, i32 1, !115}
!120 = !{void (i32, float*, i32)* @scale_1d}
!121 = !{!122, !116, i1 false, i2 1}
!122 = !{!"fixp", i32 32, i32 26}
!123 = !{!124, !125, i1 false, i2 -1}
!124 = !{!"fixp", i32 -32, i32 21}
!125 = !{double 0.000000e+00, double 0x408E666666666666}
!126 = !{!127, !125, i1 false, i2 -1}
!127 = !{!"fixp", i32 32, i32 22}
!128 = distinct !{!128, !27}
!129 = !{i32 1, !103, i32 1, !65, i32 1, !115}
!130 = !{!131, !132, i1 false, i2 -1}
!131 = !{!"float", i32 1, double 0x41D59442A0000000}
!132 = !{double 0.000000e+00, double 0x41D59442A0000000}
!133 = distinct !{!133, !27}
!134 = !{i32 1, !103, i32 1, !62, i32 1, !115}
!135 = !{!136, !116, i1 false, i2 1}
!136 = !{!"fixp", i32 32, i32 24}
!137 = !{!138, !139, i1 false, i2 -1}
!138 = !{!"fixp", i32 -32, i32 23}
!139 = !{double 0x4021111276FB0920, double 0x406555553EF6B5D4}
!140 = !{!136, !139, i1 false, i2 -1}
!141 = distinct !{!141, !27}
!142 = !{i32 1, !103, i32 1, !68, i32 1, !115}
!143 = !{!144, !145, i1 false, i2 -1}
!144 = !{!"fixp", i32 -32, i32 12}
!145 = !{double 0.000000e+00, double 0x4116D8D15FFE6D59}
!146 = !{!147, !145, i1 false, i2 -1}
!147 = !{!"fixp", i32 32, i32 13}
!148 = distinct !{!148, !27}
!149 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!150 = !{i32 1, !103, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !60, i32 1, !62, i32 1, !65, i32 1, !68, i32 1, !70, i32 1, !72}
!151 = distinct !{null}
!152 = !{!127, !5, i1 false, i2 -1}
!153 = !{!124, !154, i1 false, i2 -1}
!154 = !{double 0.000000e+00, double 2.432000e+02}
!155 = !{!127, !154, i1 false, i2 -1}
!156 = !{!127, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 0x4081EAAAA9717DF2}
!158 = !{!159, !61, i1 false, i2 -1}
!159 = !{!"fixp", i32 32, i32 25}
!160 = !{!161, !162, i1 false, i2 -1}
!161 = !{!"fixp", i32 -32, i32 24}
!162 = !{double 0x3FCB4E83F191A834, double 0x405555553EF6B5D4}
!163 = !{!159, !162, i1 false, i2 -1}
!164 = !{!127, !165, i1 false, i2 -1}
!165 = !{double 0x3FCB4E83F191A834, double 0x40849555515054AC}
!166 = distinct !{!166, !27}
!167 = distinct !{!167, !27}
!168 = !{!169, !170, i1 false, i2 -1}
!169 = !{!"fixp", i32 -32, i32 20}
!170 = !{double 0.000000e+00, double 0x4078C28F59395739}
!171 = !{!172, !170, i1 false, i2 -1}
!172 = !{!"fixp", i32 32, i32 21}
!173 = !{!169, !174, i1 false, i2 -1}
!174 = !{double 0.000000e+00, double 0x4098C28F59395739}
!175 = !{!172, !174, i1 false, i2 -1}
!176 = !{!69, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 0x40C9F1234B259840}
!178 = distinct !{!178, !27}
!179 = distinct !{!179, !27}
!180 = !{!69, !181, i1 false, i2 -1}
!181 = !{double 1.777780e-01, double 0x40C6DA987C73EEE5}
!182 = distinct !{!182, !27}
!183 = !{!184, !185, i1 false, i2 -1}
!184 = !{!"fixp", i32 -32, i32 22}
!185 = !{double 0.000000e+00, double 0x407EF3332F87AD08}
!186 = !{!53, !185, i1 false, i2 -1}
!187 = !{!188, !189, i1 false, i2 -1}
!188 = !{!"fixp", i32 -32, i32 8}
!189 = !{double 0.000000e+00, double 0x415618E74B6C7D51}
!190 = !{!191, !189, i1 false, i2 -1}
!191 = !{!"fixp", i32 32, i32 9}
!192 = !{!66, !193, i1 false, i2 -1}
!193 = !{double 0.000000e+00, double 0x4188575F896D8FAA}
!194 = distinct !{!194, !27}
!195 = distinct !{!195, !27}
!196 = !{i32 1, !103, i32 1, !57, i32 1, !115}
!197 = !{!184, !198, i1 false, i2 -1}
!198 = !{double 1.280000e+01, double 2.560000e+02}
!199 = !{!53, !198, i1 false, i2 -1}
!200 = distinct !{!200, !27}
!201 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!202 = distinct !{null}
!203 = !{!204, i1 false}
!204 = !{i1 false, !49, i1 false, i2 0}
!205 = !{!206, i1 false}
!206 = !{i1 false, !207, i1 false, i2 0}
!207 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!208 = !{!55, !104, i1 false, i2 1}
!209 = !{i1 false, !210, i1 false, i2 -1}
!210 = !{double 0.000000e+00, double 2.000000e+01}
!211 = !{i32 0}
!212 = !{i1 false, !93, i1 false, i2 -1}
!213 = !{i32 2}
!214 = !{i32 3}
!215 = !{!55, !210, i1 false, i2 -1}
!216 = !{!217, !93, i1 false, i2 1}
!217 = !{!"fixp", i32 -32, i32 26}
!218 = !{!219, !93, i1 false, i2 1}
!219 = !{!"fixp", i32 32, i32 31}
!220 = !{!55, !56, i1 false, i2 1}
!221 = !{i1 false, i1 false, i1 false, i2 1}
!222 = !{i1 false, !100, i1 false, i2 -1}
!223 = !{!55, !100, i1 false, i2 -1}
!224 = !{!217, !225, i1 false, i2 1}
!225 = !{double 5.000000e-02, double 1.050000e+00}
!226 = !{!48, !225, i1 false, i2 1}
!227 = !{!228, !229, i1 false, i2 1}
!228 = !{!"fixp", i32 -32, i32 29}
!229 = !{double 2.500000e-02, double 5.250000e-01}
!230 = !{!48, !229, i1 false, i2 1}
!231 = !{i1 false, !23}
!232 = !{!219, !233, i1 false, i2 1}
!233 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!234 = !{!55, !61, i1 false, i2 1}
!235 = !{!236, !237, i1 false, i2 1}
!236 = !{!"fixp", i32 -32, i32 28}
!237 = !{double 1.250000e-02, double 2.625000e-01}
!238 = !{!48, !237, i1 false, i2 1}
!239 = !{i1 false, !240}
!240 = !{i1 false, !241, i1 false, i2 0}
!241 = !{double 4.000000e+00, double 4.000000e+00}
!242 = !{!219, !243, i1 false, i2 1}
!243 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!244 = !{!58, !59, i1 false, i2 1}
!245 = !{!236, !246, i1 false, i2 1}
!246 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!247 = !{!48, !246, i1 false, i2 1}
!248 = !{i1 false, !249}
!249 = !{i1 false, !250, i1 false, i2 0}
!250 = !{double 6.000000e+00, double 6.000000e+00}
!251 = !{!219, !252, i1 false, i2 1}
!252 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!253 = !{!63, !64, i1 false, i2 1}
!254 = !{!255, !256, i1 false, i2 1}
!255 = !{!"fixp", i32 -32, i32 27}
!256 = !{double 6.250000e-03, double 1.312500e-01}
!257 = !{!48, !256, i1 false, i2 1}
!258 = !{i1 false, !259}
!259 = !{i1 false, !260, i1 false, i2 0}
!260 = !{double 8.000000e+00, double 8.000000e+00}
!261 = !{!219, !262, i1 false, i2 1}
!262 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!263 = !{!63, !71, i1 false, i2 1}
!264 = !{!255, !265, i1 false, i2 1}
!265 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!266 = !{!48, !265, i1 false, i2 1}
!267 = !{i1 false, !268}
!268 = !{i1 false, !269, i1 false, i2 0}
!269 = !{double 9.000000e+00, double 9.000000e+00}
!270 = !{!219, !271, i1 false, i2 1}
!271 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!272 = !{!63, !73, i1 false, i2 1}
!273 = !{!69, !1, i1 false, i2 1}
!274 = !{!107, i1 false}
!275 = !{!66, !3, i1 false, i2 1}
!276 = !{i1 false, !277, i1 false, i2 -1}
!277 = !{double 0.000000e+00, double 4.000000e+02}
!278 = !{i1 false, !279, i1 false, i2 -1}
!279 = !{double 0.000000e+00, double 1.900000e+01}
!280 = !{!55, !279, i1 false, i2 -1}
!281 = !{!217, !282, i1 false, i2 -1}
!282 = !{double 0.000000e+00, double 0x3FEE666666666666}
!283 = !{!219, !282, i1 false, i2 -1}
!284 = !{!53, !5, i1 false, i2 1}
!285 = distinct !{!285, !27}
!286 = distinct !{!286, !27}
!287 = !{i32 -1, i32 -1, i32 3, i32 -1}
!288 = !{i32 1, !103, i32 1, !103, i32 1, !52, i32 1, !115}
!289 = !{void (i32, i32, float*, i32)* @scale_2d}
!290 = !{!291, !292, i1 false, i2 -1}
!291 = !{!"fixp", i32 -32, i32 17}
!292 = !{double 0.000000e+00, double 0x40C4A2221FAFC8B0}
!293 = !{!69, !292, i1 false, i2 -1}
!294 = distinct !{!294, !27}
!295 = distinct !{!295, !27}
