; ModuleID = './build/bin/fixed/2mm/8/2mm-standard-128-fixed-8.out.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.11 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
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
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
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
  %tmp.u17_15fixp = alloca [8 x [10 x i32]], align 4, !taffo.info !47
  %A.u7_25fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !50
  %B.u7_25fixp = alloca [12 x [10 x i32]], align 4, !taffo.info !53
  %C.u7_25fixp = alloca [10 x [14 x i32]], align 4, !taffo.info !55
  %D.u26_6fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !57, !taffo.target !59
  %arraydecay.u7_25fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay8.u7_25fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay9.u7_25fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay10.u26_6fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u26_6fixp, i32 0, i32 0, !taffo.info !57, !taffo.target !59
  %arraydecay11.u17_15fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u17_15fixp, i32 0, i32 0, !taffo.info !47
  call void @init_array.4_fixp(i32 8, i32 10, i32 12, i32 14, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u7_25fixp, [10 x i32]* %arraydecay8.u7_25fixp, [14 x i32]* %arraydecay9.u7_25fixp, [14 x i32]* %arraydecay10.u26_6fixp, [10 x i32]* %arraydecay11.u17_15fixp), !taffo.info !60, !taffo.constinfo !61
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 128), !taffo.info !60, !taffo.constinfo !62
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 128), !taffo.info !63, !taffo.constinfo !62
  %arraydecay12.u7_25fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !50
  %u7_25fixp3 = bitcast [12 x i32]* %arraydecay12.u7_25fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 8, i32 12, i32* %u7_25fixp3, i32 128), !taffo.info !64, !taffo.constinfo !65
  %arraydecay13.u7_25fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !53
  %u7_25fixp = bitcast [10 x i32]* %arraydecay13.u7_25fixp to i32*, !taffo.info !53
  call void @scale_2d.6_fixp(i32 12, i32 10, i32* %u7_25fixp, i32 128), !taffo.info !66, !taffo.constinfo !65
  %arraydecay14.u7_25fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !55
  %u7_25fixp2 = bitcast [14 x i32]* %arraydecay14.u7_25fixp to i32*, !taffo.info !55
  call void @scale_2d.6_fixp(i32 10, i32 14, i32* %u7_25fixp2, i32 128), !taffo.info !67, !taffo.constinfo !65
  %arraydecay15.u26_6fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u26_6fixp, i32 0, i32 0, !taffo.info !57, !taffo.target !59
  %u26_6fixp = bitcast [14 x i32]* %arraydecay15.u26_6fixp to i32*, !taffo.info !57, !taffo.target !59
  call void @scale_2d.9_fixp(i32 8, i32 14, i32* %u26_6fixp, i32 128), !taffo.info !68, !taffo.constinfo !65, !taffo.target !59
  %arraydecay16.u17_15fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u17_15fixp, i32 0, i32 0, !taffo.info !47
  %u17_15fixp = bitcast [10 x i32]* %arraydecay16.u17_15fixp to i32*, !taffo.info !47
  call void @scale_2d.5_fixp(i32 8, i32 10, i32* %u17_15fixp, i32 128), !taffo.info !69, !taffo.constinfo !65
  call void @timer_start(), !taffo.constinfo !70
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay17.u17_15fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u17_15fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay18.u7_25fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay19.u7_25fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay20.u7_25fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u7_25fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay21.u26_6fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u26_6fixp, i32 0, i32 0, !taffo.info !57, !taffo.target !59
  call void @kernel_2mm.3_fixp(i32 8, i32 10, i32 12, i32 14, i32 %u2_30fixp1, i32 %u2_30fixp, [10 x i32]* %arraydecay17.u17_15fixp, [12 x i32]* %arraydecay18.u7_25fixp, [10 x i32]* %arraydecay19.u7_25fixp, [14 x i32]* %arraydecay20.u7_25fixp, [14 x i32]* %arraydecay21.u26_6fixp), !taffo.info !60, !taffo.constinfo !61
  call void @timer_stop(), !taffo.constinfo !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp23 = icmp slt i32 %j.0, 14, !taffo.info !73
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %arrayidx.u26_6fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u26_6fixp, i32 0, i32 %i.0, !taffo.info !57, !taffo.target !59
  %arrayidx25.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx.u26_6fixp, i32 0, i32 %j.0, !taffo.info !57, !taffo.target !59
  %u26_6fixp4 = load i32, i32* %arrayidx25.u26_6fixp, align 4, !taffo.info !57, !taffo.target !59
  %0 = uitofp i32 %u26_6fixp4 to float, !taffo.info !57, !taffo.target !59
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 6.400000e+01, !taffo.info !57, !taffo.target !59
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx27, align 4, !taffo.info !68, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !79

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !82

for.end30:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !83
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !27 !taffo.funinfo !84 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !91
  %add = add nsw i32 %mul, %j.0, !taffo.info !91
  %rem = srem i32 %add, 20, !taffo.info !91, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !89
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !62
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !83
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !93

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !94

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !96 !taffo.sourceFunction !99 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [10 x i32]* noundef %tmp.u17_15fixp, [12 x i32]* noundef %A.u7_25fixp, [10 x i32]* noundef %B.u7_25fixp, [14 x i32]* noundef %C.u7_25fixp, [14 x i32]* noundef %D.u26_6fixp) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.sourceFunction !104 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u17_15fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u17_15fixp, i32 0, i32 %j.0, !taffo.info !47
  store i32 0, i32* %arrayidx4.u17_15fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !73
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !89
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !50
  %arrayidx9.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx8.u7_25fixp, i32 0, i32 %k.0, !taffo.info !50
  %u7_25fixp = load i32, i32* %arrayidx9.u7_25fixp, align 4, !taffo.info !107
  %0 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !107
  %2 = ashr i32 %0, 6, !taffo.info !42
  %3 = ashr i32 %1, 1, !taffo.info !107
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !109
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !112
  %arrayidx10.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u7_25fixp, i32 %k.0, !taffo.info !53
  %arrayidx11.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10.u7_25fixp, i32 0, i32 %j.0, !taffo.info !53
  %u7_25fixp2 = load i32, i32* %arrayidx11.u7_25fixp, align 4, !taffo.info !53
  %5 = lshr i32 %mul.u8_24fixp, 1, !taffo.info !112
  %6 = lshr i32 %u7_25fixp2, 1, !taffo.info !53
  %7 = ashr i32 %5, 9, !taffo.info !112
  %8 = ashr i32 %6, 10, !taffo.info !53
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 14), !taffo.info !113
  %mul12.u17_15fixp = shl i32 %9, 1, !taffo.info !116
  %arrayidx13.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u17_15fixp, i32 %i.0, !taffo.info !47
  %arrayidx14.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13.u17_15fixp, i32 0, i32 %j.0, !taffo.info !47
  %u17_15fixp = load i32, i32* %arrayidx14.u17_15fixp, align 4, !taffo.info !47
  %add.u17_15fixp = add i32 %u17_15fixp, %mul12.u17_15fixp, !taffo.info !117
  store i32 %add.u17_15fixp, i32* %arrayidx14.u17_15fixp, align 4, !taffo.info !69
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !119

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !120

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !121

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !73
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !89
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !73
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !89
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u26_6fixp, i32 %i.1, !taffo.info !57
  %arrayidx28.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx27.u26_6fixp, i32 0, i32 %j.1, !taffo.info !57
  %u26_6fixp = load i32, i32* %arrayidx28.u26_6fixp, align 4, !taffo.info !57
  %10 = lshr i32 %u26_6fixp, 1, !taffo.info !57
  %11 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %12 = ashr i32 %11, 24, !taffo.info !45
  %13 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %12, i32 5), !taffo.info !122
  %mul29.u26_6fixp = shl i32 %13, 1, !taffo.info !125
  store i32 %mul29.u26_6fixp, i32* %arrayidx28.u26_6fixp, align 4, !taffo.info !63
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !73
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !89
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u17_15fixp, i32 %i.1, !taffo.info !47
  %arrayidx34.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx33.u17_15fixp, i32 0, i32 %k.1, !taffo.info !47
  %u17_15fixp1 = load i32, i32* %arrayidx34.u17_15fixp, align 4, !taffo.info !47
  %arrayidx35.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u7_25fixp, i32 %k.1, !taffo.info !55
  %arrayidx36.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx35.u7_25fixp, i32 0, i32 %j.1, !taffo.info !55
  %u7_25fixp3 = load i32, i32* %arrayidx36.u7_25fixp, align 4, !taffo.info !55
  %14 = lshr i32 %u17_15fixp1, 1, !taffo.info !47
  %15 = lshr i32 %u7_25fixp3, 1, !taffo.info !55
  %16 = ashr i32 %14, 9, !taffo.info !47
  %17 = ashr i32 %15, 19, !taffo.info !55
  %18 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %17, i32 5), !taffo.info !126
  %mul37.u26_6fixp = shl i32 %18, 1, !taffo.info !128
  %arrayidx38.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u26_6fixp, i32 %i.1, !taffo.info !57
  %arrayidx39.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx38.u26_6fixp, i32 0, i32 %j.1, !taffo.info !57
  %u26_6fixp4 = load i32, i32* %arrayidx39.u26_6fixp, align 4, !taffo.info !57
  %add40.u26_6fixp = add i32 %u26_6fixp4, %mul37.u26_6fixp, !taffo.info !129
  store i32 %add40.u26_6fixp, i32* %arrayidx39.u26_6fixp, align 4, !taffo.info !68
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !131

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !132

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !133

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %A.u7_25fixp, [10 x i32]* noundef %B.u7_25fixp, [14 x i32]* noundef %C.u7_25fixp, [14 x i32]* noundef %D.u26_6fixp, [10 x i32]* noundef %tmp.u17_15fixp) #0 !taffo.initweight !134 !taffo.funinfo !135 !taffo.sourceFunction !136 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !60, !taffo.constinfo !137
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !63, !taffo.constinfo !139
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !142, !taffo.initweight !144
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !142, !taffo.initweight !147

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !148, !taffo.initweight !144
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !148, !taffo.initweight !147

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !150, !taffo.initweight !146
  %add = add nsw i32 %mul, 1, !taffo.info !151, !taffo.initweight !147, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !153, !taffo.initweight !155
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !156
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !158
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !156
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !158
  %2 = ashr i32 %0, 1, !taffo.info !156
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !160
  %div.u3_29fixp = shl i32 %3, 2, !taffo.info !163
  %arrayidx.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !164
  %arrayidx7.u7_25fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !164
  %4 = lshr i32 %div.u3_29fixp, 4, !taffo.info !163
  store i32 %4, i32* %arrayidx7.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !165, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !167

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !168, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !170

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !142, !taffo.initweight !144
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !142, !taffo.initweight !147

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !148, !taffo.initweight !144
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !148, !taffo.initweight !147

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !165, !taffo.initweight !146, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !171, !taffo.initweight !146
  %rem21 = srem i32 %mul20, %nj, !taffo.info !173, !taffo.initweight !147
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !174
  %conv23.u4_28fixp = shl i32 %nj, 28, !taffo.info !175
  %5 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !174
  %6 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !175
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !176
  %div24.u1_31fixp = shl i32 %7, 4, !taffo.info !178
  %arrayidx25.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u7_25fixp, i32 %i.1, !taffo.info !180
  %arrayidx26.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.u7_25fixp, i32 0, i32 %j.1, !taffo.info !180
  %8 = lshr i32 %div24.u1_31fixp, 6, !taffo.info !178
  store i32 %8, i32* %arrayidx26.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !165, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !181

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !168, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !182

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !142, !taffo.initweight !144
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !142, !taffo.initweight !147

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !148, !taffo.initweight !144
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !148, !taffo.initweight !147

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !183, !taffo.initweight !146, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !185, !taffo.initweight !146
  %add43 = add nsw i32 %mul42, 1, !taffo.info !187, !taffo.initweight !147, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !189, !taffo.initweight !155
  %conv45.u4_28fixp = shl i32 %rem44, 28, !taffo.info !191
  %conv46.u4_28fixp = shl i32 %nl, 28, !taffo.info !192
  %9 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !191
  %10 = lshr i32 %conv46.u4_28fixp, 1, !taffo.info !192
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !193
  %div47.u1_31fixp = shl i32 %11, 4, !taffo.info !195
  %arrayidx48.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u7_25fixp, i32 %i.2, !taffo.info !196
  %arrayidx49.u7_25fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx48.u7_25fixp, i32 0, i32 %j.2, !taffo.info !196
  %12 = lshr i32 %div47.u1_31fixp, 6, !taffo.info !195
  store i32 %12, i32* %arrayidx49.u7_25fixp, align 4, !taffo.info !105
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !165, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !197

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !168, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !198

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !142, !taffo.initweight !144
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !142, !taffo.initweight !147

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !148, !taffo.initweight !144
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !148, !taffo.initweight !147

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !199, !taffo.initweight !146, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !201, !taffo.initweight !146
  %rem66 = srem i32 %mul65, %nk, !taffo.info !203, !taffo.initweight !147
  %conv67.u4_28fixp = shl i32 %rem66, 28, !taffo.info !205
  %conv68.u4_28fixp = shl i32 %nk, 28, !taffo.info !206
  %13 = lshr i32 %conv67.u4_28fixp, 1, !taffo.info !205
  %14 = lshr i32 %conv68.u4_28fixp, 1, !taffo.info !206
  %15 = call i32 @llvm.sdiv.fix.i32(i32 %13, i32 %14, i32 27), !taffo.info !207
  %div69.u1_31fixp = shl i32 %15, 4, !taffo.info !209
  %arrayidx70.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u26_6fixp, i32 %i.3, !taffo.info !210
  %arrayidx71.u26_6fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx70.u26_6fixp, i32 0, i32 %j.3, !taffo.info !210
  %16 = lshr i32 %div69.u1_31fixp, 25, !taffo.info !209
  store i32 %16, i32* %arrayidx71.u26_6fixp, align 4, !taffo.info !105
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !165, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !211

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !168, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !212

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !142, !taffo.initweight !144
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !142, !taffo.initweight !147

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !148, !taffo.initweight !144
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !145, !taffo.initweight !146
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !148, !taffo.initweight !147

for.body85:                                       ; preds = %for.cond82
  %arrayidx86.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u17_15fixp, i32 %i.4, !taffo.info !213
  %arrayidx87.u17_15fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx86.u17_15fixp, i32 0, i32 %j.4, !taffo.info !213
  store i32 0, i32* %arrayidx87.u17_15fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !165, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !214

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !168, !taffo.initweight !146, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !215

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !216 !taffo.funinfo !217 !taffo.sourceFunction !218 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %0, !taffo.info !50
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx.u7_25fixp, i32 %j.0, !taffo.info !50
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !50
  %conv.u8_24fixp = shl i32 %factor, 24, !taffo.info !219
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !50
  %2 = lshr i32 %conv.u8_24fixp, 1, !taffo.info !219
  %3 = ashr i32 %1, 7, !taffo.info !50
  %4 = ashr i32 %2, 6, !taffo.info !219
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 17), !taffo.info !220
  %mul.u14_18fixp = shl i32 %5, 1, !taffo.info !223
  %6 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx5.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %6, !taffo.info !50
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx5.u7_25fixp, i32 %j.0, !taffo.info !50
  %7 = shl i32 %mul.u14_18fixp, 7, !taffo.info !223
  store i32 %7, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !225

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !226

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u17_15fixp, i32 noundef %factor) #0 !taffo.initweight !216 !taffo.funinfo !227 !taffo.sourceFunction !218 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx.u17_15fixp = getelementptr inbounds i32, i32* %val.u17_15fixp, i32 %0, !taffo.info !47
  %arrayidx4.u17_15fixp = getelementptr inbounds i32, i32* %arrayidx.u17_15fixp, i32 %j.0, !taffo.info !47
  %u17_15fixp = load i32, i32* %arrayidx4.u17_15fixp, align 4, !taffo.info !47
  %conv.u8_24fixp = shl i32 %factor, 24, !taffo.info !219
  %1 = lshr i32 %u17_15fixp, 1, !taffo.info !47
  %2 = lshr i32 %conv.u8_24fixp, 1, !taffo.info !219
  %3 = ashr i32 %1, 7, !taffo.info !47
  %4 = ashr i32 %2, 16, !taffo.info !219
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 7), !taffo.info !228
  %mul.u24_8fixp = shl i32 %5, 1, !taffo.info !231
  %6 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx5.u17_15fixp = getelementptr inbounds i32, i32* %val.u17_15fixp, i32 %6, !taffo.info !47
  %arrayidx6.u17_15fixp = getelementptr inbounds i32, i32* %arrayidx5.u17_15fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u24_8fixp, 7, !taffo.info !231
  store i32 %7, i32* %arrayidx6.u17_15fixp, align 4, !taffo.info !69
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !233

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !234

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u26_6fixp, i32 noundef %factor) #0 !taffo.initweight !216 !taffo.funinfo !235 !taffo.sourceFunction !218 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx.u26_6fixp = getelementptr inbounds i32, i32* %val.u26_6fixp, i32 %0, !taffo.info !57
  %arrayidx4.u26_6fixp = getelementptr inbounds i32, i32* %arrayidx.u26_6fixp, i32 %j.0, !taffo.info !57
  %u26_6fixp = load i32, i32* %arrayidx4.u26_6fixp, align 4, !taffo.info !57
  %1 = uitofp i32 %u26_6fixp to float, !taffo.info !57
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 6.400000e+01, !taffo.info !57
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %conv.u8_24fixp = shl i32 %factor, 24, !taffo.info !219
  %3 = uitofp i32 %conv.u8_24fixp to float, !taffo.info !219
  %lampsim6 = bitcast float %3 to i32
  %lampsim7 = and i32 %lampsim6, -65536
  %lampsim8 = bitcast i32 %lampsim7 to float
  %4 = fdiv float %lampsim8, 0x4170000000000000, !taffo.info !219
  %lampsim9 = bitcast float %4 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul.1flp12 = fmul float %lampsim5, %lampsim11, !taffo.info !236
  %lampsim13 = bitcast float %mul.1flp12 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %5 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx5.u26_6fixp = getelementptr inbounds i32, i32* %val.u26_6fixp, i32 %5, !taffo.info !57
  %arrayidx6.u26_6fixp = getelementptr inbounds i32, i32* %arrayidx5.u26_6fixp, i32 %j.0, !taffo.info !57
  %6 = fmul float 6.400000e+01, %lampsim15, !taffo.info !236
  %lampsim16 = bitcast float %6 to i32
  %lampsim17 = and i32 %lampsim16, -65536
  %lampsim18 = bitcast i32 %lampsim17 to float
  %7 = fptoui float %lampsim18 to i32, !taffo.info !236
  store i32 %7, i32* %arrayidx6.u26_6fixp, align 4, !taffo.info !68
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !239

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !240

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
!1 = !{double 0.000000e+00, double 0x41832E6660000000}
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
!32 = distinct !{null, null, null, null, null}
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
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 15}
!49 = !{double 0.000000e+00, double 0x40F273331FFF79C8}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 25}
!52 = !{double 0.000000e+00, double 1.120000e+02}
!53 = !{!51, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x405CCCCCC0379314}
!55 = !{!51, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 0x405DB6DB61BB05FB}
!57 = !{!58, !1, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 6}
!59 = !{!"D"}
!60 = !{i1 false, !44, i1 false, i2 -1}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{i1 false, i1 false, i1 false}
!63 = !{i1 false, !46, i1 false, i2 -1}
!64 = !{i1 false, !52, i1 false, i2 -1}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{i1 false, !54, i1 false, i2 -1}
!67 = !{i1 false, !56, i1 false, i2 -1}
!68 = !{i1 false, !1, i1 false, i2 -1}
!69 = !{i1 false, !49, i1 false, i2 -1}
!70 = !{i1 false}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 9.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 1.350000e+02}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 1.350000e+02}
!79 = distinct !{!79, !23}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 9.000000e+00}
!82 = distinct !{!82, !23}
!83 = !{i1 false, i1 false, i1 false, i1 false}
!84 = !{i32 1, !85, i32 1, !87, i32 1, !0}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 8.000000e+00, double 8.000000e+00}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.400000e+01, double 1.400000e+01}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.000000e+00, double 1.000000e+00}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0.000000e+00, double 0.000000e+00}
!93 = distinct !{!93, !23}
!94 = distinct !{!94, !23}
!95 = !{i32 1, i32 -1}
!96 = !{i32 1, !42, i32 1, !97}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.280000e+02, double 1.280000e+02}
!99 = !{void (float*, i32)* @scale_scalar}
!100 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!101 = !{i32 1, !85, i32 1, !16, i32 1, !102, i32 1, !87, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 1.200000e+01, double 1.200000e+01}
!104 = distinct !{null}
!105 = !{i1 false, i1 false, i1 false, i2 1}
!106 = !{!91, i1 false}
!107 = !{!108, !52, i1 false, i2 -1}
!108 = !{!"fixp", i32 32, i32 24}
!109 = !{!110, !111, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 23}
!111 = !{double 0.000000e+00, double 1.680000e+02}
!112 = !{!108, !111, i1 false, i2 -1}
!113 = !{!114, !115, i1 false, i2 -1}
!114 = !{!"fixp", i32 -32, i32 14}
!115 = !{double 0.000000e+00, double 0x40D2E6665E247885}
!116 = !{!48, !115, i1 false, i2 -1}
!117 = !{!48, !118, i1 false, i2 -1}
!118 = !{double 0.000000e+00, double 0x40F72CCCB78897E9}
!119 = distinct !{!119, !23}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = !{!123, !124, i1 false, i2 -1}
!123 = !{!"fixp", i32 -32, i32 5}
!124 = !{double 0.000000e+00, double 0x4187047AD9999999}
!125 = !{!58, !124, i1 false, i2 -1}
!126 = !{!123, !127, i1 false, i2 -1}
!127 = !{double 0.000000e+00, double 0x416121D404846DFD}
!128 = !{!58, !127, i1 false, i2 -1}
!129 = !{!58, !130, i1 false, i2 -1}
!130 = !{double 0.000000e+00, double 0x418776DB61211B7F}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!135 = !{i32 1, !85, i32 1, !16, i32 1, !102, i32 1, !87, i32 1, !42, i32 1, !45, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57, i32 1, !47}
!136 = distinct !{null}
!137 = !{!138, i1 false}
!138 = !{i1 false, !44, i1 false, i2 0}
!139 = !{!140, i1 false}
!140 = !{i1 false, !141, i1 false, i2 0}
!141 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double 0.000000e+00, double 1.200000e+01}
!144 = !{i32 0}
!145 = !{i1 false, !74, i1 false, i2 -1}
!146 = !{i32 2}
!147 = !{i32 3}
!148 = !{i1 false, !149, i1 false, i2 -1}
!149 = !{double 0.000000e+00, double 1.400000e+01}
!150 = !{i1 false, !111, i1 false, i2 -1}
!151 = !{i1 false, !152, i1 false, i2 -1}
!152 = !{double 1.000000e+00, double 1.690000e+02}
!153 = !{i1 false, !154, i1 false, i2 -1}
!154 = !{double 0.000000e+00, double 7.000000e+00}
!155 = !{i32 4}
!156 = !{!157, !154, i1 false, i2 -1}
!157 = !{!"fixp", i32 32, i32 29}
!158 = !{!159, !86, i1 false, i2 1}
!159 = !{!"fixp", i32 32, i32 28}
!160 = !{!161, !162, i1 false, i2 -1}
!161 = !{!"fixp", i32 -32, i32 27}
!162 = !{double 0.000000e+00, double 8.750000e-01}
!163 = !{!157, !162, i1 false, i2 -1}
!164 = !{!51, !52, i1 false, i2 1}
!165 = !{i1 false, !166, i1 false, i2 -1}
!166 = !{double 1.000000e+00, double 1.500000e+01}
!167 = distinct !{!167, !23}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 1.000000e+00, double 1.300000e+01}
!170 = distinct !{!170, !23}
!171 = !{i1 false, !172, i1 false, i2 -1}
!172 = !{double 0.000000e+00, double 1.800000e+02}
!173 = !{i1 false, !72, i1 false, i2 -1}
!174 = !{!159, !72, i1 false, i2 -1}
!175 = !{!159, !17, i1 false, i2 1}
!176 = !{!161, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 9.000000e-01}
!178 = !{!179, !177, i1 false, i2 -1}
!179 = !{!"fixp", i32 32, i32 31}
!180 = !{!51, !54, i1 false, i2 1}
!181 = distinct !{!181, !23}
!182 = distinct !{!182, !23}
!183 = !{i1 false, !184, i1 false, i2 -1}
!184 = !{double 3.000000e+00, double 1.700000e+01}
!185 = !{i1 false, !186, i1 false, i2 -1}
!186 = !{double 0.000000e+00, double 2.040000e+02}
!187 = !{i1 false, !188, i1 false, i2 -1}
!188 = !{double 1.000000e+00, double 2.050000e+02}
!189 = !{i1 false, !190, i1 false, i2 -1}
!190 = !{double 0.000000e+00, double 1.300000e+01}
!191 = !{!159, !190, i1 false, i2 -1}
!192 = !{!159, !88, i1 false, i2 1}
!193 = !{!161, !194, i1 false, i2 -1}
!194 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!195 = !{!179, !194, i1 false, i2 -1}
!196 = !{!51, !56, i1 false, i2 1}
!197 = distinct !{!197, !23}
!198 = distinct !{!198, !23}
!199 = !{i1 false, !200, i1 false, i2 -1}
!200 = !{double 2.000000e+00, double 1.600000e+01}
!201 = !{i1 false, !202, i1 false, i2 -1}
!202 = !{double 0.000000e+00, double 1.920000e+02}
!203 = !{i1 false, !204, i1 false, i2 -1}
!204 = !{double 0.000000e+00, double 1.100000e+01}
!205 = !{!159, !204, i1 false, i2 -1}
!206 = !{!159, !103, i1 false, i2 1}
!207 = !{!161, !208, i1 false, i2 -1}
!208 = !{double 0.000000e+00, double 0x3FED555555555555}
!209 = !{!179, !208, i1 false, i2 -1}
!210 = !{!58, !1, i1 false, i2 1}
!211 = distinct !{!211, !23}
!212 = distinct !{!212, !23}
!213 = !{!48, !49, i1 false, i2 1}
!214 = distinct !{!214, !23}
!215 = distinct !{!215, !23}
!216 = !{i32 -1, i32 -1, i32 3, i32 -1}
!217 = !{i32 1, !85, i32 1, !102, i32 1, !50, i32 1, !97}
!218 = !{void (i32, i32, float*, i32)* @scale_2d}
!219 = !{!108, !98, i1 false, i2 1}
!220 = !{!221, !222, i1 false, i2 -1}
!221 = !{!"fixp", i32 -32, i32 17}
!222 = !{double 0.000000e+00, double 1.433600e+04}
!223 = !{!224, !222, i1 false, i2 -1}
!224 = !{!"fixp", i32 32, i32 18}
!225 = distinct !{!225, !23}
!226 = distinct !{!226, !23}
!227 = !{i32 1, !85, i32 1, !16, i32 1, !47, i32 1, !97}
!228 = !{!229, !230, i1 false, i2 -1}
!229 = !{!"fixp", i32 -32, i32 7}
!230 = !{double 0.000000e+00, double 0x416273331FFF79C8}
!231 = !{!232, !230, i1 false, i2 -1}
!232 = !{!"fixp", i32 32, i32 8}
!233 = distinct !{!233, !23}
!234 = distinct !{!234, !23}
!235 = !{i32 1, !85, i32 1, !87, i32 1, !57, i32 1, !97}
!236 = !{!237, !238, i1 false, i2 -1}
!237 = !{!"float", i32 1, double 0x41F32E6660000000}
!238 = !{double 0.000000e+00, double 0x41F32E6660000000}
!239 = distinct !{!239, !23}
!240 = distinct !{!240, !23}
