; ModuleID = './build/bin/fixed/3mm/11/3mm-standard-512-fixed-11.out.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
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
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %0, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %lampsim7, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.equivalentChild !31 {
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
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %1, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %lampsim7, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !33

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 {
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
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %3, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
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
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !40 {
entry:
  %E.u15_17fixp = alloca [6 x [8 x i32]], align 4, !taffo.info !41
  %A.u7_25fixp = alloca [6 x [10 x i32]], align 4, !taffo.info !44
  %B.u7_25fixp = alloca [10 x [8 x i32]], align 4, !taffo.info !47
  %F.u16_16fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !49
  %C.u7_25fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !52
  %D.u7_25fixp = alloca [14 x [12 x i32]], align 4, !taffo.info !54
  %G = alloca [6 x [12 x float]], align 4, !taffo.info !56, !taffo.initweight !58, !taffo.target !59
  %arraydecay.u7_25fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay8.u7_25fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay9.u7_25fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay10.u7_25fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u7_25fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay11.u15_17fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u15_17fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay12.u16_16fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u16_16fixp, i32 0, i32 0, !taffo.info !49
  %arraydecay13.flt.1flp = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !56, !taffo.initweight !60, !taffo.target !59
  call void @init_array.2_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [10 x i32]* %arraydecay.u7_25fixp, [8 x i32]* %arraydecay8.u7_25fixp, [14 x i32]* %arraydecay9.u7_25fixp, [12 x i32]* %arraydecay10.u7_25fixp, [8 x i32]* %arraydecay11.u15_17fixp, [12 x i32]* %arraydecay12.u16_16fixp, [12 x float]* %arraydecay13.flt.1flp), !taffo.info !61, !taffo.constinfo !62
  %arraydecay14.u15_17fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u15_17fixp, i32 0, i32 0, !taffo.info !41
  %u15_17fixp = bitcast [8 x i32]* %arraydecay14.u15_17fixp to i32*, !taffo.info !41
  call void @scale_2d.3_fixp(i32 6, i32 8, i32* %u15_17fixp, i32 512), !taffo.info !61, !taffo.constinfo !63
  %arraydecay15.u7_25fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !44
  %u7_25fixp1 = bitcast [10 x i32]* %arraydecay15.u7_25fixp to i32*, !taffo.info !44
  call void @scale_2d.4_fixp(i32 6, i32 10, i32* %u7_25fixp1, i32 512), !taffo.info !64, !taffo.constinfo !63
  %arraydecay16.u7_25fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !47
  %u7_25fixp = bitcast [8 x i32]* %arraydecay16.u7_25fixp to i32*, !taffo.info !47
  call void @scale_2d.4_fixp(i32 10, i32 8, i32* %u7_25fixp, i32 512), !taffo.info !65, !taffo.constinfo !63
  %arraydecay17.u16_16fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u16_16fixp, i32 0, i32 0, !taffo.info !49
  %u16_16fixp = bitcast [12 x i32]* %arraydecay17.u16_16fixp to i32*, !taffo.info !49
  call void @scale_2d.6_fixp(i32 8, i32 12, i32* %u16_16fixp, i32 512), !taffo.info !66, !taffo.constinfo !63
  %arraydecay18.u7_25fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !52
  %u7_25fixp2 = bitcast [14 x i32]* %arraydecay18.u7_25fixp to i32*, !taffo.info !52
  call void @scale_2d.4_fixp(i32 8, i32 14, i32* %u7_25fixp2, i32 512), !taffo.info !67, !taffo.constinfo !63
  %arraydecay19.u7_25fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u7_25fixp, i32 0, i32 0, !taffo.info !54
  %u7_25fixp3 = bitcast [12 x i32]* %arraydecay19.u7_25fixp to i32*, !taffo.info !54
  call void @scale_2d.4_fixp(i32 14, i32 12, i32* %u7_25fixp3, i32 512), !taffo.info !68, !taffo.constinfo !63
  %arraydecay20.flt.1flp = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !56, !taffo.initweight !60, !taffo.target !59
  %"1flp" = bitcast [12 x float]* %arraydecay20.flt.1flp to float*, !taffo.info !56, !taffo.target !59
  call void @scale_2d.9_fixp(i32 6, i32 12, float* %"1flp", i32 512), !taffo.info !69, !taffo.constinfo !63, !taffo.target !59
  call void @timer_start(), !taffo.constinfo !70
  %arraydecay21.u15_17fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u15_17fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay22.u7_25fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay23.u7_25fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay24.u16_16fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u16_16fixp, i32 0, i32 0, !taffo.info !49
  %arraydecay25.u7_25fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay26.u7_25fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u7_25fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay27.flt.1flp = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !56, !taffo.initweight !60, !taffo.target !59
  call void @kernel_3mm.1_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [8 x i32]* %arraydecay21.u15_17fixp, [10 x i32]* %arraydecay22.u7_25fixp, [8 x i32]* %arraydecay23.u7_25fixp, [12 x i32]* %arraydecay24.u16_16fixp, [14 x i32]* %arraydecay25.u7_25fixp, [12 x i32]* %arraydecay26.u7_25fixp, [12 x float]* %arraydecay27.flt.1flp), !taffo.info !61, !taffo.constinfo !62
  call void @timer_stop(), !taffo.constinfo !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp29 = icmp slt i32 %j.0, 12, !taffo.info !73
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %arrayidx.flt.1flp = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %i.0, !taffo.info !56, !taffo.initweight !60, !taffo.target !59
  %arrayidx31.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %arrayidx.flt.1flp, i32 0, i32 %j.0, !taffo.info !56, !taffo.initweight !77, !taffo.target !59
  %.flt.fallback.1flp = load float, float* %arrayidx31.flt.1flp, align 4, !taffo.info !56, !taffo.initweight !78, !taffo.target !59
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %j.0, !taffo.info !0
  store float %.flt.fallback.1flp, float* %arrayidx33, align 4, !taffo.info !69, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !81

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %inc35 = add nsw i32 %i.0, 1, !taffo.info !82, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !84

for.end36:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !85
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !26 !taffo.funinfo !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !93
  %add = add nsw i32 %mul, %j.0, !taffo.info !93
  %rem = srem i32 %add, 20, !taffo.info !93, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !91
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !95
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !85
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !96

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !97

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x i32]* noundef %E.u15_17fixp, [10 x i32]* noundef %A.u7_25fixp, [8 x i32]* noundef %B.u7_25fixp, [12 x i32]* noundef %F.u16_16fixp, [14 x i32]* noundef %C.u7_25fixp, [12 x i32]* noundef %D.u7_25fixp, [12 x float]* noundef %G) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !104 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u15_17fixp, i32 %i.0, !taffo.info !41
  %arrayidx4.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx.u15_17fixp, i32 0, i32 %j.0, !taffo.info !41
  store i32 0, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !73
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !91
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !44
  %arrayidx9.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.u7_25fixp, i32 0, i32 %k.0, !taffo.info !44
  %u7_25fixp = load i32, i32* %arrayidx9.u7_25fixp, align 4, !taffo.info !44
  %arrayidx10.u7_25fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u7_25fixp, i32 %k.0, !taffo.info !47
  %arrayidx11.u7_25fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx10.u7_25fixp, i32 0, i32 %j.0, !taffo.info !47
  %u7_25fixp2 = load i32, i32* %arrayidx11.u7_25fixp, align 4, !taffo.info !47
  %0 = lshr i32 %u7_25fixp, 1, !taffo.info !44
  %1 = lshr i32 %u7_25fixp2, 1, !taffo.info !47
  %2 = ashr i32 %0, 6, !taffo.info !44
  %3 = ashr i32 %1, 6, !taffo.info !47
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 18), !taffo.info !107
  %mul.u13_19fixp = shl i32 %4, 1, !taffo.info !110
  %arrayidx12.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u15_17fixp, i32 %i.0, !taffo.info !41
  %arrayidx13.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx12.u15_17fixp, i32 0, i32 %j.0, !taffo.info !41
  %u15_17fixp = load i32, i32* %arrayidx13.u15_17fixp, align 4, !taffo.info !112
  %5 = lshr i32 %u15_17fixp, 1, !taffo.info !112
  %6 = lshr i32 %mul.u13_19fixp, 3, !taffo.info !110
  %add.u16_16fixp = add i32 %5, %6, !taffo.info !113
  %7 = shl i32 %add.u16_16fixp, 1, !taffo.info !113
  store i32 %7, i32* %arrayidx13.u15_17fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !115

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !116

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !117

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !73
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !91
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !73
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !91
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u16_16fixp, i32 %i.1, !taffo.info !49
  %arrayidx27.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx26.u16_16fixp, i32 0, i32 %j.1, !taffo.info !49
  store i32 0, i32* %arrayidx27.u16_16fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !73
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !91
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u7_25fixp, i32 %i.1, !taffo.info !52
  %arrayidx32.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx31.u7_25fixp, i32 0, i32 %k.1, !taffo.info !52
  %u7_25fixp4 = load i32, i32* %arrayidx32.u7_25fixp, align 4, !taffo.info !52
  %arrayidx33.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u7_25fixp, i32 %k.1, !taffo.info !54
  %arrayidx34.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx33.u7_25fixp, i32 0, i32 %j.1, !taffo.info !54
  %u7_25fixp5 = load i32, i32* %arrayidx34.u7_25fixp, align 4, !taffo.info !54
  %8 = lshr i32 %u7_25fixp4, 1, !taffo.info !52
  %9 = lshr i32 %u7_25fixp5, 1, !taffo.info !54
  %10 = ashr i32 %8, 9, !taffo.info !52
  %11 = ashr i32 %9, 9, !taffo.info !54
  %12 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %11, i32 15), !taffo.info !118
  %mul35.u16_16fixp = shl i32 %12, 1, !taffo.info !121
  %arrayidx36.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u16_16fixp, i32 %i.1, !taffo.info !49
  %arrayidx37.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx36.u16_16fixp, i32 0, i32 %j.1, !taffo.info !49
  %u16_16fixp = load i32, i32* %arrayidx37.u16_16fixp, align 4, !taffo.info !49
  %add38.u16_16fixp = add i32 %u16_16fixp, %mul35.u16_16fixp, !taffo.info !122
  store i32 %add38.u16_16fixp, i32* %arrayidx37.u16_16fixp, align 4, !taffo.info !66
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !124

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !125

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !126

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !73
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !91
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !73
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !91
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !56, !taffo.initweight !127
  %arrayidx55.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54.flt.1flp, i32 0, i32 %j.2, !taffo.info !56, !taffo.initweight !128
  store float 0.000000e+00, float* %arrayidx55.flt.1flp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !73
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !91
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u15_17fixp, i32 %i.2, !taffo.info !41
  %arrayidx60.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx59.u15_17fixp, i32 0, i32 %k.2, !taffo.info !41
  %u15_17fixp1 = load i32, i32* %arrayidx60.u15_17fixp, align 4, !taffo.info !41
  %13 = uitofp i32 %u15_17fixp1 to float, !taffo.info !41
  %lampsim = bitcast float %13 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %14 = fdiv float %lampsim2, 1.310720e+05, !taffo.info !41
  %lampsim3 = bitcast float %14 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx61.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u16_16fixp, i32 %k.2, !taffo.info !49
  %arrayidx62.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx61.u16_16fixp, i32 0, i32 %j.2, !taffo.info !49
  %u16_16fixp3 = load i32, i32* %arrayidx62.u16_16fixp, align 4, !taffo.info !49
  %15 = uitofp i32 %u16_16fixp3 to float, !taffo.info !49
  %lampsim6 = bitcast float %15 to i32
  %lampsim7 = and i32 %lampsim6, -8192
  %lampsim8 = bitcast i32 %lampsim7 to float
  %16 = fdiv float %lampsim8, 6.553600e+04, !taffo.info !49
  %lampsim9 = bitcast float %16 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul63.1flp12 = fmul float %lampsim5, %lampsim11, !taffo.info !129
  %lampsim13 = bitcast float %mul63.1flp12 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %arrayidx64.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !56, !taffo.initweight !127
  %arrayidx65.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64.flt.1flp, i32 0, i32 %j.2, !taffo.info !56, !taffo.initweight !128
  %.flt.fallback.1flp = load float, float* %arrayidx65.flt.1flp, align 4, !taffo.info !56, !taffo.initweight !132
  %add66.1flp16 = fadd float %.flt.fallback.1flp, %lampsim15, !taffo.info !133
  %lampsim17 = bitcast float %add66.1flp16 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  store float %lampsim19, float* %arrayidx65.flt.1flp, align 4, !taffo.info !69
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !136

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !137

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !138

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x i32]* noundef %A.u7_25fixp, [8 x i32]* noundef %B.u7_25fixp, [14 x i32]* noundef %C.u7_25fixp, [12 x i32]* noundef %D.u7_25fixp, [8 x i32]* noundef %E.u15_17fixp, [12 x i32]* noundef %F.u16_16fixp, [12 x float]* noundef %G) #0 !taffo.initweight !98 !taffo.funinfo !139 !taffo.sourceFunction !140 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !141, !taffo.initweight !58
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !144, !taffo.initweight !78

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !141, !taffo.initweight !58
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !144, !taffo.initweight !78

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !146, !taffo.initweight !77
  %add = add nsw i32 %mul, 1, !taffo.info !148, !taffo.initweight !78, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !150, !taffo.initweight !152
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !153
  %mul6 = mul nsw i32 5, %ni, !taffo.info !155, !taffo.constinfo !21
  %conv7.u5_27fixp = shl i32 %mul6, 27, !taffo.info !157, !taffo.constinfo !21
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !153
  %1 = lshr i32 %conv7.u5_27fixp, 1, !taffo.info !157, !taffo.constinfo !21
  %2 = ashr i32 %0, 2, !taffo.info !153
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !159
  %div.u3_29fixp = shl i32 %3, 3, !taffo.info !162
  %arrayidx.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !163
  %arrayidx8.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !163
  %4 = lshr i32 %div.u3_29fixp, 4, !taffo.info !162
  store i32 %4, i32* %arrayidx8.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !166

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !167

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !141, !taffo.initweight !58
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !144, !taffo.initweight !78

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !141, !taffo.initweight !58
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !144, !taffo.initweight !78

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !168, !taffo.initweight !77
  %add22 = add nsw i32 %mul21, 2, !taffo.info !170, !taffo.initweight !78, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !172, !taffo.initweight !152
  %conv24.u3_29fixp = shl i32 %rem23, 29, !taffo.info !173
  %mul25 = mul nsw i32 5, %nj, !taffo.info !174, !taffo.constinfo !21
  %conv26.u6_26fixp = shl i32 %mul25, 26, !taffo.info !176, !taffo.constinfo !21
  %5 = lshr i32 %conv24.u3_29fixp, 1, !taffo.info !173
  %6 = lshr i32 %conv26.u6_26fixp, 1, !taffo.info !176, !taffo.constinfo !21
  %7 = ashr i32 %5, 3, !taffo.info !173
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 25), !taffo.info !178
  %div27.u3_29fixp = shl i32 %8, 4, !taffo.info !181
  %arrayidx28.u7_25fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u7_25fixp, i32 %i.1, !taffo.info !182
  %arrayidx29.u7_25fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28.u7_25fixp, i32 0, i32 %j.1, !taffo.info !182
  %9 = lshr i32 %div27.u3_29fixp, 4, !taffo.info !181
  store i32 %9, i32* %arrayidx29.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !183

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !184

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !141, !taffo.initweight !58
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !144, !taffo.initweight !78

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !141, !taffo.initweight !58
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !144, !taffo.initweight !78

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !185, !taffo.initweight !77, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !187, !taffo.initweight !77
  %rem46 = srem i32 %mul45, %nl, !taffo.info !189, !taffo.initweight !78
  %conv47.u4_28fixp = shl i32 %rem46, 28, !taffo.info !191
  %mul48 = mul nsw i32 5, %nl, !taffo.info !193, !taffo.constinfo !21
  %conv49.u6_26fixp = shl i32 %mul48, 26, !taffo.info !195, !taffo.constinfo !21
  %10 = lshr i32 %conv47.u4_28fixp, 1, !taffo.info !191
  %11 = lshr i32 %conv49.u6_26fixp, 1, !taffo.info !195, !taffo.constinfo !21
  %12 = ashr i32 %10, 2, !taffo.info !191
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 25), !taffo.info !196
  %div50.u1_31fixp = shl i32 %13, 6, !taffo.info !198
  %arrayidx51.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u7_25fixp, i32 %i.2, !taffo.info !200
  %arrayidx52.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx51.u7_25fixp, i32 0, i32 %j.2, !taffo.info !200
  %14 = lshr i32 %div50.u1_31fixp, 6, !taffo.info !198
  store i32 %14, i32* %arrayidx52.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !201

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !202

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !141, !taffo.initweight !58
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !144, !taffo.initweight !78

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !141, !taffo.initweight !58
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !144, !taffo.initweight !78

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !203, !taffo.initweight !77, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !205, !taffo.initweight !77
  %add69 = add nsw i32 %mul68, 2, !taffo.info !207, !taffo.initweight !78, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !209, !taffo.initweight !152
  %conv71.u4_28fixp = shl i32 %rem70, 28, !taffo.info !211
  %mul72 = mul nsw i32 5, %nk, !taffo.info !212, !taffo.constinfo !21
  %conv73.u6_26fixp = shl i32 %mul72, 26, !taffo.info !214, !taffo.constinfo !21
  %15 = lshr i32 %conv71.u4_28fixp, 1, !taffo.info !211
  %16 = lshr i32 %conv73.u6_26fixp, 1, !taffo.info !214, !taffo.constinfo !21
  %17 = ashr i32 %15, 2, !taffo.info !211
  %18 = call i32 @llvm.sdiv.fix.i32(i32 %17, i32 %16, i32 25), !taffo.info !215
  %div74.u1_31fixp = shl i32 %18, 6, !taffo.info !217
  %arrayidx75.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u7_25fixp, i32 %i.3, !taffo.info !218
  %arrayidx76.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx75.u7_25fixp, i32 0, i32 %j.3, !taffo.info !218
  %19 = lshr i32 %div74.u1_31fixp, 6, !taffo.info !217
  store i32 %19, i32* %arrayidx76.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !219

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !220

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !141, !taffo.initweight !58
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !144, !taffo.initweight !78

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !141, !taffo.initweight !58
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !144, !taffo.initweight !78

for.body90:                                       ; preds = %for.cond87
  %arrayidx91.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u15_17fixp, i32 %i.4, !taffo.info !221
  %arrayidx92.u15_17fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx91.u15_17fixp, i32 0, i32 %j.4, !taffo.info !221
  store i32 0, i32* %arrayidx92.u15_17fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !222

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !223

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !141, !taffo.initweight !58
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !144, !taffo.initweight !78

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !141, !taffo.initweight !58
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !144, !taffo.initweight !78

for.body106:                                      ; preds = %for.cond103
  %arrayidx107.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u16_16fixp, i32 %i.5, !taffo.info !224
  %arrayidx108.u16_16fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx107.u16_16fixp, i32 0, i32 %j.5, !taffo.info !224
  store i32 0, i32* %arrayidx108.u16_16fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !225

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !226

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !141, !taffo.initweight !58
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !144, !taffo.initweight !78

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !141, !taffo.initweight !58
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !143, !taffo.initweight !77
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !144, !taffo.initweight !78

for.body122:                                      ; preds = %for.cond119
  %arrayidx123.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.info !227, !taffo.initweight !77
  %arrayidx124.flt.1flp = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123.flt.1flp, i32 0, i32 %j.6, !taffo.info !227, !taffo.initweight !77
  store float 0.000000e+00, float* %arrayidx124.flt.1flp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !228

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !164, !taffo.initweight !77, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !229

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !230 !taffo.funinfo !231 !taffo.sourceFunction !234 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %0, !taffo.info !44
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx.u7_25fixp, i32 %j.0, !taffo.info !44
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !44
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !235
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !44
  %2 = lshr i32 %conv.u10_22fixp, 1, !taffo.info !235
  %3 = ashr i32 %1, 9, !taffo.info !44
  %4 = ashr i32 %2, 6, !taffo.info !235
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 15), !taffo.info !237
  %mul.u16_16fixp = shl i32 %5, 1, !taffo.info !239
  %6 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %6, !taffo.info !44
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx5.u7_25fixp, i32 %j.0, !taffo.info !44
  %7 = shl i32 %mul.u16_16fixp, 9, !taffo.info !239
  store i32 %7, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !240

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !241

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !230 !taffo.funinfo !242 !taffo.sourceFunction !234 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx.flt.1flp = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !56, !taffo.initweight !128
  %arrayidx4.flt.1flp = getelementptr inbounds float, float* %arrayidx.flt.1flp, i32 %j.0, !taffo.info !56, !taffo.initweight !132
  %.flt.fallback.1flp = load float, float* %arrayidx4.flt.1flp, align 4, !taffo.info !56, !taffo.initweight !243
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !235
  %1 = uitofp i32 %conv.u10_22fixp to float, !taffo.info !235
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x4150000000000000, !taffo.info !235
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %mul.1flp6 = fmul float %.flt.fallback.1flp, %lampsim5, !taffo.info !244
  %lampsim7 = bitcast float %mul.1flp6 to i32
  %lampsim8 = and i32 %lampsim7, -8192
  %lampsim9 = bitcast i32 %lampsim8 to float
  %3 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5.flt.1flp = getelementptr inbounds float, float* %val, i32 %3, !taffo.info !56, !taffo.initweight !128
  %arrayidx6.flt.1flp = getelementptr inbounds float, float* %arrayidx5.flt.1flp, i32 %j.0, !taffo.info !56, !taffo.initweight !132
  store float %lampsim9, float* %arrayidx6.flt.1flp, align 4, !taffo.info !69
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !247

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !248

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u16_16fixp, i32 noundef %factor) #0 !taffo.initweight !230 !taffo.funinfo !249 !taffo.sourceFunction !234 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx.u16_16fixp = getelementptr inbounds i32, i32* %val.u16_16fixp, i32 %0, !taffo.info !49
  %arrayidx4.u16_16fixp = getelementptr inbounds i32, i32* %arrayidx.u16_16fixp, i32 %j.0, !taffo.info !49
  %u16_16fixp = load i32, i32* %arrayidx4.u16_16fixp, align 4, !taffo.info !49
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !235
  %1 = lshr i32 %u16_16fixp, 1, !taffo.info !49
  %2 = lshr i32 %conv.u10_22fixp, 1, !taffo.info !235
  %3 = ashr i32 %1, 9, !taffo.info !49
  %4 = ashr i32 %2, 15, !taffo.info !235
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 6), !taffo.info !250
  %mul.u25_7fixp = shl i32 %5, 1, !taffo.info !253
  %6 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5.u16_16fixp = getelementptr inbounds i32, i32* %val.u16_16fixp, i32 %6, !taffo.info !49
  %arrayidx6.u16_16fixp = getelementptr inbounds i32, i32* %arrayidx5.u16_16fixp, i32 %j.0, !taffo.info !49
  %7 = shl i32 %mul.u25_7fixp, 9, !taffo.info !253
  store i32 %7, i32* %arrayidx6.u16_16fixp, align 4, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !255

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !256

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u15_17fixp, i32 noundef %factor) #0 !taffo.initweight !230 !taffo.funinfo !257 !taffo.sourceFunction !234 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %0, !taffo.info !41
  %arrayidx4.u15_17fixp = getelementptr inbounds i32, i32* %arrayidx.u15_17fixp, i32 %j.0, !taffo.info !41
  %u15_17fixp = load i32, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !41
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !235
  %1 = lshr i32 %u15_17fixp, 1, !taffo.info !41
  %2 = lshr i32 %conv.u10_22fixp, 1, !taffo.info !235
  %3 = ashr i32 %1, 9, !taffo.info !41
  %4 = ashr i32 %2, 14, !taffo.info !235
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 7), !taffo.info !258
  %mul.u24_8fixp = shl i32 %5, 1, !taffo.info !261
  %6 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %6, !taffo.info !41
  %arrayidx6.u15_17fixp = getelementptr inbounds i32, i32* %arrayidx5.u15_17fixp, i32 %j.0, !taffo.info !41
  %7 = shl i32 %mul.u24_8fixp, 9, !taffo.info !261
  store i32 %7, i32* %arrayidx6.u15_17fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !263

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !264

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
!1 = !{double 0.000000e+00, double 0x41EBCB0680000000}
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
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = distinct !{null, null, null, null, null, null, null}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 17}
!43 = !{double 0.000000e+00, double 0x40DBBBBBE0008638}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 25}
!46 = !{double 0.000000e+00, double 0x405555556084A516}
!47 = !{!45, !48, i1 false, i2 -1}
!48 = !{double 0.000000e+00, double 0x405666665E02EA96}
!49 = !{!50, !51, i1 false, i2 -1}
!50 = !{!"fixp", i32 32, i32 16}
!51 = !{double 0.000000e+00, double 0x40E0624DE0008638}
!52 = !{!45, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 0x405777778140DD40}
!54 = !{!45, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 0x40570A3D816ACEAB}
!56 = !{!57, !1, i1 false, i2 -1}
!57 = !{!"float", i32 1, double 0x41EBCB0680000000}
!58 = !{i32 0}
!59 = !{!"G"}
!60 = !{i32 1}
!61 = !{i1 false, !43, i1 false, i2 -1}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{i1 false, !46, i1 false, i2 -1}
!65 = !{i1 false, !48, i1 false, i2 -1}
!66 = !{i1 false, !51, i1 false, i2 -1}
!67 = !{i1 false, !53, i1 false, i2 -1}
!68 = !{i1 false, !55, i1 false, i2 -1}
!69 = !{i1 false, !1, i1 false, i2 -1}
!70 = !{i1 false}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 7.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 9.100000e+01}
!77 = !{i32 2}
!78 = !{i32 3}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 9.100000e+01}
!81 = distinct !{!81, !23}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.000000e+00, double 7.000000e+00}
!84 = distinct !{!84, !23}
!85 = !{i1 false, i1 false, i1 false, i1 false}
!86 = !{i32 1, !87, i32 1, !89, i32 1, !0}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 6.000000e+00, double 6.000000e+00}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.200000e+01, double 1.200000e+01}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.000000e+00, double 1.000000e+00}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 0.000000e+00, double 0.000000e+00}
!95 = !{i1 false, i1 false, i1 false}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!99 = !{i32 1, !87, i32 1, !100, i32 1, !16, i32 1, !89, i32 1, !102, i32 1, !41, i32 1, !44, i32 1, !47, i32 1, !49, i32 1, !52, i32 1, !54, i32 1, !56}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 8.000000e+00, double 8.000000e+00}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 1.400000e+01, double 1.400000e+01}
!104 = distinct !{null}
!105 = !{i1 false, i1 false, i1 false, i2 1}
!106 = !{!93, i1 false}
!107 = !{!108, !109, i1 false, i2 -1}
!108 = !{!"fixp", i32 -32, i32 18}
!109 = !{double 0.000000e+00, double 0x40BDDDDDE25730F2}
!110 = !{!111, !109, i1 false, i2 -1}
!111 = !{!"fixp", i32 32, i32 19}
!112 = !{!50, !43, i1 false, i2 -1}
!113 = !{!50, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x40E19999AC4B293A}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = !{!119, !120, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 15}
!120 = !{double 0.000000e+00, double 0x40C0E56054E2BEBA}
!121 = !{!50, !120, i1 false, i2 -1}
!122 = !{!50, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x40E49BA5F53935E6}
!124 = distinct !{!124, !23}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = !{i32 5}
!128 = !{i32 6}
!129 = !{!130, !131, i1 false, i2 -1}
!130 = !{!"float", i32 1, double 0x41CC6620BA79DE56}
!131 = !{double 0.000000e+00, double 0x41CC6620BA79DE56}
!132 = !{i32 7}
!133 = !{!134, !135, i1 false, i2 -1}
!134 = !{!"float", i32 1, double 0x41F17247574F3BCB}
!135 = !{double 0.000000e+00, double 0x41F17247574F3BCB}
!136 = distinct !{!136, !23}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23}
!139 = !{i32 1, !87, i32 1, !100, i32 1, !16, i32 1, !89, i32 1, !102, i32 1, !44, i32 1, !47, i32 1, !52, i32 1, !54, i32 1, !41, i32 1, !49, i32 1, !56}
!140 = distinct !{null}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 0.000000e+00, double 1.500000e+01}
!143 = !{i1 false, !74, i1 false, i2 1}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 0.000000e+00, double 1.400000e+01}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 1.960000e+02}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 1.000000e+00, double 1.970000e+02}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 0.000000e+00, double 5.000000e+00}
!152 = !{i32 4}
!153 = !{!154, !151, i1 false, i2 1}
!154 = !{!"fixp", i32 32, i32 29}
!155 = !{i1 false, !156, i1 false, i2 0}
!156 = !{double 3.000000e+01, double 3.000000e+01}
!157 = !{!158, !156, i1 false, i2 1}
!158 = !{!"fixp", i32 32, i32 27}
!159 = !{!160, !161, i1 false, i2 1}
!160 = !{!"fixp", i32 -32, i32 26}
!161 = !{double 0.000000e+00, double 0x3FC5555555555555}
!162 = !{!154, !161, i1 false, i2 1}
!163 = !{!45, !46, i1 false, i2 1}
!164 = !{i1 false, !165, i1 false, i2 1}
!165 = !{double 1.000000e+00, double 1.500000e+01}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double 0.000000e+00, double 2.100000e+02}
!170 = !{i1 false, !171, i1 false, i2 1}
!171 = !{double 2.000000e+00, double 2.120000e+02}
!172 = !{i1 false, !72, i1 false, i2 1}
!173 = !{!154, !72, i1 false, i2 1}
!174 = !{i1 false, !175, i1 false, i2 0}
!175 = !{double 4.000000e+01, double 4.000000e+01}
!176 = !{!177, !175, i1 false, i2 1}
!177 = !{!"fixp", i32 32, i32 26}
!178 = !{!179, !180, i1 false, i2 1}
!179 = !{!"fixp", i32 -32, i32 25}
!180 = !{double 0.000000e+00, double 1.750000e-01}
!181 = !{!154, !180, i1 false, i2 1}
!182 = !{!45, !48, i1 false, i2 1}
!183 = distinct !{!183, !23}
!184 = distinct !{!184, !23}
!185 = !{i1 false, !186, i1 false, i2 1}
!186 = !{double 3.000000e+00, double 1.700000e+01}
!187 = !{i1 false, !188, i1 false, i2 1}
!188 = !{double 0.000000e+00, double 2.380000e+02}
!189 = !{i1 false, !190, i1 false, i2 1}
!190 = !{double 0.000000e+00, double 1.100000e+01}
!191 = !{!192, !190, i1 false, i2 1}
!192 = !{!"fixp", i32 32, i32 28}
!193 = !{i1 false, !194, i1 false, i2 0}
!194 = !{double 6.000000e+01, double 6.000000e+01}
!195 = !{!177, !194, i1 false, i2 1}
!196 = !{!179, !197, i1 false, i2 1}
!197 = !{double 0.000000e+00, double 0x3FC7777777777777}
!198 = !{!199, !197, i1 false, i2 1}
!199 = !{!"fixp", i32 32, i32 31}
!200 = !{!45, !53, i1 false, i2 1}
!201 = distinct !{!201, !23}
!202 = distinct !{!202, !23}
!203 = !{i1 false, !204, i1 false, i2 1}
!204 = !{double 2.000000e+00, double 1.600000e+01}
!205 = !{i1 false, !206, i1 false, i2 1}
!206 = !{double 0.000000e+00, double 2.240000e+02}
!207 = !{i1 false, !208, i1 false, i2 1}
!208 = !{double 2.000000e+00, double 2.260000e+02}
!209 = !{i1 false, !210, i1 false, i2 1}
!210 = !{double 0.000000e+00, double 9.000000e+00}
!211 = !{!192, !210, i1 false, i2 1}
!212 = !{i1 false, !213, i1 false, i2 0}
!213 = !{double 5.000000e+01, double 5.000000e+01}
!214 = !{!177, !213, i1 false, i2 1}
!215 = !{!179, !216, i1 false, i2 1}
!216 = !{double 0.000000e+00, double 1.800000e-01}
!217 = !{!199, !216, i1 false, i2 1}
!218 = !{!45, !55, i1 false, i2 1}
!219 = distinct !{!219, !23}
!220 = distinct !{!220, !23}
!221 = !{!42, !43, i1 false, i2 1}
!222 = distinct !{!222, !23}
!223 = distinct !{!223, !23}
!224 = !{!50, !51, i1 false, i2 1}
!225 = distinct !{!225, !23}
!226 = distinct !{!226, !23}
!227 = !{!57, !1, i1 false, i2 1}
!228 = distinct !{!228, !23}
!229 = distinct !{!229, !23}
!230 = !{i32 -1, i32 -1, i32 3, i32 -1}
!231 = !{i32 1, !87, i32 1, !16, i32 1, !44, i32 1, !232}
!232 = !{i1 false, !233, i1 false, i2 0}
!233 = !{double 5.120000e+02, double 5.120000e+02}
!234 = !{void (i32, i32, float*, i32)* @scale_2d}
!235 = !{!236, !233, i1 false, i2 1}
!236 = !{!"fixp", i32 32, i32 22}
!237 = !{!119, !238, i1 false, i2 -1}
!238 = !{double 0.000000e+00, double 0x40E555556084A516}
!239 = !{!50, !238, i1 false, i2 -1}
!240 = distinct !{!240, !23}
!241 = distinct !{!241, !23}
!242 = !{i32 1, !87, i32 1, !89, i32 1, !56, i32 1, !232}
!243 = !{i32 8}
!244 = !{!245, !246, i1 false, i2 -1}
!245 = !{!"float", i32 1, double 0x427BCB0680000000}
!246 = !{double 0.000000e+00, double 0x427BCB0680000000}
!247 = distinct !{!247, !23}
!248 = distinct !{!248, !23}
!249 = !{i32 1, !100, i32 1, !89, i32 1, !49, i32 1, !232}
!250 = !{!251, !252, i1 false, i2 -1}
!251 = !{!"fixp", i32 -32, i32 6}
!252 = !{double 0.000000e+00, double 0x4170624DE0008638}
!253 = !{!254, !252, i1 false, i2 -1}
!254 = !{!"fixp", i32 32, i32 7}
!255 = distinct !{!255, !23}
!256 = distinct !{!256, !23}
!257 = !{i32 1, !87, i32 1, !100, i32 1, !41, i32 1, !232}
!258 = !{!259, !260, i1 false, i2 -1}
!259 = !{!"fixp", i32 -32, i32 7}
!260 = !{double 0.000000e+00, double 0x416BBBBBE0008638}
!261 = !{!262, !260, i1 false, i2 -1}
!262 = !{!"fixp", i32 32, i32 8}
!263 = distinct !{!263, !23}
!264 = distinct !{!264, !23}
